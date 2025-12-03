@interface ICNoteSearchViewController
- (BOOL)isActive;
- (BOOL)searchBarContainsQuery;
- (BOOL)showsFloatingSuggestions;
- (BOOL)textFieldShouldClear:(id)clear;
- (ICNoteSearchViewController)initWithViewMode:(int64_t)mode viewControllerManager:(id)manager;
- (ICNoteSearchViewControllerCollectionViewDelegate)collectionViewDelegate;
- (ICSearchSuggestionsContext)searchContext;
- (UIScrollView)observableScrollView;
- (UISearchBar)searchBar;
- (UISearchController)searchController;
- (id)contentUnavailableConfigurationState;
- (unint64_t)state;
- (void)_dci_updateSearchResultsForSearchController:(id)controller selectingSearchSuggestion:(id)suggestion;
- (void)cancelSearch;
- (void)dealloc;
- (void)processSelectedSearchSuggestion:(id)suggestion;
- (void)registerForTraitChanges;
- (void)searchBar:(id)bar selectedScopeButtonIndexDidChange:(int64_t)change;
- (void)searchBarSearchButtonClicked:(id)clicked;
- (void)searchDataSourceDidUpdateSuggestions:(id)suggestions;
- (void)setAccountIdentifier:(id)identifier;
- (void)setNoteContainerViewMode:(int64_t)mode;
- (void)setSearchBar:(id)bar;
- (void)setShowCompactFloatingSuggestions:(BOOL)suggestions;
- (void)setSuggestions:(id)suggestions;
- (void)startSearchBecomeFirstResponder:(BOOL)responder;
- (void)submitSearchResultSelectEventWithSearchResult:(id)result diffableDataSourceSnapshot:(id)snapshot;
- (void)updateCollectionViewForCurrentViewMode;
- (void)updateContentUnavailableConfigurationUsingState:(id)state;
- (void)updateFromSearchContext;
- (void)updateSearchAccountIdentifierWithSelectedScope:(unint64_t)scope;
- (void)updateSearchResultsForSearchController:(id)controller;
- (void)updateSearchResultsVisibility;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation ICNoteSearchViewController

- (ICNoteSearchViewController)initWithViewMode:(int64_t)mode viewControllerManager:(id)manager
{
  managerCopy = manager;
  v17.receiver = self;
  v17.super_class = ICNoteSearchViewController;
  v7 = [(ICNoteResultsViewController *)&v17 initWithViewMode:mode viewControllerManager:managerCopy viewControllerType:1];
  if (v7)
  {
    v8 = [ICNASearchResultExposureReporter alloc];
    window = [managerCopy window];
    v10 = [v8 initWithWindow:window];
    searchResultExposureReporter = v7->_searchResultExposureReporter;
    v7->_searchResultExposureReporter = v10;

    if ((+[ICSearchSuggestionsContext supportsSearchSuggestions]& 1) == 0)
    {
      v12 = [ICSearchSuggestionController alloc];
      view = [(ICNoteSearchViewController *)v7 view];
      v14 = [(ICSearchSuggestionController *)v12 initWithParentView:view delegate:v7];
      suggestionsController = v7->_suggestionsController;
      v7->_suggestionsController = v14;
    }

    v7->_showCompactFloatingSuggestions = 0;
    [(ICNoteSearchViewController *)v7 registerForTraitChanges];
  }

  return v7;
}

- (void)viewDidLoad
{
  v13.receiver = self;
  v13.super_class = ICNoteSearchViewController;
  [(ICNoteResultsViewController *)&v13 viewDidLoad];
  [(ICNoteSearchViewController *)self updateCollectionViewForCurrentViewMode];
  objc_initWeak(&location, self);
  v3 = +[ICNoteContext sharedContext];
  crossProcessChangeCoordinator = [v3 crossProcessChangeCoordinator];
  v5 = ICLockedNotesModeMigratorDidMigrateNoteNotification;
  v7 = _NSConcreteStackBlock;
  v8 = 3221225472;
  v9 = sub_10007DE8C;
  v10 = &unk_100645C78;
  objc_copyWeak(&v11, &location);
  v6 = [crossProcessChangeCoordinator registerForCrossProcessNotificationName:v5 block:&v7];
  [(ICNoteSearchViewController *)self setNoteMigrationObserver:v6, v7, v8, v9, v10];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

- (void)viewWillAppear:(BOOL)appear
{
  v7.receiver = self;
  v7.super_class = ICNoteSearchViewController;
  [(ICNoteResultsViewController *)&v7 viewWillAppear:appear];
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 postNotificationName:@"ICNoteSearchViewControllerDidUpdateSearchAppearanceNotification" object:0];

  if (+[ICSearchSuggestionsContext supportsSearchSuggestions])
  {
    searchController = [(ICNoteSearchViewController *)self searchController];
    [(ICNoteSearchViewController *)self updateSearchResultsForSearchController:searchController];
  }

  [(ICNoteSearchViewController *)self updateSearchResultsVisibility];
  v6 = +[NotesApp sharedNotesApp];
  [v6 refreshNotesIfNeededForCollection:0];
}

