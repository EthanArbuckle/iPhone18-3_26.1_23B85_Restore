@interface MLCMultiGPUDeviceOps
+ (id)multiGPUDeviceOpsWithGPUDeviceOps:(id)ops;
- (MLCMultiGPUDeviceOps)initWithGPUDevicOps:(id)ops;
@end

@implementation MLCMultiGPUDeviceOps

+ (id)multiGPUDeviceOpsWithGPUDeviceOps:(id)ops
{
  opsCopy = ops;
  v5 = [[self alloc] initWithGPUDevicOps:opsCopy];

  return v5;
}

- (MLCMultiGPUDeviceOps)initWithGPUDevicOps:(id)ops
{
  opsCopy = ops;
  forwardKernel = [opsCopy forwardKernel];
  gradientKernel = [opsCopy gradientKernel];
  secondaryGradientKernel = [opsCopy secondaryGradientKernel];
  forwardStatisticsKernel = [opsCopy forwardStatisticsKernel];
  gradientStatisticsKernel = [opsCopy gradientStatisticsKernel];
  v14.receiver = self;
  v14.super_class = MLCMultiGPUDeviceOps;
  v10 = [(MLCGPUDeviceOps *)&v14 initWithForwardKernel:forwardKernel gradientKernel:gradientKernel secondaryGradientKernel:secondaryGradientKernel forwardStatistics:forwardStatisticsKernel gradientStatistics:gradientStatisticsKernel];

  if (v10)
  {
    v10->_multiGPUReduction = 0;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      rnnTrainableWeightGradients = [opsCopy rnnTrainableWeightGradients];
    }

    else
    {
      rnnTrainableWeightGradients = [MEMORY[0x277CBEBF8] mutableCopy];
    }

    rnnTrainableWeightGradients = v10->_rnnTrainableWeightGradients;
    v10->_rnnTrainableWeightGradients = rnnTrainableWeightGradients;
  }

  return v10;
}

@end