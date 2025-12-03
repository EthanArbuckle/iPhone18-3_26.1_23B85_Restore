@interface SBNotificationCenterControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_cleanupAfterTransition:(BOOL)transition;
- (void)_handleShowNotificationCenterGesture:(id)gesture;
- (void)dismissAnimated:(BOOL)animated fromCurrentState:(BOOL)state withStepper:(id)stepper completion:(id)completion;
@end

@implementation SBNotificationCenterControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SBNotificationCenterController" hasInstanceMethod:@"dismissAnimated: fromCurrentState: withStepper: completion:" withFullSignature:{"v", "B", "B", "@?", "@?", 0}];
  [validationsCopy validateClass:@"SBNotificationCenterController" hasInstanceMethod:@"_handleShowNotificationCenterGesture:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"SBNotificationCenterController" hasClassMethod:@"sharedInstance" withFullSignature:{"@", 0}];
}

- (void)dismissAnimated:(BOOL)animated fromCurrentState:(BOOL)state withStepper:(id)stepper completion:(id)completion
{
  v6.receiver = self;
  v6.super_class = SBNotificationCenterControllerAccessibility;
  [(SBNotificationCenterControllerAccessibility *)&v6 dismissAnimated:animated fromCurrentState:state withStepper:stepper completion:completion];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7F10], 0);
}

- (void)_cleanupAfterTransition:(BOOL)transition
{
  v3.receiver = self;
  v3.super_class = SBNotificationCenterControllerAccessibility;
  [(SBNotificationCenterControllerAccessibility *)&v3 _cleanupAfterTransition:transition];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7F10], 0);
}

- (void)_handleShowNotificationCenterGesture:(id)gesture
{
  v6.receiver = self;
  v6.super_class = SBNotificationCenterControllerAccessibility;
  gestureCopy = gesture;
  [(SBNotificationCenterControllerAccessibility *)&v6 _handleShowNotificationCenterGesture:gestureCopy];
  state = [gestureCopy state];

  [(SBNotificationCenterControllerAccessibility *)self _accessibilitySetNotificationGestureInProgress:state == 1];
}

@end