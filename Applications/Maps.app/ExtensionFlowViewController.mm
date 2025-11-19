@interface ExtensionFlowViewController
- (BOOL)viewControllerUseExtensionFlowHeader:(id)a3;
- (ExtensionFlowDelegate)contentUpdateDelegate;
- (ExtensionFlowHeaderView)headerView;
- (ExtensionFlowViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)_setMaskOnNavigationBar:(id)a3;
- (void)handleDismissAction:(id)a3;
- (void)popViewController;
- (void)pushViewController:(id)a3;
- (void)setScrollContentOffset:(CGPoint)a3;
- (void)setupContainerViewWithRootViewController:(id)a3;
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
    v6 = [(ExtensionFlowViewController *)self headerView];
    [v6 setBackgroundColor:v5];

    v7 = [(ExtensionFlowViewController *)self headerView];
    [v7 setHeight:54.0];
  }
}

- (void)_setMaskOnNavigationBar:(id)a3
{
  v4 = a3;
  [v4 size];
  v6 = v5;
  v8 = v7;
  [v4 capInsets];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = [(ExtensionFlowViewController *)self navigationController];
  v18 = [v17 navigationBar];
  [v18 _setCornerRadius:v10];

  v19 = [(ExtensionFlowViewController *)self navigationController];
  v20 = [v19 navigationBar];
  [v20 setClipsToBounds:1];

  v21 = [(ExtensionFlowViewController *)self navigationController];
  v22 = [v21 navigationBar];
  v24 = [v22 layer];

  v23 = [v4 CGImage];
  [v24 setCornerContents:v23];
  [v24 setCornerContentsCenter:{v12 / v6, v10 / v8, (v6 - (v16 + v12)) / v6, (v8 - (v14 + v10)) / v8}];
}

- (void)setupContainerViewWithRootViewController:(id)a3
{
  v4 = a3;
  v5 = [[UINavigationController alloc] initWithRootViewController:v4];

  [(ExtensionFlowViewController *)self setNavigationController:v5];
  v6 = objc_opt_new();
  v7 = [(ExtensionFlowViewController *)self navigationController];
  [v7 setNavigationBar:v6];

  v8 = [(ExtensionFlowViewController *)self navigationController];
  v9 = [v8 navigationBar];
  [v9 setTranslucent:1];

  v10 = [(ExtensionFlowViewController *)self navigationController];
  v11 = [v10 view];
  [(ExtensionFlowViewController *)self setContentContainerView:v11];

  v12 = [(ExtensionFlowViewController *)self view];
  v13 = [(ExtensionFlowViewController *)self contentContainerView];
  [v12 addSubview:v13];

  v14 = [(ExtensionFlowViewController *)self contentContainerView];
  [v14 setTranslatesAutoresizingMaskIntoConstraints:0];

  v35 = [(ExtensionFlowViewController *)self contentContainerView];
  v33 = [v35 leadingAnchor];
  v34 = [(ExtensionFlowViewController *)self view];
  v32 = [v34 leadingAnchor];
  v31 = [v33 constraintEqualToAnchor:v32];
  v36[0] = v31;
  v30 = [(ExtensionFlowViewController *)self contentContainerView];
  v28 = [v30 trailingAnchor];
  v29 = [(ExtensionFlowViewController *)self view];
  v27 = [v29 trailingAnchor];
  v26 = [v28 constraintEqualToAnchor:v27];
  v36[1] = v26;
  v25 = [(ExtensionFlowViewController *)self contentContainerView];
  v15 = [v25 topAnchor];
  v16 = [(ExtensionFlowViewController *)self view];
  v17 = [v16 topAnchor];
  v18 = [v15 constraintEqualToAnchor:v17];
  v36[2] = v18;
  v19 = [(ExtensionFlowViewController *)self contentContainerView];
  v20 = [v19 bottomAnchor];
  v21 = [(ExtensionFlowViewController *)self view];
  v22 = [v21 bottomAnchor];
  v23 = [v20 constraintEqualToAnchor:v22];
  v36[3] = v23;
  v24 = [NSArray arrayWithObjects:v36 count:4];
  [NSLayoutConstraint activateConstraints:v24];
}

