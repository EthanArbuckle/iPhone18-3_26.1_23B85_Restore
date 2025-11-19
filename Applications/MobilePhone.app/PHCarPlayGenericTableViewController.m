@interface PHCarPlayGenericTableViewController
- (BOOL)_viewControllerWasSelected;
- (PHCarPlayGenericTableViewController)init;
- (id)preferredFocusEnvironments;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)filterType;
- (void)applicationBadgeChangedNotification:(id)a3;
- (void)carPlayInCallViewControllerAppearedNotification:(id)a3;
- (void)dealloc;
- (void)hardwareControlEventNotification:(id)a3;
- (void)loadView;
- (void)programmaticallySelectRowAtIndexPath:(id)a3;
- (void)setNoContentBannerShown:(BOOL)a3;
- (void)updateBadgeString;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation PHCarPlayGenericTableViewController

- (PHCarPlayGenericTableViewController)init
{
  v10.receiver = self;
  v10.super_class = PHCarPlayGenericTableViewController;
  v2 = [(PHCarPlayGenericTableViewController *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc_init(_UIFilteredDataSource);
    v4 = *(v2 + 25);
    *(v2 + 25) = v3;

    [*(v2 + 25) setTableDataSource:v2];
    [*(v2 + 25) setFilterType:{objc_msgSend(v2, "filterType")}];
    v5 = +[AVExternalDevice currentCarPlayExternalDevice];
    [v2 setCarPlayExternalDevice:v5];

    v6 = +[NSNotificationCenter defaultCenter];
    [v6 addObserver:v2 selector:"applicationBadgeChangedNotification:" name:PhoneRootViewControllerApplicationBadgeChangedNotification object:0];
    [v6 addObserver:v2 selector:"applicationBadgeChangedNotification:" name:@"PHCarPlayVoicemailManagerChangedNotification" object:0];
    v7 = AVExternalDeviceLimitedUIChangedNotification;
    v8 = [v2 carPlayExternalDevice];
    [v6 addObserver:v2 selector:"limitedUIChanged:" name:v7 object:v8];
  }

  return v2;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  [*(&self->_tableViewReloadIsRequiredOnViewWillAppear + 1) setDataSource:0];
  [*(&self->_tableViewReloadIsRequiredOnViewWillAppear + 1) setDelegate:0];
  [*(&self->_mainTableView + 1) setTableDataSource:0];
  v4.receiver = self;
  v4.super_class = PHCarPlayGenericTableViewController;
  [(PHCarPlayGenericTableViewController *)&v4 dealloc];
}

- (void)applicationBadgeChangedNotification:(id)a3
{
  v4 = PHDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = self;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "CarPlay table view controller told about badge changing (%@)", &v5, 0xCu);
  }

  [(PHCarPlayGenericTableViewController *)self updateBadgeString];
}

- (void)loadView
{
  v3 = [(PHCarPlayGenericTableViewController *)self navigationController];
  [v3 setNavigationBarHidden:1 animated:0];

  v6 = [[UITableView alloc] initWithFrame:{0.0, 0.0, 50.0, 50.0}];
  [(PHCarPlayGenericTableViewController *)self defaultRowHeight];
  [v6 setRowHeight:?];
  [v6 setDelegate:self];
  v4 = [(PHCarPlayGenericTableViewController *)self mainTableViewDataSource];
  [v6 setDataSource:v4];

  [v6 setAccessibilityIdentifier:@"PHCarPlayTableView"];
  if (_os_feature_enabled_impl())
  {
    v5 = +[UIColor clearColor];
    [v6 setBackgroundColor:v5];
  }

  [(PHCarPlayGenericTableViewController *)self setMainTableView:v6];
  [(PHCarPlayGenericTableViewController *)self setView:v6];
}

