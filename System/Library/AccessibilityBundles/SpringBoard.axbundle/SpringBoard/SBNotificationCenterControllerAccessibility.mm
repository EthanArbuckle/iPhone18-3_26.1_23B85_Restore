@interface SBNotificationCenterControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_cleanupAfterTransition:(BOOL)a3;
- (void)_handleShowNotificationCenterGesture:(id)a3;
- (void)dismissAnimated:(BOOL)a3 fromCurrentState:(BOOL)a4 withStepper:(id)a5 completion:(id)a6;
@end

@implementation SBNotificationCenterControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SBNotificationCenterController" hasInstanceMethod:@"dismissAnimated: fromCurrentState: withStepper: completion:" withFullSignature:{"v", "B", "B", "@?", "@?", 0}];
  [v3 validateClass:@"SBNotificationCenterController" hasInstanceMethod:@"_handleShowNotificationCenterGesture:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"SBNotificationCenterController" hasClassMethod:@"sharedInstance" withFullSignature:{"@", 0}];
}

- (void)dismissAnimated:(BOOL)a3 fromCurrentState:(BOOL)a4 withStepper:(id)a5 completion:(id)a6
{
  v6.receiver = self;
  v6.super_class = SBNotificationCenterControllerAccessibility;
  [(SBNotificationCenterControllerAccessibility *)&v6 dismissAnimated:a3 fromCurrentState:a4 withStepper:a5 completion:a6];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7F10], 0);
}

- (void)_cleanupAfterTransition:(BOOL)a3
{
  v3.receiver = self;
  v3.super_class = SBNotificationCenterControllerAccessibility;
  [(SBNotificationCenterControllerAccessibility *)&v3 _cleanupAfterTransition:a3];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7F10], 0);
}

- (void)_handleShowNotificationCenterGesture:(id)a3
{
  v6.receiver = self;
  v6.super_class = SBNotificationCenterControllerAccessibility;
  v4 = a3;
  [(SBNotificationCenterControllerAccessibility *)&v6 _handleShowNotificationCenterGesture:v4];
  v5 = [v4 state];

  [(SBNotificationCenterControllerAccessibility *)self _accessibilitySetNotificationGestureInProgress:v5 == 1];
}

@end