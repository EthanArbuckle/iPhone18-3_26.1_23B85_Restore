@interface THSearchViewController
- (BESearchResultTableViewCell)dummySearchResultsCell;
- (BOOL)p_isBottomViewVisible;
- (BOOL)tableView:(id)view canFocusRowAtIndexPath:(id)path;
- (IMThemePage)themePage;
- (THSearchViewController)initWithSearchController:(id)controller;
- (THSearchViewControllerDelegate)searchDelegate;
- (UISearchBar)searchBar;
- (double)_resultsEstimatedRowHeight;
- (double)_resultsHeaderHeight;
- (double)p_aboveAndBelowContentHeight;
- (double)p_bestPopoverHeight;
- (id)delegate;
- (id)p_dataSourceForTableView:(id)view;
- (id)p_searchText;
- (id)popViewControllerAnimated:(BOOL)animated;
- (id)tableView:(id)view cellForPlainString:(id)string;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view cellForSearchResult:(id)result;
- (id)tableView:(id)view noResultsCellWithKind:(int)kind;
- (id)tableView:(id)view seeAllResultsCellWithKind:(int)kind count:(unint64_t)count;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (id)tableView:(id)view viewForHeaderWithTitle:(id)title;
- (id)tableView:(id)view willSelectRowAtIndexPath:(id)path;
- (id)topTableViewController;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)overrideUserInterfaceStyle;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_adjustPocketInsetsForSafeAreaInsets:(UIEdgeInsets)insets;
- (void)_analyticsSubmitInBookSearchEventWithSearchText:(id)text;
- (void)_configureResultsCell:(id)cell forSearchResult:(id)result inTableView:(id)view;
- (void)_scrollTableViewToTop:(id)top;
- (void)dealloc;
- (void)didPresentViewController:(id)controller;
- (void)didReceiveMemoryWarning;
- (void)keyboardWillChangeFrame:(id)frame;
- (void)keyboardWillHideOrUndock:(id)undock;
- (void)keyboardWillShowOrDock:(id)dock;
- (void)navigateToAbsolutePageIndex:(unint64_t)index;
- (void)navigateToSearchResult:(id)result;
- (void)p_changeToSize:(double)size animated:(BOOL)animated;
- (void)p_configureAnimated:(BOOL)animated;
- (void)p_configureTableViewController:(id)controller;
- (void)p_configureTableViewControllerColors:(id)colors;
- (void)p_deferredViewWillAppear;
- (void)p_dismissSearchView:(id)view;
- (void)p_navigateToAbsolutePageIndex:(id)index animated:(BOOL)animated;
- (void)p_navigateToSearchResult:(id)result animated:(BOOL)animated;
- (void)p_removeSpinner;
- (void)p_searchForSuggestion:(id)suggestion;
- (void)p_searchIndexLoaded:(id)loaded;
- (void)p_searchPaginationResultsUpdated:(id)updated;
- (void)p_setupSpinner;
- (void)p_showRecents;
- (void)popToRootViewControllerAnimated:(BOOL)animated completion:(id)completion;
- (void)pushViewController:(id)controller animated:(BOOL)animated;
- (void)scrollViewWillBeginDragging:(id)dragging;
- (void)searchBar:(id)bar textDidChange:(id)change;
- (void)searchBarCancelButtonClicked:(id)clicked;
- (void)searchBarSearchButtonClicked:(id)clicked;
- (void)searchForString:(id)string;
- (void)setNoIndexViewVisible:(BOOL)visible;
- (void)setTheme:(id)theme;
- (void)showAllResultsWithKind:(int)kind;
- (void)stylizeForTheme;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator;
@end

@implementation THSearchViewController

- (THSearchViewController)initWithSearchController:(id)controller
{
  controllerCopy = controller;
  v6 = [(THSearchViewController *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->mSearchController, controller);
    v8 = +[UITraitCollection bc_allAPITraits];
    v9 = [(THSearchViewController *)v7 registerForTraitChanges:v8 withAction:"_traitCollectionDidChange:previousTraitCollection:"];
  }

  return v7;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  mDummySearchResultsCell = self->mDummySearchResultsCell;
  self->mDummySearchResultsCell = 0;

  v5.receiver = self;
  v5.super_class = THSearchViewController;
  [(THSearchViewController *)&v5 dealloc];
}

- (IMThemePage)themePage
{
  objc_opt_class();

  return BUDynamicCast();
}

