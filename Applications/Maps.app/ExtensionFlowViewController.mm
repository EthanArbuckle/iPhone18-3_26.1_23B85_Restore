@interface ExtensionFlowViewController
- (BOOL)viewControllerUseExtensionFlowHeader:(id)header;
- (ExtensionFlowDelegate)contentUpdateDelegate;
- (ExtensionFlowHeaderView)headerView;
- (ExtensionFlowViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)_setMaskOnNavigationBar:(id)bar;
- (void)handleDismissAction:(id)action;
- (void)popViewController;
- (void)pushViewController:(id)controller;
- (void)setScrollContentOffset:(CGPoint)offset;
- (void)setupContainerViewWithRootViewController:(id)controller;
- (void)setupHeaderView;
- (void)viewDidLoad;
@end

@implementation ExtensionFlowViewController

- (ExtensionFlowDelegate)contentUpdateDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_contentUpdateDelegate);

  return WeakRetained;
}

- (void)setupHeaderView
{
  if (!self->_headerView)
  {
    v4 = objc_opt_new();
    [(ExtensionFlowViewController *)self setHeaderView:v4];

    v5 = +[UIColor clearColor];
    headerView = [(ExtensionFlowViewController *)self headerView];
    [headerView setBackgroundColor:v5];

    headerView2 = [(ExtensionFlowViewController *)self headerView];
    [headerView2 setHeight:54.0];
  }
}

- (void)_setMaskOnNavigationBar:(id)bar
{
  barCopy = bar;
  [barCopy size];
  v6 = v5;
  v8 = v7;
  [barCopy capInsets];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  navigationController = [(ExtensionFlowViewController *)self navigationController];
  navigationBar = [navigationController navigationBar];
  [navigationBar _setCornerRadius:v10];

  navigationController2 = [(ExtensionFlowViewController *)self navigationController];
  navigationBar2 = [navigationController2 navigationBar];
  [navigationBar2 setClipsToBounds:1];

  navigationController3 = [(ExtensionFlowViewController *)self navigationController];
  navigationBar3 = [navigationController3 navigationBar];
  layer = [navigationBar3 layer];

  cGImage = [barCopy CGImage];
  [layer setCornerContents:cGImage];
  [layer setCornerContentsCenter:{v12 / v6, v10 / v8, (v6 - (v16 + v12)) / v6, (v8 - (v14 + v10)) / v8}];
}

- (void)setupContainerViewWithRootViewController:(id)controller
{
  controllerCopy = controller;
  v5 = [[UINavigationController alloc] initWithRootViewController:controllerCopy];

  [(ExtensionFlowViewController *)self setNavigationController:v5];
  v6 = objc_opt_new();
  navigationController = [(ExtensionFlowViewController *)self navigationController];
  [navigationController setNavigationBar:v6];

  navigationController2 = [(ExtensionFlowViewController *)self navigationController];
  navigationBar = [navigationController2 navigationBar];
  [navigationBar setTranslucent:1];

  navigationController3 = [(ExtensionFlowViewController *)self navigationController];
  view = [navigationController3 view];
  [(ExtensionFlowViewController *)self setContentContainerView:view];

  view2 = [(ExtensionFlowViewController *)self view];
  contentContainerView = [(ExtensionFlowViewController *)self contentContainerView];
  [view2 addSubview:contentContainerView];

  contentContainerView2 = [(ExtensionFlowViewController *)self contentContainerView];
  [contentContainerView2 setTranslatesAutoresizingMaskIntoConstraints:0];

  contentContainerView3 = [(ExtensionFlowViewController *)self contentContainerView];
  leadingAnchor = [contentContainerView3 leadingAnchor];
  view3 = [(ExtensionFlowViewController *)self view];
  leadingAnchor2 = [view3 leadingAnchor];
  v31 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v36[0] = v31;
  contentContainerView4 = [(ExtensionFlowViewController *)self contentContainerView];
  trailingAnchor = [contentContainerView4 trailingAnchor];
  view4 = [(ExtensionFlowViewController *)self view];
  trailingAnchor2 = [view4 trailingAnchor];
  v26 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v36[1] = v26;
  contentContainerView5 = [(ExtensionFlowViewController *)self contentContainerView];
  topAnchor = [contentContainerView5 topAnchor];
  view5 = [(ExtensionFlowViewController *)self view];
  topAnchor2 = [view5 topAnchor];
  v18 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v36[2] = v18;
  contentContainerView6 = [(ExtensionFlowViewController *)self contentContainerView];
  bottomAnchor = [contentContainerView6 bottomAnchor];
  view6 = [(ExtensionFlowViewController *)self view];
  bottomAnchor2 = [view6 bottomAnchor];
  v23 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v36[3] = v23;
  v24 = [NSArray arrayWithObjects:v36 count:4];
  [NSLayoutConstraint activateConstraints:v24];
}

