@interface ICNoteSearchViewController
- (BOOL)isActive;
- (BOOL)searchBarContainsQuery;
- (BOOL)showsFloatingSuggestions;
- (BOOL)textFieldShouldClear:(id)a3;
- (ICNoteSearchViewController)initWithViewMode:(int64_t)a3 viewControllerManager:(id)a4;
- (ICNoteSearchViewControllerCollectionViewDelegate)collectionViewDelegate;
- (ICSearchSuggestionsContext)searchContext;
- (UIScrollView)observableScrollView;
- (UISearchBar)searchBar;
- (UISearchController)searchController;
- (id)contentUnavailableConfigurationState;
- (unint64_t)state;
- (void)_dci_updateSearchResultsForSearchController:(id)a3 selectingSearchSuggestion:(id)a4;
- (void)cancelSearch;
- (void)dealloc;
- (void)processSelectedSearchSuggestion:(id)a3;
- (void)registerForTraitChanges;
- (void)searchBar:(id)a3 selectedScopeButtonIndexDidChange:(int64_t)a4;
- (void)searchBarSearchButtonClicked:(id)a3;
- (void)searchDataSourceDidUpdateSuggestions:(id)a3;
- (void)setAccountIdentifier:(id)a3;
- (void)setNoteContainerViewMode:(int64_t)a3;
- (void)setSearchBar:(id)a3;
- (void)setShowCompactFloatingSuggestions:(BOOL)a3;
- (void)setSuggestions:(id)a3;
- (void)startSearchBecomeFirstResponder:(BOOL)a3;
- (void)submitSearchResultSelectEventWithSearchResult:(id)a3 diffableDataSourceSnapshot:(id)a4;
- (void)updateCollectionViewForCurrentViewMode;
- (void)updateContentUnavailableConfigurationUsingState:(id)a3;
- (void)updateFromSearchContext;
- (void)updateSearchAccountIdentifierWithSelectedScope:(unint64_t)a3;
- (void)updateSearchResultsForSearchController:(id)a3;
- (void)updateSearchResultsVisibility;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation ICNoteSearchViewController

- (ICNoteSearchViewController)initWithViewMode:(int64_t)a3 viewControllerManager:(id)a4
{
  v6 = a4;
  v17.receiver = self;
  v17.super_class = ICNoteSearchViewController;
  v7 = [(ICNoteResultsViewController *)&v17 initWithViewMode:a3 viewControllerManager:v6 viewControllerType:1];
  if (v7)
  {
    v8 = [ICNASearchResultExposureReporter alloc];
    v9 = [v6 window];
    v10 = [v8 initWithWindow:v9];
    searchResultExposureReporter = v7->_searchResultExposureReporter;
    v7->_searchResultExposureReporter = v10;

    if ((+[ICSearchSuggestionsContext supportsSearchSuggestions]& 1) == 0)
    {
      v12 = [ICSearchSuggestionController alloc];
      v13 = [(ICNoteSearchViewController *)v7 view];
      v14 = [(ICSearchSuggestionController *)v12 initWithParentView:v13 delegate:v7];
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
  v4 = [v3 crossProcessChangeCoordinator];
  v5 = ICLockedNotesModeMigratorDidMigrateNoteNotification;
  v7 = _NSConcreteStackBlock;
  v8 = 3221225472;
  v9 = sub_10007DE8C;
  v10 = &unk_100645C78;
  objc_copyWeak(&v11, &location);
  v6 = [v4 registerForCrossProcessNotificationName:v5 block:&v7];
  [(ICNoteSearchViewController *)self setNoteMigrationObserver:v6, v7, v8, v9, v10];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

- (void)viewWillAppear:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = ICNoteSearchViewController;
  [(ICNoteResultsViewController *)&v7 viewWillAppear:a3];
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 postNotificationName:@"ICNoteSearchViewControllerDidUpdateSearchAppearanceNotification" object:0];

  if (+[ICSearchSuggestionsContext supportsSearchSuggestions])
  {
    v5 = [(ICNoteSearchViewController *)self searchController];
    [(ICNoteSearchViewController *)self updateSearchResultsForSearchController:v5];
  }

  [(ICNoteSearchViewController *)self updateSearchResultsVisibility];
  v6 = +[NotesApp sharedNotesApp];
  [v6 refreshNotesIfNeededForCollection:0];
}

- (void)viewDidAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = ICNoteSearchViewController;
  [(ICNoteResultsViewController *)&v5 viewDidAppear:a3];
  v4 = [(ICNoteSearchViewController *)self eventReporter];
  [v4 submitSearchAttemptEvent];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v5 = os_log_create("com.apple.notes", "SearchIndexer");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_1004D9DB4(v5, v6, v7, v8, v9, v10, v11, v12);
  }

  v13 = [(ICNoteSearchViewController *)self searchDataSource];
  [v13 cancelSearchQuery];

  v14 = +[NSNotificationCenter defaultCenter];
  [v14 postNotificationName:@"ICNoteSearchViewControllerDidUpdateSearchAppearanceNotification" object:0];

  v15.receiver = self;
  v15.super_class = ICNoteSearchViewController;
  [(ICNoteSearchViewController *)&v15 viewWillDisappear:v3];
}

