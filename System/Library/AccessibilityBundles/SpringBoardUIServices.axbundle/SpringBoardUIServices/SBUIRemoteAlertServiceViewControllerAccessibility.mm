@interface SBUIRemoteAlertServiceViewControllerAccessibility
- (void)prepareForActivationWithContext:(id)context completion:(id)completion;
@end

@implementation SBUIRemoteAlertServiceViewControllerAccessibility

- (void)prepareForActivationWithContext:(id)context completion:(id)completion
{
  v4.receiver = self;
  v4.super_class = SBUIRemoteAlertServiceViewControllerAccessibility;
  [(SBUIRemoteAlertServiceViewControllerAccessibility *)&v4 prepareForActivationWithContext:context completion:completion];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7380], 0);
}

@end