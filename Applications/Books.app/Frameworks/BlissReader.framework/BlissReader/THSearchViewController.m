@interface THSearchViewController
- (BESearchResultTableViewCell)dummySearchResultsCell;
- (BOOL)p_isBottomViewVisible;
- (BOOL)tableView:(id)a3 canFocusRowAtIndexPath:(id)a4;
- (IMThemePage)themePage;
- (THSearchViewController)initWithSearchController:(id)a3;
- (THSearchViewControllerDelegate)searchDelegate;
- (UISearchBar)searchBar;
- (double)_resultsEstimatedRowHeight;
- (double)_resultsHeaderHeight;
- (double)p_aboveAndBelowContentHeight;
- (double)p_bestPopoverHeight;
- (id)delegate;
- (id)p_dataSourceForTableView:(id)a3;
- (id)p_searchText;
- (id)popViewControllerAnimated:(BOOL)a3;
- (id)tableView:(id)a3 cellForPlainString:(id)a4;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 cellForSearchResult:(id)a4;
- (id)tableView:(id)a3 noResultsCellWithKind:(int)a4;
- (id)tableView:(id)a3 seeAllResultsCellWithKind:(int)a4 count:(unint64_t)a5;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (id)tableView:(id)a3 viewForHeaderWithTitle:(id)a4;
- (id)tableView:(id)a3 willSelectRowAtIndexPath:(id)a4;
- (id)topTableViewController;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)overrideUserInterfaceStyle;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_adjustPocketInsetsForSafeAreaInsets:(UIEdgeInsets)a3;
- (void)_analyticsSubmitInBookSearchEventWithSearchText:(id)a3;
- (void)_configureResultsCell:(id)a3 forSearchResult:(id)a4 inTableView:(id)a5;
- (void)_scrollTableViewToTop:(id)a3;
- (void)dealloc;
- (void)didPresentViewController:(id)a3;
- (void)didReceiveMemoryWarning;
- (void)keyboardWillChangeFrame:(id)a3;
- (void)keyboardWillHideOrUndock:(id)a3;
- (void)keyboardWillShowOrDock:(id)a3;
- (void)navigateToAbsolutePageIndex:(unint64_t)a3;
- (void)navigateToSearchResult:(id)a3;
- (void)p_changeToSize:(double)a3 animated:(BOOL)a4;
- (void)p_configureAnimated:(BOOL)a3;
- (void)p_configureTableViewController:(id)a3;
- (void)p_configureTableViewControllerColors:(id)a3;
- (void)p_deferredViewWillAppear;
- (void)p_dismissSearchView:(id)a3;
- (void)p_navigateToAbsolutePageIndex:(id)a3 animated:(BOOL)a4;
- (void)p_navigateToSearchResult:(id)a3 animated:(BOOL)a4;
- (void)p_removeSpinner;
- (void)p_searchForSuggestion:(id)a3;
- (void)p_searchIndexLoaded:(id)a3;
- (void)p_searchPaginationResultsUpdated:(id)a3;
- (void)p_setupSpinner;
- (void)p_showRecents;
- (void)popToRootViewControllerAnimated:(BOOL)a3 completion:(id)a4;
- (void)pushViewController:(id)a3 animated:(BOOL)a4;
- (void)scrollViewWillBeginDragging:(id)a3;
- (void)searchBar:(id)a3 textDidChange:(id)a4;
- (void)searchBarCancelButtonClicked:(id)a3;
- (void)searchBarSearchButtonClicked:(id)a3;
- (void)searchForString:(id)a3;
- (void)setNoIndexViewVisible:(BOOL)a3;
- (void)setTheme:(id)a3;
- (void)showAllResultsWithKind:(int)a3;
- (void)stylizeForTheme;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
- (void)willTransitionToTraitCollection:(id)a3 withTransitionCoordinator:(id)a4;
@end

@implementation THSearchViewController

