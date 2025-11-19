@interface BKBookViewController
+ (BOOL)areCitationsAllowedForBook:(id)a3;
+ (id)propertySourceFromBook:(id)a3;
+ (id)valueOfAnnotationProperty:(id)a3 activityType:(id)a4 book:(id)a5;
+ (void)initialize;
- (AEAssetViewControllerDelegate)assetViewControllerDelegate;
- (BAContentSettingsData)analyticsContentSettingData;
- (BCAppIntentsAssetViewControllerInfo)appIntentsInfo;
- (BEProtocolCacheItem)currentBookCacheItem;
- (BKBookViewController)initWithBook:(id)a3 storeID:(id)a4;
- (BKLocation)resumeLocation;
- (BKLocation)savableLocation;
- (BKNavigationHistory)navigationHistory;
- (BKUpsell)upsellContentViewController;
- (BOOL)_controller:(id)a3 handleInternalRequestForURL:(id)a4;
- (BOOL)_currentChapterInfo:(id *)a3 uniqueID:(id *)a4;
- (BOOL)_inAnalyticsReadSession;
- (BOOL)_isPageAllZeros:(_NSRange)a3;
- (BOOL)_isPageEmpty:(_NSRange)a3;
- (BOOL)bc_analyticsVisibilityOfSelf;
- (BOOL)bkaxNeedsPersistentControls;
- (BOOL)bookCanBeBookmarked;
- (BOOL)canCopy;
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (BOOL)canSearch;
- (BOOL)canShowContent;
- (BOOL)dismissShouldBegin:(id)a3;
- (BOOL)editorController:(id)a3 isSharingEnabledForAnnotation:(id)a4;
- (BOOL)expandedContentView:(id)a3 shouldStartLoadWithRequest:(id)a4;
- (BOOL)expandedContentViewController:(id)a3 handleInternalLoadRequest:(id)a4;
- (BOOL)footnoteViewController:(id)a3 handleInternalLoadRequest:(id)a4;
- (BOOL)hasRemoteResources;
- (BOOL)hasSoundtrack;
- (BOOL)hidesPageControlsOnOpen;
- (BOOL)inLiveResize;
- (BOOL)isAnnotationVisible:(id)a3;
- (BOOL)isBookToolbarAppearanceDark;
- (BOOL)isEditingAnnotation:(id)a3;
- (BOOL)isOnLastPage;
- (BOOL)isPageBookmarked;
- (BOOL)isPageProgressionRTL;
- (BOOL)isPreordered;
- (BOOL)isReadAloudPaused;
- (BOOL)isSoundtrackPlaying;
- (BOOL)isTOCURL:(id)a3;
- (BOOL)needTOCEntriesForOrdinal:(int64_t)a3;
- (BOOL)needTextNodeCharacterCountsForOrdinal:(int64_t)a3;
- (BOOL)prefersStatusBarHidden;
- (BOOL)shouldAutorotate;
- (BOOL)shouldControlsBeVisibleOnOpen;
- (BOOL)shouldDisplayBuyButton;
- (BOOL)shouldDisplayShareControls;
- (BOOL)touchBarWantsHistoryNav;
- (CGRect)frameForLocation:(id)a3 inView:(id)a4 expandedContentViewController:(id)a5;
- (NSURL)storeShortURL;
- (_NSRange)currentPages;
- (_NSRange)pageRangeForAnnotation:(id)a3;
- (double)pagePositionForTouchBarPosition:(double)a3;
- (double)touchBarPositionForPageNumber:(int64_t)a3;
- (double)touchBarScrollerEndScrollPositionForPosition:(double)a3;
- (double)touchBarScrollerPositionForBookmark:(id)a3;
- (double)touchBarScrollerPositionForChapter:(id)a3;
- (float)volume;
- (id)_allAnnotationsForType:(int)a3;
- (id)_analyticsSessionHost;
- (id)_contentControllerThatHasCopyableSelection;
- (id)_contentSettingsDataFromReadingSessionData:(id)a3 optedIn:(BOOL)a4;
- (id)_createEndOfBookExperience;
- (id)_currentReadingProgress;
- (id)_footnoteViewController2ForResource:(id)a3 stylesheetSet:(id)a4;
- (id)_locationForChapter:(id)a3;
- (id)_normalizedLocation:(id)a3;
- (id)_readPlayer;
- (id)_searchQueryFromSender:(id)a3;
- (id)_searchResultOffsetByDistance:(int64_t)a3;
- (id)_trackPlayer;
- (id)_visibleAnnotationsForType:(int)a3;
- (id)addAnnotation:(int)a3 location:(id)a4 selectedText:(id)a5 representativeText:(id)a6;
- (id)appearanceMenuItems;
- (id)bookToolbarThemeID;
- (id)bookmarkToolTip;
- (id)bookmarksFetchRequestForBook:(id)a3 moc:(id)a4;
- (id)buttonColor;
- (id)chapterColor;
- (id)chapterTitleForAnnotation:(id)a3;
- (id)contentDataForSearchViewController:(id)a3;
- (id)contentViewController:(id)a3 addAnnotation:(int)a4 location:(id)a5 selectedText:(id)a6 representativeText:(id)a7;
- (id)contentViewControllerForMediaOverlayElement:(id)a3;
- (id)documentForLocation:(id)a3;
- (id)documentForURL:(id)a3;
- (id)environmentOverrideView;
- (id)fullScreenNoteEditorForAnnotation:(id)a3;
- (id)itemProvidersForSharing;
- (id)keyCommands;
- (id)locationForPath:(id)a3 fragment:(id)a4;
- (id)pageLocationForPageNumber:(int64_t)a3;
- (id)profileFuture;
- (id)readingSessionDataForSearchViewController:(id)a3;
- (id)savableLocationForLocation:(id)a3;
- (id)searchModuleWithSearchString:(id)a3;
- (id)searchViewController;
- (id)searchViewController:(id)a3 chapterNameForSearchResult:(id)a4 pageNumber:(int64_t)a5;
- (id)smilMapOnPages:(_NSRange)a3;
- (id)tintColorForNavbarButtons;
- (id)titleColor;
- (id)titleForChapterAtPageNumber:(int64_t)a3;
- (id)titleMutedColor;
- (id)tocToolTip;
- (id)tocViewController:(id)a3 pageTitleForAnnotation:(id)a4;
- (id)tocViewController:(id)a3 pageTitleForChapter:(id)a4;
- (id)tocViewControllerTocIdCssRules:(id)a3;
- (id)touchBarScrollerAccessibilityLabelForBookmark:(id)a3;
- (id)touchBarScrollerAccessibilityLabelForChapter:(id)a3;
- (id)touchBarScrollerChapters;
- (id)transitionContentBackgroundColor;
- (id)transitionContentView;
- (int)pageProgressionDirection;
- (int)readAloudState;
- (int)trackState;
- (int64_t)bookToolbarMode;
- (int64_t)calculatePageCountExcludingUpsell;
- (int64_t)currentPageNumber;
- (int64_t)directoryContent:(id)a3 pageNumberForLocation:(id)a4;
- (int64_t)pageCountExcludingUpsell;
- (int64_t)pageNavigationCurrentReadAloudPageOffset:(id)a3;
- (int64_t)pageNumberForTouchBarPosition:(double)a3;
- (int64_t)searchViewController:(id)a3 pageNumberForDocumentOrdinal:(int64_t)a4;
- (int64_t)themeInterfaceStyle;
- (int64_t)tocViewController:(id)a3 pageNumberForAnnotation:(id)a4;
- (int64_t)tocViewController:(id)a3 pageNumberForChapter:(id)a4;
- (int64_t)upsellPageNumber;
- (unint64_t)lastLayoutUsed;
- (unint64_t)numberOfBookmarks;
- (unint64_t)scrollLayoutForBook:(id)a3;
- (unint64_t)supportedInterfaceOrientations;
- (unint64_t)upsellOrdinal;
- (unint64_t)validLayoutForBook:(id)a3 desiredLayout:(unint64_t)a4;
- (void)_cleanupFootnoteViewController;
- (void)_contentReady:(id)a3;
- (void)_emitAnnotationActionEventIfNeededForAnnotationType:(int)a3;
- (void)_handleExternalLoadRequest:(id)a3 likelyUserInitiated:(BOOL)a4;
- (void)_highlightElement:(id)a3;
- (void)_newBADoNotDisturbDataWithStartStatus:(int64_t)a3 tracker:(id)a4 completion:(id)a5;
- (void)_nextDelayedPageHint:(id)a3;
- (void)_nextPageHint:(BOOL)a3 afterDelay:(double)a4;
- (void)_notifyBookmarkObservers;
- (void)_paginationComplete:(id)a3;
- (void)_performScrollTest:(id)a3 completionHandler:(id)a4;
- (void)_playNextItem;
- (void)_promptToLoadExternalContent:(id)a3;
- (void)_removeHighlightOnElement:(id)a3;
- (void)_reportLoadFailedAlertForError:(id)a3;
- (void)_reportResourceUnavailableForBookWithTitle:(id)a3 error:(id)a4;
- (void)_resume;
- (void)_setAudioSessionMix:(BOOL)a3;
- (void)_showExpandedContentForResource:(id)a3 atLocation:(id)a4 presentingFromTOC:(BOOL)a5 completion:(id)a6;
- (void)_startReadAloud:(BOOL)a3;
- (void)_traitCollectionDidChange:(id)a3 previousTraitCollection:(id)a4;
- (void)_updateHoverInteraction;
- (void)_updateLocationFromAnnotation:(id)a3;
- (void)addTOCEntries:(id)a3 ordinal:(int64_t)a4 completion:(id)a5;
- (void)addTextNodeCharacterCounts:(id)a3 ordinal:(int64_t)a4 completion:(id)a5;
- (void)appearanceViewController:(id)a3 didChangeAutoNightMode:(BOOL)a4 previousValue:(BOOL)a5;
- (void)appearanceViewController:(id)a3 didChangeFont:(id)a4;
- (void)appearanceViewController:(id)a3 didChangeFontSize:(double)a4;
- (void)appearanceViewController:(id)a3 didChangeLayout:(unint64_t)a4;
- (void)appearanceViewController:(id)a3 didChangeTheme:(unint64_t)a4;
- (void)assetViewControllerUpdateToolbarsAfterOpenAnimation;
- (void)assetViewControllerUpdateToolbarsForOpenAnimation;
- (void)audioPlaybackWillStart:(id)a3;
- (void)bc_analyticsVisibilityDidAppear;
- (void)bc_analyticsVisibilityWillDisappear;
- (void)bookMilestoneReached:(int64_t)a3;
- (void)bookPositionChanged:(id)a3;
- (void)bookSectionChanged:(id)a3;
- (void)bookmarkPage:(id)a3;
- (void)books_chapterLeft:(id)a3;
- (void)books_chapterRight:(id)a3;
- (void)books_findNext:(id)a3;
- (void)books_findPrevious:(id)a3;
- (void)books_search:(id)a3;
- (void)buildContextTree:(id)a3;
- (void)buy:(id)a3;
- (void)buyWithCompletion:(id)a3;
- (void)cancelPendingHidePageControls;
- (void)cancelPendingSavePageControlVisibility;
- (void)cancelPreloadForContent:(id)a3;
- (void)cleanupPopovers;
- (void)clearCurrentHighlighting;
- (void)clearInactiveContentViewControllers;
- (void)clearSearchResult;
- (void)clearSelectedAnnotation;
- (void)clearSelection;
- (void)close:(BOOL)a3;
- (void)contentFailedToLoadWithError:(id)a3;
- (void)contentView:(id)a3 didSelectMediaOverlayElement:(id)a4;
- (void)contentViewController:(id)a3 expandAnnotation:(id)a4 location:(id)a5 selectedText:(id)a6 representativeText:(id)a7;
- (void)contentViewController:(id)a3 goToLocation:(id)a4;
- (void)contentViewController:(id)a3 goToURL:(id)a4 likelyUserInitiated:(BOOL)a5;
- (void)contentViewController:(id)a3 presentAlertController:(id)a4 completion:(id)a5;
- (void)contentViewController:(id)a3 setEndOfBookToLocation:(id)a4 range:(id)a5;
- (void)contentViewController:(id)a3 setFinishedAndCloseForAssetID:(id)a4;
- (void)contentViewController:(id)a3 setSearchString:(id)a4;
- (void)contentViewController:(id)a3 shareAnnotation:(id)a4 annotationRects:(id)a5 completion:(id)a6;
- (void)contentViewController:(id)a3 showAlertController:(id)a4 fromRect:(CGRect)a5 animated:(BOOL)a6;
- (void)contentViewController:(id)a3 showHighlightingMenuForAnnotation:(id)a4;
- (void)contentViewController:(id)a3 showTranslateForText:(id)a4 fromView:(id)a5 onClose:(id)a6;
- (void)contentViewController:(id)a3 stopMediaPlay:(id)a4;
- (void)contentViewControllerAnnotationCacheDidChange:(id)a3;
- (void)contentViewReady:(id)a3;
- (void)continueReadAloudAfterReady;
- (void)controller:(id)a3 didChangeObject:(id)a4 atIndexPath:(id)a5 forChangeType:(unint64_t)a6 newIndexPath:(id)a7;
- (void)controllerDidChangeContent:(id)a3;
- (void)copy:(id)a3;
- (void)createPaginationControllerIfNeeded:(BOOL)a3;
- (void)dealloc;
- (void)delayedHidePageControls;
- (void)delayedSavePageControlVisibility;
- (void)didChangeCurrentOverlayViewController;
- (void)didChangeLocationClosing:(BOOL)a3 suspending:(BOOL)a4;
- (void)didHideAnnotationEditor:(id)a3;
- (void)didMoveToParentViewController:(id)a3;
- (void)didPurchaseWithProductProfile:(id)a3 completion:(id)a4;
- (void)didReceiveMemoryWarning;
- (void)directoryContent:(id)a3 didSelectLocation:(id)a4;
- (void)directoryContent:(id)a3 didSelectLocation:(id)a4 animated:(BOOL)a5;
- (void)dismissCurrentPopoverAnimated:(BOOL)a3;
- (void)dismissCurrentPopoverWithCompletion:(id)a3 animated:(BOOL)a4;
- (void)editorController:(id)a3 deleteAnnotation:(id)a4;
- (void)editorController:(id)a3 editedAnnotation:(id)a4 toText:(id)a5;
- (void)editorController:(id)a3 setTheme:(id)a4 forAnnotation:(id)a5;
- (void)editorController:(id)a3 shareAnnotation:(id)a4;
- (void)emitReadingOrientationChangeEventIfNeeded;
- (void)emitScrubEventStartPosition:(int64_t)a3 endPosition:(int64_t)a4 totalLength:(int64_t)a5;
- (void)expandAnnotation:(id)a3 location:(id)a4 selectedText:(id)a5 representativeText:(id)a6;
- (void)expandedContentViewController:(id)a3 handleExternalLoadRequest:(id)a4 likelyUserInitiated:(BOOL)a5;
- (void)expandedContentViewController:(id)a3 handleInternalLoadRequestForNewWindow:(id)a4;
- (void)expandedContentViewController:(id)a3 handleUserRequestForFrameToLoadExternalURL:(id)a4 completion:(id)a5;
- (void)expandedContentViewController:(id)a3 presentAlertController:(id)a4 completion:(id)a5;
- (void)expandedContentViewDidDisappear:(id)a3;
- (void)fixupNavigationHistoryForUpsellPageNumber:(int64_t)a3;
- (void)footnoteViewController:(id)a3 handleExternalLoadRequest:(id)a4 likelyUserInitiated:(BOOL)a5;
- (void)footnoteViewController:(id)a3 handleUserRequestForFrameToLoadExternalURL:(id)a4 completion:(id)a5;
- (void)footnoteViewController:(id)a3 presentAlertController:(id)a4 completion:(id)a5;
- (void)footnoteViewDidDisappear:(id)a3;
- (void)footnoteViewDidFinishLoad:(id)a3;
- (void)forceReload;
- (void)forceRepagination;
- (void)goToPath:(id)a3 fragment:(id)a4 animated:(BOOL)a5;
- (void)handleAppearanceViewControllerDismissal;
- (void)handleSwitchControlStatusChanged:(id)a3;
- (void)handleVoiceOverStatusChanged:(id)a3;
- (void)hoverInteraction:(id)a3 didChangeStateForRegionWithKeys:(id)a4;
- (void)hoverInteractionDidSettle:(id)a3;
- (void)isLocationVisible:(id)a3 completion:(id)a4;
- (void)jumpAheadAnimated:(BOOL)a3;
- (void)jumpBackAnimated:(BOOL)a3;
- (void)jumpToLocation:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)managedObjectContextDidSave:(id)a3;
- (void)mediaPlaybackStarted:(id)a3;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)open:(BOOL)a3;
- (void)openToLocation:(id)a3 animated:(BOOL)a4;
- (void)p_releaseDictionary;
- (void)pageNavigationDidChangeLocation:(id)a3;
- (void)pageViewControllersDidChange;
- (void)paginationCompleted;
- (void)paginationUpdateRequired;
- (void)pauseReadAloud;
- (void)playCurrentSoundtrack;
- (void)player:(id)a3 callbackForTime:(double)a4;
- (void)playerCurrentItemEnded:(id)a3;
- (void)playerStateChanged:(id)a3;
- (void)popoverDidClose:(id)a3 fromToolbar:(id)a4;
- (void)preloadContentController:(id)a3 highPriority:(BOOL)a4;
- (void)presentAppearanceViewControllerFromItem:(id)a3;
- (void)presentViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)presentationControllerDidDismiss:(id)a3;
- (void)promptForRemoteResourcesIfNecessary;
- (void)readAloudViewControllerReady:(id)a3;
- (void)readNextPages:(id)a3;
- (void)readPages:(_NSRange)a3 from:(int64_t)a4 to:(int64_t)a5 waitOnEmpty:(BOOL)a6;
- (void)readingLocationChanged;
- (void)rebuildHoverRegions;
- (void)recordedJumpToLocation:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)registerBookmarkObserver:(id)a3;
- (void)releaseViews;
- (void)reloadExternalWebFrames;
- (void)requestClose:(BOOL)a3;
- (void)resetKeyWindow;
- (void)restoreSavedLocation;
- (void)resume:(id)a3;
- (void)resumeReadAloud;
- (void)revealSearchResult:(id)a3 animated:(BOOL)a4;
- (void)saveBook;
- (void)savePageControlVisibility;
- (void)saveReadingLocation:(id)a3;
- (void)saveStateClosing:(BOOL)a3;
- (void)saveStateClosing:(BOOL)a3 suspending:(BOOL)a4;
- (void)scrub:(id)a3;
- (void)scrubberTouchDown:(id)a3;
- (void)searchViewController:(id)a3 revealSearchResult:(id)a4 animated:(BOOL)a5;
- (void)searchViewController:(id)a3 turnToLocation:(id)a4 animated:(BOOL)a5;
- (void)searchViewController:(id)a3 turnToPageNumber:(int64_t)a4 animated:(BOOL)a5;
- (void)searchViewControllerDidDisappear:(id)a3;
- (void)searchViewControllerWillAppear:(id)a3;
- (void)setAssetIsPreordered:(id)a3;
- (void)setBook:(id)a3;
- (void)setControlsVisible:(BOOL)a3 animated:(BOOL)a4 animations:(id)a5 completion:(id)a6;
- (void)setExpandedContentViewController:(id)a3;
- (void)setFinishedForAssetID:(id)a3;
- (void)setLayout:(unint64_t)a3;
- (void)setLocation:(id)a3;
- (void)setPageCountIncludingUpsell:(int64_t)a3;
- (void)setPaginationController:(id)a3;
- (void)setReadAloudState:(BOOL)a3;
- (void)setSection:(int)a3 animated:(BOOL)a4 adjustScrollToReveal:(BOOL)a5;
- (void)setStatusBarHidden:(BOOL)a3 animated:(BOOL)a4 animations:(id)a5 completion:(id)a6;
- (void)setTheme:(id)a3;
- (void)setTrackState:(BOOL)a3 persistSetting:(BOOL)a4;
- (void)setTurnState:(BOOL)a3;
- (void)setVolume:(float)a3;
- (void)setupAppearanceViewController;
- (void)shareAnnotation:(id)a3 fromRect:(CGRect)a4 inView:(id)a5 completion:(id)a6;
- (void)shareAnnotations:(id)a3 fromBarButtonItem:(id)a4 excerpt:(BOOL)a5 completion:(id)a6;
- (void)shareAnnotations:(id)a3 fromRect:(CGRect)a4 inView:(id)a5 excerpt:(BOOL)a6 completion:(id)a7;
- (void)showAudio:(id)a3;
- (void)showBrightness:(id)a3;
- (void)showFootnoteInContentViewController:(id)a3 resource:(id)a4 fromView:(id)a5 stylesheetSet:(id)a6;
- (void)showLookupForString:(id)a3 fromView:(id)a4 onClose:(id)a5;
- (void)showNoteEditorForAnnotation:(id)a3;
- (void)showOverlayViewController:(id)a3 fromView:(id)a4 popoverOnPhone:(BOOL)a5 popoverBackgroundColor:(id)a6;
- (void)showSearchWithString:(id)a3 sender:(id)a4;
- (void)showTOC:(id)a3;
- (void)signalBookContentDidLoad:(id)a3;
- (void)startFetchingBookmarks;
- (void)stopFetchingBookmarks;
- (void)stopReadAloudAndReload:(BOOL)a3;
- (void)stopSoundtrackAndReload:(BOOL)a3;
- (void)storeChangedNotification:(id)a3;
- (void)tocViewController:(id)a3 didSelectChapter:(id)a4;
- (void)toggleBookmark:(id)a3;
- (void)toggleShowPageControls:(id)a3;
- (void)touchBarHandleBackRequest:(id)a3;
- (void)touchBarHandleForwardRequest:(id)a3;
- (void)touchBarHandleReadAloudRequest:(id)a3;
- (void)touchBarScrollerDidEnd:(double)a3 completion:(id)a4;
- (void)touchBarScrollerDidIdle:(double)a3;
- (void)touchBarScrollerJumpToBookmark:(id)a3;
- (void)transitionDidFinish:(BOOL)a3;
- (void)turnToPageNumber:(int64_t)a3 animated:(BOOL)a4;
- (void)unbookmarkPage:(id)a3;
- (void)unregisterBookmarkObserver:(id)a3;
- (void)updateBookmarkButton:(BOOL)a3;
- (void)updatePageCount;
- (void)updateProgressKitForNewLocation;
- (void)updateUIForSmartInvert;
- (void)validateCommand:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
- (void)willMoveToParentViewController:(id)a3;
- (void)writeAnnotationsToWebProcessPlugin;
- (void)writeControlVisibilityStateToWebProcessPlugin;
@end

@implementation BKBookViewController

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v2 = [NSDictionary alloc];
    v4 = [v2 initWithObjectsAndKeys:{BKBookHidePageControls[0], &__kCFBooleanFalse, BKLeftTapTurnToNextDefault[0], &__kCFBooleanFalse, BKReadAloudAutoPageTurn[0], &__kCFBooleanTrue, @"BKUseLegacyCurlAnimation", &off_1F14C0, BKDefaultHighlightColor[0], &__kCFBooleanFalse, BKDefaultUnderlineState, &__kCFBooleanTrue, @"BKAllowOnlineContent", 0}];
    v3 = +[NSUserDefaults standardUserDefaults];
    [v3 registerDefaults:v4];
  }
}

- (BKBookViewController)initWithBook:(id)a3 storeID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v42.receiver = self;
  v42.super_class = BKBookViewController;
  v8 = [(BKViewController *)&v42 initWithNibName:0 bundle:0];
  if (v8)
  {
    v9 = _AEBookPluginsLifeCycleLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = objc_opt_class();
      v11 = v10;
      v12 = [v6 assetLogID];
      *buf = 138543618;
      v44 = v10;
      v45 = 2114;
      v46 = v12;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "Initializing BVC:%{public}@ logID:%{public}@", buf, 0x16u);
    }

    v13 = +[NSNotificationCenter defaultCenter];
    [v13 addObserver:v8 selector:"saveBook" name:UIApplicationDidEnterBackgroundNotification object:0];

    v14 = +[NSNotificationCenter defaultCenter];
    [v14 addObserver:v8 selector:"_contentReady:" name:BKContentReadyNotification object:0];

    v15 = +[NSNotificationCenter defaultCenter];
    [v15 addObserver:v8 selector:"_contentReady:" name:BKContentFAILNotification object:0];

    v16 = objc_alloc_init(NSMutableDictionary);
    contentViewControllers = v8->_contentViewControllers;
    v8->_contentViewControllers = v16;

    v8->_controlsVisible = 0;
    v18 = [[IMPerformSelectorProxy alloc] initWithTarget:v8];
    performSelectorProxy = v8->_performSelectorProxy;
    v8->_performSelectorProxy = v18;

    v20 = +[AEAnnotationProvider sharedInstance];
    annotationProvider = v8->_annotationProvider;
    v8->_annotationProvider = v20;

    v22 = [NSHashTable hashTableWithOptions:517];
    bookmarkObservers = v8->_bookmarkObservers;
    v8->_bookmarkObservers = v22;

    if ((BUIsRunningTests() & 1) == 0)
    {
      v24 = objc_alloc_init(BCDisplaySleepController);
      displaySleepController = v8->_displaySleepController;
      v8->_displaySleepController = v24;
    }

    [(BKBookViewController *)v8 setBook:v6];
    v26 = +[BCAudioMuxingCoordinator sharedInstance];
    [v26 addAudioMuxingObserver:v8];

    v27 = [v6 sampleContent];
    if ([v27 BOOLValue])
    {
      [(BKBookViewController *)v8 setExperienceManager:0];
    }

    else
    {
      v28 = +[BCAugmentedExperienceManager newAugmentedExperienceManager];
      [(BKBookViewController *)v8 setExperienceManager:v28];
    }

    v29 = [(BKBookViewController *)v8 experienceManager];

    if (v29)
    {
      v30 = [(BKBookViewController *)v8 experienceManager];
      [(BKBookViewController *)v8 setBookPositionProcessor:v30];

      v31 = [(BKBookViewController *)v8 experienceManager];
      [v31 setPresentationViewController:v8];

      v32 = [v6 storeId];
      v33 = [v32 longLongValue];
      if (v33 < 1)
      {
        v34 = v7;
      }

      else
      {
        v34 = [v6 storeId];
      }

      v35 = [(BKBookViewController *)v8 experienceManager];
      [v35 setStoreID:v34];

      if (v33 >= 1)
      {
      }

      v36 = [(BKBookViewController *)v8 _createEndOfBookExperience];
      if (v36)
      {
        v37 = [(BKBookViewController *)v8 experienceManager];
        [v37 addExperience:v36];
      }
    }

    v38 = [(BKBookViewController *)v8 book];
    v8->_layout = [(BKBookViewController *)v8 validLayoutForBook:v38 desiredLayout:[(BKBookViewController *)v8 defaultLayoutToUse]];

    v39 = +[UITraitCollection bc_allAPITraits];
    v40 = [(BKBookViewController *)v8 registerForTraitChanges:v39 withAction:"_traitCollectionDidChange:previousTraitCollection:"];
  }

  return v8;
}

- (NSURL)storeShortURL
{
  v3 = objc_opt_class();
  v4 = [(BKBookViewController *)self book];
  v5 = [v3 propertySourceFromBook:v4];

  v6 = [[AEAssetActivityItemProviderSource alloc] initWithPropertySource:v5];
  v7 = [v6 propertyProvider];
  v8 = [v7 storeURLPreferShort];

  return v8;
}

- (unint64_t)lastLayoutUsed
{
  v3 = +[NSUserDefaults standardUserDefaults];
  v4 = [(BKBookViewController *)self lastLayoutUsedKey];
  v5 = [v3 objectForKey:v4];

  if (v5)
  {
    v6 = [v5 intValue];
    if (v6 <= 1)
    {
      v7 = 1;
    }

    else
    {
      v7 = v6;
    }

    v8 = v7;
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (void)setLayout:(unint64_t)a3
{
  if (self->_layout != a3)
  {
    self->_layout = a3;
    v5 = [(BKBookViewController *)self layout];
    v6 = _AEBookPluginsLifeCycleLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = (v5 & 0xFFFFFFFFFFFFFFFELL) == 2;
      v8 = [NSNumber numberWithUnsignedInteger:a3];
      v9 = [(BKBookViewController *)self book];
      v10 = [v9 assetLogID];
      v11 = [NSNumber numberWithBool:v7];
      v14 = 138543874;
      v15 = v8;
      v16 = 2114;
      v17 = v10;
      v18 = 2114;
      v19 = v11;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "SetLayout:%{public}@, logID:%{public}@, Scroll:%{public}@", &v14, 0x20u);
    }

    v12 = +[NSUserDefaults standardUserDefaults];
    v13 = [(BKBookViewController *)self lastLayoutUsedKey];
    [v12 setInteger:a3 forKey:v13];
  }
}

- (unint64_t)validLayoutForBook:(id)a3 desiredLayout:(unint64_t)a4
{
  v6 = a3;
  if (([v6 isScrollModeDisabled] & 1) == 0)
  {
    if (a4 - 2 < 2)
    {
      v9 = [(BKBookViewController *)self scrollLayoutForBook:v6];
      goto LABEL_10;
    }

    if (a4 == 4 || !a4)
    {
      v7 = BCIMLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = [NSNumber numberWithUnsignedInteger:a4];
        v11 = 138412290;
        v12 = v8;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_INFO, "Unexpected layout request value (%@). Falling back to paged layout", &v11, 0xCu);
      }
    }
  }

  v9 = 1;
LABEL_10:

  return v9;
}

- (unint64_t)scrollLayoutForBook:(id)a3
{
  if (![(BKBookViewController *)self allowsScrollMode])
  {
    return 1;
  }

  v4 = [(BKBookViewController *)self book];
  v5 = [v4 scrollModeOrientation];

  if (v5)
  {
    return 2;
  }

  else
  {
    return 3;
  }
}

- (id)_createEndOfBookExperience
{
  v3 = [(BKBookViewController *)self book];
  v4 = [v3 endOfBookLocation];

  v5 = [(BKBookViewController *)self book];
  v6 = [v5 endOfBookValidRange];

  if ([v4 length])
  {
    v40 = 0;
    v7 = [BCCFI cfiWithString:v4 error:&v40];
    v8 = v40;
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  v38 = v6;
  if ([v6 length])
  {
    v39 = 0;
    v9 = [BCCFI cfiWithString:v6 error:&v39];
    v36 = v39;
  }

  else
  {
    v9 = 0;
    v36 = 0;
  }

  v10 = 0;
  v37 = v8;
  if (v7 && !v8)
  {
    v11 = BCAugmentedExperienceLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v42 = v4;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "Valid end of book: %@", buf, 0xCu);
    }

    if (v9)
    {
      v12 = [v9 headCFI];
      v13 = [v9 tailCFI];
      v14 = [BCEPubBookPosition positionWithCFI:v12];
      v15 = [BCEPubBookPosition positionWithCFI:v13];
      v16 = [BCBookSection bookSectionWithStartPosition:v14 endPosition:v15];
    }

    else
    {
      v16 = 0;
    }

    v10 = objc_alloc_init(BCAugmentedExperiencePoint);
    v17 = [BCEPubBookPosition positionWithCFI:v7];
    [v10 setExperiencePoint:v17];

    [v10 setValidRange:v16];
    v18 = [(BKBookViewController *)self book];
    v19 = [v18 endOfBookConfidence];
    [v19 floatValue];
    [v10 setConfidence:?];
  }

  v20 = +[BCAugmentedExperienceRegistry sharedRegistry];
  v21 = [v20 presenterForExperienceType:0];
  if (v21)
  {
    v22 = objc_alloc_init(BCAugmentedExperience);
    [v22 setPresenter:v21];
    [v22 setLocation:v10];
    [v22 setDelay:0.0];
    [v22 setKind:0];
    [v22 setEnabled:1];
    [v22 setSkipToast:0];
    v23 = [(BKBookViewController *)self book];
    v24 = [v23 endOfBookVersion];
    [v22 setVersion:v24];

    [v22 setPageProgressionIsRTL:{-[BKBookViewController pageProgressionDirection](self, "pageProgressionDirection") == 1}];
    v25 = BCAugmentedExperienceLog();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      sub_137780();
    }

    v26 = BCAugmentedExperienceLog();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v26, OS_LOG_TYPE_INFO, "Created end of book experience for EPUB", buf, 2u);
    }
  }

  else
  {
    v26 = BCAugmentedExperienceLog();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      sub_1377F4(v26, v27, v28, v29, v30, v31, v32, v33);
    }

    v22 = 0;
  }

  v34 = v22;
  return v22;
}

