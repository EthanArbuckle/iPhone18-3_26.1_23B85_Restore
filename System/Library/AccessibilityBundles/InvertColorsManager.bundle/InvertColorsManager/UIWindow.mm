@interface UIWindow
- (BOOL)_accessibilityInvertColorsIsDarkWindow;
@end

@implementation UIWindow

- (BOOL)_accessibilityInvertColorsIsDarkWindow
{
  v3 = [(UIWindow *)self _accessibilityValueForKey:@"_accessibilityInvertColorsActsAsDarkWindow"];
  if (v3)
  {
  }

  else
  {
    v4 = [(UIWindow *)self _accessibilityInvertColorsActsAsDarkWindowBlock];

    if (!v4)
    {
      v5 = [(UIWindow *)self traitCollection];
      v6 = [v5 userInterfaceStyle] == &dword_0 + 2;

      return v6;
    }
  }

  return [(UIWindow *)self _accessibilityInvertColorsActsAsDarkWindow];
}

@end