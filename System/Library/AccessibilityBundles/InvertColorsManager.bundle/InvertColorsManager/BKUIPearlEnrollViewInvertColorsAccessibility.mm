@interface BKUIPearlEnrollViewInvertColorsAccessibility
- (void)_accessibilityLoadInvertColors;
- (void)setBackgroundColor:(id)color;
@end

@implementation BKUIPearlEnrollViewInvertColorsAccessibility

- (void)_accessibilityLoadInvertColors
{
  backgroundColor = [(BKUIPearlEnrollViewInvertColorsAccessibility *)self backgroundColor];
  if (backgroundColor)
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

- (void)setBackgroundColor:(id)color
{
  v4.receiver = self;
  v4.super_class = BKUIPearlEnrollViewInvertColorsAccessibility;
  [(BKUIPearlEnrollViewInvertColorsAccessibility *)&v4 setBackgroundColor:color];
  [(BKUIPearlEnrollViewInvertColorsAccessibility *)self _accessibilityLoadInvertColors];
}

@end