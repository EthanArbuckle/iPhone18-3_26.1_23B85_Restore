@interface GutterizedEventTrailingViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
@end

@implementation GutterizedEventTrailingViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"UpNext.VibrantLabel"];
  [validationsCopy validateClass:@"UpNext.GutterizedEventTrailingView" isKindOfClass:@"UIView"];
}

- (id)accessibilityLabel
{
  objc_opt_class();
  v2 = __UIAccessibilityCastAsClass();
  v3 = accessibilityLabelFromSortedLabelsInsideView(v2);

  return v3;
}

@end