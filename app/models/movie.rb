class Movie < ActiveRecord::Base


    def self.create_with_title(title)
        Movie.create(title: title)
    end

    #READ methods to pull data
    def self.first_movie
        Movie.first
    end

    def self.last_movie
        Movie.last
    end

    def self.movie_count
        Movie.count
    end

    def self.find_movie_with_id(id)
        Movie.find(id)
    end

    def self.find_movie_with_attributes(attributes)
        Movie.find_by(attributes)
    end

    def self.find_movies_after_2002
        Movie.where("release_date > 2002")
    end

    def update_with_attributes(attributes)
        self.update(attributes)
    end

    #updates the movie's title based on the parameter, but use 'title:' to find that movie
    def self.update_all_titles(title)
        Movie.update(title: title)
    end

    #set the movie to equal the id (and all its content). Then use .destroy method on the movie variable
    def self.delete_by_id(id)
        movie = Movie.find(id)
        movie.destroy
    end

    #destroys all movies with .destroy_all method
    def self.delete_all_movies
        Movie.destroy_all
    end
end