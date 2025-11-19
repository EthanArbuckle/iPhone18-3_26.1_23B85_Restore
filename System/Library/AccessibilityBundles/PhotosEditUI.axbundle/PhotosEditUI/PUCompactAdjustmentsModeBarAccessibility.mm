@interface PUCompactAdjustmentsModeBarAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation PUCompactAdjustmentsModeBarAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PUCompactAdjustmentsModeBar" hasInstanceVariable:@"_titleLabel" withType:"UILabel"];
  [v3 validateClass:@"PUCompactAdjustmentsModeBar" hasInstanceMethod:@"_updateTitleViewAnimated:" withFullSignature:{"v", "B", 0}];
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