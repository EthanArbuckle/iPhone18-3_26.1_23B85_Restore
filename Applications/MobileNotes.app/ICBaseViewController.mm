@interface ICBaseViewController
- (BOOL)isShowingActiveSearch;
- (ICBaseViewController)initWithViewMode:(int64_t)a3 viewControllerManager:(id)a4 viewControllerType:(int64_t)a5;
- (ICDataSource)dataSource;
- (ICViewControllerManager)viewControllerManager;
- (id)searchNavigationTitle;
- (id)unsupportedFolderInfoButtonTapHandler;
- (void)addObservers;
- (void)configureSearchControllerIfNeeded;
- (void)deactivateSearch;
- (void)dealloc;
- (void)didPresentSearchController:(id)a3;
- (void)noteSearchViewControllerQueryDidChange:(id)a3;
- (void)registerForTraitChanges;
- (void)setEditing:(BOOL)a3 animated:(BOOL)a4;
- (void)setNoteContainerViewMode:(int64_t)a3;
- (void)startSearchBecomeFirstResponder:(BOOL)a3;
- (void)startSearchWithSearchQuery:(id)a3 searchTokens:(id)a4 searchScope:(unint64_t)a5 becomeFirstResponder:(BOOL)a6;
- (void)updateScopeButtonTitles;
- (void)updateSearchControllerConfiguration;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)willDismissSearchController:(id)a3;
- (void)willPresentSearchController:(id)a3;
@end

@implementation ICBaseViewController

- (ICViewControllerManager)viewControllerManager
{
  WeakRetained = objc_loadWeakRetained(&self->_viewControllerManager);

  return WeakRetained;
}

- (id)unsupportedFolderInfoButtonTapHandler
{
  objc_initWeak(&location, self);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100068BA8;
  v4[3] = &unk_100646A48;
  objc_copyWeak(&v5, &location);
  v2 = objc_retainBlock(v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);

  return v2;
}

