@interface WFCompactDialogViewControllerAccessibility
- (void)prepareForPresentationWithCompletionHandler:(id)a3;
@end

@implementation WFCompactDialogViewControllerAccessibility

- (void)prepareForPresentationWithCompletionHandler:(id)a3
{
  v3.receiver = self;
  v3.super_class = WFCompactDialogViewControllerAccessibility;
  [(WFCompactDialogViewControllerAccessibility *)&v3 prepareForPresentationWithCompletionHandler:a3];
  AXPerformBlockOnMainThreadAfterDelay();
}

@end