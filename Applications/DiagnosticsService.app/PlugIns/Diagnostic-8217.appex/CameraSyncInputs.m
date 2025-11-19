@interface CameraSyncInputs
- (BOOL)validateAndInitializeParameters:(id)a3;
@end

@implementation CameraSyncInputs

- (BOOL)validateAndInitializeParameters:(id)a3
{
  v8 = 0;
  v4 = a3;
  v5 = [v4 dk_numberFromRequiredKey:@"testType" lowerBound:&off_100004428 upperBound:&off_100004440 failed:&v8];
  [(CameraSyncInputs *)self setType:v5];

  v6 = [v4 dk_numberFromRequiredKey:@"duration" lowerBound:&off_100004458 upperBound:&off_100004470 failed:&v8];

  [(CameraSyncInputs *)self setDuration:v6];
  return (v8 & 1) == 0;
}

@end