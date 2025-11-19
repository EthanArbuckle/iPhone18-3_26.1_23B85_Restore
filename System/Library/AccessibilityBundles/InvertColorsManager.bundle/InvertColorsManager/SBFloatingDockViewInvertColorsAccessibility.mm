@interface SBFloatingDockViewInvertColorsAccessibility
- (void)_accessibilityLoadInvertColors;
- (void)layoutSubviews;
@end

@implementation SBFloatingDockViewInvertColorsAccessibility

- (void)_accessibilityLoadInvertColors
{
  if (_AXSInvertColorsEnabledGlobalCached())
  {
    v3 = [(SBFloatingDockViewInvertColorsAccessibility *)self safeUIViewForKey:@"mainPlatterView"];
    v4 = [v3 safeUIViewForKey:@"backgroundView"];
    objc_opt_class();
    v5 = [v4 safeValueForKey:@"_materialLayer"];
    v6 = __UIAccessibilityCastAsClass();

    if (v6)
    {
      if (-[SBFloatingDockViewInvertColorsAccessibility _accessibilityAppliesInvertColors](self, "_accessibilityAppliesInvertColors") && ([v4 window], v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "traitCollection"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "userInterfaceStyle"), v8, v7, v9 == &dword_0 + 1))
      {
        if (([v4 accessibilityInvertColorsIsolatedTree] & 1) == 0)
        {
          [v4 setAccessibilityInvertColorsIsolatedTree:1];
          [AXInvertColorsAppHelper toggleInvertColors:v6 moveFilterToFront:1];
        }
      }

      else
      {
        [v4 setAccessibilityInvertColorsIsolatedTree:0];
        [AXInvertColorsAppHelper unapplyInvertFilterToLayer:v6];
      }
    }
  }
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = SBFloatingDockViewInvertColorsAccessibility;
  [(SBFloatingDockViewInvertColorsAccessibility *)&v3 layoutSubviews];
  [(SBFloatingDockViewInvertColorsAccessibility *)self _accessibilityLoadInvertColors];
}

@end