- (THSearchViewController)initWithSearchController:(id)a3
{
  v5 = a3;
  v6 = [(THSearchViewController *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->mSearchController, a3);
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
  v3 = [(THSearchViewController *)self view];
  if (v3)
  {
    v4 = [(THSearchViewController *)self view];
    [v4 frame];
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

- (void)p_changeToSize:(double)a3 animated:(BOOL)a4
{
  if (![(THSearchViewController *)self p_presentingFullscreen]&& [(THSearchViewController *)self p_isBottomViewVisible])
  {
    v6 = [(THSearchViewController *)self view];
    [v6 frame];
    Width = CGRectGetWidth(v15);

    if (Width <= 0.0)
    {
      Width = 375.0;
    }

    v8 = [(THSearchViewController *)self view];
    [v8 frame];
    v10 = v9;
    v12 = v11;

    if (Width != v10 || v12 != a3)
    {

      [(THSearchViewController *)self setPreferredContentSize:Width, a3];
    }
  }
}

- (id)topTableViewController
{
  v2 = [(THSearchViewController *)self topViewController];
  objc_opt_class();
  v3 = TSUDynamicCast();
  v4 = v3;
  if (v3)
  {
    v5 = [v3 topViewController];

    v2 = v5;
  }

  objc_opt_class();
  v6 = TSUDynamicCast();

  return v6;
}

- (double)p_aboveAndBelowContentHeight
{
  v2 = [(THSearchViewController *)self searchBar];
  [v2 frame];
  v4 = v3 + -1.0;

  return v4;
}

- (double)p_bestPopoverHeight
{
  searchBarHeight = self->_searchBarHeight;
  v4 = [(THSearchViewController *)self topTableViewController];
  v5 = [v4 tableView];
  if (v5)
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
    v11 = [(THSearchViewController *)self resultsDataSource];
    v12 = [(THSearchViewController *)self suggestionsDataSource];

    if (v11 == v12)
    {
      [v5 rowHeight];
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
      [v5 preferredContentHeightWithMax:v10];
    }

    searchBarHeight = v7 + v13;
  }

  return searchBarHeight;
}

- (void)keyboardWillShowOrDock:(id)a3
{
  [(THSearchViewController *)self p_bestPopoverHeight];

  [(THSearchViewController *)self p_changeToSize:1 animated:?];
}

- (void)keyboardWillHideOrUndock:(id)a3
{
  [(THSearchViewController *)self p_bestPopoverHeight];

  [(THSearchViewController *)self p_changeToSize:1 animated:?];
}

- (void)keyboardWillChangeFrame:(id)a3
{
  [(THSearchViewController *)self p_bestPopoverHeight];

  [(THSearchViewController *)self p_changeToSize:0 animated:?];
}

- (void)pushViewController:(id)a3 animated:(BOOL)a4
{
  v4.receiver = self;
  v4.super_class = THSearchViewController;
  [(THSearchViewController *)&v4 pushViewController:a3 animated:a4];
}

- (id)popViewControllerAnimated:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = THSearchViewController;
  v3 = [(THSearchViewController *)&v5 popViewControllerAnimated:a3];

  return v3;
}

- (void)popToRootViewControllerAnimated:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v6 = a4;
  [(THSearchViewController *)self setNoIndexViewVisible:0];
  if (v4)
  {
    +[CATransaction begin];
    v7 = [(THSearchViewController *)self popToRootViewControllerAnimated:1];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_D1A6C;
    v9[3] = &unk_45B718;
    v10 = v6;
    [CATransaction setCompletionBlock:v9];
    +[CATransaction commit];
  }

  else
  {
    v8 = [(THSearchViewController *)self popToRootViewControllerAnimated:0];
    (*(v6 + 2))(v6, 1);
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

- (void)_adjustPocketInsetsForSafeAreaInsets:(UIEdgeInsets)a3
{
  top = a3.top;
  v5 = [(THSearchViewController *)self resultsViewController:a3.top];
  v24 = [v5 tableView];

  [v24 contentInset];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [v24 setContentInset:top + 4.0];
  [v24 _pocketInsets];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  [v24 sectionHeaderHeight];
  v19 = top + 4.0 - v18;
  [v24 _setPocketInsets:{v19, v13, v15, v17}];
  if (![(THSearchViewController *)self p_presentingFullscreen])
  {
    top = 44.0;
  }

  v20 = [(THSearchViewController *)self detailsViewController];
  v21 = [v20 tableView];
  [v21 setContentInset:{top, v7, v9, v11}];

  v22 = [(THSearchViewController *)self detailsViewController];
  v23 = [v22 tableView];
  [v23 _setPocketInsets:{v19, v13, v15, v17}];
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v9.receiver = self;
  v9.super_class = THSearchViewController;
  [(THSearchViewController *)&v9 viewWillAppear:?];
  v5 = [(THSearchViewController *)self ba_analyticsTracker];

  if (!v5)
  {
    v6 = [(THSearchViewController *)self ba_setupNewAnalyticsTrackerWithName:@"ContentSearch"];
  }

  [(THSearchViewController *)self p_configureAnimated:v3];
  v10 = @"animated";
  v7 = [NSNumber numberWithBool:v3];
  v11 = v7;
  v8 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  [(THSearchViewController *)self setPendingDeferredViewWillAppear:v8];
}

- (void)p_deferredViewWillAppear
{
  v3 = [(THSearchViewController *)self pendingDeferredViewWillAppear];
  v4 = [v3 objectForKeyedSubscript:@"animated"];
  v5 = [v4 BOOLValue];

  [(THSearchViewController *)self setPendingDeferredViewWillAppear:0];

  [(THSearchViewController *)self p_configureAnimated:v5];
}

- (void)p_configureAnimated:(BOOL)a3
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
  v7 = [(THSearchViewController *)self resultsViewController];
  v8 = [v7 navigationItem];
  [v8 setTitle:v6];

  v9 = [(THSearchViewController *)self resultsViewController];
  v10 = [v9 navigationItem];
  [v10 setRightBarButtonItem:v17];

  if ([(THSearchController *)self->mSearchController indexLoaded])
  {
    if (![(THSearchViewController *)self settingSearchForString])
    {
      v11 = [(THSearchController *)self->mSearchController currentQuery];
      if (v11)
      {
      }

      else
      {
        v12 = [(THSearchViewController *)self pendingSearchText];

        if (!v12)
        {
          [(THSearchViewController *)self p_showRecents];
          goto LABEL_12;
        }
      }
    }

    v13 = [(THSearchController *)self->mSearchController currentQuery];

    if (v13)
    {
      v14 = [(THSearchController *)self->mSearchController currentQuery];
      v15 = objc_loadWeakRetained(&self->mSearchBar);
      [v15 setText:v14];
    }
  }

LABEL_12:
  v16 = [(THSearchViewController *)self uiSearchController];
  [v16 setActive:1];
}

- (void)viewDidAppear:(BOOL)a3
{
  v9.receiver = self;
  v9.super_class = THSearchViewController;
  [(THSearchViewController *)&v9 viewDidAppear:a3];
  if (!self->mSearchingForString)
  {
    v4 = [(THSearchViewController *)self topTableViewController];
    v5 = [v4 tableView];
    v6 = [(THSearchViewController *)self p_dataSourceForTableView:v5];
    v7 = [v6 searchViewMode];

    if (v7 != 2)
    {
      WeakRetained = objc_loadWeakRetained(&self->mSearchBar);
      [WeakRetained becomeFirstResponder];
    }
  }

  self->mSearchingForString = 0;
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v5 = [(THSearchViewController *)self uiSearchController];
  [v5 setActive:0];

  v6.receiver = self;
  v6.super_class = THSearchViewController;
  [(THSearchViewController *)&v6 viewWillDisappear:v3];
}

- (void)didPresentViewController:(id)a3
{
  if ([(THSearchViewController *)self p_isBottomViewVisible])
  {
    [(THSearchViewController *)self p_bestPopoverHeight];

    [(THSearchViewController *)self p_changeToSize:1 animated:?];
  }
}

- (void)p_searchIndexLoaded:(id)a3
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

- (void)p_searchPaginationResultsUpdated:(id)a3
{
  v4 = [(THSearchViewController *)self resultsViewController];
  v5 = [v4 tableView];
  [v5 reloadData];

  v7 = [(THSearchViewController *)self detailsViewController];
  v6 = [v7 tableView];
  [v6 reloadData];
}

- (void)setTheme:(id)a3
{
  v5 = a3;
  if (self->mTheme != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->mTheme, a3);
    [(THSearchViewController *)self stylizeForTheme];
    v5 = v6;
  }
}

