@interface BKUIPearlEnrollViewInvertColorsAccessibility
- (void)_accessibilityLoadInvertColors;
- (void)setBackgroundColor:(id)a3;
@end

@implementation BKUIPearlEnrollViewInvertColorsAccessibility

- (void)_accessibilityLoadInvertColors
{
  v5 = [(BKUIPearlEnrollViewInvertColorsAccessibility *)self backgroundColor];
  if (v5)
  {
    AXColorGetLuma();
    v4 = v3 < 0.5;
  }

  else
  {
    v4 = 0;
  }

  [(BKUIPearlEnrollViewInvertColorsAccessibility *)self setAccessibilityIgnoresInvertColors:v4];
}

- (void)setBackgroundColor:(id)a3
{
  v4.receiver = self;
  v4.super_class = BKUIPearlEnrollViewInvertColorsAccessibility;
  [(BKUIPearlEnrollViewInvertColorsAccessibility *)&v4 setBackgroundColor:a3];
  [(BKUIPearlEnrollViewInvertColorsAccessibility *)self _accessibilityLoadInvertColors];
}

@end