- (void)pageViewControllersDidChange
{
  v3 = [(BKBookViewController *)self experienceManager];
  [v3 presentingViewControllerDidChangeLayout:self];
}

- (void)bookSectionChanged:(id)a3
{
  v6 = a3;
  v4 = [(BKBookViewController *)self assetViewControllerDelegate];

  if (v4)
  {
    v5 = [(BKBookViewController *)self bookPositionProcessor];
    [v5 emitter:self bookSectionChanged:v6];
  }
}

- (void)bookMilestoneReached:(int64_t)a3
{
  v5 = [(BKBookViewController *)self assetViewControllerDelegate];

  if (v5)
  {
    v6 = [(BKBookViewController *)self bookPositionProcessor];
    [v6 emitter:self bookMilestoneReached:a3];
  }
}

- (void)bookPositionChanged:(id)a3
{
  v6 = a3;
  v4 = [(BKBookViewController *)self assetViewControllerDelegate];

  if (v4)
  {
    v5 = [(BKBookViewController *)self bookPositionProcessor];
    [v5 emitter:self bookPositionChanged:v6];
  }
}

- (BOOL)isOnLastPage
{
  v3 = [(BKBookViewController *)self currentPages];
  v5 = v4;
  if (([(BKBookViewController *)self layout]& 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    v5 = 2;
  }

  v6 = [(BKBookViewController *)self pageCountIncludingUpsell];
  if (v3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v9 = v6 >= v3 && v6 - v3 < v5;
  v10 = v6 != 0x7FFFFFFFFFFFFFFFLL && v9;
  return v6 && v10;
}

- (BOOL)inLiveResize
{
  v2 = [(BKBookViewController *)self assetViewControllerDelegate];
  v3 = [v2 inLiveResize];

  return v3;
}

- (void)readingLocationChanged
{
  if (![(BKBookViewController *)self section]&& +[BCAugmentedExperienceManager endOfBookExperienceFeatureEnabled])
  {
    v3 = [(BKBookViewController *)self book];
    v4 = [v3 sampleContent];
    if ([v4 BOOLValue])
    {
      goto LABEL_4;
    }

    v5 = [(BKBookViewController *)self isRotationInProgress];

    if ((v5 & 1) == 0)
    {
      [(BKBookViewController *)self currentPages];
      [(BKBookViewController *)self layout];
      if (![(BKBookViewController *)self isOnLastPage])
      {
        v7 = [(BKBookViewController *)self visibleCFIRange];
        v3 = v7;
        if (!v7)
        {
          [(BKBookViewController *)self bookSectionChanged:0];
          goto LABEL_5;
        }

        v8 = [v7 headCFI];
        v4 = [BCEPubBookPosition positionWithCFI:v8];

        v9 = [v3 tailCFI];
        v10 = [BCEPubBookPosition positionWithCFI:v9];

        v11 = [BCBookSection bookSectionWithStartPosition:v4 endPosition:v10];
        [(BKBookViewController *)self bookSectionChanged:v11];

LABEL_4:
LABEL_5:

        goto LABEL_9;
      }

      [(BKBookViewController *)self bookMilestoneReached:2];
    }
  }

LABEL_9:
  [(BKBookViewController *)self writeAnnotationsToWebProcessPlugin];
  v6 = [(BKBookViewController *)self searchResult];

  if (v6)
  {
    v12 = [(BKBookViewController *)self searchResult];
    [(BKBookViewController *)self highlightSearchResult:v12];
  }
}

- (void)didPurchaseWithProductProfile:(id)a3 completion:(id)a4
{
  v6 = a4;
  if ([a3 isPreorder])
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_4B964;
    v9[3] = &unk_1E3438;
    v9[4] = self;
    v10 = v6;
    dispatch_async(&_dispatch_main_q, v9);
  }

  else
  {
    v7 = objc_retainBlock(v6);
    v8 = v7;
    if (v7)
    {
      (*(v7 + 2))(v7);
    }
  }
}

- (void)setAssetIsPreordered:(id)a3
{
  v4 = a3;
  v5 = [(BKBookViewController *)self book];
  [v5 setIsPreorder:v4];
}

- (void)_performScrollTest:(id)a3 completionHandler:(id)a4
{
  v4 = objc_retainBlock(a4);
  if (v4)
  {
    v5 = v4;
    v4[2]();
    v4 = v5;
  }
}

- (void)releaseViews
{
  [(BKBookViewController *)self stopFetchingBookmarks];
  [(AENotePopoverEditorController *)self->_noteEditor setDelegate:0];
  noteEditor = self->_noteEditor;
  self->_noteEditor = 0;

  [(AEHighlightColorEditorController *)self->_colorEditor setDelegate:0];
  colorEditor = self->_colorEditor;
  self->_colorEditor = 0;

  v5 = [(BKBookViewController *)self activityViewController];

  if (v5)
  {
    [(BKBookViewController *)self dismissCurrentPopoverAnimated:0];
  }

  v6.receiver = self;
  v6.super_class = BKBookViewController;
  [(BKViewController *)&v6 releaseViews];
}

- (void)cleanupPopovers
{
  [(BKBookViewController *)self setBrightnessController:0];
  [(BKBookViewController *)self setAudioController:0];
  v3.receiver = self;
  v3.super_class = BKBookViewController;
  [(BKViewController *)&v3 cleanupPopovers];
}

- (void)dealloc
{
  v3 = +[BCAudioMuxingCoordinator sharedInstance];
  [v3 removeAudioMuxingObserver:self];

  [(BKBookViewController *)self releaseViews];
  [(BKViewController *)self hideOverlayViewControllerWithCompletion:0];
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self];

  v5 = [(BKBookViewController *)self paginationController];
  [v5 cancelPagination];

  [(BKBookViewController *)self setPaginationController:0];
  [(BKBookViewController *)self setBook:0];
  [(BKBookViewController *)self p_releaseDictionary];
  [(BKBookViewController *)self _cleanupFootnoteViewController];
  [(BKPageNavigationViewController *)self->_pageNavigationViewController setDelegate:0];
  [(BKSearchViewController *)self->_searchViewController setSearchDelegate:0];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [(NSMutableDictionary *)self->_contentViewControllers allValues];
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v13 + 1) + 8 * v10) setDelegate:0];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  v11 = [(BKExpandedContentViewController *)self->_expandedContentViewController delegate];

  if (v11 == self)
  {
    [(BKExpandedContentViewController *)self->_expandedContentViewController setDelegate:0];
  }

  [(BKUpsell *)self->_upsellContentViewController setDelegate:0];
  [(BKBookViewController *)self stopReadAloud];
  [(BKBookViewController *)self stopSoundtrack];
  [(IMAVPlayer *)self->_readPlayer setDelegate:0];
  [(IMPerformSelectorProxy *)self->_performSelectorProxy teardown];
  [(BKActionController *)self->_actionController setDelegate:0];
  v12.receiver = self;
  v12.super_class = BKBookViewController;
  [(BKViewController *)&v12 dealloc];
}

- (void)didReceiveMemoryWarning
{
  [(BKBookViewController *)self clearInactiveContentViewControllers];
  v3.receiver = self;
  v3.super_class = BKBookViewController;
  [(BKBookViewController *)&v3 didReceiveMemoryWarning];
}

- (void)willMoveToParentViewController:(id)a3
{
  v7.receiver = self;
  v7.super_class = BKBookViewController;
  [(BKBookViewController *)&v7 willMoveToParentViewController:a3];
  hoverInteraction = self->_hoverInteraction;
  if (hoverInteraction)
  {
    v5 = [(BCUIHoverInteraction *)hoverInteraction view];
    [v5 removeInteraction:self->_hoverInteraction];

    v6 = self->_hoverInteraction;
    self->_hoverInteraction = 0;
  }
}

- (void)didMoveToParentViewController:(id)a3
{
  v4.receiver = self;
  v4.super_class = BKBookViewController;
  [(BKBookViewController *)&v4 didMoveToParentViewController:a3];
  [(BKBookViewController *)self _updateHoverInteraction];
}

- (void)_updateHoverInteraction
{
  if (!self->_hoverInteraction)
  {
    v3 = [(BKBookViewController *)self navigationController];
    v4 = [v3 view];

    if (v4)
    {
      v5 = [BCUIHoverInteraction alloc];
      v6 = [(BKBookViewController *)self view];
      v7 = [v5 initWithDelegate:self view:v6];
      hoverInteraction = self->_hoverInteraction;
      self->_hoverInteraction = v7;

      v9 = [(BKBookViewController *)self navigationController];
      v10 = [v9 view];
      [v10 addInteraction:self->_hoverInteraction];

      [(BKBookViewController *)self rebuildHoverRegions];
    }
  }
}

- (void)viewDidLoad
{
  [(BKBookViewController *)self updateUIForSmartInvert];
  v9.receiver = self;
  v9.super_class = BKBookViewController;
  [(BKBookViewController *)&v9 viewDidLoad];
  if ((BUIsRunningTests() & 1) == 0)
  {
    v3 = +[UIMenuSystem mainSystem];
    [v3 setNeedsRebuild];
  }

  [(BKBookViewController *)self _updateHoverInteraction];
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 addObserver:self selector:"handleVoiceOverStatusChanged:" name:UIAccessibilityVoiceOverStatusDidChangeNotification object:0];

  v5 = +[NSNotificationCenter defaultCenter];
  [v5 addObserver:self selector:"handleSwitchControlStatusChanged:" name:UIAccessibilitySwitchControlStatusDidChangeNotification object:0];

  v6 = +[NSNotificationCenter defaultCenter];
  [v6 addObserver:self selector:"handleInvertColorsStatusChanged:" name:UIAccessibilityInvertColorsStatusDidChangeNotification object:0];

  v7 = +[UIDevice currentDevice];
  if ([v7 orientation] - 3 >= &dword_0 + 2)
  {
    v8 = 1;
  }

  else
  {
    v8 = 2;
  }

  [(BKBookViewController *)self setLastAnalyticsDeviceOrientationReported:v8];
}

- (int64_t)themeInterfaceStyle
{
  v2 = [(BKBookViewController *)self theme];
  if ([v2 shouldInvertContent])
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  return v3;
}

- (void)viewIsAppearing:(BOOL)a3
{
  v3 = a3;
  v5 = _AEBookPluginsLifeCycleLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = v6;
    v8 = [(BKBookViewController *)self book];
    v9 = [v8 assetLogID];
    *buf = 138543618;
    v18 = v6;
    v19 = 2114;
    v20 = v9;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "viewWillAppear BVC:%{public}@ logID:%{public}@", buf, 0x16u);
  }

  v16.receiver = self;
  v16.super_class = BKBookViewController;
  [(BKBookViewController *)&v16 viewIsAppearing:v3];
  v10 = +[BCThemeCoordinator shared];
  [v10 addObserver:self];

  v11 = +[NSNotificationCenter defaultCenter];
  [v11 addObserver:self selector:"storeChangedNotification:" name:kAEStoreEnabledChangedNotification object:0];

  [(BKBookViewController *)self startFetchingBookmarks];
  [(BKBookViewController *)self updateBookmarkButton:0];
  v12 = +[NSUserDefaults standardUserDefaults];
  self->_autoTurn = [v12 BOOLForKey:BKReadAloudAutoPageTurn[0]];

  v13 = +[NSUserDefaults standardUserDefaults];
  v14 = [v13 objectForKey:@"soundtrackState"];

  if (v14)
  {
    self->_isPlayingSoundTrack = [v14 BOOLValue];
  }

  else
  {
    self->_isPlayingSoundTrack = 1;
  }

  if ([(BKBookViewController *)self bkaxNeedsPersistentControls])
  {
    [(BKBookViewController *)self setControlsVisible:1 animated:1];
  }

  v15 = [(BKBookViewController *)self displaySleepController];
  [v15 userInteractionOccurred];
}

- (void)viewDidAppear:(BOOL)a3
{
  v13.receiver = self;
  v13.super_class = BKBookViewController;
  [(BKBookViewController *)&v13 viewDidAppear:a3];
  [(BKBookViewController *)self setSafeToShowToolbarItems:1];
  v4 = +[UIApplication sharedApplication];
  v5 = [v4 launchedToTest];

  if ((v5 & 1) == 0)
  {
    [(BKBookViewController *)self promptForRemoteResourcesIfNecessary];
  }

  v6 = [(BKBookViewController *)self openingLocation];

  if (v6)
  {
    v7 = [(BKBookViewController *)self openingLocation];
    [(BKBookViewController *)self recordedJumpToLocation:v7 animated:0 completion:0];
  }

  v8 = [(BKBookViewController *)self assetViewControllerDelegate];

  if (v8)
  {
    +[IMSleepManager startSleepTimer];
  }

  v9 = +[AETestDriver shared];
  [v9 bookViewDidAppear:self];

  [(BKBookViewController *)self updateProgressKitForNewLocation];
  [(BKBookViewController *)self bc_analyticsVisibilityUpdateSubtree];
  [(BKBookViewController *)self _updateHoverInteraction];
  v10 = [(BKBookViewController *)self view];
  v11 = [v10 window];
  v12 = [(BKBookViewController *)self displaySleepController];
  [v12 setWindow:v11];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = BKBookViewController;
  [(BKBookViewController *)&v7 viewWillDisappear:a3];
  v4 = +[BCThemeCoordinator shared];
  [v4 removeObserver:self];

  [(BKBookViewController *)self cancelPendingHidePageControls];
  [(BKBookViewController *)self pauseReadAloud];
  +[IMSleepManager stopSleepTimer];
  v5 = +[NSNotificationCenter defaultCenter];
  [v5 removeObserver:self name:kAEStoreEnabledChangedNotification object:0];

  v6 = +[AETestDriver shared];
  [v6 bookViewWillDisappear:self];

  [(BKBookViewController *)self bc_analyticsVisibilitySubtreeWillDisappear];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = BKBookViewController;
  [(BKBookViewController *)&v4 viewDidDisappear:a3];
  [(BKBookViewController *)self bc_analyticsVisibilitySubtreeDidDisappear];
}

- (BOOL)shouldAutorotate
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [(BKBookViewController *)self contentViewControllers];
  v3 = [v2 allValues];

  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        if ([*(*(&v10 + 1) + 8 * i) currentlyHighlighting])
        {
          v8 = 0;
          goto LABEL_11;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v8 = 1;
LABEL_11:

  return v8;
}

- (unint64_t)supportedInterfaceOrientations
{
  if (isPad())
  {
    return 30;
  }

  else
  {
    return 26;
  }
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  [(BKBookViewController *)self setRotationInProgress:1];
  if (isPad())
  {
    [(AENotePopoverEditorController *)self->_noteEditor hide];
  }

  [(AEHighlightColorEditorController *)self->_colorEditor hide];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_4C98C;
  v16[3] = &unk_1E2A60;
  v16[4] = self;
  [v7 animateAlongsideTransition:0 completion:v16];
  v15.receiver = self;
  v15.super_class = BKBookViewController;
  [(BKBookViewController *)&v15 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  v8 = [(BKBookViewController *)self referenceLibraryViewController];
  v9 = v8;
  if (v8 && [v8 _isInPopoverPresentation])
  {
    [(BKBookViewController *)self dismissCurrentPopoverAnimated:0];
  }

  v10 = [(BKBookViewController *)self translationViewController];
  v11 = v10;
  if (v10 && [v10 _isInPopoverPresentation])
  {
    [(BKBookViewController *)self dismissCurrentPopoverAnimated:0];
  }

  v12 = [(BKBookViewController *)self footnoteController];
  v13 = v12;
  if (v12 && [v12 _isInPopoverPresentation])
  {
    [(BKBookViewController *)self dismissCurrentPopoverAnimated:0];
  }

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_4C994;
  v14[3] = &unk_1E2A60;
  v14[4] = self;
  [v7 animateAlongsideTransition:0 completion:v14];
}

- (void)_traitCollectionDidChange:(id)a3 previousTraitCollection:(id)a4
{
  [(BKBookViewController *)self createPaginationControllerIfNeeded:1, a4];
  if (([(BKBookViewController *)self im_isCompactWidth]& 1) == 0)
  {
    v5 = [(BKBookViewController *)self footnoteController];
    [v5 dismissCurrentPopover];
  }
}

- (void)presentViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v5 = a4;
  v8 = a5;
  v9 = a3;
  v10 = [(BKBookViewController *)self assetViewControllerDelegate];
  [v10 assetViewController:self presentViewController:v9 animated:v5 completion:v8];
}

- (void)setBook:(id)a3
{
  v13 = a3;
  currentBookCacheItem = self->_currentBookCacheItem;
  self->_currentBookCacheItem = 0;

  [(BKBookViewController *)self setPaginationController:0];
  if (self->_bookMoc)
  {
    v6 = +[NSNotificationCenter defaultCenter];
    [v6 removeObserver:self name:NSManagedObjectContextDidSaveNotification object:0];

    [(NSManagedObjectContext *)self->_bookMoc refreshObject:self->_book mergeChanges:0];
    book = self->_book;
    self->_book = 0;

    if ([(NSManagedObjectContext *)self->_bookMoc hasChanges])
    {
      [(NSManagedObjectContext *)self->_bookMoc save:0];
    }

    [(NSManagedObjectContext *)self->_bookMoc reset];
    bookMoc = self->_bookMoc;
    self->_bookMoc = 0;
  }

  v9 = v13;
  if (v13)
  {
    objc_storeStrong(&self->_book, a3);
    [(BKViewController *)self setLayoutDirection:[(BKBookViewController *)self pageProgressionDirection]== 1];
    self->_layout = [(BKBookViewController *)self validLayoutForBook:v13 desiredLayout:[(BKBookViewController *)self defaultLayoutToUse]];
    v10 = [(AEBookInfo *)self->_book managedObjectContext];
    v11 = self->_bookMoc;
    self->_bookMoc = v10;

    v12 = +[NSNotificationCenter defaultCenter];
    [v12 addObserver:self selector:"managedObjectContextDidSave:" name:NSManagedObjectContextDidSaveNotification object:0];

    [(BKBookViewController *)self restoreSavedLocation];
    v9 = v13;
  }
}

- (void)setPageCountIncludingUpsell:(int64_t)a3
{
  if (self->_pageCountIncludingUpsell != a3)
  {
    self->_pageCountIncludingUpsell = a3;
    [(BKBookViewController *)self pageCountDidUpdate];

    [(BKBookViewController *)self updateTouchBarController];
  }
}

- (void)createPaginationControllerIfNeeded:(BOOL)a3
{
  v3 = a3;
  v5 = [(BKBookViewController *)self paginationController];

  if (!v5)
  {
    v9 = [BKPaginationController newPaginationControllerForBook:self->_book delegate:self];
    [(BKBookViewController *)self setPaginationController:?];
    v6 = +[NSNotificationCenter defaultCenter];
    v7 = BKPaginationCompleteForBookNotification;
    v8 = [(BKBookViewController *)self paginationController];
    [v6 addObserver:self selector:"_paginationComplete:" name:v7 object:v8];

    if (v3)
    {
      [(BKBookViewController *)self paginationUpdateRequired];
    }
  }
}

- (void)_setAudioSessionMix:(BOOL)a3
{
  if (a3)
  {
    v3 = [(BKBookViewController *)self book];
    v4 = [v3 hasMediaOverlayElements];

    if (v4)
    {
      v5 = +[AVAudioSession sharedInstance];
      v11 = 0;
      v6 = [v5 setCategory:AVAudioSessionCategoryPlayback error:&v11];
      v7 = v11;

      if (v6)
      {
        v8 = +[AVAudioSession sharedInstance];
        v10 = v7;
        [v8 setActive:1 error:&v10];
        v9 = v10;

        v7 = v9;
      }
    }
  }
}

- (BEProtocolCacheItem)currentBookCacheItem
{
  currentBookCacheItem = self->_currentBookCacheItem;
  if (!currentBookCacheItem)
  {
    v4 = [(BKBookViewController *)self book];
    v5 = [v4 cacheItem];
    v6 = self->_currentBookCacheItem;
    self->_currentBookCacheItem = v5;

    currentBookCacheItem = self->_currentBookCacheItem;
  }

  return currentBookCacheItem;
}

- (void)open:(BOOL)a3
{
  v3 = a3;
  v5 = [(BKBookViewController *)self assetViewControllerDelegate];

  if (v5)
  {
    v6 = [(BKBookViewController *)self assetViewControllerDelegate];
    [v6 assetViewController:self willOpen:v3];
  }

  [(BKBookViewController *)self _setAudioSessionMix:1];
  v7 = [(BKBookViewController *)self contentViewControllers];
  v8 = [v7 allValues];
  [v8 makeObjectsPerformSelector:"resume"];

  [(BKBookViewController *)self updateUIForSmartInvert];
}

- (void)openToLocation:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v11 = a3;
  [(BKBookViewController *)self setOpeningLocation:v11];
  v6 = [(BKBookViewController *)self book];
  [v11 updateOrdinalForBookInfo:v6];

  if ([(BKBookViewController *)self isVisible])
  {
    if ([(BKBookViewController *)self section])
    {
      [(BKBookViewController *)self setResumeLocation:v11];
      [(BKBookViewController *)self setSection:0 animated:v4 adjustScrollToReveal:0];
      [(BKBookViewController *)self setResumeLocation:0];
    }

    else if (![(BKBookViewController *)self isLocationOnCurrentPage:v11])
    {
      [(BKBookViewController *)self recordedJumpToLocation:v11 animated:v4 completion:0];
    }
  }

  else
  {
    [(BKBookViewController *)self setLocation:v11];
    v7 = [(BKBookViewController *)self assetViewControllerDelegate];

    if (v7)
    {
      v8 = [(BKBookViewController *)self assetViewControllerDelegate];
      [v8 assetViewController:self willOpen:v4];
    }

    [(BKBookViewController *)self _setAudioSessionMix:1];
  }

  v9 = [(BKBookViewController *)self contentViewControllers];
  v10 = [v9 allValues];
  [v10 makeObjectsPerformSelector:"resume"];
}

- (void)requestClose:(BOOL)a3
{
  v5 = +[AETestDriver shared];
  [v5 postEvent:kBETestDriverOpenAnimationStart sender:self];

  v6 = +[AETestDriver shared];
  [v6 postEvent:kBETestDriverOpenAnimationSetupStart sender:self];

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_4D20C;
  v7[3] = &unk_1E3ED8;
  v7[4] = self;
  v8 = a3;
  [(BKViewController *)self dismissCurrentPopoverWithCompletion:v7];
}

- (void)close:(BOOL)a3
{
  v3 = a3;
  v5 = [(BKBookViewController *)self contentData];
  [(BKBookViewController *)self setCachedContentData:v5];

  [(BKBookViewController *)self bookMilestoneReached:10];
  [(BKBookViewController *)self stopPlayingMedia:0];
  [(BKViewController *)self hideOverlayViewControllerWithCompletion:0];
  [(BKBookViewController *)self stopFetchingBookmarks];
  [(BKBookViewController *)self _setAudioSessionMix:0];
  [(BKBookViewController *)self saveStateClosing:1];
  [(BKBookViewController *)self stopSoundtrack];
  [(BKBookViewController *)self setReadAloudState:0];
  [(BKBookViewController *)self saveBook];
  v6 = [(AEBookInfo *)self->_book baseURL];
  v7 = [v6 absoluteString];
  v8 = [v7 lastPathComponent];
  [BKTextIndex removeTextIndexWithName:v8];

  v9 = [(BKBookViewController *)self contentViewControllers];
  v10 = [v9 allValues];
  [v10 makeObjectsPerformSelector:"suspend"];

  v11 = [(BKBookViewController *)self assetViewControllerDelegate];
  [v11 assetViewController:self willClose:v3];
}

- (void)assetViewControllerUpdateToolbarsAfterOpenAnimation
{
  v3 = [(BKBookViewController *)self shouldControlsBeVisibleOnOpen];

  [(BKBookViewController *)self setControlsVisible:v3 animated:1];
}

- (void)assetViewControllerUpdateToolbarsForOpenAnimation
{
  v3 = [(BKBookViewController *)self shouldControlsBeVisibleOnOpen];

  [(BKBookViewController *)self setControlsVisible:v3 animated:0];
}

- (BOOL)shouldControlsBeVisibleOnOpen
{
  v3 = [(BKBookViewController *)self controlsVisible];
  v4 = [(BKBookViewController *)self book];
  v5 = [v4 sampleContent];
  v6 = [v5 BOOLValue];

  if (v6)
  {
    v7 = +[BRCConfigurationManager sharedInstance];
    v8 = [v7 valueForKey:BRCBooksDefaultsKeyReadingExperienceSamplesShowChromeOnOpen fromNamespace:BRCBooksDefaultsNamespace];

    v3 |= [v8 BOOLValue];
  }

  return v3 & 1;
}

- (void)saveStateClosing:(BOOL)a3
{
  v3 = a3;
  if (a3)
  {
    v5 = _AEBookPluginsLifeCycleLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = objc_opt_class();
      v7 = v6;
      v8 = [(BKBookViewController *)self book];
      v9 = [v8 assetLogID];
      v10 = 138543618;
      v11 = v6;
      v12 = 2114;
      v13 = v9;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "SaveState while Closing BVC:%{public}@ logID:%{public}@", &v10, 0x16u);
    }
  }

  [(BKBookViewController *)self saveStateClosing:v3 suspending:0];
}

- (void)saveStateClosing:(BOOL)a3 suspending:(BOOL)a4
{
  v6 = [(BKBookViewController *)self book:a3];
  if (v6 && ([v6 isDeleted] & 1) == 0 && objc_msgSend(v6, "exists"))
  {
    v5 = [(BKBookViewController *)self savableLocation];
    if (v5)
    {
      [(BKBookViewController *)self saveReadingLocation:v5];
    }
  }

  [(BKBookViewController *)self setOpeningLocation:0];
}

- (BOOL)dismissShouldBegin:(id)a3
{
  v3 = a3;
  [v3 velocity];
  v5 = v4;
  [v3 velocity];
  if (v5 >= v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = [v3 proposedBeginState];
  }

  return v7;
}

- (void)saveBook
{
  v3 = [(BKBookViewController *)self book];
  v4 = [v3 managedObjectContext];
  v5 = [v4 hasChanges];

  if (v5)
  {
    v6 = [(BKBookViewController *)self book];
    v7 = [v6 managedObjectContext];
    v12 = 0;
    v8 = [v7 save:&v12];
    v9 = v12;

    if ((v8 & 1) == 0)
    {
      if (v9)
      {
        v10 = BCIMLog();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          *buf = 136315650;
          v14 = "[BKBookViewController saveBook]";
          v15 = 2080;
          v16 = "/Library/Caches/com.apple.xbs/Sources/Alder/ios/AEBookPlugins/Shared/Controllers/BKBookViewController.m";
          v17 = 1024;
          v18 = 1264;
          _os_log_impl(&dword_0, v10, OS_LOG_TYPE_INFO, "%s %s:%d", buf, 0x1Cu);
        }

        v11 = BCIMLog();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_0, v11, OS_LOG_TYPE_INFO, "[error description]", buf, 2u);
        }
      }
    }
  }
}

- (void)paginationCompleted
{
  [(BKBookViewController *)self updatePageCount];

  [(BKBookViewController *)self updateTouchBarController];
}

- (int64_t)pageCountExcludingUpsell
{
  v3 = [(BKBookViewController *)self pageCountIncludingUpsell];
  v4 = 0x7FFFFFFFFFFFFFFFLL;
  if (v3 != 0x7FFFFFFFFFFFFFFFLL)
  {
    return v3 - ([(BKBookViewController *)self upsellOrdinal]!= 0x7FFFFFFFFFFFFFFFLL);
  }

  return v4;
}

- (void)updatePageCount
{
  v3 = [(BKBookViewController *)self calculatePageCountExcludingUpsell];
  v4 = 0x7FFFFFFFFFFFFFFFLL;
  if (v3 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = v3;
    if ([(BKBookViewController *)self upsellOrdinal]== 0x7FFFFFFFFFFFFFFFLL)
    {
      v4 = v5;
    }

    else
    {
      v4 = v5 + 1;
    }
  }

  [(BKBookViewController *)self setPageCountIncludingUpsell:v4];
}

- (int64_t)calculatePageCountExcludingUpsell
{
  v3 = [(BKBookViewController *)self paginationController];

  if (!v3)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v4 = [(BKBookViewController *)self paginationController];
  v5 = [v4 pageTotal];

  return v5;
}

- (BOOL)hidesPageControlsOnOpen
{
  if ([(BKBookViewController *)self controlsVisible])
  {
    v2 = +[NSUserDefaults standardUserDefaults];
    if ([v2 BOOLForKey:BKBookHidePageControls[0]])
    {
      v3 = +[NSUserDefaults standardUserDefaults];
      v4 = [v3 BOOLForKey:BKBookDisableAutoHidePageControls[0]] ^ 1;
    }

    else
    {
      LOBYTE(v4) = 0;
    }
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (void)cancelPendingHidePageControls
{
  v3 = [(BKBookViewController *)self performSelectorProxy];
  [NSObject cancelPreviousPerformRequestsWithTarget:v3 selector:"hidePageControls:" object:self];
}

- (void)delayedHidePageControls
{
  [(BKBookViewController *)self cancelPendingHidePageControls];
  v3 = [(BKBookViewController *)self performSelectorProxy];
  [(BKBookViewController *)self hidesPageControlsOnOpenDelay];
  [v3 performSelector:"hidePageControls:" withObject:self afterDelay:?];
}

- (void)transitionDidFinish:(BOOL)a3
{
  if (a3 && [(BKBookViewController *)self hidesPageControlsOnOpen])
  {

    [(BKBookViewController *)self delayedHidePageControls];
  }
}

- (BKLocation)savableLocation
{
  v3 = [(BKBookViewController *)self currentLocation];
  v4 = [(BKBookViewController *)self savableLocationForLocation:v3];

  return v4;
}

- (id)savableLocationForLocation:(id)a3
{
  v4 = a3;
  if (([v4 ordinal] & 0x8000000000000000) != 0)
  {
    v6 = [(BKBookViewController *)self resumeLocation];
  }

  else
  {
    v5 = [v4 ordinal];
    if (v5 != [(BKBookViewController *)self upsellOrdinal])
    {
      goto LABEL_6;
    }

    v6 = [(BKBookViewController *)self pageLocationForPageNumber:[(BKBookViewController *)self pageCountExcludingUpsell]];
  }

  v7 = v6;

  v4 = v7;
LABEL_6:
  if (([v4 ordinal] & 0x8000000000000000) != 0)
  {

    v4 = 0;
  }

  return v4;
}

- (void)restoreSavedLocation
{
  v3 = _AEBookPluginsLifeCycleLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    v5 = v4;
    v6 = [(BKBookViewController *)self book];
    v7 = [v6 assetLogID];
    v10 = 138543618;
    v11 = v4;
    v12 = 2114;
    v13 = v7;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "restoreSavedLocation BVC:%{public}@ for logID:%{public}@ ", &v10, 0x16u);
  }

  v8 = [(BKBookViewController *)self book];
  v9 = [v8 readingLocation];
  [(BKBookViewController *)self setLocation:v9];
}

