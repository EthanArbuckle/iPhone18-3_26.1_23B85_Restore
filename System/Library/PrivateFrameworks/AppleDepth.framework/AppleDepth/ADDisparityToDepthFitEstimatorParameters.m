@interface ADDisparityToDepthFitEstimatorParameters
- (ADDisparityToDepthFitEstimatorParameters)init;
@end

@implementation ADDisparityToDepthFitEstimatorParameters

- (ADDisparityToDepthFitEstimatorParameters)init
{
  v3.receiver = self;
  v3.super_class = ADDisparityToDepthFitEstimatorParameters;
  result = [(ADDisparityToDepthFitEstimatorParameters *)&v3 init];
  if (result)
  {
    result->_iterations = 100;
    *&result->_threshold = xmmword_240406DD0;
    result->_constantSlope = 1;
    *&result->_minDepth = 0x40E000003F000000;
    *&result->_smoothing = 0;
    result->_smoothingWeight = 0.7;
    *&result->_seed = 0x3DCCCCCD0000002ALL;
    result->_retainedWorldPointsCapacity = 900;
  }

  return result;
}

@end