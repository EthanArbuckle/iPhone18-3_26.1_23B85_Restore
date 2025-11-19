@interface BKLibraryUploadStatusViewController
+ (id)_titleForUploadError:(int64_t)a3 more:(BOOL)a4;
+ (id)_titleForUploading:(BOOL)a3;
+ (id)_titleForUploadingCount:(unint64_t)a3;
+ (id)titleForUploadButton;
+ (int64_t)_uploadErrorType;
- (BKLibraryUploadStatusViewController)initWithMetrics:(id)a3;
- (BKLibraryUploadStatusViewControllerDelegate)delegate;
- (id)_uploadAssetAtIndex:(unint64_t)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)preferredStatusBarStyle;
- (unint64_t)supportedInterfaceOrientations;
- (void)_adjustPreferredContentSize;
- (void)_configureThemeForCell:(id)a3;
- (void)_configureThemeForErrorHeaderView;
- (void)_dismissWithCompletion:(id)a3;
- (void)_mergeAssets:(id)a3;
- (void)_networkReachabilityChanged:(id)a3;
- (void)_presentUpgradeStorageFlow;
- (void)_traitCollectionDidChange:(id)a3 previousTraitCollection:(id)a4;
- (void)_updateTitle:(int64_t)a3;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)setMainHeaderMetrics:(id)a3;
- (void)setPresentedInPopover:(BOOL)a3;
- (void)setThemeForUserInterfaceStyle:(int64_t)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation BKLibraryUploadStatusViewController

- (BKLibraryUploadStatusViewController)initWithMetrics:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = BKLibraryUploadStatusViewController;
  v6 = [(BKLibraryUploadStatusViewController *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_mainHeaderMetrics, a3);
    v8 = +[UITraitCollection bc_allAPITraits];
    v9 = [(BKLibraryUploadStatusViewController *)v7 registerForTraitChanges:v8 withAction:"_traitCollectionDidChange:previousTraitCollection:"];
  }

  return v7;
}

- (void)setMainHeaderMetrics:(id)a3
{
  objc_storeStrong(&self->_mainHeaderMetrics, a3);
  v5 = a3;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000554D0;
  v6[3] = &unk_100A033C8;
  v6[4] = self;
  [UIView performWithoutAnimation:v6];
}

- (void)dealloc
{
  v3 = [(BKLibraryUploadStatusViewController *)self tableView];
  [v3 setDelegate:0];

  v4 = [(BKLibraryUploadStatusViewController *)self tableView];
  [v4 setDataSource:0];

  v5 = +[BKLibraryAssetStatusController sharedController];
  v6 = [v5 uploadAssets];

  [v6 removeObserver:self forKeyPath:@"arrangedObjects" context:off_100ACBF30];
  v7 = +[BKLibraryAssetStatusController sharedController];
  [v7 removeObserver:self forKeyPath:@"uploadStatus" context:off_100ACBF38];

  v8 = +[NSNotificationCenter defaultCenter];
  [v8 removeObserver:self];

  v9.receiver = self;
  v9.super_class = BKLibraryUploadStatusViewController;
  [(BKLibraryUploadStatusViewController *)&v9 dealloc];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (off_100ACBF30 == a6)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000558B4;
    block[3] = &unk_100A03440;
    block[4] = self;
    v16 = v11;
    dispatch_async(&_dispatch_main_q, block);
  }

  else if (off_100ACBF38 == a6)
  {
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1007890B0;
    v14[3] = &unk_100A033C8;
    v14[4] = self;
    dispatch_async(&_dispatch_main_q, v14);
  }

  else
  {
    v13.receiver = self;
    v13.super_class = BKLibraryUploadStatusViewController;
    [(BKLibraryUploadStatusViewController *)&v13 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
  }
}

