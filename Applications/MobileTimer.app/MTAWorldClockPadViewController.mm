@interface MTAWorldClockPadViewController
- (MTAWorldClockPadViewController)init;
- (double)mapHeight;
- (id)contentScrollView;
- (void)addCityWithoutUserInteraction:(id)interaction;
- (void)addClock:(id)clock;
- (void)addClockViewController:(id)controller addCity:(id)city;
- (void)collectionView:(id)view didRemoveCity:(id)city;
- (void)dismissAddViewController:(id)controller;
- (void)finishAddViewControllerDismissal:(BOOL)dismissal;
- (void)handleApplicationDidEnterBackground;
- (void)handleApplicationWillEnterForeground;
- (void)handleContentSizeChange:(id)change;
- (void)prepareStateForUrlLaunch;
- (void)presentationControllerWillDismiss:(id)dismiss;
- (void)reloadState;
- (void)removeCityWithoutUserInteraction:(id)interaction;
- (void)restoreIndexPath:(id)path;
- (void)saveState;
- (void)scrollToCityAtIndex:(int64_t)index animated:(BOOL)animated;
- (void)setEditing:(BOOL)editing animated:(BOOL)animated;
- (void)setupConstraints;
- (void)showAddView;
- (void)startUpdates;
- (void)stopUpdates;
- (void)toggleEditView;
- (void)updateClocksForSize:(CGSize)size transitionCoordinator:(id)coordinator;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator;
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
    tabBarItem = [(MTAWorldClockPadViewController *)v2 tabBarItem];
    [tabBarItem setImage:v5];

    v2->_addedClockIndex = 0x7FFFFFFFFFFFFFFFLL;
    title = [(MTAWorldClockPadViewController *)v2 title];
    v8 = [NSUserActivity mtUserActivityWithActivityType:@"com.apple.clock.worldclock" title:title];
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
    presentationController = [(UINavigationController *)self->_addClockNavigationController presentationController];
    [presentationController setDelegate:self];

    [(MTAWorldClockPadViewController *)self presentViewController:self->_addClockNavigationController animated:1 completion:0];
    v6 = +[MTAStateStore shared];
    v7 = [MTAStateStoreEvent eventWithType:3];
    [v6 pushEvent:v7];
  }
}

- (void)addClock:(id)clock
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

- (void)setEditing:(BOOL)editing animated:(BOOL)animated
{
  editingCopy = editing;
  v10.receiver = self;
  v10.super_class = MTAWorldClockPadViewController;
  [(MTAWorldClockPadViewController *)&v10 setEditing:editing animated:animated];
  collectionViewController = [(MTAWorldClockPadViewController *)self collectionViewController];
  [collectionViewController setEditing:editingCopy];

  v7 = +[MTAStateStore shared];
  if (editingCopy)
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

- (void)updateClocksForSize:(CGSize)size transitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  collectionViewController = [(MTAWorldClockPadViewController *)self collectionViewController];
  collectionView = [collectionViewController collectionView];

  collectionViewController2 = [(MTAWorldClockPadViewController *)self collectionViewController];
  collectionViewLayout = [collectionViewController2 collectionViewLayout];

  if (collectionView && collectionViewLayout)
  {
    if (width > height)
    {
      v10 = 1;
    }

    else
    {
      v10 = 2;
    }

    rowsPerPage = [collectionViewLayout rowsPerPage];
    v12 = +[UIApplication sharedApplication];
    preferredContentSizeCategory = [v12 preferredContentSizeCategory];

    IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);
    v15 = UIContentSizeCategoryCompareToCategory(preferredContentSizeCategory, UIContentSizeCategoryAccessibilityLarge);
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

    columnsPerPage = [collectionViewLayout columnsPerPage];
    if (rowsPerPage != v10 || columnsPerPage != v21)
    {
      [collectionViewLayout setRowsPerPage:v10];
      [collectionViewLayout setColumnsPerPage:v21];
      [collectionViewLayout setScrollDirection:width > height];
      if (width <= height)
      {
        horizontalMapHeightConstraint = [(MTAWorldClockPadViewController *)self horizontalMapHeightConstraint];
        [horizontalMapHeightConstraint setActive:0];

        verticalMapHeightConstraint = [(MTAWorldClockPadViewController *)self verticalMapHeightConstraint];
        [verticalMapHeightConstraint setActive:1];
      }

      else
      {
        verticalMapHeightConstraint2 = [(MTAWorldClockPadViewController *)self verticalMapHeightConstraint];
        [verticalMapHeightConstraint2 setActive:0];

        horizontalMapHeightConstraint2 = [(MTAWorldClockPadViewController *)self horizontalMapHeightConstraint];
        [horizontalMapHeightConstraint2 setActive:1];

        verticalMapHeightConstraint = [(MTAWorldClockPadViewController *)self collectionViewController];
        [verticalMapHeightConstraint cellHeight];
        v27 = -v26;
        horizontalMapHeightConstraint3 = [(MTAWorldClockPadViewController *)self horizontalMapHeightConstraint];
        [horizontalMapHeightConstraint3 setConstant:v27];
      }

      collectionViewLayout2 = [collectionView collectionViewLayout];
      [collectionViewLayout2 invalidateLayout];

      [collectionView setShowsHorizontalScrollIndicator:width > height];
      [collectionView setShowsVerticalScrollIndicator:width <= height];
    }
  }
}

