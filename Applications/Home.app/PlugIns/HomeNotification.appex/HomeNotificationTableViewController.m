@interface HomeNotificationTableViewController
- (HomeNotificationTableViewController)initWithNotification:(id)a3 home:(id)a4 cameraProfile:(id)a5 notificationUUID:(id)a6 clipUUID:(id)a7 snapshot:(id)a8;
- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4;
- (id)_createNearbyAccessoryViewControllerWithSourceItem:(id)a3 supportsQuickControls:(BOOL)a4;
- (id)_currentSectionIdentifiers;
- (id)_identifierForSection:(unint64_t)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)_numberOfSectionsToShow;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3;
- (void)reloadAfterNotificationUpdate;
- (void)updateNearbyAccessoriesViewController;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation HomeNotificationTableViewController

- (HomeNotificationTableViewController)initWithNotification:(id)a3 home:(id)a4 cameraProfile:(id)a5 notificationUUID:(id)a6 clipUUID:(id)a7 snapshot:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v38.receiver = self;
  v38.super_class = HomeNotificationTableViewController;
  v20 = [(HomeNotificationTableViewController *)&v38 initWithStyle:0];
  if (v20)
  {
    v21 = HFLogForCategory();
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
    obj = a8;
    if (v19)
    {
      if (v22)
      {
        *buf = 138412546;
        v40 = v17;
        v41 = 2112;
        v42 = v18;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "NotificationUUID:%@ launched with a snapshot. No player for clipUUID:%@", buf, 0x16u);
      }
    }

    else
    {
      v36 = v15;
      if (v22)
      {
        *buf = 138412546;
        v40 = v17;
        v41 = 2112;
        v42 = v18;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "NotificationUUID:%@ launched without a snapshot. Load player for clipUUID:%@", buf, 0x16u);
      }

      v34 = [HUNCCameraPlayerViewController alloc];
      v21 = [v14 request];
      v35 = [v21 content];
      v23 = [v35 attachments];
      v24 = [v23 firstObject];
      [v24 URL];
      v26 = v25 = v14;
      v27 = [v34 initWithCameraProfile:v16 notificationUUID:v17 clipUUID:v18 imageURL:v26];
      playerViewController = v20->_playerViewController;
      v20->_playerViewController = v27;

      v14 = v25;
      v15 = v36;
    }

    v29 = [HFCameraItem alloc];
    v30 = [v15 hf_characteristicValueManager];
    v31 = [v29 initWithProfile:v16 valueSource:v30];

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
  v3 = [(HomeNotificationTableViewController *)self tableView];
  [v3 setScrollEnabled:0];

  v4 = [(HomeNotificationTableViewController *)self tableView];
  [v4 setAllowsSelection:0];

  v5 = [(HomeNotificationTableViewController *)self tableView];
  [v5 setShowsHorizontalScrollIndicator:0];

  v6 = [(HomeNotificationTableViewController *)self tableView];
  [v6 setSeparatorStyle:0];

  v7 = [(HomeNotificationTableViewController *)self tableView];
  [v7 setContentInsetAdjustmentBehavior:2];

  v8 = [(HomeNotificationTableViewController *)self tableView];
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  [v8 registerClass:v9 forCellReuseIdentifier:v11];

  objc_initWeak(&location, self);
  v12 = [(HomeNotificationTableViewController *)self nearbyAccessoriesViewController];
  v13 = [v12 hu_preloadContent];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100006E90;
  v15[3] = &unk_100018920;
  objc_copyWeak(&v16, &location);
  v14 = [v13 addCompletionBlock:v15];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

