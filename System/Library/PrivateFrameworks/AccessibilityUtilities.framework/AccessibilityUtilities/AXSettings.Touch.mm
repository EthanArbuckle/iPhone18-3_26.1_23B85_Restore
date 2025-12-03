@interface AXSettings.Touch
- (BOOL)preferActionSliderAlternative;
- (void)setPreferActionSliderAlternative:(BOOL)alternative;
@end

@implementation AXSettings.Touch

- (BOOL)preferActionSliderAlternative
{
  selfCopy = self;
  v3 = AXSettings.Touch.preferActionSliderAlternative.getter();

  return v3 & 1;
}

- (void)setPreferActionSliderAlternative:(BOOL)alternative
{
  selfCopy = self;
  AXSettings.Touch.preferActionSliderAlternative.setter(alternative);
}

@end