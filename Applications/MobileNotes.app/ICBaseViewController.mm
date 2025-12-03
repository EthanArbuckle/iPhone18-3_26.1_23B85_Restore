@interface ICBaseViewController
- (BOOL)isShowingActiveSearch;
- (ICBaseViewController)initWithViewMode:(int64_t)mode viewControllerManager:(id)manager viewControllerType:(int64_t)type;
- (ICDataSource)dataSource;
- (ICViewControllerManager)viewControllerManager;
- (id)searchNavigationTitle;
- (id)unsupportedFolderInfoButtonTapHandler;
- (void)addObservers;
- (void)configureSearchControllerIfNeeded;
- (void)deactivateSearch;
- (void)dealloc;
- (void)didPresentSearchController:(id)controller;
- (void)noteSearchViewControllerQueryDidChange:(id)change;
- (void)registerForTraitChanges;
- (void)setEditing:(BOOL)editing animated:(BOOL)animated;
- (void)setNoteContainerViewMode:(int64_t)mode;
- (void)startSearchBecomeFirstResponder:(BOOL)responder;
- (void)startSearchWithSearchQuery:(id)query searchTokens:(id)tokens searchScope:(unint64_t)scope becomeFirstResponder:(BOOL)responder;
- (void)updateScopeButtonTitles;
- (void)updateSearchControllerConfiguration;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)willDismissSearchController:(id)controller;
- (void)willPresentSearchController:(id)controller;
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
  navigationItem = [(ICBaseViewController *)self navigationItem];
  searchController = [navigationItem searchController];

  if ([(ICBaseViewController *)self shouldStartSearchWhenViewAppears])
  {
    showsSearchResultsController = 1;
  }

  else if ([searchController isActive])
  {
    showsSearchResultsController = [searchController showsSearchResultsController];
  }

  else
  {
    showsSearchResultsController = 0;
  }

  return showsSearchResultsController;
}