- (void)setScrollContentOffset:(CGPoint)offset
{
  y = offset.y;
  x = offset.x;
  containerScrollView = [(ExtensionFlowViewController *)self containerScrollView];
  [containerScrollView setContentOffset:1 animated:{x, y}];
}

- (void)popViewController
{
  navigationController = [(ExtensionFlowViewController *)self navigationController];
  v2 = [navigationController popViewControllerAnimated:1];
}

- (BOOL)viewControllerUseExtensionFlowHeader:(id)header
{
  headerCopy = header;
  if ([headerCopy conformsToProtocol:&OBJC_PROTOCOL___ExtensionFlowViewControllerChildController] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    useExtensionFlowHeader = [headerCopy useExtensionFlowHeader];
  }

  else
  {
    useExtensionFlowHeader = 0;
  }

  return useExtensionFlowHeader;
}

- (void)pushViewController:(id)controller
{
  controllerCopy = controller;
  v4 = [(ExtensionFlowViewController *)self viewControllerUseExtensionFlowHeader:?];
  if (v4)
  {
    headerView = [(ExtensionFlowViewController *)self headerView];
    navigationItem = [controllerCopy navigationItem];
    [navigationItem setTitleView:headerView];

    navigationItem2 = [controllerCopy navigationItem];
    [navigationItem2 setLeftBarButtonItem:0];

    navigationItem3 = [controllerCopy navigationItem];
    [navigationItem3 setRightBarButtonItem:0];

    navigationItem4 = [controllerCopy navigationItem];
    [navigationItem4 setHidesBackButton:1];
  }

  navigationItem5 = [controllerCopy navigationItem];
  [navigationItem5 _setMinimumDesiredHeight:0 forBarMetrics:44.0];

  navigationItem6 = [controllerCopy navigationItem];
  [navigationItem6 _setMinimumDesiredHeight:1 forBarMetrics:44.0];

  navigationController = [(ExtensionFlowViewController *)self navigationController];

  if (navigationController)
  {
    navigationController2 = [(ExtensionFlowViewController *)self navigationController];
    topViewController = [navigationController2 topViewController];
    v15 = [(ExtensionFlowViewController *)self viewControllerUseExtensionFlowHeader:topViewController];

    navigationController3 = [(ExtensionFlowViewController *)self navigationController];
    navigationBar = [navigationController3 navigationBar];
    [navigationBar setSupressTransition:v4 & v15];

    navigationController4 = [(ExtensionFlowViewController *)self navigationController];
    [navigationController4 pushViewController:controllerCopy animated:1];
  }

  else
  {
    [(ExtensionFlowViewController *)self setupContainerViewWithRootViewController:controllerCopy];
  }
}

- (ExtensionFlowHeaderView)headerView
{
  headerView = self->_headerView;
  if (!headerView)
  {
    [(ExtensionFlowViewController *)self setupHeaderView];
    headerView = self->_headerView;
  }

  return headerView;
}

- (void)handleDismissAction:(id)action
{
  navigationController = [(ExtensionFlowViewController *)self navigationController];
  viewControllers = [navigationController viewControllers];
  lastObject = [viewControllers lastObject];
  navigationController2 = [(ExtensionFlowViewController *)self navigationController];
  rootViewController = [navigationController2 rootViewController];

  if (lastObject == rootViewController)
  {
    headerView = [(ExtensionFlowViewController *)self headerView];
    delegate = [headerView delegate];
    headerView2 = [(ExtensionFlowViewController *)self headerView];
    [delegate extensionFlowHeaderViewDidTapDismiss:headerView2];
  }

  else
  {

    [(ExtensionFlowViewController *)self popViewController];
  }
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = ExtensionFlowViewController;
  [(ContaineeViewController *)&v6 viewDidLoad];
  view = [(ExtensionFlowViewController *)self view];
  [view setTranslatesAutoresizingMaskIntoConstraints:0];

  v4 = +[UIColor clearColor];
  view2 = [(ExtensionFlowViewController *)self view];
  [view2 setBackgroundColor:v4];

  [(ExtensionFlowViewController *)self setupHeaderView];
}

- (ExtensionFlowViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v11.receiver = self;
  v11.super_class = ExtensionFlowViewController;
  v4 = [(ExtensionFlowViewController *)&v11 initWithNibName:name bundle:bundle];
  v5 = v4;
  if (v4)
  {
    cardPresentationController = [(ContaineeViewController *)v4 cardPresentationController];
    [cardPresentationController setPresentedModally:1];

    cardPresentationController2 = [(ContaineeViewController *)v5 cardPresentationController];
    [cardPresentationController2 setTakesAvailableHeight:1];

    cardPresentationController3 = [(ContaineeViewController *)v5 cardPresentationController];
    [cardPresentationController3 setAllowsSwipeToDismiss:0];

    cardPresentationController4 = [(ContaineeViewController *)v5 cardPresentationController];
    [cardPresentationController4 setBlurInCardView:0];
  }

  return v5;
}

@end