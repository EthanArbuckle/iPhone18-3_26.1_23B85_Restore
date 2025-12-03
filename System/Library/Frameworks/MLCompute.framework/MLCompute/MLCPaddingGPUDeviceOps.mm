@interface MLCPaddingGPUDeviceOps
+ (id)deviceOpsWithForwardKernel:(id)kernel gradientKernel:(id)gradientKernel;
- (MLCPaddingGPUDeviceOps)initWithForwardKernel:(id)kernel gradientKernel:(id)gradientKernel;
@end

@implementation MLCPaddingGPUDeviceOps

+ (id)deviceOpsWithForwardKernel:(id)kernel gradientKernel:(id)gradientKernel
{
  gradientKernelCopy = gradientKernel;
  kernelCopy = kernel;
  v8 = [[self alloc] initWithForwardKernel:kernelCopy gradientKernel:gradientKernelCopy];

  return v8;
}

- (MLCPaddingGPUDeviceOps)initWithForwardKernel:(id)kernel gradientKernel:(id)gradientKernel
{
  v5.receiver = self;
  v5.super_class = MLCPaddingGPUDeviceOps;
  result = [(MLCGPUDeviceOps *)&v5 initWithForwardKernel:kernel gradientKernel:gradientKernel secondaryGradientKernel:0 forwardStatistics:0 gradientStatistics:0];
  if (result)
  {
    result->_paddingType = 0;
    result->_paddingValue = 0.0;
  }

  return result;
}

@end