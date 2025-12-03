@interface PHTableViewController
- (BOOL)tableViewCanPerformReloadData:(id)data;
- (NSOperationQueue)dataSourcePrefetchingOperationQueue;
- (PHContentUnavailable)contentUnavailableView;
- (PHTableViewController)initWithCoder:(id)coder;
- (PHTableViewController)initWithNibName:(id)name bundle:(id)bundle;
- (PHTableViewController)initWithStyle:(int64_t)style;
- (double)tableView:(id)view estimatedHeightForRowAtIndexPath:(id)path;
- (void)commonInit;
- (void)dealloc;
- (void)didReceiveMemoryWarning;
- (void)handleUIContentSizeCategoryDidChangeNotification:(id)notification;
- (void)makeUIForDefaultPNG;
- (void)reloadDataIfNeeded;
- (void)setContentUnavailable:(BOOL)unavailable animated:(BOOL)animated;
- (void)setContentUnavailableViewTitle:(id)title;
- (void)setWhitePointAdaptivityStyle:(int64_t)style;
- (void)tableView:(id)view cancelPrefetchingForRowsAtIndexPaths:(id)paths;
- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path;
- (void)tableView:(id)view didEndDisplayingCell:(id)cell forRowAtIndexPath:(id)path;
- (void)tableView:(id)view performReloadRowsAtIndexPaths:(id)paths withRowAnimation:(int64_t)animation completion:(id)completion;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
- (void)traitCollectionDidChange:(id)change;
- (void)updateTitleDisplayModeIfNeeded:(BOOL)needed;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation PHTableViewController

- (PHTableViewController)initWithStyle:(int64_t)style
{
  v6.receiver = self;
  v6.super_class = PHTableViewController;
  v3 = [(PHTableViewController *)&v6 initWithStyle:style];
  v4 = v3;
  if (v3)
  {
    [(PHTableViewController *)v3 commonInit];
  }

  return v4;
}

- (PHTableViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v7.receiver = self;
  v7.super_class = PHTableViewController;
  v4 = [(PHTableViewController *)&v7 initWithNibName:name bundle:bundle];
  v5 = v4;
  if (v4)
  {
    [(PHTableViewController *)v4 commonInit];
  }

  return v5;
}

- (PHTableViewController)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = PHTableViewController;
  v3 = [(PHTableViewController *)&v6 initWithCoder:coder];
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
  dataSourcePrefetchingOperationQueue = [(PHTableViewController *)self dataSourcePrefetchingOperationQueue];
  [dataSourcePrefetchingOperationQueue cancelAllOperations];

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
  navigationController = [(PHTableViewController *)self navigationController];
  navigationBar = [navigationController navigationBar];
  [navigationBar setPrefersLargeTitles:1];

  tableView = [(PHTableViewController *)self tableView];
  [tableView setPrefetchDataSource:self];

  v6 = +[NSNotificationCenter defaultCenter];
  [v6 addObserver:self selector:"handleUIContentSizeCategoryDidChangeNotification:" name:UIContentSizeCategoryDidChangeNotification object:0];
}

- (void)viewWillAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = PHTableViewController;
  [(PHTableViewController *)&v5 viewWillAppear:appear];
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 addObserver:self selector:"handleUIApplicationDidEnterBackgroundNotification:" name:UIApplicationDidEnterBackgroundNotification object:0];
  [v4 removeObserver:self name:UIApplicationWillEnterForegroundNotification object:0];
  [(PHTableViewController *)self updateTitleDisplayModeIfNeeded:0];
}

- (void)viewDidAppear:(BOOL)appear
{
  v3.receiver = self;
  v3.super_class = PHTableViewController;
  [(PHTableViewController *)&v3 viewDidAppear:appear];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = PHTableViewController;
  [(PHTableViewController *)&v5 viewWillDisappear:disappear];
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 addObserver:self selector:"handleUIApplicationWillEnterForegroundNotification:" name:UIApplicationWillEnterForegroundNotification object:0];
  [v4 removeObserver:self name:UIApplicationDidEnterBackgroundNotification object:0];
}

