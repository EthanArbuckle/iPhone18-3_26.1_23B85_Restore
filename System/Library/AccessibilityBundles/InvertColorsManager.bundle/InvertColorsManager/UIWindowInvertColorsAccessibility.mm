@interface UIWindowInvertColorsAccessibility
- (BOOL)_accessibilityInvertColorsSupportsDarkWindowInvert;
@end

@implementation UIWindowInvertColorsAccessibility

- (BOOL)_accessibilityInvertColorsSupportsDarkWindowInvert
{
  v3 = [(UIWindowInvertColorsAccessibility *)self traitCollection];
  v4 = [v3 userInterfaceStyle];

  if (v4 == &dword_0 + 2)
  {
    v5 = [(UIWindowInvertColorsAccessibility *)self rootViewController];
    v6 = [v5 _hostedWindowScene];

    if (v6)
    {
      return 0;
    }
  }

  v8.receiver = self;
  v8.super_class = UIWindowInvertColorsAccessibility;
  return [(UIWindowInvertColorsAccessibility *)&v8 _accessibilityInvertColorsSupportsDarkWindowInvert];
}

@end