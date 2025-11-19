@interface RAPRouteListViewController
- (RAPRouteListViewController)initWithReport:(id)a3 delegate:(id)a4;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)_dismiss;
- (void)_displayEmptyState;
- (void)_setupViews;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation RAPRouteListViewController

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  tableView = self->_tableView;
  v6 = a4;
  [(UITableView *)tableView deselectRowAtIndexPath:v6 animated:1];
  requests = self->_requests;
  v8 = [v6 row];

  v10 = [(NSArray *)requests objectAtIndexedSubscript:v8];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained rapRouteListViewController:self didSelectRequest:v10];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithIdentifier:@"kRAPRouteCellReuseIdentifier" forIndexPath:v6];
  requests = self->_requests;
  v9 = [v6 row];

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
  v10 = [(RAPRouteListViewController *)self view];
  [v10 insertSubview:self->_errorModeView aboveSubview:self->_tableView];

  v11 = self->_errorModeView;
  v13 = [(RAPRouteListViewController *)self view];
  v12 = [(ErrorModeView *)v11 _maps_constraintsForCenteringInView:v13];
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
  v8 = [(RAPRouteListViewController *)self view];
  [v8 addSubview:self->_tableView];

  v9 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:1 target:self action:"_onCancelPressed:"];
  v10 = [(RAPRouteListViewController *)self navigationItem];
  [v10 setLeftBarButtonItem:v9];

  v11 = +[NSBundle mainBundle];
  v12 = [v11 localizedStringForKey:@"[RAP Web UI] Report an Issue" value:@"localized string not found" table:0];
  v13 = [(RAPRouteListViewController *)self navigationItem];
  [v13 setTitle:v12];

  v14 = self->_tableView;
  v15 = [(RAPRouteListViewController *)self view];
  v16 = [(UITableView *)v14 _maps_constraintsForCenteringInView:v15];
  [NSLayoutConstraint activateConstraints:v16];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = RAPRouteListViewController;
  [(RAPRouteListViewController *)&v7 viewWillDisappear:a3];
  v4 = [(RAPRouteListViewController *)self traitCollection];
  v5 = [v4 userInterfaceIdiom];

  if (!v5)
  {
    v6 = +[UIApplication sharedMapsDelegate];
    [v6 setLockedOrientations:0];
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v9.receiver = self;
  v9.super_class = RAPRouteListViewController;
  [(RAPRouteListViewController *)&v9 viewWillAppear:?];
  v5 = [(RAPRouteListViewController *)self traitCollection];
  v6 = [v5 userInterfaceIdiom];

  if (!v6)
  {
    v7 = +[UIApplication sharedMapsDelegate];
    [v7 setLockedOrientations:2];

    v8 = +[UIDevice currentDevice];
    [v8 setOrientation:1 animated:v3];
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

- (RAPRouteListViewController)initWithReport:(id)a3 delegate:(id)a4
{
  v7 = a3;
  v8 = a4;
  v16.receiver = self;
  v16.super_class = RAPRouteListViewController;
  v9 = [(RAPRouteListViewController *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeWeak(&v9->_delegate, v8);
    objc_storeStrong(&v10->_report, a3);
    v11 = [(RAPReport *)v10->_report _context];
    v12 = [v11 directionsHistory];
    v13 = sub_1000282CC(v12, &stru_10162D898);
    requests = v10->_requests;
    v10->_requests = v13;
  }

  return v10;
}

@end