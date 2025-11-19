@interface HUColorSwatchViewInvertColorsAccessibility
- (void)_accessibilityLoadInvertColors;
- (void)layoutSubviews;
@end

@implementation HUColorSwatchViewInvertColorsAccessibility

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = HUColorSwatchViewInvertColorsAccessibility;
  [(HUColorSwatchViewInvertColorsAccessibility *)&v3 layoutSubviews];
  [(HUColorSwatchViewInvertColorsAccessibility *)self _accessibilityLoadInvertColors];
}

- (void)_accessibilityLoadInvertColors
{
  IsInvertColorsEnabled = UIAccessibilityIsInvertColorsEnabled();
  v5 = [(HUColorSwatchViewInvertColorsAccessibility *)self safeValueForKey:@"circleLayer"];
  v4 = [(HUColorSwatchViewInvertColorsAccessibility *)self safeValueForKey:@"selectedCircleLayer"];
  if (IsInvertColorsEnabled)
  {
    [AXInvertColorsAppHelper applyInvertFilterToLayer:v5];
    [AXInvertColorsAppHelper applyInvertFilterToLayer:v4];
  }

  else
  {
    [AXInvertColorsAppHelper unapplyInvertFilterToLayer:v5];
    [AXInvertColorsAppHelper unapplyInvertFilterToLayer:v4];
  }
}

@end