- (void)stylizeForTheme
{
  v3 = [(THSearchViewController *)self viewIfLoaded];
  if (v3)
  {
    v36 = v3;
    v4 = [(THSearchViewController *)self themePage];
    v5 = [(THSearchViewController *)self overrideUserInterfaceStyle];
    v6 = [(THSearchViewController *)self resultsViewController];
    [v6 setOverrideUserInterfaceStyle:v5];

    v7 = [(THSearchViewController *)self detailsViewController];
    [v7 setOverrideUserInterfaceStyle:v5];

    v8 = [v4 secondaryTextColor];
    v9 = [v4 keyColor];
    v35 = [v4 primaryTextColor];
    v10 = [v4 searchBackgroundColor];
    if (!v10)
    {
      v10 = [v4 backgroundColorForTraitEnvironment:self];
    }

    [v36 setTintColor:v9];
    [v36 setBackgroundColor:v10];
    v11 = [(THSearchViewController *)self popoverPresentationController];
    [v11 setBackgroundColor:v10];

    v12 = [(THSearchViewController *)self resultsViewController];
    [(THSearchViewController *)self p_configureTableViewControllerColors:v12];

    v13 = [(THSearchViewController *)self detailsViewController];
    [(THSearchViewController *)self p_configureTableViewControllerColors:v13];

    v33 = [v4 dividerColor];
    [(BEHairlineDividerView *)self->_headerDividerView setDividerColor:v33];
    [(BEHairlineDividerView *)self->_footerTopBorderView setDividerColor:v33];
    v34 = v9;
    v14 = [UIImage systemImageNamed:@"xmark.circle.fill"];
    v15 = [UIImageSymbolConfiguration configurationWithPointSize:14.0];
    v16 = [v14 imageWithConfiguration:v15];

    v17 = [v16 imageWithTintColor:v8];

    v18 = [v17 imageWithRenderingMode:1];

    v19 = [UIImage systemImageNamed:@"magnifyingglass"];
    v20 = [UIImageSymbolConfiguration configurationWithPointSize:16.0];
    v21 = [v19 imageWithConfiguration:v20];

    v22 = [v21 imageWithTintColor:v8];

    WeakRetained = objc_loadWeakRetained(&self->mSearchBar);
    [WeakRetained setImage:v18 forSearchBarIcon:1 state:0];

    v24 = objc_loadWeakRetained(&self->mSearchBar);
    [v24 setImage:v22 forSearchBarIcon:0 state:0];

    v25 = objc_loadWeakRetained(&self->mSearchBar);
    v26 = [v25 searchField];

    v27 = [v26 _placeholderLabel];
    [v27 setTextColor:v8];

    [v26 setTextColor:v35];
    v28 = [v26 leftView];
    [v28 setTintColor:v8];

    v29 = [(THSearchViewController *)self resultsViewController];
    v30 = [v29 tableView];
    [v30 reloadData];

    v31 = [(THSearchViewController *)self detailsViewController];
    v32 = [v31 tableView];
    [v32 reloadData];

    v3 = v36;
  }
}

- (void)p_configureTableViewController:(id)a3
{
  v4 = [a3 tableView];
  [v4 setContentInsetAdjustmentBehavior:2];
  [(THSearchViewController *)self _resultsHeaderHeight];
  [v4 setSectionHeaderHeight:?];
  [v4 setDataSource:self];
  [v4 setDelegate:self];
}

- (void)_scrollTableViewToTop:(id)a3
{
  v6 = a3;
  [v6 contentOffset];
  v4 = v3;
  [v6 contentInset];
  [v6 setContentOffset:{v4, -v5}];
}

- (void)p_configureTableViewControllerColors:(id)a3
{
  v8 = a3;
  v4 = [(THSearchViewController *)self themePage];
  v5 = [v4 searchBackgroundColor];
  if (!v5)
  {
    v5 = [v4 backgroundColorForTraitEnvironment:self];
  }

  v6 = [v8 tableView];
  v7 = [v4 tableViewSeparatorColor];
  [v6 setSeparatorColor:v7];

  [v6 setBackgroundColor:v5];
}

- (void)scrollViewWillBeginDragging:(id)a3
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

  v5 = [(THSearchViewController *)self detailsViewController];
  v6 = [v5 tableView];
  [v6 setEstimatedRowHeight:v4];

  v7 = [(THSearchViewController *)self pendingDeferredViewWillAppear];
  if (v7)
  {
    v8 = v7;
    v9 = [(THSearchViewController *)self traitCollection];
    v10 = [v9 horizontalSizeClass];

    if (v10)
    {

      [(THSearchViewController *)self p_deferredViewWillAppear];
    }
  }
}

