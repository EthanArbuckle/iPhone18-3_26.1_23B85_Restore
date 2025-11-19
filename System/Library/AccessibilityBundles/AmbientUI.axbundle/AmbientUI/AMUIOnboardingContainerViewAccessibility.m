@interface AMUIOnboardingContainerViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)onboardingViewRequestsDismissal:(id)a3;
@end

@implementation AMUIOnboardingContainerViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"AMUIInfographViewController" hasInstanceMethod:@"delegate" withFullSignature:{"@", 0}];
  [v3 validateClass:@"AMUIDataLayerViewController" conformsToProtocol:@"AMUIInfographViewControllerDelegate"];
  [v3 validateClass:@"AMUIDataLayerViewController" hasInstanceMethod:@"createUnlockRequestForViewController:" withFullSignature:{"@", "@", 0}];
  [v3 validateClass:@"AMUIDataLayerViewController" hasInstanceMethod:@"requestUnlockForViewController:withRequest:completion:" withFullSignature:{"v", "@", "@", "@?", 0}];
  [v3 validateClass:@"AMUIConcreteUnlockRequest" conformsToProtocol:@"AMUnlockRequest"];
  [v3 validateClass:@"AMUIConcreteUnlockRequest" hasProperty:@"unlockDestination" withType:"@"];
  [v3 validateClass:@"AMUIOnboardingContainerView" hasInstanceMethod:@"onboardingViewRequestsDismissal:" withFullSignature:{"v", "@", 0}];
}

- (void)onboardingViewRequestsDismissal:(id)a3
{
  v3.receiver = self;
  v3.super_class = AMUIOnboardingContainerViewAccessibility;
  [(AMUIOnboardingContainerViewAccessibility *)&v3 onboardingViewRequestsDismissal:a3];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
}

@end