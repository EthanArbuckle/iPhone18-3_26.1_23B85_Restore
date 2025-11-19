@interface UIRemoteKeyboardWindowInvertColorsAccessibility
- (BOOL)_accessibilityInvertColorsIsDarkWindow;
- (BOOL)_accessibilityInvertColorsSupportsDarkWindowInvert;
@end

@implementation UIRemoteKeyboardWindowInvertColorsAccessibility

- (BOOL)_accessibilityInvertColorsIsDarkWindow
{
  v2 = +[UIKeyboardImpl activeInstance];
  v3 = [v2 safeValueForKey:@"_inheritedRenderConfig"];
  v4 = [v3 safeBoolForKey:@"lightKeyboard"];

  return v4 ^ 1;
}

- (BOOL)_accessibilityInvertColorsSupportsDarkWindowInvert
{
  if (AXProcessIsSpotlight() && (AXInvertColorsIsSystemWideDarkModeEnabled() & 1) != 0)
  {
    return 0;
  }

  v4.receiver = self;
  v4.super_class = UIRemoteKeyboardWindowInvertColorsAccessibility;
  return [(UIRemoteKeyboardWindowInvertColorsAccessibility *)&v4 _accessibilityInvertColorsSupportsDarkWindowInvert];
}

@end