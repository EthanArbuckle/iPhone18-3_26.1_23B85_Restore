@interface UINavigationController
- (void)mt_hideNavigationBarOnFirstScreen;
- (void)mt_popToRootViewControllerAnimated:(BOOL)animated completion:(id)completion;
@end

@implementation UINavigationController

- (void)mt_popToRootViewControllerAnimated:(BOOL)animated completion:(id)completion
{
  if (animated)
  {
    completionCopy = completion;
    +[CATransaction begin];
    [CATransaction setCompletionBlock:completionCopy];

    v6 = [(UINavigationController *)self popToRootViewControllerAnimated:1];

    +[CATransaction commit];
  }

  else
  {
    completionCopy2 = completion;
    v7 = [(UINavigationController *)self popToRootViewControllerAnimated:0];
    completionCopy2[2]();
  }
}

- (void)mt_hideNavigationBarOnFirstScreen
{
  viewControllers = [(UINavigationController *)self viewControllers];
  v4 = [viewControllers count] < 2;

  [(UINavigationController *)self setNavigationBarHidden:v4];
}

@end