- (BOOL)isShowingActiveSearch
{
  v3 = [(ICBaseViewController *)self navigationItem];
  v4 = [v3 searchController];

  if ([(ICBaseViewController *)self shouldStartSearchWhenViewAppears])
  {
    v5 = 1;
  }

  else if ([v4 isActive])
  {
    v5 = [v4 showsSearchResultsController];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (ICBaseViewController)initWithViewMode:(int64_t)a3 viewControllerManager:(id)a4 viewControllerType:(int64_t)a5
{
  v8 = a4;
  v17.receiver = self;
  v17.super_class = ICBaseViewController;
  v9 = [(ICBaseViewController *)&v17 initWithNibName:0 bundle:0];
  if (v9)
  {
    v10 = [v8 persistenceConfiguration];
    v11 = [v10 legacyViewContext];
    legacyViewContext = v9->_legacyViewContext;
    v9->_legacyViewContext = v11;

    v13 = [v8 persistenceConfiguration];
    v14 = [v13 modernViewContext];
    modernViewContext = v9->_modernViewContext;
    v9->_modernViewContext = v14;

    v9->_noteContainerViewMode = a3;
    objc_storeWeak(&v9->_viewControllerManager, v8);
    v9->_viewControllerType = a5;
  }

  return v9;
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = ICBaseViewController;
  [(ICBaseViewController *)&v3 viewDidLoad];
  [(ICBaseViewController *)self updateSearchControllerConfiguration];
  [(ICBaseViewController *)self addObservers];
  [(ICBaseViewController *)self registerForTraitChanges];
}

- (void)viewWillAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = ICBaseViewController;
  [(ICBaseViewController *)&v5 viewWillAppear:a3];
  [(ICBaseViewController *)self updateSearchControllerConfiguration];
  v4 = [(ICBaseViewController *)self navigationController];
  [v4 setOverrideUserInterfaceStyle:0];

  [(ICBaseViewController *)self setNeedsStatusBarAppearanceUpdate];
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = ICBaseViewController;
  [(ICBaseViewController *)&v4 viewDidAppear:a3];
  if ([(ICBaseViewController *)self shouldStartSearchWhenViewAppears])
  {
    [(ICBaseViewController *)self startSearchBecomeFirstResponder:[(ICBaseViewController *)self shouldBecomeFirstResponderWhenStartingSearch]];
    [(ICBaseViewController *)self setShouldStartSearchWhenViewAppears:0];
    [(ICBaseViewController *)self setShouldBecomeFirstResponderWhenStartingSearch:0];
  }
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = ICBaseViewController;
  [(ICBaseViewController *)&v4 dealloc];
}

- (void)startSearchBecomeFirstResponder:(BOOL)a3
{
  v3 = a3;
  if (([(ICBaseViewController *)self ic_isViewVisible]& 1) != 0)
  {
    v5 = [(ICBaseViewController *)self collectionView];
    v6 = [(ICBaseViewController *)self collectionView];
    [v6 safeAreaInsets];
    [v5 setContentOffset:0 animated:{0.0, -v7}];

    v11 = [(ICBaseViewController *)self noteSearchViewController];
    [v11 startSearchBecomeFirstResponder:v3];
  }

  else
  {
    [(ICBaseViewController *)self setShouldStartSearchWhenViewAppears:1];
    [(ICBaseViewController *)self setShouldBecomeFirstResponderWhenStartingSearch:v3];
    v8 = [(ICBaseViewController *)self searchNavigationTitle];
    v9 = [(ICBaseViewController *)self navigationItem];
    [v9 setTitle:v8];

    v11 = [(ICBaseViewController *)self navigationItem];
    v10 = [v11 searchController];
    [v10 setShowsSearchResultsController:1];
  }
}

- (void)startSearchWithSearchQuery:(id)a3 searchTokens:(id)a4 searchScope:(unint64_t)a5 becomeFirstResponder:(BOOL)a6
{
  v6 = a6;
  v10 = a4;
  v11 = a3;
  [(ICBaseViewController *)self configureSearchControllerIfNeeded];
  v12 = [(ICBaseViewController *)self noteSearchViewController];
  v13 = [v12 searchBar];
  [v13 setSelectedScopeButtonIndex:a5];

  v14 = [(ICBaseViewController *)self noteSearchViewController];
  v15 = [v14 searchBar];
  v16 = [v15 searchTextField];
  [v16 setText:v11];

  v17 = [(ICBaseViewController *)self noteSearchViewController];
  v18 = [v17 searchBar];
  v19 = [v18 searchTextField];
  [v19 setTokens:v10];

  [(ICBaseViewController *)self startSearchBecomeFirstResponder:v6];
}

- (void)setEditing:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ICBaseViewController;
  [ICBaseViewController setEditing:"setEditing:animated:" animated:?];
  v7 = [(ICBaseViewController *)self noteSearchViewController];
  v8 = [v7 searchBar];
  [v8 _setEnabled:!v5 animated:v4];
}

- (void)noteSearchViewControllerQueryDidChange:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = [v4 userInfo];

  v6 = [v5 objectForKeyedSubscript:@"ICNoteSearchViewControllerQueryDidChangeNotificationQueryExistsKey"];
  v7 = ICDynamicCast();
  v8 = [v7 BOOLValue];

  if (+[UIDevice ic_isVision])
  {
    v9 = [(ICBaseViewController *)self noteSearchViewController];
    v10 = [v9 showsFloatingSuggestions];

    if (v10)
    {
      v11 = [(ICBaseViewController *)self collectionView];
      [v11 setHidden:v8];
    }
  }
}

- (id)searchNavigationTitle
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"Search" value:&stru_100661CF0 table:0];

  return v3;
}

