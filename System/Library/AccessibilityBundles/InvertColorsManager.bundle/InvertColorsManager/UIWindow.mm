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
    _accessibilityInvertColorsActsAsDarkWindowBlock = [(UIWindow *)self _accessibilityInvertColorsActsAsDarkWindowBlock];

    if (!_accessibilityInvertColorsActsAsDarkWindowBlock)
    {
      traitCollection = [(UIWindow *)self traitCollection];
      v6 = [traitCollection userInterfaceStyle] == &dword_0 + 2;

      return v6;
    }
  }

  return [(UIWindow *)self _accessibilityInvertColorsActsAsDarkWindow];
}

@end