- (void)viewDidAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = ICNoteSearchViewController;
  [(ICNoteResultsViewController *)&v5 viewDidAppear:appear];
  eventReporter = [(ICNoteSearchViewController *)self eventReporter];
  [eventReporter submitSearchAttemptEvent];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v5 = os_log_create("com.apple.notes", "SearchIndexer");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_1004D9DB4(v5, v6, v7, v8, v9, v10, v11, v12);
  }

  searchDataSource = [(ICNoteSearchViewController *)self searchDataSource];
  [searchDataSource cancelSearchQuery];

  v14 = +[NSNotificationCenter defaultCenter];
  [v14 postNotificationName:@"ICNoteSearchViewControllerDidUpdateSearchAppearanceNotification" object:0];

  v15.receiver = self;
  v15.super_class = ICNoteSearchViewController;
  [(ICNoteSearchViewController *)&v15 viewWillDisappear:disappearCopy];
}

- (void)dealloc
{
  v3 = +[ICNoteContext sharedContext];
  crossProcessChangeCoordinator = [v3 crossProcessChangeCoordinator];
  noteMigrationObserver = [(ICNoteSearchViewController *)self noteMigrationObserver];
  [crossProcessChangeCoordinator removeCrossProcessNotificationObserver:noteMigrationObserver];

  v6.receiver = self;
  v6.super_class = ICNoteSearchViewController;
  [(ICNoteResultsViewController *)&v6 dealloc];
}

- (void)registerForTraitChanges
{
  v4 = +[UITraitCollection ic_traitsAffectingSizeAndColor];
  v3 = [(ICNoteSearchViewController *)self registerForTraitChanges:v4 withAction:"updateSearchResultsVisibility"];
}

- (void)setSearchBar:(id)bar
{
  barCopy = bar;
  v4 = objc_storeWeak(&self->_searchBar, barCopy);
  [barCopy setDelegate:self];

  WeakRetained = objc_loadWeakRetained(&self->_searchBar);
  searchTextField = [WeakRetained searchTextField];
  [searchTextField setDelegate:self];
}

- (BOOL)isActive
{
  searchController = [(ICNoteSearchViewController *)self searchController];
  isActive = [searchController isActive];

  return isActive;
}

- (void)setAccountIdentifier:(id)identifier
{
  objc_storeStrong(&self->_accountIdentifier, identifier);
  searchBar = [(ICNoteSearchViewController *)self searchBar];
  -[ICNoteSearchViewController updateSearchAccountIdentifierWithSelectedScope:](self, "updateSearchAccountIdentifierWithSelectedScope:", [searchBar selectedScopeButtonIndex]);
}

- (void)setNoteContainerViewMode:(int64_t)mode
{
  v4.receiver = self;
  v4.super_class = ICNoteSearchViewController;
  [(ICBaseViewController *)&v4 setNoteContainerViewMode:mode];
  [(ICNoteSearchViewController *)self updateCollectionViewForCurrentViewMode];
}

- (void)updateCollectionViewForCurrentViewMode
{
  collectionView = [(ICNoteResultsViewController *)self collectionView];

  if (!collectionView)
  {
    v4 = [ICNoteSearchCollectionView alloc];
    legacyViewContext = [(ICBaseViewController *)self legacyViewContext];
    modernViewContext = [(ICBaseViewController *)self modernViewContext];
    viewControllerManager = [(ICBaseViewController *)self viewControllerManager];
    v8 = [(ICNoteBrowseCollectionView *)v4 initWithPresentingViewController:self legacyManagedObjectContext:legacyViewContext modernManagedObjectContext:modernViewContext viewControllerManager:viewControllerManager];
    [(ICNoteResultsViewController *)self setCollectionView:v8];

    collectionViewDelegate = [(ICNoteSearchViewController *)self collectionViewDelegate];
    collectionView2 = [(ICNoteResultsViewController *)self collectionView];
    [collectionView2 setDelegate:collectionViewDelegate];

    collectionView3 = [(ICNoteResultsViewController *)self collectionView];
    [collectionView3 setShouldShowFolderName:1];

    view = [(ICNoteSearchViewController *)self view];
    collectionView4 = [(ICNoteResultsViewController *)self collectionView];
    [view addSubview:collectionView4];

    collectionView5 = [(ICNoteResultsViewController *)self collectionView];
    [collectionView5 ic_addAnchorsToFillSuperviewWithHorizontalPadding:1 verticalPadding:0 usesSafeAreaLayoutGuideHorizontally:0.0 usesSafeAreaLayoutGuideVertically:0.0];
  }

  v15 = [ICNoteSearchDataSource alloc];
  collectionView6 = [(ICNoteResultsViewController *)self collectionView];
  noteContainerViewMode = [(ICBaseViewController *)self noteContainerViewMode];
  viewControllerManager2 = [(ICBaseViewController *)self viewControllerManager];
  legacyViewContext2 = [(ICBaseViewController *)self legacyViewContext];
  modernViewContext2 = [(ICBaseViewController *)self modernViewContext];
  searchContext = [(ICNoteSearchViewController *)self searchContext];
  v22 = [(ICNoteSearchDataSource *)v15 initWithCollectionView:collectionView6 noteContainerViewMode:noteContainerViewMode viewControllerManager:viewControllerManager2 legacyViewContext:legacyViewContext2 modernViewContext:modernViewContext2 searchContext:searchContext];
  [(ICNoteSearchViewController *)self setSearchDataSource:v22];

  searchDataSource = [(ICNoteSearchViewController *)self searchDataSource];
  [searchDataSource setDelegate:self];

  dataSource = [(ICNoteSearchViewController *)self dataSource];
  collectionViewDiffableDataSource = [dataSource collectionViewDiffableDataSource];
  collectionView7 = [(ICNoteResultsViewController *)self collectionView];
  [collectionView7 setDiffableDataSource:collectionViewDiffableDataSource];

  noteContainerViewMode2 = [(ICBaseViewController *)self noteContainerViewMode];
  collectionView8 = [(ICNoteResultsViewController *)self collectionView];
  [collectionView8 setNoteContainerViewMode:noteContainerViewMode2];

  v29 = [(ICBaseViewController *)self noteContainerViewMode]== 0;
  collectionView9 = [(ICNoteResultsViewController *)self collectionView];
  [collectionView9 setSelectionFollowsFocus:v29];
}

