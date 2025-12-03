@interface MessageListSearchViewController
+ (OS_os_log)log;
- (BOOL)_shouldKeepDisplayingSearchingFooter;
- (BOOL)_shouldUpdateSearchForOptions:(int64_t)options;
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
- (MessageListSearchViewController)initWithMainScene:(id)scene mailboxes:(id)mailboxes accountsProvider:(id)provider favoritesShortcutsProvider:(id)shortcutsProvider contactStore:(id)store;
- (NSDictionary)indexStatistics;
- (double)_searchingFooterDisplayTimeLeft;
- (id)SectionCategoryForSuggestion:(id)suggestion;
- (id)_additionalBarButtonItems;
- (id)_currentEditingStringForSearchBar:(id)bar;
- (id)_excludeJunkTrashPredicate;
- (id)_excludedMailboxes;
- (id)_excludedMailboxesInPredicate:(id)predicate;
- (id)_groupForRecentSearchSuggestionItems:(id)items;
- (id)_latencyMsFromTimestamp:(id)timestamp toTimestamp:(id)toTimestamp;
- (id)_localMailboxPredicate;
- (id)_objectFromSelectionInSearchTextField:(id)field;
- (id)_parsecEmbeddingStateWithSearchInfo:(id)info;
- (id)_parsecMessageResultForVisibleIndexPath:(id)path;
- (id)_parsecSuggestionForSuggestion:(id)suggestion;
- (id)_phraseManagerForPhrase:(id)phrase;
- (id)_scopeIdentifierForPeopleSuggestions;
- (id)_scopeTitlesForSearchAtom:(id)atom;
- (id)_searchTapToRadarButtonItem;
- (id)_updatedSuggestionsGroups:(id)groups phraseKind:(unsigned __int8)kind;
- (id)attributedSpotlightTitle:(id)title;
- (id)categoryForSuggestion:(id)suggestion;
- (id)categoryForTokenKind:(int64_t)kind;
- (id)messageListDataSource:(id)source sectionDataSourceForSection:(id)section messageList:(id)list;
- (id)navigationController;
- (id)navigationItem;
- (id)navigationTitleForSearch;
- (id)searchBar;
- (id)searchScopeForSuggestionCategoryScope:(id)scope;
- (id)searchTextField:(id)field itemProviderForCopyingToken:(id)token;
- (id)sectionDataSourceConfigurationWithSection:(id)section messageList:(id)list;
- (id)sectionHeaderTitleForMessageListSectionDataSource:(id)source;
- (id)splitViewController;
- (id)targetViewControllerForAction:(SEL)action sender:(id)sender;
- (id)toolbarItems;
- (id)viewForKeyboardAvoidance:(id)avoidance;
- (int64_t)_numberOfTopHitResults;
- (unint64_t)_computeBGSystemTaskFeatureCheckpoint;
- (unint64_t)_countOfSuggestionAtomsInSearchbar:(id)searchbar;
- (void)_addSuggestionToRecentSuggester:(id)suggester;
- (void)_beginSearchWithRepresentedObjectsForInitialSearch;
- (void)_clearSearchResultSections;
- (void)_configureLayoutListConfiguration:(id)configuration atSection:(int64_t)section;
- (void)_didCompleteDismissalTransition:(id)transition;
- (void)_didCompletePresentationTransition:(id)transition;
- (void)_displaySearchingFooter;
- (void)_endSearchSession;
- (void)_generateSuggestionsForPhrase:(id)phrase;
- (void)_getDefaultPersonScopeIdentifier:(id *)identifier alternativeScopeIdentifier:(id *)scopeIdentifier;
- (void)_initializeSearchUserActivity;
- (void)_invokeSearchFeedbackTapToRadar;
- (void)_notePredicateUpdated:(int64_t)updated;
- (void)_preheatCoreSpotlightModel;
- (void)_prepareSnapshotViewForDismissal;
- (void)_reportMessageResultsFetchedIsFinished:(BOOL)finished;
- (void)_reportSearchQueryStateForScopeChange;
- (void)_resetFooterState;
- (void)_resetGlobalScopeTitles;
- (void)_resetSearchFeedbackIfNeeded;
- (void)_sceneDidEnterBackground;
- (void)_scheduleIndexStateStatistics;
- (void)_sendAnalyticsForIndexState:(id)state;
- (void)_startSearchSession;
- (void)_stopAnimatingSearchingFooter;
- (void)_updateFooter;
- (void)_updateIndexStatistics;
- (void)_updateIndexStatisticsIfNeeded;
- (void)_updateSearchBarUsingSuggestionToken:(id)token;
- (void)_updateSearchFeedbackCount:(BOOL)count;
- (void)_updateSearchResultsControllerVisibility;
- (void)_updateSearchResultsForSearchController:(id)controller;
- (void)_updateSearchingCompletionState;
- (void)beginSearchWithQueryString:(id)string scope:(id)scope;
- (void)beginSearchWithSuggestion:(id)suggestion scope:(id)scope;
- (void)collectionView:(id)view didEndDisplayingCell:(id)cell forItemAtIndexPath:(id)path;
- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path;
- (void)dealloc;
- (void)didTapCheckInUrlFor:(id)for;
- (void)didTapMapAddressFor:(id)for;
- (void)didTapViewMessageFor:(id)for;
- (void)dismissToastViewController:(id)controller;
- (void)globalSearchScopeChanged:(int64_t)changed;
- (void)invokeTapToRadar;
- (void)keyboardAvoidance:(id)avoidance adjustForFrameOverlap:(CGRect)overlap;
- (void)loadView;
- (void)messageListDataSource:(id)source didUpdateWithChange:(id)change section:(id)section animated:(BOOL)animated;
- (void)messageListDataSource:(id)source willUpdateWithChange:(id)change section:(id)section animated:(BOOL)animated cleanSnapshot:(BOOL)snapshot;
- (void)messageListSectionDataSource:(id)source collectionFailedSearching:(id)searching remote:(BOOL)remote searchInfo:(id)info;
- (void)messageListSectionDataSource:(id)source collectionFinishedSearching:(id)searching remote:(BOOL)remote searchInfo:(id)info;
- (void)performOnLocalAndRemoteSearchCompletion:(id)completion;
- (void)performOnRemoteSearchCompletion:(id)completion;
- (void)presentToastViewController;
- (void)redrawSearchBarWithSuggestion:(id)suggestion;
- (void)removeObservers;
- (void)reportInstantAnswerButtonSelected:(id)selected cardSectionID:(id)d command:(id)command;
- (void)reportInstantAnswerCardSelected:(id)selected cardSectionID:(id)d;
- (void)reportQueryClearedEvent:(int64_t)event;
- (void)reportSearchDidBecomeActive;
- (void)reportSearchEndedEvent:(int64_t)event;
- (void)reportSearchQueryStateWithTriggerEvent:(unint64_t)event searchType:(unint64_t)type;
- (void)reportSearchViewAppeared:(BOOL)appeared currentMailboxScope:(BOOL)scope;
- (void)reportSuggestionSelected:(id)selected;
- (void)reportSuggestionsFetched:(id)fetched;
- (void)reportSuggestionsVisible:(id)visible;
- (void)reportTopHitSelected:(id)selected;
- (void)reportVisibleMessageListResultsAlwaysReportItems:(BOOL)items isFinished:(BOOL)finished;
- (void)searchBar:(id)bar selectedScopeButtonIndexDidChange:(int64_t)change;
- (void)searchBar:(id)bar textDidChange:(id)change;
- (void)searchBarSearchButtonClicked:(id)clicked;
- (void)searchSuggestionsViewController:(id)controller deleteRecentSuggestion:(id)suggestion;
- (void)searchSuggestionsViewController:(id)controller didSelectItemID:(id)d instantAnswerSuggestion:(id)suggestion cardSectionID:(id)iD;
- (void)searchSuggestionsViewController:(id)controller didSelectItemID:(id)d instantAnswerSuggestion:(id)suggestion cardSectionID:(id)iD command:(id)command;
- (void)searchSuggestionsViewController:(id)controller didSelectItemID:(id)d messageList:(id)list;
- (void)searchSuggestionsViewController:(id)controller didSelectItemID:(id)d messageList:(id)list indexInformation:(id)information;
- (void)searchSuggestionsViewController:(id)controller didSelectItemID:(id)d messageList:(id)list indexInformation:(id)information topHitSuggestion:(id)suggestion;
- (void)searchSuggestionsViewController:(id)controller didSelectSuggestion:(id)suggestion;
- (void)searchTokenScopeChanged:(int64_t)changed;
- (void)setGenerateCannedSuggestions:(BOOL)suggestions;
- (void)setIndexStatistics:(id)statistics;
- (void)setSearchStartTimestamp:(id)timestamp;
- (void)setSearchSuggestionsVisible:(BOOL)visible;
- (void)setSearching:(BOOL)searching;
- (void)setSnapshotViewForDismissal:(id)dismissal;
- (void)setSuggestionStartTimestamp:(id)timestamp;
- (void)setToolbarItems:(id)items animated:(BOOL)animated;
- (void)setUpAppSwitcherObserver;
- (void)shouldTriggerTapToRadarForViewController:(id)controller shouldTrigger:(BOOL)trigger;
- (void)suggestionsGenerator:(id)generator didCompleteRequestID:(id)d;
- (void)suggestionsGenerator:(id)generator didProduceResult:(id)result;
- (void)textFieldDidChangeSelection:(id)selection;
- (void)textPasteConfigurationSupporting:(id)supporting transformPasteItem:(id)item;
- (void)updateSearchResultsForSearchController:(id)controller;
- (void)updateSearchResultsForSearchController:(id)controller selectingSearchSuggestion:(id)suggestion;
- (void)updateUserActivityState:(id)state;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)appearing;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)willDismissSearchController:(id)controller;
- (void)willMoveToParentViewController:(id)controller;
- (void)willPresentSearchController:(id)controller;
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

- (void)setSearchStartTimestamp:(id)timestamp
{
  objc_storeStrong(&self->_searchStartTimestamp, timestamp);
  if (timestamp)
  {

    [(MessageListSearchViewController *)self setDidReportFirstVisibleResults:0];
  }
}

- (void)setSuggestionStartTimestamp:(id)timestamp
{
  objc_storeStrong(&self->_suggestionStartTimestamp, timestamp);
  if (timestamp)
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
  block[4] = self;
  if (qword_1006DD320 != -1)
  {
    dispatch_once(&qword_1006DD320, block);
  }

  v2 = qword_1006DD318;

  return v2;
}

- (MessageListSearchViewController)initWithMainScene:(id)scene mailboxes:(id)mailboxes accountsProvider:(id)provider favoritesShortcutsProvider:(id)shortcutsProvider contactStore:(id)store
{
  sceneCopy = scene;
  mailboxesCopy = mailboxes;
  providerCopy = provider;
  storeCopy = store;
  v38.receiver = self;
  v38.super_class = MessageListSearchViewController;
  v15 = [(MessageListViewController *)&v38 initWithMainScene:sceneCopy mailboxes:mailboxesCopy accountsProvider:providerCopy favoritesShortcutsProvider:0 contactStore:storeCopy diagnosticsHelper:0];
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

    daemonInterface = [sceneCopy daemonInterface];
    senderRepository = [daemonInterface senderRepository];
    [(MessageListSearchViewController *)v16 setSenderRepository:senderRepository];

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
  localSearchInitialLoadPromise = [(MessageListSearchViewController *)self localSearchInitialLoadPromise];
  [localSearchInitialLoadPromise cancel];

  localSearchRemotePromise = [(MessageListSearchViewController *)self localSearchRemotePromise];
  [localSearchRemotePromise cancel];

  remoteSearchInitialLoadPromise = [(MessageListSearchViewController *)self remoteSearchInitialLoadPromise];
  [remoteSearchInitialLoadPromise cancel];

  remoteSearchServerPromise = [(MessageListSearchViewController *)self remoteSearchServerPromise];
  [remoteSearchServerPromise cancel];

  canShowMenuSuggestionsPromise = [(MessageListSearchViewController *)self canShowMenuSuggestionsPromise];
  [canShowMenuSuggestionsPromise cancel];

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
    isInternal = [v7 isInternal];

    if (isInternal)
    {
      [(MessageListSearchViewController *)self _resetSearchFeedbackIfNeeded];
    }
  }
}

- (BOOL)isFilterButtonEnabled
{
  presentingViewController = [(MessageListSearchViewController *)self presentingViewController];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  presentingViewController2 = [(MessageListSearchViewController *)self presentingViewController];
  isFilterButtonEnabled = [presentingViewController2 isFilterButtonEnabled];

  return isFilterButtonEnabled;
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = MessageListSearchViewController;
  [(MessageListViewController *)&v4 viewDidLoad];
  collectionView = [(MessageListSearchViewController *)self collectionView];
  [collectionView setKeyboardDismissMode:1];
  [collectionView setSelectionFollowsFocus:1];
}

- (void)viewDidAppear:(BOOL)appear
{
  v7.receiver = self;
  v7.super_class = MessageListSearchViewController;
  [(MessageListViewController *)&v7 viewDidAppear:appear];
  if (![(MessageListSearchViewController *)self isSearchSuggestionsVisible])
  {
    [(MessageListSearchViewController *)self reportSearchDidBecomeActive];
  }

  indexStatus = [(MessageListViewController *)self indexStatus];

  if (indexStatus)
  {
    _computeBGSystemTaskFeatureCheckpoint = [(MessageListSearchViewController *)self _computeBGSystemTaskFeatureCheckpoint];
    v6 = +[MessageListSearchViewController log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v9 = _computeBGSystemTaskFeatureCheckpoint;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Reporting Search Indexer feature checkpoint: %ld", buf, 0xCu);
    }

    [BGSystemTaskCheckpoints reportFeatureCheckpoint:_computeBGSystemTaskFeatureCheckpoint forFeature:302 error:0];
  }
}

- (void)setIndexStatistics:(id)statistics
{
  statisticsCopy = statistics;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = [statisticsCopy copy];
  indexStatistics = selfCopy->_indexStatistics;
  selfCopy->_indexStatistics = v5;

  objc_sync_exit(selfCopy);
}

- (NSDictionary)indexStatistics
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_indexStatistics;
  objc_sync_exit(selfCopy);

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
    suggestionsViewController = [(MessageListSearchViewController *)self suggestionsViewController];
    collectionView = [(MessageListSearchViewController *)self collectionView];
    [collectionView layoutMargins];
    [suggestionsViewController updateLayoutMargins:?];
  }
}

- (MUISearchSuggestionsGenerator)suggestionsGenerator
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  suggestionsGenerator = selfCopy->_suggestionsGenerator;
  if (!suggestionsGenerator)
  {
    v4 = sub_1001598FC(selfCopy);
    v5 = [[MUISearchSuggestionsGenerator alloc] initWithSuggesters:v4 delegate:selfCopy];
    v6 = selfCopy->_suggestionsGenerator;
    selfCopy->_suggestionsGenerator = v5;

    suggestionsGenerator = selfCopy->_suggestionsGenerator;
  }

  v7 = suggestionsGenerator;
  objc_sync_exit(selfCopy);

  return v7;
}

