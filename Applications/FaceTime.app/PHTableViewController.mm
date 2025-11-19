@interface PHTableViewController
- (BOOL)tableViewCanPerformReloadData:(id)a3;
- (NSOperationQueue)dataSourcePrefetchingOperationQueue;
- (PHContentUnavailable)contentUnavailableView;
- (PHTableViewController)initWithCoder:(id)a3;
- (PHTableViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (PHTableViewController)initWithStyle:(int64_t)a3;
- (double)tableView:(id)a3 estimatedHeightForRowAtIndexPath:(id)a4;
- (void)commonInit;
- (void)dealloc;
- (void)didReceiveMemoryWarning;
- (void)handleUIContentSizeCategoryDidChangeNotification:(id)a3;
- (void)makeUIForDefaultPNG;
- (void)reloadDataIfNeeded;
- (void)setContentUnavailable:(BOOL)a3 animated:(BOOL)a4;
- (void)setContentUnavailableViewTitle:(id)a3;
- (void)setWhitePointAdaptivityStyle:(int64_t)a3;
- (void)tableView:(id)a3 cancelPrefetchingForRowsAtIndexPaths:(id)a4;
- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5;
- (void)tableView:(id)a3 didEndDisplayingCell:(id)a4 forRowAtIndexPath:(id)a5;
- (void)tableView:(id)a3 performReloadRowsAtIndexPaths:(id)a4 withRowAnimation:(int64_t)a5 completion:(id)a6;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateTitleDisplayModeIfNeeded:(BOOL)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation PHTableViewController

- (PHTableViewController)initWithStyle:(int64_t)a3
{
  v6.receiver = self;
  v6.super_class = PHTableViewController;
  v3 = [(PHTableViewController *)&v6 initWithStyle:a3];
  v4 = v3;
  if (v3)
  {
    [(PHTableViewController *)v3 commonInit];
  }

  return v4;
}

- (PHTableViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v7.receiver = self;
  v7.super_class = PHTableViewController;
  v4 = [(PHTableViewController *)&v7 initWithNibName:a3 bundle:a4];
  v5 = v4;
  if (v4)
  {
    [(PHTableViewController *)v4 commonInit];
  }

  return v5;
}

- (PHTableViewController)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = PHTableViewController;
  v3 = [(PHTableViewController *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(PHTableViewController *)v3 commonInit];
  }

  return v4;
}

- (void)commonInit
{
  self->_contentUnavailable = 0;
  self->_needsReloadData = 1;
  v3 = objc_alloc_init(NSCache);
  rowHeightCache = self->_rowHeightCache;
  self->_rowHeightCache = v3;

  self->_whitePointAdaptivityStyle = 0;
  v5 = +[NSNotificationCenter defaultCenter];
  [v5 addObserver:self selector:"handleUIApplicationDidBecomeActiveNotification:" name:UIApplicationDidBecomeActiveNotification object:0];
}

- (void)dealloc
{
  v3 = [(PHTableViewController *)self dataSourcePrefetchingOperationQueue];
  [v3 cancelAllOperations];

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self];

  v5.receiver = self;
  v5.super_class = PHTableViewController;
  [(PHTableViewController *)&v5 dealloc];
}

- (NSOperationQueue)dataSourcePrefetchingOperationQueue
{
  dataSourcePrefetchingOperationQueue = self->_dataSourcePrefetchingOperationQueue;
  if (!dataSourcePrefetchingOperationQueue)
  {
    v4 = objc_alloc_init(NSOperationQueue);
    v5 = self->_dataSourcePrefetchingOperationQueue;
    self->_dataSourcePrefetchingOperationQueue = v4;

    [(NSOperationQueue *)self->_dataSourcePrefetchingOperationQueue setMaxConcurrentOperationCount:1];
    dataSourcePrefetchingOperationQueue = self->_dataSourcePrefetchingOperationQueue;
  }

  return dataSourcePrefetchingOperationQueue;
}