- (void)searchBar:(id)bar selectedScopeButtonIndexDidChange:(int64_t)change
{
  if ([(ICNoteSearchViewController *)self searchBarContainsQuery])
  {
    v6 = os_log_create("com.apple.notes", "SearchIndexer");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      sub_1004D9DEC(v6, v7, v8, v9, v10, v11, v12, v13);
    }

    searchDataSource = [(ICNoteSearchViewController *)self searchDataSource];
    [searchDataSource cancelSearchQuery];
  }

  [(ICNoteSearchViewController *)self updateSearchAccountIdentifierWithSelectedScope:change];
}

- (void)searchBarSearchButtonClicked:(id)clicked
{
  UIAccessibilityPostNotification(UIAccessibilityLayoutChangedNotification, clicked);
  searchDataSource = [(ICNoteSearchViewController *)self searchDataSource];
  [searchDataSource switchToMode:2];
}

- (BOOL)textFieldShouldClear:(id)clear
{
  if (_UISolariumEnabled() && +[UIDevice ic_isiPad]&& (ICInternalSettingsIsDoneButtonHidingDisabled() & 1) == 0)
  {
    searchController = [(ICNoteSearchViewController *)self searchController];
    [searchController setActive:0];
  }

  return 1;
}

- (void)updateSearchResultsForSearchController:(id)controller
{
  controllerCopy = controller;
  if ([controllerCopy isBeingPresented] && !-[ICNoteSearchViewController searchBarContainsQuery](self, "searchBarContainsQuery") && !+[ICSearchSuggestionsContext supportsSearchSuggestions](ICSearchSuggestionsContext, "supportsSearchSuggestions"))
  {
    goto LABEL_17;
  }

  searchBar = [controllerCopy searchBar];
  text = [searchBar text];

  searchBar2 = [controllerCopy searchBar];
  searchTextField = [searchBar2 searchTextField];
  tokens = [searchTextField tokens];

  v47[0] = _NSConcreteStackBlock;
  v47[1] = 3221225472;
  v47[2] = sub_10007ED80;
  v47[3] = &unk_1006470E0;
  v10 = objc_alloc_init(NSMutableArray);
  v48 = v10;
  v45 = tokens;
  [tokens enumerateObjectsUsingBlock:v47];
  searchBar3 = [(ICNoteSearchViewController *)self searchBar];
  textInputMode = [searchBar3 textInputMode];
  primaryLanguage = [textInputMode primaryLanguage];

  v14 = [[ICSearchUserInput alloc] initWithSearchString:text tokens:v10 keyboardLanguage:primaryLanguage];
  +[ICSearchProfiler resetProfileTimer];
  [ICSearchProfiler logProfilingWithMessage:@"ICNotesSearchresultsController updateSearchResultsForSearchController:"];
  viewControllerManager = [(ICBaseViewController *)self viewControllerManager];
  noteEditorViewController = [viewControllerManager noteEditorViewController];
  ic_isViewVisible = [noteEditorViewController ic_isViewVisible];

  if (ic_isViewVisible)
  {
    if ([text length])
    {
      v18 = [[ICSearchResultRegexMatchFinder alloc] initWithSearchString:text];
    }

    else
    {
      v18 = 0;
    }

    viewControllerManager2 = [(ICBaseViewController *)self viewControllerManager];
    noteEditorViewController2 = [viewControllerManager2 noteEditorViewController];
    [noteEditorViewController2 highlightSearchMatchesForRegexFinder:v18];
  }

  if ([v14 isEmpty])
  {
    searchResultExposureReporter = [(ICNoteSearchViewController *)self searchResultExposureReporter];
    [searchResultExposureReporter submitEventIfApplicable];

    [(ICNoteSearchViewController *)self setSearchSessionID:0];
    searchResultExposureReporter2 = [(ICNoteSearchViewController *)self searchResultExposureReporter];
    [searchResultExposureReporter2 invalidateSearchSessionID];

    viewControllerManager3 = [(ICBaseViewController *)self viewControllerManager];
    legacyNoteEditorViewController = [viewControllerManager3 legacyNoteEditorViewController];
    eventReporter = [legacyNoteEditorViewController eventReporter];
    [eventReporter popSearchData];

    viewControllerManager4 = [(ICBaseViewController *)self viewControllerManager];
    noteEditorViewController3 = [viewControllerManager4 noteEditorViewController];
    eventReporter2 = [noteEditorViewController3 eventReporter];
    [eventReporter2 popSearchData];
LABEL_13:

    goto LABEL_14;
  }

  searchSessionID = [(ICNoteSearchViewController *)self searchSessionID];

  if (!searchSessionID)
  {
    v30 = +[NSUUID UUID];
    uUIDString = [v30 UUIDString];
    [(ICNoteSearchViewController *)self setSearchSessionID:uUIDString];

    searchResultExposureReporter3 = [(ICNoteSearchViewController *)self searchResultExposureReporter];
    searchSessionID2 = [(ICNoteSearchViewController *)self searchSessionID];
    [searchResultExposureReporter3 updateSearchSessionID:searchSessionID2];

    eventReporter3 = [(ICNoteSearchViewController *)self eventReporter];
    searchSessionID3 = [(ICNoteSearchViewController *)self searchSessionID];
    [eventReporter3 submitSearchInitiateEventWithSearchSessionID:searchSessionID3 searchSuggestionType:{+[ICSearchToken suggestionTypeOfFirstItemInTokens:](ICSearchToken, "suggestionTypeOfFirstItemInTokens:", v10)}];

    viewControllerManager5 = [(ICBaseViewController *)self viewControllerManager];
    legacyNoteEditorViewController2 = [viewControllerManager5 legacyNoteEditorViewController];
    eventReporter4 = [legacyNoteEditorViewController2 eventReporter];
    searchSessionID4 = [(ICNoteSearchViewController *)self searchSessionID];
    [eventReporter4 pushSearchDataWithSearchSessionID:searchSessionID4];

    viewControllerManager4 = [(ICBaseViewController *)self viewControllerManager];
    noteEditorViewController3 = [viewControllerManager4 noteEditorViewController];
    eventReporter2 = [noteEditorViewController3 eventReporter];
    searchSessionID5 = [(ICNoteSearchViewController *)self searchSessionID];
    [eventReporter2 pushSearchDataWithSearchSessionID:searchSessionID5];

    goto LABEL_13;
  }

LABEL_14:
  searchResultExposureReporter4 = [(ICNoteSearchViewController *)self searchResultExposureReporter];
  searchString = [v14 searchString];
  [searchResultExposureReporter4 startTrackingNewSearchString:searchString];

  if (([v14 isEmpty] & 1) == 0)
  {
    v43 = +[NSDate date];
    [(ICNoteSearchViewController *)self setSearchStartTime:v43];
  }

  searchDataSource = [(ICNoteSearchViewController *)self searchDataSource];
  v46[0] = _NSConcreteStackBlock;
  v46[1] = 3221225472;
  v46[2] = sub_10007EE08;
  v46[3] = &unk_100645E30;
  v46[4] = self;
  [searchDataSource searchWithUserInput:v14 updateHandler:v46];

  [(ICNoteSearchViewController *)self updateSearchResultsVisibility];
LABEL_17:
}