- (BOOL)p_isBottomViewVisible
{
  view = [(THSearchViewController *)self view];
  if (view)
  {
    view2 = [(THSearchViewController *)self view];
    [view2 frame];
    if (v5 <= self->_searchBarHeight)
    {
      v7 = 0;
    }

    else
    {
      [(THSearchViewController *)self preferredContentSize];
      v7 = v6 > self->_searchBarHeight;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)p_changeToSize:(double)size animated:(BOOL)animated
{
  if (![(THSearchViewController *)self p_presentingFullscreen]&& [(THSearchViewController *)self p_isBottomViewVisible])
  {
    view = [(THSearchViewController *)self view];
    [view frame];
    Width = CGRectGetWidth(v15);

    if (Width <= 0.0)
    {
      Width = 375.0;
    }

    view2 = [(THSearchViewController *)self view];
    [view2 frame];
    v10 = v9;
    v12 = v11;

    if (Width != v10 || v12 != size)
    {

      [(THSearchViewController *)self setPreferredContentSize:Width, size];
    }
  }
}

- (id)topTableViewController
{
  topViewController = [(THSearchViewController *)self topViewController];
  objc_opt_class();
  v3 = TSUDynamicCast();
  v4 = v3;
  if (v3)
  {
    topViewController2 = [v3 topViewController];

    topViewController = topViewController2;
  }

  objc_opt_class();
  v6 = TSUDynamicCast();

  return v6;
}

- (double)p_aboveAndBelowContentHeight
{
  searchBar = [(THSearchViewController *)self searchBar];
  [searchBar frame];
  v4 = v3 + -1.0;

  return v4;
}

- (double)p_bestPopoverHeight
{
  searchBarHeight = self->_searchBarHeight;
  topTableViewController = [(THSearchViewController *)self topTableViewController];
  tableView = [topTableViewController tableView];
  if (tableView)
  {
    [(THSearchViewController *)self p_aboveAndBelowContentHeight];
    v7 = v6;
    [(THSearchViewController *)self maxContentHeight];
    if (v8 <= 0.0)
    {
      v9 = kBESearchPopoverViewMaxContentHeight;
    }

    else
    {
      [(THSearchViewController *)self maxContentHeight];
    }

    v10 = v9 - v7;
    resultsDataSource = [(THSearchViewController *)self resultsDataSource];
    suggestionsDataSource = [(THSearchViewController *)self suggestionsDataSource];

    if (resultsDataSource == suggestionsDataSource)
    {
      [tableView rowHeight];
      v15 = v14;
      [(THSearchViewController *)self _resultsHeaderHeight];
      v17 = 440.0;
      if (v15 > 0.0)
      {
        v17 = v15 * 10.0;
      }

      if (v17 >= v10)
      {
        v17 = v10;
      }

      v13 = v16 + v17;
    }

    else
    {
      [tableView preferredContentHeightWithMax:v10];
    }

    searchBarHeight = v7 + v13;
  }

  return searchBarHeight;
}

- (void)keyboardWillShowOrDock:(id)dock
{
  [(THSearchViewController *)self p_bestPopoverHeight];

  [(THSearchViewController *)self p_changeToSize:1 animated:?];
}

- (void)keyboardWillHideOrUndock:(id)undock
{
  [(THSearchViewController *)self p_bestPopoverHeight];

  [(THSearchViewController *)self p_changeToSize:1 animated:?];
}

- (void)keyboardWillChangeFrame:(id)frame
{
  [(THSearchViewController *)self p_bestPopoverHeight];

  [(THSearchViewController *)self p_changeToSize:0 animated:?];
}

- (void)pushViewController:(id)controller animated:(BOOL)animated
{
  v4.receiver = self;
  v4.super_class = THSearchViewController;
  [(THSearchViewController *)&v4 pushViewController:controller animated:animated];
}

- (id)popViewControllerAnimated:(BOOL)animated
{
  v5.receiver = self;
  v5.super_class = THSearchViewController;
  v3 = [(THSearchViewController *)&v5 popViewControllerAnimated:animated];

  return v3;
}

- (void)popToRootViewControllerAnimated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  [(THSearchViewController *)self setNoIndexViewVisible:0];
  if (animatedCopy)
  {
    +[CATransaction begin];
    v7 = [(THSearchViewController *)self popToRootViewControllerAnimated:1];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_D1A6C;
    v9[3] = &unk_45B718;
    v10 = completionCopy;
    [CATransaction setCompletionBlock:v9];
    +[CATransaction commit];
  }

  else
  {
    v8 = [(THSearchViewController *)self popToRootViewControllerAnimated:0];
    (*(completionCopy + 2))(completionCopy, 1);
  }
}

- (void)p_showRecents
{
  if (([(THSearchViewController *)self isMovingToParentViewController]& 1) != 0)
  {
    v3 = 0;
  }

  else
  {
    v3 = [(THSearchViewController *)self isBeingPresented]^ 1;
  }

  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_D1B18;
  v4[3] = &unk_45ADD8;
  v4[4] = self;
  [(THSearchViewController *)self popToRootViewControllerAnimated:v3 completion:v4];
}

- (void)_adjustPocketInsetsForSafeAreaInsets:(UIEdgeInsets)insets
{
  top = insets.top;
  v5 = [(THSearchViewController *)self resultsViewController:insets.top];
  tableView = [v5 tableView];

  [tableView contentInset];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [tableView setContentInset:top + 4.0];
  [tableView _pocketInsets];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  [tableView sectionHeaderHeight];
  v19 = top + 4.0 - v18;
  [tableView _setPocketInsets:{v19, v13, v15, v17}];
  if (![(THSearchViewController *)self p_presentingFullscreen])
  {
    top = 44.0;
  }

  detailsViewController = [(THSearchViewController *)self detailsViewController];
  tableView2 = [detailsViewController tableView];
  [tableView2 setContentInset:{top, v7, v9, v11}];

  detailsViewController2 = [(THSearchViewController *)self detailsViewController];
  tableView3 = [detailsViewController2 tableView];
  [tableView3 _setPocketInsets:{v19, v13, v15, v17}];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v9.receiver = self;
  v9.super_class = THSearchViewController;
  [(THSearchViewController *)&v9 viewWillAppear:?];
  ba_analyticsTracker = [(THSearchViewController *)self ba_analyticsTracker];

  if (!ba_analyticsTracker)
  {
    v6 = [(THSearchViewController *)self ba_setupNewAnalyticsTrackerWithName:@"ContentSearch"];
  }

  [(THSearchViewController *)self p_configureAnimated:appearCopy];
  v10 = @"animated";
  v7 = [NSNumber numberWithBool:appearCopy];
  v11 = v7;
  v8 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  [(THSearchViewController *)self setPendingDeferredViewWillAppear:v8];
}

- (void)p_deferredViewWillAppear
{
  pendingDeferredViewWillAppear = [(THSearchViewController *)self pendingDeferredViewWillAppear];
  v4 = [pendingDeferredViewWillAppear objectForKeyedSubscript:@"animated"];
  bOOLValue = [v4 BOOLValue];

  [(THSearchViewController *)self setPendingDeferredViewWillAppear:0];

  [(THSearchViewController *)self p_configureAnimated:bOOLValue];
}

- (void)p_configureAnimated:(BOOL)animated
{
  if (isPad() && (WeakRetained = objc_loadWeakRetained(&self->mSearchBar), [WeakRetained setShowsCancelButton:0], WeakRetained, (-[THSearchViewController _isInPopoverPresentation](self, "_isInPopoverPresentation") & 1) == 0))
  {
    v17 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:24 target:self action:"p_dismissSearchView:"];
  }

  else
  {
    v17 = 0;
  }

  v5 = THBundle();
  v6 = [v5 localizedStringForKey:@"Search Book" value:&stru_471858 table:0];
  resultsViewController = [(THSearchViewController *)self resultsViewController];
  navigationItem = [resultsViewController navigationItem];
  [navigationItem setTitle:v6];

  resultsViewController2 = [(THSearchViewController *)self resultsViewController];
  navigationItem2 = [resultsViewController2 navigationItem];
  [navigationItem2 setRightBarButtonItem:v17];

  if ([(THSearchController *)self->mSearchController indexLoaded])
  {
    if (![(THSearchViewController *)self settingSearchForString])
    {
      currentQuery = [(THSearchController *)self->mSearchController currentQuery];
      if (currentQuery)
      {
      }

      else
      {
        pendingSearchText = [(THSearchViewController *)self pendingSearchText];

        if (!pendingSearchText)
        {
          [(THSearchViewController *)self p_showRecents];
          goto LABEL_12;
        }
      }
    }

    currentQuery2 = [(THSearchController *)self->mSearchController currentQuery];

    if (currentQuery2)
    {
      currentQuery3 = [(THSearchController *)self->mSearchController currentQuery];
      v15 = objc_loadWeakRetained(&self->mSearchBar);
      [v15 setText:currentQuery3];
    }
  }

LABEL_12:
  uiSearchController = [(THSearchViewController *)self uiSearchController];
  [uiSearchController setActive:1];
}

- (void)viewDidAppear:(BOOL)appear
{
  v9.receiver = self;
  v9.super_class = THSearchViewController;
  [(THSearchViewController *)&v9 viewDidAppear:appear];
  if (!self->mSearchingForString)
  {
    topTableViewController = [(THSearchViewController *)self topTableViewController];
    tableView = [topTableViewController tableView];
    v6 = [(THSearchViewController *)self p_dataSourceForTableView:tableView];
    searchViewMode = [v6 searchViewMode];

    if (searchViewMode != 2)
    {
      WeakRetained = objc_loadWeakRetained(&self->mSearchBar);
      [WeakRetained becomeFirstResponder];
    }
  }

  self->mSearchingForString = 0;
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  uiSearchController = [(THSearchViewController *)self uiSearchController];
  [uiSearchController setActive:0];

  v6.receiver = self;
  v6.super_class = THSearchViewController;
  [(THSearchViewController *)&v6 viewWillDisappear:disappearCopy];
}

- (void)didPresentViewController:(id)controller
{
  if ([(THSearchViewController *)self p_isBottomViewVisible])
  {
    [(THSearchViewController *)self p_bestPopoverHeight];

    [(THSearchViewController *)self p_changeToSize:1 animated:?];
  }
}

- (void)p_searchIndexLoaded:(id)loaded
{
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self name:THSearchControllerDidLoadIndexNotification object:self->mSearchController];

  Main = CFRunLoopGetMain();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_D23D0;
  block[3] = &unk_45AD60;
  block[4] = self;
  CFRunLoopPerformBlock(Main, kCFRunLoopDefaultMode, block);
}