- (MFSearchSuggestionsViewControllable)suggestionsViewController
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  suggestionsViewController = selfCopy->_suggestionsViewController;
  if (!suggestionsViewController)
  {
    v4 = [_TtC10MobileMail31SearchSuggestionsViewController alloc];
    scene = [(MessageListViewController *)selfCopy scene];
    contactStore = [(MessageListSearchViewController *)selfCopy contactStore];
    v7 = [(SearchSuggestionsViewController *)v4 initWithMailScene:scene contactStore:contactStore delegate:selfCopy];
    v8 = selfCopy->_suggestionsViewController;
    selfCopy->_suggestionsViewController = v7;

    suggestionsViewController = selfCopy->_suggestionsViewController;
  }

  v9 = suggestionsViewController;
  objc_sync_exit(selfCopy);

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
  dataSource = [(MessageListSearchViewController *)self dataSource];
  v4 = [dataSource numberOfItemsInSections:v5] > 0;

  return v4;
}

- (void)_configureLayoutListConfiguration:(id)configuration atSection:(int64_t)section
{
  configurationCopy = configuration;
  v23.receiver = self;
  v23.super_class = MessageListSearchViewController;
  [(MessageListViewController *)&v23 _configureLayoutListConfiguration:configurationCopy atSection:section];
  dataSource = [(MessageListSearchViewController *)self dataSource];
  v8 = [dataSource isSection:MessageListSectionIndexedSearch atIndex:section];
  v9 = [dataSource isSection:MessageListSectionServerSearch atIndex:section];
  v10 = [dataSource shouldDisplaySupplementaryKind:UICollectionElementKindSectionHeader forSectionAtIndex:section];
  v11 = [dataSource shouldDisplaySupplementaryKind:UICollectionElementKindSectionFooter forSectionAtIndex:section];
  [configurationCopy setFooterMode:0];
  remoteSearchServerPromise = [(MessageListSearchViewController *)self remoteSearchServerPromise];
  future = [remoteSearchServerPromise future];
  resultIfAvailable = [future resultIfAvailable];

  hasReceivedFirstRemoteSearchResult = [(MessageListSearchViewController *)self hasReceivedFirstRemoteSearchResult];
  if (resultIfAvailable)
  {
    v16 = 1;
  }

  else
  {
    v16 = hasReceivedFirstRemoteSearchResult;
  }

  if (v16 == 1 && ![(MessageListSearchViewController *)self _shouldKeepDisplayingSearchingFooter])
  {
    indexStatus = [(MessageListViewController *)self indexStatus];
    isNotFullyIndexed = [indexStatus isNotFullyIndexed];

    v17 = isNotFullyIndexed ^ 1;
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
      [configurationCopy setHeaderMode:v10];
      goto LABEL_13;
    }
  }

  if (v8)
  {
    if (((v11 ^ 1 | v17) & 1) == 0)
    {
      [configurationCopy setFooterMode:1];
    }

    [(MessageListSearchViewController *)self setIsOptimizingSearchFooterVisible:((v11 ^ 1 | v17) & 1) == 0];
  }

