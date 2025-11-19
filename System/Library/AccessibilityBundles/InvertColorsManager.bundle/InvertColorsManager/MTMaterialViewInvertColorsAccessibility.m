@interface MTMaterialViewInvertColorsAccessibility
- (void)_accessibilityLoadInvertColors;
- (void)layoutSubviews;
@end

@implementation MTMaterialViewInvertColorsAccessibility

- (void)_accessibilityLoadInvertColors
{
  v3 = 1;
  [(MTMaterialViewInvertColorsAccessibility *)self _accessibilitySetBoolValue:1 forKey:@"LoadingInvertColors"];
  IsInvertColorsEnabled = UIAccessibilityIsInvertColorsEnabled();
  if (!UIAccessibilityIsReduceTransparencyEnabled())
  {
    v3 = [(MTMaterialViewInvertColorsAccessibility *)self accessibilityMaterialViewMimicsReduceTransparency]& IsInvertColorsEnabled;
  }

  v5 = [(MTMaterialViewInvertColorsAccessibility *)self safeValueForKey:@"_materialLayer"];
  v6 = [v5 safeBoolForKey:@"isReduceTransparencyEnabled"];

  if (v3 != v6)
  {
    LOBYTE(v7) = v3;
    BYTE1(v7) = IsInvertColorsEnabled;
    AXPerformSafeBlock();
    [(MTMaterialViewInvertColorsAccessibility *)self _accessibilitySetBoolValue:0 forKey:@"LoadingInvertColors", _NSConcreteStackBlock, 3221225472, sub_1152C, &unk_44800, self, v7];
  }
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = MTMaterialViewInvertColorsAccessibility;
  [(MTMaterialViewInvertColorsAccessibility *)&v3 layoutSubviews];
  if (([(MTMaterialViewInvertColorsAccessibility *)self _accessibilityBoolValueForKey:@"LoadingInvertColors"]& 1) == 0)
  {
    [(MTMaterialViewInvertColorsAccessibility *)self _accessibilityLoadInvertColors];
  }
}

@end