- (void)willTransitionToTraitCollection:(id)a3 withTransitionCoordinator:(id)a4
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_D2CF0;
  v4[3] = &unk_45D290;
  v4[4] = self;
  [a4 animateAlongsideTransition:v4 completion:0];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v9.receiver = self;
  v9.super_class = THSearchViewController;
  v7 = a4;
  [(THSearchViewController *)&v9 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_D2DD4;
  v8[3] = &unk_45D290;
  v8[4] = self;
  [v7 animateAlongsideTransition:&stru_45D2D0 completion:v8];
}

- (void)viewDidLoad
{
  v92.receiver = self;
  v92.super_class = THSearchViewController;
  [(THSearchViewController *)&v92 viewDidLoad];
  v3 = [(THSearchViewController *)self view];
  v4 = +[UIColor whiteColor];
  v90 = v3;
  [v3 setBackgroundColor:v4];

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
  v85 = [v8 centerXAnchor];
  v83 = [v6 centerXAnchor];
  v81 = [v85 constraintEqualToAnchor:v83];
  v94[0] = v81;
  v79 = [v8 topAnchor];
  v77 = [v6 topAnchor];
  v76 = [v79 constraintEqualToAnchor:v77];
  v94[1] = v76;
  v75 = [v8 bottomAnchor];
  v74 = [v6 bottomAnchor];
  v73 = [v75 constraintEqualToAnchor:v74];
  v94[2] = v73;
  v72 = [v8 widthAnchor];
  v71 = [v6 widthAnchor];
  v70 = [v72 constraintLessThanOrEqualToAnchor:v71 constant:-30.0];
  v94[3] = v70;
  v69 = [v12 centerYAnchor];
  v89 = v6;
  v68 = [v6 centerYAnchor];
  v13 = [v69 constraintEqualToAnchor:v68];
  v94[4] = v13;
  v14 = [v12 trailingAnchor];
  v88 = v8;
  v15 = [v8 leadingAnchor];
  v16 = [v14 constraintEqualToAnchor:v15 constant:-10.0];
  v94[5] = v16;
  v17 = [v12 widthAnchor];
  v18 = [v17 constraintEqualToConstant:20.0];
  v94[6] = v18;
  v87 = v12;
  v19 = [v12 heightAnchor];
  v20 = [v19 constraintEqualToConstant:20.0];
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

  v26 = [(THSearchViewController *)self resultsViewController];
  v27 = [v26 p_setupStandardUISearchController];
  [(THSearchViewController *)self setUiSearchController:v27];

  v28 = [(THSearchViewController *)self uiSearchController];
  [v28 setSearchResultsUpdater:self];

  v29 = [(THSearchViewController *)self uiSearchController];
  v30 = [v29 searchBar];
  [v30 setDelegate:self];

  v31 = [(THSearchViewController *)self uiSearchController];
  [v31 setObscuresBackgroundDuringPresentation:0];

  v32 = [(THSearchViewController *)self uiSearchController];
  v33 = [v32 searchBar];
  objc_storeWeak(&self->mSearchBar, v33);

  v34 = objc_loadWeakRetained(&self->mSearchBar);
  [v34 setDelegate:self];

  v35 = THBundle();
  v36 = [v35 localizedStringForKey:@"In this book" value:&stru_471858 table:0];
  v37 = objc_loadWeakRetained(&self->mSearchBar);
  [v37 setPlaceholder:v36];

  v38 = [THSearchTableViewDataSource alloc];
  v39 = [(THSearchViewController *)self searchController];
  v40 = [(THSearchTableViewDataSource *)v38 initWithSearchController:v39 searchViewMode:0];
  [(THSearchViewController *)self setResultsDataSource:v40];

  v41 = [THSearchTableViewDataSource alloc];
  v42 = [(THSearchViewController *)self searchController];
  v43 = [(THSearchTableViewDataSource *)v41 initWithSearchController:v42 searchViewMode:2];
  [(THSearchViewController *)self setDetailsDataSource:v43];

  v44 = [THSearchTableViewDataSource alloc];
  v45 = [(THSearchViewController *)self searchController];
  v46 = [(THSearchTableViewDataSource *)v44 initWithSearchController:v45 searchViewMode:1];
  [(THSearchViewController *)self setSuggestionsDataSource:v46];

  v47 = [(THSearchViewController *)self resultsViewController];
  [(THSearchViewController *)self p_configureTableViewController:v47];

  v48 = [(THSearchViewController *)self detailsViewController];
  [(THSearchViewController *)self p_configureTableViewController:v48];

  v49 = [(THSearchViewController *)self resultsViewController];
  [(THSearchViewController *)self pushViewController:v49 animated:0];

  v50 = [(THSearchViewController *)self resultsViewController];
  v51 = [v50 view];

  v52 = [(THSearchViewController *)self resultsViewController];
  v53 = [v52 view];
  [v53 addSubview:v91];

  v84 = [v91 topAnchor];
  v82 = [v51 topAnchor];
  v80 = [v84 constraintEqualToAnchor:v82];
  v93[0] = v80;
  v78 = [v91 leadingAnchor];
  v54 = [v51 leadingAnchor];
  v55 = [v78 constraintEqualToAnchor:v54];
  v93[1] = v55;
  v56 = [v91 trailingAnchor];
  v57 = [v51 trailingAnchor];
  v58 = [v56 constraintEqualToAnchor:v57];
  v93[2] = v58;
  v59 = [v91 bottomAnchor];
  v86 = v51;
  v60 = [v51 bottomAnchor];
  v61 = [v59 constraintEqualToAnchor:v60];
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

  v66 = [(THSearchViewController *)self contentContainerView];
  [v66 setClipsToBounds:1];

  v67 = [(THSearchViewController *)self view];
  [v67 setClipsToBounds:1];

  [(THSearchViewController *)self stylizeForTheme];
}

