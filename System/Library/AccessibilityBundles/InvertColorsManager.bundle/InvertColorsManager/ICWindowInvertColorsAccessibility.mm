@interface ICWindowInvertColorsAccessibility
- (BOOL)_accessibilityInvertColorsSupportsDarkWindowInvert;
@end

@implementation ICWindowInvertColorsAccessibility

- (BOOL)_accessibilityInvertColorsSupportsDarkWindowInvert
{
  objc_opt_class();
  v2 = __UIAccessibilityCastAsClass();
  rootViewController = [v2 rootViewController];
  AXSafeClassFromString();
  isKindOfClass = objc_opt_isKindOfClass();

  return (isKindOfClass & 1) == 0;
}

@end