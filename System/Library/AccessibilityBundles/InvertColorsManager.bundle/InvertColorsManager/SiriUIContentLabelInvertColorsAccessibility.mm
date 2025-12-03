@interface SiriUIContentLabelInvertColorsAccessibility
- (BOOL)accessibilityIgnoresInvertColors;
@end

@implementation SiriUIContentLabelInvertColorsAccessibility

- (BOOL)accessibilityIgnoresInvertColors
{
  objc_opt_class();
  v2 = __UIAccessibilityCastAsClass();
  textColor = [v2 textColor];

  AXColorGetLuma();
  LOBYTE(v2) = v4 > 0.5;

  return v2;
}

@end