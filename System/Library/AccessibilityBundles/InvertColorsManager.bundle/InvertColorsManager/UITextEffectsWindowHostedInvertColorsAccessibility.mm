@interface UITextEffectsWindowHostedInvertColorsAccessibility
- (BOOL)_accessibilityInvertColorsSupportsDarkWindowInvert;
@end

@implementation UITextEffectsWindowHostedInvertColorsAccessibility

- (BOOL)_accessibilityInvertColorsSupportsDarkWindowInvert
{
  v3 = [(UITextEffectsWindowHostedInvertColorsAccessibility *)self traitCollection];
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
  v9.super_class = UITextEffectsWindowHostedInvertColorsAccessibility;
  return [(UITextEffectsWindowHostedInvertColorsAccessibility *)&v9 _accessibilityInvertColorsSupportsDarkWindowInvert];
}

@end