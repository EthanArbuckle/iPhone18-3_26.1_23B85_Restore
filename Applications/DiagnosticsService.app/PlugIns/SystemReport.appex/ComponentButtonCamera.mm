@interface ComponentButtonCamera
- (BOOL)isPresent;
@end

@implementation ComponentButtonCamera

- (BOOL)isPresent
{
  buttonsDetected = [(ComponentButtonBase *)self buttonsDetected];
  v3 = [buttonsDetected containsObject:@"capture"];

  return v3;
}

@end