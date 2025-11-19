@interface EVOnboardingNetworksSelectionViewController
- (EVOnboardingNetworksSelectionViewController)initWithVehicle:(id)a3 delegate:(id)a4;
- (id)obViewController;
- (void)_nextPressed;
- (void)_updateNextButton;
- (void)didDeselectNetwork:(id)a3 isSuggested:(BOOL)a4;
- (void)didSelectNetwork:(id)a3 isSuggested:(BOOL)a4;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation EVOnboardingNetworksSelectionViewController

- (void)didDeselectNetwork:(id)a3 isSuggested:(BOOL)a4
{
  if (a4)
  {
    v5 = 439;
  }

  else
  {
    v5 = 448;
  }

  v6 = +[MKMapService sharedService];
  [v6 captureUserAction:v5 onTarget:122 eventValue:0];

  [(EVOnboardingNetworksSelectionViewController *)self _updateNextButton];
}

- (void)didSelectNetwork:(id)a3 isSuggested:(BOOL)a4
{
  if (a4)
  {
    v5 = 455;
  }

  else
  {
    v5 = 443;
  }

  v6 = +[MKMapService sharedService];
  [v6 captureUserAction:v5 onTarget:122 eventValue:0];

  [(EVOnboardingNetworksSelectionViewController *)self _updateNextButton];
}

- (void)_nextPressed
{
  v3 = sub_100798370();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = self;
    if (!v4)
    {
      v9 = @"<nil>";
      goto LABEL_10;
    }

    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    if (objc_opt_respondsToSelector())
    {
      v7 = [(EVOnboardingNetworksSelectionViewController *)v4 performSelector:"accessibilityIdentifier"];
      v8 = v7;
      if (v7 && ![v7 isEqualToString:v6])
      {
        v9 = [NSString stringWithFormat:@"%@<%p, %@>", v6, v4, v8];

        goto LABEL_8;
      }
    }

    v9 = [NSString stringWithFormat:@"%@<%p>", v6, v4];
LABEL_8:

LABEL_10:
    *buf = 138543618;
    v14 = v9;
    v15 = 2080;
    v16 = "[EVOnboardingNetworksSelectionViewController _nextPressed]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] %s", buf, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v11 = [(ChargingNetworksDataSource *)self->_dataSource selectedNetworks];
  v12 = [v11 allObjects];
  [WeakRetained networksSelectionViewController:self didSelectNetworks:v12 forVehicle:self->_vehicle];
}

- (void)_updateNextButton
{
  v6 = [(ChargingNetworksDataSource *)self->_dataSource selectedNetworks];
  v3 = [v6 count] != 0;
  v4 = [(EVOnboardingNetworksSelectionViewController *)self navigationItem];
  v5 = [v4 rightBarButtonItem];
  [v5 setEnabled:v3];
}

- (id)obViewController
{
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"[EV Onboarding] Choose Networks Title" value:@"localized string not found" table:0];

  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"[EV Onboarding] Choose Networks Subtitle" value:@"localized string not found" table:0];

  v7 = [(VGVehicle *)self->_vehicle combinedDisplayName];
  v8 = [NSString stringWithFormat:v6, v7];

  v9 = [[OBTableWelcomeController alloc] initWithTitle:v4 detailText:v8 symbolName:0 adoptTableViewScrollView:1];
  [v9 setModalPresentationStyle:2];
  v10 = [[UITableView alloc] initWithFrame:2 style:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [v9 setTableView:v10];

  v11 = [v9 tableView];
  [v11 setAllowsMultipleSelection:1];

  v12 = [v9 tableView];
  [v12 setTranslatesAutoresizingMaskIntoConstraints:0];

  v13 = [v9 tableView];
  LODWORD(v14) = 1148846080;
  [v13 setContentCompressionResistancePriority:1 forAxis:v14];

  dataSource = self->_dataSource;
  v16 = [v9 tableView];
  [v16 setDataSource:dataSource];

  v17 = self->_dataSource;
  v18 = [v9 tableView];
  [v18 setDelegate:v17];

  v19 = +[UIColor clearColor];
  v20 = [v9 tableView];
  [v20 setBackgroundColor:v19];

  v21 = [v9 tableView];
  [v21 registerClass:objc_opt_class() forCellReuseIdentifier:@"reuseIdentifier"];

  v22 = +[UIColor systemBackgroundColor];
  v23 = [v9 view];
  [v23 setBackgroundColor:v22];

  v24 = [v9 tableView];
  tableView = self->_tableView;
  self->_tableView = v24;

  return v9;
}

