@interface STUIStatusBarInvertColorsAccessibility
- (BOOL)_accessibilityAppliesInvertColorsInDarkUI;
- (BOOL)accessibilityIgnoresInvertColors;
@end

@implementation STUIStatusBarInvertColorsAccessibility

- (BOOL)accessibilityIgnoresInvertColors
{
  v2 = [(STUIStatusBarInvertColorsAccessibility *)self window];
  if ([v2 _accessibilityInvertColorsIsDarkWindow])
  {
    v3 = 1;
  }

  else
  {
    v3 = [v2 _accessibilityInvertColorsSupportsDarkWindowInvert];
  }

  return v3;
}

- (BOOL)_accessibilityAppliesInvertColorsInDarkUI
{
  v2 = [(STUIStatusBarInvertColorsAccessibility *)self window];
  v3 = [v2 _accessibilityInvertColorsSupportsDarkWindowInvert];

  return v3 ^ 1;
}

@end