- (void)setThemeForUserInterfaceStyle:(int64_t)a3
{
  v5 = [(BKLibraryUploadStatusViewController *)self navigationController];
  v6 = [v5 navigationBar];
  v30 = NSForegroundColorAttributeName;
  v7 = +[UIColor bc_booksLabelColor];
  v31 = v7;
  v8 = [NSDictionary dictionaryWithObjects:&v31 forKeys:&v30 count:1];
  [v6 setTitleTextAttributes:v8];

  v9 = +[UIColor bc_booksKeyColor];
  v10 = [(BKLibraryUploadStatusViewController *)self navigationController];
  v11 = [v10 navigationBar];
  [v11 setTintColor:v9];

  v12 = +[UIColor bc_booksKeyColor];
  v13 = [(BKLibraryUploadStatusViewController *)self view];
  [v13 setTintColor:v12];

  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_100055C4C;
  v29[3] = &unk_100A033C8;
  v29[4] = self;
  [UIView performWithoutAnimation:v29];
  v14 = +[UIColor bc_booksSeparatorColor];
  v15 = [(BKLibraryUploadStatusViewController *)self tableView];
  [v15 setSeparatorColor:v14];

  v16 = +[UIColor bc_booksBackground];
  v17 = [(BKLibraryUploadStatusViewController *)self tableView];
  [v17 setBackgroundColor:v16];

  v18 = [(BKLibraryUploadStatusViewController *)self navigationController];
  v19 = [v18 navigationBar];
  v20 = +[UIColor bc_booksSecondaryBackground];
  [v19 setBarTintColor:v20];

  v21 = [(BKLibraryUploadStatusViewController *)self navigationController];
  v22 = [v21 navigationBar];
  v23 = a3 == 1;
  [v22 setTranslucent:v23];

  v24 = [(BKLibraryUploadStatusViewController *)self navigationController];
  v25 = [v24 toolbar];
  v26 = +[UIColor bc_booksSecondaryBackground];
  [v25 setBarTintColor:v26];

  v27 = [(BKLibraryUploadStatusViewController *)self navigationController];
  v28 = [v27 toolbar];
  [v28 setTranslucent:v23];

  [(BKLibraryUploadStatusViewController *)self _configureThemeForErrorHeaderView];
  [(BKLibraryUploadStatusViewController *)self setNeedsStatusBarAppearanceUpdate];
}

- (void)_traitCollectionDidChange:(id)a3 previousTraitCollection:(id)a4
{
  v5 = [a4 userInterfaceStyle];
  v6 = [(BKLibraryUploadStatusViewController *)self traitCollection];
  v7 = [v6 userInterfaceStyle];

  if (v5 != v7)
  {
    v8 = [(BKLibraryUploadStatusViewController *)self traitCollection];
    -[BKLibraryUploadStatusViewController setThemeForUserInterfaceStyle:](self, "setThemeForUserInterfaceStyle:", [v8 userInterfaceStyle]);
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = BKLibraryUploadStatusViewController;
  [(BKLibraryUploadStatusViewController *)&v6 viewWillDisappear:a3];
  v4 = +[BKLibraryAssetStatusController sharedController];
  [v4 removeCompletedUploads];

  v5 = +[BCLightLevelController sharedInstance];
  [v5 removeObserver:self];
}

- (void)setPresentedInPopover:(BOOL)a3
{
  self->_presentedInPopover = a3;
  if (a3)
  {
    v5 = [(BKLibraryUploadStatusViewController *)self navigationItem];
    [v5 setLeftBarButtonItem:0];
  }

  else
  {
    v5 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:0 target:self action:"_dismiss"];
    v4 = [(BKLibraryUploadStatusViewController *)self navigationItem];
    [v4 setLeftBarButtonItem:v5];
  }
}

- (int64_t)preferredStatusBarStyle
{
  v2 = [(BKLibraryUploadStatusViewController *)self traitCollection];
  v3 = [v2 userInterfaceStyle] == 2;

  return v3;
}

- (void)_networkReachabilityChanged:(id)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100056014;
  block[3] = &unk_100A033C8;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

+ (id)_titleForUploading:(BOOL)a3
{
  v3 = a3;
  v4 = +[NSBundle mainBundle];
  v5 = v4;
  if (v3)
  {
    v6 = @"Uploading to iCloud…";
  }

  else
  {
    v6 = @"Uploaded to iCloud";
  }

  v7 = [v4 localizedStringForKey:v6 value:&stru_100A30A68 table:0];

  return v7;
}

+ (id)_titleForUploadingCount:(unint64_t)a3
{
  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"Syncing %lu item(s) to iCloud…" value:&stru_100A30A68 table:0];
  v6 = [NSString localizedStringWithFormat:v5, a3];

  return v6;
}

