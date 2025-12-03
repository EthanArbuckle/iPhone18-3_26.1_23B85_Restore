@interface PUCompactAdjustmentsModeBarAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation PUCompactAdjustmentsModeBarAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PUCompactAdjustmentsModeBar" hasInstanceVariable:@"_titleLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"PUCompactAdjustmentsModeBar" hasInstanceMethod:@"_updateTitleViewAnimated:" withFullSignature:{"v", "B", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v5.receiver = self;
  v5.super_class = PUCompactAdjustmentsModeBarAccessibility;
  [(PUCompactAdjustmentsModeBarAccessibility *)&v5 _accessibilityLoadAccessibilityInformation];
  objc_opt_class();
  v3 = [(PUCompactAdjustmentsModeBarAccessibility *)self safeValueForKey:@"_titleLabel"];
  v4 = __UIAccessibilityCastAsClass();

  [v4 setIsAccessibilityElement:0];
}

@end