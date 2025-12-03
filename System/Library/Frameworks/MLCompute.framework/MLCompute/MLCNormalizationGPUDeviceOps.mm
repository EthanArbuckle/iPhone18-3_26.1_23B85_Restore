@interface MLCNormalizationGPUDeviceOps
+ (id)deviceOpsWithForwardKernel:(id)kernel gradientKernel:(id)gradientKernel;
- (MLCNormalizationGPUDeviceOps)initWithForwardKernel:(id)kernel gradientKernel:(id)gradientKernel;
@end

@implementation MLCNormalizationGPUDeviceOps

+ (id)deviceOpsWithForwardKernel:(id)kernel gradientKernel:(id)gradientKernel
{
  gradientKernelCopy = gradientKernel;
  kernelCopy = kernel;
  v8 = [[self alloc] initWithForwardKernel:kernelCopy gradientKernel:gradientKernelCopy];

  return v8;
}

- (MLCNormalizationGPUDeviceOps)initWithForwardKernel:(id)kernel gradientKernel:(id)gradientKernel
{
  v20.receiver = self;
  v20.super_class = MLCNormalizationGPUDeviceOps;
  v4 = [(MLCGPUDeviceOps *)&v20 initWithForwardKernel:kernel gradientKernel:gradientKernel secondaryGradientKernel:0 forwardStatistics:0 gradientStatistics:0];
  v5 = v4;
  if (v4)
  {
    normalizationGammaGradient = v4->_normalizationGammaGradient;
    v4->_normalizationGammaGradient = 0;

    normalizationBetaGradient = v5->_normalizationBetaGradient;
    v5->_normalizationBetaGradient = 0;

    normalizationInputNormalized = v5->_normalizationInputNormalized;
    v5->_normalizationInputNormalized = 0;

    normalizationInverseSqrtVariance = v5->_normalizationInverseSqrtVariance;
    v5->_normalizationInverseSqrtVariance = 0;

    normalizationComputedMean = v5->_normalizationComputedMean;
    v5->_normalizationComputedMean = 0;

    normalizationComputedVariance = v5->_normalizationComputedVariance;
    v5->_normalizationComputedVariance = 0;

    batchNormMeanKernel = v5->_batchNormMeanKernel;
    v5->_batchNormMeanKernel = 0;

    batchNormVarianceKernel = v5->_batchNormVarianceKernel;
    v5->_batchNormVarianceKernel = 0;

    batchNormBetaGammaDeltaKernel = v5->_batchNormBetaGammaDeltaKernel;
    v5->_batchNormBetaGammaDeltaKernel = 0;

    normalizationSumBetaGammaDeltaKernel = v5->_normalizationSumBetaGammaDeltaKernel;
    v5->_normalizationSumBetaGammaDeltaKernel = 0;

    instanceNormMovingMeanVarianceKernel = v5->_instanceNormMovingMeanVarianceKernel;
    v5->_instanceNormMovingMeanVarianceKernel = 0;

    normalizationRecomputeResultKernel = v5->_normalizationRecomputeResultKernel;
    v5->_normalizationRecomputeResultKernel = 0;

    v5->_varianceEpsilon = 0.0;
    v5->_groupCount = 1;
    normalizationMultiGPUChildOps = v5->_normalizationMultiGPUChildOps;
    v5->_normalizationMultiGPUChildOps = 0;

    v5->_isFusedWithArithmeticLayer = 0;
  }

  return v5;
}

@end