- (void)p_searchPaginationResultsUpdated:(id)updated
{
  resultsViewController = [(THSearchViewController *)self resultsViewController];
  tableView = [resultsViewController tableView];
  [tableView reloadData];

  detailsViewController = [(THSearchViewController *)self detailsViewController];
  tableView2 = [detailsViewController tableView];
  [tableView2 reloadData];
}

- (void)setTheme:(id)theme
{
  themeCopy = theme;
  if (self->mTheme != themeCopy)
  {
    v6 = themeCopy;
    objc_storeStrong(&self->mTheme, theme);
    [(THSearchViewController *)self stylizeForTheme];
    themeCopy = v6;
  }
}

- (void)stylizeForTheme
{
  viewIfLoaded = [(THSearchViewController *)self viewIfLoaded];
  if (viewIfLoaded)
  {
    v36 = viewIfLoaded;
    themePage = [(THSearchViewController *)self themePage];
    overrideUserInterfaceStyle = [(THSearchViewController *)self overrideUserInterfaceStyle];
    resultsViewController = [(THSearchViewController *)self resultsViewController];
    [resultsViewController setOverrideUserInterfaceStyle:overrideUserInterfaceStyle];

    detailsViewController = [(THSearchViewController *)self detailsViewController];
    [detailsViewController setOverrideUserInterfaceStyle:overrideUserInterfaceStyle];

    secondaryTextColor = [themePage secondaryTextColor];
    keyColor = [themePage keyColor];
    primaryTextColor = [themePage primaryTextColor];
    searchBackgroundColor = [themePage searchBackgroundColor];
    if (!searchBackgroundColor)
    {
      searchBackgroundColor = [themePage backgroundColorForTraitEnvironment:self];
    }

    [v36 setTintColor:keyColor];
    [v36 setBackgroundColor:searchBackgroundColor];
    popoverPresentationController = [(THSearchViewController *)self popoverPresentationController];
    [popoverPresentationController setBackgroundColor:searchBackgroundColor];

    resultsViewController2 = [(THSearchViewController *)self resultsViewController];
    [(THSearchViewController *)self p_configureTableViewControllerColors:resultsViewController2];

    detailsViewController2 = [(THSearchViewController *)self detailsViewController];
    [(THSearchViewController *)self p_configureTableViewControllerColors:detailsViewController2];

    dividerColor = [themePage dividerColor];
    [(BEHairlineDividerView *)self->_headerDividerView setDividerColor:dividerColor];
    [(BEHairlineDividerView *)self->_footerTopBorderView setDividerColor:dividerColor];
    v34 = keyColor;
    v14 = [UIImage systemImageNamed:@"xmark.circle.fill"];
    v15 = [UIImageSymbolConfiguration configurationWithPointSize:14.0];
    v16 = [v14 imageWithConfiguration:v15];

    v17 = [v16 imageWithTintColor:secondaryTextColor];

    v18 = [v17 imageWithRenderingMode:1];

    v19 = [UIImage systemImageNamed:@"magnifyingglass"];
    v20 = [UIImageSymbolConfiguration configurationWithPointSize:16.0];
    v21 = [v19 imageWithConfiguration:v20];

    v22 = [v21 imageWithTintColor:secondaryTextColor];

    WeakRetained = objc_loadWeakRetained(&self->mSearchBar);
    [WeakRetained setImage:v18 forSearchBarIcon:1 state:0];

    v24 = objc_loadWeakRetained(&self->mSearchBar);
    [v24 setImage:v22 forSearchBarIcon:0 state:0];

    v25 = objc_loadWeakRetained(&self->mSearchBar);
    searchField = [v25 searchField];

    _placeholderLabel = [searchField _placeholderLabel];
    [_placeholderLabel setTextColor:secondaryTextColor];

    [searchField setTextColor:primaryTextColor];
    leftView = [searchField leftView];
    [leftView setTintColor:secondaryTextColor];

    resultsViewController3 = [(THSearchViewController *)self resultsViewController];
    tableView = [resultsViewController3 tableView];
    [tableView reloadData];

    detailsViewController3 = [(THSearchViewController *)self detailsViewController];
    tableView2 = [detailsViewController3 tableView];
    [tableView2 reloadData];

    viewIfLoaded = v36;
  }
}

- (void)p_configureTableViewController:(id)controller
{
  tableView = [controller tableView];
  [tableView setContentInsetAdjustmentBehavior:2];
  [(THSearchViewController *)self _resultsHeaderHeight];
  [tableView setSectionHeaderHeight:?];
  [tableView setDataSource:self];
  [tableView setDelegate:self];
}

- (void)_scrollTableViewToTop:(id)top
{
  topCopy = top;
  [topCopy contentOffset];
  v4 = v3;
  [topCopy contentInset];
  [topCopy setContentOffset:{v4, -v5}];
}

- (void)p_configureTableViewControllerColors:(id)colors
{
  colorsCopy = colors;
  themePage = [(THSearchViewController *)self themePage];
  searchBackgroundColor = [themePage searchBackgroundColor];
  if (!searchBackgroundColor)
  {
    searchBackgroundColor = [themePage backgroundColorForTraitEnvironment:self];
  }

  tableView = [colorsCopy tableView];
  tableViewSeparatorColor = [themePage tableViewSeparatorColor];
  [tableView setSeparatorColor:tableViewSeparatorColor];

  [tableView setBackgroundColor:searchBackgroundColor];
}

- (void)scrollViewWillBeginDragging:(id)dragging
{
  if ([(THSearchViewController *)self p_dismissKeyboardOnScroll])
  {
    WeakRetained = objc_loadWeakRetained(&self->mSearchBar);
    [WeakRetained resignFirstResponder];
  }
}

- (void)viewWillLayoutSubviews
{
  if ([(THSearchViewController *)self p_presentingFullscreen])
  {
    [(THSearchViewController *)self _resultsEstimatedRowHeight];
    v4 = v3;
  }

  else
  {
    v4 = kBESearchSectionSearchResultCellHeightPad;
  }

  detailsViewController = [(THSearchViewController *)self detailsViewController];
  tableView = [detailsViewController tableView];
  [tableView setEstimatedRowHeight:v4];

  pendingDeferredViewWillAppear = [(THSearchViewController *)self pendingDeferredViewWillAppear];
  if (pendingDeferredViewWillAppear)
  {
    v8 = pendingDeferredViewWillAppear;
    traitCollection = [(THSearchViewController *)self traitCollection];
    horizontalSizeClass = [traitCollection horizontalSizeClass];

    if (horizontalSizeClass)
    {

      [(THSearchViewController *)self p_deferredViewWillAppear];
    }
  }
}

- (void)willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_D2CF0;
  v4[3] = &unk_45D290;
  v4[4] = self;
  [coordinator animateAlongsideTransition:v4 completion:0];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v9.receiver = self;
  v9.super_class = THSearchViewController;
  coordinatorCopy = coordinator;
  [(THSearchViewController *)&v9 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_D2DD4;
  v8[3] = &unk_45D290;
  v8[4] = self;
  [coordinatorCopy animateAlongsideTransition:&stru_45D2D0 completion:v8];
}