- (void)viewDidLayoutSubviews
{
  v4.receiver = self;
  v4.super_class = HomeNotificationTableViewController;
  [(HomeNotificationTableViewController *)&v4 viewDidLayoutSubviews];
  v3 = [(HomeNotificationTableViewController *)self tableView];
  [v3 contentSize];
  [(HomeNotificationTableViewController *)self setPreferredContentSize:?];
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3
{
  v5.receiver = self;
  v5.super_class = HomeNotificationTableViewController;
  [(HomeNotificationTableViewController *)&v5 preferredContentSizeDidChangeForChildContentContainer:a3];
  v4 = [(HomeNotificationTableViewController *)self tableView];
  [v4 reloadData];
}

- (void)updateNearbyAccessoriesViewController
{
  v3 = [(HomeNotificationTableViewController *)self numberOfSectionsDisplayed];
  if (v3 != [(HomeNotificationTableViewController *)self _numberOfSectionsToShow])
  {
    v4 = [(HomeNotificationTableViewController *)self tableView];
    [v4 reloadData];
  }
}

- (int64_t)numberOfSectionsInTableView:(id)a3
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

  v4 = [(HomeNotificationTableViewController *)self playerViewController];
  [v4 reloadAfterNotificationUpdate];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = -[HomeNotificationTableViewController _identifierForSection:](self, "_identifierForSection:", [v7 section]);
  if ([v8 isEqualToString:@"notificationMediaViewerSection"])
  {
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v11 = [v6 dequeueReusableCellWithIdentifier:v10 forIndexPath:v7];

    v12 = [(HomeNotificationTableViewController *)self snapshot];

    if (v12)
    {
      v13 = +[UIColor blackColor];
      [v11 setBackgroundColor:v13];

      v14 = [[HUCameraBadgeView alloc] initWithSize:1];
      v15 = [[HUCameraView alloc] initWithBadgeView:v14];
      [v15 setBadgeHidden:0];
      v16 = [(HomeNotificationTableViewController *)self snapshot];
      [v15 setCameraSource:v16];

      [v15 setAutoresizingMask:18];
      [v6 bounds];
      v18 = v17;
      [v6 bounds];
      v20 = v19;
      v21 = [v15 cameraSource];
      [v21 aspectRatio];
      [v15 setFrame:{0.0, 0.0, v18, v20 / v22}];

      v23 = [v11 contentView];
      [v23 addSubview:v15];
    }

    else
    {
      v35 = [(HomeNotificationTableViewController *)self playerViewController];

      if (v35)
      {
        v36 = +[UIColor systemBlackColor];
        [v11 setBackgroundColor:v36];

        v37 = [(HomeNotificationTableViewController *)self playerViewController];
        [v11 setViewController:v37];

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
    v11 = [v6 dequeueReusableCellWithIdentifier:v25 forIndexPath:v7];

    v26 = [(HomeNotificationTableViewController *)self nearbyAccessoriesViewController];

    if (v26)
    {
      v27 = [(HomeNotificationTableViewController *)self nearbyAccessoriesViewController];
      [v11 setViewController:v27];

      v28 = [(HomeNotificationTableViewController *)self nearbyAccessoriesViewController];
      v29 = [v28 collectionView];
      [v29 setScrollEnabled:0];

      v30 = UIEdgeInsetsZero.left;
      v31 = UIEdgeInsetsZero.bottom;
      v32 = UIEdgeInsetsZero.right;
      v33 = [(HomeNotificationTableViewController *)self nearbyAccessoriesViewController];
      v34 = [v33 collectionView];
      [v34 setContentInset:{UIEdgeInsetsZero.top, v30, v31, v32}];
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = -[HomeNotificationTableViewController _identifierForSection:](self, "_identifierForSection:", [v7 section]);
  v9 = [(HomeNotificationTableViewController *)self snapshot];
  if (v9 && (v10 = v9, v11 = [v8 isEqualToString:@"notificationMediaViewerSection"], v10, v11))
  {
    v12 = [(HomeNotificationTableViewController *)self tableView];
    [v12 bounds];
    v14 = v13;
    v15 = [(HomeNotificationTableViewController *)self snapshot];
    [v15 aspectRatio];
    v17 = v14 / v16;
  }

  else
  {
    v20.receiver = self;
    v20.super_class = HomeNotificationTableViewController;
    [(HomeNotificationTableViewController *)&v20 tableView:v6 heightForRowAtIndexPath:v7];
    v17 = v18;
  }

  return v17;
}

- (int64_t)_numberOfSectionsToShow
{
  v2 = [(HomeNotificationTableViewController *)self nearbyAccessoriesViewController];
  v3 = [v2 itemManager];
  v4 = [v3 allDisplayedItems];
  if ([v4 count])
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

- (id)_identifierForSection:(unint64_t)a3
{
  v4 = [(HomeNotificationTableViewController *)self _currentSectionIdentifiers];
  if ([v4 count] <= a3)
  {
    NSLog(@"Received identifier request for section (%lu), but only have (%lu) sections", a3, [v4 count]);
  }

  if ([v4 count] <= a3)
  {
    v5 = 0;
  }

  else
  {
    v5 = [v4 objectAtIndexedSubscript:a3];
  }

  return v5;
}

- (id)_createNearbyAccessoryViewControllerWithSourceItem:(id)a3 supportsQuickControls:(BOOL)a4
{
  v6 = objc_allocWithZone(sub_10000CAC0());
  v7 = a3;
  v8 = self;
  v9 = sub_10000CAB0();
  sub_10000C2A4();
  swift_unknownObjectRetain();
  sub_10000CAA0();

  return v9;
}

@end