- (void)dealloc
{
  v3 = +[ICNoteContext sharedContext];
  v4 = [v3 crossProcessChangeCoordinator];
  v5 = [(ICNoteSearchViewController *)self noteMigrationObserver];
  [v4 removeCrossProcessNotificationObserver:v5];

  v6.receiver = self;
  v6.super_class = ICNoteSearchViewController;
  [(ICNoteResultsViewController *)&v6 dealloc];
}

- (void)registerForTraitChanges
{
  v4 = +[UITraitCollection ic_traitsAffectingSizeAndColor];
  v3 = [(ICNoteSearchViewController *)self registerForTraitChanges:v4 withAction:"updateSearchResultsVisibility"];
}

- (void)setSearchBar:(id)a3
{
  v7 = a3;
  v4 = objc_storeWeak(&self->_searchBar, v7);
  [v7 setDelegate:self];

  WeakRetained = objc_loadWeakRetained(&self->_searchBar);
  v6 = [WeakRetained searchTextField];
  [v6 setDelegate:self];
}

- (BOOL)isActive
{
  v2 = [(ICNoteSearchViewController *)self searchController];
  v3 = [v2 isActive];

  return v3;
}

- (void)setAccountIdentifier:(id)a3
{
  objc_storeStrong(&self->_accountIdentifier, a3);
  v4 = [(ICNoteSearchViewController *)self searchBar];
  -[ICNoteSearchViewController updateSearchAccountIdentifierWithSelectedScope:](self, "updateSearchAccountIdentifierWithSelectedScope:", [v4 selectedScopeButtonIndex]);
}

- (void)setNoteContainerViewMode:(int64_t)a3
{
  v4.receiver = self;
  v4.super_class = ICNoteSearchViewController;
  [(ICBaseViewController *)&v4 setNoteContainerViewMode:a3];
  [(ICNoteSearchViewController *)self updateCollectionViewForCurrentViewMode];
}

