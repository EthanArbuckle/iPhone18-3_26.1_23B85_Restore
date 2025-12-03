@interface MainWindowContentContainerViewController
- (BOOL)_isWindowSizeFullscreen:(CGSize)fullscreen;
- (MainWindowContentContainerDelegate)delegate;
- (MainWindowContentContainerViewController)initWithRootNavigationController:(id)controller;
- (MainWindowSearchBar)searchBar;
- (id)startSearch;
- (void)cancelSearch;
- (void)continueSearchWithTerm:(id)term;
- (void)endSearch:(BOOL)search;
- (void)keyboardFrameChanged:(id)changed;
- (void)layoutSegmentedControl;
- (void)loadView;
- (void)resetSearchBar;
- (void)searchBar:(id)bar textDidChange:(id)change;
- (void)searchBarTextDidBeginEditing:(id)editing;
- (void)searchResultsViewController:(id)controller didSelectEvent:(id)event;
- (void)setSearchBar:(id)bar;
- (void)setupSearch:(BOOL)search;
- (void)setupSearchNavBarHeight;
- (void)splitViewController:(id)controller willHideColumn:(int64_t)column;
- (void)teardownSearch;
- (void)todayTapped;
- (void)todayToolbarItemPressed;
- (void)updateSearchViewControllerToolbar;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator;
@end

@implementation MainWindowContentContainerViewController

- (MainWindowContentContainerViewController)initWithRootNavigationController:(id)controller
{
  controllerCopy = controller;
  v19.receiver = self;
  v19.super_class = MainWindowContentContainerViewController;
  v6 = [(MainWindowContentContainerViewController *)&v19 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_rootNavigationController, controller);
    v8 = [[UISplitViewController alloc] initWithStyle:1];
    splitViewController = v7->_splitViewController;
    v7->_splitViewController = v8;

    [(UISplitViewController *)v7->_splitViewController setDelegate:v7];
    [(UISplitViewController *)v7->_splitViewController setPreferredDisplayMode:1];
    [(UISplitViewController *)v7->_splitViewController setPrimaryEdge:1];
    [(UISplitViewController *)v7->_splitViewController setPresentsWithGesture:0];
    eKUI_viewHierarchy = [controllerCopy EKUI_viewHierarchy];
    [MainWindowRootViewController sidebarWidthForViewHierarchy:eKUI_viewHierarchy];
    [(UISplitViewController *)v7->_splitViewController setMinimumPrimaryColumnWidth:?];
    [MainWindowRootViewController sidebarWidthForViewHierarchy:eKUI_viewHierarchy];
    [(UISplitViewController *)v7->_splitViewController setMaximumPrimaryColumnWidth:?];
    v11 = objc_alloc_init(UIViewController);
    containerViewController = v7->_containerViewController;
    v7->_containerViewController = v11;

    view = [(UIViewController *)v7->_containerViewController view];
    [view setAutoresizingMask:18];

    [(UIViewController *)v7->_containerViewController addChildViewController:v7->_rootNavigationController];
    view2 = [(UIViewController *)v7->_containerViewController view];
    view3 = [(RootNavigationController *)v7->_rootNavigationController view];
    [view2 addSubview:view3];

    [(RootNavigationController *)v7->_rootNavigationController didMoveToParentViewController:v7->_containerViewController];
    v16 = [[MainWindowWrapperNavigationController alloc] initWithRootViewController:v7->_containerViewController];
    [(MainWindowWrapperNavigationController *)v16 setNavigationBarHidden:1 animated:0];
    [(UISplitViewController *)v7->_splitViewController setViewController:v16 forColumn:2];
    v17 = +[NSNotificationCenter defaultCenter];
    [v17 addObserver:v7 selector:"keyboardFrameChanged:" name:UIKeyboardWillChangeFrameNotification object:0];

    [(RootNavigationController *)v7->_rootNavigationController setViewSwitcherLayoutHandler:v7];
  }

  return v7;
}

- (void)loadView
{
  v9 = objc_alloc_init(UIView);
  [v9 setAutoresizingMask:18];
  [(MainWindowContentContainerViewController *)self addChildViewController:self->_splitViewController];
  view = [(UISplitViewController *)self->_splitViewController view];
  [v9 addSubview:view];

  [(UISplitViewController *)self->_splitViewController didMoveToParentViewController:self];
  traitCollection = [(MainWindowContentContainerViewController *)self traitCollection];
  horizontalSizeClass = [traitCollection horizontalSizeClass];

  if (horizontalSizeClass == 2)
  {
    viewSwitcher = [(RootNavigationController *)self->_rootNavigationController viewSwitcher];
    segmentedControl = self->_segmentedControl;
    self->_segmentedControl = viewSwitcher;

    view2 = [(UIViewController *)self->_containerViewController view];
    [view2 addSubview:self->_segmentedControl];
  }

  [(MainWindowContentContainerViewController *)self setView:v9];
}

