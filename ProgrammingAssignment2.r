# The Assignment main objective is to calculate the inverse of a Matrix,
# but if the value of the inverse is already calculated it can be looked up in the cache
# rather than recomputed to avoid potentially time-consuming computations
# The assignment is to write a pair of functions that cache the inverse of a matrix

#criteria:
#x: input matrix
#s: new input to be loaded
#i.s: inverse of s
#r: loaded inverse of s

### writing the makeCacheMatrix function
makeCacheMatrix <- function(x = numeric())
{
#store matrix in cache
s<<-x 
#calculate inverse and assign it to i.s (Inverse of S)
i.s<-solve(s)
#look up in cache
r<<-i.s
#print inverse
print(r)
}


### writing the cacheSolve function
cacheSolve <- function(x, ...) 
 {####start function
#test if I already have an identical matrix stored and calculated its inverse
if(identical(s,x)==TRUE)
 {#### start if statement
#If true 
message("getting cached data")
# and print already calculated inverse (r)
print(r)} 
#if not 
else {
#store matrix in cache
s<<-x 
#calculate inverse and assign it to i.s (Inverse of S)
i.s<-solve(s)
#look up in cache
r<<-i.s
#print inverse
print(r)
}### end of if statement
   } ### end if function