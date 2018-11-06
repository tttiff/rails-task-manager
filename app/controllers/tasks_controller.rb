class TasksController < ApplicationController

  def show
    @task = Tasks.find(params[:id])
  end

  def new
  end

  def create
    task.create(task_params)
    redirect_to tasks_path
  end

  def edit
    @task = task
  end

  def update
    @task = task.find(params[id])
    @task.update(task_params)
  end

  def destroy
    @task = task.find(params[id])
    task.destroy
    redirect_to tasks_path
  end

  private

  def task_params
    params.require (:task).permit(:title, :details, :completed)
  end

end
