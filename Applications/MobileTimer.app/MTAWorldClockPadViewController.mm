@interface MTAWorldClockPadViewController
- (MTAWorldClockPadViewController)init;
- (double)mapHeight;
- (id)contentScrollView;
- (void)addCityWithoutUserInteraction:(id)a3;
- (void)addClock:(id)a3;
- (void)addClockViewController:(id)a3 addCity:(id)a4;
- (void)collectionView:(id)a3 didRemoveCity:(id)a4;
- (void)dismissAddViewController:(id)a3;
- (void)finishAddViewControllerDismissal:(BOOL)a3;
- (void)handleApplicationDidEnterBackground;
- (void)handleApplicationWillEnterForeground;
- (void)handleContentSizeChange:(id)a3;
- (void)prepareStateForUrlLaunch;
- (void)presentationControllerWillDismiss:(id)a3;
- (void)reloadState;
- (void)removeCityWithoutUserInteraction:(id)a3;
- (void)restoreIndexPath:(id)a3;
- (void)saveState;
- (void)scrollToCityAtIndex:(int64_t)a3 animated:(BOOL)a4;
- (void)setEditing:(BOOL)a3 animated:(BOOL)a4;
- (void)setupConstraints;
- (void)showAddView;
- (void)startUpdates;
- (void)stopUpdates;
- (void)toggleEditView;
- (void)updateClocksForSize:(CGSize)a3 transitionCoordinator:(id)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
- (void)willTransitionToTraitCollection:(id)a3 withTransitionCoordinator:(id)a4;
@end

@implementation MTAWorldClockPadViewController

- (MTAWorldClockPadViewController)init
{
  v12.receiver = self;
  v12.super_class = MTAWorldClockPadViewController;
  v2 = [(MTAWorldClockPadViewController *)&v12 init];
  if (v2)
  {
    v3 = +[NSBundle mainBundle];
    v4 = [v3 localizedStringForKey:@"WORLD_CLOCK" value:&stru_1000AEF10 table:0];
    [(MTAWorldClockPadViewController *)v2 setTitle:v4];

    v5 = [UIImage systemImageNamed:@"globe"];
    v6 = [(MTAWorldClockPadViewController *)v2 tabBarItem];
    [v6 setImage:v5];

    v2->_addedClockIndex = 0x7FFFFFFFFFFFFFFFLL;
    v7 = [(MTAWorldClockPadViewController *)v2 title];
    v8 = [NSUserActivity mtUserActivityWithActivityType:@"com.apple.clock.worldclock" title:v7];
    userActivity = v2->_userActivity;
    v2->_userActivity = v8;

    v10 = v2;
  }

  return v2;
}

- (void)showAddView
{
  if ([(MTAWorldClockPadViewController *)self shouldShowAddView])
  {
    v8 = objc_alloc_init(MTAAddClockViewController);
    [(MTAAddClockViewController *)v8 setDelegate:self];
    v3 = [[UINavigationController alloc] initWithRootViewController:v8];
    addClockNavigationController = self->_addClockNavigationController;
    self->_addClockNavigationController = v3;

    [(UINavigationController *)self->_addClockNavigationController setModalPresentationStyle:2];
    v5 = [(UINavigationController *)self->_addClockNavigationController presentationController];
    [v5 setDelegate:self];

    [(MTAWorldClockPadViewController *)self presentViewController:self->_addClockNavigationController animated:1 completion:0];
    v6 = +[MTAStateStore shared];
    v7 = [MTAStateStoreEvent eventWithType:3];
    [v6 pushEvent:v7];
  }
}

- (void)addClock:(id)a3
{
  [(MTAWorldClockPadViewController *)self setEditing:0];

  [(MTAWorldClockPadViewController *)self showAddView];
}

- (void)toggleEditView
{
  if ([(MTAWorldClockPadViewController *)self shouldToggleEditView])
  {
    v3 = [(MTAWorldClockPadViewController *)self isEditing]^ 1;

    [(MTAWorldClockPadViewController *)self setEditing:v3];
  }
}