LABEL_13:
  if ((_os_feature_enabled_impl() & v8 & v10) == 1)
  {
    [configurationCopy setHeaderMode:{-[MessageListSearchViewController _numberOfTopHitResults](self, "_numberOfTopHitResults") > 0}];
  }

  if (v9)
  {
    if (v11 && (-[MessageListSearchViewController searchProgressView](self, "searchProgressView"), v20 = objc_claimAutoreleasedReturnValue(), v21 = [v20 isAnimating] & v17, v20, v21 == 1))
    {
      v22 = 1;
      [configurationCopy setFooterMode:1];
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
  dataSource = [(MessageListSearchViewController *)self dataSource];
  v4 = [dataSource sectionIndexForSection:MessageListSectionTopHits];

  dataSource2 = [(MessageListSearchViewController *)self dataSource];
  v6 = [dataSource2 numberOfItemsAtSectionIndex:v4];

  return v6;
}

- (id)sectionHeaderTitleForMessageListSectionDataSource:(id)source
{
  section = [source section];
  _numberOfTopHitResults = [(MessageListSearchViewController *)self _numberOfTopHitResults];
  if ([section isEqualToString:MessageListSectionServerSearch])
  {
    v6 = +[NSBundle mainBundle];
    v7 = [v6 localizedStringForKey:@"SEARCH_SECTION_TITLE_SERVER" value:&stru_100662A88 table:@"Main"];
LABEL_5:
    v8 = v7;
LABEL_6:

    goto LABEL_7;
  }

  if ([section isEqualToString:MessageListSectionIndexedSearch])
  {
    v6 = +[NSBundle mainBundle];
    v7 = [v6 localizedStringForKey:@"SEARCH_SECTION_TITLE_INDEXED" value:&stru_100662A88 table:@"Main"];
    goto LABEL_5;
  }

  if ([section isEqualToString:MessageListSectionTopHits])
  {
    v6 = +[NSBundle mainBundle];
    v10 = [v6 localizedStringForKey:@"SEARCH_SECTION_TITLE_TOP_HITS%1$lu" value:&stru_100662A88 table:@"Main"];
    v8 = [NSString localizedStringWithFormat:v10, _numberOfTopHitResults];

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
    mailboxes = [(MessageListSearchViewController *)self mailboxes];
    firstObject = [mailboxes firstObject];

    account = [firstObject account];
    [firstObject name];
    if (account)
      v6 = {;
      account2 = [firstObject account];
      name = [account2 name];
      v9 = [NSString localizedStringWithFormat:@"%@ – %@", v6, name];
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

- (void)willPresentSearchController:(id)controller
{
  controllerCopy = controller;
  conversationViewController = [(MessageListViewController *)self conversationViewController];
  [conversationViewController setDelegate:self];

  [(MessageListSearchViewController *)self setGenerateCannedSuggestions:1];
  *&self->_flags &= ~0x10u;
  [(MessageListSearchViewController *)self setSearching:0];
  [(MessageListSearchViewController *)self _preheatCoreSpotlightModel];
  [(MessageListSearchViewController *)self _resetGlobalScopeTitles];
  [(MessageListSearchViewController *)self _startSearchSession];
  [(MessageListSearchViewController *)self setSnapshotViewForDismissal:0];
  [(MessageListSearchViewController *)self setEnablePresentationAnimation:1];
  v5 = +[NSNotificationCenter defaultCenter];
  [v5 addObserver:self selector:"_didCompletePresentationTransition:" name:UIPresentationControllerPresentationTransitionDidEndNotification object:controllerCopy];

  v6 = +[NSNotificationCenter defaultCenter];
  [v6 addObserver:self selector:"_didCompleteDismissalTransition:" name:UIPresentationControllerDismissalTransitionDidEndNotification object:controllerCopy];

  suggestionForInitialSearch = [(MessageListSearchViewController *)self suggestionForInitialSearch];

  if (suggestionForInitialSearch)
  {
    [(MessageListSearchViewController *)self _beginSearchWithRepresentedObjectsForInitialSearch];
  }

  userActivity = [(MessageListSearchViewController *)self userActivity];
  [userActivity becomeCurrent];
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

- (void)viewWillAppear:(BOOL)appear
{
  v22.receiver = self;
  v22.super_class = MessageListSearchViewController;
  [(MessageListViewController *)&v22 viewWillAppear:appear];
  v4 = +[MFKeyboardAvoidance sharedController];
  [v4 registerKeyboardAvoidable:self];

  [(MessageListSearchViewController *)self setLastSelectedTopHitItemID:0];
  if ([(MessageListSearchViewController *)self enablePresentationAnimation])
  {
    view = [(MessageListSearchViewController *)self view];
    [view frame];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;

    navigationController = [(MessageListSearchViewController *)self navigationController];
    navigationBar = [navigationController navigationBar];
    [navigationBar frame];
    v17 = v9 + v16;

    view2 = [(MessageListSearchViewController *)self view];
    [view2 setFrame:{v7, v17, v11, v13}];

    transitionCoordinator = [(MessageListSearchViewController *)self transitionCoordinator];
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
    [transitionCoordinator animateAlongsideTransition:v21 completion:v20];

    [(MessageListSearchViewController *)self setEnablePresentationAnimation:0];
  }
}

- (void)viewIsAppearing:(BOOL)appearing
{
  v4.receiver = self;
  v4.super_class = MessageListSearchViewController;
  [(MessageListSearchViewController *)&v4 viewIsAppearing:appearing];
  [(MessageListViewController *)self _updateTitle];
  [(MessageListViewController *)self _updateNavigationBarButtonsWithForce:1];
}

- (void)willDismissSearchController:(id)controller
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
    isInternal = [v7 isInternal];

    if (isInternal)
    {
      activeSearchFeedbackToastController = [(MessageListSearchViewController *)self activeSearchFeedbackToastController];

      if (activeSearchFeedbackToastController)
      {
        activeSearchFeedbackToastController2 = [(MessageListSearchViewController *)self activeSearchFeedbackToastController];
        [(MessageListSearchViewController *)self dismissToastViewController:?];
      }
    }
  }

  [(MessageListSearchViewController *)self _endSearchSession];
  beginSearchTimer = [(MessageListSearchViewController *)self beginSearchTimer];
  [beginSearchTimer invalidate];

  [(MessageListSearchViewController *)self setBeginSearchTimer:0];
  [(MessageListSearchViewController *)self setLocalSearchInitialLoadPromise:0];
  [(MessageListSearchViewController *)self setLocalSearchRemotePromise:0];
  [(MessageListSearchViewController *)self setRemoteSearchInitialLoadPromise:0];
  [(MessageListSearchViewController *)self setRemoteSearchServerPromise:0];
  groupedSuggestionsByCategory = [(MessageListSearchViewController *)self groupedSuggestionsByCategory];
  [groupedSuggestionsByCategory removeAllObjects];

  userActivity = [(MessageListSearchViewController *)self userActivity];
  [userActivity resignCurrent];
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

  dataSource = [(MessageListSearchViewController *)self dataSource];
  [dataSource applyMessageListDataSourceUpdate:v5];

  groupedSuggestionsByCategory = [(MessageListSearchViewController *)self groupedSuggestionsByCategory];
  [groupedSuggestionsByCategory removeAllObjects];

  [(MessageListSearchViewController *)self setSuggestionStartTimestamp:0];
  [(MessageListSearchViewController *)self setSuggestionsCompletionTimestamp:0];
  [(MessageListSearchViewController *)self setSearchStartTimestamp:0];
}

- (void)_endSearchSession
{
  [(MessageListSearchViewController *)self reportSearchEndedEvent:2];

  [(MessageListSearchViewController *)self removeObservers];
}

- (void)setSnapshotViewForDismissal:(id)dismissal
{
  dismissalCopy = dismissal;
  snapshotViewForDismissal = self->_snapshotViewForDismissal;
  v7 = dismissalCopy;
  if (snapshotViewForDismissal != dismissalCopy)
  {
    [(UIView *)snapshotViewForDismissal removeFromSuperview];
    objc_storeStrong(&self->_snapshotViewForDismissal, dismissal);
  }
}

- (void)_prepareSnapshotViewForDismissal
{
  view = [(MessageListSearchViewController *)self view];
  v3 = [view snapshotViewAfterScreenUpdates:0];
  [(MessageListSearchViewController *)self setSnapshotViewForDismissal:v3];

  view2 = [(MessageListSearchViewController *)self view];
  [view2 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  snapshotViewForDismissal = [(MessageListSearchViewController *)self snapshotViewForDismissal];
  [snapshotViewForDismissal setFrame:{v5, v7, v9, v11}];

  view3 = [(MessageListSearchViewController *)self view];
  snapshotViewForDismissal2 = [(MessageListSearchViewController *)self snapshotViewForDismissal];
  [view3 addSubview:snapshotViewForDismissal2];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  [(MessageListSearchViewController *)self setInSearchSession:0];
  v24.receiver = self;
  v24.super_class = MessageListSearchViewController;
  [(MessageListViewController *)&v24 viewWillDisappear:disappearCopy];
  v5 = +[MFKeyboardAvoidance sharedController];
  [v5 unregisterKeyboardAvoidable:self];

  searchBar = [(MessageListSearchViewController *)self searchBar];
  [searchBar resignFirstResponder];

  snapshotViewForDismissal = [(MessageListSearchViewController *)self snapshotViewForDismissal];

  if (snapshotViewForDismissal)
  {
    view = [(MessageListSearchViewController *)self view];
    [view frame];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;

    navigationController = [(MessageListSearchViewController *)self navigationController];
    navigationBar = [navigationController navigationBar];
    [navigationBar frame];
    v20 = v12 + v19;

    transitionCoordinator = [(MessageListSearchViewController *)self transitionCoordinator];
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
    [transitionCoordinator animateAlongsideTransition:v23 completion:v22];
  }
}

- (void)willMoveToParentViewController:(id)controller
{
  controllerCopy = controller;
  v5.receiver = self;
  v5.super_class = MessageListSearchViewController;
  [(MessageListSearchViewController *)&v5 willMoveToParentViewController:controllerCopy];
  if (!controllerCopy)
  {
    [(MessageListSearchViewController *)self _generateSuggestionsForPhrase:0];
  }
}

- (void)_didCompletePresentationTransition:(id)transition
{
  canShowMenuSuggestionsPromise = [(MessageListSearchViewController *)self canShowMenuSuggestionsPromise];
  v3 = +[NSNull null];
  [canShowMenuSuggestionsPromise finishWithResult:v3];
}

- (void)_didCompleteDismissalTransition:(id)transition
{
  v4 = +[EFPromise promise];
  [(MessageListSearchViewController *)self setCanShowMenuSuggestionsPromise:?];
}

- (id)splitViewController
{
  v8.receiver = self;
  v8.super_class = MessageListSearchViewController;
  splitViewController = [(MessageListSearchViewController *)&v8 splitViewController];
  v4 = splitViewController;
  if (splitViewController)
  {
    splitViewController2 = splitViewController;
  }

  else
  {
    presentingViewController = [(MessageListSearchViewController *)self presentingViewController];
    splitViewController2 = [presentingViewController splitViewController];
  }

  return splitViewController2;
}

- (id)navigationController
{
  v8.receiver = self;
  v8.super_class = MessageListSearchViewController;
  navigationController = [(MessageListSearchViewController *)&v8 navigationController];
  v4 = navigationController;
  if (navigationController)
  {
    navigationController2 = navigationController;
  }

  else
  {
    presentingViewController = [(MessageListSearchViewController *)self presentingViewController];
    navigationController2 = [presentingViewController navigationController];
  }

  return navigationController2;
}

- (id)targetViewControllerForAction:(SEL)action sender:(id)sender
{
  senderCopy = sender;
  presentingViewController = [(MessageListSearchViewController *)self presentingViewController];
  v8 = [presentingViewController targetViewControllerForAction:action sender:senderCopy];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v13.receiver = self;
    v13.super_class = MessageListSearchViewController;
    v10 = [(MessageListSearchViewController *)&v13 targetViewControllerForAction:action sender:senderCopy];
  }

  v11 = v10;

  return v11;
}

- (void)setToolbarItems:(id)items animated:(BOOL)animated
{
  animatedCopy = animated;
  itemsCopy = items;
  presentingViewController = [(MessageListSearchViewController *)self presentingViewController];
  [presentingViewController setToolbarItems:itemsCopy animated:animatedCopy];
}

- (id)toolbarItems
{
  presentingViewController = [(MessageListSearchViewController *)self presentingViewController];
  toolbarItems = [presentingViewController toolbarItems];

  return toolbarItems;
}

- (id)navigationItem
{
  presentingViewController = [(MessageListSearchViewController *)self presentingViewController];
  navigationItem = [presentingViewController navigationItem];

  return navigationItem;
}

- (id)searchBar
{
  parentViewController = [(MessageListSearchViewController *)self parentViewController];
  searchBar = [parentViewController searchBar];

  return searchBar;
}

- (id)_currentEditingStringForSearchBar:(id)bar
{
  searchBar = [(MessageListSearchViewController *)self searchBar];
  text = [searchBar text];

  ef_stringByTrimmingWhitespaceAndNewlineCharacters = [text ef_stringByTrimmingWhitespaceAndNewlineCharacters];

  return ef_stringByTrimmingWhitespaceAndNewlineCharacters;
}

- (unint64_t)_countOfSuggestionAtomsInSearchbar:(id)searchbar
{
  representedSuggestionTokens = [searchbar representedSuggestionTokens];
  v4 = [representedSuggestionTokens count];

  return v4;
}

- (void)_resetGlobalScopeTitles
{
  searchBar = [(MessageListSearchViewController *)self searchBar];
  v4 = searchBar;
  if (*&self->_flags)
  {
    [searchBar setScopeButtonTitles:0];
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

- (void)globalSearchScopeChanged:(int64_t)changed
{
  *&self->_flags = *&self->_flags & 0xFD | (2 * (changed == 1));
  v4 = +[NSUserDefaults standardUserDefaults];
  [v4 setBool:(*&self->_flags >> 1) & 1 forKey:kMUILocalMailboxSearchOnlyKey];

  [(MessageListViewController *)self _updateTitle];
  [(MessageListSearchViewController *)self _reportSearchQueryStateForScopeChange];

  [(MessageListSearchViewController *)self _notePredicateUpdated:2];
}

- (void)searchTokenScopeChanged:(int64_t)changed
{
  searchBar = [(MessageListSearchViewController *)self searchBar];
  searchTextField = [searchBar searchTextField];
  v7 = [(MessageListSearchViewController *)self _objectFromSelectionInSearchTextField:searchTextField];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
    [v8 setSelectedScopeIndex:changed];
    currentSuggestion = [(MessageListSearchViewController *)self currentSuggestion];
    csToken = [v8 csToken];
    v11 = [CSSuggestion updatedSuggestionWithCurrentSuggestion:currentSuggestion token:csToken scopeSelection:changed];

    [(MessageListSearchViewController *)self redrawSearchBarWithSuggestion:v11];
    v12 = +[MessageListSearchViewController log];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      userQueryString = [v11 userQueryString];
      v14 = [EFPrivacy partiallyRedactedStringForString:userQueryString];
      suggestionTokens = [v11 suggestionTokens];
      v16 = 138412802;
      v17 = v11;
      v18 = 2112;
      v19 = v14;
      v20 = 2112;
      v21 = suggestionTokens;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Suggestion was updated. Reason: Scope changed. Suggestion: %@ UserQueryString: %@ SuggestionTokens: %@", &v16, 0x20u);
    }
  }

  [(MessageListSearchViewController *)self _reportSearchQueryStateForScopeChange];
  [(MessageListSearchViewController *)self _notePredicateUpdated:2];
}

- (void)beginSearchWithQueryString:(id)string scope:(id)scope
{
  scopeCopy = scope;
  v6 = [CSSuggestion mui_suggestionForSpotlightQueryWithString:string];
  [(MessageListSearchViewController *)self beginSearchWithSuggestion:v6 scope:scopeCopy];
}

- (void)beginSearchWithSuggestion:(id)suggestion scope:(id)scope
{
  suggestionCopy = suggestion;
  scopeCopy = scope;
  v8 = +[MessageListSearchViewController log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412546;
    v13 = suggestionCopy;
    v14 = 2112;
    v15 = scopeCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "beginSearchWithSuggestion suggestion=%@, scope=%@", &v12, 0x16u);
  }

  *&self->_flags = *&self->_flags & 0xF3 | 4;
  [(MessageListSearchViewController *)self setSuggestionForInitialSearch:suggestionCopy];
  v9 = [MFSearchScope indexFromScopeKey:scopeCopy];
  searchBar = [(MessageListSearchViewController *)self searchBar];
  [searchBar setSelectedScopeButtonIndex:v9];

  *&self->_flags = *&self->_flags & 0xFD | (2 * (v9 == 1));
  [(MessageListViewController *)self _updateTitle];
  searchController = [(MessageListSearchViewController *)self searchController];
  LODWORD(searchBar) = [searchController isActive];

  if (searchBar)
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
  suggestionForInitialSearch = [(MessageListSearchViewController *)self suggestionForInitialSearch];
  if (suggestionForInitialSearch)
  {
    [(MessageListSearchViewController *)self redrawSearchBarWithSuggestion:suggestionForInitialSearch];
    [(MessageListSearchViewController *)self _addSuggestionToRecentSuggester:suggestionForInitialSearch];
  }

  [(MessageListSearchViewController *)self setSearchSuggestionsVisible:0];
  *&self->_flags |= 8u;
  [(MessageListSearchViewController *)self _notePredicateUpdated:1];
  [(MessageListSearchViewController *)self setSuggestionForInitialSearch:0];
}

- (id)_objectFromSelectionInSearchTextField:(id)field
{
  fieldCopy = field;
  selectedTextRange = [fieldCopy selectedTextRange];
  if (selectedTextRange)
  {
    v5 = [fieldCopy tokensInRange:selectedTextRange];
    if ([v5 count] == 1)
    {
      firstObject = [v5 firstObject];
      representedObject = [firstObject representedObject];
    }

    else
    {
      representedObject = 0;
    }
  }

  else
  {
    representedObject = 0;
  }

  return representedObject;
}

- (id)_scopeTitlesForSearchAtom:(id)atom
{
  suggestion = [atom suggestion];
  category = [suggestion category];
  scopes = [category scopes];

  if ([scopes count] < 2)
  {
    v6 = &__NSArray0__struct;
  }

  else
  {
    v6 = [scopes ef_map:&stru_100651B58];
  }

  return v6;
}

- (void)_addSuggestionToRecentSuggester:(id)suggester
{
  suggesterCopy = suggester;
  recentSuggester = [(MessageListSearchViewController *)self recentSuggester];
  v5 = [suggesterCopy copy];
  v6 = [MUISearchAtomSuggestion suggestionFromSpotlightSuggestion:v5 shouldShowAvaters:0];
  [recentSuggester addSuggestion:v6];
}

- (id)_excludedMailboxesInPredicate:(id)predicate
{
  predicateCopy = predicate;
  v5 = +[EFPromise promise];
  v6 = [[EMQuery alloc] initWithTargetClass:objc_opt_class() predicate:predicateCopy sortDescriptors:&__NSArray0__struct];
  mailboxRepository = [(MessageListSearchViewController *)self mailboxRepository];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10015CD74;
  v14[3] = &unk_10064CE98;
  v8 = v5;
  v15 = v8;
  [mailboxRepository performQuery:v6 completionHandler:v14];

  future = [v8 future];
  v10 = [future result:0];

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
  _excludeJunkTrashPredicate = [(MessageListSearchViewController *)self _excludeJunkTrashPredicate];
  if (_excludeJunkTrashPredicate)
  {
    mailboxes = [(MessageListSearchViewController *)self mailboxes];
    v5 = [(MessageListSearchViewController *)self _excludedMailboxesInPredicate:_excludeJunkTrashPredicate];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10015CEB8;
    v9[3] = &unk_10064CEC0;
    v6 = mailboxes;
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

- (void)_getDefaultPersonScopeIdentifier:(id *)identifier alternativeScopeIdentifier:(id *)scopeIdentifier
{
  mailboxes = [(MessageListSearchViewController *)self mailboxes];
  v7 = [mailboxes ef_any:&stru_100651B78];

  if (v7)
  {
    v8 = MFSearchSuggestionPeopleCategoryToScope;
    v9 = MFSearchSuggestionPeopleCategoryToScope;
    v10 = 0;
    *identifier = v8;
  }

  else
  {
    *identifier = MFSearchSuggestionPeopleCategoryFromScope;
    v10 = MFSearchSuggestionPeopleCategoryToScope;
  }

  *scopeIdentifier = v10;
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

- (id)_phraseManagerForPhrase:(id)phrase
{
  phraseCopy = phrase;
  if (-[MessageListSearchViewController _shouldSearchCurrentMailboxOnly](self, "_shouldSearchCurrentMailboxOnly") && (-[MessageListSearchViewController mailboxes](self, "mailboxes"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 count], v5, v6))
  {
    mailboxes = [(MessageListSearchViewController *)self mailboxes];
    v8 = [SearchMailboxSuggestion suggestionForMailboxes:mailboxes];

    category = [v8 category];
    v10 = [category indexOfScopeWithIdentifier:MFSearchSuggestionMailboxCategoryScope];

    v11 = [MUISearchScopedSuggestion scopedSuggestion:v8 selectedScopeIndex:v10];
    v22 = v11;
    v12 = [NSArray arrayWithObjects:&v22 count:1];
  }

  else
  {
    v12 = 0;
  }

  v13 = +[VIPManager defaultInstance];
  currentSuggestion = [(MessageListSearchViewController *)self currentSuggestion];
  _excludedMailboxes = [(MessageListSearchViewController *)self _excludedMailboxes];
  inputLanguages = [(MessageListViewController *)self inputLanguages];
  session = [(MessageListViewController *)self session];
  feedbackQueryID = [session feedbackQueryID];
  LOBYTE(v21) = ![(MessageListSearchViewController *)self shouldShowMenuSuggestions];
  v19 = [MFSearchSuggestionPhraseManager phraseManagerWithPhrase:phraseCopy selectedSuggestions:0 vipManager:v13 updatedSuggestion:currentSuggestion filterQuery:0 implicitSuggestions:v12 excludedMailboxes:_excludedMailboxes inputLanguages:inputLanguages feedbackQueryID:feedbackQueryID includeTopHitsAndInstantAnswers:v21];

  return v19;
}

- (void)_generateSuggestionsForPhrase:(id)phrase
{
  phraseCopy = phrase;
  suggestionsGenerator = [(MessageListSearchViewController *)self suggestionsGenerator];
  suggestionsIdentifier = [(MessageListSearchViewController *)self suggestionsIdentifier];
  [suggestionsGenerator stopGeneratingSuggestionsWithIdentifier:suggestionsIdentifier];

  [(MessageListSearchViewController *)self setSuggestionsIdentifier:0];
  [(MessageListSearchViewController *)self setSuggestionsCompletionTimestamp:0];
  [(MessageListSearchViewController *)self setSuggestionStartTimestamp:0];
  if ((*&self->_flags & 8) != 0)
  {
    *&self->_flags &= ~4u;
  }

  v6 = [(MessageListSearchViewController *)self _phraseManagerForPhrase:phraseCopy];
  lastPhrase = [(MessageListSearchViewController *)self lastPhrase];
  suggestionsViewController = [(MessageListSearchViewController *)self suggestionsViewController];
  if ([phraseCopy length])
  {
    v9 = +[NSDate date];
    [(MessageListSearchViewController *)self setSuggestionStartTimestamp:v9];

    if (!lastPhrase || [phraseCopy localizedStandardRangeOfString:lastPhrase] && objc_msgSend(lastPhrase, "localizedStandardRangeOfString:", phraseCopy))
    {
      [suggestionsViewController clearSuggestions];
      v10 = phraseCopy;
    }

    else
    {
      [suggestionsViewController beginUpdatingSuggestions];
      v10 = phraseCopy;
    }
  }

  else
  {
    [suggestionsViewController clearSuggestions];
    v10 = 0;
  }

  [(MessageListSearchViewController *)self setLastPhrase:v10];
  if (phraseCopy)
  {
    suggestionsGenerator2 = [(MessageListSearchViewController *)self suggestionsGenerator];
    v12 = [suggestionsGenerator2 startGeneratingSuggestionsUsingPhraseManager:v6];
    [(MessageListSearchViewController *)self setSuggestionsIdentifier:v12];
  }
}

- (void)setGenerateCannedSuggestions:(BOOL)suggestions
{
  if (self->_generateCannedSuggestions != suggestions)
  {
    self->_generateCannedSuggestions = suggestions;
    if (suggestions && (*&self->_flags & 8) != 0)
    {
      [(MessageListSearchViewController *)self _generateSuggestionsForPhrase:0];

      [(MessageListSearchViewController *)self setSearchSuggestionsVisible:1];
    }
  }
}

- (void)performOnRemoteSearchCompletion:(id)completion
{
  completionCopy = completion;
  remoteSearchInitialLoadPromise = [(MessageListSearchViewController *)self remoteSearchInitialLoadPromise];
  future = [remoteSearchInitialLoadPromise future];

  remoteSearchServerPromise = [(MessageListSearchViewController *)self remoteSearchServerPromise];
  future2 = [remoteSearchServerPromise future];

  if (future && future2)
  {
    v22[0] = future;
    v22[1] = future2;
    v9 = [NSArray arrayWithObjects:v22 count:2];
    v10 = [EFFuture combine:v9];

    objc_initWeak(&location, self);
    v11 = +[EFScheduler mainThreadScheduler];
    v13 = _NSConcreteStackBlock;
    v14 = 3221225472;
    v15 = sub_10015D9D4;
    v16 = &unk_100651BA0;
    objc_copyWeak(&v20, &location);
    v17 = future;
    v18 = future2;
    v19 = completionCopy;
    [v10 onScheduler:v11 addSuccessBlock:&v13];

    v12 = [EFScheduler mainThreadScheduler:v13];
    [v10 onScheduler:v12 addFailureBlock:&stru_100651BC0];

    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
  }
}

- (void)performOnLocalAndRemoteSearchCompletion:(id)completion
{
  completionCopy = completion;
  v5 = +[MessageListSearchViewController log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Waiting for local and remote search to complete", &buf, 2u);
  }

  localSearchInitialLoadPromise = [(MessageListSearchViewController *)self localSearchInitialLoadPromise];
  future = [localSearchInitialLoadPromise future];

  localSearchRemotePromise = [(MessageListSearchViewController *)self localSearchRemotePromise];
  future2 = [localSearchRemotePromise future];

  remoteSearchInitialLoadPromise = [(MessageListSearchViewController *)self remoteSearchInitialLoadPromise];
  future3 = [remoteSearchInitialLoadPromise future];

  remoteSearchServerPromise = [(MessageListSearchViewController *)self remoteSearchServerPromise];
  future4 = [remoteSearchServerPromise future];

  if (future && future2 && future3 && future4)
  {
    v29[0] = future;
    v29[1] = future2;
    v29[2] = future3;
    v29[3] = future4;
    v14 = [NSArray arrayWithObjects:v29 count:4];
    v15 = [EFFuture combine:v14];

    objc_initWeak(&buf, self);
    v16 = +[EFScheduler mainThreadScheduler];
    v18 = _NSConcreteStackBlock;
    v19 = 3221225472;
    v20 = sub_10015E01C;
    v21 = &unk_100651BE8;
    objc_copyWeak(&v27, &buf);
    v22 = future;
    v23 = future2;
    v24 = future3;
    v25 = future4;
    v26 = completionCopy;
    [v15 onScheduler:v16 addSuccessBlock:&v18];

    v17 = [EFScheduler mainThreadScheduler:v18];
    [v15 onScheduler:v17 addFailureBlock:&stru_100651C08];

    objc_destroyWeak(&v27);
    objc_destroyWeak(&buf);
  }
}

- (BOOL)isSearchSuggestionsVisible
{
  parentViewController = [(MFSearchSuggestionsViewControllable *)self->_suggestionsViewController parentViewController];
  v3 = parentViewController != 0;

  return v3;
}

- (BOOL)hasSuggestions
{
  suggestionsViewController = [(MessageListSearchViewController *)self suggestionsViewController];
  hasSuggestions = [suggestionsViewController hasSuggestions];

  return hasSuggestions;
}

- (void)setSearchSuggestionsVisible:(BOOL)visible
{
  visibleCopy = visible;
  isSearchSuggestionsVisible = [(MessageListSearchViewController *)self isSearchSuggestionsVisible];
  v6 = !visibleCopy || [(MessageListSearchViewController *)self shouldShowMenuSuggestions];
  if (v6 & isSearchSuggestionsVisible)
  {
    collectionView = [(MessageListSearchViewController *)self collectionView];
    [collectionView setScrollsToTop:1];

    [(MFSearchSuggestionsViewControllable *)self->_suggestionsViewController willMoveToParentViewController:0];
    viewIfLoaded = [(MFSearchSuggestionsViewControllable *)self->_suggestionsViewController viewIfLoaded];
    [viewIfLoaded removeFromSuperview];

    [(MFSearchSuggestionsViewControllable *)self->_suggestionsViewController removeFromParentViewController];
    collectionView2 = [(MessageListSearchViewController *)self collectionView];
    [(MessageListSearchViewController *)self setContentScrollView:collectionView2 forEdge:5];

    [(MessageListViewController *)self updateBarButtons];
    [(MessageListSearchViewController *)self setLastSelectedTopHitItemID:0];
  }

  else if (!(v6 | isSearchSuggestionsVisible))
  {
    if (self->_suggestionsViewController)
    {
      collectionView3 = [(MessageListSearchViewController *)self collectionView];
      [collectionView3 setScrollsToTop:0];

      if (![(MessageListSearchViewController *)self shouldShowMenuSuggestions])
      {
        [(MessageListSearchViewController *)self addChildViewController:self->_suggestionsViewController];
        observableScrollView = [(MFSearchSuggestionsViewControllable *)self->_suggestionsViewController observableScrollView];
        [(MessageListSearchViewController *)self setContentScrollView:observableScrollView forEdge:5];

        view = [(MFSearchSuggestionsViewControllable *)self->_suggestionsViewController view];
        [view setAutoresizingMask:18];

        view2 = [(MessageListSearchViewController *)self view];
        [view2 bounds];
        v15 = v14;
        v17 = v16;
        v19 = v18;
        v21 = v20;
        view3 = [(MFSearchSuggestionsViewControllable *)self->_suggestionsViewController view];
        [view3 setFrame:{v15, v17, v19, v21}];

        view4 = [(MessageListSearchViewController *)self view];
        view5 = [(MFSearchSuggestionsViewControllable *)self->_suggestionsViewController view];
        [view4 addSubview:view5];

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

  searchBar = [(MessageListSearchViewController *)self searchBar];
  [searchBar setShowsProgress:v6];
}

- (void)updateSearchResultsForSearchController:(id)controller
{
  controllerCopy = controller;
  searchBar = [controllerCopy searchBar];
  v4 = [(MessageListSearchViewController *)self _currentEditingStringForSearchBar:?];
  v5 = [v4 length];
  v6 = +[MessageListSearchViewController log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    currentUserTypedPhrase = [(MessageListViewController *)self currentUserTypedPhrase];
    v8 = [EFPrivacy partiallyRedactedStringForString:currentUserTypedPhrase];
    currentSuggestion = [(MessageListSearchViewController *)self currentSuggestion];
    v10 = [EMCSLoggingAdditions publicDescriptionForSuggestion:currentSuggestion];
    currentSuggestion2 = [(MessageListSearchViewController *)self currentSuggestion];
    suggestionTokens = [currentSuggestion2 suggestionTokens];
    *buf = 138412802;
    v22 = v8;
    v23 = 2112;
    v24 = v10;
    v25 = 2112;
    v26 = suggestionTokens;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Searching with userString: %@ suggestion: %@ suggestionTokens: %@", buf, 0x20u);
  }

  if (v5)
  {
    mui_isEmpty = 0;
  }

  else
  {
    currentSuggestion3 = [(MessageListSearchViewController *)self currentSuggestion];
    mui_isEmpty = [currentSuggestion3 mui_isEmpty];

    if (mui_isEmpty)
    {
      if ([(MessageListSearchViewController *)self inSearchSession])
      {
        lastPhrase = [(MessageListSearchViewController *)self lastPhrase];
        mui_isEmpty = lastPhrase != 0;
      }

      else
      {
        mui_isEmpty = 1;
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

  if ((mui_isEmpty | v16))
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
    searchDebouncer = [(MessageListSearchViewController *)self searchDebouncer];
    [searchDebouncer debounceResult:controllerCopy];
  }

  else if ([(MessageListSearchViewController *)self _shouldUpdateSearchForOptions:2])
  {
    v18 = [(MessageListSearchViewController *)self _countOfSuggestionAtomsInSearchbar:searchBar];
    if (v18)
    {
      if ([(MessageListSearchViewController *)self countOfAtomsInLastSearch]!= v18)
      {
        [(MessageListSearchViewController *)self _notePredicateUpdated:2];
      }
    }
  }
}

- (void)_updateSearchResultsForSearchController:(id)controller
{
  searchBar = [controller searchBar];
  representedObjects = [searchBar representedObjects];
  v6 = [representedObjects count];

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

- (void)updateSearchResultsForSearchController:(id)controller selectingSearchSuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
  representedObject = [suggestionCopy representedObject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    representedObject2 = [suggestionCopy representedObject];
    [(MessageListSearchViewController *)self searchSuggestionsViewController:0 didSelectSuggestion:representedObject2];
  }
}

- (BOOL)_shouldUpdateSearchForOptions:(int64_t)options
{
  if ([(MessageListSearchViewController *)self isSearchSuggestionsVisible])
  {
    return 0;
  }

  if (options == 2)
  {
    return (*&self->_flags & 0x10) != 0;
  }

  return 0;
}

- (void)_updateSearchResultsControllerVisibility
{
  searchController = [(MessageListSearchViewController *)self searchController];
  if (([searchController automaticallyShowsSearchResultsController] & 1) == 0)
  {
    searchBar = [(MessageListSearchViewController *)self searchBar];
    representedObjects = [searchBar representedObjects];
    v5 = [representedObjects count];

    [searchController setShowsSearchResultsController:v5 != 0];
  }
}

- (void)_notePredicateUpdated:(int64_t)updated
{
  [(MessageListSearchViewController *)self _updateIndexStatisticsIfNeeded];
  searchBar = [(MessageListSearchViewController *)self searchBar];
  *&self->_flags &= ~1u;
  v5 = [(MessageListSearchViewController *)self _shouldUpdateSearchForOptions:updated];
  [(MessageListSearchViewController *)self setSearching:0];
  if ([(MessageListSearchViewController *)self _shouldSearchCurrentMailboxOnly])
  {
    mailboxes = [(MessageListSearchViewController *)self mailboxes];
  }

  else
  {
    mailboxes = 0;
  }

  v7 = [(MessageListSearchViewController *)self searchPredicateForMailboxes:mailboxes];
  v8 = +[MessageListSearchViewController log];
  v9 = (updated == 1) | v5;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = NSStringFromBOOL();
    v11 = NSStringFromBOOL();
    v12 = NSStringFromBOOL();
    *buf = 134218754;
    selfCopy = updated;
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
    localSearchInitialLoadPromise = [(MessageListSearchViewController *)self localSearchInitialLoadPromise];
    [localSearchInitialLoadPromise cancel];

    localSearchRemotePromise = [(MessageListSearchViewController *)self localSearchRemotePromise];
    [localSearchRemotePromise cancel];

    remoteSearchInitialLoadPromise = [(MessageListSearchViewController *)self remoteSearchInitialLoadPromise];
    [remoteSearchInitialLoadPromise cancel];

    remoteSearchServerPromise = [(MessageListSearchViewController *)self remoteSearchServerPromise];
    [remoteSearchServerPromise cancel];

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
      selfCopy = self;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "noteCriterionUpdated startingSearch: %@", buf, 0xCu);
    }

    [(MessageListSearchViewController *)self reloadDataSourceWithSearchPredicate:v7];
    [(MessageListSearchViewController *)self setSearching:1];
    *&self->_flags |= 0x10u;
    [(MessageListSearchViewController *)self setSearchStartAbsoluteTime:mach_absolute_time()];
    [(MessageListSearchViewController *)self setCountOfAtomsInLastSearch:[(MessageListSearchViewController *)self _countOfSuggestionAtomsInSearchbar:searchBar]];
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
  mailboxes = [(MessageListSearchViewController *)self mailboxes];
  accountRepository = [(MessageListSearchViewController *)self accountRepository];
  firstObject = [mailboxes firstObject];
  accountIdentifier = [firstObject accountIdentifier];
  v6 = [accountRepository accountForIdentifier:accountIdentifier];

  searchActivityPayloadDictionary = [(MessageListSearchViewController *)self searchActivityPayloadDictionary];
  v8 = [(MessageListViewController *)self continuityMailboxActivityPayloadFromMailboxes:mailboxes account:v6 currentActivityPayload:searchActivityPayloadDictionary];

  [(MessageListSearchViewController *)self setSearchActivityPayloadDictionary:0];
  if (v8)
  {
    v9 = [[NSMutableDictionary alloc] initWithDictionary:v8];
    [(MessageListSearchViewController *)self setSearchActivityPayloadDictionary:v9];

    searchActivityPayloadDictionary2 = [(MessageListSearchViewController *)self searchActivityPayloadDictionary];
    [searchActivityPayloadDictionary2 setObject:MSMailActivityHandoffTypeSearch forKeyedSubscript:MSMailActivityHandoffTypeKey];
  }
}

- (void)updateUserActivityState:(id)state
{
  stateCopy = state;
  searchActivityPayloadDictionary = [(MessageListSearchViewController *)self searchActivityPayloadDictionary];
  [stateCopy setUserInfo:searchActivityPayloadDictionary];
}

- (id)_localMailboxPredicate
{
  mailboxes = [(MessageListSearchViewController *)self mailboxes];
  v3 = [EMMessageListItemPredicates predicateForMessagesInMailboxes:mailboxes];

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

- (void)setSearching:(BOOL)searching
{
  if (self->_searching != searching)
  {
    searchingCopy = searching;
    v5 = +[MessageListSearchViewController log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = @"No";
      if (searchingCopy)
      {
        v6 = @"Yes";
      }

      v7 = 138412290;
      v8 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Updating searching to %@", &v7, 0xCu);
    }

    self->_searching = searchingCopy;
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

    searchProgressViewDisplayCancellable = [(MessageListSearchViewController *)self searchProgressViewDisplayCancellable];
    [searchProgressViewDisplayCancellable cancel];

    searchProgressView = [(MessageListSearchViewController *)self searchProgressView];
    LOBYTE(searchProgressViewDisplayCancellable) = [searchProgressView isAnimating];

    v5 = +[MessageListSearchViewController log];
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    if (searchProgressViewDisplayCancellable)
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

    collectionView = [(MessageListSearchViewController *)self collectionView];
    collectionViewLayout = [collectionView collectionViewLayout];
    [collectionViewLayout invalidateLayout];
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
    collectionView = [(MessageListSearchViewController *)self collectionView];
    collectionViewLayout = [collectionView collectionViewLayout];
    [collectionViewLayout invalidateLayout];
  }
}

- (void)_displaySearchingFooter
{
  searchProgressView = [(MessageListSearchViewController *)self searchProgressView];
  superview = [searchProgressView superview];
  [superview bounds];
  [searchProgressView setFrame:?];

  [searchProgressView setAnimating:1 fade:1];
  v5 = +[NSDate date];
  [(MessageListSearchViewController *)self setSearchProgressViewDisplayStartTime:v5];

  collectionView = [(MessageListSearchViewController *)self collectionView];
  collectionViewLayout = [collectionView collectionViewLayout];
  [collectionViewLayout invalidateLayout];

  if (![(MessageListSearchViewController *)self hasReceivedFirstRemoteSearchResult])
  {
    dataSource = [(MessageListSearchViewController *)self dataSource];
    [dataSource suspendUpdates];
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
  searchProgressView = [(MessageListSearchViewController *)self searchProgressView];
  [searchProgressView setAnimating:0 fade:0];

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

  dataSource = [(MessageListSearchViewController *)self dataSource];
  if ([dataSource isUpdateQueueSuspended])
  {
    dataSource2 = [(MessageListSearchViewController *)self dataSource];
    hasQueuedUpdates = [dataSource2 hasQueuedUpdates];
  }

  else
  {
    hasQueuedUpdates = 0;
  }

  return hasQueuedUpdates;
}

- (double)_searchingFooterDisplayTimeLeft
{
  searchProgressViewDisplayStartTime = [(MessageListSearchViewController *)self searchProgressViewDisplayStartTime];
  if (searchProgressViewDisplayStartTime)
  {
    v3 = +[NSDate date];
    [v3 timeIntervalSinceDate:searchProgressViewDisplayStartTime];
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
  footerUpdateCancelable = [(MessageListSearchViewController *)self footerUpdateCancelable];
  [footerUpdateCancelable cancel];

  [(MessageListSearchViewController *)self setFooterUpdateCancelable:0];
  [(MessageListSearchViewController *)self _stopAnimatingSearchingFooter];
  dataSource = [(MessageListSearchViewController *)self dataSource];
  isUpdateQueueSuspended = [dataSource isUpdateQueueSuspended];

  if (isUpdateQueueSuspended)
  {
    dataSource2 = [(MessageListSearchViewController *)self dataSource];
    [dataSource2 resumeUpdates];
  }
}

- (void)_updateSearchingCompletionState
{
  localSearchInitialLoadPromise = [(MessageListSearchViewController *)self localSearchInitialLoadPromise];
  future = [localSearchInitialLoadPromise future];
  resultIfAvailable = [future resultIfAvailable];

  localSearchRemotePromise = [(MessageListSearchViewController *)self localSearchRemotePromise];
  future2 = [localSearchRemotePromise future];
  resultIfAvailable2 = [future2 resultIfAvailable];

  remoteSearchServerPromise = [(MessageListSearchViewController *)self remoteSearchServerPromise];
  future3 = [remoteSearchServerPromise future];
  resultIfAvailable3 = [future3 resultIfAvailable];

  remoteSearchInitialLoadPromise = [(MessageListSearchViewController *)self remoteSearchInitialLoadPromise];
  future4 = [remoteSearchInitialLoadPromise future];
  resultIfAvailable4 = [future4 resultIfAvailable];

  if (resultIfAvailable)
  {
    v15 = resultIfAvailable2 == 0;
  }

  else
  {
    v15 = 1;
  }

  v17 = v15 || resultIfAvailable4 == 0 || resultIfAvailable3 == 0;
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

  lastSelectedTopHitItemID = [(MessageListSearchViewController *)self lastSelectedTopHitItemID];

  if (!lastSelectedTopHitItemID)
  {
    [(MessageListSearchViewController *)self _reportMessageResultsFetchedIsFinished:v18];
  }
}

- (void)messageListSectionDataSource:(id)source collectionFinishedSearching:(id)searching remote:(BOOL)remote searchInfo:(id)info
{
  remoteCopy = remote;
  sourceCopy = source;
  searchingCopy = searching;
  infoCopy = info;
  section = [sourceCopy section];
  v14 = +[MessageListSearchViewController log];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v24 = 134218754;
    selfCopy2 = self;
    v26 = 2114;
    v27 = section;
    v28 = 1024;
    LODWORD(v29[0]) = remoteCopy;
    WORD2(v29[0]) = 2114;
    *(v29 + 6) = searchingCopy;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%p: Did finish search with section %{public}@ remote=%{BOOL}d collection %{public}@ ", &v24, 0x26u);
  }

  dataSource = [(MessageListSearchViewController *)self dataSource];
  v16 = [dataSource messageListForSection:section];
  v17 = [v16 isEqual:searchingCopy];

  if (v17)
  {
    v18 = [section isEqual:MessageListSectionIndexedSearch];
    v19 = [section isEqual:MessageListSectionServerSearch];
    v20 = v19;
    if (v18)
    {
      if (remoteCopy)
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

      if (remoteCopy)
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
    if (infoCopy)
    {
      [(MessageListSearchViewController *)self setSearchInfo:infoCopy];
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
    selfCopy2 = self;
    v26 = 2114;
    v27 = section;
    v28 = 2114;
    v29[0] = searchingCopy;
    _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%p: Attempting to update section %{public}@ with outdated collection %{public}@", &v24, 0x20u);
  }

LABEL_20:
}

- (void)messageListSectionDataSource:(id)source collectionFailedSearching:(id)searching remote:(BOOL)remote searchInfo:(id)info
{
  remoteCopy = remote;
  sourceCopy = source;
  searchingCopy = searching;
  infoCopy = info;
  section = [sourceCopy section];
  v14 = +[MessageListSearchViewController log];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218754;
    selfCopy = self;
    v24 = 2114;
    v25 = section;
    v26 = 1024;
    v27 = remoteCopy;
    v28 = 2114;
    v29 = searchingCopy;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%p: Did fail search with section %{public}@ remote=%{BOOL}d collection %{public}@ ", buf, 0x26u);
  }

  dataSource = [(MessageListSearchViewController *)self dataSource];
  v16 = [dataSource messageListForSection:section];
  v17 = [v16 isEqual:searchingCopy];

  if ((v17 & 1) == 0)
  {
    v18 = +[MessageListSearchViewController log];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_100489F00(self, searchingCopy, v18);
    }

    goto LABEL_8;
  }

  if ([section isEqual:MessageListSectionIndexedSearch])
  {
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100160938;
    v19[3] = &unk_100651C30;
    v20 = infoCopy;
    selfCopy2 = self;
    [(MessageListViewController *)self parsecEventQueuePerformBlock:v19];
    v18 = v20;
LABEL_8:
  }
}

- (void)searchSuggestionsViewController:(id)controller didSelectSuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
  *&self->_flags |= 4u;
  recentSuggester = [(MessageListSearchViewController *)self recentSuggester];
  [recentSuggester addSuggestion:suggestionCopy];

  spotlightSuggestion = [suggestionCopy spotlightSuggestion];
  [(MessageListSearchViewController *)self redrawSearchBarWithSuggestion:spotlightSuggestion];

  v7 = [(MessageListSearchViewController *)self _parsecSuggestionForSuggestion:suggestionCopy];
  [(MessageListSearchViewController *)self reportSuggestionSelected:v7];
  [(MessageListSearchViewController *)self setSearchSuggestionsVisible:0];
  [(MessageListSearchViewController *)self _notePredicateUpdated:1];
  [(MessageListSearchViewController *)self reportSearchQueryStateWithTriggerEvent:8 searchType:3];
}

- (void)searchSuggestionsViewController:(id)controller deleteRecentSuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
  recentSuggester = [(MessageListSearchViewController *)self recentSuggester];
  [recentSuggester deleteSuggestion:suggestionCopy];
}

- (id)_parsecSuggestionForSuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
  category = [suggestionCopy category];
  v6 = +[MUISearchSuggestionCategory topHitsCategory];

  if (category == v6)
  {
    v19 = suggestionCopy;
    itemID = [v19 itemID];
    message = [v19 message];
    date = [message date];
    mailRankingSignals = [v19 mailRankingSignals];
    v24 = [(MessageListViewController *)self parsecTopHitForItemID:itemID date:date mailRankingSignals:mailRankingSignals];
LABEL_9:

    goto LABEL_24;
  }

  category2 = [suggestionCopy category];
  v8 = +[MUISearchSuggestionCategory instantAnswersCategory];

  if (category2 == v8)
  {
    v19 = suggestionCopy;
    itemID = [v19 itemID];
    message = [v19 message];
    date = [message date];
    mailRankingSignals = [v19 feedbackInlineCard];
    instantAnswer = [v19 instantAnswer];
    flightInfoIsLive = [instantAnswer flightInfoIsLive];
    v24 = [(MessageListViewController *)self parsecInstantAnswerForItemID:itemID date:date inlineCard:mailRankingSignals isUpdated:flightInfoIsLive != 0];

    goto LABEL_9;
  }

  category3 = [suggestionCopy category];
  v10 = +[MUISearchSuggestionCategory documentCategory];
  if (category3 == v10)
  {
LABEL_11:

    goto LABEL_12;
  }

  category4 = [suggestionCopy category];
  v12 = +[MUISearchSuggestionCategory locationCategory];
  v13 = v12;
  if (category4 == v12)
  {

    goto LABEL_11;
  }

  category5 = [suggestionCopy category];
  v15 = +[MUISearchSuggestionCategory linkCategory];

  if (category5 == v15)
  {
LABEL_12:
    suggestionCopy = [NSString stringWithFormat:@"%p", suggestionCopy];
    option = 0;
    goto LABEL_13;
  }

  v16 = suggestionCopy;
  atomTitle = [v16 atomTitle];
  suggestionCopy = [NSString stringWithFormat:@"%@-%p", atomTitle, v16];

  option = [v16 option];
LABEL_13:
  v27 = [EFPrivacy fullyRedactedStringForString:suggestionCopy];
  v28 = [(MessageListSearchViewController *)self categoryForSuggestion:suggestionCopy];
  v29 = objc_alloc_init(SFMailResultDetails);
  spotlightSuggestion = [suggestionCopy spotlightSuggestion];
  score = [spotlightSuggestion score];
  [v29 setSuggestionScore:score];

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  spotlightSuggestion2 = [suggestionCopy spotlightSuggestion];
  suggestionDataSources = [spotlightSuggestion2 suggestionDataSources];

  v34 = [suggestionDataSources countByEnumeratingWithState:&v41 objects:v45 count:16];
  if (v34)
  {
    v35 = *v42;
    do
    {
      for (i = 0; i != v34; i = i + 1)
      {
        if (*v42 != v35)
        {
          objc_enumerationMutation(suggestionDataSources);
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

      v34 = [suggestionDataSources countByEnumeratingWithState:&v41 objects:v45 count:16];
    }

    while (v34);
  }

  v24 = [MSParsecSearchSessionSuggestion suggestionWithIdentifier:v27 category:v28 option:option resultDetails:v29];

LABEL_24:

  return v24;
}

- (void)redrawSearchBarWithSuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
  [(MessageListSearchViewController *)self setCurrentSuggestion:?];
  userQueryString = [suggestionCopy userQueryString];
  [(MessageListViewController *)self setCurrentUserTypedPhrase:userQueryString];
  currentTokens = [suggestionCopy currentTokens];
  v6 = [currentTokens ef_map:&stru_100651C70];

  [(MessageListSearchViewController *)self setLastPhrase:userQueryString];
  searchBar = [(MessageListSearchViewController *)self searchBar];
  [searchBar replaceSearchBarWithTokens:v6 userQueryString:userQueryString];
}

- (void)_updateSearchBarUsingSuggestionToken:(id)token
{
  tokenCopy = token;
  currentSuggestion = [(MessageListSearchViewController *)self currentSuggestion];
  userQueryString = [currentSuggestion userQueryString];
  v7 = +[NSCharacterSet controlCharacterSet];
  v8 = [userQueryString stringByTrimmingCharactersInSet:v7];

  v9 = +[CSSuggestion emptySuggestion];
  csToken = [tokenCopy csToken];
  v20 = csToken;
  userQueryString3 = [NSArray arrayWithObjects:&v20 count:1];
  v12 = [CSSuggestion updatedSuggestionWithCurrentSuggestion:v9 userString:v8 tokens:userQueryString3];

  currentSuggestion2 = [(MessageListSearchViewController *)self currentSuggestion];
  v14 = [CSSuggestion mui_mergeCurrentSuggestion:currentSuggestion2 suggestion:v12];

  [(MessageListSearchViewController *)self redrawSearchBarWithSuggestion:v14];
  userQueryString2 = [v14 userQueryString];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    userQueryString3 = [v14 userQueryString];
    v17 = [userQueryString3 length] != 0;
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
    currentSuggestion3 = [(MessageListSearchViewController *)self currentSuggestion];
    userQueryString4 = [currentSuggestion3 userQueryString];
    [(MessageListSearchViewController *)self _generateSuggestionsForPhrase:userQueryString4];
  }

  else
  {
    [(MessageListSearchViewController *)self _notePredicateUpdated:2];
  }
}

- (void)searchSuggestionsViewController:(id)controller didSelectItemID:(id)d messageList:(id)list indexInformation:(id)information topHitSuggestion:(id)suggestion
{
  dCopy = d;
  listCopy = list;
  suggestionCopy = suggestion;
  v29 = MessageListSectionIndexedSearch;
  v13 = [NSArray arrayWithObjects:&v29 count:1];
  [(MessageListSearchViewController *)self reloadDataSourceWithMessageList:listCopy sections:v13 applyEmptySnapshot:1];

  message = [suggestionCopy message];
  date = [message date];
  mailRankingSignals = [suggestionCopy mailRankingSignals];
  v17 = [(MessageListViewController *)self parsecTopHitForItemID:dCopy date:date mailRankingSignals:mailRankingSignals];

  [(MessageListSearchViewController *)self reportTopHitSelected:v17];
  v18 = +[MessageListSearchViewController log];
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v23 = 134218498;
    selfCopy = self;
    v25 = 2114;
    v26 = dCopy;
    v27 = 2048;
    v28 = listCopy;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "searchSuggestionsController: %p, didSelectItemID: %{public}@, messageList: %p", &v23, 0x20u);
  }

  lastSelectedTopHitItemID = [(MessageListSearchViewController *)self lastSelectedTopHitItemID];
  v20 = lastSelectedTopHitItemID == dCopy;

  if (!v20)
  {
    scene = [(MessageListViewController *)self scene];
    isInExpandedEnvironment = [scene isInExpandedEnvironment];

    [(MessageListViewController *)self didSelectTopHitWithItemID:dCopy messageList:listCopy animated:isInExpandedEnvironment ^ 1];
    [(MessageListSearchViewController *)self setLastSelectedTopHitItemID:dCopy];
  }
}

- (void)searchSuggestionsViewController:(id)controller didSelectItemID:(id)d messageList:(id)list indexInformation:(id)information
{
  dCopy = d;
  listCopy = list;
  v23 = MessageListSectionIndexedSearch;
  v10 = [NSArray arrayWithObjects:&v23 count:1];
  [(MessageListSearchViewController *)self reloadDataSourceWithMessageList:listCopy sections:v10 applyEmptySnapshot:1];

  v11 = [(MessageListViewController *)self parsecTopHitForItemID:dCopy date:0 mailRankingSignals:0];
  [(MessageListSearchViewController *)self reportTopHitSelected:v11];
  v12 = +[MessageListSearchViewController log];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 134218498;
    selfCopy = self;
    v19 = 2114;
    v20 = dCopy;
    v21 = 2048;
    v22 = listCopy;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "searchSuggestionsController: %p, didSelectItemID: %{public}@, messageList: %p", &v17, 0x20u);
  }

  lastSelectedTopHitItemID = [(MessageListSearchViewController *)self lastSelectedTopHitItemID];
  v14 = lastSelectedTopHitItemID == dCopy;

  if (!v14)
  {
    scene = [(MessageListViewController *)self scene];
    isInExpandedEnvironment = [scene isInExpandedEnvironment];

    [(MessageListViewController *)self didSelectTopHitWithItemID:dCopy messageList:listCopy animated:isInExpandedEnvironment ^ 1];
    [(MessageListSearchViewController *)self setLastSelectedTopHitItemID:dCopy];
  }
}

- (void)searchSuggestionsViewController:(id)controller didSelectItemID:(id)d instantAnswerSuggestion:(id)suggestion cardSectionID:(id)iD command:(id)command
{
  dCopy = d;
  suggestionCopy = suggestion;
  iDCopy = iD;
  commandCopy = command;
  message = [suggestionCopy message];
  date = [message date];
  feedbackInlineCard = [suggestionCopy feedbackInlineCard];
  instantAnswer = [suggestionCopy instantAnswer];
  flightInfoIsLive = [instantAnswer flightInfoIsLive];
  v19 = [(MessageListViewController *)self parsecInstantAnswerForItemID:dCopy date:date inlineCard:feedbackInlineCard isUpdated:flightInfoIsLive != 0];

  [(MessageListSearchViewController *)self reportInstantAnswerButtonSelected:v19 cardSectionID:iDCopy command:commandCopy];
}

- (void)searchSuggestionsViewController:(id)controller didSelectItemID:(id)d instantAnswerSuggestion:(id)suggestion cardSectionID:(id)iD
{
  dCopy = d;
  suggestionCopy = suggestion;
  iDCopy = iD;
  messageList = [suggestionCopy messageList];
  v12 = messageList;
  if (messageList)
  {
    v13 = messageList;
    v14 = MessageListSectionIndexedSearch;
  }

  else
  {
    dataSource = [(MessageListSearchViewController *)self dataSource];
    v14 = MessageListSectionIndexedSearch;
    v13 = [dataSource messageListForSection:MessageListSectionIndexedSearch];
  }

  v25 = v14;
  v16 = [NSArray arrayWithObjects:&v25 count:1];
  [(MessageListSearchViewController *)self reloadDataSourceWithMessageList:v13 sections:v16 applyEmptySnapshot:1];

  message = [suggestionCopy message];
  date = [message date];
  feedbackInlineCard = [suggestionCopy feedbackInlineCard];
  instantAnswer = [suggestionCopy instantAnswer];
  flightInfoIsLive = [instantAnswer flightInfoIsLive];
  v22 = [(MessageListViewController *)self parsecInstantAnswerForItemID:dCopy date:date inlineCard:feedbackInlineCard isUpdated:flightInfoIsLive != 0];

  [(MessageListSearchViewController *)self reportInstantAnswerCardSelected:v22 cardSectionID:iDCopy];
  scene = [(MessageListViewController *)self scene];
  LODWORD(message) = [scene isInExpandedEnvironment];

  [(MessageListViewController *)self didSelectTopHitWithItemID:dCopy messageList:v13 animated:message ^ 1];
}

- (void)searchSuggestionsViewController:(id)controller didSelectItemID:(id)d messageList:(id)list
{
  dCopy = d;
  listCopy = list;
  v12 = MessageListSectionIndexedSearch;
  v9 = [NSArray arrayWithObjects:&v12 count:1];
  [(MessageListSearchViewController *)self reloadDataSourceWithMessageList:listCopy sections:v9 applyEmptySnapshot:1];

  scene = [(MessageListViewController *)self scene];
  isInExpandedEnvironment = [scene isInExpandedEnvironment];

  [(MessageListViewController *)self didSelectTopHitWithItemID:dCopy messageList:listCopy animated:isInExpandedEnvironment ^ 1];
}

- (void)reportSuggestionsFetched:(id)fetched
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10016202C;
  v4[3] = &unk_100651C30;
  selfCopy = self;
  fetchedCopy = fetched;
  v3 = fetchedCopy;
  [(MessageListViewController *)selfCopy parsecEventQueuePerformBlock:v4];
}

- (id)_latencyMsFromTimestamp:(id)timestamp toTimestamp:(id)toTimestamp
{
  timestampCopy = timestamp;
  toTimestampCopy = toTimestamp;
  [toTimestampCopy timeIntervalSinceDate:timestampCopy];
  v8 = [NSNumber numberWithInt:(v7 * 1000.0)];

  return v8;
}

- (void)reportSuggestionsVisible:(id)visible
{
  visibleCopy = visible;
  if ([visibleCopy count])
  {
    suggestionsCompletionTimestamp = [(MessageListSearchViewController *)self suggestionsCompletionTimestamp];
    if (suggestionsCompletionTimestamp && ([(MessageListSearchViewController *)self suggestionStartTimestamp], v6 = objc_claimAutoreleasedReturnValue(), v6, suggestionsCompletionTimestamp, v6))
    {
      suggestionStartTimestamp = [(MessageListSearchViewController *)self suggestionStartTimestamp];
      suggestionsCompletionTimestamp2 = [(MessageListSearchViewController *)self suggestionsCompletionTimestamp];
      v9 = [(MessageListSearchViewController *)self _latencyMsFromTimestamp:suggestionStartTimestamp toTimestamp:suggestionsCompletionTimestamp2];
    }

    else
    {
      suggestionStartTimestamp2 = [(MessageListSearchViewController *)self suggestionStartTimestamp];
      if (suggestionStartTimestamp2 && (v11 = [(MessageListSearchViewController *)self didReportFirstVisibleSuggestions], suggestionStartTimestamp2, (v11 & 1) == 0))
      {
        suggestionStartTimestamp3 = [(MessageListSearchViewController *)self suggestionStartTimestamp];
        v13 = +[NSDate date];
        v9 = [(MessageListSearchViewController *)self _latencyMsFromTimestamp:suggestionStartTimestamp3 toTimestamp:v13];

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
    v16 = visibleCopy;
    selfCopy = self;
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
    splitViewController = [(MessageListSearchViewController *)self splitViewController];
    traitCollection = [splitViewController traitCollection];
    v6 = [traitCollection horizontalSizeClass] != 1;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)suggestionsGenerator:(id)generator didProduceResult:(id)result
{
  resultCopy = result;
  requestID = [resultCopy requestID];
  suggestionsIdentifier = [(MessageListSearchViewController *)self suggestionsIdentifier];
  v8 = [requestID isEqualToID:suggestionsIdentifier];

  if (v8)
  {
    suggestions = [resultCopy suggestions];
    v10 = [suggestions count];

    if (v10)
    {
      [(MessageListSearchViewController *)self setSuggestersGeneratedSuggestions:1];
    }

    suggestionsViewController = [(MessageListSearchViewController *)self suggestionsViewController];
    v12 = [suggestionsViewController updateSuggestionsWithResult:resultCopy];

    if ([(MessageListSearchViewController *)self shouldShowMenuSuggestions])
    {
      v13 = -[MessageListSearchViewController _updatedSuggestionsGroups:phraseKind:](self, "_updatedSuggestionsGroups:phraseKind:", v12, [resultCopy phraseKind]);
      v14 = [v13 ef_map:&stru_100651D28];
      v15 = +[MessageListSearchViewController log];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = objc_opt_class();
        v17 = NSStringFromClass(v16);
        *buf = 138543874;
        v39 = v17;
        v40 = 2048;
        selfCopy3 = self;
        v42 = 2112;
        v43 = v14;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "<%{public}@: %p> Updating search suggestion groups to: %@", buf, 0x20u);
      }

      canShowMenuSuggestionsPromise = [(MessageListSearchViewController *)self canShowMenuSuggestionsPromise];
      future = [canShowMenuSuggestionsPromise future];
      v20 = +[EFScheduler mainThreadScheduler];
      v30 = _NSConcreteStackBlock;
      v31 = 3221225472;
      v32 = sub_100162D10;
      v33 = &unk_100651DD0;
      selfCopy2 = self;
      v21 = v13;
      v35 = v21;
      v22 = v14;
      v36 = v22;
      v37 = resultCopy;
      [future onScheduler:v20 addSuccessBlock:&v30];
    }

    v23 = [(MessageListSearchViewController *)self suggestionsViewController:v30];
    hasSuggestions = [v23 hasSuggestions];

    if (hasSuggestions)
    {
      [(MessageListViewController *)self suppressNoContentViewAnimated:0];
      if ([resultCopy phraseKind] == 1)
      {
        suggestionsViewController2 = [(MessageListSearchViewController *)self suggestionsViewController];
        v26 = objc_opt_respondsToSelector();

        if (v26)
        {
          suggestionsViewController3 = [(MessageListSearchViewController *)self suggestionsViewController];
          [suggestionsViewController3 scrollToHideIndexStatus];
        }
      }
    }

    else if ([resultCopy phraseKind] == 1)
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
      selfCopy3 = self;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "<%{public}@: %p> Skipping suggestions result - result is stale", buf, 0x16u);
    }
  }
}

- (id)attributedSpotlightTitle:(id)title
{
  titleCopy = title;
  v4 = [titleCopy mutableCopy];
  v5 = [titleCopy length];
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

- (id)_updatedSuggestionsGroups:(id)groups phraseKind:(unsigned __int8)kind
{
  kindCopy = kind;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10016348C;
  v19[3] = &unk_100651E20;
  v19[4] = self;
  [groups enumerateKeysAndObjectsUsingBlock:v19];
  if (!kindCopy)
  {
    groupedSuggestionsByCategory = [(MessageListSearchViewController *)self groupedSuggestionsByCategory];
    v7 = +[MUISearchSuggestionCategory recentSearchCategory];
    [groupedSuggestionsByCategory setObject:0 forKeyedSubscript:v7];
  }

  v8 = +[MessageListSearchViewController log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    groupedSuggestionsByCategory2 = [(MessageListSearchViewController *)self groupedSuggestionsByCategory];
    *buf = 138544130;
    v21 = v10;
    v22 = 2048;
    selfCopy = self;
    v24 = 2048;
    v25 = kindCopy;
    v26 = 2114;
    v27 = groupedSuggestionsByCategory2;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "<%{public}@: %p> Updated suggestion groups (kind=%ld): %{public}@", buf, 0x2Au);
  }

  groupedSuggestionsByCategory3 = [(MessageListSearchViewController *)self groupedSuggestionsByCategory];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10016352C;
  v17[3] = &unk_100651E70;
  v17[4] = self;
  v13 = objc_alloc_init(NSMutableArray);
  v18 = v13;
  [groupedSuggestionsByCategory3 enumerateKeysAndObjectsUsingBlock:v17];
  v14 = v18;
  v15 = v13;

  return v13;
}

- (id)_groupForRecentSearchSuggestionItems:(id)items
{
  itemsCopy = items;
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
    v9 = [v7 initWithHeaderTitle:v8 headerAction:v6 suggestionItems:{itemsCopy, v13, v14, v15, v16}];

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }

  else
  {
    v10 = [_UISearchSuggestionItemGroup alloc];
    v11 = _EFLocalizedString();
    v9 = [v10 initWithHeaderTitle:v11 suggestionItems:itemsCopy];
  }

  return v9;
}

