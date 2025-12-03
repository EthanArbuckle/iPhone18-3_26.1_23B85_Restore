@interface DirectionsStepsTableViewController
- (BOOL)shouldShowDebugViewController;
- (DirectionsStepsTableViewController)init;
- (GEOComposedRoute)route;
- (NavigationDebugViewsController)debugViewsController;
- (RouteStepListDelegate)delegate;
- (UIScrollViewDelegate)scrollViewDelegate;
- (UITableView)tableView;
- (id)routeStepForIndexPath:(id)path;
- (unint64_t)options;
- (void)setDebugViewControllerEnabled:(BOOL)enabled;
- (void)setDelegate:(id)delegate;
- (void)setOptions:(unint64_t)options;
- (void)setRoute:(id)route;
- (void)setScrollViewDelegate:(id)delegate;
- (void)updateTheme;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewLayoutMarginsDidChange;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation DirectionsStepsTableViewController

- (void)viewDidAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = DirectionsStepsTableViewController;
  [(DirectionsStepsTableViewController *)&v5 viewDidAppear:appear];
  dataSource = [(DirectionsStepsTableViewController *)self dataSource];
  [dataSource scrollToCurrentStep];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  dataSource = [(DirectionsStepsTableViewController *)self dataSource];
  [dataSource suspendAutoscrollingToStep];

  dataSource2 = [(DirectionsStepsTableViewController *)self dataSource];
  [dataSource2 reloadData];

  dataSource3 = [(DirectionsStepsTableViewController *)self dataSource];
  [dataSource3 resumeAutoscrollingToStep];

  v8.receiver = self;
  v8.super_class = DirectionsStepsTableViewController;
  [(DirectionsStepsTableViewController *)&v8 viewWillAppear:appearCopy];
}

- (void)updateTheme
{
  v4.receiver = self;
  v4.super_class = DirectionsStepsTableViewController;
  [(MapsThemeViewController *)&v4 updateTheme];
  tableView = [(DirectionsStepsTableViewController *)self tableView];
  [tableView reloadData];
}

- (void)setDebugViewControllerEnabled:(BOOL)enabled
{
  if (self->_debugViewControllerEnabled != enabled)
  {
    self->_debugViewControllerEnabled = enabled;
    if (enabled)
    {
      debugViewsController = [(DirectionsStepsTableViewController *)self debugViewsController];
      debugControlsView = [debugViewsController debugControlsView];

      [debugControlsView setTranslatesAutoresizingMaskIntoConstraints:0];
      view = [(DirectionsStepsTableViewController *)self view];
      [view addSubview:debugControlsView];

      leadingAnchor = [debugControlsView leadingAnchor];
      view2 = [(DirectionsStepsTableViewController *)self view];
      safeAreaLayoutGuide = [view2 safeAreaLayoutGuide];
      leadingAnchor2 = [safeAreaLayoutGuide leadingAnchor];
      v43 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:8.0];
      v49[0] = v43;
      trailingAnchor = [debugControlsView trailingAnchor];
      view3 = [(DirectionsStepsTableViewController *)self view];
      safeAreaLayoutGuide2 = [view3 safeAreaLayoutGuide];
      trailingAnchor2 = [safeAreaLayoutGuide2 trailingAnchor];
      v8 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-8.0];
      v49[1] = v8;
      bottomAnchor = [debugControlsView bottomAnchor];
      view4 = [(DirectionsStepsTableViewController *)self view];
      safeAreaLayoutGuide3 = [view4 safeAreaLayoutGuide];
      bottomAnchor2 = [safeAreaLayoutGuide3 bottomAnchor];
      v13 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-8.0];
      v49[2] = v13;
      v14 = [NSArray arrayWithObjects:v49 count:3];
      [NSLayoutConstraint activateConstraints:v14];

      debugViewsController2 = [(DirectionsStepsTableViewController *)self debugViewsController];
      [debugViewsController2 didManuallyAddDebugViews];

      tableView = [(DirectionsStepsTableViewController *)self tableView];
      [tableView bounds];
      v18 = v17;
      v20 = v19;
      v22 = v21;
      v24 = v23;

      debugViewsController3 = [(DirectionsStepsTableViewController *)self debugViewsController];
      [debugViewsController3 debugViewHeight];
      v27 = v26;

      v51.origin.x = v18;
      v51.origin.y = v20;
      v51.size.width = v22;
      v51.size.height = v24;
      Height = CGRectGetHeight(v51);
      v52.origin.x = v18;
      v52.origin.y = v20;
      v52.size.width = v22;
      v52.size.height = v27;
      v29 = Height - CGRectGetHeight(v52);
      [debugControlsView setFrame:{0.0, v29, v22, v27}];
      left = UIEdgeInsetsZero.left;
      right = UIEdgeInsetsZero.right;
      v53.origin.x = 0.0;
      v53.origin.y = v29;
      v53.size.width = v22;
      v53.size.height = v27;
      v32 = CGRectGetHeight(v53);
      tableView2 = [(DirectionsStepsTableViewController *)self tableView];
      [tableView2 setContentInset:{UIEdgeInsetsZero.top, left, v32, right}];
    }

    else if (self->_debugViewsController)
    {
      debugViewsController4 = [(DirectionsStepsTableViewController *)self debugViewsController];
      debugControlsView2 = [debugViewsController4 debugControlsView];
      [debugControlsView2 removeFromSuperview];

      debugViewsController5 = [(DirectionsStepsTableViewController *)self debugViewsController];
      [debugViewsController5 didManuallyRemoveDebugViews];

      v37 = UIEdgeInsetsZero.left;
      bottom = UIEdgeInsetsZero.bottom;
      v39 = UIEdgeInsetsZero.right;
      tableView3 = [(DirectionsStepsTableViewController *)self tableView];
      [tableView3 setContentInset:{UIEdgeInsetsZero.top, v37, bottom, v39}];
    }
  }
}