- (void)updateCollectionViewForCurrentViewMode
{
  v3 = [(ICNoteResultsViewController *)self collectionView];

  if (!v3)
  {
    v4 = [ICNoteSearchCollectionView alloc];
    v5 = [(ICBaseViewController *)self legacyViewContext];
    v6 = [(ICBaseViewController *)self modernViewContext];
    v7 = [(ICBaseViewController *)self viewControllerManager];
    v8 = [(ICNoteBrowseCollectionView *)v4 initWithPresentingViewController:self legacyManagedObjectContext:v5 modernManagedObjectContext:v6 viewControllerManager:v7];
    [(ICNoteResultsViewController *)self setCollectionView:v8];

    v9 = [(ICNoteSearchViewController *)self collectionViewDelegate];
    v10 = [(ICNoteResultsViewController *)self collectionView];
    [v10 setDelegate:v9];

    v11 = [(ICNoteResultsViewController *)self collectionView];
    [v11 setShouldShowFolderName:1];

    v12 = [(ICNoteSearchViewController *)self view];
    v13 = [(ICNoteResultsViewController *)self collectionView];
    [v12 addSubview:v13];

    v14 = [(ICNoteResultsViewController *)self collectionView];
    [v14 ic_addAnchorsToFillSuperviewWithHorizontalPadding:1 verticalPadding:0 usesSafeAreaLayoutGuideHorizontally:0.0 usesSafeAreaLayoutGuideVertically:0.0];
  }

  v15 = [ICNoteSearchDataSource alloc];
  v16 = [(ICNoteResultsViewController *)self collectionView];
  v17 = [(ICBaseViewController *)self noteContainerViewMode];
  v18 = [(ICBaseViewController *)self viewControllerManager];
  v19 = [(ICBaseViewController *)self legacyViewContext];
  v20 = [(ICBaseViewController *)self modernViewContext];
  v21 = [(ICNoteSearchViewController *)self searchContext];
  v22 = [(ICNoteSearchDataSource *)v15 initWithCollectionView:v16 noteContainerViewMode:v17 viewControllerManager:v18 legacyViewContext:v19 modernViewContext:v20 searchContext:v21];
  [(ICNoteSearchViewController *)self setSearchDataSource:v22];

  v23 = [(ICNoteSearchViewController *)self searchDataSource];
  [v23 setDelegate:self];

  v24 = [(ICNoteSearchViewController *)self dataSource];
  v25 = [v24 collectionViewDiffableDataSource];
  v26 = [(ICNoteResultsViewController *)self collectionView];
  [v26 setDiffableDataSource:v25];

  v27 = [(ICBaseViewController *)self noteContainerViewMode];
  v28 = [(ICNoteResultsViewController *)self collectionView];
  [v28 setNoteContainerViewMode:v27];

  v29 = [(ICBaseViewController *)self noteContainerViewMode]== 0;
  v30 = [(ICNoteResultsViewController *)self collectionView];
  [v30 setSelectionFollowsFocus:v29];
}

- (void)searchBar:(id)a3 selectedScopeButtonIndexDidChange:(int64_t)a4
{
  if ([(ICNoteSearchViewController *)self searchBarContainsQuery])
  {
    v6 = os_log_create("com.apple.notes", "SearchIndexer");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      sub_1004D9DEC(v6, v7, v8, v9, v10, v11, v12, v13);
    }

    v14 = [(ICNoteSearchViewController *)self searchDataSource];
    [v14 cancelSearchQuery];
  }

  [(ICNoteSearchViewController *)self updateSearchAccountIdentifierWithSelectedScope:a4];
}

- (void)searchBarSearchButtonClicked:(id)a3
{
  UIAccessibilityPostNotification(UIAccessibilityLayoutChangedNotification, a3);
  v4 = [(ICNoteSearchViewController *)self searchDataSource];
  [v4 switchToMode:2];
}

- (BOOL)textFieldShouldClear:(id)a3
{
  if (_UISolariumEnabled() && +[UIDevice ic_isiPad]&& (ICInternalSettingsIsDoneButtonHidingDisabled() & 1) == 0)
  {
    v4 = [(ICNoteSearchViewController *)self searchController];
    [v4 setActive:0];
  }

  return 1;
}