- (void)suggestionsGenerator:(id)generator didCompleteRequestID:(id)d
{
  dCopy = d;
  suggestionsIdentifier = [(MessageListSearchViewController *)self suggestionsIdentifier];
  v6 = [dCopy isEqualToID:suggestionsIdentifier];

  if (v6)
  {
    v7 = +[NSDate date];
    [(MessageListSearchViewController *)self setSuggestionsCompletionTimestamp:v7];

    [(MessageListSearchViewController *)self setSuggestionsIdentifier:0];
    if (![(MessageListSearchViewController *)self suggestersGeneratedSuggestions])
    {
      suggestionsViewController = [(MessageListSearchViewController *)self suggestionsViewController];
      [suggestionsViewController clearSuggestions];

      [(MessageListViewController *)self parsecEventQueuePerformBlock:&stru_100651EB0];
    }

    [(MessageListSearchViewController *)self setSuggestersGeneratedSuggestions:0];
    suggestionsViewController2 = [(MessageListSearchViewController *)self suggestionsViewController];
    [suggestionsViewController2 endUpdatingSuggestions];

    *&self->_flags |= 8u;
    beginSearchTimer = [(MessageListSearchViewController *)self beginSearchTimer];
    v11 = beginSearchTimer;
    if (beginSearchTimer)
    {
      [beginSearchTimer invalidate];
      [(MessageListSearchViewController *)self setBeginSearchTimer:0];
      [(MessageListSearchViewController *)self _notePredicateUpdated:1];
    }
  }
}

