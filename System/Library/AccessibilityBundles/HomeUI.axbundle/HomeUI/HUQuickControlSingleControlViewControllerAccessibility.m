@interface HUQuickControlSingleControlViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)hideAuxiliaryViewForInteractionCoordinator:(id)a3;
- (void)interactionCoordinator:(id)a3 showAuxiliaryView:(id)a4;
@end

@implementation HUQuickControlSingleControlViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"HUQuickControlSingleControlViewController" hasInstanceMethod:@"interactionCoordinator:showAuxiliaryView:" withFullSignature:{"v", "@", "@", 0}];
  [v3 validateClass:@"HUQuickControlSingleControlViewController" hasInstanceMethod:@"hideAuxiliaryViewForInteractionCoordinator:" withFullSignature:{"v", "@", 0}];
}

- (void)interactionCoordinator:(id)a3 showAuxiliaryView:(id)a4
{
  v5.receiver = self;
  v5.super_class = HUQuickControlSingleControlViewControllerAccessibility;
  [(HUQuickControlSingleControlViewControllerAccessibility *)&v5 interactionCoordinator:a3 showAuxiliaryView:a4];
  if (objc_opt_respondsToSelector())
  {
    [(HUQuickControlSingleControlViewControllerAccessibility *)self _accessibilityMoveToActiveControl];
  }
}

- (void)hideAuxiliaryViewForInteractionCoordinator:(id)a3
{
  v4.receiver = self;
  v4.super_class = HUQuickControlSingleControlViewControllerAccessibility;
  [(HUQuickControlSingleControlViewControllerAccessibility *)&v4 hideAuxiliaryViewForInteractionCoordinator:a3];
  if (objc_opt_respondsToSelector())
  {
    [(HUQuickControlSingleControlViewControllerAccessibility *)self _accessibilityMoveToActiveControl];
  }
}

@end