@interface BKTransitioningViewController
- (BKTransitioningViewController)initWithContentViewController:(id)controller;
- (BKTransitioningViewControllerDelegate)delegate;
- (UIViewController)contentViewController;
- (id)childViewControllerForHomeIndicatorAutoHidden;
- (id)childViewControllerForStatusBarHidden;
- (id)childViewControllerForStatusBarStyle;
- (id)transitionCoordinator;
- (void)_delegate_didTransitionFromViewController:(id)controller toViewController:(id)viewController;
- (void)_delegate_willTransitionFromViewController:(id)controller toViewController:(id)viewController;
- (void)_performTransitionFromViewController:(id)controller toViewController:(id)viewController withTransition:(id)transition completion:(id)completion;
- (void)navigationController:(id)controller didShowViewController:(id)viewController animated:(BOOL)animated;
- (void)navigationController:(id)controller willShowViewController:(id)viewController animated:(BOOL)animated;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container;
- (void)setContentViewController:(id)controller;
- (void)transitionToContentViewController:(id)controller withTransition:(id)transition completion:(id)completion;
- (void)viewDidLoad;
@end

@implementation BKTransitioningViewController

- (BKTransitioningViewController)initWithContentViewController:(id)controller
{
  controllerCopy = controller;
  v10.receiver = self;
  v10.super_class = BKTransitioningViewController;
  v5 = [(BKTransitioningViewController *)&v10 init];
  if (v5)
  {
    v6 = [UINavigationController alloc];
    if (controllerCopy)
    {
      v7 = [v6 initWithRootViewController:controllerCopy];
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
  navController = [(BKTransitioningViewController *)self navController];
  [navController setDelegate:self];

  navController2 = [(BKTransitioningViewController *)self navController];
  [navController2 setToolbarHidden:1];

  navController3 = [(BKTransitioningViewController *)self navController];
  [navController3 setNavigationBarHidden:1];

  navController4 = [(BKTransitioningViewController *)self navController];
  [(BKTransitioningViewController *)self addChildViewController:navController4];

  view = [(BKTransitioningViewController *)self view];
  [view bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  navController5 = [(BKTransitioningViewController *)self navController];
  view2 = [navController5 view];
  [view2 setFrame:{v9, v11, v13, v15}];

  view3 = [(BKTransitioningViewController *)self view];
  navController6 = [(BKTransitioningViewController *)self navController];
  view4 = [navController6 view];
  [view3 addSubview:view4];

  navController7 = [(BKTransitioningViewController *)self navController];
  [navController7 didMoveToParentViewController:self];
}

- (id)childViewControllerForStatusBarStyle
{
  navController = [(BKTransitioningViewController *)self navController];
  childViewControllerForStatusBarStyle = [navController childViewControllerForStatusBarStyle];

  return childViewControllerForStatusBarStyle;
}

- (id)childViewControllerForStatusBarHidden
{
  navController = [(BKTransitioningViewController *)self navController];
  childViewControllerForStatusBarHidden = [navController childViewControllerForStatusBarHidden];

  return childViewControllerForStatusBarHidden;
}

- (id)childViewControllerForHomeIndicatorAutoHidden
{
  navController = [(BKTransitioningViewController *)self navController];
  childViewControllerForHomeIndicatorAutoHidden = [navController childViewControllerForHomeIndicatorAutoHidden];

  return childViewControllerForHomeIndicatorAutoHidden;
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container
{
  v9.receiver = self;
  v9.super_class = BKTransitioningViewController;
  containerCopy = container;
  [(BKTransitioningViewController *)&v9 preferredContentSizeDidChangeForChildContentContainer:containerCopy];
  [containerCopy preferredContentSize];
  v6 = v5;
  v8 = v7;

  [(BKTransitioningViewController *)self setPreferredContentSize:v6, v8];
}

- (void)transitionToContentViewController:(id)controller withTransition:(id)transition completion:(id)completion
{
  controllerCopy = controller;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10018318C;
  v12[3] = &unk_100A088F0;
  v12[4] = self;
  transitionCopy = transition;
  v14 = controllerCopy;
  completionCopy = completion;
  v9 = controllerCopy;
  v10 = completionCopy;
  v11 = transitionCopy;
  [(BKTransitioningViewController *)self im_finishOngoingModalTransitionAnimations:v12];
}

- (UIViewController)contentViewController
{
  navController = [(BKTransitioningViewController *)self navController];
  topViewController = [navController topViewController];

  return topViewController;
}

- (void)setContentViewController:(id)controller
{
  controllerCopy = controller;
  [(BKTransitioningViewController *)self willChangeValueForKey:@"contentViewController"];
  contentViewController = [(BKTransitioningViewController *)self contentViewController];
  [(BKTransitioningViewController *)self setSourceViewController:contentViewController];

  navController = [(BKTransitioningViewController *)self navController];
  v8 = controllerCopy;
  v7 = [NSArray arrayWithObjects:&v8 count:1];

  [navController setViewControllers:v7 animated:0];
  [(BKTransitioningViewController *)self didChangeValueForKey:@"contentViewController"];
}

- (id)transitionCoordinator
{
  if ([(BKTransitioningViewController *)self gettingTransitionCoordinator])
  {
    parentViewController = [(BKTransitioningViewController *)self parentViewController];
    transitionCoordinator = [parentViewController transitionCoordinator];
  }

  else
  {
    [(BKTransitioningViewController *)self setGettingTransitionCoordinator:1];
    navController = [(BKTransitioningViewController *)self navController];
    transitionCoordinator = [navController transitionCoordinator];

    [(BKTransitioningViewController *)self setGettingTransitionCoordinator:0];
  }

  return transitionCoordinator;
}

- (void)navigationController:(id)controller willShowViewController:(id)viewController animated:(BOOL)animated
{
  viewControllerCopy = viewController;
  sourceViewController = [(BKTransitioningViewController *)self sourceViewController];
  [(BKTransitioningViewController *)self _delegate_willTransitionFromViewController:sourceViewController toViewController:viewControllerCopy];
}

- (void)navigationController:(id)controller didShowViewController:(id)viewController animated:(BOOL)animated
{
  viewControllerCopy = viewController;
  sourceViewController = [(BKTransitioningViewController *)self sourceViewController];
  [(BKTransitioningViewController *)self _delegate_didTransitionFromViewController:sourceViewController toViewController:viewControllerCopy];

  completion = [(BKTransitioningViewController *)self completion];

  if (completion)
  {
    completion2 = [(BKTransitioningViewController *)self completion];
    completion2[2](completion2, 1);
  }

  [(BKTransitioningViewController *)self setCompletion:0];
  [(BKTransitioningViewController *)self setTransition:0];
  [(BKTransitioningViewController *)self setSourceViewController:0];
  wallpaperAssertion = [(BKTransitioningViewController *)self wallpaperAssertion];
  [wallpaperAssertion invalidate];

  [(BKTransitioningViewController *)self setWallpaperAssertion:0];
  [(BKTransitioningViewController *)self setTransitioning:0];
  tabBarController = [(BKTransitioningViewController *)self tabBarController];
  transitionCoordinator = [(BKTransitioningViewController *)self transitionCoordinator];
  [tabBarController im_updateTabBarVisibleWithTransitionCoordinator:transitionCoordinator];
}

- (void)_performTransitionFromViewController:(id)controller toViewController:(id)viewController withTransition:(id)transition completion:(id)completion
{
  completionCopy = completion;
  transitionCopy = transition;
  viewControllerCopy = viewController;
  controllerCopy = controller;
  v14 = objc_alloc_init(IMViewControllerOneToOneTransitionContext);
  view = [(BKTransitioningViewController *)self view];
  [v14 setBk_containerView:view];

  [v14 _setFromViewController:controllerCopy];
  [v14 _setToViewController:viewControllerCopy];

  [v14 _setIsAnimated:1];
  [transitionCopy transitionDuration:v14];
  [v14 _setDuration:?];
  [v14 _setAnimator:transitionCopy];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100183808;
  v17[3] = &unk_100A09760;
  v18 = completionCopy;
  v16 = completionCopy;
  [v14 _setCompletionHandler:v17];
  [transitionCopy animateTransition:v14];
}

- (void)_delegate_willTransitionFromViewController:(id)controller toViewController:(id)viewController
{
  controllerCopy = controller;
  viewControllerCopy = viewController;
  delegate = [(BKTransitioningViewController *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    delegate2 = [(BKTransitioningViewController *)self delegate];
    [delegate2 transitionController:self willTransitionFromViewController:controllerCopy toViewController:viewControllerCopy];
  }
}

- (void)_delegate_didTransitionFromViewController:(id)controller toViewController:(id)viewController
{
  controllerCopy = controller;
  viewControllerCopy = viewController;
  delegate = [(BKTransitioningViewController *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    delegate2 = [(BKTransitioningViewController *)self delegate];
    [delegate2 transitionController:self didTransitionFromViewController:controllerCopy toViewController:viewControllerCopy];
  }
}

- (BKTransitioningViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end