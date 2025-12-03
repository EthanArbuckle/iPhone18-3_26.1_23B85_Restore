@interface BKBookViewController
+ (BOOL)areCitationsAllowedForBook:(id)book;
+ (id)propertySourceFromBook:(id)book;
+ (id)valueOfAnnotationProperty:(id)property activityType:(id)type book:(id)book;
+ (void)initialize;
- (AEAssetViewControllerDelegate)assetViewControllerDelegate;
- (BAContentSettingsData)analyticsContentSettingData;
- (BCAppIntentsAssetViewControllerInfo)appIntentsInfo;
- (BEProtocolCacheItem)currentBookCacheItem;
- (BKBookViewController)initWithBook:(id)book storeID:(id)d;
- (BKLocation)resumeLocation;
- (BKLocation)savableLocation;
- (BKNavigationHistory)navigationHistory;
- (BKUpsell)upsellContentViewController;
- (BOOL)_controller:(id)_controller handleInternalRequestForURL:(id)l;
- (BOOL)_currentChapterInfo:(id *)info uniqueID:(id *)d;
- (BOOL)_inAnalyticsReadSession;
- (BOOL)_isPageAllZeros:(_NSRange)zeros;
- (BOOL)_isPageEmpty:(_NSRange)empty;
- (BOOL)bc_analyticsVisibilityOfSelf;
- (BOOL)bkaxNeedsPersistentControls;
- (BOOL)bookCanBeBookmarked;
- (BOOL)canCopy;
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (BOOL)canSearch;
- (BOOL)canShowContent;
- (BOOL)dismissShouldBegin:(id)begin;
- (BOOL)editorController:(id)controller isSharingEnabledForAnnotation:(id)annotation;
- (BOOL)expandedContentView:(id)view shouldStartLoadWithRequest:(id)request;
- (BOOL)expandedContentViewController:(id)controller handleInternalLoadRequest:(id)request;
- (BOOL)footnoteViewController:(id)controller handleInternalLoadRequest:(id)request;
- (BOOL)hasRemoteResources;
- (BOOL)hasSoundtrack;
- (BOOL)hidesPageControlsOnOpen;
- (BOOL)inLiveResize;
- (BOOL)isAnnotationVisible:(id)visible;
- (BOOL)isBookToolbarAppearanceDark;
- (BOOL)isEditingAnnotation:(id)annotation;
- (BOOL)isOnLastPage;
- (BOOL)isPageBookmarked;
- (BOOL)isPageProgressionRTL;
- (BOOL)isPreordered;
- (BOOL)isReadAloudPaused;
- (BOOL)isSoundtrackPlaying;
- (BOOL)isTOCURL:(id)l;
- (BOOL)needTOCEntriesForOrdinal:(int64_t)ordinal;
- (BOOL)needTextNodeCharacterCountsForOrdinal:(int64_t)ordinal;
- (BOOL)prefersStatusBarHidden;
- (BOOL)shouldAutorotate;
- (BOOL)shouldControlsBeVisibleOnOpen;
- (BOOL)shouldDisplayBuyButton;
- (BOOL)shouldDisplayShareControls;
- (BOOL)touchBarWantsHistoryNav;
- (CGRect)frameForLocation:(id)location inView:(id)view expandedContentViewController:(id)controller;
- (NSURL)storeShortURL;
- (_NSRange)currentPages;
- (_NSRange)pageRangeForAnnotation:(id)annotation;
- (double)pagePositionForTouchBarPosition:(double)position;
- (double)touchBarPositionForPageNumber:(int64_t)number;
- (double)touchBarScrollerEndScrollPositionForPosition:(double)position;
- (double)touchBarScrollerPositionForBookmark:(id)bookmark;
- (double)touchBarScrollerPositionForChapter:(id)chapter;
- (float)volume;
- (id)_allAnnotationsForType:(int)type;
- (id)_analyticsSessionHost;
- (id)_contentControllerThatHasCopyableSelection;
- (id)_contentSettingsDataFromReadingSessionData:(id)data optedIn:(BOOL)in;
- (id)_createEndOfBookExperience;
- (id)_currentReadingProgress;
- (id)_footnoteViewController2ForResource:(id)resource stylesheetSet:(id)set;
- (id)_locationForChapter:(id)chapter;
- (id)_normalizedLocation:(id)location;
- (id)_readPlayer;
- (id)_searchQueryFromSender:(id)sender;
- (id)_searchResultOffsetByDistance:(int64_t)distance;
- (id)_trackPlayer;
- (id)_visibleAnnotationsForType:(int)type;
- (id)addAnnotation:(int)annotation location:(id)location selectedText:(id)text representativeText:(id)representativeText;
- (id)appearanceMenuItems;
- (id)bookToolbarThemeID;
- (id)bookmarkToolTip;
- (id)bookmarksFetchRequestForBook:(id)book moc:(id)moc;
- (id)buttonColor;
- (id)chapterColor;
- (id)chapterTitleForAnnotation:(id)annotation;
- (id)contentDataForSearchViewController:(id)controller;
- (id)contentViewController:(id)controller addAnnotation:(int)annotation location:(id)location selectedText:(id)text representativeText:(id)representativeText;
- (id)contentViewControllerForMediaOverlayElement:(id)element;
- (id)documentForLocation:(id)location;
- (id)documentForURL:(id)l;
- (id)environmentOverrideView;
- (id)fullScreenNoteEditorForAnnotation:(id)annotation;
- (id)itemProvidersForSharing;
- (id)keyCommands;
- (id)locationForPath:(id)path fragment:(id)fragment;
- (id)pageLocationForPageNumber:(int64_t)number;
- (id)profileFuture;
- (id)readingSessionDataForSearchViewController:(id)controller;
- (id)savableLocationForLocation:(id)location;
- (id)searchModuleWithSearchString:(id)string;
- (id)searchViewController;
- (id)searchViewController:(id)controller chapterNameForSearchResult:(id)result pageNumber:(int64_t)number;
- (id)smilMapOnPages:(_NSRange)pages;
- (id)tintColorForNavbarButtons;
- (id)titleColor;
- (id)titleForChapterAtPageNumber:(int64_t)number;
- (id)titleMutedColor;
- (id)tocToolTip;
- (id)tocViewController:(id)controller pageTitleForAnnotation:(id)annotation;
- (id)tocViewController:(id)controller pageTitleForChapter:(id)chapter;
- (id)tocViewControllerTocIdCssRules:(id)rules;
- (id)touchBarScrollerAccessibilityLabelForBookmark:(id)bookmark;
- (id)touchBarScrollerAccessibilityLabelForChapter:(id)chapter;
- (id)touchBarScrollerChapters;
- (id)transitionContentBackgroundColor;
- (id)transitionContentView;
- (int)pageProgressionDirection;
- (int)readAloudState;
- (int)trackState;
- (int64_t)bookToolbarMode;
- (int64_t)calculatePageCountExcludingUpsell;
- (int64_t)currentPageNumber;
- (int64_t)directoryContent:(id)content pageNumberForLocation:(id)location;
- (int64_t)pageCountExcludingUpsell;
- (int64_t)pageNavigationCurrentReadAloudPageOffset:(id)offset;
- (int64_t)pageNumberForTouchBarPosition:(double)position;
- (int64_t)searchViewController:(id)controller pageNumberForDocumentOrdinal:(int64_t)ordinal;
- (int64_t)themeInterfaceStyle;
- (int64_t)tocViewController:(id)controller pageNumberForAnnotation:(id)annotation;
- (int64_t)tocViewController:(id)controller pageNumberForChapter:(id)chapter;
- (int64_t)upsellPageNumber;
- (unint64_t)lastLayoutUsed;
- (unint64_t)numberOfBookmarks;
- (unint64_t)scrollLayoutForBook:(id)book;
- (unint64_t)supportedInterfaceOrientations;
- (unint64_t)upsellOrdinal;
- (unint64_t)validLayoutForBook:(id)book desiredLayout:(unint64_t)layout;
- (void)_cleanupFootnoteViewController;
- (void)_contentReady:(id)ready;
- (void)_emitAnnotationActionEventIfNeededForAnnotationType:(int)type;
- (void)_handleExternalLoadRequest:(id)request likelyUserInitiated:(BOOL)initiated;
- (void)_highlightElement:(id)element;
- (void)_newBADoNotDisturbDataWithStartStatus:(int64_t)status tracker:(id)tracker completion:(id)completion;
- (void)_nextDelayedPageHint:(id)hint;
- (void)_nextPageHint:(BOOL)hint afterDelay:(double)delay;
- (void)_notifyBookmarkObservers;
- (void)_paginationComplete:(id)complete;
- (void)_performScrollTest:(id)test completionHandler:(id)handler;
- (void)_playNextItem;
- (void)_promptToLoadExternalContent:(id)content;
- (void)_removeHighlightOnElement:(id)element;
- (void)_reportLoadFailedAlertForError:(id)error;
- (void)_reportResourceUnavailableForBookWithTitle:(id)title error:(id)error;
- (void)_resume;
- (void)_setAudioSessionMix:(BOOL)mix;
- (void)_showExpandedContentForResource:(id)resource atLocation:(id)location presentingFromTOC:(BOOL)c completion:(id)completion;
- (void)_startReadAloud:(BOOL)aloud;
- (void)_traitCollectionDidChange:(id)change previousTraitCollection:(id)collection;
- (void)_updateHoverInteraction;
- (void)_updateLocationFromAnnotation:(id)annotation;
- (void)addTOCEntries:(id)entries ordinal:(int64_t)ordinal completion:(id)completion;
- (void)addTextNodeCharacterCounts:(id)counts ordinal:(int64_t)ordinal completion:(id)completion;
- (void)appearanceViewController:(id)controller didChangeAutoNightMode:(BOOL)mode previousValue:(BOOL)value;
- (void)appearanceViewController:(id)controller didChangeFont:(id)font;
- (void)appearanceViewController:(id)controller didChangeFontSize:(double)size;
- (void)appearanceViewController:(id)controller didChangeLayout:(unint64_t)layout;
- (void)appearanceViewController:(id)controller didChangeTheme:(unint64_t)theme;
- (void)assetViewControllerUpdateToolbarsAfterOpenAnimation;
- (void)assetViewControllerUpdateToolbarsForOpenAnimation;
- (void)audioPlaybackWillStart:(id)start;
- (void)bc_analyticsVisibilityDidAppear;
- (void)bc_analyticsVisibilityWillDisappear;
- (void)bookMilestoneReached:(int64_t)reached;
- (void)bookPositionChanged:(id)changed;
- (void)bookSectionChanged:(id)changed;
- (void)bookmarkPage:(id)page;
- (void)books_chapterLeft:(id)left;
- (void)books_chapterRight:(id)right;
- (void)books_findNext:(id)next;
- (void)books_findPrevious:(id)previous;
- (void)books_search:(id)books_search;
- (void)buildContextTree:(id)tree;
- (void)buy:(id)buy;
- (void)buyWithCompletion:(id)completion;
- (void)cancelPendingHidePageControls;
- (void)cancelPendingSavePageControlVisibility;
- (void)cancelPreloadForContent:(id)content;
- (void)cleanupPopovers;
- (void)clearCurrentHighlighting;
- (void)clearInactiveContentViewControllers;
- (void)clearSearchResult;
- (void)clearSelectedAnnotation;
- (void)clearSelection;
- (void)close:(BOOL)close;
- (void)contentFailedToLoadWithError:(id)error;
- (void)contentView:(id)view didSelectMediaOverlayElement:(id)element;
- (void)contentViewController:(id)controller expandAnnotation:(id)annotation location:(id)location selectedText:(id)text representativeText:(id)representativeText;
- (void)contentViewController:(id)controller goToLocation:(id)location;
- (void)contentViewController:(id)controller goToURL:(id)l likelyUserInitiated:(BOOL)initiated;
- (void)contentViewController:(id)controller presentAlertController:(id)alertController completion:(id)completion;
- (void)contentViewController:(id)controller setEndOfBookToLocation:(id)location range:(id)range;
- (void)contentViewController:(id)controller setFinishedAndCloseForAssetID:(id)d;
- (void)contentViewController:(id)controller setSearchString:(id)string;
- (void)contentViewController:(id)controller shareAnnotation:(id)annotation annotationRects:(id)rects completion:(id)completion;
- (void)contentViewController:(id)controller showAlertController:(id)alertController fromRect:(CGRect)rect animated:(BOOL)animated;
- (void)contentViewController:(id)controller showHighlightingMenuForAnnotation:(id)annotation;
- (void)contentViewController:(id)controller showTranslateForText:(id)text fromView:(id)view onClose:(id)close;
- (void)contentViewController:(id)controller stopMediaPlay:(id)play;
- (void)contentViewControllerAnnotationCacheDidChange:(id)change;
- (void)contentViewReady:(id)ready;
- (void)continueReadAloudAfterReady;
- (void)controller:(id)controller didChangeObject:(id)object atIndexPath:(id)path forChangeType:(unint64_t)type newIndexPath:(id)indexPath;
- (void)controllerDidChangeContent:(id)content;
- (void)copy:(id)copy;
- (void)createPaginationControllerIfNeeded:(BOOL)needed;
- (void)dealloc;
- (void)delayedHidePageControls;
- (void)delayedSavePageControlVisibility;
- (void)didChangeCurrentOverlayViewController;
- (void)didChangeLocationClosing:(BOOL)closing suspending:(BOOL)suspending;
- (void)didHideAnnotationEditor:(id)editor;
- (void)didMoveToParentViewController:(id)controller;
- (void)didPurchaseWithProductProfile:(id)profile completion:(id)completion;
- (void)didReceiveMemoryWarning;
- (void)directoryContent:(id)content didSelectLocation:(id)location;
- (void)directoryContent:(id)content didSelectLocation:(id)location animated:(BOOL)animated;
- (void)dismissCurrentPopoverAnimated:(BOOL)animated;
- (void)dismissCurrentPopoverWithCompletion:(id)completion animated:(BOOL)animated;
- (void)editorController:(id)controller deleteAnnotation:(id)annotation;
- (void)editorController:(id)controller editedAnnotation:(id)annotation toText:(id)text;
- (void)editorController:(id)controller setTheme:(id)theme forAnnotation:(id)annotation;
- (void)editorController:(id)controller shareAnnotation:(id)annotation;
- (void)emitReadingOrientationChangeEventIfNeeded;
- (void)emitScrubEventStartPosition:(int64_t)position endPosition:(int64_t)endPosition totalLength:(int64_t)length;
- (void)expandAnnotation:(id)annotation location:(id)location selectedText:(id)text representativeText:(id)representativeText;
- (void)expandedContentViewController:(id)controller handleExternalLoadRequest:(id)request likelyUserInitiated:(BOOL)initiated;
- (void)expandedContentViewController:(id)controller handleInternalLoadRequestForNewWindow:(id)window;
- (void)expandedContentViewController:(id)controller handleUserRequestForFrameToLoadExternalURL:(id)l completion:(id)completion;
- (void)expandedContentViewController:(id)controller presentAlertController:(id)alertController completion:(id)completion;
- (void)expandedContentViewDidDisappear:(id)disappear;
- (void)fixupNavigationHistoryForUpsellPageNumber:(int64_t)number;
- (void)footnoteViewController:(id)controller handleExternalLoadRequest:(id)request likelyUserInitiated:(BOOL)initiated;
- (void)footnoteViewController:(id)controller handleUserRequestForFrameToLoadExternalURL:(id)l completion:(id)completion;
- (void)footnoteViewController:(id)controller presentAlertController:(id)alertController completion:(id)completion;
- (void)footnoteViewDidDisappear:(id)disappear;
- (void)footnoteViewDidFinishLoad:(id)load;
- (void)forceReload;
- (void)forceRepagination;
- (void)goToPath:(id)path fragment:(id)fragment animated:(BOOL)animated;
- (void)handleAppearanceViewControllerDismissal;
- (void)handleSwitchControlStatusChanged:(id)changed;
- (void)handleVoiceOverStatusChanged:(id)changed;
- (void)hoverInteraction:(id)interaction didChangeStateForRegionWithKeys:(id)keys;
- (void)hoverInteractionDidSettle:(id)settle;
- (void)isLocationVisible:(id)visible completion:(id)completion;
- (void)jumpAheadAnimated:(BOOL)animated;
- (void)jumpBackAnimated:(BOOL)animated;
- (void)jumpToLocation:(id)location animated:(BOOL)animated completion:(id)completion;
- (void)managedObjectContextDidSave:(id)save;
- (void)mediaPlaybackStarted:(id)started;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)open:(BOOL)open;
- (void)openToLocation:(id)location animated:(BOOL)animated;
- (void)p_releaseDictionary;
- (void)pageNavigationDidChangeLocation:(id)location;
- (void)pageViewControllersDidChange;
- (void)paginationCompleted;
- (void)paginationUpdateRequired;
- (void)pauseReadAloud;
- (void)playCurrentSoundtrack;
- (void)player:(id)player callbackForTime:(double)time;
- (void)playerCurrentItemEnded:(id)ended;
- (void)playerStateChanged:(id)changed;
- (void)popoverDidClose:(id)close fromToolbar:(id)toolbar;
- (void)preloadContentController:(id)controller highPriority:(BOOL)priority;
- (void)presentAppearanceViewControllerFromItem:(id)item;
- (void)presentViewController:(id)controller animated:(BOOL)animated completion:(id)completion;
- (void)presentationControllerDidDismiss:(id)dismiss;
- (void)promptForRemoteResourcesIfNecessary;
- (void)readAloudViewControllerReady:(id)ready;
- (void)readNextPages:(id)pages;
- (void)readPages:(_NSRange)pages from:(int64_t)from to:(int64_t)to waitOnEmpty:(BOOL)empty;
- (void)readingLocationChanged;
- (void)rebuildHoverRegions;
- (void)recordedJumpToLocation:(id)location animated:(BOOL)animated completion:(id)completion;
- (void)registerBookmarkObserver:(id)observer;
- (void)releaseViews;
- (void)reloadExternalWebFrames;
- (void)requestClose:(BOOL)close;
- (void)resetKeyWindow;
- (void)restoreSavedLocation;
- (void)resume:(id)resume;
- (void)resumeReadAloud;
- (void)revealSearchResult:(id)result animated:(BOOL)animated;
- (void)saveBook;
- (void)savePageControlVisibility;
- (void)saveReadingLocation:(id)location;
- (void)saveStateClosing:(BOOL)closing;
- (void)saveStateClosing:(BOOL)closing suspending:(BOOL)suspending;
- (void)scrub:(id)scrub;
- (void)scrubberTouchDown:(id)down;
- (void)searchViewController:(id)controller revealSearchResult:(id)result animated:(BOOL)animated;
- (void)searchViewController:(id)controller turnToLocation:(id)location animated:(BOOL)animated;
- (void)searchViewController:(id)controller turnToPageNumber:(int64_t)number animated:(BOOL)animated;
- (void)searchViewControllerDidDisappear:(id)disappear;
- (void)searchViewControllerWillAppear:(id)appear;
- (void)setAssetIsPreordered:(id)preordered;
- (void)setBook:(id)book;
- (void)setControlsVisible:(BOOL)visible animated:(BOOL)animated animations:(id)animations completion:(id)completion;
- (void)setExpandedContentViewController:(id)controller;
- (void)setFinishedForAssetID:(id)d;
- (void)setLayout:(unint64_t)layout;
- (void)setLocation:(id)location;
- (void)setPageCountIncludingUpsell:(int64_t)upsell;
- (void)setPaginationController:(id)controller;
- (void)setReadAloudState:(BOOL)state;
- (void)setSection:(int)section animated:(BOOL)animated adjustScrollToReveal:(BOOL)reveal;
- (void)setStatusBarHidden:(BOOL)hidden animated:(BOOL)animated animations:(id)animations completion:(id)completion;
- (void)setTheme:(id)theme;
- (void)setTrackState:(BOOL)state persistSetting:(BOOL)setting;
- (void)setTurnState:(BOOL)state;
- (void)setVolume:(float)volume;
- (void)setupAppearanceViewController;
- (void)shareAnnotation:(id)annotation fromRect:(CGRect)rect inView:(id)view completion:(id)completion;
- (void)shareAnnotations:(id)annotations fromBarButtonItem:(id)item excerpt:(BOOL)excerpt completion:(id)completion;
- (void)shareAnnotations:(id)annotations fromRect:(CGRect)rect inView:(id)view excerpt:(BOOL)excerpt completion:(id)completion;
- (void)showAudio:(id)audio;
- (void)showBrightness:(id)brightness;
- (void)showFootnoteInContentViewController:(id)controller resource:(id)resource fromView:(id)view stylesheetSet:(id)set;
- (void)showLookupForString:(id)string fromView:(id)view onClose:(id)close;
- (void)showNoteEditorForAnnotation:(id)annotation;
- (void)showOverlayViewController:(id)controller fromView:(id)view popoverOnPhone:(BOOL)phone popoverBackgroundColor:(id)color;
- (void)showSearchWithString:(id)string sender:(id)sender;
- (void)showTOC:(id)c;
- (void)signalBookContentDidLoad:(id)load;
- (void)startFetchingBookmarks;
- (void)stopFetchingBookmarks;
- (void)stopReadAloudAndReload:(BOOL)reload;
- (void)stopSoundtrackAndReload:(BOOL)reload;
- (void)storeChangedNotification:(id)notification;
- (void)tocViewController:(id)controller didSelectChapter:(id)chapter;
- (void)toggleBookmark:(id)bookmark;
- (void)toggleShowPageControls:(id)controls;
- (void)touchBarHandleBackRequest:(id)request;
- (void)touchBarHandleForwardRequest:(id)request;
- (void)touchBarHandleReadAloudRequest:(id)request;
- (void)touchBarScrollerDidEnd:(double)end completion:(id)completion;
- (void)touchBarScrollerDidIdle:(double)idle;
- (void)touchBarScrollerJumpToBookmark:(id)bookmark;
- (void)transitionDidFinish:(BOOL)finish;
- (void)turnToPageNumber:(int64_t)number animated:(BOOL)animated;
- (void)unbookmarkPage:(id)page;
- (void)unregisterBookmarkObserver:(id)observer;
- (void)updateBookmarkButton:(BOOL)button;
- (void)updatePageCount;
- (void)updateProgressKitForNewLocation;
- (void)updateUIForSmartInvert;
- (void)validateCommand:(id)command;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)appearing;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)willMoveToParentViewController:(id)controller;
- (void)writeAnnotationsToWebProcessPlugin;
- (void)writeControlVisibilityStateToWebProcessPlugin;
@end

@implementation BKBookViewController

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2 = [NSDictionary alloc];
    v4 = [v2 initWithObjectsAndKeys:{BKBookHidePageControls[0], &__kCFBooleanFalse, BKLeftTapTurnToNextDefault[0], &__kCFBooleanFalse, BKReadAloudAutoPageTurn[0], &__kCFBooleanTrue, @"BKUseLegacyCurlAnimation", &off_1F14C0, BKDefaultHighlightColor[0], &__kCFBooleanFalse, BKDefaultUnderlineState, &__kCFBooleanTrue, @"BKAllowOnlineContent", 0}];
    v3 = +[NSUserDefaults standardUserDefaults];
    [v3 registerDefaults:v4];
  }
}

- (BKBookViewController)initWithBook:(id)book storeID:(id)d
{
  bookCopy = book;
  dCopy = d;
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
      assetLogID = [bookCopy assetLogID];
      *buf = 138543618;
      v44 = v10;
      v45 = 2114;
      v46 = assetLogID;
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

    [(BKBookViewController *)v8 setBook:bookCopy];
    v26 = +[BCAudioMuxingCoordinator sharedInstance];
    [v26 addAudioMuxingObserver:v8];

    sampleContent = [bookCopy sampleContent];
    if ([sampleContent BOOLValue])
    {
      [(BKBookViewController *)v8 setExperienceManager:0];
    }

    else
    {
      v28 = +[BCAugmentedExperienceManager newAugmentedExperienceManager];
      [(BKBookViewController *)v8 setExperienceManager:v28];
    }

    experienceManager = [(BKBookViewController *)v8 experienceManager];

    if (experienceManager)
    {
      experienceManager2 = [(BKBookViewController *)v8 experienceManager];
      [(BKBookViewController *)v8 setBookPositionProcessor:experienceManager2];

      experienceManager3 = [(BKBookViewController *)v8 experienceManager];
      [experienceManager3 setPresentationViewController:v8];

      storeId = [bookCopy storeId];
      longLongValue = [storeId longLongValue];
      if (longLongValue < 1)
      {
        storeId2 = dCopy;
      }

      else
      {
        storeId2 = [bookCopy storeId];
      }

      experienceManager4 = [(BKBookViewController *)v8 experienceManager];
      [experienceManager4 setStoreID:storeId2];

      if (longLongValue >= 1)
      {
      }

      _createEndOfBookExperience = [(BKBookViewController *)v8 _createEndOfBookExperience];
      if (_createEndOfBookExperience)
      {
        experienceManager5 = [(BKBookViewController *)v8 experienceManager];
        [experienceManager5 addExperience:_createEndOfBookExperience];
      }
    }

    book = [(BKBookViewController *)v8 book];
    v8->_layout = [(BKBookViewController *)v8 validLayoutForBook:book desiredLayout:[(BKBookViewController *)v8 defaultLayoutToUse]];

    v39 = +[UITraitCollection bc_allAPITraits];
    v40 = [(BKBookViewController *)v8 registerForTraitChanges:v39 withAction:"_traitCollectionDidChange:previousTraitCollection:"];
  }

  return v8;
}

- (NSURL)storeShortURL
{
  v3 = objc_opt_class();
  book = [(BKBookViewController *)self book];
  v5 = [v3 propertySourceFromBook:book];

  v6 = [[AEAssetActivityItemProviderSource alloc] initWithPropertySource:v5];
  propertyProvider = [v6 propertyProvider];
  storeURLPreferShort = [propertyProvider storeURLPreferShort];

  return storeURLPreferShort;
}

- (unint64_t)lastLayoutUsed
{
  v3 = +[NSUserDefaults standardUserDefaults];
  lastLayoutUsedKey = [(BKBookViewController *)self lastLayoutUsedKey];
  v5 = [v3 objectForKey:lastLayoutUsedKey];

  if (v5)
  {
    intValue = [v5 intValue];
    if (intValue <= 1)
    {
      v7 = 1;
    }

    else
    {
      v7 = intValue;
    }

    v8 = v7;
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (void)setLayout:(unint64_t)layout
{
  if (self->_layout != layout)
  {
    self->_layout = layout;
    layout = [(BKBookViewController *)self layout];
    v6 = _AEBookPluginsLifeCycleLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = (layout & 0xFFFFFFFFFFFFFFFELL) == 2;
      v8 = [NSNumber numberWithUnsignedInteger:layout];
      book = [(BKBookViewController *)self book];
      assetLogID = [book assetLogID];
      v11 = [NSNumber numberWithBool:v7];
      v14 = 138543874;
      v15 = v8;
      v16 = 2114;
      v17 = assetLogID;
      v18 = 2114;
      v19 = v11;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "SetLayout:%{public}@, logID:%{public}@, Scroll:%{public}@", &v14, 0x20u);
    }

    v12 = +[NSUserDefaults standardUserDefaults];
    lastLayoutUsedKey = [(BKBookViewController *)self lastLayoutUsedKey];
    [v12 setInteger:layout forKey:lastLayoutUsedKey];
  }
}