- (void)textFieldDidChangeSelection:(id)selection
{
  selectionCopy = selection;
  searchBar = [(MessageListSearchViewController *)self searchBar];
  v5 = [(MessageListSearchViewController *)self _objectFromSelectionInSearchTextField:selectionCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
    scopeNames = [v6 scopeNames];
    selectedScopeIndex = [v6 selectedScopeIndex];
    hasMultipleScopes = [v6 hasMultipleScopes];

    if (hasMultipleScopes)
    {
      [searchBar setScopeButtonTitles:scopeNames];
      [searchBar setSelectedScopeButtonIndex:selectedScopeIndex];
      v10 = *&self->_flags | 0x20;
      goto LABEL_6;
    }
  }

  else
  {
    scopeNames = 0;
  }

  [(MessageListSearchViewController *)self _resetGlobalScopeTitles];
  v10 = *&self->_flags & 0xDF;
LABEL_6:
  *&self->_flags = v10;
}

- (id)searchTextField:(id)field itemProviderForCopyingToken:(id)token
{
  tokenCopy = token;
  v6 = objc_alloc_init(NSItemProvider);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100163F40;
  v13[3] = &unk_100651ED8;
  v13[4] = self;
  v7 = tokenCopy;
  v14 = v7;
  [v6 registerDataRepresentationForTypeIdentifier:@"com.apple.mobilemail.searchAtom" visibility:3 loadHandler:v13];
  identifier = [UTTypePlainText identifier];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100163FE4;
  v11[3] = &unk_100651F00;
  v9 = v7;
  v12 = v9;
  [v6 registerDataRepresentationForTypeIdentifier:identifier visibility:0 loadHandler:v11];

  return v6;
}

