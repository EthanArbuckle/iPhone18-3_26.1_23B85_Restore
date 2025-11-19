@interface MLCResizeGPUDeviceOps
+ (id)deviceOpsWithForwardKernel:(id)a3 gradientKernel:(id)a4;
- (MLCResizeGPUDeviceOps)initWithForwardKernel:(id)a3 gradientKernel:(id)a4;
@end

@implementation MLCResizeGPUDeviceOps

+ (id)deviceOpsWithForwardKernel:(id)a3 gradientKernel:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithForwardKernel:v7 gradientKernel:v6];

  return v8;
}

- (MLCResizeGPUDeviceOps)initWithForwardKernel:(id)a3 gradientKernel:(id)a4
{
  v5.receiver = self;
  v5.super_class = MLCResizeGPUDeviceOps;
  result = [(MLCGPUDeviceOps *)&v5 initWithForwardKernel:a3 gradientKernel:a4 secondaryGradientKernel:0 forwardStatistics:0 gradientStatistics:0];
  if (result)
  {
    result->_scaleFactorX = 0.0;
    result->_scaleFactorY = 0.0;
  }

  return result;
}

@end