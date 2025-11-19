@interface DirectionsStepsTableViewController
- (BOOL)shouldShowDebugViewController;
- (DirectionsStepsTableViewController)init;
- (GEOComposedRoute)route;
- (NavigationDebugViewsController)debugViewsController;
- (RouteStepListDelegate)delegate;
- (UIScrollViewDelegate)scrollViewDelegate;
- (UITableView)tableView;
- (id)routeStepForIndexPath:(id)a3;
- (unint64_t)options;
- (void)setDebugViewControllerEnabled:(BOOL)a3;
- (void)setDelegate:(id)a3;
- (void)setOptions:(unint64_t)a3;
- (void)setRoute:(id)a3;
- (void)setScrollViewDelegate:(id)a3;
- (void)updateTheme;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewLayoutMarginsDidChange;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation DirectionsStepsTableViewController

- (void)viewDidAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = DirectionsStepsTableViewController;
  [(DirectionsStepsTableViewController *)&v5 viewDidAppear:a3];
  v4 = [(DirectionsStepsTableViewController *)self dataSource];
  [v4 scrollToCurrentStep];
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v5 = [(DirectionsStepsTableViewController *)self dataSource];
  [v5 suspendAutoscrollingToStep];

  v6 = [(DirectionsStepsTableViewController *)self dataSource];
  [v6 reloadData];

  v7 = [(DirectionsStepsTableViewController *)self dataSource];
  [v7 resumeAutoscrollingToStep];

  v8.receiver = self;
  v8.super_class = DirectionsStepsTableViewController;
  [(DirectionsStepsTableViewController *)&v8 viewWillAppear:v3];
}

- (void)updateTheme
{
  v4.receiver = self;
  v4.super_class = DirectionsStepsTableViewController;
  [(MapsThemeViewController *)&v4 updateTheme];
  v3 = [(DirectionsStepsTableViewController *)self tableView];
  [v3 reloadData];
}

- (void)setDebugViewControllerEnabled:(BOOL)a3
{
  if (self->_debugViewControllerEnabled != a3)
  {
    self->_debugViewControllerEnabled = a3;
    if (a3)
    {
      v4 = [(DirectionsStepsTableViewController *)self debugViewsController];
      v5 = [v4 debugControlsView];

      [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
      v6 = [(DirectionsStepsTableViewController *)self view];
      [v6 addSubview:v5];

      v46 = [v5 leadingAnchor];
      v47 = [(DirectionsStepsTableViewController *)self view];
      v45 = [v47 safeAreaLayoutGuide];
      v44 = [v45 leadingAnchor];
      v43 = [v46 constraintEqualToAnchor:v44 constant:8.0];
      v49[0] = v43;
      v41 = [v5 trailingAnchor];
      v42 = [(DirectionsStepsTableViewController *)self view];
      v40 = [v42 safeAreaLayoutGuide];
      v7 = [v40 trailingAnchor];
      v8 = [v41 constraintEqualToAnchor:v7 constant:-8.0];
      v49[1] = v8;
      v9 = [v5 bottomAnchor];
      v10 = [(DirectionsStepsTableViewController *)self view];
      v11 = [v10 safeAreaLayoutGuide];
      v12 = [v11 bottomAnchor];
      v13 = [v9 constraintEqualToAnchor:v12 constant:-8.0];
      v49[2] = v13;
      v14 = [NSArray arrayWithObjects:v49 count:3];
      [NSLayoutConstraint activateConstraints:v14];

      v15 = [(DirectionsStepsTableViewController *)self debugViewsController];
      [v15 didManuallyAddDebugViews];

      v16 = [(DirectionsStepsTableViewController *)self tableView];
      [v16 bounds];
      v18 = v17;
      v20 = v19;
      v22 = v21;
      v24 = v23;

      v25 = [(DirectionsStepsTableViewController *)self debugViewsController];
      [v25 debugViewHeight];
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
      [v5 setFrame:{0.0, v29, v22, v27}];
      left = UIEdgeInsetsZero.left;
      right = UIEdgeInsetsZero.right;
      v53.origin.x = 0.0;
      v53.origin.y = v29;
      v53.size.width = v22;
      v53.size.height = v27;
      v32 = CGRectGetHeight(v53);
      v33 = [(DirectionsStepsTableViewController *)self tableView];
      [v33 setContentInset:{UIEdgeInsetsZero.top, left, v32, right}];
    }

    else if (self->_debugViewsController)
    {
      v34 = [(DirectionsStepsTableViewController *)self debugViewsController];
      v35 = [v34 debugControlsView];
      [v35 removeFromSuperview];

      v36 = [(DirectionsStepsTableViewController *)self debugViewsController];
      [v36 didManuallyRemoveDebugViews];

      v37 = UIEdgeInsetsZero.left;
      bottom = UIEdgeInsetsZero.bottom;
      v39 = UIEdgeInsetsZero.right;
      v48 = [(DirectionsStepsTableViewController *)self tableView];
      [v48 setContentInset:{UIEdgeInsetsZero.top, v37, bottom, v39}];
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
      v8 = [v7 isCarAppSceneHostingNavigation];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = [(DirectionsStepsTableViewController *)self dataSource];
  if ([v9 enableNavigationUpdates])
  {
    v10 = +[MNNavigationService sharedService];
    v11 = [v10 isNavigatingFromTrace];
  }

  else
  {
    v11 = 0;
  }

  return v4 & v8 & v11;
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
    v7 = [v6 isCurrentlyConnectedToCarAppScene];

    debugViewsController = self->_debugViewsController;
    if (v7)
    {
      v8 = +[CarDisplayController sharedInstance];
      v9 = [v8 chromeViewController];
      v10 = [v9 mapView];
      [(NavigationDebugViewsController *)debugViewsController setMapView:v10];

      debugViewsController = self->_debugViewsController;
    }
  }

  return debugViewsController;
}

- (void)setScrollViewDelegate:(id)a3
{
  v4 = a3;
  v5 = [(DirectionsStepsTableViewController *)self dataSource];
  [v5 setScrollViewDelegate:v4];
}

- (UIScrollViewDelegate)scrollViewDelegate
{
  v2 = [(DirectionsStepsTableViewController *)self dataSource];
  v3 = [v2 scrollViewDelegate];

  return v3;
}

- (id)routeStepForIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(DirectionsStepsTableViewController *)self dataSource];
  v6 = [v5 routeStepForIndexPath:v4];

  return v6;
}

