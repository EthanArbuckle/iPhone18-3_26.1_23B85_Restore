@interface MainWindowContentContainerViewController
- (BOOL)_isWindowSizeFullscreen:(CGSize)a3;
- (MainWindowContentContainerDelegate)delegate;
- (MainWindowContentContainerViewController)initWithRootNavigationController:(id)a3;
- (MainWindowSearchBar)searchBar;
- (id)startSearch;
- (void)cancelSearch;
- (void)continueSearchWithTerm:(id)a3;
- (void)endSearch:(BOOL)a3;
- (void)keyboardFrameChanged:(id)a3;
- (void)layoutSegmentedControl;
- (void)loadView;
- (void)resetSearchBar;
- (void)searchBar:(id)a3 textDidChange:(id)a4;
- (void)searchBarTextDidBeginEditing:(id)a3;
- (void)searchResultsViewController:(id)a3 didSelectEvent:(id)a4;
- (void)setSearchBar:(id)a3;
- (void)setupSearch:(BOOL)a3;
- (void)setupSearchNavBarHeight;
- (void)splitViewController:(id)a3 willHideColumn:(int64_t)a4;
- (void)teardownSearch;
- (void)todayTapped;
- (void)todayToolbarItemPressed;
- (void)updateSearchViewControllerToolbar;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
- (void)willTransitionToTraitCollection:(id)a3 withTransitionCoordinator:(id)a4;
@end

@implementation MainWindowContentContainerViewController

- (MainWindowContentContainerViewController)initWithRootNavigationController:(id)a3
{
  v5 = a3;
  v19.receiver = self;
  v19.super_class = MainWindowContentContainerViewController;
  v6 = [(MainWindowContentContainerViewController *)&v19 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_rootNavigationController, a3);
    v8 = [[UISplitViewController alloc] initWithStyle:1];
    splitViewController = v7->_splitViewController;
    v7->_splitViewController = v8;

    [(UISplitViewController *)v7->_splitViewController setDelegate:v7];
    [(UISplitViewController *)v7->_splitViewController setPreferredDisplayMode:1];
    [(UISplitViewController *)v7->_splitViewController setPrimaryEdge:1];
    [(UISplitViewController *)v7->_splitViewController setPresentsWithGesture:0];
    v10 = [v5 EKUI_viewHierarchy];
    [MainWindowRootViewController sidebarWidthForViewHierarchy:v10];
    [(UISplitViewController *)v7->_splitViewController setMinimumPrimaryColumnWidth:?];
    [MainWindowRootViewController sidebarWidthForViewHierarchy:v10];
    [(UISplitViewController *)v7->_splitViewController setMaximumPrimaryColumnWidth:?];
    v11 = objc_alloc_init(UIViewController);
    containerViewController = v7->_containerViewController;
    v7->_containerViewController = v11;

    v13 = [(UIViewController *)v7->_containerViewController view];
    [v13 setAutoresizingMask:18];

    [(UIViewController *)v7->_containerViewController addChildViewController:v7->_rootNavigationController];
    v14 = [(UIViewController *)v7->_containerViewController view];
    v15 = [(RootNavigationController *)v7->_rootNavigationController view];
    [v14 addSubview:v15];

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
  v3 = [(UISplitViewController *)self->_splitViewController view];
  [v9 addSubview:v3];

  [(UISplitViewController *)self->_splitViewController didMoveToParentViewController:self];
  v4 = [(MainWindowContentContainerViewController *)self traitCollection];
  v5 = [v4 horizontalSizeClass];

  if (v5 == 2)
  {
    v6 = [(RootNavigationController *)self->_rootNavigationController viewSwitcher];
    segmentedControl = self->_segmentedControl;
    self->_segmentedControl = v6;

    v8 = [(UIViewController *)self->_containerViewController view];
    [v8 addSubview:self->_segmentedControl];
  }

  [(MainWindowContentContainerViewController *)self setView:v9];
}

- (void)viewWillLayoutSubviews
{
  v12 = [(MainWindowContentContainerViewController *)self view];
  [v12 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(UISplitViewController *)self->_splitViewController view];
  [v11 setFrame:{v4, v6, v8, v10}];

  [(MainWindowContentContainerViewController *)self layoutSegmentedControl];
}

