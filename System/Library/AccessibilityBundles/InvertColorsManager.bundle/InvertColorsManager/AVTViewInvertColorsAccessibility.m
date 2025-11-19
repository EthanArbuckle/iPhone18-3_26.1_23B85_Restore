@interface AVTViewInvertColorsAccessibility
- (void)_accessibilityLoadInvertColors;
- (void)layoutSubviews;
@end

@implementation AVTViewInvertColorsAccessibility

- (void)_accessibilityLoadInvertColors
{
  objc_opt_class();
  v2 = __UIAccessibilityCastAsClass();
  if (UIAccessibilityIsInvertColorsEnabled())
  {
    +[UIColor blackColor];
  }

  else
  {
    +[UIColor whiteColor];
  }
  v3 = ;
  [v2 setBackgroundColor:v3];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = AVTViewInvertColorsAccessibility;
  [(AVTViewInvertColorsAccessibility *)&v3 layoutSubviews];
  [(AVTViewInvertColorsAccessibility *)self _accessibilityLoadInvertColors];
}

@end