- (void)textPasteConfigurationSupporting:(id)supporting transformPasteItem:(id)item
{
  itemCopy = item;
  itemProvider = [itemCopy itemProvider];
  searchBar = [(MessageListSearchViewController *)self searchBar];
  searchTextField = [searchBar searchTextField];

  searchBar2 = [(MessageListSearchViewController *)self searchBar];
  representedSuggestionTokens = [searchBar2 representedSuggestionTokens];
  v11 = [representedSuggestionTokens count];

  if ([itemProvider hasItemConformingToTypeIdentifier:@"com.apple.mobilemail.searchAtom"])
  {
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_1001643FC;
    v25[3] = &unk_100651F28;
    v25[4] = self;
    v26 = itemCopy;
    v12 = [itemProvider loadDataRepresentationForTypeIdentifier:@"com.apple.mobilemail.searchAtom" completionHandler:v25];
  }

  else
  {
    identifier = [UTTypePlainText identifier];
    v14 = [itemProvider hasItemConformingToTypeIdentifier:identifier];
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
      selectedTextRange = [searchTextField selectedTextRange];
      v17 = [searchTextField positionOfTokenAtIndex:v11 - 1];
      v18 = [selectedTextRange end];
      v19 = [searchTextField comparePosition:v18 toPosition:v17];

      if (v19 == 1)
      {
        [itemCopy setDefaultResult];
      }

      else
      {
        identifier2 = [UTTypePlainText identifier];
        v22[0] = _NSConcreteStackBlock;
        v22[1] = 3221225472;
        v22[2] = sub_100164788;
        v22[3] = &unk_100651F28;
        v23 = itemCopy;
        selfCopy = self;
        v21 = [itemProvider loadDataRepresentationForTypeIdentifier:identifier2 completionHandler:v22];
      }
    }

    else
    {
      [itemCopy setDefaultResult];
    }
  }
}

- (void)searchBarSearchButtonClicked:(id)clicked
{
  *&self->_flags |= 4u;
  [(MessageListSearchViewController *)self setSearchSuggestionsVisible:0];
  searchBar = [(MessageListSearchViewController *)self searchBar];
  representedObjects = [searchBar representedObjects];
  v6 = [representedObjects count];

  if (v6)
  {
    currentSuggestion = [(MessageListSearchViewController *)self currentSuggestion];
    [(MessageListSearchViewController *)self _addSuggestionToRecentSuggester:currentSuggestion];
  }

  suggestionsIdentifier = [(MessageListSearchViewController *)self suggestionsIdentifier];

  if (suggestionsIdentifier)
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

- (void)searchBar:(id)bar selectedScopeButtonIndexDidChange:(int64_t)change
{
  barCopy = bar;
  if ((*&self->_flags & 0x20) != 0)
  {
    [(MessageListSearchViewController *)self searchTokenScopeChanged:change];
  }

  else
  {
    [(MessageListSearchViewController *)self globalSearchScopeChanged:change];
  }

  if ([(MessageListSearchViewController *)self isSearchSuggestionsVisible])
  {
    searchBar = [(MessageListSearchViewController *)self searchBar];
    v7 = [(MessageListSearchViewController *)self _currentEditingStringForSearchBar:searchBar];

    if ([v7 length])
    {
      [(MessageListSearchViewController *)self _generateSuggestionsForPhrase:v7];
    }
  }
}

- (void)searchBar:(id)bar textDidChange:(id)change
{
  changeCopy = change;
  searchBar = [(MessageListSearchViewController *)self searchBar];
  representedObjects = [searchBar representedObjects];
  v8 = [representedObjects count];

  if (v8)
  {
    searchBar2 = [(MessageListSearchViewController *)self searchBar];
    representedSuggestionTokens = [searchBar2 representedSuggestionTokens];
    v11 = [MUISuggestionToken csTokensFromMailSuggestionTokens:representedSuggestionTokens];

    currentSuggestion = [(MessageListSearchViewController *)self currentSuggestion];
    v13 = [CSSuggestion updatedSuggestionWithCurrentSuggestion:currentSuggestion userString:changeCopy tokens:v11];

    v14 = +[MessageListSearchViewController log];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [EMCSLoggingAdditions publicDescriptionForSuggestion:v13];
      userQueryString = [v13 userQueryString];
      v17 = [EFPrivacy partiallyRedactedStringForString:userQueryString];
      suggestionTokens = [v13 suggestionTokens];
      v20 = 138412802;
      v21 = v15;
      v22 = 2112;
      v23 = v17;
      v24 = 2112;
      v25 = suggestionTokens;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Suggestion was updated. Reason: Text changed. Suggestion: %@ UserQueryString: %@ SuggestionTokens: %@", &v20, 0x20u);
    }

    [(MessageListViewController *)self setCurrentUserTypedPhrase:changeCopy];
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
  activeSearchFeedbackToastController = [(MessageListSearchViewController *)self activeSearchFeedbackToastController];

  if (!activeSearchFeedbackToastController)
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
    view = [(MessageListSearchViewController *)self view];
    view2 = [v9 view];
    [view addSubview:view2];

    [v9 didMoveToParentViewController:self];
    view3 = [v9 view];
    [view3 setTranslatesAutoresizingMaskIntoConstraints:0];
  }
}

