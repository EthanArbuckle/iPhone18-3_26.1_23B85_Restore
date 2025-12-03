@interface ICSSecureWindowInvertColorsAccessibility
- (BOOL)_accessibilityInvertColorsSupportsDarkWindowInvert;
- (void)_accessibilityLoadInvertColors;
@end

@implementation ICSSecureWindowInvertColorsAccessibility

- (void)_accessibilityLoadInvertColors
{
  if (_AXSInvertColorsEnabled() && (-[ICSSecureWindowInvertColorsAccessibility traitCollection](self, "traitCollection"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 userInterfaceStyle], v3, v4 == &dword_0 + 2))
  {
    v6 = [UIColor colorWithRed:0.1 green:0.1 blue:0.1 alpha:1.0];
    v5 = [AXInvertColorsAppHelper insertBackgroundView:self color:?];
  }

  else
  {
    v6 = [(ICSSecureWindowInvertColorsAccessibility *)self safeUIViewForKey:@"view"];
    [AXInvertColorsAppHelper removeBackgroundView:?];
  }
}

- (BOOL)_accessibilityInvertColorsSupportsDarkWindowInvert
{
  traitCollection = [(ICSSecureWindowInvertColorsAccessibility *)self traitCollection];
  v3 = [traitCollection userInterfaceStyle] == &dword_0 + 2;

  return v3;
}

@end