- (unint64_t)validLayoutForBook:(id)book desiredLayout:(unint64_t)layout
{
  bookCopy = book;
  if (([bookCopy isScrollModeDisabled] & 1) == 0)
  {
    if (layout - 2 < 2)
    {
      v9 = [(BKBookViewController *)self scrollLayoutForBook:bookCopy];
      goto LABEL_10;
    }

    if (layout == 4 || !layout)
    {
      v7 = BCIMLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = [NSNumber numberWithUnsignedInteger:layout];
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

- (unint64_t)scrollLayoutForBook:(id)book
{
  if (![(BKBookViewController *)self allowsScrollMode])
  {
    return 1;
  }

  book = [(BKBookViewController *)self book];
  scrollModeOrientation = [book scrollModeOrientation];

  if (scrollModeOrientation)
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
  book = [(BKBookViewController *)self book];
  endOfBookLocation = [book endOfBookLocation];

  book2 = [(BKBookViewController *)self book];
  endOfBookValidRange = [book2 endOfBookValidRange];

  if ([endOfBookLocation length])
  {
    v40 = 0;
    v7 = [BCCFI cfiWithString:endOfBookLocation error:&v40];
    v8 = v40;
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  v38 = endOfBookValidRange;
  if ([endOfBookValidRange length])
  {
    v39 = 0;
    v9 = [BCCFI cfiWithString:endOfBookValidRange error:&v39];
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
      v42 = endOfBookLocation;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "Valid end of book: %@", buf, 0xCu);
    }

    if (v9)
    {
      headCFI = [v9 headCFI];
      tailCFI = [v9 tailCFI];
      v14 = [BCEPubBookPosition positionWithCFI:headCFI];
      v15 = [BCEPubBookPosition positionWithCFI:tailCFI];
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
    book3 = [(BKBookViewController *)self book];
    endOfBookConfidence = [book3 endOfBookConfidence];
    [endOfBookConfidence floatValue];
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
    book4 = [(BKBookViewController *)self book];
    endOfBookVersion = [book4 endOfBookVersion];
    [v22 setVersion:endOfBookVersion];

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
  experienceManager = [(BKBookViewController *)self experienceManager];
  [experienceManager presentingViewControllerDidChangeLayout:self];
}

- (void)bookSectionChanged:(id)changed
{
  changedCopy = changed;
  assetViewControllerDelegate = [(BKBookViewController *)self assetViewControllerDelegate];

  if (assetViewControllerDelegate)
  {
    bookPositionProcessor = [(BKBookViewController *)self bookPositionProcessor];
    [bookPositionProcessor emitter:self bookSectionChanged:changedCopy];
  }
}

- (void)bookMilestoneReached:(int64_t)reached
{
  assetViewControllerDelegate = [(BKBookViewController *)self assetViewControllerDelegate];

  if (assetViewControllerDelegate)
  {
    bookPositionProcessor = [(BKBookViewController *)self bookPositionProcessor];
    [bookPositionProcessor emitter:self bookMilestoneReached:reached];
  }
}

- (void)bookPositionChanged:(id)changed
{
  changedCopy = changed;
  assetViewControllerDelegate = [(BKBookViewController *)self assetViewControllerDelegate];

  if (assetViewControllerDelegate)
  {
    bookPositionProcessor = [(BKBookViewController *)self bookPositionProcessor];
    [bookPositionProcessor emitter:self bookPositionChanged:changedCopy];
  }
}

- (BOOL)isOnLastPage
{
  currentPages = [(BKBookViewController *)self currentPages];
  v5 = v4;
  if (([(BKBookViewController *)self layout]& 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    v5 = 2;
  }

  pageCountIncludingUpsell = [(BKBookViewController *)self pageCountIncludingUpsell];
  if (currentPages == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v9 = pageCountIncludingUpsell >= currentPages && pageCountIncludingUpsell - currentPages < v5;
  v10 = pageCountIncludingUpsell != 0x7FFFFFFFFFFFFFFFLL && v9;
  return pageCountIncludingUpsell && v10;
}

- (BOOL)inLiveResize
{
  assetViewControllerDelegate = [(BKBookViewController *)self assetViewControllerDelegate];
  inLiveResize = [assetViewControllerDelegate inLiveResize];

  return inLiveResize;
}

- (void)readingLocationChanged
{
  if (![(BKBookViewController *)self section]&& +[BCAugmentedExperienceManager endOfBookExperienceFeatureEnabled])
  {
    book = [(BKBookViewController *)self book];
    sampleContent = [book sampleContent];
    if ([sampleContent BOOLValue])
    {
      goto LABEL_4;
    }

    isRotationInProgress = [(BKBookViewController *)self isRotationInProgress];

    if ((isRotationInProgress & 1) == 0)
    {
      [(BKBookViewController *)self currentPages];
      [(BKBookViewController *)self layout];
      if (![(BKBookViewController *)self isOnLastPage])
      {
        visibleCFIRange = [(BKBookViewController *)self visibleCFIRange];
        book = visibleCFIRange;
        if (!visibleCFIRange)
        {
          [(BKBookViewController *)self bookSectionChanged:0];
          goto LABEL_5;
        }

        headCFI = [visibleCFIRange headCFI];
        sampleContent = [BCEPubBookPosition positionWithCFI:headCFI];

        tailCFI = [book tailCFI];
        v10 = [BCEPubBookPosition positionWithCFI:tailCFI];

        v11 = [BCBookSection bookSectionWithStartPosition:sampleContent endPosition:v10];
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
  searchResult = [(BKBookViewController *)self searchResult];

  if (searchResult)
  {
    searchResult2 = [(BKBookViewController *)self searchResult];
    [(BKBookViewController *)self highlightSearchResult:searchResult2];
  }
}

- (void)didPurchaseWithProductProfile:(id)profile completion:(id)completion
{
  completionCopy = completion;
  if ([profile isPreorder])
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_4B964;
    v9[3] = &unk_1E3438;
    v9[4] = self;
    v10 = completionCopy;
    dispatch_async(&_dispatch_main_q, v9);
  }

  else
  {
    v7 = objc_retainBlock(completionCopy);
    v8 = v7;
    if (v7)
    {
      (*(v7 + 2))(v7);
    }
  }
}

- (void)setAssetIsPreordered:(id)preordered
{
  preorderedCopy = preordered;
  book = [(BKBookViewController *)self book];
  [book setIsPreorder:preorderedCopy];
}

- (void)_performScrollTest:(id)test completionHandler:(id)handler
{
  v4 = objc_retainBlock(handler);
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

  activityViewController = [(BKBookViewController *)self activityViewController];

  if (activityViewController)
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

  paginationController = [(BKBookViewController *)self paginationController];
  [paginationController cancelPagination];

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
  allValues = [(NSMutableDictionary *)self->_contentViewControllers allValues];
  v7 = [allValues countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(allValues);
        }

        [*(*(&v13 + 1) + 8 * v10) setDelegate:0];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [allValues countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  delegate = [(BKExpandedContentViewController *)self->_expandedContentViewController delegate];

  if (delegate == self)
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

- (void)willMoveToParentViewController:(id)controller
{
  v7.receiver = self;
  v7.super_class = BKBookViewController;
  [(BKBookViewController *)&v7 willMoveToParentViewController:controller];
  hoverInteraction = self->_hoverInteraction;
  if (hoverInteraction)
  {
    view = [(BCUIHoverInteraction *)hoverInteraction view];
    [view removeInteraction:self->_hoverInteraction];

    v6 = self->_hoverInteraction;
    self->_hoverInteraction = 0;
  }
}

- (void)didMoveToParentViewController:(id)controller
{
  v4.receiver = self;
  v4.super_class = BKBookViewController;
  [(BKBookViewController *)&v4 didMoveToParentViewController:controller];
  [(BKBookViewController *)self _updateHoverInteraction];
}

- (void)_updateHoverInteraction
{
  if (!self->_hoverInteraction)
  {
    navigationController = [(BKBookViewController *)self navigationController];
    view = [navigationController view];

    if (view)
    {
      v5 = [BCUIHoverInteraction alloc];
      view2 = [(BKBookViewController *)self view];
      v7 = [v5 initWithDelegate:self view:view2];
      hoverInteraction = self->_hoverInteraction;
      self->_hoverInteraction = v7;

      navigationController2 = [(BKBookViewController *)self navigationController];
      view3 = [navigationController2 view];
      [view3 addInteraction:self->_hoverInteraction];

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
  theme = [(BKBookViewController *)self theme];
  if ([theme shouldInvertContent])
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  return v3;
}

- (void)viewIsAppearing:(BOOL)appearing
{
  appearingCopy = appearing;
  v5 = _AEBookPluginsLifeCycleLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = v6;
    book = [(BKBookViewController *)self book];
    assetLogID = [book assetLogID];
    *buf = 138543618;
    v18 = v6;
    v19 = 2114;
    v20 = assetLogID;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "viewWillAppear BVC:%{public}@ logID:%{public}@", buf, 0x16u);
  }

  v16.receiver = self;
  v16.super_class = BKBookViewController;
  [(BKBookViewController *)&v16 viewIsAppearing:appearingCopy];
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

  displaySleepController = [(BKBookViewController *)self displaySleepController];
  [displaySleepController userInteractionOccurred];
}

- (void)viewDidAppear:(BOOL)appear
{
  v13.receiver = self;
  v13.super_class = BKBookViewController;
  [(BKBookViewController *)&v13 viewDidAppear:appear];
  [(BKBookViewController *)self setSafeToShowToolbarItems:1];
  v4 = +[UIApplication sharedApplication];
  launchedToTest = [v4 launchedToTest];

  if ((launchedToTest & 1) == 0)
  {
    [(BKBookViewController *)self promptForRemoteResourcesIfNecessary];
  }

  openingLocation = [(BKBookViewController *)self openingLocation];

  if (openingLocation)
  {
    openingLocation2 = [(BKBookViewController *)self openingLocation];
    [(BKBookViewController *)self recordedJumpToLocation:openingLocation2 animated:0 completion:0];
  }

  assetViewControllerDelegate = [(BKBookViewController *)self assetViewControllerDelegate];

  if (assetViewControllerDelegate)
  {
    +[IMSleepManager startSleepTimer];
  }

  v9 = +[AETestDriver shared];
  [v9 bookViewDidAppear:self];

  [(BKBookViewController *)self updateProgressKitForNewLocation];
  [(BKBookViewController *)self bc_analyticsVisibilityUpdateSubtree];
  [(BKBookViewController *)self _updateHoverInteraction];
  view = [(BKBookViewController *)self view];
  window = [view window];
  displaySleepController = [(BKBookViewController *)self displaySleepController];
  [displaySleepController setWindow:window];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v7.receiver = self;
  v7.super_class = BKBookViewController;
  [(BKBookViewController *)&v7 viewWillDisappear:disappear];
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

- (void)viewDidDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = BKBookViewController;
  [(BKBookViewController *)&v4 viewDidDisappear:disappear];
  [(BKBookViewController *)self bc_analyticsVisibilitySubtreeDidDisappear];
}

- (BOOL)shouldAutorotate
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  contentViewControllers = [(BKBookViewController *)self contentViewControllers];
  allValues = [contentViewControllers allValues];

  v4 = [allValues countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(allValues);
        }

        if ([*(*(&v10 + 1) + 8 * i) currentlyHighlighting])
        {
          v8 = 0;
          goto LABEL_11;
        }
      }

      v5 = [allValues countByEnumeratingWithState:&v10 objects:v14 count:16];
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

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  coordinatorCopy = coordinator;
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
  [coordinatorCopy animateAlongsideTransition:0 completion:v16];
  v15.receiver = self;
  v15.super_class = BKBookViewController;
  [(BKBookViewController *)&v15 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  referenceLibraryViewController = [(BKBookViewController *)self referenceLibraryViewController];
  v9 = referenceLibraryViewController;
  if (referenceLibraryViewController && [referenceLibraryViewController _isInPopoverPresentation])
  {
    [(BKBookViewController *)self dismissCurrentPopoverAnimated:0];
  }

  translationViewController = [(BKBookViewController *)self translationViewController];
  v11 = translationViewController;
  if (translationViewController && [translationViewController _isInPopoverPresentation])
  {
    [(BKBookViewController *)self dismissCurrentPopoverAnimated:0];
  }

  footnoteController = [(BKBookViewController *)self footnoteController];
  v13 = footnoteController;
  if (footnoteController && [footnoteController _isInPopoverPresentation])
  {
    [(BKBookViewController *)self dismissCurrentPopoverAnimated:0];
  }

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_4C994;
  v14[3] = &unk_1E2A60;
  v14[4] = self;
  [coordinatorCopy animateAlongsideTransition:0 completion:v14];
}

- (void)_traitCollectionDidChange:(id)change previousTraitCollection:(id)collection
{
  [(BKBookViewController *)self createPaginationControllerIfNeeded:1, collection];
  if (([(BKBookViewController *)self im_isCompactWidth]& 1) == 0)
  {
    footnoteController = [(BKBookViewController *)self footnoteController];
    [footnoteController dismissCurrentPopover];
  }
}

- (void)presentViewController:(id)controller animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  controllerCopy = controller;
  assetViewControllerDelegate = [(BKBookViewController *)self assetViewControllerDelegate];
  [assetViewControllerDelegate assetViewController:self presentViewController:controllerCopy animated:animatedCopy completion:completionCopy];
}

- (void)setBook:(id)book
{
  bookCopy = book;
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

  v9 = bookCopy;
  if (bookCopy)
  {
    objc_storeStrong(&self->_book, book);
    [(BKViewController *)self setLayoutDirection:[(BKBookViewController *)self pageProgressionDirection]== 1];
    self->_layout = [(BKBookViewController *)self validLayoutForBook:bookCopy desiredLayout:[(BKBookViewController *)self defaultLayoutToUse]];
    managedObjectContext = [(AEBookInfo *)self->_book managedObjectContext];
    v11 = self->_bookMoc;
    self->_bookMoc = managedObjectContext;

    v12 = +[NSNotificationCenter defaultCenter];
    [v12 addObserver:self selector:"managedObjectContextDidSave:" name:NSManagedObjectContextDidSaveNotification object:0];

    [(BKBookViewController *)self restoreSavedLocation];
    v9 = bookCopy;
  }
}

- (void)setPageCountIncludingUpsell:(int64_t)upsell
{
  if (self->_pageCountIncludingUpsell != upsell)
  {
    self->_pageCountIncludingUpsell = upsell;
    [(BKBookViewController *)self pageCountDidUpdate];

    [(BKBookViewController *)self updateTouchBarController];
  }
}

- (void)createPaginationControllerIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  paginationController = [(BKBookViewController *)self paginationController];

  if (!paginationController)
  {
    v9 = [BKPaginationController newPaginationControllerForBook:self->_book delegate:self];
    [(BKBookViewController *)self setPaginationController:?];
    v6 = +[NSNotificationCenter defaultCenter];
    v7 = BKPaginationCompleteForBookNotification;
    paginationController2 = [(BKBookViewController *)self paginationController];
    [v6 addObserver:self selector:"_paginationComplete:" name:v7 object:paginationController2];

    if (neededCopy)
    {
      [(BKBookViewController *)self paginationUpdateRequired];
    }
  }
}

- (void)_setAudioSessionMix:(BOOL)mix
{
  if (mix)
  {
    book = [(BKBookViewController *)self book];
    hasMediaOverlayElements = [book hasMediaOverlayElements];

    if (hasMediaOverlayElements)
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
    book = [(BKBookViewController *)self book];
    cacheItem = [book cacheItem];
    v6 = self->_currentBookCacheItem;
    self->_currentBookCacheItem = cacheItem;

    currentBookCacheItem = self->_currentBookCacheItem;
  }

  return currentBookCacheItem;
}

- (void)open:(BOOL)open
{
  openCopy = open;
  assetViewControllerDelegate = [(BKBookViewController *)self assetViewControllerDelegate];

  if (assetViewControllerDelegate)
  {
    assetViewControllerDelegate2 = [(BKBookViewController *)self assetViewControllerDelegate];
    [assetViewControllerDelegate2 assetViewController:self willOpen:openCopy];
  }

  [(BKBookViewController *)self _setAudioSessionMix:1];
  contentViewControllers = [(BKBookViewController *)self contentViewControllers];
  allValues = [contentViewControllers allValues];
  [allValues makeObjectsPerformSelector:"resume"];

  [(BKBookViewController *)self updateUIForSmartInvert];
}

- (void)openToLocation:(id)location animated:(BOOL)animated
{
  animatedCopy = animated;
  locationCopy = location;
  [(BKBookViewController *)self setOpeningLocation:locationCopy];
  book = [(BKBookViewController *)self book];
  [locationCopy updateOrdinalForBookInfo:book];

  if ([(BKBookViewController *)self isVisible])
  {
    if ([(BKBookViewController *)self section])
    {
      [(BKBookViewController *)self setResumeLocation:locationCopy];
      [(BKBookViewController *)self setSection:0 animated:animatedCopy adjustScrollToReveal:0];
      [(BKBookViewController *)self setResumeLocation:0];
    }

    else if (![(BKBookViewController *)self isLocationOnCurrentPage:locationCopy])
    {
      [(BKBookViewController *)self recordedJumpToLocation:locationCopy animated:animatedCopy completion:0];
    }
  }

  else
  {
    [(BKBookViewController *)self setLocation:locationCopy];
    assetViewControllerDelegate = [(BKBookViewController *)self assetViewControllerDelegate];

    if (assetViewControllerDelegate)
    {
      assetViewControllerDelegate2 = [(BKBookViewController *)self assetViewControllerDelegate];
      [assetViewControllerDelegate2 assetViewController:self willOpen:animatedCopy];
    }

    [(BKBookViewController *)self _setAudioSessionMix:1];
  }

  contentViewControllers = [(BKBookViewController *)self contentViewControllers];
  allValues = [contentViewControllers allValues];
  [allValues makeObjectsPerformSelector:"resume"];
}

- (void)requestClose:(BOOL)close
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
  closeCopy = close;
  [(BKViewController *)self dismissCurrentPopoverWithCompletion:v7];
}

- (void)close:(BOOL)close
{
  closeCopy = close;
  contentData = [(BKBookViewController *)self contentData];
  [(BKBookViewController *)self setCachedContentData:contentData];

  [(BKBookViewController *)self bookMilestoneReached:10];
  [(BKBookViewController *)self stopPlayingMedia:0];
  [(BKViewController *)self hideOverlayViewControllerWithCompletion:0];
  [(BKBookViewController *)self stopFetchingBookmarks];
  [(BKBookViewController *)self _setAudioSessionMix:0];
  [(BKBookViewController *)self saveStateClosing:1];
  [(BKBookViewController *)self stopSoundtrack];
  [(BKBookViewController *)self setReadAloudState:0];
  [(BKBookViewController *)self saveBook];
  baseURL = [(AEBookInfo *)self->_book baseURL];
  absoluteString = [baseURL absoluteString];
  lastPathComponent = [absoluteString lastPathComponent];
  [BKTextIndex removeTextIndexWithName:lastPathComponent];

  contentViewControllers = [(BKBookViewController *)self contentViewControllers];
  allValues = [contentViewControllers allValues];
  [allValues makeObjectsPerformSelector:"suspend"];

  assetViewControllerDelegate = [(BKBookViewController *)self assetViewControllerDelegate];
  [assetViewControllerDelegate assetViewController:self willClose:closeCopy];
}

- (void)assetViewControllerUpdateToolbarsAfterOpenAnimation
{
  shouldControlsBeVisibleOnOpen = [(BKBookViewController *)self shouldControlsBeVisibleOnOpen];

  [(BKBookViewController *)self setControlsVisible:shouldControlsBeVisibleOnOpen animated:1];
}

- (void)assetViewControllerUpdateToolbarsForOpenAnimation
{
  shouldControlsBeVisibleOnOpen = [(BKBookViewController *)self shouldControlsBeVisibleOnOpen];

  [(BKBookViewController *)self setControlsVisible:shouldControlsBeVisibleOnOpen animated:0];
}

- (BOOL)shouldControlsBeVisibleOnOpen
{
  controlsVisible = [(BKBookViewController *)self controlsVisible];
  book = [(BKBookViewController *)self book];
  sampleContent = [book sampleContent];
  bOOLValue = [sampleContent BOOLValue];

  if (bOOLValue)
  {
    v7 = +[BRCConfigurationManager sharedInstance];
    v8 = [v7 valueForKey:BRCBooksDefaultsKeyReadingExperienceSamplesShowChromeOnOpen fromNamespace:BRCBooksDefaultsNamespace];

    controlsVisible |= [v8 BOOLValue];
  }

  return controlsVisible & 1;
}

- (void)saveStateClosing:(BOOL)closing
{
  closingCopy = closing;
  if (closing)
  {
    v5 = _AEBookPluginsLifeCycleLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = objc_opt_class();
      v7 = v6;
      book = [(BKBookViewController *)self book];
      assetLogID = [book assetLogID];
      v10 = 138543618;
      v11 = v6;
      v12 = 2114;
      v13 = assetLogID;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "SaveState while Closing BVC:%{public}@ logID:%{public}@", &v10, 0x16u);
    }
  }

  [(BKBookViewController *)self saveStateClosing:closingCopy suspending:0];
}

- (void)saveStateClosing:(BOOL)closing suspending:(BOOL)suspending
{
  v6 = [(BKBookViewController *)self book:closing];
  if (v6 && ([v6 isDeleted] & 1) == 0 && objc_msgSend(v6, "exists"))
  {
    savableLocation = [(BKBookViewController *)self savableLocation];
    if (savableLocation)
    {
      [(BKBookViewController *)self saveReadingLocation:savableLocation];
    }
  }

  [(BKBookViewController *)self setOpeningLocation:0];
}

- (BOOL)dismissShouldBegin:(id)begin
{
  beginCopy = begin;
  [beginCopy velocity];
  v5 = v4;
  [beginCopy velocity];
  if (v5 >= v6)
  {
    proposedBeginState = 0;
  }

  else
  {
    proposedBeginState = [beginCopy proposedBeginState];
  }

  return proposedBeginState;
}

- (void)saveBook
{
  book = [(BKBookViewController *)self book];
  managedObjectContext = [book managedObjectContext];
  hasChanges = [managedObjectContext hasChanges];

  if (hasChanges)
  {
    book2 = [(BKBookViewController *)self book];
    managedObjectContext2 = [book2 managedObjectContext];
    v12 = 0;
    v8 = [managedObjectContext2 save:&v12];
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
  pageCountIncludingUpsell = [(BKBookViewController *)self pageCountIncludingUpsell];
  v4 = 0x7FFFFFFFFFFFFFFFLL;
  if (pageCountIncludingUpsell != 0x7FFFFFFFFFFFFFFFLL)
  {
    return pageCountIncludingUpsell - ([(BKBookViewController *)self upsellOrdinal]!= 0x7FFFFFFFFFFFFFFFLL);
  }

  return v4;
}

- (void)updatePageCount
{
  calculatePageCountExcludingUpsell = [(BKBookViewController *)self calculatePageCountExcludingUpsell];
  v4 = 0x7FFFFFFFFFFFFFFFLL;
  if (calculatePageCountExcludingUpsell != 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = calculatePageCountExcludingUpsell;
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
  paginationController = [(BKBookViewController *)self paginationController];

  if (!paginationController)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  paginationController2 = [(BKBookViewController *)self paginationController];
  pageTotal = [paginationController2 pageTotal];

  return pageTotal;
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
  performSelectorProxy = [(BKBookViewController *)self performSelectorProxy];
  [NSObject cancelPreviousPerformRequestsWithTarget:performSelectorProxy selector:"hidePageControls:" object:self];
}

- (void)delayedHidePageControls
{
  [(BKBookViewController *)self cancelPendingHidePageControls];
  performSelectorProxy = [(BKBookViewController *)self performSelectorProxy];
  [(BKBookViewController *)self hidesPageControlsOnOpenDelay];
  [performSelectorProxy performSelector:"hidePageControls:" withObject:self afterDelay:?];
}

- (void)transitionDidFinish:(BOOL)finish
{
  if (finish && [(BKBookViewController *)self hidesPageControlsOnOpen])
  {

    [(BKBookViewController *)self delayedHidePageControls];
  }
}

- (BKLocation)savableLocation
{
  currentLocation = [(BKBookViewController *)self currentLocation];
  v4 = [(BKBookViewController *)self savableLocationForLocation:currentLocation];

  return v4;
}

- (id)savableLocationForLocation:(id)location
{
  locationCopy = location;
  if (([locationCopy ordinal] & 0x8000000000000000) != 0)
  {
    resumeLocation = [(BKBookViewController *)self resumeLocation];
  }

  else
  {
    ordinal = [locationCopy ordinal];
    if (ordinal != [(BKBookViewController *)self upsellOrdinal])
    {
      goto LABEL_6;
    }

    resumeLocation = [(BKBookViewController *)self pageLocationForPageNumber:[(BKBookViewController *)self pageCountExcludingUpsell]];
  }

  v7 = resumeLocation;

  locationCopy = v7;
LABEL_6:
  if (([locationCopy ordinal] & 0x8000000000000000) != 0)
  {

    locationCopy = 0;
  }

  return locationCopy;
}

- (void)restoreSavedLocation
{
  v3 = _AEBookPluginsLifeCycleLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    v5 = v4;
    book = [(BKBookViewController *)self book];
    assetLogID = [book assetLogID];
    v10 = 138543618;
    v11 = v4;
    v12 = 2114;
    v13 = assetLogID;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "restoreSavedLocation BVC:%{public}@ for logID:%{public}@ ", &v10, 0x16u);
  }

  book2 = [(BKBookViewController *)self book];
  readingLocation = [book2 readingLocation];
  [(BKBookViewController *)self setLocation:readingLocation];
}

- (void)_promptToLoadExternalContent:(id)content
{
  contentCopy = content;
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
  v11 = contentCopy;
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
    book = [(BKBookViewController *)self book];
    assetID = [book assetID];

    if (([v3 hasCachedLoadExternalContentApprovalForBookID:assetID] & 1) == 0)
    {
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 3221225472;
      v6[2] = sub_4E228;
      v6[3] = &unk_1E3F28;
      v7 = v3;
      v8 = assetID;
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
    book = [(BKBookViewController *)self book];
    sortedDocuments = [book sortedDocuments];

    v6 = [sortedDocuments countByEnumeratingWithState:&v14 objects:v18 count:16];
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
            objc_enumerationMutation(sortedDocuments);
          }

          manifestProperties = [*(*(&v14 + 1) + 8 * i) manifestProperties];
          v11 = [manifestProperties componentsSeparatedByString:@" "];
          v12 = [v11 containsObject:@"remote-resources"];

          if (v12)
          {
            hasRemoteResources = 1;
            goto LABEL_13;
          }
        }

        v7 = [sortedDocuments countByEnumeratingWithState:&v14 objects:v18 count:16];
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
  contentViewControllers = [(BKBookViewController *)self contentViewControllers];
  allValues = [contentViewControllers allValues];

  v4 = [allValues countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(allValues);
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
      v5 = [allValues countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }
}

- (void)setTheme:(id)theme
{
  themeCopy = theme;
  v15.receiver = self;
  v15.super_class = BKBookViewController;
  theme = [(BKBookViewController *)&v15 theme];

  if (theme != themeCopy)
  {
    v14.receiver = self;
    v14.super_class = BKBookViewController;
    [(BKBookViewController *)&v14 setTheme:themeCopy];
    -[BKBookViewController setSelectionHighlightType:](self, "setSelectionHighlightType:", +[BKTextHighlightView bkTextHighlightTypeForIMTextHighlightType:](BKTextHighlightView, "bkTextHighlightTypeForIMTextHighlightType:", [themeCopy textHighlightType]));
  }

  v6 = dispatch_time(0, (*&BKBookViewControllerThemeTransitionDuration * 0.5 * 1000000000.0));
  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = sub_4E66C;
  v11 = &unk_1E3F50;
  selfCopy = self;
  v13 = themeCopy;
  v7 = themeCopy;
  dispatch_after(v6, &_dispatch_main_q, &v8);
  [(BKBookViewController *)self updateUIForSmartInvert:v8];
}

- (int)pageProgressionDirection
{
  book = [(BKBookViewController *)self book];
  bkPageProgressionDirection = [book bkPageProgressionDirection];

  return bkPageProgressionDirection;
}

- (BOOL)isPageProgressionRTL
{
  book = [(BKBookViewController *)self book];
  isPageProgressionRTL = [book isPageProgressionRTL];

  return isPageProgressionRTL;
}

- (void)clearInactiveContentViewControllers
{
  contentViewControllers = [(BKBookViewController *)self contentViewControllers];
  v4 = [contentViewControllers copy];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  allKeys = [v4 allKeys];
  v6 = [allKeys countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(allKeys);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [v4 objectForKey:v10];
        if (![v11 isViewLoaded] || (objc_msgSend(v11, "view"), v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "window"), v13 = objc_claimAutoreleasedReturnValue(), v13, v12, !v13))
        {
          [v11 setDelegate:0];
          [v11 removeFromParentViewController];
          contentViewControllers2 = [(BKBookViewController *)self contentViewControllers];
          [contentViewControllers2 removeObjectForKey:v10];
        }
      }

      v7 = [allKeys countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }
}

- (void)storeChangedNotification:(id)notification
{
  if ([(BKBookViewController *)self upsellOrdinal]!= 0x7FFFFFFFFFFFFFFFLL)
  {

    [(BKBookViewController *)self updatePageCount];
  }
}

- (unint64_t)upsellOrdinal
{
  book = [(BKBookViewController *)self book];
  hasUpsellPage = [book hasUpsellPage];

  if (!hasUpsellPage)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  book2 = [(BKBookViewController *)self book];
  readingDocumentCount = [book2 readingDocumentCount];

  return readingDocumentCount;
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
      book = [(BKBookViewController *)self book];
      sampleContent = [book sampleContent];
      bOOLValue = [sampleContent BOOLValue];

      if (bOOLValue)
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

      book2 = [(BKBookViewController *)self book];
      [(BKUpsell *)self->_upsellContentViewController setBook:book2];

      [(BKUpsell *)self->_upsellContentViewController setOrdinal:[(BKBookViewController *)self upsellOrdinal]];
      [(BKUpsell *)self->_upsellContentViewController setDelegate:self];
    }

    book3 = [(BKBookViewController *)self book];
    sampleContent2 = [book3 sampleContent];
    bOOLValue2 = [sampleContent2 BOOLValue];

    if (bOOLValue2)
    {
      objc_opt_class();
      v13 = BUDynamicCast();
      assetViewControllerDelegate = [(BKBookViewController *)self assetViewControllerDelegate];
      v15 = [assetViewControllerDelegate assetViewControllerProductProfile:self];
      [v13 setProfileFuture:v15];
    }

    v3 = self->_upsellContentViewController;
  }

  return v3;
}

- (void)resume:(id)resume
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
  resumeLocation = [(BKBookViewController *)self resumeLocation];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_4ECD4;
  v4[3] = &unk_1E2BD0;
  v4[4] = self;
  [(BKBookViewController *)self jumpToLocation:resumeLocation animated:1 completion:v4];
}

