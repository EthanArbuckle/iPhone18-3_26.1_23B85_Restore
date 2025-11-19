@interface _UIBatteryViewInvertColorsAccessibility
- (BOOL)_axIsBoltShowing;
- (BOOL)accessibilityIgnoresInvertColors;
- (void)_accessibilityLoadInvertColors;
- (void)layoutSubviews;
@end

@implementation _UIBatteryViewInvertColorsAccessibility

- (void)_accessibilityLoadInvertColors
{
  if ((AXProcessIsSpringBoard() & 1) == 0)
  {
    if ([(_UIBatteryViewInvertColorsAccessibility *)self _axIsBoltShowing])
    {
      objc_opt_class();
      v3 = [(_UIBatteryViewInvertColorsAccessibility *)self safeValueForKey:@"_boltLayer"];
      v4 = __UIAccessibilityCastAsClass();

      [AXInvertColorsAppHelper toggleInvertColors:v4];
    }
  }
}

- (BOOL)_axIsBoltShowing
{
  objc_opt_class();
  v3 = [(_UIBatteryViewInvertColorsAccessibility *)self safeValueForKey:@"_boltLayer"];
  v4 = __UIAccessibilityCastAsClass();

  [v4 opacity];
  v6 = v5 == 1.0;

  return v6;
}

- (BOOL)accessibilityIgnoresInvertColors
{
  if (AXProcessIsSpringBoard())
  {
    return 0;
  }

  if ([(_UIBatteryViewInvertColorsAccessibility *)self _axIsBoltShowing])
  {
    return 1;
  }

  v4.receiver = self;
  v4.super_class = _UIBatteryViewInvertColorsAccessibility;
  return [(_UIBatteryViewInvertColorsAccessibility *)&v4 accessibilityIgnoresInvertColors];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = _UIBatteryViewInvertColorsAccessibility;
  [(_UIBatteryViewInvertColorsAccessibility *)&v3 layoutSubviews];
  [(_UIBatteryViewInvertColorsAccessibility *)self _accessibilityLoadInvertColors];
}

@end