- (void)viewDidLoad
{
  v92.receiver = self;
  v92.super_class = THSearchViewController;
  [(THSearchViewController *)&v92 viewDidLoad];
  view = [(THSearchViewController *)self view];
  v4 = +[UIColor whiteColor];
  v90 = view;
  [view setBackgroundColor:v4];

  v91 = objc_alloc_init(UIView);
  [v91 setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = +[UIColor clearColor];
  [v91 setBackgroundColor:v5];

  [v91 setUserInteractionEnabled:0];
  [(THSearchViewController *)self setContentContainerView:v91];
  v6 = [[UIView alloc] initWithFrame:{0.0, 0.0, 375.0, 44.0}];
  v7 = +[UIColor blueColor];
  [v6 setBackgroundColor:v7];

  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  objc_storeStrong(&self->mNoIndexView, v6);
  v8 = objc_alloc_init(UILabel);
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v8 setLineBreakMode:4];
  v9 = +[UIColor clearColor];
  [v8 setBackgroundColor:v9];

  [v8 setTextAlignment:1];
  v10 = [UIFont boldSystemFontOfSize:14.0];
  [v8 setFont:v10];

  v11 = +[UIColor darkGrayColor];
  [v8 setTextColor:v11];

  [v8 setMinimumScaleFactor:0.714285714];
  [v8 setAdjustsFontSizeToFitWidth:1];
  [v6 addSubview:v8];
  objc_storeStrong(&self->mNoIndexViewLabel, v8);
  v12 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:100];
  [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v6 addSubview:v12];
  objc_storeStrong(&self->mNoIndexActivityIndicatorView, v12);
  centerXAnchor = [v8 centerXAnchor];
  centerXAnchor2 = [v6 centerXAnchor];
  v81 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v94[0] = v81;
  topAnchor = [v8 topAnchor];
  topAnchor2 = [v6 topAnchor];
  v76 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v94[1] = v76;
  bottomAnchor = [v8 bottomAnchor];
  bottomAnchor2 = [v6 bottomAnchor];
  v73 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v94[2] = v73;
  widthAnchor = [v8 widthAnchor];
  widthAnchor2 = [v6 widthAnchor];
  v70 = [widthAnchor constraintLessThanOrEqualToAnchor:widthAnchor2 constant:-30.0];
  v94[3] = v70;
  centerYAnchor = [v12 centerYAnchor];
  v89 = v6;
  centerYAnchor2 = [v6 centerYAnchor];
  v13 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v94[4] = v13;
  trailingAnchor = [v12 trailingAnchor];
  v88 = v8;
  leadingAnchor = [v8 leadingAnchor];
  v16 = [trailingAnchor constraintEqualToAnchor:leadingAnchor constant:-10.0];
  v94[5] = v16;
  widthAnchor3 = [v12 widthAnchor];
  v18 = [widthAnchor3 constraintEqualToConstant:20.0];
  v94[6] = v18;
  v87 = v12;
  heightAnchor = [v12 heightAnchor];
  v20 = [heightAnchor constraintEqualToConstant:20.0];
  v94[7] = v20;
  v21 = [NSArray arrayWithObjects:v94 count:8];
  [NSLayoutConstraint activateConstraints:v21];

  WeakRetained = objc_loadWeakRetained(&self->mSearchBar);
  [WeakRetained sizeToFit];

  v23 = objc_loadWeakRetained(&self->mSearchBar);
  [v23 frame];
  self->_searchBarHeight = CGRectGetHeight(v95);

  v24 = [[THSearchTableViewController alloc] initWithNibName:0 bundle:0];
  [(THSearchViewController *)self setResultsViewController:v24];

  v25 = [[THSearchTableViewController alloc] initWithNibName:0 bundle:0];
  [(THSearchViewController *)self setDetailsViewController:v25];

  resultsViewController = [(THSearchViewController *)self resultsViewController];
  p_setupStandardUISearchController = [resultsViewController p_setupStandardUISearchController];
  [(THSearchViewController *)self setUiSearchController:p_setupStandardUISearchController];

  uiSearchController = [(THSearchViewController *)self uiSearchController];
  [uiSearchController setSearchResultsUpdater:self];

  uiSearchController2 = [(THSearchViewController *)self uiSearchController];
  searchBar = [uiSearchController2 searchBar];
  [searchBar setDelegate:self];

  uiSearchController3 = [(THSearchViewController *)self uiSearchController];
  [uiSearchController3 setObscuresBackgroundDuringPresentation:0];

  uiSearchController4 = [(THSearchViewController *)self uiSearchController];
  searchBar2 = [uiSearchController4 searchBar];
  objc_storeWeak(&self->mSearchBar, searchBar2);

  v34 = objc_loadWeakRetained(&self->mSearchBar);
  [v34 setDelegate:self];

  v35 = THBundle();
  v36 = [v35 localizedStringForKey:@"In this book" value:&stru_471858 table:0];
  v37 = objc_loadWeakRetained(&self->mSearchBar);
  [v37 setPlaceholder:v36];

  v38 = [THSearchTableViewDataSource alloc];
  searchController = [(THSearchViewController *)self searchController];
  v40 = [(THSearchTableViewDataSource *)v38 initWithSearchController:searchController searchViewMode:0];
  [(THSearchViewController *)self setResultsDataSource:v40];

  v41 = [THSearchTableViewDataSource alloc];
  searchController2 = [(THSearchViewController *)self searchController];
  v43 = [(THSearchTableViewDataSource *)v41 initWithSearchController:searchController2 searchViewMode:2];
  [(THSearchViewController *)self setDetailsDataSource:v43];

  v44 = [THSearchTableViewDataSource alloc];
  searchController3 = [(THSearchViewController *)self searchController];
  v46 = [(THSearchTableViewDataSource *)v44 initWithSearchController:searchController3 searchViewMode:1];
  [(THSearchViewController *)self setSuggestionsDataSource:v46];

  resultsViewController2 = [(THSearchViewController *)self resultsViewController];
  [(THSearchViewController *)self p_configureTableViewController:resultsViewController2];

  detailsViewController = [(THSearchViewController *)self detailsViewController];
  [(THSearchViewController *)self p_configureTableViewController:detailsViewController];

  resultsViewController3 = [(THSearchViewController *)self resultsViewController];
  [(THSearchViewController *)self pushViewController:resultsViewController3 animated:0];

  resultsViewController4 = [(THSearchViewController *)self resultsViewController];
  view2 = [resultsViewController4 view];

  resultsViewController5 = [(THSearchViewController *)self resultsViewController];
  view3 = [resultsViewController5 view];
  [view3 addSubview:v91];

  topAnchor3 = [v91 topAnchor];
  topAnchor4 = [view2 topAnchor];
  v80 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  v93[0] = v80;
  leadingAnchor2 = [v91 leadingAnchor];
  leadingAnchor3 = [view2 leadingAnchor];
  v55 = [leadingAnchor2 constraintEqualToAnchor:leadingAnchor3];
  v93[1] = v55;
  trailingAnchor2 = [v91 trailingAnchor];
  trailingAnchor3 = [view2 trailingAnchor];
  v58 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3];
  v93[2] = v58;
  bottomAnchor3 = [v91 bottomAnchor];
  v86 = view2;
  bottomAnchor4 = [view2 bottomAnchor];
  v61 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  v93[3] = v61;
  v62 = [NSArray arrayWithObjects:v93 count:4];
  [NSLayoutConstraint activateConstraints:v62];

  if (![(THSearchController *)self->mSearchController indexLoaded])
  {
    v63 = THBundle();
    v64 = [v63 localizedStringForKey:@"Search Index Loading…" value:&stru_471858 table:0];
    [(UILabel *)self->mNoIndexViewLabel setText:v64];

    [(THSearchViewController *)self setNoIndexViewVisible:1];
    v65 = +[NSNotificationCenter defaultCenter];
    [v65 addObserver:self selector:"p_searchIndexLoaded:" name:THSearchControllerDidLoadIndexNotification object:self->mSearchController];
    [v65 addObserver:self selector:"p_searchPaginationResultsUpdated:" name:THSearchControllerDidUpdatePaginationResultsNotification object:self->mSearchController];
    [(THSearchController *)self->mSearchController loadIndex];
  }

  contentContainerView = [(THSearchViewController *)self contentContainerView];
  [contentContainerView setClipsToBounds:1];

  view4 = [(THSearchViewController *)self view];
  [view4 setClipsToBounds:1];

  [(THSearchViewController *)self stylizeForTheme];
}

