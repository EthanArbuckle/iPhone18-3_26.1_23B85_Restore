@interface MessageListSearchViewController
+ (OS_os_log)log;
- (BOOL)_shouldKeepDisplayingSearchingFooter;
- (BOOL)_shouldUpdateSearchForOptions:(int64_t)a3;
- (BOOL)hasSuggestions;
- (BOOL)isFilterButtonEnabled;
- (BOOL)isSearchSuggestionsVisible;
- (BOOL)shouldEnableEditButton;
- (BOOL)shouldShowMenuSuggestions;
- (CGRect)currentKeyboardOverlap;
- (EMCollectionItemID)lastSelectedTopHitItemID;
- (MFSearchProgressView)searchProgressView;
- (MFSearchSuggestionsViewControllable)suggestionsViewController;
- (MUISearchSuggestionsGenerator)suggestionsGenerator;
- (MessageListSearchViewController)initWithMainScene:(id)a3 mailboxes:(id)a4 accountsProvider:(id)a5 favoritesShortcutsProvider:(id)a6 contactStore:(id)a7;
- (NSDictionary)indexStatistics;
- (double)_searchingFooterDisplayTimeLeft;
- (id)SectionCategoryForSuggestion:(id)a3;
- (id)_additionalBarButtonItems;
- (id)_currentEditingStringForSearchBar:(id)a3;
- (id)_excludeJunkTrashPredicate;
- (id)_excludedMailboxes;
- (id)_excludedMailboxesInPredicate:(id)a3;
- (id)_groupForRecentSearchSuggestionItems:(id)a3;
- (id)_latencyMsFromTimestamp:(id)a3 toTimestamp:(id)a4;
- (id)_localMailboxPredicate;
- (id)_objectFromSelectionInSearchTextField:(id)a3;
- (id)_parsecEmbeddingStateWithSearchInfo:(id)a3;
- (id)_parsecMessageResultForVisibleIndexPath:(id)a3;
- (id)_parsecSuggestionForSuggestion:(id)a3;
- (id)_phraseManagerForPhrase:(id)a3;
- (id)_scopeIdentifierForPeopleSuggestions;
- (id)_scopeTitlesForSearchAtom:(id)a3;
- (id)_searchTapToRadarButtonItem;
- (id)_updatedSuggestionsGroups:(id)a3 phraseKind:(unsigned __int8)a4;
- (id)attributedSpotlightTitle:(id)a3;
- (id)categoryForSuggestion:(id)a3;
- (id)categoryForTokenKind:(int64_t)a3;
- (id)messageListDataSource:(id)a3 sectionDataSourceForSection:(id)a4 messageList:(id)a5;
- (id)navigationController;
- (id)navigationItem;
- (id)navigationTitleForSearch;
- (id)searchBar;
- (id)searchScopeForSuggestionCategoryScope:(id)a3;
- (id)searchTextField:(id)a3 itemProviderForCopyingToken:(id)a4;
- (id)sectionDataSourceConfigurationWithSection:(id)a3 messageList:(id)a4;
- (id)sectionHeaderTitleForMessageListSectionDataSource:(id)a3;
- (id)splitViewController;
- (id)targetViewControllerForAction:(SEL)a3 sender:(id)a4;
- (id)toolbarItems;
- (id)viewForKeyboardAvoidance:(id)a3;
- (int64_t)_numberOfTopHitResults;
- (unint64_t)_computeBGSystemTaskFeatureCheckpoint;
- (unint64_t)_countOfSuggestionAtomsInSearchbar:(id)a3;
- (void)_addSuggestionToRecentSuggester:(id)a3;
- (void)_beginSearchWithRepresentedObjectsForInitialSearch;
- (void)_clearSearchResultSections;
- (void)_configureLayoutListConfiguration:(id)a3 atSection:(int64_t)a4;
- (void)_didCompleteDismissalTransition:(id)a3;
- (void)_didCompletePresentationTransition:(id)a3;
- (void)_displaySearchingFooter;
- (void)_endSearchSession;
- (void)_generateSuggestionsForPhrase:(id)a3;
- (void)_getDefaultPersonScopeIdentifier:(id *)a3 alternativeScopeIdentifier:(id *)a4;
- (void)_initializeSearchUserActivity;
- (void)_invokeSearchFeedbackTapToRadar;
- (void)_notePredicateUpdated:(int64_t)a3;
- (void)_preheatCoreSpotlightModel;
- (void)_prepareSnapshotViewForDismissal;
- (void)_reportMessageResultsFetchedIsFinished:(BOOL)a3;
- (void)_reportSearchQueryStateForScopeChange;
- (void)_resetFooterState;
- (void)_resetGlobalScopeTitles;
- (void)_resetSearchFeedbackIfNeeded;
- (void)_sceneDidEnterBackground;
- (void)_scheduleIndexStateStatistics;
- (void)_sendAnalyticsForIndexState:(id)a3;
- (void)_startSearchSession;
- (void)_stopAnimatingSearchingFooter;
- (void)_updateFooter;
- (void)_updateIndexStatistics;
- (void)_updateIndexStatisticsIfNeeded;
- (void)_updateSearchBarUsingSuggestionToken:(id)a3;
- (void)_updateSearchFeedbackCount:(BOOL)a3;
- (void)_updateSearchResultsControllerVisibility;
- (void)_updateSearchResultsForSearchController:(id)a3;
- (void)_updateSearchingCompletionState;
- (void)beginSearchWithQueryString:(id)a3 scope:(id)a4;
- (void)beginSearchWithSuggestion:(id)a3 scope:(id)a4;
- (void)collectionView:(id)a3 didEndDisplayingCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)dealloc;
- (void)didTapCheckInUrlFor:(id)a3;
- (void)didTapMapAddressFor:(id)a3;
- (void)didTapViewMessageFor:(id)a3;
- (void)dismissToastViewController:(id)a3;
- (void)globalSearchScopeChanged:(int64_t)a3;
- (void)invokeTapToRadar;
- (void)keyboardAvoidance:(id)a3 adjustForFrameOverlap:(CGRect)a4;
- (void)loadView;
- (void)messageListDataSource:(id)a3 didUpdateWithChange:(id)a4 section:(id)a5 animated:(BOOL)a6;
- (void)messageListDataSource:(id)a3 willUpdateWithChange:(id)a4 section:(id)a5 animated:(BOOL)a6 cleanSnapshot:(BOOL)a7;
- (void)messageListSectionDataSource:(id)a3 collectionFailedSearching:(id)a4 remote:(BOOL)a5 searchInfo:(id)a6;
- (void)messageListSectionDataSource:(id)a3 collectionFinishedSearching:(id)a4 remote:(BOOL)a5 searchInfo:(id)a6;
- (void)performOnLocalAndRemoteSearchCompletion:(id)a3;
- (void)performOnRemoteSearchCompletion:(id)a3;
- (void)presentToastViewController;
- (void)redrawSearchBarWithSuggestion:(id)a3;
- (void)removeObservers;
- (void)reportInstantAnswerButtonSelected:(id)a3 cardSectionID:(id)a4 command:(id)a5;
- (void)reportInstantAnswerCardSelected:(id)a3 cardSectionID:(id)a4;
- (void)reportQueryClearedEvent:(int64_t)a3;
- (void)reportSearchDidBecomeActive;
- (void)reportSearchEndedEvent:(int64_t)a3;
- (void)reportSearchQueryStateWithTriggerEvent:(unint64_t)a3 searchType:(unint64_t)a4;
- (void)reportSearchViewAppeared:(BOOL)a3 currentMailboxScope:(BOOL)a4;
- (void)reportSuggestionSelected:(id)a3;
- (void)reportSuggestionsFetched:(id)a3;
- (void)reportSuggestionsVisible:(id)a3;
- (void)reportTopHitSelected:(id)a3;
- (void)reportVisibleMessageListResultsAlwaysReportItems:(BOOL)a3 isFinished:(BOOL)a4;
- (void)searchBar:(id)a3 selectedScopeButtonIndexDidChange:(int64_t)a4;
- (void)searchBar:(id)a3 textDidChange:(id)a4;
- (void)searchBarSearchButtonClicked:(id)a3;
- (void)searchSuggestionsViewController:(id)a3 deleteRecentSuggestion:(id)a4;
- (void)searchSuggestionsViewController:(id)a3 didSelectItemID:(id)a4 instantAnswerSuggestion:(id)a5 cardSectionID:(id)a6;
- (void)searchSuggestionsViewController:(id)a3 didSelectItemID:(id)a4 instantAnswerSuggestion:(id)a5 cardSectionID:(id)a6 command:(id)a7;
- (void)searchSuggestionsViewController:(id)a3 didSelectItemID:(id)a4 messageList:(id)a5;
- (void)searchSuggestionsViewController:(id)a3 didSelectItemID:(id)a4 messageList:(id)a5 indexInformation:(id)a6;
- (void)searchSuggestionsViewController:(id)a3 didSelectItemID:(id)a4 messageList:(id)a5 indexInformation:(id)a6 topHitSuggestion:(id)a7;
- (void)searchSuggestionsViewController:(id)a3 didSelectSuggestion:(id)a4;
- (void)searchTokenScopeChanged:(int64_t)a3;
- (void)setGenerateCannedSuggestions:(BOOL)a3;
- (void)setIndexStatistics:(id)a3;
- (void)setSearchStartTimestamp:(id)a3;
- (void)setSearchSuggestionsVisible:(BOOL)a3;
- (void)setSearching:(BOOL)a3;
- (void)setSnapshotViewForDismissal:(id)a3;
- (void)setSuggestionStartTimestamp:(id)a3;
- (void)setToolbarItems:(id)a3 animated:(BOOL)a4;
- (void)setUpAppSwitcherObserver;
- (void)shouldTriggerTapToRadarForViewController:(id)a3 shouldTrigger:(BOOL)a4;
- (void)suggestionsGenerator:(id)a3 didCompleteRequestID:(id)a4;
- (void)suggestionsGenerator:(id)a3 didProduceResult:(id)a4;
- (void)textFieldDidChangeSelection:(id)a3;
- (void)textPasteConfigurationSupporting:(id)a3 transformPasteItem:(id)a4;
- (void)updateSearchResultsForSearchController:(id)a3;
- (void)updateSearchResultsForSearchController:(id)a3 selectingSearchSuggestion:(id)a4;
- (void)updateUserActivityState:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)willDismissSearchController:(id)a3;
- (void)willMoveToParentViewController:(id)a3;
- (void)willPresentSearchController:(id)a3;
@end

@implementation MessageListSearchViewController

- (void)_scheduleIndexStateStatistics
{
  objc_initWeak(&location, self);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100166094;
  v3[3] = &unk_100652040;
  objc_copyWeak(&v4, &location);
  v2 = objc_retainBlock(v3);
  ef_xpc_activity_register();

  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

- (void)setSearchStartTimestamp:(id)a3
{
  objc_storeStrong(&self->_searchStartTimestamp, a3);
  if (a3)
  {

    [(MessageListSearchViewController *)self setDidReportFirstVisibleResults:0];
  }
}

- (void)setSuggestionStartTimestamp:(id)a3
{
  objc_storeStrong(&self->_suggestionStartTimestamp, a3);
  if (a3)
  {

    [(MessageListSearchViewController *)self setDidReportFirstVisibleSuggestions:0];
  }
}

+ (OS_os_log)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100159038;
  block[3] = &unk_10064C4F8;
  block[4] = a1;
  if (qword_1006DD320 != -1)
  {
    dispatch_once(&qword_1006DD320, block);
  }

  v2 = qword_1006DD318;

  return v2;
}

- (MessageListSearchViewController)initWithMainScene:(id)a3 mailboxes:(id)a4 accountsProvider:(id)a5 favoritesShortcutsProvider:(id)a6 contactStore:(id)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a7;
  v38.receiver = self;
  v38.super_class = MessageListSearchViewController;
  v15 = [(MessageListViewController *)&v38 initWithMainScene:v11 mailboxes:v12 accountsProvider:v13 favoritesShortcutsProvider:0 contactStore:v14 diagnosticsHelper:0];
  v16 = v15;
  if (v15)
  {
    *&v15->_flags |= 8u;
    v17 = objc_alloc_init(MFSearchTokenTransformer);
    searchTokenTransformer = v16->_searchTokenTransformer;
    v16->_searchTokenTransformer = v17;

    v19 = objc_alloc_init(NSMutableDictionary);
    groupedSuggestionsByCategory = v16->_groupedSuggestionsByCategory;
    v16->_groupedSuggestionsByCategory = v19;

    v21 = [v11 daemonInterface];
    v22 = [v21 senderRepository];
    [(MessageListSearchViewController *)v16 setSenderRepository:v22];

    [(MessageListSearchViewController *)v16 _scheduleIndexStateStatistics];
    [(MessageListSearchViewController *)v16 setInSearchSession:0];
    [(MessageListSearchViewController *)v16 setDidNotifyExtendedLaunchTracker:1];
    objc_initWeak(&location, v16);
    v23 = [EFDebouncer alloc];
    v35[0] = _NSConcreteStackBlock;
    v35[1] = 3221225472;
    v35[2] = sub_10015942C;
    v35[3] = &unk_1006502E8;
    objc_copyWeak(&v36, &location);
    v24 = [v23 initWithTimeInterval:0 scheduler:1 startAfter:v35 block:5.0];
    indexingStatusDebouncer = v16->_indexingStatusDebouncer;
    v16->_indexingStatusDebouncer = v24;

    v26 = [EFDebouncer alloc];
    v27 = +[EFScheduler mainThreadScheduler];
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_100159490;
    v33[3] = &unk_100651A88;
    objc_copyWeak(&v34, &location);
    v28 = [v26 initWithTimeInterval:v27 scheduler:0 startAfter:v33 block:0.5];
    searchDebouncer = v16->_searchDebouncer;
    v16->_searchDebouncer = v28;

    if (qword_1006DD328 != -1)
    {
      sub_100489DC4();
    }

    objc_destroyWeak(&v34);
    objc_destroyWeak(&v36);
    objc_destroyWeak(&location);
  }

  v30 = +[EFPromise promise];
  canShowMenuSuggestionsPromise = v16->_canShowMenuSuggestionsPromise;
  v16->_canShowMenuSuggestionsPromise = v30;

  return v16;
}

- (void)dealloc
{
  [(NSTimer *)self->_beginSearchTimer invalidate];
  [(MUISearchSuggestionsGenerator *)self->_suggestionsGenerator cancel];
  [(EFDebouncer *)self->_indexingStatusDebouncer cancel];
  [(EFDebouncer *)self->_searchDebouncer cancel];
  v3 = [(MessageListSearchViewController *)self localSearchInitialLoadPromise];
  [v3 cancel];

  v4 = [(MessageListSearchViewController *)self localSearchRemotePromise];
  [v4 cancel];

  v5 = [(MessageListSearchViewController *)self remoteSearchInitialLoadPromise];
  [v5 cancel];

  v6 = [(MessageListSearchViewController *)self remoteSearchServerPromise];
  [v6 cancel];

  v7 = [(MessageListSearchViewController *)self canShowMenuSuggestionsPromise];
  [v7 cancel];

  v8.receiver = self;
  v8.super_class = MessageListSearchViewController;
  [(MessageListViewController *)&v8 dealloc];
}

- (void)loadView
{
  v9.receiver = self;
  v9.super_class = MessageListSearchViewController;
  [(MessageListSearchViewController *)&v9 loadView];
  v3 = +[NSUserDefaults standardUserDefaults];
  if ([v3 BOOLForKey:kMUILocalMailboxSearchOnlyKey])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  *&self->_flags = *&self->_flags & 0xFD | v4;

  v5 = +[CSSuggestion emptySuggestion];
  [(MessageListSearchViewController *)self setCurrentSuggestion:v5];

  v6 = objc_alloc_init(EMCoreAnalyticsCollector);
  [(MessageListSearchViewController *)self setAnalyticsCollector:v6];

  [(MessageListSearchViewController *)self _updateIndexStatisticsIfNeeded];
  if (_os_feature_enabled_impl())
  {
    v7 = +[EFDevice currentDevice];
    v8 = [v7 isInternal];

    if (v8)
    {
      [(MessageListSearchViewController *)self _resetSearchFeedbackIfNeeded];
    }
  }
}

- (BOOL)isFilterButtonEnabled
{
  v3 = [(MessageListSearchViewController *)self presentingViewController];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = [(MessageListSearchViewController *)self presentingViewController];
  v6 = [v5 isFilterButtonEnabled];

  return v6;
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = MessageListSearchViewController;
  [(MessageListViewController *)&v4 viewDidLoad];
  v3 = [(MessageListSearchViewController *)self collectionView];
  [v3 setKeyboardDismissMode:1];
  [v3 setSelectionFollowsFocus:1];
}

- (void)viewDidAppear:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = MessageListSearchViewController;
  [(MessageListViewController *)&v7 viewDidAppear:a3];
  if (![(MessageListSearchViewController *)self isSearchSuggestionsVisible])
  {
    [(MessageListSearchViewController *)self reportSearchDidBecomeActive];
  }

  v4 = [(MessageListViewController *)self indexStatus];

  if (v4)
  {
    v5 = [(MessageListSearchViewController *)self _computeBGSystemTaskFeatureCheckpoint];
    v6 = +[MessageListSearchViewController log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v9 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Reporting Search Indexer feature checkpoint: %ld", buf, 0xCu);
    }

    [BGSystemTaskCheckpoints reportFeatureCheckpoint:v5 forFeature:302 error:0];
  }
}

- (void)setIndexStatistics:(id)a3
{
  v7 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = [v7 copy];
  indexStatistics = v4->_indexStatistics;
  v4->_indexStatistics = v5;

  objc_sync_exit(v4);
}

- (NSDictionary)indexStatistics
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_indexStatistics;
  objc_sync_exit(v2);

  return v3;
}

