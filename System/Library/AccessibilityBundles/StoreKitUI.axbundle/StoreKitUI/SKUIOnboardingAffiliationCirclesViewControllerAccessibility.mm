@interface SKUIOnboardingAffiliationCirclesViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axHandleLayoutChangedTimerFired:(id)fired;
- (void)loadView;
@end

@implementation SKUIOnboardingAffiliationCirclesViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SKUIOnboardingAffiliationCirclesViewController" hasInstanceMethod:@"instructionsView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SKUIOnboardingInstructionsView" hasInstanceMethod:@"explanationLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SKUIOnboardingInstructionsView" hasInstanceMethod:@"titleLabel" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v5.receiver = self;
  v5.super_class = SKUIOnboardingAffiliationCirclesViewControllerAccessibility;
  [(SKUIOnboardingAffiliationCirclesViewControllerAccessibility *)&v5 _accessibilityLoadAccessibilityInformation];
  v3 = [(SKUIOnboardingAffiliationCirclesViewControllerAccessibility *)self safeValueForKey:@"instructionsView"];
  v4 = [v3 safeValueForKey:@"titleLabel"];
  [v4 setAccessibilityTraits:*MEMORY[0x29EDC7F80]];
}

- (void)loadView
{
  v3.receiver = self;
  v3.super_class = SKUIOnboardingAffiliationCirclesViewControllerAccessibility;
  [(SKUIOnboardingAffiliationCirclesViewControllerAccessibility *)&v3 loadView];
  [(SKUIOnboardingAffiliationCirclesViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (void)_axHandleLayoutChangedTimerFired:(id)fired
{
  if (UIAccessibilityIsSwitchControlRunning())
  {
    v3 = *MEMORY[0x29EDC7ED8];

    UIAccessibilityPostNotification(v3, 0);
  }
}

@end