- (void)viewWillLayoutSubviews
{
  view = [(MainWindowContentContainerViewController *)self view];
  [view bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  view2 = [(UISplitViewController *)self->_splitViewController view];
  [view2 setFrame:{v4, v6, v8, v10}];

  [(MainWindowContentContainerViewController *)self layoutSegmentedControl];
}

- (void)layoutSegmentedControl
{
  segmentedControl = self->_segmentedControl;
  view = [(UIViewController *)self->_containerViewController view];
  [view bounds];
  [(UISegmentedControl *)segmentedControl sizeThatFits:v5, v6];
  v8 = v7;
  v10 = v9;

  view2 = [(MainWindowContentContainerViewController *)self view];
  window = [view2 window];
  view3 = [(UIViewController *)self->_containerViewController view];
  [window bounds];
  [view3 convertPoint:window fromView:{CGRectGetWidth(v24) * 0.5, 0.0}];
  v15 = v14;

  IsCompact = EKUICurrentHeightSizeClassIsCompact();
  v17 = 33.0;
  if (IsCompact)
  {
    v17 = 5.0;
  }

  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100031284;
  v23[3] = &unk_10020F1A0;
  v23[4] = self;
  v23[5] = v15;
  v23[6] = v8;
  v23[7] = v10;
  *&v23[8] = v17;
  v23[9] = 0x4042000000000000;
  v18 = objc_retainBlock(v23);
  v19 = v18;
  if (self->_animatingSidebar)
  {
    transitionCoordinator = [(UISplitViewController *)self->_splitViewController transitionCoordinator];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_1000312B0;
    v21[3] = &unk_10020F1C8;
    v22 = v19;
    [transitionCoordinator animateAlongsideTransition:v21 completion:0];
  }

  else
  {
    (v18[2])(v18);
  }
}

- (void)willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator
{
  collectionCopy = collection;
  coordinatorCopy = coordinator;
  horizontalSizeClass = [collectionCopy horizontalSizeClass];
  traitCollection = [(MainWindowContentContainerViewController *)self traitCollection];
  horizontalSizeClass2 = [traitCollection horizontalSizeClass];

  if (horizontalSizeClass == horizontalSizeClass2)
  {
    v30.receiver = self;
    v30.super_class = MainWindowContentContainerViewController;
    [(MainWindowContentContainerViewController *)&v30 willTransitionToTraitCollection:collectionCopy withTransitionCoordinator:coordinatorCopy];
    goto LABEL_16;
  }

  if (self->_searchResultsController)
  {
    if (!self->_animatingSidebar)
    {
      WeakRetained = objc_loadWeakRetained(&self->_searchBar);
      text = [WeakRetained text];

      [(MainWindowContentContainerViewController *)self endSearch:0];
      goto LABEL_10;
    }

    [(UISplitViewController *)self->_splitViewController setViewController:0 forColumn:0];
    goto LABEL_8;
  }

  presentedViewController = [(RootNavigationController *)self->_rootNavigationController presentedViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
LABEL_8:
    text = 0;
    goto LABEL_10;
  }

  presentedViewController2 = [(RootNavigationController *)self->_rootNavigationController presentedViewController];
  searchResultsUpdater = [presentedViewController2 searchResultsUpdater];

  [searchResultsUpdater setShouldLeaveSearchString:1];
  presentedViewController3 = [(RootNavigationController *)self->_rootNavigationController presentedViewController];
  searchBar = [presentedViewController3 searchBar];
  text = [searchBar text];

  [(RootNavigationController *)self->_rootNavigationController dismissViewControllerAnimated:0 completion:0];
LABEL_10:
  v29.receiver = self;
  v29.super_class = MainWindowContentContainerViewController;
  [(MainWindowContentContainerViewController *)&v29 willTransitionToTraitCollection:collectionCopy withTransitionCoordinator:coordinatorCopy];
  horizontalSizeClass3 = [collectionCopy horizontalSizeClass];
  segmentedControl = self->_segmentedControl;
  if (horizontalSizeClass3 == 2)
  {
    if (!segmentedControl)
    {
      viewSwitcher = [(RootNavigationController *)self->_rootNavigationController viewSwitcher];
      v22 = self->_segmentedControl;
      self->_segmentedControl = viewSwitcher;
    }

    view = [(UIViewController *)self->_containerViewController view];
    [view addSubview:self->_segmentedControl];

    v24 = v28;
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v25 = sub_1000315D4;
  }

  else
  {
    [(UISegmentedControl *)segmentedControl removeFromSuperview];
    v24 = v27;
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v25 = sub_100031680;
  }

  v24[2] = v25;
  v24[3] = &unk_10020F1F0;
  v24[4] = text;
  v24[5] = self;
  v26 = text;
  [coordinatorCopy animateAlongsideTransition:0 completion:v24];

LABEL_16:
}

- (BOOL)_isWindowSizeFullscreen:(CGSize)fullscreen
{
  height = fullscreen.height;
  width = fullscreen.width;
  view = [(MainWindowContentContainerViewController *)self view];
  window = [view window];
  screen = [window screen];
  [screen bounds];
  v9 = v8;
  v11 = v10;

  if (width >= height)
  {
    v12 = height;
  }

  else
  {
    v12 = width;
  }

  if (v9 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v9;
  }

  if (vabdd_f64(v12, v13) >= 2.22044605e-16)
  {
    return 0;
  }

  if (width >= height)
  {
    v14 = width;
  }

  else
  {
    v14 = height;
  }

  if (v9 >= v11)
  {
    v15 = v9;
  }

  else
  {
    v15 = v11;
  }

  return vabdd_f64(v14, v15) < 2.22044605e-16;
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  coordinatorCopy = coordinator;
  v8 = coordinatorCopy;
  if (coordinatorCopy)
  {
    [coordinatorCopy targetTransform];
    v9 = *(&v22 + 1);
    [v8 targetTransform];
    v10 = *&v19;
  }

  else
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v10 = 0.0;
    v9 = 0.0;
  }

  splitBehavior = [(UISplitViewController *)self->_splitViewController splitBehavior];
  height = [(MainWindowContentContainerViewController *)self _isWindowSizeFullscreen:width, height];
  v13 = height;
  if (height)
  {
    v14 = atan2(v9, v10) * 57.2957795;
    if (v14 == 0.0 || fabs(v14) == 180.0)
    {
      if (splitBehavior == UISplitViewControllerSplitBehaviorOverlay)
      {
        v15 = 3;
      }

      else
      {
        v15 = 2;
      }
    }

    else if (splitBehavior == UISplitViewControllerSplitBehaviorOverlay)
    {
      v15 = 2;
    }

    else
    {
      v15 = 3;
    }
  }

  else
  {
    v15 = 3;
  }

  [(UISplitViewController *)self->_splitViewController setPreferredDisplayMode:v15];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100031918;
  v17[3] = &unk_10020F218;
  v17[4] = self;
  v18 = v13;
  [v8 animateAlongsideTransition:0 completion:v17];
  v16.receiver = self;
  v16.super_class = MainWindowContentContainerViewController;
  [(MainWindowContentContainerViewController *)&v16 viewWillTransitionToSize:v8 withTransitionCoordinator:width, height];
}

