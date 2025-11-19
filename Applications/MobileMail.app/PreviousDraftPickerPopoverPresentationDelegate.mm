@interface PreviousDraftPickerPopoverPresentationDelegate
- (id)presentationController:(id)a3 viewControllerForAdaptivePresentationStyle:(int64_t)a4;
@end

@implementation PreviousDraftPickerPopoverPresentationDelegate

- (id)presentationController:(id)a3 viewControllerForAdaptivePresentationStyle:(int64_t)a4
{
  v4 = a3;
  v5 = [UINavigationController alloc];
  v6 = [v4 presentedViewController];
  v7 = [v5 initWithRootViewController:v6];

  return v7;
}

@end