- (void)setNoIndexViewVisible:(BOOL)visible
{
  if (visible)
  {
    topViewController = [(THSearchViewController *)self topViewController];
    if (topViewController)
    {
      superview = [(UIView *)self->mNoIndexView superview];
      view = [topViewController view];

      if (superview != view)
      {
        view2 = [topViewController view];
        [view2 addSubview:self->mNoIndexView];

        [(UIView *)self->mNoIndexView setTranslatesAutoresizingMaskIntoConstraints:0];
        centerXAnchor = [(UIView *)self->mNoIndexView centerXAnchor];
        view3 = [topViewController view];
        centerXAnchor2 = [view3 centerXAnchor];
        v17 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
        v23[0] = v17;
        centerYAnchor = [(UIView *)self->mNoIndexView centerYAnchor];
        view4 = [topViewController view];
        centerYAnchor2 = [view4 centerYAnchor];
        v9 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
        v23[1] = v9;
        widthAnchor = [(UIView *)self->mNoIndexView widthAnchor];
        v11 = [widthAnchor constraintEqualToConstant:375.0];
        v23[2] = v11;
        heightAnchor = [(UIView *)self->mNoIndexView heightAnchor];
        v13 = [heightAnchor constraintEqualToConstant:44.0];
        v23[3] = v13;
        v14 = [NSArray arrayWithObjects:v23 count:4];
        [NSLayoutConstraint activateConstraints:v14];
      }
    }

    [(UIView *)self->mNoIndexView setAlpha:1.0];
    [(UIView *)self->mNoIndexView setHidden:0];
    [(UIActivityIndicatorView *)self->mNoIndexActivityIndicatorView startAnimating];
  }

  else
  {
    [(UIActivityIndicatorView *)self->mNoIndexActivityIndicatorView stopAnimating];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_D3C80;
    v22[3] = &unk_45AD60;
    v22[4] = self;
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_D3C98;
    v21[3] = &unk_45ADD8;
    v21[4] = self;
    [UIView animateWithDuration:v22 animations:v21 completion:0.3];
  }
}

- (int64_t)overrideUserInterfaceStyle
{
  v7.receiver = self;
  v7.super_class = THSearchViewController;
  overrideUserInterfaceStyle = [(THSearchViewController *)&v7 overrideUserInterfaceStyle];
  if (!overrideUserInterfaceStyle)
  {
    objc_opt_class();
    theme = [(THSearchViewController *)self theme];
    v5 = TSUDynamicCast();

    if (v5)
    {
      overrideUserInterfaceStyle = [v5 userInterfaceStyle];
    }

    else
    {
      overrideUserInterfaceStyle = 0;
    }
  }

  return overrideUserInterfaceStyle;
}

- (void)p_dismissSearchView:(id)view
{
  searchDelegate = [(THSearchViewController *)self searchDelegate];
  [searchDelegate searchFinished:1 completion:0];
}

- (void)didReceiveMemoryWarning
{
  if (!-[THSearchViewController isViewLoaded](self, "isViewLoaded") || (-[THSearchViewController view](self, "view"), v3 = objc_claimAutoreleasedReturnValue(), [v3 window], v4 = objc_claimAutoreleasedReturnValue(), v4, v3, !v4))
  {
    v5.receiver = self;
    v5.super_class = THSearchViewController;
    [(THSearchViewController *)&v5 didReceiveMemoryWarning];
  }
}

- (void)searchForString:(id)string
{
  stringCopy = string;
  self->mSearchingForString = 1;
  if ([(THSearchController *)self->mSearchController indexLoaded])
  {
    self->mTextSetBySearch = 1;
    WeakRetained = objc_loadWeakRetained(&self->mSearchBar);
    [WeakRetained setText:stringCopy];

    self->mTextSetBySearch = 0;
    [NSObject cancelPreviousPerformRequestsWithTarget:self];
    [(THSearchController *)self->mSearchController clearSearchResults];
    [(THSearchViewController *)self setSettingSearchForString:1];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_D3FD4;
    v9[3] = &unk_45ADD8;
    v9[4] = self;
    v6 = objc_retainBlock(v9);
    topViewController = [(THSearchViewController *)self topViewController];
    resultsViewController = [(THSearchViewController *)self resultsViewController];

    if (topViewController == resultsViewController)
    {
      (v6[2])(v6, 1);
    }

    else
    {
      [(THSearchViewController *)self popToRootViewControllerAnimated:1 completion:v6];
    }
  }

  else
  {
    [(THSearchViewController *)self setPendingSearchText:stringCopy];
  }
}

- (void)p_searchForSuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
  mSearchController = self->mSearchController;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_D40E4;
  v7[3] = &unk_45ADB0;
  v7[4] = self;
  v8 = suggestionCopy;
  v6 = suggestionCopy;
  [(THSearchController *)mSearchController suggestionsForSearchString:v6 completionBlock:v7];
}

- (void)p_setupSpinner
{
  v3 = [[UIView alloc] initWithFrame:{0.0, 0.0, 60.0, 60.0}];
  [(THSearchViewController *)self setProgressView:v3];

  resultsViewController = [(THSearchViewController *)self resultsViewController];
  tableView = [resultsViewController tableView];
  backgroundColor = [tableView backgroundColor];
  progressView = [(THSearchViewController *)self progressView];
  [progressView setBackgroundColor:backgroundColor];

  progressView2 = [(THSearchViewController *)self progressView];
  layer = [progressView2 layer];
  [layer setCornerRadius:7.0];

  contentContainerView = [(THSearchViewController *)self contentContainerView];
  progressView3 = [(THSearchViewController *)self progressView];
  [contentContainerView addSubview:progressView3];

  contentContainerView2 = [(THSearchViewController *)self contentContainerView];
  [contentContainerView2 bounds];
  TSDCenterOfRect();
  TSDFlooredPoint();
  v14 = v13;
  v16 = v15;
  progressView4 = [(THSearchViewController *)self progressView];
  [progressView4 setCenter:{v14, v16}];

  v18 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:101];
  [(THSearchViewController *)self setSpinner:v18];

  contentContainerView3 = [(THSearchViewController *)self contentContainerView];
  spinner = [(THSearchViewController *)self spinner];
  [contentContainerView3 addSubview:spinner];

  progressView5 = [(THSearchViewController *)self progressView];
  [progressView5 center];
  v23 = v22;
  v25 = v24;
  spinner2 = [(THSearchViewController *)self spinner];
  [spinner2 setCenter:{v23, v25}];

  progressView6 = [(THSearchViewController *)self progressView];
  [progressView6 setAlpha:0.0];

  spinner3 = [(THSearchViewController *)self spinner];
  [spinner3 setAlpha:0.0];

  spinner4 = [(THSearchViewController *)self spinner];
  [spinner4 startAnimating];
}

- (void)p_removeSpinner
{
  spinner = [(THSearchViewController *)self spinner];

  if (spinner)
  {
    spinner2 = [(THSearchViewController *)self spinner];
    [spinner2 stopAnimating];

    spinner3 = [(THSearchViewController *)self spinner];
    [spinner3 removeFromSuperview];

    [(THSearchViewController *)self setSpinner:0];
  }

  progressView = [(THSearchViewController *)self progressView];

  if (progressView)
  {
    progressView2 = [(THSearchViewController *)self progressView];
    [progressView2 removeFromSuperview];

    [(THSearchViewController *)self setProgressView:0];
  }
}

