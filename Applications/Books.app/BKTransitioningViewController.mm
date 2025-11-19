@interface BKTransitioningViewController
- (BKTransitioningViewController)initWithContentViewController:(id)a3;
- (BKTransitioningViewControllerDelegate)delegate;
- (UIViewController)contentViewController;
- (id)childViewControllerForHomeIndicatorAutoHidden;
- (id)childViewControllerForStatusBarHidden;
- (id)childViewControllerForStatusBarStyle;
- (id)transitionCoordinator;
- (void)_delegate_didTransitionFromViewController:(id)a3 toViewController:(id)a4;
- (void)_delegate_willTransitionFromViewController:(id)a3 toViewController:(id)a4;
- (void)_performTransitionFromViewController:(id)a3 toViewController:(id)a4 withTransition:(id)a5 completion:(id)a6;
- (void)navigationController:(id)a3 didShowViewController:(id)a4 animated:(BOOL)a5;
- (void)navigationController:(id)a3 willShowViewController:(id)a4 animated:(BOOL)a5;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3;
- (void)setContentViewController:(id)a3;
- (void)transitionToContentViewController:(id)a3 withTransition:(id)a4 completion:(id)a5;
- (void)viewDidLoad;
@end

@implementation BKTransitioningViewController

- (BKTransitioningViewController)initWithContentViewController:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = BKTransitioningViewController;
  v5 = [(BKTransitioningViewController *)&v10 init];
  if (v5)
  {
    v6 = [UINavigationController alloc];
    if (v4)
    {
      v7 = [v6 initWithRootViewController:v4];
    }

    else
    {
      v7 = [v6 initWithNibName:0 bundle:0];
    }

    v8 = v7;
    objc_storeStrong(&v5->_navController, v7);
  }

  return v5;
}

