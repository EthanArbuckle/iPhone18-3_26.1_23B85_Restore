@interface BSUIVibrancyBackdropView
- (BOOL)_shouldAnimatePropertyWithKey:(id)a3;
@end

@implementation BSUIVibrancyBackdropView

- (BOOL)_shouldAnimatePropertyWithKey:(id)a3
{
  v4 = a3;
  if ([v4 hasPrefix:@"filters."])
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = BSUIVibrancyBackdropView;
    v5 = [(BSUIVibrancyBackdropView *)&v7 _shouldAnimatePropertyWithKey:v4];
  }

  return v5;
}

@end