@interface MediaControlsMaterialViewInvertColorsAccessibility
- (MediaControlsMaterialViewInvertColorsAccessibility)initWithFrame:(CGRect)a3;
- (void)_accessibilityLoadInvertColors;
- (void)_setContinuousCornerRadius:(double)a3;
@end

@implementation MediaControlsMaterialViewInvertColorsAccessibility

- (MediaControlsMaterialViewInvertColorsAccessibility)initWithFrame:(CGRect)a3
{
  v5.receiver = self;
  v5.super_class = MediaControlsMaterialViewInvertColorsAccessibility;
  v3 = [(MediaControlsMaterialViewInvertColorsAccessibility *)&v5 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [(MediaControlsMaterialViewInvertColorsAccessibility *)v3 _accessibilityLoadInvertColors];

  return v3;
}

- (void)_setContinuousCornerRadius:(double)a3
{
  v6.receiver = self;
  v6.super_class = MediaControlsMaterialViewInvertColorsAccessibility;
  [(MediaControlsMaterialViewInvertColorsAccessibility *)&v6 _setContinuousCornerRadius:?];
  v5 = [AXInvertColorsAppHelper backgroundView:self];
  [v5 _setContinuousCornerRadius:a3];
}

- (void)_accessibilityLoadInvertColors
{
  v3 = [(MediaControlsMaterialViewInvertColorsAccessibility *)self safeUIViewForKey:@"_backgroundView"];
  v6 = [v3 layer];

  if (v6)
  {
    if (UIAccessibilityIsInvertColorsEnabled())
    {
      v4 = [AXInvertColorsAppHelper insertBackgroundView:self alpha:0.75];
      v5 = [(MediaControlsMaterialViewInvertColorsAccessibility *)self safeUIViewForKey:@"_backgroundView"];
      [v5 _continuousCornerRadius];
      [v4 _setContinuousCornerRadius:?];
    }

    else
    {
      [AXInvertColorsAppHelper removeBackgroundView:self];
    }
  }
}

@end