- (void)viewWillAppear:(BOOL)a3
{
  v24.receiver = self;
  v24.super_class = EVOnboardingNetworksSelectionViewController;
  [(EVOnboardingBaseViewController *)&v24 viewWillAppear:a3];
  v4 = 40;
  [(UITableView *)self->_tableView setDelegate:self->_dataSource];
  [(UITableView *)self->_tableView setDataSource:self->_dataSource];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = [(ChargingNetworksDataSource *)self->_dataSource selectedNetworks];
  v6 = [v5 countByEnumeratingWithState:&v20 objects:v31 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v21;
    v10 = "[EVOnboardingNetworksSelectionViewController viewWillAppear:]";
    *&v7 = 138412290;
    v19 = v7;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v12 = [(ChargingNetworksDataSource *)self->_dataSource indexPathForNetwork:*(*(&v20 + 1) + 8 * i), v19];
        if (v12)
        {
          [*(&self->super.super.super.super.isa + v4) selectRowAtIndexPath:v12 animated:0 scrollPosition:0];
        }

        else
        {
          v13 = sub_10006D178();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            v26 = v10;
            v27 = 2080;
            v28 = "EVOnboardingNetworksSelectionViewController.m";
            v29 = 1024;
            v30 = 86;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", buf, 0x1Cu);
          }

          if (sub_100E03634())
          {
            v14 = sub_10006D178();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
            {
              +[NSThread callStackSymbols];
              v15 = v4;
              v16 = v5;
              v18 = v17 = v10;
              *buf = v19;
              v26 = v18;
              _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);

              v10 = v17;
              v5 = v16;
              v4 = v15;
            }
          }
        }
      }

      v8 = [v5 countByEnumeratingWithState:&v20 objects:v31 count:16];
    }

    while (v8);
  }

  [(EVOnboardingNetworksSelectionViewController *)self _updateContent];
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = EVOnboardingNetworksSelectionViewController;
  [(EVOnboardingBaseViewController *)&v7 viewDidLoad];
  [(UISearchController *)self->_searchController setSearchResultsUpdater:self->_dataSource];
  [(UISearchController *)self->_searchController setObscuresBackgroundDuringPresentation:0];
  [(UISearchController *)self->_searchController setHidesNavigationBarDuringPresentation:0];
  v3 = [(UISearchController *)self->_searchController searchBar];
  [v3 setContentInset:{24.0, 24.0, 24.0, 24.0}];

  searchController = self->_searchController;
  v5 = [(EVOnboardingNetworksSelectionViewController *)self navigationItem];
  [v5 setSearchController:searchController];

  v6 = [(EVOnboardingNetworksSelectionViewController *)self navigationItem];
  [v6 setHidesSearchBarWhenScrolling:0];
}

- (EVOnboardingNetworksSelectionViewController)initWithVehicle:(id)a3 delegate:(id)a4
{
  v7 = a3;
  v8 = a4;
  v21.receiver = self;
  v21.super_class = EVOnboardingNetworksSelectionViewController;
  v9 = [(EVOnboardingBaseViewController *)&v21 initWithDelegate:v8];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_vehicle, a3);
    objc_storeWeak(&v10->_delegate, v8);
    v11 = [[_TtC4Maps26ChargingNetworksDataSource alloc] initWithExcludedNetworks:0 context:0 delegate:v10];
    dataSource = v10->_dataSource;
    v10->_dataSource = v11;

    v13 = [[UISearchController alloc] initWithSearchResultsController:0];
    searchController = v10->_searchController;
    v10->_searchController = v13;

    v15 = [UIBarButtonItem alloc];
    v16 = +[NSBundle mainBundle];
    v17 = [v16 localizedStringForKey:@"[EV Onboarding] Next" value:@"localized string not found" table:0];
    v18 = [v15 initWithTitle:v17 style:2 target:v10 action:"_nextPressed"];
    v19 = [(EVOnboardingNetworksSelectionViewController *)v10 navigationItem];
    [v19 setRightBarButtonItem:v18];

    [(EVOnboardingNetworksSelectionViewController *)v10 _updateNextButton];
  }

  return v10;
}

@end