- (void)_promptToLoadExternalContent:(id)a3
{
  v4 = a3;
  v5 = AEBundle();
  v17 = [v5 localizedStringForKey:@"Allow Online Content?" value:&stru_1E7188 table:0];

  v6 = AEBundle();
  v7 = [v6 localizedStringForKey:@"This book needs to access online content value:or it may not display as the publisher intended." table:{&stru_1E7188, 0}];

  v8 = [UIAlertController alertControllerWithTitle:v17 message:v7 preferredStyle:1];
  v9 = AEBundle();
  v10 = [v9 localizedStringForKey:@"Don’t Allow" value:&stru_1E7188 table:0];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_4E07C;
  v20[3] = &unk_1E3F00;
  v11 = v4;
  v20[4] = self;
  v21 = v11;
  v12 = [UIAlertAction actionWithTitle:v10 style:1 handler:v20];
  [v8 addAction:v12];

  v13 = AEBundle();
  v14 = [v13 localizedStringForKey:@"Allow" value:&stru_1E7188 table:0];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_4E0D8;
  v18[3] = &unk_1E3F00;
  v18[4] = self;
  v19 = v11;
  v15 = v11;
  v16 = [UIAlertAction actionWithTitle:v14 style:0 handler:v18];
  [v8 addAction:v16];

  [(BKBookViewController *)self presentViewController:v8 animated:1 completion:0];
}

- (void)promptForRemoteResourcesIfNecessary
{
  if ([(BKBookViewController *)self hasRemoteResources])
  {
    v3 = +[BEDocumentExternalLoadApprovalCache sharedInstance];
    v4 = [(BKBookViewController *)self book];
    v5 = [v4 assetID];

    if (([v3 hasCachedLoadExternalContentApprovalForBookID:v5] & 1) == 0)
    {
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 3221225472;
      v6[2] = sub_4E228;
      v6[3] = &unk_1E3F28;
      v7 = v3;
      v8 = v5;
      [(BKBookViewController *)self _promptToLoadExternalContent:v6];
    }
  }
}

- (BOOL)hasRemoteResources
{
  if (self->_hasCheckedForRemoteResources)
  {
    hasRemoteResources = self->_hasRemoteResources;
  }

  else
  {
    self->_hasCheckedForRemoteResources = 1;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v4 = [(BKBookViewController *)self book];
    v5 = [v4 sortedDocuments];

    v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v15;
      while (2)
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v14 + 1) + 8 * i) manifestProperties];
          v11 = [v10 componentsSeparatedByString:@" "];
          v12 = [v11 containsObject:@"remote-resources"];

          if (v12)
          {
            hasRemoteResources = 1;
            goto LABEL_13;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    hasRemoteResources = 0;
LABEL_13:

    self->_hasRemoteResources = hasRemoteResources;
  }

  return hasRemoteResources & 1;
}

- (void)reloadExternalWebFrames
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [(BKBookViewController *)self contentViewControllers];
  v3 = [v2 allValues];

  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * v7);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v9 = v8;
          if ([v9 isContentLoaded])
          {
            [v9 reloadExternalWebFrames];
          }
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }
}

- (void)setTheme:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = BKBookViewController;
  v5 = [(BKBookViewController *)&v15 theme];

  if (v5 != v4)
  {
    v14.receiver = self;
    v14.super_class = BKBookViewController;
    [(BKBookViewController *)&v14 setTheme:v4];
    -[BKBookViewController setSelectionHighlightType:](self, "setSelectionHighlightType:", +[BKTextHighlightView bkTextHighlightTypeForIMTextHighlightType:](BKTextHighlightView, "bkTextHighlightTypeForIMTextHighlightType:", [v4 textHighlightType]));
  }

  v6 = dispatch_time(0, (*&BKBookViewControllerThemeTransitionDuration * 0.5 * 1000000000.0));
  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = sub_4E66C;
  v11 = &unk_1E3F50;
  v12 = self;
  v13 = v4;
  v7 = v4;
  dispatch_after(v6, &_dispatch_main_q, &v8);
  [(BKBookViewController *)self updateUIForSmartInvert:v8];
}

- (int)pageProgressionDirection
{
  v2 = [(BKBookViewController *)self book];
  v3 = [v2 bkPageProgressionDirection];

  return v3;
}

- (BOOL)isPageProgressionRTL
{
  v2 = [(BKBookViewController *)self book];
  v3 = [v2 isPageProgressionRTL];

  return v3;
}

- (void)clearInactiveContentViewControllers
{
  v3 = [(BKBookViewController *)self contentViewControllers];
  v4 = [v3 copy];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [v4 allKeys];
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [v4 objectForKey:v10];
        if (![v11 isViewLoaded] || (objc_msgSend(v11, "view"), v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "window"), v13 = objc_claimAutoreleasedReturnValue(), v13, v12, !v13))
        {
          [v11 setDelegate:0];
          [v11 removeFromParentViewController];
          v14 = [(BKBookViewController *)self contentViewControllers];
          [v14 removeObjectForKey:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }
}

- (void)storeChangedNotification:(id)a3
{
  if ([(BKBookViewController *)self upsellOrdinal]!= 0x7FFFFFFFFFFFFFFFLL)
  {

    [(BKBookViewController *)self updatePageCount];
  }
}

- (unint64_t)upsellOrdinal
{
  v3 = [(BKBookViewController *)self book];
  v4 = [v3 hasUpsellPage];

  if (!v4)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v5 = [(BKBookViewController *)self book];
  v6 = [v5 readingDocumentCount];

  return v6;
}

- (int64_t)upsellPageNumber
{
  if ([(BKBookViewController *)self upsellOrdinal]== 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  return [(BKBookViewController *)self pageCountIncludingUpsell];
}

- (BKUpsell)upsellContentViewController
{
  if ([(BKBookViewController *)self upsellOrdinal]== 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = 0;
  }

  else
  {
    if (!self->_upsellContentViewController)
    {
      v4 = [(BKBookViewController *)self book];
      v5 = [v4 sampleContent];
      v6 = [v5 BOOLValue];

      if (v6)
      {
        v7 = objc_alloc_init(BKSampleUpsellContentViewController);
        [(BKSampleUpsellContentViewController *)v7 setBuyDelegate:self];
      }

      else
      {
        v7 = objc_alloc_init(BKFinishedContentViewController);
      }

      upsellContentViewController = self->_upsellContentViewController;
      self->_upsellContentViewController = v7;

      v9 = [(BKBookViewController *)self book];
      [(BKUpsell *)self->_upsellContentViewController setBook:v9];

      [(BKUpsell *)self->_upsellContentViewController setOrdinal:[(BKBookViewController *)self upsellOrdinal]];
      [(BKUpsell *)self->_upsellContentViewController setDelegate:self];
    }

    v10 = [(BKBookViewController *)self book];
    v11 = [v10 sampleContent];
    v12 = [v11 BOOLValue];

    if (v12)
    {
      objc_opt_class();
      v13 = BUDynamicCast();
      v14 = [(BKBookViewController *)self assetViewControllerDelegate];
      v15 = [v14 assetViewControllerProductProfile:self];
      [v13 setProfileFuture:v15];
    }

    v3 = self->_upsellContentViewController;
  }

  return v3;
}

- (void)resume:(id)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_4EBE0;
  v3[3] = &unk_1E2BD0;
  v3[4] = self;
  [(BKViewController *)self dismissCurrentPopoverWithCompletion:v3];
}

- (void)_resume
{
  [(BKBookViewController *)self setSection:0 animated:1 adjustScrollToReveal:0];
  v3 = [(BKBookViewController *)self resumeLocation];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_4ECD4;
  v4[3] = &unk_1E2BD0;
  v4[4] = self;
  [(BKBookViewController *)self jumpToLocation:v3 animated:1 completion:v4];
}

- (void)showTOC:(id)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_4EDA0;
  v3[3] = &unk_1E2BD0;
  v3[4] = self;
  [(BKViewController *)self dismissCurrentPopoverWithCompletion:v3];
}

- (void)toggleShowPageControls:(id)a3
{
  v4 = [(BKBookViewController *)self expandedContentViewController];
  v5 = [v4 isVisible];

  if ((v5 & 1) == 0)
  {
    v6 = [(BKBookViewController *)self controlsVisible]^ 1;

    [(BKBookViewController *)self setControlsVisible:v6 animated:1];
  }
}

- (void)setStatusBarHidden:(BOOL)a3 animated:(BOOL)a4 animations:(id)a5 completion:(id)a6
{
  v7 = a4;
  v9 = a5;
  v10 = a6;
  v11 = [(BKBookViewController *)self view];
  v12 = [v11 window];

  if (v7)
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_4F0DC;
    v15[3] = &unk_1E3F78;
    v17 = v12 != 0;
    v15[4] = self;
    v16 = v9;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_4F144;
    v13[3] = &unk_1E3FA0;
    v14 = v10;
    [UIView animateWithDuration:4 delay:v15 options:v13 animations:0.15 completion:0.0];
  }

  else
  {
    if (v12)
    {
      [(BKBookViewController *)self setNeedsStatusBarAppearanceUpdate];
      [(BKBookViewController *)self setNeedsUpdateOfHomeIndicatorAutoHidden];
    }

    if (v9)
    {
      v9[2](v9);
    }

    if (v10)
    {
      v10[2](v10);
    }
  }
}

- (BOOL)prefersStatusBarHidden
{
  if (([(BKBookViewController *)self im_isCompactHeight]& 1) != 0)
  {
    return 1;
  }

  else
  {
    return ![(BKBookViewController *)self controlsVisible];
  }
}

- (void)setControlsVisible:(BOOL)a3 animated:(BOOL)a4 animations:(id)a5 completion:(id)a6
{
  v7 = a4;
  v8 = a3;
  v10 = a5;
  v11 = a6;
  self->_controlsEnabledViaHover = 0;
  [(BKBookViewController *)self cancelPendingHidePageControls];
  if (v8 || ![(BKBookViewController *)self bkaxNeedsPersistentControls]|| [(BKBookViewController *)self bkaxAccessibilityUserIsRequestingControlsVisibilityToggle])
  {
    self->_controlsVisible = v8;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_4F2E4;
    v12[3] = &unk_1E2E08;
    v13 = v10;
    [(BKBookViewController *)self setStatusBarHidden:!v8 animated:v7 animations:v12 completion:v11];
    [(BKBookViewController *)self delayedSavePageControlVisibility];
    [(BKBookViewController *)self writeControlVisibilityStateToWebProcessPlugin];
  }
}

- (void)showBrightness:(id)a3
{
  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = sub_4F3D4;
  v11 = &unk_1E3F50;
  v12 = self;
  v13 = a3;
  v4 = v13;
  v5 = objc_retainBlock(&v8);
  v6 = [(BKBookViewController *)self brightnessController:v8];
  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = v5;
  }

  [(BKViewController *)self dismissCurrentPopoverWithCompletion:v7];
}

- (void)showAudio:(id)a3
{
  v6 = _NSConcreteStackBlock;
  v7 = 3221225472;
  v8 = sub_4F544;
  v9 = &unk_1E3F50;
  v10 = self;
  v11 = a3;
  v4 = v11;
  v5 = objc_retainBlock(&v6);
  [(BKViewController *)self dismissCurrentPopoverWithCompletion:v5, v6, v7, v8, v9, v10];
}

- (void)buy:(id)a3
{
  v4 = [(BKBookViewController *)self assetViewControllerDelegate];
  [v4 assetViewControllerRequestToBuy:self completion:0];
}

- (void)buyWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(BKBookViewController *)self assetViewControllerDelegate];
  v7 = v5;
  if (v5)
  {
    [v5 assetViewControllerRequestToBuy:self completion:v4];
  }

  else
  {
    v6 = objc_retainBlock(v4);

    if (v6)
    {
      (*(v6 + 2))(v6, 0, 0);
    }

    v4 = v6;
  }
}

- (void)presentAppearanceViewControllerFromItem:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_4F7F0;
  v4[3] = &unk_1E3F50;
  v5 = self;
  v6 = a3;
  v3 = v6;
  [(BKViewController *)v5 dismissCurrentPopoverWithCompletion:v4];
}

- (id)appearanceMenuItems
{
  v4 = @"BKAppearanceMenuItemBrightness";
  v2 = [NSArray arrayWithObjects:&v4 count:1];

  return v2;
}

- (void)setupAppearanceViewController
{
  if (!self->_appearanceViewController)
  {
    v3 = [objc_alloc(objc_opt_class()) initWithNibName:0 bundle:0];
    appearanceViewController = self->_appearanceViewController;
    self->_appearanceViewController = v3;

    v5 = [(BKBookViewController *)self appearanceMenuItems];
    [(BKAppearanceViewController *)self->_appearanceViewController setMenuItems:v5];

    v6 = [[UINavigationController alloc] initWithRootViewController:self->_appearanceViewController];
    appearanceNavigationController = self->_appearanceNavigationController;
    self->_appearanceNavigationController = v6;

    [(UINavigationController *)self->_appearanceNavigationController setNavigationBarHidden:1];
    v8 = [(BKBookViewController *)self theme];
    [(BKAppearanceViewController *)self->_appearanceViewController setTheme:v8];

    v9 = [(BKBookViewController *)self book];
    [(BKAppearanceViewController *)self->_appearanceViewController setBook:v9];

    [(BKAppearanceViewController *)self->_appearanceViewController setDelegate:self];
    [(BKAppearanceViewController *)self->_appearanceViewController setLayout:[(BKBookViewController *)self layout]];
    [(BKAppearanceViewController *)self->_appearanceViewController setAppearanceStyle:0];
    v10 = objc_opt_new();
    appearanceContainerViewController = self->_appearanceContainerViewController;
    self->_appearanceContainerViewController = v10;

    v12 = [(BKBookViewController *)self theme];
    [(IMViewController *)self->_appearanceContainerViewController setTheme:v12];

    [(IMViewController *)self->_appearanceContainerViewController addChildViewController:self->_appearanceNavigationController];
    v13 = [(IMViewController *)self->_appearanceContainerViewController view];
    [v13 bounds];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v22 = [(UINavigationController *)self->_appearanceNavigationController view];
    [v22 setFrame:{v15, v17, v19, v21}];

    v23 = [(IMViewController *)self->_appearanceContainerViewController view];
    v24 = [(UINavigationController *)self->_appearanceNavigationController view];
    [v23 addSubview:v24];

    [(BKAppearanceViewController *)self->_appearanceViewController preferredContentSize];
    [(IMViewController *)self->_appearanceContainerViewController setPreferredContentSize:?];
    v25 = [(BKBookViewController *)self onlySupportsScrollingLayout]^ 1;
    v26 = self->_appearanceViewController;

    [(BEAppearanceViewController *)v26 setScrollSwitchEnabled:v25];
  }
}

- (void)handleAppearanceViewControllerDismissal
{
  [(BKAppearanceViewController *)self->_appearanceViewController setDelegate:0];
  appearanceViewController = self->_appearanceViewController;
  self->_appearanceViewController = 0;

  appearanceNavigationController = self->_appearanceNavigationController;
  self->_appearanceNavigationController = 0;

  appearanceContainerViewController = self->_appearanceContainerViewController;
  self->_appearanceContainerViewController = 0;

  v6 = [(BKBookViewController *)self paginationController];
  [v6 resume];
}

- (void)appearanceViewController:(id)a3 didChangeLayout:(unint64_t)a4
{
  v6 = a3;
  v7 = [(BKBookViewController *)self book];
  v8 = [(BKBookViewController *)self validLayoutForBook:v7 desiredLayout:a4];

  v9 = +[BAEventReporter sharedReporter];
  v10 = [(BKBookViewController *)self ba_effectiveAnalyticsTracker];
  v11 = [(BKBookViewController *)self readingSessionData];
  v12 = [(BKBookViewController *)self contentData];
  v13 = [v6 style];

  [v13 fontSize];
  [v9 emitReadingScrollViewSettingChangeEventWithTracker:v10 readingSessionData:v11 contentData:v12 fontSize:v8 != 1 isOn:?];

  [(BKBookViewController *)self setLayout:v8];
}

- (void)appearanceViewController:(id)a3 didChangeFont:(id)a4
{
  v5 = a4;
  v9 = +[BAEventReporter sharedReporter];
  v6 = [(BKBookViewController *)self ba_effectiveAnalyticsTracker];
  v7 = [(BKBookViewController *)self readingSessionData];
  v8 = [(BKBookViewController *)self contentData];
  [v9 emitReadingFontChangeEventWithTracker:v6 readingSessionData:v7 contentData:v8 fontName:v5];
}

- (void)appearanceViewController:(id)a3 didChangeFontSize:(double)a4
{
  v10 = +[BAEventReporter sharedReporter];
  v6 = [(BKBookViewController *)self ba_effectiveAnalyticsTracker];
  v7 = [(BKBookViewController *)self readingSessionData];
  v8 = [(BKBookViewController *)self contentData];
  *&v9 = a4;
  [v10 emitReadingFontSizeChangeEventWithTracker:v6 readingSessionData:v7 contentData:v8 fontSize:v9];
}

- (void)appearanceViewController:(id)a3 didChangeAutoNightMode:(BOOL)a4 previousValue:(BOOL)a5
{
  if (a4 != a5)
  {
    v6 = a4;
    v11 = +[BAEventReporter sharedReporter];
    v8 = [(BKBookViewController *)self ba_effectiveAnalyticsTracker];
    v9 = [(BKBookViewController *)self readingSessionData];
    v10 = [(BKBookViewController *)self contentData];
    [v11 emitReadingAutoNightSettingChangeEventWithTracker:v8 readingSessionData:v9 contentData:v10 isOn:v6];
  }
}

- (void)appearanceViewController:(id)a3 didChangeTheme:(unint64_t)a4
{
  v9 = BABackgroundColorDataFromBCAppearanceStyle();
  v5 = +[BAEventReporter sharedReporter];
  v6 = [(BKBookViewController *)self ba_effectiveAnalyticsTracker];
  v7 = [(BKBookViewController *)self readingSessionData];
  v8 = [(BKBookViewController *)self contentData];
  [v5 emitReadingBackgroundColorChangeEventWithTracker:v6 readingSessionData:v7 contentData:v8 backgroundColorData:v9];
}

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  v6 = a4;
  v14.receiver = self;
  v14.super_class = BKBookViewController;
  v7 = [(BKBookViewController *)&v14 canPerformAction:a3 withSender:v6];
  if (!sel_isEqual(a3, "copy:"))
  {
    if (sel_isEqual(a3, "books_showContent:"))
    {
      if (v7)
      {
        v8 = [(BKBookViewController *)self canShowContent];
        goto LABEL_21;
      }
    }

    else if (sel_isEqual(a3, "books_pageForward:"))
    {
      if (v7)
      {
        v8 = [(BKBookViewController *)self canGoToNextPage];
        goto LABEL_21;
      }
    }

    else if (sel_isEqual(a3, "books_pageBackward:"))
    {
      if (v7)
      {
        v8 = [(BKBookViewController *)self canGoToPreviousPage];
        goto LABEL_21;
      }
    }

    else if (sel_isEqual(a3, "books_chapterLeft:") || sel_isEqual(a3, "books_chapterRight:") || sel_isEqual(a3, "books_chapterForward:") || sel_isEqual(a3, "books_chapterBackward:") || sel_isEqual(a3, "books_chapterStart:") || sel_isEqual(a3, "books_chapterEnd:"))
    {
      if (v7)
      {
        v8 = [(BKBookViewController *)self canNavigateByChapter];
        goto LABEL_21;
      }
    }

    else if (sel_isEqual(a3, "books_toggleBookmark:"))
    {
      if ([(BKBookViewController *)self bookCanBeBookmarked])
      {
        v8 = [(BKBookViewController *)self shouldBookmarkButtonsBeEnabled];
        goto LABEL_21;
      }
    }

    else if (sel_isEqual(a3, "books_search:"))
    {
      if (v7 && [(BKBookViewController *)self canSearch])
      {
        v10 = [(BKBookViewController *)self _searchQueryFromSender:v6];
        v9 = [v10 length] != 0;

        goto LABEL_36;
      }
    }

    else
    {
      if (!sel_isEqual(a3, "books_find:"))
      {
        if (sel_isEqual(a3, "books_findNext:"))
        {
          if (!v7)
          {
            goto LABEL_35;
          }

          v11 = [(BKBookViewController *)self nextSearchResult];
        }

        else
        {
          isEqual = sel_isEqual(a3, "books_findPrevious:");
          if ((isEqual & v7) != 1)
          {
            v9 = !isEqual & v7;
            goto LABEL_36;
          }

          v11 = [(BKBookViewController *)self previousSearchResult];
        }

        v9 = v11 != 0;

        goto LABEL_36;
      }

      if (v7)
      {
        v8 = [(BKBookViewController *)self canSearch];
        goto LABEL_21;
      }
    }

LABEL_35:
    v9 = 0;
    goto LABEL_36;
  }

  if (!v7)
  {
    goto LABEL_35;
  }

  v8 = [(BKBookViewController *)self canCopy];
LABEL_21:
  v9 = v8;
LABEL_36:

  return v9;
}

- (void)books_search:(id)a3
{
  v4 = a3;
  v5 = [(BKBookViewController *)self _searchQueryFromSender:v4];
  [(BKBookViewController *)self showSearchWithString:v5 sender:v4];
}

- (void)books_findNext:(id)a3
{
  v4 = [(BKBookViewController *)self nextSearchResult];
  [(BKBookViewController *)self revealSearchResult:v4 animated:1];
}

- (void)books_findPrevious:(id)a3
{
  v4 = [(BKBookViewController *)self previousSearchResult];
  [(BKBookViewController *)self revealSearchResult:v4 animated:1];
}

- (void)resetKeyWindow
{
  v3 = [(BKBookViewController *)self view];
  v2 = [v3 window];
  [v2 makeKeyAndVisible];
}

- (BOOL)canShowContent
{
  if ([(BKBookViewController *)self section])
  {
    return 1;
  }

  v4 = [(BKViewController *)self currentOverlayViewController];
  v3 = v4 != 0;

  return v3;
}

- (BOOL)canSearch
{
  v3 = [(BKBookViewController *)self searchButtonItem];
  v4 = v3;
  v5 = (!v3 || [v3 isEnabled]) && -[BKBookViewController section](self, "section") == 0;

  return v5;
}

- (id)_contentControllerThatHasCopyableSelection
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = [(BKBookViewController *)self contentViewControllers:0];
  v3 = [v2 allValues];

  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v13 != v6)
      {
        objc_enumerationMutation(v3);
      }

      objc_opt_class();
      v8 = BUDynamicCast();
      if ([v8 canCopyContent])
      {
        v9 = [v8 selectedText];
        v10 = [v9 length];

        if (v10)
        {
          break;
        }
      }

      if (v5 == ++v7)
      {
        v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_10:
    v8 = 0;
  }

  return v8;
}

- (BOOL)canCopy
{
  v2 = [(BKBookViewController *)self _contentControllerThatHasCopyableSelection];
  v3 = v2 != 0;

  return v3;
}

- (void)copy:(id)a3
{
  v3 = [(BKBookViewController *)self _contentControllerThatHasCopyableSelection];
  [v3 copyContent];
}

- (id)keyCommands
{
  v20.receiver = self;
  v20.super_class = BKBookViewController;
  v3 = [(BKBookViewController *)&v20 keyCommands];
  v4 = [v3 mutableCopy];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = +[NSMutableArray array];
  }

  v7 = v6;

  v8 = AEBundle();
  v9 = [v8 localizedStringForKey:@"Next Page" value:&stru_1E7188 table:0];
  if ([(BKBookViewController *)self isPageProgressionRTL])
  {
    v10 = UIKeyInputLeftArrow;
  }

  else
  {
    v10 = UIKeyInputRightArrow;
  }

  v11 = [UIKeyCommand commandWithTitle:v9 image:0 action:"books_pageForward:" input:v10 modifierFlags:0 propertyList:0];

  [v11 setWantsPriorityOverSystemBehavior:1];
  [v11 setAllowsAutomaticMirroring:0];
  [v7 addObject:v11];
  v12 = [UIKeyCommand keyCommandWithInput:@" " modifierFlags:0 action:"books_pageForward:"];
  [v12 setWantsPriorityOverSystemBehavior:1];
  [v12 setAttributes:{objc_msgSend(v12, "attributes") | 4}];
  [v7 addObject:v12];
  v13 = [UIKeyCommand keyCommandWithInput:UIKeyInputPageDown modifierFlags:0 action:"books_pageForward:"];
  [v13 setWantsPriorityOverSystemBehavior:1];
  [v13 setAttributes:{objc_msgSend(v13, "attributes") | 4}];
  [v7 addObject:v13];

  v14 = AEBundle();
  v15 = [v14 localizedStringForKey:@"Previous Page" value:&stru_1E7188 table:0];
  if ([(BKBookViewController *)self isPageProgressionRTL])
  {
    v16 = UIKeyInputRightArrow;
  }

  else
  {
    v16 = UIKeyInputLeftArrow;
  }

  v17 = [UIKeyCommand commandWithTitle:v15 image:0 action:"books_pageBackward:" input:v16 modifierFlags:0 propertyList:0];

  [v17 setWantsPriorityOverSystemBehavior:1];
  [v17 setAllowsAutomaticMirroring:0];
  [v7 addObject:v17];
  v18 = [UIKeyCommand keyCommandWithInput:UIKeyInputPageUp modifierFlags:0 action:"books_pageBackward:"];
  [v18 setWantsPriorityOverSystemBehavior:1];
  [v18 setAttributes:{objc_msgSend(v18, "attributes") | 4}];
  [v7 addObject:v18];

  return v7;
}

- (void)validateCommand:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = BKBookViewController;
  [(BKBookViewController *)&v11 validateCommand:v4];
  v5 = [v4 action];
  v6 = [(BKBookViewController *)self isPageProgressionRTL];
  if (sel_isEqual(v5, "books_chapterLeft:"))
  {
    v7 = AEBundle();
    if (v6)
    {
LABEL_3:
      v8 = @"Next Chapter";
      goto LABEL_7;
    }

LABEL_6:
    v8 = @"Previous Chapter";
    goto LABEL_7;
  }

  if (sel_isEqual(v5, "books_chapterRight:"))
  {
    v7 = AEBundle();
    if ((v6 & 1) == 0)
    {
      goto LABEL_3;
    }

    goto LABEL_6;
  }

  if (!sel_isEqual(v5, "books_toggleBookmark:"))
  {
    goto LABEL_8;
  }

  v10 = [(BKBookViewController *)self isPageBookmarked];
  v7 = AEBundle();
  if (v10)
  {
    v8 = @"Remove Bookmark";
  }

  else
  {
    v8 = @"Bookmark Page";
  }

LABEL_7:
  v9 = [v7 localizedStringForKey:v8 value:&stru_1E7188 table:0];
  [v4 setTitle:v9];

LABEL_8:
}

- (void)books_chapterLeft:(id)a3
{
  v4 = a3;
  if ([(BKBookViewController *)self isPageProgressionRTL])
  {
    [(BKBookViewController *)self books_chapterForward:v4];
  }

  else
  {
    [(BKBookViewController *)self books_chapterBackward:v4];
  }
}

- (void)books_chapterRight:(id)a3
{
  v4 = a3;
  if ([(BKBookViewController *)self isPageProgressionRTL])
  {
    [(BKBookViewController *)self books_chapterBackward:v4];
  }

  else
  {
    [(BKBookViewController *)self books_chapterForward:v4];
  }
}

- (void)savePageControlVisibility
{
  v3 = [(BKBookViewController *)self view];
  v4 = [v3 window];

  if (v4 && [(BKBookViewController *)self shouldSavePageControlVisibility])
  {
    v6 = +[NSUserDefaults standardUserDefaults];
    v5 = [(BKBookViewController *)self controlsVisible];
    [v6 setBool:v5 ^ 1 forKey:BKBookHidePageControls[0]];
  }
}

- (void)cancelPendingSavePageControlVisibility
{
  v2 = [(BKBookViewController *)self performSelectorProxy];
  [NSObject cancelPreviousPerformRequestsWithTarget:v2 selector:"savePageControlVisibility" object:0];
}

- (void)delayedSavePageControlVisibility
{
  [(BKBookViewController *)self cancelPendingSavePageControlVisibility];
  v3 = [(BKBookViewController *)self performSelectorProxy];
  [(BKBookViewController *)self savePageControlVisibilityDelay];
  [v3 performSelector:"savePageControlVisibility" withObject:0 afterDelay:?];
}

- (void)clearSearchResult
{
  [(BKBookViewController *)self setSearchResult:0];
  v4 = [(BKBookViewController *)self contentViewControllers];
  v3 = [v4 allValues];
  [v3 makeObjectsPerformSelector:"clearSearchLocation" withObject:0];
}

- (void)clearSelection
{
  [(BKBookViewController *)self setSearchResult:0];
  v4 = [(BKBookViewController *)self contentViewControllers];
  v3 = [v4 allValues];
  [v3 makeObjectsPerformSelector:"clearSelection" withObject:0];
}

- (void)clearSelectedAnnotation
{
  v3 = [(BKBookViewController *)self contentViewControllers];
  v2 = [v3 allValues];
  [v2 makeObjectsPerformSelector:"clearSelectedAnnotation"];
}

- (void)clearCurrentHighlighting
{
  v3 = [(BKBookViewController *)self contentViewControllers];
  v2 = [v3 allValues];
  [v2 makeObjectsPerformSelector:"clearCurrentHighlighting"];
}

- (void)forceReload
{
  v3 = [(BKBookViewController *)self currentLocation];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(BKBookViewController *)self contentViewControllers];
  v5 = [v4 allValues];

  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = v10;
          if ([v11 isContentLoaded])
          {
            [v11 reload];
          }
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  [(BKPaginationController *)self->_paginationController releasePaginationInfo];
  [(BKBookViewController *)self setPageCountIncludingUpsell:0x7FFFFFFFFFFFFFFFLL];
  [(BKBookViewController *)self paginationUpdateRequired];
  [(BKBookViewController *)self jumpToLocation:v3 animated:0 completion:0];
}

- (void)forceRepagination
{
  [(BKPaginationController *)self->_paginationController releasePaginationInfo];
  [(BKBookViewController *)self setPageCountIncludingUpsell:0x7FFFFFFFFFFFFFFFLL];

  [(BKBookViewController *)self paginationUpdateRequired];
}

- (void)paginationUpdateRequired
{
  v3 = [(BKBookViewController *)self navigationHistory];
  v4 = [(BKBookViewController *)self paginationController];
  [v4 setNavigationHistory:v3];

  v5 = [(BKBookViewController *)self paginationController];
  [v5 repaginateWithStyle:0 geometry:0];
}

- (id)titleForChapterAtPageNumber:(int64_t)a3
{
  v3 = 0;
  if (a3 && a3 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = [(BKBookViewController *)self paginationController];
    v7 = [v6 pageTotal];

    if (v7 >= a3)
    {
      v12 = [(BKBookViewController *)self paginationController];
      v14 = [v12 titleForChapterAtPageNumber:a3];
    }

    else
    {
      v8 = [(BKBookViewController *)self book];
      v9 = [v8 sampleContent];
      v10 = [v9 BOOLValue];

      v11 = AEBundle();
      v12 = v11;
      if (v10)
      {
        v13 = @"Buy Book";
      }

      else
      {
        v13 = @"End of Book";
      }

      v14 = [v11 localizedStringForKey:v13 value:&stru_1E7188 table:0];
    }

    v3 = v14;
  }

  return v3;
}