- (void)viewDidLayoutSubviews
{
  v7.receiver = self;
  v7.super_class = MessageListSearchViewController;
  [(MessageListViewController *)&v7 viewDidLayoutSubviews];
  v3 = +[EFDevice currentDevice];
  if ([v3 isRealityDevice])
  {
    v4 = _UISolariumFeatureFlagEnabled();
  }

  else
  {
    v4 = 0;
  }

  if ((MUISolariumFeatureEnabled() & 1) == 0 && (v4 & 1) == 0)
  {
    v5 = [(MessageListSearchViewController *)self suggestionsViewController];
    v6 = [(MessageListSearchViewController *)self collectionView];
    [v6 layoutMargins];
    [v5 updateLayoutMargins:?];
  }
}

- (MUISearchSuggestionsGenerator)suggestionsGenerator
{
  v2 = self;
  objc_sync_enter(v2);
  suggestionsGenerator = v2->_suggestionsGenerator;
  if (!suggestionsGenerator)
  {
    v4 = sub_1001598FC(v2);
    v5 = [[MUISearchSuggestionsGenerator alloc] initWithSuggesters:v4 delegate:v2];
    v6 = v2->_suggestionsGenerator;
    v2->_suggestionsGenerator = v5;

    suggestionsGenerator = v2->_suggestionsGenerator;
  }

  v7 = suggestionsGenerator;
  objc_sync_exit(v2);

  return v7;
}

- (MFSearchSuggestionsViewControllable)suggestionsViewController
{
  v2 = self;
  objc_sync_enter(v2);
  suggestionsViewController = v2->_suggestionsViewController;
  if (!suggestionsViewController)
  {
    v4 = [_TtC10MobileMail31SearchSuggestionsViewController alloc];
    v5 = [(MessageListViewController *)v2 scene];
    v6 = [(MessageListSearchViewController *)v2 contactStore];
    v7 = [(SearchSuggestionsViewController *)v4 initWithMailScene:v5 contactStore:v6 delegate:v2];
    v8 = v2->_suggestionsViewController;
    v2->_suggestionsViewController = v7;

    suggestionsViewController = v2->_suggestionsViewController;
  }

  v9 = suggestionsViewController;
  objc_sync_exit(v2);

  return v9;
}

- (BOOL)shouldEnableEditButton
{
  if ([(MessageListSearchViewController *)self isSearchSuggestionsVisible]|| ![(MessageListViewController *)self isSearchControllerActive])
  {
    return 0;
  }

  if (_os_feature_enabled_impl())
  {
    v8[1] = MessageListSectionInstantAnswers;
    v8[2] = MessageListSectionTopHits;
    v8[3] = MessageListSectionIndexedSearch;
    v3 = &v9;
  }

  else
  {
    v3 = v8;
  }

  *v3 = MessageListSectionServerSearch;
  v5 = [NSArray arrayWithObjects:"arrayWithObjects:count:" count:?];
  v6 = [(MessageListSearchViewController *)self dataSource];
  v4 = [v6 numberOfItemsInSections:v5] > 0;

  return v4;
}

- (void)_configureLayoutListConfiguration:(id)a3 atSection:(int64_t)a4
{
  v6 = a3;
  v23.receiver = self;
  v23.super_class = MessageListSearchViewController;
  [(MessageListViewController *)&v23 _configureLayoutListConfiguration:v6 atSection:a4];
  v7 = [(MessageListSearchViewController *)self dataSource];
  v8 = [v7 isSection:MessageListSectionIndexedSearch atIndex:a4];
  v9 = [v7 isSection:MessageListSectionServerSearch atIndex:a4];
  v10 = [v7 shouldDisplaySupplementaryKind:UICollectionElementKindSectionHeader forSectionAtIndex:a4];
  v11 = [v7 shouldDisplaySupplementaryKind:UICollectionElementKindSectionFooter forSectionAtIndex:a4];
  [v6 setFooterMode:0];
  v12 = [(MessageListSearchViewController *)self remoteSearchServerPromise];
  v13 = [v12 future];
  v14 = [v13 resultIfAvailable];

  v15 = [(MessageListSearchViewController *)self hasReceivedFirstRemoteSearchResult];
  if (v14)
  {
    v16 = 1;
  }

  else
  {
    v16 = v15;
  }

  if (v16 == 1 && ![(MessageListSearchViewController *)self _shouldKeepDisplayingSearchingFooter])
  {
    v18 = [(MessageListViewController *)self indexStatus];
    v19 = [v18 isNotFullyIndexed];

    v17 = v19 ^ 1;
    if (v9)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v17 = 1;
    if (v9)
    {
LABEL_7:
      [v6 setHeaderMode:v10];
      goto LABEL_13;
    }
  }

  if (v8)
  {
    if (((v11 ^ 1 | v17) & 1) == 0)
    {
      [v6 setFooterMode:1];
    }

    [(MessageListSearchViewController *)self setIsOptimizingSearchFooterVisible:((v11 ^ 1 | v17) & 1) == 0];
  }

LABEL_13:
  if ((_os_feature_enabled_impl() & v8 & v10) == 1)
  {
    [v6 setHeaderMode:{-[MessageListSearchViewController _numberOfTopHitResults](self, "_numberOfTopHitResults") > 0}];
  }

  if (v9)
  {
    if (v11 && (-[MessageListSearchViewController searchProgressView](self, "searchProgressView"), v20 = objc_claimAutoreleasedReturnValue(), v21 = [v20 isAnimating] & v17, v20, v21 == 1))
    {
      v22 = 1;
      [v6 setFooterMode:1];
    }

    else
    {
      v22 = 0;
    }

    [(MessageListSearchViewController *)self setIsSearchingFooterVisible:v22];
  }
}

- (int64_t)_numberOfTopHitResults
{
  v3 = [(MessageListSearchViewController *)self dataSource];
  v4 = [v3 sectionIndexForSection:MessageListSectionTopHits];

  v5 = [(MessageListSearchViewController *)self dataSource];
  v6 = [v5 numberOfItemsAtSectionIndex:v4];

  return v6;
}

- (id)sectionHeaderTitleForMessageListSectionDataSource:(id)a3
{
  v4 = [a3 section];
  v5 = [(MessageListSearchViewController *)self _numberOfTopHitResults];
  if ([v4 isEqualToString:MessageListSectionServerSearch])
  {
    v6 = +[NSBundle mainBundle];
    v7 = [v6 localizedStringForKey:@"SEARCH_SECTION_TITLE_SERVER" value:&stru_100662A88 table:@"Main"];
LABEL_5:
    v8 = v7;
LABEL_6:

    goto LABEL_7;
  }

  if ([v4 isEqualToString:MessageListSectionIndexedSearch])
  {
    v6 = +[NSBundle mainBundle];
    v7 = [v6 localizedStringForKey:@"SEARCH_SECTION_TITLE_INDEXED" value:&stru_100662A88 table:@"Main"];
    goto LABEL_5;
  }

  if ([v4 isEqualToString:MessageListSectionTopHits])
  {
    v6 = +[NSBundle mainBundle];
    v10 = [v6 localizedStringForKey:@"SEARCH_SECTION_TITLE_TOP_HITS%1$lu" value:&stru_100662A88 table:@"Main"];
    v8 = [NSString localizedStringWithFormat:v10, v5];

    goto LABEL_6;
  }

  v8 = 0;
LABEL_7:

  return v8;
}

- (id)navigationTitleForSearch
{
  if ((*&self->_flags & 2) != 0)
  {
    v3 = [(MessageListSearchViewController *)self mailboxes];
    v4 = [v3 firstObject];

    v5 = [v4 account];
    [v4 name];
    if (v5)
      v6 = {;
      v7 = [v4 account];
      v8 = [v7 name];
      v9 = [NSString localizedStringWithFormat:@"%@ – %@", v6, v8];
    }

    else
      v9 = {;
    }

    v2 = v9;
  }

  else
  {
    v2 = _EFLocalizedString();
  }

  v10 = _EFLocalizedString();
  v11 = [NSString localizedStringWithFormat:v10, v2];

  return v11;
}

- (void)willPresentSearchController:(id)a3
{
  v9 = a3;
  v4 = [(MessageListViewController *)self conversationViewController];
  [v4 setDelegate:self];

  [(MessageListSearchViewController *)self setGenerateCannedSuggestions:1];
  *&self->_flags &= ~0x10u;
  [(MessageListSearchViewController *)self setSearching:0];
  [(MessageListSearchViewController *)self _preheatCoreSpotlightModel];
  [(MessageListSearchViewController *)self _resetGlobalScopeTitles];
  [(MessageListSearchViewController *)self _startSearchSession];
  [(MessageListSearchViewController *)self setSnapshotViewForDismissal:0];
  [(MessageListSearchViewController *)self setEnablePresentationAnimation:1];
  v5 = +[NSNotificationCenter defaultCenter];
  [v5 addObserver:self selector:"_didCompletePresentationTransition:" name:UIPresentationControllerPresentationTransitionDidEndNotification object:v9];

  v6 = +[NSNotificationCenter defaultCenter];
  [v6 addObserver:self selector:"_didCompleteDismissalTransition:" name:UIPresentationControllerDismissalTransitionDidEndNotification object:v9];

  v7 = [(MessageListSearchViewController *)self suggestionForInitialSearch];

  if (v7)
  {
    [(MessageListSearchViewController *)self _beginSearchWithRepresentedObjectsForInitialSearch];
  }

  v8 = [(MessageListSearchViewController *)self userActivity];
  [v8 becomeCurrent];
}

- (void)_preheatCoreSpotlightModel
{
  v2 = +[MessageListViewController log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "In MessageListSearchViewController, call +[CSUserQuery prepare] to preheat models and resources for semantic search", v7, 2u);
  }

  v3 = _os_feature_enabled_impl();
  v4 = &NSFileProtectionCompleteUntilFirstUserAuthentication;
  if (!v3)
  {
    v4 = &NSFileProtectionComplete;
  }

  v5 = *v4;
  v8 = v5;
  v6 = [NSArray arrayWithObjects:&v8 count:1];
  [CSUserQuery prepareProtectionClasses:v6];
}

- (void)_startSearchSession
{
  v3 = +[MSParsecSearchSession sharedSession];
  [(MessageListViewController *)self setSession:v3];

  [(MessageListSearchViewController *)self _updateIndexStatisticsIfNeeded];
  [(MessageListSearchViewController *)self reportSearchViewAppeared:1 currentMailboxScope:(*&self->_flags >> 1) & 1];

  [(MessageListSearchViewController *)self setUpAppSwitcherObserver];
}

- (void)viewWillAppear:(BOOL)a3
{
  v22.receiver = self;
  v22.super_class = MessageListSearchViewController;
  [(MessageListViewController *)&v22 viewWillAppear:a3];
  v4 = +[MFKeyboardAvoidance sharedController];
  [v4 registerKeyboardAvoidable:self];

  [(MessageListSearchViewController *)self setLastSelectedTopHitItemID:0];
  if ([(MessageListSearchViewController *)self enablePresentationAnimation])
  {
    v5 = [(MessageListSearchViewController *)self view];
    [v5 frame];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;

    v14 = [(MessageListSearchViewController *)self navigationController];
    v15 = [v14 navigationBar];
    [v15 frame];
    v17 = v9 + v16;

    v18 = [(MessageListSearchViewController *)self view];
    [v18 setFrame:{v7, v17, v11, v13}];

    v19 = [(MessageListSearchViewController *)self transitionCoordinator];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_10015B050;
    v21[3] = &unk_100651B18;
    v21[4] = self;
    *&v21[5] = v7;
    *&v21[6] = v9;
    *&v21[7] = v11;
    *&v21[8] = v13;
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_10015B0D8;
    v20[3] = &unk_10064CC00;
    v20[4] = self;
    [v19 animateAlongsideTransition:v21 completion:v20];

    [(MessageListSearchViewController *)self setEnablePresentationAnimation:0];
  }
}

- (void)viewIsAppearing:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = MessageListSearchViewController;
  [(MessageListSearchViewController *)&v4 viewIsAppearing:a3];
  [(MessageListViewController *)self _updateTitle];
  [(MessageListViewController *)self _updateNavigationBarButtonsWithForce:1];
}

- (void)willDismissSearchController:(id)a3
{
  [(MessageListSearchViewController *)self _prepareSnapshotViewForDismissal];
  [(MessageListSearchViewController *)self setGenerateCannedSuggestions:0];
  [(MessageListSearchViewController *)self _notePredicateUpdated:0];
  *&self->_flags &= ~0x10u;
  [(MessageListSearchViewController *)self setSearching:0];
  [(MessageListSearchViewController *)self setLastSelectedTopHitItemID:0];
  v6 = +[CSSuggestion emptySuggestion];
  [(MessageListSearchViewController *)self setCurrentSuggestion:?];

  [(MessageListViewController *)self setCurrentUserTypedPhrase:0];
  [(MessageListSearchViewController *)self _clearSearchResultSections];
  if (_os_feature_enabled_impl())
  {
    v7 = +[EFDevice currentDevice];
    v4 = [v7 isInternal];

    if (v4)
    {
      v5 = [(MessageListSearchViewController *)self activeSearchFeedbackToastController];

      if (v5)
      {
        v8 = [(MessageListSearchViewController *)self activeSearchFeedbackToastController];
        [(MessageListSearchViewController *)self dismissToastViewController:?];
      }
    }
  }

  [(MessageListSearchViewController *)self _endSearchSession];
  v9 = [(MessageListSearchViewController *)self beginSearchTimer];
  [v9 invalidate];

  [(MessageListSearchViewController *)self setBeginSearchTimer:0];
  [(MessageListSearchViewController *)self setLocalSearchInitialLoadPromise:0];
  [(MessageListSearchViewController *)self setLocalSearchRemotePromise:0];
  [(MessageListSearchViewController *)self setRemoteSearchInitialLoadPromise:0];
  [(MessageListSearchViewController *)self setRemoteSearchServerPromise:0];
  v10 = [(MessageListSearchViewController *)self groupedSuggestionsByCategory];
  [v10 removeAllObjects];

  v11 = [(MessageListSearchViewController *)self userActivity];
  [v11 resignCurrent];
}

- (void)_clearSearchResultSections
{
  v3 = [MessageListDataSourceUpdateRequest alloc];
  v8[0] = MessageListSectionInstantAnswers;
  v8[1] = MessageListSectionTopHits;
  v8[2] = MessageListSectionIndexedSearch;
  v8[3] = MessageListSectionServerSearch;
  v4 = [NSArray arrayWithObjects:v8 count:4];
  v5 = [v3 initWithSectionUpdates:0 sectionsToRemove:v4 startsWithEmptySnapshot:1];

  v6 = [(MessageListSearchViewController *)self dataSource];
  [v6 applyMessageListDataSourceUpdate:v5];

  v7 = [(MessageListSearchViewController *)self groupedSuggestionsByCategory];
  [v7 removeAllObjects];

  [(MessageListSearchViewController *)self setSuggestionStartTimestamp:0];
  [(MessageListSearchViewController *)self setSuggestionsCompletionTimestamp:0];
  [(MessageListSearchViewController *)self setSearchStartTimestamp:0];
}

- (void)_endSearchSession
{
  [(MessageListSearchViewController *)self reportSearchEndedEvent:2];

  [(MessageListSearchViewController *)self removeObservers];
}

- (void)setSnapshotViewForDismissal:(id)a3
{
  v5 = a3;
  snapshotViewForDismissal = self->_snapshotViewForDismissal;
  v7 = v5;
  if (snapshotViewForDismissal != v5)
  {
    [(UIView *)snapshotViewForDismissal removeFromSuperview];
    objc_storeStrong(&self->_snapshotViewForDismissal, a3);
  }
}

- (void)_prepareSnapshotViewForDismissal
{
  v14 = [(MessageListSearchViewController *)self view];
  v3 = [v14 snapshotViewAfterScreenUpdates:0];
  [(MessageListSearchViewController *)self setSnapshotViewForDismissal:v3];

  v15 = [(MessageListSearchViewController *)self view];
  [v15 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(MessageListSearchViewController *)self snapshotViewForDismissal];
  [v12 setFrame:{v5, v7, v9, v11}];

  v16 = [(MessageListSearchViewController *)self view];
  v13 = [(MessageListSearchViewController *)self snapshotViewForDismissal];
  [v16 addSubview:v13];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  [(MessageListSearchViewController *)self setInSearchSession:0];
  v24.receiver = self;
  v24.super_class = MessageListSearchViewController;
  [(MessageListViewController *)&v24 viewWillDisappear:v3];
  v5 = +[MFKeyboardAvoidance sharedController];
  [v5 unregisterKeyboardAvoidable:self];

  v6 = [(MessageListSearchViewController *)self searchBar];
  [v6 resignFirstResponder];

  v7 = [(MessageListSearchViewController *)self snapshotViewForDismissal];

  if (v7)
  {
    v8 = [(MessageListSearchViewController *)self view];
    [v8 frame];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;

    v17 = [(MessageListSearchViewController *)self navigationController];
    v18 = [v17 navigationBar];
    [v18 frame];
    v20 = v12 + v19;

    v21 = [(MessageListSearchViewController *)self transitionCoordinator];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_10015B954;
    v23[3] = &unk_100651B18;
    v23[4] = self;
    v23[5] = v10;
    *&v23[6] = v20;
    v23[7] = v14;
    v23[8] = v16;
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_10015B9DC;
    v22[3] = &unk_100651B18;
    v22[4] = self;
    v22[5] = v10;
    *&v22[6] = v12;
    v22[7] = v14;
    v22[8] = v16;
    [v21 animateAlongsideTransition:v23 completion:v22];
  }
}

- (void)willMoveToParentViewController:(id)a3
{
  v4 = a3;
  v5.receiver = self;
  v5.super_class = MessageListSearchViewController;
  [(MessageListSearchViewController *)&v5 willMoveToParentViewController:v4];
  if (!v4)
  {
    [(MessageListSearchViewController *)self _generateSuggestionsForPhrase:0];
  }
}

