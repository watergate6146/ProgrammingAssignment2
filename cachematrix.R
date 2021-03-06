## This function cache the inverse of a matrix

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    m <- NULL
    set <- function (y){
      x <<- y
      m <<- NULL
    }
    get <- function()x
    setinverse <- function(inverse) inv <<- inverse
    getinverse <- function (inverse) inv
    list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    inv <- x$getinverse()
    if(!is.null(inv)){
      message("getting the cached data")
      return(inv)
    }
    data <- x$get()
    inv <- inverse(data, ...)
    x$setinverse(inv)
    inv
}