- (void)splitViewController:(id)controller willHideColumn:(int64_t)column
{
  if (!column)
  {
    v14[5] = v7;
    v14[6] = v6;
    v14[13] = v4;
    v14[14] = v5;
    self->_animatingSidebar = 1;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100031AE8;
    v14[3] = &unk_10020EB00;
    v14[4] = self;
    v9 = objc_retainBlock(v14);
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100031B2C;
    v13[3] = &unk_10020EB00;
    v13[4] = self;
    v10 = objc_retainBlock(v13);
    transitionCoordinator = [(UISplitViewController *)self->_splitViewController transitionCoordinator];

    if (transitionCoordinator)
    {
      transitionCoordinator2 = [(UISplitViewController *)self->_splitViewController transitionCoordinator];
      [transitionCoordinator2 animateAlongsideTransition:v9 completion:v10];
    }

    else
    {
      (v9[2])(v9);
      (v10[2])(v10);
    }
  }
}

- (void)setSearchBar:(id)bar
{
  barCopy = bar;
  v4 = objc_storeWeak(&self->_searchBar, barCopy);
  [barCopy setHeightObserver:self];
}

- (void)keyboardFrameChanged:(id)changed
{
  p_keyboardFrame = &self->_keyboardFrame;
  userInfo = [changed userInfo];
  v4 = [userInfo objectForKey:UIKeyboardFrameEndUserInfoKey];
  [v4 CGRectValue];
  p_keyboardFrame->origin.x = v5;
  p_keyboardFrame->origin.y = v6;
  p_keyboardFrame->size.width = v7;
  p_keyboardFrame->size.height = v8;
}

