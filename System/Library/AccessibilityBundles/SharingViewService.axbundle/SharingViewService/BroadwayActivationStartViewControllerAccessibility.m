@interface BroadwayActivationStartViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation BroadwayActivationStartViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"BroadwayActivationStartViewController" hasInstanceMethod:@"viewWillAppear:" withFullSignature:{"v", "B", 0}];
  [v3 validateClass:@"BroadwayActivationStartViewController" hasInstanceVariable:@"_dismissButton" withType:"UIButton"];
  [v3 validateClass:@"BroadwayActivationStartViewController" hasInstanceVariable:@"_titleLabel" withType:"UILabel"];
}

void __69__BroadwayActivationStartViewControllerAccessibility_viewWillAppear___block_invoke(uint64_t a1)
{
  v1 = *MEMORY[0x29EDC7ED8];
  v2 = [*(a1 + 32) safeValueForKey:@"_titleLabel"];
  UIAccessibilityPostNotification(v1, v2);
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v7.receiver = self;
  v7.super_class = BroadwayActivationStartViewControllerAccessibility;
  [(BroadwayActivationStartViewControllerAccessibility *)&v7 _accessibilityLoadAccessibilityInformation];
  v3 = [(BroadwayActivationStartViewControllerAccessibility *)self safeValueForKey:@"_dismissButton"];
  v4 = accessibilityLocalizedString(@"dismiss.button");
  [v3 setAccessibilityLabel:v4];

  v5 = [(BroadwayActivationStartViewControllerAccessibility *)self safeValueForKey:@"_dismissButton"];
  [v5 _accessibilitySetUserTestingIsCancelButton:1];

  v6 = [(BroadwayActivationStartViewControllerAccessibility *)self safeValueForKey:@"_titleLabel"];
  [v6 setAccessibilityTraits:*MEMORY[0x29EDC7F80]];
}

@end