- (BOOL)shouldShowDebugViewController
{
  v3 = +[NSUserDefaults standardUserDefaults];
  v4 = [v3 BOOLForKey:@"PlaybackControls"];

  v5 = +[CarDisplayController sharedInstance];
  if (v5)
  {
    v6 = +[CarDisplayController sharedInstance];
    if ([v6 isCurrentlyConnectedToCarAppScene])
    {
      v7 = +[CarDisplayController sharedInstance];
      isCarAppSceneHostingNavigation = [v7 isCarAppSceneHostingNavigation];
    }

    else
    {
      isCarAppSceneHostingNavigation = 0;
    }
  }

  else
  {
    isCarAppSceneHostingNavigation = 0;
  }

  dataSource = [(DirectionsStepsTableViewController *)self dataSource];
  if ([dataSource enableNavigationUpdates])
  {
    v10 = +[MNNavigationService sharedService];
    isNavigatingFromTrace = [v10 isNavigatingFromTrace];
  }

  else
  {
    isNavigatingFromTrace = 0;
  }

  return v4 & isCarAppSceneHostingNavigation & isNavigatingFromTrace;
}

- (NavigationDebugViewsController)debugViewsController
{
  debugViewsController = self->_debugViewsController;
  if (!debugViewsController)
  {
    v4 = [[NavigationDebugViewsController alloc] initWithDelegate:0];
    v5 = self->_debugViewsController;
    self->_debugViewsController = v4;

    [(NavigationDebugViewsController *)self->_debugViewsController setShowTraceControlsForStaleLocations:0];
    [(NavigationDebugViewsController *)self->_debugViewsController setAutomaticallyHideTraceControls:0];
    [(NavigationDebugViewsController *)self->_debugViewsController setUpCameraSnapshotPickerVCFromViewController:self];
    v6 = +[CarDisplayController sharedInstance];
    isCurrentlyConnectedToCarAppScene = [v6 isCurrentlyConnectedToCarAppScene];

    debugViewsController = self->_debugViewsController;
    if (isCurrentlyConnectedToCarAppScene)
    {
      v8 = +[CarDisplayController sharedInstance];
      chromeViewController = [v8 chromeViewController];
      mapView = [chromeViewController mapView];
      [(NavigationDebugViewsController *)debugViewsController setMapView:mapView];

      debugViewsController = self->_debugViewsController;
    }
  }

  return debugViewsController;
}

- (void)setScrollViewDelegate:(id)delegate
{
  delegateCopy = delegate;
  dataSource = [(DirectionsStepsTableViewController *)self dataSource];
  [dataSource setScrollViewDelegate:delegateCopy];
}

- (UIScrollViewDelegate)scrollViewDelegate
{
  dataSource = [(DirectionsStepsTableViewController *)self dataSource];
  scrollViewDelegate = [dataSource scrollViewDelegate];

  return scrollViewDelegate;
}

- (id)routeStepForIndexPath:(id)path
{
  pathCopy = path;
  dataSource = [(DirectionsStepsTableViewController *)self dataSource];
  v6 = [dataSource routeStepForIndexPath:pathCopy];

  return v6;
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  dataSource = [(DirectionsStepsTableViewController *)self dataSource];
  [dataSource setDelegate:delegateCopy];
}

- (RouteStepListDelegate)delegate
{
  dataSource = [(DirectionsStepsTableViewController *)self dataSource];
  delegate = [dataSource delegate];

  return delegate;
}

- (void)setOptions:(unint64_t)options
{
  dataSource = [(DirectionsStepsTableViewController *)self dataSource];
  [dataSource setOptions:options];
}

- (unint64_t)options
{
  dataSource = [(DirectionsStepsTableViewController *)self dataSource];
  options = [dataSource options];

  return options;
}

- (void)setRoute:(id)route
{
  routeCopy = route;
  dataSource = [(DirectionsStepsTableViewController *)self dataSource];
  [dataSource setRoute:routeCopy];
}

- (GEOComposedRoute)route
{
  dataSource = [(DirectionsStepsTableViewController *)self dataSource];
  route = [dataSource route];

  return route;
}

