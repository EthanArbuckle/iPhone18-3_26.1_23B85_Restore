@interface AXSettings.Touch
- (BOOL)preferActionSliderAlternative;
- (void)setPreferActionSliderAlternative:(BOOL)a3;
@end

@implementation AXSettings.Touch

- (BOOL)preferActionSliderAlternative
{
  v2 = self;
  v3 = AXSettings.Touch.preferActionSliderAlternative.getter();

  return v3 & 1;
}

- (void)setPreferActionSliderAlternative:(BOOL)a3
{
  v4 = self;
  AXSettings.Touch.preferActionSliderAlternative.setter(a3);
}

@end