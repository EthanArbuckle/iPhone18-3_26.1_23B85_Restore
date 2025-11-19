@interface MLCMultiGPUDeviceOps
+ (id)multiGPUDeviceOpsWithGPUDeviceOps:(id)a3;
- (MLCMultiGPUDeviceOps)initWithGPUDevicOps:(id)a3;
@end

@implementation MLCMultiGPUDeviceOps

+ (id)multiGPUDeviceOpsWithGPUDeviceOps:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithGPUDevicOps:v4];

  return v5;
}

- (MLCMultiGPUDeviceOps)initWithGPUDevicOps:(id)a3
{
  v4 = a3;
  v5 = [v4 forwardKernel];
  v6 = [v4 gradientKernel];
  v7 = [v4 secondaryGradientKernel];
  v8 = [v4 forwardStatisticsKernel];
  v9 = [v4 gradientStatisticsKernel];
  v14.receiver = self;
  v14.super_class = MLCMultiGPUDeviceOps;
  v10 = [(MLCGPUDeviceOps *)&v14 initWithForwardKernel:v5 gradientKernel:v6 secondaryGradientKernel:v7 forwardStatistics:v8 gradientStatistics:v9];

  if (v10)
  {
    v10->_multiGPUReduction = 0;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v4 rnnTrainableWeightGradients];
    }

    else
    {
      v11 = [MEMORY[0x277CBEBF8] mutableCopy];
    }

    rnnTrainableWeightGradients = v10->_rnnTrainableWeightGradients;
    v10->_rnnTrainableWeightGradients = v11;
  }

  return v10;
}

@end