- (void)setNoIndexViewVisible:(BOOL)a3
{
  if (a3)
  {
    v4 = [(THSearchViewController *)self topViewController];
    if (v4)
    {
      v5 = [(UIView *)self->mNoIndexView superview];
      v6 = [v4 view];

      if (v5 != v6)
      {
        v7 = [v4 view];
        [v7 addSubview:self->mNoIndexView];

        [(UIView *)self->mNoIndexView setTranslatesAutoresizingMaskIntoConstraints:0];
        v19 = [(UIView *)self->mNoIndexView centerXAnchor];
        v20 = [v4 view];
        v18 = [v20 centerXAnchor];
        v17 = [v19 constraintEqualToAnchor:v18];
        v23[0] = v17;
        v15 = [(UIView *)self->mNoIndexView centerYAnchor];
        v16 = [v4 view];
        v8 = [v16 centerYAnchor];
        v9 = [v15 constraintEqualToAnchor:v8];
        v23[1] = v9;
        v10 = [(UIView *)self->mNoIndexView widthAnchor];
        v11 = [v10 constraintEqualToConstant:375.0];
        v23[2] = v11;
        v12 = [(UIView *)self->mNoIndexView heightAnchor];
        v13 = [v12 constraintEqualToConstant:44.0];
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
  v3 = [(THSearchViewController *)&v7 overrideUserInterfaceStyle];
  if (!v3)
  {
    objc_opt_class();
    v4 = [(THSearchViewController *)self theme];
    v5 = TSUDynamicCast();

    if (v5)
    {
      v3 = [v5 userInterfaceStyle];
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

- (void)p_dismissSearchView:(id)a3
{
  v3 = [(THSearchViewController *)self searchDelegate];
  [v3 searchFinished:1 completion:0];
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

- (void)searchForString:(id)a3
{
  v4 = a3;
  self->mSearchingForString = 1;
  if ([(THSearchController *)self->mSearchController indexLoaded])
  {
    self->mTextSetBySearch = 1;
    WeakRetained = objc_loadWeakRetained(&self->mSearchBar);
    [WeakRetained setText:v4];

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
    v7 = [(THSearchViewController *)self topViewController];
    v8 = [(THSearchViewController *)self resultsViewController];

    if (v7 == v8)
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
    [(THSearchViewController *)self setPendingSearchText:v4];
  }
}

- (void)p_searchForSuggestion:(id)a3
{
  v4 = a3;
  mSearchController = self->mSearchController;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_D40E4;
  v7[3] = &unk_45ADB0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(THSearchController *)mSearchController suggestionsForSearchString:v6 completionBlock:v7];
}

- (void)p_setupSpinner
{
  v3 = [[UIView alloc] initWithFrame:{0.0, 0.0, 60.0, 60.0}];
  [(THSearchViewController *)self setProgressView:v3];

  v4 = [(THSearchViewController *)self resultsViewController];
  v5 = [v4 tableView];
  v6 = [v5 backgroundColor];
  v7 = [(THSearchViewController *)self progressView];
  [v7 setBackgroundColor:v6];

  v8 = [(THSearchViewController *)self progressView];
  v9 = [v8 layer];
  [v9 setCornerRadius:7.0];

  v10 = [(THSearchViewController *)self contentContainerView];
  v11 = [(THSearchViewController *)self progressView];
  [v10 addSubview:v11];

  v12 = [(THSearchViewController *)self contentContainerView];
  [v12 bounds];
  TSDCenterOfRect();
  TSDFlooredPoint();
  v14 = v13;
  v16 = v15;
  v17 = [(THSearchViewController *)self progressView];
  [v17 setCenter:{v14, v16}];

  v18 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:101];
  [(THSearchViewController *)self setSpinner:v18];

  v19 = [(THSearchViewController *)self contentContainerView];
  v20 = [(THSearchViewController *)self spinner];
  [v19 addSubview:v20];

  v21 = [(THSearchViewController *)self progressView];
  [v21 center];
  v23 = v22;
  v25 = v24;
  v26 = [(THSearchViewController *)self spinner];
  [v26 setCenter:{v23, v25}];

  v27 = [(THSearchViewController *)self progressView];
  [v27 setAlpha:0.0];

  v28 = [(THSearchViewController *)self spinner];
  [v28 setAlpha:0.0];

  v29 = [(THSearchViewController *)self spinner];
  [v29 startAnimating];
}

- (void)p_removeSpinner
{
  v3 = [(THSearchViewController *)self spinner];

  if (v3)
  {
    v4 = [(THSearchViewController *)self spinner];
    [v4 stopAnimating];

    v5 = [(THSearchViewController *)self spinner];
    [v5 removeFromSuperview];

    [(THSearchViewController *)self setSpinner:0];
  }

  v6 = [(THSearchViewController *)self progressView];

  if (v6)
  {
    v7 = [(THSearchViewController *)self progressView];
    [v7 removeFromSuperview];

    [(THSearchViewController *)self setProgressView:0];
  }
}

- (void)navigateToSearchResult:(id)a3
{
  v4 = a3;
  [(THSearchViewController *)self p_setupSpinner];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_D45A4;
  v5[3] = &unk_45AD60;
  v5[4] = self;
  [UIView animateWithDuration:196608 delay:v5 options:0 animations:0.2 completion:0.5];
  [(THSearchViewController *)self performSelector:"p_navigateToSearchResult:" withObject:v4 afterDelay:0.0];
}

- (void)p_navigateToAbsolutePageIndex:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  [(THSearchViewController *)self p_removeSpinner];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_D46F4;
  v9[3] = &unk_45ADB0;
  v10 = v6;
  WeakRetained = objc_loadWeakRetained(&self->_searchDelegate);
  v7 = WeakRetained;
  v8 = v6;
  [v7 searchFinished:v4 completion:v9];
}

- (void)p_navigateToSearchResult:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  [(THSearchViewController *)self p_removeSpinner];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_D4820;
  v9[3] = &unk_45D2F8;
  WeakRetained = objc_loadWeakRetained(&self->_searchDelegate);
  v11 = self;
  v12 = v6;
  v7 = v6;
  v8 = WeakRetained;
  [v8 searchFinished:v4 completion:v9];
}

- (void)navigateToAbsolutePageIndex:(unint64_t)a3
{
  [(THSearchViewController *)self p_setupSpinner];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_D4978;
  v6[3] = &unk_45AD60;
  v6[4] = self;
  [UIView animateWithDuration:196608 delay:v6 options:0 animations:0.2 completion:0.5];
  v5 = [NSNumber numberWithUnsignedInteger:a3];
  [(THSearchViewController *)self performSelector:"p_navigateToAbsolutePageIndex:" withObject:v5 afterDelay:0.0];
}

- (void)showAllResultsWithKind:(int)a3
{
  v3 = *&a3;
  v5 = [(THSearchViewController *)self detailsViewController];
  v12 = [v5 tableView];

  v6 = [(THSearchViewController *)self detailsDataSource];
  [v6 updateForResultsKind:v3];

  [v12 reloadData];
  [(THSearchViewController *)self _scrollTableViewToTop:v12];
  v7 = [(THSearchViewController *)self searchController];
  v8 = [v7 currentQuery];
  v9 = [(THSearchViewController *)self detailsViewController];
  v10 = [v9 navigationItem];
  [v10 setTitle:v8];

  v11 = [(THSearchViewController *)self detailsViewController];
  [(THSearchViewController *)self pushViewController:v11 animated:1];
}

- (void)searchBar:(id)a3 textDidChange:(id)a4
{
  if (!self->mTextSetBySearch)
  {
    [NSObject cancelPreviousPerformRequestsWithTarget:self, a4];
    [(THSearchController *)self->mSearchController clearSearchResults];
    v9 = [(THSearchViewController *)self p_searchText];
    if ([v9 length])
    {
      [(THSearchViewController *)self performSelector:"p_searchForSuggestion:" withObject:v9 afterDelay:0.25];
    }

    else
    {
      v6 = +[NSArray array];
      v7 = [(THSearchViewController *)self suggestionsDataSource];
      [v7 setSuggestions:v6];

      [(THSearchViewController *)self p_showRecents];
      WeakRetained = objc_loadWeakRetained(&self->mSearchBar);
      [WeakRetained becomeFirstResponder];
    }
  }
}

- (void)searchBarSearchButtonClicked:(id)a3
{
  v4 = [(THSearchViewController *)self p_searchText];
  if ([v4 length])
  {
    [NSObject cancelPreviousPerformRequestsWithTarget:self];
    [(THSearchController *)self->mSearchController clearSearchResults];
    v5 = [THSearchTableViewDataSource alloc];
    v6 = [(THSearchViewController *)self searchController];
    v7 = [(THSearchTableViewDataSource *)v5 initWithSearchController:v6 searchViewMode:2];
    [(THSearchViewController *)self setResultsDataSource:v7];

    WeakRetained = objc_loadWeakRetained(&self->mSearchBar);
    [WeakRetained resignFirstResponder];

    mSearchController = self->mSearchController;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_D4D30;
    v10[3] = &unk_45AD60;
    v10[4] = self;
    [(THSearchController *)mSearchController searchForString:v4 completionBlock:v10];
  }
}

- (id)p_searchText
{
  WeakRetained = objc_loadWeakRetained(&self->mSearchBar);
  v3 = [WeakRetained text];
  v4 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
  v5 = [v3 stringByTrimmingCharactersInSet:v4];

  return v5;
}

- (void)searchBarCancelButtonClicked:(id)a3
{
  v4 = a3;
  if (isPhone())
  {
    [(THSearchViewController *)self p_dismissSearchView:v4];
  }
}

- (id)tableView:(id)a3 viewForHeaderWithTitle:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableHeaderFooterViewWithIdentifier:@"headerCell"];
  if (!v7)
  {
    v7 = [[UITableViewHeaderFooterView alloc] initWithReuseIdentifier:@"headerCell"];
  }

  v8 = [v7 textLabel];
  [v8 setText:v6];

  v9 = [(THSearchViewController *)self themePage];
  v10 = [v9 secondaryTextColor];
  v11 = [v7 textLabel];
  [v11 setTextColor:v10];

  v12 = +[UIBackgroundConfiguration listGroupedHeaderFooterConfiguration];
  [v7 setBackgroundConfiguration:v12];

  return v7;
}

- (id)tableView:(id)a3 cellForPlainString:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 dequeueReusableCellWithIdentifier:@"textCell"];
  if (!v8)
  {
    v8 = [[UITableViewCell alloc] initWithStyle:0 reuseIdentifier:@"textCell"];
    v9 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    [v8 setSelectedBackgroundView:v9];
  }

  v10 = [v8 textLabel];
  [v10 setText:v6];

  v11 = [(THSearchViewController *)self themePage];
  v12 = [v11 tableViewCellSelectedColor];
  v13 = [v8 selectedBackgroundView];
  [v13 setBackgroundColor:v12];

  v14 = [v8 textLabel];
  [v14 setHighlightedTextColor:0];
  v15 = [v11 primaryTextColor];
  [v14 setTextColor:v15];

  v16 = [v7 backgroundColor];

  [v8 setBackgroundColor:v16];

  return v8;
}

