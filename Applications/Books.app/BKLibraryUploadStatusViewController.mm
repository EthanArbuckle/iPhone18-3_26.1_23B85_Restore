@interface BKLibraryUploadStatusViewController
+ (id)_titleForUploadError:(int64_t)error more:(BOOL)more;
+ (id)_titleForUploading:(BOOL)uploading;
+ (id)_titleForUploadingCount:(unint64_t)count;
+ (id)titleForUploadButton;
+ (int64_t)_uploadErrorType;
- (BKLibraryUploadStatusViewController)initWithMetrics:(id)metrics;
- (BKLibraryUploadStatusViewControllerDelegate)delegate;
- (id)_uploadAssetAtIndex:(unint64_t)index;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)preferredStatusBarStyle;
- (unint64_t)supportedInterfaceOrientations;
- (void)_adjustPreferredContentSize;
- (void)_configureThemeForCell:(id)cell;
- (void)_configureThemeForErrorHeaderView;
- (void)_dismissWithCompletion:(id)completion;
- (void)_mergeAssets:(id)assets;
- (void)_networkReachabilityChanged:(id)changed;
- (void)_presentUpgradeStorageFlow;
- (void)_traitCollectionDidChange:(id)change previousTraitCollection:(id)collection;
- (void)_updateTitle:(int64_t)title;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)setMainHeaderMetrics:(id)metrics;
- (void)setPresentedInPopover:(BOOL)popover;
- (void)setThemeForUserInterfaceStyle:(int64_t)style;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation BKLibraryUploadStatusViewController

- (BKLibraryUploadStatusViewController)initWithMetrics:(id)metrics
{
  metricsCopy = metrics;
  v11.receiver = self;
  v11.super_class = BKLibraryUploadStatusViewController;
  v6 = [(BKLibraryUploadStatusViewController *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_mainHeaderMetrics, metrics);
    v8 = +[UITraitCollection bc_allAPITraits];
    v9 = [(BKLibraryUploadStatusViewController *)v7 registerForTraitChanges:v8 withAction:"_traitCollectionDidChange:previousTraitCollection:"];
  }

  return v7;
}

- (void)setMainHeaderMetrics:(id)metrics
{
  objc_storeStrong(&self->_mainHeaderMetrics, metrics);
  metricsCopy = metrics;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000554D0;
  v6[3] = &unk_100A033C8;
  v6[4] = self;
  [UIView performWithoutAnimation:v6];
}

- (void)dealloc
{
  tableView = [(BKLibraryUploadStatusViewController *)self tableView];
  [tableView setDelegate:0];

  tableView2 = [(BKLibraryUploadStatusViewController *)self tableView];
  [tableView2 setDataSource:0];

  v5 = +[BKLibraryAssetStatusController sharedController];
  uploadAssets = [v5 uploadAssets];

  [uploadAssets removeObserver:self forKeyPath:@"arrangedObjects" context:off_100ACBF30];
  v7 = +[BKLibraryAssetStatusController sharedController];
  [v7 removeObserver:self forKeyPath:@"uploadStatus" context:off_100ACBF38];

  v8 = +[NSNotificationCenter defaultCenter];
  [v8 removeObserver:self];

  v9.receiver = self;
  v9.super_class = BKLibraryUploadStatusViewController;
  [(BKLibraryUploadStatusViewController *)&v9 dealloc];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if (off_100ACBF30 == context)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000558B4;
    block[3] = &unk_100A03440;
    block[4] = self;
    v16 = objectCopy;
    dispatch_async(&_dispatch_main_q, block);
  }

  else if (off_100ACBF38 == context)
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
    [(BKLibraryUploadStatusViewController *)&v13 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
  }
}