- (void)navigateToSearchResult:(id)result
{
  resultCopy = result;
  [(THSearchViewController *)self p_setupSpinner];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_D45A4;
  v5[3] = &unk_45AD60;
  v5[4] = self;
  [UIView animateWithDuration:196608 delay:v5 options:0 animations:0.2 completion:0.5];
  [(THSearchViewController *)self performSelector:"p_navigateToSearchResult:" withObject:resultCopy afterDelay:0.0];
}

- (void)p_navigateToAbsolutePageIndex:(id)index animated:(BOOL)animated
{
  animatedCopy = animated;
  indexCopy = index;
  [(THSearchViewController *)self p_removeSpinner];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_D46F4;
  v9[3] = &unk_45ADB0;
  v10 = indexCopy;
  WeakRetained = objc_loadWeakRetained(&self->_searchDelegate);
  v7 = WeakRetained;
  v8 = indexCopy;
  [v7 searchFinished:animatedCopy completion:v9];
}

- (void)p_navigateToSearchResult:(id)result animated:(BOOL)animated
{
  animatedCopy = animated;
  resultCopy = result;
  [(THSearchViewController *)self p_removeSpinner];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_D4820;
  v9[3] = &unk_45D2F8;
  WeakRetained = objc_loadWeakRetained(&self->_searchDelegate);
  selfCopy = self;
  v12 = resultCopy;
  v7 = resultCopy;
  v8 = WeakRetained;
  [v8 searchFinished:animatedCopy completion:v9];
}

- (void)navigateToAbsolutePageIndex:(unint64_t)index
{
  [(THSearchViewController *)self p_setupSpinner];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_D4978;
  v6[3] = &unk_45AD60;
  v6[4] = self;
  [UIView animateWithDuration:196608 delay:v6 options:0 animations:0.2 completion:0.5];
  v5 = [NSNumber numberWithUnsignedInteger:index];
  [(THSearchViewController *)self performSelector:"p_navigateToAbsolutePageIndex:" withObject:v5 afterDelay:0.0];
}

- (void)showAllResultsWithKind:(int)kind
{
  v3 = *&kind;
  detailsViewController = [(THSearchViewController *)self detailsViewController];
  tableView = [detailsViewController tableView];

  detailsDataSource = [(THSearchViewController *)self detailsDataSource];
  [detailsDataSource updateForResultsKind:v3];

  [tableView reloadData];
  [(THSearchViewController *)self _scrollTableViewToTop:tableView];
  searchController = [(THSearchViewController *)self searchController];
  currentQuery = [searchController currentQuery];
  detailsViewController2 = [(THSearchViewController *)self detailsViewController];
  navigationItem = [detailsViewController2 navigationItem];
  [navigationItem setTitle:currentQuery];

  detailsViewController3 = [(THSearchViewController *)self detailsViewController];
  [(THSearchViewController *)self pushViewController:detailsViewController3 animated:1];
}

- (void)searchBar:(id)bar textDidChange:(id)change
{
  if (!self->mTextSetBySearch)
  {
    [NSObject cancelPreviousPerformRequestsWithTarget:self, change];
    [(THSearchController *)self->mSearchController clearSearchResults];
    p_searchText = [(THSearchViewController *)self p_searchText];
    if ([p_searchText length])
    {
      [(THSearchViewController *)self performSelector:"p_searchForSuggestion:" withObject:p_searchText afterDelay:0.25];
    }

    else
    {
      v6 = +[NSArray array];
      suggestionsDataSource = [(THSearchViewController *)self suggestionsDataSource];
      [suggestionsDataSource setSuggestions:v6];

      [(THSearchViewController *)self p_showRecents];
      WeakRetained = objc_loadWeakRetained(&self->mSearchBar);
      [WeakRetained becomeFirstResponder];
    }
  }
}

- (void)searchBarSearchButtonClicked:(id)clicked
{
  p_searchText = [(THSearchViewController *)self p_searchText];
  if ([p_searchText length])
  {
    [NSObject cancelPreviousPerformRequestsWithTarget:self];
    [(THSearchController *)self->mSearchController clearSearchResults];
    v5 = [THSearchTableViewDataSource alloc];
    searchController = [(THSearchViewController *)self searchController];
    v7 = [(THSearchTableViewDataSource *)v5 initWithSearchController:searchController searchViewMode:2];
    [(THSearchViewController *)self setResultsDataSource:v7];

    WeakRetained = objc_loadWeakRetained(&self->mSearchBar);
    [WeakRetained resignFirstResponder];

    mSearchController = self->mSearchController;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_D4D30;
    v10[3] = &unk_45AD60;
    v10[4] = self;
    [(THSearchController *)mSearchController searchForString:p_searchText completionBlock:v10];
  }
}

- (id)p_searchText
{
  WeakRetained = objc_loadWeakRetained(&self->mSearchBar);
  text = [WeakRetained text];
  v4 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
  v5 = [text stringByTrimmingCharactersInSet:v4];

  return v5;
}

- (void)searchBarCancelButtonClicked:(id)clicked
{
  clickedCopy = clicked;
  if (isPhone())
  {
    [(THSearchViewController *)self p_dismissSearchView:clickedCopy];
  }
}

- (id)tableView:(id)view viewForHeaderWithTitle:(id)title
{
  titleCopy = title;
  v7 = [view dequeueReusableHeaderFooterViewWithIdentifier:@"headerCell"];
  if (!v7)
  {
    v7 = [[UITableViewHeaderFooterView alloc] initWithReuseIdentifier:@"headerCell"];
  }

  textLabel = [v7 textLabel];
  [textLabel setText:titleCopy];

  themePage = [(THSearchViewController *)self themePage];
  secondaryTextColor = [themePage secondaryTextColor];
  textLabel2 = [v7 textLabel];
  [textLabel2 setTextColor:secondaryTextColor];

  v12 = +[UIBackgroundConfiguration listGroupedHeaderFooterConfiguration];
  [v7 setBackgroundConfiguration:v12];

  return v7;
}

- (id)tableView:(id)view cellForPlainString:(id)string
{
  stringCopy = string;
  viewCopy = view;
  v8 = [viewCopy dequeueReusableCellWithIdentifier:@"textCell"];
  if (!v8)
  {
    v8 = [[UITableViewCell alloc] initWithStyle:0 reuseIdentifier:@"textCell"];
    v9 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    [v8 setSelectedBackgroundView:v9];
  }

  textLabel = [v8 textLabel];
  [textLabel setText:stringCopy];

  themePage = [(THSearchViewController *)self themePage];
  tableViewCellSelectedColor = [themePage tableViewCellSelectedColor];
  selectedBackgroundView = [v8 selectedBackgroundView];
  [selectedBackgroundView setBackgroundColor:tableViewCellSelectedColor];

  textLabel2 = [v8 textLabel];
  [textLabel2 setHighlightedTextColor:0];
  primaryTextColor = [themePage primaryTextColor];
  [textLabel2 setTextColor:primaryTextColor];

  backgroundColor = [viewCopy backgroundColor];

  [v8 setBackgroundColor:backgroundColor];

  return v8;
}

- (id)tableView:(id)view cellForSearchResult:(id)result
{
  viewCopy = view;
  resultCopy = result;
  v8 = kBESearchTableViewCellResultsIdentifier;
  v9 = [viewCopy dequeueReusableCellWithIdentifier:kBESearchTableViewCellResultsIdentifier];
  if (!v9)
  {
    v9 = [[BESearchResultTableViewCell alloc] initWithStyle:3 reuseIdentifier:v8];
  }

  [(THSearchViewController *)self _configureResultsCell:v9 forSearchResult:resultCopy inTableView:viewCopy];

  return v9;
}