- (void)_dci_updateSearchResultsForSearchController:(id)controller selectingSearchSuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
  objc_opt_class();
  representedObject = [suggestionCopy representedObject];

  v8 = ICDynamicCast();

  v7 = v8;
  if (v8)
  {
    [(ICNoteSearchViewController *)self processSelectedSearchSuggestion:v8];
    v7 = v8;
  }
}

- (void)searchDataSourceDidUpdateSuggestions:(id)suggestions
{
  suggestionsCopy = suggestions;
  if (+[ICSearchSuggestionsContext supportsSearchSuggestions])
  {
    snapshot = [suggestionsCopy snapshot];
    currentSuggestions = [snapshot currentSuggestions];
    [(ICNoteSearchViewController *)self setSuggestions:currentSuggestions];
  }
}

- (void)setSuggestions:(id)suggestions
{
  suggestionsCopy = suggestions;
  if ([(ICNoteSearchViewController *)self showCompactFloatingSuggestions])
  {
    searchController3 = [suggestionsCopy ic_map:&stru_100647120];
    searchController = [(ICNoteSearchViewController *)self searchController];
    [searchController setSearchSuggestions:searchController3];
  }

  else
  {
    searchController2 = [(ICNoteSearchViewController *)self searchController];
    searchSuggestions = [searchController2 searchSuggestions];
    v8 = [searchSuggestions count];

    if (!v8)
    {
      goto LABEL_6;
    }

    searchController3 = [(ICNoteSearchViewController *)self searchController];
    [searchController3 setSearchSuggestions:&__NSArray0__struct];
  }

LABEL_6:
}

