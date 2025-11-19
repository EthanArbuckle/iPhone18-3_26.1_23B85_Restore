@interface HRAtrialFibrillationIntroViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)setUpUI;
@end

@implementation HRAtrialFibrillationIntroViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"HRAtrialFibrillationIntroViewController" hasInstanceMethod:@"titleLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"HRAtrialFibrillationIntroViewController" hasInstanceMethod:@"setUpUI" withFullSignature:{"v", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v6.receiver = self;
  v6.super_class = HRAtrialFibrillationIntroViewControllerAccessibility;
  [(HRAtrialFibrillationIntroViewControllerAccessibility *)&v6 _accessibilityLoadAccessibilityInformation];
  objc_opt_class();
  v3 = [(HRAtrialFibrillationIntroViewControllerAccessibility *)self safeValueForKey:@"titleLabel"];
  v4 = __UIAccessibilityCastAsClass();

  v5 = [v4 accessibilityTraits];
  [v4 setAccessibilityTraits:*MEMORY[0x29EDC7F80] | v5];
}

- (void)setUpUI
{
  v3.receiver = self;
  v3.super_class = HRAtrialFibrillationIntroViewControllerAccessibility;
  [(HRAtrialFibrillationIntroViewControllerAccessibility *)&v3 setUpUI];
  [(HRAtrialFibrillationIntroViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end