@interface SearchResultsViewController
- (BOOL)_useLargeFormatBehavior;
- (BOOL)prefersShowingViewControllersOnNavigationStack;
- (CGRect)_searchBar:(id)a3 proposedSearchFieldFrame:(CGRect)a4;
- (SearchResultsViewController)initWithModel:(id)a3 window:(id)a4;
- (SearchResultsViewControllerDelegate)searchResultsDelegate;
- (UISearchBar)searchBar;
- (double)_maxHeightOfTableView;
- (id)_sizingContextWindow;
- (id)backButtonTitleForEventDetails;
- (id)contentUnavailableConfigurationForState:(id)a3;
- (void)_eventStoreChanged:(id)a3;
- (void)_refreshView;
- (void)_searchResultsUpdated:(id)a3;
- (void)_setContentInsets;
- (void)_updateFilterState;
- (void)_updatePreferredContentSize;
- (void)_updateTableAlpha:(BOOL)a3;
- (void)beginSearch:(id)a3;
- (void)cancelTimer;
- (void)dealloc;
- (void)eventViewController:(id)a3 requestsDismissalOfEditViewController:(id)a4;
- (void)eventViewController:(id)a3 requestsDisplayOfEditViewController:(id)a4 animated:(BOOL)a5;
- (void)scrollToDate:(id)a3 animated:(BOOL)a4;
- (void)scrollViewWillBeginDragging:(id)a3;
- (void)searchBar:(id)a3 textDidChange:(id)a4;
- (void)searchBarCancelButtonClicked:(id)a3;
- (void)showEvent:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 willPerformPreviewActionForMenuWithConfiguration:(id)a4 animator:(id)a5;
- (void)updateSearchResultsForSearchController:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewSafeAreaInsetsDidChange;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation SearchResultsViewController

- (SearchResultsViewController)initWithModel:(id)a3 window:(id)a4
{
  v6 = a3;
  v7 = a4;
  v19.receiver = self;
  v19.super_class = SearchResultsViewController;
  v8 = [(ListViewController *)&v19 initWithModel:v6 window:v7];
  v9 = v8;
  if (v8)
  {
    v10 = [(MainViewController *)v8 model];
    v11 = [v10 searchString];

    if (v11)
    {
      v12 = [(MainViewController *)v9 model];
      [v12 setSearchString:0];
    }

    [(ListViewController *)v9 setOverrideExtendedEdges:0];
    [(ListViewController *)v9 setDestination:1];
    v20[0] = objc_opt_class();
    v20[1] = objc_opt_class();
    v13 = [NSArray arrayWithObjects:v20 count:2];
    objc_initWeak(&location, v9);
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10013D5FC;
    v16[3] = &unk_10020E9E0;
    objc_copyWeak(&v17, &location);
    v14 = [(SearchResultsViewController *)v9 registerForTraitChanges:v13 withHandler:v16];
    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }

  return v9;
}

- (void)dealloc
{
  [(SearchResultsViewController *)self cancelTimer];
  if (![(SearchResultsViewController *)self shouldLeaveSearchString])
  {
    v3 = [(MainViewController *)self model];
    [v3 setSearchString:0];
  }

  v4.receiver = self;
  v4.super_class = SearchResultsViewController;
  [(ListViewController *)&v4 dealloc];
}

- (void)viewDidLoad
{
  [(SearchResultsViewController *)self _updatePreferredContentSize];
  v3.receiver = self;
  v3.super_class = SearchResultsViewController;
  [(SearchResultsViewController *)&v3 viewDidLoad];
}

- (void)viewWillAppear:(BOOL)a3
{
  v13.receiver = self;
  v13.super_class = SearchResultsViewController;
  [(ListViewController *)&v13 viewWillAppear:a3];
  v4 = [(SearchResultsViewController *)self presentingViewController];
  v5 = [v4 view];
  v6 = [v5 window];
  EKUIPushFallbackSizingContextWithViewHierarchy();

  [(SearchResultsViewController *)self _updateFilterState];
  [(SearchResultsViewController *)self _updatePreferredContentSize];
  v7 = [(SearchResultsViewController *)self presentingViewController];
  v8 = [v7 view];
  v9 = [v8 window];
  EKUIPopFallbackSizingContextWithViewHierarchy();

  [(SearchResultsViewController *)self _updateTableAlpha:0];
  v10 = +[NSNotificationCenter defaultCenter];
  v11 = CUIKCalendarModelSearchResultsAvailableNotification;
  v12 = [(MainViewController *)self model];
  [v10 addObserver:self selector:"_searchResultsUpdated:" name:v11 object:v12];
}