+ (id)_titleForUploadError:(int64_t)a3 more:(BOOL)a4
{
  if (a3 == 2)
  {
    v7 = +[BCDevice deviceClass];
    v5 = +[NSBundle mainBundle];
    if (v7 == 4)
    {
      if (a4)
      {
        v6 = @"Your Mac is Offline…";
      }

      else
      {
        v6 = @"Your Mac is Offline";
      }
    }

    else if (v7 == 3)
    {
      if (a4)
      {
        v6 = @"Your iPad is Offline…";
      }

      else
      {
        v6 = @"Your iPad is Offline";
      }
    }

    else if (v7 == 1)
    {
      if (a4)
      {
        v6 = @"Your iPhone is Offline…";
      }

      else
      {
        v6 = @"Your iPhone is Offline";
      }
    }

    else if (a4)
    {
      v6 = @"Your device is Offline…";
    }

    else
    {
      v6 = @"Your device is Offline";
    }
  }

  else
  {
    if (a3 != 1)
    {
      v8 = 0;
      goto LABEL_13;
    }

    v5 = +[NSBundle mainBundle];
    if (a4)
    {
      v6 = @"iCloud Storage Is Full…";
    }

    else
    {
      v6 = @"iCloud Storage Is Full";
    }
  }

  v8 = [v5 localizedStringForKey:v6 value:&stru_100A30A68 table:0];

LABEL_13:

  return v8;
}

+ (id)titleForUploadButton
{
  v3 = [objc_opt_class() _uploadErrorType];
  if ((v3 | 2) != 2)
  {
    v9 = [a1 _titleForUploadError:v3 more:1];
    goto LABEL_16;
  }

  v4 = +[BKLibraryAssetStatusController sharedController];
  v5 = [v4 uploadAssets];
  v6 = [v5 arrangedObjects];

  if ([v6 count])
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x2020000000;
    v20 = 0;
    v11 = _NSConcreteStackBlock;
    v12 = 3221225472;
    v13 = sub_100056498;
    v14 = &unk_100A03878;
    v15 = v4;
    v16 = &v17;
    [v6 enumerateObjectsUsingBlock:&v11];
    v7 = v18[3];
    if (v3)
    {
      if (!v7)
      {
        v9 = 0;
LABEL_14:

        _Block_object_dispose(&v17, 8);
        goto LABEL_15;
      }

      v8 = [a1 _titleForUploadError:v3 more:{1, v11, v12, v13, v14}];
    }

    else
    {
      if (v7)
      {
        [objc_opt_class() _titleForUploadingCount:{v18[3], v11, v12, v13, v14}];
      }

      else
      {
        [objc_opt_class() _titleForUploading:{0, v11, v12, v13, v14}];
      }
      v8 = ;
    }

    v9 = v8;
    goto LABEL_14;
  }

  v9 = 0;
LABEL_15:

LABEL_16:

  return v9;
}

- (void)_updateTitle:(int64_t)a3
{
  if (a3)
  {
    v4 = [objc_opt_class() _titleForUploadError:a3 more:0];
  }

  else
  {
    v5 = [(BKLibraryUploadStatusViewController *)self assetIdToState];
    v6 = [v5 allValues];

    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v7 = v6;
    v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v8)
    {
      v9 = *v13;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(v7);
          }

          if ([*(*(&v12 + 1) + 8 * i) integerValue] == 9)
          {
            v8 = 1;
            goto LABEL_13;
          }
        }

        v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:

    v4 = [objc_opt_class() _titleForUploading:v8];
  }

  v11 = [(BKLibraryUploadStatusViewController *)self navigationItem];
  [v11 setTitle:v4];
}

+ (int64_t)_uploadErrorType
{
  v2 = +[BKReachability sharedReachabilityForInternetConnection];
  v3 = [v2 currentReachabilityStatus];

  v4 = +[BKLibraryAssetStatusController sharedController];
  v5 = [v4 uploadStatus];

  if (v3)
  {
    return v5 == 2;
  }

  else
  {
    return 2;
  }
}

- (void)_mergeAssets:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableArray array];
  v6 = +[NSMutableArray array];
  +[BKLibraryAssetStatusController sharedController];
  v14 = _NSConcreteStackBlock;
  v15 = 3221225472;
  v16 = sub_1000568C0;
  v18 = v17 = &unk_100A038A0;
  v19 = self;
  v7 = v5;
  v20 = v7;
  v8 = v6;
  v21 = v8;
  v9 = v18;
  [v4 enumerateObjectsUsingBlock:&v14];

  if ([v7 count] || objc_msgSend(v8, "count"))
  {
    v10 = [(BKLibraryUploadStatusViewController *)self tableView];
    [v10 beginUpdates];

    v11 = [(BKLibraryUploadStatusViewController *)self tableView];
    [v11 insertRowsAtIndexPaths:v7 withRowAnimation:100];

    -[BKLibraryUploadStatusViewController setNumAssetsAdded:](self, "setNumAssetsAdded:", [v7 count] + -[BKLibraryUploadStatusViewController numAssetsAdded](self, "numAssetsAdded"));
    v12 = [(BKLibraryUploadStatusViewController *)self tableView];
    [v12 reloadRowsAtIndexPaths:v8 withRowAnimation:0];

    v13 = [(BKLibraryUploadStatusViewController *)self tableView];
    [v13 endUpdates];
  }
}