- (id)tableView:(id)a3 cellForSearchResult:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = kBESearchTableViewCellResultsIdentifier;
  v9 = [v6 dequeueReusableCellWithIdentifier:kBESearchTableViewCellResultsIdentifier];
  if (!v9)
  {
    v9 = [[BESearchResultTableViewCell alloc] initWithStyle:3 reuseIdentifier:v8];
  }

  [(THSearchViewController *)self _configureResultsCell:v9 forSearchResult:v7 inTableView:v6];

  return v9;
}

- (void)_configureResultsCell:(id)a3 forSearchResult:(id)a4 inTableView:(id)a5
{
  v60 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [v60 setSelectedBackgroundView:v10];
  v11 = [v8 title];
  if (v11)
  {
  }

  else if ([v8 rank] != 1)
  {
    [(THSearchController *)self->mSearchController resolveTitleForSearchResult:v8];
  }

  v12 = [v8 rank];
  if (v12 - 6 >= 2 && v12 == 1)
  {
    v59 = v9;
    v13 = THBundle();
    v14 = [v13 localizedStringForKey:@"Glossary: %@" value:&stru_471858 table:0];

    v15 = [v8 term];
    v16 = [NSString stringWithFormat:v14, v15];
    v17 = [v60 titleLabel];
    [v17 setText:v16];

    mSearchController = self->mSearchController;
    v19 = [v8 term];
    v20 = [(THSearchController *)mSearchController summaryForGlossaryTerm:v19];

    if (!v20)
    {
      v21 = THBundle();
      v22 = [v21 localizedStringForKey:@"(Glossary entry for \\U201C%@\\U201D)" value:&stru_471858 table:0];

      v23 = [v8 term];
      v20 = [NSString stringWithFormat:v22, v23];
    }

    v24 = [v60 resultLabel];
    [v24 setText:v20];

    v25 = [(THSearchViewController *)self searchController];
    v26 = [v25 currentQuery];
    v27 = [v20 rangeOfString:v26];
    v29 = v28;
    v30 = [v60 resultLabel];
    [v30 setBoldRange:{v27, v29}];

    v9 = v59;
  }

  else
  {
    v31 = [v8 title];
    v32 = [v31 length];

    if (v32)
    {
      [v8 title];
    }

    else
    {
      [v8 term];
    }
    v33 = ;
    v34 = [v60 titleLabel];
    [v34 setText:v33];

    v35 = [v8 displayPageNumber];
    v36 = [v60 pageNumberLabel];
    [v36 setText:v35];

    v37 = [v8 context];
    v38 = [v60 resultLabel];
    [v38 setText:v37];

    v39 = [v8 contextRangeForResult];
    v41 = v40;
    v14 = [v60 resultLabel];
    [v14 setBoldRange:{v39, v41}];
  }

  v42 = [(THSearchViewController *)self themePage];
  v43 = [v42 tableViewCellSelectedColor];
  [v10 setBackgroundColor:v43];

  v44 = [v42 secondaryTextColor];
  v45 = [v60 pageNumberLabel];
  [v45 setTextColor:v44];

  v46 = [v42 primaryTextColor];
  v47 = [v60 titleLabel];
  [v47 setTextColor:v46];

  v48 = [v60 resultLabel];
  [v48 setTextColor:v46];

  [v9 frame];
  v50 = v49;
  v52 = v51;
  v54 = v53;
  v56 = v55;

  v62.origin.x = v50;
  v62.origin.y = v52;
  v62.size.width = v54;
  v62.size.height = v56;
  [v60 setMaxWidth:CGRectGetWidth(v62)];
  v57 = [v42 secondaryBackgroundColor];
  v58 = [v60 focusShapeView];
  [v58 setFillColor:v57];

  [v60 applyLabelFonts];
  [v60 updateConstraintsIfNeeded];
}