- (void)_didCompletePresentationTransition:(id)a3
{
  v4 = [(MessageListSearchViewController *)self canShowMenuSuggestionsPromise];
  v3 = +[NSNull null];
  [v4 finishWithResult:v3];
}

- (void)_didCompleteDismissalTransition:(id)a3
{
  v4 = +[EFPromise promise];
  [(MessageListSearchViewController *)self setCanShowMenuSuggestionsPromise:?];
}

- (id)splitViewController
{
  v8.receiver = self;
  v8.super_class = MessageListSearchViewController;
  v3 = [(MessageListSearchViewController *)&v8 splitViewController];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = [(MessageListSearchViewController *)self presentingViewController];
    v5 = [v6 splitViewController];
  }

  return v5;
}

- (id)navigationController
{
  v8.receiver = self;
  v8.super_class = MessageListSearchViewController;
  v3 = [(MessageListSearchViewController *)&v8 navigationController];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = [(MessageListSearchViewController *)self presentingViewController];
    v5 = [v6 navigationController];
  }

  return v5;
}

- (id)targetViewControllerForAction:(SEL)a3 sender:(id)a4
{
  v6 = a4;
  v7 = [(MessageListSearchViewController *)self presentingViewController];
  v8 = [v7 targetViewControllerForAction:a3 sender:v6];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v13.receiver = self;
    v13.super_class = MessageListSearchViewController;
    v10 = [(MessageListSearchViewController *)&v13 targetViewControllerForAction:a3 sender:v6];
  }

  v11 = v10;

  return v11;
}

- (void)setToolbarItems:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  v6 = [(MessageListSearchViewController *)self presentingViewController];
  [v6 setToolbarItems:v7 animated:v4];
}

- (id)toolbarItems
{
  v2 = [(MessageListSearchViewController *)self presentingViewController];
  v3 = [v2 toolbarItems];

  return v3;
}

- (id)navigationItem
{
  v2 = [(MessageListSearchViewController *)self presentingViewController];
  v3 = [v2 navigationItem];

  return v3;
}

- (id)searchBar
{
  v2 = [(MessageListSearchViewController *)self parentViewController];
  v3 = [v2 searchBar];

  return v3;
}

- (id)_currentEditingStringForSearchBar:(id)a3
{
  v3 = [(MessageListSearchViewController *)self searchBar];
  v4 = [v3 text];

  v5 = [v4 ef_stringByTrimmingWhitespaceAndNewlineCharacters];

  return v5;
}

- (unint64_t)_countOfSuggestionAtomsInSearchbar:(id)a3
{
  v3 = [a3 representedSuggestionTokens];
  v4 = [v3 count];

  return v4;
}

- (void)_resetGlobalScopeTitles
{
  v3 = [(MessageListSearchViewController *)self searchBar];
  v4 = v3;
  if (*&self->_flags)
  {
    [v3 setScopeButtonTitles:0];
  }

  else
  {
    v5 = +[NSBundle mainBundle];
    v6 = [v5 localizedStringForKey:@"ALL_MAILBOXES" value:&stru_100662A88 table:@"Main"];
    v10[0] = v6;
    v7 = +[NSBundle mainBundle];
    v8 = [v7 localizedStringForKey:@"CURRENT_MAILBOX" value:&stru_100662A88 table:@"Main"];
    v10[1] = v8;
    v9 = [NSArray arrayWithObjects:v10 count:2];
    [v4 setScopeButtonTitles:v9];

    [v4 setSelectedScopeButtonIndex:(*&self->_flags >> 1) & 1];
  }

  [(MessageListViewController *)self _updateTitle];
}

- (void)globalSearchScopeChanged:(int64_t)a3
{
  *&self->_flags = *&self->_flags & 0xFD | (2 * (a3 == 1));
  v4 = +[NSUserDefaults standardUserDefaults];
  [v4 setBool:(*&self->_flags >> 1) & 1 forKey:kMUILocalMailboxSearchOnlyKey];

  [(MessageListViewController *)self _updateTitle];
  [(MessageListSearchViewController *)self _reportSearchQueryStateForScopeChange];

  [(MessageListSearchViewController *)self _notePredicateUpdated:2];
}

- (void)searchTokenScopeChanged:(int64_t)a3
{
  v5 = [(MessageListSearchViewController *)self searchBar];
  v6 = [v5 searchTextField];
  v7 = [(MessageListSearchViewController *)self _objectFromSelectionInSearchTextField:v6];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
    [v8 setSelectedScopeIndex:a3];
    v9 = [(MessageListSearchViewController *)self currentSuggestion];
    v10 = [v8 csToken];
    v11 = [CSSuggestion updatedSuggestionWithCurrentSuggestion:v9 token:v10 scopeSelection:a3];

    [(MessageListSearchViewController *)self redrawSearchBarWithSuggestion:v11];
    v12 = +[MessageListSearchViewController log];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [v11 userQueryString];
      v14 = [EFPrivacy partiallyRedactedStringForString:v13];
      v15 = [v11 suggestionTokens];
      v16 = 138412802;
      v17 = v11;
      v18 = 2112;
      v19 = v14;
      v20 = 2112;
      v21 = v15;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Suggestion was updated. Reason: Scope changed. Suggestion: %@ UserQueryString: %@ SuggestionTokens: %@", &v16, 0x20u);
    }
  }

  [(MessageListSearchViewController *)self _reportSearchQueryStateForScopeChange];
  [(MessageListSearchViewController *)self _notePredicateUpdated:2];
}

- (void)beginSearchWithQueryString:(id)a3 scope:(id)a4
{
  v7 = a4;
  v6 = [CSSuggestion mui_suggestionForSpotlightQueryWithString:a3];
  [(MessageListSearchViewController *)self beginSearchWithSuggestion:v6 scope:v7];
}

- (void)beginSearchWithSuggestion:(id)a3 scope:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[MessageListSearchViewController log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412546;
    v13 = v6;
    v14 = 2112;
    v15 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "beginSearchWithSuggestion suggestion=%@, scope=%@", &v12, 0x16u);
  }

  *&self->_flags = *&self->_flags & 0xF3 | 4;
  [(MessageListSearchViewController *)self setSuggestionForInitialSearch:v6];
  v9 = [MFSearchScope indexFromScopeKey:v7];
  v10 = [(MessageListSearchViewController *)self searchBar];
  [v10 setSelectedScopeButtonIndex:v9];

  *&self->_flags = *&self->_flags & 0xFD | (2 * (v9 == 1));
  [(MessageListViewController *)self _updateTitle];
  v11 = [(MessageListSearchViewController *)self searchController];
  LODWORD(v10) = [v11 isActive];

  if (v10)
  {
    [(MessageListSearchViewController *)self _beginSearchWithRepresentedObjectsForInitialSearch];
  }
}

- (void)_beginSearchWithRepresentedObjectsForInitialSearch
{
  [(MessageListSearchViewController *)self searchBar];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10015C8F8;
  v3 = block[3] = &unk_10064C7E8;
  v6 = v3;
  dispatch_async(&_dispatch_main_q, block);
  v4 = [(MessageListSearchViewController *)self suggestionForInitialSearch];
  if (v4)
  {
    [(MessageListSearchViewController *)self redrawSearchBarWithSuggestion:v4];
    [(MessageListSearchViewController *)self _addSuggestionToRecentSuggester:v4];
  }

  [(MessageListSearchViewController *)self setSearchSuggestionsVisible:0];
  *&self->_flags |= 8u;
  [(MessageListSearchViewController *)self _notePredicateUpdated:1];
  [(MessageListSearchViewController *)self setSuggestionForInitialSearch:0];
}

