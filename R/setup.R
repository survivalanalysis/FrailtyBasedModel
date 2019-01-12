initialize_global_variables <- function() {
  res <- list(
    n = 1000,
    frailty_distribution = 'gamma', # One of: 'gamma', 'inverse_gaussian', 'positive_stable'
    r= 0.61, #type1 ceonsoring - administrative censoring
    Hres12 = NULL,
    Hres13 = NULL,
    Hres23 = NULL,
    par_res = NULL,  #arrays to save the results
    
    g12 = c(2,0.2,0.05),  #regression effects
    g13 = c(0.05,0.04),
    g23 = c(1,0.15),
    
    recL = 0.05,   #piecewise constant hazards change points
    recU = 0.15,
    
    theta = 1,  #frailty distribution parameter
    c12_1 = 0.005, #constant hazard12 below recL
    c12_2 = 1, #constant hazard12 between recL and recU
    c12_3 = 1, #constant hazard12 above recU
    c13_1 = 0.5, #constant hazard13 below recL
    c13_2 = 1, #constant hazard13 between recL and recU
    c13_3 = 5, #constant hazard13 above recU
    c23_1 = 0,  #constant hazard23 below recL
    c23_2 = 1, #constant hazard23 between recL and recU
    c23_3 = 1, #constant hazard23 above recU
    
    reltol = 1e-04  #relative tolerance stopping criterion
  )
  res$timestocheck <- seq(0,res$r,0.01) #time grid to examine the estimated cumulative hazard functions
  res
}

global_variables <<- initialize_global_variables()