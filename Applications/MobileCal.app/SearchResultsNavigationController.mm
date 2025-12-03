@interface SearchResultsNavigationController
+ (id)_todayLocalizedString;
- (SearchResultsNavigationController)initWithModel:(id)model window:(id)window;
- (UISearchBar)searchBar;
- (void)_hideSearchBar;
- (void)_setSearchBarEnabledState:(BOOL)state;
- (void)_showSearchBar;
- (void)_updateTodayButtonPosition;
- (void)animateShowingSearchBarAnimated:(BOOL)animated withCompletion:(id)completion;
- (void)dealloc;
- (void)hideSearchBarForNavigationTransitionAnimated:(BOOL)animated;
- (void)navigationController:(id)controller didShowViewController:(id)viewController animated:(BOOL)animated;
- (void)navigationController:(id)controller willShowViewController:(id)viewController animated:(BOOL)animated;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container;
- (void)setSearchBar:(id)bar;
- (void)todayPressed;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation SearchResultsNavigationController

- (SearchResultsNavigationController)initWithModel:(id)model window:(id)window
{
  modelCopy = model;
  windowCopy = window;
  v19.receiver = self;
  v19.super_class = SearchResultsNavigationController;
  v8 = [(SearchResultsNavigationController *)&v19 init];
  v9 = v8;
  if (v8)
  {
    [(SearchResultsNavigationController *)v8 setModel:modelCopy];
    v10 = [SearchResultsViewController alloc];
    model = [(SearchResultsNavigationController *)v9 model];
    v12 = [(SearchResultsViewController *)v10 initWithModel:model window:windowCopy];
    [(SearchResultsNavigationController *)v9 setSearchResultsViewController:v12];

    [(SearchResultsNavigationController *)v9 setDelegate:v9];
    objc_initWeak(&location, v9);
    v20 = objc_opt_class();
    v13 = [NSArray arrayWithObjects:&v20 count:1];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10013B01C;
    v16[3] = &unk_10020E9E0;
    objc_copyWeak(&v17, &location);
    v14 = [(SearchResultsNavigationController *)v9 registerForTraitChanges:v13 withHandler:v16];

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }

  return v9;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = SearchResultsNavigationController;
  [(SearchResultsNavigationController *)&v4 dealloc];
}