- (void)layoutSegmentedControl
{
  segmentedControl = self->_segmentedControl;
  v4 = [(UIViewController *)self->_containerViewController view];
  [v4 bounds];
  [(UISegmentedControl *)segmentedControl sizeThatFits:v5, v6];
  v8 = v7;
  v10 = v9;

  v11 = [(MainWindowContentContainerViewController *)self view];
  v12 = [v11 window];
  v13 = [(UIViewController *)self->_containerViewController view];
  [v12 bounds];
  [v13 convertPoint:v12 fromView:{CGRectGetWidth(v24) * 0.5, 0.0}];
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
    v20 = [(UISplitViewController *)self->_splitViewController transitionCoordinator];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_1000312B0;
    v21[3] = &unk_10020F1C8;
    v22 = v19;
    [v20 animateAlongsideTransition:v21 completion:0];
  }

  else
  {
    (v18[2])(v18);
  }
}

- (void)willTransitionToTraitCollection:(id)a3 withTransitionCoordinator:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 horizontalSizeClass];
  v9 = [(MainWindowContentContainerViewController *)self traitCollection];
  v10 = [v9 horizontalSizeClass];

  if (v8 == v10)
  {
    v30.receiver = self;
    v30.super_class = MainWindowContentContainerViewController;
    [(MainWindowContentContainerViewController *)&v30 willTransitionToTraitCollection:v6 withTransitionCoordinator:v7];
    goto LABEL_16;
  }

  if (self->_searchResultsController)
  {
    if (!self->_animatingSidebar)
    {
      WeakRetained = objc_loadWeakRetained(&self->_searchBar);
      v17 = [WeakRetained text];

      [(MainWindowContentContainerViewController *)self endSearch:0];
      goto LABEL_10;
    }

    [(UISplitViewController *)self->_splitViewController setViewController:0 forColumn:0];
    goto LABEL_8;
  }

  v11 = [(RootNavigationController *)self->_rootNavigationController presentedViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
LABEL_8:
    v17 = 0;
    goto LABEL_10;
  }

  v13 = [(RootNavigationController *)self->_rootNavigationController presentedViewController];
  v14 = [v13 searchResultsUpdater];

  [v14 setShouldLeaveSearchString:1];
  v15 = [(RootNavigationController *)self->_rootNavigationController presentedViewController];
  v16 = [v15 searchBar];
  v17 = [v16 text];

  [(RootNavigationController *)self->_rootNavigationController dismissViewControllerAnimated:0 completion:0];
LABEL_10:
  v29.receiver = self;
  v29.super_class = MainWindowContentContainerViewController;
  [(MainWindowContentContainerViewController *)&v29 willTransitionToTraitCollection:v6 withTransitionCoordinator:v7];
  v19 = [v6 horizontalSizeClass];
  segmentedControl = self->_segmentedControl;
  if (v19 == 2)
  {
    if (!segmentedControl)
    {
      v21 = [(RootNavigationController *)self->_rootNavigationController viewSwitcher];
      v22 = self->_segmentedControl;
      self->_segmentedControl = v21;
    }

    v23 = [(UIViewController *)self->_containerViewController view];
    [v23 addSubview:self->_segmentedControl];

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
  v24[4] = v17;
  v24[5] = self;
  v26 = v17;
  [v7 animateAlongsideTransition:0 completion:v24];

LABEL_16:
}