- (id)_objectFromSelectionInSearchTextField:(id)a3
{
  v3 = a3;
  v4 = [v3 selectedTextRange];
  if (v4)
  {
    v5 = [v3 tokensInRange:v4];
    if ([v5 count] == 1)
    {
      v6 = [v5 firstObject];
      v7 = [v6 representedObject];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_scopeTitlesForSearchAtom:(id)a3
{
  v3 = [a3 suggestion];
  v4 = [v3 category];
  v5 = [v4 scopes];

  if ([v5 count] < 2)
  {
    v6 = &__NSArray0__struct;
  }

  else
  {
    v6 = [v5 ef_map:&stru_100651B58];
  }

  return v6;
}

- (void)_addSuggestionToRecentSuggester:(id)a3
{
  v7 = a3;
  v4 = [(MessageListSearchViewController *)self recentSuggester];
  v5 = [v7 copy];
  v6 = [MUISearchAtomSuggestion suggestionFromSpotlightSuggestion:v5 shouldShowAvaters:0];
  [v4 addSuggestion:v6];
}

- (id)_excludedMailboxesInPredicate:(id)a3
{
  v4 = a3;
  v5 = +[EFPromise promise];
  v6 = [[EMQuery alloc] initWithTargetClass:objc_opt_class() predicate:v4 sortDescriptors:&__NSArray0__struct];
  v7 = [(MessageListSearchViewController *)self mailboxRepository];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10015CD74;
  v14[3] = &unk_10064CE98;
  v8 = v5;
  v15 = v8;
  [v7 performQuery:v6 completionHandler:v14];

  v9 = [v8 future];
  v10 = [v9 result:0];

  if (v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = &__NSArray0__struct;
  }

  v12 = v11;

  return v11;
}

- (id)_excludedMailboxes
{
  v3 = [(MessageListSearchViewController *)self _excludeJunkTrashPredicate];
  if (v3)
  {
    v4 = [(MessageListSearchViewController *)self mailboxes];
    v5 = [(MessageListSearchViewController *)self _excludedMailboxesInPredicate:v3];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10015CEB8;
    v9[3] = &unk_10064CEC0;
    v6 = v4;
    v10 = v6;
    v7 = [v5 ef_filter:v9];
  }

  else
  {
    v7 = &__NSArray0__struct;
  }

  return v7;
}

- (id)_excludeJunkTrashPredicate
{
  v2 = +[NSUserDefaults em_userDefaults];
  v3 = [v2 BOOLForKey:EMUserDefaultIncludeSearchResultsFromJunkKey];

  v4 = +[NSUserDefaults em_userDefaults];
  v5 = [v4 BOOLForKey:EMUserDefaultIncludeSearchResultsFromTrashKey];

  if ((v3 | v5))
  {
    if (v3)
    {
      if (v5)
      {
        v6 = 0;
        goto LABEL_9;
      }

      v10 = [EMMailbox predicateForMailboxType:3];
    }

    else
    {
      v10 = [EMMailbox predicateForMailboxType:1];
    }

    v6 = v10;
  }

  else
  {
    v7 = [EMMailbox predicateForMailboxType:1];
    v12[0] = v7;
    v8 = [EMMailbox predicateForMailboxType:3];
    v12[1] = v8;
    v9 = [NSArray arrayWithObjects:v12 count:2];
    v6 = [NSCompoundPredicate orPredicateWithSubpredicates:v9];
  }

LABEL_9:

  return v6;
}

- (void)_getDefaultPersonScopeIdentifier:(id *)a3 alternativeScopeIdentifier:(id *)a4
{
  v6 = [(MessageListSearchViewController *)self mailboxes];
  v7 = [v6 ef_any:&stru_100651B78];

  if (v7)
  {
    v8 = MFSearchSuggestionPeopleCategoryToScope;
    v9 = MFSearchSuggestionPeopleCategoryToScope;
    v10 = 0;
    *a3 = v8;
  }

  else
  {
    *a3 = MFSearchSuggestionPeopleCategoryFromScope;
    v10 = MFSearchSuggestionPeopleCategoryToScope;
  }

  *a4 = v10;
}

- (id)_scopeIdentifierForPeopleSuggestions
{
  v6 = 0;
  v7 = 0;
  [(MessageListSearchViewController *)self _getDefaultPersonScopeIdentifier:&v7 alternativeScopeIdentifier:&v6];
  v2 = v7;
  v3 = v6;
  v4 = v2;

  return v2;
}

- (id)_phraseManagerForPhrase:(id)a3
{
  v4 = a3;
  if (-[MessageListSearchViewController _shouldSearchCurrentMailboxOnly](self, "_shouldSearchCurrentMailboxOnly") && (-[MessageListSearchViewController mailboxes](self, "mailboxes"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 count], v5, v6))
  {
    v7 = [(MessageListSearchViewController *)self mailboxes];
    v8 = [SearchMailboxSuggestion suggestionForMailboxes:v7];

    v9 = [v8 category];
    v10 = [v9 indexOfScopeWithIdentifier:MFSearchSuggestionMailboxCategoryScope];

    v11 = [MUISearchScopedSuggestion scopedSuggestion:v8 selectedScopeIndex:v10];
    v22 = v11;
    v12 = [NSArray arrayWithObjects:&v22 count:1];
  }

  else
  {
    v12 = 0;
  }

  v13 = +[VIPManager defaultInstance];
  v14 = [(MessageListSearchViewController *)self currentSuggestion];
  v15 = [(MessageListSearchViewController *)self _excludedMailboxes];
  v16 = [(MessageListViewController *)self inputLanguages];
  v17 = [(MessageListViewController *)self session];
  v18 = [v17 feedbackQueryID];
  LOBYTE(v21) = ![(MessageListSearchViewController *)self shouldShowMenuSuggestions];
  v19 = [MFSearchSuggestionPhraseManager phraseManagerWithPhrase:v4 selectedSuggestions:0 vipManager:v13 updatedSuggestion:v14 filterQuery:0 implicitSuggestions:v12 excludedMailboxes:v15 inputLanguages:v16 feedbackQueryID:v18 includeTopHitsAndInstantAnswers:v21];

  return v19;
}

- (void)_generateSuggestionsForPhrase:(id)a3
{
  v13 = a3;
  v4 = [(MessageListSearchViewController *)self suggestionsGenerator];
  v5 = [(MessageListSearchViewController *)self suggestionsIdentifier];
  [v4 stopGeneratingSuggestionsWithIdentifier:v5];

  [(MessageListSearchViewController *)self setSuggestionsIdentifier:0];
  [(MessageListSearchViewController *)self setSuggestionsCompletionTimestamp:0];
  [(MessageListSearchViewController *)self setSuggestionStartTimestamp:0];
  if ((*&self->_flags & 8) != 0)
  {
    *&self->_flags &= ~4u;
  }

  v6 = [(MessageListSearchViewController *)self _phraseManagerForPhrase:v13];
  v7 = [(MessageListSearchViewController *)self lastPhrase];
  v8 = [(MessageListSearchViewController *)self suggestionsViewController];
  if ([v13 length])
  {
    v9 = +[NSDate date];
    [(MessageListSearchViewController *)self setSuggestionStartTimestamp:v9];

    if (!v7 || [v13 localizedStandardRangeOfString:v7] && objc_msgSend(v7, "localizedStandardRangeOfString:", v13))
    {
      [v8 clearSuggestions];
      v10 = v13;
    }

    else
    {
      [v8 beginUpdatingSuggestions];
      v10 = v13;
    }
  }

  else
  {
    [v8 clearSuggestions];
    v10 = 0;
  }

  [(MessageListSearchViewController *)self setLastPhrase:v10];
  if (v13)
  {
    v11 = [(MessageListSearchViewController *)self suggestionsGenerator];
    v12 = [v11 startGeneratingSuggestionsUsingPhraseManager:v6];
    [(MessageListSearchViewController *)self setSuggestionsIdentifier:v12];
  }
}

- (void)setGenerateCannedSuggestions:(BOOL)a3
{
  if (self->_generateCannedSuggestions != a3)
  {
    self->_generateCannedSuggestions = a3;
    if (a3 && (*&self->_flags & 8) != 0)
    {
      [(MessageListSearchViewController *)self _generateSuggestionsForPhrase:0];

      [(MessageListSearchViewController *)self setSearchSuggestionsVisible:1];
    }
  }
}

- (void)performOnRemoteSearchCompletion:(id)a3
{
  v4 = a3;
  v5 = [(MessageListSearchViewController *)self remoteSearchInitialLoadPromise];
  v6 = [v5 future];

  v7 = [(MessageListSearchViewController *)self remoteSearchServerPromise];
  v8 = [v7 future];

  if (v6 && v8)
  {
    v22[0] = v6;
    v22[1] = v8;
    v9 = [NSArray arrayWithObjects:v22 count:2];
    v10 = [EFFuture combine:v9];

    objc_initWeak(&location, self);
    v11 = +[EFScheduler mainThreadScheduler];
    v13 = _NSConcreteStackBlock;
    v14 = 3221225472;
    v15 = sub_10015D9D4;
    v16 = &unk_100651BA0;
    objc_copyWeak(&v20, &location);
    v17 = v6;
    v18 = v8;
    v19 = v4;
    [v10 onScheduler:v11 addSuccessBlock:&v13];

    v12 = [EFScheduler mainThreadScheduler:v13];
    [v10 onScheduler:v12 addFailureBlock:&stru_100651BC0];

    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
  }
}

- (void)performOnLocalAndRemoteSearchCompletion:(id)a3
{
  v4 = a3;
  v5 = +[MessageListSearchViewController log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Waiting for local and remote search to complete", &buf, 2u);
  }

  v6 = [(MessageListSearchViewController *)self localSearchInitialLoadPromise];
  v7 = [v6 future];

  v8 = [(MessageListSearchViewController *)self localSearchRemotePromise];
  v9 = [v8 future];

  v10 = [(MessageListSearchViewController *)self remoteSearchInitialLoadPromise];
  v11 = [v10 future];

  v12 = [(MessageListSearchViewController *)self remoteSearchServerPromise];
  v13 = [v12 future];

  if (v7 && v9 && v11 && v13)
  {
    v29[0] = v7;
    v29[1] = v9;
    v29[2] = v11;
    v29[3] = v13;
    v14 = [NSArray arrayWithObjects:v29 count:4];
    v15 = [EFFuture combine:v14];

    objc_initWeak(&buf, self);
    v16 = +[EFScheduler mainThreadScheduler];
    v18 = _NSConcreteStackBlock;
    v19 = 3221225472;
    v20 = sub_10015E01C;
    v21 = &unk_100651BE8;
    objc_copyWeak(&v27, &buf);
    v22 = v7;
    v23 = v9;
    v24 = v11;
    v25 = v13;
    v26 = v4;
    [v15 onScheduler:v16 addSuccessBlock:&v18];

    v17 = [EFScheduler mainThreadScheduler:v18];
    [v15 onScheduler:v17 addFailureBlock:&stru_100651C08];

    objc_destroyWeak(&v27);
    objc_destroyWeak(&buf);
  }
}

- (BOOL)isSearchSuggestionsVisible
{
  v2 = [(MFSearchSuggestionsViewControllable *)self->_suggestionsViewController parentViewController];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)hasSuggestions
{
  v2 = [(MessageListSearchViewController *)self suggestionsViewController];
  v3 = [v2 hasSuggestions];

  return v3;
}

- (void)setSearchSuggestionsVisible:(BOOL)a3
{
  v3 = a3;
  v5 = [(MessageListSearchViewController *)self isSearchSuggestionsVisible];
  v6 = !v3 || [(MessageListSearchViewController *)self shouldShowMenuSuggestions];
  if (v6 & v5)
  {
    v7 = [(MessageListSearchViewController *)self collectionView];
    [v7 setScrollsToTop:1];

    [(MFSearchSuggestionsViewControllable *)self->_suggestionsViewController willMoveToParentViewController:0];
    v8 = [(MFSearchSuggestionsViewControllable *)self->_suggestionsViewController viewIfLoaded];
    [v8 removeFromSuperview];

    [(MFSearchSuggestionsViewControllable *)self->_suggestionsViewController removeFromParentViewController];
    v9 = [(MessageListSearchViewController *)self collectionView];
    [(MessageListSearchViewController *)self setContentScrollView:v9 forEdge:5];

    [(MessageListViewController *)self updateBarButtons];
    [(MessageListSearchViewController *)self setLastSelectedTopHitItemID:0];
  }

  else if (!(v6 | v5))
  {
    if (self->_suggestionsViewController)
    {
      v10 = [(MessageListSearchViewController *)self collectionView];
      [v10 setScrollsToTop:0];

      if (![(MessageListSearchViewController *)self shouldShowMenuSuggestions])
      {
        [(MessageListSearchViewController *)self addChildViewController:self->_suggestionsViewController];
        v11 = [(MFSearchSuggestionsViewControllable *)self->_suggestionsViewController observableScrollView];
        [(MessageListSearchViewController *)self setContentScrollView:v11 forEdge:5];

        v12 = [(MFSearchSuggestionsViewControllable *)self->_suggestionsViewController view];
        [v12 setAutoresizingMask:18];

        v13 = [(MessageListSearchViewController *)self view];
        [v13 bounds];
        v15 = v14;
        v17 = v16;
        v19 = v18;
        v21 = v20;
        v22 = [(MFSearchSuggestionsViewControllable *)self->_suggestionsViewController view];
        [v22 setFrame:{v15, v17, v19, v21}];

        v23 = [(MessageListSearchViewController *)self view];
        v24 = [(MFSearchSuggestionsViewControllable *)self->_suggestionsViewController view];
        [v23 addSubview:v24];

        [(MFSearchSuggestionsViewControllable *)self->_suggestionsViewController didMoveToParentViewController:self];
      }

      [(MessageListViewController *)self updateBarButtons];
    }

    else
    {
      v25 = +[MessageListSearchViewController log];
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        sub_100489EBC(v25);
      }
    }
  }

  v26 = [(MessageListSearchViewController *)self searchBar];
  [v26 setShowsProgress:v6];
}

- (void)updateSearchResultsForSearchController:(id)a3
{
  v20 = a3;
  v19 = [v20 searchBar];
  v4 = [(MessageListSearchViewController *)self _currentEditingStringForSearchBar:?];
  v5 = [v4 length];
  v6 = +[MessageListSearchViewController log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [(MessageListViewController *)self currentUserTypedPhrase];
    v8 = [EFPrivacy partiallyRedactedStringForString:v7];
    v9 = [(MessageListSearchViewController *)self currentSuggestion];
    v10 = [EMCSLoggingAdditions publicDescriptionForSuggestion:v9];
    v11 = [(MessageListSearchViewController *)self currentSuggestion];
    v12 = [v11 suggestionTokens];
    *buf = 138412802;
    v22 = v8;
    v23 = 2112;
    v24 = v10;
    v25 = 2112;
    v26 = v12;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Searching with userString: %@ suggestion: %@ suggestionTokens: %@", buf, 0x20u);
  }

  if (v5)
  {
    v13 = 0;
  }

  else
  {
    v14 = [(MessageListSearchViewController *)self currentSuggestion];
    v13 = [v14 mui_isEmpty];

    if (v13)
    {
      if ([(MessageListSearchViewController *)self inSearchSession])
      {
        v15 = [(MessageListSearchViewController *)self lastPhrase];
        v13 = v15 != 0;
      }

      else
      {
        v13 = 1;
      }
    }
  }

  if (![(MessageListSearchViewController *)self inSearchSession])
  {
    [(MessageListSearchViewController *)self setInSearchSession:1];
  }

  if (v5)
  {
    v16 = [v4 isEqualToString:self->_lastPhrase] ^ 1;
  }

  else
  {
    v16 = 0;
  }

  if ((v13 | v16))
  {
    if (!((v5 != 0) | [(MessageListSearchViewController *)self generateCannedSuggestions]))
    {
      *&self->_flags |= 4u;
      [(MessageListSearchViewController *)self setSearchSuggestionsVisible:0];
    }

    [(MessageListSearchViewController *)self _generateSuggestionsForPhrase:v4];
  }

  [(MessageListSearchViewController *)self _updateSearchResultsControllerVisibility];
  if ((v16 & [(MessageListSearchViewController *)self shouldShowMenuSuggestions]) == 1)
  {
    v17 = [(MessageListSearchViewController *)self searchDebouncer];
    [v17 debounceResult:v20];
  }

  else if ([(MessageListSearchViewController *)self _shouldUpdateSearchForOptions:2])
  {
    v18 = [(MessageListSearchViewController *)self _countOfSuggestionAtomsInSearchbar:v19];
    if (v18)
    {
      if ([(MessageListSearchViewController *)self countOfAtomsInLastSearch]!= v18)
      {
        [(MessageListSearchViewController *)self _notePredicateUpdated:2];
      }
    }
  }
}

- (void)_updateSearchResultsForSearchController:(id)a3
{
  v4 = [a3 searchBar];
  v5 = [v4 representedObjects];
  v6 = [v5 count];

  if (v6)
  {
    [(MessageListSearchViewController *)self _notePredicateUpdated:1];
  }

  else
  {
    v7 = +[MessageListSearchViewController log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Skipping starting debounced search request since search bar is now empty", v8, 2u);
    }
  }
}

- (void)updateSearchResultsForSearchController:(id)a3 selectingSearchSuggestion:(id)a4
{
  v8 = a4;
  v5 = [v8 representedObject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v7 = [v8 representedObject];
    [(MessageListSearchViewController *)self searchSuggestionsViewController:0 didSelectSuggestion:v7];
  }
}

- (BOOL)_shouldUpdateSearchForOptions:(int64_t)a3
{
  if ([(MessageListSearchViewController *)self isSearchSuggestionsVisible])
  {
    return 0;
  }

  if (a3 == 2)
  {
    return (*&self->_flags & 0x10) != 0;
  }

  return 0;
}

- (void)_updateSearchResultsControllerVisibility
{
  v6 = [(MessageListSearchViewController *)self searchController];
  if (([v6 automaticallyShowsSearchResultsController] & 1) == 0)
  {
    v3 = [(MessageListSearchViewController *)self searchBar];
    v4 = [v3 representedObjects];
    v5 = [v4 count];

    [v6 setShowsSearchResultsController:v5 != 0];
  }
}

- (void)_notePredicateUpdated:(int64_t)a3
{
  [(MessageListSearchViewController *)self _updateIndexStatisticsIfNeeded];
  v23 = [(MessageListSearchViewController *)self searchBar];
  *&self->_flags &= ~1u;
  v5 = [(MessageListSearchViewController *)self _shouldUpdateSearchForOptions:a3];
  [(MessageListSearchViewController *)self setSearching:0];
  if ([(MessageListSearchViewController *)self _shouldSearchCurrentMailboxOnly])
  {
    v6 = [(MessageListSearchViewController *)self mailboxes];
  }

  else
  {
    v6 = 0;
  }

  v7 = [(MessageListSearchViewController *)self searchPredicateForMailboxes:v6];
  v8 = +[MessageListSearchViewController log];
  v9 = (a3 == 1) | v5;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = NSStringFromBOOL();
    v11 = NSStringFromBOOL();
    v12 = NSStringFromBOOL();
    *buf = 134218754;
    v27 = a3;
    v28 = 2114;
    v29 = v10;
    v30 = 2114;
    v31 = v11;
    v32 = 2114;
    v33 = v12;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "notePredicateUpdated options:%lu shouldUpdateSearch:%{public}@ shouldStartSearch:%{public}@ hasCriterion:%{public}@", buf, 0x2Au);
  }

  if (((v7 != 0) & v9) == 1)
  {
    v13 = [(MessageListSearchViewController *)self localSearchInitialLoadPromise];
    [v13 cancel];

    v14 = [(MessageListSearchViewController *)self localSearchRemotePromise];
    [v14 cancel];

    v15 = [(MessageListSearchViewController *)self remoteSearchInitialLoadPromise];
    [v15 cancel];

    v16 = [(MessageListSearchViewController *)self remoteSearchServerPromise];
    [v16 cancel];

    v17 = +[EFPromise promise];
    [(MessageListSearchViewController *)self setLocalSearchInitialLoadPromise:v17];

    v18 = +[EFPromise promise];
    [(MessageListSearchViewController *)self setLocalSearchRemotePromise:v18];

    v19 = +[EFPromise promise];
    [(MessageListSearchViewController *)self setRemoteSearchInitialLoadPromise:v19];

    v20 = +[EFPromise promise];
    [(MessageListSearchViewController *)self setRemoteSearchServerPromise:v20];

    [(MessageListSearchViewController *)self setSearchInfo:0];
    [(MessageListSearchViewController *)self setHasReceivedFirstRemoteSearchResult:0];
    [(MessageListSearchViewController *)self _resetFooterState];
    v21 = +[NSDate date];
    [(MessageListSearchViewController *)self setSearchStartTimestamp:v21];

    v22 = +[MessageListSearchViewController log];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v27 = self;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "noteCriterionUpdated startingSearch: %@", buf, 0xCu);
    }

    [(MessageListSearchViewController *)self reloadDataSourceWithSearchPredicate:v7];
    [(MessageListSearchViewController *)self setSearching:1];
    *&self->_flags |= 0x10u;
    [(MessageListSearchViewController *)self setSearchStartAbsoluteTime:mach_absolute_time()];
    [(MessageListSearchViewController *)self setCountOfAtomsInLastSearch:[(MessageListSearchViewController *)self _countOfSuggestionAtomsInSearchbar:v23]];
    [(MessageListSearchViewController *)self _initializeSearchUserActivity];
    objc_initWeak(buf, self);
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_10015F274;
    v24[3] = &unk_10064C838;
    objc_copyWeak(&v25, buf);
    [(MessageListSearchViewController *)self performOnRemoteSearchCompletion:v24];
    objc_destroyWeak(&v25);
    objc_destroyWeak(buf);
  }

  if ((*&self->_flags & 0x20) == 0)
  {
    [(MessageListSearchViewController *)self _resetGlobalScopeTitles];
  }
}

- (void)_initializeSearchUserActivity
{
  v11 = [(MessageListSearchViewController *)self mailboxes];
  v3 = [(MessageListSearchViewController *)self accountRepository];
  v4 = [v11 firstObject];
  v5 = [v4 accountIdentifier];
  v6 = [v3 accountForIdentifier:v5];

  v7 = [(MessageListSearchViewController *)self searchActivityPayloadDictionary];
  v8 = [(MessageListViewController *)self continuityMailboxActivityPayloadFromMailboxes:v11 account:v6 currentActivityPayload:v7];

  [(MessageListSearchViewController *)self setSearchActivityPayloadDictionary:0];
  if (v8)
  {
    v9 = [[NSMutableDictionary alloc] initWithDictionary:v8];
    [(MessageListSearchViewController *)self setSearchActivityPayloadDictionary:v9];

    v10 = [(MessageListSearchViewController *)self searchActivityPayloadDictionary];
    [v10 setObject:MSMailActivityHandoffTypeSearch forKeyedSubscript:MSMailActivityHandoffTypeKey];
  }
}

- (void)updateUserActivityState:(id)a3
{
  v5 = a3;
  v4 = [(MessageListSearchViewController *)self searchActivityPayloadDictionary];
  [v5 setUserInfo:v4];
}

- (id)_localMailboxPredicate
{
  v2 = [(MessageListSearchViewController *)self mailboxes];
  v3 = [EMMessageListItemPredicates predicateForMessagesInMailboxes:v2];

  return v3;
}

- (MFSearchProgressView)searchProgressView
{
  searchProgressView = self->_searchProgressView;
  if (!searchProgressView)
  {
    v4 = objc_alloc_init(MFSearchProgressView);
    v5 = self->_searchProgressView;
    self->_searchProgressView = v4;

    [(MFSearchProgressView *)self->_searchProgressView setAutoresizingMask:2];
    searchProgressView = self->_searchProgressView;
  }

  return searchProgressView;
}

- (void)setSearching:(BOOL)a3
{
  if (self->_searching != a3)
  {
    v3 = a3;
    v5 = +[MessageListSearchViewController log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = @"No";
      if (v3)
      {
        v6 = @"Yes";
      }

      v7 = 138412290;
      v8 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Updating searching to %@", &v7, 0xCu);
    }

    self->_searching = v3;
    [(MessageListSearchViewController *)self _updateFooter];
  }
}

- (void)_updateFooter
{
  if ([(MessageListSearchViewController *)self isSearching])
  {
    if ([(MessageListSearchViewController *)self isSearchingFooterVisible])
    {
      return;
    }

    v3 = [(MessageListSearchViewController *)self searchProgressViewDisplayCancellable];
    [v3 cancel];

    v4 = [(MessageListSearchViewController *)self searchProgressView];
    LOBYTE(v3) = [v4 isAnimating];

    v5 = +[MessageListSearchViewController log];
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    if (v3)
    {
      if (v6)
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Searching label currently exists and is animated, nothing to do here.", buf, 2u);
      }
    }

    else
    {
      if (v6)
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Queuing animation of 'searching...' label", buf, 2u);
      }

      objc_initWeak(buf, self);
      v10 = +[EFScheduler mainThreadScheduler];
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_10015FA1C;
      v12[3] = &unk_10064C838;
      objc_copyWeak(&v13, buf);
      v11 = [v10 afterDelay:v12 performBlock:1.0];
      [(MessageListSearchViewController *)self setSearchProgressViewDisplayCancellable:v11];

      objc_destroyWeak(&v13);
      objc_destroyWeak(buf);
    }

    v8 = [(MessageListSearchViewController *)self collectionView];
    v9 = [v8 collectionViewLayout];
    [v9 invalidateLayout];
  }

  else
  {
    if ([(MessageListSearchViewController *)self _shouldKeepDisplayingSearchingFooter])
    {
      return;
    }

    v7 = +[MessageListSearchViewController log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Updating footer to remove the searching label", buf, 2u);
    }

    [(MessageListSearchViewController *)self _stopAnimatingSearchingFooter];
    v8 = [(MessageListSearchViewController *)self collectionView];
    v9 = [v8 collectionViewLayout];
    [v9 invalidateLayout];
  }
}

- (void)_displaySearchingFooter
{
  v3 = [(MessageListSearchViewController *)self searchProgressView];
  v4 = [v3 superview];
  [v4 bounds];
  [v3 setFrame:?];

  [v3 setAnimating:1 fade:1];
  v5 = +[NSDate date];
  [(MessageListSearchViewController *)self setSearchProgressViewDisplayStartTime:v5];

  v6 = [(MessageListSearchViewController *)self collectionView];
  v7 = [v6 collectionViewLayout];
  [v7 invalidateLayout];

  if (![(MessageListSearchViewController *)self hasReceivedFirstRemoteSearchResult])
  {
    v8 = [(MessageListSearchViewController *)self dataSource];
    [v8 suspendUpdates];
  }

  v9 = +[EFScheduler mainThreadScheduler];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10015FCF8;
  v11[3] = &unk_10064C7E8;
  v11[4] = self;
  v10 = [v9 afterDelay:v11 performBlock:1.5];
  [(MessageListSearchViewController *)self setFooterUpdateCancelable:v10];
}

- (void)_stopAnimatingSearchingFooter
{
  v3 = [(MessageListSearchViewController *)self searchProgressView];
  [v3 setAnimating:0 fade:0];

  [(MessageListSearchViewController *)self setSearchProgressViewDisplayCancellable:0];

  [(MessageListSearchViewController *)self setSearchProgressViewDisplayStartTime:0];
}