- (ICNoteSearchViewControllerCollectionViewDelegate)collectionViewDelegate
{
  collectionViewDelegate = self->_collectionViewDelegate;
  if (!collectionViewDelegate)
  {
    v4 = [[ICNoteSearchViewControllerCollectionViewDelegate alloc] initWithNoteSearchViewController:self];
    v5 = self->_collectionViewDelegate;
    self->_collectionViewDelegate = v4;

    collectionViewDelegate = self->_collectionViewDelegate;
  }

  return collectionViewDelegate;
}

- (ICSearchSuggestionsContext)searchContext
{
  if (+[ICSearchSuggestionsContext supportsSearchSuggestions]&& !self->_searchContext)
  {
    v3 = objc_alloc_init(ICSearchSuggestionsContext);
    searchContext = self->_searchContext;
    self->_searchContext = v3;
  }

  v5 = self->_searchContext;

  return v5;
}

- (BOOL)searchBarContainsQuery
{
  searchBar = [(ICNoteSearchViewController *)self searchBar];
  ic_containsQuery = [searchBar ic_containsQuery];

  return ic_containsQuery;
}

- (BOOL)showsFloatingSuggestions
{
  viewControllerManager = [(ICBaseViewController *)self viewControllerManager];
  hasCompactWidth = [viewControllerManager hasCompactWidth];

  viewControllerManager2 = [(ICBaseViewController *)self viewControllerManager];
  behavior = [viewControllerManager2 behavior];

  noteContainerViewMode = [(ICBaseViewController *)self noteContainerViewMode];
  result = 0;
  if ((hasCompactWidth & 1) == 0 && behavior != 1)
  {
    v9 = +[UIDevice ic_isVision]^ 1;
    if (noteContainerViewMode == 1)
    {
      return 1;
    }

    else
    {
      return v9;
    }
  }

  return result;
}

