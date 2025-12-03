@interface UIClassicWindowInvertColorsAccessibility
- (UIClassicWindowInvertColorsAccessibility)initWithFrame:(CGRect)frame;
- (void)_accessibilityLoadInvertColors;
@end

@implementation UIClassicWindowInvertColorsAccessibility

- (void)_accessibilityLoadInvertColors
{
  IsInvertColorsEnabled = UIAccessibilityIsInvertColorsEnabled();
  v4 = [(UIClassicWindowInvertColorsAccessibility *)self _accessibilityValueForKey:@"backgroundColor"];
  v5 = v4;
  if (IsInvertColorsEnabled)
  {

    if (!v5)
    {
      backgroundColor = [(UIClassicWindowInvertColorsAccessibility *)self backgroundColor];
      [(UIClassicWindowInvertColorsAccessibility *)self _accessibilitySetRetainedValue:backgroundColor forKey:@"backgroundColor"];
    }

    v7 = +[UIColor whiteColor];
    [(UIClassicWindowInvertColorsAccessibility *)self setBackgroundColor:v7];
  }

  else
  {
    [(UIClassicWindowInvertColorsAccessibility *)self setBackgroundColor:v4];

    [(UIClassicWindowInvertColorsAccessibility *)self _accessibilityRemoveValueForKey:@"backgroundColor"];
  }
}

- (UIClassicWindowInvertColorsAccessibility)initWithFrame:(CGRect)frame
{
  v5.receiver = self;
  v5.super_class = UIClassicWindowInvertColorsAccessibility;
  v3 = [(UIClassicWindowInvertColorsAccessibility *)&v5 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  [(UIClassicWindowInvertColorsAccessibility *)v3 _accessibilityLoadInvertColors];

  return v3;
}

@end