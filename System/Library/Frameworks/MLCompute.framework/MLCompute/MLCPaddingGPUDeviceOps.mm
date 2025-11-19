@interface MLCPaddingGPUDeviceOps
+ (id)deviceOpsWithForwardKernel:(id)a3 gradientKernel:(id)a4;
- (MLCPaddingGPUDeviceOps)initWithForwardKernel:(id)a3 gradientKernel:(id)a4;
@end

@implementation MLCPaddingGPUDeviceOps

+ (id)deviceOpsWithForwardKernel:(id)a3 gradientKernel:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithForwardKernel:v7 gradientKernel:v6];

  return v8;
}

- (MLCPaddingGPUDeviceOps)initWithForwardKernel:(id)a3 gradientKernel:(id)a4
{
  v5.receiver = self;
  v5.super_class = MLCPaddingGPUDeviceOps;
  result = [(MLCGPUDeviceOps *)&v5 initWithForwardKernel:a3 gradientKernel:a4 secondaryGradientKernel:0 forwardStatistics:0 gradientStatistics:0];
  if (result)
  {
    result->_paddingType = 0;
    result->_paddingValue = 0.0;
  }

  return result;
}

@end