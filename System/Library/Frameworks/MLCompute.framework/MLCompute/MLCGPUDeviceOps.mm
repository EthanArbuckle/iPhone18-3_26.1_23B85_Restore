@interface MLCGPUDeviceOps
+ (id)deviceOps;
+ (id)deviceOpsWithForwardKernel:(id)kernel;
+ (id)deviceOpsWithForwardKernel:(id)kernel gradientKernel:(id)gradientKernel;
+ (id)deviceOpsWithForwardKernel:(id)kernel gradientKernel:(id)gradientKernel secondaryGradientKernel:(id)secondaryGradientKernel;
+ (id)deviceOpsWithForwardKernel:(id)kernel gradientKernel:(id)gradientKernel secondaryGradientKernel:(id)secondaryGradientKernel forwardStatistics:(id)statistics gradientStatistics:(id)gradientStatistics;
- (MLCGPUDeviceOps)initWithForwardKernel:(id)kernel gradientKernel:(id)gradientKernel secondaryGradientKernel:(id)secondaryGradientKernel forwardStatistics:(id)statistics gradientStatistics:(id)gradientStatistics;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MLCGPUDeviceOps

+ (id)deviceOps
{
  v2 = [[self alloc] initWithForwardKernel:0 gradientKernel:0];

  return v2;
}

+ (id)deviceOpsWithForwardKernel:(id)kernel
{
  kernelCopy = kernel;
  v5 = [[self alloc] initWithForwardKernel:kernelCopy gradientKernel:0];

  return v5;
}

+ (id)deviceOpsWithForwardKernel:(id)kernel gradientKernel:(id)gradientKernel
{
  gradientKernelCopy = gradientKernel;
  kernelCopy = kernel;
  v8 = [[self alloc] initWithForwardKernel:kernelCopy gradientKernel:gradientKernelCopy];

  return v8;
}

+ (id)deviceOpsWithForwardKernel:(id)kernel gradientKernel:(id)gradientKernel secondaryGradientKernel:(id)secondaryGradientKernel
{
  secondaryGradientKernelCopy = secondaryGradientKernel;
  gradientKernelCopy = gradientKernel;
  kernelCopy = kernel;
  v11 = [[self alloc] initWithForwardKernel:kernelCopy gradientKernel:gradientKernelCopy secondaryGradientKernel:secondaryGradientKernelCopy forwardStatistics:0 gradientStatistics:0];

  return v11;
}

+ (id)deviceOpsWithForwardKernel:(id)kernel gradientKernel:(id)gradientKernel secondaryGradientKernel:(id)secondaryGradientKernel forwardStatistics:(id)statistics gradientStatistics:(id)gradientStatistics
{
  gradientStatisticsCopy = gradientStatistics;
  statisticsCopy = statistics;
  secondaryGradientKernelCopy = secondaryGradientKernel;
  gradientKernelCopy = gradientKernel;
  kernelCopy = kernel;
  v17 = [[self alloc] initWithForwardKernel:kernelCopy gradientKernel:gradientKernelCopy secondaryGradientKernel:secondaryGradientKernelCopy forwardStatistics:statisticsCopy gradientStatistics:gradientStatisticsCopy];

  return v17;
}

- (MLCGPUDeviceOps)initWithForwardKernel:(id)kernel gradientKernel:(id)gradientKernel secondaryGradientKernel:(id)secondaryGradientKernel forwardStatistics:(id)statistics gradientStatistics:(id)gradientStatistics
{
  kernelCopy = kernel;
  gradientKernelCopy = gradientKernel;
  secondaryGradientKernelCopy = secondaryGradientKernel;
  statisticsCopy = statistics;
  gradientStatisticsCopy = gradientStatistics;
  v27.receiver = self;
  v27.super_class = MLCGPUDeviceOps;
  v16 = [(MLCDeviceOps *)&v27 initWithSource:0 secondarySource:0 result:0 batchSize:1];
  v17 = v16;
  if (v16)
  {
    *&v16->_isMPSKernel = 1;
    v16->_metalKernelType = 0;
    objc_storeStrong(&v16->_forwardKernel, kernel);
    objc_storeStrong(&v17->_gradientKernel, gradientKernel);
    objc_storeStrong(&v17->_secondaryGradientKernel, secondaryGradientKernel);
    lossInitialGradientKernel = v17->_lossInitialGradientKernel;
    v17->_lossInitialGradientKernel = 0;

    combinedForwardAndGradientLossKernel = v17->_combinedForwardAndGradientLossKernel;
    v17->_combinedForwardAndGradientLossKernel = 0;

    gradientState = v17->_gradientState;
    v17->_gradientState = 0;

    movingState = v17->_movingState;
    v17->_movingState = 0;

    exportableState = v17->_exportableState;
    v17->_exportableState = 0;

    objc_storeStrong(&v17->_forwardStatisticsKernel, statistics);
    objc_storeStrong(&v17->_gradientStatisticsKernel, gradientStatistics);
    neuronDescriptor = v17->_neuronDescriptor;
    v17->_neuronDescriptor = 0;

    v17->_computeWeightsAndBiasOnly = 0;
    v17->_useSourceGradientDeviceMemoryForResultGradientTensor = 0;
    v17->_useSourceGradientDeviceMemoryForSecondaryResultGradientTensor = 0;
    v17->_recomputeResultTensor = 0;
    v17->_temporaryHeapIndex = 0;
  }

  return v17;
}

- (id)description
{
  v16 = MEMORY[0x277CCACA8];
  v3 = objc_opt_class();
  v15 = NSStringFromClass(v3);
  forwardKernel = [(MLCGPUDeviceOps *)self forwardKernel];
  gradientKernel = [(MLCGPUDeviceOps *)self gradientKernel];
  secondaryGradientKernel = [(MLCGPUDeviceOps *)self secondaryGradientKernel];
  lossInitialGradientKernel = [(MLCGPUDeviceOps *)self lossInitialGradientKernel];
  gradientState = [(MLCGPUDeviceOps *)self gradientState];
  source = [(MLCDeviceOps *)self source];
  secondarySource = [(MLCDeviceOps *)self secondarySource];
  forwardStatisticsKernel = [(MLCGPUDeviceOps *)self forwardStatisticsKernel];
  gradientStatisticsKernel = [(MLCGPUDeviceOps *)self gradientStatisticsKernel];
  v13 = [v16 stringWithFormat:@"%@: { forwardKernel=%@ : gradientKernel=%@ : secondaryGradientKernel= %@ : lossInitialGradientKernel=%@ : gradientState=%@ : source=%@ : secondarySource=%@ : forwardStatisticsKernel=%@ : gradientStatisticsKernel=%@ }", v15, forwardKernel, gradientKernel, secondaryGradientKernel, lossInitialGradientKernel, gradientState, source, secondarySource, forwardStatisticsKernel, gradientStatisticsKernel];

  return v13;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  forwardKernel = [(MLCGPUDeviceOps *)self forwardKernel];
  gradientKernel = [(MLCGPUDeviceOps *)self gradientKernel];
  v7 = [v4 initWithForwardKernel:forwardKernel gradientKernel:gradientKernel];

  return v7;
}

@end