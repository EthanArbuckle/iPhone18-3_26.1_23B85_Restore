@interface SearchResultsViewController
- (BOOL)_useLargeFormatBehavior;
- (BOOL)prefersShowingViewControllersOnNavigationStack;
- (CGRect)_searchBar:(id)bar proposedSearchFieldFrame:(CGRect)frame;
- (SearchResultsViewController)initWithModel:(id)model window:(id)window;
- (SearchResultsViewControllerDelegate)searchResultsDelegate;
- (UISearchBar)searchBar;
- (double)_maxHeightOfTableView;
- (id)_sizingContextWindow;
- (id)backButtonTitleForEventDetails;
- (id)contentUnavailableConfigurationForState:(id)state;
- (void)_eventStoreChanged:(id)changed;
- (void)_refreshView;
- (void)_searchResultsUpdated:(id)updated;
- (void)_setContentInsets;
- (void)_updateFilterState;
- (void)_updatePreferredContentSize;
- (void)_updateTableAlpha:(BOOL)alpha;
- (void)beginSearch:(id)search;
- (void)cancelTimer;
- (void)dealloc;
- (void)eventViewController:(id)controller requestsDismissalOfEditViewController:(id)viewController;
- (void)eventViewController:(id)controller requestsDisplayOfEditViewController:(id)viewController animated:(BOOL)animated;
- (void)scrollToDate:(id)date animated:(BOOL)animated;
- (void)scrollViewWillBeginDragging:(id)dragging;
- (void)searchBar:(id)bar textDidChange:(id)change;
- (void)searchBarCancelButtonClicked:(id)clicked;
- (void)showEvent:(id)event;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willPerformPreviewActionForMenuWithConfiguration:(id)configuration animator:(id)animator;
- (void)updateSearchResultsForSearchController:(id)controller;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewSafeAreaInsetsDidChange;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
@end

@implementation SearchResultsViewController

