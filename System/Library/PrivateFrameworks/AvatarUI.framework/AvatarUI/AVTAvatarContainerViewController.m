@interface AVTAvatarContainerViewController
- (void)willMoveToParentViewController:(id)a3;
@end

@implementation AVTAvatarContainerViewController

- (void)willMoveToParentViewController:(id)a3
{
  if (!a3)
  {
    v4 = [(AVTAvatarContainerViewController *)self presentedViewController];
    [v4 dismissViewControllerAnimated:0 completion:0];
  }
}

@end