- (void)willPresentSearchController:(id)a3
{
  v4 = [(ICBaseViewController *)self navigationController];
  v5 = [v4 topViewController];

  if (v5 == self)
  {
    v6 = [(ICBaseViewController *)self presentedViewController];
    [v6 dismissViewControllerAnimated:1 completion:0];

    [(ICBaseViewController *)self updateScopeButtonTitles];
    LODWORD(v6) = _UISolariumEnabled();
    v7 = [(ICBaseViewController *)self navigationController];
    [v7 setToolbarHidden:v6 ^ 1];

    v8 = [(ICBaseViewController *)self collectionView];
    v9 = [(ICBaseViewController *)self noteSearchViewController];
    [v9 setObservableScrollView:v8];

    v10 = [(ICBaseViewController *)self navigationItem];
    v11 = [v10 searchController];
    [v11 setShowsSearchResultsController:1];

    if (+[UIDevice ic_isVision])
    {
      v12 = [(ICBaseViewController *)self noteSearchViewController];
      v13 = [v12 showsFloatingSuggestions];

      if ((v13 & 1) == 0)
      {
        v14 = [(ICBaseViewController *)self collectionView];
        [v14 setHidden:1];
      }
    }
  }
}

- (void)didPresentSearchController:(id)a3
{
  v4 = [(ICBaseViewController *)self navigationController];
  v5 = [v4 topViewController];

  if (v5 == self)
  {

    [(ICBaseViewController *)self updateNavigationTitle];
  }
}

- (void)willDismissSearchController:(id)a3
{
  v4 = [(ICBaseViewController *)self navigationController];
  v5 = [v4 topViewController];

  if (v5 == self)
  {
    v6 = +[UIDevice ic_isVision];
    v7 = [(ICBaseViewController *)self navigationController];
    [v7 setToolbarHidden:v6];

    v8 = [(ICBaseViewController *)self navigationItem];
    v9 = [v8 searchController];
    [v9 setShowsSearchResultsController:0];

    [(ICBaseViewController *)self updateNavigationTitle];
    if (+[UIDevice ic_isVision])
    {
      v10 = [(ICBaseViewController *)self noteSearchViewController];
      v11 = [v10 showsFloatingSuggestions];

      if ((v11 & 1) == 0)
      {
        v12 = [(ICBaseViewController *)self collectionView];
        [v12 setHidden:0];
      }
    }

    v13 = +[NSNotificationCenter defaultCenter];
    [v13 postNotificationName:@"ICBaseViewControllerWillDismissSearchControllerNotification" object:self];
  }
}

- (void)addObservers
{
  v8 = +[NSNotificationCenter defaultCenter];
  v3 = ICDataSourceDataDidUpdateNotification;
  v4 = [(ICBaseViewController *)self dataSource];
  [v8 addObserver:self selector:"dataSourceDataDidUpdate:" name:v3 object:v4];

  v5 = ICDataSourceDataUpdateDidRenderNotification;
  v6 = [(ICBaseViewController *)self dataSource];
  [v8 addObserver:self selector:"dataSourceDataUpdateDidRender:" name:v5 object:v6];

  v7 = [(ICBaseViewController *)self noteSearchViewController];
  [v8 addObserver:self selector:"noteSearchViewControllerQueryDidChange:" name:@"ICNoteSearchViewControllerQueryDidChangeNotification" object:v7];
}

- (void)registerForTraitChanges
{
  v5 = objc_opt_class();
  v3 = [NSArray arrayWithObjects:&v5 count:1];
  v4 = [(ICBaseViewController *)self registerForTraitChanges:v3 withAction:"updateSearchControllerConfiguration"];
}

- (void)updateSearchControllerConfiguration
{
  v3 = [(ICBaseViewController *)self viewControllerManager];
  v4 = [v3 hasCompactWidth];

  v5 = [(ICBaseViewController *)self viewControllerType];
  v6 = [(ICBaseViewController *)self viewControllerType];
  if (v5 && (v6 != 2 || ((v4 ^ 1) & 1) != 0))
  {
    if (!((v6 != 2) | v4 & 1))
    {
      v7 = [(ICBaseViewController *)self navigationItem];
      v8 = [v7 searchController];
      v9 = [v8 isActive];

      if (v9)
      {
        [(ICBaseViewController *)self deactivateSearch];
      }

      v10 = [(ICBaseViewController *)self navigationItem];
      [v10 setSearchController:0];

      [(ICBaseViewController *)self setNoteSearchViewController:0];
    }
  }

  else
  {

    [(ICBaseViewController *)self configureSearchControllerIfNeeded];
  }
}