- (void)_configureResultsCell:(id)cell forSearchResult:(id)result inTableView:(id)view
{
  cellCopy = cell;
  resultCopy = result;
  viewCopy = view;
  v10 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [cellCopy setSelectedBackgroundView:v10];
  title = [resultCopy title];
  if (title)
  {
  }

  else if ([resultCopy rank] != 1)
  {
    [(THSearchController *)self->mSearchController resolveTitleForSearchResult:resultCopy];
  }

  rank = [resultCopy rank];
  if (rank - 6 >= 2 && rank == 1)
  {
    v59 = viewCopy;
    v13 = THBundle();
    resultLabel4 = [v13 localizedStringForKey:@"Glossary: %@" value:&stru_471858 table:0];

    term = [resultCopy term];
    v16 = [NSString stringWithFormat:resultLabel4, term];
    titleLabel = [cellCopy titleLabel];
    [titleLabel setText:v16];

    mSearchController = self->mSearchController;
    term2 = [resultCopy term];
    v20 = [(THSearchController *)mSearchController summaryForGlossaryTerm:term2];

    if (!v20)
    {
      v21 = THBundle();
      v22 = [v21 localizedStringForKey:@"(Glossary entry for \\U201C%@\\U201D)" value:&stru_471858 table:0];

      term3 = [resultCopy term];
      v20 = [NSString stringWithFormat:v22, term3];
    }

    resultLabel = [cellCopy resultLabel];
    [resultLabel setText:v20];

    searchController = [(THSearchViewController *)self searchController];
    currentQuery = [searchController currentQuery];
    v27 = [v20 rangeOfString:currentQuery];
    v29 = v28;
    resultLabel2 = [cellCopy resultLabel];
    [resultLabel2 setBoldRange:{v27, v29}];

    viewCopy = v59;
  }

  else
  {
    title2 = [resultCopy title];
    v32 = [title2 length];

    if (v32)
    {
      [resultCopy title];
    }

    else
    {
      [resultCopy term];
    }
    v33 = ;
    titleLabel2 = [cellCopy titleLabel];
    [titleLabel2 setText:v33];

    displayPageNumber = [resultCopy displayPageNumber];
    pageNumberLabel = [cellCopy pageNumberLabel];
    [pageNumberLabel setText:displayPageNumber];

    context = [resultCopy context];
    resultLabel3 = [cellCopy resultLabel];
    [resultLabel3 setText:context];

    contextRangeForResult = [resultCopy contextRangeForResult];
    v41 = v40;
    resultLabel4 = [cellCopy resultLabel];
    [resultLabel4 setBoldRange:{contextRangeForResult, v41}];
  }

  themePage = [(THSearchViewController *)self themePage];
  tableViewCellSelectedColor = [themePage tableViewCellSelectedColor];
  [v10 setBackgroundColor:tableViewCellSelectedColor];

  secondaryTextColor = [themePage secondaryTextColor];
  pageNumberLabel2 = [cellCopy pageNumberLabel];
  [pageNumberLabel2 setTextColor:secondaryTextColor];

  primaryTextColor = [themePage primaryTextColor];
  titleLabel3 = [cellCopy titleLabel];
  [titleLabel3 setTextColor:primaryTextColor];

  resultLabel5 = [cellCopy resultLabel];
  [resultLabel5 setTextColor:primaryTextColor];

  [viewCopy frame];
  v50 = v49;
  v52 = v51;
  v54 = v53;
  v56 = v55;

  v62.origin.x = v50;
  v62.origin.y = v52;
  v62.size.width = v54;
  v62.size.height = v56;
  [cellCopy setMaxWidth:CGRectGetWidth(v62)];
  secondaryBackgroundColor = [themePage secondaryBackgroundColor];
  focusShapeView = [cellCopy focusShapeView];
  [focusShapeView setFillColor:secondaryBackgroundColor];

  [cellCopy applyLabelFonts];
  [cellCopy updateConstraintsIfNeeded];
}

- (id)tableView:(id)view noResultsCellWithKind:(int)kind
{
  v4 = *&kind;
  v6 = [view dequeueReusableCellWithIdentifier:@"noResultsCell"];
  if (!v6)
  {
    v6 = [[THSearchTableViewNoResultsCell alloc] initWithStyle:3 reuseIdentifier:@"noResultsCell"];
    v7 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    [(THSearchTableViewNoResultsCell *)v6 setSelectedBackgroundView:v7];
  }

  themePage = [(THSearchViewController *)self themePage];
  tableViewCellSelectedColor = [themePage tableViewCellSelectedColor];
  selectedBackgroundView = [(THSearchTableViewNoResultsCell *)v6 selectedBackgroundView];
  [selectedBackgroundView setBackgroundColor:tableViewCellSelectedColor];

  primaryTextColor = [themePage primaryTextColor];
  textLabel = [(THSearchTableViewNoResultsCell *)v6 textLabel];
  [textLabel setTextColor:primaryTextColor];

  detailTextLabel = [(THSearchTableViewNoResultsCell *)v6 detailTextLabel];
  [detailTextLabel setTextColor:primaryTextColor];

  [(THSearchTableViewNoResultsCell *)v6 setSearchKind:v4];

  return v6;
}

- (id)tableView:(id)view seeAllResultsCellWithKind:(int)kind count:(unint64_t)count
{
  v8 = [view dequeueReusableCellWithIdentifier:@"seeAllResultsCell"];
  if (!v8)
  {
    v8 = [[UITableViewCell alloc] initWithStyle:0 reuseIdentifier:@"seeAllResultsCell"];
    textLabel = [v8 textLabel];
    [textLabel setTextAlignment:0];

    v10 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    [v8 setSelectedBackgroundView:v10];
  }

  themePage = [(THSearchViewController *)self themePage];
  tableViewCellSelectedColor = [themePage tableViewCellSelectedColor];
  selectedBackgroundView = [v8 selectedBackgroundView];
  [selectedBackgroundView setBackgroundColor:tableViewCellSelectedColor];

  primaryTextColor = [themePage primaryTextColor];
  textLabel2 = [v8 textLabel];
  [textLabel2 setTextColor:primaryTextColor];

  v16 = THBundle();
  v17 = v16;
  if (kind)
  {
    v18 = @"See all %lu media results…";
  }

  else
  {
    v18 = @"See all %lu text results…";
  }

  v19 = [v16 localizedStringForKey:v18 value:&stru_471858 table:0];

  v20 = [NSString localizedStringWithFormat:v19, count];
  textLabel3 = [v8 textLabel];
  [textLabel3 setText:v20];

  textLabel4 = [v8 textLabel];
  [textLabel4 setNumberOfLines:0];

  return v8;
}

- (double)_resultsEstimatedRowHeight
{
  if (+[UIFont bc_accessibilityFontSizesEnabled])
  {
    if ([UIFont bc_contentSizeCategoryIsGreaterThan:UIContentSizeCategoryAccessibilityExtraLarge])
    {
      v2 = &kBESearchSectionSearchResultCellAccessibilityLargestHeightPhone;
    }

    else if ([UIFont bc_contentSizeCategoryIsGreaterThan:UIContentSizeCategoryAccessibilityLarge])
    {
      v2 = &kBESearchSectionSearchResultCellAccessibilityLargerHeightPhone;
    }

    else
    {
      v2 = &kBESearchSectionSearchResultCellAccessibilityLargeHeightPhone;
    }
  }

  else
  {
    v2 = &kBESearchSectionSearchResultCellHeightPhone;
  }

  return *v2;
}

