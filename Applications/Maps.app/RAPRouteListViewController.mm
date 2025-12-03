@interface RAPRouteListViewController
- (RAPRouteListViewController)initWithReport:(id)report delegate:(id)delegate;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)_dismiss;
- (void)_displayEmptyState;
- (void)_setupViews;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation RAPRouteListViewController

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  tableView = self->_tableView;
  pathCopy = path;
  [(UITableView *)tableView deselectRowAtIndexPath:pathCopy animated:1];
  requests = self->_requests;
  v8 = [pathCopy row];

  v10 = [(NSArray *)requests objectAtIndexedSubscript:v8];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained rapRouteListViewController:self didSelectRequest:v10];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithIdentifier:@"kRAPRouteCellReuseIdentifier" forIndexPath:pathCopy];
  requests = self->_requests;
  v9 = [pathCopy row];

  v10 = [(NSArray *)requests objectAtIndexedSubscript:v9];
  [v7 configureWithRequest:v10];

  return v7;
}

- (void)_dismiss
{
  v3 = +[MKMapService sharedService];
  [v3 captureUserAction:10109 onTarget:69 eventValue:0];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained rapRouteListViewControllerDidDismiss:self];
}

- (void)_displayEmptyState
{
  v3 = objc_alloc_init(ErrorModeView);
  errorModeView = self->_errorModeView;
  self->_errorModeView = v3;

  [(ErrorModeView *)self->_errorModeView setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = self->_errorModeView;
  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:@"[RAP Web UI] No Recent Routes" value:@"localized string not found" table:0];
  v8 = +[NSBundle mainBundle];
  v9 = [v8 localizedStringForKey:@"[RAP Web UI] No Recent Routes Description" value:@"localized string not found" table:0];
  [(ErrorModeView *)v5 setTitle:v7 andMessage:v9];

  [(ErrorModeView *)self->_errorModeView setTitleLabelFontProvider:&stru_10165DA28];
  [(ErrorModeView *)self->_errorModeView setMessageLabelFontProvider:&stru_10165DAE8];
  view = [(RAPRouteListViewController *)self view];
  [view insertSubview:self->_errorModeView aboveSubview:self->_tableView];

  v11 = self->_errorModeView;
  view2 = [(RAPRouteListViewController *)self view];
  v12 = [(ErrorModeView *)v11 _maps_constraintsForCenteringInView:view2];
  [NSLayoutConstraint activateConstraints:v12];
}

- (void)_setupViews
{
  v17 = [MapsTheme visualEffectViewAllowingBlur:1];
  v3 = [[UITableView alloc] initWithFrame:2 style:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  tableView = self->_tableView;
  self->_tableView = v3;

  [(UITableView *)self->_tableView setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = +[UIColor clearColor];
  [(UITableView *)self->_tableView setBackgroundColor:v5];

  [(UITableView *)self->_tableView setBackgroundView:v17];
  LODWORD(v6) = 1148846080;
  [(UITableView *)self->_tableView setContentCompressionResistancePriority:0 forAxis:v6];
  LODWORD(v7) = 1148846080;
  [(UITableView *)self->_tableView setContentCompressionResistancePriority:1 forAxis:v7];
  [(UITableView *)self->_tableView setDataSource:self];
  [(UITableView *)self->_tableView setDelegate:self];
  [(UITableView *)self->_tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"kRAPRouteCellReuseIdentifier"];
  view = [(RAPRouteListViewController *)self view];
  [view addSubview:self->_tableView];

  v9 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:1 target:self action:"_onCancelPressed:"];
  navigationItem = [(RAPRouteListViewController *)self navigationItem];
  [navigationItem setLeftBarButtonItem:v9];

  v11 = +[NSBundle mainBundle];
  v12 = [v11 localizedStringForKey:@"[RAP Web UI] Report an Issue" value:@"localized string not found" table:0];
  navigationItem2 = [(RAPRouteListViewController *)self navigationItem];
  [navigationItem2 setTitle:v12];

  v14 = self->_tableView;
  view2 = [(RAPRouteListViewController *)self view];
  v16 = [(UITableView *)v14 _maps_constraintsForCenteringInView:view2];
  [NSLayoutConstraint activateConstraints:v16];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v7.receiver = self;
  v7.super_class = RAPRouteListViewController;
  [(RAPRouteListViewController *)&v7 viewWillDisappear:disappear];
  traitCollection = [(RAPRouteListViewController *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (!userInterfaceIdiom)
  {
    v6 = +[UIApplication sharedMapsDelegate];
    [v6 setLockedOrientations:0];
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v9.receiver = self;
  v9.super_class = RAPRouteListViewController;
  [(RAPRouteListViewController *)&v9 viewWillAppear:?];
  traitCollection = [(RAPRouteListViewController *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (!userInterfaceIdiom)
  {
    v7 = +[UIApplication sharedMapsDelegate];
    [v7 setLockedOrientations:2];

    v8 = +[UIDevice currentDevice];
    [v8 setOrientation:1 animated:appearCopy];
  }

  if (![(NSArray *)self->_requests count])
  {
    [(RAPRouteListViewController *)self _displayEmptyState];
  }
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = RAPRouteListViewController;
  [(RAPRouteListViewController *)&v3 viewDidLoad];
  [(RAPRouteListViewController *)self _setupViews];
}

- (RAPRouteListViewController)initWithReport:(id)report delegate:(id)delegate
{
  reportCopy = report;
  delegateCopy = delegate;
  v16.receiver = self;
  v16.super_class = RAPRouteListViewController;
  v9 = [(RAPRouteListViewController *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeWeak(&v9->_delegate, delegateCopy);
    objc_storeStrong(&v10->_report, report);
    _context = [(RAPReport *)v10->_report _context];
    directionsHistory = [_context directionsHistory];
    v13 = sub_1000282CC(directionsHistory, &stru_10162D898);
    requests = v10->_requests;
    v10->_requests = v13;
  }

  return v10;
}

@end