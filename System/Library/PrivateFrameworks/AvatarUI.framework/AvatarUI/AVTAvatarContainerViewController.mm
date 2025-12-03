@interface AVTAvatarContainerViewController
- (void)willMoveToParentViewController:(id)controller;
@end

@implementation AVTAvatarContainerViewController

- (void)willMoveToParentViewController:(id)controller
{
  if (!controller)
  {
    presentedViewController = [(AVTAvatarContainerViewController *)self presentedViewController];
    [presentedViewController dismissViewControllerAnimated:0 completion:0];
  }
}

@end