- (void)setScrollContentOffset:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = [(ExtensionFlowViewController *)self containerScrollView];
  [v5 setContentOffset:1 animated:{x, y}];
}

- (void)popViewController
{
  v3 = [(ExtensionFlowViewController *)self navigationController];
  v2 = [v3 popViewControllerAnimated:1];
}

- (BOOL)viewControllerUseExtensionFlowHeader:(id)a3
{
  v3 = a3;
  if ([v3 conformsToProtocol:&OBJC_PROTOCOL___ExtensionFlowViewControllerChildController] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v4 = [v3 useExtensionFlowHeader];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)pushViewController:(id)a3
{
  v19 = a3;
  v4 = [(ExtensionFlowViewController *)self viewControllerUseExtensionFlowHeader:?];
  if (v4)
  {
    v5 = [(ExtensionFlowViewController *)self headerView];
    v6 = [v19 navigationItem];
    [v6 setTitleView:v5];

    v7 = [v19 navigationItem];
    [v7 setLeftBarButtonItem:0];

    v8 = [v19 navigationItem];
    [v8 setRightBarButtonItem:0];

    v9 = [v19 navigationItem];
    [v9 setHidesBackButton:1];
  }

  v10 = [v19 navigationItem];
  [v10 _setMinimumDesiredHeight:0 forBarMetrics:44.0];

  v11 = [v19 navigationItem];
  [v11 _setMinimumDesiredHeight:1 forBarMetrics:44.0];

  v12 = [(ExtensionFlowViewController *)self navigationController];

  if (v12)
  {
    v13 = [(ExtensionFlowViewController *)self navigationController];
    v14 = [v13 topViewController];
    v15 = [(ExtensionFlowViewController *)self viewControllerUseExtensionFlowHeader:v14];

    v16 = [(ExtensionFlowViewController *)self navigationController];
    v17 = [v16 navigationBar];
    [v17 setSupressTransition:v4 & v15];

    v18 = [(ExtensionFlowViewController *)self navigationController];
    [v18 pushViewController:v19 animated:1];
  }

  else
  {
    [(ExtensionFlowViewController *)self setupContainerViewWithRootViewController:v19];
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

- (void)handleDismissAction:(id)a3
{
  v4 = [(ExtensionFlowViewController *)self navigationController];
  v5 = [v4 viewControllers];
  v6 = [v5 lastObject];
  v7 = [(ExtensionFlowViewController *)self navigationController];
  v8 = [v7 rootViewController];

  if (v6 == v8)
  {
    v11 = [(ExtensionFlowViewController *)self headerView];
    v9 = [v11 delegate];
    v10 = [(ExtensionFlowViewController *)self headerView];
    [v9 extensionFlowHeaderViewDidTapDismiss:v10];
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
  v3 = [(ExtensionFlowViewController *)self view];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];

  v4 = +[UIColor clearColor];
  v5 = [(ExtensionFlowViewController *)self view];
  [v5 setBackgroundColor:v4];

  [(ExtensionFlowViewController *)self setupHeaderView];
}

- (ExtensionFlowViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v11.receiver = self;
  v11.super_class = ExtensionFlowViewController;
  v4 = [(ExtensionFlowViewController *)&v11 initWithNibName:a3 bundle:a4];
  v5 = v4;
  if (v4)
  {
    v6 = [(ContaineeViewController *)v4 cardPresentationController];
    [v6 setPresentedModally:1];

    v7 = [(ContaineeViewController *)v5 cardPresentationController];
    [v7 setTakesAvailableHeight:1];

    v8 = [(ContaineeViewController *)v5 cardPresentationController];
    [v8 setAllowsSwipeToDismiss:0];

    v9 = [(ContaineeViewController *)v5 cardPresentationController];
    [v9 setBlurInCardView:0];
  }

  return v5;
}

@end