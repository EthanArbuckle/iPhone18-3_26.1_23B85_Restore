@interface SBFWakeAnimationSettingsInvertColorsAccessibility
- (double)sleepColorBrightness;
@end

@implementation SBFWakeAnimationSettingsInvertColorsAccessibility

- (double)sleepColorBrightness
{
  if (_AXSInvertColorsEnabledGlobalCached())
  {
    v6.receiver = self;
    v6.super_class = SBFWakeAnimationSettingsInvertColorsAccessibility;
    [(SBFWakeAnimationSettingsInvertColorsAccessibility *)&v6 sleepColorBrightness];
    return -v3;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = SBFWakeAnimationSettingsInvertColorsAccessibility;
    [(SBFWakeAnimationSettingsInvertColorsAccessibility *)&v5 sleepColorBrightness];
  }

  return result;
}

@end