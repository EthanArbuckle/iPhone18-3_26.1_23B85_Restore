@interface HomeNotificationTableViewController
- (HomeNotificationTableViewController)initWithNotification:(id)notification home:(id)home cameraProfile:(id)profile notificationUUID:(id)d clipUUID:(id)iD snapshot:(id)snapshot;
- (double)tableView:(id)view heightForRowAtIndexPath:(id)path;
- (id)_createNearbyAccessoryViewControllerWithSourceItem:(id)item supportsQuickControls:(BOOL)controls;
- (id)_currentSectionIdentifiers;
- (id)_identifierForSection:(unint64_t)section;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)_numberOfSectionsToShow;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container;
- (void)reloadAfterNotificationUpdate;
- (void)updateNearbyAccessoriesViewController;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation HomeNotificationTableViewController

- (HomeNotificationTableViewController)initWithNotification:(id)notification home:(id)home cameraProfile:(id)profile notificationUUID:(id)d clipUUID:(id)iD snapshot:(id)snapshot
{
  notificationCopy = notification;
  homeCopy = home;
  profileCopy = profile;
  dCopy = d;
  iDCopy = iD;
  snapshotCopy = snapshot;
  v38.receiver = self;
  v38.super_class = HomeNotificationTableViewController;
  v20 = [(HomeNotificationTableViewController *)&v38 initWithStyle:0];
  if (v20)
  {
    request = HFLogForCategory();
    v22 = os_log_type_enabled(request, OS_LOG_TYPE_DEFAULT);
    obj = snapshot;
    if (snapshotCopy)
    {
      if (v22)
      {
        *buf = 138412546;
        v40 = dCopy;
        v41 = 2112;
        v42 = iDCopy;
        _os_log_impl(&_mh_execute_header, request, OS_LOG_TYPE_DEFAULT, "NotificationUUID:%@ launched with a snapshot. No player for clipUUID:%@", buf, 0x16u);
      }
    }

    else
    {
      v36 = homeCopy;
      if (v22)
      {
        *buf = 138412546;
        v40 = dCopy;
        v41 = 2112;
        v42 = iDCopy;
        _os_log_impl(&_mh_execute_header, request, OS_LOG_TYPE_DEFAULT, "NotificationUUID:%@ launched without a snapshot. Load player for clipUUID:%@", buf, 0x16u);
      }

      v34 = [HUNCCameraPlayerViewController alloc];
      request = [notificationCopy request];
      content = [request content];
      attachments = [content attachments];
      firstObject = [attachments firstObject];
      [firstObject URL];
      v26 = v25 = notificationCopy;
      v27 = [v34 initWithCameraProfile:profileCopy notificationUUID:dCopy clipUUID:iDCopy imageURL:v26];
      playerViewController = v20->_playerViewController;
      v20->_playerViewController = v27;

      notificationCopy = v25;
      homeCopy = v36;
    }

    v29 = [HFCameraItem alloc];
    hf_characteristicValueManager = [homeCopy hf_characteristicValueManager];
    v31 = [v29 initWithProfile:profileCopy valueSource:hf_characteristicValueManager];

    v32 = [(HomeNotificationTableViewController *)v20 _createNearbyAccessoryViewControllerWithSourceItem:v31 supportsQuickControls:0];
    [(HomeNotificationTableViewController *)v20 setNearbyAccessoriesViewController:v32];

    objc_storeStrong(&v20->_snapshot, obj);
  }

  return v20;
}