- (BOOL)_shouldKeepDisplayingSearchingFooter
{
  [(MessageListSearchViewController *)self _searchingFooterDisplayTimeLeft];
  if (v3 > 0.0)
  {
    return 1;
  }

  v4 = [(MessageListSearchViewController *)self dataSource];
  if ([v4 isUpdateQueueSuspended])
  {
    v5 = [(MessageListSearchViewController *)self dataSource];
    v6 = [v5 hasQueuedUpdates];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (double)_searchingFooterDisplayTimeLeft
{
  v2 = [(MessageListSearchViewController *)self searchProgressViewDisplayStartTime];
  if (v2)
  {
    v3 = +[NSDate date];
    [v3 timeIntervalSinceDate:v2];
    v5 = v4;

    v6 = fmax(1.5 - v5, 0.0);
  }

  else
  {
    v6 = 0.0;
  }

  return v6;
}

- (void)_resetFooterState
{
  v4 = [(MessageListSearchViewController *)self footerUpdateCancelable];
  [v4 cancel];

  [(MessageListSearchViewController *)self setFooterUpdateCancelable:0];
  [(MessageListSearchViewController *)self _stopAnimatingSearchingFooter];
  v5 = [(MessageListSearchViewController *)self dataSource];
  v3 = [v5 isUpdateQueueSuspended];

  if (v3)
  {
    v6 = [(MessageListSearchViewController *)self dataSource];
    [v6 resumeUpdates];
  }
}

- (void)_updateSearchingCompletionState
{
  v3 = [(MessageListSearchViewController *)self localSearchInitialLoadPromise];
  v4 = [v3 future];
  v5 = [v4 resultIfAvailable];

  v6 = [(MessageListSearchViewController *)self localSearchRemotePromise];
  v7 = [v6 future];
  v8 = [v7 resultIfAvailable];

  v9 = [(MessageListSearchViewController *)self remoteSearchServerPromise];
  v10 = [v9 future];
  v11 = [v10 resultIfAvailable];

  v12 = [(MessageListSearchViewController *)self remoteSearchInitialLoadPromise];
  v13 = [v12 future];
  v14 = [v13 resultIfAvailable];

  if (v5)
  {
    v15 = v8 == 0;
  }

  else
  {
    v15 = 1;
  }

  v17 = v15 || v14 == 0 || v11 == 0;
  v18 = !v17;
  if (!v17)
  {
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_10016022C;
    v21[3] = &unk_10064C7E8;
    v21[4] = self;
    v19 = +[EFScheduler mainThreadScheduler];
    [v19 performBlock:v21];
  }

  v20 = [(MessageListSearchViewController *)self lastSelectedTopHitItemID];

  if (!v20)
  {
    [(MessageListSearchViewController *)self _reportMessageResultsFetchedIsFinished:v18];
  }
}

- (void)messageListSectionDataSource:(id)a3 collectionFinishedSearching:(id)a4 remote:(BOOL)a5 searchInfo:(id)a6
{
  v7 = a5;
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = [v10 section];
  v14 = +[MessageListSearchViewController log];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v24 = 134218754;
    v25 = self;
    v26 = 2114;
    v27 = v13;
    v28 = 1024;
    LODWORD(v29[0]) = v7;
    WORD2(v29[0]) = 2114;
    *(v29 + 6) = v11;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%p: Did finish search with section %{public}@ remote=%{BOOL}d collection %{public}@ ", &v24, 0x26u);
  }

  v15 = [(MessageListSearchViewController *)self dataSource];
  v16 = [v15 messageListForSection:v13];
  v17 = [v16 isEqual:v11];

  if (v17)
  {
    v18 = [v13 isEqual:MessageListSectionIndexedSearch];
    v19 = [v13 isEqual:MessageListSectionServerSearch];
    v20 = v19;
    if (v18)
    {
      if (v7)
      {
        [(MessageListSearchViewController *)self localSearchRemotePromise];
      }

      else
      {
        [(MessageListSearchViewController *)self localSearchInitialLoadPromise];
      }
    }

    else
    {
      if (!v19)
      {
        goto LABEL_16;
      }

      if (v7)
      {
        [(MessageListSearchViewController *)self remoteSearchServerPromise];
      }

      else
      {
        [(MessageListSearchViewController *)self remoteSearchInitialLoadPromise];
      }
    }
    v21 = ;
    v22 = +[NSNull null];
    [v21 finishWithResult:v22];

LABEL_16:
    if (v12)
    {
      [(MessageListSearchViewController *)self setSearchInfo:v12];
    }

    if ((v18 | v20))
    {
      [(MessageListSearchViewController *)self _updateSearchingCompletionState];
    }

    goto LABEL_20;
  }

  v23 = +[MessageListSearchViewController log];
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    v24 = 134218498;
    v25 = self;
    v26 = 2114;
    v27 = v13;
    v28 = 2114;
    v29[0] = v11;
    _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%p: Attempting to update section %{public}@ with outdated collection %{public}@", &v24, 0x20u);
  }

LABEL_20:
}

- (void)messageListSectionDataSource:(id)a3 collectionFailedSearching:(id)a4 remote:(BOOL)a5 searchInfo:(id)a6
{
  v7 = a5;
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = [v10 section];
  v14 = +[MessageListSearchViewController log];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218754;
    v23 = self;
    v24 = 2114;
    v25 = v13;
    v26 = 1024;
    v27 = v7;
    v28 = 2114;
    v29 = v11;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%p: Did fail search with section %{public}@ remote=%{BOOL}d collection %{public}@ ", buf, 0x26u);
  }

  v15 = [(MessageListSearchViewController *)self dataSource];
  v16 = [v15 messageListForSection:v13];
  v17 = [v16 isEqual:v11];

  if ((v17 & 1) == 0)
  {
    v18 = +[MessageListSearchViewController log];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_100489F00(self, v11, v18);
    }

    goto LABEL_8;
  }

  if ([v13 isEqual:MessageListSectionIndexedSearch])
  {
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100160938;
    v19[3] = &unk_100651C30;
    v20 = v12;
    v21 = self;
    [(MessageListViewController *)self parsecEventQueuePerformBlock:v19];
    v18 = v20;
LABEL_8:
  }
}

- (void)searchSuggestionsViewController:(id)a3 didSelectSuggestion:(id)a4
{
  v8 = a4;
  *&self->_flags |= 4u;
  v5 = [(MessageListSearchViewController *)self recentSuggester];
  [v5 addSuggestion:v8];

  v6 = [v8 spotlightSuggestion];
  [(MessageListSearchViewController *)self redrawSearchBarWithSuggestion:v6];

  v7 = [(MessageListSearchViewController *)self _parsecSuggestionForSuggestion:v8];
  [(MessageListSearchViewController *)self reportSuggestionSelected:v7];
  [(MessageListSearchViewController *)self setSearchSuggestionsVisible:0];
  [(MessageListSearchViewController *)self _notePredicateUpdated:1];
  [(MessageListSearchViewController *)self reportSearchQueryStateWithTriggerEvent:8 searchType:3];
}

- (void)searchSuggestionsViewController:(id)a3 deleteRecentSuggestion:(id)a4
{
  v6 = a4;
  v5 = [(MessageListSearchViewController *)self recentSuggester];
  [v5 deleteSuggestion:v6];
}

- (id)_parsecSuggestionForSuggestion:(id)a3
{
  v4 = a3;
  v5 = [v4 category];
  v6 = +[MUISearchSuggestionCategory topHitsCategory];

  if (v5 == v6)
  {
    v19 = v4;
    v20 = [v19 itemID];
    v21 = [v19 message];
    v22 = [v21 date];
    v23 = [v19 mailRankingSignals];
    v24 = [(MessageListViewController *)self parsecTopHitForItemID:v20 date:v22 mailRankingSignals:v23];
LABEL_9:

    goto LABEL_24;
  }

  v7 = [v4 category];
  v8 = +[MUISearchSuggestionCategory instantAnswersCategory];

  if (v7 == v8)
  {
    v19 = v4;
    v20 = [v19 itemID];
    v21 = [v19 message];
    v22 = [v21 date];
    v23 = [v19 feedbackInlineCard];
    v25 = [v19 instantAnswer];
    v26 = [v25 flightInfoIsLive];
    v24 = [(MessageListViewController *)self parsecInstantAnswerForItemID:v20 date:v22 inlineCard:v23 isUpdated:v26 != 0];

    goto LABEL_9;
  }

  v9 = [v4 category];
  v10 = +[MUISearchSuggestionCategory documentCategory];
  if (v9 == v10)
  {
LABEL_11:

    goto LABEL_12;
  }

  v11 = [v4 category];
  v12 = +[MUISearchSuggestionCategory locationCategory];
  v13 = v12;
  if (v11 == v12)
  {

    goto LABEL_11;
  }

  v14 = [v4 category];
  v15 = +[MUISearchSuggestionCategory linkCategory];

  if (v14 == v15)
  {
LABEL_12:
    v40 = [NSString stringWithFormat:@"%p", v4];
    v18 = 0;
    goto LABEL_13;
  }

  v16 = v4;
  v17 = [v16 atomTitle];
  v40 = [NSString stringWithFormat:@"%@-%p", v17, v16];

  v18 = [v16 option];
LABEL_13:
  v27 = [EFPrivacy fullyRedactedStringForString:v40];
  v28 = [(MessageListSearchViewController *)self categoryForSuggestion:v4];
  v29 = objc_alloc_init(SFMailResultDetails);
  v30 = [v4 spotlightSuggestion];
  v31 = [v30 score];
  [v29 setSuggestionScore:v31];

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v32 = [v4 spotlightSuggestion];
  v33 = [v32 suggestionDataSources];

  v34 = [v33 countByEnumeratingWithState:&v41 objects:v45 count:16];
  if (v34)
  {
    v35 = *v42;
    do
    {
      for (i = 0; i != v34; i = i + 1)
      {
        if (*v42 != v35)
        {
          objc_enumerationMutation(v33);
        }

        v37 = [*(*(&v41 + 1) + 8 * i) integerValue] - 1;
        if (v37 >= 4)
        {
          v38 = 0;
        }

        else
        {
          v38 = dword_1004FC270[v37];
        }

        [v29 setDataSources:v38];
      }

      v34 = [v33 countByEnumeratingWithState:&v41 objects:v45 count:16];
    }

    while (v34);
  }

  v24 = [MSParsecSearchSessionSuggestion suggestionWithIdentifier:v27 category:v28 option:v18 resultDetails:v29];

LABEL_24:

  return v24;
}

- (void)redrawSearchBarWithSuggestion:(id)a3
{
  v8 = a3;
  [(MessageListSearchViewController *)self setCurrentSuggestion:?];
  v4 = [v8 userQueryString];
  [(MessageListViewController *)self setCurrentUserTypedPhrase:v4];
  v5 = [v8 currentTokens];
  v6 = [v5 ef_map:&stru_100651C70];

  [(MessageListSearchViewController *)self setLastPhrase:v4];
  v7 = [(MessageListSearchViewController *)self searchBar];
  [v7 replaceSearchBarWithTokens:v6 userQueryString:v4];
}

- (void)_updateSearchBarUsingSuggestionToken:(id)a3
{
  v4 = a3;
  v5 = [(MessageListSearchViewController *)self currentSuggestion];
  v6 = [v5 userQueryString];
  v7 = +[NSCharacterSet controlCharacterSet];
  v8 = [v6 stringByTrimmingCharactersInSet:v7];

  v9 = +[CSSuggestion emptySuggestion];
  v10 = [v4 csToken];
  v20 = v10;
  v11 = [NSArray arrayWithObjects:&v20 count:1];
  v12 = [CSSuggestion updatedSuggestionWithCurrentSuggestion:v9 userString:v8 tokens:v11];

  v13 = [(MessageListSearchViewController *)self currentSuggestion];
  v14 = [CSSuggestion mui_mergeCurrentSuggestion:v13 suggestion:v12];

  [(MessageListSearchViewController *)self redrawSearchBarWithSuggestion:v14];
  v15 = [v14 userQueryString];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v11 = [v14 userQueryString];
    v17 = [v11 length] != 0;
  }

  else
  {
    v17 = 0;
  }

  [(MessageListSearchViewController *)self setSearchSuggestionsVisible:v17];
  if (isKindOfClass)
  {
  }

  if ([(MessageListSearchViewController *)self isSearchSuggestionsVisible])
  {
    v18 = [(MessageListSearchViewController *)self currentSuggestion];
    v19 = [v18 userQueryString];
    [(MessageListSearchViewController *)self _generateSuggestionsForPhrase:v19];
  }

  else
  {
    [(MessageListSearchViewController *)self _notePredicateUpdated:2];
  }
}

- (void)searchSuggestionsViewController:(id)a3 didSelectItemID:(id)a4 messageList:(id)a5 indexInformation:(id)a6 topHitSuggestion:(id)a7
{
  v10 = a4;
  v11 = a5;
  v12 = a7;
  v29 = MessageListSectionIndexedSearch;
  v13 = [NSArray arrayWithObjects:&v29 count:1];
  [(MessageListSearchViewController *)self reloadDataSourceWithMessageList:v11 sections:v13 applyEmptySnapshot:1];

  v14 = [v12 message];
  v15 = [v14 date];
  v16 = [v12 mailRankingSignals];
  v17 = [(MessageListViewController *)self parsecTopHitForItemID:v10 date:v15 mailRankingSignals:v16];

  [(MessageListSearchViewController *)self reportTopHitSelected:v17];
  v18 = +[MessageListSearchViewController log];
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v23 = 134218498;
    v24 = self;
    v25 = 2114;
    v26 = v10;
    v27 = 2048;
    v28 = v11;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "searchSuggestionsController: %p, didSelectItemID: %{public}@, messageList: %p", &v23, 0x20u);
  }

  v19 = [(MessageListSearchViewController *)self lastSelectedTopHitItemID];
  v20 = v19 == v10;

  if (!v20)
  {
    v21 = [(MessageListViewController *)self scene];
    v22 = [v21 isInExpandedEnvironment];

    [(MessageListViewController *)self didSelectTopHitWithItemID:v10 messageList:v11 animated:v22 ^ 1];
    [(MessageListSearchViewController *)self setLastSelectedTopHitItemID:v10];
  }
}

- (void)searchSuggestionsViewController:(id)a3 didSelectItemID:(id)a4 messageList:(id)a5 indexInformation:(id)a6
{
  v8 = a4;
  v9 = a5;
  v23 = MessageListSectionIndexedSearch;
  v10 = [NSArray arrayWithObjects:&v23 count:1];
  [(MessageListSearchViewController *)self reloadDataSourceWithMessageList:v9 sections:v10 applyEmptySnapshot:1];

  v11 = [(MessageListViewController *)self parsecTopHitForItemID:v8 date:0 mailRankingSignals:0];
  [(MessageListSearchViewController *)self reportTopHitSelected:v11];
  v12 = +[MessageListSearchViewController log];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 134218498;
    v18 = self;
    v19 = 2114;
    v20 = v8;
    v21 = 2048;
    v22 = v9;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "searchSuggestionsController: %p, didSelectItemID: %{public}@, messageList: %p", &v17, 0x20u);
  }

  v13 = [(MessageListSearchViewController *)self lastSelectedTopHitItemID];
  v14 = v13 == v8;

  if (!v14)
  {
    v15 = [(MessageListViewController *)self scene];
    v16 = [v15 isInExpandedEnvironment];

    [(MessageListViewController *)self didSelectTopHitWithItemID:v8 messageList:v9 animated:v16 ^ 1];
    [(MessageListSearchViewController *)self setLastSelectedTopHitItemID:v8];
  }
}

- (void)searchSuggestionsViewController:(id)a3 didSelectItemID:(id)a4 instantAnswerSuggestion:(id)a5 cardSectionID:(id)a6 command:(id)a7
{
  v20 = a4;
  v11 = a5;
  v12 = a6;
  v13 = a7;
  v14 = [v11 message];
  v15 = [v14 date];
  v16 = [v11 feedbackInlineCard];
  v17 = [v11 instantAnswer];
  v18 = [v17 flightInfoIsLive];
  v19 = [(MessageListViewController *)self parsecInstantAnswerForItemID:v20 date:v15 inlineCard:v16 isUpdated:v18 != 0];

  [(MessageListSearchViewController *)self reportInstantAnswerButtonSelected:v19 cardSectionID:v12 command:v13];
}

- (void)searchSuggestionsViewController:(id)a3 didSelectItemID:(id)a4 instantAnswerSuggestion:(id)a5 cardSectionID:(id)a6
{
  v9 = a4;
  v10 = a5;
  v24 = a6;
  v11 = [v10 messageList];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
    v14 = MessageListSectionIndexedSearch;
  }

  else
  {
    v15 = [(MessageListSearchViewController *)self dataSource];
    v14 = MessageListSectionIndexedSearch;
    v13 = [v15 messageListForSection:MessageListSectionIndexedSearch];
  }

  v25 = v14;
  v16 = [NSArray arrayWithObjects:&v25 count:1];
  [(MessageListSearchViewController *)self reloadDataSourceWithMessageList:v13 sections:v16 applyEmptySnapshot:1];

  v17 = [v10 message];
  v18 = [v17 date];
  v19 = [v10 feedbackInlineCard];
  v20 = [v10 instantAnswer];
  v21 = [v20 flightInfoIsLive];
  v22 = [(MessageListViewController *)self parsecInstantAnswerForItemID:v9 date:v18 inlineCard:v19 isUpdated:v21 != 0];

  [(MessageListSearchViewController *)self reportInstantAnswerCardSelected:v22 cardSectionID:v24];
  v23 = [(MessageListViewController *)self scene];
  LODWORD(v17) = [v23 isInExpandedEnvironment];

  [(MessageListViewController *)self didSelectTopHitWithItemID:v9 messageList:v13 animated:v17 ^ 1];
}

- (void)searchSuggestionsViewController:(id)a3 didSelectItemID:(id)a4 messageList:(id)a5
{
  v7 = a4;
  v8 = a5;
  v12 = MessageListSectionIndexedSearch;
  v9 = [NSArray arrayWithObjects:&v12 count:1];
  [(MessageListSearchViewController *)self reloadDataSourceWithMessageList:v8 sections:v9 applyEmptySnapshot:1];

  v10 = [(MessageListViewController *)self scene];
  v11 = [v10 isInExpandedEnvironment];

  [(MessageListViewController *)self didSelectTopHitWithItemID:v7 messageList:v8 animated:v11 ^ 1];
}

- (void)reportSuggestionsFetched:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10016202C;
  v4[3] = &unk_100651C30;
  v5 = self;
  v6 = a3;
  v3 = v6;
  [(MessageListViewController *)v5 parsecEventQueuePerformBlock:v4];
}