- (void)viewDidLoad
{
  [(SearchResultsNavigationController *)self setToolbarHidden:1 animated:0];
  [(SearchResultsNavigationController *)self setNavigationBarHidden:1 animated:0];
  searchResultsViewController = [(SearchResultsNavigationController *)self searchResultsViewController];
  [(SearchResultsNavigationController *)self pushViewController:searchResultsViewController animated:0];

  v4.receiver = self;
  v4.super_class = SearchResultsNavigationController;
  [(SearchResultsNavigationController *)&v4 viewDidLoad];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  coordinatorCopy = coordinator;
  v23.receiver = self;
  v23.super_class = SearchResultsNavigationController;
  [(SearchResultsNavigationController *)&v23 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x4010000000;
  v20[3] = &unk_1001EBD39;
  v21 = 0u;
  v22 = 0u;
  searchBar = [(SearchResultsNavigationController *)self searchBar];
  [searchBar frame];
  *&v21 = v9;
  *(&v21 + 1) = v10;
  *&v22 = v11;
  *(&v22 + 1) = v12;

  searchBar2 = [(SearchResultsNavigationController *)self searchBar];
  superview = [searchBar2 superview];
  [superview bounds];
  v16 = v15;
  v18 = v17;

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10013B3F0;
  v19[3] = &unk_100212238;
  *&v19[6] = width;
  *&v19[7] = height;
  v19[4] = self;
  v19[5] = v20;
  v19[8] = v16;
  v19[9] = v18;
  dispatch_async(&_dispatch_main_q, v19);
  _Block_object_dispose(v20, 8);
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container
{
  v7.receiver = self;
  v7.super_class = SearchResultsNavigationController;
  containerCopy = container;
  [(SearchResultsNavigationController *)&v7 preferredContentSizeDidChangeForChildContentContainer:containerCopy];
  v5 = [(SearchResultsNavigationController *)self searchResultsViewController:v7.receiver];

  if (v5 == containerCopy)
  {
    searchResultsViewController = [(SearchResultsNavigationController *)self searchResultsViewController];
    [searchResultsViewController preferredContentSize];
    [(SearchResultsNavigationController *)self setPreferredContentSize:?];
  }
}

- (void)navigationController:(id)controller willShowViewController:(id)viewController animated:(BOOL)animated
{
  viewControllerCopy = viewController;
  searchResultsViewController = [(SearchResultsNavigationController *)self searchResultsViewController];
  if (searchResultsViewController == viewControllerCopy && [(SearchResultsNavigationController *)self initialPresentationHasCompleted])
  {
    traitCollection = [(SearchResultsNavigationController *)self traitCollection];
    horizontalSizeClass = [traitCollection horizontalSizeClass];

    if (horizontalSizeClass == 1)
    {
      [(SearchResultsNavigationController *)self animateShowingSearchBarAnimated:1 withCompletion:0];
    }
  }

  else
  {
  }

  [(SearchResultsNavigationController *)self setInitialPresentationHasCompleted:1];
  searchResultsViewController2 = [(SearchResultsNavigationController *)self searchResultsViewController];
  v10 = searchResultsViewController2 == viewControllerCopy;

  [(SearchResultsNavigationController *)self _setSearchBarEnabledState:v10];
  [(SearchResultsNavigationController *)self setNavigationBarHidden:v10 animated:1];
  v11 = viewControllerCopy;
  if (searchResultsViewController2 == viewControllerCopy)
  {
    presentingViewController = [(SearchResultsNavigationController *)self presentingViewController];
    view = [presentingViewController view];
    window = [view window];
    EKUIPushFallbackSizingContextWithViewHierarchy();

    [(SearchResultsNavigationController *)self _updateTodayButtonPosition];
    presentingViewController2 = [(SearchResultsNavigationController *)self presentingViewController];
    view2 = [presentingViewController2 view];
    window2 = [view2 window];
    EKUIPopFallbackSizingContextWithViewHierarchy();

    v11 = viewControllerCopy;
  }
}

- (void)navigationController:(id)controller didShowViewController:(id)viewController animated:(BOOL)animated
{
  animatedCopy = animated;
  viewControllerCopy = viewController;
  searchResultsViewController = [(SearchResultsNavigationController *)self searchResultsViewController];

  if (searchResultsViewController == viewControllerCopy || ![(SearchResultsNavigationController *)self initialPresentationHasCompleted])
  {
  }

  else
  {
    traitCollection = [(SearchResultsNavigationController *)self traitCollection];
    horizontalSizeClass = [traitCollection horizontalSizeClass];

    if (horizontalSizeClass == 1)
    {

      [(SearchResultsNavigationController *)self hideSearchBarForNavigationTransitionAnimated:animatedCopy];
    }
  }
}

- (void)hideSearchBarForNavigationTransitionAnimated:(BOOL)animated
{
  if (animated && ([(SearchResultsNavigationController *)self transitionCoordinator], v4 = objc_claimAutoreleasedReturnValue(), v4, v4))
  {
    transitionCoordinator = [(SearchResultsNavigationController *)self transitionCoordinator];
    searchBar = [(SearchResultsNavigationController *)self searchBar];
    superview = [searchBar superview];
    v9[4] = self;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10013BBCC;
    v10[3] = &unk_10020F240;
    v10[4] = self;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10013BBD4;
    v9[3] = &unk_10020F240;
    [transitionCoordinator animateAlongsideTransitionInView:superview animation:v10 completion:v9];
  }

  else
  {
    [(SearchResultsNavigationController *)self _hideSearchBar];
    searchBar2 = [(SearchResultsNavigationController *)self searchBar];
    [searchBar2 setHidden:1];
  }
}

- (void)animateShowingSearchBarAnimated:(BOOL)animated withCompletion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  if (animatedCopy)
  {
    transitionCoordinator = [(SearchResultsNavigationController *)self transitionCoordinator];
    searchBar = [(SearchResultsNavigationController *)self searchBar];
    superview = [searchBar superview];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10013BD68;
    v12[3] = &unk_10020F240;
    v12[4] = self;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10013BD70;
    v10[3] = &unk_10020F1C8;
    v11 = completionCopy;
    [transitionCoordinator animateAlongsideTransitionInView:superview animation:v12 completion:v10];
  }

  else
  {
    [(SearchResultsNavigationController *)self _showSearchBar];
    if (completionCopy)
    {
      completionCopy[2](completionCopy);
    }
  }
}

- (void)_hideSearchBar
{
  searchBar = [(SearchResultsNavigationController *)self searchBar];
  [searchBar frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v16.origin.x = v5;
  v16.origin.y = v7;
  v16.size.width = v9;
  v16.size.height = v11;
  v12 = v5 - CGRectGetWidth(v16);
  searchBar2 = [(SearchResultsNavigationController *)self searchBar];
  [searchBar2 setFrame:{v12, v7, v9, v11}];

  searchBar3 = [(SearchResultsNavigationController *)self searchBar];
  [searchBar3 resignFirstResponder];
}

- (void)_showSearchBar
{
  searchBar = [(SearchResultsNavigationController *)self searchBar];
  [searchBar frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v15.origin.x = v5;
  v15.origin.y = v7;
  v15.size.width = v9;
  v15.size.height = v11;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10013BF60;
  v14[3] = &unk_10020ED88;
  v14[4] = self;
  *&v14[5] = -CGRectGetWidth(v15);
  *&v14[6] = v7;
  *&v14[7] = v9;
  *&v14[8] = v11;
  [UIView performWithoutAnimation:v14];
  searchBar2 = [(SearchResultsNavigationController *)self searchBar];
  [searchBar2 setFrame:{0.0, v7, v9, v11}];

  searchBar3 = [(SearchResultsNavigationController *)self searchBar];
  [searchBar3 becomeFirstResponder];
}

- (void)setSearchBar:(id)bar
{
  barCopy = bar;
  objc_storeWeak(&self->_searchBar, barCopy);
  searchResultsViewController = [(SearchResultsNavigationController *)self searchResultsViewController];
  [searchResultsViewController setSearchBar:barCopy];
}

- (void)_updateTodayButtonPosition
{
  view = [(SearchResultsNavigationController *)self view];
  IsRegularInViewHierarchy = EKUICurrentWidthSizeClassIsRegularInViewHierarchy();

  if (IsRegularInViewHierarchy)
  {
    searchBar = [(SearchResultsNavigationController *)self searchBar];
    _leftButton = [searchBar _leftButton];

    v6 = CalendarAppTintColor();
    [_leftButton setTitleColor:v6 forState:0];

    _todayLocalizedString = [objc_opt_class() _todayLocalizedString];
    [_leftButton setTitle:_todayLocalizedString forState:0];

    [_leftButton addTarget:self action:"todayPressed" forControlEvents:64];
    [(SearchResultsNavigationController *)self setToolbarHidden:1 animated:0];
  }

  else
  {
    v8 = [UIBarButtonItem alloc];
    _todayLocalizedString2 = [objc_opt_class() _todayLocalizedString];
    v10 = [v8 initWithTitle:_todayLocalizedString2 style:0 target:self action:"todayPressed"];

    v11 = CalendarAppTintColor();
    [v10 setTintColor:v11];

    searchResultsViewController = [(SearchResultsNavigationController *)self searchResultsViewController];
    v15 = v10;
    v13 = [NSArray arrayWithObjects:&v15 count:1];
    [searchResultsViewController setToolbarItems:v13 animated:1];

    [(SearchResultsNavigationController *)self setToolbarHidden:0 animated:0];
  }
}

- (void)_setSearchBarEnabledState:(BOOL)state
{
  transitionCoordinator = [(SearchResultsNavigationController *)self transitionCoordinator];
  searchBar = [(SearchResultsNavigationController *)self searchBar];
  superview = [searchBar superview];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10013C348;
  v8[3] = &unk_10020F218;
  v8[4] = self;
  stateCopy = state;
  [transitionCoordinator animateAlongsideTransitionInView:superview animation:v8 completion:0];
}

- (void)todayPressed
{
  CalAnalyticsSendEvent();
  v8 = CUIKTodayDate();
  model = [(SearchResultsNavigationController *)self model];
  eventStore = [model eventStore];
  timeZone = [eventStore timeZone];

  v6 = [[EKCalendarDate alloc] initWithDate:v8 timeZone:timeZone];
  searchResultsViewController = [(SearchResultsNavigationController *)self searchResultsViewController];
  [searchResultsViewController selectDate:v6 animated:1];
}

+ (id)_todayLocalizedString
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"Today" value:&stru_1002133B8 table:0];

  return v3;
}

- (UISearchBar)searchBar
{
  WeakRetained = objc_loadWeakRetained(&self->_searchBar);

  return WeakRetained;
}

@end