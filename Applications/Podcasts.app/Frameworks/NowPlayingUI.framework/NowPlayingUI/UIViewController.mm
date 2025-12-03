@interface UIViewController
- (void)compositeComponentDidMoveToParentViewController:(id)controller;
- (void)compositeComponentWillMoveToParentViewController:(id)controller;
@end

@implementation UIViewController

- (void)compositeComponentWillMoveToParentViewController:(id)controller
{
  if (controller)
  {
    [controller addChildViewController:self];
  }

  else
  {
    [(UIViewController *)self willMoveToParentViewController:0];
  }
}

- (void)compositeComponentDidMoveToParentViewController:(id)controller
{
  if (controller)
  {
    [(UIViewController *)self didMoveToParentViewController:?];
  }

  else
  {
    [(UIViewController *)self removeFromParentViewController];
  }
}

@end