class StudentsController < ApplicationController

    def index
        students = Student.all
        render json: students
    end

    def grades
        grades = Student.order(grade: "DESC")
        render json: grades
    end

    def highest_grade
    grade = Student.order(grade: "DESC").first
    render json: grade
    end
end
