@interface UINavigationController
- (void)mt_hideNavigationBarOnFirstScreen;
- (void)mt_popToRootViewControllerAnimated:(BOOL)a3 completion:(id)a4;
@end

@implementation UINavigationController

- (void)mt_popToRootViewControllerAnimated:(BOOL)a3 completion:(id)a4
{
  if (a3)
  {
    v5 = a4;
    +[CATransaction begin];
    [CATransaction setCompletionBlock:v5];

    v6 = [(UINavigationController *)self popToRootViewControllerAnimated:1];

    +[CATransaction commit];
  }

  else
  {
    v8 = a4;
    v7 = [(UINavigationController *)self popToRootViewControllerAnimated:0];
    v8[2]();
  }
}

- (void)mt_hideNavigationBarOnFirstScreen
{
  v3 = [(UINavigationController *)self viewControllers];
  v4 = [v3 count] < 2;

  [(UINavigationController *)self setNavigationBarHidden:v4];
}

@end