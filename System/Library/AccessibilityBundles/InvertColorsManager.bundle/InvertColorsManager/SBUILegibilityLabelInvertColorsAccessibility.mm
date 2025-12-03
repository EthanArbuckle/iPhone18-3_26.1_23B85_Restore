@interface SBUILegibilityLabelInvertColorsAccessibility
- (BOOL)accessibilityIgnoresInvertColors;
@end

@implementation SBUILegibilityLabelInvertColorsAccessibility

- (BOOL)accessibilityIgnoresInvertColors
{
  if (!_AXSInvertColorsEnabledGlobalCached())
  {
    return 0;
  }

  v3 = [(SBUILegibilityLabelInvertColorsAccessibility *)self safeValueForKey:@"legibilitySettings"];
  v4 = __UIAccessibilitySafeClass();

  primaryColor = [v4 primaryColor];

  v6 = +[UIColor whiteColor];
  v7 = [primaryColor isEqual:v6];

  return v7;
}

@end