@interface MediaControlsMaterialViewInvertColorsAccessibility
- (MediaControlsMaterialViewInvertColorsAccessibility)initWithFrame:(CGRect)frame;
- (void)_accessibilityLoadInvertColors;
- (void)_setContinuousCornerRadius:(double)radius;
@end

@implementation MediaControlsMaterialViewInvertColorsAccessibility

- (MediaControlsMaterialViewInvertColorsAccessibility)initWithFrame:(CGRect)frame
{
  v5.receiver = self;
  v5.super_class = MediaControlsMaterialViewInvertColorsAccessibility;
  v3 = [(MediaControlsMaterialViewInvertColorsAccessibility *)&v5 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  [(MediaControlsMaterialViewInvertColorsAccessibility *)v3 _accessibilityLoadInvertColors];

  return v3;
}

- (void)_setContinuousCornerRadius:(double)radius
{
  v6.receiver = self;
  v6.super_class = MediaControlsMaterialViewInvertColorsAccessibility;
  [(MediaControlsMaterialViewInvertColorsAccessibility *)&v6 _setContinuousCornerRadius:?];
  v5 = [AXInvertColorsAppHelper backgroundView:self];
  [v5 _setContinuousCornerRadius:radius];
}

- (void)_accessibilityLoadInvertColors
{
  v3 = [(MediaControlsMaterialViewInvertColorsAccessibility *)self safeUIViewForKey:@"_backgroundView"];
  layer = [v3 layer];

  if (layer)
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