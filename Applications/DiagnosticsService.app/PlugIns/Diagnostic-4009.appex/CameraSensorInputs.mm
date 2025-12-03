@interface CameraSensorInputs
- (BOOL)validateAndInitializeParameters:(id)parameters;
- (BOOL)validateAndInitializePredicates:(id)predicates;
- (BOOL)validateAndInitializeSpecifications:(id)specifications;
@end

@implementation CameraSensorInputs

- (BOOL)validateAndInitializePredicates:(id)predicates
{
  v8 = 0;
  predicatesCopy = predicates;
  v5 = [NSSet setWithObjects:@"Rear", @"Front", @"FrontSuperWide", @"RearTelephoto", @"RearSynced", @"RearSuperWide", 0];
  v6 = [predicatesCopy dk_stringFromRequiredKey:@"identifier" inSet:v5 failed:&v8];

  [(CameraSensorInputs *)self setIdentifier:v6];
  LOBYTE(self) = v8;

  return (self & 1) == 0;
}

- (BOOL)validateAndInitializeParameters:(id)parameters
{
  v7 = 0;
  parametersCopy = parameters;
  -[CameraSensorInputs setEnableMaxDataRate:](self, "setEnableMaxDataRate:", [parametersCopy dk_BOOLFromKey:@"enableMaxDataRate" defaultValue:0 failed:&v7]);
  v5 = [parametersCopy dk_BOOLFromKey:@"enableTestPatternPN9" defaultValue:0 failed:&v7];

  [(CameraSensorInputs *)self setEnableTestPatternPN9:v5];
  return (v7 & 1) == 0;
}

- (BOOL)validateAndInitializeSpecifications:(id)specifications
{
  v13 = 0;
  specificationsCopy = specifications;
  v5 = [specificationsCopy dk_numberFromKey:@"framesToSample" lowerBound:&off_100011360 upperBound:&off_100011378 defaultValue:&off_100011390 failed:&v13];
  -[CameraSensorInputs setFramesToSample:](self, "setFramesToSample:", [v5 intValue]);

  v6 = [specificationsCopy dk_numberFromKey:@"frameSampleTimeout" lowerBound:&off_1000113A8 upperBound:&off_1000113B8 defaultValue:&off_1000113C8 failed:&v13];
  [v6 doubleValue];
  [(CameraSensorInputs *)self setFrameSampleTimeout:?];

  v7 = [specificationsCopy objectForKeyedSubscript:@"minimumFrameRate"];

  v8 = v13;
  if ((v13 & 1) == 0 && v7)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(CameraSensorInputs *)self setMinimumFrameRate:v7];
      minimumFrameRate = [(CameraSensorInputs *)self minimumFrameRate];
      if ([minimumFrameRate intValue] <= 0)
      {
      }

      else
      {
        minimumFrameRate2 = [(CameraSensorInputs *)self minimumFrameRate];
        intValue = [minimumFrameRate2 intValue];

        if (intValue <= 1000)
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