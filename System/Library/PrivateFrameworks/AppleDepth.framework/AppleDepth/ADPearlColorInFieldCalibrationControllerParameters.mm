@interface ADPearlColorInFieldCalibrationControllerParameters
- (ADPearlColorInFieldCalibrationControllerParameters)init;
@end

@implementation ADPearlColorInFieldCalibrationControllerParameters

- (ADPearlColorInFieldCalibrationControllerParameters)init
{
  v3.receiver = self;
  v3.super_class = ADPearlColorInFieldCalibrationControllerParameters;
  result = [(ADPearlColorInFieldCalibrationControllerParameters *)&v3 init];
  if (result)
  {
    result->_thresholdPrecOfValidDepth = 0.5;
  }

  return result;
}

@end