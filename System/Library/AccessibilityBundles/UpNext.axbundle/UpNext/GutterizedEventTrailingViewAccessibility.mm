@interface GutterizedEventTrailingViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
@end

@implementation GutterizedEventTrailingViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"UpNext.VibrantLabel"];
  [v3 validateClass:@"UpNext.GutterizedEventTrailingView" isKindOfClass:@"UIView"];
}

- (id)accessibilityLabel
{
  objc_opt_class();
  v2 = __UIAccessibilityCastAsClass();
  v3 = accessibilityLabelFromSortedLabelsInsideView(v2);

  return v3;
}

@end