- (void)setContentUnavailable:(BOOL)unavailable animated:(BOOL)animated
{
  if (self->_contentUnavailable != unavailable)
  {
    v20 = v7;
    v21 = v6;
    v22 = v4;
    v23 = v5;
    animatedCopy = animated;
    self->_contentUnavailable = unavailable;
    if (unavailable || (-[PHTableViewController contentUnavailableView](self, "contentUnavailableView"), v11 = objc_claimAutoreleasedReturnValue(), [v11 superview], v12 = objc_claimAutoreleasedReturnValue(), v12, v11, v12))
    {
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_100033D44;
      v18[3] = &unk_10010B4E8;
      unavailableCopy = unavailable;
      v18[4] = self;
      v13 = objc_retainBlock(v18);
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_100033DE4;
      v16[3] = &unk_10010B510;
      unavailableCopy2 = unavailable;
      v16[4] = self;
      v14 = objc_retainBlock(v16);
      v15 = v14;
      if (animatedCopy)
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
    tableView = [(PHTableViewController *)self tableView];
    v4 = [(PHTableViewController *)self tableViewCanPerformReloadData:tableView];

    if (v4)
    {
      tableView2 = [(PHTableViewController *)self tableView];
      [tableView2 reloadData];

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
    view = [(PHTableViewController *)self view];
    [view bounds];
    v6 = [v4 initWithFrame:self->_contentUnavailableViewTitle title:?];
    v7 = self->_contentUnavailableView;
    self->_contentUnavailableView = v6;

    [(PHContentUnavailable *)self->_contentUnavailableView setAlpha:0.0];
    [(PHContentUnavailable *)self->_contentUnavailableView setAutoresizingMask:18];
    view2 = [(PHTableViewController *)self view];
    backgroundColor = [view2 backgroundColor];
    [(PHContentUnavailable *)self->_contentUnavailableView setBackgroundColor:backgroundColor];

    [(PHContentUnavailable *)self->_contentUnavailableView setHidden:1];
    contentUnavailableView = self->_contentUnavailableView;
  }

  return contentUnavailableView;
}

- (void)setContentUnavailableViewTitle:(id)title
{
  titleCopy = title;
  if (self->_contentUnavailableViewTitle != titleCopy)
  {
    v6 = titleCopy;
    objc_storeStrong(&self->_contentUnavailableViewTitle, title);
    [(PHContentUnavailable *)self->_contentUnavailableView setTitle:self->_contentUnavailableViewTitle];
    titleCopy = v6;
  }
}

- (void)makeUIForDefaultPNG
{
  if (+[UIApplication shouldMakeUIForDefaultPNG])
  {
    navigationItem = [(PHTableViewController *)self navigationItem];
    [navigationItem setLeftBarButtonItem:0];
    [navigationItem setRightBarButtonItem:0];
    [navigationItem setTitleView:0];
    [(PHTableViewController *)self setContentUnavailableViewTitle:0];
    [(PHTableViewController *)self setTabBarItem:0];
    tableView = [(PHTableViewController *)self tableView];
    [tableView setHidden:1];

    [(PHTableViewController *)self setTitle:0];
  }
}

- (void)updateTitleDisplayModeIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  if ([(PHTableViewController *)self isViewLoaded])
  {
    shouldNavigationControllerPresentLargeTitles = [(PHTableViewController *)self shouldNavigationControllerPresentLargeTitles];
    v6 = shouldNavigationControllerPresentLargeTitles ? 1 : 2;
    navigationItem = [(PHTableViewController *)self navigationItem];
    largeTitleDisplayMode = [navigationItem largeTitleDisplayMode];

    if (largeTitleDisplayMode != v6)
    {
      navigationItem2 = [(PHTableViewController *)self navigationItem];
      [navigationItem2 setLargeTitleDisplayMode:v6];

      if ((neededCopy & shouldNavigationControllerPresentLargeTitles) == 1)
      {
        navigationController = [(PHTableViewController *)self navigationController];
        visibleViewController = [navigationController visibleViewController];

        if (visibleViewController == self)
        {
          navigationController2 = [(PHTableViewController *)self navigationController];
          navigationBar = [navigationController2 navigationBar];
          [navigationBar sizeToFit];
        }
      }
    }
  }
}

- (void)setWhitePointAdaptivityStyle:(int64_t)style
{
  if (self->_whitePointAdaptivityStyle != style)
  {
    self->_whitePointAdaptivityStyle = style;
    [(PHTableViewController *)self setNeedsWhitePointAdaptivityStyleUpdate];
  }
}

- (void)tableView:(id)view cancelPrefetchingForRowsAtIndexPaths:(id)paths
{
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = paths;
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
        dataSourcePrefetchingOperationQueue = [(PHTableViewController *)self dataSourcePrefetchingOperationQueue];
        operations = [dataSourcePrefetchingOperationQueue operations];

        v11 = [operations countByEnumeratingWithState:&v21 objects:v29 count:16];
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
                objc_enumerationMutation(operations);
              }

              v15 = *(*(&v21 + 1) + 8 * j);
              name = [v15 name];
              v17 = [name isEqualToString:v8];

              if (v17)
              {
                [v15 cancel];
              }
            }

            v12 = [operations countByEnumeratingWithState:&v21 objects:v29 count:16];
          }

          while (v12);
        }
      }

      v5 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v5);
  }
}

