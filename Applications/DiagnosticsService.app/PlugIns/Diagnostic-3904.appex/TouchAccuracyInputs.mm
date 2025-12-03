@interface TouchAccuracyInputs
- (BOOL)validateAndInitializeParameters:(id)parameters;
@end

@implementation TouchAccuracyInputs

- (BOOL)validateAndInitializeParameters:(id)parameters
{
  v13 = 0;
  parametersCopy = parameters;
  -[TouchAccuracyInputs setConnectedToPowerRequired:](self, "setConnectedToPowerRequired:", [parametersCopy dk_BOOLFromKey:@"connectedToPowerRequired" defaultValue:0 failed:&v13]);
  v5 = [parametersCopy dk_numberFromKey:@"partialInputTimeout" lowerBound:&off_100008790 upperBound:&off_1000087A0 defaultValue:&off_1000087B0 failed:&v13];
  [v5 doubleValue];
  [(TouchAccuracyInputs *)self setPartialInputTimeout:?];

  v6 = [parametersCopy dk_numberFromKey:@"noInputTimeout" lowerBound:&off_100008790 upperBound:&off_1000087A0 defaultValue:&off_1000087C0 failed:&v13];
  [v6 doubleValue];
  [(TouchAccuracyInputs *)self setNoInputTimeout:?];

  v7 = [parametersCopy dk_numberFromRequiredKey:@"blockWidth" lowerBound:&off_1000087D0 upperBound:&off_1000087E0 failed:&v13];
  [v7 doubleValue];
  [(TouchAccuracyInputs *)self setBlockWidth:?];

  v8 = [parametersCopy dk_numberFromRequiredKey:@"blockHeight" lowerBound:&off_1000087D0 upperBound:&off_1000087E0 failed:&v13];
  [v8 doubleValue];
  [(TouchAccuracyInputs *)self setBlockHeight:?];

  v9 = [NSSet setWithObject:objc_opt_class()];
  v10 = [parametersCopy dk_arrayFromRequiredKey:@"positions" types:v9 maxLength:25000000 failed:&v13 validator:&stru_100008270];

  [(TouchAccuracyInputs *)self setPositions:v10];
  positions = [(TouchAccuracyInputs *)self positions];
  -[TouchAccuracyInputs setNumberOfBlocks:](self, "setNumberOfBlocks:", [positions count]);

  return (v13 & 1) == 0;
}

@end