- (void)updateSearchResultsVisibility
{
  queryDidExist = [(ICNoteSearchViewController *)self queryDidExist];
  searchBarContainsQuery = [(ICNoteSearchViewController *)self searchBarContainsQuery];
  if (searchBarContainsQuery)
  {
    v5 = +[ICSearchSuggestionsContext supportsSearchSuggestions];
  }

  else
  {
    v5 = 1;
  }

  [(ICNoteSearchViewController *)self setQueryDidExist:searchBarContainsQuery];
  if (+[ICSearchSuggestionsContext supportsSearchSuggestions])
  {
    v6 = [(ICNoteSearchViewController *)self showsFloatingSuggestions]& !searchBarContainsQuery;
  }

  else
  {
    v6 = searchBarContainsQuery ^ 1;
  }

  collectionView = [(ICNoteResultsViewController *)self collectionView];
  [collectionView setHidden:v6];

  collectionView2 = [(ICNoteResultsViewController *)self collectionView];
  isHidden = [collectionView2 isHidden];
  view = [(ICNoteSearchViewController *)self view];
  [view setHidden:isHidden];

  searchController = [(ICNoteSearchViewController *)self searchController];
  if ([searchController isActive])
  {
    searchController2 = [(ICNoteSearchViewController *)self searchController];
    showsSearchResultsController = [searchController2 showsSearchResultsController];

    v14 = showsSearchResultsController & v5;
  }

  else
  {
    v14 = 0;
  }

  viewControllerManager = [(ICBaseViewController *)self viewControllerManager];
  hasCompactWidth = [viewControllerManager hasCompactWidth];
  searchDataSource = [(ICNoteSearchViewController *)self searchDataSource];
  snapshot = [searchDataSource snapshot];
  [snapshot setIsCompactSize:hasCompactWidth];

  if ([(ICNoteSearchViewController *)self showsFloatingSuggestions])
  {
    [(ICNoteSearchViewController *)self setShowCompactFloatingSuggestions:v14];
    suggestionsController = [(ICNoteSearchViewController *)self suggestionsController];
    [suggestionsController hide];
  }

  else
  {
    suggestionsController2 = [(ICNoteSearchViewController *)self suggestionsController];
    v21 = suggestionsController2;
    if (v14)
    {
      transitionCoordinator = [(ICNoteSearchViewController *)self transitionCoordinator];
      searchBar = [(ICNoteSearchViewController *)self searchBar];
      [searchBar frame];
      [v21 showWithAnimated:1 transitionCoordinator:transitionCoordinator searchBarFrame:?];
    }

    else
    {
      [suggestionsController2 hide];
    }

    [(ICNoteSearchViewController *)self setShowCompactFloatingSuggestions:0];
  }

  suggestionsController3 = [(ICNoteSearchViewController *)self suggestionsController];
  collectionView3 = [suggestionsController3 collectionView];

  if ((+[UIDevice ic_isVision]& 1) != 0)
  {
    goto LABEL_29;
  }

  if ([(ICNoteSearchViewController *)self ic_behavior]== 1)
  {
    collectionView4 = +[UIColor systemBackgroundColor];
    view2 = [(ICNoteSearchViewController *)self view];
    [view2 setBackgroundColor:collectionView4];
LABEL_27:

    goto LABEL_28;
  }

  traitCollection = [(ICNoteSearchViewController *)self traitCollection];
  splitViewControllerLayoutEnvironment = [traitCollection splitViewControllerLayoutEnvironment];

  collectionView4 = [(ICNoteResultsViewController *)self collectionView];
  isHidden2 = [collectionView4 isHidden];
  if (isHidden2)
  {
    view2 = +[UIColor clearColor];
    v31 = 0;
    v32 = 0;
  }

  else if (splitViewControllerLayoutEnvironment == 2)
  {
    view2 = +[UIColor systemGroupedBackgroundColor];
    v32 = 0;
    v31 = 1;
  }

  else
  {
    view2 = +[UIColor systemBackgroundColor];
    v31 = 0;
    v32 = 1;
  }

  view3 = [(ICNoteSearchViewController *)self view];
  [view3 setBackgroundColor:view2];

  if (!v32)
  {
    if (!v31)
    {
      goto LABEL_26;
    }

LABEL_38:

    if (!isHidden2)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  if (v31)
  {
    goto LABEL_38;
  }

LABEL_26:
  if (isHidden2)
  {
    goto LABEL_27;
  }

LABEL_28:

LABEL_29:
  if (queryDidExist != searchBarContainsQuery)
  {
    v34 = +[NSNotificationCenter defaultCenter];
    v39 = @"ICNoteSearchViewControllerQueryDidChangeNotificationQueryExistsKey";
    v35 = [NSNumber numberWithBool:searchBarContainsQuery];
    v40 = v35;
    v36 = [NSDictionary dictionaryWithObjects:&v40 forKeys:&v39 count:1];
    [v34 postNotificationName:@"ICNoteSearchViewControllerQueryDidChangeNotification" object:self userInfo:v36];
  }

  if (searchBarContainsQuery)
  {
    collectionView5 = [(ICNoteResultsViewController *)self collectionView];
  }

  else if ([(ICNoteSearchViewController *)self showsFloatingSuggestions])
  {
    collectionView5 = [(ICNoteSearchViewController *)self observableScrollView];
  }

  else
  {
    collectionView5 = collectionView3;
  }

  v38 = collectionView5;
  [(ICNoteSearchViewController *)self setContentScrollView:collectionView5 forEdge:15];
  [(ICNoteSearchViewController *)self setNeedsUpdateContentUnavailableConfiguration];
}

- (void)updateSearchAccountIdentifierWithSelectedScope:(unint64_t)scope
{
  if (scope == 1)
  {
    accountIdentifier = [(ICNoteSearchViewController *)self accountIdentifier];
    searchDataSource = [(ICNoteSearchViewController *)self searchDataSource];
    [searchDataSource setAccountIdentifier:accountIdentifier];
  }

  else
  {
    if (scope)
    {
      return;
    }

    accountIdentifier = [(ICNoteSearchViewController *)self searchDataSource];
    [accountIdentifier setAccountIdentifier:0];
  }
}

- (void)updateContentUnavailableConfigurationUsingState:(id)state
{
  stateCopy = state;
  state = [(ICNoteSearchViewController *)self state];
  if (state <= 1)
  {
    v5 = stateCopy;
    if (state)
    {
      if (state != 1)
      {
        goto LABEL_20;
      }

      collectionView3 = +[UIContentUnavailableConfiguration loadingConfiguration];
      v7 = +[NSBundle mainBundle];
      v8 = [v7 localizedStringForKey:@"Searching…" value:&stru_100661CF0 table:0];
      [collectionView3 setText:v8];

      [(ICNoteSearchViewController *)self setContentUnavailableConfiguration:collectionView3];
      collectionView = [(ICNoteResultsViewController *)self collectionView];
      v10 = collectionView;
      v11 = 1;
      goto LABEL_13;
    }

LABEL_9:
    [(ICNoteSearchViewController *)self setContentUnavailableConfiguration:0];
    if ([(ICNoteSearchViewController *)self showsFloatingSuggestions])
    {
      v18 = [(ICNoteSearchViewController *)self searchBarContainsQuery]^ 1;
    }

    else
    {
      v18 = 0;
    }

    collectionView2 = [(ICNoteResultsViewController *)self collectionView];
    [collectionView2 setHidden:v18];

    collectionView3 = [(ICNoteResultsViewController *)self collectionView];
    isHidden = [collectionView3 isHidden];
    collectionView = [(ICNoteSearchViewController *)self view];
    v10 = collectionView;
    v11 = isHidden;
LABEL_13:
    [collectionView setHidden:v11];
    goto LABEL_19;
  }

  v5 = stateCopy;
  if (state == 2)
  {
    goto LABEL_9;
  }

  if (state != 3)
  {
    goto LABEL_20;
  }

  v12 = +[UIContentUnavailableConfiguration searchConfiguration];
  collectionView3 = [v12 updatedConfigurationForState:stateCopy];

  v13 = [UIImage systemImageNamed:@"magnifyingglass"];
  [collectionView3 setImage:v13];

  searchText = [stateCopy searchText];
  if ([searchText length])
  {
    v15 = +[NSBundle mainBundle];
    v16 = [v15 localizedStringForKey:@"No results for “%@”" value:&stru_100661CF0 table:0];
    searchText2 = [stateCopy searchText];
    v10 = [NSString localizedStringWithFormat:v16, searchText2];
  }

  else
  {
    v15 = +[NSBundle mainBundle];
    v10 = [v15 localizedStringForKey:@"No results" value:&stru_100661CF0 table:0];
  }

  [collectionView3 setText:v10];
  v21 = [stateCopy customStateForKey:@"ICNoteEmptyStateActualSearchStringLengthKey"];
  unsignedIntegerValue = [v21 unsignedIntegerValue];

  if (unsignedIntegerValue)
  {
    v23 = @"Check spelling or try a new search.";
  }

  else
  {
    v23 = @"Try a new search.";
  }

  v24 = +[NSBundle mainBundle];
  v25 = [v24 localizedStringForKey:v23 value:&stru_100661CF0 table:0];
  [collectionView3 setSecondaryText:v25];

  [(ICNoteSearchViewController *)self setContentUnavailableConfiguration:collectionView3];
  collectionView4 = [(ICNoteResultsViewController *)self collectionView];
  [collectionView4 setHidden:1];

LABEL_19:
  v5 = stateCopy;
LABEL_20:
}

- (id)contentUnavailableConfigurationState
{
  v12.receiver = self;
  v12.super_class = ICNoteSearchViewController;
  contentUnavailableConfigurationState = [(ICNoteSearchViewController *)&v12 contentUnavailableConfigurationState];
  searchDataSource = [(ICNoteSearchViewController *)self searchDataSource];
  currentSearchUserInput = [searchDataSource currentSearchUserInput];
  displayString = [currentSearchUserInput displayString];
  [contentUnavailableConfigurationState setSearchText:displayString];

  searchDataSource2 = [(ICNoteSearchViewController *)self searchDataSource];
  currentSearchUserInput2 = [searchDataSource2 currentSearchUserInput];
  searchString = [currentSearchUserInput2 searchString];
  v10 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [searchString length]);
  [contentUnavailableConfigurationState setCustomState:v10 forKey:@"ICNoteEmptyStateActualSearchStringLengthKey"];

  return contentUnavailableConfigurationState;
}