- (void)viewDidAppear:(BOOL)a3
{
  v10.receiver = self;
  v10.super_class = SearchResultsViewController;
  [(ListViewController *)&v10 viewDidAppear:a3];
  v4 = kCalUILogHandle;
  if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_INFO))
  {
    v5 = v4;
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = [(MainViewController *)self model];
    v9 = [v8 searchString];
    *buf = 138543619;
    v12 = v7;
    v13 = 2113;
    v14 = v9;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[UserStateLog] State -> %{public}@ viewDidAppear. searchString = %{private}@", buf, 0x16u);
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = SearchResultsViewController;
  [(ListViewController *)&v5 viewWillDisappear:a3];
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self];
}

- (void)viewWillLayoutSubviews
{
  v3 = [(MainViewController *)self window];
  EKUIPushFallbackSizingContextWithViewHierarchy();

  [(SearchResultsViewController *)self _setContentInsets];
  v5.receiver = self;
  v5.super_class = SearchResultsViewController;
  [(SearchResultsViewController *)&v5 viewWillLayoutSubviews];
  v4 = [(MainViewController *)self window];
  EKUIPopFallbackSizingContextWithViewHierarchy();
}

- (void)_setContentInsets
{
  v3 = [(ListViewController *)self tableView];
  [v3 contentInset];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  if ([(ListViewController *)self destination]!= 2)
  {
    v12 = [(SearchResultsViewController *)self searchBar];
    [v12 bounds];
    MaxY = CGRectGetMaxY(v21);

    v14 = [(ListViewController *)self tableView];
    v15 = [(SearchResultsViewController *)self searchBar];
    [v14 convertPoint:v15 fromView:{0.0, MaxY}];

    v16 = [(ListViewController *)self tableView];
    [v16 contentOffset];

    v17 = [(ListViewController *)self tableView];
    [v17 safeAreaInsets];
    CalRoundToScreenScale();
    v5 = v18;
  }

  v19 = [(ListViewController *)self tableView];
  [v19 setContentInset:{v5, v7, v9, v11}];
}

- (void)viewSafeAreaInsetsDidChange
{
  v3.receiver = self;
  v3.super_class = SearchResultsViewController;
  [(SearchResultsViewController *)&v3 viewSafeAreaInsetsDidChange];
  [(SearchResultsViewController *)self _setContentInsets];
}

- (BOOL)_useLargeFormatBehavior
{
  v2 = [(SearchResultsViewController *)self _sizingContextWindow];
  ShouldUseLargeFormatInterface = EKUICurrentWindowInterfaceParadigm_ShouldUseLargeFormatInterface();

  return ShouldUseLargeFormatInterface;
}

- (void)_updatePreferredContentSize
{
  if (![(SearchResultsViewController *)self _useLargeFormatBehavior])
  {
    return;
  }

  v3 = [(SearchResultsViewController *)self searchBar];
  v4 = [v3 text];
  if ([v4 length])
  {

    goto LABEL_5;
  }

  v5 = [(ListViewController *)self tableView];
  v6 = [(ListViewController *)self numberOfSectionsInTableView:v5];

  if (v6)
  {
LABEL_5:
    [(SearchResultsViewController *)self _maxHeightOfTableView];
    v8 = fmax(v7, 371.0);
    [(SearchResultsViewController *)self preferredContentSize];
    if (vabdd_f64(v9, v8) >= 2.22044605e-16)
    {
      v12 = [(ListViewController *)self tableView];
      [v12 frame];
      [(SearchResultsViewController *)self setPreferredContentSize:v10, v8];
    }

    return;
  }

  height = CGSizeZero.height;

  [(SearchResultsViewController *)self setPreferredContentSize:CGSizeZero.width, height];
}

