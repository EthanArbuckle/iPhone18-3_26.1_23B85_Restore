@interface BatterySwellingInputs
- (BOOL)validateAndInitializeParameters:(id)parameters;
- (BOOL)validateAndInitializeSpecifications:(id)specifications;
@end

@implementation BatterySwellingInputs

- (BOOL)validateAndInitializeSpecifications:(id)specifications
{
  v8 = 0;
  specificationsCopy = specifications;
  v5 = [specificationsCopy dk_numberFromRequiredKey:@"pixelMapHeight" lowerBound:&off_10000C8C8 upperBound:&off_10000C8E0 failed:&v8];
  -[BatterySwellingInputs setPixelMapHeight:](self, "setPixelMapHeight:", [v5 intValue]);

  v6 = [specificationsCopy dk_numberFromRequiredKey:@"pixelMapWidth" lowerBound:&off_10000C8C8 upperBound:&off_10000C8E0 failed:&v8];

  -[BatterySwellingInputs setPixelMapWidth:](self, "setPixelMapWidth:", [v6 intValue]);
  return (v8 & 1) == 0;
}

- (BOOL)validateAndInitializeParameters:(id)parameters
{
  v11 = 0;
  parametersCopy = parameters;
  v5 = [parametersCopy dk_numberFromRequiredKey:@"angleTolerance" lowerBound:&off_10000C8F8 upperBound:&off_10000C910 failed:&v11];
  -[BatterySwellingInputs setAngleTolerance:](self, "setAngleTolerance:", [v5 intValue]);

  v6 = [parametersCopy dk_numberFromRequiredKey:@"samplingSetupTimeout" lowerBound:&off_10000C970 upperBound:&off_10000C980 failed:&v11];
  [v6 doubleValue];
  [(BatterySwellingInputs *)self setSamplingSetupTimeout:?];

  v7 = [parametersCopy dk_numberFromRequiredKey:@"samplingTimeout" lowerBound:&off_10000C970 upperBound:&off_10000C980 failed:&v11];
  [v7 doubleValue];
  [(BatterySwellingInputs *)self setSamplingTimeout:?];

  v8 = [parametersCopy dk_numberFromRequiredKey:@"flipSetupTimeout" lowerBound:&off_10000C970 upperBound:&off_10000C980 failed:&v11];
  [v8 doubleValue];
  [(BatterySwellingInputs *)self setFlipSetupTimeout:?];

  v9 = [parametersCopy dk_numberFromRequiredKey:@"numberOfFramesToCapture" lowerBound:&off_10000C8F8 upperBound:&off_10000C928 failed:&v11];

  -[BatterySwellingInputs setNumFramesToRecord:](self, "setNumFramesToRecord:", [v9 intValue]);
  return (v11 & 1) == 0;
}

@end