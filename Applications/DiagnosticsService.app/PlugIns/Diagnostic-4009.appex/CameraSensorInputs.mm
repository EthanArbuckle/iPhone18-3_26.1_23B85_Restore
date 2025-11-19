@interface CameraSensorInputs
- (BOOL)validateAndInitializeParameters:(id)a3;
- (BOOL)validateAndInitializePredicates:(id)a3;
- (BOOL)validateAndInitializeSpecifications:(id)a3;
@end

@implementation CameraSensorInputs

- (BOOL)validateAndInitializePredicates:(id)a3
{
  v8 = 0;
  v4 = a3;
  v5 = [NSSet setWithObjects:@"Rear", @"Front", @"FrontSuperWide", @"RearTelephoto", @"RearSynced", @"RearSuperWide", 0];
  v6 = [v4 dk_stringFromRequiredKey:@"identifier" inSet:v5 failed:&v8];

  [(CameraSensorInputs *)self setIdentifier:v6];
  LOBYTE(self) = v8;

  return (self & 1) == 0;
}

- (BOOL)validateAndInitializeParameters:(id)a3
{
  v7 = 0;
  v4 = a3;
  -[CameraSensorInputs setEnableMaxDataRate:](self, "setEnableMaxDataRate:", [v4 dk_BOOLFromKey:@"enableMaxDataRate" defaultValue:0 failed:&v7]);
  v5 = [v4 dk_BOOLFromKey:@"enableTestPatternPN9" defaultValue:0 failed:&v7];

  [(CameraSensorInputs *)self setEnableTestPatternPN9:v5];
  return (v7 & 1) == 0;
}

- (BOOL)validateAndInitializeSpecifications:(id)a3
{
  v13 = 0;
  v4 = a3;
  v5 = [v4 dk_numberFromKey:@"framesToSample" lowerBound:&off_100011360 upperBound:&off_100011378 defaultValue:&off_100011390 failed:&v13];
  -[CameraSensorInputs setFramesToSample:](self, "setFramesToSample:", [v5 intValue]);

  v6 = [v4 dk_numberFromKey:@"frameSampleTimeout" lowerBound:&off_1000113A8 upperBound:&off_1000113B8 defaultValue:&off_1000113C8 failed:&v13];
  [v6 doubleValue];
  [(CameraSensorInputs *)self setFrameSampleTimeout:?];

  v7 = [v4 objectForKeyedSubscript:@"minimumFrameRate"];

  v8 = v13;
  if ((v13 & 1) == 0 && v7)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(CameraSensorInputs *)self setMinimumFrameRate:v7];
      v9 = [(CameraSensorInputs *)self minimumFrameRate];
      if ([v9 intValue] <= 0)
      {
      }

      else
      {
        v10 = [(CameraSensorInputs *)self minimumFrameRate];
        v11 = [v10 intValue];

        if (v11 <= 1000)
        {
          v8 = v13;
          goto LABEL_9;
        }
      }
    }

    v8 = 1;
    v13 = 1;
  }

LABEL_9:

  return (v8 & 1) == 0;
}

@end