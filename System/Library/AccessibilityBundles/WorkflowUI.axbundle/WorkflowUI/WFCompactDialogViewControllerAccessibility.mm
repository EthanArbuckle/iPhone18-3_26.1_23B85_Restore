@interface WFCompactDialogViewControllerAccessibility
- (void)prepareForPresentationWithCompletionHandler:(id)handler;
@end

@implementation WFCompactDialogViewControllerAccessibility

- (void)prepareForPresentationWithCompletionHandler:(id)handler
{
  v3.receiver = self;
  v3.super_class = WFCompactDialogViewControllerAccessibility;
  [(WFCompactDialogViewControllerAccessibility *)&v3 prepareForPresentationWithCompletionHandler:handler];
  AXPerformBlockOnMainThreadAfterDelay();
}

@end