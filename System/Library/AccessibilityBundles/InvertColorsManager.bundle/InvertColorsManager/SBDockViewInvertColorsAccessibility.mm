@interface SBDockViewInvertColorsAccessibility
- (BOOL)_accessibilityAppliesInvertColors;
- (void)_accessibilityLoadInvertColors;
- (void)layoutSubviews;
@end

@implementation SBDockViewInvertColorsAccessibility

- (BOOL)_accessibilityAppliesInvertColors
{
  v2 = _AXSInvertColorsEnabled();
  if (v2)
  {
    LOBYTE(v2) = _AXSInvertColorsEnabledGlobalCached() == 0;
  }

  return v2;
}

- (void)_accessibilityLoadInvertColors
{
  if (!_AXSInvertColorsEnabledGlobalCached())
  {
    v3 = [(SBDockViewInvertColorsAccessibility *)self safeUIViewForKey:@"_backgroundView"];
    objc_opt_class();
    v4 = [v3 safeValueForKey:@"_materialLayer"];
    v5 = __UIAccessibilityCastAsClass();

    if (v5)
    {
      if (-[SBDockViewInvertColorsAccessibility _accessibilityAppliesInvertColors](self, "_accessibilityAppliesInvertColors") && ([v3 window], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "traitCollection"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "userInterfaceStyle"), v7, v6, v8 == &dword_0 + 1))
      {
        if (([v3 accessibilityInvertColorsIsolatedTree] & 1) == 0)
        {
          [v3 setAccessibilityInvertColorsIsolatedTree:1];
          [AXInvertColorsAppHelper toggleInvertColors:v5 moveFilterToFront:1];
        }
      }

      else
      {
        [v3 setAccessibilityInvertColorsIsolatedTree:0];
        [AXInvertColorsAppHelper unapplyInvertFilterToLayer:v5];
      }
    }
  }
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = SBDockViewInvertColorsAccessibility;
  [(SBDockViewInvertColorsAccessibility *)&v3 layoutSubviews];
  [(SBDockViewInvertColorsAccessibility *)self _accessibilityLoadInvertColors];
}

@end