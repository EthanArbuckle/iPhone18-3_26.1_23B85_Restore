@interface PHASEGeometricSpreadingDistanceModelParameters
- (PHASEGeometricSpreadingDistanceModelParameters)init;
- (void)setRolloffFactor:(double)rolloffFactor;
@end

@implementation PHASEGeometricSpreadingDistanceModelParameters

- (PHASEGeometricSpreadingDistanceModelParameters)init
{
  v3.receiver = self;
  v3.super_class = PHASEGeometricSpreadingDistanceModelParameters;
  result = [(PHASEDistanceModelParameters *)&v3 initInternal];
  if (result)
  {
    result->_rolloffFactor = 1.0;
  }

  return result;
}

- (void)setRolloffFactor:(double)rolloffFactor
{
  v6 = objc_opt_class();
  v8 = NSStringFromClass(v6);
  v7 = NSStringFromSelector(a2);
  self->_rolloffFactor = PHASEGetPropertyBounded<double>(v8, v7, rolloffFactor, 0.0, 1.79769313e308);
}

@end