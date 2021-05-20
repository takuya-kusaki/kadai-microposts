class FavoritesController < ApplicationController
  before_action :require_user_logged_in
  

  def create
    micropost = Micropost.find(params[:micropost_id])
    current_user.favorite(micropost)
    flash[:succes] = "お気にりに登録しました"
    redirect_to "/"
  end

  def destroy
    micropost = Micropost.find(params[:micropost_id])
    current_user.unfavorite(micropost)
    flash[:succes] = "お気に入りを解除しました"
    redirect_to "/"
  end
end
