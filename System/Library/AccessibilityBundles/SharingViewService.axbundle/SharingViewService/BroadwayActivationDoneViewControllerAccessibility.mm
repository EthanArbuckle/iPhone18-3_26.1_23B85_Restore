@interface BroadwayActivationDoneViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation BroadwayActivationDoneViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"BroadwayActivationDoneViewController" hasInstanceVariable:@"_titleLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"BroadwayActivationDoneViewController" hasInstanceMethod:@"viewWillAppear:" withFullSignature:{"v", "B", 0}];
}

void __68__BroadwayActivationDoneViewControllerAccessibility_viewWillAppear___block_invoke(uint64_t a1)
{
  v1 = *MEMORY[0x29EDC7ED8];
  v2 = [*(a1 + 32) safeValueForKey:@"_titleLabel"];
  UIAccessibilityPostNotification(v1, v2);
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v5.receiver = self;
  v5.super_class = BroadwayActivationDoneViewControllerAccessibility;
  [(BroadwayActivationDoneViewControllerAccessibility *)&v5 _accessibilityLoadAccessibilityInformation];
  v3 = [(BroadwayActivationDoneViewControllerAccessibility *)self safeValueForKey:@"_cardNameLabel"];
  [v3 setIsAccessibilityElement:0];

  v4 = [(BroadwayActivationDoneViewControllerAccessibility *)self safeValueForKey:@"_titleLabel"];
  [v4 setAccessibilityTraits:*MEMORY[0x29EDC7F80]];
}

@end