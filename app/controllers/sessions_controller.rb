class SessionsController < ApplicationController
    def new
    end

def create
    redirect_to "/companies"
    #check if the user exists
    @user = User.find_by({"email" => params["emial"]})
    #if they do, check that they know their pw
    if @user
        if BCrypt::Password.new(@user["password"] == params["password"])
                   redirect_to "/companies"
        else test
            redirect_to "/sessions/new"
        end
        else test
        redirect_to "/sessions/new"
        end
        
    end
end
end
