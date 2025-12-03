@interface ForceTouchInputs
- (BOOL)validateAndInitializeParameters:(id)parameters;
- (BOOL)validateAndInitializeSpecifications:(id)specifications;
@end

@implementation ForceTouchInputs

- (BOOL)validateAndInitializeSpecifications:(id)specifications
{
  v10 = 0;
  specificationsCopy = specifications;
  v5 = [specificationsCopy dk_numberFromRequiredKey:@"startingCircleRatio" lowerBound:&off_10000C8E0 upperBound:&off_10000C8F0 failed:&v10];
  [v5 floatValue];
  [(ForceTouchInputs *)self setStartingCircleRatio:?];

  v6 = [specificationsCopy dk_numberFromRequiredKey:@"endingCircleRatio" lowerBound:&off_10000C8E0 upperBound:&off_10000C8F0 failed:&v10];
  [v6 floatValue];
  [(ForceTouchInputs *)self setEndingCircleRatio:?];

  v7 = [specificationsCopy dk_numberFromRequiredKey:@"gridRows" lowerBound:&off_10000C920 upperBound:&off_10000C938 failed:&v10];
  -[ForceTouchInputs setGridRows:](self, "setGridRows:", [v7 intValue]);

  v8 = [specificationsCopy dk_numberFromRequiredKey:@"gridColumns" lowerBound:&off_10000C920 upperBound:&off_10000C938 failed:&v10];

  -[ForceTouchInputs setGridColumns:](self, "setGridColumns:", [v8 intValue]);
  return (v10 & 1) == 0;
}

- (BOOL)validateAndInitializeParameters:(id)parameters
{
  v13 = 0;
  parametersCopy = parameters;
  v5 = [NSSet setWithObject:objc_opt_class()];
  v6 = [parametersCopy dk_arrayFromRequiredKey:@"pressurePoints" types:v5 maxLength:1000 failed:&v13 validator:&stru_10000C370];
  [(ForceTouchInputs *)self setPressurePoints:v6];

  v7 = [parametersCopy dk_stringFromRequiredKey:@"forceTouchSensitivityText" maxLength:100 failed:&v13];
  [(ForceTouchInputs *)self setForceTouchSensitivityText:v7];

  v8 = [parametersCopy dk_numberFromKey:@"partialInputTimeout" lowerBound:&off_10000CAA8 upperBound:&off_10000CAB8 defaultValue:&off_10000CAC8 failed:&v13];
  [v8 doubleValue];
  [(ForceTouchInputs *)self setPartialInputTimeout:?];

  v9 = [parametersCopy dk_numberFromKey:@"noInputTimeout" lowerBound:&off_10000CAA8 upperBound:&off_10000CAB8 defaultValue:&off_10000CAC8 failed:&v13];
  [v9 doubleValue];
  [(ForceTouchInputs *)self setNoInputTimeout:?];

  -[ForceTouchInputs setRandomizeCoordinates:](self, "setRandomizeCoordinates:", [parametersCopy dk_BOOLFromKey:@"randomizeCoordinates" defaultValue:0 failed:&v13]);
  -[ForceTouchInputs setHapticFeedback:](self, "setHapticFeedback:", [parametersCopy dk_BOOLFromKey:@"hapticFeedback" defaultValue:0 failed:&v13]);
  v10 = [NSSet setWithObject:objc_opt_class()];
  v11 = [parametersCopy dk_arrayFromKey:@"testCoordinates" types:v10 maxLength:18 defaultValue:0 failed:&v13];

  [(ForceTouchInputs *)self setTestCoordinateColorsParameter:v11];
  return (v13 & 1) == 0;
}

@end