- (void)dismissToastViewController:(id)controller
{
  controllerCopy = controller;
  view = [controllerCopy view];
  [view removeFromSuperview];

  [(MessageListSearchViewController *)self removeChildViewController:controllerCopy];
  [controllerCopy willMoveToParentViewController:0];
  [(MessageListSearchViewController *)self setActiveSearchFeedbackToastController:0];
}

- (void)shouldTriggerTapToRadarForViewController:(id)controller shouldTrigger:(BOOL)trigger
{
  triggerCopy = trigger;
  v6 = +[MessageListSearchViewController log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [NSNumber numberWithBool:triggerCopy];
    v9 = 138412290;
    v10 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "User provided search feedback. Should trigger tap to radar:%@", &v9, 0xCu);
  }

  activeSearchFeedbackToastController = [(MessageListSearchViewController *)self activeSearchFeedbackToastController];
  [(MessageListSearchViewController *)self dismissToastViewController:activeSearchFeedbackToastController];

  [(MessageListSearchViewController *)self _updateSearchFeedbackCount:triggerCopy];
  if (triggerCopy)
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

- (void)_updateSearchFeedbackCount:(BOOL)count
{
  countCopy = count;
  [(MessageListSearchViewController *)self _resetSearchFeedbackIfNeeded];
  v5 = +[NSUserDefaults em_userDefaults];
  v6 = EMUserDefaultSearchFeedback;
  v13 = [v5 objectForKey:EMUserDefaultSearchFeedback];

  v7 = [[MUISearchFeedbackStats alloc] initWithDictionaryRepresentation:v13];
  searchFeedbackStats = self->_searchFeedbackStats;
  self->_searchFeedbackStats = v7;

  v9 = +[NSDate date];
  v10 = [NSDate ef_weekDayForDate:v9];

  [(MUISearchFeedbackStats *)self->_searchFeedbackStats incrementCountForFailure:countCopy forDay:v10];
  v11 = +[NSUserDefaults em_userDefaults];
  dictionaryRepresentation = [(MUISearchFeedbackStats *)self->_searchFeedbackStats dictionaryRepresentation];
  [v11 setObject:dictionaryRepresentation forKey:v6];
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
    dictionaryRepresentation = [(MUISearchFeedbackStats *)self->_searchFeedbackStats dictionaryRepresentation];
    [v14 setObject:dictionaryRepresentation forKey:v10];
  }
}

- (id)_additionalBarButtonItems
{
  _searchTapToRadarButtonItem = [(MessageListSearchViewController *)self _searchTapToRadarButtonItem];
  v3 = _searchTapToRadarButtonItem;
  if (_searchTapToRadarButtonItem)
  {
    v6 = _searchTapToRadarButtonItem;
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
  interactionViewController = [v6 interactionViewController];
  scene = [(MessageListViewController *)self scene];
  mf_rootViewController = [scene mf_rootViewController];
  [mf_rootViewController presentViewController:interactionViewController animated:1 completion:0];
}

- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path
{
  viewCopy = view;
  cellCopy = cell;
  pathCopy = path;
  v11.receiver = self;
  v11.super_class = MessageListSearchViewController;
  [(MessageListViewController *)&v11 collectionView:viewCopy willDisplayCell:cellCopy forItemAtIndexPath:pathCopy];
  [(MessageListSearchViewController *)self reportVisibleMessageListResultsAlwaysReportItems:0];
}

- (void)collectionView:(id)view didEndDisplayingCell:(id)cell forItemAtIndexPath:(id)path
{
  viewCopy = view;
  cellCopy = cell;
  pathCopy = path;
  v11.receiver = self;
  v11.super_class = MessageListSearchViewController;
  [(MessageListViewController *)&v11 collectionView:viewCopy didEndDisplayingCell:cellCopy forItemAtIndexPath:pathCopy];
  [(MessageListSearchViewController *)self reportVisibleMessageListResultsAlwaysReportItems:0];
}

- (void)_sendAnalyticsForIndexState:(id)state
{
  stateCopy = state;
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
    v14 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [stateCopy percentMessagesIndexed]);
    v22[0] = v14;
    v21[1] = @"percentMessageBodiesIndexed";
    v15 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [stateCopy percentMessageBodiesIndexed]);
    v22[1] = v15;
    v21[2] = @"percentUnindexedBodiesInFrecent";
    v16 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [stateCopy percentUnindexedBodiesInFrecent]);
    v22[2] = v16;
    v21[3] = @"percentAttachmentsIndexed";
    v17 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [stateCopy percentAttachmentsIndexed]);
    v22[3] = v17;
    v18 = [NSDictionary dictionaryWithObjects:v22 forKeys:v21 count:4];

    v19 = [[EMCoreAnalyticsEvent alloc] initWithEventName:@"com.apple.mail.searchableIndex.indexStatus" collectionData:v18];
    analyticsCollector = [(MessageListSearchViewController *)self analyticsCollector];
    [analyticsCollector logOneTimeEvent:v19];
  }
}

- (void)_updateIndexStatisticsIfNeeded
{
  indexingStatusDebouncer = [(MessageListSearchViewController *)self indexingStatusDebouncer];
  [indexingStatusDebouncer debounceResult:0];
}

