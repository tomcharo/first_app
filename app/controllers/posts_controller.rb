class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def new
  end

  def create
    Post.create(params.permit(:content))
    redirect_to "/posts/completed"

    # post = Post.new(content: params[:content])
    # post.save

    # redirect_to "/posts"
  end

  def completed
  end

end
