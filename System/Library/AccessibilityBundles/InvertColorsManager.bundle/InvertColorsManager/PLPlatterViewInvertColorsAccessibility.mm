@interface PLPlatterViewInvertColorsAccessibility
- (void)_accessibilityLoadInvertColors;
- (void)layoutSubviews;
@end

@implementation PLPlatterViewInvertColorsAccessibility

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = PLPlatterViewInvertColorsAccessibility;
  [(PLPlatterViewInvertColorsAccessibility *)&v3 layoutSubviews];
  [(PLPlatterViewInvertColorsAccessibility *)self _accessibilityLoadInvertColors];
}

- (void)_accessibilityLoadInvertColors
{
  if ([(PLPlatterViewInvertColorsAccessibility *)self accessibilityIgnoresInvertColors])
  {
    v3 = [(PLPlatterViewInvertColorsAccessibility *)self safeValueForKey:@"backgroundMaterialView"];
    objc_opt_class();
    v4 = [v3 safeValueForKey:@"_materialLayer"];
    v5 = __UIAccessibilityCastAsClass();

    if (v5)
    {
      [AXInvertColorsAppHelper toggleInvertColors:v5 moveFilterToFront:1];
    }
  }
}

@end