- (id)contentScrollView
{
  collectionViewController = [(MTAWorldClockPadViewController *)self collectionViewController];
  contentScrollView = [collectionViewController contentScrollView];

  return contentScrollView;
}

- (void)viewDidLoad
{
  v28.receiver = self;
  v28.super_class = MTAWorldClockPadViewController;
  [(MTAWorldClockPadViewController *)&v28 viewDidLoad];
  editButtonItem = [(MTAWorldClockPadViewController *)self editButtonItem];
  [editButtonItem setTarget:self];

  editButtonItem2 = [(MTAWorldClockPadViewController *)self editButtonItem];
  [editButtonItem2 setAction:"toggleEditView"];

  editButtonItem3 = [(MTAWorldClockPadViewController *)self editButtonItem];
  navigationItem = [(MTAWorldClockPadViewController *)self navigationItem];
  [navigationItem setLeftBarButtonItem:editButtonItem3];

  v7 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:4 target:self action:"addClock:"];
  navigationItem2 = [(MTAWorldClockPadViewController *)self navigationItem];
  [navigationItem2 setRightBarButtonItem:v7];

  v9 = +[NSNotificationCenter defaultCenter];
  [v9 addObserver:self selector:"handleApplicationDidEnterBackground" name:UIApplicationDidEnterBackgroundNotification object:0];

  v10 = +[NSNotificationCenter defaultCenter];
  [v10 addObserver:self selector:"handleApplicationWillEnterForeground" name:UIApplicationWillEnterForegroundNotification object:0];

  v11 = +[NSNotificationCenter defaultCenter];
  [v11 addObserver:self selector:"handleContentSizeChange:" name:UIContentSizeCategoryDidChangeNotification object:0];

  v12 = +[UIColor mtui_backgroundColor];
  view = [(MTAWorldClockPadViewController *)self view];
  [view setBackgroundColor:v12];

  v14 = [MTAWorldClockCollectionViewController alloc];
  v15 = objc_opt_new();
  v16 = [(MTAWorldClockCollectionViewController *)v14 initWithCollectionViewLayout:v15];
  [(MTAWorldClockPadViewController *)self setCollectionViewController:v16];

  collectionViewController = [(MTAWorldClockPadViewController *)self collectionViewController];
  [collectionViewController setDelegate:self];

  collectionViewController2 = [(MTAWorldClockPadViewController *)self collectionViewController];
  [(MTAWorldClockPadViewController *)self addChildViewController:collectionViewController2];

  collectionViewController3 = [(MTAWorldClockPadViewController *)self collectionViewController];
  view2 = [collectionViewController3 view];
  [view2 setTranslatesAutoresizingMaskIntoConstraints:0];

  view3 = [(MTAWorldClockPadViewController *)self view];
  collectionViewController4 = [(MTAWorldClockPadViewController *)self collectionViewController];
  view4 = [collectionViewController4 view];
  [view3 addSubview:view4];

  collectionViewController5 = [(MTAWorldClockPadViewController *)self collectionViewController];
  [collectionViewController5 didMoveToParentViewController:self];

  v25 = [[MTAWorldClockMapView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  [(MTAWorldClockPadViewController *)self setMapView:v25];

  view5 = [(MTAWorldClockPadViewController *)self view];
  mapView = [(MTAWorldClockPadViewController *)self mapView];
  [view5 addSubview:mapView];

  [(MTAWorldClockPadViewController *)self setupConstraints];
}

- (void)setupConstraints
{
  mapView = [(MTAWorldClockPadViewController *)self mapView];
  [mapView setTranslatesAutoresizingMaskIntoConstraints:0];
  collectionViewController = [(MTAWorldClockPadViewController *)self collectionViewController];
  view = [collectionViewController view];

  [view setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = objc_opt_new();
  topAnchor = [mapView topAnchor];
  view2 = [(MTAWorldClockPadViewController *)self view];
  safeAreaLayoutGuide = [view2 safeAreaLayoutGuide];
  topAnchor2 = [safeAreaLayoutGuide topAnchor];
  v10 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v5 addObject:v10];

  leadingAnchor = [mapView leadingAnchor];
  view3 = [(MTAWorldClockPadViewController *)self view];
  leadingAnchor2 = [view3 leadingAnchor];
  v14 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [v5 addObject:v14];

  trailingAnchor = [mapView trailingAnchor];
  view4 = [(MTAWorldClockPadViewController *)self view];
  trailingAnchor2 = [view4 trailingAnchor];
  v18 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [v5 addObject:v18];

  heightAnchor = [mapView heightAnchor];
  [(MTAWorldClockPadViewController *)self mapHeight];
  v20 = [heightAnchor constraintEqualToConstant:?];
  [(MTAWorldClockPadViewController *)self setVerticalMapHeightConstraint:v20];

  heightAnchor2 = [mapView heightAnchor];
  view5 = [(MTAWorldClockPadViewController *)self view];
  safeAreaLayoutGuide2 = [view5 safeAreaLayoutGuide];
  heightAnchor3 = [safeAreaLayoutGuide2 heightAnchor];
  collectionViewController2 = [(MTAWorldClockPadViewController *)self collectionViewController];
  [collectionViewController2 cellHeight];
  v27 = [heightAnchor2 constraintEqualToAnchor:heightAnchor3 constant:-v26];
  [(MTAWorldClockPadViewController *)self setHorizontalMapHeightConstraint:v27];

  leadingAnchor3 = [view leadingAnchor];
  view6 = [(MTAWorldClockPadViewController *)self view];
  leadingAnchor4 = [view6 leadingAnchor];
  v31 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  [v5 addObject:v31];

  trailingAnchor3 = [view trailingAnchor];
  view7 = [(MTAWorldClockPadViewController *)self view];
  trailingAnchor4 = [view7 trailingAnchor];
  v35 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  [v5 addObject:v35];

  topAnchor3 = [view topAnchor];
  bottomAnchor = [mapView bottomAnchor];
  v38 = [topAnchor3 constraintEqualToAnchor:bottomAnchor];
  [v5 addObject:v38];

  bottomAnchor2 = [view bottomAnchor];
  view8 = [(MTAWorldClockPadViewController *)self view];
  safeAreaLayoutGuide3 = [view8 safeAreaLayoutGuide];
  bottomAnchor3 = [safeAreaLayoutGuide3 bottomAnchor];
  v43 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3 constant:0.0];
  [(MTAWorldClockPadViewController *)self setCollectionBottomConstraint:v43];

  collectionBottomConstraint = [(MTAWorldClockPadViewController *)self collectionBottomConstraint];
  [v5 addObject:collectionBottomConstraint];

  [NSLayoutConstraint activateConstraints:v5];
}

