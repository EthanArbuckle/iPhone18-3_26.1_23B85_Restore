@interface SBUIRemoteAlertServiceViewControllerAccessibility
- (void)prepareForActivationWithContext:(id)a3 completion:(id)a4;
@end

@implementation SBUIRemoteAlertServiceViewControllerAccessibility

- (void)prepareForActivationWithContext:(id)a3 completion:(id)a4
{
  v4.receiver = self;
  v4.super_class = SBUIRemoteAlertServiceViewControllerAccessibility;
  [(SBUIRemoteAlertServiceViewControllerAccessibility *)&v4 prepareForActivationWithContext:a3 completion:a4];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7380], 0);
}

@end