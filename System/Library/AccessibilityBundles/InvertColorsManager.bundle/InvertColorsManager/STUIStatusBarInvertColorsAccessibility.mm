@interface STUIStatusBarInvertColorsAccessibility
- (BOOL)_accessibilityAppliesInvertColorsInDarkUI;
- (BOOL)accessibilityIgnoresInvertColors;
@end

@implementation STUIStatusBarInvertColorsAccessibility

- (BOOL)accessibilityIgnoresInvertColors
{
  window = [(STUIStatusBarInvertColorsAccessibility *)self window];
  if ([window _accessibilityInvertColorsIsDarkWindow])
  {
    _accessibilityInvertColorsSupportsDarkWindowInvert = 1;
  }

  else
  {
    _accessibilityInvertColorsSupportsDarkWindowInvert = [window _accessibilityInvertColorsSupportsDarkWindowInvert];
  }

  return _accessibilityInvertColorsSupportsDarkWindowInvert;
}

- (BOOL)_accessibilityAppliesInvertColorsInDarkUI
{
  window = [(STUIStatusBarInvertColorsAccessibility *)self window];
  _accessibilityInvertColorsSupportsDarkWindowInvert = [window _accessibilityInvertColorsSupportsDarkWindowInvert];

  return _accessibilityInvertColorsSupportsDarkWindowInvert ^ 1;
}

@end