- (void)_updateIndexStatistics
{
  objc_initWeak(&location, self);
  v2 = +[UIApplication sharedApplication];
  daemonInterface = [v2 daemonInterface];
  diagnosticInfoGatherer = [daemonInterface diagnosticInfoGatherer];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001665C8;
  v5[3] = &unk_10064E0C0;
  objc_copyWeak(&v6, &location);
  [diagnosticInfoGatherer searchableIndexDatabaseStatisticsWithCompletionHandler:v5];

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

- (unint64_t)_computeBGSystemTaskFeatureCheckpoint
{
  indexStatistics = [(MessageListSearchViewController *)self indexStatistics];
  v4 = [indexStatistics objectForKeyedSubscript:EMPersistenceStatisticsKeyMessagesIndexed];
  unsignedIntegerValue = [v4 unsignedIntegerValue];

  indexStatistics2 = [(MessageListSearchViewController *)self indexStatistics];
  v7 = [indexStatistics2 objectForKeyedSubscript:EMPersistenceStatisticsKeyRemoteMessagesIndexed];
  unsignedIntegerValue2 = [v7 unsignedIntegerValue];

  indexStatistics3 = [(MessageListSearchViewController *)self indexStatistics];
  v10 = [indexStatistics3 objectForKeyedSubscript:EMPersistenceStatisticsKeyIndexableMessages];
  unsignedIntegerValue3 = [v10 unsignedIntegerValue];

  indexStatistics4 = [(MessageListSearchViewController *)self indexStatistics];
  v13 = [indexStatistics4 objectForKeyedSubscript:EMPersistenceStatisticsKeyIndexableRemoteMessages];
  unsignedIntegerValue4 = [v13 unsignedIntegerValue];

  v15 = 1.0;
  if (unsignedIntegerValue3)
  {
    v15 = unsignedIntegerValue / unsignedIntegerValue3;
  }

  if (unsignedIntegerValue4)
  {
    v16 = (unsignedIntegerValue2 / unsignedIntegerValue4) <= kDefaultMaxIndexedToTotalRatio;
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

- (id)searchScopeForSuggestionCategoryScope:(id)scope
{
  identifier = [scope identifier];
  if ([identifier isEqualToString:MFSearchSuggestionSubjectCategoryScope])
  {
    v4 = &MSSearchScopeSubject;
LABEL_11:
    v5 = *v4;
    goto LABEL_12;
  }

  if ([identifier isEqualToString:MUISearchSuggestionCategoryContentScope])
  {
    v4 = &MSSearchScopeMessage;
    goto LABEL_11;
  }

  if ([identifier isEqualToString:MFSearchSuggestionPeopleCategoryFromScope])
  {
    v4 = &MSSearchScopeFrom;
    goto LABEL_11;
  }

  if ([identifier isEqualToString:MFSearchSuggestionPeopleCategoryToScope])
  {
    v4 = &MSSearchScopeTo;
    goto LABEL_11;
  }

  if ([identifier isEqualToString:MFSearchSuggestionMailboxCategoryScope])
  {
    v4 = &MSSearchScopeMailbox;
    goto LABEL_11;
  }

  v5 = 0;
LABEL_12:

  return v5;
}

- (id)SectionCategoryForSuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
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

  v6 = [(MessageListSearchViewController *)self categoryForSuggestion:suggestionCopy];
LABEL_8:
  v7 = v6;

  return v7;
}

- (id)categoryForSuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
  category = [suggestionCopy category];
  v7 = +[MUISearchSuggestionCategory mailboxCategory];

  if (category == v7)
  {
    v19 = &MSSearchSuggestionCategoryMailboxes;
    goto LABEL_18;
  }

  v8 = +[MUISearchSuggestionCategory topHitsCategory];

  if (category == v8)
  {
    v19 = &MSSearchSuggestionCategoryTopHit;
    goto LABEL_18;
  }

  v9 = +[MUISearchSuggestionCategory instantAnswersCategory];

  if (category == v9)
  {
    v19 = &MSSearchSuggestionCategoryInstantAnswer;
    goto LABEL_18;
  }

  v10 = +[MUISearchSuggestionCategory contactCategory];

  if (category == v10)
  {
    v19 = &MSSearchSuggestionCategoryContact;
    goto LABEL_18;
  }

  v11 = +[MUISearchSuggestionCategory documentCategory];

  if (category == v11)
  {
    v19 = &MSSearchSuggestionCategoryDocument;
    goto LABEL_18;
  }

  v12 = +[MUISearchSuggestionCategory locationCategory];

  if (category == v12)
  {
    v19 = &MSSearchSuggestionCategoryLocation;
    goto LABEL_18;
  }

  v13 = +[MUISearchSuggestionCategory linkCategory];

  if (category == v13)
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
  if (category == v14)
  {
  }

  else
  {
    v16 = +[MUISearchSuggestionCategory recentGenericCategory];

    if (category != v16)
    {
LABEL_10:
      v17 = +[NSAssertionHandler currentHandler];
      [v17 handleFailureInMethod:a2 object:self file:@"MessageListSearchViewController.m" lineNumber:2276 description:{@"No corresponding MSSearchSuggestionCategory for MUISearchAtomSuggestion %@", suggestionCopy}];

      v18 = 0;
      goto LABEL_19;
    }
  }

  spotlightSuggestion = [suggestionCopy spotlightSuggestion];
  currentToken = [spotlightSuggestion currentToken];

  if (currentToken)
  {
    spotlightSuggestion2 = [suggestionCopy spotlightSuggestion];
    currentToken2 = [spotlightSuggestion2 currentToken];

    v18 = -[MessageListSearchViewController categoryForTokenKind:](self, "categoryForTokenKind:", [currentToken2 tokenKind]);
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

- (id)categoryForTokenKind:(int64_t)kind
{
  if (kind <= 24)
  {
    if (kind <= 11)
    {
      switch(kind)
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

    else if (kind > 15)
    {
      if (kind == 16)
      {
        v3 = &MSSearchSuggestionCategoryPeople;
        return *v3;
      }

      if (kind == 19)
      {
        v3 = &MSSearchSuggestionCategoryReadStatus;
        return *v3;
      }
    }

    else
    {
      if (kind == 12)
      {
        v3 = &MSSearchSuggestionCategoryMailboxes;
        return *v3;
      }

      if (kind == 14)
      {
        v3 = &MSSearchSuggestionCategorySubjectContains;
        return *v3;
      }
    }

LABEL_27:
    v3 = &MSSearchSuggestionCategoryOther;
    return *v3;
  }

  if (kind >= 33)
  {
    switch(kind)
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

- (void)reportSearchViewAppeared:(BOOL)appeared currentMailboxScope:(BOOL)scope
{
  [(MessageListViewController *)self inputLanguages];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100167450;
  v8[3] = &unk_100652068;
  appearedCopy = appeared;
  v9 = v11 = scope;
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
    suggestionsViewController = [(MessageListSearchViewController *)self suggestionsViewController];
    [suggestionsViewController reportVisibleSuggestionResults];
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
  view = [(MessageListSearchViewController *)self view];
  window = [view window];

  if (window)
  {
    [(MessageListViewController *)self parsecEventQueuePerformBlock:&stru_100652088];
  }
}

- (void)reportSearchEndedEvent:(int64_t)event
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1001676A4;
  v3[3] = &unk_1006520C8;
  v3[4] = event;
  [(MessageListViewController *)self parsecEventQueuePerformBlock:v3];
}

- (void)reportTopHitSelected:(id)selected
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10016775C;
  v5[3] = &unk_1006520F0;
  selectedCopy = selected;
  v4 = selectedCopy;
  [(MessageListViewController *)self parsecEventQueuePerformBlock:v5];
}

- (void)reportInstantAnswerCardSelected:(id)selected cardSectionID:(id)d
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100167848;
  v8[3] = &unk_100651C30;
  selectedCopy = selected;
  dCopy = d;
  v6 = dCopy;
  v7 = selectedCopy;
  [(MessageListViewController *)self parsecEventQueuePerformBlock:v8];
}

- (void)reportInstantAnswerButtonSelected:(id)selected cardSectionID:(id)d command:(id)command
{
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10016796C;
  v11[3] = &unk_100651CE8;
  selectedCopy = selected;
  dCopy = d;
  commandCopy = command;
  v8 = commandCopy;
  v9 = dCopy;
  v10 = selectedCopy;
  [(MessageListViewController *)self parsecEventQueuePerformBlock:v11];
}

- (void)reportSuggestionSelected:(id)selected
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100167A28;
  v5[3] = &unk_1006520F0;
  selectedCopy = selected;
  v4 = selectedCopy;
  [(MessageListViewController *)self parsecEventQueuePerformBlock:v5];
}

- (void)_reportMessageResultsFetchedIsFinished:(BOOL)finished
{
  finishedCopy = finished;
  dataSource = [(MessageListSearchViewController *)self dataSource];
  v5 = [dataSource sectionDataSourceForSection:MessageListSectionInstantAnswers];

  v32 = v5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    instantAnswer = [v5 instantAnswer];
    if (instantAnswer)
    {
      v31 = [(MessageListViewController *)self parsecInstantAnswerForInstantAnswer:instantAnswer];
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

  searchInfo = [(MessageListSearchViewController *)self searchInfo];
  rankingSignalsByObjectID = [searchInfo rankingSignalsByObjectID];
  dataSource2 = [(MessageListSearchViewController *)self dataSource];
  v8 = kMSParsecSearchSessionMaximumRankedSectionResultsCount;
  v9 = [dataSource2 messageListItemsInSection:MessageListSectionTopHits limit:kMSParsecSearchSessionMaximumRankedSectionResultsCount];

  v44[0] = _NSConcreteStackBlock;
  v44[1] = 3221225472;
  v44[2] = sub_100167F74;
  v44[3] = &unk_100652138;
  v10 = rankingSignalsByObjectID;
  v45 = v10;
  selfCopy = self;
  v29 = [v9 ef_map:v44];
  v11 = [v9 count];
  dataSource3 = [(MessageListSearchViewController *)self dataSource];
  v13 = [dataSource3 messageListItemsInSection:MessageListSectionIndexedSearch limit:v8 - v11];

  v42[0] = _NSConcreteStackBlock;
  v42[1] = 3221225472;
  v42[2] = sub_10016807C;
  v42[3] = &unk_100652160;
  v14 = v10;
  v43 = v14;
  v15 = [v13 ef_map:v42];
  v16 = [v9 count];
  v17 = [v13 count];
  dataSource4 = [(MessageListSearchViewController *)self dataSource];
  v19 = [dataSource4 messageListItemsInSection:MessageListSectionServerSearch limit:v8 - v16 - v17];

  v20 = [v19 ef_map:&stru_1006521A0];
  v21 = [v15 arrayByAddingObjectsFromArray:v20];

  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3221225472;
  v35[2] = sub_1001682C4;
  v35[3] = &unk_1006521C8;
  v22 = searchInfo;
  v36 = v22;
  selfCopy2 = self;
  v23 = v21;
  v38 = v23;
  v24 = v29;
  v39 = v24;
  v25 = v31;
  v40 = v25;
  v41 = finishedCopy;
  [(MessageListViewController *)self parsecEventQueuePerformBlock:v35];
  if (finishedCopy)
  {
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_100168364;
    v33[3] = &unk_10064D9D8;
    v33[4] = self;
    v34 = finishedCopy;
    v26 = +[EFScheduler mainThreadScheduler];
    [v26 performBlock:v33];
  }
}

- (id)_parsecEmbeddingStateWithSearchInfo:(id)info
{
  infoCopy = info;
  v4 = +[MSParsecSearchEmbeddingState embeddingStateWithQueryStatus:hasQueryEmbedding:hasKeywordResults:hasEmbeddingResults:](MSParsecSearchEmbeddingState, "embeddingStateWithQueryStatus:hasQueryEmbedding:hasKeywordResults:hasEmbeddingResults:", [infoCopy queryStatus], objc_msgSend(infoCopy, "hasQueryEmbedding"), objc_msgSend(infoCopy, "hasKeywordResults"), objc_msgSend(infoCopy, "hasEmbeddingResults"));

  return v4;
}

- (void)reportVisibleMessageListResultsAlwaysReportItems:(BOOL)items isFinished:(BOOL)finished
{
  itemsCopy = items;
  initialLoadCompletedFuture = [(MessageListViewController *)self initialLoadCompletedFuture];
  resultIfAvailable = [initialLoadCompletedFuture resultIfAvailable];
  bOOLValue = [resultIfAvailable BOOLValue];

  if (bOOLValue)
  {
    collectionView = [(MessageListSearchViewController *)self collectionView];
    indexPathsForVisibleItems = [collectionView indexPathsForVisibleItems];
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_100168798;
    v30[3] = &unk_1006521F0;
    v30[4] = self;
    v12 = [indexPathsForVisibleItems ef_filter:v30];
    v13 = [v12 sortedArrayUsingSelector:"compare:"];

    if ([v13 count])
    {
      lastVisibleIndexPaths = [(MessageListSearchViewController *)self lastVisibleIndexPaths];
      v15 = [v13 isEqualToArray:lastVisibleIndexPaths];

      if (!v15 || itemsCopy)
      {
        v16 = [v13 copy];
        [(MessageListSearchViewController *)self setLastVisibleIndexPaths:v16];

        v29[0] = _NSConcreteStackBlock;
        v29[1] = 3221225472;
        v29[2] = sub_100168818;
        v29[3] = &unk_100652218;
        v29[4] = self;
        v17 = [v13 ef_compactMap:v29];
        if (finished || ![(MessageListSearchViewController *)self didReportFirstVisibleResults])
        {
          searchStartTimestamp = [(MessageListSearchViewController *)self searchStartTimestamp];
          v20 = +[NSDate date];
          v18 = [(MessageListSearchViewController *)self _latencyMsFromTimestamp:searchStartTimestamp toTimestamp:v20];
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

- (id)_parsecMessageResultForVisibleIndexPath:(id)path
{
  pathCopy = path;
  collectionView = [(MessageListSearchViewController *)self collectionView];
  v6 = [collectionView cellForItemAtIndexPath:pathCopy];

  messageListItem = [v6 messageListItem];
  itemID = [messageListItem itemID];
  if (!itemID)
  {
    v11 = 0;
    goto LABEL_17;
  }

  dataSource = [(MessageListSearchViewController *)self dataSource];
  v10 = [dataSource sectionAtIndex:{objc_msgSend(pathCopy, "section")}];

  if (v10 == MessageListSectionInstantAnswers)
  {
    collectionView2 = [(MessageListSearchViewController *)self collectionView];
    date = [collectionView2 cellForItemAtIndexPath:pathCopy];

    instantAnswer = [date instantAnswer];
    if (!instantAnswer)
    {
      v11 = 0;
      goto LABEL_14;
    }

    v15 = [(MessageListViewController *)self parsecInstantAnswerForInstantAnswer:instantAnswer];
LABEL_12:
    v11 = v15;
LABEL_14:

    goto LABEL_15;
  }

  if (v10 == MessageListSectionTopHits)
  {
    date = [messageListItem date];
    v11 = [(MessageListViewController *)self parsecTopHitForItemID:itemID date:date mailRankingSignals:0];
LABEL_15:

    goto LABEL_16;
  }

  if (v10 == MessageListSectionIndexedSearch || v10 == MessageListSectionServerSearch)
  {
    date = [NSString stringWithFormat:@"%@", itemID];
    instantAnswer = [messageListItem date];
    v15 = [MSParsecSearchSessionMessageListResult resultWithIdentifier:date date:instantAnswer];
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

- (void)reportSearchQueryStateWithTriggerEvent:(unint64_t)event searchType:(unint64_t)type
{
  inputLanguages = [(MessageListViewController *)self inputLanguages];
  if (pthread_main_np() != 1)
  {
    v12 = +[NSAssertionHandler currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"MessageListSearchViewController.m" lineNumber:2543 description:@"Current thread must be main"];
  }

  currentSuggestion = [(MessageListSearchViewController *)self currentSuggestion];
  objc_initWeak(&location, self);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100168CF8;
  v13[3] = &unk_100652268;
  objc_copyWeak(v16, &location);
  v14 = currentSuggestion;
  v16[1] = event;
  v16[2] = type;
  v10 = inputLanguages;
  v15 = v10;
  v11 = currentSuggestion;
  [(MessageListViewController *)self parsecEventQueuePerformBlock:v13];

  objc_destroyWeak(v16);
  objc_destroyWeak(&location);
}

- (void)reportQueryClearedEvent:(int64_t)event
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1001691D0;
  v3[3] = &unk_1006520C8;
  v3[4] = event;
  [(MessageListViewController *)self parsecEventQueuePerformBlock:v3];
}

- (id)viewForKeyboardAvoidance:(id)avoidance
{
  collectionView = [(MessageListSearchViewController *)self collectionView];

  return collectionView;
}

- (void)keyboardAvoidance:(id)avoidance adjustForFrameOverlap:(CGRect)overlap
{
  height = overlap.size.height;
  width = overlap.size.width;
  y = overlap.origin.y;
  x = overlap.origin.x;
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

- (id)messageListDataSource:(id)source sectionDataSourceForSection:(id)section messageList:(id)list
{
  sourceCopy = source;
  sectionCopy = section;
  listCopy = list;
  if (([sectionCopy isEqualToString:MessageListSectionIndexedSearch] & 1) != 0 || (objc_msgSend(sectionCopy, "isEqualToString:", MessageListSectionServerSearch) & 1) != 0 || objc_msgSend(sectionCopy, "isEqualToString:", MessageListSectionTopHits))
  {
    v11 = [MUIMessageListSearchSectionDataSource alloc];
    v12 = [(MessageListSearchViewController *)self sectionDataSourceConfigurationWithSection:sectionCopy messageList:listCopy];
    v13 = [v11 initWithConfiguration:v12];
LABEL_5:
    v14 = v13;

    goto LABEL_6;
  }

  if ([sectionCopy isEqualToString:MessageListSectionInstantAnswers])
  {
    v16 = [MUIMessageListInstantAnswerSectionDataSource alloc];
    v12 = [(MessageListSearchViewController *)self sectionDataSourceConfigurationWithSection:sectionCopy messageList:listCopy];
    v13 = [v16 initWithConfiguration:v12];
    goto LABEL_5;
  }

  v17.receiver = self;
  v17.super_class = MessageListSearchViewController;
  v14 = [(MessageListSearchViewController *)&v17 messageListDataSource:sourceCopy sectionDataSourceForSection:sectionCopy messageList:listCopy];
LABEL_6:

  return v14;
}

- (id)sectionDataSourceConfigurationWithSection:(id)section messageList:(id)list
{
  v8.receiver = self;
  v8.super_class = MessageListSearchViewController;
  v5 = [(MessageListSearchViewController *)&v8 sectionDataSourceConfigurationWithSection:section messageList:list];
  searchProgressView = [(MessageListSearchViewController *)self searchProgressView];
  [v5 setSearchProgressView:searchProgressView];

  return v5;
}

- (void)messageListDataSource:(id)source willUpdateWithChange:(id)change section:(id)section animated:(BOOL)animated cleanSnapshot:(BOOL)snapshot
{
  snapshotCopy = snapshot;
  animatedCopy = animated;
  changeCopy = change;
  sectionCopy = section;
  v15.receiver = self;
  v15.super_class = MessageListSearchViewController;
  [(MessageListViewController *)&v15 messageListDataSource:source willUpdateWithChange:changeCopy section:sectionCopy animated:animatedCopy cleanSnapshot:snapshotCopy];
  section = [sectionCopy section];
  if (section == MessageListSectionServerSearch && !-[MessageListSearchViewController hasReceivedFirstRemoteSearchResult](self, "hasReceivedFirstRemoteSearchResult") && [changeCopy isAddition] && objc_msgSend(changeCopy, "numberOfChanges") >= 1)
  {
    [(MessageListSearchViewController *)self setHasReceivedFirstRemoteSearchResult:1];
  }
}

- (void)messageListDataSource:(id)source didUpdateWithChange:(id)change section:(id)section animated:(BOOL)animated
{
  animatedCopy = animated;
  sourceCopy = source;
  changeCopy = change;
  sectionCopy = section;
  [(MessageListSearchViewController *)self _updateFooter];
  v13.receiver = self;
  v13.super_class = MessageListSearchViewController;
  [(MessageListViewController *)&v13 messageListDataSource:sourceCopy didUpdateWithChange:changeCopy section:sectionCopy animated:animatedCopy];
}

- (void)didTapCheckInUrlFor:(id)for
{
  forCopy = for;
  instantAnswer = [forCopy instantAnswer];
  flight = [instantAnswer flight];
  checkInUrl = [flight checkInUrl];

  if (checkInUrl)
  {
    v9 = +[UIApplication sharedApplication];
    [v9 openURL:checkInUrl withCompletionHandler:&stru_100652288];
  }

  else
  {
    v10 = +[MessageListViewController log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = NSStringFromSelector(a2);
      message = [instantAnswer message];
      ef_publicDescription = [message ef_publicDescription];
      v17 = 138543618;
      v18 = v11;
      v19 = 2114;
      v20 = ef_publicDescription;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ - no checkInURL for message:%{public}@", &v17, 0x16u);
    }
  }

  v14 = [(MessageListViewController *)self parsecInstantAnswerForInstantAnswer:instantAnswer];
  v15 = objc_alloc_init(SFManageReservationCommand);
  buttonsCardSectionID = [instantAnswer buttonsCardSectionID];
  [(MessageListSearchViewController *)self reportInstantAnswerButtonSelected:v14 cardSectionID:buttonsCardSectionID command:v15];
}

- (void)didTapMapAddressFor:(id)for
{
  forCopy = for;
  instantAnswer = [forCopy instantAnswer];
  hotel = [instantAnswer hotel];
  address = [hotel address];

  v9 = [address stringByReplacingOccurrencesOfString:@" " withString:@"+"];

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
      message = [instantAnswer message];
      ef_publicDescription = [message ef_publicDescription];
      v20 = 138543618;
      v21 = v14;
      v22 = 2114;
      v23 = ef_publicDescription;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ - no addressUrl for message:%{public}@", &v20, 0x16u);
    }
  }

  v17 = [(MessageListViewController *)self parsecInstantAnswerForInstantAnswer:instantAnswer];
  v18 = objc_alloc_init(SFManageReservationCommand);
  buttonsCardSectionID = [instantAnswer buttonsCardSectionID];
  [(MessageListSearchViewController *)self reportInstantAnswerButtonSelected:v17 cardSectionID:buttonsCardSectionID command:v18];
}

- (void)didTapViewMessageFor:(id)for
{
  instantAnswer = [for instantAnswer];
  message = [instantAnswer message];
  dataSource = [(MessageListSearchViewController *)self dataSource];
  v7 = [dataSource messageListForSection:MessageListSectionInstantAnswers];

  [(MessageListViewController *)self setReferenceMessageListItem:message referenceMessageList:v7 showAsConversation:1 animated:1];
  scene = [(MessageListViewController *)self scene];
  if (([scene isInExpandedEnvironment] & 1) == 0)
  {
    splitViewController = [scene splitViewController];
    [splitViewController showConversationViewControllerAnimated:1 completion:0];
  }

  collectionView = [(MessageListSearchViewController *)self collectionView];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  indexPathsForSelectedItems = [collectionView indexPathsForSelectedItems];
  v12 = [indexPathsForSelectedItems countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(indexPathsForSelectedItems);
        }

        [collectionView deselectItemAtIndexPath:*(*(&v17 + 1) + 8 * v14) animated:1];
        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [indexPathsForSelectedItems countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v12);
  }

  [(MessageListViewController *)self setLastSelectedItemID:0];
  v15 = [(MessageListViewController *)self parsecInstantAnswerForInstantAnswer:instantAnswer];
  buttonsCardSectionID = [instantAnswer buttonsCardSectionID];
  [(MessageListSearchViewController *)self reportInstantAnswerCardSelected:v15 cardSectionID:buttonsCardSectionID];
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