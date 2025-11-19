@interface ComponentButtonCamera
- (BOOL)isPresent;
@end

@implementation ComponentButtonCamera

- (BOOL)isPresent
{
  v2 = [(ComponentButtonBase *)self buttonsDetected];
  v3 = [v2 containsObject:@"capture"];

  return v3;
}

@end