- (void)setEditing:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = MTAWorldClockPadViewController;
  [(MTAWorldClockPadViewController *)&v10 setEditing:a3 animated:a4];
  v6 = [(MTAWorldClockPadViewController *)self collectionViewController];
  [v6 setEditing:v4];

  v7 = +[MTAStateStore shared];
  if (v4)
  {
    v8 = 5;
  }

  else
  {
    v8 = 4;
  }

  v9 = [MTAStateStoreEvent eventWithType:v8];
  [v7 pushEvent:v9];
}

- (void)updateClocksForSize:(CGSize)a3 transitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = [(MTAWorldClockPadViewController *)self collectionViewController];
  v31 = [v7 collectionView];

  v8 = [(MTAWorldClockPadViewController *)self collectionViewController];
  v9 = [v8 collectionViewLayout];

  if (v31 && v9)
  {
    if (width > height)
    {
      v10 = 1;
    }

    else
    {
      v10 = 2;
    }

    v11 = [v9 rowsPerPage];
    v12 = +[UIApplication sharedApplication];
    v13 = [v12 preferredContentSizeCategory];

    IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v13);
    v15 = UIContentSizeCategoryCompareToCategory(v13, UIContentSizeCategoryAccessibilityLarge);
    if (IsAccessibilityCategory)
    {
      v16 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
      [v16 _scaledValueForValue:150.0];
      v18 = v17;
    }

    else
    {
      v18 = 225.0;
    }

    if (width <= height)
    {
      v20 = 3.0;
      if (IsAccessibilityCategory)
      {
        v20 = 2.0;
      }
    }

    else
    {
      v19 = width / v18;
      v20 = floorf(v19);
    }

    if (v15 == NSOrderedDescending)
    {
      v21 = 1;
    }

    else
    {
      v21 = v20;
    }

    v22 = [v9 columnsPerPage];
    if (v11 != v10 || v22 != v21)
    {
      [v9 setRowsPerPage:v10];
      [v9 setColumnsPerPage:v21];
      [v9 setScrollDirection:width > height];
      if (width <= height)
      {
        v29 = [(MTAWorldClockPadViewController *)self horizontalMapHeightConstraint];
        [v29 setActive:0];

        v25 = [(MTAWorldClockPadViewController *)self verticalMapHeightConstraint];
        [v25 setActive:1];
      }

      else
      {
        v23 = [(MTAWorldClockPadViewController *)self verticalMapHeightConstraint];
        [v23 setActive:0];

        v24 = [(MTAWorldClockPadViewController *)self horizontalMapHeightConstraint];
        [v24 setActive:1];

        v25 = [(MTAWorldClockPadViewController *)self collectionViewController];
        [v25 cellHeight];
        v27 = -v26;
        v28 = [(MTAWorldClockPadViewController *)self horizontalMapHeightConstraint];
        [v28 setConstant:v27];
      }

      v30 = [v31 collectionViewLayout];
      [v30 invalidateLayout];

      [v31 setShowsHorizontalScrollIndicator:width > height];
      [v31 setShowsVerticalScrollIndicator:width <= height];
    }
  }
}

- (id)contentScrollView
{
  v2 = [(MTAWorldClockPadViewController *)self collectionViewController];
  v3 = [v2 contentScrollView];

  return v3;
}

