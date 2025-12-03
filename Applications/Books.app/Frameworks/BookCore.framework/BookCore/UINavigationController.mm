@interface UINavigationController
- (id)bc_navBarSnapshot;
- (id)im_visibleChildViewControllers;
- (void)_bc_setActiveNavBarSnapshot:(id)snapshot;
- (void)bc_updateNavBarVisibleWithTransitionCoordinator:(id)coordinator duration:(double)duration;
- (void)im_dismissChildViewController:(id)controller animated:(BOOL)animated;
@end

@implementation UINavigationController

- (id)im_visibleChildViewControllers
{
  topViewController = [(UINavigationController *)self topViewController];
  if (topViewController)
  {
    topViewController2 = [(UINavigationController *)self topViewController];
    v7 = topViewController2;
    v5 = [NSArray arrayWithObjects:&v7 count:1];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)im_dismissChildViewController:(id)controller animated:(BOOL)animated
{
  animatedCopy = animated;
  controllerCopy = controller;
  childViewControllers = [(UINavigationController *)self childViewControllers];
  v8 = [childViewControllers indexOfObjectIdenticalTo:controllerCopy];

  delegate = [(UINavigationController *)self delegate];
  v10 = BUProtocolCast();

  if (v8 == 0x7FFFFFFFFFFFFFFFLL || (objc_opt_respondsToSelector() & 1) == 0)
  {
    topViewController = [(UINavigationController *)self topViewController];

    if (topViewController == controllerCopy)
    {
      selfCopy2 = self;
      v13 = animatedCopy;
    }

    else
    {
      if (v8 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v16.receiver = self;
        v16.super_class = UINavigationController;
        [(UINavigationController *)&v16 im_dismissChildViewController:self animated:animatedCopy];
        goto LABEL_10;
      }

      v14 = [(UINavigationController *)self popToViewController:controllerCopy animated:0];
      selfCopy2 = self;
      v13 = 0;
    }

    v15 = [(UINavigationController *)selfCopy2 popViewControllerAnimated:v13];
    goto LABEL_10;
  }

  [v10 im_navigationController:self dismissChildViewController:controllerCopy animated:animatedCopy];
LABEL_10:
}

- (void)bc_updateNavBarVisibleWithTransitionCoordinator:(id)coordinator duration:(double)duration
{
  coordinatorCopy = coordinator;
  objc_opt_class();
  topViewController = [(UINavigationController *)self topViewController];
  presentedViewController = [topViewController presentedViewController];
  v9 = BUDynamicCast();

  if (([v9 hidesNavigationBarDuringPresentation] & 1) == 0)
  {
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_12D5EC;
    v12[3] = &unk_2CDAE0;
    v12[4] = self;
    *&v12[5] = duration;
    v10 = objc_retainBlock(v12);
    v11 = v10;
    if (coordinatorCopy)
    {
      [coordinatorCopy animateAlongsideTransition:v10 completion:0];
    }

    else
    {
      (v10[2])(v10, 0);
    }
  }
}

- (id)bc_navBarSnapshot
{
  navigationBar = [(UINavigationController *)self navigationBar];
  [navigationBar frame];
  x = v16.origin.x;
  y = v16.origin.y;
  width = v16.size.width;
  height = v16.size.height;
  v7 = CGRectGetHeight(v16);
  v17.origin.x = x;
  v17.origin.y = y;
  v17.size.width = width;
  v17.size.height = height;
  v8 = CGRectGetWidth(v17);
  v18.origin.x = x;
  v18.origin.y = y;
  v18.size.width = width;
  v18.size.height = height;
  MaxY = CGRectGetMaxY(v18);
  v10 = [navigationBar resizableSnapshotViewFromRect:0 afterScreenUpdates:0.0 withCapInsets:{-(MaxY - v7), v8, v7 + MaxY - v7, UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  v11 = [UIView alloc];
  [v10 frame];
  v12 = [v11 initWithFrame:?];
  barTintColor = [navigationBar barTintColor];
  [v12 setBackgroundColor:barTintColor];

  [v12 addSubview:v10];

  return v12;
}

- (void)_bc_setActiveNavBarSnapshot:(id)snapshot
{
  snapshotCopy = snapshot;
  _bc_activeNavBarSnapshot = [(UINavigationController *)self _bc_activeNavBarSnapshot];
  [_bc_activeNavBarSnapshot removeFromSuperview];
  objc_setAssociatedObject(self, &off_2CDB00, snapshotCopy, &dword_0 + 1);
}

@end