- (void)didReceiveMemoryWarning
{
  v3 = sub_100003B9C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v7 = objc_opt_class();
    v4 = v7;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%@ received memory warning, purging variables that can be dynamically restored.", buf, 0xCu);
  }

  v5.receiver = self;
  v5.super_class = PHTableViewController;
  [(PHTableViewController *)&v5 didReceiveMemoryWarning];
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = PHTableViewController;
  [(PHTableViewController *)&v7 viewDidLoad];
  v3 = [(PHTableViewController *)self navigationController];
  v4 = [v3 navigationBar];
  [v4 setPrefersLargeTitles:1];

  v5 = [(PHTableViewController *)self tableView];
  [v5 setPrefetchDataSource:self];

  v6 = +[NSNotificationCenter defaultCenter];
  [v6 addObserver:self selector:"handleUIContentSizeCategoryDidChangeNotification:" name:UIContentSizeCategoryDidChangeNotification object:0];
}

- (void)viewWillAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = PHTableViewController;
  [(PHTableViewController *)&v5 viewWillAppear:a3];
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 addObserver:self selector:"handleUIApplicationDidEnterBackgroundNotification:" name:UIApplicationDidEnterBackgroundNotification object:0];
  [v4 removeObserver:self name:UIApplicationWillEnterForegroundNotification object:0];
  [(PHTableViewController *)self updateTitleDisplayModeIfNeeded:0];
}

- (void)viewDidAppear:(BOOL)a3
{
  v3.receiver = self;
  v3.super_class = PHTableViewController;
  [(PHTableViewController *)&v3 viewDidAppear:a3];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = PHTableViewController;
  [(PHTableViewController *)&v5 viewWillDisappear:a3];
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 addObserver:self selector:"handleUIApplicationWillEnterForegroundNotification:" name:UIApplicationWillEnterForegroundNotification object:0];
  [v4 removeObserver:self name:UIApplicationDidEnterBackgroundNotification object:0];
}

- (void)setContentUnavailable:(BOOL)a3 animated:(BOOL)a4
{
  if (self->_contentUnavailable != a3)
  {
    v20 = v7;
    v21 = v6;
    v22 = v4;
    v23 = v5;
    v8 = a4;
    self->_contentUnavailable = a3;
    if (a3 || (-[PHTableViewController contentUnavailableView](self, "contentUnavailableView"), v11 = objc_claimAutoreleasedReturnValue(), [v11 superview], v12 = objc_claimAutoreleasedReturnValue(), v12, v11, v12))
    {
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_100033D44;
      v18[3] = &unk_10010B4E8;
      v19 = a3;
      v18[4] = self;
      v13 = objc_retainBlock(v18);
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_100033DE4;
      v16[3] = &unk_10010B510;
      v17 = a3;
      v16[4] = self;
      v14 = objc_retainBlock(v16);
      v15 = v14;
      if (v8)
      {
        [UIView animateWithDuration:4 delay:v14 options:v13 animations:0.300000012 completion:0.0];
      }

      else
      {
        (v14[2])(v14);
        (v13[2])(v13, 1);
      }
    }
  }
}

- (void)reloadDataIfNeeded
{
  if ([(PHTableViewController *)self needsReloadData])
  {
    v3 = [(PHTableViewController *)self tableView];
    v4 = [(PHTableViewController *)self tableViewCanPerformReloadData:v3];

    if (v4)
    {
      v5 = [(PHTableViewController *)self tableView];
      [v5 reloadData];

      [(PHTableViewController *)self setNeedsReloadData:0];
    }
  }
}