- (void)viewWillAppear:(BOOL)a3
{
  v8.receiver = self;
  v8.super_class = PHCarPlayGenericTableViewController;
  [(PHCarPlayGenericTableViewController *)&v8 viewWillAppear:a3];
  if ([(PHCarPlayGenericTableViewController *)self tableViewReloadIsRequiredOnViewWillAppear])
  {
    v4 = [(PHCarPlayGenericTableViewController *)self mainTableView];
    [v4 reloadData];

    [(PHCarPlayGenericTableViewController *)self setTableViewReloadIsRequiredOnViewWillAppear:0];
    v5 = [(PHCarPlayGenericTableViewController *)self mainTableView];
    v6 = [(PHCarPlayGenericTableViewController *)self mainTableView];
    v7 = [v6 indexPathForSelectedRow];
    [v5 deselectRowAtIndexPath:v7 animated:0];
  }
}

- (void)programmaticallySelectRowAtIndexPath:(id)a3
{
  v3 = a3;
  v4 = PHDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "PHCarPlayGenericTableViewController: programmaticallySelectRowAtIndexPath:%@", &v5, 0xCu);
  }
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = [NSString stringWithFormat:@"%s must be overridden by subclass", a4, "[PHCarPlayGenericTableViewController tableView:cellForRowAtIndexPath:]"];
  NSLog(@"** TUAssertion failure: %@", v6);

  if (_TUAssertShouldCrashApplication())
  {
    v7 = +[NSAssertionHandler currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"PHCarPlayGenericTableViewController.m" lineNumber:113 description:{@"%s must be overridden by subclass", "-[PHCarPlayGenericTableViewController tableView:cellForRowAtIndexPath:]"}];
  }

  return 0;
}

- (void)hardwareControlEventNotification:(id)a3
{
  v4 = a3;
  v5 = PHDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412290;
    v16 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "PHCarPlayGenericTableViewController received hardware control event notification: %@", &v15, 0xCu);
  }

  if ([(PHCarPlayGenericViewController *)self shouldRespondToHardwareControlEvent])
  {
    v6 = [v4 userInfo];
    v7 = [v6 valueForKey:kTUCarPlayHardwareControlButtonKey];

    if (v7 == kTUCarPlayHardwareControlButtonGreenTelephone || v7 == kTUCarPlayHardwareControlButtonWhiteTelephone)
    {
      v9 = [(PHCarPlayGenericTableViewController *)self mainTableView];
      v10 = [v9 _indexPathsForHighlightedRows];
      v11 = [v10 count];

      if (v11)
      {
        v12 = [(PHCarPlayGenericTableViewController *)self mainTableView];
        v13 = [v12 _indexPathsForHighlightedRows];
        v14 = [v13 objectAtIndex:0];
        [(PHCarPlayGenericTableViewController *)self programmaticallySelectRowAtIndexPath:v14];
      }
    }
  }
}

