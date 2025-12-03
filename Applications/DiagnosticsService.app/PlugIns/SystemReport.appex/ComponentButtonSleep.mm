@interface ComponentButtonSleep
- (BOOL)isPresent;
@end

@implementation ComponentButtonSleep

- (BOOL)isPresent
{
  buttonsDetected = [(ComponentButtonBase *)self buttonsDetected];
  v3 = [buttonsDetected containsObject:@"hold"];

  return v3;
}

@end