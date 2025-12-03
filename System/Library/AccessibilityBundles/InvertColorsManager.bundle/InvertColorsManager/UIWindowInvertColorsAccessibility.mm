@interface UIWindowInvertColorsAccessibility
- (BOOL)_accessibilityInvertColorsSupportsDarkWindowInvert;
@end

@implementation UIWindowInvertColorsAccessibility

- (BOOL)_accessibilityInvertColorsSupportsDarkWindowInvert
{
  traitCollection = [(UIWindowInvertColorsAccessibility *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];

  if (userInterfaceStyle == &dword_0 + 2)
  {
    rootViewController = [(UIWindowInvertColorsAccessibility *)self rootViewController];
    _hostedWindowScene = [rootViewController _hostedWindowScene];

    if (_hostedWindowScene)
    {
      return 0;
    }
  }

  v8.receiver = self;
  v8.super_class = UIWindowInvertColorsAccessibility;
  return [(UIWindowInvertColorsAccessibility *)&v8 _accessibilityInvertColorsSupportsDarkWindowInvert];
}

@end