- (void)viewLayoutMarginsDidChange
{
  v4.receiver = self;
  v4.super_class = DirectionsStepsTableViewController;
  [(DirectionsStepsTableViewController *)&v4 viewLayoutMarginsDidChange];
  dataSource = [(DirectionsStepsTableViewController *)self dataSource];
  [dataSource invalidateLayoutAndReloadData];
}

- (void)viewDidLayoutSubviews
{
  v4.receiver = self;
  v4.super_class = DirectionsStepsTableViewController;
  [(DirectionsStepsTableViewController *)&v4 viewDidLayoutSubviews];
  [(NSLayoutConstraint *)self->_tableTopEdgeConstraint constant];
  if (self->_showsHairline != v3 > 2.22044605e-16)
  {
    [(DirectionsStepsTableViewController *)self setShowsHairline:v3 > 2.22044605e-16];
  }
}

- (void)viewDidLoad
{
  v33.receiver = self;
  v33.super_class = DirectionsStepsTableViewController;
  [(DirectionsStepsTableViewController *)&v33 viewDidLoad];
  v3 = [MapsThemeTableView alloc];
  view = [(DirectionsStepsTableViewController *)self view];
  [view bounds];
  v9 = [(MapsThemeTableView *)v3 initWithFrame:[(DirectionsStepsTableViewController *)self tableViewStyle] style:v5, v6, v7, v8];

  [(MapsThemeTableView *)v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(MapsThemeTableView *)v9 setInsetsLayoutMarginsFromSafeArea:1];
  [(MapsThemeTableView *)v9 setInsetsContentViewsToSafeArea:1];
  v10 = +[UIColor separatorColor];
  [(MapsThemeTableView *)v9 setSeparatorColor:v10];

  view2 = [(DirectionsStepsTableViewController *)self view];
  [view2 addSubview:v9];

  [(DirectionsStepsTableViewController *)self setTableView:v9];
  dataSource = [(DirectionsStepsTableViewController *)self dataSource];
  [dataSource setTableView:v9];

  dataSource2 = [(DirectionsStepsTableViewController *)self dataSource];
  tableView = [(DirectionsStepsTableViewController *)self tableView];
  [tableView setDelegate:dataSource2];

  dataSource3 = [(DirectionsStepsTableViewController *)self dataSource];
  tableView2 = [(DirectionsStepsTableViewController *)self tableView];
  [tableView2 setDataSource:dataSource3];

  view3 = [(DirectionsStepsTableViewController *)self view];
  LODWORD(v18) = 1148846080;
  v19 = [(MapsThemeTableView *)v9 _maps_constraintsEqualToEdgesOfView:view3 priority:v18];

  topConstraint = [v19 topConstraint];
  tableTopEdgeConstraint = self->_tableTopEdgeConstraint;
  self->_tableTopEdgeConstraint = topConstraint;

  allConstraints = [v19 allConstraints];
  [NSLayoutConstraint activateConstraints:allConstraints];

  dataSource4 = [(DirectionsStepsTableViewController *)self dataSource];
  view4 = [(DirectionsStepsTableViewController *)self view];
  [dataSource4 setCollapsingHeaderSuperview:view4 topAnchorConstraint:self->_tableTopEdgeConstraint];

  [(NSLayoutConstraint *)self->_tableTopEdgeConstraint constant];
  self->_showsHairline = v25 > 2.22044605e-16;
  dataSource5 = [(DirectionsStepsTableViewController *)self dataSource];
  [dataSource5 setScrollDirectionHandler:&stru_10164E070];

  v27 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  tableView3 = [(DirectionsStepsTableViewController *)self tableView];
  [tableView3 setTableFooterView:v27];

  tableView4 = [(DirectionsStepsTableViewController *)self tableView];
  [tableView4 setBackgroundView:0];

  v30 = +[UIColor clearColor];
  tableView5 = [(DirectionsStepsTableViewController *)self tableView];
  [tableView5 setBackgroundColor:v30];

  tableView6 = [(DirectionsStepsTableViewController *)self tableView];
  [tableView6 setSeparatorInset:{0.0, 16.0, 0.0, 16.0}];

  [(DirectionsStepsTableViewController *)self setDebugViewControllerEnabled:[(DirectionsStepsTableViewController *)self shouldShowDebugViewController]];
}

- (UITableView)tableView
{
  [(DirectionsStepsTableViewController *)self loadViewIfNeeded];
  WeakRetained = objc_loadWeakRetained(&self->_tableView);

  return WeakRetained;
}

- (DirectionsStepsTableViewController)init
{
  v6.receiver = self;
  v6.super_class = DirectionsStepsTableViewController;
  v2 = [(DirectionsStepsTableViewController *)&v6 initWithNibName:0 bundle:0];
  if (v2)
  {
    v3 = objc_alloc_init([objc_opt_class() dataSourceClass]);
    dataSource = v2->_dataSource;
    v2->_dataSource = v3;
  }

  return v2;
}

@end