- (double)_maxHeightOfTableView
{
  v3 = [(SearchResultsViewController *)self view];
  v4 = [v3 window];
  if (v4)
  {
    v5 = [(SearchResultsViewController *)self view];
    v6 = [v5 window];
    [v6 bounds];
    Height = CGRectGetHeight(v17);
  }

  else
  {
    Height = 4000.0;
  }

  v8 = [(ListViewController *)self tableView];
  v9 = [v8 numberOfSections];

  if (v9 < 1)
  {
    v11 = 0.0;
LABEL_10:
    v14 = [(ListViewController *)self tableView];
    [v14 estimatedRowHeight];
    Height = v11 + v15;
  }

  else
  {
    v10 = 0;
    v11 = 0.0;
    while (1)
    {
      v12 = [(ListViewController *)self tableView];
      [v12 rectForSection:v10];
      v11 = v11 + v13;

      if (v11 >= Height)
      {
        break;
      }

      if (v9 == ++v10)
      {
        goto LABEL_10;
      }
    }
  }

  return Height;
}

- (void)_updateTableAlpha:(BOOL)a3
{
  v3 = a3;
  objc_initWeak(&location, self);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10013DFB4;
  v7[3] = &unk_1002108E8;
  objc_copyWeak(&v8, &location);
  v7[4] = self;
  v5 = objc_retainBlock(v7);
  v6 = v5;
  if (v3)
  {
    [UIView animateWithDuration:0 delay:v5 usingSpringWithDamping:0 initialSpringVelocity:0.3 options:0.0 animations:1.0 completion:0.0];
  }

  else
  {
    (v5[2])(v5);
  }

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (id)contentUnavailableConfigurationForState:(id)a3
{
  v4 = a3;
  v5 = +[UIContentUnavailableConfiguration searchConfiguration];
  v6 = [v5 updatedConfigurationForState:v4];

  v7 = [(MainViewController *)self model];
  v8 = [v7 searchString];
  v9 = [v8 length];

  v10 = [NSBundle bundleForClass:objc_opt_class()];
  v11 = v10;
  if (v9)
  {
    v12 = @"No Results";
  }

  else
  {
    v12 = @"No Events";
  }

  v13 = [v10 localizedStringForKey:v12 value:&stru_1002133B8 table:0];

  [v6 setText:v13];

  return v6;
}

- (void)_updateFilterState
{
  v6 = [(SearchResultsViewController *)self view];
  if (EKUICurrentWidthSizeClassIsCompactInViewHierarchy())
  {
    [(ListViewController *)self setShowFilteredData:1];
  }

  else
  {
    v3 = [(SearchResultsViewController *)self view];
    if (EKUICurrentWidthSizeClassIsRegularInViewHierarchy())
    {
      v4 = [(SearchResultsViewController *)self searchBar];
      v5 = [v4 text];
      -[ListViewController setShowFilteredData:](self, "setShowFilteredData:", [v5 length] != 0);
    }

    else
    {
      [(ListViewController *)self setShowFilteredData:0];
    }
  }
}

- (void)scrollToDate:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (v6)
  {
    v7 = [(ListViewController *)self tableView];

    if (v7)
    {
      v8.receiver = self;
      v8.super_class = SearchResultsViewController;
      [(ListViewController *)&v8 scrollToDate:v6 animated:v4];
    }
  }
}

- (id)backButtonTitleForEventDetails
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"String displayed for the back button of the details of an event occurrence when in search mode" value:@"Search" table:0];

  return v3;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v7 = a4;
  v5 = [(MainViewController *)self model];
  v6 = [v5 cachedOccurrenceAtIndexPath:v7 usingFilter:{-[ListViewController showFilteredData](self, "showFilteredData")}];

  [(SearchResultsViewController *)self showEvent:v6];
  if ([(ListViewController *)self destination]== 2)
  {
    [(ListViewController *)self setCurrentSelectedEvent:v6];
  }

  [(ListViewController *)self updateSeparatorVisibiltyForSelectionChangeForRowAtIndexPath:v7];
}