- (BOOL)_isWindowSizeFullscreen:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = [(MainWindowContentContainerViewController *)self view];
  v6 = [v5 window];
  v7 = [v6 screen];
  [v7 bounds];
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

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  v8 = v7;
  if (v7)
  {
    [v7 targetTransform];
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

  v11 = [(UISplitViewController *)self->_splitViewController splitBehavior];
  v12 = [(MainWindowContentContainerViewController *)self _isWindowSizeFullscreen:width, height];
  v13 = v12;
  if (v12)
  {
    v14 = atan2(v9, v10) * 57.2957795;
    if (v14 == 0.0 || fabs(v14) == 180.0)
    {
      if (v11 == UISplitViewControllerSplitBehaviorOverlay)
      {
        v15 = 3;
      }

      else
      {
        v15 = 2;
      }
    }

    else if (v11 == UISplitViewControllerSplitBehaviorOverlay)
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

- (void)splitViewController:(id)a3 willHideColumn:(int64_t)a4
{
  if (!a4)
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
    v11 = [(UISplitViewController *)self->_splitViewController transitionCoordinator];

    if (v11)
    {
      v12 = [(UISplitViewController *)self->_splitViewController transitionCoordinator];
      [v12 animateAlongsideTransition:v9 completion:v10];
    }

    else
    {
      (v9[2])(v9);
      (v10[2])(v10);
    }
  }
}

- (void)setSearchBar:(id)a3
{
  v5 = a3;
  v4 = objc_storeWeak(&self->_searchBar, v5);
  [v5 setHeightObserver:self];
}

- (void)keyboardFrameChanged:(id)a3
{
  p_keyboardFrame = &self->_keyboardFrame;
  v9 = [a3 userInfo];
  v4 = [v9 objectForKey:UIKeyboardFrameEndUserInfoKey];
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

- (void)continueSearchWithTerm:(id)a3
{
  v4 = a3;
  v5 = [(MainWindowContentContainerViewController *)self delegate];
  [v5 searchTapped];

  WeakRetained = objc_loadWeakRetained(&self->_searchBar);
  [WeakRetained setText:v4];

  v7 = objc_loadWeakRetained(&self->_searchBar);
  [(MainWindowContentContainerViewController *)self searchBar:v7 textDidChange:v4];
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
    v5 = [WeakRetained isFirstResponder];

    if (!v5)
    {
      return;
    }

    v6 = objc_loadWeakRetained(&self->_searchBar);
    [v6 resignFirstResponder];
  }
}

- (void)setupSearch:(BOOL)a3
{
  if (!self->_searchResultsNavController)
  {
    v3 = a3;
    v5 = [SearchResultsViewController alloc];
    v6 = [(RootNavigationController *)self->_rootNavigationController model];
    v7 = [(RootNavigationController *)self->_rootNavigationController window];
    v8 = [(SearchResultsViewController *)v5 initWithModel:v6 window:v7];
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
    self->_animatingSidebar = v3;
    if (v3)
    {
      v20 = [(UISplitViewController *)self->_splitViewController transitionCoordinator];
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
      [v20 animateAlongsideTransition:v22 completion:v21];
    }

    [(MainWindowContentContainerViewController *)self updateSearchViewControllerToolbar];
  }
}

- (void)searchResultsViewController:(id)a3 didSelectEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(UISplitViewController *)self->_splitViewController splitBehavior]== 2)
  {
    WeakRetained = objc_loadWeakRetained(&self->_searchBar);
    [(MainWindowContentContainerViewController *)self searchBarCancelButtonClicked:WeakRetained];

    v9 = [(UISplitViewController *)self->_splitViewController transitionCoordinator];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100032354;
    v10[3] = &unk_10020F268;
    v10[4] = self;
    v11 = v6;
    v12 = v7;
    [v9 animateAlongsideTransition:v10 completion:0];
  }

  else
  {
    [(RootNavigationController *)self->_rootNavigationController searchResultsViewController:v6 didSelectEvent:v7];
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

  v9 = [(SearchResultsViewController *)self->_searchResultsController navigationItem];
  [v9 _setMinimumDesiredHeight:0 forBarMetrics:v6];

  v10 = [(SearchResultsViewController *)self->_searchResultsController navigationItem];
  [v10 _setMinimumDesiredHeight:1 forBarMetrics:v6];
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

- (void)endSearch:(BOOL)a3
{
  v3 = a3;
  [(UISplitViewController *)self->_splitViewController hideColumn:0];
  [(MainWindowContentContainerViewController *)self resetSearchBar];
  self->_animatingSidebar = v3;
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
  if (v3)
  {
    v7 = [(UISplitViewController *)self->_splitViewController transitionCoordinator];
    [v7 animateAlongsideTransition:v5 completion:v6];
  }

  else
  {
    (v5[2])(v5, 0);
    (v6[2])(v6, 0);
  }
}

- (void)searchBarTextDidBeginEditing:(id)a3
{
  v3 = [(MainWindowContentContainerViewController *)self delegate];
  [v3 searchTapped];
}

- (void)searchBar:(id)a3 textDidChange:(id)a4
{
  v7 = a3;
  v6 = a4;
  if ([v6 length])
  {
    [(MainWindowContentContainerViewController *)self setupSearch:1];
  }

  [(SearchResultsViewController *)self->_searchResultsController searchBar:v7 textDidChange:v6];
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