- (void)setThemeForUserInterfaceStyle:(int64_t)style
{
  navigationController = [(BKLibraryUploadStatusViewController *)self navigationController];
  navigationBar = [navigationController navigationBar];
  v30 = NSForegroundColorAttributeName;
  v7 = +[UIColor bc_booksLabelColor];
  v31 = v7;
  v8 = [NSDictionary dictionaryWithObjects:&v31 forKeys:&v30 count:1];
  [navigationBar setTitleTextAttributes:v8];

  v9 = +[UIColor bc_booksKeyColor];
  navigationController2 = [(BKLibraryUploadStatusViewController *)self navigationController];
  navigationBar2 = [navigationController2 navigationBar];
  [navigationBar2 setTintColor:v9];

  v12 = +[UIColor bc_booksKeyColor];
  view = [(BKLibraryUploadStatusViewController *)self view];
  [view setTintColor:v12];

  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_100055C4C;
  v29[3] = &unk_100A033C8;
  v29[4] = self;
  [UIView performWithoutAnimation:v29];
  v14 = +[UIColor bc_booksSeparatorColor];
  tableView = [(BKLibraryUploadStatusViewController *)self tableView];
  [tableView setSeparatorColor:v14];

  v16 = +[UIColor bc_booksBackground];
  tableView2 = [(BKLibraryUploadStatusViewController *)self tableView];
  [tableView2 setBackgroundColor:v16];

  navigationController3 = [(BKLibraryUploadStatusViewController *)self navigationController];
  navigationBar3 = [navigationController3 navigationBar];
  v20 = +[UIColor bc_booksSecondaryBackground];
  [navigationBar3 setBarTintColor:v20];

  navigationController4 = [(BKLibraryUploadStatusViewController *)self navigationController];
  navigationBar4 = [navigationController4 navigationBar];
  v23 = style == 1;
  [navigationBar4 setTranslucent:v23];

  navigationController5 = [(BKLibraryUploadStatusViewController *)self navigationController];
  toolbar = [navigationController5 toolbar];
  v26 = +[UIColor bc_booksSecondaryBackground];
  [toolbar setBarTintColor:v26];

  navigationController6 = [(BKLibraryUploadStatusViewController *)self navigationController];
  toolbar2 = [navigationController6 toolbar];
  [toolbar2 setTranslucent:v23];

  [(BKLibraryUploadStatusViewController *)self _configureThemeForErrorHeaderView];
  [(BKLibraryUploadStatusViewController *)self setNeedsStatusBarAppearanceUpdate];
}

- (void)_traitCollectionDidChange:(id)change previousTraitCollection:(id)collection
{
  userInterfaceStyle = [collection userInterfaceStyle];
  traitCollection = [(BKLibraryUploadStatusViewController *)self traitCollection];
  userInterfaceStyle2 = [traitCollection userInterfaceStyle];

  if (userInterfaceStyle != userInterfaceStyle2)
  {
    traitCollection2 = [(BKLibraryUploadStatusViewController *)self traitCollection];
    -[BKLibraryUploadStatusViewController setThemeForUserInterfaceStyle:](self, "setThemeForUserInterfaceStyle:", [traitCollection2 userInterfaceStyle]);
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v6.receiver = self;
  v6.super_class = BKLibraryUploadStatusViewController;
  [(BKLibraryUploadStatusViewController *)&v6 viewWillDisappear:disappear];
  v4 = +[BKLibraryAssetStatusController sharedController];
  [v4 removeCompletedUploads];

  v5 = +[BCLightLevelController sharedInstance];
  [v5 removeObserver:self];
}

- (void)setPresentedInPopover:(BOOL)popover
{
  self->_presentedInPopover = popover;
  if (popover)
  {
    navigationItem = [(BKLibraryUploadStatusViewController *)self navigationItem];
    [navigationItem setLeftBarButtonItem:0];
  }

  else
  {
    navigationItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:0 target:self action:"_dismiss"];
    navigationItem2 = [(BKLibraryUploadStatusViewController *)self navigationItem];
    [navigationItem2 setLeftBarButtonItem:navigationItem];
  }
}

- (int64_t)preferredStatusBarStyle
{
  traitCollection = [(BKLibraryUploadStatusViewController *)self traitCollection];
  v3 = [traitCollection userInterfaceStyle] == 2;

  return v3;
}

- (void)_networkReachabilityChanged:(id)changed
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100056014;
  block[3] = &unk_100A033C8;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

+ (id)_titleForUploading:(BOOL)uploading
{
  uploadingCopy = uploading;
  v4 = +[NSBundle mainBundle];
  v5 = v4;
  if (uploadingCopy)
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

+ (id)_titleForUploadingCount:(unint64_t)count
{
  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"Syncing %lu item(s) to iCloud…" value:&stru_100A30A68 table:0];
  v6 = [NSString localizedStringWithFormat:v5, count];

  return v6;
}