- (void)showEvent:(id)a3
{
  v4 = a3;
  if ([(ListViewController *)self destination]== 2)
  {
    v5 = [(SearchResultsViewController *)self searchResultsDelegate];

    if (v5)
    {
      v6 = [(SearchResultsViewController *)self searchResultsDelegate];
      [v6 searchResultsViewController:self didSelectEvent:v4];
    }
  }

  else
  {
    v7 = [(SearchResultsViewController *)self traitCollection];
    if ([v7 horizontalSizeClass] == 1)
    {
    }

    else
    {
      v8 = [(SearchResultsViewController *)self traitCollection];
      v9 = [v8 verticalSizeClass];

      if (v9 != 1)
      {
        v15 = [(MainViewController *)self model];
        [v15 setSelectedOccurrence:v4];

        v16 = [(SearchResultsViewController *)self presentingViewController];
        v17[0] = _NSConcreteStackBlock;
        v17[1] = 3221225472;
        v17[2] = sub_10013E6A4;
        v17[3] = &unk_10020EC68;
        v17[4] = self;
        v18 = v4;
        [v16 dismissViewControllerAnimated:1 completion:v17];

        goto LABEL_12;
      }
    }

    v10 = [(SearchResultsViewController *)self presentedViewController];

    if (!v10)
    {
      [(ListViewController *)self setPreventScrollingForNextViewAppear:1];
      [(ListViewController *)self showEvent:v4 animated:1 showMode:1 context:0];
    }

    v11 = [(SearchResultsViewController *)self searchBar];
    [v11 resignFirstResponder];

    v12 = [(SearchResultsViewController *)self traitCollection];
    v13 = [v12 horizontalSizeClass];

    if (v13 == 1)
    {
      v14 = [(SearchResultsViewController *)self navigationController];
      [v14 hideSearchBarForNavigationTransitionAnimated:1];
    }
  }

LABEL_12:
}

- (BOOL)prefersShowingViewControllersOnNavigationStack
{
  v3 = [(SearchResultsViewController *)self traitCollection];
  if ([v3 horizontalSizeClass] == 1)
  {
    v4 = 1;
  }

  else
  {
    v5 = [(SearchResultsViewController *)self traitCollection];
    v4 = [v5 verticalSizeClass] == 1;
  }

  return v4;
}

- (void)tableView:(id)a3 willPerformPreviewActionForMenuWithConfiguration:(id)a4 animator:(id)a5
{
  v6 = a5;
  v7 = [v6 previewViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [v6 previewViewController];
  }

  else
  {
    v8 = 0;
  }

  v9 = [v8 event];
  [v8 willCommitPreview];
  if (v9)
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10013E8A0;
    v10[3] = &unk_10020EC68;
    v10[4] = self;
    v11 = v9;
    [v6 addAnimations:v10];
  }
}

- (void)updateSearchResultsForSearchController:(id)a3
{
  v6 = [a3 searchBar];
  v4 = [(SearchResultsViewController *)self searchBar];
  v5 = [v4 text];
  [(SearchResultsViewController *)self searchBar:v6 textDidChange:v5];
}

- (void)searchBarCancelButtonClicked:(id)a3
{
  v4 = [(SearchResultsViewController *)self navigationController];
  [v4 setViewControllers:&__NSArray0__struct];

  v6 = [(SearchResultsViewController *)self navigationController];
  v5 = [v6 presentingViewController];
  [v5 dismissViewControllerAnimated:1 completion:0];
}

- (void)scrollViewWillBeginDragging:(id)a3
{
  v3 = [(SearchResultsViewController *)self searchBar];
  [v3 resignFirstResponder];
}

- (void)searchBar:(id)a3 textDidChange:(id)a4
{
  v5 = a4;
  [(SearchResultsViewController *)self cancelTimer];
  if ([v5 length])
  {
    v11 = @"text";
    v12 = v5;
    v6 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
    v7 = [NSTimer scheduledTimerWithTimeInterval:self target:"beginSearch:" selector:v6 userInfo:0 repeats:0.35];
    timer = self->_timer;
    self->_timer = v7;
  }

  else
  {
    v9 = [(MainViewController *)self model];
    [v9 setSearchString:0];

    [(SearchResultsViewController *)self _updateFilterState];
    [(SearchResultsViewController *)self _refreshView];
    v10 = CUIKTodayDate();
    [(SearchResultsViewController *)self scrollToDate:v10 animated:0];
  }
}

- (void)beginSearch:(id)a3
{
  v4 = [a3 userInfo];
  v6 = [v4 objectForKey:@"text"];

  [(SearchResultsViewController *)self cancelTimer];
  v5 = [(MainViewController *)self model];
  [v5 setSearchString:v6];
}

