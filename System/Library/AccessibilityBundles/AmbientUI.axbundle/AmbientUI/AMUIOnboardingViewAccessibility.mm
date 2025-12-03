@interface AMUIOnboardingViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)layoutSubviews;
@end

@implementation AMUIOnboardingViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"AMUIOnboardingView" isKindOfClass:@"UIView"];
  [validationsCopy validateClass:@"AMUIOnboardingView" hasInstanceVariable:@"_continueButton" withType:"UIButton"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v5.receiver = self;
  v5.super_class = AMUIOnboardingViewAccessibility;
  [(AMUIOnboardingViewAccessibility *)&v5 _accessibilityLoadAccessibilityInformation];
  v3 = [(AMUIOnboardingViewAccessibility *)self safeValueForKey:@"_continueButton"];
  v4 = accessibilityLocalizedString(@"continue.button");
  [v3 setAccessibilityLabel:v4];

  [v3 setAccessibilityTraits:*MEMORY[0x29EDC7F70]];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = AMUIOnboardingViewAccessibility;
  [(AMUIOnboardingViewAccessibility *)&v3 layoutSubviews];
  [(AMUIOnboardingViewAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end