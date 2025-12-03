@interface AMUIOnboardingContainerViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)onboardingViewRequestsDismissal:(id)dismissal;
@end

@implementation AMUIOnboardingContainerViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"AMUIInfographViewController" hasInstanceMethod:@"delegate" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"AMUIDataLayerViewController" conformsToProtocol:@"AMUIInfographViewControllerDelegate"];
  [validationsCopy validateClass:@"AMUIDataLayerViewController" hasInstanceMethod:@"createUnlockRequestForViewController:" withFullSignature:{"@", "@", 0}];
  [validationsCopy validateClass:@"AMUIDataLayerViewController" hasInstanceMethod:@"requestUnlockForViewController:withRequest:completion:" withFullSignature:{"v", "@", "@", "@?", 0}];
  [validationsCopy validateClass:@"AMUIConcreteUnlockRequest" conformsToProtocol:@"AMUnlockRequest"];
  [validationsCopy validateClass:@"AMUIConcreteUnlockRequest" hasProperty:@"unlockDestination" withType:"@"];
  [validationsCopy validateClass:@"AMUIOnboardingContainerView" hasInstanceMethod:@"onboardingViewRequestsDismissal:" withFullSignature:{"v", "@", 0}];
}

- (void)onboardingViewRequestsDismissal:(id)dismissal
{
  v3.receiver = self;
  v3.super_class = AMUIOnboardingContainerViewAccessibility;
  [(AMUIOnboardingContainerViewAccessibility *)&v3 onboardingViewRequestsDismissal:dismissal];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
}

@end