- (ICBaseViewController)initWithViewMode:(int64_t)mode viewControllerManager:(id)manager viewControllerType:(int64_t)type
{
  managerCopy = manager;
  v17.receiver = self;
  v17.super_class = ICBaseViewController;
  v9 = [(ICBaseViewController *)&v17 initWithNibName:0 bundle:0];
  if (v9)
  {
    persistenceConfiguration = [managerCopy persistenceConfiguration];
    legacyViewContext = [persistenceConfiguration legacyViewContext];
    legacyViewContext = v9->_legacyViewContext;
    v9->_legacyViewContext = legacyViewContext;

    persistenceConfiguration2 = [managerCopy persistenceConfiguration];
    modernViewContext = [persistenceConfiguration2 modernViewContext];
    modernViewContext = v9->_modernViewContext;
    v9->_modernViewContext = modernViewContext;

    v9->_noteContainerViewMode = mode;
    objc_storeWeak(&v9->_viewControllerManager, managerCopy);
    v9->_viewControllerType = type;
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

- (void)viewWillAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = ICBaseViewController;
  [(ICBaseViewController *)&v5 viewWillAppear:appear];
  [(ICBaseViewController *)self updateSearchControllerConfiguration];
  navigationController = [(ICBaseViewController *)self navigationController];
  [navigationController setOverrideUserInterfaceStyle:0];

  [(ICBaseViewController *)self setNeedsStatusBarAppearanceUpdate];
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = ICBaseViewController;
  [(ICBaseViewController *)&v4 viewDidAppear:appear];
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

- (void)startSearchBecomeFirstResponder:(BOOL)responder
{
  responderCopy = responder;
  if (([(ICBaseViewController *)self ic_isViewVisible]& 1) != 0)
  {
    collectionView = [(ICBaseViewController *)self collectionView];
    collectionView2 = [(ICBaseViewController *)self collectionView];
    [collectionView2 safeAreaInsets];
    [collectionView setContentOffset:0 animated:{0.0, -v7}];

    noteSearchViewController = [(ICBaseViewController *)self noteSearchViewController];
    [noteSearchViewController startSearchBecomeFirstResponder:responderCopy];
  }

  else
  {
    [(ICBaseViewController *)self setShouldStartSearchWhenViewAppears:1];
    [(ICBaseViewController *)self setShouldBecomeFirstResponderWhenStartingSearch:responderCopy];
    searchNavigationTitle = [(ICBaseViewController *)self searchNavigationTitle];
    navigationItem = [(ICBaseViewController *)self navigationItem];
    [navigationItem setTitle:searchNavigationTitle];

    noteSearchViewController = [(ICBaseViewController *)self navigationItem];
    searchController = [noteSearchViewController searchController];
    [searchController setShowsSearchResultsController:1];
  }
}

- (void)startSearchWithSearchQuery:(id)query searchTokens:(id)tokens searchScope:(unint64_t)scope becomeFirstResponder:(BOOL)responder
{
  responderCopy = responder;
  tokensCopy = tokens;
  queryCopy = query;
  [(ICBaseViewController *)self configureSearchControllerIfNeeded];
  noteSearchViewController = [(ICBaseViewController *)self noteSearchViewController];
  searchBar = [noteSearchViewController searchBar];
  [searchBar setSelectedScopeButtonIndex:scope];

  noteSearchViewController2 = [(ICBaseViewController *)self noteSearchViewController];
  searchBar2 = [noteSearchViewController2 searchBar];
  searchTextField = [searchBar2 searchTextField];
  [searchTextField setText:queryCopy];

  noteSearchViewController3 = [(ICBaseViewController *)self noteSearchViewController];
  searchBar3 = [noteSearchViewController3 searchBar];
  searchTextField2 = [searchBar3 searchTextField];
  [searchTextField2 setTokens:tokensCopy];

  [(ICBaseViewController *)self startSearchBecomeFirstResponder:responderCopy];
}

- (void)setEditing:(BOOL)editing animated:(BOOL)animated
{
  animatedCopy = animated;
  editingCopy = editing;
  v9.receiver = self;
  v9.super_class = ICBaseViewController;
  [ICBaseViewController setEditing:"setEditing:animated:" animated:?];
  noteSearchViewController = [(ICBaseViewController *)self noteSearchViewController];
  searchBar = [noteSearchViewController searchBar];
  [searchBar _setEnabled:!editingCopy animated:animatedCopy];
}

- (void)noteSearchViewControllerQueryDidChange:(id)change
{
  changeCopy = change;
  objc_opt_class();
  userInfo = [changeCopy userInfo];

  v6 = [userInfo objectForKeyedSubscript:@"ICNoteSearchViewControllerQueryDidChangeNotificationQueryExistsKey"];
  v7 = ICDynamicCast();
  bOOLValue = [v7 BOOLValue];

  if (+[UIDevice ic_isVision])
  {
    noteSearchViewController = [(ICBaseViewController *)self noteSearchViewController];
    showsFloatingSuggestions = [noteSearchViewController showsFloatingSuggestions];

    if (showsFloatingSuggestions)
    {
      collectionView = [(ICBaseViewController *)self collectionView];
      [collectionView setHidden:bOOLValue];
    }
  }
}

- (id)searchNavigationTitle
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"Search" value:&stru_100661CF0 table:0];

  return v3;
}

- (void)willPresentSearchController:(id)controller
{
  navigationController = [(ICBaseViewController *)self navigationController];
  topViewController = [navigationController topViewController];

  if (topViewController == self)
  {
    presentedViewController = [(ICBaseViewController *)self presentedViewController];
    [presentedViewController dismissViewControllerAnimated:1 completion:0];

    [(ICBaseViewController *)self updateScopeButtonTitles];
    LODWORD(presentedViewController) = _UISolariumEnabled();
    navigationController2 = [(ICBaseViewController *)self navigationController];
    [navigationController2 setToolbarHidden:presentedViewController ^ 1];

    collectionView = [(ICBaseViewController *)self collectionView];
    noteSearchViewController = [(ICBaseViewController *)self noteSearchViewController];
    [noteSearchViewController setObservableScrollView:collectionView];

    navigationItem = [(ICBaseViewController *)self navigationItem];
    searchController = [navigationItem searchController];
    [searchController setShowsSearchResultsController:1];

    if (+[UIDevice ic_isVision])
    {
      noteSearchViewController2 = [(ICBaseViewController *)self noteSearchViewController];
      showsFloatingSuggestions = [noteSearchViewController2 showsFloatingSuggestions];

      if ((showsFloatingSuggestions & 1) == 0)
      {
        collectionView2 = [(ICBaseViewController *)self collectionView];
        [collectionView2 setHidden:1];
      }
    }
  }
}