- (id)tableView:(id)a3 noResultsCellWithKind:(int)a4
{
  v4 = *&a4;
  v6 = [a3 dequeueReusableCellWithIdentifier:@"noResultsCell"];
  if (!v6)
  {
    v6 = [[THSearchTableViewNoResultsCell alloc] initWithStyle:3 reuseIdentifier:@"noResultsCell"];
    v7 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    [(THSearchTableViewNoResultsCell *)v6 setSelectedBackgroundView:v7];
  }

  v8 = [(THSearchViewController *)self themePage];
  v9 = [v8 tableViewCellSelectedColor];
  v10 = [(THSearchTableViewNoResultsCell *)v6 selectedBackgroundView];
  [v10 setBackgroundColor:v9];

  v11 = [v8 primaryTextColor];
  v12 = [(THSearchTableViewNoResultsCell *)v6 textLabel];
  [v12 setTextColor:v11];

  v13 = [(THSearchTableViewNoResultsCell *)v6 detailTextLabel];
  [v13 setTextColor:v11];

  [(THSearchTableViewNoResultsCell *)v6 setSearchKind:v4];

  return v6;
}

- (id)tableView:(id)a3 seeAllResultsCellWithKind:(int)a4 count:(unint64_t)a5
{
  v8 = [a3 dequeueReusableCellWithIdentifier:@"seeAllResultsCell"];
  if (!v8)
  {
    v8 = [[UITableViewCell alloc] initWithStyle:0 reuseIdentifier:@"seeAllResultsCell"];
    v9 = [v8 textLabel];
    [v9 setTextAlignment:0];

    v10 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    [v8 setSelectedBackgroundView:v10];
  }

  v11 = [(THSearchViewController *)self themePage];
  v12 = [v11 tableViewCellSelectedColor];
  v13 = [v8 selectedBackgroundView];
  [v13 setBackgroundColor:v12];

  v14 = [v11 primaryTextColor];
  v15 = [v8 textLabel];
  [v15 setTextColor:v14];

  v16 = THBundle();
  v17 = v16;
  if (a4)
  {
    v18 = @"See all %lu media results…";
  }

  else
  {
    v18 = @"See all %lu text results…";
  }

  v19 = [v16 localizedStringForKey:v18 value:&stru_471858 table:0];

  v20 = [NSString localizedStringWithFormat:v19, a5];
  v21 = [v8 textLabel];
  [v21 setText:v20];

  v22 = [v8 textLabel];
  [v22 setNumberOfLines:0];

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

- (id)p_dataSourceForTableView:(id)a3
{
  v4 = a3;
  v5 = [(THSearchViewController *)self resultsViewController];
  v6 = [v5 view];

  if (v6 == v4)
  {
    v10 = [(THSearchViewController *)self resultsDataSource];
  }

  else
  {
    v7 = [(THSearchViewController *)self detailsViewController];
    v8 = [v7 view];

    if (v8 != v4)
    {
      v9 = 0;
      goto LABEL_7;
    }

    v10 = [(THSearchViewController *)self detailsDataSource];
  }

  v9 = v10;
LABEL_7:

  return v9;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v6 = a3;
  v7 = [(THSearchViewController *)self p_dataSourceForTableView:v6];
  v8 = [v7 tableView:v6 numberOfRowsInSection:a4];

  return v8;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(THSearchViewController *)self p_dataSourceForTableView:v7];
  v9 = [v8 tableView:v7 cellForRowAtIndexPath:v6 searchViewController:self];

  return v9;
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  v4 = a3;
  v5 = [(THSearchViewController *)self p_dataSourceForTableView:v4];
  v6 = [v5 numberOfSectionsInTableView:v4];

  return v6;
}