- (double)_resultsHeaderHeight
{
  if (!+[UIFont bc_accessibilityFontSizesEnabled])
  {
    v2 = &kBESearchTableViewHeaderHeight;
    return *v2;
  }

  if ([UIFont bc_contentSizeCategoryIsGreaterThan:UIContentSizeCategoryAccessibilityExtraLarge])
  {
    v2 = &kBESearchTableViewAccessibilityHeaderLargestHeight;
    return *v2;
  }

  v4 = kBESearchTableViewAccessibilityHeaderLargeHeight;
  v5 = [UIFont bc_contentSizeCategoryIsGreaterThan:UIContentSizeCategoryAccessibilityLarge];
  result = kBESearchTableViewAccessibilityHeaderLargerHeight;
  if (!v5)
  {
    return v4;
  }

  return result;
}

- (id)p_dataSourceForTableView:(id)view
{
  viewCopy = view;
  resultsViewController = [(THSearchViewController *)self resultsViewController];
  view = [resultsViewController view];

  if (view == viewCopy)
  {
    resultsDataSource = [(THSearchViewController *)self resultsDataSource];
  }

  else
  {
    detailsViewController = [(THSearchViewController *)self detailsViewController];
    view2 = [detailsViewController view];

    if (view2 != viewCopy)
    {
      v9 = 0;
      goto LABEL_7;
    }

    resultsDataSource = [(THSearchViewController *)self detailsDataSource];
  }

  v9 = resultsDataSource;
LABEL_7:

  return v9;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  viewCopy = view;
  v7 = [(THSearchViewController *)self p_dataSourceForTableView:viewCopy];
  v8 = [v7 tableView:viewCopy numberOfRowsInSection:section];

  return v8;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  v8 = [(THSearchViewController *)self p_dataSourceForTableView:viewCopy];
  v9 = [v8 tableView:viewCopy cellForRowAtIndexPath:pathCopy searchViewController:self];

  return v9;
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  viewCopy = view;
  v5 = [(THSearchViewController *)self p_dataSourceForTableView:viewCopy];
  v6 = [v5 numberOfSectionsInTableView:viewCopy];

  return v6;
}

- (BOOL)tableView:(id)view canFocusRowAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [(THSearchViewController *)self p_dataSourceForTableView:view];
  if ([v7 searchViewMode] == 2 && objc_msgSend(v7, "indexPathCorrespondsToSearchResultRow:", pathCopy))
  {
    v8 = [v7 indexPathCorrespondsToSeeAllResultsRow:pathCopy] ^ 1;
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  viewCopy = view;
  cellCopy = cell;
  pathCopy = path;
  v10 = [(THSearchViewController *)self p_dataSourceForTableView:viewCopy];
  if ([v10 searchViewMode] == 2 && objc_msgSend(v10, "indexPathCorrespondsToSearchResultRow:", pathCopy))
  {
    objc_opt_class();
    v11 = TSUDynamicCast();
    if (v11)
    {
      v12 = [v10 searchResultForTableIndexPath:pathCopy];
      [(THSearchViewController *)self _configureResultsCell:v11 forSearchResult:v12 inTableView:viewCopy];
    }
  }
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  v7 = [(THSearchViewController *)self p_dataSourceForTableView:viewCopy];
  v8 = [v7 titleForHeaderInSection:section];
  v9 = [(THSearchViewController *)self tableView:viewCopy viewForHeaderWithTitle:v8];

  v10 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleTitle2];
  v11 = [v10 fontDescriptorWithDesign:UIFontDescriptorSystemDesignSerif];
  v12 = [v11 fontDescriptorWithSymbolicTraits:2];
  v13 = [UIFont fontWithDescriptor:v12 size:0.0];

  textLabel = [v9 textLabel];
  [textLabel setFont:v13];

  return v9;
}

- (BESearchResultTableViewCell)dummySearchResultsCell
{
  mDummySearchResultsCell = self->mDummySearchResultsCell;
  if (!mDummySearchResultsCell)
  {
    v4 = [[BESearchResultTableViewCell alloc] initWithStyle:3 reuseIdentifier:0];
    v5 = self->mDummySearchResultsCell;
    self->mDummySearchResultsCell = v4;

    mDummySearchResultsCell = self->mDummySearchResultsCell;
  }

  return mDummySearchResultsCell;
}

- (id)tableView:(id)view willSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = pathCopy;
  if ([(THSearchViewController *)self searchViewMode]== 2)
  {
    v9 = [(THSearchViewController *)self p_dataSourceForTableView:viewCopy];
    v10 = [v9 numberOfResultsInSection:{objc_msgSend(pathCopy, "section")}];

    v8 = pathCopy;
    if (!v10)
    {

      v8 = 0;
    }
  }

  return v8;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  [viewCopy deselectRowAtIndexPath:pathCopy animated:0];
  v7 = [(THSearchViewController *)self p_dataSourceForTableView:viewCopy];

  searchViewMode = [v7 searchViewMode];
  if (searchViewMode != 2)
  {
    if (searchViewMode == 1)
    {
      suggestions = [v7 suggestions];
      v9 = [suggestions objectAtIndex:{objc_msgSend(pathCopy, "row")}];

      searchController = [(THSearchViewController *)self searchController];
      v12 = [searchController isEncodedResultForPageNumber:v9];

      if (v12)
      {
        searchController2 = [(THSearchViewController *)self searchController];
        v14 = [searchController2 absolutePageIndexFromEncodedPageNumberResult:v9];

        if (v14 != 0x7FFFFFFFFFFFFFFFLL)
        {
          [(THSearchViewController *)self navigateToAbsolutePageIndex:v14];
        }

        goto LABEL_9;
      }
    }

    else
    {
      if (searchViewMode)
      {
        goto LABEL_10;
      }

      v9 = -[THSearchController recentSearchQueryAtIndex:](self->mSearchController, "recentSearchQueryAtIndex:", [pathCopy row]);
    }

    [(THSearchViewController *)self searchForString:v9];
LABEL_9:

    goto LABEL_10;
  }

  v15 = [v7 numberOfResultsInSection:{objc_msgSend(pathCopy, "section")}];
  if (v15)
  {
    if ([pathCopy row] != v15)
    {
      v9 = [v7 searchResultForTableIndexPath:pathCopy];
      [(THSearchViewController *)self navigateToSearchResult:v9];
      goto LABEL_9;
    }

    -[THSearchViewController showAllResultsWithKind:](self, "showAllResultsWithKind:", [v7 p_resultKindForSection:{objc_msgSend(pathCopy, "section")}]);
  }

LABEL_10:
}

- (void)_analyticsSubmitInBookSearchEventWithSearchText:(id)text
{
  ba_effectiveAnalyticsTracker = [(THSearchViewController *)self ba_effectiveAnalyticsTracker];
  searchDelegate = [(THSearchViewController *)self searchDelegate];
  v5 = [searchDelegate readingSessionDataForSearchViewController:self];

  searchDelegate2 = [(THSearchViewController *)self searchDelegate];
  v7 = [searchDelegate2 contentDataForSearchViewController:self];

  if (ba_effectiveAnalyticsTracker && v5 && v7)
  {
    v8 = +[BAEventReporter sharedReporter];
    [v8 emitInBookSearchEventWithTracker:ba_effectiveAnalyticsTracker readingSessionData:v5 contentData:v7];
  }
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->mDelegate);

  return WeakRetained;
}

- (UISearchBar)searchBar
{
  WeakRetained = objc_loadWeakRetained(&self->mSearchBar);

  return WeakRetained;
}

- (THSearchViewControllerDelegate)searchDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_searchDelegate);

  return WeakRetained;
}

@end