+ (id)_titleForUploadError:(int64_t)error more:(BOOL)more
{
  if (error == 2)
  {
    v7 = +[BCDevice deviceClass];
    v5 = +[NSBundle mainBundle];
    if (v7 == 4)
    {
      if (more)
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
      if (more)
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
      if (more)
      {
        v6 = @"Your iPhone is Offline…";
      }

      else
      {
        v6 = @"Your iPhone is Offline";
      }
    }

    else if (more)
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
    if (error != 1)
    {
      v8 = 0;
      goto LABEL_13;
    }

    v5 = +[NSBundle mainBundle];
    if (more)
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
  _uploadErrorType = [objc_opt_class() _uploadErrorType];
  if ((_uploadErrorType | 2) != 2)
  {
    v9 = [self _titleForUploadError:_uploadErrorType more:1];
    goto LABEL_16;
  }

  v4 = +[BKLibraryAssetStatusController sharedController];
  uploadAssets = [v4 uploadAssets];
  arrangedObjects = [uploadAssets arrangedObjects];

  if ([arrangedObjects count])
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
    [arrangedObjects enumerateObjectsUsingBlock:&v11];
    v7 = v18[3];
    if (_uploadErrorType)
    {
      if (!v7)
      {
        v9 = 0;
LABEL_14:

        _Block_object_dispose(&v17, 8);
        goto LABEL_15;
      }

      v8 = [self _titleForUploadError:_uploadErrorType more:{1, v11, v12, v13, v14}];
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

- (void)_updateTitle:(int64_t)title
{
  if (title)
  {
    v4 = [objc_opt_class() _titleForUploadError:title more:0];
  }

  else
  {
    assetIdToState = [(BKLibraryUploadStatusViewController *)self assetIdToState];
    allValues = [assetIdToState allValues];

    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v7 = allValues;
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

  navigationItem = [(BKLibraryUploadStatusViewController *)self navigationItem];
  [navigationItem setTitle:v4];
}

+ (int64_t)_uploadErrorType
{
  v2 = +[BKReachability sharedReachabilityForInternetConnection];
  currentReachabilityStatus = [v2 currentReachabilityStatus];

  v4 = +[BKLibraryAssetStatusController sharedController];
  uploadStatus = [v4 uploadStatus];

  if (currentReachabilityStatus)
  {
    return uploadStatus == 2;
  }

  else
  {
    return 2;
  }
}

- (void)_mergeAssets:(id)assets
{
  assetsCopy = assets;
  v5 = +[NSMutableArray array];
  v6 = +[NSMutableArray array];
  +[BKLibraryAssetStatusController sharedController];
  v14 = _NSConcreteStackBlock;
  v15 = 3221225472;
  v16 = sub_1000568C0;
  v18 = v17 = &unk_100A038A0;
  selfCopy = self;
  v7 = v5;
  v20 = v7;
  v8 = v6;
  v21 = v8;
  v9 = v18;
  [assetsCopy enumerateObjectsUsingBlock:&v14];

  if ([v7 count] || objc_msgSend(v8, "count"))
  {
    tableView = [(BKLibraryUploadStatusViewController *)self tableView];
    [tableView beginUpdates];

    tableView2 = [(BKLibraryUploadStatusViewController *)self tableView];
    [tableView2 insertRowsAtIndexPaths:v7 withRowAnimation:100];

    -[BKLibraryUploadStatusViewController setNumAssetsAdded:](self, "setNumAssetsAdded:", [v7 count] + -[BKLibraryUploadStatusViewController numAssetsAdded](self, "numAssetsAdded"));
    tableView3 = [(BKLibraryUploadStatusViewController *)self tableView];
    [tableView3 reloadRowsAtIndexPaths:v8 withRowAnimation:0];

    tableView4 = [(BKLibraryUploadStatusViewController *)self tableView];
    [tableView4 endUpdates];
  }
}

- (void)_adjustPreferredContentSize
{
  tableView = [(BKLibraryUploadStatusViewController *)self tableView];
  [tableView rowHeight];
  v5 = v4 * 5.0 + 0.0;

  errorHeaderView = [(BKLibraryUploadStatusViewController *)self errorHeaderView];
  [errorHeaderView bounds];
  v8 = v5 + v7;

  [(BKLibraryUploadStatusViewController *)self preferredContentSize];
  v10 = v9;
  [(BKLibraryUploadStatusViewController *)self preferredContentSize];
  if (v12 != v10 || v11 != v8)
  {

    [(BKLibraryUploadStatusViewController *)self setPreferredContentSize:v10, v8];
  }
}

- (void)_dismissWithCompletion:(id)completion
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100056B50;
  v4[3] = &unk_100A03788;
  selfCopy = self;
  completionCopy = completion;
  v3 = completionCopy;
  [(BKLibraryUploadStatusViewController *)selfCopy dismissViewControllerAnimated:1 completion:v4];
}

- (id)_uploadAssetAtIndex:(unint64_t)index
{
  v4 = +[BKLibraryAssetStatusController sharedController];
  uploadAssets = [v4 uploadAssets];
  arrangedObjects = [uploadAssets arrangedObjects];

  if ([arrangedObjects count] <= index)
  {
    v9 = 0;
  }

  else
  {
    v7 = +[BKLibraryManager defaultManager];
    v8 = [arrangedObjects objectAtIndexedSubscript:index];
    v9 = [v7 libraryAssetOnMainQueueWithAssetID:v8];
  }

  return v9;
}

- (void)_presentUpgradeStorageFlow
{
  delegate = [(BKLibraryUploadStatusViewController *)self delegate];
  libraryUploadStatusPresentingViewController = [delegate libraryUploadStatusPresentingViewController];
  navigationController = [libraryUploadStatusPresentingViewController navigationController];

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100056D58;
  v7[3] = &unk_100A033C8;
  v8 = navigationController;
  v6 = navigationController;
  [(BKLibraryUploadStatusViewController *)self _dismissWithCompletion:v7];
}

- (void)_configureThemeForCell:(id)cell
{
  cellCopy = cell;
  v4 = +[UIColor bc_booksBackground];
  [cellCopy setBackgroundColor:v4];

  v5 = +[UIColor bc_booksBackground];
  textContainerView = [cellCopy textContainerView];
  [textContainerView setBackgroundColor:v5];

  mainHeaderMetrics = [(BKLibraryUploadStatusViewController *)self mainHeaderMetrics];

  if (mainHeaderMetrics)
  {
    mainHeaderMetrics2 = [(BKLibraryUploadStatusViewController *)self mainHeaderMetrics];
    iCloudBookTitleFontAttributes = [mainHeaderMetrics2 iCloudBookTitleFontAttributes];
    font = [iCloudBookTitleFontAttributes font];
    titleLabel = [cellCopy titleLabel];
    [titleLabel setFont:font];

    mainHeaderMetrics3 = [(BKLibraryUploadStatusViewController *)self mainHeaderMetrics];
    iCloudBookTitleFontAttributes2 = [mainHeaderMetrics3 iCloudBookTitleFontAttributes];
    foregroundColor = [iCloudBookTitleFontAttributes2 foregroundColor];
    titleLabel2 = [cellCopy titleLabel];
    [titleLabel2 setTextColor:foregroundColor];

    mainHeaderMetrics4 = [(BKLibraryUploadStatusViewController *)self mainHeaderMetrics];
    iCloudBookStatusFontAttributes = [mainHeaderMetrics4 iCloudBookStatusFontAttributes];
    font2 = [iCloudBookStatusFontAttributes font];
    statusLabel = [cellCopy statusLabel];
    [statusLabel setFont:font2];

    mainHeaderMetrics5 = [(BKLibraryUploadStatusViewController *)self mainHeaderMetrics];
    iCloudBookStatusFontAttributes2 = [mainHeaderMetrics5 iCloudBookStatusFontAttributes];
    foregroundColor2 = [iCloudBookStatusFontAttributes2 foregroundColor];
    statusLabel2 = [cellCopy statusLabel];
    [statusLabel2 setTextColor:foregroundColor2];
  }

  else
  {
    mainHeaderMetrics5 = +[UIColor bc_booksLabelColor];
    iCloudBookStatusFontAttributes2 = [cellCopy titleLabel];
    [iCloudBookStatusFontAttributes2 setTextColor:mainHeaderMetrics5];
  }
}

- (void)_configureThemeForErrorHeaderView
{
  errorHeaderView = [(BKLibraryUploadStatusViewController *)self errorHeaderView];

  if (errorHeaderView)
  {
    traitCollection = [(BKLibraryUploadStatusViewController *)self traitCollection];
    v5 = [traitCollection userInterfaceStyle] == 2;

    v6 = [UIBlurEffect effectWithStyle:2 * v5];
    errorHeaderView2 = [(BKLibraryUploadStatusViewController *)self errorHeaderView];
    visualEffectView = [errorHeaderView2 visualEffectView];
    [visualEffectView setEffect:v6];

    v9 = +[UIColor bc_booksSeparatorColor];
    errorHeaderView3 = [(BKLibraryUploadStatusViewController *)self errorHeaderView];
    underlineView = [errorHeaderView3 underlineView];
    [underlineView setBackgroundColor:v9];

    mainHeaderMetrics = [(BKLibraryUploadStatusViewController *)self mainHeaderMetrics];

    if (!mainHeaderMetrics)
    {
      v13 = +[UIColor bc_booksSecondaryLabelColor];
      errorHeaderView4 = [(BKLibraryUploadStatusViewController *)self errorHeaderView];
      errorLabel = [errorHeaderView4 errorLabel];
      [errorLabel setTextColor:v13];

      errorHeaderView5 = [(BKLibraryUploadStatusViewController *)self errorHeaderView];
      upgradeButton = [errorHeaderView5 upgradeButton];

      if (upgradeButton)
      {
        v23 = +[UIColor bc_booksKeyColor];
        v18 = v23;
        cGColor = [v23 CGColor];
        errorHeaderView6 = [(BKLibraryUploadStatusViewController *)self errorHeaderView];
        upgradeButton2 = [errorHeaderView6 upgradeButton];
        layer = [upgradeButton2 layer];
        [layer setBorderColor:cGColor];
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

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = -[BKLibraryUploadStatusViewController _uploadAssetAtIndex:](self, "_uploadAssetAtIndex:", [pathCopy row]);
  if (!v8)
  {
    sub_100789128(pathCopy);
  }

  v9 = [viewCopy dequeueReusableCellWithIdentifier:@"BKUploadStatusCellIdentifier" forIndexPath:pathCopy];
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
  view = [sub_100057458() view];
  [view bounds];
  [v2 initWithFrame:0 style:?];
  [sub_100057458() setTableView:v2];

  tableView = [(BKLibraryUploadStatusViewController *)self tableView];
  [tableView setAutoresizingMask:18];

  tableView2 = [(BKLibraryUploadStatusViewController *)self tableView];
  [tableView2 setDelegate:self];

  tableView3 = [(BKLibraryUploadStatusViewController *)self tableView];
  [tableView3 setDataSource:self];

  [(BKLibraryUploadStatusViewController *)self view];
  objc_claimAutoreleasedReturnValue();
  tableView4 = [sub_100057458() tableView];
  [tableView3 addSubview:tableView4];

  tableView5 = [(BKLibraryUploadStatusViewController *)self tableView];
  v11 = [UINib nibWithNibName:@"BKUploadStatusCell" bundle:0];
  [tableView5 registerNib:v11 forCellReuseIdentifier:@"BKUploadStatusCellIdentifier"];

  [(BKLibraryUploadStatusViewController *)self setPresentedInPopover:0];
  -[BKLibraryUploadStatusViewController _updateTitle:](self, "_updateTitle:", [objc_opt_class() _uploadErrorType]);
  tableView6 = [(BKLibraryUploadStatusViewController *)self tableView];
  [tableView6 setRowHeight:64.0];

  v13 = +[BKLibraryAssetStatusController sharedController];
  uploadAssets = [v13 uploadAssets];

  [uploadAssets addObserver:self forKeyPath:@"arrangedObjects" options:1 context:off_100ACBF30];
  v15 = +[BKLibraryAssetStatusController sharedController];
  [v15 addObserver:self forKeyPath:@"uploadStatus" options:1 context:off_100ACBF38];

  v16 = +[NSNotificationCenter defaultCenter];
  [v16 addObserver:self selector:"_networkReachabilityChanged:" name:@"kNetworkReachabilityChangedNotification" object:0];

  sub_1007885C8(self);
  v17 = +[NSMutableDictionary dictionary];
  [(BKLibraryUploadStatusViewController *)self setAssetIdToState:v17];

  arrangedObjects = [uploadAssets arrangedObjects];
  [(BKLibraryUploadStatusViewController *)self _mergeAssets:arrangedObjects];
}

- (void)viewWillAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = BKLibraryUploadStatusViewController;
  [(BKLibraryUploadStatusViewController *)&v5 viewWillAppear:appear];
  sub_1007885C8(self);
  traitCollection = [(BKLibraryUploadStatusViewController *)self traitCollection];
  -[BKLibraryUploadStatusViewController setThemeForUserInterfaceStyle:](self, "setThemeForUserInterfaceStyle:", [traitCollection userInterfaceStyle]);
}

@end