- (void)updateSearchResultsForSearchController:(id)a3
{
  v4 = a3;
  if ([v4 isBeingPresented] && !-[ICNoteSearchViewController searchBarContainsQuery](self, "searchBarContainsQuery") && !+[ICSearchSuggestionsContext supportsSearchSuggestions](ICSearchSuggestionsContext, "supportsSearchSuggestions"))
  {
    goto LABEL_17;
  }

  v5 = [v4 searchBar];
  v6 = [v5 text];

  v7 = [v4 searchBar];
  v8 = [v7 searchTextField];
  v9 = [v8 tokens];

  v47[0] = _NSConcreteStackBlock;
  v47[1] = 3221225472;
  v47[2] = sub_10007ED80;
  v47[3] = &unk_1006470E0;
  v10 = objc_alloc_init(NSMutableArray);
  v48 = v10;
  v45 = v9;
  [v9 enumerateObjectsUsingBlock:v47];
  v11 = [(ICNoteSearchViewController *)self searchBar];
  v12 = [v11 textInputMode];
  v13 = [v12 primaryLanguage];

  v14 = [[ICSearchUserInput alloc] initWithSearchString:v6 tokens:v10 keyboardLanguage:v13];
  +[ICSearchProfiler resetProfileTimer];
  [ICSearchProfiler logProfilingWithMessage:@"ICNotesSearchresultsController updateSearchResultsForSearchController:"];
  v15 = [(ICBaseViewController *)self viewControllerManager];
  v16 = [v15 noteEditorViewController];
  v17 = [v16 ic_isViewVisible];

  if (v17)
  {
    if ([v6 length])
    {
      v18 = [[ICSearchResultRegexMatchFinder alloc] initWithSearchString:v6];
    }

    else
    {
      v18 = 0;
    }

    v19 = [(ICBaseViewController *)self viewControllerManager];
    v20 = [v19 noteEditorViewController];
    [v20 highlightSearchMatchesForRegexFinder:v18];
  }

  if ([v14 isEmpty])
  {
    v21 = [(ICNoteSearchViewController *)self searchResultExposureReporter];
    [v21 submitEventIfApplicable];

    [(ICNoteSearchViewController *)self setSearchSessionID:0];
    v22 = [(ICNoteSearchViewController *)self searchResultExposureReporter];
    [v22 invalidateSearchSessionID];

    v23 = [(ICBaseViewController *)self viewControllerManager];
    v24 = [v23 legacyNoteEditorViewController];
    v25 = [v24 eventReporter];
    [v25 popSearchData];

    v26 = [(ICBaseViewController *)self viewControllerManager];
    v27 = [v26 noteEditorViewController];
    v28 = [v27 eventReporter];
    [v28 popSearchData];
LABEL_13:

    goto LABEL_14;
  }

  v29 = [(ICNoteSearchViewController *)self searchSessionID];

  if (!v29)
  {
    v30 = +[NSUUID UUID];
    v31 = [v30 UUIDString];
    [(ICNoteSearchViewController *)self setSearchSessionID:v31];

    v32 = [(ICNoteSearchViewController *)self searchResultExposureReporter];
    v33 = [(ICNoteSearchViewController *)self searchSessionID];
    [v32 updateSearchSessionID:v33];

    v34 = [(ICNoteSearchViewController *)self eventReporter];
    v35 = [(ICNoteSearchViewController *)self searchSessionID];
    [v34 submitSearchInitiateEventWithSearchSessionID:v35 searchSuggestionType:{+[ICSearchToken suggestionTypeOfFirstItemInTokens:](ICSearchToken, "suggestionTypeOfFirstItemInTokens:", v10)}];

    v36 = [(ICBaseViewController *)self viewControllerManager];
    v37 = [v36 legacyNoteEditorViewController];
    v38 = [v37 eventReporter];
    v39 = [(ICNoteSearchViewController *)self searchSessionID];
    [v38 pushSearchDataWithSearchSessionID:v39];

    v26 = [(ICBaseViewController *)self viewControllerManager];
    v27 = [v26 noteEditorViewController];
    v28 = [v27 eventReporter];
    v40 = [(ICNoteSearchViewController *)self searchSessionID];
    [v28 pushSearchDataWithSearchSessionID:v40];

    goto LABEL_13;
  }

LABEL_14:
  v41 = [(ICNoteSearchViewController *)self searchResultExposureReporter];
  v42 = [v14 searchString];
  [v41 startTrackingNewSearchString:v42];

  if (([v14 isEmpty] & 1) == 0)
  {
    v43 = +[NSDate date];
    [(ICNoteSearchViewController *)self setSearchStartTime:v43];
  }

  v44 = [(ICNoteSearchViewController *)self searchDataSource];
  v46[0] = _NSConcreteStackBlock;
  v46[1] = 3221225472;
  v46[2] = sub_10007EE08;
  v46[3] = &unk_100645E30;
  v46[4] = self;
  [v44 searchWithUserInput:v14 updateHandler:v46];

  [(ICNoteSearchViewController *)self updateSearchResultsVisibility];
LABEL_17:
}

- (void)_dci_updateSearchResultsForSearchController:(id)a3 selectingSearchSuggestion:(id)a4
{
  v5 = a4;
  objc_opt_class();
  v6 = [v5 representedObject];

  v8 = ICDynamicCast();

  v7 = v8;
  if (v8)
  {
    [(ICNoteSearchViewController *)self processSelectedSearchSuggestion:v8];
    v7 = v8;
  }
}

