@interface BatterySwellingInputs
- (BOOL)validateAndInitializeParameters:(id)a3;
- (BOOL)validateAndInitializeSpecifications:(id)a3;
@end

@implementation BatterySwellingInputs

- (BOOL)validateAndInitializeSpecifications:(id)a3
{
  v8 = 0;
  v4 = a3;
  v5 = [v4 dk_numberFromRequiredKey:@"pixelMapHeight" lowerBound:&off_10000C8C8 upperBound:&off_10000C8E0 failed:&v8];
  -[BatterySwellingInputs setPixelMapHeight:](self, "setPixelMapHeight:", [v5 intValue]);

  v6 = [v4 dk_numberFromRequiredKey:@"pixelMapWidth" lowerBound:&off_10000C8C8 upperBound:&off_10000C8E0 failed:&v8];

  -[BatterySwellingInputs setPixelMapWidth:](self, "setPixelMapWidth:", [v6 intValue]);
  return (v8 & 1) == 0;
}

- (BOOL)validateAndInitializeParameters:(id)a3
{
  v11 = 0;
  v4 = a3;
  v5 = [v4 dk_numberFromRequiredKey:@"angleTolerance" lowerBound:&off_10000C8F8 upperBound:&off_10000C910 failed:&v11];
  -[BatterySwellingInputs setAngleTolerance:](self, "setAngleTolerance:", [v5 intValue]);

  v6 = [v4 dk_numberFromRequiredKey:@"samplingSetupTimeout" lowerBound:&off_10000C970 upperBound:&off_10000C980 failed:&v11];
  [v6 doubleValue];
  [(BatterySwellingInputs *)self setSamplingSetupTimeout:?];

  v7 = [v4 dk_numberFromRequiredKey:@"samplingTimeout" lowerBound:&off_10000C970 upperBound:&off_10000C980 failed:&v11];
  [v7 doubleValue];
  [(BatterySwellingInputs *)self setSamplingTimeout:?];

  v8 = [v4 dk_numberFromRequiredKey:@"flipSetupTimeout" lowerBound:&off_10000C970 upperBound:&off_10000C980 failed:&v11];
  [v8 doubleValue];
  [(BatterySwellingInputs *)self setFlipSetupTimeout:?];

  v9 = [v4 dk_numberFromRequiredKey:@"numberOfFramesToCapture" lowerBound:&off_10000C8F8 upperBound:&off_10000C928 failed:&v11];

  -[BatterySwellingInputs setNumFramesToRecord:](self, "setNumFramesToRecord:", [v9 intValue]);
  return (v11 & 1) == 0;
}

@end