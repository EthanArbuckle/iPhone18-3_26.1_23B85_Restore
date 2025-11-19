@interface UIViewController
- (void)compositeComponentDidMoveToParentViewController:(id)a3;
- (void)compositeComponentWillMoveToParentViewController:(id)a3;
@end

@implementation UIViewController

- (void)compositeComponentWillMoveToParentViewController:(id)a3
{
  if (a3)
  {
    [a3 addChildViewController:self];
  }

  else
  {
    [(UIViewController *)self willMoveToParentViewController:0];
  }
}

- (void)compositeComponentDidMoveToParentViewController:(id)a3
{
  if (a3)
  {
    [(UIViewController *)self didMoveToParentViewController:?];
  }

  else
  {
    [(UIViewController *)self removeFromParentViewController];
  }
}

@end