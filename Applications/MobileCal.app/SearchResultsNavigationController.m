@interface SearchResultsNavigationController
+ (id)_todayLocalizedString;
- (SearchResultsNavigationController)initWithModel:(id)a3 window:(id)a4;
- (UISearchBar)searchBar;
- (void)_hideSearchBar;
- (void)_setSearchBarEnabledState:(BOOL)a3;
- (void)_showSearchBar;
- (void)_updateTodayButtonPosition;
- (void)animateShowingSearchBarAnimated:(BOOL)a3 withCompletion:(id)a4;
- (void)dealloc;
- (void)hideSearchBarForNavigationTransitionAnimated:(BOOL)a3;
- (void)navigationController:(id)a3 didShowViewController:(id)a4 animated:(BOOL)a5;
- (void)navigationController:(id)a3 willShowViewController:(id)a4 animated:(BOOL)a5;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3;
- (void)setSearchBar:(id)a3;
- (void)todayPressed;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation SearchResultsNavigationController

- (SearchResultsNavigationController)initWithModel:(id)a3 window:(id)a4
{
  v6 = a3;
  v7 = a4;
  v19.receiver = self;
  v19.super_class = SearchResultsNavigationController;
  v8 = [(SearchResultsNavigationController *)&v19 init];
  v9 = v8;
  if (v8)
  {
    [(SearchResultsNavigationController *)v8 setModel:v6];
    v10 = [SearchResultsViewController alloc];
    v11 = [(SearchResultsNavigationController *)v9 model];
    v12 = [(SearchResultsViewController *)v10 initWithModel:v11 window:v7];
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
  v3 = [(SearchResultsNavigationController *)self searchResultsViewController];
  [(SearchResultsNavigationController *)self pushViewController:v3 animated:0];

  v4.receiver = self;
  v4.super_class = SearchResultsNavigationController;
  [(SearchResultsNavigationController *)&v4 viewDidLoad];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  v23.receiver = self;
  v23.super_class = SearchResultsNavigationController;
  [(SearchResultsNavigationController *)&v23 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x4010000000;
  v20[3] = &unk_1001EBD39;
  v21 = 0u;
  v22 = 0u;
  v8 = [(SearchResultsNavigationController *)self searchBar];
  [v8 frame];
  *&v21 = v9;
  *(&v21 + 1) = v10;
  *&v22 = v11;
  *(&v22 + 1) = v12;

  v13 = [(SearchResultsNavigationController *)self searchBar];
  v14 = [v13 superview];
  [v14 bounds];
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

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3
{
  v7.receiver = self;
  v7.super_class = SearchResultsNavigationController;
  v4 = a3;
  [(SearchResultsNavigationController *)&v7 preferredContentSizeDidChangeForChildContentContainer:v4];
  v5 = [(SearchResultsNavigationController *)self searchResultsViewController:v7.receiver];

  if (v5 == v4)
  {
    v6 = [(SearchResultsNavigationController *)self searchResultsViewController];
    [v6 preferredContentSize];
    [(SearchResultsNavigationController *)self setPreferredContentSize:?];
  }
}

- (void)navigationController:(id)a3 willShowViewController:(id)a4 animated:(BOOL)a5
{
  v18 = a4;
  v6 = [(SearchResultsNavigationController *)self searchResultsViewController];
  if (v6 == v18 && [(SearchResultsNavigationController *)self initialPresentationHasCompleted])
  {
    v7 = [(SearchResultsNavigationController *)self traitCollection];
    v8 = [v7 horizontalSizeClass];

    if (v8 == 1)
    {
      [(SearchResultsNavigationController *)self animateShowingSearchBarAnimated:1 withCompletion:0];
    }
  }

  else
  {
  }

  [(SearchResultsNavigationController *)self setInitialPresentationHasCompleted:1];
  v9 = [(SearchResultsNavigationController *)self searchResultsViewController];
  v10 = v9 == v18;

  [(SearchResultsNavigationController *)self _setSearchBarEnabledState:v10];
  [(SearchResultsNavigationController *)self setNavigationBarHidden:v10 animated:1];
  v11 = v18;
  if (v9 == v18)
  {
    v12 = [(SearchResultsNavigationController *)self presentingViewController];
    v13 = [v12 view];
    v14 = [v13 window];
    EKUIPushFallbackSizingContextWithViewHierarchy();

    [(SearchResultsNavigationController *)self _updateTodayButtonPosition];
    v15 = [(SearchResultsNavigationController *)self presentingViewController];
    v16 = [v15 view];
    v17 = [v16 window];
    EKUIPopFallbackSizingContextWithViewHierarchy();

    v11 = v18;
  }
}

- (void)navigationController:(id)a3 didShowViewController:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v7 = a4;
  v10 = [(SearchResultsNavigationController *)self searchResultsViewController];

  if (v10 == v7 || ![(SearchResultsNavigationController *)self initialPresentationHasCompleted])
  {
  }

  else
  {
    v8 = [(SearchResultsNavigationController *)self traitCollection];
    v9 = [v8 horizontalSizeClass];

    if (v9 == 1)
    {

      [(SearchResultsNavigationController *)self hideSearchBarForNavigationTransitionAnimated:v5];
    }
  }
}

- (void)hideSearchBarForNavigationTransitionAnimated:(BOOL)a3
{
  if (a3 && ([(SearchResultsNavigationController *)self transitionCoordinator], v4 = objc_claimAutoreleasedReturnValue(), v4, v4))
  {
    v5 = [(SearchResultsNavigationController *)self transitionCoordinator];
    v6 = [(SearchResultsNavigationController *)self searchBar];
    v7 = [v6 superview];
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
    [v5 animateAlongsideTransitionInView:v7 animation:v10 completion:v9];
  }

  else
  {
    [(SearchResultsNavigationController *)self _hideSearchBar];
    v8 = [(SearchResultsNavigationController *)self searchBar];
    [v8 setHidden:1];
  }
}

- (void)animateShowingSearchBarAnimated:(BOOL)a3 withCompletion:(id)a4
{
  v4 = a3;
  v6 = a4;
  if (v4)
  {
    v7 = [(SearchResultsNavigationController *)self transitionCoordinator];
    v8 = [(SearchResultsNavigationController *)self searchBar];
    v9 = [v8 superview];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10013BD68;
    v12[3] = &unk_10020F240;
    v12[4] = self;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10013BD70;
    v10[3] = &unk_10020F1C8;
    v11 = v6;
    [v7 animateAlongsideTransitionInView:v9 animation:v12 completion:v10];
  }

  else
  {
    [(SearchResultsNavigationController *)self _showSearchBar];
    if (v6)
    {
      v6[2](v6);
    }
  }
}

- (void)_hideSearchBar
{
  v3 = [(SearchResultsNavigationController *)self searchBar];
  [v3 frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v16.origin.x = v5;
  v16.origin.y = v7;
  v16.size.width = v9;
  v16.size.height = v11;
  v12 = v5 - CGRectGetWidth(v16);
  v13 = [(SearchResultsNavigationController *)self searchBar];
  [v13 setFrame:{v12, v7, v9, v11}];

  v14 = [(SearchResultsNavigationController *)self searchBar];
  [v14 resignFirstResponder];
}

- (void)_showSearchBar
{
  v3 = [(SearchResultsNavigationController *)self searchBar];
  [v3 frame];
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
  v12 = [(SearchResultsNavigationController *)self searchBar];
  [v12 setFrame:{0.0, v7, v9, v11}];

  v13 = [(SearchResultsNavigationController *)self searchBar];
  [v13 becomeFirstResponder];
}

- (void)setSearchBar:(id)a3
{
  v4 = a3;
  objc_storeWeak(&self->_searchBar, v4);
  v5 = [(SearchResultsNavigationController *)self searchResultsViewController];
  [v5 setSearchBar:v4];
}

- (void)_updateTodayButtonPosition
{
  v3 = [(SearchResultsNavigationController *)self view];
  IsRegularInViewHierarchy = EKUICurrentWidthSizeClassIsRegularInViewHierarchy();

  if (IsRegularInViewHierarchy)
  {
    v5 = [(SearchResultsNavigationController *)self searchBar];
    v14 = [v5 _leftButton];

    v6 = CalendarAppTintColor();
    [v14 setTitleColor:v6 forState:0];

    v7 = [objc_opt_class() _todayLocalizedString];
    [v14 setTitle:v7 forState:0];

    [v14 addTarget:self action:"todayPressed" forControlEvents:64];
    [(SearchResultsNavigationController *)self setToolbarHidden:1 animated:0];
  }

  else
  {
    v8 = [UIBarButtonItem alloc];
    v9 = [objc_opt_class() _todayLocalizedString];
    v10 = [v8 initWithTitle:v9 style:0 target:self action:"todayPressed"];

    v11 = CalendarAppTintColor();
    [v10 setTintColor:v11];

    v12 = [(SearchResultsNavigationController *)self searchResultsViewController];
    v15 = v10;
    v13 = [NSArray arrayWithObjects:&v15 count:1];
    [v12 setToolbarItems:v13 animated:1];

    [(SearchResultsNavigationController *)self setToolbarHidden:0 animated:0];
  }
}

- (void)_setSearchBarEnabledState:(BOOL)a3
{
  v5 = [(SearchResultsNavigationController *)self transitionCoordinator];
  v6 = [(SearchResultsNavigationController *)self searchBar];
  v7 = [v6 superview];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10013C348;
  v8[3] = &unk_10020F218;
  v8[4] = self;
  v9 = a3;
  [v5 animateAlongsideTransitionInView:v7 animation:v8 completion:0];
}

- (void)todayPressed
{
  CalAnalyticsSendEvent();
  v8 = CUIKTodayDate();
  v3 = [(SearchResultsNavigationController *)self model];
  v4 = [v3 eventStore];
  v5 = [v4 timeZone];

  v6 = [[EKCalendarDate alloc] initWithDate:v8 timeZone:v5];
  v7 = [(SearchResultsNavigationController *)self searchResultsViewController];
  [v7 selectDate:v6 animated:1];
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