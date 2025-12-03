@interface PHCarPlayGenericTableViewController
- (BOOL)_viewControllerWasSelected;
- (PHCarPlayGenericTableViewController)init;
- (id)preferredFocusEnvironments;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)filterType;
- (void)applicationBadgeChangedNotification:(id)notification;
- (void)carPlayInCallViewControllerAppearedNotification:(id)notification;
- (void)dealloc;
- (void)hardwareControlEventNotification:(id)notification;
- (void)loadView;
- (void)programmaticallySelectRowAtIndexPath:(id)path;
- (void)setNoContentBannerShown:(BOOL)shown;
- (void)updateBadgeString;
- (void)viewWillAppear:(BOOL)appear;
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
    carPlayExternalDevice = [v2 carPlayExternalDevice];
    [v6 addObserver:v2 selector:"limitedUIChanged:" name:v7 object:carPlayExternalDevice];
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

- (void)applicationBadgeChangedNotification:(id)notification
{
  v4 = PHDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "CarPlay table view controller told about badge changing (%@)", &v5, 0xCu);
  }

  [(PHCarPlayGenericTableViewController *)self updateBadgeString];
}

- (void)loadView
{
  navigationController = [(PHCarPlayGenericTableViewController *)self navigationController];
  [navigationController setNavigationBarHidden:1 animated:0];

  v6 = [[UITableView alloc] initWithFrame:{0.0, 0.0, 50.0, 50.0}];
  [(PHCarPlayGenericTableViewController *)self defaultRowHeight];
  [v6 setRowHeight:?];
  [v6 setDelegate:self];
  mainTableViewDataSource = [(PHCarPlayGenericTableViewController *)self mainTableViewDataSource];
  [v6 setDataSource:mainTableViewDataSource];

  [v6 setAccessibilityIdentifier:@"PHCarPlayTableView"];
  if (_os_feature_enabled_impl())
  {
    v5 = +[UIColor clearColor];
    [v6 setBackgroundColor:v5];
  }

  [(PHCarPlayGenericTableViewController *)self setMainTableView:v6];
  [(PHCarPlayGenericTableViewController *)self setView:v6];
}

- (void)viewWillAppear:(BOOL)appear
{
  v8.receiver = self;
  v8.super_class = PHCarPlayGenericTableViewController;
  [(PHCarPlayGenericTableViewController *)&v8 viewWillAppear:appear];
  if ([(PHCarPlayGenericTableViewController *)self tableViewReloadIsRequiredOnViewWillAppear])
  {
    mainTableView = [(PHCarPlayGenericTableViewController *)self mainTableView];
    [mainTableView reloadData];

    [(PHCarPlayGenericTableViewController *)self setTableViewReloadIsRequiredOnViewWillAppear:0];
    mainTableView2 = [(PHCarPlayGenericTableViewController *)self mainTableView];
    mainTableView3 = [(PHCarPlayGenericTableViewController *)self mainTableView];
    indexPathForSelectedRow = [mainTableView3 indexPathForSelectedRow];
    [mainTableView2 deselectRowAtIndexPath:indexPathForSelectedRow animated:0];
  }
}

- (void)programmaticallySelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  v4 = PHDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = pathCopy;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "PHCarPlayGenericTableViewController: programmaticallySelectRowAtIndexPath:%@", &v5, 0xCu);
  }
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v6 = [NSString stringWithFormat:@"%s must be overridden by subclass", path, "[PHCarPlayGenericTableViewController tableView:cellForRowAtIndexPath:]"];
  NSLog(@"** TUAssertion failure: %@", v6);

  if (_TUAssertShouldCrashApplication())
  {
    v7 = +[NSAssertionHandler currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"PHCarPlayGenericTableViewController.m" lineNumber:113 description:{@"%s must be overridden by subclass", "-[PHCarPlayGenericTableViewController tableView:cellForRowAtIndexPath:]"}];
  }

  return 0;
}

- (void)hardwareControlEventNotification:(id)notification
{
  notificationCopy = notification;
  v5 = PHDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412290;
    v16 = notificationCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "PHCarPlayGenericTableViewController received hardware control event notification: %@", &v15, 0xCu);
  }

  if ([(PHCarPlayGenericViewController *)self shouldRespondToHardwareControlEvent])
  {
    userInfo = [notificationCopy userInfo];
    v7 = [userInfo valueForKey:kTUCarPlayHardwareControlButtonKey];

    if (v7 == kTUCarPlayHardwareControlButtonGreenTelephone || v7 == kTUCarPlayHardwareControlButtonWhiteTelephone)
    {
      mainTableView = [(PHCarPlayGenericTableViewController *)self mainTableView];
      _indexPathsForHighlightedRows = [mainTableView _indexPathsForHighlightedRows];
      v11 = [_indexPathsForHighlightedRows count];

      if (v11)
      {
        mainTableView2 = [(PHCarPlayGenericTableViewController *)self mainTableView];
        _indexPathsForHighlightedRows2 = [mainTableView2 _indexPathsForHighlightedRows];
        v14 = [_indexPathsForHighlightedRows2 objectAtIndex:0];
        [(PHCarPlayGenericTableViewController *)self programmaticallySelectRowAtIndexPath:v14];
      }
    }
  }
}

