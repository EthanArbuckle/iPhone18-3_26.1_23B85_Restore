@interface UIRemoteKeyboardWindowHostedInvertColorsAccessibility
- (BOOL)_accessibilityInvertColorsSupportsDarkWindowInvert;
@end

@implementation UIRemoteKeyboardWindowHostedInvertColorsAccessibility

- (BOOL)_accessibilityInvertColorsSupportsDarkWindowInvert
{
  traitCollection = [(UIRemoteKeyboardWindowHostedInvertColorsAccessibility *)self traitCollection];
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
  v9.super_class = UIRemoteKeyboardWindowHostedInvertColorsAccessibility;
  return [(UIRemoteKeyboardWindowHostedInvertColorsAccessibility *)&v9 _accessibilityInvertColorsSupportsDarkWindowInvert];
}

@end