- (void)viewDidLoad
{
  v18.receiver = self;
  v18.super_class = HomeNotificationTableViewController;
  [(HomeNotificationTableViewController *)&v18 viewDidLoad];
  [(HomeNotificationTableViewController *)self setSectionContentInsetFollowsLayoutMargins:0];
  tableView = [(HomeNotificationTableViewController *)self tableView];
  [tableView setScrollEnabled:0];

  tableView2 = [(HomeNotificationTableViewController *)self tableView];
  [tableView2 setAllowsSelection:0];

  tableView3 = [(HomeNotificationTableViewController *)self tableView];
  [tableView3 setShowsHorizontalScrollIndicator:0];

  tableView4 = [(HomeNotificationTableViewController *)self tableView];
  [tableView4 setSeparatorStyle:0];

  tableView5 = [(HomeNotificationTableViewController *)self tableView];
  [tableView5 setContentInsetAdjustmentBehavior:2];

  tableView6 = [(HomeNotificationTableViewController *)self tableView];
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  [tableView6 registerClass:v9 forCellReuseIdentifier:v11];

  objc_initWeak(&location, self);
  nearbyAccessoriesViewController = [(HomeNotificationTableViewController *)self nearbyAccessoriesViewController];
  hu_preloadContent = [nearbyAccessoriesViewController hu_preloadContent];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100006E90;
  v15[3] = &unk_100018920;
  objc_copyWeak(&v16, &location);
  v14 = [hu_preloadContent addCompletionBlock:v15];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

- (void)viewDidLayoutSubviews
{
  v4.receiver = self;
  v4.super_class = HomeNotificationTableViewController;
  [(HomeNotificationTableViewController *)&v4 viewDidLayoutSubviews];
  tableView = [(HomeNotificationTableViewController *)self tableView];
  [tableView contentSize];
  [(HomeNotificationTableViewController *)self setPreferredContentSize:?];
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container
{
  v5.receiver = self;
  v5.super_class = HomeNotificationTableViewController;
  [(HomeNotificationTableViewController *)&v5 preferredContentSizeDidChangeForChildContentContainer:container];
  tableView = [(HomeNotificationTableViewController *)self tableView];
  [tableView reloadData];
}

- (void)updateNearbyAccessoriesViewController
{
  numberOfSectionsDisplayed = [(HomeNotificationTableViewController *)self numberOfSectionsDisplayed];
  if (numberOfSectionsDisplayed != [(HomeNotificationTableViewController *)self _numberOfSectionsToShow])
  {
    tableView = [(HomeNotificationTableViewController *)self tableView];
    [tableView reloadData];
  }
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  [(HomeNotificationTableViewController *)self setNumberOfSectionsDisplayed:[(HomeNotificationTableViewController *)self _numberOfSectionsToShow]];

  return [(HomeNotificationTableViewController *)self numberOfSectionsDisplayed];
}

- (void)reloadAfterNotificationUpdate
{
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Notification has been updated. Force reload.", v5, 2u);
  }

  playerViewController = [(HomeNotificationTableViewController *)self playerViewController];
  [playerViewController reloadAfterNotificationUpdate];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = -[HomeNotificationTableViewController _identifierForSection:](self, "_identifierForSection:", [pathCopy section]);
  if ([v8 isEqualToString:@"notificationMediaViewerSection"])
  {
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v11 = [viewCopy dequeueReusableCellWithIdentifier:v10 forIndexPath:pathCopy];

    snapshot = [(HomeNotificationTableViewController *)self snapshot];

    if (snapshot)
    {
      v13 = +[UIColor blackColor];
      [v11 setBackgroundColor:v13];

      v14 = [[HUCameraBadgeView alloc] initWithSize:1];
      v15 = [[HUCameraView alloc] initWithBadgeView:v14];
      [v15 setBadgeHidden:0];
      snapshot2 = [(HomeNotificationTableViewController *)self snapshot];
      [v15 setCameraSource:snapshot2];

      [v15 setAutoresizingMask:18];
      [viewCopy bounds];
      v18 = v17;
      [viewCopy bounds];
      v20 = v19;
      cameraSource = [v15 cameraSource];
      [cameraSource aspectRatio];
      [v15 setFrame:{0.0, 0.0, v18, v20 / v22}];

      contentView = [v11 contentView];
      [contentView addSubview:v15];
    }

    else
    {
      playerViewController = [(HomeNotificationTableViewController *)self playerViewController];

      if (playerViewController)
      {
        v36 = +[UIColor systemBlackColor];
        [v11 setBackgroundColor:v36];

        playerViewController2 = [(HomeNotificationTableViewController *)self playerViewController];
        [v11 setViewController:playerViewController2];

        left = UIEdgeInsetsZero.left;
        bottom = UIEdgeInsetsZero.bottom;
        right = UIEdgeInsetsZero.right;
        [v11 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
        [v11 setSeparatorInset:{UIEdgeInsetsZero.top, left, bottom, right}];
      }
    }
  }

  else if ([v8 isEqualToString:@"notificationNearbyAccessorySection"])
  {
    v24 = objc_opt_class();
    v25 = NSStringFromClass(v24);
    v11 = [viewCopy dequeueReusableCellWithIdentifier:v25 forIndexPath:pathCopy];

    nearbyAccessoriesViewController = [(HomeNotificationTableViewController *)self nearbyAccessoriesViewController];

    if (nearbyAccessoriesViewController)
    {
      nearbyAccessoriesViewController2 = [(HomeNotificationTableViewController *)self nearbyAccessoriesViewController];
      [v11 setViewController:nearbyAccessoriesViewController2];

      nearbyAccessoriesViewController3 = [(HomeNotificationTableViewController *)self nearbyAccessoriesViewController];
      collectionView = [nearbyAccessoriesViewController3 collectionView];
      [collectionView setScrollEnabled:0];

      v30 = UIEdgeInsetsZero.left;
      v31 = UIEdgeInsetsZero.bottom;
      v32 = UIEdgeInsetsZero.right;
      nearbyAccessoriesViewController4 = [(HomeNotificationTableViewController *)self nearbyAccessoriesViewController];
      collectionView2 = [nearbyAccessoriesViewController4 collectionView];
      [collectionView2 setContentInset:{UIEdgeInsetsZero.top, v30, v31, v32}];
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (double)tableView:(id)view heightForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = -[HomeNotificationTableViewController _identifierForSection:](self, "_identifierForSection:", [pathCopy section]);
  snapshot = [(HomeNotificationTableViewController *)self snapshot];
  if (snapshot && (v10 = snapshot, v11 = [v8 isEqualToString:@"notificationMediaViewerSection"], v10, v11))
  {
    tableView = [(HomeNotificationTableViewController *)self tableView];
    [tableView bounds];
    v14 = v13;
    snapshot2 = [(HomeNotificationTableViewController *)self snapshot];
    [snapshot2 aspectRatio];
    v17 = v14 / v16;
  }

  else
  {
    v20.receiver = self;
    v20.super_class = HomeNotificationTableViewController;
    [(HomeNotificationTableViewController *)&v20 tableView:viewCopy heightForRowAtIndexPath:pathCopy];
    v17 = v18;
  }

  return v17;
}

- (int64_t)_numberOfSectionsToShow
{
  nearbyAccessoriesViewController = [(HomeNotificationTableViewController *)self nearbyAccessoriesViewController];
  itemManager = [nearbyAccessoriesViewController itemManager];
  allDisplayedItems = [itemManager allDisplayedItems];
  if ([allDisplayedItems count])
  {
    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (id)_currentSectionIdentifiers
{
  v4[0] = @"notificationMediaViewerSection";
  v4[1] = @"notificationNearbyAccessorySection";
  v2 = [NSArray arrayWithObjects:v4 count:2];

  return v2;
}

- (id)_identifierForSection:(unint64_t)section
{
  _currentSectionIdentifiers = [(HomeNotificationTableViewController *)self _currentSectionIdentifiers];
  if ([_currentSectionIdentifiers count] <= section)
  {
    NSLog(@"Received identifier request for section (%lu), but only have (%lu) sections", section, [_currentSectionIdentifiers count]);
  }

  if ([_currentSectionIdentifiers count] <= section)
  {
    v5 = 0;
  }

  else
  {
    v5 = [_currentSectionIdentifiers objectAtIndexedSubscript:section];
  }

  return v5;
}

- (id)_createNearbyAccessoryViewControllerWithSourceItem:(id)item supportsQuickControls:(BOOL)controls
{
  v6 = objc_allocWithZone(sub_10000CAC0());
  itemCopy = item;
  selfCopy = self;
  v9 = sub_10000CAB0();
  sub_10000C2A4();
  swift_unknownObjectRetain();
  sub_10000CAA0();

  return v9;
}

@end