- (void)setNoContentBannerShown:(BOOL)shown
{
  shownCopy = shown;
  noContentBannerView = [(PHCarPlayGenericTableViewController *)self noContentBannerView];

  if (shownCopy)
  {
    if (!noContentBannerView)
    {
      v6 = objc_alloc_init(PHCarPlayNoContentBannerView);
      v7 = *(&self->_mainTableViewDataSource + 1);
      *(&self->_mainTableViewDataSource + 1) = v6;

      [*(&self->_mainTableViewDataSource + 1) setTranslatesAutoresizingMaskIntoConstraints:0];
      titleForNoContentBanner = [(PHCarPlayGenericTableViewController *)self titleForNoContentBanner];
      [*(&self->_mainTableViewDataSource + 1) setTitleString:titleForNoContentBanner];

      subtitleForNoContentBanner = [(PHCarPlayGenericTableViewController *)self subtitleForNoContentBanner];
      [*(&self->_mainTableViewDataSource + 1) setSubtitleString:subtitleForNoContentBanner];

      view = [(PHCarPlayGenericTableViewController *)self view];
      [view addSubview:*(&self->_mainTableViewDataSource + 1)];

      view2 = [(PHCarPlayGenericTableViewController *)self view];
      safeAreaLayoutGuide = [view2 safeAreaLayoutGuide];
      topAnchor = [safeAreaLayoutGuide topAnchor];
      topAnchor2 = [*(&self->_mainTableViewDataSource + 1) topAnchor];
      v30 = [topAnchor constraintEqualToAnchor:topAnchor2];
      v36[0] = v30;
      view3 = [(PHCarPlayGenericTableViewController *)self view];
      safeAreaLayoutGuide2 = [view3 safeAreaLayoutGuide];
      bottomAnchor = [safeAreaLayoutGuide2 bottomAnchor];
      bottomAnchor2 = [*(&self->_mainTableViewDataSource + 1) bottomAnchor];
      v25 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
      v36[1] = v25;
      view4 = [(PHCarPlayGenericTableViewController *)self view];
      safeAreaLayoutGuide3 = [view4 safeAreaLayoutGuide];
      leftAnchor = [safeAreaLayoutGuide3 leftAnchor];
      leftAnchor2 = [*(&self->_mainTableViewDataSource + 1) leftAnchor];
      v13 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
      v36[2] = v13;
      view5 = [(PHCarPlayGenericTableViewController *)self view];
      safeAreaLayoutGuide4 = [view5 safeAreaLayoutGuide];
      rightAnchor = [safeAreaLayoutGuide4 rightAnchor];
      rightAnchor2 = [*(&self->_mainTableViewDataSource + 1) rightAnchor];
      v18 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
      v36[3] = v18;
      v19 = [NSArray arrayWithObjects:v36 count:4];
      [NSLayoutConstraint activateConstraints:v19];

      mainTableView = [(PHCarPlayGenericTableViewController *)self mainTableView];
      [mainTableView setSeparatorStyle:0];

      mainTableView2 = [(PHCarPlayGenericTableViewController *)self mainTableView];
      [mainTableView2 setScrollEnabled:0];
    }
  }

  else if (noContentBannerView)
  {
    [*(&self->_mainTableViewDataSource + 1) removeFromSuperview];
    [(PHCarPlayGenericTableViewController *)self setNoContentBannerView:0];
    mainTableView3 = [(PHCarPlayGenericTableViewController *)self mainTableView];
    [mainTableView3 setScrollEnabled:1];

    mainTableView4 = [(PHCarPlayGenericTableViewController *)self mainTableView];
    [mainTableView4 setSeparatorStyle:1];
  }
}

- (void)updateBadgeString
{
  badgeString = [(PHCarPlayGenericTableViewController *)self badgeString];
  v4 = PHDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412546;
    v8 = badgeString;
    v9 = 2112;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Setting tab bar badge to %@ for %@", &v7, 0x16u);
  }

  badgeString2 = [(PHCarPlayGenericTableViewController *)self badgeString];
  tabBarItem = [(PHCarPlayGenericTableViewController *)self tabBarItem];
  [tabBarItem setBadgeValue:badgeString2];
}

- (void)carPlayInCallViewControllerAppearedNotification:(id)notification
{
  mainTableView = [(PHCarPlayGenericTableViewController *)self mainTableView];
  mainTableView2 = [(PHCarPlayGenericTableViewController *)self mainTableView];
  indexPathForSelectedRow = [mainTableView2 indexPathForSelectedRow];
  [mainTableView deselectRowAtIndexPath:indexPathForSelectedRow animated:0];
}

- (int64_t)filterType
{
  v2 = +[AVExternalDevice currentCarPlayExternalDevice];
  limitedUI = [v2 limitedUI];

  return limitedUI;
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
  _viewControllerWasSelected = [(PHCarPlayGenericTableViewController *)&v7 _viewControllerWasSelected];
  mainTableView = [(PHCarPlayGenericTableViewController *)self mainTableView];

  if (mainTableView)
  {
    mainTableView2 = [(PHCarPlayGenericTableViewController *)self mainTableView];
    _viewControllerWasSelected = [mainTableView2 _highlightFirstVisibleRowIfAppropriate];
  }

  return _viewControllerWasSelected;
}

- (id)preferredFocusEnvironments
{
  mainTableView = [(PHCarPlayGenericTableViewController *)self mainTableView];

  if (mainTableView)
  {
    mainTableView2 = [(PHCarPlayGenericTableViewController *)self mainTableView];
    v8 = mainTableView2;
    preferredFocusEnvironments = [NSArray arrayWithObjects:&v8 count:1];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = PHCarPlayGenericTableViewController;
    preferredFocusEnvironments = [(PHCarPlayGenericTableViewController *)&v7 preferredFocusEnvironments];
  }

  return preferredFocusEnvironments;
}

@end