@interface TouchAccuracyInputs
- (BOOL)validateAndInitializeParameters:(id)a3;
@end

@implementation TouchAccuracyInputs

- (BOOL)validateAndInitializeParameters:(id)a3
{
  v13 = 0;
  v4 = a3;
  -[TouchAccuracyInputs setConnectedToPowerRequired:](self, "setConnectedToPowerRequired:", [v4 dk_BOOLFromKey:@"connectedToPowerRequired" defaultValue:0 failed:&v13]);
  v5 = [v4 dk_numberFromKey:@"partialInputTimeout" lowerBound:&off_100008790 upperBound:&off_1000087A0 defaultValue:&off_1000087B0 failed:&v13];
  [v5 doubleValue];
  [(TouchAccuracyInputs *)self setPartialInputTimeout:?];

  v6 = [v4 dk_numberFromKey:@"noInputTimeout" lowerBound:&off_100008790 upperBound:&off_1000087A0 defaultValue:&off_1000087C0 failed:&v13];
  [v6 doubleValue];
  [(TouchAccuracyInputs *)self setNoInputTimeout:?];

  v7 = [v4 dk_numberFromRequiredKey:@"blockWidth" lowerBound:&off_1000087D0 upperBound:&off_1000087E0 failed:&v13];
  [v7 doubleValue];
  [(TouchAccuracyInputs *)self setBlockWidth:?];

  v8 = [v4 dk_numberFromRequiredKey:@"blockHeight" lowerBound:&off_1000087D0 upperBound:&off_1000087E0 failed:&v13];
  [v8 doubleValue];
  [(TouchAccuracyInputs *)self setBlockHeight:?];

  v9 = [NSSet setWithObject:objc_opt_class()];
  v10 = [v4 dk_arrayFromRequiredKey:@"positions" types:v9 maxLength:25000000 failed:&v13 validator:&stru_100008270];

  [(TouchAccuracyInputs *)self setPositions:v10];
  v11 = [(TouchAccuracyInputs *)self positions];
  -[TouchAccuracyInputs setNumberOfBlocks:](self, "setNumberOfBlocks:", [v11 count]);

  return (v13 & 1) == 0;
}

@end