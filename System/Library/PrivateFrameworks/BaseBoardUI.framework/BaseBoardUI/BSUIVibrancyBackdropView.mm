@interface BSUIVibrancyBackdropView
- (BOOL)_shouldAnimatePropertyWithKey:(id)key;
@end

@implementation BSUIVibrancyBackdropView

- (BOOL)_shouldAnimatePropertyWithKey:(id)key
{
  keyCopy = key;
  if ([keyCopy hasPrefix:@"filters."])
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = BSUIVibrancyBackdropView;
    v5 = [(BSUIVibrancyBackdropView *)&v7 _shouldAnimatePropertyWithKey:keyCopy];
  }

  return v5;
}

@end