- (void)managedObjectContextDidSave:(id)a3
{
  v4 = a3;
  v5 = [v4 object];
  v6 = self->_bookMoc;
  v7 = v6;
  if (v6)
  {
    v8 = v6 == v5;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    v9 = [(NSManagedObjectContext *)v6 persistentStoreCoordinator];
    v10 = [(NSManagedObjectContext *)v5 persistentStoreCoordinator];

    if (v9 == v10)
    {
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_51544;
      v14[3] = &unk_1E3F50;
      v15 = v7;
      v16 = v4;
      v11 = objc_retainBlock(v14);
      if (v11)
      {
        if (+[NSThread isMainThread])
        {
          (v11[2])(v11);
        }

        else
        {
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_51550;
          block[3] = &unk_1E2E08;
          v13 = v11;
          dispatch_async(&_dispatch_main_q, block);
        }
      }
    }
  }
}

- (id)_searchResultOffsetByDistance:(int64_t)a3
{
  v5 = [(BKBookViewController *)self searchResult];
  v6 = [(BKBookViewController *)self searchViewControllerIfLoaded];
  v7 = [v6 searchController];
  v8 = [v7 results];

  v9 = 0;
  if (v5 && v8)
  {
    v10 = [v8 indexOfObject:v5];
    if (v10 == 0x7FFFFFFFFFFFFFFFLL || (v11 = v10 + a3, v11 < 0) || v11 >= [v8 count])
    {
      v9 = 0;
    }

    else
    {
      v9 = [v8 objectAtIndexedSubscript:v11];
    }
  }

  return v9;
}

- (int64_t)currentPageNumber
{
  result = [(BKBookViewController *)self currentPages];
  if (result != 0x7FFFFFFFFFFFFFFFLL)
  {
    return v3 + result - 1;
  }

  return result;
}

- (id)documentForLocation:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BKBookViewController *)self book];
    v7 = [v5 path];

    v8 = [v6 documentAtPath:v7];
  }

  else
  {
    v6 = [(BKBookViewController *)self book];
    v8 = [v6 documentWithOrdinal:{objc_msgSend(v4, "ordinal")}];
  }

  return v8;
}

- (_NSRange)currentPages
{
  v2 = 0;
  v3 = 0;
  result.length = v3;
  result.location = v2;
  return result;
}

- (void)turnToPageNumber:(int64_t)a3 animated:(BOOL)a4
{
  [(BKBookViewController *)self dismissCurrentPopover:a3];

  [(BKBookViewController *)self didChangeLocationClosing:0 suspending:0];
}

- (void)jumpToLocation:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v5 = objc_retainBlock(a5);
  if (v5)
  {
    v6 = v5;
    v5[2]();
    v5 = v6;
  }
}

- (void)recordedJumpToLocation:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  v28 = v9;
  if (v8)
  {
    v10 = [(BKBookViewController *)self documentForLocation:v8];
    v11 = v10;
    if (v10)
    {
      v12 = [v10 documentOrdinal];
      if ([v12 integerValue] == -1)
      {
LABEL_6:

LABEL_7:
        v14 = [(BKBookViewController *)self book];
        v15 = [v14 urlForDocument:v11];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v16 = v8;
          v17 = [v16 anchor];

          if (v17)
          {
            v18 = [v16 anchor];
            v19 = [v15 URLByAppendingPathComponent:v18];

            v15 = v19;
          }
        }

        v20 = [BKExpandedContentResource resourceForURL:v15];
        v21 = [(BKBookViewController *)self book];
        v22 = [v21 cacheItem];
        [v20 setCacheItem:v22];

        [(BKBookViewController *)self showExpandedContentForResource:v20 atLocation:v8 completion:v28];
LABEL_19:

        goto LABEL_20;
      }

      v13 = [v11 nonlinearElement];
      if ([v13 BOOLValue])
      {

        goto LABEL_6;
      }

      v24 = [v11 documentOrdinal];

      if (!v24)
      {
        goto LABEL_7;
      }
    }

    if (self->_isReading)
    {
      v25 = [(BKBookViewController *)self currentLocation];
      v26 = [v8 isEqual:v25];

      if (v26)
      {
        [(BKBookViewController *)self startReadAloud];
      }
    }

    v27 = [(BKBookViewController *)self _normalizedLocation:v8];

    [(BKBookViewController *)self recordJumpFromCurrentLocation];
    [(BKBookViewController *)self jumpToLocation:v27 animated:v6 completion:v28];
    v8 = v27;
    goto LABEL_19;
  }

  v23 = objc_retainBlock(v9);
  v8 = v23;
  if (v23)
  {
    (*(v23 + 2))(v23);
  }

LABEL_20:
}

- (id)locationForPath:(id)a3 fragment:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7 && [BKNavigationInfo isExcludedFromSampleHash:v7])
  {
    v8 = [[BKLocation alloc] initWithOrdinal:[(BKBookViewController *)self upsellOrdinal]];
  }

  else
  {
    v9 = [(BKBookViewController *)self book];
    v10 = [v9 documentsWithPath:v6 sortBy:@"documentOrdinal" limit:0];
    v11 = [v10 lastObject];

    v12 = [v11 documentOrdinal];
    v13 = [v12 integerValue];

    v8 = [[BKAnchorLocation alloc] initWithOrdinal:v13 andAnchor:v7];
  }

  return v8;
}

- (id)_normalizedLocation:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = BUDynamicCast();
  v6 = v4;
  if (v5)
  {
    v7 = _AECaptureLocationLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v39 = v4;
    }

    v8 = [v5 path];
    v9 = [v8 length];

    if (v9)
    {
      v10 = _AECaptureLocationLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_INFO, "Had path - using locationForPath:fragment:", buf, 2u);
      }

      v11 = [v5 path];
      v12 = [v5 anchor];
      v6 = [(BKBookViewController *)self locationForPath:v11 fragment:v12];
      v13 = v4;
      goto LABEL_26;
    }

    v11 = [v5 anchor];
    v14 = _AECaptureLocationLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v39 = v11;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_INFO, "We had no path - Attempting to parse the anchor: %{public}@", buf, 0xCu);
    }

    v37 = 0;
    v13 = [NSRegularExpression regularExpressionWithPattern:@"(\\d+)" options:1 error:&v37];
    v12 = v37;
    if (v12 || !v11)
    {
      v25 = _AECaptureLocationLog();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v39 = v11;
        v40 = 2114;
        v41 = v12;
        _os_log_impl(&dword_0, v25, OS_LOG_TYPE_ERROR, "Failed to create regular expression to get page number from %{public}@ - %{public}@", buf, 0x16u);
      }
    }

    else
    {
      v15 = [v13 firstMatchInString:v11 options:2 range:{0, objc_msgSend(v11, "length")}];
      v16 = [v15 range];
      v18 = [v11 substringWithRange:{v16, v17}];
      v19 = [v18 integerValue];
      v20 = _AECaptureLocationLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        [NSNumber numberWithInteger:v19];
        v21 = v35 = self;
        *buf = 138543618;
        v39 = v18;
        v40 = 2114;
        v41 = v21;
        _os_log_impl(&dword_0, v20, OS_LOG_TYPE_DEFAULT, "Parsing page - Captured substring: %{public}@ and got value: %{public}@", buf, 0x16u);

        self = v35;
      }

      if (v19 != 0x7FFFFFFFFFFFFFFFLL)
      {
        if ([v11 containsString:@"page("]
        {
          v22 = _AECaptureLocationLog();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            [NSNumber numberWithInteger:v19];
            v24 = v23 = self;
            *buf = 138543362;
            v39 = v24;
            _os_log_impl(&dword_0, v22, OS_LOG_TYPE_DEFAULT, "Parsing page - %{public}@", buf, 0xCu);

            self = v23;
          }

          goto LABEL_25;
        }

        if ([v11 containsString:@"chapter("]
        {
          v36 = self;
          v31 = [(BKBookViewController *)self paginationController];
          v32 = [v31 pageRangeForChapterAtIndex:v19 - 1];

          v22 = _AECaptureLocationLog();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            v33 = [NSNumber numberWithInteger:v19];
            v34 = [NSNumber numberWithUnsignedInteger:v32];
            *buf = 138543618;
            v39 = v33;
            v40 = 2114;
            v41 = v34;
            _os_log_impl(&dword_0, v22, OS_LOG_TYPE_DEFAULT, "Parsing chapter - Captured chapterNumber: %{public}@ and got startPage: %{public}@", buf, 0x16u);
          }

          v19 = v32;
          self = v36;
          goto LABEL_25;
        }

        v22 = _AECaptureLocationLog();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v39 = v11;
          v27 = v22;
          v28 = 12;
          goto LABEL_23;
        }

        goto LABEL_24;
      }
    }

    v22 = _AECaptureLocationLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v39 = v13;
      v40 = 2114;
      v41 = v11;
      v27 = v22;
      v28 = 22;
LABEL_23:
      _os_log_impl(&dword_0, v27, OS_LOG_TYPE_ERROR, v26, buf, v28);
    }

LABEL_24:
    v19 = 0;
LABEL_25:

    v29 = [(BKBookViewController *)self paginationController];
    v6 = [v29 pageLocationForPageNumber:v19];

LABEL_26:
  }

  return v6;
}

- (void)goToPath:(id)a3 fragment:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v7 = [(BKBookViewController *)self locationForPath:a3 fragment:a4];
  [(BKBookViewController *)self recordedJumpToLocation:v7 animated:v5 completion:0];
}

- (void)jumpBackAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(BKBookViewController *)self navigationHistory];
  v6 = [v5 isAtTopOfStack];

  if (v6)
  {
    [(BKBookViewController *)self recordJumpFromCurrentLocation];
  }

  v7 = [(BKBookViewController *)self navigationHistory];
  [v7 rewind];

  v8 = [(BKBookViewController *)self navigationHistory];
  v10 = [v8 currentEntity];

  v9 = [v10 location];
  [(BKBookViewController *)self jumpToLocation:v9 animated:v3 completion:0];
}

- (void)jumpAheadAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(BKBookViewController *)self navigationHistory];
  v12 = [v5 nextEntity];

  v6 = v12;
  if (v12)
  {
    v7 = [(BKBookViewController *)self navigationHistory];
    [v7 skip];

    v8 = [(BKBookViewController *)self navigationHistory];
    v9 = [v8 isAtTopOfStack];

    if (v9)
    {
      v10 = [(BKBookViewController *)self navigationHistory];
      [v10 truncateHistory];
    }

    v11 = [v12 location];
    [(BKBookViewController *)self jumpToLocation:v11 animated:v3 completion:0];

    v6 = v12;
  }
}

- (BOOL)_currentChapterInfo:(id *)a3 uniqueID:(id *)a4
{
  v7 = [(BKBookViewController *)self currentPages];
  v9 = [(BKBookViewController *)self pageNumberFromRange:v7, v8];
  if (v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v10 = v9;
  v11 = [(BKBookViewController *)self paginationController];
  v12 = [v11 numberOfChapters];

  v13 = [(BKBookViewController *)self paginationController];
  v14 = v13;
  if (!v12)
  {
    v18 = [v13 pageTotal];

    if (v18 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v20 = [(BKBookViewController *)self paginationController];
      *a4 = [v20 hrefForPageNumber:v10];

      v17 = [(BKBookViewController *)self paginationController];
      v21 = [v17 physicalPageTitlesForPageNumber:v10];
      *a3 = [v21 firstObject];

      goto LABEL_8;
    }

    return 0;
  }

  v15 = [v13 chapterIndexForPageNumber:v10];

  if (v15 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v16 = [(BKBookViewController *)self paginationController];
  *a4 = [v16 hrefForChapterAtPageNumber:v10];

  v17 = [(BKBookViewController *)self paginationController];
  *a3 = [v17 titleForChapterAtPageNumber:v10];
LABEL_8:

  return 1;
}

- (void)updateProgressKitForNewLocation
{
  v12 = 0;
  v13 = 0;
  v3 = [(BKBookViewController *)self _currentChapterInfo:&v13 uniqueID:&v12];
  v4 = v13;
  v5 = v12;
  if (v3)
  {
    v6 = +[BCProgressKitController sharedController];
    v7 = [(BKBookViewController *)self book];
    v8 = [v7 assetID];
    [v6 activateChapterForBook:v8 chapterID:v5 title:v4 completion:0];
  }

  v9 = +[BCProgressKitController sharedController];
  v10 = [(BKBookViewController *)self book];
  v11 = [v10 assetID];
  [v9 updateBookProgress:v11 completion:0];
}

- (void)writeAnnotationsToWebProcessPlugin
{
  v3 = [(BKBookViewController *)self visiblePageBookmarks];
  v4 = [(BKBookViewController *)self visiblePageHighlights];
  v27 = [AEAnnotation dictionaryRepresentationsForAnnotations:v4];
  v5 = +[NSMutableArray array];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v6 = [(BKBookViewController *)self contentViewControllers];
  v7 = [v6 allValues];

  v8 = [v7 countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v8)
  {
    v9 = v8;
    v23 = v4;
    v24 = v3;
    v10 = 0;
    v11 = *v34;
    v12 = &OBJC_IVAR___BKThumbnailBookViewController__tipContextName;
    v25 = v7;
    v26 = *v34;
    do
    {
      v13 = 0;
      v28 = v9;
      do
      {
        if (*v34 != v11)
        {
          objc_enumerationMutation(v7);
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v14 = v10;
          v15 = v12;
          objc_opt_class();
          v16 = BUDynamicCast();
          v29 = 0u;
          v30 = 0u;
          v31 = 0u;
          v32 = 0u;
          v17 = v27;
          v18 = [v17 countByEnumeratingWithState:&v29 objects:v37 count:16];
          if (v18)
          {
            v19 = v18;
            v20 = *v30;
            do
            {
              for (i = 0; i != v19; i = i + 1)
              {
                if (*v30 != v20)
                {
                  objc_enumerationMutation(v17);
                }

                v22 = [v16 objectForMatchingAnnotation:{*(*(&v29 + 1) + 8 * i), v23}];
                if (v22)
                {
                  [v5 addObject:v22];
                }
              }

              v19 = [v17 countByEnumeratingWithState:&v29 objects:v37 count:16];
            }

            while (v19);
          }

          v10 = v16;
          v7 = v25;
          v11 = v26;
          v12 = v15;
          v9 = v28;
        }

        ++v13;
      }

      while (v13 != v9);
      v9 = [v7 countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v9);

    if (!v10)
    {
      v4 = v23;
      v3 = v24;
      goto LABEL_24;
    }

    v3 = v24;
    v7 = [AEAnnotation dictionaryRepresentationsForAnnotations:v24];
    [v10 writeAnnotationsToWebProcessPlugin:v7 andHighlights:v5];
    v4 = v23;
  }

  else
  {
    v10 = 0;
  }

LABEL_24:
}

- (void)writeControlVisibilityStateToWebProcessPlugin
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [(BKBookViewController *)self contentViewControllers:0];
  v4 = [v3 allValues];

  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          objc_opt_class();
          v9 = BUDynamicCast();
          [v9 writeControlVisibilityStateToWebProcessPlugin:self->_controlsVisible];

          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

- (void)didChangeLocationClosing:(BOOL)a3 suspending:(BOOL)a4
{
  if (!a3)
  {
    [(BKBookViewController *)self setUserNavigated:1];
  }

  v6 = [(BKBookViewController *)self book];
  v7 = [v6 sampleContent];
  v8 = [v7 BOOLValue];

  if ((v8 & 1) == 0)
  {
    v9 = [(BKBookViewController *)self readingLocationHighwaterMark];

    if (!v9)
    {
      v10 = [(BKBookViewController *)self book];
      v11 = [(BKBookViewController *)self annotationProvider];
      v12 = [v11 uiManagedObjectContext];
      v13 = [v10 readingLocationAnnotation:0 moc:v12];
      [v13 readingProgressHighWaterMark];
      v14 = [NSNumber numberWithFloat:?];
      [(BKBookViewController *)self setReadingLocationHighwaterMark:v14];
    }

    v15 = [(BKBookViewController *)self readingProgress];
    if (v15)
    {
      v16 = [(BKBookViewController *)self assetViewControllerDelegate];
      v25 = BCAssetReadingProgressKey;
      v26 = v15;
      v17 = [NSDictionary dictionaryWithObjects:&v26 forKeys:&v25 count:1];
      [v16 assetViewController:self assetPropertyChanged:v17];

      v18 = [(BKBookViewController *)self readingLocationHighwaterMark];
      [v18 floatValue];
      v20 = v19;
      v21 = kAEAnnotationReadingLocationSignificantHighwaterMark;

      if (v20 < v21)
      {
        [(BKBookViewController *)self setReadingLocationHighwaterMark:v15];
        [v15 floatValue];
        if (v22 > v21)
        {
          v23 = [(BKBookViewController *)self assetViewControllerDelegate];
          [v23 assetViewControllerSignificantReadingLocationChange:self];
        }
      }
    }

    if (!a4)
    {
      [(BKBookViewController *)self updateProgressKitForNewLocation];
    }

    [(BKBookViewController *)self readingLocationChanged];
  }

  [(BKBookViewController *)self updateTouchBarController];
  v24 = [(BKBookViewController *)self displaySleepController];
  [v24 userInteractionOccurred];
}

- (void)setLocation:(id)a3
{
  v5 = a3;
  objc_storeStrong(&self->_location, a3);
  v6 = _AEBookPluginsLifeCycleLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = v7;
    v9 = [(BKBookViewController *)self book];
    v10 = [v9 assetLogID];
    v11 = 138543874;
    v12 = v7;
    v13 = 2114;
    v14 = v5;
    v15 = 2114;
    v16 = v10;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "SetLocation BVC:%{public}@.  Location:%{public}@ logID:%{public}@ ", &v11, 0x20u);
  }
}

- (id)pageLocationForPageNumber:(int64_t)a3
{
  v4 = [(BKBookViewController *)self paginationController];
  v5 = [v4 pageLocationForPageNumber:a3];

  return v5;
}

- (BKLocation)resumeLocation
{
  resumeLocation = self->_resumeLocation;
  if (resumeLocation)
  {
    v3 = resumeLocation;
  }

  else
  {
    v3 = [(BKBookViewController *)self currentLocation];
  }

  return v3;
}

- (void)saveReadingLocation:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  if (v4)
  {
    v5 = [(BKBookViewController *)self book];
    if (v5)
    {
      v6 = [(BKBookViewController *)self book];
      if ([v6 isDeleted])
      {
      }

      else
      {
        v7 = [(BKBookViewController *)self userNavigated];

        if (v7)
        {
          v8 = [(BKBookViewController *)self book];
          v9 = [v8 readingLocation];

          v10 = [(BKBookViewController *)self reportedLocation];
          if (!v10 || (-[BKBookViewController reportedLocation](self, "reportedLocation"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v4 isEqual:v11], v11, v10, (v12 & 1) == 0))
          {
            [(BKBookViewController *)self setReportedLocation:v4];
            v13 = v4;

            v14 = _AEBookPluginsLifeCycleLog();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
            {
              v15 = [(BKBookViewController *)self book];
              v16 = [v15 databaseKey];
              v17 = [(BKBookViewController *)self book];
              v18 = [v17 assetLogID];
              *buf = 138543874;
              v27 = v13;
              v28 = 2112;
              v29 = v16;
              v30 = 2114;
              v31 = v18;
              _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "Saving location into global annotation:%{public}@ assetID:%@ logID:%{public}@", buf, 0x20u);
            }

            objc_initWeak(buf, self);
            v19 = [(BKBookViewController *)self book];
            v20 = _NSConcreteStackBlock;
            v21 = 3221225472;
            v22 = sub_53150;
            v23 = &unk_1E3FC8;
            objc_copyWeak(&v25, buf);
            v9 = v13;
            v24 = v9;
            [v19 setSingletonAnnotationType:3 location:v9 modificationHandler:&v20];

            objc_destroyWeak(&v25);
            objc_destroyWeak(buf);
          }

          [(BKBookViewController *)self setLocation:v9, v20, v21, v22, v23];
        }
      }
    }
  }
}

- (id)_currentReadingProgress
{
  v3 = [(BKBookViewController *)self pageCountIncludingUpsell];
  if (v3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = 0;
  }

  else
  {
    v5 = v3;
    if (v3 < 1)
    {
      v4 = &off_1F1870;
    }

    else
    {
      v7 = [(BKBookViewController *)self currentPages];
      v4 = 0;
      if (v7 != 0x7FFFFFFFFFFFFFFFLL && v6)
      {
        *&v8 = (v7 + v6 - 1) / v5;
        v4 = [NSNumber numberWithFloat:v8];
      }
    }
  }

  return v4;
}

- (void)isLocationVisible:(id)a3 completion:(id)a4
{
  v4 = objc_retainBlock(a4);
  if (v4)
  {
    v5 = v4;
    (*(v4 + 2))(v4, 0);
    v4 = v5;
  }
}

- (BOOL)isPageBookmarked
{
  v2 = [(BKBookViewController *)self visiblePageBookmarks];
  v3 = [v2 count] != 0;

  return v3;
}

- (BOOL)bookCanBeBookmarked
{
  if (isPad())
  {
    LOBYTE(v3) = 1;
  }

  else
  {
    v4 = [(BKBookViewController *)self book];
    v5 = [v4 sampleContent];
    v3 = [v5 BOOLValue] ^ 1;
  }

  return v3;
}

- (id)_allAnnotationsForType:(int)a3
{
  v5 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [(NSFetchedResultsController *)self->_pageBookmarksFRC fetchedObjects];
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        if ([v11 annotationType] == a3)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)_visibleAnnotationsForType:(int)a3
{
  v5 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [(NSFetchedResultsController *)self->_pageBookmarksFRC fetchedObjects];
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        v12 = objc_autoreleasePoolPush();
        if ([v11 annotationType] == a3 && -[BKBookViewController isAnnotationVisible:](self, "isAnnotationVisible:", v11))
        {
          [v5 addObject:v11];
        }

        objc_autoreleasePoolPop(v12);
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  return v5;
}

- (BOOL)isAnnotationVisible:(id)a3
{
  v3 = a3;
  v4 = [NSString stringWithFormat:@"%@: %s", @"Do not call method", "[BKBookViewController isAnnotationVisible:]"];
  v5 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v4 userInfo:0];
  v6 = v5;

  objc_exception_throw(v5);
}

- (void)bookmarkPage:(id)a3
{
  v4 = [[BAViewData alloc] initWithType:2 action:5 location:2];
  v5 = +[BAEventReporter sharedReporter];
  v6 = [(BKBookViewController *)self ba_effectiveAnalyticsTracker];
  v7 = [(BKBookViewController *)self contentDataForSearchViewController:0];
  [v5 emitAnnotationActionEventWithTracker:v6 contentData:v7 viewData:v4];

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_53888;
  v8[3] = &unk_1E2BD0;
  v8[4] = self;
  [(BKViewController *)self dismissCurrentPopoverWithCompletion:v8];
}

- (void)unbookmarkPage:(id)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_53AFC;
  v3[3] = &unk_1E2BD0;
  v3[4] = self;
  [(BKViewController *)self dismissCurrentPopoverWithCompletion:v3];
}

- (void)toggleBookmark:(id)a3
{
  v4 = a3;
  if ([(BKBookViewController *)self isPageBookmarked])
  {
    [(BKBookViewController *)self unbookmarkPage:v4];
  }

  else
  {
    [(BKBookViewController *)self bookmarkPage:v4];
  }

  [(BKBookViewController *)self updateBookmarkButton:1];
}

- (void)updateBookmarkButton:(BOOL)a3
{
  [(BKBookViewController *)self updateToolbarController];

  [(BKBookViewController *)self updateTouchBarController];
}

- (id)bookmarksFetchRequestForBook:(id)a3 moc:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc_init(NSFetchRequest);
  v8 = [v6 assetID];
  v9 = [AEAnnotation pageBookmarksPredicate:v8];

  v10 = [v6 assetID];
  v11 = [AEAnnotation predicateForGlobalAnnotationWithAssetID:v10];

  v12 = [v6 assetID];

  v13 = [AEAnnotation highlightsPredicate:v12];

  v14 = [NSCompoundPredicate alloc];
  v22[0] = v9;
  v22[1] = v11;
  v22[2] = v13;
  v15 = [NSArray arrayWithObjects:v22 count:3];
  v16 = [v14 initWithType:2 subpredicates:v15];

  [v7 setPredicate:v16];
  v17 = [NSEntityDescription entityForName:@"AEAnnotation" inManagedObjectContext:v5];

  [v7 setEntity:v17];
  v18 = [[NSSortDescriptor alloc] initWithKey:@"plLocationRangeStart" ascending:1];
  v21 = v18;
  v19 = [NSArray arrayWithObjects:&v21 count:1];
  [v7 setSortDescriptors:v19];

  return v7;
}

- (void)startFetchingBookmarks
{
  if (!self->_pageBookmarksFRC)
  {
    v3 = [(BKBookViewController *)self book];
    v4 = [v3 annotationProvider];
    v5 = [v4 uiManagedObjectContext];

    v6 = [(BKBookViewController *)self bookmarksFetchRequestForBook:v3 moc:v5];
    v7 = [[IMUbiquitousFetchedResultsController alloc] initWithFetchRequest:v6 managedObjectContext:v5 sectionNameKeyPath:0 cacheName:0];
    pageBookmarksFRC = self->_pageBookmarksFRC;
    self->_pageBookmarksFRC = v7;

    [(NSFetchedResultsController *)self->_pageBookmarksFRC setDelegate:self];
    v9 = self->_pageBookmarksFRC;
    v75 = 0;
    v10 = [(NSFetchedResultsController *)v9 performFetch:&v75];
    v11 = v75;
    v12 = v11;
    if (v10)
    {
      v63 = v11;
      v64 = v6;
      v65 = v3;
      v13 = [v3 assetID];
      v14 = [AEAnnotation predicateForGlobalAnnotationWithAssetID:v13];

      v15 = [(NSFetchedResultsController *)self->_pageBookmarksFRC fetchedObjects];
      v62 = v14;
      v16 = [v15 filteredArrayUsingPredicate:v14];

      v73 = 0u;
      v74 = 0u;
      v71 = 0u;
      v72 = 0u;
      v17 = v16;
      v18 = [v17 countByEnumeratingWithState:&v71 objects:v83 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = 0;
        v21 = *v72;
        do
        {
          for (i = 0; i != v19; i = i + 1)
          {
            if (*v72 != v21)
            {
              objc_enumerationMutation(v17);
            }

            v23 = *(*(&v71 + 1) + 8 * i);
            if (v20)
            {
              v24 = [*(*(&v71 + 1) + 8 * i) locationModificationDate];
              [v24 timeIntervalSinceReferenceDate];
              v26 = v25;
              v27 = [v20 locationModificationDate];
              [v27 timeIntervalSinceReferenceDate];
              v29 = v28;

              if (v26 <= v29)
              {
                continue;
              }
            }

            v30 = v23;

            v20 = v30;
          }

          v19 = [v17 countByEnumeratingWithState:&v71 objects:v83 count:16];
        }

        while (v19);
      }

      else
      {
        v20 = 0;
      }

      v69 = 0u;
      v70 = 0u;
      v67 = 0u;
      v68 = 0u;
      v31 = v17;
      v32 = [v31 countByEnumeratingWithState:&v67 objects:v82 count:16];
      if (v32)
      {
        v33 = v32;
        v34 = *v68;
        do
        {
          for (j = 0; j != v33; j = j + 1)
          {
            if (*v68 != v34)
            {
              objc_enumerationMutation(v31);
            }

            if (v20)
            {
              v36 = *(*(&v67 + 1) + 8 * j);
              if (v36 != v20)
              {
                [v36 setAnnotationDeleted:1];
              }
            }
          }

          v33 = [v31 countByEnumeratingWithState:&v67 objects:v82 count:16];
        }

        while (v33);
      }

      if ([v5 hasChanges])
      {
        v66 = 0;
        [v5 save:&v66];
        v37 = v66;
        if (v37)
        {
          v38 = BKMobileCloudSyncAnnotationsLog();
          if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
          {
            sub_1378CC();
          }
        }
      }

      v39 = [v20 location];
      if (v39 && (v40 = v39, [(BKBookViewController *)self openingLocation], v41 = objc_claimAutoreleasedReturnValue(), v41, v40, !v41))
      {
        v52 = _AEBookPluginsLifeCycleLog();
        v3 = v65;
        if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
        {
          v53 = [v20 location];
          v61 = [(BKBookViewController *)self book];
          v54 = [v61 databaseKey];
          v55 = [(BKBookViewController *)self book];
          v56 = [v55 assetLogID];
          *buf = 138543874;
          v77 = v53;
          v78 = 2112;
          v79 = v54;
          v80 = 2114;
          v81 = v56;
          _os_log_impl(&dword_0, v52, OS_LOG_TYPE_DEFAULT, "Restoring location from global annotation:%{public}@ for assetID:%@ logID:%{public}@", buf, 0x20u);
        }

        v57 = [v20 location];
        [(BKBookViewController *)self setLocation:v57];

        v58 = [(BKBookViewController *)self location];
        [(BKBookViewController *)self setReportedLocation:v58];

        [(BKBookViewController *)self setUserNavigated:0];
      }

      else
      {
        v3 = v65;
        if (!v20)
        {
          v42 = _AEBookPluginsLifeCycleLog();
          if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
          {
            v59 = [(BKBookViewController *)self book];
            v43 = [v59 databaseKey];
            v44 = [(BKBookViewController *)self book];
            v45 = [v44 assetLogID];
            *buf = 138412546;
            v77 = v43;
            v78 = 2114;
            v79 = v45;
            _os_log_impl(&dword_0, v42, OS_LOG_TYPE_DEFAULT, "%@ logID:%{public}@ No global annotation to restore from", buf, 0x16u);
          }
        }

        v46 = [(BKBookViewController *)self openingLocation];

        if (v46)
        {
          v47 = _AEBookPluginsLifeCycleLog();
          if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
          {
            v60 = [(BKBookViewController *)self book];
            v48 = [v60 databaseKey];
            v49 = [(BKBookViewController *)self book];
            v50 = [v49 assetLogID];
            v51 = [(BKBookViewController *)self openingLocation];
            *buf = 138412802;
            v77 = v48;
            v78 = 2114;
            v79 = v50;
            v80 = 2112;
            v81 = v51;
            _os_log_impl(&dword_0, v47, OS_LOG_TYPE_DEFAULT, "%@ logID:%{public}@ Have existing openingLocation: %@", buf, 0x20u);
          }
        }

        else
        {
          NSClassFromString(@"BKPictureBookViewController");
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [(BKBookViewController *)self setLocation:0];
          }
        }
      }

      v12 = v63;
      v6 = v64;
    }

    else
    {
      v20 = BKMobileCloudSyncAnnotationsLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_137864();
      }
    }
  }
}

- (void)stopFetchingBookmarks
{
  [(NSFetchedResultsController *)self->_pageBookmarksFRC setDelegate:0];
  pageBookmarksFRC = self->_pageBookmarksFRC;
  self->_pageBookmarksFRC = 0;
}