- (void)setDelegate:(id)a3
{
  v4 = a3;
  v5 = [(DirectionsStepsTableViewController *)self dataSource];
  [v5 setDelegate:v4];
}

- (RouteStepListDelegate)delegate
{
  v2 = [(DirectionsStepsTableViewController *)self dataSource];
  v3 = [v2 delegate];

  return v3;
}

- (void)setOptions:(unint64_t)a3
{
  v4 = [(DirectionsStepsTableViewController *)self dataSource];
  [v4 setOptions:a3];
}

- (unint64_t)options
{
  v2 = [(DirectionsStepsTableViewController *)self dataSource];
  v3 = [v2 options];

  return v3;
}

- (void)setRoute:(id)a3
{
  v4 = a3;
  v5 = [(DirectionsStepsTableViewController *)self dataSource];
  [v5 setRoute:v4];
}

- (GEOComposedRoute)route
{
  v2 = [(DirectionsStepsTableViewController *)self dataSource];
  v3 = [v2 route];

  return v3;
}

- (void)viewLayoutMarginsDidChange
{
  v4.receiver = self;
  v4.super_class = DirectionsStepsTableViewController;
  [(DirectionsStepsTableViewController *)&v4 viewLayoutMarginsDidChange];
  v3 = [(DirectionsStepsTableViewController *)self dataSource];
  [v3 invalidateLayoutAndReloadData];
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
  v4 = [(DirectionsStepsTableViewController *)self view];
  [v4 bounds];
  v9 = [(MapsThemeTableView *)v3 initWithFrame:[(DirectionsStepsTableViewController *)self tableViewStyle] style:v5, v6, v7, v8];

  [(MapsThemeTableView *)v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(MapsThemeTableView *)v9 setInsetsLayoutMarginsFromSafeArea:1];
  [(MapsThemeTableView *)v9 setInsetsContentViewsToSafeArea:1];
  v10 = +[UIColor separatorColor];
  [(MapsThemeTableView *)v9 setSeparatorColor:v10];

  v11 = [(DirectionsStepsTableViewController *)self view];
  [v11 addSubview:v9];

  [(DirectionsStepsTableViewController *)self setTableView:v9];
  v12 = [(DirectionsStepsTableViewController *)self dataSource];
  [v12 setTableView:v9];

  v13 = [(DirectionsStepsTableViewController *)self dataSource];
  v14 = [(DirectionsStepsTableViewController *)self tableView];
  [v14 setDelegate:v13];

  v15 = [(DirectionsStepsTableViewController *)self dataSource];
  v16 = [(DirectionsStepsTableViewController *)self tableView];
  [v16 setDataSource:v15];

  v17 = [(DirectionsStepsTableViewController *)self view];
  LODWORD(v18) = 1148846080;
  v19 = [(MapsThemeTableView *)v9 _maps_constraintsEqualToEdgesOfView:v17 priority:v18];

  v20 = [v19 topConstraint];
  tableTopEdgeConstraint = self->_tableTopEdgeConstraint;
  self->_tableTopEdgeConstraint = v20;

  v22 = [v19 allConstraints];
  [NSLayoutConstraint activateConstraints:v22];

  v23 = [(DirectionsStepsTableViewController *)self dataSource];
  v24 = [(DirectionsStepsTableViewController *)self view];
  [v23 setCollapsingHeaderSuperview:v24 topAnchorConstraint:self->_tableTopEdgeConstraint];

  [(NSLayoutConstraint *)self->_tableTopEdgeConstraint constant];
  self->_showsHairline = v25 > 2.22044605e-16;
  v26 = [(DirectionsStepsTableViewController *)self dataSource];
  [v26 setScrollDirectionHandler:&stru_10164E070];

  v27 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  v28 = [(DirectionsStepsTableViewController *)self tableView];
  [v28 setTableFooterView:v27];

  v29 = [(DirectionsStepsTableViewController *)self tableView];
  [v29 setBackgroundView:0];

  v30 = +[UIColor clearColor];
  v31 = [(DirectionsStepsTableViewController *)self tableView];
  [v31 setBackgroundColor:v30];

  v32 = [(DirectionsStepsTableViewController *)self tableView];
  [v32 setSeparatorInset:{0.0, 16.0, 0.0, 16.0}];

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