- (void)showTOC:(id)c
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_4EDA0;
  v3[3] = &unk_1E2BD0;
  v3[4] = self;
  [(BKViewController *)self dismissCurrentPopoverWithCompletion:v3];
}

- (void)toggleShowPageControls:(id)controls
{
  expandedContentViewController = [(BKBookViewController *)self expandedContentViewController];
  isVisible = [expandedContentViewController isVisible];

  if ((isVisible & 1) == 0)
  {
    v6 = [(BKBookViewController *)self controlsVisible]^ 1;

    [(BKBookViewController *)self setControlsVisible:v6 animated:1];
  }
}

- (void)setStatusBarHidden:(BOOL)hidden animated:(BOOL)animated animations:(id)animations completion:(id)completion
{
  animatedCopy = animated;
  animationsCopy = animations;
  completionCopy = completion;
  view = [(BKBookViewController *)self view];
  window = [view window];

  if (animatedCopy)
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_4F0DC;
    v15[3] = &unk_1E3F78;
    v17 = window != 0;
    v15[4] = self;
    v16 = animationsCopy;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_4F144;
    v13[3] = &unk_1E3FA0;
    v14 = completionCopy;
    [UIView animateWithDuration:4 delay:v15 options:v13 animations:0.15 completion:0.0];
  }

  else
  {
    if (window)
    {
      [(BKBookViewController *)self setNeedsStatusBarAppearanceUpdate];
      [(BKBookViewController *)self setNeedsUpdateOfHomeIndicatorAutoHidden];
    }

    if (animationsCopy)
    {
      animationsCopy[2](animationsCopy);
    }

    if (completionCopy)
    {
      completionCopy[2](completionCopy);
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

- (void)setControlsVisible:(BOOL)visible animated:(BOOL)animated animations:(id)animations completion:(id)completion
{
  animatedCopy = animated;
  visibleCopy = visible;
  animationsCopy = animations;
  completionCopy = completion;
  self->_controlsEnabledViaHover = 0;
  [(BKBookViewController *)self cancelPendingHidePageControls];
  if (visibleCopy || ![(BKBookViewController *)self bkaxNeedsPersistentControls]|| [(BKBookViewController *)self bkaxAccessibilityUserIsRequestingControlsVisibilityToggle])
  {
    self->_controlsVisible = visibleCopy;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_4F2E4;
    v12[3] = &unk_1E2E08;
    v13 = animationsCopy;
    [(BKBookViewController *)self setStatusBarHidden:!visibleCopy animated:animatedCopy animations:v12 completion:completionCopy];
    [(BKBookViewController *)self delayedSavePageControlVisibility];
    [(BKBookViewController *)self writeControlVisibilityStateToWebProcessPlugin];
  }
}

- (void)showBrightness:(id)brightness
{
  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = sub_4F3D4;
  v11 = &unk_1E3F50;
  selfCopy = self;
  brightnessCopy = brightness;
  v4 = brightnessCopy;
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

- (void)showAudio:(id)audio
{
  v6 = _NSConcreteStackBlock;
  v7 = 3221225472;
  v8 = sub_4F544;
  v9 = &unk_1E3F50;
  selfCopy = self;
  audioCopy = audio;
  v4 = audioCopy;
  v5 = objc_retainBlock(&v6);
  [(BKViewController *)self dismissCurrentPopoverWithCompletion:v5, v6, v7, v8, v9, selfCopy];
}

- (void)buy:(id)buy
{
  assetViewControllerDelegate = [(BKBookViewController *)self assetViewControllerDelegate];
  [assetViewControllerDelegate assetViewControllerRequestToBuy:self completion:0];
}

- (void)buyWithCompletion:(id)completion
{
  completionCopy = completion;
  assetViewControllerDelegate = [(BKBookViewController *)self assetViewControllerDelegate];
  v7 = assetViewControllerDelegate;
  if (assetViewControllerDelegate)
  {
    [assetViewControllerDelegate assetViewControllerRequestToBuy:self completion:completionCopy];
  }

  else
  {
    v6 = objc_retainBlock(completionCopy);

    if (v6)
    {
      (*(v6 + 2))(v6, 0, 0);
    }

    completionCopy = v6;
  }
}

- (void)presentAppearanceViewControllerFromItem:(id)item
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_4F7F0;
  v4[3] = &unk_1E3F50;
  selfCopy = self;
  itemCopy = item;
  v3 = itemCopy;
  [(BKViewController *)selfCopy dismissCurrentPopoverWithCompletion:v4];
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

    appearanceMenuItems = [(BKBookViewController *)self appearanceMenuItems];
    [(BKAppearanceViewController *)self->_appearanceViewController setMenuItems:appearanceMenuItems];

    v6 = [[UINavigationController alloc] initWithRootViewController:self->_appearanceViewController];
    appearanceNavigationController = self->_appearanceNavigationController;
    self->_appearanceNavigationController = v6;

    [(UINavigationController *)self->_appearanceNavigationController setNavigationBarHidden:1];
    theme = [(BKBookViewController *)self theme];
    [(BKAppearanceViewController *)self->_appearanceViewController setTheme:theme];

    book = [(BKBookViewController *)self book];
    [(BKAppearanceViewController *)self->_appearanceViewController setBook:book];

    [(BKAppearanceViewController *)self->_appearanceViewController setDelegate:self];
    [(BKAppearanceViewController *)self->_appearanceViewController setLayout:[(BKBookViewController *)self layout]];
    [(BKAppearanceViewController *)self->_appearanceViewController setAppearanceStyle:0];
    v10 = objc_opt_new();
    appearanceContainerViewController = self->_appearanceContainerViewController;
    self->_appearanceContainerViewController = v10;

    theme2 = [(BKBookViewController *)self theme];
    [(IMViewController *)self->_appearanceContainerViewController setTheme:theme2];

    [(IMViewController *)self->_appearanceContainerViewController addChildViewController:self->_appearanceNavigationController];
    view = [(IMViewController *)self->_appearanceContainerViewController view];
    [view bounds];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;
    view2 = [(UINavigationController *)self->_appearanceNavigationController view];
    [view2 setFrame:{v15, v17, v19, v21}];

    view3 = [(IMViewController *)self->_appearanceContainerViewController view];
    view4 = [(UINavigationController *)self->_appearanceNavigationController view];
    [view3 addSubview:view4];

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

  paginationController = [(BKBookViewController *)self paginationController];
  [paginationController resume];
}

- (void)appearanceViewController:(id)controller didChangeLayout:(unint64_t)layout
{
  controllerCopy = controller;
  book = [(BKBookViewController *)self book];
  v8 = [(BKBookViewController *)self validLayoutForBook:book desiredLayout:layout];

  v9 = +[BAEventReporter sharedReporter];
  ba_effectiveAnalyticsTracker = [(BKBookViewController *)self ba_effectiveAnalyticsTracker];
  readingSessionData = [(BKBookViewController *)self readingSessionData];
  contentData = [(BKBookViewController *)self contentData];
  style = [controllerCopy style];

  [style fontSize];
  [v9 emitReadingScrollViewSettingChangeEventWithTracker:ba_effectiveAnalyticsTracker readingSessionData:readingSessionData contentData:contentData fontSize:v8 != 1 isOn:?];

  [(BKBookViewController *)self setLayout:v8];
}

- (void)appearanceViewController:(id)controller didChangeFont:(id)font
{
  fontCopy = font;
  v9 = +[BAEventReporter sharedReporter];
  ba_effectiveAnalyticsTracker = [(BKBookViewController *)self ba_effectiveAnalyticsTracker];
  readingSessionData = [(BKBookViewController *)self readingSessionData];
  contentData = [(BKBookViewController *)self contentData];
  [v9 emitReadingFontChangeEventWithTracker:ba_effectiveAnalyticsTracker readingSessionData:readingSessionData contentData:contentData fontName:fontCopy];
}

- (void)appearanceViewController:(id)controller didChangeFontSize:(double)size
{
  v10 = +[BAEventReporter sharedReporter];
  ba_effectiveAnalyticsTracker = [(BKBookViewController *)self ba_effectiveAnalyticsTracker];
  readingSessionData = [(BKBookViewController *)self readingSessionData];
  contentData = [(BKBookViewController *)self contentData];
  *&v9 = size;
  [v10 emitReadingFontSizeChangeEventWithTracker:ba_effectiveAnalyticsTracker readingSessionData:readingSessionData contentData:contentData fontSize:v9];
}

- (void)appearanceViewController:(id)controller didChangeAutoNightMode:(BOOL)mode previousValue:(BOOL)value
{
  if (mode != value)
  {
    modeCopy = mode;
    v11 = +[BAEventReporter sharedReporter];
    ba_effectiveAnalyticsTracker = [(BKBookViewController *)self ba_effectiveAnalyticsTracker];
    readingSessionData = [(BKBookViewController *)self readingSessionData];
    contentData = [(BKBookViewController *)self contentData];
    [v11 emitReadingAutoNightSettingChangeEventWithTracker:ba_effectiveAnalyticsTracker readingSessionData:readingSessionData contentData:contentData isOn:modeCopy];
  }
}

- (void)appearanceViewController:(id)controller didChangeTheme:(unint64_t)theme
{
  v9 = BABackgroundColorDataFromBCAppearanceStyle();
  v5 = +[BAEventReporter sharedReporter];
  ba_effectiveAnalyticsTracker = [(BKBookViewController *)self ba_effectiveAnalyticsTracker];
  readingSessionData = [(BKBookViewController *)self readingSessionData];
  contentData = [(BKBookViewController *)self contentData];
  [v5 emitReadingBackgroundColorChangeEventWithTracker:ba_effectiveAnalyticsTracker readingSessionData:readingSessionData contentData:contentData backgroundColorData:v9];
}

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  senderCopy = sender;
  v14.receiver = self;
  v14.super_class = BKBookViewController;
  v7 = [(BKBookViewController *)&v14 canPerformAction:action withSender:senderCopy];
  if (!sel_isEqual(action, "copy:"))
  {
    if (sel_isEqual(action, "books_showContent:"))
    {
      if (v7)
      {
        canShowContent = [(BKBookViewController *)self canShowContent];
        goto LABEL_21;
      }
    }

    else if (sel_isEqual(action, "books_pageForward:"))
    {
      if (v7)
      {
        canShowContent = [(BKBookViewController *)self canGoToNextPage];
        goto LABEL_21;
      }
    }

    else if (sel_isEqual(action, "books_pageBackward:"))
    {
      if (v7)
      {
        canShowContent = [(BKBookViewController *)self canGoToPreviousPage];
        goto LABEL_21;
      }
    }

    else if (sel_isEqual(action, "books_chapterLeft:") || sel_isEqual(action, "books_chapterRight:") || sel_isEqual(action, "books_chapterForward:") || sel_isEqual(action, "books_chapterBackward:") || sel_isEqual(action, "books_chapterStart:") || sel_isEqual(action, "books_chapterEnd:"))
    {
      if (v7)
      {
        canShowContent = [(BKBookViewController *)self canNavigateByChapter];
        goto LABEL_21;
      }
    }

    else if (sel_isEqual(action, "books_toggleBookmark:"))
    {
      if ([(BKBookViewController *)self bookCanBeBookmarked])
      {
        canShowContent = [(BKBookViewController *)self shouldBookmarkButtonsBeEnabled];
        goto LABEL_21;
      }
    }

    else if (sel_isEqual(action, "books_search:"))
    {
      if (v7 && [(BKBookViewController *)self canSearch])
      {
        v10 = [(BKBookViewController *)self _searchQueryFromSender:senderCopy];
        v9 = [v10 length] != 0;

        goto LABEL_36;
      }
    }

    else
    {
      if (!sel_isEqual(action, "books_find:"))
      {
        if (sel_isEqual(action, "books_findNext:"))
        {
          if (!v7)
          {
            goto LABEL_35;
          }

          nextSearchResult = [(BKBookViewController *)self nextSearchResult];
        }

        else
        {
          isEqual = sel_isEqual(action, "books_findPrevious:");
          if ((isEqual & v7) != 1)
          {
            v9 = !isEqual & v7;
            goto LABEL_36;
          }

          nextSearchResult = [(BKBookViewController *)self previousSearchResult];
        }

        v9 = nextSearchResult != 0;

        goto LABEL_36;
      }

      if (v7)
      {
        canShowContent = [(BKBookViewController *)self canSearch];
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

  canShowContent = [(BKBookViewController *)self canCopy];
LABEL_21:
  v9 = canShowContent;
LABEL_36:

  return v9;
}

- (void)books_search:(id)books_search
{
  books_searchCopy = books_search;
  v5 = [(BKBookViewController *)self _searchQueryFromSender:books_searchCopy];
  [(BKBookViewController *)self showSearchWithString:v5 sender:books_searchCopy];
}

- (void)books_findNext:(id)next
{
  nextSearchResult = [(BKBookViewController *)self nextSearchResult];
  [(BKBookViewController *)self revealSearchResult:nextSearchResult animated:1];
}

- (void)books_findPrevious:(id)previous
{
  previousSearchResult = [(BKBookViewController *)self previousSearchResult];
  [(BKBookViewController *)self revealSearchResult:previousSearchResult animated:1];
}

- (void)resetKeyWindow
{
  view = [(BKBookViewController *)self view];
  window = [view window];
  [window makeKeyAndVisible];
}

- (BOOL)canShowContent
{
  if ([(BKBookViewController *)self section])
  {
    return 1;
  }

  currentOverlayViewController = [(BKViewController *)self currentOverlayViewController];
  v3 = currentOverlayViewController != 0;

  return v3;
}

- (BOOL)canSearch
{
  searchButtonItem = [(BKBookViewController *)self searchButtonItem];
  v4 = searchButtonItem;
  v5 = (!searchButtonItem || [searchButtonItem isEnabled]) && -[BKBookViewController section](self, "section") == 0;

  return v5;
}

- (id)_contentControllerThatHasCopyableSelection
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = [(BKBookViewController *)self contentViewControllers:0];
  allValues = [v2 allValues];

  v4 = [allValues countByEnumeratingWithState:&v12 objects:v16 count:16];
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
        objc_enumerationMutation(allValues);
      }

      objc_opt_class();
      v8 = BUDynamicCast();
      if ([v8 canCopyContent])
      {
        selectedText = [v8 selectedText];
        v10 = [selectedText length];

        if (v10)
        {
          break;
        }
      }

      if (v5 == ++v7)
      {
        v5 = [allValues countByEnumeratingWithState:&v12 objects:v16 count:16];
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
  _contentControllerThatHasCopyableSelection = [(BKBookViewController *)self _contentControllerThatHasCopyableSelection];
  v3 = _contentControllerThatHasCopyableSelection != 0;

  return v3;
}

- (void)copy:(id)copy
{
  _contentControllerThatHasCopyableSelection = [(BKBookViewController *)self _contentControllerThatHasCopyableSelection];
  [_contentControllerThatHasCopyableSelection copyContent];
}

- (id)keyCommands
{
  v20.receiver = self;
  v20.super_class = BKBookViewController;
  keyCommands = [(BKBookViewController *)&v20 keyCommands];
  v4 = [keyCommands mutableCopy];
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

- (void)validateCommand:(id)command
{
  commandCopy = command;
  v11.receiver = self;
  v11.super_class = BKBookViewController;
  [(BKBookViewController *)&v11 validateCommand:commandCopy];
  action = [commandCopy action];
  isPageProgressionRTL = [(BKBookViewController *)self isPageProgressionRTL];
  if (sel_isEqual(action, "books_chapterLeft:"))
  {
    v7 = AEBundle();
    if (isPageProgressionRTL)
    {
LABEL_3:
      v8 = @"Next Chapter";
      goto LABEL_7;
    }

LABEL_6:
    v8 = @"Previous Chapter";
    goto LABEL_7;
  }

  if (sel_isEqual(action, "books_chapterRight:"))
  {
    v7 = AEBundle();
    if ((isPageProgressionRTL & 1) == 0)
    {
      goto LABEL_3;
    }

    goto LABEL_6;
  }

  if (!sel_isEqual(action, "books_toggleBookmark:"))
  {
    goto LABEL_8;
  }

  isPageBookmarked = [(BKBookViewController *)self isPageBookmarked];
  v7 = AEBundle();
  if (isPageBookmarked)
  {
    v8 = @"Remove Bookmark";
  }

  else
  {
    v8 = @"Bookmark Page";
  }

LABEL_7:
  v9 = [v7 localizedStringForKey:v8 value:&stru_1E7188 table:0];
  [commandCopy setTitle:v9];

LABEL_8:
}

- (void)books_chapterLeft:(id)left
{
  leftCopy = left;
  if ([(BKBookViewController *)self isPageProgressionRTL])
  {
    [(BKBookViewController *)self books_chapterForward:leftCopy];
  }

  else
  {
    [(BKBookViewController *)self books_chapterBackward:leftCopy];
  }
}

- (void)books_chapterRight:(id)right
{
  rightCopy = right;
  if ([(BKBookViewController *)self isPageProgressionRTL])
  {
    [(BKBookViewController *)self books_chapterBackward:rightCopy];
  }

  else
  {
    [(BKBookViewController *)self books_chapterForward:rightCopy];
  }
}

- (void)savePageControlVisibility
{
  view = [(BKBookViewController *)self view];
  window = [view window];

  if (window && [(BKBookViewController *)self shouldSavePageControlVisibility])
  {
    v6 = +[NSUserDefaults standardUserDefaults];
    controlsVisible = [(BKBookViewController *)self controlsVisible];
    [v6 setBool:controlsVisible ^ 1 forKey:BKBookHidePageControls[0]];
  }
}

- (void)cancelPendingSavePageControlVisibility
{
  performSelectorProxy = [(BKBookViewController *)self performSelectorProxy];
  [NSObject cancelPreviousPerformRequestsWithTarget:performSelectorProxy selector:"savePageControlVisibility" object:0];
}

- (void)delayedSavePageControlVisibility
{
  [(BKBookViewController *)self cancelPendingSavePageControlVisibility];
  performSelectorProxy = [(BKBookViewController *)self performSelectorProxy];
  [(BKBookViewController *)self savePageControlVisibilityDelay];
  [performSelectorProxy performSelector:"savePageControlVisibility" withObject:0 afterDelay:?];
}

- (void)clearSearchResult
{
  [(BKBookViewController *)self setSearchResult:0];
  contentViewControllers = [(BKBookViewController *)self contentViewControllers];
  allValues = [contentViewControllers allValues];
  [allValues makeObjectsPerformSelector:"clearSearchLocation" withObject:0];
}

- (void)clearSelection
{
  [(BKBookViewController *)self setSearchResult:0];
  contentViewControllers = [(BKBookViewController *)self contentViewControllers];
  allValues = [contentViewControllers allValues];
  [allValues makeObjectsPerformSelector:"clearSelection" withObject:0];
}

- (void)clearSelectedAnnotation
{
  contentViewControllers = [(BKBookViewController *)self contentViewControllers];
  allValues = [contentViewControllers allValues];
  [allValues makeObjectsPerformSelector:"clearSelectedAnnotation"];
}

- (void)clearCurrentHighlighting
{
  contentViewControllers = [(BKBookViewController *)self contentViewControllers];
  allValues = [contentViewControllers allValues];
  [allValues makeObjectsPerformSelector:"clearCurrentHighlighting"];
}

- (void)forceReload
{
  currentLocation = [(BKBookViewController *)self currentLocation];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  contentViewControllers = [(BKBookViewController *)self contentViewControllers];
  allValues = [contentViewControllers allValues];

  v6 = [allValues countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(allValues);
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
      v7 = [allValues countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  [(BKPaginationController *)self->_paginationController releasePaginationInfo];
  [(BKBookViewController *)self setPageCountIncludingUpsell:0x7FFFFFFFFFFFFFFFLL];
  [(BKBookViewController *)self paginationUpdateRequired];
  [(BKBookViewController *)self jumpToLocation:currentLocation animated:0 completion:0];
}

- (void)forceRepagination
{
  [(BKPaginationController *)self->_paginationController releasePaginationInfo];
  [(BKBookViewController *)self setPageCountIncludingUpsell:0x7FFFFFFFFFFFFFFFLL];

  [(BKBookViewController *)self paginationUpdateRequired];
}

- (void)paginationUpdateRequired
{
  navigationHistory = [(BKBookViewController *)self navigationHistory];
  paginationController = [(BKBookViewController *)self paginationController];
  [paginationController setNavigationHistory:navigationHistory];

  paginationController2 = [(BKBookViewController *)self paginationController];
  [paginationController2 repaginateWithStyle:0 geometry:0];
}

- (id)titleForChapterAtPageNumber:(int64_t)number
{
  v3 = 0;
  if (number && number != 0x7FFFFFFFFFFFFFFFLL)
  {
    paginationController = [(BKBookViewController *)self paginationController];
    pageTotal = [paginationController pageTotal];

    if (pageTotal >= number)
    {
      paginationController2 = [(BKBookViewController *)self paginationController];
      v14 = [paginationController2 titleForChapterAtPageNumber:number];
    }

    else
    {
      book = [(BKBookViewController *)self book];
      sampleContent = [book sampleContent];
      bOOLValue = [sampleContent BOOLValue];

      v11 = AEBundle();
      paginationController2 = v11;
      if (bOOLValue)
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

- (void)managedObjectContextDidSave:(id)save
{
  saveCopy = save;
  object = [saveCopy object];
  v6 = self->_bookMoc;
  v7 = v6;
  if (v6)
  {
    v8 = v6 == object;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    persistentStoreCoordinator = [(NSManagedObjectContext *)v6 persistentStoreCoordinator];
    persistentStoreCoordinator2 = [(NSManagedObjectContext *)object persistentStoreCoordinator];

    if (persistentStoreCoordinator == persistentStoreCoordinator2)
    {
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_51544;
      v14[3] = &unk_1E3F50;
      v15 = v7;
      v16 = saveCopy;
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

- (id)_searchResultOffsetByDistance:(int64_t)distance
{
  searchResult = [(BKBookViewController *)self searchResult];
  searchViewControllerIfLoaded = [(BKBookViewController *)self searchViewControllerIfLoaded];
  searchController = [searchViewControllerIfLoaded searchController];
  results = [searchController results];

  v9 = 0;
  if (searchResult && results)
  {
    v10 = [results indexOfObject:searchResult];
    if (v10 == 0x7FFFFFFFFFFFFFFFLL || (v11 = v10 + distance, v11 < 0) || v11 >= [results count])
    {
      v9 = 0;
    }

    else
    {
      v9 = [results objectAtIndexedSubscript:v11];
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

- (id)documentForLocation:(id)location
{
  locationCopy = location;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = locationCopy;
    book = [(BKBookViewController *)self book];
    path = [v5 path];

    v8 = [book documentAtPath:path];
  }

  else
  {
    book = [(BKBookViewController *)self book];
    v8 = [book documentWithOrdinal:{objc_msgSend(locationCopy, "ordinal")}];
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

- (void)turnToPageNumber:(int64_t)number animated:(BOOL)animated
{
  [(BKBookViewController *)self dismissCurrentPopover:number];

  [(BKBookViewController *)self didChangeLocationClosing:0 suspending:0];
}

- (void)jumpToLocation:(id)location animated:(BOOL)animated completion:(id)completion
{
  v5 = objc_retainBlock(completion);
  if (v5)
  {
    v6 = v5;
    v5[2]();
    v5 = v6;
  }
}

- (void)recordedJumpToLocation:(id)location animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  locationCopy = location;
  completionCopy = completion;
  v28 = completionCopy;
  if (locationCopy)
  {
    v10 = [(BKBookViewController *)self documentForLocation:locationCopy];
    v11 = v10;
    if (v10)
    {
      documentOrdinal = [v10 documentOrdinal];
      if ([documentOrdinal integerValue] == -1)
      {
LABEL_6:

LABEL_7:
        book = [(BKBookViewController *)self book];
        v15 = [book urlForDocument:v11];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v16 = locationCopy;
          anchor = [v16 anchor];

          if (anchor)
          {
            anchor2 = [v16 anchor];
            v19 = [v15 URLByAppendingPathComponent:anchor2];

            v15 = v19;
          }
        }

        v20 = [BKExpandedContentResource resourceForURL:v15];
        book2 = [(BKBookViewController *)self book];
        cacheItem = [book2 cacheItem];
        [v20 setCacheItem:cacheItem];

        [(BKBookViewController *)self showExpandedContentForResource:v20 atLocation:locationCopy completion:v28];
LABEL_19:

        goto LABEL_20;
      }

      nonlinearElement = [v11 nonlinearElement];
      if ([nonlinearElement BOOLValue])
      {

        goto LABEL_6;
      }

      documentOrdinal2 = [v11 documentOrdinal];

      if (!documentOrdinal2)
      {
        goto LABEL_7;
      }
    }

    if (self->_isReading)
    {
      currentLocation = [(BKBookViewController *)self currentLocation];
      v26 = [locationCopy isEqual:currentLocation];

      if (v26)
      {
        [(BKBookViewController *)self startReadAloud];
      }
    }

    v27 = [(BKBookViewController *)self _normalizedLocation:locationCopy];

    [(BKBookViewController *)self recordJumpFromCurrentLocation];
    [(BKBookViewController *)self jumpToLocation:v27 animated:animatedCopy completion:v28];
    locationCopy = v27;
    goto LABEL_19;
  }

  v23 = objc_retainBlock(completionCopy);
  locationCopy = v23;
  if (v23)
  {
    (*(v23 + 2))(v23);
  }

LABEL_20:
}

- (id)locationForPath:(id)path fragment:(id)fragment
{
  pathCopy = path;
  fragmentCopy = fragment;
  if (fragmentCopy && [BKNavigationInfo isExcludedFromSampleHash:fragmentCopy])
  {
    v8 = [[BKLocation alloc] initWithOrdinal:[(BKBookViewController *)self upsellOrdinal]];
  }

  else
  {
    book = [(BKBookViewController *)self book];
    v10 = [book documentsWithPath:pathCopy sortBy:@"documentOrdinal" limit:0];
    lastObject = [v10 lastObject];

    documentOrdinal = [lastObject documentOrdinal];
    integerValue = [documentOrdinal integerValue];

    v8 = [[BKAnchorLocation alloc] initWithOrdinal:integerValue andAnchor:fragmentCopy];
  }

  return v8;
}

- (id)_normalizedLocation:(id)location
{
  locationCopy = location;
  objc_opt_class();
  v5 = BUDynamicCast();
  v6 = locationCopy;
  if (v5)
  {
    v7 = _AECaptureLocationLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v39 = locationCopy;
    }

    path = [v5 path];
    v9 = [path length];

    if (v9)
    {
      v10 = _AECaptureLocationLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_INFO, "Had path - using locationForPath:fragment:", buf, 2u);
      }

      path2 = [v5 path];
      anchor = [v5 anchor];
      v6 = [(BKBookViewController *)self locationForPath:path2 fragment:anchor];
      v13 = locationCopy;
      goto LABEL_26;
    }

    path2 = [v5 anchor];
    v14 = _AECaptureLocationLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v39 = path2;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_INFO, "We had no path - Attempting to parse the anchor: %{public}@", buf, 0xCu);
    }

    v37 = 0;
    v13 = [NSRegularExpression regularExpressionWithPattern:@"(\\d+)" options:1 error:&v37];
    anchor = v37;
    if (anchor || !path2)
    {
      v25 = _AECaptureLocationLog();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v39 = path2;
        v40 = 2114;
        v41 = anchor;
        _os_log_impl(&dword_0, v25, OS_LOG_TYPE_ERROR, "Failed to create regular expression to get page number from %{public}@ - %{public}@", buf, 0x16u);
      }
    }

    else
    {
      v15 = [v13 firstMatchInString:path2 options:2 range:{0, objc_msgSend(path2, "length")}];
      range = [v15 range];
      v18 = [path2 substringWithRange:{range, v17}];
      integerValue = [v18 integerValue];
      v20 = _AECaptureLocationLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        [NSNumber numberWithInteger:integerValue];
        v21 = v35 = self;
        *buf = 138543618;
        v39 = v18;
        v40 = 2114;
        v41 = v21;
        _os_log_impl(&dword_0, v20, OS_LOG_TYPE_DEFAULT, "Parsing page - Captured substring: %{public}@ and got value: %{public}@", buf, 0x16u);

        self = v35;
      }

      if (integerValue != 0x7FFFFFFFFFFFFFFFLL)
      {
        if ([path2 containsString:@"page("]
        {
          v22 = _AECaptureLocationLog();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            [NSNumber numberWithInteger:integerValue];
            v24 = v23 = self;
            *buf = 138543362;
            v39 = v24;
            _os_log_impl(&dword_0, v22, OS_LOG_TYPE_DEFAULT, "Parsing page - %{public}@", buf, 0xCu);

            self = v23;
          }

          goto LABEL_25;
        }

        if ([path2 containsString:@"chapter("]
        {
          selfCopy = self;
          paginationController = [(BKBookViewController *)self paginationController];
          v32 = [paginationController pageRangeForChapterAtIndex:integerValue - 1];

          v22 = _AECaptureLocationLog();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            v33 = [NSNumber numberWithInteger:integerValue];
            v34 = [NSNumber numberWithUnsignedInteger:v32];
            *buf = 138543618;
            v39 = v33;
            v40 = 2114;
            v41 = v34;
            _os_log_impl(&dword_0, v22, OS_LOG_TYPE_DEFAULT, "Parsing chapter - Captured chapterNumber: %{public}@ and got startPage: %{public}@", buf, 0x16u);
          }

          integerValue = v32;
          self = selfCopy;
          goto LABEL_25;
        }

        v22 = _AECaptureLocationLog();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v39 = path2;
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
      v41 = path2;
      v27 = v22;
      v28 = 22;
LABEL_23:
      _os_log_impl(&dword_0, v27, OS_LOG_TYPE_ERROR, v26, buf, v28);
    }

LABEL_24:
    integerValue = 0;
LABEL_25:

    paginationController2 = [(BKBookViewController *)self paginationController];
    v6 = [paginationController2 pageLocationForPageNumber:integerValue];

LABEL_26:
  }

  return v6;
}

- (void)goToPath:(id)path fragment:(id)fragment animated:(BOOL)animated
{
  animatedCopy = animated;
  v7 = [(BKBookViewController *)self locationForPath:path fragment:fragment];
  [(BKBookViewController *)self recordedJumpToLocation:v7 animated:animatedCopy completion:0];
}

- (void)jumpBackAnimated:(BOOL)animated
{
  animatedCopy = animated;
  navigationHistory = [(BKBookViewController *)self navigationHistory];
  isAtTopOfStack = [navigationHistory isAtTopOfStack];

  if (isAtTopOfStack)
  {
    [(BKBookViewController *)self recordJumpFromCurrentLocation];
  }

  navigationHistory2 = [(BKBookViewController *)self navigationHistory];
  [navigationHistory2 rewind];

  navigationHistory3 = [(BKBookViewController *)self navigationHistory];
  currentEntity = [navigationHistory3 currentEntity];

  location = [currentEntity location];
  [(BKBookViewController *)self jumpToLocation:location animated:animatedCopy completion:0];
}

- (void)jumpAheadAnimated:(BOOL)animated
{
  animatedCopy = animated;
  navigationHistory = [(BKBookViewController *)self navigationHistory];
  nextEntity = [navigationHistory nextEntity];

  v6 = nextEntity;
  if (nextEntity)
  {
    navigationHistory2 = [(BKBookViewController *)self navigationHistory];
    [navigationHistory2 skip];

    navigationHistory3 = [(BKBookViewController *)self navigationHistory];
    isAtTopOfStack = [navigationHistory3 isAtTopOfStack];

    if (isAtTopOfStack)
    {
      navigationHistory4 = [(BKBookViewController *)self navigationHistory];
      [navigationHistory4 truncateHistory];
    }

    location = [nextEntity location];
    [(BKBookViewController *)self jumpToLocation:location animated:animatedCopy completion:0];

    v6 = nextEntity;
  }
}

- (BOOL)_currentChapterInfo:(id *)info uniqueID:(id *)d
{
  currentPages = [(BKBookViewController *)self currentPages];
  v9 = [(BKBookViewController *)self pageNumberFromRange:currentPages, v8];
  if (v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v10 = v9;
  paginationController = [(BKBookViewController *)self paginationController];
  numberOfChapters = [paginationController numberOfChapters];

  paginationController2 = [(BKBookViewController *)self paginationController];
  v14 = paginationController2;
  if (!numberOfChapters)
  {
    pageTotal = [paginationController2 pageTotal];

    if (pageTotal != 0x7FFFFFFFFFFFFFFFLL)
    {
      paginationController3 = [(BKBookViewController *)self paginationController];
      *d = [paginationController3 hrefForPageNumber:v10];

      paginationController4 = [(BKBookViewController *)self paginationController];
      v21 = [paginationController4 physicalPageTitlesForPageNumber:v10];
      *info = [v21 firstObject];

      goto LABEL_8;
    }

    return 0;
  }

  v15 = [paginationController2 chapterIndexForPageNumber:v10];

  if (v15 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  paginationController5 = [(BKBookViewController *)self paginationController];
  *d = [paginationController5 hrefForChapterAtPageNumber:v10];

  paginationController4 = [(BKBookViewController *)self paginationController];
  *info = [paginationController4 titleForChapterAtPageNumber:v10];
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
    book = [(BKBookViewController *)self book];
    assetID = [book assetID];
    [v6 activateChapterForBook:assetID chapterID:v5 title:v4 completion:0];
  }

  v9 = +[BCProgressKitController sharedController];
  book2 = [(BKBookViewController *)self book];
  assetID2 = [book2 assetID];
  [v9 updateBookProgress:assetID2 completion:0];
}

- (void)writeAnnotationsToWebProcessPlugin
{
  visiblePageBookmarks = [(BKBookViewController *)self visiblePageBookmarks];
  visiblePageHighlights = [(BKBookViewController *)self visiblePageHighlights];
  v27 = [AEAnnotation dictionaryRepresentationsForAnnotations:visiblePageHighlights];
  v5 = +[NSMutableArray array];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  contentViewControllers = [(BKBookViewController *)self contentViewControllers];
  allValues = [contentViewControllers allValues];

  v8 = [allValues countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v8)
  {
    v9 = v8;
    v23 = visiblePageHighlights;
    v24 = visiblePageBookmarks;
    v10 = 0;
    v11 = *v34;
    v12 = &OBJC_IVAR___BKThumbnailBookViewController__tipContextName;
    v25 = allValues;
    v26 = *v34;
    do
    {
      v13 = 0;
      v28 = v9;
      do
      {
        if (*v34 != v11)
        {
          objc_enumerationMutation(allValues);
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
          allValues = v25;
          v11 = v26;
          v12 = v15;
          v9 = v28;
        }

        ++v13;
      }

      while (v13 != v9);
      v9 = [allValues countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v9);

    if (!v10)
    {
      visiblePageHighlights = v23;
      visiblePageBookmarks = v24;
      goto LABEL_24;
    }

    visiblePageBookmarks = v24;
    allValues = [AEAnnotation dictionaryRepresentationsForAnnotations:v24];
    [v10 writeAnnotationsToWebProcessPlugin:allValues andHighlights:v5];
    visiblePageHighlights = v23;
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
  allValues = [v3 allValues];

  v5 = [allValues countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(allValues);
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

      v6 = [allValues countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

- (void)didChangeLocationClosing:(BOOL)closing suspending:(BOOL)suspending
{
  if (!closing)
  {
    [(BKBookViewController *)self setUserNavigated:1];
  }

  book = [(BKBookViewController *)self book];
  sampleContent = [book sampleContent];
  bOOLValue = [sampleContent BOOLValue];

  if ((bOOLValue & 1) == 0)
  {
    readingLocationHighwaterMark = [(BKBookViewController *)self readingLocationHighwaterMark];

    if (!readingLocationHighwaterMark)
    {
      book2 = [(BKBookViewController *)self book];
      annotationProvider = [(BKBookViewController *)self annotationProvider];
      uiManagedObjectContext = [annotationProvider uiManagedObjectContext];
      v13 = [book2 readingLocationAnnotation:0 moc:uiManagedObjectContext];
      [v13 readingProgressHighWaterMark];
      v14 = [NSNumber numberWithFloat:?];
      [(BKBookViewController *)self setReadingLocationHighwaterMark:v14];
    }

    readingProgress = [(BKBookViewController *)self readingProgress];
    if (readingProgress)
    {
      assetViewControllerDelegate = [(BKBookViewController *)self assetViewControllerDelegate];
      v25 = BCAssetReadingProgressKey;
      v26 = readingProgress;
      v17 = [NSDictionary dictionaryWithObjects:&v26 forKeys:&v25 count:1];
      [assetViewControllerDelegate assetViewController:self assetPropertyChanged:v17];

      readingLocationHighwaterMark2 = [(BKBookViewController *)self readingLocationHighwaterMark];
      [readingLocationHighwaterMark2 floatValue];
      v20 = v19;
      v21 = kAEAnnotationReadingLocationSignificantHighwaterMark;

      if (v20 < v21)
      {
        [(BKBookViewController *)self setReadingLocationHighwaterMark:readingProgress];
        [readingProgress floatValue];
        if (v22 > v21)
        {
          assetViewControllerDelegate2 = [(BKBookViewController *)self assetViewControllerDelegate];
          [assetViewControllerDelegate2 assetViewControllerSignificantReadingLocationChange:self];
        }
      }
    }

    if (!suspending)
    {
      [(BKBookViewController *)self updateProgressKitForNewLocation];
    }

    [(BKBookViewController *)self readingLocationChanged];
  }

  [(BKBookViewController *)self updateTouchBarController];
  displaySleepController = [(BKBookViewController *)self displaySleepController];
  [displaySleepController userInteractionOccurred];
}

- (void)setLocation:(id)location
{
  locationCopy = location;
  objc_storeStrong(&self->_location, location);
  v6 = _AEBookPluginsLifeCycleLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = v7;
    book = [(BKBookViewController *)self book];
    assetLogID = [book assetLogID];
    v11 = 138543874;
    v12 = v7;
    v13 = 2114;
    v14 = locationCopy;
    v15 = 2114;
    v16 = assetLogID;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "SetLocation BVC:%{public}@.  Location:%{public}@ logID:%{public}@ ", &v11, 0x20u);
  }
}

- (id)pageLocationForPageNumber:(int64_t)number
{
  paginationController = [(BKBookViewController *)self paginationController];
  v5 = [paginationController pageLocationForPageNumber:number];

  return v5;
}

- (BKLocation)resumeLocation
{
  resumeLocation = self->_resumeLocation;
  if (resumeLocation)
  {
    currentLocation = resumeLocation;
  }

  else
  {
    currentLocation = [(BKBookViewController *)self currentLocation];
  }

  return currentLocation;
}

- (void)saveReadingLocation:(id)location
{
  locationCopy = location;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  if (locationCopy)
  {
    book = [(BKBookViewController *)self book];
    if (book)
    {
      book2 = [(BKBookViewController *)self book];
      if ([book2 isDeleted])
      {
      }

      else
      {
        userNavigated = [(BKBookViewController *)self userNavigated];

        if (userNavigated)
        {
          book3 = [(BKBookViewController *)self book];
          readingLocation = [book3 readingLocation];

          reportedLocation = [(BKBookViewController *)self reportedLocation];
          if (!reportedLocation || (-[BKBookViewController reportedLocation](self, "reportedLocation"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [locationCopy isEqual:v11], v11, reportedLocation, (v12 & 1) == 0))
          {
            [(BKBookViewController *)self setReportedLocation:locationCopy];
            v13 = locationCopy;

            v14 = _AEBookPluginsLifeCycleLog();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
            {
              book4 = [(BKBookViewController *)self book];
              databaseKey = [book4 databaseKey];
              book5 = [(BKBookViewController *)self book];
              assetLogID = [book5 assetLogID];
              *buf = 138543874;
              v27 = v13;
              v28 = 2112;
              v29 = databaseKey;
              v30 = 2114;
              v31 = assetLogID;
              _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "Saving location into global annotation:%{public}@ assetID:%@ logID:%{public}@", buf, 0x20u);
            }

            objc_initWeak(buf, self);
            book6 = [(BKBookViewController *)self book];
            v20 = _NSConcreteStackBlock;
            v21 = 3221225472;
            v22 = sub_53150;
            v23 = &unk_1E3FC8;
            objc_copyWeak(&v25, buf);
            readingLocation = v13;
            v24 = readingLocation;
            [book6 setSingletonAnnotationType:3 location:readingLocation modificationHandler:&v20];

            objc_destroyWeak(&v25);
            objc_destroyWeak(buf);
          }

          [(BKBookViewController *)self setLocation:readingLocation, v20, v21, v22, v23];
        }
      }
    }
  }
}

- (id)_currentReadingProgress
{
  pageCountIncludingUpsell = [(BKBookViewController *)self pageCountIncludingUpsell];
  if (pageCountIncludingUpsell == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = 0;
  }

  else
  {
    v5 = pageCountIncludingUpsell;
    if (pageCountIncludingUpsell < 1)
    {
      v4 = &off_1F1870;
    }

    else
    {
      currentPages = [(BKBookViewController *)self currentPages];
      v4 = 0;
      if (currentPages != 0x7FFFFFFFFFFFFFFFLL && v6)
      {
        *&v8 = (currentPages + v6 - 1) / v5;
        v4 = [NSNumber numberWithFloat:v8];
      }
    }
  }

  return v4;
}

- (void)isLocationVisible:(id)visible completion:(id)completion
{
  v4 = objc_retainBlock(completion);
  if (v4)
  {
    v5 = v4;
    (*(v4 + 2))(v4, 0);
    v4 = v5;
  }
}

- (BOOL)isPageBookmarked
{
  visiblePageBookmarks = [(BKBookViewController *)self visiblePageBookmarks];
  v3 = [visiblePageBookmarks count] != 0;

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
    book = [(BKBookViewController *)self book];
    sampleContent = [book sampleContent];
    v3 = [sampleContent BOOLValue] ^ 1;
  }

  return v3;
}

- (id)_allAnnotationsForType:(int)type
{
  v5 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  fetchedObjects = [(NSFetchedResultsController *)self->_pageBookmarksFRC fetchedObjects];
  v7 = [fetchedObjects countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(fetchedObjects);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        if ([v11 annotationType] == type)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [fetchedObjects countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)_visibleAnnotationsForType:(int)type
{
  v5 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  fetchedObjects = [(NSFetchedResultsController *)self->_pageBookmarksFRC fetchedObjects];
  v7 = [fetchedObjects countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(fetchedObjects);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        v12 = objc_autoreleasePoolPush();
        if ([v11 annotationType] == type && -[BKBookViewController isAnnotationVisible:](self, "isAnnotationVisible:", v11))
        {
          [v5 addObject:v11];
        }

        objc_autoreleasePoolPop(v12);
      }

      v8 = [fetchedObjects countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  return v5;
}

- (BOOL)isAnnotationVisible:(id)visible
{
  visibleCopy = visible;
  v4 = [NSString stringWithFormat:@"%@: %s", @"Do not call method", "[BKBookViewController isAnnotationVisible:]"];
  v5 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v4 userInfo:0];
  v6 = v5;

  objc_exception_throw(v5);
}

- (void)bookmarkPage:(id)page
{
  v4 = [[BAViewData alloc] initWithType:2 action:5 location:2];
  v5 = +[BAEventReporter sharedReporter];
  ba_effectiveAnalyticsTracker = [(BKBookViewController *)self ba_effectiveAnalyticsTracker];
  v7 = [(BKBookViewController *)self contentDataForSearchViewController:0];
  [v5 emitAnnotationActionEventWithTracker:ba_effectiveAnalyticsTracker contentData:v7 viewData:v4];

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_53888;
  v8[3] = &unk_1E2BD0;
  v8[4] = self;
  [(BKViewController *)self dismissCurrentPopoverWithCompletion:v8];
}

- (void)unbookmarkPage:(id)page
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_53AFC;
  v3[3] = &unk_1E2BD0;
  v3[4] = self;
  [(BKViewController *)self dismissCurrentPopoverWithCompletion:v3];
}

- (void)toggleBookmark:(id)bookmark
{
  bookmarkCopy = bookmark;
  if ([(BKBookViewController *)self isPageBookmarked])
  {
    [(BKBookViewController *)self unbookmarkPage:bookmarkCopy];
  }

  else
  {
    [(BKBookViewController *)self bookmarkPage:bookmarkCopy];
  }

  [(BKBookViewController *)self updateBookmarkButton:1];
}

- (void)updateBookmarkButton:(BOOL)button
{
  [(BKBookViewController *)self updateToolbarController];

  [(BKBookViewController *)self updateTouchBarController];
}

- (id)bookmarksFetchRequestForBook:(id)book moc:(id)moc
{
  mocCopy = moc;
  bookCopy = book;
  v7 = objc_alloc_init(NSFetchRequest);
  assetID = [bookCopy assetID];
  v9 = [AEAnnotation pageBookmarksPredicate:assetID];

  assetID2 = [bookCopy assetID];
  v11 = [AEAnnotation predicateForGlobalAnnotationWithAssetID:assetID2];

  assetID3 = [bookCopy assetID];

  v13 = [AEAnnotation highlightsPredicate:assetID3];

  v14 = [NSCompoundPredicate alloc];
  v22[0] = v9;
  v22[1] = v11;
  v22[2] = v13;
  v15 = [NSArray arrayWithObjects:v22 count:3];
  v16 = [v14 initWithType:2 subpredicates:v15];

  [v7 setPredicate:v16];
  v17 = [NSEntityDescription entityForName:@"AEAnnotation" inManagedObjectContext:mocCopy];

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
    book = [(BKBookViewController *)self book];
    annotationProvider = [book annotationProvider];
    uiManagedObjectContext = [annotationProvider uiManagedObjectContext];

    v6 = [(BKBookViewController *)self bookmarksFetchRequestForBook:book moc:uiManagedObjectContext];
    v7 = [[IMUbiquitousFetchedResultsController alloc] initWithFetchRequest:v6 managedObjectContext:uiManagedObjectContext sectionNameKeyPath:0 cacheName:0];
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
      v65 = book;
      assetID = [book assetID];
      v14 = [AEAnnotation predicateForGlobalAnnotationWithAssetID:assetID];

      fetchedObjects = [(NSFetchedResultsController *)self->_pageBookmarksFRC fetchedObjects];
      v62 = v14;
      v16 = [fetchedObjects filteredArrayUsingPredicate:v14];

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
              locationModificationDate = [*(*(&v71 + 1) + 8 * i) locationModificationDate];
              [locationModificationDate timeIntervalSinceReferenceDate];
              v26 = v25;
              locationModificationDate2 = [v20 locationModificationDate];
              [locationModificationDate2 timeIntervalSinceReferenceDate];
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

      if ([uiManagedObjectContext hasChanges])
      {
        v66 = 0;
        [uiManagedObjectContext save:&v66];
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

      location = [v20 location];
      if (location && (v40 = location, [(BKBookViewController *)self openingLocation], v41 = objc_claimAutoreleasedReturnValue(), v41, v40, !v41))
      {
        v52 = _AEBookPluginsLifeCycleLog();
        book = v65;
        if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
        {
          location2 = [v20 location];
          book2 = [(BKBookViewController *)self book];
          databaseKey = [book2 databaseKey];
          book3 = [(BKBookViewController *)self book];
          assetLogID = [book3 assetLogID];
          *buf = 138543874;
          v77 = location2;
          v78 = 2112;
          v79 = databaseKey;
          v80 = 2114;
          v81 = assetLogID;
          _os_log_impl(&dword_0, v52, OS_LOG_TYPE_DEFAULT, "Restoring location from global annotation:%{public}@ for assetID:%@ logID:%{public}@", buf, 0x20u);
        }

        location3 = [v20 location];
        [(BKBookViewController *)self setLocation:location3];

        location4 = [(BKBookViewController *)self location];
        [(BKBookViewController *)self setReportedLocation:location4];

        [(BKBookViewController *)self setUserNavigated:0];
      }

      else
      {
        book = v65;
        if (!v20)
        {
          v42 = _AEBookPluginsLifeCycleLog();
          if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
          {
            book4 = [(BKBookViewController *)self book];
            databaseKey2 = [book4 databaseKey];
            book5 = [(BKBookViewController *)self book];
            assetLogID2 = [book5 assetLogID];
            *buf = 138412546;
            v77 = databaseKey2;
            v78 = 2114;
            v79 = assetLogID2;
            _os_log_impl(&dword_0, v42, OS_LOG_TYPE_DEFAULT, "%@ logID:%{public}@ No global annotation to restore from", buf, 0x16u);
          }
        }

        openingLocation = [(BKBookViewController *)self openingLocation];

        if (openingLocation)
        {
          v47 = _AEBookPluginsLifeCycleLog();
          if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
          {
            book6 = [(BKBookViewController *)self book];
            databaseKey3 = [book6 databaseKey];
            book7 = [(BKBookViewController *)self book];
            assetLogID3 = [book7 assetLogID];
            openingLocation2 = [(BKBookViewController *)self openingLocation];
            *buf = 138412802;
            v77 = databaseKey3;
            v78 = 2114;
            v79 = assetLogID3;
            v80 = 2112;
            v81 = openingLocation2;
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

- (void)_updateLocationFromAnnotation:(id)annotation
{
  annotationCopy = annotation;
  if (![(BKBookViewController *)self section])
  {
    openingLocation = [(BKBookViewController *)self openingLocation];

    if (openingLocation)
    {
      location2 = BKMobileCloudSyncAnnotationsLog();
      if (os_log_type_enabled(location2, OS_LOG_TYPE_DEFAULT))
      {
        annotationLocation = [annotationCopy annotationLocation];
        openingLocation2 = [(BKBookViewController *)self openingLocation];
        v22 = 138412546;
        v23 = annotationLocation;
        v24 = 2112;
        v25 = openingLocation2;
        _os_log_impl(&dword_0, location2, OS_LOG_TYPE_DEFAULT, "Ignoring updated global location %@ because we have an openingLocation location: %@", &v22, 0x16u);
      }

      goto LABEL_21;
    }

    if ([(BKBookViewController *)self shouldAcceptLocationUpdateFromGlobalAnnotation:annotationCopy])
    {
      savableLocation = [(BKBookViewController *)self savableLocation];
      v10 = [annotationCopy isLocationSame:savableLocation];

      if (v10)
      {
        location2 = BKMobileCloudSyncAnnotationsLog();
        if (os_log_type_enabled(location2, OS_LOG_TYPE_DEFAULT))
        {
          annotationLocation2 = [annotationCopy annotationLocation];
          v22 = 138543362;
          v23 = annotationLocation2;
          v12 = "_updateLocationFromAnnotation Ignoring updated location because it is the same as the current savable location %{public}@";
LABEL_14:
          _os_log_impl(&dword_0, location2, OS_LOG_TYPE_DEFAULT, v12, &v22, 0xCu);
          goto LABEL_15;
        }
      }

      else
      {
        location = [annotationCopy location];
        v15 = [(BKBookViewController *)self isLocationOnCurrentPage:location];

        location2 = BKMobileCloudSyncAnnotationsLog();
        v16 = os_log_type_enabled(location2, OS_LOG_TYPE_DEFAULT);
        if ((v15 & 1) == 0)
        {
          if (v16)
          {
            annotationLocation3 = [annotationCopy annotationLocation];
            v22 = 138543362;
            v23 = annotationLocation3;
            _os_log_impl(&dword_0, location2, OS_LOG_TYPE_DEFAULT, "_updateLocationFromAnnotation Jumping to location from annotation location: %{public}@", &v22, 0xCu);
          }

          v18 = _AEBookPluginsLifeCycleLog();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            book = [(BKBookViewController *)self book];
            assetLogID = [book assetLogID];
            annotationLocation4 = [annotationCopy annotationLocation];
            v22 = 138543618;
            v23 = assetLogID;
            v24 = 2114;
            v25 = annotationLocation4;
            _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "_updateLocationFromAnnotation logID:%{public}@ Jumping to location from annotation location: %{public}@", &v22, 0x16u);
          }

          location2 = [annotationCopy location];
          [(BKBookViewController *)self recordedJumpToLocation:location2 animated:1 completion:0];
          goto LABEL_21;
        }

        if (v16)
        {
          annotationLocation2 = [annotationCopy annotationLocation];
          v22 = 138543362;
          v23 = annotationLocation2;
          v12 = "_updateLocationFromAnnotation Ignoring updated location because it is already visible %{public}@";
          goto LABEL_14;
        }
      }
    }

    else
    {
      location2 = BKMobileCloudSyncAnnotationsLog();
      if (os_log_type_enabled(location2, OS_LOG_TYPE_DEFAULT))
      {
        annotationLocation5 = [annotationCopy annotationLocation];
        annotationLocation2 = [(BKBookViewController *)self savableLocation];
        v22 = 138412546;
        v23 = annotationLocation5;
        v24 = 2112;
        v25 = annotationLocation2;
        _os_log_impl(&dword_0, location2, OS_LOG_TYPE_DEFAULT, "Ignoring updated global location %@ because we have a newer local location: %@", &v22, 0x16u);

LABEL_15:
      }
    }

LABEL_21:
  }
}

- (void)controller:(id)controller didChangeObject:(id)object atIndexPath:(id)path forChangeType:(unint64_t)type newIndexPath:(id)indexPath
{
  controllerCopy = controller;
  objectCopy = object;
  pathCopy = path;
  indexPathCopy = indexPath;
  if (self->_pageBookmarksFRC == controllerCopy)
  {
    if (type == 1)
    {
      [(BKBookViewController *)self setAnnotationChangeRequiresPaginationUpdate:1];
    }

    v16 = objectCopy;
    annotationType = [v16 annotationType];
    if (annotationType == 1)
    {
      location = [v16 location];
      if (location)
      {
        v19[0] = _NSConcreteStackBlock;
        v19[1] = 3221225472;
        v19[2] = sub_54B48;
        v19[3] = &unk_1E2C20;
        v19[4] = self;
        [(BKBookViewController *)self isLocationOnVisiblePages:location completion:v19];
      }

      else
      {
        [(BKBookViewController *)self updateBookmarkButton:1];
      }
    }

    else if (annotationType == 3)
    {
      [(BKBookViewController *)self _updateLocationFromAnnotation:v16];
    }
  }
}

- (void)controllerDidChangeContent:(id)content
{
  if ([(BKBookViewController *)self annotationChangeRequiresPaginationUpdate])
  {
    [(BKBookViewController *)self setAnnotationChangeRequiresPaginationUpdate:0];
    [(BKBookViewController *)self paginationUpdateRequired];
  }

  [(BKBookViewController *)self writeAnnotationsToWebProcessPlugin];

  [(BKBookViewController *)self _notifyBookmarkObservers];
}

- (void)scrubberTouchDown:(id)down
{
  [(BKBookViewController *)self cancelPendingHidePageControls];
  currentPageNumber = [(BKBookViewController *)self currentPageNumber];

  [(BKBookViewController *)self setPageNumberBeforeScrubbing:currentPageNumber];
}

- (void)scrub:(id)scrub
{
  pageNumber = [scrub pageNumber];
  [(BKBookViewController *)self turnToPageNumber:pageNumber animated:1];
  [(BKBookViewController *)self emitScrubEventStartPosition:[(BKBookViewController *)self pageNumberBeforeScrubbing] endPosition:pageNumber totalLength:[(BKBookViewController *)self pageCountIncludingUpsell]];

  [(BKBookViewController *)self setPageNumberBeforeScrubbing:0x7FFFFFFFFFFFFFFFLL];
}

- (BOOL)touchBarWantsHistoryNav
{
  book = [(BKBookViewController *)self book];
  isFixedLayout = [book isFixedLayout];

  return isFixedLayout ^ 1;
}

- (int64_t)pageNumberForTouchBarPosition:(double)position
{
  pageCountIncludingUpsell = [(BKBookViewController *)self pageCountIncludingUpsell];
  result = 0x7FFFFFFFFFFFFFFFLL;
  if (pageCountIncludingUpsell && pageCountIncludingUpsell != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(BKBookViewController *)self pagePositionForTouchBarPosition:position];
    v8 = fmax(v7 * (pageCountIncludingUpsell - 1) + 1.0, 1.0);
    if (v8 >= pageCountIncludingUpsell)
    {
      return pageCountIncludingUpsell;
    }

    return v8;
  }

  return result;
}

- (double)touchBarPositionForPageNumber:(int64_t)number
{
  if (number == 0x7FFFFFFFFFFFFFFFLL)
  {
    return -1.0;
  }

  pageCountIncludingUpsell = [(BKBookViewController *)self pageCountIncludingUpsell];
  if (!pageCountIncludingUpsell || pageCountIncludingUpsell == 0x7FFFFFFFFFFFFFFFLL)
  {
    return -1.0;
  }

  v7 = fmin(fmax((number - 1) / (pageCountIncludingUpsell - 1), 0.0), 1.0);

  [(BKBookViewController *)self touchBarPositionForPagePosition:v7];
  return result;
}

- (double)pagePositionForTouchBarPosition:(double)position
{
  touchBarScrollerBookIsRightToLeft = [(BKBookViewController *)self touchBarScrollerBookIsRightToLeft];
  result = 1.0 - position;
  if (!touchBarScrollerBookIsRightToLeft)
  {
    return position;
  }

  return result;
}

- (void)touchBarHandleBackRequest:(id)request
{
  [(BKBookViewController *)self dismissCurrentPopover];
  navigationHistory = [(BKBookViewController *)self navigationHistory];
  previousEntity = [navigationHistory previousEntity];

  if (previousEntity)
  {

    [(BKBookViewController *)self jumpBackAnimated:1];
  }
}

- (void)touchBarHandleForwardRequest:(id)request
{
  [(BKBookViewController *)self dismissCurrentPopover];
  navigationHistory = [(BKBookViewController *)self navigationHistory];
  nextEntity = [navigationHistory nextEntity];

  if (nextEntity)
  {

    [(BKBookViewController *)self jumpAheadAnimated:1];
  }
}

- (void)touchBarHandleReadAloudRequest:(id)request
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

- (void)touchBarScrollerDidEnd:(double)end completion:(id)completion
{
  completionCopy = completion;
  [(BKBookViewController *)self turnToPageNumber:[(BKBookViewController *)self pageNumberForTouchBarPosition:end] animated:1];
  completionCopy[2](end);
}

- (void)touchBarScrollerDidIdle:(double)idle
{
  v4 = [(BKBookViewController *)self pageNumberForTouchBarPosition:idle];

  [(BKBookViewController *)self turnToPageNumber:v4 animated:1];
}

- (void)touchBarScrollerJumpToBookmark:(id)bookmark
{
  bookmarkCopy = bookmark;
  objc_opt_class();
  v7 = BUDynamicCast();

  v5 = v7;
  if (v7)
  {
    location = [v7 location];
    [(BKBookViewController *)self recordedJumpToLocation:location animated:1 completion:&stru_1E3FE8];

    v5 = v7;
  }
}

- (id)touchBarScrollerChapters
{
  book = [(BKBookViewController *)self book];
  chapters = [book chapters];
  allObjects = [chapters allObjects];

  return allObjects;
}

- (double)touchBarScrollerPositionForChapter:(id)chapter
{
  chapterCopy = chapter;
  objc_opt_class();
  v5 = BUDynamicCast();

  if (v5)
  {
    v6 = [(BKBookViewController *)self _locationForChapter:v5];
    paginationController = [(BKBookViewController *)self paginationController];
    v8 = [paginationController pageNumberForLocation:v6];
  }

  else
  {
    v8 = 0x7FFFFFFFFFFFFFFFLL;
  }

  [(BKBookViewController *)self touchBarPositionForPageNumber:v8];
  v10 = v9;

  return v10;
}

- (double)touchBarScrollerPositionForBookmark:(id)bookmark
{
  bookmarkCopy = bookmark;
  objc_opt_class();
  v5 = BUDynamicCast();

  if (v5)
  {
    paginationController = [(BKBookViewController *)self paginationController];
    v7 = [paginationController pageRangeForAnnotation:v5];
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

- (double)touchBarScrollerEndScrollPositionForPosition:(double)position
{
  v4 = [(BKBookViewController *)self pageNumberForTouchBarPosition:position];

  [(BKBookViewController *)self touchBarPositionForPageNumber:v4];
  return result;
}

- (id)touchBarScrollerAccessibilityLabelForChapter:(id)chapter
{
  chapterCopy = chapter;
  objc_opt_class();
  v4 = BUDynamicCast();

  if (v4)
  {
    v5 = AEBundle();
    v6 = [v5 localizedStringForKey:@"Chapter %1$lu value:%2$@" table:{&stru_1E7188, 0}];
    absoluteOrder = [v4 absoluteOrder];
    v8 = [absoluteOrder integerValue] + 1;
    name = [v4 name];
    v10 = [NSString localizedStringWithFormat:v6, v8, name];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)touchBarScrollerAccessibilityLabelForBookmark:(id)bookmark
{
  bookmarkCopy = bookmark;
  objc_opt_class();
  v4 = BUDynamicCast();

  accessibilityLabel = [v4 accessibilityLabel];

  return accessibilityLabel;
}

- (void)registerBookmarkObserver:(id)observer
{
  observerCopy = observer;
  bookmarkObservers = [(BKBookViewController *)self bookmarkObservers];
  [bookmarkObservers addObject:observerCopy];
}

- (void)unregisterBookmarkObserver:(id)observer
{
  observerCopy = observer;
  bookmarkObservers = [(BKBookViewController *)self bookmarkObservers];
  [bookmarkObservers removeObject:observerCopy];
}

- (unint64_t)numberOfBookmarks
{
  allBookmarkIdentifiers = [(BKBookViewController *)self allBookmarkIdentifiers];
  v3 = [allBookmarkIdentifiers count];

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

- (void)contentViewControllerAnnotationCacheDidChange:(id)change
{
  [(BKBookViewController *)self writeAnnotationsToWebProcessPlugin];

  [(BKBookViewController *)self _notifyBookmarkObservers];
}

- (void)contentViewController:(id)controller setEndOfBookToLocation:(id)location range:(id)range
{
  locationCopy = location;
  objc_opt_class();
  v14 = BUDynamicCast();

  cfiString = [v14 cfiString];
  if ([cfiString length])
  {
    book = [(BKBookViewController *)self book];
    [book setEndOfBookLocation:cfiString];

    book2 = [(BKBookViewController *)self book];
    [book2 setEndOfBookValidRange:0];

    if ([(NSManagedObjectContext *)self->_bookMoc hasChanges])
    {
      [(NSManagedObjectContext *)self->_bookMoc save:0];
    }

    experienceManager = [(BKBookViewController *)self experienceManager];

    if (experienceManager)
    {
      _createEndOfBookExperience = [(BKBookViewController *)self _createEndOfBookExperience];
      if (_createEndOfBookExperience)
      {
        experienceManager2 = [(BKBookViewController *)self experienceManager];
        [experienceManager2 removeExperienceOfType:0];

        experienceManager3 = [(BKBookViewController *)self experienceManager];
        [experienceManager3 addExperience:_createEndOfBookExperience];
      }
    }
  }
}

- (void)contentViewController:(id)controller goToLocation:(id)location
{
  locationCopy = location;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(BKBookViewController *)self recordedJumpToLocation:locationCopy animated:1 completion:0];
  }

  else
  {
    [(BKBookViewController *)self saveReadingLocation:locationCopy];
    [(BKBookViewController *)self turnToInitialPage:1];
  }
}

- (void)mediaPlaybackStarted:(id)started
{
  v4 = +[BCAudioMuxingCoordinator sharedInstance];
  [v4 notifyPlaybackWillStart:self];
}

- (void)setFinishedForAssetID:(id)d
{
  dCopy = d;
  assetViewControllerDelegate = [(BKBookViewController *)self assetViewControllerDelegate];
  if (objc_opt_respondsToSelector())
  {
    [assetViewControllerDelegate setFinishedForAssetID:dCopy];
  }
}

- (void)contentViewController:(id)controller setFinishedAndCloseForAssetID:(id)d
{
  dCopy = d;
  assetViewControllerDelegate = [(BKBookViewController *)self assetViewControllerDelegate];
  if (objc_opt_respondsToSelector())
  {
    [assetViewControllerDelegate assetViewController:self setFinishedAndCloseForAssetID:dCopy];
  }
}

- (BOOL)isTOCURL:(id)l
{
  bc_pathWithoutPrecedingSlash = [l bc_pathWithoutPrecedingSlash];
  stringByRemovingURLFragment = [bc_pathWithoutPrecedingSlash stringByRemovingURLFragment];
  book = [(BKBookViewController *)self book];
  tocPageHref = [book tocPageHref];
  v8 = [stringByRemovingURLFragment isEqual:tocPageHref];

  return v8;
}

- (id)documentForURL:(id)l
{
  bc_pathWithoutPrecedingSlash = [l bc_pathWithoutPrecedingSlash];
  stringByRemovingURLFragment = [bc_pathWithoutPrecedingSlash stringByRemovingURLFragment];
  book = [(BKBookViewController *)self book];
  v7 = [book documentAtPath:stringByRemovingURLFragment];

  return v7;
}

- (void)contentViewController:(id)controller goToURL:(id)l likelyUserInitiated:(BOOL)initiated
{
  initiatedCopy = initiated;
  lCopy = l;
  if ([(BKBookViewController *)self isTOCURL:?])
  {
    [(BKBookViewController *)self showTOC:self];
    goto LABEL_9;
  }

  v7 = [(BKBookViewController *)self documentForURL:lCopy];
  if (v7)
  {
    bc_pathWithoutPrecedingSlash = [lCopy bc_pathWithoutPrecedingSlash];
    stringByRemovingURLFragment = [bc_pathWithoutPrecedingSlash stringByRemovingURLFragment];
    fragment = [lCopy fragment];
    [(BKBookViewController *)self goToPath:stringByRemovingURLFragment fragment:fragment animated:+[UIView areAnimationsEnabled]];

LABEL_7:
    goto LABEL_8;
  }

  assetViewControllerDelegate = [(BKBookViewController *)self assetViewControllerDelegate];

  if (assetViewControllerDelegate)
  {
    bc_pathWithoutPrecedingSlash = [(BKBookViewController *)self assetViewControllerDelegate];
    [bc_pathWithoutPrecedingSlash assetViewController:self requestOpenURL:lCopy likelyUserInitiated:initiatedCopy];
    goto LABEL_7;
  }

LABEL_8:

LABEL_9:
}

- (void)contentViewReady:(id)ready
{
  readyCopy = ready;
  [(BKBookViewController *)self readAloudViewControllerReady:readyCopy];
  [(BKBookViewController *)self signalBookContentDidLoad:readyCopy];
  [readyCopy resume];
}

- (void)readAloudViewControllerReady:(id)ready
{
  readyCopy = ready;
  v16 = readyCopy;
  if (self->_isReading)
  {
    [(BKBookViewController *)self _markupDocumentElementForMediaOverlay:readyCopy];
    [(BKBookViewController *)self _installClickHandlers:v16];
    readyCopy = v16;
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

    readyCopy = v16;
    loadedPages = self->_loadedPages;
  }

  v8 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [readyCopy ordinal]);
  [(NSMutableArray *)loadedPages addObject:v8];

  currentPages = [(BKBookViewController *)self currentPages];
  if (v10)
  {
    v11 = v10;
    v12 = currentPages - 1;
    while (1)
    {
      v13 = [NSNumber numberWithInteger:v12];
      if (([(NSMutableArray *)self->_loadedPages containsObject:v13]& 1) == 0)
      {
        unsignedIntegerValue = [v13 unsignedIntegerValue];
        if (unsignedIntegerValue != [(BKBookViewController *)self upsellOrdinal])
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

  readyCopy = v16;
LABEL_14:
}

- (void)continueReadAloudAfterReady
{
  if (self->_isReading && ![(BKBookViewController *)self section])
  {
    currentPages = [(BKBookViewController *)self currentPages];
    [(BKBookViewController *)self readPages:currentPages from:v4 to:[(BKBookViewController *)self _itemIndexForCurrentPage] waitOnEmpty:-1, 1];
  }

  if (self->_isPlayingSoundTrack)
  {

    [(BKBookViewController *)self playCurrentSoundtrack];
  }
}

- (void)signalBookContentDidLoad:(id)load
{
  loadCopy = load;
  v5 = _AEBookOpenLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    contentOpenAnimator = [(BKBookViewController *)self contentOpenAnimator];
    v8 = 138412546;
    v9 = contentOpenAnimator;
    v10 = 2112;
    v11 = loadCopy;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "SignalBookContentDidLoad - animator: %@ content: %@", &v8, 0x16u);
  }

  contentOpenAnimator2 = [(BKBookViewController *)self contentOpenAnimator];
  [contentOpenAnimator2 bookContentDidLoad];

  [(BKBookViewController *)self setContentOpenAnimator:0];
}

- (void)contentViewController:(id)controller showAlertController:(id)alertController fromRect:(CGRect)rect animated:(BOOL)animated
{
  animatedCopy = animated;
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  controllerCopy = controller;
  alertControllerCopy = alertController;
  if (![alertControllerCopy preferredStyle])
  {
    view = [(BKBookViewController *)self view];
    view2 = [controllerCopy view];
    [view convertRect:view2 fromView:{x, y, width, height}];
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;

    popoverPresentationController = [alertControllerCopy popoverPresentationController];
    [popoverPresentationController setPermittedArrowDirections:15];
    view3 = [(BKBookViewController *)self view];
    [popoverPresentationController setSourceView:view3];

    [popoverPresentationController setSourceRect:{v17, v19, v21, v23}];
  }

  [(BKBookViewController *)self presentViewController:alertControllerCopy animated:animatedCopy completion:0];
}

- (void)contentViewController:(id)controller stopMediaPlay:(id)play
{
  playCopy = play;
  v12 = 0;
  v13 = 0;
  v6 = [(BKBookViewController *)self _currentChapterInfo:&v13 uniqueID:&v12];
  v7 = v13;
  v8 = v12;
  if (v6)
  {
    v9 = +[BCProgressKitController sharedController];
    book = [(BKBookViewController *)self book];
    assetID = [book assetID];
    [v9 updateMediaForBook:assetID chapter:v8 mediaCFI:playCopy progress:&off_1F1870 completion:0];
  }
}

- (void)contentViewController:(id)controller presentAlertController:(id)alertController completion:(id)completion
{
  completionCopy = completion;
  alertControllerCopy = alertController;
  book = [(BKBookViewController *)self book];
  bookTitle = [book bookTitle];
  [alertControllerCopy setTitle:bookTitle];

  [(BKBookViewController *)self presentViewController:alertControllerCopy animated:+[UIView completion:"areAnimationsEnabled"], completionCopy];
}

- (void)contentViewController:(id)controller showTranslateForText:(id)text fromView:(id)view onClose:(id)close
{
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_563EC;
  v11[3] = &unk_1E38C0;
  selfCopy = self;
  textCopy = text;
  viewCopy = view;
  closeCopy = close;
  v8 = viewCopy;
  v9 = closeCopy;
  v10 = textCopy;
  [(BKBookViewController *)selfCopy dismissCurrentPopoverWithCompletion:v11 animated:0];
}

- (void)contentViewController:(id)controller setSearchString:(id)string
{
  v5 = [(BKBookViewController *)self searchModuleWithSearchString:string];
  searchController = [v5 searchController];
  [searchController cancelSearch];
}

- (void)contentViewController:(id)controller expandAnnotation:(id)annotation location:(id)location selectedText:(id)text representativeText:(id)representativeText
{
  representativeTextCopy = representativeText;
  textCopy = text;
  locationCopy = location;
  annotationCopy = annotation;
  -[BKBookViewController _emitAnnotationActionEventIfNeededForAnnotationType:](self, "_emitAnnotationActionEventIfNeededForAnnotationType:", [annotationCopy annotationType]);
  [(BKBookViewController *)self expandAnnotation:annotationCopy location:locationCopy selectedText:textCopy representativeText:representativeTextCopy];
}

- (id)contentViewController:(id)controller addAnnotation:(int)annotation location:(id)location selectedText:(id)text representativeText:(id)representativeText
{
  v9 = *&annotation;
  representativeTextCopy = representativeText;
  textCopy = text;
  locationCopy = location;
  [(BKBookViewController *)self _emitAnnotationActionEventIfNeededForAnnotationType:v9];
  v14 = [(BKBookViewController *)self addAnnotation:v9 location:locationCopy selectedText:textCopy representativeText:representativeTextCopy];

  return v14;
}

- (void)_emitAnnotationActionEventIfNeededForAnnotationType:(int)type
{
  if (type == 2)
  {
    v8 = [[BAViewData alloc] initWithType:4 action:5 location:2];
    v5 = +[BAEventReporter sharedReporter];
    ba_effectiveAnalyticsTracker = [(BKBookViewController *)self ba_effectiveAnalyticsTracker];
    v7 = [(BKBookViewController *)self contentDataForSearchViewController:0];
    [v5 emitAnnotationActionEventWithTracker:ba_effectiveAnalyticsTracker contentData:v7 viewData:v8];
  }
}

- (id)_searchQueryFromSender:(id)sender
{
  senderCopy = sender;
  objc_opt_class();
  appIntentsSearchQuery = BUDynamicCast();
  if (!appIntentsSearchQuery)
  {
    v5 = BUProtocolCast();
    appIntentsSearchQuery = [v5 appIntentsSearchQuery];
  }

  return appIntentsSearchQuery;
}

- (BCAppIntentsAssetViewControllerInfo)appIntentsInfo
{
  v3 = objc_opt_new();
  [v3 setSupportsTheming:0];
  asset = [(BKBookViewController *)self asset];
  assetID = [asset assetID];
  [v3 setAssetID:assetID];

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

  expandedContentViewController = [(BKBookViewController *)self expandedContentViewController];
  isVisible = [expandedContentViewController isVisible];

  if (isVisible)
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
  themePage = [(BKBookViewController *)self themePage];
  userInterfaceStyle = [themePage userInterfaceStyle];

  if (!userInterfaceStyle)
  {
    viewIfLoaded = [(BKBookViewController *)self viewIfLoaded];
    window = [viewIfLoaded window];

    traitCollection = [window traitCollection];
    userInterfaceStyle = [traitCollection userInterfaceStyle];
  }

  return userInterfaceStyle == &dword_0 + 2;
}

- (id)bookToolbarThemeID
{
  theme = [(BKBookViewController *)self theme];
  themeIdentifier = [theme themeIdentifier];

  return themeIdentifier;
}

- (BOOL)shouldDisplayShareControls
{
  book = [(BKBookViewController *)self book];
  isStoreBook = [book isStoreBook];

  return isStoreBook;
}

- (BOOL)shouldDisplayBuyButton
{
  book = [(BKBookViewController *)self book];
  sampleContent = [book sampleContent];
  bOOLValue = [sampleContent BOOLValue];

  return bOOLValue;
}

- (id)itemProvidersForSharing
{
  storeShortURL = [(BKBookViewController *)self storeShortURL];
  if (storeShortURL && (v3 = [[NSItemProvider alloc] initWithContentsOfURL:storeShortURL]) != 0)
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
  theme = [(BKBookViewController *)self theme];
  headerTextColorDimmed = [theme headerTextColorDimmed];

  return headerTextColorDimmed;
}

- (id)titleColor
{
  theme = [(BKBookViewController *)self theme];
  toolbarTitleColor = [theme toolbarTitleColor];

  return toolbarTitleColor;
}

- (id)chapterColor
{
  theme = [(BKBookViewController *)self theme];
  headerTextColorDimmed = [theme headerTextColorDimmed];

  return headerTextColorDimmed;
}

- (id)tintColorForNavbarButtons
{
  theme = [(BKBookViewController *)self theme];
  tintColorForNavbarButtons = [theme tintColorForNavbarButtons];

  return tintColorForNavbarButtons;
}

- (id)buttonColor
{
  themePage = [(BKBookViewController *)self themePage];
  buttonColor = [themePage buttonColor];

  return buttonColor;
}

- (id)profileFuture
{
  assetViewControllerDelegate = [(BKBookViewController *)self assetViewControllerDelegate];
  v4 = [assetViewControllerDelegate assetViewControllerProductProfileProtocol:self];

  return v4;
}

- (BOOL)isPreordered
{
  book = [(BKBookViewController *)self book];
  isPreorder = [book isPreorder];
  bOOLValue = [isPreorder BOOLValue];

  return bOOLValue;
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

- (void)popoverDidClose:(id)close fromToolbar:(id)toolbar
{
  closeCopy = close;
  brightnessController = [(BKBookViewController *)self brightnessController];

  if (brightnessController == closeCopy || (-[BKBookViewController audioController](self, "audioController"), v6 = objc_claimAutoreleasedReturnValue(), [v6 navigationController], v7 = objc_claimAutoreleasedReturnValue(), v7, v6, v8 = closeCopy, v7 == closeCopy))
  {
    [(BKBookViewController *)self cleanupPopovers];
  }

  else
  {
    if (self->_appearanceContainerViewController != closeCopy)
    {
      goto LABEL_7;
    }

    [(BKBookViewController *)self handleAppearanceViewControllerDismissal];
  }

  v8 = closeCopy;
LABEL_7:
}

- (void)showOverlayViewController:(id)controller fromView:(id)view popoverOnPhone:(BOOL)phone popoverBackgroundColor:(id)color
{
  phoneCopy = phone;
  colorCopy = color;
  viewCopy = view;
  controllerCopy = controller;
  [(BKBookViewController *)self cancelPendingHidePageControls];
  [(BKViewController *)self showOverlayViewController:controllerCopy fromItem:viewCopy popoverOnPhone:phoneCopy passthroughViews:&__NSArray0__struct popoverBackgroundColor:colorCopy];
}

- (void)setExpandedContentViewController:(id)controller
{
  controllerCopy = controller;
  expandedContentViewController = self->_expandedContentViewController;
  if (expandedContentViewController != controllerCopy)
  {
    v8 = controllerCopy;
    delegate = [(BKExpandedContentViewController *)expandedContentViewController delegate];

    if (delegate == self)
    {
      [(BKExpandedContentViewController *)self->_expandedContentViewController setDelegate:0];
    }

    objc_storeStrong(&self->_expandedContentViewController, controller);
    expandedContentViewController = [(BKBookViewController *)self updateToolbarController];
    controllerCopy = v8;
  }

  _objc_release_x1(expandedContentViewController, controllerCopy);
}

- (void)_showExpandedContentForResource:(id)resource atLocation:(id)location presentingFromTOC:(BOOL)c completion:(id)completion
{
  cCopy = c;
  resourceCopy = resource;
  locationCopy = location;
  completionCopy = completion;
  expandedContentViewController = [(BKBookViewController *)self expandedContentViewController];
  [expandedContentViewController close:0];

  if (!cCopy)
  {
    currentLocation = [(BKBookViewController *)self currentLocation];
    [(BKBookViewController *)self setResumeLocation:currentLocation];
  }

  sourceURL = [resourceCopy sourceURL];
  v16 = BEDoesURLPointToUSDZFile();

  if (v16)
  {
    v17 = objc_alloc_init(BKARQuicklookViewController);
    sourceURL2 = [resourceCopy sourceURL];
    [(BKARQuicklookViewController *)v17 setARModelDataURL:sourceURL2];

    [(BKARQuicklookViewController *)v17 setDataSource:v17];
    [(BKBookViewController *)self presentViewController:v17 animated:1 completion:0];
  }

  else
  {
    v17 = [BKExpandedContentViewController expandedContentControllerForResource:resourceCopy];
    theme = [(BKBookViewController *)self theme];
    [(BKARQuicklookViewController *)v17 setTheme:theme];

    [(BKARQuicklookViewController *)v17 setDelegate:self];
    objc_opt_class();
    v20 = BUDynamicCast();
    if (v20)
    {
      book = [(BKBookViewController *)self book];
      [v20 setAllowsRemoteInspection:{objc_msgSend(book, "shouldAllowRemoteInspection")}];
    }

    [(BKBookViewController *)self setExpandedContentViewController:v17];
    [(BKARQuicklookViewController *)v17 setPresentingFromTOC:cCopy];
    objc_initWeak(&location, self);
    v22 = +[UIView areAnimationsEnabled];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_57534;
    v23[3] = &unk_1E4010;
    objc_copyWeak(&v25, &location);
    v24 = completionCopy;
    [(BKBookViewController *)self presentViewController:v17 animated:v22 completion:v23];

    objc_destroyWeak(&v25);
    objc_destroyWeak(&location);
  }
}

- (CGRect)frameForLocation:(id)location inView:(id)view expandedContentViewController:(id)controller
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

- (void)expandedContentViewController:(id)controller handleUserRequestForFrameToLoadExternalURL:(id)l completion:(id)completion
{
  if (self->_expandedContentViewController == controller)
  {

    [(BKBookViewController *)self _promptToLoadExternalContent:completion, l];
  }

  else
  {
    sub_137934();
  }
}

- (void)expandedContentViewController:(id)controller handleExternalLoadRequest:(id)request likelyUserInitiated:(BOOL)initiated
{
  if (self->_expandedContentViewController == controller)
  {

    [(BKBookViewController *)self _handleExternalLoadRequest:request likelyUserInitiated:initiated];
  }

  else
  {
    sub_137970();
  }
}

- (BOOL)expandedContentViewController:(id)controller handleInternalLoadRequest:(id)request
{
  if (self->_expandedContentViewController == controller)
  {

    return [BKBookViewController _controller:"_controller:handleInternalRequestForURL:" handleInternalRequestForURL:?];
  }

  else
  {
    sub_1379AC();
    return 0;
  }
}

- (void)expandedContentViewController:(id)controller handleInternalLoadRequestForNewWindow:(id)window
{
  if (self->_expandedContentViewController == controller)
  {

    [BKBookViewController _controller:"_controller:handleInternalRequestForURL:" handleInternalRequestForURL:?];
  }

  else
  {
    sub_1379E8();
  }
}

- (void)expandedContentViewDidDisappear:(id)disappear
{
  disappearCopy = disappear;
  if (self->_expandedContentViewController == disappearCopy)
  {
    searchResult = [(BKBookViewController *)self searchResult];
    [(BKBookViewController *)self clearSelection];
    [(BKBookViewController *)self setExpandedContentViewController:0];
    if (![(BKExpandedContentViewController *)disappearCopy presentingFromTOC])
    {
      [(BKBookViewController *)self setResumeLocation:0];
    }

    if (searchResult)
    {
      [(BKBookViewController *)self highlightSearchResult:searchResult];
    }
  }

  else
  {
    sub_137A24();
  }
}

- (BOOL)expandedContentView:(id)view shouldStartLoadWithRequest:(id)request
{
  viewCopy = view;
  if (self->_expandedContentViewController != viewCopy)
  {
    sub_137A60();
    LOBYTE(self) = 0;
    goto LABEL_14;
  }

  v7 = [request URL];
  if (BEURLHandlerSchemeIsOkForBookToLoad())
  {
    bc_pathWithoutPrecedingSlash = [v7 bc_pathWithoutPrecedingSlash];
    stringByRemovingURLFragment = [bc_pathWithoutPrecedingSlash stringByRemovingURLFragment];
    book = [(BKBookViewController *)self book];
    v11 = [book documentAtPath:stringByRemovingURLFragment];

    documentOrdinal = [v11 documentOrdinal];
    if ([documentOrdinal integerValue] == -1)
    {
      LOBYTE(self) = 1;
    }

    else
    {
      nonlinearElement = [v11 nonlinearElement];
      bOOLValue = [nonlinearElement BOOLValue];

      if (bOOLValue)
      {
        LOBYTE(self) = 1;
LABEL_12:

        goto LABEL_13;
      }

      if (bc_pathWithoutPrecedingSlash)
      {
        documentOrdinal = [v7 fragment];
        [(BKExpandedContentViewController *)viewCopy close:1];
        [(BKBookViewController *)self goToPath:bc_pathWithoutPrecedingSlash fragment:documentOrdinal animated:1];
        LOBYTE(self) = 0;
      }

      else
      {
        documentOrdinal = [(BKBookViewController *)self assetViewControllerDelegate];
        LODWORD(self) = [documentOrdinal assetViewController:self requestOpenURL:v7 likelyUserInitiated:0] ^ 1;
      }
    }

    goto LABEL_12;
  }

  bc_pathWithoutPrecedingSlash = [(BKBookViewController *)self assetViewControllerDelegate];
  [bc_pathWithoutPrecedingSlash assetViewController:self requestOpenURL:v7 likelyUserInitiated:0];
  LOBYTE(self) = 0;
LABEL_13:

LABEL_14:
  return self;
}

- (void)expandedContentViewController:(id)controller presentAlertController:(id)alertController completion:(id)completion
{
  alertControllerCopy = alertController;
  completionCopy = completion;
  if (self->_expandedContentViewController == controller)
  {
    book = [(BKBookViewController *)self book];
    bookTitle = [book bookTitle];
    [alertControllerCopy setTitle:bookTitle];

    [(BKBookViewController *)self presentViewController:alertControllerCopy animated:+[UIView completion:"areAnimationsEnabled"], completionCopy];
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
    book = [(BKBookViewController *)self book];
    wantsJumpBackHistory = [book wantsJumpBackHistory];

    if (wantsJumpBackHistory)
    {
      v5 = objc_alloc_init(BKNavigationHistory);
      navigationHistory = self->_navigationHistory;
      self->_navigationHistory = v5;
    }
  }

  v7 = self->_navigationHistory;

  return v7;
}

- (void)fixupNavigationHistoryForUpsellPageNumber:(int64_t)number
{
  upsellOrdinal = [(BKBookViewController *)self upsellOrdinal];
  if (upsellOrdinal != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = upsellOrdinal;
    paginationController = [(BKBookViewController *)self paginationController];
    currentLookupKey = [paginationController currentLookupKey];

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    navigationHistory = [(BKBookViewController *)self navigationHistory];
    allObjects = [navigationHistory allObjects];

    v11 = [allObjects countByEnumeratingWithState:&v18 objects:v22 count:16];
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
            objc_enumerationMutation(allObjects);
          }

          v15 = *(*(&v18 + 1) + 8 * i);
          location = [v15 location];
          ordinal = [location ordinal];

          if (ordinal == v6)
          {
            [v15 setPage:number forLookupKey:currentLookupKey];
          }
        }

        v12 = [allObjects countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v12);
    }
  }
}

- (void)setPaginationController:(id)controller
{
  controllerCopy = controller;
  paginationController = self->_paginationController;
  v10 = controllerCopy;
  if (paginationController != controllerCopy)
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
    objc_storeStrong(&self->_paginationController, controller);
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

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if ([pathCopy isEqualToString:@"progress"])
  {
    [(BKPaginationController *)self->_paginationController progress];
    [(BKBookViewController *)self updatePaginationProgress:?];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = BKBookViewController;
    [(BKBookViewController *)&v13 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
  }
}

- (BOOL)needTextNodeCharacterCountsForOrdinal:(int64_t)ordinal
{
  assetViewControllerDelegate = [(BKBookViewController *)self assetViewControllerDelegate];
  LOBYTE(ordinal) = [assetViewControllerDelegate needTextNodeCharacterCountsForOrdinal:ordinal];

  return ordinal;
}

- (void)addTextNodeCharacterCounts:(id)counts ordinal:(int64_t)ordinal completion:(id)completion
{
  completionCopy = completion;
  countsCopy = counts;
  assetViewControllerDelegate = [(BKBookViewController *)self assetViewControllerDelegate];
  [assetViewControllerDelegate addTextNodeCharacterCounts:countsCopy ordinal:ordinal completion:completionCopy];
}

- (BOOL)needTOCEntriesForOrdinal:(int64_t)ordinal
{
  assetViewControllerDelegate = [(BKBookViewController *)self assetViewControllerDelegate];
  LOBYTE(ordinal) = [assetViewControllerDelegate needTOCEntriesForOrdinal:ordinal];

  return ordinal;
}

- (void)addTOCEntries:(id)entries ordinal:(int64_t)ordinal completion:(id)completion
{
  completionCopy = completion;
  entriesCopy = entries;
  assetViewControllerDelegate = [(BKBookViewController *)self assetViewControllerDelegate];
  [assetViewControllerDelegate addTOCEntries:entriesCopy ordinal:ordinal completion:completionCopy];
}

- (id)searchViewController
{
  searchViewController = self->_searchViewController;
  if (!searchViewController)
  {
    v4 = objc_alloc_init(BKSearchViewController);
    v5 = self->_searchViewController;
    self->_searchViewController = v4;

    book = [(BKBookViewController *)self book];
    -[BKSearchViewController setContentType:](self->_searchViewController, "setContentType:", [book contentType]);

    theme = [(BKBookViewController *)self theme];
    [(BKSearchViewController *)self->_searchViewController setTheme:theme];

    [(BKSearchViewController *)self->_searchViewController setSearchDelegate:self];
    [(BKSearchViewController *)self->_searchViewController setPaginationController:self->_paginationController];
    searchViewController = self->_searchViewController;
  }

  return searchViewController;
}

- (void)showSearchWithString:(id)string sender:(id)sender
{
  stringCopy = string;
  senderCopy = sender;
  v8 = [(BKBookViewController *)self searchModuleWithSearchString:stringCopy];
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
  viewIfLoaded = [(BKBookViewController *)self viewIfLoaded];
  window = [viewIfLoaded window];

  if (!window)
  {
    v4 = +[UIViewController bc_presentingViewController];
    view = [v4 view];

    viewIfLoaded = view;
  }

  return viewIfLoaded;
}

- (id)searchModuleWithSearchString:(id)string
{
  stringCopy = string;
  searchStringLengthLimit = [(BKBookViewController *)self searchStringLengthLimit];
  if ([stringCopy length] > searchStringLengthLimit)
  {
    v6 = [stringCopy substringToIndex:searchStringLengthLimit];

    stringCopy = v6;
  }

  searchViewController = [(BKBookViewController *)self searchViewController];
  book = [(BKBookViewController *)self book];
  searchController = [searchViewController searchController];
  [searchController setSearchBook:book];

  [searchViewController setSearchString:stringCopy];

  return searchViewController;
}

- (void)searchViewControllerWillAppear:(id)appear
{
  [(BKBookViewController *)self pauseReadAloud];

  +[IMSleepManager stopSleepTimer];
}

- (void)searchViewControllerDidDisappear:(id)disappear
{
  [(BKBookViewController *)self resumeReadAloud];

  +[IMSleepManager startSleepTimer];
}

- (void)revealSearchResult:(id)result animated:(BOOL)animated
{
  resultCopy = result;
  v7 = resultCopy;
  if (resultCopy)
  {
    location = [resultCopy location];
    objc_initWeak(&location, self);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_58530;
    v10[3] = &unk_1E4060;
    objc_copyWeak(&v13, &location);
    v9 = location;
    v11 = v9;
    animatedCopy = animated;
    v12 = v7;
    [(BKBookViewController *)self isLocationVisible:v9 completion:v10];

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }
}

- (void)searchViewController:(id)controller revealSearchResult:(id)result animated:(BOOL)animated
{
  [(BKBookViewController *)self revealSearchResult:result animated:animated];

  [(BKBookViewController *)self _dismissSearchViewController];
}

- (void)searchViewController:(id)controller turnToPageNumber:(int64_t)number animated:(BOOL)animated
{
  [(BKBookViewController *)self turnToPageNumber:number animated:animated];

  [(BKBookViewController *)self _dismissSearchViewController];
}

- (void)searchViewController:(id)controller turnToLocation:(id)location animated:(BOOL)animated
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_58960;
  v5[3] = &unk_1E2BD0;
  v5[4] = self;
  [(BKBookViewController *)self recordedJumpToLocation:location animated:animated completion:v5];
}

- (int64_t)searchViewController:(id)controller pageNumberForDocumentOrdinal:(int64_t)ordinal
{
  controllerCopy = controller;
  paginationController = [controllerCopy paginationController];

  if (paginationController)
  {
    paginationController2 = [controllerCopy paginationController];
    v8 = [paginationController2 pageNumberForDocumentOrdinal:ordinal];
  }

  else
  {
    v8 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v8;
}

- (id)searchViewController:(id)controller chapterNameForSearchResult:(id)result pageNumber:(int64_t)number
{
  if (number == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = 0;
  }

  else
  {
    paginationController = [controller paginationController];
    v5 = [paginationController titleForChapterAtPageNumber:number];
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
    ba_effectiveAnalyticsTracker = [(BKBookViewController *)self ba_effectiveAnalyticsTracker];
    v7 = [(BKBookViewController *)self readingSessionDataForSearchViewController:0];
    v8 = [(BKBookViewController *)self contentDataForSearchViewController:0];
    [v5 emitReadingOrientationChangeEventWithTracker:ba_effectiveAnalyticsTracker readingSessionData:v7 contentData:v8];

    [(BKBookViewController *)self setLastAnalyticsDeviceOrientationReported:v4];
  }
}

- (id)readingSessionDataForSearchViewController:(id)controller
{
  _currentReadingProgress = [(BKBookViewController *)self _currentReadingProgress];
  book = [(BKBookViewController *)self book];
  sampleContent = [book sampleContent];
  bOOLValue = [sampleContent BOOLValue];

  v8 = [BAReadingSessionData alloc];
  analyticsReadStartProgress = [(BKBookViewController *)self analyticsReadStartProgress];
  v10 = [NSNumber numberWithBool:bOOLValue];
  v11 = [v8 initWithPercentCompletionStart:analyticsReadStartProgress percentCompletionEnd:_currentReadingProgress isFreeSample:v10 deviceOrientation:{-[BKBookViewController lastAnalyticsDeviceOrientationReported](self, "lastAnalyticsDeviceOrientationReported")}];

  return v11;
}

- (id)contentDataForSearchViewController:(id)controller
{
  ba_effectiveAnalyticsTracker = [(BKBookViewController *)self ba_effectiveAnalyticsTracker];
  assetViewControllerDelegate = [(BKBookViewController *)self assetViewControllerDelegate];
  contentSubType = [(BKBookViewController *)self contentSubType];
  v7 = [assetViewControllerDelegate analyticsContentDataForAssetViewController:self contentSubType:contentSubType tracker:ba_effectiveAnalyticsTracker];

  if (!v7)
  {
    book = [(BKBookViewController *)self book];
    assetID = [book assetID];

    v10 = BCCurrentBookLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      assetViewControllerDelegate2 = [(BKBookViewController *)self assetViewControllerDelegate];
      *buf = 138412802;
      v21 = assetID;
      v22 = 2112;
      v23 = assetViewControllerDelegate2;
      v24 = 2112;
      v25 = ba_effectiveAnalyticsTracker;
      _os_log_fault_impl(&dword_0, v10, OS_LOG_TYPE_FAULT, "Failed to create ContentData for asset %@ from assetViewControllerDelegate %@. Creating a fallback with tracker %@.", buf, 0x20u);
    }

    v11 = [BAUtilities contentTypeFromAssetType:0];
    v12 = [ba_effectiveAnalyticsTracker contentPrivateIDForContentID:assetID];
    v13 = [ba_effectiveAnalyticsTracker contentUserIDForContentID:assetID];
    v14 = +[BAEventReporter sharedReporter];
    v15 = [v14 seriesTypeForContentID:assetID];

    v16 = [BAContentData alloc];
    contentSubType2 = [(BKBookViewController *)self contentSubType];
    v7 = [v16 initWithContentID:assetID contentType:v11 contentPrivateID:v12 contentUserID:v13 contentAcquisitionType:0 contentSubType:contentSubType2 contentLength:0 supplementalContentCount:0 seriesType:v15 productionType:0 isUnified:0 contentKind:0];
  }

  return v7;
}

- (void)p_releaseDictionary
{
  [(BCDDParsecCollectionViewController *)self->_referenceLibraryViewController setDelegate:0];
  referenceLibraryViewController = self->_referenceLibraryViewController;
  self->_referenceLibraryViewController = 0;
}

- (void)showLookupForString:(id)string fromView:(id)view onClose:(id)close
{
  stringCopy = string;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_58FAC;
  v12[3] = &unk_1E40B0;
  viewCopy = view;
  selfCopy = self;
  v15 = stringCopy;
  closeCopy = close;
  v9 = closeCopy;
  v10 = stringCopy;
  v11 = viewCopy;
  [(BKBookViewController *)self dismissCurrentPopoverWithCompletion:v12 animated:0];
}

- (void)dismissCurrentPopoverWithCompletion:(id)completion animated:(BOOL)animated
{
  animatedCopy = animated;
  completionCopy = completion;
  referenceLibraryViewController = [(BKBookViewController *)self referenceLibraryViewController];

  if (referenceLibraryViewController)
  {
    referenceLibraryViewController2 = [(BKBookViewController *)self referenceLibraryViewController];
    [referenceLibraryViewController2 dismissViewControllerAnimated:0 completion:0];

    [(BKBookViewController *)self p_releaseDictionary];
  }

  translationViewController = [(BKBookViewController *)self translationViewController];

  if (translationViewController)
  {
    translationViewController2 = [(BKBookViewController *)self translationViewController];
    [translationViewController2 dismissViewControllerAnimated:0 completion:0];

    [(BKBookViewController *)self setTranslationViewController:0];
  }

  v11.receiver = self;
  v11.super_class = BKBookViewController;
  [(BKViewController *)&v11 dismissCurrentPopoverWithCompletion:completionCopy animated:animatedCopy];
}

- (void)presentationControllerDidDismiss:(id)dismiss
{
  dismissCopy = dismiss;
  presentedViewController = [dismissCopy presentedViewController];
  activityViewController = self->_activityViewController;

  if (presentedViewController == activityViewController)
  {
    [(BKBookViewController *)self setActivityViewController:0];
  }

  else
  {
    presentedViewController2 = [dismissCopy presentedViewController];
    referenceLibraryViewController = [(BKBookViewController *)self referenceLibraryViewController];

    if (presentedViewController2 == referenceLibraryViewController)
    {
      [(BKBookViewController *)self clearSelection];
      [(BKBookViewController *)self p_releaseDictionary];
    }

    else
    {
      presentedViewController3 = [dismissCopy presentedViewController];
      translationViewController = [(BKBookViewController *)self translationViewController];

      if (presentedViewController3 == translationViewController)
      {
        [(BKBookViewController *)self clearSelection];
        [(BKBookViewController *)self setTranslationViewController:0];
      }

      else
      {
        presentedViewController4 = [dismissCopy presentedViewController];
        brightnessController = [(BKBookViewController *)self brightnessController];

        if (presentedViewController4 == brightnessController || ([dismissCopy presentedViewController], v13 = objc_claimAutoreleasedReturnValue(), -[BKBookViewController audioController](self, "audioController"), v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "navigationController"), v15 = objc_claimAutoreleasedReturnValue(), v15, v14, v13, v13 == v15))
        {
          [(BKBookViewController *)self cleanupPopovers];
        }

        else if (self->_appearanceContainerViewController)
        {
          presentedViewController5 = [dismissCopy presentedViewController];
          appearanceContainerViewController = self->_appearanceContainerViewController;

          if (presentedViewController5 == appearanceContainerViewController)
          {
            [(BKBookViewController *)self handleAppearanceViewControllerDismissal];
          }
        }
      }
    }
  }

  v18.receiver = self;
  v18.super_class = BKBookViewController;
  [(BKViewController *)&v18 presentationControllerDidDismiss:dismissCopy];
}

- (id)_footnoteViewController2ForResource:(id)resource stylesheetSet:(id)set
{
  setCopy = set;
  resourceCopy = resource;
  v8 = [[BKFootnoteViewController2 alloc] initWithResource:resourceCopy stylesheetSet:setCopy backgroundColor:0 textColor:0];

  [(BKFootnoteViewController2 *)v8 setAllowsRemoteInspection:[(AEBookInfo *)self->_book shouldAllowRemoteInspection]];
  theme = [(BKBookViewController *)self theme];
  [(BKFootnoteViewController2 *)v8 setTheme:theme];

  objc_storeStrong(&self->_footnoteController, v8);

  return v8;
}

- (void)showFootnoteInContentViewController:(id)controller resource:(id)resource fromView:(id)view stylesheetSet:(id)set
{
  viewCopy = view;
  setCopy = set;
  resourceCopy = resource;
  [(BKBookViewController *)self dismissCurrentPopover];
  [(BKBookViewController *)self _cleanupFootnoteViewController];
  footnoteSourceView = self->_footnoteSourceView;
  self->_footnoteSourceView = viewCopy;
  v15 = viewCopy;

  v13 = [(BKBookViewController *)self _footnoteViewController2ForResource:resourceCopy stylesheetSet:setCopy];

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

- (void)footnoteViewController:(id)controller handleUserRequestForFrameToLoadExternalURL:(id)l completion:(id)completion
{
  if (self->_footnoteController == controller)
  {

    [(BKBookViewController *)self _promptToLoadExternalContent:completion, l];
  }

  else
  {
    sub_137AD8();
  }
}

- (void)footnoteViewController:(id)controller handleExternalLoadRequest:(id)request likelyUserInitiated:(BOOL)initiated
{
  if (self->_footnoteController == controller)
  {

    [(BKBookViewController *)self _handleExternalLoadRequest:request likelyUserInitiated:initiated];
  }

  else
  {
    sub_137B14();
  }
}

- (BOOL)footnoteViewController:(id)controller handleInternalLoadRequest:(id)request
{
  if (self->_footnoteController == controller)
  {

    return [BKBookViewController _controller:"_controller:handleInternalRequestForURL:" handleInternalRequestForURL:?];
  }

  else
  {
    sub_137B50();
    return 0;
  }
}

- (void)footnoteViewDidFinishLoad:(id)load
{
  if (self->_footnoteController == load)
  {

    [BKBookViewController showOverlayViewController:"showOverlayViewController:fromView:popoverOnPhone:popoverBackgroundColor:" fromView:? popoverOnPhone:? popoverBackgroundColor:?];
  }

  else
  {
    sub_137B8C();
  }
}

- (void)footnoteViewDidDisappear:(id)disappear
{
  if (self->_footnoteController == disappear)
  {
    [(BKBookViewController *)self _cleanupFootnoteViewController];

    [(BKBookViewController *)self clearSelection];
  }

  else
  {
    sub_137BC8();
  }
}

- (void)footnoteViewController:(id)controller presentAlertController:(id)alertController completion:(id)completion
{
  alertControllerCopy = alertController;
  completionCopy = completion;
  if (self->_footnoteController == controller)
  {
    book = [(BKBookViewController *)self book];
    bookTitle = [book bookTitle];
    [alertControllerCopy setTitle:bookTitle];

    [(BKBookViewController *)self presentViewController:alertControllerCopy animated:+[UIView completion:"areAnimationsEnabled"], completionCopy];
  }

  else
  {
    sub_137C04();
  }
}

- (void)pageNavigationDidChangeLocation:(id)location
{
  v5.location = [(BKBookViewController *)self currentPages];
  if (!NSIntersectionRange(v5, self[240]).length)
  {

    [(BKBookViewController *)self stopReadAloud];
  }
}

- (int64_t)pageNavigationCurrentReadAloudPageOffset:(id)offset
{
  offsetCopy = offset;
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

- (void)setSection:(int)section animated:(BOOL)animated adjustScrollToReveal:(BOOL)reveal
{
  if (self->_section != section)
  {
    self->_section = section;
    if (section)
    {
      [(BKBookViewController *)self bookMilestoneReached:7, animated, reveal];
      [(BKBookViewController *)self updateToolbarController];
    }

    else
    {
      [(BKBookViewController *)self updateToolbarController:*&section];
      displaySleepController = [(BKBookViewController *)self displaySleepController];
      [displaySleepController userInteractionOccurred];
    }

    [(BKBookViewController *)self notifyAppIntentsInfoChanged];
  }
}

- (void)directoryContent:(id)content didSelectLocation:(id)location
{
  locationCopy = location;
  contentCopy = content;
  [(BKBookViewController *)self directoryContent:contentCopy didSelectLocation:locationCopy animated:+[UIView areAnimationsEnabled]];
}

- (void)directoryContent:(id)content didSelectLocation:(id)location animated:(BOOL)animated
{
  animatedCopy = animated;
  locationCopy = location;
  v7 = [(BKBookViewController *)self documentForLocation:?];
  v8 = v7;
  if (!v7)
  {
    goto LABEL_4;
  }

  documentOrdinal = [v7 documentOrdinal];
  if ([documentOrdinal integerValue] == -1)
  {
  }

  else
  {
    nonlinearElement = [v8 nonlinearElement];
    bOOLValue = [nonlinearElement BOOLValue];

    if (!bOOLValue)
    {
LABEL_4:
      [(BKBookViewController *)self recordJumpFromCurrentLocation];
      if (locationCopy)
      {
        [(BKBookViewController *)self setResumeLocation:locationCopy];
      }

      [(BKBookViewController *)self setSection:0 animated:animatedCopy adjustScrollToReveal:1];
      [(BKBookViewController *)self setResumeLocation:0];
      [(BKBookViewController *)self clearSearchResult];
      goto LABEL_13;
    }
  }

  book = [(BKBookViewController *)self book];
  v13 = [book urlForDocument:v8];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = locationCopy;
    anchor = [v14 anchor];

    if (anchor)
    {
      anchor2 = [v14 anchor];
      v17 = [v13 URLByAppendingPathComponent:anchor2];

      v13 = v17;
    }
  }

  v18 = [BKExpandedContentResource resourceForURL:v13];
  book2 = [(BKBookViewController *)self book];
  cacheItem = [book2 cacheItem];
  [v18 setCacheItem:cacheItem];

  [(BKBookViewController *)self _showExpandedContentForResource:v18 atLocation:locationCopy presentingFromTOC:1 completion:0];
LABEL_13:
}

- (int64_t)directoryContent:(id)content pageNumberForLocation:(id)location
{
  locationCopy = location;
  paginationController = [(BKBookViewController *)self paginationController];
  v7 = [paginationController pageNumberForLocation:locationCopy];

  return v7;
}

- (id)_locationForChapter:(id)chapter
{
  chapterCopy = chapter;
  href = [chapterCopy href];
  uRLFragmentString = [href URLFragmentString];

  href2 = [chapterCopy href];

  stringByRemovingURLFragment = [href2 stringByRemovingURLFragment];

  v9 = [(BKBookViewController *)self locationForPath:stringByRemovingURLFragment fragment:uRLFragmentString];

  return v9;
}

- (void)tocViewController:(id)controller didSelectChapter:(id)chapter
{
  controllerCopy = controller;
  v8 = [(BKBookViewController *)self _locationForChapter:chapter];
  objc_opt_class();
  v7 = BUDynamicCast();

  [(BKBookViewController *)self directoryContent:v7 didSelectLocation:v8];
}

- (id)tocViewController:(id)controller pageTitleForChapter:(id)chapter
{
  chapterCopy = chapter;
  paginationController = [(BKBookViewController *)self paginationController];
  v7 = [paginationController pageRangeForChapter:chapterCopy];
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

- (id)tocViewController:(id)controller pageTitleForAnnotation:(id)annotation
{
  annotationCopy = annotation;
  paginationController = [(BKBookViewController *)self paginationController];
  v7 = [paginationController pageRangeForAnnotation:annotationCopy];
  v9 = v8;

  v10 = [(BKBookViewController *)self pageNumberFromRange:v7, v9];
  v11 = [(BKBookViewController *)self pageTitleForPageNumber:v10];
  if (!v11 && v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = [NSString localizedStringWithFormat:@"%lu", v10];
  }

  return v11;
}

- (int64_t)tocViewController:(id)controller pageNumberForAnnotation:(id)annotation
{
  annotationCopy = annotation;
  paginationController = [(BKBookViewController *)self paginationController];
  v7 = [paginationController pageRangeForAnnotation:annotationCopy];
  v9 = v8;

  return [(BKBookViewController *)self pageNumberFromRange:v7, v9];
}

- (int64_t)tocViewController:(id)controller pageNumberForChapter:(id)chapter
{
  chapterCopy = chapter;
  paginationController = [(BKBookViewController *)self paginationController];
  v7 = [paginationController pageRangeForChapter:chapterCopy];

  return v7;
}

- (id)tocViewControllerTocIdCssRules:(id)rules
{
  book = [(BKBookViewController *)self book];
  tocIdCssRules = [book tocIdCssRules];

  return tocIdCssRules;
}

- (void)_contentReady:(id)ready
{
  object = [ready object];
  if ([(NSMutableArray *)self->_contentLoadQueue containsObject:?])
  {
    [(NSMutableArray *)self->_contentLoadQueue removeObject:object];
    if ([(NSMutableArray *)self->_contentLoadQueue count])
    {
      v4 = [(NSMutableArray *)self->_contentLoadQueue objectAtIndex:0];
      [v4 load];
    }
  }
}

- (void)preloadContentController:(id)controller highPriority:(BOOL)priority
{
  priorityCopy = priority;
  controllerCopy = controller;
  v7 = controllerCopy;
  if (controllerCopy)
  {
    v16 = controllerCopy;
    controllerCopy = [controllerCopy isContentLoaded];
    v7 = v16;
    if ((controllerCopy & 1) == 0)
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
        if (priorityCopy && [(NSMutableArray *)self->_contentLoadQueue count])
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
        if (v11 >= 2 && priorityCopy)
        {
          v14 = self->_contentLoadQueue;
          v15 = v16;
          [(NSMutableArray *)v14 removeObjectAtIndex:v12];
          [(NSMutableArray *)self->_contentLoadQueue insertObject:v15 atIndex:1];
        }
      }

      controllerCopy = [(NSMutableArray *)self->_contentLoadQueue count];
      v7 = v16;
      if (controllerCopy == &dword_0 + 1)
      {
        controllerCopy = [v16 load];
        v7 = v16;
      }
    }
  }

  _objc_release_x1(controllerCopy, v7);
}

- (void)cancelPreloadForContent:(id)content
{
  v4 = [(NSMutableArray *)self->_contentLoadQueue indexOfObject:content];
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

+ (id)valueOfAnnotationProperty:(id)property activityType:(id)type book:(id)book
{
  propertyCopy = property;
  bookCopy = book;
  v7 = [NSSet alloc];
  v30 = [v7 initWithObjects:{AEAssetActivityItemProviderPropertyStoreId, AEAssetActivityItemProviderPropertyEpubId, AEAssetActivityItemProviderPropertyTitle, AEAssetActivityItemProviderPropertyAuthor, AEAssetActivityItemProviderPropertyPublisherLocation, AEAssetActivityItemProviderPropertyPublisherName, AEAssetActivityItemProviderPropertyPublisherYear, AEAssetActivityItemProviderPropertyLanguage, AEAssetActivityItemProviderPropertyGenre, AEAssetActivityItemProviderPropertyIsContentProtected, 0}];
  if ([v30 containsObject:propertyCopy])
  {
    v8 = [NSDictionary alloc];
    v9 = [v8 initWithObjectsAndKeys:{@"storeId", AEAssetActivityItemProviderPropertyStoreId, @"bookEpubId", AEAssetActivityItemProviderPropertyEpubId, @"bookTitle", AEAssetActivityItemProviderPropertyTitle, @"bookAuthor", AEAssetActivityItemProviderPropertyAuthor, @"publisherLocation", AEAssetActivityItemProviderPropertyPublisherLocation, @"publisherName", AEAssetActivityItemProviderPropertyPublisherName, @"publisherYear", AEAssetActivityItemProviderPropertyPublisherYear, @"bookLanguage", AEAssetActivityItemProviderPropertyLanguage, @"genre", AEAssetActivityItemProviderPropertyGenre, @"isProtected", AEAssetActivityItemProviderPropertyIsContentProtected, 0}];
    storeId2 = [v9 objectForKey:propertyCopy];
    v11 = bookCopy;
    v12 = [bookCopy valueForKey:storeId2];
LABEL_3:
    assetType = v12;
LABEL_21:

    goto LABEL_22;
  }

  v11 = bookCopy;
  if ([propertyCopy isEqualToString:AEAssetActivityItemProviderPropertyAssetCover])
  {
    v9 = [bookCopy url];
    v14 = +[AEPluginRegistry sharedInstance];
    storeId2 = [v14 pluginForURL:v9];

    if (!storeId2 || ([storeId2 helperForURL:v9 withOptions:0], v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v15, "helperCoverImage"), assetType = objc_claimAutoreleasedReturnValue(), v15, !assetType))
    {
      pageProgressionDirection = [bookCopy pageProgressionDirection];
      [pageProgressionDirection isEqualToString:AEHelperStringMetadataPageProgressionRightToLeftValue];

      bookLanguage = [bookCopy bookLanguage];
      coverWritingModeString = [bookCopy coverWritingModeString];
      [coverWritingModeString imIsVerticalWritingMode];
      BKGenericBookCoverLayoutFromLanguageAndVerticality();
      v18 = +[UIScreen mainScreen];
      [v18 scale];

      CGSizeScale();
      genericCoverTemplate = [bookCopy genericCoverTemplate];
      v20 = BKGenericBookCoverTemplateNameValid();

      shortBookTitle = [bookCopy shortBookTitle];
      bookAuthor = [bookCopy bookAuthor];
      if (v20)
      {
        genericCoverTemplate2 = [bookCopy genericCoverTemplate];
        ImageWithTemplate = BKGenericBookCoverCreateImageWithTemplate();
      }

      else
      {
        genericCoverTemplate2 = [bookCopy databaseKey];
        ImageWithTemplate = BKGenericBookCoverCreateImageWithItemIDAndLayout();
      }

      v26 = ImageWithTemplate;

      if (v26)
      {
        assetType = [UIImage imageWithCGImage:v26];
        CFRelease(v26);
      }

      else
      {
        assetType = 0;
      }
    }

    goto LABEL_21;
  }

  if ([propertyCopy isEqualToString:AEAssetActivityItemProviderPropertyAssetType])
  {
    assetType = [bookCopy assetType];
    goto LABEL_22;
  }

  if ([propertyCopy isEqualToString:AEAssetActivityItemProviderPropertyStoreUrl])
  {
    storeId = [bookCopy storeId];
    assetType = +[AEBookInfo storeURLForBookStoreId:isAudiobook:](AEBookInfo, "storeURLForBookStoreId:isAudiobook:", storeId, [bookCopy contentType] == 4);

    goto LABEL_22;
  }

  if ([propertyCopy isEqualToString:AEAssetActivityItemProviderPropertyStoreShortUrl])
  {
    if ([bookCopy isStoreBook])
    {
      v9 = +[AEUserPublishing sharedInstance];
      storeId2 = [bookCopy storeId];
      v12 = [v9 storeShortURLForStoreId:storeId2 dataSource:0];
      goto LABEL_3;
    }
  }

  else
  {
    if ([propertyCopy isEqualToString:AEAssetActivityItemProviderPropertyBookDescription])
    {
      v9 = +[AEAssetEngine libraryMgr];
      storeId2 = [bookCopy assetID];
      v12 = [v9 bookDescriptionForAssetID:storeId2];
      goto LABEL_3;
    }

    if ([propertyCopy isEqualToString:AEAssetActivityItemProviderPropertySeriesTitle])
    {
      v9 = +[AEAssetEngine libraryMgr];
      storeId2 = [bookCopy assetID];
      v12 = [v9 seriesTitleForAssetID:storeId2];
      goto LABEL_3;
    }
  }

  assetType = 0;
LABEL_22:

  return assetType;
}

+ (id)propertySourceFromBook:(id)book
{
  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = sub_5ABC0;
  v11 = &unk_1E40D8;
  bookCopy = book;
  selfCopy = self;
  v4 = bookCopy;
  v5 = objc_retainBlock(&v8);
  v6 = [v5 copy];

  return v6;
}

+ (BOOL)areCitationsAllowedForBook:(id)book
{
  bookCopy = book;
  if ([bookCopy isProtected] && (+[AEAssetEngine storeMgr](AEAssetEngine, "storeMgr"), v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "clientApplicationController"), v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(bookCopy, "storeFrontId"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v5, "citationAllowedForStoreFrontID:", objc_msgSend(v6, "unsignedLongLongValue")), v6, v5, v4, !v7))
  {
    LOBYTE(v9) = 0;
  }

  else
  {
    sampleContent = [bookCopy sampleContent];
    v9 = [sampleContent BOOLValue] ^ 1;
  }

  return v9;
}

- (void)shareAnnotation:(id)annotation fromRect:(CGRect)rect inView:(id)view completion:(id)completion
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  completionCopy = completion;
  viewCopy = view;
  v15 = [NSArray arrayWithObject:annotation];
  [(BKBookViewController *)self shareAnnotations:v15 fromRect:viewCopy inView:1 excerpt:completionCopy completion:x, y, width, height];
}

- (void)shareAnnotations:(id)annotations fromBarButtonItem:(id)item excerpt:(BOOL)excerpt completion:(id)completion
{
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_5AE68;
  v14[3] = &unk_1E4150;
  v14[4] = self;
  annotationsCopy = annotations;
  excerptCopy = excerpt;
  itemCopy = item;
  completionCopy = completion;
  v10 = itemCopy;
  v11 = completionCopy;
  v12 = annotationsCopy;
  v13 = objc_retainBlock(v14);
  [(BKViewController *)self dismissCurrentPopoverWithCompletion:v13];
}

- (void)shareAnnotations:(id)annotations fromRect:(CGRect)rect inView:(id)view excerpt:(BOOL)excerpt completion:(id)completion
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  annotationsCopy = annotations;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_5B620;
  v20[3] = &unk_1E4178;
  v20[4] = self;
  viewCopy = view;
  v24 = x;
  v25 = y;
  v26 = width;
  v27 = height;
  excerptCopy = excerpt;
  v22 = annotationsCopy;
  completionCopy = completion;
  v16 = completionCopy;
  v17 = annotationsCopy;
  v18 = viewCopy;
  v19 = objc_retainBlock(v20);
  [(BKViewController *)self dismissCurrentPopoverWithCompletion:v19];
}

- (void)expandAnnotation:(id)annotation location:(id)location selectedText:(id)text representativeText:(id)representativeText
{
  if (location)
  {
    representativeTextCopy = representativeText;
    textCopy = text;
    locationCopy = location;
    annotationCopy = annotation;
    book = [(BKBookViewController *)self book];
    [book expandAnnotation:annotationCopy location:locationCopy selectedText:textCopy representativeText:representativeTextCopy];
  }
}

- (id)addAnnotation:(int)annotation location:(id)location selectedText:(id)text representativeText:(id)representativeText
{
  if (location)
  {
    v8 = *&annotation;
    representativeTextCopy = representativeText;
    textCopy = text;
    locationCopy = location;
    book = [(BKBookViewController *)self book];
    v14 = [book addAnnotation:v8 location:locationCopy selectedText:textCopy representativeText:representativeTextCopy];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)contentViewController:(id)controller showHighlightingMenuForAnnotation:(id)annotation
{
  controllerCopy = controller;
  annotationCopy = annotation;
  theme = [(BKBookViewController *)self theme];
  annotationPageTheme = [theme annotationPageTheme];

  v10 = +[AEAnnotationTheme themeForAnnotationStyle:pageTheme:isUnderline:](AEAnnotationTheme, "themeForAnnotationStyle:pageTheme:isUnderline:", [annotationCopy annotationStyle], annotationPageTheme, objc_msgSend(annotationCopy, "annotationIsUnderline"));
  objc_initWeak(&location, self);
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_5C090;
  v17[3] = &unk_1E41A0;
  objc_copyWeak(v21, &location);
  v11 = controllerCopy;
  v18 = v11;
  v12 = v10;
  v19 = v12;
  v21[1] = annotationPageTheme;
  v13 = annotationCopy;
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

- (void)contentViewController:(id)controller shareAnnotation:(id)annotation annotationRects:(id)rects completion:(id)completion
{
  controllerCopy = controller;
  annotationCopy = annotation;
  completionCopy = completion;
  firstObject = [rects firstObject];
  v14 = firstObject;
  if (firstObject)
  {
    [firstObject rectValue];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;
    view = [controllerCopy view];
    [(BKBookViewController *)self shareAnnotation:annotationCopy fromRect:view inView:completionCopy completion:v16, v18, v20, v22];
LABEL_5:

    goto LABEL_6;
  }

  if ([annotationCopy conformsToProtocol:&OBJC_PROTOCOL___BKBookmark])
  {
    v24 = annotationCopy;
    location = [v24 location];
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_5C3C4;
    v26[3] = &unk_1E41F0;
    v26[4] = self;
    v27 = v24;
    v28 = controllerCopy;
    v29 = completionCopy;
    view = v24;
    [v28 visibleRectForLocation:location completion:v26];

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
  currentSoundtrack = [(BKBookViewController *)self currentSoundtrack];
  v3 = currentSoundtrack != 0;

  return v3;
}

- (BOOL)isSoundtrackPlaying
{
  hasSoundtrack = [(BKBookViewController *)self hasSoundtrack];
  if (hasSoundtrack)
  {
    LOBYTE(hasSoundtrack) = self->_isPlayingSoundTrack;
  }

  return hasSoundtrack;
}

- (void)setReadAloudState:(BOOL)state
{
  if (self->_isReading != state)
  {
    if (state)
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
      currentPages = [(BKBookViewController *)self currentPages];
      v6 = v5;
      v7 = [(BKBookViewController *)self pageNumberFromRange:currentPages, v5];
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
  book = [(BKBookViewController *)self book];
  hasMediaOverlayElements = [book hasMediaOverlayElements];

  if (hasMediaOverlayElements)
  {
    return self->_isReading;
  }

  else
  {
    return -1;
  }
}

- (void)setTrackState:(BOOL)state persistSetting:(BOOL)setting
{
  settingCopy = setting;
  if (!state)
  {
    [(BKBookViewController *)self stopSoundtrack];
    self->_isPlayingSoundTrack = 0;
    if (!settingCopy)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  self->_isPlayingSoundTrack = 1;
  [(BKBookViewController *)self playCurrentSoundtrack];
  if (settingCopy)
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
  currentSoundtrack = [(BKBookViewController *)self currentSoundtrack];

  if (currentSoundtrack)
  {
    return self->_isPlayingSoundTrack;
  }

  else
  {
    return -1;
  }
}

- (void)setTurnState:(BOOL)state
{
  self->_autoTurn = state;
  v4 = +[NSUserDefaults standardUserDefaults];
  v5 = [NSNumber numberWithBool:self->_autoTurn];
  [v4 setObject:v5 forKey:BKReadAloudAutoPageTurn[0]];

  [(BKBookViewController *)self updateToolbarController];
}

- (void)setVolume:(float)volume
{
  [(IMAVPlayer *)self->_readPlayer setVolume:?];
  *&v5 = volume;
  [(IMAVPlayer *)self->_trackPlayer setVolume:v5];
  v8 = +[NSUserDefaults standardUserDefaults];
  *&v6 = volume;
  v7 = [NSNumber numberWithFloat:v6];
  [v8 setObject:v7 forKey:@"AudioVolume"];
}

- (float)volume
{
  _readPlayer = [(BKBookViewController *)self _readPlayer];
  [_readPlayer volume];
  v4 = v3;

  return v4;
}

- (void)dismissCurrentPopoverAnimated:(BOOL)animated
{
  animatedCopy = animated;
  if (self->_appearanceContainerViewController)
  {
    presentedViewController = [(BKBookViewController *)self presentedViewController];
    appearanceContainerViewController = self->_appearanceContainerViewController;

    if (presentedViewController == appearanceContainerViewController)
    {
      [(BKBookViewController *)self handleAppearanceViewControllerDismissal];
    }
  }

  [(BKBookViewController *)self setActivityViewController:0];
  [(BKBookViewController *)self _cleanupFootnoteViewController];
  v7.receiver = self;
  v7.super_class = BKBookViewController;
  [(BKViewController *)&v7 dismissCurrentPopoverAnimated:animatedCopy];
}

- (void)playerStateChanged:(id)changed
{
  if (self->_readPlayer == changed)
  {
    [(BKBookViewController *)self updateTouchBarController];
  }
}

- (void)playerCurrentItemEnded:(id)ended
{
  endedCopy = ended;
  if (self->_readPlayer == endedCopy)
  {
    v17 = endedCopy;
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
      performSelectorProxy = [(BKBookViewController *)self performSelectorProxy];
      [NSObject cancelPreviousPerformRequestsWithTarget:performSelectorProxy selector:"_playNextItem" object:0];

      currentPages = [(BKBookViewController *)self currentPages];
      if (self->_autoTurn)
      {
        v13 = currentPages;
        v14 = v12;
        if (![(BKBookViewController *)self _isFocusedOnSecondPageOfSpread])
        {
          previousReadingOrdinal = self->_previousReadingOrdinal;
          if ((previousReadingOrdinal + 1) == v13 && v14 >= 2)
          {
            [(BKBookViewController *)self _focusOnPage:previousReadingOrdinal + 2];
            [(BKBookViewController *)self clearSelection];
            performSelectorProxy2 = [(BKBookViewController *)self performSelectorProxy];
            [performSelectorProxy2 performSelector:"_playNextItem" withObject:0 afterDelay:3.0];

            goto LABEL_8;
          }
        }
      }
    }

    [(BKBookViewController *)self _playNextItem];
LABEL_8:
    endedCopy = v17;
  }
}

- (void)player:(id)player callbackForTime:(double)time
{
  playerCopy = player;
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
        audioHref = [v10 audioHref];

        if (audioHref)
        {
          selfCopy = self;
          book = [(BKBookViewController *)self book];
          basePlusContentPath = [book basePlusContentPath];
          audioHref2 = [v10 audioHref];
          v16 = [basePlusContentPath stringByAppendingPathComponent:audioHref2];

          v17 = [NSURL fileURLWithPath:v16 isDirectory:0];
          audioStart = [v10 audioStart];
          [audioStart doubleValue];
          if (vabdd_f64(v19, time) >= 0.001)
          {
          }

          else
          {
            assetURL = [playerCopy assetURL];
            v21 = [v17 isEqual:assetURL];

            if (v21)
            {
              v22 = [v9 valueForKey:@"ordinal"];
              intValue = [v22 intValue];

              if (selfCopy->_previousReadingOrdinal != intValue)
              {
                selfCopy->_previousReadingOrdinal = intValue;
                [(BKBookViewController *)selfCopy _focusOnPage:intValue + 1];
                [(BKBookViewController *)selfCopy clearSelection];
              }

              [(BKBookViewController *)selfCopy _highlightElement:v10];

              goto LABEL_18;
            }
          }

          self = selfCopy;
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

  _readPlayer = [(BKBookViewController *)self _readPlayer];
  v3 = [_readPlayer state] == 3;

  return v3;
}

- (void)_startReadAloud:(BOOL)aloud
{
  if (aloud && [(BKBookViewController *)self isReadAloudPaused])
  {
    v4 = 1;
  }

  else
  {
    [(BKBookViewController *)self stopReadAloud];
    v4 = 0;
  }

  currentPages = [(BKBookViewController *)self currentPages];
  v7 = v6;
  v8 = [(BKBookViewController *)self pageNumberFromRange:currentPages, v6];
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
    _readPlayer = [(BKBookViewController *)self _readPlayer];
    [_readPlayer play];
LABEL_14:

    goto LABEL_16;
  }

  if (self->_autoTurn && ([(BKBookViewController *)self _isPageEmpty:currentPages, v7]|| [(BKBookViewController *)self _isPageAllZeros:currentPages, v7]))
  {
    _readPlayer = [NSNumber numberWithBool:0];
    [(BKBookViewController *)self readNextPages:_readPlayer];
    goto LABEL_14;
  }

  [(BKBookViewController *)self readPages:currentPages from:v7 to:[(BKBookViewController *)self _itemIndexForCurrentPage] waitOnEmpty:-1, 0];
LABEL_16:
  self->_isAutoTurning = 1;
  v13 = +[BCAudioMuxingCoordinator sharedInstance];
  [v13 notifyPlaybackWillStart:self];
}

- (void)stopReadAloudAndReload:(BOOL)reload
{
  reloadCopy = reload;
  [(BKBookViewController *)self pauseReadAloud];
  [(IMAVPlayer *)self->_readPlayer setCurrentTime:0.0];
  if (reloadCopy)
  {
    assetURL = [(IMAVPlayer *)self->_readPlayer assetURL];
    v6 = [AVAsset assetWithURL:assetURL];
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

    performSelectorProxy = [(BKBookViewController *)self performSelectorProxy];
    [NSObject cancelPreviousPerformRequestsWithTarget:performSelectorProxy selector:"readNextPages:" object:0];

    performSelectorProxy2 = [(BKBookViewController *)self performSelectorProxy];
    [NSObject cancelPreviousPerformRequestsWithTarget:performSelectorProxy2 selector:"_playNextItem" object:0];

    self->_isAutoTurning = 0;
    +[IMSleepManager stopSleepTimer];
  }
}

- (void)resumeReadAloud
{
  if (self->_playNextItemAbortedWhileInactive)
  {
    self->_playNextItemAbortedWhileInactive = 0;
    performSelectorProxy = [(BKBookViewController *)self performSelectorProxy];
    [performSelectorProxy performSelector:"_playNextItem" withObject:0 afterDelay:1.0];
  }

  else if ([(BKBookViewController *)self isReadAloudPaused]&& self->_smilMap)
  {

    [(BKBookViewController *)self _startReadAloud:1];
  }
}

- (void)_playNextItem
{
  [NSObject cancelPreviousPerformRequestsWithTarget:self selector:"_nextDelayedPageHint:" object:&__kCFBooleanTrue];
  performSelectorProxy = [(BKBookViewController *)self performSelectorProxy];
  [NSObject cancelPreviousPerformRequestsWithTarget:performSelectorProxy selector:"readNextPages:" object:0];

  viewIfLoaded = [(BKBookViewController *)self viewIfLoaded];
  window = [viewIfLoaded window];
  windowScene = [window windowScene];
  activationState = [windowScene activationState];

  if (activationState)
  {
    self->_playNextItemAbortedWhileInactive = 1;
  }

  else
  {
    self->_playNextItemAbortedWhileInactive = 0;
    currentPages = [(BKBookViewController *)self currentPages];
    v10 = v9;
    if ([(BKBookViewController *)self _isPageEmpty:currentPages, v9]|| [(BKBookViewController *)self _isPageAllZeros:currentPages, v10])
    {
      if (&currentPages[v10 - 1] == [(BKBookViewController *)self pageCountIncludingUpsell])
      {

        [(BKBookViewController *)self setReadAloudState:0];
      }

      else if (self->_isAutoTurning || self->_autoTurn || v10 == 1)
      {
        if (self->_autoTurn)
        {
          if (![(BKBookViewController *)self _isFocusedOnSecondPageOfSpread]&& v10 != 1)
          {
            [(BKBookViewController *)self _focusOnPage:[(BKBookViewController *)self pageNumberFromRange:currentPages, v10]+ 1];
          }

          performSelectorProxy2 = [(BKBookViewController *)self performSelectorProxy];
          [performSelectorProxy2 performSelector:"readNextPages:" withObject:0 afterDelay:3.0];
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
        v15 = v14 >= currentPages;
        v16 = v14 - currentPages;
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
          _readPlayer = [(BKBookViewController *)self _readPlayer];
          [_readPlayer removeAllTimeObservers];
          v18 = [(NSArray *)self->_smilMap objectAtIndex:self->_currentMapIndex];
          currentMapItem = self->_currentMapItem;
          self->_currentMapItem = v18;

          ++self->_currentMapIndex;
          v20 = [(NSDictionary *)self->_currentMapItem objectForKey:@"smil"];
          audioStart = [v20 audioStart];
          [audioStart doubleValue];
          v23 = v22;

          v47 = v20;
          audioEnd = [v20 audioEnd];
          [audioEnd doubleValue];
          v26 = v25;

          [_readPlayer addTimeObserver:v23];
          v27 = self->_currentMapIndex;
          if (v27 < [(NSArray *)self->_smilMap count])
          {
            while (1)
            {
              v28 = _readPlayer;
              v29 = [(NSArray *)self->_smilMap objectAtIndex:v27];
              v30 = [(NSDictionary *)v29 objectForKey:@"smil"];
              audioStart2 = [v30 audioStart];
              [audioStart2 doubleValue];
              v33 = v32;

              audioHref = [v30 audioHref];
              audioHref2 = [v47 audioHref];
              if (![audioHref isEqualToString:audioHref2])
              {
                break;
              }

              if (vabdd_f64(v33, v26) >= 2.0)
              {
                goto LABEL_43;
              }

              _readPlayer = v28;
              [v28 addTimeObserver:v33];
              audioEnd2 = [v30 audioEnd];
              [audioEnd2 doubleValue];
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
            _readPlayer = v28;
          }

LABEL_44:
          [_readPlayer addTimeObserver:v26];
          audioHref3 = [v47 audioHref];

          if (audioHref3)
          {
            book = [(BKBookViewController *)self book];
            basePlusContentPath = [book basePlusContentPath];
            audioHref4 = [v47 audioHref];
            v43 = [basePlusContentPath stringByAppendingPathComponent:audioHref4];

            if (v43)
            {
              v44 = [NSURL fileURLWithPath:v43 isDirectory:0];
              [_readPlayer setAssetURL:v44];

              if (v23 == v26)
              {
                [(BKBookViewController *)self _playNextItem];
              }

              else
              {
                [_readPlayer setEndTime:v26];
                if (![_readPlayer isPlaying] || (objc_msgSend(_readPlayer, "currentTime"), vabdd_f64(v23, v45) >= 2.0))
                {
                  [_readPlayer playFrom:v23];
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

- (void)readNextPages:(id)pages
{
  bOOLValue = [pages BOOLValue];
  currentPages = [(BKBookViewController *)self currentPages];
  v7 = v6;
  if (-[BKBookViewController _isManualCurlInProgress](self, "_isManualCurlInProgress") || (+[NSRunLoop currentRunLoop](NSRunLoop, "currentRunLoop"), v8 = objc_claimAutoreleasedReturnValue(), [v8 currentMode], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "isEqualToString:", UITrackingRunLoopMode), v9, v8, (v10 & 1) != 0))
  {

    [(BKBookViewController *)self stopReadAloud];
  }

  else
  {
    v11 = currentPages + v7;
    pageCountIncludingUpsell = [(BKBookViewController *)self pageCountIncludingUpsell];
    if (bOOLValue)
    {
      if (v11 <= pageCountIncludingUpsell)
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
      if (v11 <= pageCountIncludingUpsell)
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

- (void)contentView:(id)view didSelectMediaOverlayElement:(id)element
{
  elementCopy = element;
  currentPages = [(BKBookViewController *)self currentPages];
  selfCopy = self;
  v21 = v6;
  v7 = [(BKBookViewController *)self smilMapOnPages:?];
  [elementCopy elementId];
  v25 = v24 = elementCopy;
  documentHref = [elementCopy documentHref];
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
        documentHref2 = [v14 documentHref];
        if ([documentHref2 isEqualToString:documentHref])
        {
          elementId = [v14 elementId];
          v17 = [elementId isEqualToString:v25];

          if (v17)
          {
            v18 = [obj indexOfObject:v13];
            v19 = v18;
            if ((selfCopy->_currentMapIndex & 0x8000000000000000) == 0 && selfCopy->_maxMapIndex < 0)
            {
              v20 = -1;
            }

            else if (selfCopy->_autoTurn)
            {
              v20 = -1;
            }

            else
            {
              v20 = v18;
            }

            [(BKBookViewController *)selfCopy stopReadAloud];
            [(BKBookViewController *)selfCopy _nextPageHint:0];
            if (![(BKBookViewController *)selfCopy bkaxNeedsPersistentControls])
            {
              [(BKBookViewController *)selfCopy hidePageControls:0];
            }

            [(BKBookViewController *)selfCopy readPages:currentPages from:v21 to:v19 waitOnEmpty:v20, 0];

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

- (void)readPages:(_NSRange)pages from:(int64_t)from to:(int64_t)to waitOnEmpty:(BOOL)empty
{
  if (!self->_isReading)
  {
    return;
  }

  emptyCopy = empty;
  length = pages.length;
  location = pages.location;
  self->_currentMapIndex = from;
  self->_maxMapIndex = to;
  currentMapItem = self->_currentMapItem;
  self->_currentMapItem = 0;

  v11 = [(BKBookViewController *)self smilMapOnPages:location, length];
  smilMap = self->_smilMap;
  self->_smilMap = v11;

  if (emptyCopy)
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
      _isFocusedOnSecondPageOfSpread = 0;
      if (!emptyCopy)
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
      _isFocusedOnSecondPageOfSpread = [(BKBookViewController *)self _isFocusedOnSecondPageOfSpread];
      if (!emptyCopy)
      {
        goto LABEL_18;
      }
    }

    if ((_isFocusedOnSecondPageOfSpread & 1) == 0)
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
  performSelectorProxy = [(BKBookViewController *)self performSelectorProxy];
  [NSObject cancelPreviousPerformRequestsWithTarget:performSelectorProxy selector:"_playNextItem" object:0];

  if (v13 == 0.0)
  {

    [(BKBookViewController *)self _playNextItem];
  }

  else
  {
    performSelectorProxy2 = [(BKBookViewController *)self performSelectorProxy];
    [performSelectorProxy2 performSelector:"_playNextItem" withObject:0 afterDelay:v13];
  }
}

- (id)smilMapOnPages:(_NSRange)pages
{
  length = pages.length;
  location = pages.location;
  p_pagesForMap = &self->_pagesForMap;
  v7 = pages.location == self->_pagesForMap.location && pages.length == self->_pagesForMap.length;
  if (!v7 || (v8 = self->_smilMap) == 0)
  {
    v8 = [(BKBookViewController *)self _prepareSmilMapOn:location, length];
    p_pagesForMap->location = location;
    p_pagesForMap->length = length;
  }

  return v8;
}

- (id)contentViewControllerForMediaOverlayElement:(id)element
{
  elementCopy = element;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  contentViewControllers = [(BKBookViewController *)self contentViewControllers];
  allValues = [contentViewControllers allValues];

  v7 = [allValues countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = *v17;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(allValues);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        document = [v10 document];
        href = [document href];
        documentHref = [elementCopy documentHref];
        v14 = [href isEqualToString:documentHref];

        if (v14)
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [allValues countByEnumeratingWithState:&v16 objects:v20 count:16];
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

- (void)_removeHighlightOnElement:(id)element
{
  if (self->_highlightedElement == element)
  {
    elementCopy = element;
    v6 = [(BKBookViewController *)self contentViewControllerForMediaOverlayElement:elementCopy];
    [v6 clearMediaOverlayElement:elementCopy];

    highlightedElement = self->_highlightedElement;
    self->_highlightedElement = 0;
  }
}

- (void)_highlightElement:(id)element
{
  elementCopy = element;
  [(BKBookViewController *)self _removeHighlightOnElement:self->_highlightedElement];
  highlightedElement = self->_highlightedElement;
  self->_highlightedElement = elementCopy;
  v6 = elementCopy;

  v7 = [(BKBookViewController *)self contentViewControllerForMediaOverlayElement:v6];
  [v7 highlightMediaOverlayElement:v6];
}

- (BOOL)_isPageEmpty:(_NSRange)empty
{
  v3 = [(BKBookViewController *)self smilMapOnPages:empty.location, empty.length];
  v4 = [v3 count] == 0;

  return v4;
}

- (BOOL)_isPageAllZeros:(_NSRange)zeros
{
  v3 = [(BKBookViewController *)self smilMapOnPages:zeros.location, zeros.length];
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
          audioStart = [v9 audioStart];
          audioEnd = [v9 audioEnd];
          v12 = [audioStart isEqualToNumber:audioEnd];

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

- (void)_nextDelayedPageHint:(id)hint
{
  bOOLValue = [hint BOOLValue];

  [(BKBookViewController *)self _nextPageHint:bOOLValue];
}

- (void)_nextPageHint:(BOOL)hint afterDelay:(double)delay
{
  v6 = [NSNumber numberWithBool:hint];
  [(BKBookViewController *)self performSelector:"_nextDelayedPageHint:" withObject:v6 afterDelay:delay];
}

- (void)playCurrentSoundtrack
{
  if (self->_isPlayingSoundTrack)
  {
    currentSoundtrack = [(BKBookViewController *)self currentSoundtrack];
    if (currentSoundtrack)
    {
      book = [(BKBookViewController *)self book];
      basePlusContentPath = [book basePlusContentPath];
      v6 = [basePlusContentPath stringByAppendingPathComponent:currentSoundtrack];

      stringByStandardizingPath = [v6 stringByStandardizingPath];
      v8 = [NSURL fileURLWithPath:stringByStandardizingPath isDirectory:0];
      _trackPlayer = [(BKBookViewController *)self _trackPlayer];
      [_trackPlayer setAssetURL:v8];

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

- (void)stopSoundtrackAndReload:(BOOL)reload
{
  reloadCopy = reload;
  [(IMAVPlayer *)self->_trackPlayer pause];
  if (reloadCopy)
  {
    assetURL = [(IMAVPlayer *)self->_trackPlayer assetURL];
    v5 = [AVAsset assetWithURL:assetURL];
    [(IMAVPlayer *)self->_trackPlayer setAsset:v5];
  }
}

- (void)audioPlaybackWillStart:(id)start
{
  if (start != self)
  {
    [(BKBookViewController *)self setReadAloudState:0];
    [(BKBookViewController *)self setTrackState:0 persistSetting:0];

    [(BKBookViewController *)self stopPlayingMedia:0];
  }
}

- (void)_reportLoadFailedAlertForError:(id)error
{
  errorCopy = error;
  v5 = AEBundle();
  v6 = [v5 localizedStringForKey:@"Failed to load book because the requested resource is missing." value:&stru_1E7188 table:0];

  v7 = [UIAlertController alertControllerWithTitle:v6 message:0 preferredStyle:1];
  v8 = AEBundle();
  v9 = [v8 localizedStringForKey:@"OK" value:&stru_1E7188 table:0];
  v12 = _NSConcreteStackBlock;
  v13 = 3221225472;
  v14 = sub_5ECBC;
  v15 = &unk_1E4218;
  selfCopy = self;
  v17 = errorCopy;
  v10 = errorCopy;
  v11 = [UIAlertAction actionWithTitle:v9 style:0 handler:&v12];
  [v7 addAction:{v11, v12, v13, v14, v15, selfCopy}];

  [(BKBookViewController *)self presentViewController:v7 animated:1 completion:0];
}

- (void)_reportResourceUnavailableForBookWithTitle:(id)title error:(id)error
{
  titleCopy = title;
  errorCopy = error;
  v8 = AEBundle();
  v9 = [v8 localizedStringForKey:@"Cannot Open Book" value:&stru_1E7188 table:0];

  if ([titleCopy length])
  {
    v10 = AEBundle();
    v11 = [v10 localizedStringForKey:@"Cannot Open “%@”" value:&stru_1E7188 table:0];
    titleCopy = [NSString stringWithFormat:v11, titleCopy];

    v9 = titleCopy;
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
  v21 = errorCopy;
  v18 = errorCopy;
  v19 = [UIAlertAction actionWithTitle:v16 style:1 handler:v20];
  [v17 addAction:v19];

  [(BKBookViewController *)self presentViewController:v17 animated:1 completion:0];
}

- (void)contentFailedToLoadWithError:(id)error
{
  errorCopy = error;
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
    v22 = errorCopy;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_INFO, "@Showing Load Failed Alert -- %@", buf, 0xCu);
  }

  domain = [errorCopy domain];
  if ([domain isEqualToString:NSURLErrorDomain])
  {
    code = [errorCopy code];

    if (code == -1008)
    {
      book = [(BKBookViewController *)self book];
      bookTitle = [book bookTitle];

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
        v22 = bookTitle;
        _os_log_impl(&dword_0, v12, OS_LOG_TYPE_INFO, "@Load Failed Alert for book: %@", buf, 0xCu);
      }

      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_5F2F4;
      block[3] = &unk_1E4240;
      block[4] = self;
      v19 = bookTitle;
      v20 = errorCopy;
      v13 = bookTitle;
      dispatch_async(&_dispatch_main_q, block);

      goto LABEL_17;
    }
  }

  else
  {
  }

  domain2 = [errorCopy domain];
  v15 = [domain2 isEqualToString:kCFErrorDomainCFNetwork];

  if (!v15 && ([errorCopy domain], v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "isEqualToString:", NSURLErrorDomain), v16, !v17) || objc_msgSend(errorCopy, "code") != -999)
  {
    [(BKBookViewController *)self performSelectorOnMainThread:"_reportLoadFailedAlertForError:" withObject:errorCopy waitUntilDone:0];
  }

LABEL_17:
}

- (id)fullScreenNoteEditorForAnnotation:(id)annotation
{
  annotationCopy = annotation;
  theme = [(BKBookViewController *)self theme];
  shouldInvertContent = [theme shouldInvertContent];

  annotationNote = [annotationCopy annotationNote];
  v8 = [annotationNote length] == 0;

  v9 = objc_alloc_init(AENoteFullscreenEditorController);
  [v9 setEditsOnLaunch:v8];
  noteEditorHighlightedTextFont = [(BKBookViewController *)self noteEditorHighlightedTextFont];
  [v9 setHighlightedTextFont:noteEditorHighlightedTextFont];

  [v9 setAnnotation:annotationCopy];
  [v9 setDelegate:self];
  [v9 setShouldDim:shouldInvertContent];
  theme2 = [(BKBookViewController *)self theme];
  [v9 setTheme:theme2];

  return v9;
}

- (void)showNoteEditorForAnnotation:(id)annotation
{
  annotationCopy = annotation;
  [(AENotePopoverEditorController *)self->_noteEditor setDelegate:0];
  noteEditor = self->_noteEditor;
  self->_noteEditor = 0;

  v6 = objc_alloc_init(AENotePopoverEditorController);
  v7 = self->_noteEditor;
  self->_noteEditor = v6;

  [(AENotePopoverEditorController *)self->_noteEditor setAnnotation:annotationCopy];
  theme = [(BKBookViewController *)self theme];
  annotationPageTheme = [theme annotationPageTheme];

  v10 = +[AEAnnotationTheme themeForAnnotationStyle:pageTheme:isUnderline:](AEAnnotationTheme, "themeForAnnotationStyle:pageTheme:isUnderline:", [annotationCopy annotationStyle], annotationPageTheme, objc_msgSend(annotationCopy, "annotationIsUnderline"));
  [(AENotePopoverEditorController *)self->_noteEditor setAnnotationTheme:v10];

  if (objc_opt_respondsToSelector())
  {
    theme2 = [(BKBookViewController *)self theme];
    [(AENotePopoverEditorController *)self->_noteEditor setTheme:theme2];
  }

  [(AENotePopoverEditorController *)self->_noteEditor setDelegate:self];
  annotationNote = [annotationCopy annotationNote];
  v13 = [annotationNote length] == 0;

  [(AENotePopoverEditorController *)self->_noteEditor setEditsOnLaunch:v13];
  if (([(BKBookViewController *)self im_isCompactWidth]& 1) != 0 || ([(BKBookViewController *)self im_isCompactHeight]& 1) != 0)
  {
    v14 = [(BKBookViewController *)self fullScreenNoteEditorForAnnotation:annotationCopy];
    [(BKBookViewController *)self setControlsVisible:1 animated:1];
    [(BKBookViewController *)self presentViewController:v14 animated:1 completion:0];
  }

  else
  {
    v15 = [(BKBookViewController *)self contentViewControllerForAnnotation:annotationCopy];
    v14 = v15;
    if (v15)
    {
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_5F64C;
      v16[3] = &unk_1E3488;
      v17 = v15;
      selfCopy = self;
      [v17 rectForAnnotation:annotationCopy withCompletion:v16];
    }
  }
}

- (BOOL)isEditingAnnotation:(id)annotation
{
  annotationUuid = [annotation annotationUuid];
  annotation = [(AENotePopoverEditorController *)self->_noteEditor annotation];
  annotationUuid2 = [annotation annotationUuid];
  v7 = [annotationUuid isEqualToString:annotationUuid2];

  return v7;
}

- (void)didHideAnnotationEditor:(id)editor
{
  editorCopy = editor;
  annotation = [(AENotePopoverEditorController *)editorCopy annotation];
  if ([annotation isInserted] && (objc_msgSend(annotation, "annotationNote"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "length"), v6, !v7))
  {
    book = [(BKBookViewController *)self book];
    [book deleteAnnotation:annotation];
  }

  else
  {
    managedObjectContext = [annotation managedObjectContext];
    v17 = 0;
    v9 = [managedObjectContext save:&v17];
    book = v17;

    if ((v9 & 1) == 0 && book)
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
        v19 = book;
        _os_log_impl(&dword_0, v12, OS_LOG_TYPE_INFO, "@Save Error: %@", buf, 0xCu);
      }
    }
  }

  p_noteEditor = &self->_noteEditor;
  noteEditor = self->_noteEditor;
  if (noteEditor == editorCopy)
  {
    [(AENotePopoverEditorController *)noteEditor setDelegate:0];
    goto LABEL_15;
  }

  p_noteEditor = &self->_colorEditor;
  colorEditor = self->_colorEditor;
  if (colorEditor == editorCopy)
  {
    [(AEHighlightColorEditorController *)colorEditor removeFromParentViewController];
LABEL_15:
    v16 = *p_noteEditor;
    *p_noteEditor = 0;
  }

  [(BKBookViewController *)self clearSelectedAnnotation];
}

- (void)editorController:(id)controller setTheme:(id)theme forAnnotation:(id)annotation
{
  annotationCopy = annotation;
  themeCopy = theme;
  annotationStyle = [themeCopy annotationStyle];
  isUnderline = [themeCopy isUnderline];

  v12 = annotationCopy;
  [v12 setAnnotationStyle:annotationStyle];
  [v12 setAnnotationIsUnderline:isUnderline];

  v10 = +[NSUserDefaults standardUserDefaults];
  [v10 setInteger:annotationStyle forKey:BKDefaultHighlightColor[0]];

  v11 = +[NSUserDefaults standardUserDefaults];
  [v11 setBool:isUnderline forKey:BKDefaultUnderlineState];
}

- (void)editorController:(id)controller deleteAnnotation:(id)annotation
{
  annotationCopy = annotation;
  book = [(BKBookViewController *)self book];
  [book deleteAnnotation:annotationCopy];

  searchResult = [(BKBookViewController *)self searchResult];

  if (searchResult)
  {
    searchResult2 = [(BKBookViewController *)self searchResult];
    [(BKBookViewController *)self highlightSearchResult:searchResult2];
  }
}

- (_NSRange)pageRangeForAnnotation:(id)annotation
{
  annotationCopy = annotation;
  if ([annotationCopy conformsToProtocol:&OBJC_PROTOCOL___BKBookmark])
  {
    paginationController = [(BKBookViewController *)self paginationController];
    v6 = [paginationController pageRangeForAnnotation:annotationCopy];
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

- (id)chapterTitleForAnnotation:(id)annotation
{
  annotationCopy = annotation;
  if ([annotationCopy conformsToProtocol:&OBJC_PROTOCOL___BKBookmark])
  {
    paginationController = [(BKBookViewController *)self paginationController];
    v6 = [paginationController pageRangeForAnnotation:annotationCopy];
    v8 = [(BKBookViewController *)self pageNumberFromRange:v6, v7];

    v9 = [(BKBookViewController *)self titleForChapterAtPageNumber:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)editorController:(id)controller editedAnnotation:(id)annotation toText:(id)text
{
  annotationCopy = annotation;
  textCopy = text;
  [annotationCopy setAnnotationNote:textCopy];
  v8 = BKMobileCloudSyncAnnotationsLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    annotationAssetID = [annotationCopy annotationAssetID];
    annotationUuid = [annotationCopy annotationUuid];
    v12 = 138412546;
    v13 = annotationAssetID;
    v14 = 2112;
    v15 = annotationUuid;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, "edit annotation note: assetID: %@, uuid: %@", &v12, 0x16u);
  }

  v11 = BKMobileCloudSyncAnnotationsLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    sub_137C7C();
  }
}

- (void)editorController:(id)controller shareAnnotation:(id)annotation
{
  annotationCopy = annotation;
  controllerCopy = controller;
  [controllerCopy presentationRect];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  presentationView = [controllerCopy presentationView];

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_5FF0C;
  v17[3] = &unk_1E4268;
  v17[4] = self;
  [(BKBookViewController *)self shareAnnotation:annotationCopy fromRect:presentationView inView:v17 completion:v9, v11, v13, v15];
}

- (BOOL)editorController:(id)controller isSharingEnabledForAnnotation:(id)annotation
{
  annotationCopy = annotation;
  if ([(BKBookViewController *)self isSharingSupported])
  {
    v6 = objc_opt_class();
    book = [(BKBookViewController *)self book];
    if ([v6 areCitationsAllowedForBook:book])
    {
      annotationSelectedText = [annotationCopy annotationSelectedText];
      v9 = [annotationSelectedText length] != 0;
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
  theme = [(BKBookViewController *)self theme];
  v4 = [theme backgroundColorForTraitEnvironment:self];

  return v4;
}

- (id)transitionContentView
{
  BCReportAssertionFailureWithMessage();

  return [(BKBookViewController *)self view];
}

- (void)_paginationComplete:(id)complete
{
  object = [complete object];
  paginationController = [(BKBookViewController *)self paginationController];

  _currentReadingProgress = _AEPaginationLog();
  v7 = os_log_type_enabled(_currentReadingProgress, OS_LOG_TYPE_DEFAULT);
  if (object != paginationController)
  {
    if (v7)
    {
      paginationController2 = [(BKBookViewController *)self paginationController];
      v14 = 138412546;
      selfCopy2 = self;
      v16 = 2112;
      v17 = paginationController2;
      _os_log_impl(&dword_0, _currentReadingProgress, OS_LOG_TYPE_DEFAULT, "IGNORING paginationComplete BVC:%@ paginationController:%@", &v14, 0x16u);
    }

    goto LABEL_4;
  }

  if (v7)
  {
    paginationController3 = [(BKBookViewController *)self paginationController];
    v14 = 138412546;
    selfCopy2 = self;
    v16 = 2112;
    v17 = paginationController3;
    _os_log_impl(&dword_0, _currentReadingProgress, OS_LOG_TYPE_DEFAULT, "Received paginationComplete BVC:%@ paginationController:%@", &v14, 0x16u);
  }

  assetViewControllerDelegate = [(BKBookViewController *)self assetViewControllerDelegate];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    assetViewControllerDelegate2 = [(BKBookViewController *)self assetViewControllerDelegate];
    [assetViewControllerDelegate2 assetViewControllerPaginationCompletedForBook:self];
  }

  if ([(BKBookViewController *)self _inAnalyticsReadSession])
  {
    analyticsReadStartProgress = [(BKBookViewController *)self analyticsReadStartProgress];

    if (!analyticsReadStartProgress)
    {
      _currentReadingProgress = [(BKBookViewController *)self _currentReadingProgress];
      [(BKBookViewController *)self setAnalyticsReadStartProgress:_currentReadingProgress];
LABEL_4:
    }
  }
}

- (void)buildContextTree:(id)tree
{
  treeCopy = tree;
  v4 = objc_opt_new();
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  selfCopy = self;
  book = [(BKBookViewController *)self book];
  sortedDocuments = [book sortedDocuments];

  obj = sortedDocuments;
  v32 = [sortedDocuments countByEnumeratingWithState:&v44 objects:v51 count:16];
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
        book2 = [(BKBookViewController *)selfCopy book];
        v11 = [book2 navigationInfosForDocument:v9];

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
              v20 = [treeCopy objectForKeyedSubscript:v18];
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
    book3 = [(BKBookViewController *)selfCopy book];
    assetID = [book3 assetID];
    [v26 buildContextTree:v4 forBook:assetID completion:0];
  }
}

- (void)_handleExternalLoadRequest:(id)request likelyUserInitiated:(BOOL)initiated
{
  initiatedCopy = initiated;
  requestCopy = request;
  assetViewControllerDelegate = [(BKBookViewController *)self assetViewControllerDelegate];
  [assetViewControllerDelegate assetViewController:self requestOpenURL:requestCopy likelyUserInitiated:initiatedCopy];
}

- (BOOL)_controller:(id)_controller handleInternalRequestForURL:(id)l
{
  _controllerCopy = _controller;
  lCopy = l;
  bc_pathWithoutPrecedingSlash = [lCopy bc_pathWithoutPrecedingSlash];
  stringByRemovingURLFragment = [bc_pathWithoutPrecedingSlash stringByRemovingURLFragment];
  book = [(BKBookViewController *)self book];
  v11 = [book documentAtPath:stringByRemovingURLFragment];

  if ([(BKBookViewController *)self isTOCURL:lCopy])
  {
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_6087C;
    v20[3] = &unk_1E2BD0;
    v20[4] = self;
    [(BKViewController *)self hideOverlayViewControllerWithCompletion:v20];
    goto LABEL_9;
  }

  documentOrdinal = [v11 documentOrdinal];
  if ([documentOrdinal integerValue] == -1)
  {

    goto LABEL_8;
  }

  nonlinearElement = [v11 nonlinearElement];
  bOOLValue = [nonlinearElement BOOLValue];

  if (bOOLValue)
  {
LABEL_8:
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_60888;
    v17[3] = &unk_1E3F50;
    v18 = lCopy;
    selfCopy = self;
    [(BKViewController *)self hideOverlayViewControllerWithCompletion:v17];

    goto LABEL_9;
  }

  if (bc_pathWithoutPrecedingSlash)
  {
    [_controllerCopy dismissViewControllerAnimated:1 completion:0];
    fragment = [lCopy fragment];
    [(BKBookViewController *)self goToPath:bc_pathWithoutPrecedingSlash fragment:fragment animated:1];
  }

LABEL_9:

  return 0;
}

- (void)hoverInteraction:(id)interaction didChangeStateForRegionWithKeys:(id)keys
{
  interactionCopy = interaction;
  keysCopy = keys;
  if (self->_hoverInteraction == interactionCopy && -[BCUIHoverInteraction isHovering](interactionCopy, "isHovering") && self->_section != 1 && [keysCopy containsObject:@"control"] && -[BCUIHoverInteraction stateForRegionWithKey:](interactionCopy, "stateForRegionWithKey:", @"control"))
  {
    [(BKBookViewController *)self setControlsVisible:1 animated:1];
    self->_controlsEnabledViaHover = 1;
  }
}

- (void)hoverInteractionDidSettle:(id)settle
{
  settleCopy = settle;
  if (([settleCopy stateForRegionWithKey:@"control"] & 1) == 0 && objc_msgSend(settleCopy, "isHovering") && !self->_section && self->_controlsEnabledViaHover && -[BKBookViewController canDismissControls](self, "canDismissControls"))
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
    book = [(BKBookViewController *)self book];
    annotationProvider = [book annotationProvider];
    uiManagedObjectContext = [annotationProvider uiManagedObjectContext];

    [(BKBookViewController *)self bookmarksFetchRequestForBook:book moc:uiManagedObjectContext];
    v24 = v29 = 0;
    v6 = [uiManagedObjectContext executeFetchRequest:? error:?];
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
          annotationType = [v15 annotationType];
          if (annotationType == 2)
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

          else if (annotationType == 1)
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

- (void)emitScrubEventStartPosition:(int64_t)position endPosition:(int64_t)endPosition totalLength:(int64_t)length
{
  analyticsReadingSettingsData = [(BKBookViewController *)self analyticsReadingSettingsData];
  v9 = +[BAEventReporter sharedReporter];
  ba_effectiveAnalyticsTracker = [(BKBookViewController *)self ba_effectiveAnalyticsTracker];
  v11 = [(BKBookViewController *)self contentDataForSearchViewController:0];
  v12 = [NSNumber numberWithInteger:position];
  v13 = [NSNumber numberWithInteger:endPosition];
  v14 = [NSNumber numberWithInteger:length];
  [v9 emitScrubEventWithTracker:ba_effectiveAnalyticsTracker contentData:v11 readingSettingsData:analyticsReadingSettingsData startPosition:v12 endPosition:v13 totalLength:v14];
}

- (void)bc_analyticsVisibilityDidAppear
{
  ba_effectiveAnalyticsTracker = [(BKBookViewController *)self ba_effectiveAnalyticsTracker];
  if ([ba_effectiveAnalyticsTracker optedIn])
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

  _currentReadingProgress = [(BKBookViewController *)self _currentReadingProgress];
  [(BKBookViewController *)self setAnalyticsReadStartProgress:_currentReadingProgress];
}

- (void)bc_analyticsVisibilityWillDisappear
{
  ba_effectiveAnalyticsTracker = [(BKBookViewController *)self ba_effectiveAnalyticsTracker];
  v25[0] = 0;
  v25[1] = v25;
  v25[2] = 0x3032000000;
  v25[3] = sub_613C4;
  v25[4] = sub_613D4;
  newSessionAssertion = [ba_effectiveAnalyticsTracker newSessionAssertion];
  contentData = [(BKBookViewController *)self contentData];
  v5 = contentData;
  if (contentData)
  {
    cachedContentData = contentData;
  }

  else
  {
    cachedContentData = [(BKBookViewController *)self cachedContentData];
  }

  v7 = cachedContentData;

  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x3032000000;
  v23[3] = sub_613C4;
  v23[4] = sub_613D4;
  analyticsReadStartDate = [(BKBookViewController *)self analyticsReadStartDate];
  if (v7)
  {
    doNotDisturbStatusAtStart = [(BKBookViewController *)self doNotDisturbStatusAtStart];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_613DC;
    v17[3] = &unk_1E4358;
    v18 = ba_effectiveAnalyticsTracker;
    selfCopy = self;
    v21 = v23;
    v22 = v25;
    v20 = v7;
    [(BKBookViewController *)self _newBADoNotDisturbDataWithStartStatus:doNotDisturbStatusAtStart tracker:v18 completion:v17];

    v9 = v18;
  }

  else
  {
    v9 = BCCurrentBookLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      assetViewControllerDelegate = [(BKBookViewController *)self assetViewControllerDelegate];
      sub_137D00(assetViewControllerDelegate, buf, v9);
    }
  }

  analyticsReadStartDate2 = [(BKBookViewController *)self analyticsReadStartDate];
  [analyticsReadStartDate2 timeIntervalSinceNow];
  v13 = v12;

  _analyticsSessionHost = [(BKBookViewController *)self _analyticsSessionHost];
  asset = [(BKBookViewController *)self asset];
  assetID = [asset assetID];
  [_analyticsSessionHost readSessionDidEnd:assetID readTime:-v13];

  _Block_object_dispose(v23, 8);
  _Block_object_dispose(v25, 8);
}

- (id)_contentSettingsDataFromReadingSessionData:(id)data optedIn:(BOOL)in
{
  if (in)
  {
    dataCopy = data;
    percentCompletionStart = [dataCopy percentCompletionStart];
    [percentCompletionStart floatValue];
    v9 = v8;

    percentCompletionEnd = [dataCopy percentCompletionEnd];

    [percentCompletionEnd floatValue];
    v12 = v11;

    v13 = v12 >= 0.5 && v9 < 0.5;
    if (v13 || (analyticsContentSettingData = 0, v12 >= 0.9) && v9 < 0.9)
    {
      analyticsContentSettingData = [(BKBookViewController *)self analyticsContentSettingData];
    }
  }

  else
  {
    analyticsContentSettingData = 0;
  }

  return analyticsContentSettingData;
}

- (void)_newBADoNotDisturbDataWithStartStatus:(int64_t)status tracker:(id)tracker completion:(id)completion
{
  trackerCopy = tracker;
  completionCopy = completion;
  if (completionCopy)
  {
    if ([trackerCopy optedIn])
    {
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_619BC;
      v10[3] = &unk_1E4380;
      statusCopy = status;
      v11 = completionCopy;
      [BADoNotDisturbHelper fetchCurrentState:v10];
    }

    else
    {
      v9 = [[BADoNotDisturbData alloc] initWithStartStatus:0 endStatus:0];
      (*(completionCopy + 2))(completionCopy, v9);
    }
  }
}

- (BOOL)bc_analyticsVisibilityOfSelf
{
  assetViewControllerDelegate = [(BKBookViewController *)self assetViewControllerDelegate];
  v3 = assetViewControllerDelegate != 0;

  return v3;
}

- (BOOL)_inAnalyticsReadSession
{
  analyticsReadStartDate = [(BKBookViewController *)self analyticsReadStartDate];
  v3 = analyticsReadStartDate != 0;

  return v3;
}

- (id)_analyticsSessionHost
{
  v2 = [(BKBookViewController *)self im_ancestorViewControllerConformingToProtocol:&OBJC_PROTOCOL___BASessionHostProviding];
  analyticsSessionHost = [v2 analyticsSessionHost];

  return analyticsSessionHost;
}

- (void)handleVoiceOverStatusChanged:(id)changed
{
  if (UIAccessibilityIsVoiceOverRunning())
  {

    [(BKBookViewController *)self setControlsVisible:1 animated:0];
  }
}

- (void)handleSwitchControlStatusChanged:(id)changed
{
  if (UIAccessibilityIsSwitchControlRunning())
  {

    [(BKBookViewController *)self setControlsVisible:1 animated:0];
  }
}

- (void)updateUIForSmartInvert
{
  v3 = +[IMTheme isAutoNightModeEnabled];
  viewIfLoaded = [(BKBookViewController *)self viewIfLoaded];
  [viewIfLoaded setAccessibilityIgnoresInvertColors:v3];
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