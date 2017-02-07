class BlogsController < ApplicationController
  def index
    @blogs = Blog.all
    render json: @blogs
  end

  private
  def blog_params
    params.require(:blog).permit(:title, :content)
  end
end
