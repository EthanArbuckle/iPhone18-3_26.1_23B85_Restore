@interface MLCResizeGPUDeviceOps
+ (id)deviceOpsWithForwardKernel:(id)kernel gradientKernel:(id)gradientKernel;
- (MLCResizeGPUDeviceOps)initWithForwardKernel:(id)kernel gradientKernel:(id)gradientKernel;
@end

@implementation MLCResizeGPUDeviceOps

+ (id)deviceOpsWithForwardKernel:(id)kernel gradientKernel:(id)gradientKernel
{
  gradientKernelCopy = gradientKernel;
  kernelCopy = kernel;
  v8 = [[self alloc] initWithForwardKernel:kernelCopy gradientKernel:gradientKernelCopy];

  return v8;
}

- (MLCResizeGPUDeviceOps)initWithForwardKernel:(id)kernel gradientKernel:(id)gradientKernel
{
  v5.receiver = self;
  v5.super_class = MLCResizeGPUDeviceOps;
  result = [(MLCGPUDeviceOps *)&v5 initWithForwardKernel:kernel gradientKernel:gradientKernel secondaryGradientKernel:0 forwardStatistics:0 gradientStatistics:0];
  if (result)
  {
    result->_scaleFactorX = 0.0;
    result->_scaleFactorY = 0.0;
  }

  return result;
}

@end