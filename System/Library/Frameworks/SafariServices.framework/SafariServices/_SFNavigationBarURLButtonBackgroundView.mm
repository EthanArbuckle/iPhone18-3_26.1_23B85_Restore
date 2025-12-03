@interface _SFNavigationBarURLButtonBackgroundView
- (BOOL)_shouldAnimatePropertyWithKey:(id)key;
@end

@implementation _SFNavigationBarURLButtonBackgroundView

- (BOOL)_shouldAnimatePropertyWithKey:(id)key
{
  keyCopy = key;
  if ([keyCopy isEqualToString:@"contents"])
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = _SFNavigationBarURLButtonBackgroundView;
    v5 = [(_SFNavigationBarURLButtonBackgroundView *)&v7 _shouldAnimatePropertyWithKey:keyCopy];
  }

  return v5;
}

@end