- (void)viewDidLoad
{
  v28.receiver = self;
  v28.super_class = MTAWorldClockPadViewController;
  [(MTAWorldClockPadViewController *)&v28 viewDidLoad];
  v3 = [(MTAWorldClockPadViewController *)self editButtonItem];
  [v3 setTarget:self];

  v4 = [(MTAWorldClockPadViewController *)self editButtonItem];
  [v4 setAction:"toggleEditView"];

  v5 = [(MTAWorldClockPadViewController *)self editButtonItem];
  v6 = [(MTAWorldClockPadViewController *)self navigationItem];
  [v6 setLeftBarButtonItem:v5];

  v7 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:4 target:self action:"addClock:"];
  v8 = [(MTAWorldClockPadViewController *)self navigationItem];
  [v8 setRightBarButtonItem:v7];

  v9 = +[NSNotificationCenter defaultCenter];
  [v9 addObserver:self selector:"handleApplicationDidEnterBackground" name:UIApplicationDidEnterBackgroundNotification object:0];

  v10 = +[NSNotificationCenter defaultCenter];
  [v10 addObserver:self selector:"handleApplicationWillEnterForeground" name:UIApplicationWillEnterForegroundNotification object:0];

  v11 = +[NSNotificationCenter defaultCenter];
  [v11 addObserver:self selector:"handleContentSizeChange:" name:UIContentSizeCategoryDidChangeNotification object:0];

  v12 = +[UIColor mtui_backgroundColor];
  v13 = [(MTAWorldClockPadViewController *)self view];
  [v13 setBackgroundColor:v12];

  v14 = [MTAWorldClockCollectionViewController alloc];
  v15 = objc_opt_new();
  v16 = [(MTAWorldClockCollectionViewController *)v14 initWithCollectionViewLayout:v15];
  [(MTAWorldClockPadViewController *)self setCollectionViewController:v16];

  v17 = [(MTAWorldClockPadViewController *)self collectionViewController];
  [v17 setDelegate:self];

  v18 = [(MTAWorldClockPadViewController *)self collectionViewController];
  [(MTAWorldClockPadViewController *)self addChildViewController:v18];

  v19 = [(MTAWorldClockPadViewController *)self collectionViewController];
  v20 = [v19 view];
  [v20 setTranslatesAutoresizingMaskIntoConstraints:0];

  v21 = [(MTAWorldClockPadViewController *)self view];
  v22 = [(MTAWorldClockPadViewController *)self collectionViewController];
  v23 = [v22 view];
  [v21 addSubview:v23];

  v24 = [(MTAWorldClockPadViewController *)self collectionViewController];
  [v24 didMoveToParentViewController:self];

  v25 = [[MTAWorldClockMapView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  [(MTAWorldClockPadViewController *)self setMapView:v25];

  v26 = [(MTAWorldClockPadViewController *)self view];
  v27 = [(MTAWorldClockPadViewController *)self mapView];
  [v26 addSubview:v27];

  [(MTAWorldClockPadViewController *)self setupConstraints];
}

- (void)setupConstraints
{
  v45 = [(MTAWorldClockPadViewController *)self mapView];
  [v45 setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = [(MTAWorldClockPadViewController *)self collectionViewController];
  v4 = [v3 view];

  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = objc_opt_new();
  v6 = [v45 topAnchor];
  v7 = [(MTAWorldClockPadViewController *)self view];
  v8 = [v7 safeAreaLayoutGuide];
  v9 = [v8 topAnchor];
  v10 = [v6 constraintEqualToAnchor:v9];
  [v5 addObject:v10];

  v11 = [v45 leadingAnchor];
  v12 = [(MTAWorldClockPadViewController *)self view];
  v13 = [v12 leadingAnchor];
  v14 = [v11 constraintEqualToAnchor:v13];
  [v5 addObject:v14];

  v15 = [v45 trailingAnchor];
  v16 = [(MTAWorldClockPadViewController *)self view];
  v17 = [v16 trailingAnchor];
  v18 = [v15 constraintEqualToAnchor:v17];
  [v5 addObject:v18];

  v19 = [v45 heightAnchor];
  [(MTAWorldClockPadViewController *)self mapHeight];
  v20 = [v19 constraintEqualToConstant:?];
  [(MTAWorldClockPadViewController *)self setVerticalMapHeightConstraint:v20];

  v21 = [v45 heightAnchor];
  v22 = [(MTAWorldClockPadViewController *)self view];
  v23 = [v22 safeAreaLayoutGuide];
  v24 = [v23 heightAnchor];
  v25 = [(MTAWorldClockPadViewController *)self collectionViewController];
  [v25 cellHeight];
  v27 = [v21 constraintEqualToAnchor:v24 constant:-v26];
  [(MTAWorldClockPadViewController *)self setHorizontalMapHeightConstraint:v27];

  v28 = [v4 leadingAnchor];
  v29 = [(MTAWorldClockPadViewController *)self view];
  v30 = [v29 leadingAnchor];
  v31 = [v28 constraintEqualToAnchor:v30];
  [v5 addObject:v31];

  v32 = [v4 trailingAnchor];
  v33 = [(MTAWorldClockPadViewController *)self view];
  v34 = [v33 trailingAnchor];
  v35 = [v32 constraintEqualToAnchor:v34];
  [v5 addObject:v35];

  v36 = [v4 topAnchor];
  v37 = [v45 bottomAnchor];
  v38 = [v36 constraintEqualToAnchor:v37];
  [v5 addObject:v38];

  v39 = [v4 bottomAnchor];
  v40 = [(MTAWorldClockPadViewController *)self view];
  v41 = [v40 safeAreaLayoutGuide];
  v42 = [v41 bottomAnchor];
  v43 = [v39 constraintEqualToAnchor:v42 constant:0.0];
  [(MTAWorldClockPadViewController *)self setCollectionBottomConstraint:v43];

  v44 = [(MTAWorldClockPadViewController *)self collectionBottomConstraint];
  [v5 addObject:v44];

  [NSLayoutConstraint activateConstraints:v5];
}

- (double)mapHeight
{
  v3 = [(MTAWorldClockPadViewController *)self collectionViewController];
  v4 = [v3 collectionViewLayout];

  if ([v4 scrollDirection] == 1)
  {
    v5 = [(MTAWorldClockPadViewController *)self view];
    v6 = [v5 safeAreaLayoutGuide];
    [v6 layoutFrame];
    Height = CGRectGetHeight(v13);
    v8 = [(MTAWorldClockPadViewController *)self collectionViewController];
    [v8 cellHeight];
    v10 = Height - v9;
  }

  else
  {
    v5 = [(MTAWorldClockPadViewController *)self view];
    [v5 bounds];
    [MTAWorldClockMapView mapHeightForWidth:CGRectGetWidth(v14)];
    v10 = v11;
  }

  return v10;
}

- (void)viewWillLayoutSubviews
{
  v12.receiver = self;
  v12.super_class = MTAWorldClockPadViewController;
  [(MTAWorldClockPadViewController *)&v12 viewWillLayoutSubviews];
  if (!self->_initializedCurrentPage)
  {
    self->_initializedCurrentPage = 1;
    v3 = [(MTAWorldClockPadViewController *)self collectionViewController];
    v4 = [v3 collectionView];

    [v4 contentSize];
    if (v6 == CGSizeZero.width && v5 == CGSizeZero.height)
    {
      v8 = [v4 collectionViewLayout];
      [v8 invalidateLayout];
    }

    v9 = [(MTAWorldClockPadViewController *)self view];
    [v9 bounds];
    [(MTAWorldClockPadViewController *)self updateClocksForSize:0 transitionCoordinator:v10, v11];
  }
}

- (void)startUpdates
{
  v3 = [(MTAWorldClockPadViewController *)self mapView];
  [v3 startUpdatingTime];

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [(MTAWorldClockPadViewController *)self collectionViewController];
  v5 = [v4 collectionView];
  v6 = [v5 visibleCells];

  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v11 + 1) + 8 * v10) start];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)stopUpdates
{
  v3 = [(MTAWorldClockPadViewController *)self mapView];
  [v3 stopUpdatingTime];

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [(MTAWorldClockPadViewController *)self collectionViewController];
  v5 = [v4 collectionView];
  v6 = [v5 visibleCells];

  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v11 + 1) + 8 * v10) stop];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v17.receiver = self;
  v17.super_class = MTAWorldClockPadViewController;
  [(MTAWorldClockPadViewController *)&v17 viewWillAppear:a3];
  v4 = +[WorldClockManager sharedManager];
  v5 = [v4 cities];

  if (!v5)
  {
    [v4 loadCities];
  }

  if (self->_initializedCurrentPage)
  {
    v6 = [(MTAWorldClockPadViewController *)self view];
    [v6 bounds];
    [(MTAWorldClockPadViewController *)self updateClocksForSize:0 transitionCoordinator:v7, v8];

    v9 = [(MTAWorldClockPadViewController *)self collectionViewController];
    v10 = [v9 collectionView];
    [v10 reloadData];
  }

  if (!v5 || self->_initializedCurrentPage)
  {
    v11 = [(MTAWorldClockPadViewController *)self mapView];
    v12 = [v4 cities];
    [v11 setCities:v12];
  }

  [(MTAWorldClockPadViewController *)self startUpdates];
  v13 = [(MTAWorldClockPadViewController *)self deferAddedCity];

  if (v13)
  {
    v14 = [(MTAWorldClockPadViewController *)self deferAddedCity];
    [(MTAWorldClockPadViewController *)self addCityWithoutUserInteraction:v14];

    [(MTAWorldClockPadViewController *)self setDeferAddedCity:0];
  }

  v15 = [(MTAWorldClockPadViewController *)self deferRemovedCity];

  if (v15)
  {
    v16 = [(MTAWorldClockPadViewController *)self deferRemovedCity];
    [(MTAWorldClockPadViewController *)self removeCityWithoutUserInteraction:v16];

    [(MTAWorldClockPadViewController *)self setDeferRemovedCity:0];
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v14.receiver = self;
  v14.super_class = MTAWorldClockPadViewController;
  [(MTAWorldClockPadViewController *)&v14 viewDidAppear:a3];
  v4 = [(NSUserActivity *)self->_userActivity keywords];
  v5 = v4;
  if (!v4)
  {
    v5 = +[NSSet set];
  }

  v6 = +[WorldClockManager sharedManager];
  v7 = [v6 cities];
  v8 = [v7 na_map:&stru_1000AD938];
  v9 = [v5 setByAddingObjectsFromArray:v8];
  [(NSUserActivity *)self->_userActivity setKeywords:v9];

  if (!v4)
  {
  }

  [(NSUserActivity *)self->_userActivity becomeCurrent];
  v10 = [(MTAWorldClockPadViewController *)self collectionViewController];
  v11 = [v10 collectionView];
  [v11 flashScrollIndicators];

  viewLoadedAction = self->_viewLoadedAction;
  if (viewLoadedAction)
  {
    viewLoadedAction[2]();
    v13 = self->_viewLoadedAction;
    self->_viewLoadedAction = 0;
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  [(NSUserActivity *)self->_userActivity resignCurrent];
  [(MTAWorldClockPadViewController *)self stopUpdates];
  v5.receiver = self;
  v5.super_class = MTAWorldClockPadViewController;
  [(MTAWorldClockPadViewController *)&v5 viewWillDisappear:v3];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  v22.receiver = self;
  v22.super_class = MTAWorldClockPadViewController;
  [(MTAWorldClockPadViewController *)&v22 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  v8 = [(MTAWorldClockPadViewController *)self collectionViewController];
  v9 = [v8 collectionView];

  v10 = [v9 indexPathsForVisibleItems];
  v11 = [v10 sortedArrayUsingComparator:&stru_1000AD978];
  v12 = [v11 firstObject];

  v13 = [(MTAWorldClockPadViewController *)self mapView];
  [v13 viewWillTransitionToSize:v7 withTransitionCoordinator:{width, height}];

  v14 = [(MTAWorldClockPadViewController *)self view];
  v15 = [v14 window];

  if (v15 && width >= 668.0)
  {
    [(MTAWorldClockPadViewController *)self updateClocksForSize:v7 transitionCoordinator:width, height];
  }

  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1000071D0;
  v20[3] = &unk_1000AD9A0;
  v20[4] = self;
  v21 = v12;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100007248;
  v18[3] = &unk_1000AD9C8;
  v19 = v9;
  v16 = v9;
  v17 = v12;
  [v7 animateAlongsideTransition:v20 completion:v18];
}

- (void)willTransitionToTraitCollection:(id)a3 withTransitionCoordinator:(id)a4
{
  v6 = a3;
  v12.receiver = self;
  v12.super_class = MTAWorldClockPadViewController;
  [(MTAWorldClockPadViewController *)&v12 willTransitionToTraitCollection:v6 withTransitionCoordinator:a4];
  v7 = [(MTAWorldClockPadViewController *)self traitCollection];
  if ([v7 horizontalSizeClass] == 2)
  {
    v8 = [v6 horizontalSizeClass];

    if (v8 == 1)
    {
      if (self->_addClockNavigationController)
      {
        v9 = [(MTAWorldClockPadViewController *)self presentedViewController];
        addClockNavigationController = self->_addClockNavigationController;

        if (v9 == addClockNavigationController)
        {
          v11[0] = _NSConcreteStackBlock;
          v11[1] = 3221225472;
          v11[2] = sub_100007378;
          v11[3] = &unk_1000AD9F0;
          v11[4] = self;
          [(MTAWorldClockPadViewController *)self dismissViewControllerAnimated:1 completion:v11];
        }
      }
    }
  }

  else
  {
  }
}

- (void)handleApplicationWillEnterForeground
{
  v3 = [(MTAWorldClockPadViewController *)self mapView];
  [v3 startUpdatingTime];

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [(MTAWorldClockPadViewController *)self collectionViewController];
  v5 = [v4 collectionView];
  v6 = [v5 visibleCells];

  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v11 + 1) + 8 * v10) start];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)handleApplicationDidEnterBackground
{
  v3 = [(MTAWorldClockPadViewController *)self mapView];
  [v3 stopUpdatingTime];

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [(MTAWorldClockPadViewController *)self collectionViewController];
  v5 = [v4 collectionView];
  v6 = [v5 visibleCells];

  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v11 + 1) + 8 * v10) start];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)handleContentSizeChange:(id)a3
{
  v4 = [(MTAWorldClockPadViewController *)self collectionViewController];
  [v4 handleContentSizeChange];

  v5 = [(MTAWorldClockPadViewController *)self view];
  [v5 setNeedsUpdateConstraints];
}