- (void)updateSearchViewControllerToolbar
{
  v3 = [(UISplitViewController *)self->_splitViewController splitBehavior]!= 2;
  searchResultsNavController = self->_searchResultsNavController;

  [(UINavigationController *)searchResultsNavController setToolbarHidden:v3];
}

- (void)continueSearchWithTerm:(id)term
{
  termCopy = term;
  delegate = [(MainWindowContentContainerViewController *)self delegate];
  [delegate searchTapped];

  WeakRetained = objc_loadWeakRetained(&self->_searchBar);
  [WeakRetained setText:termCopy];

  v7 = objc_loadWeakRetained(&self->_searchBar);
  [(MainWindowContentContainerViewController *)self searchBar:v7 textDidChange:termCopy];
}

- (id)startSearch
{
  [(MainWindowContentContainerViewController *)self setupSearch:0];
  splitViewController = self->_splitViewController;

  return [(UISplitViewController *)splitViewController transitionCoordinator];
}

- (void)cancelSearch
{
  searchResultsController = self->_searchResultsController;
  WeakRetained = objc_loadWeakRetained(&self->_searchBar);
  v6 = WeakRetained;
  if (searchResultsController)
  {
    [(MainWindowContentContainerViewController *)self searchBarCancelButtonClicked:WeakRetained];
  }

  else
  {
    isFirstResponder = [WeakRetained isFirstResponder];

    if (!isFirstResponder)
    {
      return;
    }

    v6 = objc_loadWeakRetained(&self->_searchBar);
    [v6 resignFirstResponder];
  }
}

- (void)setupSearch:(BOOL)search
{
  if (!self->_searchResultsNavController)
  {
    searchCopy = search;
    v5 = [SearchResultsViewController alloc];
    model = [(RootNavigationController *)self->_rootNavigationController model];
    window = [(RootNavigationController *)self->_rootNavigationController window];
    v8 = [(SearchResultsViewController *)v5 initWithModel:model window:window];
    searchResultsController = self->_searchResultsController;
    self->_searchResultsController = v8;

    [(SearchResultsViewController *)self->_searchResultsController setSearchResultsDelegate:self];
    WeakRetained = objc_loadWeakRetained(&self->_searchBar);
    [(SearchResultsViewController *)self->_searchResultsController setSearchBar:WeakRetained];

    [(ListViewController *)self->_searchResultsController setDestination:2];
    [(ListViewController *)self->_searchResultsController setOverrideExtendedEdges:0];
    v11 = [UIBarButtonItem alloc];
    v12 = +[NSBundle mainBundle];
    v13 = [v12 localizedStringForKey:@"Today" value:&stru_1002133B8 table:0];
    v14 = [v11 initWithTitle:v13 style:0 target:self action:"todayToolbarItemPressed"];

    v15 = CalendarAppTintColor();
    [v14 setTintColor:v15];

    v23 = v14;
    v16 = [NSArray arrayWithObjects:&v23 count:1];
    [(SearchResultsViewController *)self->_searchResultsController setToolbarItems:v16];

    [(MainWindowContentContainerViewController *)self setupSearchNavBarHeight];
    v17 = [[UINavigationController alloc] initWithRootViewController:self->_searchResultsController];
    searchResultsNavController = self->_searchResultsNavController;
    self->_searchResultsNavController = v17;

    if ([(UISplitViewController *)self->_splitViewController splitBehavior]== 1)
    {
      v19 = 2;
    }

    else
    {
      v19 = 3;
    }

    [(UISplitViewController *)self->_splitViewController setPreferredDisplayMode:v19];
    [(UISplitViewController *)self->_splitViewController setViewController:self->_searchResultsNavController forColumn:0];
    [(UISplitViewController *)self->_splitViewController showColumn:0];
    self->_animatingSidebar = searchCopy;
    if (searchCopy)
    {
      transitionCoordinator = [(UISplitViewController *)self->_splitViewController transitionCoordinator];
      v21[4] = self;
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_100032190;
      v22[3] = &unk_10020F240;
      v22[4] = self;
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_100032208;
      v21[3] = &unk_10020F240;
      [transitionCoordinator animateAlongsideTransition:v22 completion:v21];
    }

    [(MainWindowContentContainerViewController *)self updateSearchViewControllerToolbar];
  }
}