- (void)searchDataSourceDidUpdateSuggestions:(id)a3
{
  v6 = a3;
  if (+[ICSearchSuggestionsContext supportsSearchSuggestions])
  {
    v4 = [v6 snapshot];
    v5 = [v4 currentSuggestions];
    [(ICNoteSearchViewController *)self setSuggestions:v5];
  }
}

- (void)setSuggestions:(id)a3
{
  v9 = a3;
  if ([(ICNoteSearchViewController *)self showCompactFloatingSuggestions])
  {
    v4 = [v9 ic_map:&stru_100647120];
    v5 = [(ICNoteSearchViewController *)self searchController];
    [v5 setSearchSuggestions:v4];
  }

  else
  {
    v6 = [(ICNoteSearchViewController *)self searchController];
    v7 = [v6 searchSuggestions];
    v8 = [v7 count];

    if (!v8)
    {
      goto LABEL_6;
    }

    v4 = [(ICNoteSearchViewController *)self searchController];
    [v4 setSearchSuggestions:&__NSArray0__struct];
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
  v2 = [(ICNoteSearchViewController *)self searchBar];
  v3 = [v2 ic_containsQuery];

  return v3;
}

- (BOOL)showsFloatingSuggestions
{
  v3 = [(ICBaseViewController *)self viewControllerManager];
  v4 = [v3 hasCompactWidth];

  v5 = [(ICBaseViewController *)self viewControllerManager];
  v6 = [v5 behavior];

  v7 = [(ICBaseViewController *)self noteContainerViewMode];
  result = 0;
  if ((v4 & 1) == 0 && v6 != 1)
  {
    v9 = +[UIDevice ic_isVision]^ 1;
    if (v7 == 1)
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
  v3 = [(ICNoteSearchViewController *)self queryDidExist];
  v4 = [(ICNoteSearchViewController *)self searchBarContainsQuery];
  if (v4)
  {
    v5 = +[ICSearchSuggestionsContext supportsSearchSuggestions];
  }

  else
  {
    v5 = 1;
  }

  [(ICNoteSearchViewController *)self setQueryDidExist:v4];
  if (+[ICSearchSuggestionsContext supportsSearchSuggestions])
  {
    v6 = [(ICNoteSearchViewController *)self showsFloatingSuggestions]& !v4;
  }

  else
  {
    v6 = v4 ^ 1;
  }

  v7 = [(ICNoteResultsViewController *)self collectionView];
  [v7 setHidden:v6];

  v8 = [(ICNoteResultsViewController *)self collectionView];
  v9 = [v8 isHidden];
  v10 = [(ICNoteSearchViewController *)self view];
  [v10 setHidden:v9];

  v11 = [(ICNoteSearchViewController *)self searchController];
  if ([v11 isActive])
  {
    v12 = [(ICNoteSearchViewController *)self searchController];
    v13 = [v12 showsSearchResultsController];

    v14 = v13 & v5;
  }

  else
  {
    v14 = 0;
  }

  v15 = [(ICBaseViewController *)self viewControllerManager];
  v16 = [v15 hasCompactWidth];
  v17 = [(ICNoteSearchViewController *)self searchDataSource];
  v18 = [v17 snapshot];
  [v18 setIsCompactSize:v16];

  if ([(ICNoteSearchViewController *)self showsFloatingSuggestions])
  {
    [(ICNoteSearchViewController *)self setShowCompactFloatingSuggestions:v14];
    v19 = [(ICNoteSearchViewController *)self suggestionsController];
    [v19 hide];
  }

  else
  {
    v20 = [(ICNoteSearchViewController *)self suggestionsController];
    v21 = v20;
    if (v14)
    {
      v22 = [(ICNoteSearchViewController *)self transitionCoordinator];
      v23 = [(ICNoteSearchViewController *)self searchBar];
      [v23 frame];
      [v21 showWithAnimated:1 transitionCoordinator:v22 searchBarFrame:?];
    }

    else
    {
      [v20 hide];
    }

    [(ICNoteSearchViewController *)self setShowCompactFloatingSuggestions:0];
  }

  v24 = [(ICNoteSearchViewController *)self suggestionsController];
  v25 = [v24 collectionView];

  if ((+[UIDevice ic_isVision]& 1) != 0)
  {
    goto LABEL_29;
  }

  if ([(ICNoteSearchViewController *)self ic_behavior]== 1)
  {
    v26 = +[UIColor systemBackgroundColor];
    v27 = [(ICNoteSearchViewController *)self view];
    [v27 setBackgroundColor:v26];
LABEL_27:

    goto LABEL_28;
  }

  v28 = [(ICNoteSearchViewController *)self traitCollection];
  v29 = [v28 splitViewControllerLayoutEnvironment];

  v26 = [(ICNoteResultsViewController *)self collectionView];
  v30 = [v26 isHidden];
  if (v30)
  {
    v27 = +[UIColor clearColor];
    v31 = 0;
    v32 = 0;
  }

  else if (v29 == 2)
  {
    v27 = +[UIColor systemGroupedBackgroundColor];
    v32 = 0;
    v31 = 1;
  }

  else
  {
    v27 = +[UIColor systemBackgroundColor];
    v31 = 0;
    v32 = 1;
  }

  v33 = [(ICNoteSearchViewController *)self view];
  [v33 setBackgroundColor:v27];

  if (!v32)
  {
    if (!v31)
    {
      goto LABEL_26;
    }

LABEL_38:

    if (!v30)
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
  if (v30)
  {
    goto LABEL_27;
  }

LABEL_28:

LABEL_29:
  if (v3 != v4)
  {
    v34 = +[NSNotificationCenter defaultCenter];
    v39 = @"ICNoteSearchViewControllerQueryDidChangeNotificationQueryExistsKey";
    v35 = [NSNumber numberWithBool:v4];
    v40 = v35;
    v36 = [NSDictionary dictionaryWithObjects:&v40 forKeys:&v39 count:1];
    [v34 postNotificationName:@"ICNoteSearchViewControllerQueryDidChangeNotification" object:self userInfo:v36];
  }

  if (v4)
  {
    v37 = [(ICNoteResultsViewController *)self collectionView];
  }

  else if ([(ICNoteSearchViewController *)self showsFloatingSuggestions])
  {
    v37 = [(ICNoteSearchViewController *)self observableScrollView];
  }

  else
  {
    v37 = v25;
  }

  v38 = v37;
  [(ICNoteSearchViewController *)self setContentScrollView:v37 forEdge:15];
  [(ICNoteSearchViewController *)self setNeedsUpdateContentUnavailableConfiguration];
}

- (void)updateSearchAccountIdentifierWithSelectedScope:(unint64_t)a3
{
  if (a3 == 1)
  {
    v5 = [(ICNoteSearchViewController *)self accountIdentifier];
    v4 = [(ICNoteSearchViewController *)self searchDataSource];
    [v4 setAccountIdentifier:v5];
  }

  else
  {
    if (a3)
    {
      return;
    }

    v5 = [(ICNoteSearchViewController *)self searchDataSource];
    [v5 setAccountIdentifier:0];
  }
}

- (void)updateContentUnavailableConfigurationUsingState:(id)a3
{
  v27 = a3;
  v4 = [(ICNoteSearchViewController *)self state];
  if (v4 <= 1)
  {
    v5 = v27;
    if (v4)
    {
      if (v4 != 1)
      {
        goto LABEL_20;
      }

      v6 = +[UIContentUnavailableConfiguration loadingConfiguration];
      v7 = +[NSBundle mainBundle];
      v8 = [v7 localizedStringForKey:@"Searching…" value:&stru_100661CF0 table:0];
      [v6 setText:v8];

      [(ICNoteSearchViewController *)self setContentUnavailableConfiguration:v6];
      v9 = [(ICNoteResultsViewController *)self collectionView];
      v10 = v9;
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

    v19 = [(ICNoteResultsViewController *)self collectionView];
    [v19 setHidden:v18];

    v6 = [(ICNoteResultsViewController *)self collectionView];
    v20 = [v6 isHidden];
    v9 = [(ICNoteSearchViewController *)self view];
    v10 = v9;
    v11 = v20;
LABEL_13:
    [v9 setHidden:v11];
    goto LABEL_19;
  }

  v5 = v27;
  if (v4 == 2)
  {
    goto LABEL_9;
  }

  if (v4 != 3)
  {
    goto LABEL_20;
  }

  v12 = +[UIContentUnavailableConfiguration searchConfiguration];
  v6 = [v12 updatedConfigurationForState:v27];

  v13 = [UIImage systemImageNamed:@"magnifyingglass"];
  [v6 setImage:v13];

  v14 = [v27 searchText];
  if ([v14 length])
  {
    v15 = +[NSBundle mainBundle];
    v16 = [v15 localizedStringForKey:@"No results for “%@”" value:&stru_100661CF0 table:0];
    v17 = [v27 searchText];
    v10 = [NSString localizedStringWithFormat:v16, v17];
  }

  else
  {
    v15 = +[NSBundle mainBundle];
    v10 = [v15 localizedStringForKey:@"No results" value:&stru_100661CF0 table:0];
  }

  [v6 setText:v10];
  v21 = [v27 customStateForKey:@"ICNoteEmptyStateActualSearchStringLengthKey"];
  v22 = [v21 unsignedIntegerValue];

  if (v22)
  {
    v23 = @"Check spelling or try a new search.";
  }

  else
  {
    v23 = @"Try a new search.";
  }

  v24 = +[NSBundle mainBundle];
  v25 = [v24 localizedStringForKey:v23 value:&stru_100661CF0 table:0];
  [v6 setSecondaryText:v25];

  [(ICNoteSearchViewController *)self setContentUnavailableConfiguration:v6];
  v26 = [(ICNoteResultsViewController *)self collectionView];
  [v26 setHidden:1];

LABEL_19:
  v5 = v27;
LABEL_20:
}

- (id)contentUnavailableConfigurationState
{
  v12.receiver = self;
  v12.super_class = ICNoteSearchViewController;
  v3 = [(ICNoteSearchViewController *)&v12 contentUnavailableConfigurationState];
  v4 = [(ICNoteSearchViewController *)self searchDataSource];
  v5 = [v4 currentSearchUserInput];
  v6 = [v5 displayString];
  [v3 setSearchText:v6];

  v7 = [(ICNoteSearchViewController *)self searchDataSource];
  v8 = [v7 currentSearchUserInput];
  v9 = [v8 searchString];
  v10 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v9 length]);
  [v3 setCustomState:v10 forKey:@"ICNoteEmptyStateActualSearchStringLengthKey"];

  return v3;
}

- (void)startSearchBecomeFirstResponder:(BOOL)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10007FC2C;
  v3[3] = &unk_100646080;
  v3[4] = self;
  v4 = a3;
  [(ICNoteSearchViewController *)self ic_performBlockAfterActiveTransition:v3];
}

- (void)cancelSearch
{
  v3 = [(ICNoteSearchViewController *)self searchBar];
  v4 = [v3 text];
  v5 = [v4 length];

  if (v5)
  {
    v6 = [(ICNoteSearchViewController *)self searchBar];
    v7 = [v6 searchTextField];
    [v7 setText:&stru_100661CF0];
  }

  v8 = [(ICNoteSearchViewController *)self searchController];
  v9 = [v8 isActive];

  if (v9)
  {
    v10 = [(ICNoteSearchViewController *)self searchController];
    [v10 setActive:0];
  }

  v11 = [(ICNoteSearchViewController *)self searchBar];
  v12 = [v11 searchTextField];
  v13 = [v12 tokens];
  v14 = [v13 count];

  if (v14)
  {
    v16 = [(ICNoteSearchViewController *)self searchBar];
    v15 = [v16 searchTextField];
    [v15 setTokens:&__NSArray0__struct];
  }
}

- (void)submitSearchResultSelectEventWithSearchResult:(id)a3 diffableDataSourceSnapshot:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6)
  {
    v9 = [v7 indexOfItemIdentifier:v6];
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
      v15 = [(ICNoteSearchViewController *)self searchResultExposureReporter];
      [v15 updateSearchResultWasSelected:1];

      v16 = [(ICNoteSearchViewController *)self eventReporter];
      v17 = [(ICNoteSearchViewController *)self searchSessionID];
      v18 = [v6 configuration];
      v19 = [v18 searchStringLength];
      [v16 submitSearchResultSelectEventWithSearchResult:v6 searchSessionID:v17 queryLength:v19 topHitResultCount:v12 noteResultCount:v13 attachmentResultCount:v14 gmRank:{v10, v20, v21, v22, v23}];
    }
  }
}