- (id)_latencyMsFromTimestamp:(id)a3 toTimestamp:(id)a4
{
  v5 = a3;
  v6 = a4;
  [v6 timeIntervalSinceDate:v5];
  v8 = [NSNumber numberWithInt:(v7 * 1000.0)];

  return v8;
}

- (void)reportSuggestionsVisible:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    v5 = [(MessageListSearchViewController *)self suggestionsCompletionTimestamp];
    if (v5 && ([(MessageListSearchViewController *)self suggestionStartTimestamp], v6 = objc_claimAutoreleasedReturnValue(), v6, v5, v6))
    {
      v7 = [(MessageListSearchViewController *)self suggestionStartTimestamp];
      v8 = [(MessageListSearchViewController *)self suggestionsCompletionTimestamp];
      v9 = [(MessageListSearchViewController *)self _latencyMsFromTimestamp:v7 toTimestamp:v8];
    }

    else
    {
      v10 = [(MessageListSearchViewController *)self suggestionStartTimestamp];
      if (v10 && (v11 = [(MessageListSearchViewController *)self didReportFirstVisibleSuggestions], v10, (v11 & 1) == 0))
      {
        v12 = [(MessageListSearchViewController *)self suggestionStartTimestamp];
        v13 = +[NSDate date];
        v9 = [(MessageListSearchViewController *)self _latencyMsFromTimestamp:v12 toTimestamp:v13];

        [(MessageListSearchViewController *)self setDidReportFirstVisibleSuggestions:1];
      }

      else
      {
        v9 = 0;
      }
    }

    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1001625D8;
    v15[3] = &unk_100651CE8;
    v16 = v4;
    v17 = self;
    v18 = v9;
    v14 = v9;
    [(MessageListViewController *)self parsecEventQueuePerformBlock:v15];
  }
}

- (BOOL)shouldShowMenuSuggestions
{
  if (!MUISolariumFeatureEnabled() || !_os_feature_enabled_impl())
  {
    return 0;
  }

  v3 = +[EFDevice currentDevice];
  if ([v3 isPad])
  {
    v4 = [(MessageListSearchViewController *)self splitViewController];
    v5 = [v4 traitCollection];
    v6 = [v5 horizontalSizeClass] != 1;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)suggestionsGenerator:(id)a3 didProduceResult:(id)a4
{
  v5 = a4;
  v6 = [v5 requestID];
  v7 = [(MessageListSearchViewController *)self suggestionsIdentifier];
  v8 = [v6 isEqualToID:v7];

  if (v8)
  {
    v9 = [v5 suggestions];
    v10 = [v9 count];

    if (v10)
    {
      [(MessageListSearchViewController *)self setSuggestersGeneratedSuggestions:1];
    }

    v11 = [(MessageListSearchViewController *)self suggestionsViewController];
    v12 = [v11 updateSuggestionsWithResult:v5];

    if ([(MessageListSearchViewController *)self shouldShowMenuSuggestions])
    {
      v13 = -[MessageListSearchViewController _updatedSuggestionsGroups:phraseKind:](self, "_updatedSuggestionsGroups:phraseKind:", v12, [v5 phraseKind]);
      v14 = [v13 ef_map:&stru_100651D28];
      v15 = +[MessageListSearchViewController log];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = objc_opt_class();
        v17 = NSStringFromClass(v16);
        *buf = 138543874;
        v39 = v17;
        v40 = 2048;
        v41 = self;
        v42 = 2112;
        v43 = v14;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "<%{public}@: %p> Updating search suggestion groups to: %@", buf, 0x20u);
      }

      v18 = [(MessageListSearchViewController *)self canShowMenuSuggestionsPromise];
      v19 = [v18 future];
      v20 = +[EFScheduler mainThreadScheduler];
      v30 = _NSConcreteStackBlock;
      v31 = 3221225472;
      v32 = sub_100162D10;
      v33 = &unk_100651DD0;
      v34 = self;
      v21 = v13;
      v35 = v21;
      v22 = v14;
      v36 = v22;
      v37 = v5;
      [v19 onScheduler:v20 addSuccessBlock:&v30];
    }

    v23 = [(MessageListSearchViewController *)self suggestionsViewController:v30];
    v24 = [v23 hasSuggestions];

    if (v24)
    {
      [(MessageListViewController *)self suppressNoContentViewAnimated:0];
      if ([v5 phraseKind] == 1)
      {
        v25 = [(MessageListSearchViewController *)self suggestionsViewController];
        v26 = objc_opt_respondsToSelector();

        if (v26)
        {
          v27 = [(MessageListSearchViewController *)self suggestionsViewController];
          [v27 scrollToHideIndexStatus];
        }
      }
    }

    else if ([v5 phraseKind] == 1)
    {
      [(MessageListViewController *)self updateNoContentViewAnimated:0];
    }

    [(MessageListSearchViewController *)self setSearchSuggestionsVisible:(*&self->_flags & 4) == 0];
  }

  else
  {
    v12 = +[MessageListSearchViewController log];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v28 = objc_opt_class();
      v29 = NSStringFromClass(v28);
      *buf = 138543618;
      v39 = v29;
      v40 = 2048;
      v41 = self;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "<%{public}@: %p> Skipping suggestions result - result is stale", buf, 0x16u);
    }
  }
}

- (id)attributedSpotlightTitle:(id)a3
{
  v3 = a3;
  v4 = [v3 mutableCopy];
  v5 = [v3 length];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001630AC;
  v9[3] = &unk_100651DF8;
  v6 = v4;
  v10 = v6;
  [v6 enumerateAttributesInRange:0 options:v5 usingBlock:{0, v9}];
  v7 = [v6 copy];

  return v7;
}

- (id)_updatedSuggestionsGroups:(id)a3 phraseKind:(unsigned __int8)a4
{
  v4 = a4;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10016348C;
  v19[3] = &unk_100651E20;
  v19[4] = self;
  [a3 enumerateKeysAndObjectsUsingBlock:v19];
  if (!v4)
  {
    v6 = [(MessageListSearchViewController *)self groupedSuggestionsByCategory];
    v7 = +[MUISearchSuggestionCategory recentSearchCategory];
    [v6 setObject:0 forKeyedSubscript:v7];
  }

  v8 = +[MessageListSearchViewController log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v11 = [(MessageListSearchViewController *)self groupedSuggestionsByCategory];
    *buf = 138544130;
    v21 = v10;
    v22 = 2048;
    v23 = self;
    v24 = 2048;
    v25 = v4;
    v26 = 2114;
    v27 = v11;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "<%{public}@: %p> Updated suggestion groups (kind=%ld): %{public}@", buf, 0x2Au);
  }

  v12 = [(MessageListSearchViewController *)self groupedSuggestionsByCategory];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10016352C;
  v17[3] = &unk_100651E70;
  v17[4] = self;
  v13 = objc_alloc_init(NSMutableArray);
  v18 = v13;
  [v12 enumerateKeysAndObjectsUsingBlock:v17];
  v14 = v18;
  v15 = v13;

  return v13;
}

- (id)_groupForRecentSearchSuggestionItems:(id)a3
{
  v4 = a3;
  if ([_UISearchSuggestionItemGroup instancesRespondToSelector:"initWithHeaderTitle:headerAction:suggestionItems:"])
  {
    objc_initWeak(&location, self);
    v5 = _EFLocalizedString();
    v13 = _NSConcreteStackBlock;
    v14 = 3221225472;
    v15 = sub_100163A04;
    v16 = &unk_10064F278;
    objc_copyWeak(&v17, &location);
    v6 = [UIAction actionWithTitle:v5 image:0 identifier:0 handler:&v13];

    v7 = [_UISearchSuggestionItemGroup alloc];
    v8 = _EFLocalizedString();
    v9 = [v7 initWithHeaderTitle:v8 headerAction:v6 suggestionItems:{v4, v13, v14, v15, v16}];

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }

  else
  {
    v10 = [_UISearchSuggestionItemGroup alloc];
    v11 = _EFLocalizedString();
    v9 = [v10 initWithHeaderTitle:v11 suggestionItems:v4];
  }

  return v9;
}

- (void)suggestionsGenerator:(id)a3 didCompleteRequestID:(id)a4
{
  v12 = a4;
  v5 = [(MessageListSearchViewController *)self suggestionsIdentifier];
  v6 = [v12 isEqualToID:v5];

  if (v6)
  {
    v7 = +[NSDate date];
    [(MessageListSearchViewController *)self setSuggestionsCompletionTimestamp:v7];

    [(MessageListSearchViewController *)self setSuggestionsIdentifier:0];
    if (![(MessageListSearchViewController *)self suggestersGeneratedSuggestions])
    {
      v8 = [(MessageListSearchViewController *)self suggestionsViewController];
      [v8 clearSuggestions];

      [(MessageListViewController *)self parsecEventQueuePerformBlock:&stru_100651EB0];
    }

    [(MessageListSearchViewController *)self setSuggestersGeneratedSuggestions:0];
    v9 = [(MessageListSearchViewController *)self suggestionsViewController];
    [v9 endUpdatingSuggestions];

    *&self->_flags |= 8u;
    v10 = [(MessageListSearchViewController *)self beginSearchTimer];
    v11 = v10;
    if (v10)
    {
      [v10 invalidate];
      [(MessageListSearchViewController *)self setBeginSearchTimer:0];
      [(MessageListSearchViewController *)self _notePredicateUpdated:1];
    }
  }
}

- (void)textFieldDidChangeSelection:(id)a3
{
  v11 = a3;
  v4 = [(MessageListSearchViewController *)self searchBar];
  v5 = [(MessageListSearchViewController *)self _objectFromSelectionInSearchTextField:v11];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
    v7 = [v6 scopeNames];
    v8 = [v6 selectedScopeIndex];
    v9 = [v6 hasMultipleScopes];

    if (v9)
    {
      [v4 setScopeButtonTitles:v7];
      [v4 setSelectedScopeButtonIndex:v8];
      v10 = *&self->_flags | 0x20;
      goto LABEL_6;
    }
  }

  else
  {
    v7 = 0;
  }

  [(MessageListSearchViewController *)self _resetGlobalScopeTitles];
  v10 = *&self->_flags & 0xDF;
LABEL_6:
  *&self->_flags = v10;
}

- (id)searchTextField:(id)a3 itemProviderForCopyingToken:(id)a4
{
  v5 = a4;
  v6 = objc_alloc_init(NSItemProvider);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100163F40;
  v13[3] = &unk_100651ED8;
  v13[4] = self;
  v7 = v5;
  v14 = v7;
  [v6 registerDataRepresentationForTypeIdentifier:@"com.apple.mobilemail.searchAtom" visibility:3 loadHandler:v13];
  v8 = [UTTypePlainText identifier];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100163FE4;
  v11[3] = &unk_100651F00;
  v9 = v7;
  v12 = v9;
  [v6 registerDataRepresentationForTypeIdentifier:v8 visibility:0 loadHandler:v11];

  return v6;
}

- (void)textPasteConfigurationSupporting:(id)a3 transformPasteItem:(id)a4
{
  v5 = a4;
  v6 = [v5 itemProvider];
  v7 = [(MessageListSearchViewController *)self searchBar];
  v8 = [v7 searchTextField];

  v9 = [(MessageListSearchViewController *)self searchBar];
  v10 = [v9 representedSuggestionTokens];
  v11 = [v10 count];

  if ([v6 hasItemConformingToTypeIdentifier:@"com.apple.mobilemail.searchAtom"])
  {
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_1001643FC;
    v25[3] = &unk_100651F28;
    v25[4] = self;
    v26 = v5;
    v12 = [v6 loadDataRepresentationForTypeIdentifier:@"com.apple.mobilemail.searchAtom" completionHandler:v25];
  }

  else
  {
    v13 = [UTTypePlainText identifier];
    v14 = [v6 hasItemConformingToTypeIdentifier:v13];
    if (v11)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    if (v15 == 1)
    {
      v16 = [v8 selectedTextRange];
      v17 = [v8 positionOfTokenAtIndex:v11 - 1];
      v18 = [v16 end];
      v19 = [v8 comparePosition:v18 toPosition:v17];

      if (v19 == 1)
      {
        [v5 setDefaultResult];
      }

      else
      {
        v20 = [UTTypePlainText identifier];
        v22[0] = _NSConcreteStackBlock;
        v22[1] = 3221225472;
        v22[2] = sub_100164788;
        v22[3] = &unk_100651F28;
        v23 = v5;
        v24 = self;
        v21 = [v6 loadDataRepresentationForTypeIdentifier:v20 completionHandler:v22];
      }
    }

    else
    {
      [v5 setDefaultResult];
    }
  }
}

- (void)searchBarSearchButtonClicked:(id)a3
{
  *&self->_flags |= 4u;
  [(MessageListSearchViewController *)self setSearchSuggestionsVisible:0];
  v4 = [(MessageListSearchViewController *)self searchBar];
  v5 = [v4 representedObjects];
  v6 = [v5 count];

  if (v6)
  {
    v7 = [(MessageListSearchViewController *)self currentSuggestion];
    [(MessageListSearchViewController *)self _addSuggestionToRecentSuggester:v7];
  }

  v8 = [(MessageListSearchViewController *)self suggestionsIdentifier];

  if (v8)
  {
    v9 = +[MessageListSearchViewController log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v13 = 0x4000000000000000;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Waiting for suggestions to search with interval: %f", buf, 0xCu);
    }

    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100164D84;
    v11[3] = &unk_100651F50;
    v11[4] = self;
    v10 = [NSTimer scheduledTimerWithTimeInterval:0 repeats:v11 block:2.0];
    [(MessageListSearchViewController *)self setBeginSearchTimer:v10];
  }

  else
  {
    [(MessageListSearchViewController *)self _notePredicateUpdated:1];
  }

  [(MessageListSearchViewController *)self reportDidGoToCommittedSearch];
  [(MessageListSearchViewController *)self reportSearchQueryStateWithTriggerEvent:23 searchType:3];
}

- (void)searchBar:(id)a3 selectedScopeButtonIndexDidChange:(int64_t)a4
{
  v8 = a3;
  if ((*&self->_flags & 0x20) != 0)
  {
    [(MessageListSearchViewController *)self searchTokenScopeChanged:a4];
  }

  else
  {
    [(MessageListSearchViewController *)self globalSearchScopeChanged:a4];
  }

  if ([(MessageListSearchViewController *)self isSearchSuggestionsVisible])
  {
    v6 = [(MessageListSearchViewController *)self searchBar];
    v7 = [(MessageListSearchViewController *)self _currentEditingStringForSearchBar:v6];

    if ([v7 length])
    {
      [(MessageListSearchViewController *)self _generateSuggestionsForPhrase:v7];
    }
  }
}

- (void)searchBar:(id)a3 textDidChange:(id)a4
{
  v5 = a4;
  v6 = [(MessageListSearchViewController *)self searchBar];
  v7 = [v6 representedObjects];
  v8 = [v7 count];

  if (v8)
  {
    v9 = [(MessageListSearchViewController *)self searchBar];
    v10 = [v9 representedSuggestionTokens];
    v11 = [MUISuggestionToken csTokensFromMailSuggestionTokens:v10];

    v12 = [(MessageListSearchViewController *)self currentSuggestion];
    v13 = [CSSuggestion updatedSuggestionWithCurrentSuggestion:v12 userString:v5 tokens:v11];

    v14 = +[MessageListSearchViewController log];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [EMCSLoggingAdditions publicDescriptionForSuggestion:v13];
      v16 = [v13 userQueryString];
      v17 = [EFPrivacy partiallyRedactedStringForString:v16];
      v18 = [v13 suggestionTokens];
      v20 = 138412802;
      v21 = v15;
      v22 = 2112;
      v23 = v17;
      v24 = 2112;
      v25 = v18;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Suggestion was updated. Reason: Text changed. Suggestion: %@ UserQueryString: %@ SuggestionTokens: %@", &v20, 0x20u);
    }

    [(MessageListViewController *)self setCurrentUserTypedPhrase:v5];
    [(MessageListSearchViewController *)self setCurrentSuggestion:v13];
    [(MessageListSearchViewController *)self reportSearchQueryStateWithTriggerEvent:1 searchType:2];
  }

  else
  {
    [(MessageListViewController *)self setCurrentUserTypedPhrase:0];
    v19 = +[CSSuggestion emptySuggestion];
    [(MessageListSearchViewController *)self setCurrentSuggestion:v19];

    [(MessageListSearchViewController *)self reportQueryClearedEvent:0];
    [(MessageListSearchViewController *)self reportSearchQueryStateWithTriggerEvent:9 searchType:1];
    [(MessageListViewController *)self _updateNavigationBarButtonsWithForce:0];
    [(MessageListSearchViewController *)self _clearSearchResultSections];
  }
}

- (void)presentToastViewController
{
  v3 = [(MessageListSearchViewController *)self activeSearchFeedbackToastController];

  if (!v3)
  {
    v4 = [MUISearchFeedbackNotificationViewController alloc];
    v5 = +[NSBundle mainBundle];
    v6 = [v5 localizedStringForKey:@"SEARCH_FEEDBACK_NOTIFICATION_TITLE" value:&stru_100662A88 table:@"Main"];
    v7 = +[NSBundle mainBundle];
    v8 = [v7 localizedStringForKey:@"SEARCH_FEEDBACK_NOTIFICATION_MESSAGE" value:&stru_100662A88 table:@"Main"];
    v13 = [v4 initWithTitleText:v6 messageText:v8];

    [v13 setDelegate:self];
    v9 = [[MUIToastViewController alloc] initWithContentViewController:v13];
    [v9 setDelegate:self];
    [(MessageListSearchViewController *)self setActiveSearchFeedbackToastController:v9];
    [(MessageListSearchViewController *)self addChildViewController:v9];
    v10 = [(MessageListSearchViewController *)self view];
    v11 = [v9 view];
    [v10 addSubview:v11];

    [v9 didMoveToParentViewController:self];
    v12 = [v9 view];
    [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
  }
}

- (void)dismissToastViewController:(id)a3
{
  v5 = a3;
  v4 = [v5 view];
  [v4 removeFromSuperview];

  [(MessageListSearchViewController *)self removeChildViewController:v5];
  [v5 willMoveToParentViewController:0];
  [(MessageListSearchViewController *)self setActiveSearchFeedbackToastController:0];
}

- (void)shouldTriggerTapToRadarForViewController:(id)a3 shouldTrigger:(BOOL)a4
{
  v4 = a4;
  v6 = +[MessageListSearchViewController log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [NSNumber numberWithBool:v4];
    v9 = 138412290;
    v10 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "User provided search feedback. Should trigger tap to radar:%@", &v9, 0xCu);
  }

  v8 = [(MessageListSearchViewController *)self activeSearchFeedbackToastController];
  [(MessageListSearchViewController *)self dismissToastViewController:v8];

  [(MessageListSearchViewController *)self _updateSearchFeedbackCount:v4];
  if (v4)
  {
    [(MessageListSearchViewController *)self _invokeSearchFeedbackTapToRadar];
  }
}