- (double)mapHeight
{
  collectionViewController = [(MTAWorldClockPadViewController *)self collectionViewController];
  collectionViewLayout = [collectionViewController collectionViewLayout];

  if ([collectionViewLayout scrollDirection] == 1)
  {
    view = [(MTAWorldClockPadViewController *)self view];
    safeAreaLayoutGuide = [view safeAreaLayoutGuide];
    [safeAreaLayoutGuide layoutFrame];
    Height = CGRectGetHeight(v13);
    collectionViewController2 = [(MTAWorldClockPadViewController *)self collectionViewController];
    [collectionViewController2 cellHeight];
    v10 = Height - v9;
  }

  else
  {
    view = [(MTAWorldClockPadViewController *)self view];
    [view bounds];
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
    collectionViewController = [(MTAWorldClockPadViewController *)self collectionViewController];
    collectionView = [collectionViewController collectionView];

    [collectionView contentSize];
    if (v6 == CGSizeZero.width && v5 == CGSizeZero.height)
    {
      collectionViewLayout = [collectionView collectionViewLayout];
      [collectionViewLayout invalidateLayout];
    }

    view = [(MTAWorldClockPadViewController *)self view];
    [view bounds];
    [(MTAWorldClockPadViewController *)self updateClocksForSize:0 transitionCoordinator:v10, v11];
  }
}

