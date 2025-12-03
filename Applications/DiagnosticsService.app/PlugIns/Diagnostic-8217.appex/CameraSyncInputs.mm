@interface CameraSyncInputs
- (BOOL)validateAndInitializeParameters:(id)parameters;
@end

@implementation CameraSyncInputs

- (BOOL)validateAndInitializeParameters:(id)parameters
{
  v8 = 0;
  parametersCopy = parameters;
  v5 = [parametersCopy dk_numberFromRequiredKey:@"testType" lowerBound:&off_100004428 upperBound:&off_100004440 failed:&v8];
  [(CameraSyncInputs *)self setType:v5];

  v6 = [parametersCopy dk_numberFromRequiredKey:@"duration" lowerBound:&off_100004458 upperBound:&off_100004470 failed:&v8];

  [(CameraSyncInputs *)self setDuration:v6];
  return (v8 & 1) == 0;
}

@end