@interface AVTAttributeValueViewInvertColorsAccessibility
- (void)_accessibilityLoadInvertColors;
- (void)cleanupAfterTransition;
@end

@implementation AVTAttributeValueViewInvertColorsAccessibility

- (void)_accessibilityLoadInvertColors
{
  objc_opt_class();
  v3 = [(AVTAttributeValueViewInvertColorsAccessibility *)self safeValueForKey:@"imageLayer"];
  v4 = __UIAccessibilityCastAsClass();

  objc_opt_class();
  v5 = [(AVTAttributeValueViewInvertColorsAccessibility *)self safeValueForKey:@"transitionImageLayer"];
  v6 = __UIAccessibilityCastAsClass();

  [AXInvertColorsAppHelper toggleInvertColors:v4];
  [AXInvertColorsAppHelper toggleInvertColors:v6];
}

- (void)cleanupAfterTransition
{
  v3.receiver = self;
  v3.super_class = AVTAttributeValueViewInvertColorsAccessibility;
  [(AVTAttributeValueViewInvertColorsAccessibility *)&v3 cleanupAfterTransition];
  [(AVTAttributeValueViewInvertColorsAccessibility *)self _accessibilityLoadInvertColors];
}

@end