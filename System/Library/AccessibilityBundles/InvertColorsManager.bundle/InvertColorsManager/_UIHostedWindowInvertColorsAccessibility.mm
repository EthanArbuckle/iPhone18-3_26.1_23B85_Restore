@interface _UIHostedWindowInvertColorsAccessibility
- (BOOL)_accessibilityInvertColorsSupportsDarkWindowInvert;
@end

@implementation _UIHostedWindowInvertColorsAccessibility

- (BOOL)_accessibilityInvertColorsSupportsDarkWindowInvert
{
  traitCollection = [(_UIHostedWindowInvertColorsAccessibility *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];

  if (userInterfaceStyle == &dword_0 + 2)
  {
    v5 = +[NSBundle mainBundle];
    bundlePath = [v5 bundlePath];
    if ([bundlePath hasSuffix:@"appex"])
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