- (void)startSearchBecomeFirstResponder:(BOOL)responder
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10007FC2C;
  v3[3] = &unk_100646080;
  v3[4] = self;
  responderCopy = responder;
  [(ICNoteSearchViewController *)self ic_performBlockAfterActiveTransition:v3];
}

- (void)cancelSearch
{
  searchBar = [(ICNoteSearchViewController *)self searchBar];
  text = [searchBar text];
  v5 = [text length];

  if (v5)
  {
    searchBar2 = [(ICNoteSearchViewController *)self searchBar];
    searchTextField = [searchBar2 searchTextField];
    [searchTextField setText:&stru_100661CF0];
  }

  searchController = [(ICNoteSearchViewController *)self searchController];
  isActive = [searchController isActive];

  if (isActive)
  {
    searchController2 = [(ICNoteSearchViewController *)self searchController];
    [searchController2 setActive:0];
  }

  searchBar3 = [(ICNoteSearchViewController *)self searchBar];
  searchTextField2 = [searchBar3 searchTextField];
  tokens = [searchTextField2 tokens];
  v14 = [tokens count];

  if (v14)
  {
    searchBar4 = [(ICNoteSearchViewController *)self searchBar];
    searchTextField3 = [searchBar4 searchTextField];
    [searchTextField3 setTokens:&__NSArray0__struct];
  }
}

- (void)submitSearchResultSelectEventWithSearchResult:(id)result diffableDataSourceSnapshot:(id)snapshot
{
  resultCopy = result;
  snapshotCopy = snapshot;
  v8 = snapshotCopy;
  if (resultCopy)
  {
    v9 = [snapshotCopy indexOfItemIdentifier:resultCopy];
    if (v9 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v10 = v9 + 1;
      v20 = _NSConcreteStackBlock;
      v21 = 3221225472;
      v22 = sub_100080068;
      v23 = &unk_100647148;
      v24 = v8;
      v11 = objc_retainBlock(&v20);
      v12 = (v11[2])(v11, @"ICNoteSearchDataSourceTopHitsSectionIdentifier");
      v13 = (v11[2])(v11, @"ICNoteSearchDataSourceNoteSectionIdentifier");
      v14 = (v11[2])(v11, @"ICNoteSearchDataSourceAttachmentSectionIdentifier");
      searchResultExposureReporter = [(ICNoteSearchViewController *)self searchResultExposureReporter];
      [searchResultExposureReporter updateSearchResultWasSelected:1];

      eventReporter = [(ICNoteSearchViewController *)self eventReporter];
      searchSessionID = [(ICNoteSearchViewController *)self searchSessionID];
      configuration = [resultCopy configuration];
      searchStringLength = [configuration searchStringLength];
      [eventReporter submitSearchResultSelectEventWithSearchResult:resultCopy searchSessionID:searchSessionID queryLength:searchStringLength topHitResultCount:v12 noteResultCount:v13 attachmentResultCount:v14 gmRank:{v10, v20, v21, v22, v23}];
    }
  }
}