- (void)_adjustPreferredContentSize
{
  v3 = [(BKLibraryUploadStatusViewController *)self tableView];
  [v3 rowHeight];
  v5 = v4 * 5.0 + 0.0;

  v6 = [(BKLibraryUploadStatusViewController *)self errorHeaderView];
  [v6 bounds];
  v8 = v5 + v7;

  [(BKLibraryUploadStatusViewController *)self preferredContentSize];
  v10 = v9;
  [(BKLibraryUploadStatusViewController *)self preferredContentSize];
  if (v12 != v10 || v11 != v8)
  {

    [(BKLibraryUploadStatusViewController *)self setPreferredContentSize:v10, v8];
  }
}

- (void)_dismissWithCompletion:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100056B50;
  v4[3] = &unk_100A03788;
  v5 = self;
  v6 = a3;
  v3 = v6;
  [(BKLibraryUploadStatusViewController *)v5 dismissViewControllerAnimated:1 completion:v4];
}

- (id)_uploadAssetAtIndex:(unint64_t)a3
{
  v4 = +[BKLibraryAssetStatusController sharedController];
  v5 = [v4 uploadAssets];
  v6 = [v5 arrangedObjects];

  if ([v6 count] <= a3)
  {
    v9 = 0;
  }

  else
  {
    v7 = +[BKLibraryManager defaultManager];
    v8 = [v6 objectAtIndexedSubscript:a3];
    v9 = [v7 libraryAssetOnMainQueueWithAssetID:v8];
  }

  return v9;
}

- (void)_presentUpgradeStorageFlow
{
  v3 = [(BKLibraryUploadStatusViewController *)self delegate];
  v4 = [v3 libraryUploadStatusPresentingViewController];
  v5 = [v4 navigationController];

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100056D58;
  v7[3] = &unk_100A033C8;
  v8 = v5;
  v6 = v5;
  [(BKLibraryUploadStatusViewController *)self _dismissWithCompletion:v7];
}

- (void)_configureThemeForCell:(id)a3
{
  v24 = a3;
  v4 = +[UIColor bc_booksBackground];
  [v24 setBackgroundColor:v4];

  v5 = +[UIColor bc_booksBackground];
  v6 = [v24 textContainerView];
  [v6 setBackgroundColor:v5];

  v7 = [(BKLibraryUploadStatusViewController *)self mainHeaderMetrics];

  if (v7)
  {
    v8 = [(BKLibraryUploadStatusViewController *)self mainHeaderMetrics];
    v9 = [v8 iCloudBookTitleFontAttributes];
    v10 = [v9 font];
    v11 = [v24 titleLabel];
    [v11 setFont:v10];

    v12 = [(BKLibraryUploadStatusViewController *)self mainHeaderMetrics];
    v13 = [v12 iCloudBookTitleFontAttributes];
    v14 = [v13 foregroundColor];
    v15 = [v24 titleLabel];
    [v15 setTextColor:v14];

    v16 = [(BKLibraryUploadStatusViewController *)self mainHeaderMetrics];
    v17 = [v16 iCloudBookStatusFontAttributes];
    v18 = [v17 font];
    v19 = [v24 statusLabel];
    [v19 setFont:v18];

    v20 = [(BKLibraryUploadStatusViewController *)self mainHeaderMetrics];
    v21 = [v20 iCloudBookStatusFontAttributes];
    v22 = [v21 foregroundColor];
    v23 = [v24 statusLabel];
    [v23 setTextColor:v22];
  }

  else
  {
    v20 = +[UIColor bc_booksLabelColor];
    v21 = [v24 titleLabel];
    [v21 setTextColor:v20];
  }
}