- (void)collectionView:(id)a3 didRemoveCity:(id)a4
{
  v5 = a4;
  v6 = [(MTAWorldClockPadViewController *)self mapView];
  [v6 removeCity:v5];

  v7 = +[WorldClockManager sharedManager];
  v8 = [v7 cities];
  v9 = [v8 count];

  if (!v9)
  {

    [(MTAWorldClockPadViewController *)self setEditing:0];
  }
}

- (void)addCityWithoutUserInteraction:(id)a3
{
  [(MTAWorldClockPadViewController *)self addClockViewController:0 addCity:a3];

  [(MTAWorldClockPadViewController *)self dismissAddViewController:0];
}

- (void)addClockViewController:(id)a3 addCity:(id)a4
{
  v5 = a4;
  v6 = +[WorldClockManager sharedManager];
  v7 = [(MTAWorldClockPadViewController *)self collectionViewController];
  v8 = [v7 collectionView];

  v9 = [v6 cities];
  v10 = [v9 count];

  v11 = [v6 addCity:v5];
  if (v11 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = 0;
  }

  else
  {
    v12 = [NSIndexPath indexPathForItem:v11 inSection:0];
    v13 = [v6 cities];
    v14 = [v13 count];

    if (v10 != v14)
    {
      [v6 saveCities];
      v17 = v12;
      v15 = [NSArray arrayWithObjects:&v17 count:1];
      [v8 insertItemsAtIndexPaths:v15];

      v16 = [v8 collectionViewLayout];
      [v16 invalidateLayout];

      [MTAnalytics incrementEventCount:kMTCAWorldClockAdds];
    }
  }

  self->_addedClockIndex = v11;
}