- (PHContentUnavailable)contentUnavailableView
{
  contentUnavailableView = self->_contentUnavailableView;
  if (!contentUnavailableView)
  {
    v4 = [_UIContentUnavailableView alloc];
    v5 = [(PHTableViewController *)self view];
    [v5 bounds];
    v6 = [v4 initWithFrame:self->_contentUnavailableViewTitle title:?];
    v7 = self->_contentUnavailableView;
    self->_contentUnavailableView = v6;

    [(PHContentUnavailable *)self->_contentUnavailableView setAlpha:0.0];
    [(PHContentUnavailable *)self->_contentUnavailableView setAutoresizingMask:18];
    v8 = [(PHTableViewController *)self view];
    v9 = [v8 backgroundColor];
    [(PHContentUnavailable *)self->_contentUnavailableView setBackgroundColor:v9];

    [(PHContentUnavailable *)self->_contentUnavailableView setHidden:1];
    contentUnavailableView = self->_contentUnavailableView;
  }

  return contentUnavailableView;
}

- (void)setContentUnavailableViewTitle:(id)a3
{
  v5 = a3;
  if (self->_contentUnavailableViewTitle != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_contentUnavailableViewTitle, a3);
    [(PHContentUnavailable *)self->_contentUnavailableView setTitle:self->_contentUnavailableViewTitle];
    v5 = v6;
  }
}

- (void)makeUIForDefaultPNG
{
  if (+[UIApplication shouldMakeUIForDefaultPNG])
  {
    v4 = [(PHTableViewController *)self navigationItem];
    [v4 setLeftBarButtonItem:0];
    [v4 setRightBarButtonItem:0];
    [v4 setTitleView:0];
    [(PHTableViewController *)self setContentUnavailableViewTitle:0];
    [(PHTableViewController *)self setTabBarItem:0];
    v3 = [(PHTableViewController *)self tableView];
    [v3 setHidden:1];

    [(PHTableViewController *)self setTitle:0];
  }
}

- (void)updateTitleDisplayModeIfNeeded:(BOOL)a3
{
  v3 = a3;
  if ([(PHTableViewController *)self isViewLoaded])
  {
    v5 = [(PHTableViewController *)self shouldNavigationControllerPresentLargeTitles];
    v6 = v5 ? 1 : 2;
    v7 = [(PHTableViewController *)self navigationItem];
    v8 = [v7 largeTitleDisplayMode];

    if (v8 != v6)
    {
      v9 = [(PHTableViewController *)self navigationItem];
      [v9 setLargeTitleDisplayMode:v6];

      if ((v3 & v5) == 1)
      {
        v10 = [(PHTableViewController *)self navigationController];
        v11 = [v10 visibleViewController];

        if (v11 == self)
        {
          v13 = [(PHTableViewController *)self navigationController];
          v12 = [v13 navigationBar];
          [v12 sizeToFit];
        }
      }
    }
  }
}

- (void)setWhitePointAdaptivityStyle:(int64_t)a3
{
  if (self->_whitePointAdaptivityStyle != a3)
  {
    self->_whitePointAdaptivityStyle = a3;
    [(PHTableViewController *)self setNeedsWhitePointAdaptivityStyleUpdate];
  }
}

- (void)tableView:(id)a3 cancelPrefetchingForRowsAtIndexPaths:(id)a4
{
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = a4;
  v4 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v4)
  {
    v5 = v4;
    v19 = *v26;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v26 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v7 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [*(*(&v25 + 1) + 8 * i) hash]);
        v8 = [NSString stringWithFormat:@"%@", v7];

        v23 = 0u;
        v24 = 0u;
        v21 = 0u;
        v22 = 0u;
        v9 = [(PHTableViewController *)self dataSourcePrefetchingOperationQueue];
        v10 = [v9 operations];

        v11 = [v10 countByEnumeratingWithState:&v21 objects:v29 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v22;
          do
          {
            for (j = 0; j != v12; j = j + 1)
            {
              if (*v22 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v21 + 1) + 8 * j);
              v16 = [v15 name];
              v17 = [v16 isEqualToString:v8];

              if (v17)
              {
                [v15 cancel];
              }
            }

            v12 = [v10 countByEnumeratingWithState:&v21 objects:v29 count:16];
          }

          while (v12);
        }
      }

      v5 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v5);
  }
}