- (void)_updateLocationFromAnnotation:(id)a3
{
  v4 = a3;
  if (![(BKBookViewController *)self section])
  {
    v5 = [(BKBookViewController *)self openingLocation];

    if (v5)
    {
      v6 = BKMobileCloudSyncAnnotationsLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = [v4 annotationLocation];
        v8 = [(BKBookViewController *)self openingLocation];
        v22 = 138412546;
        v23 = v7;
        v24 = 2112;
        v25 = v8;
        _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Ignoring updated global location %@ because we have an openingLocation location: %@", &v22, 0x16u);
      }

      goto LABEL_21;
    }

    if ([(BKBookViewController *)self shouldAcceptLocationUpdateFromGlobalAnnotation:v4])
    {
      v9 = [(BKBookViewController *)self savableLocation];
      v10 = [v4 isLocationSame:v9];

      if (v10)
      {
        v6 = BKMobileCloudSyncAnnotationsLog();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v11 = [v4 annotationLocation];
          v22 = 138543362;
          v23 = v11;
          v12 = "_updateLocationFromAnnotation Ignoring updated location because it is the same as the current savable location %{public}@";
LABEL_14:
          _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, v12, &v22, 0xCu);
          goto LABEL_15;
        }
      }

      else
      {
        v14 = [v4 location];
        v15 = [(BKBookViewController *)self isLocationOnCurrentPage:v14];

        v6 = BKMobileCloudSyncAnnotationsLog();
        v16 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
        if ((v15 & 1) == 0)
        {
          if (v16)
          {
            v17 = [v4 annotationLocation];
            v22 = 138543362;
            v23 = v17;
            _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "_updateLocationFromAnnotation Jumping to location from annotation location: %{public}@", &v22, 0xCu);
          }

          v18 = _AEBookPluginsLifeCycleLog();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            v19 = [(BKBookViewController *)self book];
            v20 = [v19 assetLogID];
            v21 = [v4 annotationLocation];
            v22 = 138543618;
            v23 = v20;
            v24 = 2114;
            v25 = v21;
            _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "_updateLocationFromAnnotation logID:%{public}@ Jumping to location from annotation location: %{public}@", &v22, 0x16u);
          }

          v6 = [v4 location];
          [(BKBookViewController *)self recordedJumpToLocation:v6 animated:1 completion:0];
          goto LABEL_21;
        }

        if (v16)
        {
          v11 = [v4 annotationLocation];
          v22 = 138543362;
          v23 = v11;
          v12 = "_updateLocationFromAnnotation Ignoring updated location because it is already visible %{public}@";
          goto LABEL_14;
        }
      }
    }

    else
    {
      v6 = BKMobileCloudSyncAnnotationsLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [v4 annotationLocation];
        v11 = [(BKBookViewController *)self savableLocation];
        v22 = 138412546;
        v23 = v13;
        v24 = 2112;
        v25 = v11;
        _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Ignoring updated global location %@ because we have a newer local location: %@", &v22, 0x16u);

LABEL_15:
      }
    }

LABEL_21:
  }
}

- (void)controller:(id)a3 didChangeObject:(id)a4 atIndexPath:(id)a5 forChangeType:(unint64_t)a6 newIndexPath:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  if (self->_pageBookmarksFRC == v12)
  {
    if (a6 == 1)
    {
      [(BKBookViewController *)self setAnnotationChangeRequiresPaginationUpdate:1];
    }

    v16 = v13;
    v17 = [v16 annotationType];
    if (v17 == 1)
    {
      v18 = [v16 location];
      if (v18)
      {
        v19[0] = _NSConcreteStackBlock;
        v19[1] = 3221225472;
        v19[2] = sub_54B48;
        v19[3] = &unk_1E2C20;
        v19[4] = self;
        [(BKBookViewController *)self isLocationOnVisiblePages:v18 completion:v19];
      }

      else
      {
        [(BKBookViewController *)self updateBookmarkButton:1];
      }
    }

    else if (v17 == 3)
    {
      [(BKBookViewController *)self _updateLocationFromAnnotation:v16];
    }
  }
}

- (void)controllerDidChangeContent:(id)a3
{
  if ([(BKBookViewController *)self annotationChangeRequiresPaginationUpdate])
  {
    [(BKBookViewController *)self setAnnotationChangeRequiresPaginationUpdate:0];
    [(BKBookViewController *)self paginationUpdateRequired];
  }

  [(BKBookViewController *)self writeAnnotationsToWebProcessPlugin];

  [(BKBookViewController *)self _notifyBookmarkObservers];
}

- (void)scrubberTouchDown:(id)a3
{
  [(BKBookViewController *)self cancelPendingHidePageControls];
  v4 = [(BKBookViewController *)self currentPageNumber];

  [(BKBookViewController *)self setPageNumberBeforeScrubbing:v4];
}

- (void)scrub:(id)a3
{
  v4 = [a3 pageNumber];
  [(BKBookViewController *)self turnToPageNumber:v4 animated:1];
  [(BKBookViewController *)self emitScrubEventStartPosition:[(BKBookViewController *)self pageNumberBeforeScrubbing] endPosition:v4 totalLength:[(BKBookViewController *)self pageCountIncludingUpsell]];

  [(BKBookViewController *)self setPageNumberBeforeScrubbing:0x7FFFFFFFFFFFFFFFLL];
}

- (BOOL)touchBarWantsHistoryNav
{
  v2 = [(BKBookViewController *)self book];
  v3 = [v2 isFixedLayout];

  return v3 ^ 1;
}

- (int64_t)pageNumberForTouchBarPosition:(double)a3
{
  v5 = [(BKBookViewController *)self pageCountIncludingUpsell];
  result = 0x7FFFFFFFFFFFFFFFLL;
  if (v5 && v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(BKBookViewController *)self pagePositionForTouchBarPosition:a3];
    v8 = fmax(v7 * (v5 - 1) + 1.0, 1.0);
    if (v8 >= v5)
    {
      return v5;
    }

    return v8;
  }

  return result;
}

- (double)touchBarPositionForPageNumber:(int64_t)a3
{
  if (a3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return -1.0;
  }

  v5 = [(BKBookViewController *)self pageCountIncludingUpsell];
  if (!v5 || v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return -1.0;
  }

  v7 = fmin(fmax((a3 - 1) / (v5 - 1), 0.0), 1.0);

  [(BKBookViewController *)self touchBarPositionForPagePosition:v7];
  return result;
}

- (double)pagePositionForTouchBarPosition:(double)a3
{
  v4 = [(BKBookViewController *)self touchBarScrollerBookIsRightToLeft];
  result = 1.0 - a3;
  if (!v4)
  {
    return a3;
  }

  return result;
}

- (void)touchBarHandleBackRequest:(id)a3
{
  [(BKBookViewController *)self dismissCurrentPopover];
  v4 = [(BKBookViewController *)self navigationHistory];
  v5 = [v4 previousEntity];

  if (v5)
  {

    [(BKBookViewController *)self jumpBackAnimated:1];
  }
}

- (void)touchBarHandleForwardRequest:(id)a3
{
  [(BKBookViewController *)self dismissCurrentPopover];
  v4 = [(BKBookViewController *)self navigationHistory];
  v5 = [v4 nextEntity];

  if (v5)
  {

    [(BKBookViewController *)self jumpAheadAnimated:1];
  }
}

- (void)touchBarHandleReadAloudRequest:(id)a3
{
  if ([(BKBookViewController *)self isReadAloudPaused])
  {

    [(BKBookViewController *)self resumeReadAloud];
  }

  else
  {
    v4 = !self->_isReading;

    [(BKBookViewController *)self setReadAloudState:v4];
  }
}

- (void)touchBarScrollerDidEnd:(double)a3 completion:(id)a4
{
  v6 = a4;
  [(BKBookViewController *)self turnToPageNumber:[(BKBookViewController *)self pageNumberForTouchBarPosition:a3] animated:1];
  v6[2](a3);
}

- (void)touchBarScrollerDidIdle:(double)a3
{
  v4 = [(BKBookViewController *)self pageNumberForTouchBarPosition:a3];

  [(BKBookViewController *)self turnToPageNumber:v4 animated:1];
}

- (void)touchBarScrollerJumpToBookmark:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v7 = BUDynamicCast();

  v5 = v7;
  if (v7)
  {
    v6 = [v7 location];
    [(BKBookViewController *)self recordedJumpToLocation:v6 animated:1 completion:&stru_1E3FE8];

    v5 = v7;
  }
}

- (id)touchBarScrollerChapters
{
  v2 = [(BKBookViewController *)self book];
  v3 = [v2 chapters];
  v4 = [v3 allObjects];

  return v4;
}

- (double)touchBarScrollerPositionForChapter:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = BUDynamicCast();

  if (v5)
  {
    v6 = [(BKBookViewController *)self _locationForChapter:v5];
    v7 = [(BKBookViewController *)self paginationController];
    v8 = [v7 pageNumberForLocation:v6];
  }

  else
  {
    v8 = 0x7FFFFFFFFFFFFFFFLL;
  }

  [(BKBookViewController *)self touchBarPositionForPageNumber:v8];
  v10 = v9;

  return v10;
}

- (double)touchBarScrollerPositionForBookmark:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = BUDynamicCast();

  if (v5)
  {
    v6 = [(BKBookViewController *)self paginationController];
    v7 = [v6 pageRangeForAnnotation:v5];
    v9 = v8;

    v10 = [(BKBookViewController *)self pageNumberFromRange:v7, v9];
  }

  else
  {
    v10 = 0x7FFFFFFFFFFFFFFFLL;
  }

  [(BKBookViewController *)self touchBarPositionForPageNumber:v10];
  v12 = v11;

  return v12;
}

- (double)touchBarScrollerEndScrollPositionForPosition:(double)a3
{
  v4 = [(BKBookViewController *)self pageNumberForTouchBarPosition:a3];

  [(BKBookViewController *)self touchBarPositionForPageNumber:v4];
  return result;
}

- (id)touchBarScrollerAccessibilityLabelForChapter:(id)a3
{
  v3 = a3;
  objc_opt_class();
  v4 = BUDynamicCast();

  if (v4)
  {
    v5 = AEBundle();
    v6 = [v5 localizedStringForKey:@"Chapter %1$lu value:%2$@" table:{&stru_1E7188, 0}];
    v7 = [v4 absoluteOrder];
    v8 = [v7 integerValue] + 1;
    v9 = [v4 name];
    v10 = [NSString localizedStringWithFormat:v6, v8, v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)touchBarScrollerAccessibilityLabelForBookmark:(id)a3
{
  v3 = a3;
  objc_opt_class();
  v4 = BUDynamicCast();

  v5 = [v4 accessibilityLabel];

  return v5;
}

- (void)registerBookmarkObserver:(id)a3
{
  v4 = a3;
  v5 = [(BKBookViewController *)self bookmarkObservers];
  [v5 addObject:v4];
}

- (void)unregisterBookmarkObserver:(id)a3
{
  v4 = a3;
  v5 = [(BKBookViewController *)self bookmarkObservers];
  [v5 removeObject:v4];
}

- (unint64_t)numberOfBookmarks
{
  v2 = [(BKBookViewController *)self allBookmarkIdentifiers];
  v3 = [v2 count];

  return v3;
}

- (void)_notifyBookmarkObservers
{
  [(BKBookViewController *)self updateTouchBarController];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v3 = self->_bookmarkObservers;
  v4 = [(NSHashTable *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7) bookmarksUpdated];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [(NSHashTable *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)contentViewControllerAnnotationCacheDidChange:(id)a3
{
  [(BKBookViewController *)self writeAnnotationsToWebProcessPlugin];

  [(BKBookViewController *)self _notifyBookmarkObservers];
}

- (void)contentViewController:(id)a3 setEndOfBookToLocation:(id)a4 range:(id)a5
{
  v6 = a4;
  objc_opt_class();
  v14 = BUDynamicCast();

  v7 = [v14 cfiString];
  if ([v7 length])
  {
    v8 = [(BKBookViewController *)self book];
    [v8 setEndOfBookLocation:v7];

    v9 = [(BKBookViewController *)self book];
    [v9 setEndOfBookValidRange:0];

    if ([(NSManagedObjectContext *)self->_bookMoc hasChanges])
    {
      [(NSManagedObjectContext *)self->_bookMoc save:0];
    }

    v10 = [(BKBookViewController *)self experienceManager];

    if (v10)
    {
      v11 = [(BKBookViewController *)self _createEndOfBookExperience];
      if (v11)
      {
        v12 = [(BKBookViewController *)self experienceManager];
        [v12 removeExperienceOfType:0];

        v13 = [(BKBookViewController *)self experienceManager];
        [v13 addExperience:v11];
      }
    }
  }
}

- (void)contentViewController:(id)a3 goToLocation:(id)a4
{
  v5 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(BKBookViewController *)self recordedJumpToLocation:v5 animated:1 completion:0];
  }

  else
  {
    [(BKBookViewController *)self saveReadingLocation:v5];
    [(BKBookViewController *)self turnToInitialPage:1];
  }
}

- (void)mediaPlaybackStarted:(id)a3
{
  v4 = +[BCAudioMuxingCoordinator sharedInstance];
  [v4 notifyPlaybackWillStart:self];
}

- (void)setFinishedForAssetID:(id)a3
{
  v5 = a3;
  v4 = [(BKBookViewController *)self assetViewControllerDelegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 setFinishedForAssetID:v5];
  }
}

- (void)contentViewController:(id)a3 setFinishedAndCloseForAssetID:(id)a4
{
  v6 = a4;
  v5 = [(BKBookViewController *)self assetViewControllerDelegate];
  if (objc_opt_respondsToSelector())
  {
    [v5 assetViewController:self setFinishedAndCloseForAssetID:v6];
  }
}

- (BOOL)isTOCURL:(id)a3
{
  v4 = [a3 bc_pathWithoutPrecedingSlash];
  v5 = [v4 stringByRemovingURLFragment];
  v6 = [(BKBookViewController *)self book];
  v7 = [v6 tocPageHref];
  v8 = [v5 isEqual:v7];

  return v8;
}

- (id)documentForURL:(id)a3
{
  v4 = [a3 bc_pathWithoutPrecedingSlash];
  v5 = [v4 stringByRemovingURLFragment];
  v6 = [(BKBookViewController *)self book];
  v7 = [v6 documentAtPath:v5];

  return v7;
}

- (void)contentViewController:(id)a3 goToURL:(id)a4 likelyUserInitiated:(BOOL)a5
{
  v5 = a5;
  v12 = a4;
  if ([(BKBookViewController *)self isTOCURL:?])
  {
    [(BKBookViewController *)self showTOC:self];
    goto LABEL_9;
  }

  v7 = [(BKBookViewController *)self documentForURL:v12];
  if (v7)
  {
    v8 = [v12 bc_pathWithoutPrecedingSlash];
    v9 = [v8 stringByRemovingURLFragment];
    v10 = [v12 fragment];
    [(BKBookViewController *)self goToPath:v9 fragment:v10 animated:+[UIView areAnimationsEnabled]];

LABEL_7:
    goto LABEL_8;
  }

  v11 = [(BKBookViewController *)self assetViewControllerDelegate];

  if (v11)
  {
    v8 = [(BKBookViewController *)self assetViewControllerDelegate];
    [v8 assetViewController:self requestOpenURL:v12 likelyUserInitiated:v5];
    goto LABEL_7;
  }

LABEL_8:

LABEL_9:
}

- (void)contentViewReady:(id)a3
{
  v4 = a3;
  [(BKBookViewController *)self readAloudViewControllerReady:v4];
  [(BKBookViewController *)self signalBookContentDidLoad:v4];
  [v4 resume];
}

- (void)readAloudViewControllerReady:(id)a3
{
  v4 = a3;
  v16 = v4;
  if (self->_isReading)
  {
    [(BKBookViewController *)self _markupDocumentElementForMediaOverlay:v4];
    [(BKBookViewController *)self _installClickHandlers:v16];
    v4 = v16;
  }

  else if (!self->_isPlayingSoundTrack)
  {
    goto LABEL_14;
  }

  loadedPages = self->_loadedPages;
  if (!loadedPages)
  {
    v6 = [[NSMutableArray alloc] initWithCapacity:2];
    v7 = self->_loadedPages;
    self->_loadedPages = v6;

    v4 = v16;
    loadedPages = self->_loadedPages;
  }

  v8 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v4 ordinal]);
  [(NSMutableArray *)loadedPages addObject:v8];

  v9 = [(BKBookViewController *)self currentPages];
  if (v10)
  {
    v11 = v10;
    v12 = v9 - 1;
    while (1)
    {
      v13 = [NSNumber numberWithInteger:v12];
      if (([(NSMutableArray *)self->_loadedPages containsObject:v13]& 1) == 0)
      {
        v14 = [v13 unsignedIntegerValue];
        if (v14 != [(BKBookViewController *)self upsellOrdinal])
        {
          break;
        }
      }

      ++v12;
      if (!--v11)
      {
        goto LABEL_11;
      }
    }
  }

  else
  {
LABEL_11:
    v15 = self->_loadedPages;
    self->_loadedPages = 0;

    [(BKBookViewController *)self continueReadAloudAfterReady];
  }

  v4 = v16;
LABEL_14:
}

- (void)continueReadAloudAfterReady
{
  if (self->_isReading && ![(BKBookViewController *)self section])
  {
    v3 = [(BKBookViewController *)self currentPages];
    [(BKBookViewController *)self readPages:v3 from:v4 to:[(BKBookViewController *)self _itemIndexForCurrentPage] waitOnEmpty:-1, 1];
  }

  if (self->_isPlayingSoundTrack)
  {

    [(BKBookViewController *)self playCurrentSoundtrack];
  }
}

- (void)signalBookContentDidLoad:(id)a3
{
  v4 = a3;
  v5 = _AEBookOpenLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(BKBookViewController *)self contentOpenAnimator];
    v8 = 138412546;
    v9 = v6;
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "SignalBookContentDidLoad - animator: %@ content: %@", &v8, 0x16u);
  }

  v7 = [(BKBookViewController *)self contentOpenAnimator];
  [v7 bookContentDidLoad];

  [(BKBookViewController *)self setContentOpenAnimator:0];
}

- (void)contentViewController:(id)a3 showAlertController:(id)a4 fromRect:(CGRect)a5 animated:(BOOL)a6
{
  v6 = a6;
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v26 = a3;
  v13 = a4;
  if (![v13 preferredStyle])
  {
    v14 = [(BKBookViewController *)self view];
    v15 = [v26 view];
    [v14 convertRect:v15 fromView:{x, y, width, height}];
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;

    v24 = [v13 popoverPresentationController];
    [v24 setPermittedArrowDirections:15];
    v25 = [(BKBookViewController *)self view];
    [v24 setSourceView:v25];

    [v24 setSourceRect:{v17, v19, v21, v23}];
  }

  [(BKBookViewController *)self presentViewController:v13 animated:v6 completion:0];
}

- (void)contentViewController:(id)a3 stopMediaPlay:(id)a4
{
  v5 = a4;
  v12 = 0;
  v13 = 0;
  v6 = [(BKBookViewController *)self _currentChapterInfo:&v13 uniqueID:&v12];
  v7 = v13;
  v8 = v12;
  if (v6)
  {
    v9 = +[BCProgressKitController sharedController];
    v10 = [(BKBookViewController *)self book];
    v11 = [v10 assetID];
    [v9 updateMediaForBook:v11 chapter:v8 mediaCFI:v5 progress:&off_1F1870 completion:0];
  }
}

- (void)contentViewController:(id)a3 presentAlertController:(id)a4 completion:(id)a5
{
  v7 = a5;
  v10 = a4;
  v8 = [(BKBookViewController *)self book];
  v9 = [v8 bookTitle];
  [v10 setTitle:v9];

  [(BKBookViewController *)self presentViewController:v10 animated:+[UIView completion:"areAnimationsEnabled"], v7];
}

- (void)contentViewController:(id)a3 showTranslateForText:(id)a4 fromView:(id)a5 onClose:(id)a6
{
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_563EC;
  v11[3] = &unk_1E38C0;
  v12 = self;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v8 = v14;
  v9 = v15;
  v10 = v13;
  [(BKBookViewController *)v12 dismissCurrentPopoverWithCompletion:v11 animated:0];
}

- (void)contentViewController:(id)a3 setSearchString:(id)a4
{
  v5 = [(BKBookViewController *)self searchModuleWithSearchString:a4];
  v4 = [v5 searchController];
  [v4 cancelSearch];
}

- (void)contentViewController:(id)a3 expandAnnotation:(id)a4 location:(id)a5 selectedText:(id)a6 representativeText:(id)a7
{
  v11 = a7;
  v12 = a6;
  v13 = a5;
  v14 = a4;
  -[BKBookViewController _emitAnnotationActionEventIfNeededForAnnotationType:](self, "_emitAnnotationActionEventIfNeededForAnnotationType:", [v14 annotationType]);
  [(BKBookViewController *)self expandAnnotation:v14 location:v13 selectedText:v12 representativeText:v11];
}

- (id)contentViewController:(id)a3 addAnnotation:(int)a4 location:(id)a5 selectedText:(id)a6 representativeText:(id)a7
{
  v9 = *&a4;
  v11 = a7;
  v12 = a6;
  v13 = a5;
  [(BKBookViewController *)self _emitAnnotationActionEventIfNeededForAnnotationType:v9];
  v14 = [(BKBookViewController *)self addAnnotation:v9 location:v13 selectedText:v12 representativeText:v11];

  return v14;
}

- (void)_emitAnnotationActionEventIfNeededForAnnotationType:(int)a3
{
  if (a3 == 2)
  {
    v8 = [[BAViewData alloc] initWithType:4 action:5 location:2];
    v5 = +[BAEventReporter sharedReporter];
    v6 = [(BKBookViewController *)self ba_effectiveAnalyticsTracker];
    v7 = [(BKBookViewController *)self contentDataForSearchViewController:0];
    [v5 emitAnnotationActionEventWithTracker:v6 contentData:v7 viewData:v8];
  }
}

- (id)_searchQueryFromSender:(id)a3
{
  v3 = a3;
  objc_opt_class();
  v4 = BUDynamicCast();
  if (!v4)
  {
    v5 = BUProtocolCast();
    v4 = [v5 appIntentsSearchQuery];
  }

  return v4;
}

- (BCAppIntentsAssetViewControllerInfo)appIntentsInfo
{
  v3 = objc_opt_new();
  [v3 setSupportsTheming:0];
  v4 = [(BKBookViewController *)self asset];
  v5 = [v4 assetID];
  [v3 setAssetID:v5];

  return v3;
}

- (void)didChangeCurrentOverlayViewController
{
  v3.receiver = self;
  v3.super_class = BKBookViewController;
  [(BKViewController *)&v3 didChangeCurrentOverlayViewController];
  [(BKBookViewController *)self notifyAppIntentsInfoChanged];
}

- (int64_t)bookToolbarMode
{
  if (![(BKBookViewController *)self safeToShowToolbarItems])
  {
    return 7;
  }

  v3 = [(BKBookViewController *)self expandedContentViewController];
  v4 = [v3 isVisible];

  if (v4)
  {
    return 3;
  }

  if ([(BKBookViewController *)self section])
  {
    return 0;
  }

  return 9;
}

- (BOOL)isBookToolbarAppearanceDark
{
  v3 = [(BKBookViewController *)self themePage];
  v4 = [v3 userInterfaceStyle];

  if (!v4)
  {
    v5 = [(BKBookViewController *)self viewIfLoaded];
    v6 = [v5 window];

    v7 = [v6 traitCollection];
    v4 = [v7 userInterfaceStyle];
  }

  return v4 == &dword_0 + 2;
}

- (id)bookToolbarThemeID
{
  v2 = [(BKBookViewController *)self theme];
  v3 = [v2 themeIdentifier];

  return v3;
}

- (BOOL)shouldDisplayShareControls
{
  v2 = [(BKBookViewController *)self book];
  v3 = [v2 isStoreBook];

  return v3;
}

- (BOOL)shouldDisplayBuyButton
{
  v2 = [(BKBookViewController *)self book];
  v3 = [v2 sampleContent];
  v4 = [v3 BOOLValue];

  return v4;
}

- (id)itemProvidersForSharing
{
  v2 = [(BKBookViewController *)self storeShortURL];
  if (v2 && (v3 = [[NSItemProvider alloc] initWithContentsOfURL:v2]) != 0)
  {
    v4 = v3;
    v7 = v3;
    v5 = [NSArray arrayWithObjects:&v7 count:1];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)titleMutedColor
{
  v2 = [(BKBookViewController *)self theme];
  v3 = [v2 headerTextColorDimmed];

  return v3;
}

- (id)titleColor
{
  v2 = [(BKBookViewController *)self theme];
  v3 = [v2 toolbarTitleColor];

  return v3;
}

- (id)chapterColor
{
  v2 = [(BKBookViewController *)self theme];
  v3 = [v2 headerTextColorDimmed];

  return v3;
}

- (id)tintColorForNavbarButtons
{
  v2 = [(BKBookViewController *)self theme];
  v3 = [v2 tintColorForNavbarButtons];

  return v3;
}

- (id)buttonColor
{
  v2 = [(BKBookViewController *)self themePage];
  v3 = [v2 buttonColor];

  return v3;
}

- (id)profileFuture
{
  v3 = [(BKBookViewController *)self assetViewControllerDelegate];
  v4 = [v3 assetViewControllerProductProfileProtocol:self];

  return v4;
}

- (BOOL)isPreordered
{
  v2 = [(BKBookViewController *)self book];
  v3 = [v2 isPreorder];
  v4 = [v3 BOOLValue];

  return v4;
}

- (id)bookmarkToolTip
{
  v2 = AEBundle();
  v3 = [v2 localizedStringForKey:@"Show Bookmarks" value:&stru_1E7188 table:0];

  return v3;
}

- (id)tocToolTip
{
  v2 = AEBundle();
  v3 = [v2 localizedStringForKey:@"Show the table of contents" value:&stru_1E7188 table:0];

  return v3;
}

- (void)popoverDidClose:(id)a3 fromToolbar:(id)a4
{
  v9 = a3;
  v5 = [(BKBookViewController *)self brightnessController];

  if (v5 == v9 || (-[BKBookViewController audioController](self, "audioController"), v6 = objc_claimAutoreleasedReturnValue(), [v6 navigationController], v7 = objc_claimAutoreleasedReturnValue(), v7, v6, v8 = v9, v7 == v9))
  {
    [(BKBookViewController *)self cleanupPopovers];
  }

  else
  {
    if (self->_appearanceContainerViewController != v9)
    {
      goto LABEL_7;
    }

    [(BKBookViewController *)self handleAppearanceViewControllerDismissal];
  }

  v8 = v9;
LABEL_7:
}

- (void)showOverlayViewController:(id)a3 fromView:(id)a4 popoverOnPhone:(BOOL)a5 popoverBackgroundColor:(id)a6
{
  v6 = a5;
  v10 = a6;
  v11 = a4;
  v12 = a3;
  [(BKBookViewController *)self cancelPendingHidePageControls];
  [(BKViewController *)self showOverlayViewController:v12 fromItem:v11 popoverOnPhone:v6 passthroughViews:&__NSArray0__struct popoverBackgroundColor:v10];
}

- (void)setExpandedContentViewController:(id)a3
{
  v5 = a3;
  expandedContentViewController = self->_expandedContentViewController;
  if (expandedContentViewController != v5)
  {
    v8 = v5;
    v7 = [(BKExpandedContentViewController *)expandedContentViewController delegate];

    if (v7 == self)
    {
      [(BKExpandedContentViewController *)self->_expandedContentViewController setDelegate:0];
    }

    objc_storeStrong(&self->_expandedContentViewController, a3);
    expandedContentViewController = [(BKBookViewController *)self updateToolbarController];
    v5 = v8;
  }

  _objc_release_x1(expandedContentViewController, v5);
}

- (void)_showExpandedContentForResource:(id)a3 atLocation:(id)a4 presentingFromTOC:(BOOL)a5 completion:(id)a6
{
  v7 = a5;
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = [(BKBookViewController *)self expandedContentViewController];
  [v13 close:0];

  if (!v7)
  {
    v14 = [(BKBookViewController *)self currentLocation];
    [(BKBookViewController *)self setResumeLocation:v14];
  }

  v15 = [v10 sourceURL];
  v16 = BEDoesURLPointToUSDZFile();

  if (v16)
  {
    v17 = objc_alloc_init(BKARQuicklookViewController);
    v18 = [v10 sourceURL];
    [(BKARQuicklookViewController *)v17 setARModelDataURL:v18];

    [(BKARQuicklookViewController *)v17 setDataSource:v17];
    [(BKBookViewController *)self presentViewController:v17 animated:1 completion:0];
  }

  else
  {
    v17 = [BKExpandedContentViewController expandedContentControllerForResource:v10];
    v19 = [(BKBookViewController *)self theme];
    [(BKARQuicklookViewController *)v17 setTheme:v19];

    [(BKARQuicklookViewController *)v17 setDelegate:self];
    objc_opt_class();
    v20 = BUDynamicCast();
    if (v20)
    {
      v21 = [(BKBookViewController *)self book];
      [v20 setAllowsRemoteInspection:{objc_msgSend(v21, "shouldAllowRemoteInspection")}];
    }

    [(BKBookViewController *)self setExpandedContentViewController:v17];
    [(BKARQuicklookViewController *)v17 setPresentingFromTOC:v7];
    objc_initWeak(&location, self);
    v22 = +[UIView areAnimationsEnabled];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_57534;
    v23[3] = &unk_1E4010;
    objc_copyWeak(&v25, &location);
    v24 = v12;
    [(BKBookViewController *)self presentViewController:v17 animated:v22 completion:v23];

    objc_destroyWeak(&v25);
    objc_destroyWeak(&location);
  }
}

- (CGRect)frameForLocation:(id)a3 inView:(id)a4 expandedContentViewController:(id)a5
{
  x = CGRectNull.origin.x;
  y = CGRectNull.origin.y;
  width = CGRectNull.size.width;
  height = CGRectNull.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)expandedContentViewController:(id)a3 handleUserRequestForFrameToLoadExternalURL:(id)a4 completion:(id)a5
{
  if (self->_expandedContentViewController == a3)
  {

    [(BKBookViewController *)self _promptToLoadExternalContent:a5, a4];
  }

  else
  {
    sub_137934();
  }
}

- (void)expandedContentViewController:(id)a3 handleExternalLoadRequest:(id)a4 likelyUserInitiated:(BOOL)a5
{
  if (self->_expandedContentViewController == a3)
  {

    [(BKBookViewController *)self _handleExternalLoadRequest:a4 likelyUserInitiated:a5];
  }

  else
  {
    sub_137970();
  }
}

- (BOOL)expandedContentViewController:(id)a3 handleInternalLoadRequest:(id)a4
{
  if (self->_expandedContentViewController == a3)
  {

    return [BKBookViewController _controller:"_controller:handleInternalRequestForURL:" handleInternalRequestForURL:?];
  }

  else
  {
    sub_1379AC();
    return 0;
  }
}

- (void)expandedContentViewController:(id)a3 handleInternalLoadRequestForNewWindow:(id)a4
{
  if (self->_expandedContentViewController == a3)
  {

    [BKBookViewController _controller:"_controller:handleInternalRequestForURL:" handleInternalRequestForURL:?];
  }

  else
  {
    sub_1379E8();
  }
}

- (void)expandedContentViewDidDisappear:(id)a3
{
  v5 = a3;
  if (self->_expandedContentViewController == v5)
  {
    v4 = [(BKBookViewController *)self searchResult];
    [(BKBookViewController *)self clearSelection];
    [(BKBookViewController *)self setExpandedContentViewController:0];
    if (![(BKExpandedContentViewController *)v5 presentingFromTOC])
    {
      [(BKBookViewController *)self setResumeLocation:0];
    }

    if (v4)
    {
      [(BKBookViewController *)self highlightSearchResult:v4];
    }
  }

  else
  {
    sub_137A24();
  }
}

- (BOOL)expandedContentView:(id)a3 shouldStartLoadWithRequest:(id)a4
{
  v6 = a3;
  if (self->_expandedContentViewController != v6)
  {
    sub_137A60();
    LOBYTE(self) = 0;
    goto LABEL_14;
  }

  v7 = [a4 URL];
  if (BEURLHandlerSchemeIsOkForBookToLoad())
  {
    v8 = [v7 bc_pathWithoutPrecedingSlash];
    v9 = [v8 stringByRemovingURLFragment];
    v10 = [(BKBookViewController *)self book];
    v11 = [v10 documentAtPath:v9];

    v12 = [v11 documentOrdinal];
    if ([v12 integerValue] == -1)
    {
      LOBYTE(self) = 1;
    }

    else
    {
      v13 = [v11 nonlinearElement];
      v14 = [v13 BOOLValue];

      if (v14)
      {
        LOBYTE(self) = 1;
LABEL_12:

        goto LABEL_13;
      }

      if (v8)
      {
        v12 = [v7 fragment];
        [(BKExpandedContentViewController *)v6 close:1];
        [(BKBookViewController *)self goToPath:v8 fragment:v12 animated:1];
        LOBYTE(self) = 0;
      }

      else
      {
        v12 = [(BKBookViewController *)self assetViewControllerDelegate];
        LODWORD(self) = [v12 assetViewController:self requestOpenURL:v7 likelyUserInitiated:0] ^ 1;
      }
    }

    goto LABEL_12;
  }

  v8 = [(BKBookViewController *)self assetViewControllerDelegate];
  [v8 assetViewController:self requestOpenURL:v7 likelyUserInitiated:0];
  LOBYTE(self) = 0;
LABEL_13:

LABEL_14:
  return self;
}

- (void)expandedContentViewController:(id)a3 presentAlertController:(id)a4 completion:(id)a5
{
  v11 = a4;
  v8 = a5;
  if (self->_expandedContentViewController == a3)
  {
    v9 = [(BKBookViewController *)self book];
    v10 = [v9 bookTitle];
    [v11 setTitle:v10];

    [(BKBookViewController *)self presentViewController:v11 animated:+[UIView completion:"areAnimationsEnabled"], v8];
  }

  else
  {
    sub_137A9C();
  }
}

- (BKNavigationHistory)navigationHistory
{
  if (!self->_navigationHistory)
  {
    v3 = [(BKBookViewController *)self book];
    v4 = [v3 wantsJumpBackHistory];

    if (v4)
    {
      v5 = objc_alloc_init(BKNavigationHistory);
      navigationHistory = self->_navigationHistory;
      self->_navigationHistory = v5;
    }
  }

  v7 = self->_navigationHistory;

  return v7;
}

- (void)fixupNavigationHistoryForUpsellPageNumber:(int64_t)a3
{
  v5 = [(BKBookViewController *)self upsellOrdinal];
  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = v5;
    v7 = [(BKBookViewController *)self paginationController];
    v8 = [v7 currentLookupKey];

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v9 = [(BKBookViewController *)self navigationHistory];
    v10 = [v9 allObjects];

    v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v19;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v19 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v18 + 1) + 8 * i);
          v16 = [v15 location];
          v17 = [v16 ordinal];

          if (v17 == v6)
          {
            [v15 setPage:a3 forLookupKey:v8];
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v12);
    }
  }
}

