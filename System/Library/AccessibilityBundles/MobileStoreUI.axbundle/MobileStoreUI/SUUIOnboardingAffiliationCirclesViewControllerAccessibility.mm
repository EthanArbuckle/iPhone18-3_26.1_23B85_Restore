@interface SUUIOnboardingAffiliationCirclesViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axHandleLayoutChangedTimerFired:(id)a3;
- (void)loadView;
@end

@implementation SUUIOnboardingAffiliationCirclesViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SUUIOnboardingAffiliationCirclesViewController" hasInstanceMethod:@"instructionsView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SUUIOnboardingInstructionsView" hasInstanceMethod:@"explanationLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SUUIOnboardingInstructionsView" hasInstanceMethod:@"titleLabel" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v5.receiver = self;
  v5.super_class = SUUIOnboardingAffiliationCirclesViewControllerAccessibility;
  [(SUUIOnboardingAffiliationCirclesViewControllerAccessibility *)&v5 _accessibilityLoadAccessibilityInformation];
  v3 = [(SUUIOnboardingAffiliationCirclesViewControllerAccessibility *)self safeValueForKey:@"instructionsView"];
  v4 = [v3 safeValueForKey:@"titleLabel"];
  [v4 setAccessibilityTraits:*MEMORY[0x29EDC7F80]];
}

- (void)loadView
{
  v3.receiver = self;
  v3.super_class = SUUIOnboardingAffiliationCirclesViewControllerAccessibility;
  [(SUUIOnboardingAffiliationCirclesViewControllerAccessibility *)&v3 loadView];
  [(SUUIOnboardingAffiliationCirclesViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (void)_axHandleLayoutChangedTimerFired:(id)a3
{
  if (UIAccessibilityIsSwitchControlRunning())
  {
    v3 = *MEMORY[0x29EDC7ED8];

    UIAccessibilityPostNotification(v3, 0);
  }
}

@end