- (void)removeCityWithoutUserInteraction:(id)a3
{
  v4 = a3;
  v5 = +[WorldClockManager sharedManager];
  v6 = [v5 cities];
  v7 = [v6 indexOfObject:v4];

  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = [(MTAWorldClockPadViewController *)self collectionViewController];
    v8 = [NSIndexPath indexPathForRow:v7 inSection:0];
    [v9 removeCityAtIndexPath:v8];
  }
}

- (void)dismissAddViewController:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100007AAC;
  v5[3] = &unk_1000AD9F0;
  v5[4] = self;
  [(MTAWorldClockPadViewController *)self dismissViewControllerAnimated:1 completion:v5];
  addClockNavigationController = self->_addClockNavigationController;
  self->_addClockNavigationController = 0;
}

- (void)presentationControllerWillDismiss:(id)a3
{
  [(MTAWorldClockPadViewController *)self finishAddViewControllerDismissal:1];
  addClockNavigationController = self->_addClockNavigationController;
  self->_addClockNavigationController = 0;
}

- (void)finishAddViewControllerDismissal:(BOOL)a3
{
  addedClockIndex = self->_addedClockIndex;
  if (addedClockIndex != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(MTAWorldClockPadViewController *)self scrollToCityAtIndex:addedClockIndex animated:1];
    v5 = +[WorldClockManager sharedManager];
    v6 = [v5 cities];
    v7 = [v6 objectAtIndexedSubscript:self->_addedClockIndex];

    v8 = [(MTAWorldClockPadViewController *)self mapView];
    [v8 addCity:v7];

    self->_addedClockIndex = 0x7FFFFFFFFFFFFFFFLL;
  }

  v10 = +[MTAStateStore shared];
  v9 = [MTAStateStoreEvent eventWithType:4];
  [v10 pushEvent:v9];
}