- (SearchResultsViewController)initWithModel:(id)model window:(id)window
{
  modelCopy = model;
  windowCopy = window;
  v19.receiver = self;
  v19.super_class = SearchResultsViewController;
  v8 = [(ListViewController *)&v19 initWithModel:modelCopy window:windowCopy];
  v9 = v8;
  if (v8)
  {
    model = [(MainViewController *)v8 model];
    searchString = [model searchString];

    if (searchString)
    {
      model2 = [(MainViewController *)v9 model];
      [model2 setSearchString:0];
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
    model = [(MainViewController *)self model];
    [model setSearchString:0];
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

- (void)viewWillAppear:(BOOL)appear
{
  v13.receiver = self;
  v13.super_class = SearchResultsViewController;
  [(ListViewController *)&v13 viewWillAppear:appear];
  presentingViewController = [(SearchResultsViewController *)self presentingViewController];
  view = [presentingViewController view];
  window = [view window];
  EKUIPushFallbackSizingContextWithViewHierarchy();

  [(SearchResultsViewController *)self _updateFilterState];
  [(SearchResultsViewController *)self _updatePreferredContentSize];
  presentingViewController2 = [(SearchResultsViewController *)self presentingViewController];
  view2 = [presentingViewController2 view];
  window2 = [view2 window];
  EKUIPopFallbackSizingContextWithViewHierarchy();

  [(SearchResultsViewController *)self _updateTableAlpha:0];
  v10 = +[NSNotificationCenter defaultCenter];
  v11 = CUIKCalendarModelSearchResultsAvailableNotification;
  model = [(MainViewController *)self model];
  [v10 addObserver:self selector:"_searchResultsUpdated:" name:v11 object:model];
}

- (void)viewDidAppear:(BOOL)appear
{
  v10.receiver = self;
  v10.super_class = SearchResultsViewController;
  [(ListViewController *)&v10 viewDidAppear:appear];
  v4 = kCalUILogHandle;
  if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_INFO))
  {
    v5 = v4;
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    model = [(MainViewController *)self model];
    searchString = [model searchString];
    *buf = 138543619;
    v12 = v7;
    v13 = 2113;
    v14 = searchString;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[UserStateLog] State -> %{public}@ viewDidAppear. searchString = %{private}@", buf, 0x16u);
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = SearchResultsViewController;
  [(ListViewController *)&v5 viewWillDisappear:disappear];
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self];
}

- (void)viewWillLayoutSubviews
{
  window = [(MainViewController *)self window];
  EKUIPushFallbackSizingContextWithViewHierarchy();

  [(SearchResultsViewController *)self _setContentInsets];
  v5.receiver = self;
  v5.super_class = SearchResultsViewController;
  [(SearchResultsViewController *)&v5 viewWillLayoutSubviews];
  window2 = [(MainViewController *)self window];
  EKUIPopFallbackSizingContextWithViewHierarchy();
}

- (void)_setContentInsets
{
  tableView = [(ListViewController *)self tableView];
  [tableView contentInset];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  if ([(ListViewController *)self destination]!= 2)
  {
    searchBar = [(SearchResultsViewController *)self searchBar];
    [searchBar bounds];
    MaxY = CGRectGetMaxY(v21);

    tableView2 = [(ListViewController *)self tableView];
    searchBar2 = [(SearchResultsViewController *)self searchBar];
    [tableView2 convertPoint:searchBar2 fromView:{0.0, MaxY}];

    tableView3 = [(ListViewController *)self tableView];
    [tableView3 contentOffset];

    tableView4 = [(ListViewController *)self tableView];
    [tableView4 safeAreaInsets];
    CalRoundToScreenScale();
    v5 = v18;
  }

  tableView5 = [(ListViewController *)self tableView];
  [tableView5 setContentInset:{v5, v7, v9, v11}];
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
  _sizingContextWindow = [(SearchResultsViewController *)self _sizingContextWindow];
  ShouldUseLargeFormatInterface = EKUICurrentWindowInterfaceParadigm_ShouldUseLargeFormatInterface();

  return ShouldUseLargeFormatInterface;
}

- (void)_updatePreferredContentSize
{
  if (![(SearchResultsViewController *)self _useLargeFormatBehavior])
  {
    return;
  }

  searchBar = [(SearchResultsViewController *)self searchBar];
  text = [searchBar text];
  if ([text length])
  {

    goto LABEL_5;
  }

  tableView = [(ListViewController *)self tableView];
  v6 = [(ListViewController *)self numberOfSectionsInTableView:tableView];

  if (v6)
  {
LABEL_5:
    [(SearchResultsViewController *)self _maxHeightOfTableView];
    v8 = fmax(v7, 371.0);
    [(SearchResultsViewController *)self preferredContentSize];
    if (vabdd_f64(v9, v8) >= 2.22044605e-16)
    {
      tableView2 = [(ListViewController *)self tableView];
      [tableView2 frame];
      [(SearchResultsViewController *)self setPreferredContentSize:v10, v8];
    }

    return;
  }

  height = CGSizeZero.height;

  [(SearchResultsViewController *)self setPreferredContentSize:CGSizeZero.width, height];
}

- (double)_maxHeightOfTableView
{
  view = [(SearchResultsViewController *)self view];
  window = [view window];
  if (window)
  {
    view2 = [(SearchResultsViewController *)self view];
    window2 = [view2 window];
    [window2 bounds];
    Height = CGRectGetHeight(v17);
  }

  else
  {
    Height = 4000.0;
  }

  tableView = [(ListViewController *)self tableView];
  numberOfSections = [tableView numberOfSections];

  if (numberOfSections < 1)
  {
    v11 = 0.0;
LABEL_10:
    tableView2 = [(ListViewController *)self tableView];
    [tableView2 estimatedRowHeight];
    Height = v11 + v15;
  }

  else
  {
    v10 = 0;
    v11 = 0.0;
    while (1)
    {
      tableView3 = [(ListViewController *)self tableView];
      [tableView3 rectForSection:v10];
      v11 = v11 + v13;

      if (v11 >= Height)
      {
        break;
      }

      if (numberOfSections == ++v10)
      {
        goto LABEL_10;
      }
    }
  }

  return Height;
}

- (void)_updateTableAlpha:(BOOL)alpha
{
  alphaCopy = alpha;
  objc_initWeak(&location, self);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10013DFB4;
  v7[3] = &unk_1002108E8;
  objc_copyWeak(&v8, &location);
  v7[4] = self;
  v5 = objc_retainBlock(v7);
  v6 = v5;
  if (alphaCopy)
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

- (id)contentUnavailableConfigurationForState:(id)state
{
  stateCopy = state;
  v5 = +[UIContentUnavailableConfiguration searchConfiguration];
  v6 = [v5 updatedConfigurationForState:stateCopy];

  model = [(MainViewController *)self model];
  searchString = [model searchString];
  v9 = [searchString length];

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
  view = [(SearchResultsViewController *)self view];
  if (EKUICurrentWidthSizeClassIsCompactInViewHierarchy())
  {
    [(ListViewController *)self setShowFilteredData:1];
  }

  else
  {
    view2 = [(SearchResultsViewController *)self view];
    if (EKUICurrentWidthSizeClassIsRegularInViewHierarchy())
    {
      searchBar = [(SearchResultsViewController *)self searchBar];
      text = [searchBar text];
      -[ListViewController setShowFilteredData:](self, "setShowFilteredData:", [text length] != 0);
    }

    else
    {
      [(ListViewController *)self setShowFilteredData:0];
    }
  }
}

- (void)scrollToDate:(id)date animated:(BOOL)animated
{
  animatedCopy = animated;
  dateCopy = date;
  if (dateCopy)
  {
    tableView = [(ListViewController *)self tableView];

    if (tableView)
    {
      v8.receiver = self;
      v8.super_class = SearchResultsViewController;
      [(ListViewController *)&v8 scrollToDate:dateCopy animated:animatedCopy];
    }
  }
}

- (id)backButtonTitleForEventDetails
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"String displayed for the back button of the details of an event occurrence when in search mode" value:@"Search" table:0];

  return v3;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  model = [(MainViewController *)self model];
  v6 = [model cachedOccurrenceAtIndexPath:pathCopy usingFilter:{-[ListViewController showFilteredData](self, "showFilteredData")}];

  [(SearchResultsViewController *)self showEvent:v6];
  if ([(ListViewController *)self destination]== 2)
  {
    [(ListViewController *)self setCurrentSelectedEvent:v6];
  }

  [(ListViewController *)self updateSeparatorVisibiltyForSelectionChangeForRowAtIndexPath:pathCopy];
}

