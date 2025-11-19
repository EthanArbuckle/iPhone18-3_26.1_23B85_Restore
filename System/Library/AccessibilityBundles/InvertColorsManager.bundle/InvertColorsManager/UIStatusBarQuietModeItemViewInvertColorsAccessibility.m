@interface UIStatusBarQuietModeItemViewInvertColorsAccessibility
- (UIStatusBarQuietModeItemViewInvertColorsAccessibility)initWithFrame:(CGRect)a3;
- (void)_accessibilityLoadInvertColors;
- (void)setAlpha:(double)a3;
@end

@implementation UIStatusBarQuietModeItemViewInvertColorsAccessibility

- (UIStatusBarQuietModeItemViewInvertColorsAccessibility)initWithFrame:(CGRect)a3
{
  v5.receiver = self;
  v5.super_class = UIStatusBarQuietModeItemViewInvertColorsAccessibility;
  v3 = [(UIStatusBarQuietModeItemViewInvertColorsAccessibility *)&v5 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [(UIStatusBarQuietModeItemViewInvertColorsAccessibility *)v3 _accessibilityLoadInvertColors];

  return v3;
}

- (void)setAlpha:(double)a3
{
  if (UIAccessibilityIsInvertColorsEnabled())
  {
    if (byte_83521)
    {
      v7.receiver = self;
      v7.super_class = UIStatusBarQuietModeItemViewInvertColorsAccessibility;
      [(UIStatusBarQuietModeItemViewInvertColorsAccessibility *)&v7 setAlpha:a3];
    }

    else
    {
      [(UIStatusBarQuietModeItemViewInvertColorsAccessibility *)self alpha];
      v5 = [NSNumber numberWithDouble:?];
      [(UIStatusBarQuietModeItemViewInvertColorsAccessibility *)self _accessibilitySetRetainedValue:v5 forKey:@"InvertColorAlpha"];
    }
  }

  else
  {
    v6.receiver = self;
    v6.super_class = UIStatusBarQuietModeItemViewInvertColorsAccessibility;
    [(UIStatusBarQuietModeItemViewInvertColorsAccessibility *)&v6 setAlpha:a3];
  }
}

- (void)_accessibilityLoadInvertColors
{
  IsInvertColorsEnabled = UIAccessibilityIsInvertColorsEnabled();
  v4 = [(UIStatusBarQuietModeItemViewInvertColorsAccessibility *)self _accessibilityValueForKey:@"InvertColorAlpha"];
  if (IsInvertColorsEnabled)
  {
    v6 = v4;

    if (!v6)
    {
      [(UIStatusBarQuietModeItemViewInvertColorsAccessibility *)self alpha];
      v5 = [NSNumber numberWithDouble:?];
      [(UIStatusBarQuietModeItemViewInvertColorsAccessibility *)self _accessibilitySetRetainedValue:v5 forKey:@"InvertColorAlpha"];
    }

    byte_83521 = 1;
    [(UIStatusBarQuietModeItemViewInvertColorsAccessibility *)self setAlpha:1.0];
    byte_83521 = 0;
  }

  else
  {
    if (v4)
    {
      v7 = v4;
      [v4 doubleValue];
      byte_83521 = 1;
      [(UIStatusBarQuietModeItemViewInvertColorsAccessibility *)self setAlpha:?];
      byte_83521 = 0;
      [(UIStatusBarQuietModeItemViewInvertColorsAccessibility *)self _accessibilityRemoveValueForKey:@"InvertColorAlpha"];
      v4 = v7;
    }
  }
}

@end