- (BOOL)tableViewCanPerformReloadData:(id)a3
{
  v4 = a3;
  if (-[PHTableViewController isReloadingData](self, "isReloadingData") || ([v4 _isAnimatingScroll] & 1) != 0 || (objc_msgSend(v4, "_isAnimatingZoom") & 1) != 0 || (objc_msgSend(v4, "isEditing") & 1) != 0 || (objc_msgSend(v4, "isDragging") & 1) != 0 || (objc_msgSend(v4, "isDecelerating") & 1) != 0 || (objc_msgSend(v4, "isTracking") & 1) != 0 || (objc_msgSend(v4, "isZoomBouncing") & 1) != 0)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = [v4 isZooming] ^ 1;
  }

  return v5;
}

- (void)tableView:(id)a3 performReloadRowsAtIndexPaths:(id)a4 withRowAnimation:(int64_t)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  if ([(PHTableViewController *)self tableViewCanPerformReloadData:v10])
  {
    [(PHTableViewController *)self setReloadingData:1];
    +[CATransaction begin];
    v13 = _NSConcreteStackBlock;
    v14 = 3221225472;
    v15 = sub_1000346A4;
    v16 = &unk_10010B538;
    v17 = self;
    v18 = v12;
    [CATransaction setCompletionBlock:&v13];
    [v10 beginUpdates];
    [v10 reloadRowsAtIndexPaths:v11 withRowAnimation:a5];
    [v10 endUpdates];
    +[CATransaction commit];
  }
}

- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5
{
  if (a4 == 1)
  {
    v7 = a5;
    v8 = [(PHTableViewController *)self rowHeightCache];
    [v8 removeObjectForKey:v7];
  }
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v7 = a5;
  v8 = a4;
  v18 = [(PHTableViewController *)self rowHeightCache];
  [v8 bounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v20.origin.x = v10;
  v20.origin.y = v12;
  v20.size.width = v14;
  v20.size.height = v16;
  v17 = [NSNumber numberWithCGFloat:CGRectGetHeight(v20)];
  [v18 setObject:v17 forKey:v7];
}

- (void)tableView:(id)a3 didEndDisplayingCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v6 = a5;
  v7 = [(PHTableViewController *)self rowHeightCache];
  [v7 removeObjectForKey:v6];
}

- (double)tableView:(id)a3 estimatedHeightForRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(PHTableViewController *)self rowHeightCache];
  v7 = [v6 objectForKey:v5];

  if (v7)
  {
    [v7 CGFloatValue];
    v9 = v8;
  }

  else
  {
    v9 = UITableViewAutomaticDimension;
  }

  return v9;
}

- (void)handleUIContentSizeCategoryDidChangeNotification:(id)a3
{
  v4 = a3;
  v5 = sub_100003B9C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    v9 = objc_opt_class();
    v10 = 2112;
    v11 = v4;
    v6 = v9;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ is handling <%@>", &v8, 0x16u);
  }

  v7 = [(PHTableViewController *)self rowHeightCache];
  [v7 removeAllObjects];
}

- (void)traitCollectionDidChange:(id)a3
{
  v8.receiver = self;
  v8.super_class = PHTableViewController;
  v4 = a3;
  [(PHTableViewController *)&v8 traitCollectionDidChange:v4];
  v5 = [(PHTableViewController *)self traitCollection:v8.receiver];
  v6 = [v5 userInterfaceStyle];

  v7 = [v4 userInterfaceStyle];
  if (v6 && v7 != v6)
  {
    if ([(PHTableViewController *)self contentUnavailable])
    {
      [(PHTableViewController *)self setContentUnavailable:0];
      [(PHTableViewController *)self setContentUnavailableView:0];
      [(PHTableViewController *)self setContentUnavailable:1];
    }
  }
}

@end