- (unint64_t)state
{
  if (![(ICNoteSearchViewController *)self searchBarContainsQuery])
  {
    return 0;
  }

  searchDataSource = [(ICNoteSearchViewController *)self searchDataSource];
  shouldShowEmptyState = [searchDataSource shouldShowEmptyState];

  if (shouldShowEmptyState)
  {
    return 3;
  }

  searchDataSource2 = [(ICNoteSearchViewController *)self searchDataSource];
  shouldShowLoadingState = [searchDataSource2 shouldShowLoadingState];

  if (shouldShowLoadingState)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

- (void)setShowCompactFloatingSuggestions:(BOOL)suggestions
{
  if (self->_showCompactFloatingSuggestions == suggestions)
  {
    if (!+[ICSearchSuggestionsContext supportsSearchSuggestions])
    {
      return;
    }
  }

  else
  {
    self->_showCompactFloatingSuggestions = suggestions;
  }

  if ([(ICNoteSearchViewController *)self queryDidExist])
  {
    searchDataSource = [(ICNoteSearchViewController *)self searchDataSource];
    snapshot = [searchDataSource snapshot];
    currentSuggestions = [snapshot currentSuggestions];
    [(ICNoteSearchViewController *)self setSuggestions:currentSuggestions];
  }

  else
  {
    searchDataSource = +[ICSearchSuggestion orderedDefaultSearchSuggestions];
    [(ICNoteSearchViewController *)self setSuggestions:?];
  }
}

- (void)processSelectedSearchSuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
  if (+[ICSearchSuggestionsContext supportsSearchSuggestions](ICSearchSuggestionsContext, "supportsSearchSuggestions") && ([suggestionCopy csSuggestion], v4 = objc_claimAutoreleasedReturnValue(), v4, v4))
  {
    searchContext = [(ICNoteSearchViewController *)self searchContext];
    csSuggestion = [suggestionCopy csSuggestion];
    [searchContext updateSearchSuggestion:csSuggestion interaction:1];

    [(ICNoteSearchViewController *)self updateFromSearchContext];
  }

  else
  {
    token = [suggestionCopy token];
    v8 = [ICSearchSuggestion iconImageForToken:token];
    title = [token title];
    v10 = [UISearchToken tokenWithIcon:v8 text:title];

    [v10 setRepresentedObject:token];
    searchBar = [(ICNoteSearchViewController *)self searchBar];
    searchTextField = [searchBar searchTextField];

    selectedTextRange = [searchTextField selectedTextRange];
    if (selectedTextRange && (v14 = selectedTextRange, [searchTextField selectedTextRange], v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "isEmpty"), v15, v14, (v16 & 1) == 0))
    {
      selectedTextRange2 = [searchTextField selectedTextRange];
      [searchTextField replaceTextualPortionOfRange:selectedTextRange2 withToken:v10 atIndex:0];
    }

    else
    {
      [searchTextField insertToken:v10 atIndex:0];
    }
  }

  [(ICNoteSearchViewController *)self updateSearchResultsVisibility];
}

- (void)updateFromSearchContext
{
  if (+[ICSearchSuggestionsContext supportsSearchSuggestions])
  {
    searchBar = [(ICNoteSearchViewController *)self searchBar];
    searchTextField = [searchBar searchTextField];

    tokens = [searchTextField tokens];
    v5 = [tokens ic_objectsPassingTest:&stru_100647188];

    searchContext = [(ICNoteSearchViewController *)self searchContext];
    searchSuggestion = [searchContext searchSuggestion];
    userQueryString = [searchSuggestion userQueryString];
    v9 = userQueryString;
    v10 = &stru_100661CF0;
    if (userQueryString)
    {
      v10 = userQueryString;
    }

    v11 = v10;

    searchContext2 = [(ICNoteSearchViewController *)self searchContext];
    searchSuggestion2 = [searchContext2 searchSuggestion];
    currentTokens = [searchSuggestion2 currentTokens];
    v15 = [currentTokens ic_map:&stru_1006471C8];

    [searchTextField setText:v11];
    v16 = [v5 arrayByAddingObjectsFromArray:v15];
    [searchTextField setTokens:v16];
  }
}

- (UISearchBar)searchBar
{
  WeakRetained = objc_loadWeakRetained(&self->_searchBar);

  return WeakRetained;
}

- (UISearchController)searchController
{
  WeakRetained = objc_loadWeakRetained(&self->_searchController);

  return WeakRetained;
}

- (UIScrollView)observableScrollView
{
  WeakRetained = objc_loadWeakRetained(&self->_observableScrollView);

  return WeakRetained;
}

@end