- (void)showEvent:(id)event
{
  eventCopy = event;
  if ([(ListViewController *)self destination]== 2)
  {
    searchResultsDelegate = [(SearchResultsViewController *)self searchResultsDelegate];

    if (searchResultsDelegate)
    {
      searchResultsDelegate2 = [(SearchResultsViewController *)self searchResultsDelegate];
      [searchResultsDelegate2 searchResultsViewController:self didSelectEvent:eventCopy];
    }
  }

  else
  {
    traitCollection = [(SearchResultsViewController *)self traitCollection];
    if ([traitCollection horizontalSizeClass] == 1)
    {
    }

    else
    {
      traitCollection2 = [(SearchResultsViewController *)self traitCollection];
      verticalSizeClass = [traitCollection2 verticalSizeClass];

      if (verticalSizeClass != 1)
      {
        model = [(MainViewController *)self model];
        [model setSelectedOccurrence:eventCopy];

        presentingViewController = [(SearchResultsViewController *)self presentingViewController];
        v17[0] = _NSConcreteStackBlock;
        v17[1] = 3221225472;
        v17[2] = sub_10013E6A4;
        v17[3] = &unk_10020EC68;
        v17[4] = self;
        v18 = eventCopy;
        [presentingViewController dismissViewControllerAnimated:1 completion:v17];

        goto LABEL_12;
      }
    }

    presentedViewController = [(SearchResultsViewController *)self presentedViewController];

    if (!presentedViewController)
    {
      [(ListViewController *)self setPreventScrollingForNextViewAppear:1];
      [(ListViewController *)self showEvent:eventCopy animated:1 showMode:1 context:0];
    }

    searchBar = [(SearchResultsViewController *)self searchBar];
    [searchBar resignFirstResponder];

    traitCollection3 = [(SearchResultsViewController *)self traitCollection];
    horizontalSizeClass = [traitCollection3 horizontalSizeClass];

    if (horizontalSizeClass == 1)
    {
      navigationController = [(SearchResultsViewController *)self navigationController];
      [navigationController hideSearchBarForNavigationTransitionAnimated:1];
    }
  }

LABEL_12:
}

- (BOOL)prefersShowingViewControllersOnNavigationStack
{
  traitCollection = [(SearchResultsViewController *)self traitCollection];
  if ([traitCollection horizontalSizeClass] == 1)
  {
    v4 = 1;
  }

  else
  {
    traitCollection2 = [(SearchResultsViewController *)self traitCollection];
    v4 = [traitCollection2 verticalSizeClass] == 1;
  }

  return v4;
}

- (void)tableView:(id)view willPerformPreviewActionForMenuWithConfiguration:(id)configuration animator:(id)animator
{
  animatorCopy = animator;
  previewViewController = [animatorCopy previewViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    previewViewController2 = [animatorCopy previewViewController];
  }

  else
  {
    previewViewController2 = 0;
  }

  event = [previewViewController2 event];
  [previewViewController2 willCommitPreview];
  if (event)
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10013E8A0;
    v10[3] = &unk_10020EC68;
    v10[4] = self;
    v11 = event;
    [animatorCopy addAnimations:v10];
  }
}

- (void)updateSearchResultsForSearchController:(id)controller
{
  searchBar = [controller searchBar];
  searchBar2 = [(SearchResultsViewController *)self searchBar];
  text = [searchBar2 text];
  [(SearchResultsViewController *)self searchBar:searchBar textDidChange:text];
}

- (void)searchBarCancelButtonClicked:(id)clicked
{
  navigationController = [(SearchResultsViewController *)self navigationController];
  [navigationController setViewControllers:&__NSArray0__struct];

  navigationController2 = [(SearchResultsViewController *)self navigationController];
  presentingViewController = [navigationController2 presentingViewController];
  [presentingViewController dismissViewControllerAnimated:1 completion:0];
}