- (BOOL)tableViewCanPerformReloadData:(id)data
{
  dataCopy = data;
  if (-[PHTableViewController isReloadingData](self, "isReloadingData") || ([dataCopy _isAnimatingScroll] & 1) != 0 || (objc_msgSend(dataCopy, "_isAnimatingZoom") & 1) != 0 || (objc_msgSend(dataCopy, "isEditing") & 1) != 0 || (objc_msgSend(dataCopy, "isDragging") & 1) != 0 || (objc_msgSend(dataCopy, "isDecelerating") & 1) != 0 || (objc_msgSend(dataCopy, "isTracking") & 1) != 0 || (objc_msgSend(dataCopy, "isZoomBouncing") & 1) != 0)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = [dataCopy isZooming] ^ 1;
  }

  return v5;
}

- (void)tableView:(id)view performReloadRowsAtIndexPaths:(id)paths withRowAnimation:(int64_t)animation completion:(id)completion
{
  viewCopy = view;
  pathsCopy = paths;
  completionCopy = completion;
  if ([(PHTableViewController *)self tableViewCanPerformReloadData:viewCopy])
  {
    [(PHTableViewController *)self setReloadingData:1];
    +[CATransaction begin];
    v13 = _NSConcreteStackBlock;
    v14 = 3221225472;
    v15 = sub_1000346A4;
    v16 = &unk_10010B538;
    selfCopy = self;
    v18 = completionCopy;
    [CATransaction setCompletionBlock:&v13];
    [viewCopy beginUpdates];
    [viewCopy reloadRowsAtIndexPaths:pathsCopy withRowAnimation:animation];
    [viewCopy endUpdates];
    +[CATransaction commit];
  }
}

- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path
{
  if (style == 1)
  {
    pathCopy = path;
    rowHeightCache = [(PHTableViewController *)self rowHeightCache];
    [rowHeightCache removeObjectForKey:pathCopy];
  }
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  pathCopy = path;
  cellCopy = cell;
  rowHeightCache = [(PHTableViewController *)self rowHeightCache];
  [cellCopy bounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v20.origin.x = v10;
  v20.origin.y = v12;
  v20.size.width = v14;
  v20.size.height = v16;
  v17 = [NSNumber numberWithCGFloat:CGRectGetHeight(v20)];
  [rowHeightCache setObject:v17 forKey:pathCopy];
}

- (void)tableView:(id)view didEndDisplayingCell:(id)cell forRowAtIndexPath:(id)path
{
  pathCopy = path;
  rowHeightCache = [(PHTableViewController *)self rowHeightCache];
  [rowHeightCache removeObjectForKey:pathCopy];
}

- (double)tableView:(id)view estimatedHeightForRowAtIndexPath:(id)path
{
  pathCopy = path;
  rowHeightCache = [(PHTableViewController *)self rowHeightCache];
  v7 = [rowHeightCache objectForKey:pathCopy];

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

- (void)handleUIContentSizeCategoryDidChangeNotification:(id)notification
{
  notificationCopy = notification;
  v5 = sub_100003B9C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    v9 = objc_opt_class();
    v10 = 2112;
    v11 = notificationCopy;
    v6 = v9;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ is handling <%@>", &v8, 0x16u);
  }

  rowHeightCache = [(PHTableViewController *)self rowHeightCache];
  [rowHeightCache removeAllObjects];
}

- (void)traitCollectionDidChange:(id)change
{
  v8.receiver = self;
  v8.super_class = PHTableViewController;
  changeCopy = change;
  [(PHTableViewController *)&v8 traitCollectionDidChange:changeCopy];
  v5 = [(PHTableViewController *)self traitCollection:v8.receiver];
  userInterfaceStyle = [v5 userInterfaceStyle];

  userInterfaceStyle2 = [changeCopy userInterfaceStyle];
  if (userInterfaceStyle && userInterfaceStyle2 != userInterfaceStyle)
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