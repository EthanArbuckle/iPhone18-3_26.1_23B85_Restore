@interface CNTestNavigationControllerDelegate
+ (CNTestNavigationControllerDelegate)delegateWithDelegate:(id)a3 willShowViewControllerHandler:(id)a4 didShowViewControllerHandler:(id)a5;
- (BOOL)_selfReallyRespondsToSelector:(SEL)a3;
- (BOOL)respondsToSelector:(SEL)a3;
- (id)forwardingTargetForSelector:(SEL)a3;
- (void)navigationController:(id)a3 didShowViewController:(id)a4 animated:(BOOL)a5;
- (void)navigationController:(id)a3 willShowViewController:(id)a4 animated:(BOOL)a5;
@end

@implementation CNTestNavigationControllerDelegate

+ (CNTestNavigationControllerDelegate)delegateWithDelegate:(id)a3 willShowViewControllerHandler:(id)a4 didShowViewControllerHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = objc_alloc_init(a1);
  [v11 setDelegate:v10];

  [v11 setWillShow:v9];
  [v11 setDidShow:v8];

  return v11;
}

- (void)navigationController:(id)a3 willShowViewController:(id)a4 animated:(BOOL)a5
{
  v8 = a4;
  v6 = [(CNTestNavigationControllerDelegate *)self willShow];

  if (v6)
  {
    v7 = [(CNTestNavigationControllerDelegate *)self willShow];
    (v7)[2](v7, v8);
  }
}

- (void)navigationController:(id)a3 didShowViewController:(id)a4 animated:(BOOL)a5
{
  v8 = a4;
  v6 = [(CNTestNavigationControllerDelegate *)self didShow];

  if (v6)
  {
    v7 = [(CNTestNavigationControllerDelegate *)self didShow];
    (v7)[2](v7, v8);
  }
}

- (BOOL)_selfReallyRespondsToSelector:(SEL)a3
{
  if (sel_isEqual(a3, "navigationController:willShowViewController:animated:"))
  {
    return 1;
  }

  return sel_isEqual(a3, "navigationController:didShowViewController:animated:");
}

- (BOOL)respondsToSelector:(SEL)a3
{
  if ([(CNTestNavigationControllerDelegate *)self _selfReallyRespondsToSelector:?])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(CNTestNavigationControllerDelegate *)self delegate];
    v4 = objc_opt_respondsToSelector();
  }

  return v4 & 1;
}

- (id)forwardingTargetForSelector:(SEL)a3
{
  if ([(CNTestNavigationControllerDelegate *)self _selfReallyRespondsToSelector:?]|| ([(CNTestNavigationControllerDelegate *)self delegate], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_opt_respondsToSelector(), v4, (v5 & 1) == 0))
  {
    v6 = 0;
  }

  else
  {
    v6 = [(CNTestNavigationControllerDelegate *)self delegate];
  }

  return v6;
}

@end