- (void)cancelTimer
{
  [(NSTimer *)self->_timer invalidate];
  timer = self->_timer;
  self->_timer = 0;
}

- (id)_sizingContextWindow
{
  v3 = [(SearchResultsViewController *)self view];
  v4 = [v3 window];

  if (!v4)
  {
    v5 = [(SearchResultsViewController *)self navigationController];
    v6 = [v5 view];
    v4 = [v6 window];

    if (!v4)
    {
      v7 = [(SearchResultsViewController *)self presentingViewController];
      v8 = [v7 view];
      v4 = [v8 window];
    }
  }

  return v4;
}

- (CGRect)_searchBar:(id)a3 proposedSearchFieldFrame:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = a3;
  EKUIWidthForWindowSizeParadigm();
  v11 = v10;
  v12 = [(SearchResultsViewController *)self _sizingContextWindow];
  if (v12)
  {
    if (!EKUICurrentWidthSizeClassIsCompactInViewHierarchy() || (EKUICurrentHeightSizeClassIsRegular() & 1) == 0)
    {
      [v9 bounds];
      x = CGRectGetWidth(v24) * 0.5 - v11 * 0.5;
      width = v11;
    }
  }

  else
  {
    v13 = [v9 searchField];
    [v13 frame];
    IsNull = CGRectIsNull(v25);

    if (!IsNull)
    {
      v15 = [v9 searchField];
      [v15 frame];
      x = v16;
      y = v17;
      width = v18;
      height = v19;
    }
  }

  v20 = x;
  v21 = y;
  v22 = width;
  v23 = height;
  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

- (void)eventViewController:(id)a3 requestsDisplayOfEditViewController:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v7 = a4;
  v8 = [(SearchResultsViewController *)self navigationController];
  v9 = [v8 parentViewController];

  [v9 presentViewController:v7 animated:v5 completion:0];
}

- (void)eventViewController:(id)a3 requestsDismissalOfEditViewController:(id)a4
{
  v4 = [(SearchResultsViewController *)self navigationController:a3];
  v5 = [v4 parentViewController];

  [v5 dismissViewControllerAnimated:1 completion:0];
}

- (void)_eventStoreChanged:(id)a3
{
  v4 = [(SearchResultsViewController *)self searchBar];
  v5 = [v4 text];
  if (v5)
  {
    v6 = v5;
    v7 = [(SearchResultsViewController *)self searchBar];
    v8 = [v7 text];
    v9 = [v8 isEqualToString:&stru_1002133B8];

    if (!v9)
    {
      return;
    }
  }

  else
  {
  }

  v12 = [(SearchResultsViewController *)self searchBar];
  v10 = [(SearchResultsViewController *)self searchBar];
  v11 = [v10 text];
  [(SearchResultsViewController *)self searchBar:v12 textDidChange:v11];
}

- (void)_searchResultsUpdated:(id)a3
{
  v8 = a3;
  if ((CalSolariumEnabled() & 1) != 0 || ([(SearchResultsViewController *)self navigationController], v4 = objc_claimAutoreleasedReturnValue(), v4, v4))
  {
    [(SearchResultsViewController *)self _updateFilterState];
    [(SearchResultsViewController *)self _refreshView];
    v5 = [v8 userInfo];
    v6 = [v5 objectForKeyedSubscript:@"scrollToToday"];

    if ([v6 BOOLValue])
    {
      v7 = CUIKTodayDate();
      [(SearchResultsViewController *)self scrollToDate:v7 animated:0];
    }

    [(SearchResultsViewController *)self _updatePreferredContentSize];
  }
}

- (void)_refreshView
{
  v3 = [(ListViewController *)self tableView];
  v4 = [(MainViewController *)self model];
  v5 = [v4 searchString];
  [v3 setShowsVerticalScrollIndicator:v5 != 0];

  [(ListViewController *)self refresh];
  [(SearchResultsViewController *)self _updateTableAlpha:1];

  [(SearchResultsViewController *)self _updatePreferredContentSize];
}

- (SearchResultsViewControllerDelegate)searchResultsDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_searchResultsDelegate);

  return WeakRetained;
}

- (UISearchBar)searchBar
{
  WeakRetained = objc_loadWeakRetained(&self->_searchBar);

  return WeakRetained;
}

@end