- (void)_configureThemeForErrorHeaderView
{
  v3 = [(BKLibraryUploadStatusViewController *)self errorHeaderView];

  if (v3)
  {
    v4 = [(BKLibraryUploadStatusViewController *)self traitCollection];
    v5 = [v4 userInterfaceStyle] == 2;

    v6 = [UIBlurEffect effectWithStyle:2 * v5];
    v7 = [(BKLibraryUploadStatusViewController *)self errorHeaderView];
    v8 = [v7 visualEffectView];
    [v8 setEffect:v6];

    v9 = +[UIColor bc_booksSeparatorColor];
    v10 = [(BKLibraryUploadStatusViewController *)self errorHeaderView];
    v11 = [v10 underlineView];
    [v11 setBackgroundColor:v9];

    v12 = [(BKLibraryUploadStatusViewController *)self mainHeaderMetrics];

    if (!v12)
    {
      v13 = +[UIColor bc_booksSecondaryLabelColor];
      v14 = [(BKLibraryUploadStatusViewController *)self errorHeaderView];
      v15 = [v14 errorLabel];
      [v15 setTextColor:v13];

      v16 = [(BKLibraryUploadStatusViewController *)self errorHeaderView];
      v17 = [v16 upgradeButton];

      if (v17)
      {
        v23 = +[UIColor bc_booksKeyColor];
        v18 = v23;
        v19 = [v23 CGColor];
        v20 = [(BKLibraryUploadStatusViewController *)self errorHeaderView];
        v21 = [v20 upgradeButton];
        v22 = [v21 layer];
        [v22 setBorderColor:v19];
      }
    }
  }
}

- (unint64_t)supportedInterfaceOrientations
{
  if (isPhone())
  {
    return 26;
  }

  else
  {
    return 30;
  }
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = -[BKLibraryUploadStatusViewController _uploadAssetAtIndex:](self, "_uploadAssetAtIndex:", [v7 row]);
  if (!v8)
  {
    sub_100789128(v7);
  }

  v9 = [v6 dequeueReusableCellWithIdentifier:@"BKUploadStatusCellIdentifier" forIndexPath:v7];
  [(BKLibraryUploadStatusViewController *)self _configureThemeForCell:v9];
  [v9 configureForAsset:v8];

  return v9;
}

- (BKLibraryUploadStatusViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)viewDidLoad
{
  v19.receiver = self;
  v19.super_class = BKLibraryUploadStatusViewController;
  [(BKLibraryUploadStatusViewController *)&v19 viewDidLoad];
  v4 = [UITableView alloc];
  v5 = [sub_100057458() view];
  [v5 bounds];
  [v2 initWithFrame:0 style:?];
  [sub_100057458() setTableView:v2];

  v6 = [(BKLibraryUploadStatusViewController *)self tableView];
  [v6 setAutoresizingMask:18];

  v7 = [(BKLibraryUploadStatusViewController *)self tableView];
  [v7 setDelegate:self];

  v8 = [(BKLibraryUploadStatusViewController *)self tableView];
  [v8 setDataSource:self];

  [(BKLibraryUploadStatusViewController *)self view];
  objc_claimAutoreleasedReturnValue();
  v9 = [sub_100057458() tableView];
  [v8 addSubview:v9];

  v10 = [(BKLibraryUploadStatusViewController *)self tableView];
  v11 = [UINib nibWithNibName:@"BKUploadStatusCell" bundle:0];
  [v10 registerNib:v11 forCellReuseIdentifier:@"BKUploadStatusCellIdentifier"];

  [(BKLibraryUploadStatusViewController *)self setPresentedInPopover:0];
  -[BKLibraryUploadStatusViewController _updateTitle:](self, "_updateTitle:", [objc_opt_class() _uploadErrorType]);
  v12 = [(BKLibraryUploadStatusViewController *)self tableView];
  [v12 setRowHeight:64.0];

  v13 = +[BKLibraryAssetStatusController sharedController];
  v14 = [v13 uploadAssets];

  [v14 addObserver:self forKeyPath:@"arrangedObjects" options:1 context:off_100ACBF30];
  v15 = +[BKLibraryAssetStatusController sharedController];
  [v15 addObserver:self forKeyPath:@"uploadStatus" options:1 context:off_100ACBF38];

  v16 = +[NSNotificationCenter defaultCenter];
  [v16 addObserver:self selector:"_networkReachabilityChanged:" name:@"kNetworkReachabilityChangedNotification" object:0];

  sub_1007885C8(self);
  v17 = +[NSMutableDictionary dictionary];
  [(BKLibraryUploadStatusViewController *)self setAssetIdToState:v17];

  v18 = [v14 arrangedObjects];
  [(BKLibraryUploadStatusViewController *)self _mergeAssets:v18];
}

- (void)viewWillAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = BKLibraryUploadStatusViewController;
  [(BKLibraryUploadStatusViewController *)&v5 viewWillAppear:a3];
  sub_1007885C8(self);
  v4 = [(BKLibraryUploadStatusViewController *)self traitCollection];
  -[BKLibraryUploadStatusViewController setThemeForUserInterfaceStyle:](self, "setThemeForUserInterfaceStyle:", [v4 userInterfaceStyle]);
}

@end