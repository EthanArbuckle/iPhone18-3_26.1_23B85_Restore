@interface _UIHostedWindowInvertColorsAccessibility
- (BOOL)_accessibilityInvertColorsSupportsDarkWindowInvert;
@end

@implementation _UIHostedWindowInvertColorsAccessibility

- (BOOL)_accessibilityInvertColorsSupportsDarkWindowInvert
{
  v3 = [(_UIHostedWindowInvertColorsAccessibility *)self traitCollection];
  v4 = [v3 userInterfaceStyle];

  if (v4 == &dword_0 + 2)
  {
    v5 = +[NSBundle mainBundle];
    v6 = [v5 bundlePath];
    if ([v6 hasSuffix:@"appex"])
    {

      return 0;
    }

    IsViewService = AXApplicationIsViewService();

    if (IsViewService)
    {
      return 0;
    }
  }

  v9.receiver = self;
  v9.super_class = _UIHostedWindowInvertColorsAccessibility;
  return [(_UIHostedWindowInvertColorsAccessibility *)&v9 _accessibilityInvertColorsSupportsDarkWindowInvert];
}

@end