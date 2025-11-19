@interface ADLKTConfidenceParameters
- (ADLKTConfidenceParameters)init;
@end

@implementation ADLKTConfidenceParameters

- (ADLKTConfidenceParameters)init
{
  v3.receiver = self;
  v3.super_class = ADLKTConfidenceParameters;
  result = [(ADLKTConfidenceParameters *)&v3 init];
  if (result)
  {
    *&result->_enableConfidence = 1;
    result->_scaleIdxForConfidenceComponents = 1;
    *&result->_gradientNormMinValue = xmmword_240406ED0;
  }

  return result;
}

@end