@interface CustomContaineePresentationController
- (ContaineeViewController)containeeViewController;
- (ContainerViewController)containerViewController;
- (CustomContaineePresentationController)initWithPresentedViewController:(id)a3 presentingViewController:(id)a4;
- (int64_t)adaptivePresentationStyleForTraitCollection:(id)a3;
- (void)containerViewWillLayoutSubviews;
- (void)dismissContaineeViewController;
- (void)dismissalTransitionDidEnd:(BOOL)a3;
- (void)dismissalTransitionWillBegin;
- (void)presentationTransitionWillBegin;
@end

@implementation CustomContaineePresentationController

- (ContainerViewController)containerViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);

  return WeakRetained;
}

- (ContaineeViewController)containeeViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_containeeViewController);

  return WeakRetained;
}

- (void)dismissContaineeViewController
{
  if (self->_containeeViewControllerConformsToCustomPresentationContaineeViewController)
  {
    WeakRetained = objc_loadWeakRetained(&self->_containeeViewController);
    [WeakRetained dismissCustomPresentationContainee];
  }
}

- (void)dismissalTransitionDidEnd:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = CustomContaineePresentationController;
  [(CustomContaineePresentationController *)&v5 dismissalTransitionDidEnd:a3];
  if (!self->_containerContentShown)
  {
    WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
    [WeakRetained updateViewsForCustomDismissalTransition];
  }
}

- (void)dismissalTransitionWillBegin
{
  v11.receiver = self;
  v11.super_class = CustomContaineePresentationController;
  [(CustomContaineePresentationController *)&v11 dismissalTransitionWillBegin];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100C55E6C;
  v10[3] = &unk_101661B18;
  v10[4] = self;
  v3 = objc_retainBlock(v10);
  v4 = [(CustomContaineePresentationController *)self presentedViewController];
  v5 = [v4 transitionCoordinator];

  if (v5)
  {
    v6 = [(CustomContaineePresentationController *)self presentedViewController];
    v7 = [v6 transitionCoordinator];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100C55ED8;
    v8[3] = &unk_101654700;
    v9 = v3;
    [v7 animateAlongsideTransition:v8 completion:&stru_10164EDC8];
  }

  else
  {
    (v3[2])(v3);
  }
}

- (void)presentationTransitionWillBegin
{
  v11.receiver = self;
  v11.super_class = CustomContaineePresentationController;
  [(CustomContaineePresentationController *)&v11 presentationTransitionWillBegin];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100C56054;
  v10[3] = &unk_101661B18;
  v10[4] = self;
  v3 = objc_retainBlock(v10);
  v4 = [(CustomContaineePresentationController *)self presentedViewController];
  v5 = [v4 transitionCoordinator];

  if (v5)
  {
    v6 = [(CustomContaineePresentationController *)self presentedViewController];
    v7 = [v6 transitionCoordinator];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100C560BC;
    v8[3] = &unk_101654700;
    v9 = v3;
    [v7 animateAlongsideTransition:v8 completion:0];
  }

  else
  {
    (v3[2])(v3);
  }
}

- (void)containerViewWillLayoutSubviews
{
  v12.receiver = self;
  v12.super_class = CustomContaineePresentationController;
  [(CustomContaineePresentationController *)&v12 containerViewWillLayoutSubviews];
  if (self->_presentationStyle == 4)
  {
    [(CustomContaineePresentationController *)self frameOfPresentedViewInContainerView];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v11 = [(CustomContaineePresentationController *)self presentedView];
    [v11 setFrame:{v4, v6, v8, v10}];
  }
}

- (int64_t)adaptivePresentationStyleForTraitCollection:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  v6 = [WeakRetained allowOnlyStandardStyle];

  v7 = [v4 horizontalSizeClass];
  if (v6)
  {
    if (v7 == 2 && [v4 verticalSizeClass] == 1 || objc_msgSend(v4, "horizontalSizeClass") == 2 && objc_msgSend(v4, "verticalSizeClass") == 2)
    {
      v8 = 2;
      goto LABEL_13;
    }

LABEL_9:
    v8 = 4;
    goto LABEL_13;
  }

  if (v7 == 1 && [v4 verticalSizeClass] == 2)
  {
    goto LABEL_9;
  }

  if ([v4 verticalSizeClass] == 1)
  {
    v8 = 5;
  }

  else
  {
    v8 = 2;
  }

LABEL_13:
  self->_presentationStyle = v8;

  return v8;
}

- (CustomContaineePresentationController)initWithPresentedViewController:(id)a3 presentingViewController:(id)a4
{
  v6 = a3;
  v7 = a4;
  v19.receiver = self;
  v19.super_class = CustomContaineePresentationController;
  v8 = [(CustomContaineePresentationController *)&v19 initWithPresentedViewController:v6 presentingViewController:v7];
  v9 = v8;
  if (v8)
  {
    [(CustomContaineePresentationController *)v8 setDelegate:v8];
    objc_storeWeak(&v9->_containeeViewController, v6);
    objc_storeWeak(&v9->_containerViewController, v7);
    v9->_containeeViewControllerConformsToCustomPresentationContaineeViewController = [v6 conformsToProtocol:&OBJC_PROTOCOL___CustomPresentationContaineeViewController];
    v9->_containerViewControllerSupportsUpdateViewsForCustomPresentationTransition = objc_opt_respondsToSelector() & 1;
    v9->_containerViewControllerSupportsUpdateViewsForCustomDismissalTransition = objc_opt_respondsToSelector() & 1;
    objc_initWeak(&location, v9);
    v13 = _NSConcreteStackBlock;
    v14 = 3221225472;
    v15 = sub_100C56480;
    v16 = &unk_10164F170;
    objc_copyWeak(&v17, &location);
    v10 = [_UISheetDetent _detentWithContainerViewBlock:&v13];
    v20 = v10;
    v11 = [NSArray arrayWithObjects:&v20 count:1, v13, v14, v15, v16];
    [(CustomContaineePresentationController *)v9 _setDetents:v11];

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }

  return v9;
}

@end