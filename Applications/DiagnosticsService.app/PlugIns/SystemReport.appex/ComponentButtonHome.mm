@interface ComponentButtonHome
- (BOOL)isPresent;
@end

@implementation ComponentButtonHome

- (BOOL)isPresent
{
  buttonsDetected = [(ComponentButtonBase *)self buttonsDetected];
  v3 = [buttonsDetected containsObject:@"menu"];

  return v3;
}

@end