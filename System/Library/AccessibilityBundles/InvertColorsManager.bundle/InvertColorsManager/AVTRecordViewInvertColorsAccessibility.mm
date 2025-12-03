@interface AVTRecordViewInvertColorsAccessibility
- (void)_accessibilityLoadInvertColors;
@end

@implementation AVTRecordViewInvertColorsAccessibility

- (void)_accessibilityLoadInvertColors
{
  objc_opt_class();
  v3 = __UIAccessibilityCastAsClass();
  backgroundColor = [v3 backgroundColor];
  v5 = +[UIColor clearColor];

  if (backgroundColor != v5)
  {
    [(AVTRecordViewInvertColorsAccessibility *)self _axSetOriginalColor:backgroundColor];
  }

  if (UIAccessibilityIsInvertColorsEnabled())
  {
    _axGetOriginalColor2 = +[UIColor clearColor];
LABEL_7:
    v8 = _axGetOriginalColor2;
    [v3 setBackgroundColor:_axGetOriginalColor2];

    goto LABEL_8;
  }

  _axGetOriginalColor = [(AVTRecordViewInvertColorsAccessibility *)self _axGetOriginalColor];

  if (_axGetOriginalColor)
  {
    _axGetOriginalColor2 = [(AVTRecordViewInvertColorsAccessibility *)self _axGetOriginalColor];
    goto LABEL_7;
  }

LABEL_8:
}

@end