- (BOOL)tableView:(id)a3 canFocusRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [(THSearchViewController *)self p_dataSourceForTableView:a3];
  if ([v7 searchViewMode] == 2 && objc_msgSend(v7, "indexPathCorrespondsToSearchResultRow:", v6))
  {
    v8 = [v7 indexPathCorrespondsToSeeAllResultsRow:v6] ^ 1;
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v13 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(THSearchViewController *)self p_dataSourceForTableView:v13];
  if ([v10 searchViewMode] == 2 && objc_msgSend(v10, "indexPathCorrespondsToSearchResultRow:", v9))
  {
    objc_opt_class();
    v11 = TSUDynamicCast();
    if (v11)
    {
      v12 = [v10 searchResultForTableIndexPath:v9];
      [(THSearchViewController *)self _configureResultsCell:v11 forSearchResult:v12 inTableView:v13];
    }
  }
}

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  v6 = a3;
  v7 = [(THSearchViewController *)self p_dataSourceForTableView:v6];
  v8 = [v7 titleForHeaderInSection:a4];
  v9 = [(THSearchViewController *)self tableView:v6 viewForHeaderWithTitle:v8];

  v10 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleTitle2];
  v11 = [v10 fontDescriptorWithDesign:UIFontDescriptorSystemDesignSerif];
  v12 = [v11 fontDescriptorWithSymbolicTraits:2];
  v13 = [UIFont fontWithDescriptor:v12 size:0.0];

  v14 = [v9 textLabel];
  [v14 setFont:v13];

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

- (id)tableView:(id)a3 willSelectRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if ([(THSearchViewController *)self searchViewMode]== 2)
  {
    v9 = [(THSearchViewController *)self p_dataSourceForTableView:v6];
    v10 = [v9 numberOfResultsInSection:{objc_msgSend(v7, "section")}];

    v8 = v7;
    if (!v10)
    {

      v8 = 0;
    }
  }

  return v8;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v16 = a4;
  v6 = a3;
  [v6 deselectRowAtIndexPath:v16 animated:0];
  v7 = [(THSearchViewController *)self p_dataSourceForTableView:v6];

  v8 = [v7 searchViewMode];
  if (v8 != 2)
  {
    if (v8 == 1)
    {
      v10 = [v7 suggestions];
      v9 = [v10 objectAtIndex:{objc_msgSend(v16, "row")}];

      v11 = [(THSearchViewController *)self searchController];
      v12 = [v11 isEncodedResultForPageNumber:v9];

      if (v12)
      {
        v13 = [(THSearchViewController *)self searchController];
        v14 = [v13 absolutePageIndexFromEncodedPageNumberResult:v9];

        if (v14 != 0x7FFFFFFFFFFFFFFFLL)
        {
          [(THSearchViewController *)self navigateToAbsolutePageIndex:v14];
        }

        goto LABEL_9;
      }
    }

    else
    {
      if (v8)
      {
        goto LABEL_10;
      }

      v9 = -[THSearchController recentSearchQueryAtIndex:](self->mSearchController, "recentSearchQueryAtIndex:", [v16 row]);
    }

    [(THSearchViewController *)self searchForString:v9];
LABEL_9:

    goto LABEL_10;
  }

  v15 = [v7 numberOfResultsInSection:{objc_msgSend(v16, "section")}];
  if (v15)
  {
    if ([v16 row] != v15)
    {
      v9 = [v7 searchResultForTableIndexPath:v16];
      [(THSearchViewController *)self navigateToSearchResult:v9];
      goto LABEL_9;
    }

    -[THSearchViewController showAllResultsWithKind:](self, "showAllResultsWithKind:", [v7 p_resultKindForSection:{objc_msgSend(v16, "section")}]);
  }

LABEL_10:
}

- (void)_analyticsSubmitInBookSearchEventWithSearchText:(id)a3
{
  v9 = [(THSearchViewController *)self ba_effectiveAnalyticsTracker];
  v4 = [(THSearchViewController *)self searchDelegate];
  v5 = [v4 readingSessionDataForSearchViewController:self];

  v6 = [(THSearchViewController *)self searchDelegate];
  v7 = [v6 contentDataForSearchViewController:self];

  if (v9 && v5 && v7)
  {
    v8 = +[BAEventReporter sharedReporter];
    [v8 emitInBookSearchEventWithTracker:v9 readingSessionData:v5 contentData:v7];
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