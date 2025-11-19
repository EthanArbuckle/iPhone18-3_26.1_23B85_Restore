@interface MLCEmbeddingGPUDeviceOps
+ (id)deviceOps;
- (MLCEmbeddingGPUDeviceOps)initWithForwardKernel:(id)a3 gradientKernel:(id)a4;
@end

@implementation MLCEmbeddingGPUDeviceOps

+ (id)deviceOps
{
  v2 = [[a1 alloc] initWithForwardKernel:0 gradientKernel:0];

  return v2;
}

- (MLCEmbeddingGPUDeviceOps)initWithForwardKernel:(id)a3 gradientKernel:(id)a4
{
  v10.receiver = self;
  v10.super_class = MLCEmbeddingGPUDeviceOps;
  v4 = [(MLCGPUDeviceOps *)&v10 initWithForwardKernel:a3 gradientKernel:a4 secondaryGradientKernel:0 forwardStatistics:0 gradientStatistics:0];
  v5 = v4;
  if (v4)
  {
    paddingIndex = v4->_paddingIndex;
    v4->_paddingIndex = 0;

    embeddingParams = v5->_embeddingParams;
    v5->_embeddingParams = 0;

    v5->_scaleGradientByFrequency = 0;
    gradientForWeights = v5->_gradientForWeights;
    v5->_gradientForWeights = 0;
  }

  return v5;
}

@end