- (void)startUpdates
{
  mapView = [(MTAWorldClockPadViewController *)self mapView];
  [mapView startUpdatingTime];

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  collectionViewController = [(MTAWorldClockPadViewController *)self collectionViewController];
  collectionView = [collectionViewController collectionView];
  visibleCells = [collectionView visibleCells];

  v7 = [visibleCells countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(visibleCells);
        }

        [*(*(&v11 + 1) + 8 * v10) start];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [visibleCells countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)stopUpdates
{
  mapView = [(MTAWorldClockPadViewController *)self mapView];
  [mapView stopUpdatingTime];

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  collectionViewController = [(MTAWorldClockPadViewController *)self collectionViewController];
  collectionView = [collectionViewController collectionView];
  visibleCells = [collectionView visibleCells];

  v7 = [visibleCells countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(visibleCells);
        }

        [*(*(&v11 + 1) + 8 * v10) stop];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [visibleCells countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  v17.receiver = self;
  v17.super_class = MTAWorldClockPadViewController;
  [(MTAWorldClockPadViewController *)&v17 viewWillAppear:appear];
  v4 = +[WorldClockManager sharedManager];
  cities = [v4 cities];

  if (!cities)
  {
    [v4 loadCities];
  }

  if (self->_initializedCurrentPage)
  {
    view = [(MTAWorldClockPadViewController *)self view];
    [view bounds];
    [(MTAWorldClockPadViewController *)self updateClocksForSize:0 transitionCoordinator:v7, v8];

    collectionViewController = [(MTAWorldClockPadViewController *)self collectionViewController];
    collectionView = [collectionViewController collectionView];
    [collectionView reloadData];
  }

  if (!cities || self->_initializedCurrentPage)
  {
    mapView = [(MTAWorldClockPadViewController *)self mapView];
    cities2 = [v4 cities];
    [mapView setCities:cities2];
  }

  [(MTAWorldClockPadViewController *)self startUpdates];
  deferAddedCity = [(MTAWorldClockPadViewController *)self deferAddedCity];

  if (deferAddedCity)
  {
    deferAddedCity2 = [(MTAWorldClockPadViewController *)self deferAddedCity];
    [(MTAWorldClockPadViewController *)self addCityWithoutUserInteraction:deferAddedCity2];

    [(MTAWorldClockPadViewController *)self setDeferAddedCity:0];
  }

  deferRemovedCity = [(MTAWorldClockPadViewController *)self deferRemovedCity];

  if (deferRemovedCity)
  {
    deferRemovedCity2 = [(MTAWorldClockPadViewController *)self deferRemovedCity];
    [(MTAWorldClockPadViewController *)self removeCityWithoutUserInteraction:deferRemovedCity2];

    [(MTAWorldClockPadViewController *)self setDeferRemovedCity:0];
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  v14.receiver = self;
  v14.super_class = MTAWorldClockPadViewController;
  [(MTAWorldClockPadViewController *)&v14 viewDidAppear:appear];
  keywords = [(NSUserActivity *)self->_userActivity keywords];
  v5 = keywords;
  if (!keywords)
  {
    v5 = +[NSSet set];
  }

  v6 = +[WorldClockManager sharedManager];
  cities = [v6 cities];
  v8 = [cities na_map:&stru_1000AD938];
  v9 = [v5 setByAddingObjectsFromArray:v8];
  [(NSUserActivity *)self->_userActivity setKeywords:v9];

  if (!keywords)
  {
  }

  [(NSUserActivity *)self->_userActivity becomeCurrent];
  collectionViewController = [(MTAWorldClockPadViewController *)self collectionViewController];
  collectionView = [collectionViewController collectionView];
  [collectionView flashScrollIndicators];

  viewLoadedAction = self->_viewLoadedAction;
  if (viewLoadedAction)
  {
    viewLoadedAction[2]();
    v13 = self->_viewLoadedAction;
    self->_viewLoadedAction = 0;
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  [(NSUserActivity *)self->_userActivity resignCurrent];
  [(MTAWorldClockPadViewController *)self stopUpdates];
  v5.receiver = self;
  v5.super_class = MTAWorldClockPadViewController;
  [(MTAWorldClockPadViewController *)&v5 viewWillDisappear:disappearCopy];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  coordinatorCopy = coordinator;
  v22.receiver = self;
  v22.super_class = MTAWorldClockPadViewController;
  [(MTAWorldClockPadViewController *)&v22 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  collectionViewController = [(MTAWorldClockPadViewController *)self collectionViewController];
  collectionView = [collectionViewController collectionView];

  indexPathsForVisibleItems = [collectionView indexPathsForVisibleItems];
  v11 = [indexPathsForVisibleItems sortedArrayUsingComparator:&stru_1000AD978];
  firstObject = [v11 firstObject];

  mapView = [(MTAWorldClockPadViewController *)self mapView];
  [mapView viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:{width, height}];

  view = [(MTAWorldClockPadViewController *)self view];
  window = [view window];

  if (window && width >= 668.0)
  {
    [(MTAWorldClockPadViewController *)self updateClocksForSize:coordinatorCopy transitionCoordinator:width, height];
  }

  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1000071D0;
  v20[3] = &unk_1000AD9A0;
  v20[4] = self;
  v21 = firstObject;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100007248;
  v18[3] = &unk_1000AD9C8;
  v19 = collectionView;
  v16 = collectionView;
  v17 = firstObject;
  [coordinatorCopy animateAlongsideTransition:v20 completion:v18];
}

- (void)willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator
{
  collectionCopy = collection;
  v12.receiver = self;
  v12.super_class = MTAWorldClockPadViewController;
  [(MTAWorldClockPadViewController *)&v12 willTransitionToTraitCollection:collectionCopy withTransitionCoordinator:coordinator];
  traitCollection = [(MTAWorldClockPadViewController *)self traitCollection];
  if ([traitCollection horizontalSizeClass] == 2)
  {
    horizontalSizeClass = [collectionCopy horizontalSizeClass];

    if (horizontalSizeClass == 1)
    {
      if (self->_addClockNavigationController)
      {
        presentedViewController = [(MTAWorldClockPadViewController *)self presentedViewController];
        addClockNavigationController = self->_addClockNavigationController;

        if (presentedViewController == addClockNavigationController)
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
  mapView = [(MTAWorldClockPadViewController *)self mapView];
  [mapView startUpdatingTime];

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  collectionViewController = [(MTAWorldClockPadViewController *)self collectionViewController];
  collectionView = [collectionViewController collectionView];
  visibleCells = [collectionView visibleCells];

  v7 = [visibleCells countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(visibleCells);
        }

        [*(*(&v11 + 1) + 8 * v10) start];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [visibleCells countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)handleApplicationDidEnterBackground
{
  mapView = [(MTAWorldClockPadViewController *)self mapView];
  [mapView stopUpdatingTime];

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  collectionViewController = [(MTAWorldClockPadViewController *)self collectionViewController];
  collectionView = [collectionViewController collectionView];
  visibleCells = [collectionView visibleCells];

  v7 = [visibleCells countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(visibleCells);
        }

        [*(*(&v11 + 1) + 8 * v10) start];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [visibleCells countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)handleContentSizeChange:(id)change
{
  collectionViewController = [(MTAWorldClockPadViewController *)self collectionViewController];
  [collectionViewController handleContentSizeChange];

  view = [(MTAWorldClockPadViewController *)self view];
  [view setNeedsUpdateConstraints];
}

- (void)collectionView:(id)view didRemoveCity:(id)city
{
  cityCopy = city;
  mapView = [(MTAWorldClockPadViewController *)self mapView];
  [mapView removeCity:cityCopy];

  v7 = +[WorldClockManager sharedManager];
  cities = [v7 cities];
  v9 = [cities count];

  if (!v9)
  {

    [(MTAWorldClockPadViewController *)self setEditing:0];
  }
}

- (void)addCityWithoutUserInteraction:(id)interaction
{
  [(MTAWorldClockPadViewController *)self addClockViewController:0 addCity:interaction];

  [(MTAWorldClockPadViewController *)self dismissAddViewController:0];
}

- (void)addClockViewController:(id)controller addCity:(id)city
{
  cityCopy = city;
  v6 = +[WorldClockManager sharedManager];
  collectionViewController = [(MTAWorldClockPadViewController *)self collectionViewController];
  collectionView = [collectionViewController collectionView];

  cities = [v6 cities];
  v10 = [cities count];

  v11 = [v6 addCity:cityCopy];
  if (v11 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = 0;
  }

  else
  {
    v12 = [NSIndexPath indexPathForItem:v11 inSection:0];
    cities2 = [v6 cities];
    v14 = [cities2 count];

    if (v10 != v14)
    {
      [v6 saveCities];
      v17 = v12;
      v15 = [NSArray arrayWithObjects:&v17 count:1];
      [collectionView insertItemsAtIndexPaths:v15];

      collectionViewLayout = [collectionView collectionViewLayout];
      [collectionViewLayout invalidateLayout];

      [MTAnalytics incrementEventCount:kMTCAWorldClockAdds];
    }
  }

  self->_addedClockIndex = v11;
}

- (void)removeCityWithoutUserInteraction:(id)interaction
{
  interactionCopy = interaction;
  v5 = +[WorldClockManager sharedManager];
  cities = [v5 cities];
  v7 = [cities indexOfObject:interactionCopy];

  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    collectionViewController = [(MTAWorldClockPadViewController *)self collectionViewController];
    v8 = [NSIndexPath indexPathForRow:v7 inSection:0];
    [collectionViewController removeCityAtIndexPath:v8];
  }
}

- (void)dismissAddViewController:(id)controller
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

- (void)presentationControllerWillDismiss:(id)dismiss
{
  [(MTAWorldClockPadViewController *)self finishAddViewControllerDismissal:1];
  addClockNavigationController = self->_addClockNavigationController;
  self->_addClockNavigationController = 0;
}

- (void)finishAddViewControllerDismissal:(BOOL)dismissal
{
  addedClockIndex = self->_addedClockIndex;
  if (addedClockIndex != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(MTAWorldClockPadViewController *)self scrollToCityAtIndex:addedClockIndex animated:1];
    v5 = +[WorldClockManager sharedManager];
    cities = [v5 cities];
    v7 = [cities objectAtIndexedSubscript:self->_addedClockIndex];

    mapView = [(MTAWorldClockPadViewController *)self mapView];
    [mapView addCity:v7];

    self->_addedClockIndex = 0x7FFFFFFFFFFFFFFFLL;
  }

  v10 = +[MTAStateStore shared];
  v9 = [MTAStateStoreEvent eventWithType:4];
  [v10 pushEvent:v9];
}

- (void)scrollToCityAtIndex:(int64_t)index animated:(BOOL)animated
{
  animatedCopy = animated;
  collectionViewController = [(MTAWorldClockPadViewController *)self collectionViewController];
  v6 = [NSIndexPath indexPathForItem:index inSection:0];
  [collectionViewController scrollToPageContainingIndexPath:v6 animated:animatedCopy];
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

- (void)restoreIndexPath:(id)path
{
  pathCopy = path;
  section = [pathCopy section];
  collectionViewController = [(MTAWorldClockPadViewController *)self collectionViewController];
  collectionView = [collectionViewController collectionView];
  if (section < [collectionView numberOfSections])
  {
    v7 = [pathCopy row];
    collectionViewController2 = [(MTAWorldClockPadViewController *)self collectionViewController];
    collectionView2 = [collectionViewController2 collectionView];
    v10 = [collectionView2 numberOfItemsInSection:{objc_msgSend(pathCopy, "section")}];

    if (v7 >= v10)
    {
      goto LABEL_8;
    }

    v11 = +[UIDevice currentDevice];
    v12 = [v11 orientation] - 3;

    collectionViewController = [(MTAWorldClockPadViewController *)self collectionViewController];
    collectionView3 = [collectionViewController collectionView];
    collectionView = collectionView3;
    if (v12 >= 2)
    {
      v14 = 4;
    }

    else
    {
      v14 = 32;
    }

    [collectionView3 scrollToItemAtIndexPath:pathCopy atScrollPosition:v14 animated:0];
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