- (void)setNoContentBannerShown:(BOOL)a3
{
  v3 = a3;
  v5 = [(PHCarPlayGenericTableViewController *)self noContentBannerView];

  if (v3)
  {
    if (!v5)
    {
      v6 = objc_alloc_init(PHCarPlayNoContentBannerView);
      v7 = *(&self->_mainTableViewDataSource + 1);
      *(&self->_mainTableViewDataSource + 1) = v6;

      [*(&self->_mainTableViewDataSource + 1) setTranslatesAutoresizingMaskIntoConstraints:0];
      v8 = [(PHCarPlayGenericTableViewController *)self titleForNoContentBanner];
      [*(&self->_mainTableViewDataSource + 1) setTitleString:v8];

      v9 = [(PHCarPlayGenericTableViewController *)self subtitleForNoContentBanner];
      [*(&self->_mainTableViewDataSource + 1) setSubtitleString:v9];

      v10 = [(PHCarPlayGenericTableViewController *)self view];
      [v10 addSubview:*(&self->_mainTableViewDataSource + 1)];

      v34 = [(PHCarPlayGenericTableViewController *)self view];
      v33 = [v34 safeAreaLayoutGuide];
      v32 = [v33 topAnchor];
      v31 = [*(&self->_mainTableViewDataSource + 1) topAnchor];
      v30 = [v32 constraintEqualToAnchor:v31];
      v36[0] = v30;
      v29 = [(PHCarPlayGenericTableViewController *)self view];
      v28 = [v29 safeAreaLayoutGuide];
      v27 = [v28 bottomAnchor];
      v26 = [*(&self->_mainTableViewDataSource + 1) bottomAnchor];
      v25 = [v27 constraintEqualToAnchor:v26];
      v36[1] = v25;
      v24 = [(PHCarPlayGenericTableViewController *)self view];
      v23 = [v24 safeAreaLayoutGuide];
      v11 = [v23 leftAnchor];
      v12 = [*(&self->_mainTableViewDataSource + 1) leftAnchor];
      v13 = [v11 constraintEqualToAnchor:v12];
      v36[2] = v13;
      v14 = [(PHCarPlayGenericTableViewController *)self view];
      v15 = [v14 safeAreaLayoutGuide];
      v16 = [v15 rightAnchor];
      v17 = [*(&self->_mainTableViewDataSource + 1) rightAnchor];
      v18 = [v16 constraintEqualToAnchor:v17];
      v36[3] = v18;
      v19 = [NSArray arrayWithObjects:v36 count:4];
      [NSLayoutConstraint activateConstraints:v19];

      v20 = [(PHCarPlayGenericTableViewController *)self mainTableView];
      [v20 setSeparatorStyle:0];

      v21 = [(PHCarPlayGenericTableViewController *)self mainTableView];
      [v21 setScrollEnabled:0];
    }
  }

  else if (v5)
  {
    [*(&self->_mainTableViewDataSource + 1) removeFromSuperview];
    [(PHCarPlayGenericTableViewController *)self setNoContentBannerView:0];
    v22 = [(PHCarPlayGenericTableViewController *)self mainTableView];
    [v22 setScrollEnabled:1];

    v35 = [(PHCarPlayGenericTableViewController *)self mainTableView];
    [v35 setSeparatorStyle:1];
  }
}

- (void)updateBadgeString
{
  v3 = [(PHCarPlayGenericTableViewController *)self badgeString];
  v4 = PHDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412546;
    v8 = v3;
    v9 = 2112;
    v10 = self;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Setting tab bar badge to %@ for %@", &v7, 0x16u);
  }

  v5 = [(PHCarPlayGenericTableViewController *)self badgeString];
  v6 = [(PHCarPlayGenericTableViewController *)self tabBarItem];
  [v6 setBadgeValue:v5];
}

- (void)carPlayInCallViewControllerAppearedNotification:(id)a3
{
  v6 = [(PHCarPlayGenericTableViewController *)self mainTableView];
  v4 = [(PHCarPlayGenericTableViewController *)self mainTableView];
  v5 = [v4 indexPathForSelectedRow];
  [v6 deselectRowAtIndexPath:v5 animated:0];
}

- (int64_t)filterType
{
  v2 = +[AVExternalDevice currentCarPlayExternalDevice];
  v3 = [v2 limitedUI];

  return v3;
}

void __56__PHCarPlayGenericTableViewController_limitedUIChanged___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) mainTableViewDataSource];
  [v2 setFilterType:{objc_msgSend(*(a1 + 32), "filterType")}];

  v3 = [*(a1 + 32) mainTableView];
  [v3 reloadData];
}

- (BOOL)_viewControllerWasSelected
{
  v7.receiver = self;
  v7.super_class = PHCarPlayGenericTableViewController;
  v3 = [(PHCarPlayGenericTableViewController *)&v7 _viewControllerWasSelected];
  v4 = [(PHCarPlayGenericTableViewController *)self mainTableView];

  if (v4)
  {
    v5 = [(PHCarPlayGenericTableViewController *)self mainTableView];
    v3 = [v5 _highlightFirstVisibleRowIfAppropriate];
  }

  return v3;
}

- (id)preferredFocusEnvironments
{
  v3 = [(PHCarPlayGenericTableViewController *)self mainTableView];

  if (v3)
  {
    v4 = [(PHCarPlayGenericTableViewController *)self mainTableView];
    v8 = v4;
    v5 = [NSArray arrayWithObjects:&v8 count:1];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = PHCarPlayGenericTableViewController;
    v5 = [(PHCarPlayGenericTableViewController *)&v7 preferredFocusEnvironments];
  }

  return v5;
}

@end