@interface PearlErrorDataInputs
- (BOOL)validateAndInitializeParameters:(id)parameters;
@end

@implementation PearlErrorDataInputs

- (BOOL)validateAndInitializeParameters:(id)parameters
{
  v9 = 0;
  parametersCopy = parameters;
  v5 = [parametersCopy dk_numberFromRequiredKey:@"testType" lowerBound:&off_1000043C8 upperBound:&off_1000043E0 failed:&v9];
  [(PearlErrorDataInputs *)self setTestType:v5];

  v6 = [parametersCopy dk_numberFromKey:@"frameCount" lowerBound:&off_1000043F8 upperBound:&off_100004410 defaultValue:&off_100004428 failed:&v9];
  [(PearlErrorDataInputs *)self setFrameCount:v6];

  v7 = [parametersCopy dk_numberFromKey:@"timeout" lowerBound:&off_1000044D0 upperBound:&off_1000044E0 defaultValue:&off_1000044F0 failed:&v9];

  [(PearlErrorDataInputs *)self setTimeout:v7];
  return (v9 & 1) == 0;
}

@end