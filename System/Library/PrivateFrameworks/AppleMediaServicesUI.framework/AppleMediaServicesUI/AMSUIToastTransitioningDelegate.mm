@interface AMSUIToastTransitioningDelegate
- (id)_animator;
- (id)presentationControllerForPresentedViewController:(id)controller presentingViewController:(id)viewController sourceViewController:(id)sourceViewController;
@end

@implementation AMSUIToastTransitioningDelegate

- (id)presentationControllerForPresentedViewController:(id)controller presentingViewController:(id)viewController sourceViewController:(id)sourceViewController
{
  viewControllerCopy = viewController;
  controllerCopy = controller;
  v8 = [[AMSUIToastPresentationController alloc] initWithPresentedViewController:controllerCopy presentingViewController:viewControllerCopy];

  return v8;
}

- (id)_animator
{
  IsReduceMotionEnabled = UIAccessibilityIsReduceMotionEnabled();
  v3 = off_1E7F22A50;
  if (!IsReduceMotionEnabled)
  {
    v3 = off_1E7F22AB0;
  }

  v4 = objc_alloc_init(*v3);

  return v4;
}

@end