- (void)scrollToCityAtIndex:(int64_t)a3 animated:(BOOL)a4
{
  v4 = a4;
  v7 = [(MTAWorldClockPadViewController *)self collectionViewController];
  v6 = [NSIndexPath indexPathForItem:a3 inSection:0];
  [v7 scrollToPageContainingIndexPath:v6 animated:v4];
}

- (void)reloadState
{
  v2 = +[WorldClockManager sharedManager];
  [v2 loadCities];
}

- (void)saveState
{
  v2 = +[WorldClockManager sharedManager];
  [v2 saveCities];
}

- (void)restoreIndexPath:(id)a3
{
  v15 = a3;
  v4 = [v15 section];
  v5 = [(MTAWorldClockPadViewController *)self collectionViewController];
  v6 = [v5 collectionView];
  if (v4 < [v6 numberOfSections])
  {
    v7 = [v15 row];
    v8 = [(MTAWorldClockPadViewController *)self collectionViewController];
    v9 = [v8 collectionView];
    v10 = [v9 numberOfItemsInSection:{objc_msgSend(v15, "section")}];

    if (v7 >= v10)
    {
      goto LABEL_8;
    }

    v11 = +[UIDevice currentDevice];
    v12 = [v11 orientation] - 3;

    v5 = [(MTAWorldClockPadViewController *)self collectionViewController];
    v13 = [v5 collectionView];
    v6 = v13;
    if (v12 >= 2)
    {
      v14 = 4;
    }

    else
    {
      v14 = 32;
    }

    [v13 scrollToItemAtIndexPath:v15 atScrollPosition:v14 animated:0];
  }

LABEL_8:
}

- (void)prepareStateForUrlLaunch
{
  addClockNavigationController = self->_addClockNavigationController;
  self->_addClockNavigationController = 0;

  viewLoadedAction = self->_viewLoadedAction;
  self->_viewLoadedAction = 0;
}

@end