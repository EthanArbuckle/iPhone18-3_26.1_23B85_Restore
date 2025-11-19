@interface AVTRecordViewInvertColorsAccessibility
- (void)_accessibilityLoadInvertColors;
@end

@implementation AVTRecordViewInvertColorsAccessibility

- (void)_accessibilityLoadInvertColors
{
  objc_opt_class();
  v3 = __UIAccessibilityCastAsClass();
  v4 = [v3 backgroundColor];
  v5 = +[UIColor clearColor];

  if (v4 != v5)
  {
    [(AVTRecordViewInvertColorsAccessibility *)self _axSetOriginalColor:v4];
  }

  if (UIAccessibilityIsInvertColorsEnabled())
  {
    v6 = +[UIColor clearColor];
LABEL_7:
    v8 = v6;
    [v3 setBackgroundColor:v6];

    goto LABEL_8;
  }

  v7 = [(AVTRecordViewInvertColorsAccessibility *)self _axGetOriginalColor];

  if (v7)
  {
    v6 = [(AVTRecordViewInvertColorsAccessibility *)self _axGetOriginalColor];
    goto LABEL_7;
  }

LABEL_8:
}

@end