- (void)setPaginationController:(id)a3
{
  v5 = a3;
  paginationController = self->_paginationController;
  v10 = v5;
  if (paginationController != v5)
  {
    if (paginationController)
    {
      v7 = +[NSNotificationCenter defaultCenter];
      [v7 removeObserver:self name:BKPaginationDataLoadedNotification object:self->_paginationController];

      v8 = self->_paginationController;
    }

    else
    {
      v8 = 0;
    }

    [(BKPaginationController *)v8 removeObserver:self forKeyPath:@"progress"];
    [(BKPaginationController *)self->_paginationController quit];
    objc_storeStrong(&self->_paginationController, a3);
    [(BKPaginationController *)self->_paginationController addObserver:self forKeyPath:@"progress" options:4 context:0];
    [(BKSearchViewController *)self->_searchViewController setPaginationController:self->_paginationController];
    if (self->_paginationController)
    {
      [(BKBookViewController *)self updatePageCount];
      v9 = +[NSNotificationCenter defaultCenter];
      [v9 addObserver:self selector:"paginationCompleted" name:BKPaginationDataLoadedNotification object:self->_paginationController];
    }
  }
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if ([v10 isEqualToString:@"progress"])
  {
    [(BKPaginationController *)self->_paginationController progress];
    [(BKBookViewController *)self updatePaginationProgress:?];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = BKBookViewController;
    [(BKBookViewController *)&v13 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
  }
}

- (BOOL)needTextNodeCharacterCountsForOrdinal:(int64_t)a3
{
  v4 = [(BKBookViewController *)self assetViewControllerDelegate];
  LOBYTE(a3) = [v4 needTextNodeCharacterCountsForOrdinal:a3];

  return a3;
}

- (void)addTextNodeCharacterCounts:(id)a3 ordinal:(int64_t)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [(BKBookViewController *)self assetViewControllerDelegate];
  [v10 addTextNodeCharacterCounts:v9 ordinal:a4 completion:v8];
}

- (BOOL)needTOCEntriesForOrdinal:(int64_t)a3
{
  v4 = [(BKBookViewController *)self assetViewControllerDelegate];
  LOBYTE(a3) = [v4 needTOCEntriesForOrdinal:a3];

  return a3;
}

- (void)addTOCEntries:(id)a3 ordinal:(int64_t)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [(BKBookViewController *)self assetViewControllerDelegate];
  [v10 addTOCEntries:v9 ordinal:a4 completion:v8];
}

- (id)searchViewController
{
  searchViewController = self->_searchViewController;
  if (!searchViewController)
  {
    v4 = objc_alloc_init(BKSearchViewController);
    v5 = self->_searchViewController;
    self->_searchViewController = v4;

    v6 = [(BKBookViewController *)self book];
    -[BKSearchViewController setContentType:](self->_searchViewController, "setContentType:", [v6 contentType]);

    v7 = [(BKBookViewController *)self theme];
    [(BKSearchViewController *)self->_searchViewController setTheme:v7];

    [(BKSearchViewController *)self->_searchViewController setSearchDelegate:self];
    [(BKSearchViewController *)self->_searchViewController setPaginationController:self->_paginationController];
    searchViewController = self->_searchViewController;
  }

  return searchViewController;
}

- (void)showSearchWithString:(id)a3 sender:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(BKBookViewController *)self searchModuleWithSearchString:v6];
  v9 = [[UINavigationController alloc] initWithRootViewController:v8];
  if (_UISolariumEnabled() && isPhone())
  {
    [v9 setNavigationBarHidden:1];
  }

  [(BKBookViewController *)self cancelPendingHidePageControls];
  objc_initWeak(&location, self);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_581BC;
  v10[3] = &unk_1E36F8;
  objc_copyWeak(&v11, &location);
  v10[4] = v9;
  [(BKBookViewController *)self setControlsVisible:1 animated:1 completion:v10];
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

- (id)environmentOverrideView
{
  v2 = [(BKBookViewController *)self viewIfLoaded];
  v3 = [v2 window];

  if (!v3)
  {
    v4 = +[UIViewController bc_presentingViewController];
    v5 = [v4 view];

    v2 = v5;
  }

  return v2;
}

- (id)searchModuleWithSearchString:(id)a3
{
  v4 = a3;
  v5 = [(BKBookViewController *)self searchStringLengthLimit];
  if ([v4 length] > v5)
  {
    v6 = [v4 substringToIndex:v5];

    v4 = v6;
  }

  v7 = [(BKBookViewController *)self searchViewController];
  v8 = [(BKBookViewController *)self book];
  v9 = [v7 searchController];
  [v9 setSearchBook:v8];

  [v7 setSearchString:v4];

  return v7;
}

- (void)searchViewControllerWillAppear:(id)a3
{
  [(BKBookViewController *)self pauseReadAloud];

  +[IMSleepManager stopSleepTimer];
}

- (void)searchViewControllerDidDisappear:(id)a3
{
  [(BKBookViewController *)self resumeReadAloud];

  +[IMSleepManager startSleepTimer];
}

- (void)revealSearchResult:(id)a3 animated:(BOOL)a4
{
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = [v6 location];
    objc_initWeak(&location, self);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_58530;
    v10[3] = &unk_1E4060;
    objc_copyWeak(&v13, &location);
    v9 = v8;
    v11 = v9;
    v14 = a4;
    v12 = v7;
    [(BKBookViewController *)self isLocationVisible:v9 completion:v10];

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }
}

- (void)searchViewController:(id)a3 revealSearchResult:(id)a4 animated:(BOOL)a5
{
  [(BKBookViewController *)self revealSearchResult:a4 animated:a5];

  [(BKBookViewController *)self _dismissSearchViewController];
}

- (void)searchViewController:(id)a3 turnToPageNumber:(int64_t)a4 animated:(BOOL)a5
{
  [(BKBookViewController *)self turnToPageNumber:a4 animated:a5];

  [(BKBookViewController *)self _dismissSearchViewController];
}

- (void)searchViewController:(id)a3 turnToLocation:(id)a4 animated:(BOOL)a5
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_58960;
  v5[3] = &unk_1E2BD0;
  v5[4] = self;
  [(BKBookViewController *)self recordedJumpToLocation:a4 animated:a5 completion:v5];
}

- (int64_t)searchViewController:(id)a3 pageNumberForDocumentOrdinal:(int64_t)a4
{
  v5 = a3;
  v6 = [v5 paginationController];

  if (v6)
  {
    v7 = [v5 paginationController];
    v8 = [v7 pageNumberForDocumentOrdinal:a4];
  }

  else
  {
    v8 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v8;
}

- (id)searchViewController:(id)a3 chapterNameForSearchResult:(id)a4 pageNumber:(int64_t)a5
{
  if (a5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = 0;
  }

  else
  {
    v7 = [a3 paginationController];
    v5 = [v7 titleForChapterAtPageNumber:a5];
  }

  return v5;
}

- (void)emitReadingOrientationChangeEventIfNeeded
{
  v3 = +[UIDevice currentDevice];
  if ([v3 orientation] - 3 >= &dword_0 + 2)
  {
    v4 = &dword_0 + 1;
  }

  else
  {
    v4 = &dword_0 + 2;
  }

  if ([(BKBookViewController *)self lastAnalyticsDeviceOrientationReported]!= v4)
  {
    v5 = +[BAEventReporter sharedReporter];
    v6 = [(BKBookViewController *)self ba_effectiveAnalyticsTracker];
    v7 = [(BKBookViewController *)self readingSessionDataForSearchViewController:0];
    v8 = [(BKBookViewController *)self contentDataForSearchViewController:0];
    [v5 emitReadingOrientationChangeEventWithTracker:v6 readingSessionData:v7 contentData:v8];

    [(BKBookViewController *)self setLastAnalyticsDeviceOrientationReported:v4];
  }
}

- (id)readingSessionDataForSearchViewController:(id)a3
{
  v4 = [(BKBookViewController *)self _currentReadingProgress];
  v5 = [(BKBookViewController *)self book];
  v6 = [v5 sampleContent];
  v7 = [v6 BOOLValue];

  v8 = [BAReadingSessionData alloc];
  v9 = [(BKBookViewController *)self analyticsReadStartProgress];
  v10 = [NSNumber numberWithBool:v7];
  v11 = [v8 initWithPercentCompletionStart:v9 percentCompletionEnd:v4 isFreeSample:v10 deviceOrientation:{-[BKBookViewController lastAnalyticsDeviceOrientationReported](self, "lastAnalyticsDeviceOrientationReported")}];

  return v11;
}

- (id)contentDataForSearchViewController:(id)a3
{
  v4 = [(BKBookViewController *)self ba_effectiveAnalyticsTracker];
  v5 = [(BKBookViewController *)self assetViewControllerDelegate];
  v6 = [(BKBookViewController *)self contentSubType];
  v7 = [v5 analyticsContentDataForAssetViewController:self contentSubType:v6 tracker:v4];

  if (!v7)
  {
    v8 = [(BKBookViewController *)self book];
    v9 = [v8 assetID];

    v10 = BCCurrentBookLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      v19 = [(BKBookViewController *)self assetViewControllerDelegate];
      *buf = 138412802;
      v21 = v9;
      v22 = 2112;
      v23 = v19;
      v24 = 2112;
      v25 = v4;
      _os_log_fault_impl(&dword_0, v10, OS_LOG_TYPE_FAULT, "Failed to create ContentData for asset %@ from assetViewControllerDelegate %@. Creating a fallback with tracker %@.", buf, 0x20u);
    }

    v11 = [BAUtilities contentTypeFromAssetType:0];
    v12 = [v4 contentPrivateIDForContentID:v9];
    v13 = [v4 contentUserIDForContentID:v9];
    v14 = +[BAEventReporter sharedReporter];
    v15 = [v14 seriesTypeForContentID:v9];

    v16 = [BAContentData alloc];
    v17 = [(BKBookViewController *)self contentSubType];
    v7 = [v16 initWithContentID:v9 contentType:v11 contentPrivateID:v12 contentUserID:v13 contentAcquisitionType:0 contentSubType:v17 contentLength:0 supplementalContentCount:0 seriesType:v15 productionType:0 isUnified:0 contentKind:0];
  }

  return v7;
}

- (void)p_releaseDictionary
{
  [(BCDDParsecCollectionViewController *)self->_referenceLibraryViewController setDelegate:0];
  referenceLibraryViewController = self->_referenceLibraryViewController;
  self->_referenceLibraryViewController = 0;
}

- (void)showLookupForString:(id)a3 fromView:(id)a4 onClose:(id)a5
{
  v8 = a3;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_58FAC;
  v12[3] = &unk_1E40B0;
  v13 = a4;
  v14 = self;
  v15 = v8;
  v16 = a5;
  v9 = v16;
  v10 = v8;
  v11 = v13;
  [(BKBookViewController *)self dismissCurrentPopoverWithCompletion:v12 animated:0];
}

- (void)dismissCurrentPopoverWithCompletion:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(BKBookViewController *)self referenceLibraryViewController];

  if (v7)
  {
    v8 = [(BKBookViewController *)self referenceLibraryViewController];
    [v8 dismissViewControllerAnimated:0 completion:0];

    [(BKBookViewController *)self p_releaseDictionary];
  }

  v9 = [(BKBookViewController *)self translationViewController];

  if (v9)
  {
    v10 = [(BKBookViewController *)self translationViewController];
    [v10 dismissViewControllerAnimated:0 completion:0];

    [(BKBookViewController *)self setTranslationViewController:0];
  }

  v11.receiver = self;
  v11.super_class = BKBookViewController;
  [(BKViewController *)&v11 dismissCurrentPopoverWithCompletion:v6 animated:v4];
}

- (void)presentationControllerDidDismiss:(id)a3
{
  v4 = a3;
  v5 = [v4 presentedViewController];
  activityViewController = self->_activityViewController;

  if (v5 == activityViewController)
  {
    [(BKBookViewController *)self setActivityViewController:0];
  }

  else
  {
    v7 = [v4 presentedViewController];
    v8 = [(BKBookViewController *)self referenceLibraryViewController];

    if (v7 == v8)
    {
      [(BKBookViewController *)self clearSelection];
      [(BKBookViewController *)self p_releaseDictionary];
    }

    else
    {
      v9 = [v4 presentedViewController];
      v10 = [(BKBookViewController *)self translationViewController];

      if (v9 == v10)
      {
        [(BKBookViewController *)self clearSelection];
        [(BKBookViewController *)self setTranslationViewController:0];
      }

      else
      {
        v11 = [v4 presentedViewController];
        v12 = [(BKBookViewController *)self brightnessController];

        if (v11 == v12 || ([v4 presentedViewController], v13 = objc_claimAutoreleasedReturnValue(), -[BKBookViewController audioController](self, "audioController"), v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "navigationController"), v15 = objc_claimAutoreleasedReturnValue(), v15, v14, v13, v13 == v15))
        {
          [(BKBookViewController *)self cleanupPopovers];
        }

        else if (self->_appearanceContainerViewController)
        {
          v16 = [v4 presentedViewController];
          appearanceContainerViewController = self->_appearanceContainerViewController;

          if (v16 == appearanceContainerViewController)
          {
            [(BKBookViewController *)self handleAppearanceViewControllerDismissal];
          }
        }
      }
    }
  }

  v18.receiver = self;
  v18.super_class = BKBookViewController;
  [(BKViewController *)&v18 presentationControllerDidDismiss:v4];
}

- (id)_footnoteViewController2ForResource:(id)a3 stylesheetSet:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[BKFootnoteViewController2 alloc] initWithResource:v7 stylesheetSet:v6 backgroundColor:0 textColor:0];

  [(BKFootnoteViewController2 *)v8 setAllowsRemoteInspection:[(AEBookInfo *)self->_book shouldAllowRemoteInspection]];
  v9 = [(BKBookViewController *)self theme];
  [(BKFootnoteViewController2 *)v8 setTheme:v9];

  objc_storeStrong(&self->_footnoteController, v8);

  return v8;
}

- (void)showFootnoteInContentViewController:(id)a3 resource:(id)a4 fromView:(id)a5 stylesheetSet:(id)a6
{
  v9 = a5;
  v10 = a6;
  v11 = a4;
  [(BKBookViewController *)self dismissCurrentPopover];
  [(BKBookViewController *)self _cleanupFootnoteViewController];
  footnoteSourceView = self->_footnoteSourceView;
  self->_footnoteSourceView = v9;
  v15 = v9;

  v13 = [(BKBookViewController *)self _footnoteViewController2ForResource:v11 stylesheetSet:v10];

  footnoteController = self->_footnoteController;
  self->_footnoteController = v13;

  [(BKFootnoteViewController2 *)self->_footnoteController setDelegate:self];
  [(BKFootnoteViewController2 *)self->_footnoteController prepareForDisplay];
}

- (void)_cleanupFootnoteViewController
{
  [(BKFootnoteViewController2 *)self->_footnoteController setDelegate:0];
  footnoteController = self->_footnoteController;
  self->_footnoteController = 0;

  footnoteSourceView = self->_footnoteSourceView;
  self->_footnoteSourceView = 0;
}

- (void)footnoteViewController:(id)a3 handleUserRequestForFrameToLoadExternalURL:(id)a4 completion:(id)a5
{
  if (self->_footnoteController == a3)
  {

    [(BKBookViewController *)self _promptToLoadExternalContent:a5, a4];
  }

  else
  {
    sub_137AD8();
  }
}

- (void)footnoteViewController:(id)a3 handleExternalLoadRequest:(id)a4 likelyUserInitiated:(BOOL)a5
{
  if (self->_footnoteController == a3)
  {

    [(BKBookViewController *)self _handleExternalLoadRequest:a4 likelyUserInitiated:a5];
  }

  else
  {
    sub_137B14();
  }
}

- (BOOL)footnoteViewController:(id)a3 handleInternalLoadRequest:(id)a4
{
  if (self->_footnoteController == a3)
  {

    return [BKBookViewController _controller:"_controller:handleInternalRequestForURL:" handleInternalRequestForURL:?];
  }

  else
  {
    sub_137B50();
    return 0;
  }
}

- (void)footnoteViewDidFinishLoad:(id)a3
{
  if (self->_footnoteController == a3)
  {

    [BKBookViewController showOverlayViewController:"showOverlayViewController:fromView:popoverOnPhone:popoverBackgroundColor:" fromView:? popoverOnPhone:? popoverBackgroundColor:?];
  }

  else
  {
    sub_137B8C();
  }
}

- (void)footnoteViewDidDisappear:(id)a3
{
  if (self->_footnoteController == a3)
  {
    [(BKBookViewController *)self _cleanupFootnoteViewController];

    [(BKBookViewController *)self clearSelection];
  }

  else
  {
    sub_137BC8();
  }
}

- (void)footnoteViewController:(id)a3 presentAlertController:(id)a4 completion:(id)a5
{
  v11 = a4;
  v8 = a5;
  if (self->_footnoteController == a3)
  {
    v9 = [(BKBookViewController *)self book];
    v10 = [v9 bookTitle];
    [v11 setTitle:v10];

    [(BKBookViewController *)self presentViewController:v11 animated:+[UIView completion:"areAnimationsEnabled"], v8];
  }

  else
  {
    sub_137C04();
  }
}

- (void)pageNavigationDidChangeLocation:(id)a3
{
  v5.location = [(BKBookViewController *)self currentPages];
  if (!NSIntersectionRange(v5, self[240]).length)
  {

    [(BKBookViewController *)self stopReadAloud];
  }
}

- (int64_t)pageNavigationCurrentReadAloudPageOffset:(id)a3
{
  v4 = a3;
  previousReadingOrdinal = self->_previousReadingOrdinal;
  if (previousReadingOrdinal == -1)
  {
    if (self->_isReading)
    {
      previousReadingOrdinal = [(BKBookViewController *)self currentPages];
    }

    else
    {
      previousReadingOrdinal = 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  return previousReadingOrdinal;
}

- (void)setSection:(int)a3 animated:(BOOL)a4 adjustScrollToReveal:(BOOL)a5
{
  if (self->_section != a3)
  {
    self->_section = a3;
    if (a3)
    {
      [(BKBookViewController *)self bookMilestoneReached:7, a4, a5];
      [(BKBookViewController *)self updateToolbarController];
    }

    else
    {
      [(BKBookViewController *)self updateToolbarController:*&a3];
      v7 = [(BKBookViewController *)self displaySleepController];
      [v7 userInteractionOccurred];
    }

    [(BKBookViewController *)self notifyAppIntentsInfoChanged];
  }
}

- (void)directoryContent:(id)a3 didSelectLocation:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(BKBookViewController *)self directoryContent:v7 didSelectLocation:v6 animated:+[UIView areAnimationsEnabled]];
}

- (void)directoryContent:(id)a3 didSelectLocation:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v21 = a4;
  v7 = [(BKBookViewController *)self documentForLocation:?];
  v8 = v7;
  if (!v7)
  {
    goto LABEL_4;
  }

  v9 = [v7 documentOrdinal];
  if ([v9 integerValue] == -1)
  {
  }

  else
  {
    v10 = [v8 nonlinearElement];
    v11 = [v10 BOOLValue];

    if (!v11)
    {
LABEL_4:
      [(BKBookViewController *)self recordJumpFromCurrentLocation];
      if (v21)
      {
        [(BKBookViewController *)self setResumeLocation:v21];
      }

      [(BKBookViewController *)self setSection:0 animated:v5 adjustScrollToReveal:1];
      [(BKBookViewController *)self setResumeLocation:0];
      [(BKBookViewController *)self clearSearchResult];
      goto LABEL_13;
    }
  }

  v12 = [(BKBookViewController *)self book];
  v13 = [v12 urlForDocument:v8];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = v21;
    v15 = [v14 anchor];

    if (v15)
    {
      v16 = [v14 anchor];
      v17 = [v13 URLByAppendingPathComponent:v16];

      v13 = v17;
    }
  }

  v18 = [BKExpandedContentResource resourceForURL:v13];
  v19 = [(BKBookViewController *)self book];
  v20 = [v19 cacheItem];
  [v18 setCacheItem:v20];

  [(BKBookViewController *)self _showExpandedContentForResource:v18 atLocation:v21 presentingFromTOC:1 completion:0];
LABEL_13:
}

- (int64_t)directoryContent:(id)a3 pageNumberForLocation:(id)a4
{
  v5 = a4;
  v6 = [(BKBookViewController *)self paginationController];
  v7 = [v6 pageNumberForLocation:v5];

  return v7;
}

- (id)_locationForChapter:(id)a3
{
  v4 = a3;
  v5 = [v4 href];
  v6 = [v5 URLFragmentString];

  v7 = [v4 href];

  v8 = [v7 stringByRemovingURLFragment];

  v9 = [(BKBookViewController *)self locationForPath:v8 fragment:v6];

  return v9;
}

- (void)tocViewController:(id)a3 didSelectChapter:(id)a4
{
  v6 = a3;
  v8 = [(BKBookViewController *)self _locationForChapter:a4];
  objc_opt_class();
  v7 = BUDynamicCast();

  [(BKBookViewController *)self directoryContent:v7 didSelectLocation:v8];
}

- (id)tocViewController:(id)a3 pageTitleForChapter:(id)a4
{
  v5 = a4;
  v6 = [(BKBookViewController *)self paginationController];
  v7 = [v6 pageRangeForChapter:v5];
  v9 = v8;

  v10 = [(BKBookViewController *)self pageNumberFromRange:v7, v9];
  v11 = [(BKBookViewController *)self pageTitleForPageNumber:v10];
  if ([v11 length] || v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (v11)
    {
      goto LABEL_7;
    }

    v11 = AEBundle();
    v12 = [v11 localizedStringForKey:@"-" value:&stru_1E7188 table:0];
  }

  else
  {
    v12 = [NSString localizedStringWithFormat:@"%lu", v10];
  }

  v13 = v12;

  v11 = v13;
LABEL_7:

  return v11;
}

- (id)tocViewController:(id)a3 pageTitleForAnnotation:(id)a4
{
  v5 = a4;
  v6 = [(BKBookViewController *)self paginationController];
  v7 = [v6 pageRangeForAnnotation:v5];
  v9 = v8;

  v10 = [(BKBookViewController *)self pageNumberFromRange:v7, v9];
  v11 = [(BKBookViewController *)self pageTitleForPageNumber:v10];
  if (!v11 && v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = [NSString localizedStringWithFormat:@"%lu", v10];
  }

  return v11;
}

- (int64_t)tocViewController:(id)a3 pageNumberForAnnotation:(id)a4
{
  v5 = a4;
  v6 = [(BKBookViewController *)self paginationController];
  v7 = [v6 pageRangeForAnnotation:v5];
  v9 = v8;

  return [(BKBookViewController *)self pageNumberFromRange:v7, v9];
}

- (int64_t)tocViewController:(id)a3 pageNumberForChapter:(id)a4
{
  v5 = a4;
  v6 = [(BKBookViewController *)self paginationController];
  v7 = [v6 pageRangeForChapter:v5];

  return v7;
}

- (id)tocViewControllerTocIdCssRules:(id)a3
{
  v3 = [(BKBookViewController *)self book];
  v4 = [v3 tocIdCssRules];

  return v4;
}

- (void)_contentReady:(id)a3
{
  v5 = [a3 object];
  if ([(NSMutableArray *)self->_contentLoadQueue containsObject:?])
  {
    [(NSMutableArray *)self->_contentLoadQueue removeObject:v5];
    if ([(NSMutableArray *)self->_contentLoadQueue count])
    {
      v4 = [(NSMutableArray *)self->_contentLoadQueue objectAtIndex:0];
      [v4 load];
    }
  }
}

- (void)preloadContentController:(id)a3 highPriority:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v16 = v6;
    v6 = [v6 isContentLoaded];
    v7 = v16;
    if ((v6 & 1) == 0)
    {
      contentLoadQueue = self->_contentLoadQueue;
      if (!contentLoadQueue)
      {
        v9 = [[NSMutableArray alloc] initWithCapacity:12];
        v10 = self->_contentLoadQueue;
        self->_contentLoadQueue = v9;

        v7 = v16;
        contentLoadQueue = self->_contentLoadQueue;
      }

      v11 = [(NSMutableArray *)contentLoadQueue indexOfObject:v7];
      if (v11 == 0x7FFFFFFFFFFFFFFFLL)
      {
        if (v4 && [(NSMutableArray *)self->_contentLoadQueue count])
        {
          [(NSMutableArray *)self->_contentLoadQueue insertObject:v16 atIndex:1];
        }

        else
        {
          [(NSMutableArray *)self->_contentLoadQueue addObject:v16];
        }
      }

      else
      {
        v12 = v11;
        if (v11 >= 2 && v4)
        {
          v14 = self->_contentLoadQueue;
          v15 = v16;
          [(NSMutableArray *)v14 removeObjectAtIndex:v12];
          [(NSMutableArray *)self->_contentLoadQueue insertObject:v15 atIndex:1];
        }
      }

      v6 = [(NSMutableArray *)self->_contentLoadQueue count];
      v7 = v16;
      if (v6 == &dword_0 + 1)
      {
        v6 = [v16 load];
        v7 = v16;
      }
    }
  }

  _objc_release_x1(v6, v7);
}

- (void)cancelPreloadForContent:(id)a3
{
  v4 = [(NSMutableArray *)self->_contentLoadQueue indexOfObject:a3];
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = v4;
    [(NSMutableArray *)self->_contentLoadQueue removeObjectAtIndex:v4];
    if (!v5)
    {
      if ([(NSMutableArray *)self->_contentLoadQueue count])
      {
        v6 = [(NSMutableArray *)self->_contentLoadQueue objectAtIndex:0];
        [v6 load];
      }
    }
  }
}

+ (id)valueOfAnnotationProperty:(id)a3 activityType:(id)a4 book:(id)a5
{
  v6 = a3;
  v29 = a5;
  v7 = [NSSet alloc];
  v30 = [v7 initWithObjects:{AEAssetActivityItemProviderPropertyStoreId, AEAssetActivityItemProviderPropertyEpubId, AEAssetActivityItemProviderPropertyTitle, AEAssetActivityItemProviderPropertyAuthor, AEAssetActivityItemProviderPropertyPublisherLocation, AEAssetActivityItemProviderPropertyPublisherName, AEAssetActivityItemProviderPropertyPublisherYear, AEAssetActivityItemProviderPropertyLanguage, AEAssetActivityItemProviderPropertyGenre, AEAssetActivityItemProviderPropertyIsContentProtected, 0}];
  if ([v30 containsObject:v6])
  {
    v8 = [NSDictionary alloc];
    v9 = [v8 initWithObjectsAndKeys:{@"storeId", AEAssetActivityItemProviderPropertyStoreId, @"bookEpubId", AEAssetActivityItemProviderPropertyEpubId, @"bookTitle", AEAssetActivityItemProviderPropertyTitle, @"bookAuthor", AEAssetActivityItemProviderPropertyAuthor, @"publisherLocation", AEAssetActivityItemProviderPropertyPublisherLocation, @"publisherName", AEAssetActivityItemProviderPropertyPublisherName, @"publisherYear", AEAssetActivityItemProviderPropertyPublisherYear, @"bookLanguage", AEAssetActivityItemProviderPropertyLanguage, @"genre", AEAssetActivityItemProviderPropertyGenre, @"isProtected", AEAssetActivityItemProviderPropertyIsContentProtected, 0}];
    v10 = [v9 objectForKey:v6];
    v11 = v29;
    v12 = [v29 valueForKey:v10];
LABEL_3:
    v13 = v12;
LABEL_21:

    goto LABEL_22;
  }

  v11 = v29;
  if ([v6 isEqualToString:AEAssetActivityItemProviderPropertyAssetCover])
  {
    v9 = [v29 url];
    v14 = +[AEPluginRegistry sharedInstance];
    v10 = [v14 pluginForURL:v9];

    if (!v10 || ([v10 helperForURL:v9 withOptions:0], v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v15, "helperCoverImage"), v13 = objc_claimAutoreleasedReturnValue(), v15, !v13))
    {
      v16 = [v29 pageProgressionDirection];
      [v16 isEqualToString:AEHelperStringMetadataPageProgressionRightToLeftValue];

      v17 = [v29 bookLanguage];
      v28 = [v29 coverWritingModeString];
      [v28 imIsVerticalWritingMode];
      BKGenericBookCoverLayoutFromLanguageAndVerticality();
      v18 = +[UIScreen mainScreen];
      [v18 scale];

      CGSizeScale();
      v19 = [v29 genericCoverTemplate];
      v20 = BKGenericBookCoverTemplateNameValid();

      v21 = [v29 shortBookTitle];
      v22 = [v29 bookAuthor];
      if (v20)
      {
        v23 = [v29 genericCoverTemplate];
        ImageWithTemplate = BKGenericBookCoverCreateImageWithTemplate();
      }

      else
      {
        v23 = [v29 databaseKey];
        ImageWithTemplate = BKGenericBookCoverCreateImageWithItemIDAndLayout();
      }

      v26 = ImageWithTemplate;

      if (v26)
      {
        v13 = [UIImage imageWithCGImage:v26];
        CFRelease(v26);
      }

      else
      {
        v13 = 0;
      }
    }

    goto LABEL_21;
  }

  if ([v6 isEqualToString:AEAssetActivityItemProviderPropertyAssetType])
  {
    v13 = [v29 assetType];
    goto LABEL_22;
  }

  if ([v6 isEqualToString:AEAssetActivityItemProviderPropertyStoreUrl])
  {
    v25 = [v29 storeId];
    v13 = +[AEBookInfo storeURLForBookStoreId:isAudiobook:](AEBookInfo, "storeURLForBookStoreId:isAudiobook:", v25, [v29 contentType] == 4);

    goto LABEL_22;
  }

  if ([v6 isEqualToString:AEAssetActivityItemProviderPropertyStoreShortUrl])
  {
    if ([v29 isStoreBook])
    {
      v9 = +[AEUserPublishing sharedInstance];
      v10 = [v29 storeId];
      v12 = [v9 storeShortURLForStoreId:v10 dataSource:0];
      goto LABEL_3;
    }
  }

  else
  {
    if ([v6 isEqualToString:AEAssetActivityItemProviderPropertyBookDescription])
    {
      v9 = +[AEAssetEngine libraryMgr];
      v10 = [v29 assetID];
      v12 = [v9 bookDescriptionForAssetID:v10];
      goto LABEL_3;
    }

    if ([v6 isEqualToString:AEAssetActivityItemProviderPropertySeriesTitle])
    {
      v9 = +[AEAssetEngine libraryMgr];
      v10 = [v29 assetID];
      v12 = [v9 seriesTitleForAssetID:v10];
      goto LABEL_3;
    }
  }

  v13 = 0;
