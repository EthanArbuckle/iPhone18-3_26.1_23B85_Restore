@interface MLCMHAGPUDeviceOps
+ (id)deviceOps;
- (MLCMHAGPUDeviceOps)initWithForwardKernel:(id)kernel gradientKernel:(id)gradientKernel;
@end

@implementation MLCMHAGPUDeviceOps

+ (id)deviceOps
{
  v2 = [[self alloc] initWithForwardKernel:0 gradientKernel:0];

  return v2;
}

- (MLCMHAGPUDeviceOps)initWithForwardKernel:(id)kernel gradientKernel:(id)gradientKernel
{
  v35.receiver = self;
  v35.super_class = MLCMHAGPUDeviceOps;
  v4 = [(MLCGPUDeviceOps *)&v35 initWithForwardKernel:kernel gradientKernel:gradientKernel secondaryGradientKernel:0 forwardStatistics:0 gradientStatistics:0];
  v5 = v4;
  if (v4)
  {
    v4->_mhaHeadCount = 1;
    v4->_mhaHasZeroAttention = 0;
    v6 = MEMORY[0x277CBEBF8];
    v7 = [MEMORY[0x277CBEBF8] mutableCopy];
    mhaAttentionBiasTensors = v5->_mhaAttentionBiasTensors;
    v5->_mhaAttentionBiasTensors = v7;

    mhaDropoutForwardKernel = v5->_mhaDropoutForwardKernel;
    v5->_mhaDropoutForwardKernel = 0;

    mhaDropoutGradientKernel = v5->_mhaDropoutGradientKernel;
    v5->_mhaDropoutGradientKernel = 0;

    mhaDropoutState = v5->_mhaDropoutState;
    v5->_mhaDropoutState = 0;

    mhaDropoutSource = v5->_mhaDropoutSource;
    v5->_mhaDropoutSource = 0;

    v5->_mhaHasKeyMask = 0;
    v5->_mhaHasAttentionMask = 0;
    v13 = [v6 mutableCopy];
    mhaInputProjResults = v5->_mhaInputProjResults;
    v5->_mhaInputProjResults = v13;

    mhaQKSoftmaxResultMatrix = v5->_mhaQKSoftmaxResultMatrix;
    v5->_mhaQKSoftmaxResultMatrix = 0;

    v16 = [v6 mutableCopy];
    mhaMatMulSourcesQKV = v5->_mhaMatMulSourcesQKV;
    v5->_mhaMatMulSourcesQKV = v16;

    v18 = [v6 mutableCopy];
    mhaSourcesQKV = v5->_mhaSourcesQKV;
    v5->_mhaSourcesQKV = v18;

    v20 = [v6 mutableCopy];
    mhaMultiGPUChildOps = v5->_mhaMultiGPUChildOps;
    v5->_mhaMultiGPUChildOps = v20;

    v22 = [v6 copy];
    mhaReduceSumKernels = v5->_mhaReduceSumKernels;
    v5->_mhaReduceSumKernels = v22;

    mhaMatMulKernel = v5->_mhaMatMulKernel;
    v5->_mhaMatMulKernel = 0;

    mhaMatMulKernelWithScale = v5->_mhaMatMulKernelWithScale;
    v5->_mhaMatMulKernelWithScale = 0;

    v26 = [v6 mutableCopy];
    mhaMatrixDescriptors = v5->_mhaMatrixDescriptors;
    v5->_mhaMatrixDescriptors = v26;

    v28 = [v6 mutableCopy];
    mhaNDArrayDescriptors = v5->_mhaNDArrayDescriptors;
    v5->_mhaNDArrayDescriptors = v28;

    v30 = [v6 mutableCopy];
    mhaMatrixDescriptorsForBias = v5->_mhaMatrixDescriptorsForBias;
    v5->_mhaMatrixDescriptorsForBias = v30;

    v32 = [v6 mutableCopy];
    mhaNDArrayDescriptorsForBias = v5->_mhaNDArrayDescriptorsForBias;
    v5->_mhaNDArrayDescriptorsForBias = v32;
  }

  return v5;
}

@end