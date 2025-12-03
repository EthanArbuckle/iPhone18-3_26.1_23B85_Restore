@interface CNTestNavigationControllerDelegate
+ (CNTestNavigationControllerDelegate)delegateWithDelegate:(id)delegate willShowViewControllerHandler:(id)handler didShowViewControllerHandler:(id)controllerHandler;
- (BOOL)_selfReallyRespondsToSelector:(SEL)selector;
- (BOOL)respondsToSelector:(SEL)selector;
- (id)forwardingTargetForSelector:(SEL)selector;
- (void)navigationController:(id)controller didShowViewController:(id)viewController animated:(BOOL)animated;
- (void)navigationController:(id)controller willShowViewController:(id)viewController animated:(BOOL)animated;
@end

@implementation CNTestNavigationControllerDelegate

+ (CNTestNavigationControllerDelegate)delegateWithDelegate:(id)delegate willShowViewControllerHandler:(id)handler didShowViewControllerHandler:(id)controllerHandler
{
  controllerHandlerCopy = controllerHandler;
  handlerCopy = handler;
  delegateCopy = delegate;
  v11 = objc_alloc_init(self);
  [v11 setDelegate:delegateCopy];

  [v11 setWillShow:handlerCopy];
  [v11 setDidShow:controllerHandlerCopy];

  return v11;
}

- (void)navigationController:(id)controller willShowViewController:(id)viewController animated:(BOOL)animated
{
  viewControllerCopy = viewController;
  willShow = [(CNTestNavigationControllerDelegate *)self willShow];

  if (willShow)
  {
    willShow2 = [(CNTestNavigationControllerDelegate *)self willShow];
    (willShow2)[2](willShow2, viewControllerCopy);
  }
}

- (void)navigationController:(id)controller didShowViewController:(id)viewController animated:(BOOL)animated
{
  viewControllerCopy = viewController;
  didShow = [(CNTestNavigationControllerDelegate *)self didShow];

  if (didShow)
  {
    didShow2 = [(CNTestNavigationControllerDelegate *)self didShow];
    (didShow2)[2](didShow2, viewControllerCopy);
  }
}

- (BOOL)_selfReallyRespondsToSelector:(SEL)selector
{
  if (sel_isEqual(selector, "navigationController:willShowViewController:animated:"))
  {
    return 1;
  }

  return sel_isEqual(selector, "navigationController:didShowViewController:animated:");
}

- (BOOL)respondsToSelector:(SEL)selector
{
  if ([(CNTestNavigationControllerDelegate *)self _selfReallyRespondsToSelector:?])
  {
    v4 = 1;
  }

  else
  {
    delegate = [(CNTestNavigationControllerDelegate *)self delegate];
    v4 = objc_opt_respondsToSelector();
  }

  return v4 & 1;
}

- (id)forwardingTargetForSelector:(SEL)selector
{
  if ([(CNTestNavigationControllerDelegate *)self _selfReallyRespondsToSelector:?]|| ([(CNTestNavigationControllerDelegate *)self delegate], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_opt_respondsToSelector(), v4, (v5 & 1) == 0))
  {
    delegate = 0;
  }

  else
  {
    delegate = [(CNTestNavigationControllerDelegate *)self delegate];
  }

  return delegate;
}

@end