LABEL_22:

  return v13;
}

+ (id)propertySourceFromBook:(id)a3
{
  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = sub_5ABC0;
  v11 = &unk_1E40D8;
  v12 = a3;
  v13 = a1;
  v4 = v12;
  v5 = objc_retainBlock(&v8);
  v6 = [v5 copy];

  return v6;
}

+ (BOOL)areCitationsAllowedForBook:(id)a3
{
  v3 = a3;
  if ([v3 isProtected] && (+[AEAssetEngine storeMgr](AEAssetEngine, "storeMgr"), v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "clientApplicationController"), v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "storeFrontId"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v5, "citationAllowedForStoreFrontID:", objc_msgSend(v6, "unsignedLongLongValue")), v6, v5, v4, !v7))
  {
    LOBYTE(v9) = 0;
  }

  else
  {
    v8 = [v3 sampleContent];
    v9 = [v8 BOOLValue] ^ 1;
  }

  return v9;
}

- (void)shareAnnotation:(id)a3 fromRect:(CGRect)a4 inView:(id)a5 completion:(id)a6
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v13 = a6;
  v14 = a5;
  v15 = [NSArray arrayWithObject:a3];
  [(BKBookViewController *)self shareAnnotations:v15 fromRect:v14 inView:1 excerpt:v13 completion:x, y, width, height];
}

- (void)shareAnnotations:(id)a3 fromBarButtonItem:(id)a4 excerpt:(BOOL)a5 completion:(id)a6
{
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_5AE68;
  v14[3] = &unk_1E4150;
  v14[4] = self;
  v15 = a3;
  v18 = a5;
  v16 = a4;
  v17 = a6;
  v10 = v16;
  v11 = v17;
  v12 = v15;
  v13 = objc_retainBlock(v14);
  [(BKViewController *)self dismissCurrentPopoverWithCompletion:v13];
}

- (void)shareAnnotations:(id)a3 fromRect:(CGRect)a4 inView:(id)a5 excerpt:(BOOL)a6 completion:(id)a7
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v15 = a3;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_5B620;
  v20[3] = &unk_1E4178;
  v20[4] = self;
  v21 = a5;
  v24 = x;
  v25 = y;
  v26 = width;
  v27 = height;
  v28 = a6;
  v22 = v15;
  v23 = a7;
  v16 = v23;
  v17 = v15;
  v18 = v21;
  v19 = objc_retainBlock(v20);
  [(BKViewController *)self dismissCurrentPopoverWithCompletion:v19];
}

- (void)expandAnnotation:(id)a3 location:(id)a4 selectedText:(id)a5 representativeText:(id)a6
{
  if (a4)
  {
    v10 = a6;
    v11 = a5;
    v12 = a4;
    v13 = a3;
    v14 = [(BKBookViewController *)self book];
    [v14 expandAnnotation:v13 location:v12 selectedText:v11 representativeText:v10];
  }
}

- (id)addAnnotation:(int)a3 location:(id)a4 selectedText:(id)a5 representativeText:(id)a6
{
  if (a4)
  {
    v8 = *&a3;
    v10 = a6;
    v11 = a5;
    v12 = a4;
    v13 = [(BKBookViewController *)self book];
    v14 = [v13 addAnnotation:v8 location:v12 selectedText:v11 representativeText:v10];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)contentViewController:(id)a3 showHighlightingMenuForAnnotation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(BKBookViewController *)self theme];
  v9 = [v8 annotationPageTheme];

  v10 = +[AEAnnotationTheme themeForAnnotationStyle:pageTheme:isUnderline:](AEAnnotationTheme, "themeForAnnotationStyle:pageTheme:isUnderline:", [v7 annotationStyle], v9, objc_msgSend(v7, "annotationIsUnderline"));
  objc_initWeak(&location, self);
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_5C090;
  v17[3] = &unk_1E41A0;
  objc_copyWeak(v21, &location);
  v11 = v6;
  v18 = v11;
  v12 = v10;
  v19 = v12;
  v21[1] = v9;
  v13 = v7;
  v20 = v13;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_5C210;
  v15[3] = &unk_1E41C8;
  v14 = objc_retainBlock(v17);
  v16 = v14;
  [v11 rectForAnnotation:v13 withCompletion:v15];

  objc_destroyWeak(v21);
  objc_destroyWeak(&location);
}

- (void)contentViewController:(id)a3 shareAnnotation:(id)a4 annotationRects:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = [a5 firstObject];
  v14 = v13;
  if (v13)
  {
    [v13 rectValue];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v23 = [v10 view];
    [(BKBookViewController *)self shareAnnotation:v11 fromRect:v23 inView:v12 completion:v16, v18, v20, v22];
LABEL_5:

    goto LABEL_6;
  }

  if ([v11 conformsToProtocol:&OBJC_PROTOCOL___BKBookmark])
  {
    v24 = v11;
    v25 = [v24 location];
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_5C3C4;
    v26[3] = &unk_1E41F0;
    v26[4] = self;
    v27 = v24;
    v28 = v10;
    v29 = v12;
    v23 = v24;
    [v28 visibleRectForLocation:v25 completion:v26];

    goto LABEL_5;
  }

LABEL_6:
}

- (id)_readPlayer
{
  readPlayer = self->_readPlayer;
  if (!readPlayer)
  {
    v4 = objc_alloc_init(IMAVPlayer);
    v5 = self->_readPlayer;
    self->_readPlayer = v4;

    [(IMAVPlayer *)self->_readPlayer setUsesExternalPlaybackWhileExternalScreenIsActive:0];
    [(IMAVPlayer *)self->_readPlayer setDelegate:self];
    v6 = +[NSUserDefaults standardUserDefaults];
    v7 = [v6 objectForKey:@"AudioVolume"];

    if (v7)
    {
      [v7 floatValue];
      [(IMAVPlayer *)self->_readPlayer setVolume:?];
    }

    readPlayer = self->_readPlayer;
  }

  return readPlayer;
}

- (id)_trackPlayer
{
  trackPlayer = self->_trackPlayer;
  if (!trackPlayer)
  {
    v4 = objc_alloc_init(IMAVPlayer);
    v5 = self->_trackPlayer;
    self->_trackPlayer = v4;

    [(IMAVPlayer *)self->_trackPlayer setUsesExternalPlaybackWhileExternalScreenIsActive:0];
    v6 = +[NSUserDefaults standardUserDefaults];
    v7 = [v6 objectForKey:@"AudioVolume"];

    if (v7)
    {
      [v7 floatValue];
      [(IMAVPlayer *)self->_trackPlayer setVolume:?];
    }

    trackPlayer = self->_trackPlayer;
  }

  return trackPlayer;
}

- (BOOL)hasSoundtrack
{
  v2 = [(BKBookViewController *)self currentSoundtrack];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)isSoundtrackPlaying
{
  v3 = [(BKBookViewController *)self hasSoundtrack];
  if (v3)
  {
    LOBYTE(v3) = self->_isPlayingSoundTrack;
  }

  return v3;
}

- (void)setReadAloudState:(BOOL)a3
{
  if (self->_isReading != a3)
  {
    if (a3)
    {
      self->_isReading = 1;
      [(BKBookViewController *)self startReadAloud];
      [(BKBookViewController *)self dismissCurrentPopover];
      if (![(BKBookViewController *)self bkaxNeedsPersistentControls])
      {
        [(BKBookViewController *)self hidePageControls:0];
      }
    }

    else
    {
      [(BKBookViewController *)self stopReadAloud];
      [(BKBookViewController *)self _nextPageHint:0];
      self->_isReading = 0;
      v4 = [(BKBookViewController *)self currentPages];
      v6 = v5;
      v7 = [(BKBookViewController *)self pageNumberFromRange:v4, v5];
      if (v6)
      {
        v8 = v7;
        do
        {
          v9 = [(BKBookViewController *)self contentViewControllerForPageNumber:v8];
          [(BKBookViewController *)self _removeClickHandlers:v9];
          [(BKBookViewController *)self _cleanDocumentElementForMediaOverlay:v9];

          ++v8;
          --v6;
        }

        while (v6);
      }
    }

    [(BKBookViewController *)self updateToolbarController];

    [(BKBookViewController *)self updateTouchBarController];
  }
}

- (int)readAloudState
{
  v3 = [(BKBookViewController *)self book];
  v4 = [v3 hasMediaOverlayElements];

  if (v4)
  {
    return self->_isReading;
  }

  else
  {
    return -1;
  }
}

- (void)setTrackState:(BOOL)a3 persistSetting:(BOOL)a4
{
  v4 = a4;
  if (!a3)
  {
    [(BKBookViewController *)self stopSoundtrack];
    self->_isPlayingSoundTrack = 0;
    if (!v4)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  self->_isPlayingSoundTrack = 1;
  [(BKBookViewController *)self playCurrentSoundtrack];
  if (v4)
  {
LABEL_5:
    v6 = +[NSUserDefaults standardUserDefaults];
    v7 = [NSNumber numberWithBool:self->_isPlayingSoundTrack];
    [v6 setObject:v7 forKey:@"soundtrackState"];
  }

LABEL_6:

  [(BKBookViewController *)self updateToolbarController];
}

- (int)trackState
{
  v3 = [(BKBookViewController *)self currentSoundtrack];

  if (v3)
  {
    return self->_isPlayingSoundTrack;
  }

  else
  {
    return -1;
  }
}

- (void)setTurnState:(BOOL)a3
{
  self->_autoTurn = a3;
  v4 = +[NSUserDefaults standardUserDefaults];
  v5 = [NSNumber numberWithBool:self->_autoTurn];
  [v4 setObject:v5 forKey:BKReadAloudAutoPageTurn[0]];

  [(BKBookViewController *)self updateToolbarController];
}

- (void)setVolume:(float)a3
{
  [(IMAVPlayer *)self->_readPlayer setVolume:?];
  *&v5 = a3;
  [(IMAVPlayer *)self->_trackPlayer setVolume:v5];
  v8 = +[NSUserDefaults standardUserDefaults];
  *&v6 = a3;
  v7 = [NSNumber numberWithFloat:v6];
  [v8 setObject:v7 forKey:@"AudioVolume"];
}

- (float)volume
{
  v2 = [(BKBookViewController *)self _readPlayer];
  [v2 volume];
  v4 = v3;

  return v4;
}

- (void)dismissCurrentPopoverAnimated:(BOOL)a3
{
  v3 = a3;
  if (self->_appearanceContainerViewController)
  {
    v5 = [(BKBookViewController *)self presentedViewController];
    appearanceContainerViewController = self->_appearanceContainerViewController;

    if (v5 == appearanceContainerViewController)
    {
      [(BKBookViewController *)self handleAppearanceViewControllerDismissal];
    }
  }

  [(BKBookViewController *)self setActivityViewController:0];
  [(BKBookViewController *)self _cleanupFootnoteViewController];
  v7.receiver = self;
  v7.super_class = BKBookViewController;
  [(BKViewController *)&v7 dismissCurrentPopoverAnimated:v3];
}

- (void)playerStateChanged:(id)a3
{
  if (self->_readPlayer == a3)
  {
    [(BKBookViewController *)self updateTouchBarController];
  }
}

- (void)playerCurrentItemEnded:(id)a3
{
  v4 = a3;
  if (self->_readPlayer == v4)
  {
    v17 = v4;
    currentMapItem = self->_currentMapItem;
    if (currentMapItem)
    {
      v6 = [(NSDictionary *)currentMapItem valueForKey:@"smil"];
      [(BKBookViewController *)self _removeHighlightOnElement:v6];
      v7 = self->_currentMapItem;
      self->_currentMapItem = 0;
    }

    currentMapIndex = self->_currentMapIndex;
    if (currentMapIndex >= [(NSArray *)self->_smilMap count])
    {
      v9 = (self->_pagesForMap.location + self->_pagesForMap.length - 1);
      if (v9 == [(BKBookViewController *)self pageCountIncludingUpsell])
      {
        [(BKBookViewController *)self setReadAloudState:0];
        goto LABEL_8;
      }

      ++self->_currentMapIndex;
      v10 = [(BKBookViewController *)self performSelectorProxy];
      [NSObject cancelPreviousPerformRequestsWithTarget:v10 selector:"_playNextItem" object:0];

      v11 = [(BKBookViewController *)self currentPages];
      if (self->_autoTurn)
      {
        v13 = v11;
        v14 = v12;
        if (![(BKBookViewController *)self _isFocusedOnSecondPageOfSpread])
        {
          previousReadingOrdinal = self->_previousReadingOrdinal;
          if ((previousReadingOrdinal + 1) == v13 && v14 >= 2)
          {
            [(BKBookViewController *)self _focusOnPage:previousReadingOrdinal + 2];
            [(BKBookViewController *)self clearSelection];
            v16 = [(BKBookViewController *)self performSelectorProxy];
            [v16 performSelector:"_playNextItem" withObject:0 afterDelay:3.0];

            goto LABEL_8;
          }
        }
      }
    }

    [(BKBookViewController *)self _playNextItem];
LABEL_8:
    v4 = v17;
  }
}

- (void)player:(id)a3 callbackForTime:(double)a4
{
  v24 = a3;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = self->_smilMap;
  v6 = [(NSArray *)obj countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v6)
  {
    v7 = v6;
    v26 = *v28;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v28 != v26)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v27 + 1) + 8 * i);
        v10 = [v9 valueForKey:@"smil"];
        v11 = [v10 audioHref];

        if (v11)
        {
          v12 = self;
          v13 = [(BKBookViewController *)self book];
          v14 = [v13 basePlusContentPath];
          v15 = [v10 audioHref];
          v16 = [v14 stringByAppendingPathComponent:v15];

          v17 = [NSURL fileURLWithPath:v16 isDirectory:0];
          v18 = [v10 audioStart];
          [v18 doubleValue];
          if (vabdd_f64(v19, a4) >= 0.001)
          {
          }

          else
          {
            v20 = [v24 assetURL];
            v21 = [v17 isEqual:v20];

            if (v21)
            {
              v22 = [v9 valueForKey:@"ordinal"];
              v23 = [v22 intValue];

              if (v12->_previousReadingOrdinal != v23)
              {
                v12->_previousReadingOrdinal = v23;
                [(BKBookViewController *)v12 _focusOnPage:v23 + 1];
                [(BKBookViewController *)v12 clearSelection];
              }

              [(BKBookViewController *)v12 _highlightElement:v10];

              goto LABEL_18;
            }
          }

          self = v12;
        }
      }

      v7 = [(NSArray *)obj countByEnumeratingWithState:&v27 objects:v31 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_18:
}

- (BOOL)isReadAloudPaused
{
  if (!self->_isReading)
  {
    return 0;
  }

  v2 = [(BKBookViewController *)self _readPlayer];
  v3 = [v2 state] == 3;

  return v3;
}

- (void)_startReadAloud:(BOOL)a3
{
  if (a3 && [(BKBookViewController *)self isReadAloudPaused])
  {
    v4 = 1;
  }

  else
  {
    [(BKBookViewController *)self stopReadAloud];
    v4 = 0;
  }

  v5 = [(BKBookViewController *)self currentPages];
  v7 = v6;
  v8 = [(BKBookViewController *)self pageNumberFromRange:v5, v6];
  if (v7)
  {
    v9 = v8;
    v10 = v7;
    do
    {
      v11 = [(BKBookViewController *)self contentViewControllerForPageNumber:v9];
      [(BKBookViewController *)self _installClickHandlers:v11];
      [(BKBookViewController *)self _markupDocumentElementForMediaOverlay:v11];

      ++v9;
      --v10;
    }

    while (v10);
  }

  if (v4)
  {
    v12 = [(BKBookViewController *)self _readPlayer];
    [v12 play];
LABEL_14:

    goto LABEL_16;
  }

  if (self->_autoTurn && ([(BKBookViewController *)self _isPageEmpty:v5, v7]|| [(BKBookViewController *)self _isPageAllZeros:v5, v7]))
  {
    v12 = [NSNumber numberWithBool:0];
    [(BKBookViewController *)self readNextPages:v12];
    goto LABEL_14;
  }

  [(BKBookViewController *)self readPages:v5 from:v7 to:[(BKBookViewController *)self _itemIndexForCurrentPage] waitOnEmpty:-1, 0];
LABEL_16:
  self->_isAutoTurning = 1;
  v13 = +[BCAudioMuxingCoordinator sharedInstance];
  [v13 notifyPlaybackWillStart:self];
}

- (void)stopReadAloudAndReload:(BOOL)a3
{
  v3 = a3;
  [(BKBookViewController *)self pauseReadAloud];
  [(IMAVPlayer *)self->_readPlayer setCurrentTime:0.0];
  if (v3)
  {
    v5 = [(IMAVPlayer *)self->_readPlayer assetURL];
    v6 = [AVAsset assetWithURL:v5];
    [(IMAVPlayer *)self->_readPlayer setAsset:v6];
  }

  smilMap = self->_smilMap;
  self->_smilMap = 0;

  currentMapItem = self->_currentMapItem;
  self->_currentMapItem = 0;

  self->_currentMapIndex = -1;
  self->_maxMapIndex = -1;
  self->_previousReadingOrdinal = -1;
  v9 = [NSNumber numberWithBool:1];
  [NSObject cancelPreviousPerformRequestsWithTarget:self selector:"_nextDelayedPageHint:" object:v9];
}

- (void)pauseReadAloud
{
  if (self->_isReading && ![(BKBookViewController *)self isReadAloudPaused])
  {
    [(IMAVPlayer *)self->_readPlayer pause];
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v3 = self->_smilMap;
    v4 = [(NSArray *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v12;
      do
      {
        v7 = 0;
        do
        {
          if (*v12 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = [*(*(&v11 + 1) + 8 * v7) valueForKey:{@"smil", v11}];
          [(BKBookViewController *)self _removeHighlightOnElement:v8];

          v7 = v7 + 1;
        }

        while (v5 != v7);
        v5 = [(NSArray *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v5);
    }

    v9 = [(BKBookViewController *)self performSelectorProxy];
    [NSObject cancelPreviousPerformRequestsWithTarget:v9 selector:"readNextPages:" object:0];

    v10 = [(BKBookViewController *)self performSelectorProxy];
    [NSObject cancelPreviousPerformRequestsWithTarget:v10 selector:"_playNextItem" object:0];

    self->_isAutoTurning = 0;
    +[IMSleepManager stopSleepTimer];
  }
}

- (void)resumeReadAloud
{
  if (self->_playNextItemAbortedWhileInactive)
  {
    self->_playNextItemAbortedWhileInactive = 0;
    v3 = [(BKBookViewController *)self performSelectorProxy];
    [v3 performSelector:"_playNextItem" withObject:0 afterDelay:1.0];
  }

  else if ([(BKBookViewController *)self isReadAloudPaused]&& self->_smilMap)
  {

    [(BKBookViewController *)self _startReadAloud:1];
  }
}

- (void)_playNextItem
{
  [NSObject cancelPreviousPerformRequestsWithTarget:self selector:"_nextDelayedPageHint:" object:&__kCFBooleanTrue];
  v3 = [(BKBookViewController *)self performSelectorProxy];
  [NSObject cancelPreviousPerformRequestsWithTarget:v3 selector:"readNextPages:" object:0];

  v4 = [(BKBookViewController *)self viewIfLoaded];
  v5 = [v4 window];
  v6 = [v5 windowScene];
  v7 = [v6 activationState];

  if (v7)
  {
    self->_playNextItemAbortedWhileInactive = 1;
  }

  else
  {
    self->_playNextItemAbortedWhileInactive = 0;
    v8 = [(BKBookViewController *)self currentPages];
    v10 = v9;
    if ([(BKBookViewController *)self _isPageEmpty:v8, v9]|| [(BKBookViewController *)self _isPageAllZeros:v8, v10])
    {
      if (&v8[v10 - 1] == [(BKBookViewController *)self pageCountIncludingUpsell])
      {

        [(BKBookViewController *)self setReadAloudState:0];
      }

      else if (self->_isAutoTurning || self->_autoTurn || v10 == 1)
      {
        if (self->_autoTurn)
        {
          if (![(BKBookViewController *)self _isFocusedOnSecondPageOfSpread]&& v10 != 1)
          {
            [(BKBookViewController *)self _focusOnPage:[(BKBookViewController *)self pageNumberFromRange:v8, v10]+ 1];
          }

          v11 = [(BKBookViewController *)self performSelectorProxy];
          [v11 performSelector:"readNextPages:" withObject:0 afterDelay:3.0];
        }

        else
        {
          [(BKBookViewController *)self _nextPageHint:1];
        }

        self->_isAutoTurning = 0;
      }

      else
      {
        [(BKBookViewController *)self stopReadAloud];

        [(BKBookViewController *)self _nextPageHint:1 afterDelay:1.0];
      }
    }

    else
    {
      currentMapIndex = self->_currentMapIndex;
      if (currentMapIndex >= [(NSArray *)self->_smilMap count])
      {
        v14 = self->_previousReadingOrdinal + 1;
        v15 = v14 >= v8;
        v16 = v14 - v8;
        if (v15 && v16 < v10)
        {
          self->_isAutoTurning = 0;
          if (self->_autoTurn)
          {
            v46 = [NSNumber numberWithBool:0];
            [(BKBookViewController *)self readNextPages:v46];
          }

          else
          {
            [(BKBookViewController *)self stopReadAloud];

            [(BKBookViewController *)self _nextPageHint:1];
          }
        }
      }

      else
      {
        maxMapIndex = self->_maxMapIndex;
        if (maxMapIndex < 0 || self->_currentMapIndex <= maxMapIndex)
        {
          v17 = [(BKBookViewController *)self _readPlayer];
          [v17 removeAllTimeObservers];
          v18 = [(NSArray *)self->_smilMap objectAtIndex:self->_currentMapIndex];
          currentMapItem = self->_currentMapItem;
          self->_currentMapItem = v18;

          ++self->_currentMapIndex;
          v20 = [(NSDictionary *)self->_currentMapItem objectForKey:@"smil"];
          v21 = [v20 audioStart];
          [v21 doubleValue];
          v23 = v22;

          v47 = v20;
          v24 = [v20 audioEnd];
          [v24 doubleValue];
          v26 = v25;

          [v17 addTimeObserver:v23];
          v27 = self->_currentMapIndex;
          if (v27 < [(NSArray *)self->_smilMap count])
          {
            while (1)
            {
              v28 = v17;
              v29 = [(NSArray *)self->_smilMap objectAtIndex:v27];
              v30 = [(NSDictionary *)v29 objectForKey:@"smil"];
              v31 = [v30 audioStart];
              [v31 doubleValue];
              v33 = v32;

              v34 = [v30 audioHref];
              v35 = [v47 audioHref];
              if (![v34 isEqualToString:v35])
              {
                break;
              }

              if (vabdd_f64(v33, v26) >= 2.0)
              {
                goto LABEL_43;
              }

              v17 = v28;
              [v28 addTimeObserver:v33];
              v36 = [v30 audioEnd];
              [v36 doubleValue];
              v26 = v37;

              v38 = self->_currentMapItem;
              self->_currentMapItem = v29;

              ++self->_currentMapIndex;
              if (++v27 >= [(NSArray *)self->_smilMap count])
              {
                goto LABEL_44;
              }
            }

LABEL_43:
            v17 = v28;
          }

LABEL_44:
          [v17 addTimeObserver:v26];
          v39 = [v47 audioHref];

          if (v39)
          {
            v40 = [(BKBookViewController *)self book];
            v41 = [v40 basePlusContentPath];
            v42 = [v47 audioHref];
            v43 = [v41 stringByAppendingPathComponent:v42];

            if (v43)
            {
              v44 = [NSURL fileURLWithPath:v43 isDirectory:0];
              [v17 setAssetURL:v44];

              if (v23 == v26)
              {
                [(BKBookViewController *)self _playNextItem];
              }

              else
              {
                [v17 setEndTime:v26];
                if (![v17 isPlaying] || (objc_msgSend(v17, "currentTime"), vabdd_f64(v23, v45) >= 2.0))
                {
                  [v17 playFrom:v23];
                }
              }
            }
          }
        }

        else
        {
          [(BKBookViewController *)self stopReadAloud];
        }

        self->_isAutoTurning = 0;
      }
    }
  }
}

- (void)readNextPages:(id)a3
{
  v4 = [a3 BOOLValue];
  v5 = [(BKBookViewController *)self currentPages];
  v7 = v6;
  if (-[BKBookViewController _isManualCurlInProgress](self, "_isManualCurlInProgress") || (+[NSRunLoop currentRunLoop](NSRunLoop, "currentRunLoop"), v8 = objc_claimAutoreleasedReturnValue(), [v8 currentMode], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "isEqualToString:", UITrackingRunLoopMode), v9, v8, (v10 & 1) != 0))
  {

    [(BKBookViewController *)self stopReadAloud];
  }

  else
  {
    v11 = v5 + v7;
    v12 = [(BKBookViewController *)self pageCountIncludingUpsell];
    if (v4)
    {
      if (v11 <= v12)
      {
        while ([(BKBookViewController *)self _isPageEmpty:v11, 1])
        {
          v13 = v11++ < [(BKBookViewController *)self pageCountIncludingUpsell];
          if (!v13)
          {
            return;
          }
        }

        [(BKBookViewController *)self turnToPageNumber:v11 animated:1];
        self->_isAutoTurning = 1;
      }
    }

    else
    {
      if (v11 <= v12)
      {
        while ([(BKBookViewController *)self _isPageAllZeros:v11, 1])
        {
          v14 = (v11 + 1);
          v13 = v11++ < [(BKBookViewController *)self pageCountIncludingUpsell];
          if (!v13)
          {
            goto LABEL_15;
          }
        }
      }

      v14 = v11;
LABEL_15:
      if ([(BKBookViewController *)self _isPageEmpty:v14, 1])
      {
        [(BKBookViewController *)self stopReadAloud];
      }

      [(BKBookViewController *)self turnToPageNumber:v14 animated:1];
      self->_isAutoTurning = 1;
      if (v14 == [(BKBookViewController *)self upsellOrdinal]+ 1)
      {

        [(BKBookViewController *)self setReadAloudState:0];
      }
    }
  }
}

- (void)contentView:(id)a3 didSelectMediaOverlayElement:(id)a4
{
  v5 = a4;
  v22 = [(BKBookViewController *)self currentPages];
  v23 = self;
  v21 = v6;
  v7 = [(BKBookViewController *)self smilMapOnPages:?];
  [v5 elementId];
  v25 = v24 = v5;
  v8 = [v5 documentHref];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = v7;
  v9 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v28;
    while (2)
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v28 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v27 + 1) + 8 * i);
        v14 = [v13 valueForKey:@"smil"];
        v15 = [v14 documentHref];
        if ([v15 isEqualToString:v8])
        {
          v16 = [v14 elementId];
          v17 = [v16 isEqualToString:v25];

          if (v17)
          {
            v18 = [obj indexOfObject:v13];
            v19 = v18;
            if ((v23->_currentMapIndex & 0x8000000000000000) == 0 && v23->_maxMapIndex < 0)
            {
              v20 = -1;
            }

            else if (v23->_autoTurn)
            {
              v20 = -1;
            }

            else
            {
              v20 = v18;
            }

            [(BKBookViewController *)v23 stopReadAloud];
            [(BKBookViewController *)v23 _nextPageHint:0];
            if (![(BKBookViewController *)v23 bkaxNeedsPersistentControls])
            {
              [(BKBookViewController *)v23 hidePageControls:0];
            }

            [(BKBookViewController *)v23 readPages:v22 from:v21 to:v19 waitOnEmpty:v20, 0];

            goto LABEL_22;
          }
        }

        else
        {
        }
      }

      v10 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_22:
}

- (void)readPages:(_NSRange)a3 from:(int64_t)a4 to:(int64_t)a5 waitOnEmpty:(BOOL)a6
{
  if (!self->_isReading)
  {
    return;
  }

  v6 = a6;
  length = a3.length;
  location = a3.location;
  self->_currentMapIndex = a4;
  self->_maxMapIndex = a5;
  currentMapItem = self->_currentMapItem;
  self->_currentMapItem = 0;

  v11 = [(BKBookViewController *)self smilMapOnPages:location, length];
  smilMap = self->_smilMap;
  self->_smilMap = v11;

  if (v6)
  {
    v13 = 0.5;
  }

  else
  {
    v13 = 0.0;
  }

  if (length)
  {
    if (length == 1)
    {
      v14 = 0;
      if (!v6)
      {
LABEL_18:
        if (length == 1)
        {
          [(BKBookViewController *)self pauseReadAloud];
        }

        goto LABEL_20;
      }
    }

    else
    {
      v14 = [(BKBookViewController *)self _isFocusedOnSecondPageOfSpread];
      if (!v6)
      {
        goto LABEL_18;
      }
    }

    if ((v14 & 1) == 0)
    {
      if ([(NSArray *)self->_smilMap count])
      {
        if (self->_autoTurn)
        {
          v15 = [(NSArray *)self->_smilMap objectAtIndex:0];
          v16 = [v15 objectForKey:@"ordinal"];
          if (location - 1 != [v16 intValue])
          {
            v13 = 3.0;
          }
        }
      }

      else
      {
        v13 = 3.0;
      }
    }

    goto LABEL_18;
  }

LABEL_20:
  +[IMSleepManager startSleepTimer];
  v17 = [(BKBookViewController *)self performSelectorProxy];
  [NSObject cancelPreviousPerformRequestsWithTarget:v17 selector:"_playNextItem" object:0];

  if (v13 == 0.0)
  {

    [(BKBookViewController *)self _playNextItem];
  }

  else
  {
    v18 = [(BKBookViewController *)self performSelectorProxy];
    [v18 performSelector:"_playNextItem" withObject:0 afterDelay:v13];
  }
}

- (id)smilMapOnPages:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  p_pagesForMap = &self->_pagesForMap;
  v7 = a3.location == self->_pagesForMap.location && a3.length == self->_pagesForMap.length;
  if (!v7 || (v8 = self->_smilMap) == 0)
  {
    v8 = [(BKBookViewController *)self _prepareSmilMapOn:location, length];
    p_pagesForMap->location = location;
    p_pagesForMap->length = length;
  }

  return v8;
}

