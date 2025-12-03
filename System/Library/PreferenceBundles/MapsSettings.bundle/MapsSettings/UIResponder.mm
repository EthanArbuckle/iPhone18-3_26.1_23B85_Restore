@interface UIResponder
- (void)_maps_logResponderChain;
@end

@implementation UIResponder

- (void)_maps_logResponderChain
{
  NSLog(@"%@", a2, self);
  nextResponder = [(UIResponder *)self nextResponder];
  [nextResponder _maps_logResponderChain];
}

@end