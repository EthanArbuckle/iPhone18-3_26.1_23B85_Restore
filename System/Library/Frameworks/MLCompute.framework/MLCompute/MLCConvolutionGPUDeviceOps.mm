@interface MLCConvolutionGPUDeviceOps
+ (id)deviceOpsWithForwardMPSGraph:(id)graph gradientMPSGraph:(id)sGraph;
- (MLCConvolutionGPUDeviceOps)initWithForwardMPSGraph:(id)graph gradientMPSGraph:(id)sGraph;
@end

@implementation MLCConvolutionGPUDeviceOps

+ (id)deviceOpsWithForwardMPSGraph:(id)graph gradientMPSGraph:(id)sGraph
{
  sGraphCopy = sGraph;
  graphCopy = graph;
  v8 = [[self alloc] initWithForwardMPSGraph:graphCopy gradientMPSGraph:sGraphCopy];

  return v8;
}

- (MLCConvolutionGPUDeviceOps)initWithForwardMPSGraph:(id)graph gradientMPSGraph:(id)sGraph
{
  graphCopy = graph;
  sGraphCopy = sGraph;
  v20.receiver = self;
  v20.super_class = MLCConvolutionGPUDeviceOps;
  v9 = [(MLCGPUDeviceOps *)&v20 initWithForwardKernel:0 gradientKernel:0 secondaryGradientKernel:0 forwardStatistics:0 gradientStatistics:0];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_forwardMPSGraph, graph);
    objc_storeStrong(&v10->_gradientMPSGraph, sGraph);
    v10->_depthWiseConvolution = 0;
    v10->_convolutionTranspose = 0;
    v10->_hasBias = 0;
    v10->_biasChannelCount = 0;
    v11 = MEMORY[0x277CBEBF8];
    v12 = [MEMORY[0x277CBEBF8] mutableCopy];
    descriptorsForMPSGraph = v10->_descriptorsForMPSGraph;
    v10->_descriptorsForMPSGraph = v12;

    v14 = [v11 mutableCopy];
    mpsGraphTensors = v10->_mpsGraphTensors;
    v10->_mpsGraphTensors = v14;

    convolutionMultiGPUChildOps = v10->_convolutionMultiGPUChildOps;
    v10->_convolutionMultiGPUChildOps = 0;

    transposeDeviceOps = v10->_transposeDeviceOps;
    v10->_transposeDeviceOps = 0;

    transposedTensors = v10->_transposedTensors;
    v10->_transposedTensors = 0;
  }

  return v10;
}

@end