- (void)_invokeSearchFeedbackTapToRadar
{
  [NSString stringWithFormat:@"Your search query will be included in this radar.\n\nUser Query:\n\n%@\n\n1. Can you find the message you are looking for outside of search?\n\nYES/NO\n\n2. If so, please find the message, tap on the header and attach a screenshot. Optional: drag and drop the message into this radar.", self->_lastPhrase];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100165734;
  v6[3] = &unk_100651F98;
  v3 = v6[4] = self;
  v7 = v3;
  v4 = objc_retainBlock(v6);
  v5 = [MSRadarInteraction interactionWithTitle:&stru_100662A88 message:&stru_100662A88 builder:v4];
  [v5 openTapToRadar];
}

- (void)_updateSearchFeedbackCount:(BOOL)a3
{
  v3 = a3;
  [(MessageListSearchViewController *)self _resetSearchFeedbackIfNeeded];
  v5 = +[NSUserDefaults em_userDefaults];
  v6 = EMUserDefaultSearchFeedback;
  v13 = [v5 objectForKey:EMUserDefaultSearchFeedback];

  v7 = [[MUISearchFeedbackStats alloc] initWithDictionaryRepresentation:v13];
  searchFeedbackStats = self->_searchFeedbackStats;
  self->_searchFeedbackStats = v7;

  v9 = +[NSDate date];
  v10 = [NSDate ef_weekDayForDate:v9];

  [(MUISearchFeedbackStats *)self->_searchFeedbackStats incrementCountForFailure:v3 forDay:v10];
  v11 = +[NSUserDefaults em_userDefaults];
  v12 = [(MUISearchFeedbackStats *)self->_searchFeedbackStats dictionaryRepresentation];
  [v11 setObject:v12 forKey:v6];
}

- (void)_resetSearchFeedbackIfNeeded
{
  v3 = +[NSUserDefaults em_userDefaults];
  v4 = EMUserDefaultSearchFeedbackNextReset;
  v16 = [v3 objectForKey:EMUserDefaultSearchFeedbackNextReset];

  if (!v16 || (+[NSDate date](NSDate, "date"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v16 ef_isEarlierThanDate:v5], v5, v6))
  {
    v7 = [NSDate ef_nextWeekday:6];
    v8 = +[NSUserDefaults em_userDefaults];
    [v8 setObject:v7 forKey:v4];

    v9 = +[NSUserDefaults em_userDefaults];
    v10 = EMUserDefaultSearchFeedback;
    v11 = [v9 objectForKey:EMUserDefaultSearchFeedback];

    v12 = [[MUISearchFeedbackStats alloc] initWithDictionaryRepresentation:v11];
    searchFeedbackStats = self->_searchFeedbackStats;
    self->_searchFeedbackStats = v12;

    [(MUISearchFeedbackStats *)self->_searchFeedbackStats resetStats];
    v14 = +[NSUserDefaults em_userDefaults];
    v15 = [(MUISearchFeedbackStats *)self->_searchFeedbackStats dictionaryRepresentation];
    [v14 setObject:v15 forKey:v10];
  }
}

- (id)_additionalBarButtonItems
{
  v2 = [(MessageListSearchViewController *)self _searchTapToRadarButtonItem];
  v3 = v2;
  if (v2)
  {
    v6 = v2;
    v4 = [NSArray arrayWithObjects:&v6 count:1];
  }

  else
  {
    v4 = &__NSArray0__struct;
  }

  return v4;
}

- (id)_searchTapToRadarButtonItem
{
  if (!qword_1006DD330)
  {
    v3 = +[EFDevice currentDevice];
    if ([v3 isInternal])
    {
      v4 = +[MSRadarURLBuilder canOpenRadar];

      if (!v4)
      {
        goto LABEL_6;
      }

      v3 = [UIImage mf_systemImageNamed:MFImageGlyphTapToRadar textStyle:UIFontTextStyleFootnote scale:2 weight:5];
      v5 = [[UIBarButtonItem alloc] initWithImage:v3 style:0 target:self action:"_searchTapToRadarButtonSelected:"];
      v6 = qword_1006DD330;
      qword_1006DD330 = v5;

      v7 = [UIColor colorWithRed:0.643137255 green:0.0 blue:0.97254902 alpha:1.0];
      [qword_1006DD330 setTintColor:v7];
    }
  }

LABEL_6:
  v8 = qword_1006DD330;

  return v8;
}

- (void)invokeTapToRadar
{
  v6 = [MSRadarInteraction interactionWithTitle:@"Mail Search Problem?" message:@"Having trouble with search? We've got a Tap-to-Radar template ready to go." builder:&stru_100651FD8];
  v3 = [v6 interactionViewController];
  v4 = [(MessageListViewController *)self scene];
  v5 = [v4 mf_rootViewController];
  [v5 presentViewController:v3 animated:1 completion:0];
}

- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11.receiver = self;
  v11.super_class = MessageListSearchViewController;
  [(MessageListViewController *)&v11 collectionView:v8 willDisplayCell:v9 forItemAtIndexPath:v10];
  [(MessageListSearchViewController *)self reportVisibleMessageListResultsAlwaysReportItems:0];
}

- (void)collectionView:(id)a3 didEndDisplayingCell:(id)a4 forItemAtIndexPath:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11.receiver = self;
  v11.super_class = MessageListSearchViewController;
  [(MessageListViewController *)&v11 collectionView:v8 didEndDisplayingCell:v9 forItemAtIndexPath:v10];
  [(MessageListSearchViewController *)self reportVisibleMessageListResultsAlwaysReportItems:0];
}

- (void)_sendAnalyticsForIndexState:(id)a3
{
  v4 = a3;
  v5 = +[NSUserDefaults em_userDefaults];
  v6 = EMUserDefaultIndexStatusCollectAfterDate;
  v7 = [v5 objectForKey:EMUserDefaultIndexStatusCollectAfterDate];

  if (!v7 || (+[NSDate date](NSDate, "date"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v7 ef_isEarlierThanDate:v8], v8, v9))
  {
    v10 = +[NSCalendar currentCalendar];
    v11 = +[NSDate date];
    v12 = [v10 dateByAddingUnit:16 value:1 toDate:v11 options:0];

    v13 = +[NSUserDefaults em_userDefaults];
    [v13 setObject:v12 forKey:v6];

    v21[0] = @"percentMessagesIndexed";
    v14 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v4 percentMessagesIndexed]);
    v22[0] = v14;
    v21[1] = @"percentMessageBodiesIndexed";
    v15 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v4 percentMessageBodiesIndexed]);
    v22[1] = v15;
    v21[2] = @"percentUnindexedBodiesInFrecent";
    v16 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v4 percentUnindexedBodiesInFrecent]);
    v22[2] = v16;
    v21[3] = @"percentAttachmentsIndexed";
    v17 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v4 percentAttachmentsIndexed]);
    v22[3] = v17;
    v18 = [NSDictionary dictionaryWithObjects:v22 forKeys:v21 count:4];

    v19 = [[EMCoreAnalyticsEvent alloc] initWithEventName:@"com.apple.mail.searchableIndex.indexStatus" collectionData:v18];
    v20 = [(MessageListSearchViewController *)self analyticsCollector];
    [v20 logOneTimeEvent:v19];
  }
}

- (void)_updateIndexStatisticsIfNeeded
{
  v2 = [(MessageListSearchViewController *)self indexingStatusDebouncer];
  [v2 debounceResult:0];
}

- (void)_updateIndexStatistics
{
  objc_initWeak(&location, self);
  v2 = +[UIApplication sharedApplication];
  v3 = [v2 daemonInterface];
  v4 = [v3 diagnosticInfoGatherer];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001665C8;
  v5[3] = &unk_10064E0C0;
  objc_copyWeak(&v6, &location);
  [v4 searchableIndexDatabaseStatisticsWithCompletionHandler:v5];

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

- (unint64_t)_computeBGSystemTaskFeatureCheckpoint
{
  v3 = [(MessageListSearchViewController *)self indexStatistics];
  v4 = [v3 objectForKeyedSubscript:EMPersistenceStatisticsKeyMessagesIndexed];
  v5 = [v4 unsignedIntegerValue];

  v6 = [(MessageListSearchViewController *)self indexStatistics];
  v7 = [v6 objectForKeyedSubscript:EMPersistenceStatisticsKeyRemoteMessagesIndexed];
  v8 = [v7 unsignedIntegerValue];

  v9 = [(MessageListSearchViewController *)self indexStatistics];
  v10 = [v9 objectForKeyedSubscript:EMPersistenceStatisticsKeyIndexableMessages];
  v11 = [v10 unsignedIntegerValue];

  v12 = [(MessageListSearchViewController *)self indexStatistics];
  v13 = [v12 objectForKeyedSubscript:EMPersistenceStatisticsKeyIndexableRemoteMessages];
  v14 = [v13 unsignedIntegerValue];

  v15 = 1.0;
  if (v11)
  {
    v15 = v5 / v11;
  }

  if (v14)
  {
    v16 = (v8 / v14) <= kDefaultMaxIndexedToTotalRatio;
  }

  else
  {
    v16 = 1;
  }

  v17 = 40;
  if (!v16)
  {
    v17 = 60;
  }

  if (v15 <= kDefaultMaxIndexedToTotalRatio)
  {
    return 10;
  }

  else
  {
    return v17;
  }
}

- (id)searchScopeForSuggestionCategoryScope:(id)a3
{
  v3 = [a3 identifier];
  if ([v3 isEqualToString:MFSearchSuggestionSubjectCategoryScope])
  {
    v4 = &MSSearchScopeSubject;
LABEL_11:
    v5 = *v4;
    goto LABEL_12;
  }

  if ([v3 isEqualToString:MUISearchSuggestionCategoryContentScope])
  {
    v4 = &MSSearchScopeMessage;
    goto LABEL_11;
  }

  if ([v3 isEqualToString:MFSearchSuggestionPeopleCategoryFromScope])
  {
    v4 = &MSSearchScopeFrom;
    goto LABEL_11;
  }

  if ([v3 isEqualToString:MFSearchSuggestionPeopleCategoryToScope])
  {
    v4 = &MSSearchScopeTo;
    goto LABEL_11;
  }

  if ([v3 isEqualToString:MFSearchSuggestionMailboxCategoryScope])
  {
    v4 = &MSSearchScopeMailbox;
    goto LABEL_11;
  }

  v5 = 0;
LABEL_12:

  return v5;
}

- (id)SectionCategoryForSuggestion:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = &MSSearchSuggestionCategoryTopHit;
LABEL_7:
    v6 = *v5;
    goto LABEL_8;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = &MSSearchSuggestionCategoryInstantAnswer;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = &MSSearchSuggestionCategorySuggestion;
    goto LABEL_7;
  }

  v6 = [(MessageListSearchViewController *)self categoryForSuggestion:v4];
LABEL_8:
  v7 = v6;

  return v7;
}

- (id)categoryForSuggestion:(id)a3
{
  v5 = a3;
  v6 = [v5 category];
  v7 = +[MUISearchSuggestionCategory mailboxCategory];

  if (v6 == v7)
  {
    v19 = &MSSearchSuggestionCategoryMailboxes;
    goto LABEL_18;
  }

  v8 = +[MUISearchSuggestionCategory topHitsCategory];

  if (v6 == v8)
  {
    v19 = &MSSearchSuggestionCategoryTopHit;
    goto LABEL_18;
  }

  v9 = +[MUISearchSuggestionCategory instantAnswersCategory];

  if (v6 == v9)
  {
    v19 = &MSSearchSuggestionCategoryInstantAnswer;
    goto LABEL_18;
  }

  v10 = +[MUISearchSuggestionCategory contactCategory];

  if (v6 == v10)
  {
    v19 = &MSSearchSuggestionCategoryContact;
    goto LABEL_18;
  }

  v11 = +[MUISearchSuggestionCategory documentCategory];

  if (v6 == v11)
  {
    v19 = &MSSearchSuggestionCategoryDocument;
    goto LABEL_18;
  }

  v12 = +[MUISearchSuggestionCategory locationCategory];

  if (v6 == v12)
  {
    v19 = &MSSearchSuggestionCategoryLocation;
    goto LABEL_18;
  }

  v13 = +[MUISearchSuggestionCategory linkCategory];

  if (v6 == v13)
  {
    v19 = &MSSearchSuggestionCategoryLink;
LABEL_18:
    v18 = *v19;
    if (!v18)
    {
      goto LABEL_10;
    }

    goto LABEL_19;
  }

  v14 = +[MUISearchSuggestionCategory genericCategory];
  v15 = v14;
  if (v6 == v14)
  {
  }

  else
  {
    v16 = +[MUISearchSuggestionCategory recentGenericCategory];

    if (v6 != v16)
    {
LABEL_10:
      v17 = +[NSAssertionHandler currentHandler];
      [v17 handleFailureInMethod:a2 object:self file:@"MessageListSearchViewController.m" lineNumber:2276 description:{@"No corresponding MSSearchSuggestionCategory for MUISearchAtomSuggestion %@", v5}];

      v18 = 0;
      goto LABEL_19;
    }
  }

  v21 = [v5 spotlightSuggestion];
  v22 = [v21 currentToken];

  if (v22)
  {
    v23 = [v5 spotlightSuggestion];
    v24 = [v23 currentToken];

    v18 = -[MessageListSearchViewController categoryForTokenKind:](self, "categoryForTokenKind:", [v24 tokenKind]);
  }

  else
  {
    v25 = +[MessageListSearchViewController log];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      sub_100489F88(v25);
    }

    v18 = MSSearchSuggestionCategoryGeneric;
  }

LABEL_19:

  return v18;
}

- (void)setUpAppSwitcherObserver
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"reportSearchDidBecomeActive" name:UISceneWillEnterForegroundNotification object:0];

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 addObserver:self selector:"reportSearchWillTerminate" name:UIApplicationWillTerminateNotification object:0];
}

- (void)removeObservers
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:UISceneWillEnterForegroundNotification object:0];

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self name:UIApplicationWillTerminateNotification object:0];
}

- (id)categoryForTokenKind:(int64_t)a3
{
  if (a3 <= 24)
  {
    if (a3 <= 11)
    {
      switch(a3)
      {
        case 0:
          v3 = &MSSearchSuggestionCategoryFreeText;
          return *v3;
        case 2:
          v3 = &MSSearchSuggestionCategoryAttachment;
          return *v3;
        case 5:
          v3 = &MSSearchSuggestionCategoryDates;
          return *v3;
      }
    }

    else if (a3 > 15)
    {
      if (a3 == 16)
      {
        v3 = &MSSearchSuggestionCategoryPeople;
        return *v3;
      }

      if (a3 == 19)
      {
        v3 = &MSSearchSuggestionCategoryReadStatus;
        return *v3;
      }
    }

    else
    {
      if (a3 == 12)
      {
        v3 = &MSSearchSuggestionCategoryMailboxes;
        return *v3;
      }

      if (a3 == 14)
      {
        v3 = &MSSearchSuggestionCategorySubjectContains;
        return *v3;
      }
    }

LABEL_27:
    v3 = &MSSearchSuggestionCategoryOther;
    return *v3;
  }

  if (a3 >= 33)
  {
    switch(a3)
    {
      case '!':
        v3 = &MSSearchSuggestionCategoryFlagStatus;
        return *v3;
      case '""':
        v3 = &MSSearchSuggestionCategorySubject;
        return *v3;
      case '.':
        v3 = &MSSearchSuggestionCategorySenderContains;
        return *v3;
    }

    goto LABEL_27;
  }

  v3 = &MSSearchSuggestionCategoryFlagColor;
  return *v3;
}

- (void)reportSearchViewAppeared:(BOOL)a3 currentMailboxScope:(BOOL)a4
{
  [(MessageListViewController *)self inputLanguages];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100167450;
  v8[3] = &unk_100652068;
  v10 = a3;
  v9 = v11 = a4;
  v7 = v9;
  [(MessageListViewController *)self parsecEventQueuePerformBlock:v8];
}

- (void)reportSearchDidBecomeActive
{
  [(MessageListViewController *)self inputLanguages];
  v5 = _NSConcreteStackBlock;
  v6 = 3221225472;
  v7 = sub_100167560;
  v8 = &unk_100651C30;
  v3 = v9 = self;
  v10 = v3;
  [(MessageListViewController *)self parsecEventQueuePerformBlock:&v5];
  if ([(MessageListSearchViewController *)self isSearchSuggestionsVisible:v5])
  {
    v4 = [(MessageListSearchViewController *)self suggestionsViewController];
    [v4 reportVisibleSuggestionResults];
  }

  else
  {
    [(MessageListSearchViewController *)self reportVisibleMessageListResultsAlwaysReportItems:1];
  }
}

- (void)_sceneDidEnterBackground
{
  v5.receiver = self;
  v5.super_class = MessageListSearchViewController;
  [(MessageListViewController *)&v5 _sceneDidEnterBackground];
  v3 = [(MessageListSearchViewController *)self view];
  v4 = [v3 window];

  if (v4)
  {
    [(MessageListViewController *)self parsecEventQueuePerformBlock:&stru_100652088];
  }
}

