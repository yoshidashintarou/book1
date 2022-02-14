class ListsController <  ApplicationController
  
  def top
  
  end
  
  def new
    @list = List.new
  end
  
  def create
    list = List.new(list_params)
    list.save
    redirect_to'/lists'
    
  end
 
  def index
    @list = List.all
  end

  def show
  end

  def edit
   @list = List.find(params[:id])
  end
  
  private
  def list_params
    params.require(:list).permit(:title,:body)
  end
end
