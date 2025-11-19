@interface ComponentButtonSleep
- (BOOL)isPresent;
@end

@implementation ComponentButtonSleep

- (BOOL)isPresent
{
  v2 = [(ComponentButtonBase *)self buttonsDetected];
  v3 = [v2 containsObject:@"hold"];

  return v3;
}

@end