- (unint64_t)state
{
  if (![(ICNoteSearchViewController *)self searchBarContainsQuery])
  {
    return 0;
  }

  v3 = [(ICNoteSearchViewController *)self searchDataSource];
  v4 = [v3 shouldShowEmptyState];

  if (v4)
  {
    return 3;
  }

  v6 = [(ICNoteSearchViewController *)self searchDataSource];
  v7 = [v6 shouldShowLoadingState];

  if (v7)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

- (void)setShowCompactFloatingSuggestions:(BOOL)a3
{
  if (self->_showCompactFloatingSuggestions == a3)
  {
    if (!+[ICSearchSuggestionsContext supportsSearchSuggestions])
    {
      return;
    }
  }

  else
  {
    self->_showCompactFloatingSuggestions = a3;
  }

  if ([(ICNoteSearchViewController *)self queryDidExist])
  {
    v6 = [(ICNoteSearchViewController *)self searchDataSource];
    v4 = [v6 snapshot];
    v5 = [v4 currentSuggestions];
    [(ICNoteSearchViewController *)self setSuggestions:v5];
  }

  else
  {
    v6 = +[ICSearchSuggestion orderedDefaultSearchSuggestions];
    [(ICNoteSearchViewController *)self setSuggestions:?];
  }
}

- (void)processSelectedSearchSuggestion:(id)a3
{
  v18 = a3;
  if (+[ICSearchSuggestionsContext supportsSearchSuggestions](ICSearchSuggestionsContext, "supportsSearchSuggestions") && ([v18 csSuggestion], v4 = objc_claimAutoreleasedReturnValue(), v4, v4))
  {
    v5 = [(ICNoteSearchViewController *)self searchContext];
    v6 = [v18 csSuggestion];
    [v5 updateSearchSuggestion:v6 interaction:1];

    [(ICNoteSearchViewController *)self updateFromSearchContext];
  }

  else
  {
    v7 = [v18 token];
    v8 = [ICSearchSuggestion iconImageForToken:v7];
    v9 = [v7 title];
    v10 = [UISearchToken tokenWithIcon:v8 text:v9];

    [v10 setRepresentedObject:v7];
    v11 = [(ICNoteSearchViewController *)self searchBar];
    v12 = [v11 searchTextField];

    v13 = [v12 selectedTextRange];
    if (v13 && (v14 = v13, [v12 selectedTextRange], v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "isEmpty"), v15, v14, (v16 & 1) == 0))
    {
      v17 = [v12 selectedTextRange];
      [v12 replaceTextualPortionOfRange:v17 withToken:v10 atIndex:0];
    }

    else
    {
      [v12 insertToken:v10 atIndex:0];
    }
  }

  [(ICNoteSearchViewController *)self updateSearchResultsVisibility];
}

- (void)updateFromSearchContext
{
  if (+[ICSearchSuggestionsContext supportsSearchSuggestions])
  {
    v3 = [(ICNoteSearchViewController *)self searchBar];
    v17 = [v3 searchTextField];

    v4 = [v17 tokens];
    v5 = [v4 ic_objectsPassingTest:&stru_100647188];

    v6 = [(ICNoteSearchViewController *)self searchContext];
    v7 = [v6 searchSuggestion];
    v8 = [v7 userQueryString];
    v9 = v8;
    v10 = &stru_100661CF0;
    if (v8)
    {
      v10 = v8;
    }

    v11 = v10;

    v12 = [(ICNoteSearchViewController *)self searchContext];
    v13 = [v12 searchSuggestion];
    v14 = [v13 currentTokens];
    v15 = [v14 ic_map:&stru_1006471C8];

    [v17 setText:v11];
    v16 = [v5 arrayByAddingObjectsFromArray:v15];
    [v17 setTokens:v16];
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