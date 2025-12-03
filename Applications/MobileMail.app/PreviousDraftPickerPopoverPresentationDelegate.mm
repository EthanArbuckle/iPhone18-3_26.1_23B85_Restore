@interface PreviousDraftPickerPopoverPresentationDelegate
- (id)presentationController:(id)controller viewControllerForAdaptivePresentationStyle:(int64_t)style;
@end

@implementation PreviousDraftPickerPopoverPresentationDelegate

- (id)presentationController:(id)controller viewControllerForAdaptivePresentationStyle:(int64_t)style
{
  controllerCopy = controller;
  v5 = [UINavigationController alloc];
  presentedViewController = [controllerCopy presentedViewController];
  v7 = [v5 initWithRootViewController:presentedViewController];

  return v7;
}

@end