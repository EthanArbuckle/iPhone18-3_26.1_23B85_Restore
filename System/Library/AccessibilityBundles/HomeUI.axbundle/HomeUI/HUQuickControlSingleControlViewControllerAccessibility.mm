@interface HUQuickControlSingleControlViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)hideAuxiliaryViewForInteractionCoordinator:(id)coordinator;
- (void)interactionCoordinator:(id)coordinator showAuxiliaryView:(id)view;
@end

@implementation HUQuickControlSingleControlViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"HUQuickControlSingleControlViewController" hasInstanceMethod:@"interactionCoordinator:showAuxiliaryView:" withFullSignature:{"v", "@", "@", 0}];
  [validationsCopy validateClass:@"HUQuickControlSingleControlViewController" hasInstanceMethod:@"hideAuxiliaryViewForInteractionCoordinator:" withFullSignature:{"v", "@", 0}];
}

- (void)interactionCoordinator:(id)coordinator showAuxiliaryView:(id)view
{
  v5.receiver = self;
  v5.super_class = HUQuickControlSingleControlViewControllerAccessibility;
  [(HUQuickControlSingleControlViewControllerAccessibility *)&v5 interactionCoordinator:coordinator showAuxiliaryView:view];
  if (objc_opt_respondsToSelector())
  {
    [(HUQuickControlSingleControlViewControllerAccessibility *)self _accessibilityMoveToActiveControl];
  }
}

- (void)hideAuxiliaryViewForInteractionCoordinator:(id)coordinator
{
  v4.receiver = self;
  v4.super_class = HUQuickControlSingleControlViewControllerAccessibility;
  [(HUQuickControlSingleControlViewControllerAccessibility *)&v4 hideAuxiliaryViewForInteractionCoordinator:coordinator];
  if (objc_opt_respondsToSelector())
  {
    [(HUQuickControlSingleControlViewControllerAccessibility *)self _accessibilityMoveToActiveControl];
  }
}

@end