- (void)viewDidLoad
{
  v22.receiver = self;
  v22.super_class = BKTransitioningViewController;
  [(BKTransitioningViewController *)&v22 viewDidLoad];
  v3 = [(BKTransitioningViewController *)self navController];
  [v3 setDelegate:self];

  v4 = [(BKTransitioningViewController *)self navController];
  [v4 setToolbarHidden:1];

  v5 = [(BKTransitioningViewController *)self navController];
  [v5 setNavigationBarHidden:1];

  v6 = [(BKTransitioningViewController *)self navController];
  [(BKTransitioningViewController *)self addChildViewController:v6];

  v7 = [(BKTransitioningViewController *)self view];
  [v7 bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = [(BKTransitioningViewController *)self navController];
  v17 = [v16 view];
  [v17 setFrame:{v9, v11, v13, v15}];

  v18 = [(BKTransitioningViewController *)self view];
  v19 = [(BKTransitioningViewController *)self navController];
  v20 = [v19 view];
  [v18 addSubview:v20];

  v21 = [(BKTransitioningViewController *)self navController];
  [v21 didMoveToParentViewController:self];
}

- (id)childViewControllerForStatusBarStyle
{
  v2 = [(BKTransitioningViewController *)self navController];
  v3 = [v2 childViewControllerForStatusBarStyle];

  return v3;
}

- (id)childViewControllerForStatusBarHidden
{
  v2 = [(BKTransitioningViewController *)self navController];
  v3 = [v2 childViewControllerForStatusBarHidden];

  return v3;
}

- (id)childViewControllerForHomeIndicatorAutoHidden
{
  v2 = [(BKTransitioningViewController *)self navController];
  v3 = [v2 childViewControllerForHomeIndicatorAutoHidden];

  return v3;
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3
{
  v9.receiver = self;
  v9.super_class = BKTransitioningViewController;
  v4 = a3;
  [(BKTransitioningViewController *)&v9 preferredContentSizeDidChangeForChildContentContainer:v4];
  [v4 preferredContentSize];
  v6 = v5;
  v8 = v7;

  [(BKTransitioningViewController *)self setPreferredContentSize:v6, v8];
}

- (void)transitionToContentViewController:(id)a3 withTransition:(id)a4 completion:(id)a5
{
  v8 = a3;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10018318C;
  v12[3] = &unk_100A088F0;
  v12[4] = self;
  v13 = a4;
  v14 = v8;
  v15 = a5;
  v9 = v8;
  v10 = v15;
  v11 = v13;
  [(BKTransitioningViewController *)self im_finishOngoingModalTransitionAnimations:v12];
}

- (UIViewController)contentViewController
{
  v2 = [(BKTransitioningViewController *)self navController];
  v3 = [v2 topViewController];

  return v3;
}

- (void)setContentViewController:(id)a3
{
  v4 = a3;
  [(BKTransitioningViewController *)self willChangeValueForKey:@"contentViewController"];
  v5 = [(BKTransitioningViewController *)self contentViewController];
  [(BKTransitioningViewController *)self setSourceViewController:v5];

  v6 = [(BKTransitioningViewController *)self navController];
  v8 = v4;
  v7 = [NSArray arrayWithObjects:&v8 count:1];

  [v6 setViewControllers:v7 animated:0];
  [(BKTransitioningViewController *)self didChangeValueForKey:@"contentViewController"];
}

- (id)transitionCoordinator
{
  if ([(BKTransitioningViewController *)self gettingTransitionCoordinator])
  {
    v3 = [(BKTransitioningViewController *)self parentViewController];
    v4 = [v3 transitionCoordinator];
  }

  else
  {
    [(BKTransitioningViewController *)self setGettingTransitionCoordinator:1];
    v5 = [(BKTransitioningViewController *)self navController];
    v4 = [v5 transitionCoordinator];

    [(BKTransitioningViewController *)self setGettingTransitionCoordinator:0];
  }

  return v4;
}

- (void)navigationController:(id)a3 willShowViewController:(id)a4 animated:(BOOL)a5
{
  v6 = a4;
  v7 = [(BKTransitioningViewController *)self sourceViewController];
  [(BKTransitioningViewController *)self _delegate_willTransitionFromViewController:v7 toViewController:v6];
}

- (void)navigationController:(id)a3 didShowViewController:(id)a4 animated:(BOOL)a5
{
  v6 = a4;
  v7 = [(BKTransitioningViewController *)self sourceViewController];
  [(BKTransitioningViewController *)self _delegate_didTransitionFromViewController:v7 toViewController:v6];

  v8 = [(BKTransitioningViewController *)self completion];

  if (v8)
  {
    v9 = [(BKTransitioningViewController *)self completion];
    v9[2](v9, 1);
  }

  [(BKTransitioningViewController *)self setCompletion:0];
  [(BKTransitioningViewController *)self setTransition:0];
  [(BKTransitioningViewController *)self setSourceViewController:0];
  v10 = [(BKTransitioningViewController *)self wallpaperAssertion];
  [v10 invalidate];

  [(BKTransitioningViewController *)self setWallpaperAssertion:0];
  [(BKTransitioningViewController *)self setTransitioning:0];
  v12 = [(BKTransitioningViewController *)self tabBarController];
  v11 = [(BKTransitioningViewController *)self transitionCoordinator];
  [v12 im_updateTabBarVisibleWithTransitionCoordinator:v11];
}

- (void)_performTransitionFromViewController:(id)a3 toViewController:(id)a4 withTransition:(id)a5 completion:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = objc_alloc_init(IMViewControllerOneToOneTransitionContext);
  v15 = [(BKTransitioningViewController *)self view];
  [v14 setBk_containerView:v15];

  [v14 _setFromViewController:v13];
  [v14 _setToViewController:v12];

  [v14 _setIsAnimated:1];
  [v11 transitionDuration:v14];
  [v14 _setDuration:?];
  [v14 _setAnimator:v11];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100183808;
  v17[3] = &unk_100A09760;
  v18 = v10;
  v16 = v10;
  [v14 _setCompletionHandler:v17];
  [v11 animateTransition:v14];
}

- (void)_delegate_willTransitionFromViewController:(id)a3 toViewController:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [(BKTransitioningViewController *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(BKTransitioningViewController *)self delegate];
    [v9 transitionController:self willTransitionFromViewController:v10 toViewController:v6];
  }
}

- (void)_delegate_didTransitionFromViewController:(id)a3 toViewController:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [(BKTransitioningViewController *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(BKTransitioningViewController *)self delegate];
    [v9 transitionController:self didTransitionFromViewController:v10 toViewController:v6];
  }
}

- (BKTransitioningViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end