- (void)reportSearchEndedEvent:(int64_t)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1001676A4;
  v3[3] = &unk_1006520C8;
  v3[4] = a3;
  [(MessageListViewController *)self parsecEventQueuePerformBlock:v3];
}

- (void)reportTopHitSelected:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10016775C;
  v5[3] = &unk_1006520F0;
  v6 = a3;
  v4 = v6;
  [(MessageListViewController *)self parsecEventQueuePerformBlock:v5];
}

- (void)reportInstantAnswerCardSelected:(id)a3 cardSectionID:(id)a4
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100167848;
  v8[3] = &unk_100651C30;
  v9 = a3;
  v10 = a4;
  v6 = v10;
  v7 = v9;
  [(MessageListViewController *)self parsecEventQueuePerformBlock:v8];
}

- (void)reportInstantAnswerButtonSelected:(id)a3 cardSectionID:(id)a4 command:(id)a5
{
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10016796C;
  v11[3] = &unk_100651CE8;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v8 = v14;
  v9 = v13;
  v10 = v12;
  [(MessageListViewController *)self parsecEventQueuePerformBlock:v11];
}

- (void)reportSuggestionSelected:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100167A28;
  v5[3] = &unk_1006520F0;
  v6 = a3;
  v4 = v6;
  [(MessageListViewController *)self parsecEventQueuePerformBlock:v5];
}

- (void)_reportMessageResultsFetchedIsFinished:(BOOL)a3
{
  v28 = a3;
  v4 = [(MessageListSearchViewController *)self dataSource];
  v5 = [v4 sectionDataSourceForSection:MessageListSectionInstantAnswers];

  v32 = v5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v5 instantAnswer];
    if (v6)
    {
      v31 = [(MessageListViewController *)self parsecInstantAnswerForInstantAnswer:v6];
    }

    else
    {
      v31 = 0;
    }
  }

  else
  {
    v31 = 0;
  }

  v30 = [(MessageListSearchViewController *)self searchInfo];
  v27 = [v30 rankingSignalsByObjectID];
  v7 = [(MessageListSearchViewController *)self dataSource];
  v8 = kMSParsecSearchSessionMaximumRankedSectionResultsCount;
  v9 = [v7 messageListItemsInSection:MessageListSectionTopHits limit:kMSParsecSearchSessionMaximumRankedSectionResultsCount];

  v44[0] = _NSConcreteStackBlock;
  v44[1] = 3221225472;
  v44[2] = sub_100167F74;
  v44[3] = &unk_100652138;
  v10 = v27;
  v45 = v10;
  v46 = self;
  v29 = [v9 ef_map:v44];
  v11 = [v9 count];
  v12 = [(MessageListSearchViewController *)self dataSource];
  v13 = [v12 messageListItemsInSection:MessageListSectionIndexedSearch limit:v8 - v11];

  v42[0] = _NSConcreteStackBlock;
  v42[1] = 3221225472;
  v42[2] = sub_10016807C;
  v42[3] = &unk_100652160;
  v14 = v10;
  v43 = v14;
  v15 = [v13 ef_map:v42];
  v16 = [v9 count];
  v17 = [v13 count];
  v18 = [(MessageListSearchViewController *)self dataSource];
  v19 = [v18 messageListItemsInSection:MessageListSectionServerSearch limit:v8 - v16 - v17];

  v20 = [v19 ef_map:&stru_1006521A0];
  v21 = [v15 arrayByAddingObjectsFromArray:v20];

  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3221225472;
  v35[2] = sub_1001682C4;
  v35[3] = &unk_1006521C8;
  v22 = v30;
  v36 = v22;
  v37 = self;
  v23 = v21;
  v38 = v23;
  v24 = v29;
  v39 = v24;
  v25 = v31;
  v40 = v25;
  v41 = v28;
  [(MessageListViewController *)self parsecEventQueuePerformBlock:v35];
  if (v28)
  {
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_100168364;
    v33[3] = &unk_10064D9D8;
    v33[4] = self;
    v34 = v28;
    v26 = +[EFScheduler mainThreadScheduler];
    [v26 performBlock:v33];
  }
}

- (id)_parsecEmbeddingStateWithSearchInfo:(id)a3
{
  v3 = a3;
  v4 = +[MSParsecSearchEmbeddingState embeddingStateWithQueryStatus:hasQueryEmbedding:hasKeywordResults:hasEmbeddingResults:](MSParsecSearchEmbeddingState, "embeddingStateWithQueryStatus:hasQueryEmbedding:hasKeywordResults:hasEmbeddingResults:", [v3 queryStatus], objc_msgSend(v3, "hasQueryEmbedding"), objc_msgSend(v3, "hasKeywordResults"), objc_msgSend(v3, "hasEmbeddingResults"));

  return v4;
}

- (void)reportVisibleMessageListResultsAlwaysReportItems:(BOOL)a3 isFinished:(BOOL)a4
{
  v5 = a3;
  v7 = [(MessageListViewController *)self initialLoadCompletedFuture];
  v8 = [v7 resultIfAvailable];
  v9 = [v8 BOOLValue];

  if (v9)
  {
    v10 = [(MessageListSearchViewController *)self collectionView];
    v11 = [v10 indexPathsForVisibleItems];
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_100168798;
    v30[3] = &unk_1006521F0;
    v30[4] = self;
    v12 = [v11 ef_filter:v30];
    v13 = [v12 sortedArrayUsingSelector:"compare:"];

    if ([v13 count])
    {
      v14 = [(MessageListSearchViewController *)self lastVisibleIndexPaths];
      v15 = [v13 isEqualToArray:v14];

      if (!v15 || v5)
      {
        v16 = [v13 copy];
        [(MessageListSearchViewController *)self setLastVisibleIndexPaths:v16];

        v29[0] = _NSConcreteStackBlock;
        v29[1] = 3221225472;
        v29[2] = sub_100168818;
        v29[3] = &unk_100652218;
        v29[4] = self;
        v17 = [v13 ef_compactMap:v29];
        if (a4 || ![(MessageListSearchViewController *)self didReportFirstVisibleResults])
        {
          v19 = [(MessageListSearchViewController *)self searchStartTimestamp];
          v20 = +[NSDate date];
          v18 = [(MessageListSearchViewController *)self _latencyMsFromTimestamp:v19 toTimestamp:v20];
        }

        else
        {
          v18 = 0;
        }

        [(MessageListSearchViewController *)self setDidReportFirstVisibleResults:1];
        v23 = _NSConcreteStackBlock;
        v24 = 3221225472;
        v25 = sub_10016884C;
        v26 = &unk_100651C30;
        v21 = v17;
        v27 = v21;
        v28 = v18;
        v22 = v18;
        [(MessageListViewController *)self parsecEventQueuePerformBlock:&v23];
      }
    }

    [(MessageListSearchViewController *)self setNeedsFocusUpdate:v23];
  }

  else
  {

    [(MessageListSearchViewController *)self setLastVisibleIndexPaths:0];
  }
}

- (id)_parsecMessageResultForVisibleIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(MessageListSearchViewController *)self collectionView];
  v6 = [v5 cellForItemAtIndexPath:v4];

  v7 = [v6 messageListItem];
  v8 = [v7 itemID];
  if (!v8)
  {
    v11 = 0;
    goto LABEL_17;
  }

  v9 = [(MessageListSearchViewController *)self dataSource];
  v10 = [v9 sectionAtIndex:{objc_msgSend(v4, "section")}];

  if (v10 == MessageListSectionInstantAnswers)
  {
    v12 = [(MessageListSearchViewController *)self collectionView];
    v13 = [v12 cellForItemAtIndexPath:v4];

    v14 = [v13 instantAnswer];
    if (!v14)
    {
      v11 = 0;
      goto LABEL_14;
    }

    v15 = [(MessageListViewController *)self parsecInstantAnswerForInstantAnswer:v14];
LABEL_12:
    v11 = v15;
LABEL_14:

    goto LABEL_15;
  }

  if (v10 == MessageListSectionTopHits)
  {
    v13 = [v7 date];
    v11 = [(MessageListViewController *)self parsecTopHitForItemID:v8 date:v13 mailRankingSignals:0];
LABEL_15:

    goto LABEL_16;
  }

  if (v10 == MessageListSectionIndexedSearch || v10 == MessageListSectionServerSearch)
  {
    v13 = [NSString stringWithFormat:@"%@", v8];
    v14 = [v7 date];
    v15 = [MSParsecSearchSessionMessageListResult resultWithIdentifier:v13 date:v14];
    goto LABEL_12;
  }

  v11 = 0;
LABEL_16:

LABEL_17:

  return v11;
}

- (void)_reportSearchQueryStateForScopeChange
{
  if ([(MessageListSearchViewController *)self isSearchSuggestionsVisible])
  {
    v3 = 2;
  }

  else
  {
    v3 = 3;
  }

  [(MessageListSearchViewController *)self reportSearchQueryStateWithTriggerEvent:27 searchType:v3];
}

- (void)reportSearchQueryStateWithTriggerEvent:(unint64_t)a3 searchType:(unint64_t)a4
{
  v8 = [(MessageListViewController *)self inputLanguages];
  if (pthread_main_np() != 1)
  {
    v12 = +[NSAssertionHandler currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"MessageListSearchViewController.m" lineNumber:2543 description:@"Current thread must be main"];
  }

  v9 = [(MessageListSearchViewController *)self currentSuggestion];
  objc_initWeak(&location, self);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100168CF8;
  v13[3] = &unk_100652268;
  objc_copyWeak(v16, &location);
  v14 = v9;
  v16[1] = a3;
  v16[2] = a4;
  v10 = v8;
  v15 = v10;
  v11 = v9;
  [(MessageListViewController *)self parsecEventQueuePerformBlock:v13];

  objc_destroyWeak(v16);
  objc_destroyWeak(&location);
}

- (void)reportQueryClearedEvent:(int64_t)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1001691D0;
  v3[3] = &unk_1006520C8;
  v3[4] = a3;
  [(MessageListViewController *)self parsecEventQueuePerformBlock:v3];
}

- (id)viewForKeyboardAvoidance:(id)a3
{
  v3 = [(MessageListSearchViewController *)self collectionView];

  return v3;
}

- (void)keyboardAvoidance:(id)a3 adjustForFrameOverlap:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  [(MessageListSearchViewController *)self currentKeyboardOverlap];
  v11.origin.x = x;
  v11.origin.y = y;
  v11.size.width = width;
  v11.size.height = height;
  if (!CGRectEqualToRect(v10, v11))
  {
    [(MessageListSearchViewController *)self setCurrentKeyboardOverlap:x, y, width, height];

    [(MessageListSearchViewController *)self reportVisibleMessageListResultsAlwaysReportItems:0];
  }
}

- (id)messageListDataSource:(id)a3 sectionDataSourceForSection:(id)a4 messageList:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (([v9 isEqualToString:MessageListSectionIndexedSearch] & 1) != 0 || (objc_msgSend(v9, "isEqualToString:", MessageListSectionServerSearch) & 1) != 0 || objc_msgSend(v9, "isEqualToString:", MessageListSectionTopHits))
  {
    v11 = [MUIMessageListSearchSectionDataSource alloc];
    v12 = [(MessageListSearchViewController *)self sectionDataSourceConfigurationWithSection:v9 messageList:v10];
    v13 = [v11 initWithConfiguration:v12];
LABEL_5:
    v14 = v13;

    goto LABEL_6;
  }

  if ([v9 isEqualToString:MessageListSectionInstantAnswers])
  {
    v16 = [MUIMessageListInstantAnswerSectionDataSource alloc];
    v12 = [(MessageListSearchViewController *)self sectionDataSourceConfigurationWithSection:v9 messageList:v10];
    v13 = [v16 initWithConfiguration:v12];
    goto LABEL_5;
  }

  v17.receiver = self;
  v17.super_class = MessageListSearchViewController;
  v14 = [(MessageListSearchViewController *)&v17 messageListDataSource:v8 sectionDataSourceForSection:v9 messageList:v10];
LABEL_6:

  return v14;
}

- (id)sectionDataSourceConfigurationWithSection:(id)a3 messageList:(id)a4
{
  v8.receiver = self;
  v8.super_class = MessageListSearchViewController;
  v5 = [(MessageListSearchViewController *)&v8 sectionDataSourceConfigurationWithSection:a3 messageList:a4];
  v6 = [(MessageListSearchViewController *)self searchProgressView];
  [v5 setSearchProgressView:v6];

  return v5;
}

- (void)messageListDataSource:(id)a3 willUpdateWithChange:(id)a4 section:(id)a5 animated:(BOOL)a6 cleanSnapshot:(BOOL)a7
{
  v7 = a7;
  v8 = a6;
  v12 = a4;
  v13 = a5;
  v15.receiver = self;
  v15.super_class = MessageListSearchViewController;
  [(MessageListViewController *)&v15 messageListDataSource:a3 willUpdateWithChange:v12 section:v13 animated:v8 cleanSnapshot:v7];
  v14 = [v13 section];
  if (v14 == MessageListSectionServerSearch && !-[MessageListSearchViewController hasReceivedFirstRemoteSearchResult](self, "hasReceivedFirstRemoteSearchResult") && [v12 isAddition] && objc_msgSend(v12, "numberOfChanges") >= 1)
  {
    [(MessageListSearchViewController *)self setHasReceivedFirstRemoteSearchResult:1];
  }
}

- (void)messageListDataSource:(id)a3 didUpdateWithChange:(id)a4 section:(id)a5 animated:(BOOL)a6
{
  v6 = a6;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  [(MessageListSearchViewController *)self _updateFooter];
  v13.receiver = self;
  v13.super_class = MessageListSearchViewController;
  [(MessageListViewController *)&v13 messageListDataSource:v10 didUpdateWithChange:v11 section:v12 animated:v6];
}

- (void)didTapCheckInUrlFor:(id)a3
{
  v5 = a3;
  v6 = [v5 instantAnswer];
  v7 = [v6 flight];
  v8 = [v7 checkInUrl];

  if (v8)
  {
    v9 = +[UIApplication sharedApplication];
    [v9 openURL:v8 withCompletionHandler:&stru_100652288];
  }

  else
  {
    v10 = +[MessageListViewController log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = NSStringFromSelector(a2);
      v12 = [v6 message];
      v13 = [v12 ef_publicDescription];
      v17 = 138543618;
      v18 = v11;
      v19 = 2114;
      v20 = v13;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ - no checkInURL for message:%{public}@", &v17, 0x16u);
    }
  }

  v14 = [(MessageListViewController *)self parsecInstantAnswerForInstantAnswer:v6];
  v15 = objc_alloc_init(SFManageReservationCommand);
  v16 = [v6 buttonsCardSectionID];
  [(MessageListSearchViewController *)self reportInstantAnswerButtonSelected:v14 cardSectionID:v16 command:v15];
}

- (void)didTapMapAddressFor:(id)a3
{
  v5 = a3;
  v6 = [v5 instantAnswer];
  v7 = [v6 hotel];
  v8 = [v7 address];

  v9 = [v8 stringByReplacingOccurrencesOfString:@" " withString:@"+"];

  v10 = [@"http://maps.apple.com/?q=" stringByAppendingString:v9];

  v11 = [NSURL URLWithString:v10];
  if (v11)
  {
    v12 = +[UIApplication sharedApplication];
    [v12 openURL:v11 withCompletionHandler:&stru_1006522A8];
  }

  else
  {
    v13 = +[MessageListViewController log];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = NSStringFromSelector(a2);
      v15 = [v6 message];
      v16 = [v15 ef_publicDescription];
      v20 = 138543618;
      v21 = v14;
      v22 = 2114;
      v23 = v16;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ - no addressUrl for message:%{public}@", &v20, 0x16u);
    }
  }

  v17 = [(MessageListViewController *)self parsecInstantAnswerForInstantAnswer:v6];
  v18 = objc_alloc_init(SFManageReservationCommand);
  v19 = [v6 buttonsCardSectionID];
  [(MessageListSearchViewController *)self reportInstantAnswerButtonSelected:v17 cardSectionID:v19 command:v18];
}

- (void)didTapViewMessageFor:(id)a3
{
  v4 = [a3 instantAnswer];
  v5 = [v4 message];
  v6 = [(MessageListSearchViewController *)self dataSource];
  v7 = [v6 messageListForSection:MessageListSectionInstantAnswers];

  [(MessageListViewController *)self setReferenceMessageListItem:v5 referenceMessageList:v7 showAsConversation:1 animated:1];
  v8 = [(MessageListViewController *)self scene];
  if (([v8 isInExpandedEnvironment] & 1) == 0)
  {
    v9 = [v8 splitViewController];
    [v9 showConversationViewControllerAnimated:1 completion:0];
  }

  v10 = [(MessageListSearchViewController *)self collectionView];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v11 = [v10 indexPathsForSelectedItems];
  v12 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v12)
  {
    v13 = *v18;
    do
    {
      v14 = 0;
      do
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v11);
        }

        [v10 deselectItemAtIndexPath:*(*(&v17 + 1) + 8 * v14) animated:1];
        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v12);
  }

  [(MessageListViewController *)self setLastSelectedItemID:0];
  v15 = [(MessageListViewController *)self parsecInstantAnswerForInstantAnswer:v4];
  v16 = [v4 buttonsCardSectionID];
  [(MessageListSearchViewController *)self reportInstantAnswerCardSelected:v15 cardSectionID:v16];
}

- (EMCollectionItemID)lastSelectedTopHitItemID
{
  WeakRetained = objc_loadWeakRetained(&self->_lastSelectedTopHitItemID);

  return WeakRetained;
}

- (CGRect)currentKeyboardOverlap
{
  x = self->_currentKeyboardOverlap.origin.x;
  y = self->_currentKeyboardOverlap.origin.y;
  width = self->_currentKeyboardOverlap.size.width;
  height = self->_currentKeyboardOverlap.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end