- (void)setNoteContainerViewMode:(int64_t)a3
{
  self->_noteContainerViewMode = a3;
  v4 = [(ICBaseViewController *)self noteSearchViewController];
  [v4 setNoteContainerViewMode:a3];
}

- (void)configureSearchControllerIfNeeded
{
  v3 = [(ICBaseViewController *)self noteSearchViewController];

  if (!v3)
  {
    v4 = [ICNoteSearchViewController alloc];
    v5 = [(ICBaseViewController *)self noteContainerViewMode];
    v6 = [(ICBaseViewController *)self viewControllerManager];
    v7 = [(ICNoteSearchViewController *)v4 initWithViewMode:v5 viewControllerManager:v6];
    [(ICBaseViewController *)self setNoteSearchViewController:v7];

    v8 = [UISearchController alloc];
    v9 = [(ICBaseViewController *)self noteSearchViewController];
    v17 = [v8 initWithSearchResultsController:v9];

    v10 = [(ICBaseViewController *)self noteSearchViewController];
    [v17 setSearchResultsUpdater:v10];

    [v17 setAutomaticallyShowsSearchResultsController:0];
    [v17 setDelegate:self];
    v11 = [v17 searchBar];
    [v11 setCenterPlaceholder:0];
    if (_UISolariumEnabled() && +[UIDevice ic_isiPad])
    {
      IsDoneButtonHidingDisabled = ICInternalSettingsIsDoneButtonHidingDisabled();
    }

    else
    {
      IsDoneButtonHidingDisabled = 1;
    }

    [v11 setShowsCancelButton:IsDoneButtonHidingDisabled];
    v13 = [(ICBaseViewController *)self noteSearchViewController];
    [v13 setSearchBar:v11];

    v14 = [(ICBaseViewController *)self noteSearchViewController];
    [v14 setSearchController:v17];

    v15 = [(ICBaseViewController *)self navigationItem];
    [v15 setSearchController:v17];

    v16 = [(ICBaseViewController *)self collectionView];
    [v16 layoutIfNeeded];
  }
}

- (void)updateScopeButtonTitles
{
  if (![(ICBaseViewController *)self viewControllerType])
  {
    v3 = [(ICBaseViewController *)self viewControllerManager];
    v4 = [v3 countOfAllVisibleAccounts];

    v5 = [(ICBaseViewController *)self navigationItem];
    v6 = [v5 searchController];
    v7 = [v6 searchBar];
    v8 = [v7 scopeButtonTitles];
    v9 = [v8 count];

    if (v4 < 2 || v9)
    {
      if (v4 > 1 || !v9)
      {
        return;
      }

      v18 = [(ICBaseViewController *)self navigationItem];
      v14 = [v18 searchController];
      v15 = [v14 searchBar];
      [v15 setScopeButtonTitles:&__NSArray0__struct];
    }

    else
    {
      v18 = [NSMutableArray arrayWithCapacity:2];
      v10 = +[NSBundle mainBundle];
      v11 = [v10 localizedStringForKey:@"All Accounts" value:&stru_100661CF0 table:0];
      [v18 insertObject:v11 atIndex:0];

      v12 = +[NSBundle mainBundle];
      v13 = [v12 localizedStringForKey:@"Current Account" value:&stru_100661CF0 table:0];
      [v18 insertObject:v13 atIndex:1];

      v14 = [v18 copy];
      v15 = [(ICBaseViewController *)self navigationItem];
      v16 = [v15 searchController];
      v17 = [v16 searchBar];
      [v17 setScopeButtonTitles:v14];
    }
  }
}

- (void)deactivateSearch
{
  v3 = [(ICBaseViewController *)self navigationItem];
  v2 = [v3 searchController];
  [v2 setActive:0];
}

- (ICDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

@end