- (void)searchResultsViewController:(id)controller didSelectEvent:(id)event
{
  controllerCopy = controller;
  eventCopy = event;
  if ([(UISplitViewController *)self->_splitViewController splitBehavior]== 2)
  {
    WeakRetained = objc_loadWeakRetained(&self->_searchBar);
    [(MainWindowContentContainerViewController *)self searchBarCancelButtonClicked:WeakRetained];

    transitionCoordinator = [(UISplitViewController *)self->_splitViewController transitionCoordinator];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100032354;
    v10[3] = &unk_10020F268;
    v10[4] = self;
    v11 = controllerCopy;
    v12 = eventCopy;
    [transitionCoordinator animateAlongsideTransition:v10 completion:0];
  }

  else
  {
    [(RootNavigationController *)self->_rootNavigationController searchResultsViewController:controllerCopy didSelectEvent:eventCopy];
  }
}

- (void)todayToolbarItemPressed
{
  searchResultsController = self->_searchResultsController;
  v3 = CUIKTodayDate();
  [(SearchResultsViewController *)searchResultsController scrollToDate:v3 animated:1];
}

- (void)todayTapped
{
  if (self->_searchResultsController)
  {
    [(MainWindowContentContainerViewController *)self todayToolbarItemPressed];
  }
}

- (void)setupSearchNavBarHeight
{
  WeakRetained = objc_loadWeakRetained(&self->_searchBar);
  [WeakRetained frame];
  v5 = v4;

  v6 = 60.0;
  if (v5 > 60.0)
  {
    v7 = objc_loadWeakRetained(&self->_searchBar);
    [v7 frame];
    v6 = v8;
  }

  navigationItem = [(SearchResultsViewController *)self->_searchResultsController navigationItem];
  [navigationItem _setMinimumDesiredHeight:0 forBarMetrics:v6];

  navigationItem2 = [(SearchResultsViewController *)self->_searchResultsController navigationItem];
  [navigationItem2 _setMinimumDesiredHeight:1 forBarMetrics:v6];
}

- (void)resetSearchBar
{
  WeakRetained = objc_loadWeakRetained(&self->_searchBar);
  [WeakRetained setText:0];

  v4 = objc_loadWeakRetained(&self->_searchBar);
  [v4 resignFirstResponder];

  v5 = objc_loadWeakRetained(&self->_searchBar);
  [v5 setShowsCancelButton:0 animated:1];
}

- (void)teardownSearch
{
  [(MainWindowContentContainerViewController *)self resetSearchBar];
  searchResultsNavController = self->_searchResultsNavController;
  self->_searchResultsNavController = 0;

  searchResultsController = self->_searchResultsController;
  self->_searchResultsController = 0;
}

- (void)endSearch:(BOOL)search
{
  searchCopy = search;
  [(UISplitViewController *)self->_splitViewController hideColumn:0];
  [(MainWindowContentContainerViewController *)self resetSearchBar];
  self->_animatingSidebar = searchCopy;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100032704;
  v9[3] = &unk_10020F240;
  v9[4] = self;
  v5 = objc_retainBlock(v9);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100032748;
  v8[3] = &unk_10020F240;
  v8[4] = self;
  v6 = objc_retainBlock(v8);
  if (searchCopy)
  {
    transitionCoordinator = [(UISplitViewController *)self->_splitViewController transitionCoordinator];
    [transitionCoordinator animateAlongsideTransition:v5 completion:v6];
  }

  else
  {
    (v5[2])(v5, 0);
    (v6[2])(v6, 0);
  }
}

- (void)searchBarTextDidBeginEditing:(id)editing
{
  delegate = [(MainWindowContentContainerViewController *)self delegate];
  [delegate searchTapped];
}

- (void)searchBar:(id)bar textDidChange:(id)change
{
  barCopy = bar;
  changeCopy = change;
  if ([changeCopy length])
  {
    [(MainWindowContentContainerViewController *)self setupSearch:1];
  }

  [(SearchResultsViewController *)self->_searchResultsController searchBar:barCopy textDidChange:changeCopy];
}

- (MainWindowContentContainerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (MainWindowSearchBar)searchBar
{
  WeakRetained = objc_loadWeakRetained(&self->_searchBar);

  return WeakRetained;
}

@end