- (void)scrollViewWillBeginDragging:(id)dragging
{
  searchBar = [(SearchResultsViewController *)self searchBar];
  [searchBar resignFirstResponder];
}

- (void)searchBar:(id)bar textDidChange:(id)change
{
  changeCopy = change;
  [(SearchResultsViewController *)self cancelTimer];
  if ([changeCopy length])
  {
    v11 = @"text";
    v12 = changeCopy;
    v6 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
    v7 = [NSTimer scheduledTimerWithTimeInterval:self target:"beginSearch:" selector:v6 userInfo:0 repeats:0.35];
    timer = self->_timer;
    self->_timer = v7;
  }

  else
  {
    model = [(MainViewController *)self model];
    [model setSearchString:0];

    [(SearchResultsViewController *)self _updateFilterState];
    [(SearchResultsViewController *)self _refreshView];
    v10 = CUIKTodayDate();
    [(SearchResultsViewController *)self scrollToDate:v10 animated:0];
  }
}

- (void)beginSearch:(id)search
{
  userInfo = [search userInfo];
  v6 = [userInfo objectForKey:@"text"];

  [(SearchResultsViewController *)self cancelTimer];
  model = [(MainViewController *)self model];
  [model setSearchString:v6];
}

- (void)cancelTimer
{
  [(NSTimer *)self->_timer invalidate];
  timer = self->_timer;
  self->_timer = 0;
}

- (id)_sizingContextWindow
{
  view = [(SearchResultsViewController *)self view];
  window = [view window];

  if (!window)
  {
    navigationController = [(SearchResultsViewController *)self navigationController];
    view2 = [navigationController view];
    window = [view2 window];

    if (!window)
    {
      presentingViewController = [(SearchResultsViewController *)self presentingViewController];
      view3 = [presentingViewController view];
      window = [view3 window];
    }
  }

  return window;
}

- (CGRect)_searchBar:(id)bar proposedSearchFieldFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  barCopy = bar;
  EKUIWidthForWindowSizeParadigm();
  v11 = v10;
  _sizingContextWindow = [(SearchResultsViewController *)self _sizingContextWindow];
  if (_sizingContextWindow)
  {
    if (!EKUICurrentWidthSizeClassIsCompactInViewHierarchy() || (EKUICurrentHeightSizeClassIsRegular() & 1) == 0)
    {
      [barCopy bounds];
      x = CGRectGetWidth(v24) * 0.5 - v11 * 0.5;
      width = v11;
    }
  }

  else
  {
    searchField = [barCopy searchField];
    [searchField frame];
    IsNull = CGRectIsNull(v25);

    if (!IsNull)
    {
      searchField2 = [barCopy searchField];
      [searchField2 frame];
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

- (void)eventViewController:(id)controller requestsDisplayOfEditViewController:(id)viewController animated:(BOOL)animated
{
  animatedCopy = animated;
  viewControllerCopy = viewController;
  navigationController = [(SearchResultsViewController *)self navigationController];
  parentViewController = [navigationController parentViewController];

  [parentViewController presentViewController:viewControllerCopy animated:animatedCopy completion:0];
}

- (void)eventViewController:(id)controller requestsDismissalOfEditViewController:(id)viewController
{
  v4 = [(SearchResultsViewController *)self navigationController:controller];
  parentViewController = [v4 parentViewController];

  [parentViewController dismissViewControllerAnimated:1 completion:0];
}

- (void)_eventStoreChanged:(id)changed
{
  searchBar = [(SearchResultsViewController *)self searchBar];
  text = [searchBar text];
  if (text)
  {
    v6 = text;
    searchBar2 = [(SearchResultsViewController *)self searchBar];
    text2 = [searchBar2 text];
    v9 = [text2 isEqualToString:&stru_1002133B8];

    if (!v9)
    {
      return;
    }
  }

  else
  {
  }

  searchBar3 = [(SearchResultsViewController *)self searchBar];
  searchBar4 = [(SearchResultsViewController *)self searchBar];
  text3 = [searchBar4 text];
  [(SearchResultsViewController *)self searchBar:searchBar3 textDidChange:text3];
}

- (void)_searchResultsUpdated:(id)updated
{
  updatedCopy = updated;
  if ((CalSolariumEnabled() & 1) != 0 || ([(SearchResultsViewController *)self navigationController], v4 = objc_claimAutoreleasedReturnValue(), v4, v4))
  {
    [(SearchResultsViewController *)self _updateFilterState];
    [(SearchResultsViewController *)self _refreshView];
    userInfo = [updatedCopy userInfo];
    v6 = [userInfo objectForKeyedSubscript:@"scrollToToday"];

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
  tableView = [(ListViewController *)self tableView];
  model = [(MainViewController *)self model];
  searchString = [model searchString];
  [tableView setShowsVerticalScrollIndicator:searchString != 0];

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