- (void)didPresentSearchController:(id)controller
{
  navigationController = [(ICBaseViewController *)self navigationController];
  topViewController = [navigationController topViewController];

  if (topViewController == self)
  {

    [(ICBaseViewController *)self updateNavigationTitle];
  }
}

- (void)willDismissSearchController:(id)controller
{
  navigationController = [(ICBaseViewController *)self navigationController];
  topViewController = [navigationController topViewController];

  if (topViewController == self)
  {
    v6 = +[UIDevice ic_isVision];
    navigationController2 = [(ICBaseViewController *)self navigationController];
    [navigationController2 setToolbarHidden:v6];

    navigationItem = [(ICBaseViewController *)self navigationItem];
    searchController = [navigationItem searchController];
    [searchController setShowsSearchResultsController:0];

    [(ICBaseViewController *)self updateNavigationTitle];
    if (+[UIDevice ic_isVision])
    {
      noteSearchViewController = [(ICBaseViewController *)self noteSearchViewController];
      showsFloatingSuggestions = [noteSearchViewController showsFloatingSuggestions];

      if ((showsFloatingSuggestions & 1) == 0)
      {
        collectionView = [(ICBaseViewController *)self collectionView];
        [collectionView setHidden:0];
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
  dataSource = [(ICBaseViewController *)self dataSource];
  [v8 addObserver:self selector:"dataSourceDataDidUpdate:" name:v3 object:dataSource];

  v5 = ICDataSourceDataUpdateDidRenderNotification;
  dataSource2 = [(ICBaseViewController *)self dataSource];
  [v8 addObserver:self selector:"dataSourceDataUpdateDidRender:" name:v5 object:dataSource2];

  noteSearchViewController = [(ICBaseViewController *)self noteSearchViewController];
  [v8 addObserver:self selector:"noteSearchViewControllerQueryDidChange:" name:@"ICNoteSearchViewControllerQueryDidChangeNotification" object:noteSearchViewController];
}

- (void)registerForTraitChanges
{
  v5 = objc_opt_class();
  v3 = [NSArray arrayWithObjects:&v5 count:1];
  v4 = [(ICBaseViewController *)self registerForTraitChanges:v3 withAction:"updateSearchControllerConfiguration"];
}

- (void)updateSearchControllerConfiguration
{
  viewControllerManager = [(ICBaseViewController *)self viewControllerManager];
  hasCompactWidth = [viewControllerManager hasCompactWidth];

  viewControllerType = [(ICBaseViewController *)self viewControllerType];
  viewControllerType2 = [(ICBaseViewController *)self viewControllerType];
  if (viewControllerType && (viewControllerType2 != 2 || ((hasCompactWidth ^ 1) & 1) != 0))
  {
    if (!((viewControllerType2 != 2) | hasCompactWidth & 1))
    {
      navigationItem = [(ICBaseViewController *)self navigationItem];
      searchController = [navigationItem searchController];
      isActive = [searchController isActive];

      if (isActive)
      {
        [(ICBaseViewController *)self deactivateSearch];
      }

      navigationItem2 = [(ICBaseViewController *)self navigationItem];
      [navigationItem2 setSearchController:0];

      [(ICBaseViewController *)self setNoteSearchViewController:0];
    }
  }

  else
  {

    [(ICBaseViewController *)self configureSearchControllerIfNeeded];
  }
}

- (void)setNoteContainerViewMode:(int64_t)mode
{
  self->_noteContainerViewMode = mode;
  noteSearchViewController = [(ICBaseViewController *)self noteSearchViewController];
  [noteSearchViewController setNoteContainerViewMode:mode];
}

- (void)configureSearchControllerIfNeeded
{
  noteSearchViewController = [(ICBaseViewController *)self noteSearchViewController];

  if (!noteSearchViewController)
  {
    v4 = [ICNoteSearchViewController alloc];
    noteContainerViewMode = [(ICBaseViewController *)self noteContainerViewMode];
    viewControllerManager = [(ICBaseViewController *)self viewControllerManager];
    v7 = [(ICNoteSearchViewController *)v4 initWithViewMode:noteContainerViewMode viewControllerManager:viewControllerManager];
    [(ICBaseViewController *)self setNoteSearchViewController:v7];

    v8 = [UISearchController alloc];
    noteSearchViewController2 = [(ICBaseViewController *)self noteSearchViewController];
    v17 = [v8 initWithSearchResultsController:noteSearchViewController2];

    noteSearchViewController3 = [(ICBaseViewController *)self noteSearchViewController];
    [v17 setSearchResultsUpdater:noteSearchViewController3];

    [v17 setAutomaticallyShowsSearchResultsController:0];
    [v17 setDelegate:self];
    searchBar = [v17 searchBar];
    [searchBar setCenterPlaceholder:0];
    if (_UISolariumEnabled() && +[UIDevice ic_isiPad])
    {
      IsDoneButtonHidingDisabled = ICInternalSettingsIsDoneButtonHidingDisabled();
    }

    else
    {
      IsDoneButtonHidingDisabled = 1;
    }

    [searchBar setShowsCancelButton:IsDoneButtonHidingDisabled];
    noteSearchViewController4 = [(ICBaseViewController *)self noteSearchViewController];
    [noteSearchViewController4 setSearchBar:searchBar];

    noteSearchViewController5 = [(ICBaseViewController *)self noteSearchViewController];
    [noteSearchViewController5 setSearchController:v17];

    navigationItem = [(ICBaseViewController *)self navigationItem];
    [navigationItem setSearchController:v17];

    collectionView = [(ICBaseViewController *)self collectionView];
    [collectionView layoutIfNeeded];
  }
}

- (void)updateScopeButtonTitles
{
  if (![(ICBaseViewController *)self viewControllerType])
  {
    viewControllerManager = [(ICBaseViewController *)self viewControllerManager];
    countOfAllVisibleAccounts = [viewControllerManager countOfAllVisibleAccounts];

    navigationItem = [(ICBaseViewController *)self navigationItem];
    searchController = [navigationItem searchController];
    searchBar = [searchController searchBar];
    scopeButtonTitles = [searchBar scopeButtonTitles];
    v9 = [scopeButtonTitles count];

    if (countOfAllVisibleAccounts < 2 || v9)
    {
      if (countOfAllVisibleAccounts > 1 || !v9)
      {
        return;
      }

      navigationItem2 = [(ICBaseViewController *)self navigationItem];
      searchController2 = [navigationItem2 searchController];
      searchBar2 = [searchController2 searchBar];
      [searchBar2 setScopeButtonTitles:&__NSArray0__struct];
    }

    else
    {
      navigationItem2 = [NSMutableArray arrayWithCapacity:2];
      v10 = +[NSBundle mainBundle];
      v11 = [v10 localizedStringForKey:@"All Accounts" value:&stru_100661CF0 table:0];
      [navigationItem2 insertObject:v11 atIndex:0];

      v12 = +[NSBundle mainBundle];
      v13 = [v12 localizedStringForKey:@"Current Account" value:&stru_100661CF0 table:0];
      [navigationItem2 insertObject:v13 atIndex:1];

      searchController2 = [navigationItem2 copy];
      searchBar2 = [(ICBaseViewController *)self navigationItem];
      searchController3 = [searchBar2 searchController];
      searchBar3 = [searchController3 searchBar];
      [searchBar3 setScopeButtonTitles:searchController2];
    }
  }
}

- (void)deactivateSearch
{
  navigationItem = [(ICBaseViewController *)self navigationItem];
  searchController = [navigationItem searchController];
  [searchController setActive:0];
}

- (ICDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

@end