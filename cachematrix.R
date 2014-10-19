## Put comments here that give an overall description of what your
## The set function allows you to modify the original matrix and resets the inverse to null.
## The get function allows you to retrieve the original matrix.
## The setinverse function sets the new matrix inverse.
## The getinverse function retrieves the inverse



## Write a short comment describing this function

makeCacheMatrix <- function(x = numeric()){
  
  m <- NULL
  
  
  set <- function(y) {
    x <<- y
    m <<- NULL
    
  }
  
  get <- function() {
    x
  }
  setinverse <- function(inverse){ m <<- inverse }
  
  getinverse <- function() {
    m
  }
  
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
  
  
}


## Write a short comment describing this function
## The function checks whether the inverse retrieved is null or not, if null it computes the new
##inverse my stores it using the setinverse function. If not null then it just retieves the 
##previously stored inverse.

cacheSolve <- function(x, ...) {
  
  m <- x$getinverse()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  
  m <- solve(data)
  x$setinverse(m)
  m
}