- (id)contentViewControllerForMediaOverlayElement:(id)a3
{
  v4 = a3;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [(BKBookViewController *)self contentViewControllers];
  v6 = [v5 allValues];

  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = *v17;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = [v10 document];
        v12 = [v11 href];
        v13 = [v4 documentHref];
        v14 = [v12 isEqualToString:v13];

        if (v14)
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v7;
}

- (void)_removeHighlightOnElement:(id)a3
{
  if (self->_highlightedElement == a3)
  {
    v4 = a3;
    v6 = [(BKBookViewController *)self contentViewControllerForMediaOverlayElement:v4];
    [v6 clearMediaOverlayElement:v4];

    highlightedElement = self->_highlightedElement;
    self->_highlightedElement = 0;
  }
}

- (void)_highlightElement:(id)a3
{
  v4 = a3;
  [(BKBookViewController *)self _removeHighlightOnElement:self->_highlightedElement];
  highlightedElement = self->_highlightedElement;
  self->_highlightedElement = v4;
  v6 = v4;

  v7 = [(BKBookViewController *)self contentViewControllerForMediaOverlayElement:v6];
  [v7 highlightMediaOverlayElement:v6];
}

- (BOOL)_isPageEmpty:(_NSRange)a3
{
  v3 = [(BKBookViewController *)self smilMapOnPages:a3.location, a3.length];
  v4 = [v3 count] == 0;

  return v4;
}

- (BOOL)_isPageAllZeros:(_NSRange)a3
{
  v3 = [(BKBookViewController *)self smilMapOnPages:a3.location, a3.length];
  if ([v3 count])
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v4 = v3;
    v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v16;
      while (2)
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v16 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = [*(*(&v15 + 1) + 8 * i) objectForKey:{@"smil", v15}];
          v10 = [v9 audioStart];
          v11 = [v9 audioEnd];
          v12 = [v10 isEqualToNumber:v11];

          if (!v12)
          {
            v13 = 0;
            goto LABEL_12;
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    v13 = 1;
LABEL_12:
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)_nextDelayedPageHint:(id)a3
{
  v4 = [a3 BOOLValue];

  [(BKBookViewController *)self _nextPageHint:v4];
}

- (void)_nextPageHint:(BOOL)a3 afterDelay:(double)a4
{
  v6 = [NSNumber numberWithBool:a3];
  [(BKBookViewController *)self performSelector:"_nextDelayedPageHint:" withObject:v6 afterDelay:a4];
}

- (void)playCurrentSoundtrack
{
  if (self->_isPlayingSoundTrack)
  {
    v11 = [(BKBookViewController *)self currentSoundtrack];
    if (v11)
    {
      v4 = [(BKBookViewController *)self book];
      v5 = [v4 basePlusContentPath];
      v6 = [v5 stringByAppendingPathComponent:v11];

      v7 = [v6 stringByStandardizingPath];
      v8 = [NSURL fileURLWithPath:v7 isDirectory:0];
      v9 = [(BKBookViewController *)self _trackPlayer];
      [v9 setAssetURL:v8];

      [(IMAVPlayer *)self->_trackPlayer setLoops:0xFFFFFFFFLL];
      [(IMAVPlayer *)self->_trackPlayer play];
      v10 = +[BCAudioMuxingCoordinator sharedInstance];
      [v10 notifyPlaybackWillStart:self];
    }

    else
    {
      [(BKBookViewController *)self stopSoundtrack];
    }
  }
}

- (void)stopSoundtrackAndReload:(BOOL)a3
{
  v3 = a3;
  [(IMAVPlayer *)self->_trackPlayer pause];
  if (v3)
  {
    v6 = [(IMAVPlayer *)self->_trackPlayer assetURL];
    v5 = [AVAsset assetWithURL:v6];
    [(IMAVPlayer *)self->_trackPlayer setAsset:v5];
  }
}

- (void)audioPlaybackWillStart:(id)a3
{
  if (a3 != self)
  {
    [(BKBookViewController *)self setReadAloudState:0];
    [(BKBookViewController *)self setTrackState:0 persistSetting:0];

    [(BKBookViewController *)self stopPlayingMedia:0];
  }
}

- (void)_reportLoadFailedAlertForError:(id)a3
{
  v4 = a3;
  v5 = AEBundle();
  v6 = [v5 localizedStringForKey:@"Failed to load book because the requested resource is missing." value:&stru_1E7188 table:0];

  v7 = [UIAlertController alertControllerWithTitle:v6 message:0 preferredStyle:1];
  v8 = AEBundle();
  v9 = [v8 localizedStringForKey:@"OK" value:&stru_1E7188 table:0];
  v12 = _NSConcreteStackBlock;
  v13 = 3221225472;
  v14 = sub_5ECBC;
  v15 = &unk_1E4218;
  v16 = self;
  v17 = v4;
  v10 = v4;
  v11 = [UIAlertAction actionWithTitle:v9 style:0 handler:&v12];
  [v7 addAction:{v11, v12, v13, v14, v15, v16}];

  [(BKBookViewController *)self presentViewController:v7 animated:1 completion:0];
}

- (void)_reportResourceUnavailableForBookWithTitle:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = AEBundle();
  v9 = [v8 localizedStringForKey:@"Cannot Open Book" value:&stru_1E7188 table:0];

  if ([v6 length])
  {
    v10 = AEBundle();
    v11 = [v10 localizedStringForKey:@"Cannot Open “%@”" value:&stru_1E7188 table:0];
    v12 = [NSString stringWithFormat:v11, v6];

    v9 = v12;
  }

  v13 = AEBundle();
  v14 = [v13 localizedStringForKey:@"It is formatted incorrectly value:or is not a format that Apple Books can open." table:{&stru_1E7188, 0}];

  v15 = AEBundle();
  v16 = [v15 localizedStringForKey:@"Close" value:&stru_1E7188 table:0];

  v17 = [UIAlertController alertControllerWithTitle:v9 message:v14 preferredStyle:1];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_5EF38;
  v20[3] = &unk_1E4218;
  v20[4] = self;
  v21 = v7;
  v18 = v7;
  v19 = [UIAlertAction actionWithTitle:v16 style:1 handler:v20];
  [v17 addAction:v19];

  [(BKBookViewController *)self presentViewController:v17 animated:1 completion:0];
}

- (void)contentFailedToLoadWithError:(id)a3
{
  v4 = a3;
  v5 = BCIMLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v22 = "[BKBookViewController contentFailedToLoadWithError:]";
    v23 = 2080;
    v24 = "/Library/Caches/com.apple.xbs/Sources/Alder/ios/AEBookPlugins/Shared/Controllers/BKBookViewController.m";
    v25 = 1024;
    v26 = 6982;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "%s %s:%d", buf, 0x1Cu);
  }

  v6 = BCIMLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v22 = v4;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_INFO, "@Showing Load Failed Alert -- %@", buf, 0xCu);
  }

  v7 = [v4 domain];
  if ([v7 isEqualToString:NSURLErrorDomain])
  {
    v8 = [v4 code];

    if (v8 == -1008)
    {
      v9 = [(BKBookViewController *)self book];
      v10 = [v9 bookTitle];

      v11 = BCIMLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 136315650;
        v22 = "[BKBookViewController contentFailedToLoadWithError:]";
        v23 = 2080;
        v24 = "/Library/Caches/com.apple.xbs/Sources/Alder/ios/AEBookPlugins/Shared/Controllers/BKBookViewController.m";
        v25 = 1024;
        v26 = 6987;
        _os_log_impl(&dword_0, v11, OS_LOG_TYPE_INFO, "%s %s:%d", buf, 0x1Cu);
      }

      v12 = BCIMLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v22 = v10;
        _os_log_impl(&dword_0, v12, OS_LOG_TYPE_INFO, "@Load Failed Alert for book: %@", buf, 0xCu);
      }

      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_5F2F4;
      block[3] = &unk_1E4240;
      block[4] = self;
      v19 = v10;
      v20 = v4;
      v13 = v10;
      dispatch_async(&_dispatch_main_q, block);

      goto LABEL_17;
    }
  }

  else
  {
  }

  v14 = [v4 domain];
  v15 = [v14 isEqualToString:kCFErrorDomainCFNetwork];

  if (!v15 && ([v4 domain], v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "isEqualToString:", NSURLErrorDomain), v16, !v17) || objc_msgSend(v4, "code") != -999)
  {
    [(BKBookViewController *)self performSelectorOnMainThread:"_reportLoadFailedAlertForError:" withObject:v4 waitUntilDone:0];
  }

LABEL_17:
}

- (id)fullScreenNoteEditorForAnnotation:(id)a3
{
  v4 = a3;
  v5 = [(BKBookViewController *)self theme];
  v6 = [v5 shouldInvertContent];

  v7 = [v4 annotationNote];
  v8 = [v7 length] == 0;

  v9 = objc_alloc_init(AENoteFullscreenEditorController);
  [v9 setEditsOnLaunch:v8];
  v10 = [(BKBookViewController *)self noteEditorHighlightedTextFont];
  [v9 setHighlightedTextFont:v10];

  [v9 setAnnotation:v4];
  [v9 setDelegate:self];
  [v9 setShouldDim:v6];
  v11 = [(BKBookViewController *)self theme];
  [v9 setTheme:v11];

  return v9;
}

- (void)showNoteEditorForAnnotation:(id)a3
{
  v4 = a3;
  [(AENotePopoverEditorController *)self->_noteEditor setDelegate:0];
  noteEditor = self->_noteEditor;
  self->_noteEditor = 0;

  v6 = objc_alloc_init(AENotePopoverEditorController);
  v7 = self->_noteEditor;
  self->_noteEditor = v6;

  [(AENotePopoverEditorController *)self->_noteEditor setAnnotation:v4];
  v8 = [(BKBookViewController *)self theme];
  v9 = [v8 annotationPageTheme];

  v10 = +[AEAnnotationTheme themeForAnnotationStyle:pageTheme:isUnderline:](AEAnnotationTheme, "themeForAnnotationStyle:pageTheme:isUnderline:", [v4 annotationStyle], v9, objc_msgSend(v4, "annotationIsUnderline"));
  [(AENotePopoverEditorController *)self->_noteEditor setAnnotationTheme:v10];

  if (objc_opt_respondsToSelector())
  {
    v11 = [(BKBookViewController *)self theme];
    [(AENotePopoverEditorController *)self->_noteEditor setTheme:v11];
  }

  [(AENotePopoverEditorController *)self->_noteEditor setDelegate:self];
  v12 = [v4 annotationNote];
  v13 = [v12 length] == 0;

  [(AENotePopoverEditorController *)self->_noteEditor setEditsOnLaunch:v13];
  if (([(BKBookViewController *)self im_isCompactWidth]& 1) != 0 || ([(BKBookViewController *)self im_isCompactHeight]& 1) != 0)
  {
    v14 = [(BKBookViewController *)self fullScreenNoteEditorForAnnotation:v4];
    [(BKBookViewController *)self setControlsVisible:1 animated:1];
    [(BKBookViewController *)self presentViewController:v14 animated:1 completion:0];
  }

  else
  {
    v15 = [(BKBookViewController *)self contentViewControllerForAnnotation:v4];
    v14 = v15;
    if (v15)
    {
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_5F64C;
      v16[3] = &unk_1E3488;
      v17 = v15;
      v18 = self;
      [v17 rectForAnnotation:v4 withCompletion:v16];
    }
  }
}

- (BOOL)isEditingAnnotation:(id)a3
{
  v4 = [a3 annotationUuid];
  v5 = [(AENotePopoverEditorController *)self->_noteEditor annotation];
  v6 = [v5 annotationUuid];
  v7 = [v4 isEqualToString:v6];

  return v7;
}

- (void)didHideAnnotationEditor:(id)a3
{
  v4 = a3;
  v5 = [(AENotePopoverEditorController *)v4 annotation];
  if ([v5 isInserted] && (objc_msgSend(v5, "annotationNote"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "length"), v6, !v7))
  {
    v10 = [(BKBookViewController *)self book];
    [v10 deleteAnnotation:v5];
  }

  else
  {
    v8 = [v5 managedObjectContext];
    v17 = 0;
    v9 = [v8 save:&v17];
    v10 = v17;

    if ((v9 & 1) == 0 && v10)
    {
      v11 = BCIMLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 136315650;
        v19 = "[BKBookViewController didHideAnnotationEditor:]";
        v20 = 2080;
        v21 = "/Library/Caches/com.apple.xbs/Sources/Alder/ios/AEBookPlugins/Shared/Controllers/BKBookViewController.m";
        v22 = 1024;
        v23 = 7123;
        _os_log_impl(&dword_0, v11, OS_LOG_TYPE_INFO, "%s %s:%d", buf, 0x1Cu);
      }

      v12 = BCIMLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v19 = v10;
        _os_log_impl(&dword_0, v12, OS_LOG_TYPE_INFO, "@Save Error: %@", buf, 0xCu);
      }
    }
  }

  p_noteEditor = &self->_noteEditor;
  noteEditor = self->_noteEditor;
  if (noteEditor == v4)
  {
    [(AENotePopoverEditorController *)noteEditor setDelegate:0];
    goto LABEL_15;
  }

  p_noteEditor = &self->_colorEditor;
  colorEditor = self->_colorEditor;
  if (colorEditor == v4)
  {
    [(AEHighlightColorEditorController *)colorEditor removeFromParentViewController];
LABEL_15:
    v16 = *p_noteEditor;
    *p_noteEditor = 0;
  }

  [(BKBookViewController *)self clearSelectedAnnotation];
}

- (void)editorController:(id)a3 setTheme:(id)a4 forAnnotation:(id)a5
{
  v6 = a5;
  v7 = a4;
  v8 = [v7 annotationStyle];
  v9 = [v7 isUnderline];

  v12 = v6;
  [v12 setAnnotationStyle:v8];
  [v12 setAnnotationIsUnderline:v9];

  v10 = +[NSUserDefaults standardUserDefaults];
  [v10 setInteger:v8 forKey:BKDefaultHighlightColor[0]];

  v11 = +[NSUserDefaults standardUserDefaults];
  [v11 setBool:v9 forKey:BKDefaultUnderlineState];
}

- (void)editorController:(id)a3 deleteAnnotation:(id)a4
{
  v5 = a4;
  v6 = [(BKBookViewController *)self book];
  [v6 deleteAnnotation:v5];

  v7 = [(BKBookViewController *)self searchResult];

  if (v7)
  {
    v8 = [(BKBookViewController *)self searchResult];
    [(BKBookViewController *)self highlightSearchResult:v8];
  }
}

- (_NSRange)pageRangeForAnnotation:(id)a3
{
  v4 = a3;
  if ([v4 conformsToProtocol:&OBJC_PROTOCOL___BKBookmark])
  {
    v5 = [(BKBookViewController *)self paginationController];
    v6 = [v5 pageRangeForAnnotation:v4];
    v8 = v7;
  }

  else
  {
    v8 = 0;
    v6 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v9 = v6;
  v10 = v8;
  result.length = v10;
  result.location = v9;
  return result;
}

- (id)chapterTitleForAnnotation:(id)a3
{
  v4 = a3;
  if ([v4 conformsToProtocol:&OBJC_PROTOCOL___BKBookmark])
  {
    v5 = [(BKBookViewController *)self paginationController];
    v6 = [v5 pageRangeForAnnotation:v4];
    v8 = [(BKBookViewController *)self pageNumberFromRange:v6, v7];

    v9 = [(BKBookViewController *)self titleForChapterAtPageNumber:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)editorController:(id)a3 editedAnnotation:(id)a4 toText:(id)a5
{
  v6 = a4;
  v7 = a5;
  [v6 setAnnotationNote:v7];
  v8 = BKMobileCloudSyncAnnotationsLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = [v6 annotationAssetID];
    v10 = [v6 annotationUuid];
    v12 = 138412546;
    v13 = v9;
    v14 = 2112;
    v15 = v10;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, "edit annotation note: assetID: %@, uuid: %@", &v12, 0x16u);
  }

  v11 = BKMobileCloudSyncAnnotationsLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    sub_137C7C();
  }
}

- (void)editorController:(id)a3 shareAnnotation:(id)a4
{
  v6 = a4;
  v7 = a3;
  [v7 presentationRect];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = [v7 presentationView];

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_5FF0C;
  v17[3] = &unk_1E4268;
  v17[4] = self;
  [(BKBookViewController *)self shareAnnotation:v6 fromRect:v16 inView:v17 completion:v9, v11, v13, v15];
}

- (BOOL)editorController:(id)a3 isSharingEnabledForAnnotation:(id)a4
{
  v5 = a4;
  if ([(BKBookViewController *)self isSharingSupported])
  {
    v6 = objc_opt_class();
    v7 = [(BKBookViewController *)self book];
    if ([v6 areCitationsAllowedForBook:v7])
    {
      v8 = [v5 annotationSelectedText];
      v9 = [v8 length] != 0;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)transitionContentBackgroundColor
{
  v3 = [(BKBookViewController *)self theme];
  v4 = [v3 backgroundColorForTraitEnvironment:self];

  return v4;
}

- (id)transitionContentView
{
  BCReportAssertionFailureWithMessage();

  return [(BKBookViewController *)self view];
}

- (void)_paginationComplete:(id)a3
{
  v4 = [a3 object];
  v5 = [(BKBookViewController *)self paginationController];

  v6 = _AEPaginationLog();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v4 != v5)
  {
    if (v7)
    {
      v8 = [(BKBookViewController *)self paginationController];
      v14 = 138412546;
      v15 = self;
      v16 = 2112;
      v17 = v8;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "IGNORING paginationComplete BVC:%@ paginationController:%@", &v14, 0x16u);
    }

    goto LABEL_4;
  }

  if (v7)
  {
    v9 = [(BKBookViewController *)self paginationController];
    v14 = 138412546;
    v15 = self;
    v16 = 2112;
    v17 = v9;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Received paginationComplete BVC:%@ paginationController:%@", &v14, 0x16u);
  }

  v10 = [(BKBookViewController *)self assetViewControllerDelegate];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    v12 = [(BKBookViewController *)self assetViewControllerDelegate];
    [v12 assetViewControllerPaginationCompletedForBook:self];
  }

  if ([(BKBookViewController *)self _inAnalyticsReadSession])
  {
    v13 = [(BKBookViewController *)self analyticsReadStartProgress];

    if (!v13)
    {
      v6 = [(BKBookViewController *)self _currentReadingProgress];
      [(BKBookViewController *)self setAnalyticsReadStartProgress:v6];
LABEL_4:
    }
  }
}

- (void)buildContextTree:(id)a3
{
  v39 = a3;
  v4 = objc_opt_new();
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v31 = self;
  v5 = [(BKBookViewController *)self book];
  v6 = [v5 sortedDocuments];

  obj = v6;
  v32 = [v6 countByEnumeratingWithState:&v44 objects:v51 count:16];
  if (v32)
  {
    v7 = 0;
    v30 = *v45;
    v38 = BCProgressContextTreeKey_uniqueID;
    v37 = BCProgressContextTreeKey_title;
    v36 = BCProgressContextTreeKey_displayOrder;
    v35 = BCProgressContextTreeKey_cfi;
    do
    {
      v8 = 0;
      do
      {
        if (*v45 != v30)
        {
          objc_enumerationMutation(obj);
        }

        v33 = v8;
        v9 = *(*(&v44 + 1) + 8 * v8);
        v10 = [(BKBookViewController *)v31 book];
        v11 = [v10 navigationInfosForDocument:v9];

        v42 = 0u;
        v43 = 0u;
        v40 = 0u;
        v41 = 0u;
        v34 = v11;
        v12 = [v34 countByEnumeratingWithState:&v40 objects:v50 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v41;
          do
          {
            for (i = 0; i != v13; i = i + 1)
            {
              v16 = v4;
              if (*v41 != v14)
              {
                objc_enumerationMutation(v34);
              }

              v17 = *(*(&v40 + 1) + 8 * i);
              v18 = [v17 valueForKey:@"href"];
              v19 = [v17 valueForKey:@"name"];
              v20 = [v39 objectForKeyedSubscript:v18];
              v21 = v20;
              v22 = &stru_1E7188;
              if (v20)
              {
                v22 = v20;
              }

              v23 = v22;

              v48[0] = v38;
              v48[1] = v37;
              v49[0] = v18;
              v49[1] = v19;
              v48[2] = v36;
              v24 = [NSNumber numberWithInteger:v7];
              v48[3] = v35;
              v49[2] = v24;
              v49[3] = v23;
              v25 = [NSDictionary dictionaryWithObjects:v49 forKeys:v48 count:4];

              v4 = v16;
              [v16 addObject:v25];

              ++v7;
            }

            v13 = [v34 countByEnumeratingWithState:&v40 objects:v50 count:16];
          }

          while (v13);
        }

        v8 = v33 + 1;
      }

      while ((v33 + 1) != v32);
      v32 = [obj countByEnumeratingWithState:&v44 objects:v51 count:16];
    }

    while (v32);
  }

  if ([v4 count])
  {
    v26 = +[BCProgressKitController sharedController];
    v27 = [(BKBookViewController *)v31 book];
    v28 = [v27 assetID];
    [v26 buildContextTree:v4 forBook:v28 completion:0];
  }
}

- (void)_handleExternalLoadRequest:(id)a3 likelyUserInitiated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(BKBookViewController *)self assetViewControllerDelegate];
  [v7 assetViewController:self requestOpenURL:v6 likelyUserInitiated:v4];
}

- (BOOL)_controller:(id)a3 handleInternalRequestForURL:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 bc_pathWithoutPrecedingSlash];
  v9 = [v8 stringByRemovingURLFragment];
  v10 = [(BKBookViewController *)self book];
  v11 = [v10 documentAtPath:v9];

  if ([(BKBookViewController *)self isTOCURL:v7])
  {
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_6087C;
    v20[3] = &unk_1E2BD0;
    v20[4] = self;
    [(BKViewController *)self hideOverlayViewControllerWithCompletion:v20];
    goto LABEL_9;
  }

  v12 = [v11 documentOrdinal];
  if ([v12 integerValue] == -1)
  {

    goto LABEL_8;
  }

  v13 = [v11 nonlinearElement];
  v14 = [v13 BOOLValue];

  if (v14)
  {
LABEL_8:
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_60888;
    v17[3] = &unk_1E3F50;
    v18 = v7;
    v19 = self;
    [(BKViewController *)self hideOverlayViewControllerWithCompletion:v17];

    goto LABEL_9;
  }

  if (v8)
  {
    [v6 dismissViewControllerAnimated:1 completion:0];
    v15 = [v7 fragment];
    [(BKBookViewController *)self goToPath:v8 fragment:v15 animated:1];
  }

LABEL_9:

  return 0;
}

- (void)hoverInteraction:(id)a3 didChangeStateForRegionWithKeys:(id)a4
{
  v7 = a3;
  v6 = a4;
  if (self->_hoverInteraction == v7 && -[BCUIHoverInteraction isHovering](v7, "isHovering") && self->_section != 1 && [v6 containsObject:@"control"] && -[BCUIHoverInteraction stateForRegionWithKey:](v7, "stateForRegionWithKey:", @"control"))
  {
    [(BKBookViewController *)self setControlsVisible:1 animated:1];
    self->_controlsEnabledViaHover = 1;
  }
}

- (void)hoverInteractionDidSettle:(id)a3
{
  v4 = a3;
  if (([v4 stateForRegionWithKey:@"control"] & 1) == 0 && objc_msgSend(v4, "isHovering") && !self->_section && self->_controlsEnabledViaHover && -[BKBookViewController canDismissControls](self, "canDismissControls"))
  {
    [(BKBookViewController *)self setControlsVisible:0 animated:1];
    self->_controlsEnabledViaHover = 0;
  }
}

- (void)rebuildHoverRegions
{
  hoverInteraction = self->_hoverInteraction;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_60B7C;
  v3[3] = &unk_1E4290;
  v3[4] = self;
  [(BCUIHoverInteraction *)hoverInteraction rebuildRegionWithKey:@"control" block:v3];
}

- (BAContentSettingsData)analyticsContentSettingData
{
  if ([(BKBookViewController *)self _inAnalyticsReadSession])
  {
    v3 = [(BKBookViewController *)self book];
    v4 = [v3 annotationProvider];
    v5 = [v4 uiManagedObjectContext];

    [(BKBookViewController *)self bookmarksFetchRequestForBook:v3 moc:v5];
    v24 = v29 = 0;
    v6 = [v5 executeFetchRequest:? error:?];
    v23 = v29;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v7 = v6;
    v8 = [v7 countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = *v26;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v26 != v13)
          {
            objc_enumerationMutation(v7);
          }

          v15 = *(*(&v25 + 1) + 8 * i);
          v16 = [v15 annotationType];
          if (v16 == 2)
          {
            if ([v15 annotationHasNote])
            {
              ++v11;
            }

            else
            {
              ++v12;
            }
          }

          else if (v16 == 1)
          {
            ++v10;
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v9);
    }

    else
    {
      v10 = 0;
      v11 = 0;
      v12 = 0;
    }

    v18 = [BAContentSettingsData alloc];
    v19 = [NSNumber numberWithUnsignedInteger:v10];
    v20 = [NSNumber numberWithUnsignedInteger:v11];
    v21 = [NSNumber numberWithUnsignedInteger:v12];
    v17 = [v18 initWithBookmarkCount:v19 noteCount:v20 highlightCount:v21];
  }

  else
  {
    v17 = [[BAContentSettingsData alloc] initWithBookmarkCount:&off_1F14D8 noteCount:&off_1F14D8 highlightCount:&off_1F14D8];
  }

  return v17;
}

- (void)emitScrubEventStartPosition:(int64_t)a3 endPosition:(int64_t)a4 totalLength:(int64_t)a5
{
  v15 = [(BKBookViewController *)self analyticsReadingSettingsData];
  v9 = +[BAEventReporter sharedReporter];
  v10 = [(BKBookViewController *)self ba_effectiveAnalyticsTracker];
  v11 = [(BKBookViewController *)self contentDataForSearchViewController:0];
  v12 = [NSNumber numberWithInteger:a3];
  v13 = [NSNumber numberWithInteger:a4];
  v14 = [NSNumber numberWithInteger:a5];
  [v9 emitScrubEventWithTracker:v10 contentData:v11 readingSettingsData:v15 startPosition:v12 endPosition:v13 totalLength:v14];
}

- (void)bc_analyticsVisibilityDidAppear
{
  v3 = [(BKBookViewController *)self ba_effectiveAnalyticsTracker];
  if ([v3 optedIn])
  {
    objc_initWeak(&location, self);
    v6 = _NSConcreteStackBlock;
    v7 = 3221225472;
    v8 = sub_61094;
    v9 = &unk_1E42B8;
    objc_copyWeak(&v10, &location);
    [BADoNotDisturbHelper fetchCurrentState:&v6];
    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }

  else
  {
    [(BKBookViewController *)self setDoNotDisturbStatusAtStart:0];
  }

  v4 = [NSDate date:v6];
  [(BKBookViewController *)self setAnalyticsReadStartDate:v4];

  v5 = [(BKBookViewController *)self _currentReadingProgress];
  [(BKBookViewController *)self setAnalyticsReadStartProgress:v5];
}

- (void)bc_analyticsVisibilityWillDisappear
{
  v3 = [(BKBookViewController *)self ba_effectiveAnalyticsTracker];
  v25[0] = 0;
  v25[1] = v25;
  v25[2] = 0x3032000000;
  v25[3] = sub_613C4;
  v25[4] = sub_613D4;
  v26 = [v3 newSessionAssertion];
  v4 = [(BKBookViewController *)self contentData];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [(BKBookViewController *)self cachedContentData];
  }

  v7 = v6;

  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x3032000000;
  v23[3] = sub_613C4;
  v23[4] = sub_613D4;
  v24 = [(BKBookViewController *)self analyticsReadStartDate];
  if (v7)
  {
    v8 = [(BKBookViewController *)self doNotDisturbStatusAtStart];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_613DC;
    v17[3] = &unk_1E4358;
    v18 = v3;
    v19 = self;
    v21 = v23;
    v22 = v25;
    v20 = v7;
    [(BKBookViewController *)self _newBADoNotDisturbDataWithStartStatus:v8 tracker:v18 completion:v17];

    v9 = v18;
  }

  else
  {
    v9 = BCCurrentBookLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      v10 = [(BKBookViewController *)self assetViewControllerDelegate];
      sub_137D00(v10, buf, v9);
    }
  }

  v11 = [(BKBookViewController *)self analyticsReadStartDate];
  [v11 timeIntervalSinceNow];
  v13 = v12;

  v14 = [(BKBookViewController *)self _analyticsSessionHost];
  v15 = [(BKBookViewController *)self asset];
  v16 = [v15 assetID];
  [v14 readSessionDidEnd:v16 readTime:-v13];

  _Block_object_dispose(v23, 8);
  _Block_object_dispose(v25, 8);
}

- (id)_contentSettingsDataFromReadingSessionData:(id)a3 optedIn:(BOOL)a4
{
  if (a4)
  {
    v6 = a3;
    v7 = [v6 percentCompletionStart];
    [v7 floatValue];
    v9 = v8;

    v10 = [v6 percentCompletionEnd];

    [v10 floatValue];
    v12 = v11;

    v13 = v12 >= 0.5 && v9 < 0.5;
    if (v13 || (v14 = 0, v12 >= 0.9) && v9 < 0.9)
    {
      v14 = [(BKBookViewController *)self analyticsContentSettingData];
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)_newBADoNotDisturbDataWithStartStatus:(int64_t)a3 tracker:(id)a4 completion:(id)a5
{
  v7 = a4;
  v8 = a5;
  if (v8)
  {
    if ([v7 optedIn])
    {
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_619BC;
      v10[3] = &unk_1E4380;
      v12 = a3;
      v11 = v8;
      [BADoNotDisturbHelper fetchCurrentState:v10];
    }

    else
    {
      v9 = [[BADoNotDisturbData alloc] initWithStartStatus:0 endStatus:0];
      (*(v8 + 2))(v8, v9);
    }
  }
}

- (BOOL)bc_analyticsVisibilityOfSelf
{
  v2 = [(BKBookViewController *)self assetViewControllerDelegate];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)_inAnalyticsReadSession
{
  v2 = [(BKBookViewController *)self analyticsReadStartDate];
  v3 = v2 != 0;

  return v3;
}

- (id)_analyticsSessionHost
{
  v2 = [(BKBookViewController *)self im_ancestorViewControllerConformingToProtocol:&OBJC_PROTOCOL___BASessionHostProviding];
  v3 = [v2 analyticsSessionHost];

  return v3;
}

- (void)handleVoiceOverStatusChanged:(id)a3
{
  if (UIAccessibilityIsVoiceOverRunning())
  {

    [(BKBookViewController *)self setControlsVisible:1 animated:0];
  }
}

- (void)handleSwitchControlStatusChanged:(id)a3
{
  if (UIAccessibilityIsSwitchControlRunning())
  {

    [(BKBookViewController *)self setControlsVisible:1 animated:0];
  }
}

- (void)updateUIForSmartInvert
{
  v3 = +[IMTheme isAutoNightModeEnabled];
  v4 = [(BKBookViewController *)self viewIfLoaded];
  [v4 setAccessibilityIgnoresInvertColors:v3];
}

- (BOOL)bkaxNeedsPersistentControls
{
  if (UIAccessibilityIsVoiceOverRunning() || UIAccessibilityIsSwitchControlRunning() || _AXSCommandAndControlEnabled())
  {
    return 1;
  }

  return _IMAccessibilityIsFKAEnabledWithKeyboardAttached();
}

- (AEAssetViewControllerDelegate)assetViewControllerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_assetViewControllerDelegate);

  return WeakRetained;
}

@end