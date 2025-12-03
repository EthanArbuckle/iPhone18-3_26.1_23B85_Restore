@interface THBookViewController
+ (BOOL)allBodiesExist:(id)exist;
+ (id)themeMap;
+ (void)initialize;
- (AEAsset)asset;
- (BOOL)_canSearch;
- (BOOL)allowCopy;
- (BOOL)autoNightModeEnabled:(id)enabled;
- (BOOL)bookIsPaginatedForPortrait;
- (BOOL)canDecreaseFontSize;
- (BOOL)canIncreaseFontSize;
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (BOOL)canRevealTOC;
- (BOOL)canTrustCalculatedPageNumbers;
- (BOOL)chapterBrowserController:(id)controller shouldShowShroudForVisibleSize:(CGSize)size;
- (BOOL)disableRotationEdgeClip;
- (BOOL)dismissShouldBegin:(id)begin;
- (BOOL)flowModeEnabled:(id)enabled;
- (BOOL)followAnchor:(id)anchor pulse:(BOOL)pulse;
- (BOOL)followLink:(id)link animated:(BOOL)animated;
- (BOOL)isAnnotationWriteEnabled;
- (BOOL)isBookEpub;
- (BOOL)isBookPortraitOnly;
- (BOOL)isBookmarkApplicable;
- (BOOL)isCurrentPageBookmarkedForBookmarkMenuPopoverViewController:(id)controller;
- (BOOL)isGlossaryPresenting;
- (BOOL)isGlossaryVisible;
- (BOOL)isLastPageInChapterForChapterBrowserController:(id)controller pageIndex:(unint64_t)index chapterIndex:(unint64_t)chapterIndex;
- (BOOL)isNotesFullscreenVisible;
- (BOOL)isPageBookmarked;
- (BOOL)isPageBookmarkedForDocumentViewController:(id)controller;
- (BOOL)isSinglePageInChapterForChapterBrowserController:(id)controller chapterIndex:(unint64_t)index;
- (BOOL)isStudyViewControllerVisible;
- (BOOL)isTOCVisible;
- (BOOL)isToolbarHidden;
- (BOOL)isTwoUpForChapterBrowserController:(id)controller;
- (BOOL)jumpToPageLocation:(id)location touchHistory:(BOOL)history minor:(BOOL)minor;
- (BOOL)navigateToAnchorInDVC:(id)c pulse:(BOOL)pulse;
- (BOOL)navigateToLinkInDVC:(id)c;
- (BOOL)navigationBarIsTranslucent:(id)translucent;
- (BOOL)p_isPageLocationValid:(id)valid;
- (BOOL)p_isPreorderBook;
- (BOOL)p_isSampleBook;
- (BOOL)p_isTOCViewController:(id)controller;
- (BOOL)p_jumpToBKCFIString:(id)string;
- (BOOL)p_jumpToFragment:(id)fragment;
- (BOOL)p_jumpToLocation:(id)location;
- (BOOL)p_restoreToLaunchPage;
- (BOOL)p_shouldAlertAboutRetinaUpdate;
- (BOOL)p_shouldSendVantageChangedNotificationWithReason:(id)reason;
- (BOOL)p_shouldShowShroudForVisibleSize:(CGSize)size;
- (BOOL)p_showBuyButton;
- (BOOL)prefersHomeIndicatorAutoHidden;
- (BOOL)readingStatisticsCollector:(id)collector needTOCEntriesForOrdinal:(int64_t)ordinal;
- (BOOL)readingStatisticsCollector:(id)collector needTextNodeCharacterCountsForOrdinal:(int64_t)ordinal;
- (BOOL)setupLoadSpinner;
- (BOOL)shouldAllowToolbarHover;
- (BOOL)shouldAutorotate;
- (BOOL)shouldShowChapterTitle;
- (BOOL)shouldShowFontResizeControls:(id)controls;
- (BOOL)useWhiteTheme;
- (CGImage)thumbnailImageForAbsolutePageIndex:(unint64_t)index;
- (CGRect)chapterBrowserController:(id)controller rectForRelativePageIndex:(unint64_t)index chapterIndex:(unint64_t)chapterIndex;
- (CGRect)chapterBrowserController:(id)controller targetRelativeRectForPoint:(CGPoint)point atPageIndex:(unint64_t)index chapterIndex:(unint64_t)chapterIndex;
- (CGRect)chapterBrowserController:(id)controller targetRelativeRectForRelativePoint:(CGPoint)point atPageIndex:(unint64_t)index chapterIndex:(unint64_t)chapterIndex;
- (CGRect)frameForHUDFromVendor:(id)vendor;
- (CGRect)p_navigationOverlayFrame;
- (CGRect)pageTargetRectForRevealingTOC;
- (THBookViewController)initWithBookDescription:(id)description;
- (THBookspotHistoryStack)bookspotHistoryStack;
- (THChapterBrowserController)chapterBrowserController;
- (THDocumentNavigationModel)navigationModel;
- (THDocumentNavigator)documentNavigator;
- (THFlowTOCViewController)flowTocViewController;
- (THNotesViewController)notesFullscreenViewController;
- (UIBarButtonItem)appearanceButtonItem;
- (UIBarButtonItem)bookmarkButtonItem;
- (UIBarButtonItem)brightnessButtonItem;
- (UIBarButtonItem)buyButtonItem;
- (UIBarButtonItem)closeButtonItem;
- (UIBarButtonItem)closeTOCButtonItem;
- (UIBarButtonItem)notesButtonItem;
- (UIBarButtonItem)searchButtonItem;
- (UIBarButtonItem)shareButtonItem;
- (UIBarButtonItem)tocGlossaryButtonItem;
- (UIButton)bookmarkButton;
- (double)toolbarHeight;
- (id)TOCViewControllerToolbarBackgroundColor:(id)color;
- (id)_analyticsContentSettingsData;
- (id)_analyticsReadingProgress;
- (id)_analyticsReadingSettingsData;
- (id)_analyticsSessionHost;
- (id)_currentLocation;
- (id)_storageAnchorForPageBookmark;
- (id)activityItemProviderWithCachedAnnotation:(id)annotation;
- (id)activityItemProviderWithCachedAnnotations:(id)annotations;
- (id)anchorFromLink:(id)link;
- (id)annotationID;
- (id)assetViewControllerViewForLiveResizeSnapshot;
- (id)backgroundColorForNavigationBar:(id)bar;
- (id)bookmarkFetchedResultsController;
- (id)cachedAnnotationForFetchedObject:(id)object;
- (id)canvasScrollViewForChapterBrowserController:(id)controller;
- (id)chapterBrowserController:(id)controller pageNumberStringForRelativePageIndex:(unint64_t)index andChapterIndex:(unint64_t)chapterIndex;
- (id)chapterBrowserController:(id)controller tocTileModelAtIndex:(unint64_t)index;
- (id)childViewControllerForStatusBarHidden;
- (id)contentData;
- (id)createButtonItemConfigurationWithImageName:(id)name forSelector:(SEL)selector;
- (id)currentPageInfoForBookmarks;
- (id)currentPresentationType;
- (id)documentRoot;
- (id)documentViewControllerWithDocument:(id)document;
- (id)foregroundTintColorForNavigationBar:(id)bar;
- (id)htmlGeneratorWithAnnotations:(id)annotations;
- (id)keyCommands;
- (id)leftToolbarItems:(BOOL)items;
- (id)navigationUnitForChapterBrowserController:(id)controller chapterIndex:(unint64_t)index;
- (id)overlayViewColorForLiveResize;
- (id)p_THCFIReaderStringFromBKCFIString:(id)string;
- (id)p_retinaUpdateAlertAttemptsKey;
- (id)p_retinaUpdateAlertDateKey;
- (id)p_selectedTocViewControllerCreateIfNecessary:(BOOL)necessary;
- (id)p_unselectedTocViewController;
- (id)pageNumberStringForAnnotation:(id)annotation;
- (id)pageNumberStringForLocation:(id)location;
- (id)presentationController:(id)controller viewControllerForAdaptivePresentationStyle:(int64_t)style;
- (id)presentationTypeForChapterBrowserController:(id)controller;
- (id)readingSessionData;
- (id)rightToolbarItems:(BOOL)items;
- (id)sectionNumberStringForLocation:(id)location;
- (id)sectionTitleStringForLocation:(id)location;
- (id)storageForCFI:(id)i;
- (id)storeURLForHTMLGenerator:(id)generator;
- (id)targetForAction:(SEL)action withSender:(id)sender;
- (id)tellAFriendBaseURLForHTMLGenerator:(id)generator;
- (id)themeForStyle:(int64_t)style;
- (id)titleColorForNavigationBar:(id)bar;
- (id)transitionContentBackgroundColor;
- (id)transitionContentView;
- (int64_t)adaptivePresentationStyleForPresentationController:(id)controller;
- (int64_t)adaptivePresentationStyleForPresentationController:(id)controller traitCollection:(id)collection;
- (int64_t)appearanceStyle;
- (int64_t)overrideUserInterfaceStyle;
- (int64_t)pageNumberForAnnotation:(id)annotation;
- (int64_t)positionForBar:(id)bar;
- (unint64_t)absolutePageIndexForCFI:(id)i;
- (unint64_t)absolutePageIndexForTileEntry:(id)entry;
- (unint64_t)chapterBrowserController:(id)controller relativePageIndexForLink:(id)link;
- (unint64_t)chapterCountForChapterBrowserController:(id)controller;
- (unint64_t)currentAbsolutePageIndex;
- (unint64_t)currentAbsolutePageIndexForBookmarks;
- (unint64_t)maxAbsolutePageIndexForNodeAtTileEntry:(id)entry;
- (void)TOCHideToolbarAnimated:(BOOL)animated;
- (void)TOCShowToolbarAnimated:(BOOL)animated;
- (void)_accessibilityInvertColorsStatusDidChange:(id)change;
- (void)_adjustSizeIncreasing:(BOOL)increasing;
- (void)_adjustTitleLabelTopConstraint;
- (void)_checkIfScanningReadingStatisticsCanBegin;
- (void)_disableAutoNightMode;
- (void)_enableAutoNightMode;
- (void)_showSearchPopoverFromSourceItem:(id)item withText:(id)text;
- (void)_showSearchPopoverShowingToolbarIfNeededFromBarButtonItem:(id)item text:(id)text;
- (void)_teardown;
- (void)_traitCollectionDidChange:(id)change previousTraitCollection:(id)collection;
- (void)_updateAppearanceFromLightLevelController:(id)controller;
- (void)_updateBuyButtonForDarkTheme:(BOOL)theme;
- (void)_updateCloseButtonItem;
- (void)addRemoveBookmarkCurrentPage;
- (void)appearanceViewController:(id)controller brightnessLevelDidChange:(float)change;
- (void)applyAppearanceStyle:(int64_t)style;
- (void)assetViewControllerDidOpenAnimated:(BOOL)animated;
- (void)assetViewControllerPrepareForReload;
- (void)assetViewControllerReadyToAnswerReadingStatisticsQueries;
- (void)assetViewControllerUpdateToolbars;
- (void)assetViewControllerUpdateToolbarsAfterOpenAnimation;
- (void)bc_analyticsVisibilityDidAppear;
- (void)bc_analyticsVisibilityWillDisappear;
- (void)bookOpenTransitionDidEnd;
- (void)bookView:(id)view didMoveToWindow:(id)window;
- (void)books_showGlossary:(id)glossary;
- (void)books_showHighlightsAndNotes:(id)notes;
- (void)books_showStudyCards:(id)cards;
- (void)books_showTableOfContents:(id)contents;
- (void)buildHoverRegions;
- (void)cancelPreloadOfContentNodes;
- (void)chapterBrowserController:(id)controller cancelledTransitionToPageIndex:(unint64_t)index chapterIndex:(unint64_t)chapterIndex;
- (void)chapterBrowserController:(id)controller didTransitionToPageIndex:(unint64_t)index chapterIndex:(unint64_t)chapterIndex relativeTargetRect:(CGRect)rect;
- (void)chapterBrowserController:(id)controller willTransitionToPageIndex:(unint64_t)index chapterIndex:(unint64_t)chapterIndex freeTransform:(BOOL)transform;
- (void)close:(BOOL)close;
- (void)closeDocument;
- (void)closeDocumentWithErrorBlock:(id)block;
- (void)closeDocumentWithReadLock:(id)lock;
- (void)coordinator:(id)coordinator observer:(id)observer didChangeLayout:(unint64_t)layout;
- (void)coordinator:(id)coordinator observer:(id)observer didChangeStyle:(unint64_t)style;
- (void)coordinator:(id)coordinator observerDidDecreaseFontSize:(id)size;
- (void)coordinator:(id)coordinator observerDidIncreaseFontSize:(id)size;
- (void)dealloc;
- (void)decreaseFontSize:(id)size;
- (void)didJumpToPageLocation:(id)location;
- (void)didLoadBook:(id)book;
- (void)didReceiveMemoryWarning;
- (void)didRevealTOC;
- (void)didSetNavigationBarHidden:(BOOL)hidden animated:(BOOL)animated;
- (void)didTransitionFromViewController:(id)controller toTOCViewController:(id)viewController;
- (void)dismissActivePopoverIsTransitioning:(BOOL)transitioning;
- (void)dismissBookmarkMenu:(BOOL)menu completion:(id)completion;
- (void)dismissDisplaySettings:(BOOL)settings;
- (void)dismissSearchPopover:(BOOL)popover completion:(id)completion;
- (void)dismissSharePopover:(BOOL)popover;
- (void)dismissTOCGlossaryView:(BOOL)view completion:(id)completion;
- (void)displaySettingsController:(id)controller didChangeAutoNightMode:(BOOL)mode;
- (void)displaySettingsController:(id)controller didChangeStyle:(int64_t)style;
- (void)displaySettingsControllerDidChangeFlowMode:(id)mode notifyingCoordinator:(BOOL)coordinator;
- (void)displaySettingsControllerDidChangeFontSize:(id)size toFlowSizeScale:(unint64_t)scale;
- (void)documentViewController:(id)controller bodyReps:(id)reps visibleRectIs:(CGRect)is;
- (void)emitReadingOrientationChangeEventIfNeeded;
- (void)endRevealTOC;
- (void)followAbsolutePageIndex:(unint64_t)index;
- (void)hideFullscreenNotesView:(id)view andSearchForText:(id)text animated:(BOOL)animated force:(BOOL)force completion:(id)completion;
- (void)hideGlossaryWithDestinationViewController:(id)controller;
- (void)hideGlossaryWithDestinationViewController:(id)controller animated:(BOOL)animated completion:(id)completion;
- (void)hideHUDForVendor:(id)vendor;
- (void)hideLoadSpinner;
- (void)hideTOC;
- (void)hideToolbarAnimated:(BOOL)animated;
- (void)hoverInteraction:(id)interaction didChangeStateForRegionWithKeys:(id)keys;
- (void)hoverInteractionDidSettle:(id)settle;
- (void)increaseFontSize:(id)size;
- (void)introMediaControllerMoviePlayerWillHideControls;
- (void)introMediaControllerMoviePlayerWillShowControls;
- (void)loadStudyViewControllerForAnimation:(BOOL)animation;
- (void)loadView;
- (void)navigateFromNotesViewToAnchorInDVC:(id)c completion:(id)completion;
- (void)open:(BOOL)open;
- (void)openToLocation:(id)location animated:(BOOL)animated;
- (void)p_TOCGlossaryPopoverDidHide;
- (void)p_addViewControllerInBack:(id)back animated:(BOOL)animated;
- (void)p_addViewControllerInFront:(id)front reason:(id)reason;
- (void)p_alertUserAboutAnnotationBehavior;
- (void)p_alertUserAboutDenyingBookmarkEditing;
- (void)p_alertUserAboutFontDownload;
- (void)p_alertUserAboutRetinaUpdate;
- (void)p_applyAccessibilityLabelForButton:(id)button withImageNamed:(id)named;
- (void)p_bookContentDidLoad;
- (void)p_bookViewDidRotateTransitionToSize:(CGSize)size withContext:(id)context;
- (void)p_bookViewWillAnimateRotationToSize:(CGSize)size withContext:(id)context;
- (void)p_bookViewWillRotateTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)p_bookViewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)p_bookmarkPopoverDidHide;
- (void)p_buildIntroMediaViewController;
- (void)p_cancelBookOpen;
- (void)p_cleanupAfterViewUnload;
- (void)p_clearNotesFullscreenViewController;
- (void)p_closeBookAndGoToStoreForRetinaUpdate;
- (void)p_closeBookAndGoToStorePageForBook;
- (void)p_displaySettingsDidHide;
- (void)p_ensureGlossaryViewController;
- (void)p_finishBookLoad;
- (void)p_finishBookLoadIfReady;
- (void)p_hideHUDView;
- (void)p_insertDVCInBackAnimated:(BOOL)animated;
- (void)p_kickOffIntroMediaIfNecessary;
- (void)p_loadNavigationOverlay;
- (void)p_loadTitleLabel;
- (void)p_loadToolbar;
- (void)p_navigationHistoryDidChange:(id)change;
- (void)p_openBook;
- (void)p_placeholderLocationDidChange;
- (void)p_postponeAlertForRetinaUpdate;
- (void)p_removeViewController:(id)controller;
- (void)p_savePlaceholder;
- (void)p_searchDidHide;
- (void)p_setCenterTitleForNavigationUnit:(id)unit;
- (void)p_setCenterTitleForTOC;
- (void)p_setCenterTitleToBookTitle;
- (void)p_setNavigationOverlayHidden:(BOOL)hidden animated:(BOOL)animated autoHides:(BOOL)hides;
- (void)p_setVisibleViewControllerToViewController:(id)controller reason:(id)reason;
- (void)p_setupCanvasExitTransformController;
- (void)p_setupDisplaySettingsIfNeeded;
- (void)p_shareDidHide;
- (void)p_showBookmarkMenu;
- (void)p_showDVC;
- (void)p_showDVCAnimated:(BOOL)animated withLink:(id)link;
- (void)p_showGlossary;
- (void)p_syncActionlessBookmarkToolbarButtonFrame;
- (void)p_unloadGlossaryViewControllerIfHiding;
- (void)p_unloadStudyViewController;
- (void)p_updateCanvasWithPendingPageIndexPath;
- (void)p_updateCenterTitle;
- (void)p_updateFromTheme:(BOOL)theme;
- (void)p_updateTOCForPresentationModeChange;
- (void)p_updateTOCForUpcomingPresentationModeChange;
- (void)p_updateTitleLabelToolbarVisible:(BOOL)visible animated:(BOOL)animated;
- (void)p_updateToolbarButtonStatesWithTraits:(id)traits;
- (void)paginationDidComplete;
- (void)preloadContentNodesForPageRange:(_NSRange)range chapterIndex:(unint64_t)index;
- (void)prepareForPopoverPresentation:(id)presentation;
- (void)presentationControllerDidDismiss:(id)dismiss;
- (void)putTOCInBack;
- (void)readingStatisticsCollector:(id)collector addTOCEntries:(id)entries ordinal:(int64_t)ordinal completion:(id)completion;
- (void)readingStatisticsCollector:(id)collector addTextNodeCharacterCounts:(id)counts ordinal:(int64_t)ordinal completion:(id)completion;
- (void)readingStatisticsCollector:(id)collector didShowContentWithCFIs:(id)is;
- (void)readingStatisticsCollector:(id)collector willHideContentWithCFIs:(id)is;
- (void)recordCurrentLocationInHistory;
- (void)recordOutgoingMajorNavigationJump;
- (void)removeBookmark:(id)bookmark;
- (void)removeTOC;
- (void)requestClose:(BOOL)close;
- (void)revealTOCAnimated:(BOOL)animated duration:(double)duration;
- (void)runPreloadOptimizations;
- (void)searchFinished:(BOOL)finished completion:(id)completion;
- (void)setAppearanceStyle:(int64_t)style;
- (void)setCenterTitle:(id)title;
- (void)setCenterTitleForCurrentNavigationUnit;
- (void)setCurrentPageBookmarked:(BOOL)bookmarked forBookmarkMenuPopoverViewController:(id)controller;
- (void)setPageBookmarked:(BOOL)bookmarked;
- (void)setPageBookmarked:(BOOL)bookmarked forDocumentViewController:(id)controller;
- (void)setPageIndexForProofing:(int64_t)proofing;
- (void)setPerformanceModeBookOpening:(BOOL)opening;
- (void)setToolbarHiddenFromAccessibility:(BOOL)accessibility;
- (void)settingNavigationBarHidden:(BOOL)hidden animated:(BOOL)animated;
- (void)setupDVCForTOCController:(id)controller;
- (void)showBookmarkMenu:(BOOL)menu fromItem:(id)item;
- (void)showBookmarksView:(id)view;
- (void)showDisplaySettingsPopover:(id)popover;
- (void)showFullscreenNotesView:(id)view completion:(id)completion;
- (void)showGlossary:(id)glossary;
- (void)showGlossaryEntry:(id)entry;
- (void)showGlossaryEntryAtPath:(id)path;
- (void)showHUDForVendor:(id)vendor;
- (void)showPageForModelLink:(id)link animated:(BOOL)animated;
- (void)showSharePopover:(id)popover;
- (void)showStudyCardsForNavigationUnit:(id)unit useChapterTitle:(id)title;
- (void)showTOC;
- (void)showTOCGlossaryPopover:(id)popover;
- (void)showToolbarAnimated:(BOOL)animated;
- (void)studyViewControllerIsDone:(id)done;
- (void)temporarilySetHUDViewHidden:(BOOL)hidden;
- (void)textForPagesLeftInChapterDidChangeTo:(id)to;
- (void)tocIsReadyToPresent:(id)present;
- (void)transitionDidFinish:(id)finish;
- (void)transitionWillBegin:(id)begin;
- (void)unrevealTOCAnimated:(BOOL)animated duration:(double)duration;
- (void)updateBookmarkButton;
- (void)updateNavigationAffordances;
- (void)updatePageNumberWidth;
- (void)updateViewBackgroundColor;
- (void)userWillInteractInToolbar;
- (void)validateCommand:(id)command;
- (void)vantageChangeWasCancelledBy:(id)by reason:(id)reason;
- (void)vantageDidChangeBy:(id)by reason:(id)reason;
- (void)vantageWillChangeBy:(id)by reason:(id)reason;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)viewsAreReadyForOpenAnimation;
- (void)viewsDidResize;
- (void)willFollowAnchor:(id)anchor pulse:(BOOL)pulse;
- (void)willJumpToPageLocation:(id)location;
- (void)willJumpToTOC;
- (void)willRevealTOC;
- (void)willSetNavigationBarHidden:(BOOL)hidden animated:(BOOL)animated;
@end

@implementation THBookViewController

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2 = [NSDictionary alloc];
    v3 = [v2 initWithObjectsAndKeys:{&off_49D0F0, qword_5677B8, 0}];
    [+[NSUserDefaults standardUserDefaults](NSUserDefaults registerDefaults:"registerDefaults:", v3];
  }
}

- (THBookViewController)initWithBookDescription:(id)description
{
  v7.receiver = self;
  v7.super_class = THBookViewController;
  v4 = [(THBookViewController *)&v7 init];
  if (v4)
  {
    v4->mBookDescription = description;
    v4->mIsCompleteBook = 1;
    [(THBookViewController *)v4 setOpeningAbsolutePageIndexOverride:0x7FFFFFFFFFFFFFFFLL];
    [(THBookViewController *)v4 setTheme:[(THBookViewController *)v4 themeForStyle:[(THBookViewController *)v4 appearanceStyle]]];
    [(THBookViewController *)v4 updateViewBackgroundColor];
    v5 = objc_alloc_init(THReadingStatisticsCollector);
    v4->_readingStatisticsCollector = v5;
    [(THReadingStatisticsCollector *)v5 setDelegate:v4];
    v4->_performanceModeBookOpening = 1;
    if ([(THBookDescription *)v4->mBookDescription isEpub])
    {
      [-[THBookViewController view](v4 "view")];
    }

    [(THBookViewController *)v4 registerForTraitChanges:+[UITraitCollection withAction:"bc_allAPITraits"], "_traitCollectionDidChange:previousTraitCollection:"];
  }

  return v4;
}

- (void)updateViewBackgroundColor
{
  v3 = [UIColor bc_darkSystemBackgroundForTraitCollection:[(THBookViewController *)self traitCollection]];
  if ([(THBookDescription *)self->mBookDescription isEpub])
  {
    v3 = [(THTheme *)[(THBookViewController *)self theme] backgroundColorForTraitEnvironment:self];
  }

  [(THBookViewController *)self setViewBackgroundColor:v3];
}

+ (id)themeMap
{
  if (qword_5677C8 != -1)
  {
    sub_29CF80();
  }

  return qword_5677C0;
}

- (id)childViewControllerForStatusBarHidden
{
  if (self->_settingToolbarHidden)
  {
    return [(THBookViewController *)self visibleViewController];
  }

  else
  {
    return 0;
  }
}

- (BOOL)prefersHomeIndicatorAutoHidden
{
  titleLabelNavigationBar = [(THBookViewController *)self titleLabelNavigationBar];

  return [(BCDisplayOnlyNavigationBar *)titleLabelNavigationBar isHidden];
}

- (void)p_cleanupAfterViewUnload
{
  [(THBookViewController *)self setVisibleViewController:0];
  [(THBookViewController *)self setFlowTocViewController:0];
  [(THTOCViewController *)self->mChapterBrowserController setDelegate:0];
  self->mChapterBrowserController = 0;
  [(THBookViewController *)self setBookmarkButtonItem:0];
  [(THBookViewController *)self setBookmarkButton:0];
  [(THBookViewController *)self setBrightnessButtonItem:0];
  [(THBookViewController *)self setAppearanceButtonItem:0];
  [(THBookViewController *)self setSearchButtonItem:0];
  [(THBookViewController *)self setNotesButtonItem:0];
  [(THBookViewController *)self setTocGlossaryButtonItem:0];
  [(THBookViewController *)self setCloseButtonItem:0];
  [(THBookViewController *)self setCloseTOCButtonItem:0];
  [(THBookViewController *)self setActionlessBookmarkButton:0];
  [(THBookViewController *)self setShareButtonItem:0];
  [(THNavigationBarController *)[(THBookViewController *)self navigationBarController] setDelegate:0];
  [(THBookViewController *)self setNavigationBarController:0];
  [(THBookViewController *)self setIntroMediaViewController:0];
  [(THNavigationHistoryStepperController *)self->navigationHistoryStepperController setBookspotHistoryStack:0];
  [(THNavigationHistoryStepperController *)self->navigationHistoryStepperController setPageIndexFormatter:0];
  [(THNavigationHistoryStepperController *)self->navigationHistoryStepperController setChrome:0];

  self->navigationHistoryStepperController = 0;
  [(THBookViewController *)self setNavigationOverlayView:0];

  self->mTitleLabel = 0;
  self->mTitleLabelNavigationBar = 0;

  self->mTitleLabelNavigationBarTopConstraint = 0;
  self->mCanvasExitTransformDelegate = 0;

  self->mCanvasExitTransformController = 0;
  [(THBookViewController *)self p_clearNotesFullscreenViewController];
  [(THBookViewController *)self setSearchViewController:0];

  self->mDebugPopover = 0;
  v3 = +[NSNotificationCenter defaultCenter];

  [(NSNotificationCenter *)v3 removeObserver:self];
}

- (void)dealloc
{
  [(THBookViewController *)self _teardown];
  [NSObject cancelPreviousPerformRequestsWithTarget:self selector:"pAutoHideNavOverlay" object:0];
  [+[THApplePubAssetPlugin sharedPlugin](THApplePubAssetPlugin "sharedPlugin")];

  self->mDocument = 0;
  [(THBookViewController *)self p_cleanupAfterViewUnload];
  [(THBookViewController *)self setBookDescription:0];
  [(THBookViewController *)self setReadingProgressHighwaterMark:0];
  [(THDocumentViewController *)[(THBookViewController *)self documentViewController] setToolbarDelegate:0];
  [(THBookViewController *)self setDocumentViewController:0];
  [(THBookViewController *)self setBookLinkResolver:0];
  [(THBookViewController *)self setOpeningCFIOverride:0];
  [(THBookViewController *)self setOpeningLocationOverride:0];

  self->mGlossaryViewController = 0;
  [(THBookViewController *)self setViewBackgroundColor:0];
  [(THBookViewController *)self setHUDOverlayView:0];
  [(THBookViewController *)self setHoverInteraction:0];

  self->mBookmarkViewController = 0;
  self->mTOCGlossaryViewController = 0;

  self->mDisplaySettingsViewController = 0;
  self->_searchViewController = 0;

  self->_activityViewController = 0;
  [(THBookViewController *)self setTheme:0];

  self->_readingStatisticsCollector = 0;
  objc_opt_class();
  [(THBookViewController *)self viewIfLoaded];
  [BUDynamicCast() setBookDelegate:0];

  self->_analyticsReadStartDate = 0;
  [(THBookViewController *)self bc_setBookAppEntityVisible:0];
  v3.receiver = self;
  v3.super_class = THBookViewController;
  [(THBookViewController *)&v3 dealloc];
}

- (THBookspotHistoryStack)bookspotHistoryStack
{
  if (![(THBookViewController *)self documentRoot])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  v3 = [-[THBookViewController documentRoot](self "documentRoot")];
  if (!v3)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  return v3;
}

- (id)documentRoot
{
  documentRoot = [(THDocumentViewController *)[(THBookViewController *)self documentViewController] documentRoot];
  if (!documentRoot)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  return documentRoot;
}

- (THDocumentNavigationModel)navigationModel
{
  v2 = [-[THDocumentViewController documentRoot](-[THBookViewController documentViewController](self "documentViewController")];
  if (!v2)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  return v2;
}

- (THChapterBrowserController)chapterBrowserController
{
  if (!self->mChapterBrowserController && [(THBookViewController *)self bookDescription]&& ![(THBookViewController *)self isBookEpub])
  {
    v4 = [(THTOCViewController *)[THChapterBrowserController alloc] initWithBookPropertiesDelegate:self delegate:self];
    self->mChapterBrowserController = v4;
    [(THBookViewController *)self addChildViewController:v4];
    -[THTOCViewController setDataSource:](self->mChapterBrowserController, "setDataSource:", [-[THBookViewController documentRoot](self "documentRoot")]);
    [(THChapterBrowserController *)self->mChapterBrowserController setPageAreaBackgroundColor:[(THBookViewController *)self viewBackgroundColor]];
  }

  return self->mChapterBrowserController;
}

- (THFlowTOCViewController)flowTocViewController
{
  if (!self->mFlowTocViewController)
  {
    v3 = [(THTOCViewController *)[THFlowTOCViewController alloc] initWithBookPropertiesDelegate:self delegate:self];
    self->mFlowTocViewController = v3;
    [(THBookViewController *)self addChildViewController:v3];
    -[THTOCViewController setDataSource:](self->mFlowTocViewController, "setDataSource:", [-[THBookViewController documentRoot](self "documentRoot")]);
    -[THFlowTOCViewController setZipPackage:](self->mFlowTocViewController, "setZipPackage:", [-[THBookViewController documentRoot](self "documentRoot")]);
    [(THFlowTOCViewController *)self->mFlowTocViewController setDrmContext:[(THBookDescription *)[(THBookViewController *)self bookDescription] drmContext]];
    [(THFlowTOCViewController *)self->mFlowTocViewController setHasPaginatedData:[(THBookViewController *)self isBookEpub]^ 1];
    if ([(THBookViewController *)self isBookEpub])
    {
      [(THFlowTOCViewController *)self->mFlowTocViewController setTheme:[(THBookViewController *)self theme]];
    }
  }

  return self->mFlowTocViewController;
}

- (THNotesViewController)notesFullscreenViewController
{
  result = self->mNotesFullscreenViewController;
  if (!result)
  {
    v4 = +[THNotesViewController newNotesViewController];
    self->mNotesFullscreenViewController = v4;
    [(THNotesViewController *)v4 setBookViewController:self];
    [(THNotesViewController *)self->mNotesFullscreenViewController setModalPresentationStyle:0];
    if ([(THBookViewController *)self isBookEpub])
    {
      [(THNotesViewController *)self->mNotesFullscreenViewController setTheme:[(THBookViewController *)self theme]];
    }

    [(THNotesViewController *)self->mNotesFullscreenViewController view];
    return self->mNotesFullscreenViewController;
  }

  return result;
}

- (void)p_clearNotesFullscreenViewController
{
  [(THNotesViewController *)self->mNotesFullscreenViewController setBookViewController:0];

  self->mNotesFullscreenViewController = 0;
}

- (void)appearanceViewController:(id)controller brightnessLevelDidChange:(float)change
{
  v6 = +[BAEventReporter sharedReporter];
  ba_effectiveAnalyticsTracker = [(THBookViewController *)self ba_effectiveAnalyticsTracker];
  readingSessionData = [(THBookViewController *)self readingSessionData];
  contentData = [(THBookViewController *)self contentData];
  LODWORD(v10) = llroundf(change * 100.0);

  [v6 emitReadingBrightnessChangeEventWithTracker:ba_effectiveAnalyticsTracker readingSessionData:readingSessionData contentData:contentData brightness:v10];
}

- (void)displaySettingsControllerDidChangeFontSize:(id)size toFlowSizeScale:(unint64_t)scale
{
  v6 = +[BAEventReporter sharedReporter];
  ba_effectiveAnalyticsTracker = [(THBookViewController *)self ba_effectiveAnalyticsTracker];
  readingSessionData = [(THBookViewController *)self readingSessionData];
  contentData = [(THBookViewController *)self contentData];
  *&v10 = scale;
  [v6 emitReadingFontSizeChangeEventWithTracker:ba_effectiveAnalyticsTracker readingSessionData:readingSessionData contentData:contentData fontSize:v10];
  visibleViewController = [(THBookViewController *)self visibleViewController];
  if (visibleViewController == [(THBookViewController *)self documentViewController])
  {
    documentViewController = [(THBookViewController *)self documentViewController];

    [(THDocumentViewController *)documentViewController changeFontSize:scale];
  }
}

- (BOOL)shouldShowFontResizeControls:(id)controls
{
  visibleViewController = [(THBookViewController *)self visibleViewController];
  if (visibleViewController != [(THBookViewController *)self documentViewController])
  {
    return 0;
  }

  if ([(THDocumentViewController *)[(THBookViewController *)self documentViewController] inFlowMode])
  {
    return 1;
  }

  return [(THBookViewController *)self isBookEpub];
}

- (void)displaySettingsController:(id)controller didChangeStyle:(int64_t)style
{
  [+[BAEventReporter sharedReporter](BAEventReporter "sharedReporter")];

  [(THBookViewController *)self applyAppearanceStyle:style];
}

- (void)displaySettingsController:(id)controller didChangeAutoNightMode:(BOOL)mode
{
  modeCopy = mode;
  [+[BAEventReporter sharedReporter](BAEventReporter sharedReporter];
  v6 = +[IMTheme isAutoNightModeEnabled];
  [IMTheme setAutoNightModeEnabled:modeCopy];
  if (modeCopy)
  {
    if ((v6 & 1) == 0)
    {

      [(THBookViewController *)self _enableAutoNightMode];
    }
  }

  else
  {
    if (v6)
    {
      [(THBookViewController *)self _disableAutoNightMode];
    }

    styleBeforeAutoNight = [(THBookViewController *)self styleBeforeAutoNight];

    [(THBookViewController *)self applyAppearanceStyle:styleBeforeAutoNight];
  }
}

- (BOOL)flowModeEnabled:(id)enabled
{
  documentViewController = [(THBookViewController *)self documentViewController];

  return [(THDocumentViewController *)documentViewController showFlowModeIfAvailable];
}

- (BOOL)autoNightModeEnabled:(id)enabled
{
  isBookEpub = [(THBookViewController *)self isBookEpub];
  if (isBookEpub)
  {

    LOBYTE(isBookEpub) = +[IMTheme isAutoNightModeEnabled];
  }

  return isBookEpub;
}

- (void)_enableAutoNightMode
{
  if ([(THBookViewController *)self isBookEpub])
  {
    v3 = +[BCLightLevelController sharedInstance];
    objc_initWeak(&location, self);
    v4 = _NSConcreteStackBlock;
    v5 = 3221225472;
    v6 = sub_7EA20;
    v7 = &unk_45C440;
    objc_copyWeak(&v8, &location);
    [(BCLightLevelController *)v3 addObserver:self changeHandler:&v4];
    [(THBookViewController *)self _updateAppearanceFromLightLevelController:v3, v4, v5, v6, v7];
    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

- (void)_disableAutoNightMode
{
  v3 = +[BCLightLevelController sharedInstance];

  [(BCLightLevelController *)v3 removeObserver:self];
}

- (void)_updateAppearanceFromLightLevelController:(id)controller
{
  if (-[THBookViewController isBookEpub](self, "isBookEpub") && +[IMTheme isAutoNightModeEnabled](IMTheme, "isAutoNightModeEnabled") && [controller shouldMonitorLightLevel])
  {
    styleBeforeAutoNight = self->_styleBeforeAutoNight;
    if ([controller currentLightLevel] == &dword_0 + 2)
    {
      v6 = 3;
    }

    else
    {
      v6 = styleBeforeAutoNight;
    }

    [(THBookViewController *)self applyAppearanceStyle:v6];
  }
}

- (void)displaySettingsControllerDidChangeFlowMode:(id)mode notifyingCoordinator:(BOOL)coordinator
{
  coordinatorCopy = coordinator;
  [(THDocumentReflowableLayoutConfiguration *)[(THDocumentViewController *)[(THBookViewController *)self documentViewController] configuration] invalidate];
  [(THDocumentViewController *)[(THBookViewController *)self documentViewController] toggleFlowPresentation];
  [(THBookViewController *)self p_updateFromTheme:0];
  v6 = +[NSNotificationCenter defaultCenter];
  [(NSNotificationCenter *)v6 postNotificationName:THScrollingViewDidChangeNotification object:0];
  if (coordinatorCopy)
  {
    if ([(THDocumentReflowableLayoutConfiguration *)[(THDocumentViewController *)[(THBookViewController *)self documentViewController] configuration] isScroll])
    {
      v7 = 2;
    }

    else
    {
      v7 = 1;
    }

    v8 = +[BCThemeCoordinator shared];

    [v8 observer:self didChangeLayout:v7];
  }
}

- (BOOL)p_isTOCViewController:(id)controller
{
  if (!controller)
  {
    return 0;
  }

  if (self->mFlowTocViewController == controller || self->mChapterBrowserController == controller)
  {
    return 1;
  }

  return self->mFlowToCTableViewController == controller;
}

- (void)loadView
{
  v5.receiver = self;
  v5.super_class = THBookViewController;
  [(THBookViewController *)&v5 loadView];
  v3 = [THBookView alloc];
  [-[THBookViewController view](self "view")];
  v4 = [(THBookView *)v3 initWithFrame:1 expandedLayout:?];
  [(THBookView *)v4 setBookDelegate:self];
  [(THBookView *)v4 setBackgroundColor:[(THBookViewController *)self defaultBackgroundColor]];
  [(THBookView *)v4 setAutoresizingMask:18];
  [(THBookViewController *)self setView:v4];
  [(THBookViewController *)self setEdgesForExtendedLayout:15];
  [(THBookViewController *)self setExtendedLayoutIncludesOpaqueBars:1];
  [(THBookViewController *)self p_loadToolbar];
  [(THBookViewController *)self p_loadNavigationOverlay];
  [(THBookViewController *)self p_loadTitleLabel];
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = THBookViewController;
  [(THBookViewController *)&v5 viewDidLoad];
  v3 = +[NSNotificationCenter defaultCenter];
  [(NSNotificationCenter *)v3 addObserver:self selector:"p_navigationHistoryDidChange:" name:THNavigationHistoryDidChangeNotification object:0];
  [(NSNotificationCenter *)v3 addObserver:self selector:"_accessibilityInvertColorsStatusDidChange:" name:UIAccessibilityInvertColorsStatusDidChangeNotification object:0];
  [(NSNotificationCenter *)v3 addObserver:self selector:"_voiceOverSwitchControlStatusDidChange" name:UIAccessibilityVoiceOverStatusDidChangeNotification object:0];
  self->_smartInvertEnabled = UIAccessibilityIsInvertColorsEnabled();
  [(THBookViewController *)self setStyleBeforeAutoNight:[(THBookViewController *)self appearanceStyle]];
  if ([+[UIDevice orientation]- 3 >= &dword_0 + 2 currentDevice]
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  [(THBookViewController *)self setLastAnalyticsDeviceOrientationReported:v4];
  [(THBookViewController *)self bc_setBookAppEntityVisible:[(AEAsset *)[(THBookViewController *)self asset] assetID]];
}

- (void)didReceiveMemoryWarning
{
  if (self->mIsClosing)
  {
    v4.receiver = self;
    v4.super_class = THBookViewController;
    [(THBookViewController *)&v4 didReceiveMemoryWarning];
  }

  if (![(THBookViewController *)self isNotesFullscreenVisible])
  {
    [(THBookViewController *)self p_clearNotesFullscreenViewController];
  }

  if (![(THBookViewController *)self isGlossaryVisible])
  {

    self->mGlossaryViewController = 0;
  }

  v3 = [-[THBookViewController documentRoot](self "documentRoot")];
  if ([(THBookViewController *)self p_isSearchVisible])
  {
    [v3 setUnloadRequested:1];
  }

  else
  {
    [v3 unloadIndex];
    [(THBookViewController *)self setSearchViewController:0];
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  [(THNavigationBarController *)[(THBookViewController *)self navigationBarController] setNavigationBarHidden:[(THBookViewController *)self shouldAutohideNavigationBar] animated:0];
  [+[BCThemeCoordinator shared](BCThemeCoordinator "shared")];
  if (![(THBookViewController *)self bc_contextualPresentedViewController]&& +[IMTheme isAutoNightModeEnabled])
  {
    [(THBookViewController *)self _enableAutoNightMode];
  }

  if ([(THBookViewController *)self isMovingToParentViewController])
  {
    [(THBookViewController *)self p_updateToolbarButtonStates];
    [(THBookViewController *)self p_updateFromTheme:0];
    if ([(THBookViewController *)self p_hasDestinationPage])
    {
      [(THBookViewController *)self p_showDVC];
    }
  }

  v5.receiver = self;
  v5.super_class = THBookViewController;
  [(THBookViewController *)&v5 viewWillAppear:appearCopy];
  if (self->mHaveCalledDidOpen)
  {
    [(THBookViewController *)self viewsAreReadyForOpenAnimation];
  }
}

- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear
{
  v6.receiver = self;
  v6.super_class = THBookViewController;
  [(THBookViewController *)&v6 viewDidMoveToWindow:window shouldAppearOrDisappear:disappear];
  if (window)
  {
    [(THBookViewController *)self _updateCloseButtonItem];
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = THBookViewController;
  [(THBookViewController *)&v4 viewWillDisappear:disappear];
  [+[BCThemeCoordinator shared](BCThemeCoordinator "shared")];
  [(THBookViewController *)self bc_analyticsVisibilitySubtreeWillDisappear];
  [+[NSNotificationCenter defaultCenter](NSNotificationCenter postNotificationName:"postNotificationName:object:" object:@"kTHPPT_bookControllerChange", 0];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = THBookViewController;
  [(THBookViewController *)&v4 viewDidDisappear:disappear];
  [(THBookViewController *)self bc_analyticsVisibilitySubtreeDidDisappear];
  if (![(THBookViewController *)self presentedViewController])
  {
    if (+[IMTheme isAutoNightModeEnabled])
    {
      [(THBookViewController *)self _disableAutoNightMode];
    }

    [+[NSUserDefaults standardUserDefaults](NSUserDefaults setInteger:"setInteger:forKey:" forKey:[(THBookViewController *)self styleBeforeAutoNight], @"THBookViewControllerStyleBeforeAutoNight"];
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = THBookViewController;
  [(THBookViewController *)&v5 viewDidAppear:appear];
  [(THBookViewController *)self bc_analyticsVisibilityUpdateSubtree];
  [objc_msgSend(-[THBookViewController view](self "view")];
  [(THBookViewController *)self p_updateCenterTitle];
  mBookOpener = self->mBookOpener;
  if (mBookOpener && ([(THBookOpener *)mBookOpener isFinished]& 1) == 0)
  {
    [(THBookViewController *)self p_alertUserAboutFontDownload];
  }

  [+[NSNotificationCenter defaultCenter](NSNotificationCenter postNotificationName:"postNotificationName:object:" object:@"kTHPPT_bookControllerChange", self];
}

- (void)p_updateTitleLabelToolbarVisible:(BOOL)visible animated:(BOOL)animated
{
  animatedCopy = animated;
  if (visible && [-[THBookViewController currentPresentationType](self "currentPresentationType")])
  {
    [-[THBookViewController view](self "view")];
    [(BCDisplayOnlyNavigationBar *)[(THBookViewController *)self titleLabelNavigationBar] setLeftItems:&__NSArray0__struct rightItems:&__NSArray0__struct titleView:[(THBookViewController *)self titleLabel] animated:0];
    [(UILabel *)[(THBookViewController *)self titleLabel] sizeToFit];
    [-[THBookViewController view](self "view")];
    [(THBookViewController *)self p_syncActionlessBookmarkToolbarButtonFrame];
    if (!animatedCopy)
    {
      [(BCDisplayOnlyNavigationBar *)[(THBookViewController *)self titleLabelNavigationBar] setAlpha:1.0];
      [(BCDisplayOnlyNavigationBar *)[(THBookViewController *)self titleLabelNavigationBar] setHidden:0];
      goto LABEL_10;
    }

    v23 = _NSConcreteStackBlock;
    v24 = 3221225472;
    v25 = sub_7F4DC;
    v26 = &unk_45AE00;
    selfCopy = self;
    v18 = _NSConcreteStackBlock;
    v19 = 3221225472;
    v20 = sub_7F50C;
    v21 = &unk_45B188;
    selfCopy2 = self;
    v6 = &v23;
    v7 = &v18;
  }

  else
  {
    if (!animatedCopy)
    {
      [(BCDisplayOnlyNavigationBar *)[(THBookViewController *)self titleLabelNavigationBar] setLeftItems:&__NSArray0__struct rightItems:&__NSArray0__struct titleView:0 animated:0];
      [(BCDisplayOnlyNavigationBar *)[(THBookViewController *)self titleLabelNavigationBar] setAlpha:0.0];
      [(BCDisplayOnlyNavigationBar *)[(THBookViewController *)self titleLabelNavigationBar] setHidden:1];
      [(UIButton *)[(THBookViewController *)self actionlessBookmarkButton] setAlpha:0.0];
      goto LABEL_10;
    }

    v13 = _NSConcreteStackBlock;
    v14 = 3221225472;
    v15 = sub_7F53C;
    v16 = &unk_45AE00;
    selfCopy3 = self;
    v8 = _NSConcreteStackBlock;
    v9 = 3221225472;
    v10 = sub_7F588;
    v11 = &unk_45B188;
    selfCopy4 = self;
    v6 = &v13;
    v7 = &v8;
  }

  [UIView animateWithDuration:v6 animations:v7 completion:0.15, v8, v9, v10, v11, selfCopy4, v13, v14, v15, v16, selfCopy3, v18, v19, v20, v21, selfCopy2, v23, v24, v25, v26, selfCopy];
LABEL_10:
  [(THBookViewController *)self setNeedsUpdateOfHomeIndicatorAutoHidden];
}

- (void)_adjustTitleLabelTopConstraint
{
  v3 = [objc_msgSend(-[THDocumentViewController bc_windowForViewController](-[THBookViewController documentViewController](self "documentViewController")];
  v4 = 0.0;
  if ([-[THBookViewController currentPresentationType](self "currentPresentationType")] && -[THBookViewController im_isCompactHeight](self, "im_isCompactHeight") && (v3 - 3) <= 1)
  {
    [-[THBookViewController view](self "view")];
    v4 = -v5;
  }

  titleLabelNavigationBarTopConstraint = [(THBookViewController *)self titleLabelNavigationBarTopConstraint];

  [(NSLayoutConstraint *)titleLabelNavigationBarTopConstraint setConstant:v4];
}

- (void)viewWillLayoutSubviews
{
  [(THBookViewController *)self _adjustTitleLabelTopConstraint];
  configuration = [(THDocumentViewController *)[(THBookViewController *)self documentViewController] configuration];

  [(THDocumentReflowableLayoutConfiguration *)configuration invalidate];
}

- (void)viewDidLayoutSubviews
{
  v10.receiver = self;
  v10.super_class = THBookViewController;
  [(THBookViewController *)&v10 viewDidLayoutSubviews];
  if (![(THBookViewController *)self hoverInteraction])
  {
    -[THBookViewController setHoverInteraction:](self, "setHoverInteraction:", [[BCUIHoverInteraction alloc] initWithDelegate:self view:{-[THBookViewController view](self, "view")}]);
    [-[THBookViewController view](self "view")];
  }

  [(THBookViewController *)self buildHoverRegions];
  [(THBookViewController *)self p_navigationOverlayFrame];
  [(THNavigationOverlayView *)[(THBookViewController *)self navigationOverlayView] setFrame:v3, v4, v5, v6];
  if ([(THBookViewController *)self documentViewController]&& [(THBookViewController *)self isBookEpub])
  {
    [(UIView *)[(THDocumentViewController *)[(THBookViewController *)self documentViewController] navigationOverlayContainer] addSubview:[(THBookViewController *)self navigationOverlayView]];
    [(THNavigationOverlayView *)[(THBookViewController *)self navigationOverlayView] addSubview:[(THDocumentViewController *)[(THBookViewController *)self documentViewController] navOverlayPageNumberView]];
    v7 = 1;
  }

  else
  {
    [-[THBookViewController view](self "view")];
    v7 = 0;
  }

  if (!self->mDocumentToTOCViewTransitionView && !self->mTOCToDocumentViewTransitionView)
  {
    if (!v7 || ![-[THBookViewController currentPresentationType](self "currentPresentationType")] || (v8 = -[THBookViewController visibleViewController](self, "visibleViewController"), v8 != -[THBookViewController documentViewController](self, "documentViewController")) || -[THDocumentViewController showingExpandedWidgetView](-[THBookViewController documentViewController](self, "documentViewController"), "showingExpandedWidgetView"))
    {
      v9 = 0;
LABEL_14:
      [(THBookViewController *)self p_updateTitleLabelToolbarVisible:v9 animated:0];
      return;
    }

    if ([(THNavigationBarController *)[(THBookViewController *)self navigationBarController] isNavigationBarHidden])
    {
      v9 = 1;
      goto LABEL_14;
    }
  }
}

- (void)p_syncActionlessBookmarkToolbarButtonFrame
{
  view = [(THBookViewController *)self view];
  [(UIButton *)[(THBookViewController *)self bookmarkButton] frame];
  [view convertRect:-[UIButton superview](-[THBookViewController bookmarkButton](self fromView:{"bookmarkButton"), "superview"), v4, v5, v6, v7}];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  actionlessBookmarkButton = [(THBookViewController *)self actionlessBookmarkButton];

  [(UIButton *)actionlessBookmarkButton setFrame:v9, v11, v13, v15];
}

- (int64_t)overrideUserInterfaceStyle
{
  v4.receiver = self;
  v4.super_class = THBookViewController;
  result = [(THBookViewController *)&v4 overrideUserInterfaceStyle];
  if (!result)
  {
    objc_opt_class();
    [(THBookViewController *)self theme];
    result = TSUDynamicCast();
    if (result)
    {
      return [result userInterfaceStyle];
    }
  }

  return result;
}

- (void)p_bookViewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  v5 = [(THBookViewController *)self visibleViewController:coordinator];
  if (v5 == [(THBookViewController *)self documentViewController]&& [(THBookViewController *)self tocViewControllerMayBeShrouded:[(THBookViewController *)self p_selectedTocViewController]])
  {
    mChapterBrowserController = self->mChapterBrowserController;

    [(THTOCViewController *)mChapterBrowserController setShrouded:1 animated:0 duration:0.0];
  }
}

- (void)p_bookViewWillRotateTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  v5 = [(THBookViewController *)self visibleViewController:coordinator];
  if (v5 == [(THBookViewController *)self documentViewController]&& [(THBookViewController *)self tocViewControllerMayBeShrouded:[(THBookViewController *)self p_selectedTocViewController]])
  {
    [(THTOCViewController *)self->mChapterBrowserController setShrouded:1 animated:0 duration:0.0];
  }

  v6 = +[NSNotificationCenter defaultCenter];
  v7 = TSKWillRotateToInterfaceOrientationNotification;
  v8 = +[NSDictionary dictionary];

  [(NSNotificationCenter *)v6 postNotificationName:v7 object:self userInfo:v8];
}

- (void)p_bookViewWillAnimateRotationToSize:(CGSize)size withContext:(id)context
{
  [(THBookViewController *)self temporarilySetHUDViewHidden:1, size.width, size.height];

  [(THBookViewController *)self updateBookmarkButton];
}

- (void)p_bookViewDidRotateTransitionToSize:(CGSize)size withContext:(id)context
{
  v5 = [(THBookViewController *)self visibleViewController:context];
  if (v5 == [(THBookViewController *)self documentViewController]&& [(THBookViewController *)self tocViewControllerMayBeShrouded:[(THBookViewController *)self p_selectedTocViewController]])
  {
    [(THTOCViewController *)self->mChapterBrowserController setShrouded:1 animated:0 duration:0.0];
  }

  v6 = +[NSNotificationCenter defaultCenter];
  v7 = TSKDidRotateToInterfaceOrientationNotification;
  v8 = +[NSDictionary dictionary];

  [(NSNotificationCenter *)v6 postNotificationName:v7 object:self userInfo:v8];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  if ([(AEAssetViewControllerDelegate *)[(THBookViewController *)self assetViewControllerDelegate] inLiveResize])
  {
    v18.receiver = self;
    v18.super_class = THBookViewController;
    [(THBookViewController *)&v18 viewWillTransitionToSize:coordinator withTransitionCoordinator:width, height];
  }

  else
  {
    [(THBookViewController *)self dismissActivePopoverIsTransitioning:1];
    if (coordinator)
    {
      [coordinator targetTransform];
    }

    else
    {
      memset(&v17, 0, sizeof(v17));
    }

    IsIdentity = CGAffineTransformIsIdentity(&v17);
    v9 = !IsIdentity;
    if (IsIdentity)
    {
      [(THBookViewController *)self p_bookViewWillTransitionToSize:coordinator withTransitionCoordinator:width, height];
    }

    else
    {
      [(THBookViewController *)self p_bookViewWillRotateTransitionToSize:coordinator withTransitionCoordinator:width, height];
    }

    v17.a = 0.0;
    *&v17.b = &v17;
    *&v17.c = 0x2020000000;
    LOBYTE(v17.d) = 0;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_7FE5C;
    v15[3] = &unk_45B470;
    v16 = v9;
    v15[4] = self;
    v15[5] = &v17;
    *&v15[6] = width;
    *&v15[7] = height;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_7FEA4;
    v13[3] = &unk_45C468;
    v13[4] = self;
    v13[5] = &v17;
    v14 = v9;
    *&v13[6] = width;
    *&v13[7] = height;
    v10 = [coordinator animateAlongsideTransition:v15 completion:v13];
    *(*&v17.b + 24) = v10;
    v12.receiver = self;
    v12.super_class = THBookViewController;
    [(THBookViewController *)&v12 viewWillTransitionToSize:coordinator withTransitionCoordinator:width, height];
    visibleViewController = [(THBookViewController *)self visibleViewController];
    if (visibleViewController != [(THBookViewController *)self documentViewController])
    {
      [(THDocumentViewController *)[(THBookViewController *)self documentViewController] updateTwoUpForSize:width, height];
    }

    _Block_object_dispose(&v17, 8);
  }
}

- (void)p_updateToolbarButtonStatesWithTraits:(id)traits
{
  im_isCompactWidth = [(THBookViewController *)self im_isCompactWidth];
  if (traits)
  {
    v6 = [traits horizontalSizeClass] == &dword_0 + 1;
  }

  else
  {
    v6 = im_isCompactWidth;
  }

  [(THNavigationBarController *)[(THBookViewController *)self navigationBarController] setLeftItems:[(THBookViewController *)self leftToolbarItems:v6] rightItems:[(THBookViewController *)self rightToolbarItems:v6]];
  if ([(THBookViewController *)self p_showBuyButton])
  {
    buyButtonItem = [(THBookViewController *)self buyButtonItem];
    if (buyButtonItem)
    {
      v11 = buyButtonItem;
      -[BCNavigationBar setPinnedTrailingGroup:](-[THNavigationBarController navigationBar](-[THBookViewController navigationBarController](self, "navigationBarController"), "navigationBar"), "setPinnedTrailingGroup:", [[UIBarButtonItemGroup alloc] initWithBarButtonItems:+[NSArray arrayWithObjects:count:](NSArray representativeItem:{"arrayWithObjects:count:", &v11, 1), 0}]);
    }
  }

  [(THBookViewController *)self updateBookmarkButton];
  v8 = [objc_msgSend(-[THDocumentViewController documentRoot](-[THBookViewController documentViewController](self "documentViewController")];
  v9 = (-[THBookViewController isTOCButtonApplicable](self, "isTOCButtonApplicable") || [v8 entryCount] >= 1) && -[THBookViewController isCompleteBook](self, "isCompleteBook");
  [(UIBarButtonItem *)[(THBookViewController *)self tocGlossaryButtonItem] setEnabled:v9];
  if ([(THBookViewController *)self isBookEpub])
  {
    isDocumentLoaded = [(THDocumentViewController *)[(THBookViewController *)self documentViewController] isDocumentLoaded];
  }

  else
  {
    isDocumentLoaded = &dword_0 + 1;
  }

  [(UIBarButtonItem *)[(THBookViewController *)self searchButtonItem] setEnabled:isDocumentLoaded];
  [(THBookViewController *)self p_updateCenterTitle];
}

- (void)p_updateFromTheme:(BOOL)theme
{
  themeCopy = theme;
  theme = [(THBookViewController *)self theme];
  [(THNavigationOverlayView *)[(THBookViewController *)self navigationOverlayView] setTheme:theme force:themeCopy];
  [(THBookViewController *)self p_navigationOverlayFrame];
  [(THNavigationOverlayView *)[(THBookViewController *)self navigationOverlayView] setFrame:v6, v7, v8, v9];
  if ([(THBookViewController *)self isBookEpub])
  {
    [(THTheme *)theme stylizeOuterView:[(THBookViewController *)self view]];
    [-[THBookViewController view](self "view")];
    [(THTheme *)theme stylizeBCNavigationBar:[(THBookViewController *)self titleLabelNavigationBar]];
    [(UILabel *)[(THBookViewController *)self titleLabel] setTextColor:[(THTheme *)theme headerTextColorDimmed]];
    [(THNotesViewController *)self->mNotesFullscreenViewController setTheme:[(THBookViewController *)self theme]];
    [(THTOCGlossaryMenuPopoverViewController *)[(THBookViewController *)self TOCGlossaryViewController] setTheme:[(THBookViewController *)self theme]];
    [(THBookViewController *)self _updateBuyButtonForDarkTheme:[(THTheme *)[(THBookViewController *)self theme] isNight:self]];
  }

  [(THBookViewController *)self refreshStatusBarAppearance];
  if ([(THBookViewController *)self isBookEpub])
  {
    [(THBookViewController *)self visibleViewController];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(THNavigationBarController *)[(THBookViewController *)self navigationBarController] setCenterItemTextColor:[(THTheme *)theme headerTextColor]];
    }
  }

  [(THNavigationBarController *)[(THBookViewController *)self navigationBarController] clearAutohideTimer];
  visibleViewController = [(THBookViewController *)self visibleViewController];
  if (visibleViewController == [(THBookViewController *)self documentViewController]&& [(THBookViewController *)self isBookEpub])
  {
    [(THDocumentReflowableLayoutConfiguration *)[(THDocumentViewController *)[(THBookViewController *)self documentViewController] configuration] chromeAnimationInterval];
    [(THNavigationOverlayView *)[(THBookViewController *)self navigationOverlayView] setShowHideAnimationDuration:v11];
    [(THDocumentReflowableLayoutConfiguration *)[(THDocumentViewController *)[(THBookViewController *)self documentViewController] configuration] chromeAnimationInterval];
    [(THNavigationBarController *)[(THBookViewController *)self navigationBarController] setShowHideDuration:v12];
    toolbarSeparatorsVisible = [(THDocumentReflowableLayoutConfiguration *)[(THDocumentViewController *)[(THBookViewController *)self documentViewController] configuration] toolbarSeparatorsVisible];
  }

  else
  {
    [(THNavigationOverlayView *)[(THBookViewController *)self navigationOverlayView] setShowHideAnimationDuration:0.15];
    [(THNavigationBarController *)[(THBookViewController *)self navigationBarController] setShowHideDuration:0.15];
    toolbarSeparatorsVisible = 0;
  }

  [(THDocumentViewController *)[(THBookViewController *)self documentViewController] updateForTheme:theme];
  if ([(THBookViewController *)self isBookEpub])
  {
    [(THFlowTOCViewController *)self->mFlowTocViewController setTheme:theme];
    [(THiOSFlowToCTableViewController *)self->mFlowToCTableViewController setTheme:theme];
    [(THNotesViewController *)self->mNotesFullscreenViewController setTheme:theme];
    [(THSearchViewController *)[(THBookViewController *)self searchViewController] setTheme:theme];
    [(THBookmarkMenuPopoverViewController *)[(THBookViewController *)self bookmarkViewController] setTheme:theme];
  }

  [(THDisplaySettingsViewController *)[(THBookViewController *)self displaySettingsViewController] setTheme:theme];
  [(THNavigationOverlayView *)[(THBookViewController *)self navigationOverlayView] setSeparatorsVisible:toolbarSeparatorsVisible];
  [(BCNavigationBar *)[(THNavigationBarController *)[(THBookViewController *)self navigationBarController] navigationBar] setSeparatorsVisible:toolbarSeparatorsVisible];
  titleLabelNavigationBar = [(THBookViewController *)self titleLabelNavigationBar];

  [(BCDisplayOnlyNavigationBar *)titleLabelNavigationBar setSeparatorsVisible:toolbarSeparatorsVisible];
}

- (void)_updateBuyButtonForDarkTheme:(BOOL)theme
{
  themeCopy = theme;
  assetViewControllerDelegate = [(THBookViewController *)self assetViewControllerDelegate];
  buyButtonItem = [(THBookViewController *)self buyButtonItem];

  [(AEAssetViewControllerDelegate *)assetViewControllerDelegate assetViewController:self updateBuyButton:buyButtonItem setIsDark:themeCopy];
}

- (BOOL)disableRotationEdgeClip
{
  [(THBookViewController *)self visibleViewController];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  visibleViewController = [(THBookViewController *)self visibleViewController];

  return [(UIViewController *)visibleViewController disableRotationEdgeClip];
}

- (id)keyCommands
{
  v8.receiver = self;
  v8.super_class = THBookViewController;
  v3 = [-[THBookViewController keyCommands](&v8 "keyCommands")];
  if (!v3)
  {
    v3 = +[NSMutableArray array];
  }

  if ([-[THDocumentViewController canvasViewController](-[THBookViewController documentViewController](self "documentViewController")])
  {
    v4 = +[UIKeyCommand commandWithTitle:image:action:input:modifierFlags:propertyList:](UIKeyCommand, "commandWithTitle:image:action:input:modifierFlags:propertyList:", [THBundle() localizedStringForKey:@"Next Page" value:&stru_471858 table:0], 0, "books_pageForward:", UIKeyInputRightArrow, 0, 0);
    [(UIKeyCommand *)v4 setWantsPriorityOverSystemBehavior:1];
    [(UIKeyCommand *)v4 setAllowsAutomaticMirroring:0];
    [v3 addObject:v4];
    v5 = [UIKeyCommand keyCommandWithInput:@" " modifierFlags:0 action:"books_pageForward:"];
    [(UIKeyCommand *)v5 setWantsPriorityOverSystemBehavior:1];
    [v3 addObject:v5];
    v6 = +[UIKeyCommand commandWithTitle:image:action:input:modifierFlags:propertyList:](UIKeyCommand, "commandWithTitle:image:action:input:modifierFlags:propertyList:", [THBundle() localizedStringForKey:@"Previous Page" value:&stru_471858 table:0], 0, "books_pageBackward:", UIKeyInputLeftArrow, 0, 0);
    [(UIKeyCommand *)v6 setWantsPriorityOverSystemBehavior:1];
    [(UIKeyCommand *)v6 setAllowsAutomaticMirroring:0];
    [v3 addObject:v6];
  }

  return v3;
}

- (void)_adjustSizeIncreasing:(BOOL)increasing
{
  displaySettingsViewController = [(THBookViewController *)self displaySettingsViewController];
  if (!displaySettingsViewController)
  {
    displaySettingsViewController = [[THDisplaySettingsViewController alloc] initWithNibName:0 bundle:0];
  }

  [(THBookViewController *)self visibleViewController];
  [(THDisplaySettingsViewController *)displaySettingsViewController setDelegate:TSUProtocolCast()];
  [(THDisplaySettingsViewController *)displaySettingsViewController setTheme:[(THBookViewController *)self theme]];
  if (increasing)
  {

    [(THDisplaySettingsViewController *)displaySettingsViewController increaseFontSize:self];
  }

  else
  {

    [(THDisplaySettingsViewController *)displaySettingsViewController decreaseFontSize:self];
  }
}

- (void)p_insertDVCInBackAnimated:(BOOL)animated
{
  animatedCopy = animated;
  documentViewController = [(THBookViewController *)self documentViewController];

  [(THBookViewController *)self p_addViewControllerInBack:documentViewController animated:animatedCopy];
}

- (void)p_showDVC
{
  visibleViewController = [(THBookViewController *)self visibleViewController];
  if (visibleViewController != [(THBookViewController *)self documentViewController])
  {
    [(THBookViewController *)self p_addViewControllerInFront:[(THBookViewController *)self documentViewController] reason:@"THVantageChangeReasonTransitionToDVC"];
    [(THFlowTOCViewController *)[(THBookViewController *)self flowTocViewController] setReflowablePaginationController:[(THDocumentViewController *)[(THBookViewController *)self documentViewController] reflowablePaginationController]];
    [(THBookViewController *)self p_setupCanvasExitTransformController];
    [-[THBookViewController p_selectedTocViewController](self "p_selectedTocViewController")];
    [(THBookViewController *)self removeTOC];
    documentViewController = [(THBookViewController *)self documentViewController];

    [(THDocumentViewController *)documentViewController setVisibleInfoUpdatesAllowedInLandscape:1];
  }
}

- (void)p_showDVCAnimated:(BOOL)animated withLink:(id)link
{
  linkCopy = link;
  animatedCopy = animated;
  if (!link)
  {
    if ([(THDocumentViewController *)[(THBookViewController *)self documentViewController] isDocumentLoaded]&& [(THDocumentNavigator *)[(THDocumentViewController *)[(THBookViewController *)self documentViewController] documentNavigator] currentContentNode])
    {
      linkCopy = 0;
LABEL_9:
      v8 = 0;
      v7 = 1;
      goto LABEL_10;
    }

    linkCopy = [-[THBookViewController documentRoot](self "documentRoot")];
    if (!linkCopy)
    {
      goto LABEL_9;
    }
  }

  if ([(THDocumentViewController *)[(THBookViewController *)self documentViewController] isDocumentLoaded])
  {
    [(THDocumentViewController *)[(THBookViewController *)self documentViewController] followLink:linkCopy];
    v7 = 0;
    v8 = 1;
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

LABEL_10:
  visibleViewController = [(THBookViewController *)self visibleViewController];
  if (visibleViewController != [(THBookViewController *)self documentViewController])
  {
    [(THBookViewController *)self p_addViewControllerInFront:[(THBookViewController *)self documentViewController] reason:@"THVantageChangeReasonTransitionToDVC"];
    [(THFlowTOCViewController *)[(THBookViewController *)self flowTocViewController] setReflowablePaginationController:[(THDocumentViewController *)[(THBookViewController *)self documentViewController] reflowablePaginationController]];
    [(THDocumentViewController *)[(THBookViewController *)self documentViewController] setVisibleInfoUpdatesAllowedInLandscape:1];
    if (((v7 | v8) & 1) == 0)
    {
      [(THDocumentViewController *)[(THBookViewController *)self documentViewController] followLink:linkCopy];
      if (!animatedCopy)
      {
        return;
      }

      goto LABEL_14;
    }

    [(THBookViewController *)self dismissActivePopover];
  }

  if (!animatedCopy)
  {
    return;
  }

LABEL_14:
  documentViewController = [(THBookViewController *)self documentViewController];
  [(THFlowTOCViewController *)self->mFlowTocViewController bottomSeparatorYPositionForChapterIndex:[(THDocumentViewController *)documentViewController currentChapter] lessonIndex:[(THDocumentViewController *)documentViewController currentTOCLessonIndex]];
  [-[THFlowTOCViewController view](self->mFlowTocViewController "view")];
  v13 = v12;
  [(THBookViewController *)self setDisallowRotate:1];
  v14 = [THTOCSplitTransitionView alloc];
  [-[THBookViewController view](self "view")];
  v15 = [(THTOCSplitTransitionView *)v14 initWithFrame:?];
  self->mDocumentToTOCViewTransitionView = v15;
  [(THTransitionView *)v15 setDelegate:self];
  [(THTOCSplitTransitionView *)self->mDocumentToTOCViewTransitionView setSplitPositionY:v13];
  mFlowToCTableViewController = self->mFlowToCTableViewController;
  if (!mFlowToCTableViewController)
  {
    mFlowToCTableViewController = self->mFlowTocViewController;
  }

  [(THTransitionView *)self->mDocumentToTOCViewTransitionView setFromViewController:mFlowToCTableViewController];
  [(THTransitionView *)self->mDocumentToTOCViewTransitionView setToViewController:documentViewController];
  [(THTOCSplitTransitionView *)self->mDocumentToTOCViewTransitionView setAnimationDuration:0.65];
  [-[THBookViewController view](self "view")];
  [(THTOCSplitTransitionView *)self->mDocumentToTOCViewTransitionView beginTransition];

  [(THBookViewController *)self vantageDidChangeBy:self reason:@"THVantageChangeReasonTransitionToDVC"];
}

- (void)p_setVisibleViewControllerToViewController:(id)controller reason:(id)reason
{
  if ([(THBookViewController *)self visibleViewController]!= controller)
  {
    [(THBookViewController *)self vantageWillChangeBy:self reason:reason];
    [(THBookViewController *)self setVisibleViewController:controller];
    [(THBookViewController *)self vantageDidChangeBy:self reason:reason];
    if ([(THBookViewController *)self isBookEpub])
    {
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_80CA8;
      v7[3] = &unk_45AE00;
      v7[4] = self;
      [UIView animateWithDuration:v7 animations:0.2];
    }

    else
    {
      [(THBookViewController *)self p_updateFromTheme:0];
    }

    [(THBookViewController *)self p_updateToolbarButtonStates];
    if ([(THBookViewController *)self p_isTOCViewController:[(THBookViewController *)self visibleViewController]])
    {
      [(THBookViewController *)self p_setNavigationOverlayHidden:1 animated:1 autoHides:0];
    }

    [(THBookspotHistoryStack *)[(THBookViewController *)self bookspotHistoryStack] setSeekDistinctSpots:[(THBookViewController *)self documentViewController]== controller];
    [(THBookViewController *)self buildHoverRegions];
    [(THBookViewController *)self setNeedsWhitePointAdaptivityStyleUpdate];
  }
}

- (void)transitionWillBegin:(id)begin
{
  if (self->mDocumentToTOCViewTransitionView == begin)
  {
    [-[THDocumentViewController interactiveCanvasController](-[THBookViewController documentViewController](self "documentViewController")];
    [-[THDocumentViewController interactiveCanvasController](-[THBookViewController documentViewController](self "documentViewController")];
    [-[THDocumentViewController interactiveCanvasController](-[THBookViewController documentViewController](self "documentViewController")];
    [objc_msgSend(objc_msgSend(-[THDocumentViewController interactiveCanvasController](-[THBookViewController documentViewController](self "documentViewController")];
    [(THNavigationBarController *)[(THBookViewController *)self navigationBarController] setNavigationBarHidden:1 animated:0];

    +[CATransaction flush];
  }

  else if (self->mTOCToDocumentViewTransitionView == begin)
  {
    [(THNavigationBarController *)[(THBookViewController *)self navigationBarController] setNavigationBarHidden:1 animated:0];

    [(THBookViewController *)self p_updateTitleLabelToolbarVisible:0 animated:1];
  }
}

- (void)transitionDidFinish:(id)finish
{
  if (self->mDocumentToTOCViewTransitionView == finish)
  {
    [objc_msgSend(objc_msgSend(-[THDocumentViewController interactiveCanvasController](-[THBookViewController documentViewController](self "documentViewController")];
    [(THBookViewController *)self hideTOC];
    [(THBookViewController *)self p_showDVC];
    self->mDocumentToTOCViewTransitionView = 0;
    [(THBookViewController *)self p_updateTitleLabelToolbarVisible:1 animated:1];
  }

  else
  {
    mTOCToDocumentViewTransitionView = self->mTOCToDocumentViewTransitionView;
    if (mTOCToDocumentViewTransitionView == finish)
    {
      if ([(THTOCSplitTransitionView *)mTOCToDocumentViewTransitionView wasReversed])
      {
        [(THBookViewController *)self p_showDVC];
        [(THBookViewController *)self hideTOC];
        [(THBookViewController *)self p_updateTitleLabelToolbarVisible:1 animated:1];
      }

      else
      {
        [(THBookViewController *)self p_removeViewController:[(THBookViewController *)self documentViewController]];
        [(THBookViewController *)self showTOC];
      }

      self->mTOCToDocumentViewTransitionView = 0;
    }
  }

  [finish removeFromSuperview];

  [(THBookViewController *)self setDisallowRotate:0];
}

- (void)p_setupCanvasExitTransformController
{
  currentPresentationType = [(THBookViewController *)self currentPresentationType];
  if (self->mDocumentViewController && (v4 = currentPresentationType, ([currentPresentationType isFlow] & 1) == 0) && -[THDocumentViewController isDocumentLoaded](self->mDocumentViewController, "isDocumentLoaded") && !-[THBookViewController isBookEpub](self, "isBookEpub"))
  {
    if (self->mDocumentViewController && ([v4 isFlow] & 1) == 0 && !self->mCanvasExitTransformDelegate && !self->mCanvasExitTransformController)
    {
      v5 = [objc_msgSend(-[THDocumentViewController canvasViewController](-[THBookViewController documentViewController](self "documentViewController")];
      self->mCanvasExitTransformDelegate = [[THCanvasExitTransformDelegate alloc] initWithBookViewController:self];
      v6 = objc_alloc_init(THWFreeTransformController);
      self->mCanvasExitTransformController = v6;
      [(THWFreeTransformController *)v6 setDelegate:self->mCanvasExitTransformDelegate];
      [(THWFreeTransformController *)self->mCanvasExitTransformController setScaleThreshold:0.75];
      -[THWFreeTransformController setTargetLayer:](self->mCanvasExitTransformController, "setTargetLayer:", [v5 layer]);
      mCanvasExitTransformController = self->mCanvasExitTransformController;

      [(THWFreeTransformController *)mCanvasExitTransformController setSmoothEdges:1];
    }
  }

  else
  {
    [(THWFreeTransformController *)self->mCanvasExitTransformController setTargetLayer:0];

    self->mCanvasExitTransformDelegate = 0;
    self->mCanvasExitTransformController = 0;
  }
}

- (unint64_t)absolutePageIndexForCFI:(id)i
{
  documentRoot = [(THBookViewController *)self documentRoot];

  return [documentRoot absolutePageIndexForCFI:i];
}

- (id)storageForCFI:(id)i
{
  documentRoot = [(THBookViewController *)self documentRoot];

  return [documentRoot storageForCFI:i];
}

- (void)hideGlossaryWithDestinationViewController:(id)controller
{
  v5 = +[UIView areAnimationsEnabled];

  [(THBookViewController *)self hideGlossaryWithDestinationViewController:controller animated:v5 completion:0];
}

- (void)p_unloadGlossaryViewControllerIfHiding
{
  if (self->mHidingGlossary)
  {
    if (self->mGlossaryViewController)
    {
      [(THGlossaryViewController *)[(THBookViewController *)self glossaryViewController] unload];

      self->mGlossaryViewController = 0;
      self->mHidingGlossary = 0;
    }
  }
}

- (void)hideGlossaryWithDestinationViewController:(id)controller animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  [(THBookViewController *)self setPresentingGlossary:0];
  if (self->mHidingGlossary || ![(THBookViewController *)self isGlossaryVisible])
  {
    if (completion)
    {
      v9 = *(completion + 2);

      v9(completion);
    }
  }

  else
  {
    self->mHidingGlossary = 1;
    [(THBookViewController *)self vantageWillChangeBy:self reason:@"THVantageChangeReasonTransitionFromGlossary"];
    [(THBookViewController *)self hideToolbarAnimated:0];
    if (!controller || [(THBookViewController *)self documentViewController]== controller)
    {
      [(THBookViewController *)self p_showDVC];
    }

    else
    {
      [(THBookViewController *)self p_addViewControllerInFront:controller reason:@"THVantageChangeReasonTransitionFromGlossary"];
    }

    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_812B8;
    v10[3] = &unk_45AEA8;
    v10[4] = self;
    v10[5] = completion;
    [(THGlossaryViewController *)[(THBookViewController *)self glossaryViewController] dismissViewControllerAnimated:animatedCopy completion:v10];
    [(THBookViewController *)self vantageDidChangeBy:self reason:@"THVantageChangeReasonTransitionFromGlossary"];
  }
}

- (void)p_ensureGlossaryViewController
{
  [(THBookViewController *)self p_unloadGlossaryViewControllerIfHiding];
  if (!self->mGlossaryViewController)
  {
    v3 = +[THGlossaryViewController newViewController];
    self->mGlossaryViewController = v3;
    [(THGlossaryViewController *)v3 setTransitioningDelegate:self];
    -[THGlossaryViewController furtherInitWithGlossaryController:](self->mGlossaryViewController, "furtherInitWithGlossaryController:", [-[THDocumentViewController documentRoot](-[THBookViewController documentViewController](self "documentViewController")]);
    [(THGlossaryViewController *)self->mGlossaryViewController setBookViewController:self];
    [(THGlossaryViewController *)self->mGlossaryViewController setModalPresentationStyle:0];
    [(THGlossaryViewController *)self->mGlossaryViewController setOverrideUserInterfaceStyle:1];
    glossaryLinkResolver = [(THGlossaryViewController *)self->mGlossaryViewController glossaryLinkResolver];
    bookLinkResolver = [(THBookViewController *)self bookLinkResolver];

    [(THBookLinkResolver *)bookLinkResolver setGlossaryLinkResolver:glossaryLinkResolver];
  }
}

- (void)p_showGlossary
{
  activity_block[0] = _NSConcreteStackBlock;
  activity_block[1] = 3221225472;
  activity_block[2] = sub_8145C;
  activity_block[3] = &unk_45AE00;
  activity_block[4] = self;
  _os_activity_initiate(&dword_0, "Show Glossary", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
}

- (void)showGlossary:(id)glossary
{
  if ([(THBookViewController *)self isGlossaryVisible])
  {
    originalViewController = [(THGlossaryViewController *)[(THBookViewController *)self glossaryViewController] originalViewController];

    [(THBookViewController *)self hideGlossaryWithDestinationViewController:originalViewController];
  }

  else
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_8163C;
    v5[3] = &unk_45AE00;
    v5[4] = self;
    [(THBookViewController *)self dismissTOCGlossaryView:1 completion:v5];
  }
}

- (void)showGlossaryEntry:(id)entry
{
  if (![(THBookViewController *)self isGlossaryVisible])
  {
    [(THBookViewController *)self p_showGlossary];
  }

  glossaryViewController = [(THBookViewController *)self glossaryViewController];

  [(THGlossaryViewController *)glossaryViewController showEntry:entry];
}

- (void)showGlossaryEntryAtPath:(id)path
{
  if (![(THBookViewController *)self isGlossaryVisible])
  {
    [(THBookViewController *)self p_showGlossary];
  }

  glossaryViewController = [(THBookViewController *)self glossaryViewController];

  [(THGlossaryViewController *)glossaryViewController showEntryAtPath:path];
}

- (void)introMediaControllerMoviePlayerWillShowControls
{
  visibleViewController = [(THBookViewController *)self visibleViewController];
  mFlowTocViewController = self->mFlowTocViewController;
  if (visibleViewController == mFlowTocViewController || (v5 = [(THBookViewController *)self visibleViewController], mFlowTocViewController = self->mChapterBrowserController, v5 == mFlowTocViewController))
  {

    [(UIViewController *)mFlowTocViewController introMediaControllerMoviePlayerWillShowControls];
  }
}

- (void)introMediaControllerMoviePlayerWillHideControls
{
  visibleViewController = [(THBookViewController *)self visibleViewController];
  mFlowTocViewController = self->mFlowTocViewController;
  if (visibleViewController == mFlowTocViewController || (v5 = [(THBookViewController *)self visibleViewController], mFlowTocViewController = self->mChapterBrowserController, v5 == mFlowTocViewController))
  {

    [(UIViewController *)mFlowTocViewController introMediaControllerMoviePlayerWillHideControls];
  }
}

- (id)TOCViewControllerToolbarBackgroundColor:(id)color
{
  navigationBar = [(THNavigationBarController *)[(THBookViewController *)self navigationBarController] navigationBar];

  return [(THBookViewController *)self backgroundColorForNavigationBar:navigationBar];
}

- (BOOL)p_shouldShowShroudForVisibleSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  if (TSUPhoneUI())
  {
    return 1;
  }

  [objc_msgSend(-[THBookViewController view](self "view")];
  v8 = v7;
  [(THDocumentViewController *)[(THBookViewController *)self documentViewController] paginatedSpreadSize];
  result = 0;
  if (v9 > 0.0 && width > 0.0)
  {
    return vabdd_f64(v10 / v9, (height - v8) / width) >= 0.00999999978;
  }

  return result;
}

- (void)p_buildIntroMediaViewController
{
  v3 = [[THiOSIntroMediaViewController alloc] initWithDocumentRoot:[(THBookViewController *)self documentRoot]];

  [(THBookViewController *)self setIntroMediaViewController:v3];
}

- (id)p_selectedTocViewControllerCreateIfNecessary:(BOOL)necessary
{
  necessaryCopy = necessary;
  if (([-[THBookViewController currentPresentationType](self "currentPresentationType")] & 1) != 0 || -[THBookViewController isBookEpub](self, "isBookEpub"))
  {
    if (necessaryCopy)
    {

      return [(THBookViewController *)self flowTocViewController];
    }

    v6 = 64;
    return *(&self->super.super.super.super.isa + v6);
  }

  if (!necessaryCopy)
  {
    v6 = 80;
    return *(&self->super.super.super.super.isa + v6);
  }

  return [(THBookViewController *)self chapterBrowserController];
}

- (id)p_unselectedTocViewController
{
  if (([-[THBookViewController currentPresentationType](self "currentPresentationType")] & 1) != 0 || -[THBookViewController isBookEpub](self, "isBookEpub"))
  {

    return [(THBookViewController *)self chapterBrowserController];
  }

  else
  {

    return [(THBookViewController *)self flowTocViewController];
  }
}

- (void)p_updateTOCForUpcomingPresentationModeChange
{
  p_selectedTocViewController = [(THBookViewController *)self p_selectedTocViewController];

  [(THBookViewController *)self p_removeViewController:p_selectedTocViewController];
}

- (void)p_updateTOCForPresentationModeChange
{
  [(THBookViewController *)self p_removeViewController:[(THBookViewController *)self p_unselectedTocViewController]];
  p_selectedTocViewController = [(THBookViewController *)self p_selectedTocViewController];
  if (![(UIViewController *)p_selectedTocViewController introMediaViewController]&& [(THBookViewController *)self introMediaViewController])
  {
    [(UIViewController *)p_selectedTocViewController setIntroMediaViewController:[(THBookViewController *)self introMediaViewController] showIt:[(THBookViewController *)self p_introMediaIsUnseenAndSeeable]];
  }

  if ([(THBookViewController *)self shouldKeepTOCInBackground:p_selectedTocViewController]&& [(THBookViewController *)self visibleViewController]!= p_selectedTocViewController && ![[(UIViewController *)p_selectedTocViewController view] superview])
  {
    [(THBookViewController *)self p_addViewControllerInBack:p_selectedTocViewController];
    [(UIViewController *)p_selectedTocViewController setShrouded:1 animated:0 duration:0.0];
  }

  visibleViewController = [(THBookViewController *)self visibleViewController];
  if (visibleViewController == [(THBookViewController *)self documentViewController])
  {

    [(THBookViewController *)self p_setupCanvasExitTransformController];
  }
}

- (void)putTOCInBack
{
  p_selectedTocViewController = [(THBookViewController *)self p_selectedTocViewController];

  [(THBookViewController *)self p_addViewControllerInBack:p_selectedTocViewController];
}

- (void)showTOC
{
  [(THBookViewController *)self temporarilySetHUDViewHidden:1];
  [(THBookViewController *)self hideNavigationHistory];
  p_selectedTocViewController = [(THBookViewController *)self p_selectedTocViewController];
  visibleViewController = [(THBookViewController *)self visibleViewController];
  if (visibleViewController == [(THBookViewController *)self documentViewController]&& p_selectedTocViewController == [(THBookViewController *)self chapterBrowserController])
  {
    [(THDocumentViewController *)self->mDocumentViewController willStartRevealTOC];
    [(THDocumentViewController *)[(THBookViewController *)self documentViewController] zoomOutIfNecessaryPriorToNavigation];
    if (!UIAccessibilityIsSwitchControlRunning() && !UIAccessibilityIsVoiceOverRunning())
    {
      [(THNavigationBarController *)[(THBookViewController *)self navigationBarController] setNavigationBarHidden:1 animated:1];
    }

    [(THBookViewController *)self p_addViewControllerInBack:[(THBookViewController *)self chapterBrowserController]];
    currentRelativePageIndex = [(THDocumentViewController *)self->mDocumentViewController currentRelativePageIndex];
    currentChapter = [(THDocumentViewController *)self->mDocumentViewController currentChapter];
    [(THChapterBrowserController *)[(THBookViewController *)self chapterBrowserController] willTransitionFromChapterIndex:currentChapter];
    [(THChapterBrowserController *)[(THBookViewController *)self chapterBrowserController] prepareToScrollToThumbnailAtIndex:currentRelativePageIndex chapterIndex:currentChapter];
    [(THChapterBrowserController *)[(THBookViewController *)self chapterBrowserController] hidePageThumbnailAtIndex:currentRelativePageIndex chapterIndex:currentChapter scrollIfNecessary:1];
    [(THChapterBrowserController *)[(THBookViewController *)self chapterBrowserController] scrollToThumbnailAtIndex:currentRelativePageIndex];
    -[THChapterBrowserController rectForPageThumbnailAtIndex:chapterIndex:inLayer:](-[THBookViewController chapterBrowserController](self, "chapterBrowserController"), "rectForPageThumbnailAtIndex:chapterIndex:inLayer:", currentRelativePageIndex, currentChapter, [objc_msgSend(-[THDocumentViewController view](-[THBookViewController documentViewController](self "documentViewController")]);
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    [-[THDocumentViewController canvasScrollView](-[THBookViewController documentViewController](self "documentViewController")];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v30 = 0u;
    v31 = 0u;
    v29 = 0u;
    canvasScrollView = [(THDocumentViewController *)[(THBookViewController *)self documentViewController] canvasScrollView];
    if (canvasScrollView)
    {
      [canvasScrollView transform];
    }

    else
    {
      v30 = 0u;
      v31 = 0u;
      v29 = 0u;
    }

    [-[THDocumentViewController view](self->mDocumentViewController "view")];
    [-[THDocumentViewController view](self->mDocumentViewController "view")];
    [(THDocumentViewController *)self->mDocumentViewController startRevealTOC];
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_81F80;
    v28[3] = &unk_45C4B0;
    v28[5] = v8;
    v28[6] = v10;
    v28[7] = v12;
    v28[8] = v14;
    v28[9] = v16;
    v28[10] = v18;
    v28[11] = v20;
    v28[12] = v22;
    v28[4] = self;
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_8207C;
    v24[3] = &unk_45C4D8;
    v24[4] = self;
    v24[5] = currentRelativePageIndex;
    v27 = v31;
    v26 = v30;
    v25 = v29;
    [UIView animateWithDuration:0x20000 delay:v28 options:v24 animations:0.300000012 completion:0.0];
    [(THTOCViewController *)p_selectedTocViewController setShrouded:0 animated:1 duration:0.300000012];
  }

  else
  {
    [(THTOCViewController *)p_selectedTocViewController setShrouded:0 animated:0 duration:0.0];
    [(THBookViewController *)self p_addViewControllerInFront:p_selectedTocViewController reason:@"THVantageChangeReasonTransitionToTOC"];
    if ([(THBookViewController *)self isBookEpub])
    {
      [(THFlowTOCViewController *)[(THBookViewController *)self flowTocViewController] setReflowablePaginationController:[(THDocumentViewController *)[(THBookViewController *)self documentViewController] reflowablePaginationController]];
    }
  }

  [(THBookViewController *)self dismissTOCGlossaryView:1];
}

- (void)didTransitionFromViewController:(id)controller toTOCViewController:(id)viewController
{
  [(THBookViewController *)self p_addViewControllerInFront:viewController reason:@"THVantageChangeReasonTransitionToTOC"];

  [(THBookViewController *)self p_removeViewController:controller];
}

- (void)removeTOC
{
  p_selectedTocViewController = [(THBookViewController *)self p_selectedTocViewController];
  if (![(THBookViewController *)self shouldKeepTOCInBackground:p_selectedTocViewController])
  {

    [(THBookViewController *)self p_removeViewController:p_selectedTocViewController];
  }
}

- (void)hideTOC
{
  v3 = [(THBookViewController *)self p_selectedTocViewControllerCreateIfNecessary:0];
  if (v3)
  {

    [(THBookViewController *)self p_removeViewController:v3];
  }
}

- (id)currentPresentationType
{
  documentViewController = [(THBookViewController *)self documentViewController];

  return [(THDocumentViewController *)documentViewController currentPresentationType];
}

- (void)showFullscreenNotesView:(id)view completion:(id)completion
{
  if (-[THBookViewController isNotesFullscreenVisible](self, "isNotesFullscreenVisible") || (objc_opt_class(), v6 = TSUDynamicCast(), [v6 setEnabled:0], -[THBookViewController dismissActivePopover](self, "dismissActivePopover"), -[THNavigationOverlayView setOverlayHidden:animated:](-[THBookViewController navigationOverlayView](self, "navigationOverlayView"), "setOverlayHidden:animated:", 1, 0), !-[THBookViewController notesFullscreenViewController](self, "notesFullscreenViewController")))
  {
    if (completion)
    {
      v7 = *(completion + 2);

      v7(completion);
    }
  }

  else
  {
    [(THNotesViewController *)[(THBookViewController *)self notesFullscreenViewController] setOriginalViewController:[(THBookViewController *)self visibleViewController]];
    [(THNotesViewController *)[(THBookViewController *)self notesFullscreenViewController] updateWithNavigationUnit:[(THDocumentViewController *)[(THBookViewController *)self documentViewController] currentNavigationUnit]];
    [(THBookViewController *)self vantageWillChangeBy:self reason:@"THVantageChangeReasonTransitionToNotesVC"];
    [(THNotesViewController *)[(THBookViewController *)self notesFullscreenViewController] setModalTransitionStyle:0];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_8245C;
    v8[3] = &unk_45AEA8;
    v8[4] = v6;
    v8[5] = completion;
    [(THBookViewController *)self presentViewController:[(THBookViewController *)self notesFullscreenViewController] animated:1 completion:v8];
    [(THBookViewController *)self vantageDidChangeBy:self reason:@"THVantageChangeReasonTransitionToNotesVC"];
  }
}

- (void)hideFullscreenNotesView:(id)view andSearchForText:(id)text animated:(BOOL)animated force:(BOOL)force completion:(id)completion
{
  if (!self->mHidingNotesVC && ((v8 = force, v9 = animated, [(THBookViewController *)self isNotesFullscreenVisible]) || v8))
  {
    self->mHidingNotesVC = 1;
    [(THBookViewController *)self vantageWillChangeBy:self reason:@"THVantageChangeReasonTransitionFromStudyVC"];
    if (!view || [(THBookViewController *)self documentViewController]== view)
    {
      [(THBookViewController *)self p_showDVC];
    }

    else
    {
      [(THBookViewController *)self p_addViewControllerInFront:view reason:@"THVantageChangeReasonTransitionFromStudyVC"];
    }

    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_82644;
    v14[3] = &unk_45B3A8;
    v14[4] = self;
    v14[5] = text;
    v14[6] = completion;
    [(THNotesViewController *)[(THBookViewController *)self notesFullscreenViewController] dismissViewControllerAnimated:v9 completion:v14];
    [(THBookViewController *)self vantageDidChangeBy:self reason:@"THVantageChangeReasonTransitionFromStudyVC"];
  }

  else if (completion)
  {
    v13 = *(completion + 2);

    v13(completion, 0);
  }
}

- (BOOL)navigateToAnchorInDVC:(id)c pulse:(BOOL)pulse
{
  pulseCopy = pulse;
  [(THBookViewController *)self p_showDVC];
  LOBYTE(pulseCopy) = [(THBookViewController *)self followAnchor:c pulse:pulseCopy];
  [-[THDocumentViewController interactiveCanvasController](self->mDocumentViewController "interactiveCanvasController")];
  +[CATransaction flush];
  return pulseCopy;
}

- (BOOL)navigateToLinkInDVC:(id)c
{
  if ([(THBookViewController *)self visibleViewController]== self->mChapterBrowserController)
  {
    [(THBookViewController *)self p_insertDVCInBack];
    chapterIndex = [(THChapterBrowserController *)self->mChapterBrowserController chapterIndex];
    cachedAbsolutePageIndex = [c cachedAbsolutePageIndex];
    if (cachedAbsolutePageIndex == 0x7FFFFFFFFFFFFFFFLL || (v8 = -[THDocumentNavigationModel navigationUnitRelativePageIndexForAbsolutePageIndex:forPresentationType:](-[THBookViewController navigationModel](self, "navigationModel"), "navigationUnitRelativePageIndexForAbsolutePageIndex:forPresentationType:", cachedAbsolutePageIndex, +[THPresentationType paginatedPresentationTypeInContext:](THPresentationType, "paginatedPresentationTypeInContext:", [-[THDocumentViewController documentRoot](-[THBookViewController documentViewController](self "documentViewController")])), v8 == 0x7FFFFFFFFFFFFFFFLL))
    {
      v9 = [(THBookViewController *)self chapterBrowserController:self->mChapterBrowserController relativePageIndexForLink:c];
      if (v9 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v8 = 0;
      }

      else
      {
        v8 = v9;
      }
    }

    [(THChapterBrowserController *)self->mChapterBrowserController transitionPageToDVC:v8 chapterIndex:chapterIndex];
    return 1;
  }

  else
  {
    v5 = [(THBookLinkResolver *)[(THBookViewController *)self bookLinkResolver] anchorFromAbsoluteLink:c presentationType:[(THDocumentViewController *)[(THBookViewController *)self documentViewController] currentPresentationType]];

    return [(THBookViewController *)self navigateToAnchorInDVC:v5];
  }
}

- (void)navigateFromNotesViewToAnchorInDVC:(id)c completion:(id)completion
{
  setupLoadSpinner = [(THBookViewController *)self setupLoadSpinner];
  v8 = [-[THBookViewController documentRoot](self "documentRoot")];
  if (!v8)
  {
    [(THBookViewController *)self followAnchor:c pulse:0];
  }

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_82994;
  v9[3] = &unk_45C500;
  v10 = v8 != 0;
  v9[4] = self;
  v9[5] = c;
  v11 = setupLoadSpinner;
  v9[6] = completion;
  [(THBookViewController *)self hideFullscreenNotesView:[(THBookViewController *)self visibleViewController] andSearchForText:0 completion:v9];
}

- (BOOL)isStudyViewControllerVisible
{
  isViewLoaded = [(THiOSStudyViewController *)[(THBookViewController *)self studyViewController] isViewLoaded];
  if (isViewLoaded)
  {
    LOBYTE(isViewLoaded) = [-[THiOSStudyViewController view](-[THBookViewController studyViewController](self "studyViewController")] != 0;
  }

  return isViewLoaded;
}

- (void)loadStudyViewControllerForAnimation:(BOOL)animation
{
  if ([(THBookViewController *)self studyViewController])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  v4 = [[THiOSStudyViewController alloc] initWithDocumentRoot:[(THBookViewController *)self documentRoot]];
  [(THiOSStudyViewController *)v4 setTheme:[(THBookViewController *)self theme]];
  [(THiOSStudyViewController *)v4 setDelegate:self];
  [(THBookViewController *)self setStudyViewController:v4];
}

- (void)showStudyCardsForNavigationUnit:(id)unit useChapterTitle:(id)title
{
  if (!unit)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  if (![(THBookViewController *)self studyViewController])
  {
    [(THBookViewController *)self loadStudyViewControllerForAnimation:0];
  }

  [objc_msgSend(-[THNotesViewController view](-[THBookViewController notesFullscreenViewController](self "notesFullscreenViewController")];
  [-[THiOSStudyViewController view](-[THBookViewController studyViewController](self "studyViewController")];
  v11 = +[NSMutableArray array];
  v12 = [objc_msgSend(-[THDocumentViewController documentRoot](-[THBookViewController documentViewController](self "documentViewController")];
  entryCount = [v12 entryCount];
  if (entryCount)
  {
    v14 = entryCount;
    for (i = 0; i != v14; ++i)
    {
      [v11 addObject:{objc_msgSend(v12, "entryAtIndex:", i)}];
    }
  }

  if (!title || ![title length])
  {
    title = [(THDocumentNavigationModel *)[(THBookViewController *)self navigationModel] titleStringForNavigationUnit:unit];
  }

  if (![title length])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  parentViewController = [(THiOSStudyViewController *)[(THBookViewController *)self studyViewController] parentViewController];
  if (parentViewController != self)
  {
    [(THNotesViewController *)[(THBookViewController *)self notesFullscreenViewController] addChildViewController:[(THBookViewController *)self studyViewController]];
  }

  if ([(THBookViewController *)self isStudyViewControllerVisible])
  {
    studyViewController = [(THBookViewController *)self studyViewController];

    [(THiOSStudyViewController *)studyViewController updateWithNavigationUnit:unit title:title];
  }

  else
  {
    if (![(THBookViewController *)self isNotesFullscreenVisible])
    {
      [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    }

    [(THiOSStudyViewController *)[(THBookViewController *)self studyViewController] updateWithNavigationUnit:unit title:title];
    [-[THNotesViewController view](-[THBookViewController notesFullscreenViewController](self "notesFullscreenViewController")];
    [(THBookViewController *)self p_setVisibleViewControllerToViewController:[(THBookViewController *)self studyViewController] reason:@"THVantageChangeReasonTransitionToStudyVC"];
    if (parentViewController != self)
    {
      [(THiOSStudyViewController *)[(THBookViewController *)self studyViewController] didMoveToParentViewController:[(THBookViewController *)self notesFullscreenViewController]];
    }

    studyViewController2 = [(THBookViewController *)self studyViewController];

    [(THiOSStudyViewController *)studyViewController2 transitionInWithCompletion:0];
  }
}

- (void)p_unloadStudyViewController
{
  studyViewController = [(THBookViewController *)self studyViewController];
  [(THiOSStudyViewController *)studyViewController removeFromParentViewController];
  [(THiOSStudyViewController *)studyViewController viewWillDisappear:0];
  [-[THiOSStudyViewController view](studyViewController "view")];
  [(THiOSStudyViewController *)studyViewController viewDidDisappear:0];
  [(THBookViewController *)self setStudyViewController:0];
  v4 = UIAccessibilityScreenChangedNotification;

  UIAccessibilityPostNotification(v4, 0);
}

- (void)studyViewControllerIsDone:(id)done
{
  if (![(THBookViewController *)self isStudyViewControllerVisible])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  studyViewController = [(THBookViewController *)self studyViewController];
  [(THBookViewController *)self p_setVisibleViewControllerToViewController:[(THBookViewController *)self notesFullscreenViewController] reason:@"THVantageChangeReasonTransitionFromStudyVC"];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_8306C;
  v5[3] = &unk_45AE00;
  v5[4] = self;
  [(THiOSStudyViewController *)studyViewController transitionOutWithCompletion:v5];
}

- (BOOL)canTrustCalculatedPageNumbers
{
  v3 = [-[THBookViewController documentRoot](self "documentRoot")];
  if (!v3)
  {
    return 1;
  }

  v4 = v3;
  [-[THBookViewController view](self "view")];
  [(THDocumentViewController *)[(THBookViewController *)self documentViewController] reflowablePageSizeForViewSize:v5, v6];

  return [v4 presentationTypeMatchesPageSize:?];
}

- (int64_t)pageNumberForAnnotation:(id)annotation
{
  if (![(THBookViewController *)self canTrustCalculatedPageNumbers])
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  documentRoot = [(THBookViewController *)self documentRoot];

  return [documentRoot absolutePageIndexForAnnotation:annotation];
}

- (id)pageNumberStringForAnnotation:(id)annotation
{
  if ([(THBookViewController *)self canTrustCalculatedPageNumbers])
  {
    documentRoot = [(THBookViewController *)self documentRoot];

    return [documentRoot pageNumberStringForAnnotation:annotation];
  }

  else
  {
    v7 = THBundle();

    return [v7 localizedStringForKey:@"-" value:&stru_471858 table:0];
  }
}

- (id)documentViewControllerWithDocument:(id)document
{
  initWithDefaultView = [[THDocumentViewController alloc] initWithDefaultView];
  [(THBookViewController *)self addChildViewController:initWithDefaultView];
  [(THDocumentViewController *)initWithDefaultView setDocument:document];
  [(THDocumentViewController *)initWithDefaultView setDocumentLinkResolver:[[THDocumentLinkResolver alloc] initWithDocumentRoot:[(THDocumentViewController *)initWithDefaultView documentRoot]]];
  [(THDocumentViewController *)initWithDefaultView setToolbarDelegate:self];
  [(THDocumentViewController *)initWithDefaultView setBookNavigationDelegate:self];
  [(THDocumentViewController *)initWithDefaultView setUserAnnotationDelegate:self];
  [(THDocumentViewController *)initWithDefaultView setSpinnerProvider:self];
  [(THDocumentViewController *)initWithDefaultView setBookPropertiesDelegate:self];
  [(THDocumentViewController *)initWithDefaultView setRevealTOCDelegate:self];
  [(THDocumentViewController *)initWithDefaultView setThemeDelegate:self];
  [(THDocumentViewController *)initWithDefaultView setReadingStatisticsDelegate:self];
  [(THDocumentViewController *)initWithDefaultView setPaginationDelegate:self];
  return initWithDefaultView;
}

+ (BOOL)allBodiesExist:(id)exist
{
  if (!exist)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  objc_opt_class();
  v5 = TSUDynamicCast();
  if (!v5)
  {
    objc_opt_class();
    v7 = TSUDynamicCast();
    if (v7)
    {
      v8 = v7;
      v9 = [v7 count];
      if (v9)
      {
        v10 = 0;
        v11 = v9 - 1;
        do
        {
          v6 = [self allBodiesExist:{objc_msgSend(v8, "nodeAtIndex:", v10)}];
          if (!v6)
          {
            break;
          }
        }

        while (v11 != v10++);
        return v6;
      }
    }

    else
    {
      [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    }

    LOBYTE(v6) = 1;
    return v6;
  }

  LOBYTE(v6) = [v5 nodeBodyExists];
  return v6;
}

- (void)p_kickOffIntroMediaIfNecessary
{
  if ([(THBookViewController *)self introMediaViewController]&& ![(THBookViewController *)self p_hasDestinationPage]&& [(THBookViewController *)self p_introMediaIsUnseenAndSeeable])
  {
    [(THiOSIntroMediaViewController *)[(THBookViewController *)self introMediaViewController] ensureReadyToPlay];
    [(THiOSIntroMediaViewController *)[(THBookViewController *)self introMediaViewController] playForBookOpen];

    [(THBookViewController *)self TOCViewControllerDidShowIntroMedia:0];
  }
}

- (void)p_bookContentDidLoad
{
  [(AEAssetOpenAnimating *)[(THBookViewController *)self contentOpenAnimator] bookContentDidLoad];
  [(THBookViewController *)self setContentOpenAnimator:0];
  if ([(THBookViewController *)self snapshotBlock])
  {
    (*([(THBookViewController *)self snapshotBlock]+ 2))();

    [(THBookViewController *)self setSnapshotBlock:0];
  }
}

- (void)viewsAreReadyForOpenAnimation
{
  if (!self->mHaveCalledDidOpen)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_83620;
    v3[3] = &unk_45B810;
    v3[4] = self;
    [THPerformanceRegressionLogger logEventWithBlock:v3];
    self->mHaveCalledDidOpen = 1;
  }

  [(THBookViewController *)self p_bookContentDidLoad];
}

- (void)didLoadBook:(id)book
{
  [(UIAlertController *)[(THBookViewController *)self fontDownloadAlertController] dismissViewControllerAnimated:1 completion:0];

  [(THBookViewController *)self p_finishBookLoadIfReady];
}

- (void)p_finishBookLoadIfReady
{
  if ([-[THBookViewController view](self "view")] && -[THBookOpener isFinished](self->mBookOpener, "isFinished"))
  {

    [(THBookViewController *)self p_finishBookLoad];
  }
}

- (void)setPerformanceModeBookOpening:(BOOL)opening
{
  openingCopy = opening;
  self->_performanceModeBookOpening = opening;
  documentViewController = [(THBookViewController *)self documentViewController];

  [(THDocumentViewController *)documentViewController setPerformanceModeBookOpening:openingCopy];
}

- (void)p_finishBookLoad
{
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_83D64;
  v11[3] = &unk_45B810;
  v11[4] = self;
  [THPerformanceRegressionLogger logEventWithBlock:v11];
  [(THBookViewController *)self setBookOpenFailed:[(THBookOpener *)self->mBookOpener isSuccessful]^ 1];
  if (![(THBookViewController *)self bookOpenFailed])
  {
    [+[AVAudioSession sharedInstance](AVAudioSession setCategory:"setCategory:error:" error:AVAudioSessionCategoryPlayback, 0];
    documentRoot = [(THiOSDocument *)self->mDocument documentRoot];
    [documentRoot setSuppliedAnnotationProvider:{objc_msgSend(+[THApplePubAssetPlugin sharedPlugin](THApplePubAssetPlugin, "sharedPlugin"), "sharedAnnotationProvider")}];
    [documentRoot documentDidLoad];
    [(THBookViewController *)self setDocumentViewController:[(THBookViewController *)self documentViewControllerWithDocument:self->mDocument]];
    if ([(THBookViewController *)self isBookEpub])
    {
      if ([(THBookViewController *)self appearanceStyle]== &dword_0 + 3)
      {
        appearanceStyle = [+[NSUserDefaults standardUserDefaults](NSUserDefaults integerForKey:"integerForKey:", @"THBookViewControllerStyleBeforeAutoNight"];
      }

      else
      {
        appearanceStyle = [(THBookViewController *)self appearanceStyle];
      }

      [(THBookViewController *)self setStyleBeforeAutoNight:appearanceStyle];
      if (+[IMTheme isAutoNightModeEnabled])
      {
        [(THBookViewController *)self _updateAppearanceFromLightLevelController:+[BCLightLevelController sharedInstance]];
      }

      [(THBookViewController *)self setTheme:[(THBookViewController *)self themeForStyle:[(THBookViewController *)self appearanceStyle]]];
    }

    [(THDocumentViewController *)[(THBookViewController *)self documentViewController] pushMinimizeLayoutPadding];
    [(THDocumentViewController *)[(THBookViewController *)self documentViewController] setPerformanceModeBookOpening:self->_performanceModeBookOpening];
    if (([objc_msgSend(-[THBookViewController documentRoot](self "documentRoot")] & 1) == 0)
    {
      [(THDocumentLinkResolver *)[(THDocumentViewController *)[(THBookViewController *)self documentViewController] documentLinkResolver] updatePaginationResults];
      [objc_msgSend(-[THBookViewController documentRoot](self "documentRoot")];
    }

    -[THBookViewController setBookLinkResolver:](self, "setBookLinkResolver:", -[THBookLinkResolver initWithDocumentLinkResolver:glossaryLinkResolver:]([THBookLinkResolver alloc], "initWithDocumentLinkResolver:glossaryLinkResolver:", -[THDocumentViewController documentLinkResolver](-[THBookViewController documentViewController](self, "documentViewController"), "documentLinkResolver"), +[THGlossaryLinkResolver glossaryLinkResolverWithGlossaryController:](THGlossaryLinkResolver, "glossaryLinkResolverWithGlossaryController:", [documentRoot glossaryController])));
    self->mIsCompleteBook = [objc_opt_class() allBodiesExist:{objc_msgSend(documentRoot, "rootNode")}];
    if ([(THBookViewController *)self isCompleteBook])
    {
      tocModel = [documentRoot tocModel];
      [tocModel setBookTitle:{-[THBookDescription bookTitle](-[THBookViewController bookDescription](self, "bookDescription"), "bookTitle")}];
      [tocModel setBookSubtitle:{-[THBookDescription bookSubtitle](-[THBookViewController bookDescription](self, "bookDescription"), "bookSubtitle")}];
      [(THBookViewController *)self p_buildIntroMediaViewController];
      [(THBookViewController *)self setBookOpenDestinationIsTOC:[(THBookViewController *)self p_wantsToOpenToTOC]];
      if (![(THBookViewController *)self p_hasDestinationPage])
      {
        if ([(THBookViewController *)self isBookEpub])
        {
          [(THBookViewController *)self p_insertDVCInBack];
        }

        [(THBookViewController *)self showTOC];
      }

      if ([(THBookViewController *)self p_restoreToLaunchPage])
      {
        self->mHasSeenIntroMedia = 1;
        [(THBookViewController *)self viewsAreReadyForOpenAnimation];
      }

      else
      {
        [(THBookViewController *)self setBookOpenDestinationIsTOC:1];
        [(THBookViewController *)self showTOC];
      }

      if (![(THBookViewController *)self introMediaViewController])
      {
        goto LABEL_31;
      }

      [(THiOSIntroMediaViewController *)[(THBookViewController *)self introMediaViewController] setNeedsMoviePosterForOpenAnimation:[(THBookViewController *)self p_introMediaIsUnseenAndSeeable]];
      [-[THBookViewController p_selectedTocViewController](self "p_selectedTocViewController")];
      if ([(THBookViewController *)self openAnimationDidFinish])
      {
        [(THBookViewController *)self p_kickOffIntroMediaIfNecessary];
      }
    }

    else
    {
      [(THBookViewController *)self p_showDVC];
      [(THDocumentViewController *)[(THBookViewController *)self documentViewController] setVisibleInfoUpdatesAllowedInLandscape:1];
      [(THDocumentViewController *)[(THBookViewController *)self documentViewController] setAllowPortraitTOC:0];
      -[THDocumentViewController followLink:](-[THBookViewController documentViewController](self, "documentViewController"), "followLink:", [documentRoot linkForNavigationUnitIndex:0]);
    }

    [(THBookViewController *)self viewsAreReadyForOpenAnimation];
LABEL_31:
    [(THNavigationHistoryStepperController *)[(THBookViewController *)self navigationHistoryStepperController] setPageIndexFormatter:[(THDocumentViewController *)[(THBookViewController *)self documentViewController] documentRoot]];
    [(THNavigationHistoryStepperController *)[(THBookViewController *)self navigationHistoryStepperController] setBookspotHistoryStack:[(THBookViewController *)self bookspotHistoryStack]];
    [(THBookViewController *)self setBookLoadedSuccessfully:1];
    [(THBookViewController *)self _checkIfScanningReadingStatisticsCanBegin];
    goto LABEL_32;
  }

  error = [(THBookOpener *)self->mBookOpener error];
  domain = [(NSError *)error domain];
  if (error)
  {
    v5 = [(NSError *)error code]+ 42594 < 0xFFFFFFFFFFFFFFFDLL;
  }

  else
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    v5 = 1;
  }

  if (![(NSString *)domain isEqualToString:@"ibookserrors"]|| v5)
  {
    [(THBookViewController *)self bookOpenTransitionDidEnd];
  }

  else
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_83DAC;
    v10[3] = &unk_45AE00;
    v10[4] = self;
    [(THBookViewController *)self closeDocumentWithErrorBlock:v10];
  }

LABEL_32:

  self->mBookOpener = 0;
  [(THBookViewController *)self p_updateToolbarButtonStates];
  [(THBookViewController *)self p_updateFromTheme:0];
  [(THBookViewController *)self performSelector:"viewsAreReadyForOpenAnimation" withObject:0 afterDelay:3.0];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_83E70;
  v9[3] = &unk_45B810;
  v9[4] = self;
  [THPerformanceRegressionLogger logEventWithBlock:v9];
}

- (void)p_openBook
{
  if ([(THBookViewController *)self bookDescription]&& [(THAsset *)[(THBookDescription *)[(THBookViewController *)self bookDescription] asset] assetID])
  {
    if (!self->mDocument)
    {
      if (self->mBookOpener)
      {
        [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
      }

      v3 = [[THiOSDocument alloc] initWithBookDescription:[(THBookViewController *)self bookDescription]];
      self->mDocument = v3;
      if (![(THiOSDocument *)v3 context])
      {
        [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
      }

      if (![(THiOSDocument *)self->mDocument documentRoot])
      {
        [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
      }

      v4 = [[THBookOpener alloc] initWithDocumentRoot:[(THiOSDocument *)self->mDocument documentRoot]];
      self->mBookOpener = v4;
      v5[0] = _NSConcreteStackBlock;
      v5[1] = 3221225472;
      v5[2] = sub_84138;
      v5[3] = &unk_45AE00;
      v5[4] = self;
      [(THBookOpener *)v4 setCompletionBlock:v5];
      [+[THBookOpener loadingQueue](THBookOpener "loadingQueue")];
    }
  }

  else
  {

    [(THBookViewController *)self closeDocument];
  }
}

- (void)setPageIndexForProofing:(int64_t)proofing
{
  if ([(THBookViewController *)self isCompleteBook])
  {
    [(THDocumentNavigator *)[(THDocumentViewController *)[(THBookViewController *)self documentViewController] documentNavigator] setVisibleAbsolutePhysicalPageIndex:proofing];
  }

  else
  {
    [(THDocumentViewController *)[(THBookViewController *)self documentViewController] setCurrentNavigationUnit:[(NSArray *)[(THDocumentNavigationModel *)[(THBookViewController *)self navigationModel] navigationUnits] objectAtIndex:0] withRelativePageIndex:proofing animated:0];
  }

  documentViewController = [(THBookViewController *)self documentViewController];

  [(THDocumentViewController *)documentViewController updateVisibleInfos];
}

- (unint64_t)absolutePageIndexForTileEntry:(id)entry
{
  if (![(THReflowablePaginationController *)[(THDocumentViewController *)[(THBookViewController *)self documentViewController] reflowablePaginationController] paginationComplete])
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  documentNavigator = [(THBookViewController *)self documentNavigator];
  modelLink = [entry modelLink];

  return [(THDocumentNavigator *)documentNavigator absolutePageIndexForLink:modelLink];
}

- (unint64_t)maxAbsolutePageIndexForNodeAtTileEntry:(id)entry
{
  if (![(THReflowablePaginationController *)[(THDocumentViewController *)[(THBookViewController *)self documentViewController] reflowablePaginationController] paginationComplete])
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v5 = [objc_msgSend(-[THBookViewController documentRoot](self "documentRoot")];
  if (!v5)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v6 = [(THReflowablePaginationController *)[(THDocumentViewController *)[(THBookViewController *)self documentViewController] reflowablePaginationController] paginationResultForContentNode:v5];
  v7 = 0x7FFFFFFFFFFFFFFFLL;
  if (v6)
  {
    v8 = v6;
    if ([v6 firstPageIndex] != 0x7FFFFFFFFFFFFFFFLL)
    {
      firstPageIndex = [v8 firstPageIndex];
      return firstPageIndex + [v8 pageCount];
    }
  }

  return v7;
}

- (void)showPageForModelLink:(id)link animated:(BOOL)animated
{
  animatedCopy = animated;
  [(THBookViewController *)self recordOutgoingMajorNavigationJump];
  [(THBookViewController *)self p_showDVCAnimated:animatedCopy withLink:link];

  [(THBookViewController *)self recordCurrentLocationInHistory];
}

- (void)p_alertUserAboutDenyingBookmarkEditing
{
  v3 = [THBundle() localizedStringForKey:@"OK" value:&stru_471858 table:0];
  v4 = [THBundle() localizedStringForKey:@"Not Now" value:&stru_471858 table:0];
  v5 = [THBundle() localizedStringForKey:@"New Version Available" value:&stru_471858 table:0];
  v6 = +[UIAlertController alertControllerWithTitle:message:preferredStyle:](UIAlertController, "alertControllerWithTitle:message:preferredStyle:", v5, [THBundle() localizedStringForKey:@"You won\\U2019t be able to delete bookmarks until you update this book." value:&stru_471858 table:0], 1);
  if ([-[THBookViewController documentRoot](self "documentRoot")])
  {
    v7 = v4;
  }

  else
  {
    v7 = v3;
  }

  [(UIAlertController *)v6 addAction:[UIAlertAction actionWithTitle:v7 style:1 handler:0]];
  if ([-[THBookViewController documentRoot](self "documentRoot")])
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_84574;
    v8[3] = &unk_45B358;
    v8[4] = self;
    -[UIAlertController addAction:](v6, "addAction:", +[UIAlertAction actionWithTitle:style:handler:](UIAlertAction, "actionWithTitle:style:handler:", [THBundle() localizedStringForKey:@"Update" value:&stru_471858 table:0], 0, v8));
  }

  [(THBookViewController *)self presentViewController:v6 animated:1 completion:0];
}

- (void)p_alertUserAboutAnnotationBehavior
{
  v3 = [THBundle() localizedStringForKey:@"OK" value:&stru_471858 table:0];
  v4 = [THBundle() localizedStringForKey:@"Not Now" value:&stru_471858 table:0];
  v5 = [THBundle() localizedStringForKey:@"New Version Available" value:&stru_471858 table:0];
  v6 = +[UIAlertController alertControllerWithTitle:message:preferredStyle:](UIAlertController, "alertControllerWithTitle:message:preferredStyle:", v5, [THBundle() localizedStringForKey:@"You won\\U2019t be able to add notes value:highlights or bookmarks until you update this book." table:{&stru_471858, 0}], 1);
  if ([-[THBookViewController documentRoot](self "documentRoot")])
  {
    v7 = v4;
  }

  else
  {
    v7 = v3;
  }

  [(UIAlertController *)v6 addAction:[UIAlertAction actionWithTitle:v7 style:1 handler:0]];
  if ([-[THBookViewController documentRoot](self "documentRoot")])
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_8472C;
    v8[3] = &unk_45B358;
    v8[4] = self;
    -[UIAlertController addAction:](v6, "addAction:", +[UIAlertAction actionWithTitle:style:handler:](UIAlertAction, "actionWithTitle:style:handler:", [THBundle() localizedStringForKey:@"Update" value:&stru_471858 table:0], 0, v8));
  }

  [(THBookViewController *)self presentViewController:v6 animated:1 completion:0];
}

- (void)p_alertUserAboutFontDownload
{
  v3 = [THBundle() localizedStringForKey:@"Downloading Fonts" value:&stru_471858 table:0];
  -[THBookViewController setFontDownloadAlertController:](self, "setFontDownloadAlertController:", +[UIAlertController alertControllerWithTitle:message:preferredStyle:](UIAlertController, "alertControllerWithTitle:message:preferredStyle:", v3, [THBundle() localizedStringForKey:@"This book will open when the download is complete." value:&stru_471858 table:0], 1));
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_848C8;
  v4[3] = &unk_45B358;
  v4[4] = self;
  -[UIAlertController addAction:](-[THBookViewController fontDownloadAlertController](self, "fontDownloadAlertController"), "addAction:", +[UIAlertAction actionWithTitle:style:handler:](UIAlertAction, "actionWithTitle:style:handler:", [THBundle() localizedStringForKey:@"Cancel" value:&stru_471858 table:0], 0, v4));
  -[UIAlertController addAction:](-[THBookViewController fontDownloadAlertController](self, "fontDownloadAlertController"), "addAction:", +[UIAlertAction actionWithTitle:style:handler:](UIAlertAction, "actionWithTitle:style:handler:", [THBundle() localizedStringForKey:@"OK" value:&stru_471858 table:0], 1, 0));
  [(THBookViewController *)self presentViewController:[(THBookViewController *)self fontDownloadAlertController] animated:1 completion:0];
}

- (void)p_alertUserAboutRetinaUpdate
{
  if ([-[THBookViewController documentRoot](self "documentRoot")])
  {
    v3 = [THBundle() localizedStringForKey:@"Not Now" value:&stru_471858 table:0];
    v4 = [THBundle() localizedStringForKey:@"Retina Update Available" value:&stru_471858 table:0];
    v5 = +[UIAlertController alertControllerWithTitle:message:preferredStyle:](UIAlertController, "alertControllerWithTitle:message:preferredStyle:", v4, [THBundle() localizedStringForKey:@"Update this book to get enhanced graphics for your device\\U2019s Retina display." value:&stru_471858 table:0], 1);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_84AB4;
    v7[3] = &unk_45B358;
    v7[4] = self;
    [(UIAlertController *)v5 addAction:[UIAlertAction actionWithTitle:v3 style:1 handler:v7]];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_84ABC;
    v6[3] = &unk_45B358;
    v6[4] = self;
    -[UIAlertController addAction:](v5, "addAction:", +[UIAlertAction actionWithTitle:style:handler:](UIAlertAction, "actionWithTitle:style:handler:", [THBundle() localizedStringForKey:@"Update" value:&stru_471858 table:0], 0, v6));
    [(THBookViewController *)self presentViewController:v5 animated:1 completion:0];
  }
}

- (BOOL)p_shouldAlertAboutRetinaUpdate
{
  v3 = [-[THBookViewController documentRoot](self "documentRoot")];
  if (v3)
  {
    v4 = [+[NSUserDefaults standardUserDefaults](NSUserDefaults objectForKey:"objectForKey:", [(THBookViewController *)self p_retinaUpdateAlertDateKey]];
    if (v4)
    {
      LOBYTE(v3) = [v4 compare:{+[NSDate date](NSDate, "date")}] == -1;
    }

    else
    {
      LOBYTE(v3) = 1;
    }
  }

  return v3;
}

- (void)p_closeBookAndGoToStorePageForBook
{
  if ([-[THBookViewController documentRoot](self "documentRoot")])
  {
    v3 = [+[AEAssetEngine storeMgr](AEAssetEngine "storeMgr")];
    v4 = [-[THBookViewController documentRoot](self "documentRoot")];

    [v3 openEBookProductPageForStoreID:v4];
  }
}

- (id)p_retinaUpdateAlertDateKey
{
  v2 = [-[THBookViewController documentRoot](self "documentRoot")];

  return [@"kTHRetinaUpdateAlertNextDate" stringByAppendingString:v2];
}

- (id)p_retinaUpdateAlertAttemptsKey
{
  v2 = [-[THBookViewController documentRoot](self "documentRoot")];

  return [@"kTHRetinaUpdateAlertNumberOfAttempts" stringByAppendingString:v2];
}

- (void)p_postponeAlertForRetinaUpdate
{
  if (![-[THBookViewController documentRoot](self "documentRoot")])
  {
    return;
  }

  v3 = +[NSUserDefaults standardUserDefaults];
  p_retinaUpdateAlertDateKey = [(THBookViewController *)self p_retinaUpdateAlertDateKey];
  p_retinaUpdateAlertAttemptsKey = [(THBookViewController *)self p_retinaUpdateAlertAttemptsKey];
  v6 = [(NSUserDefaults *)v3 integerForKey:p_retinaUpdateAlertAttemptsKey];
  v7 = v6;
  if (!v6)
  {
    v8 = 14400.0;
    goto LABEL_11;
  }

  if (v6 < 3)
  {
    v8 = 86400.0;
LABEL_11:
    v9 = [NSDate dateWithTimeIntervalSinceNow:v8];
    [(NSUserDefaults *)v3 setInteger:v7 + 1 forKey:p_retinaUpdateAlertAttemptsKey];
    goto LABEL_12;
  }

  v8 = 604800.0;
  if (v6 != &dword_0 + 3)
  {
    v8 = 0.0;
  }

  if (v6 < 4)
  {
    goto LABEL_11;
  }

  v9 = +[NSDate distantFuture];
  [(NSUserDefaults *)v3 removeObjectForKey:p_retinaUpdateAlertAttemptsKey];
LABEL_12:
  [(NSUserDefaults *)v3 setObject:v9 forKey:p_retinaUpdateAlertDateKey];

  [(NSUserDefaults *)v3 synchronize];
}

- (void)p_closeBookAndGoToStoreForRetinaUpdate
{
  if ([-[THBookViewController documentRoot](self "documentRoot")])
  {
    v3 = +[NSUserDefaults standardUserDefaults];
    v4 = [-[THBookViewController documentRoot](self "documentRoot")];
    [(NSUserDefaults *)v3 removeObjectForKey:[(THBookViewController *)self p_retinaUpdateAlertDateKey]];
    [(NSUserDefaults *)v3 removeObjectForKey:[(THBookViewController *)self p_retinaUpdateAlertAttemptsKey]];
    [(NSUserDefaults *)v3 synchronize];
    v5 = [+[AEAssetEngine storeMgr](AEAssetEngine "storeMgr")];

    [v5 openEBookProductPageForStoreID:v4];
  }
}

- (AEAsset)asset
{
  result = self->mBookDescription;
  if (result)
  {
    return [(AEAsset *)result asset];
  }

  return result;
}

- (void)assetViewControllerPrepareForReload
{
  v2 = [-[THDocumentViewController documentRoot](-[THBookViewController documentViewController](self "documentViewController")];

  [v2 setPlaceholder:0 pageHistoryDictionary:0 withContentNode:0];
}

- (void)open:(BOOL)open
{
  openCopy = open;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_84F9C;
  v5[3] = &unk_45B810;
  v5[4] = self;
  [THPerformanceRegressionLogger logEventWithBlock:v5];
  [(THBookViewController *)self runPreloadOptimizations];
  if (![(THBookViewController *)self bookDescription])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  [+[THApplePubAssetPlugin sharedPlugin](THApplePubAssetPlugin "sharedPlugin")];
  [(AEAssetViewControllerDelegate *)[(THBookViewController *)self assetViewControllerDelegate] assetViewController:self willOpen:openCopy];
  [(THBookViewController *)self p_openBook];
}

- (BOOL)p_jumpToLocation:(id)location
{
  if (objc_opt_respondsToSelector())
  {
    v5 = [location performSelector:"cfiString"];
    if (v5)
    {

      return [(THBookViewController *)self p_jumpToBKCFIString:v5];
    }

    return 0;
  }

  if (objc_opt_respondsToSelector())
  {
    v7 = [location performSelector:"anchor"];
    if (!v7)
    {
      return 0;
    }

    return [(THBookViewController *)self p_jumpToFragment:v7];
  }

  else
  {
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      return 0;
    }

    v8 = [location performSelector:"pageOffset"];
    if (v8 == 0x7FFFFFFFFFFFFFFFLL)
    {
      return 0;
    }

    v9 = [[THPageLocation alloc] initWithAbsolutePageIndex:v8];

    return [(THBookViewController *)self jumpToPageLocation:v9 touchHistory:1 minor:0];
  }
}

- (void)openToLocation:(id)location animated:(BOOL)animated
{
  animatedCopy = animated;
  [(THBookViewController *)self setOpeningCFIOverride:0];
  [(THBookViewController *)self setOpeningFragmentOverride:0];
  [(THBookViewController *)self setOpeningAbsolutePageIndexOverride:0x7FFFFFFFFFFFFFFFLL];
  [(THBookViewController *)self setOpeningLocationOverride:0];
  if ([+[THApplePubAssetPlugin sharedPlugin](THApplePubAssetPlugin "sharedPlugin")])
  {
    if ([(THBookViewController *)self documentViewController])
    {
      if ([(THDocumentViewController *)[(THBookViewController *)self documentViewController] showingExpandedWidgetView])
      {
        v7[0] = _NSConcreteStackBlock;
        v7[1] = 3221225472;
        v7[2] = sub_85354;
        v7[3] = &unk_45AE58;
        v7[4] = self;
        v7[5] = location;
        [(THWExpandedViewController *)[(THDocumentViewController *)[(THBookViewController *)self documentViewController] expandedViewController] dismissExpandedAnimatedWithCompletionBlock:v7];
      }

      else
      {

        [(THBookViewController *)self p_jumpToLocation:location];
      }
    }

    else
    {

      [(THBookViewController *)self setOpeningLocationOverride:location];
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      -[THBookViewController setOpeningCFIOverride:](self, "setOpeningCFIOverride:", [location performSelector:"cfiString"]);
    }

    else if (objc_opt_respondsToSelector())
    {
      -[THBookViewController setOpeningFragmentOverride:](self, "setOpeningFragmentOverride:", [location performSelector:"anchor"]);
    }

    else if (objc_opt_respondsToSelector())
    {
      -[THBookViewController setOpeningAbsolutePageIndexOverride:](self, "setOpeningAbsolutePageIndexOverride:", [location performSelector:"pageOffset"]);
    }

    [(THBookViewController *)self open:animatedCopy];
  }
}

- (void)assetViewControllerDidOpenAnimated:(BOOL)animated
{
  [(THBookViewController *)self setPerformanceModeBookOpening:0];
  [(THDocumentViewController *)[(THBookViewController *)self documentViewController] popMinimizeLayoutPadding];
  [+[TSWPLoadableFonts sharedInstance](TSWPLoadableFonts resumeBackgroundLoading];
  [(THBookViewController *)self p_kickOffIntroMediaIfNecessary];
  self->mOpenAnimationDidFinish = 1;
  if ([(THBookViewController *)self openingCFIOverride])
  {
    [(THBookViewController *)self p_jumpToBKCFIString:[(THBookViewController *)self openingCFIOverride]];
    [(THBookViewController *)self setOpeningCFIOverride:0];
  }

  [(THBookViewController *)self vantageDidChangeBy:self reason:@"THVantageChangeReasonBookOpen"];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_8553C;
  v6[3] = &unk_45B810;
  v6[4] = self;
  [THPerformanceRegressionLogger logEventWithBlock:v6];
  if (![-[THDocumentViewController documentRoot](-[THBookViewController documentViewController](self "documentViewController")])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  v4 = [-[THDocumentViewController documentRoot](-[THBookViewController documentViewController](self "documentViewController")];
  if ([-[THDocumentViewController documentRoot](-[THBookViewController documentViewController](self "documentViewController")] && !-[THBookViewController isAnnotationWriteEnabled](self, "isAnnotationWriteEnabled"))
  {
    [(THBookViewController *)self p_alertUserAboutAnnotationBehavior];
  }

  else if ([v4 wasThinned])
  {
    TSUScreenScale();
    if (v5 > 1.0)
    {
      if ([(THBookViewController *)self p_shouldAlertAboutRetinaUpdate])
      {
        [(THBookViewController *)self p_alertUserAboutRetinaUpdate];
      }
    }
  }
}

- (void)assetViewControllerUpdateToolbars
{
  traitCollection = [(THBookViewController *)self traitCollection];

  [(THBookViewController *)self p_updateToolbarButtonStatesWithTraits:traitCollection];
}

- (void)assetViewControllerUpdateToolbarsAfterOpenAnimation
{
  if ([(THBookViewController *)self isBookEpub])
  {
    if ([(THBookViewController *)self isToolbarHidden])
    {
      v3 = +[BRCConfigurationManager sharedInstance];
      if ([-[BRCConfigurationManager valueForKey:fromNamespace:](v3 valueForKey:BRCBooksDefaultsKeyReadingExperienceSamplesShowChromeOnOpen fromNamespace:{BRCBooksDefaultsNamespace), "BOOLValue"}])
      {
        if ([(THBookViewController *)self p_isSampleBook])
        {
          documentViewController = [(THBookViewController *)self documentViewController];
          if (![(THDocumentViewController *)documentViewController showingExpandedWidgetView])
          {
            [(THDocumentViewController *)documentViewController showToolbarAnimated:1];
            navigationBarController = [(THBookViewController *)self navigationBarController];

            [(THNavigationBarController *)navigationBarController clearAutohideTimer];
          }
        }
      }
    }
  }
}

- (void)closeDocumentWithReadLock:(id)lock
{
  documentRoot = [(THDocumentViewController *)[(THBookViewController *)self documentViewController] documentRoot];
  self->mIsClosing = 1;
  context = [documentRoot context];
  v6 = context;
  [documentRoot willClose];
  [+[TSWPLoadableFonts sharedInstance](TSWPLoadableFonts pauseBackgroundLoading];
  -[TSWPLoadableFonts unregisterFontsForGroup:](+[TSWPLoadableFonts sharedInstance](TSWPLoadableFonts, "sharedInstance"), "unregisterFontsForGroup:", [objc_msgSend(objc_msgSend(-[THBookViewController documentRoot](self "documentRoot")]);
  [(THFlowTOCViewController *)self->mFlowTocViewController setReflowablePaginationController:0];
  [(THDocumentViewController *)[(THBookViewController *)self documentViewController] setDocument:0];

  v7 = +[THApplePubAssetPlugin sharedPlugin];

  [v7 didCloseBook:self];
}

- (void)p_cancelBookOpen
{
  mBookOpener = self->mBookOpener;
  if (mBookOpener)
  {
    [(THBookOpener *)mBookOpener cancel];

    self->mBookOpener = 0;
  }
}

- (void)close:(BOOL)close
{
  closeCopy = close;
  [NSObject cancelPreviousPerformRequestsWithTarget:self selector:"pAutoHideNavOverlay" object:0];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_85920;
  v7[3] = &unk_45B810;
  v7[4] = self;
  [THPerformanceRegressionLogger logEventWithBlock:v7];
  [(THBookViewController *)self dismissActivePopover];
  [(THBookViewController *)self hideFullscreenNotesView:[(THBookViewController *)self visibleViewController] andSearchForText:0 animated:0 force:0 completion:0];
  [(THBookViewController *)self hideGlossaryWithDestinationViewController:[(THBookViewController *)self visibleViewController] animated:0 completion:0];
  [(THWAutoplayController *)[(THDocumentViewController *)[(THBookViewController *)self documentViewController] autoplayController] stop];
  [(THNavigationBarController *)[(THBookViewController *)self navigationBarController] clearAutohideTimer];
  documentRoot = [(THDocumentViewController *)[(THBookViewController *)self documentViewController] documentRoot];
  [objc_msgSend(documentRoot "userDataManager")];
  visibleViewController = [(THBookViewController *)self visibleViewController];
  if (visibleViewController == [(THBookViewController *)self documentViewController])
  {
    [(THBookViewController *)self hideTOC];
  }

  [(AEAssetViewControllerDelegate *)[(THBookViewController *)self assetViewControllerDelegate] assetViewController:self willClose:closeCopy];
  [+[THApplePubAssetPlugin sharedPlugin](THApplePubAssetPlugin "sharedPlugin")];
}

- (void)requestClose:(BOOL)close
{
  closeCopy = close;
  assetViewControllerDelegate = [(THBookViewController *)self assetViewControllerDelegate];

  [(AEAssetViewControllerDelegate *)assetViewControllerDelegate assetViewController:self requestClose:closeCopy error:0];
}

- (void)_teardown
{
  if (!self->mTornDown)
  {
    self->mTornDown = 1;
    self->mIsClosing = 1;
    [(THBookViewController *)self p_cancelBookOpen];
    [(THBookViewController *)self hideTOC];
    [(THTOCViewController *)self->mChapterBrowserController setDelegate:0];
    [(THBookViewController *)self setChapterBrowserController:0];
    [(THGlossaryViewController *)[(THBookViewController *)self glossaryViewController] unload];
    documentRoot = [(THDocumentViewController *)[(THBookViewController *)self documentViewController] documentRoot];
    if (documentRoot)
    {
      v5 = documentRoot;
      [documentRoot cancelApplePubRead];
      accessController = [v5 accessController];
      v7 = accessController;
      [accessController performRead:"closeDocumentWithReadLock:" withTarget:self argument:0];
    }

    [(THBookViewController *)self setBookDescription:0];
    documentViewController = [(THBookViewController *)self documentViewController];

    [(THBookViewController *)self p_removeViewController:documentViewController];
  }
}

- (BOOL)dismissShouldBegin:(id)begin
{
  [begin velocity];
  v6 = v5;
  [begin velocity];
  if (v6 >= v7)
  {
    return 0;
  }

  if ([(THDocumentViewController *)[(THBookViewController *)self documentViewController] inFlowMode])
  {
    return 0;
  }

  visibleViewController = [(THBookViewController *)self visibleViewController];
  if (visibleViewController == [(THBookViewController *)self documentViewController]&& [(THDocumentViewController *)[(THBookViewController *)self documentViewController] showingExpandedWidgetView])
  {
    return 0;
  }

  return [begin proposedBeginState];
}

- (void)assetViewControllerReadyToAnswerReadingStatisticsQueries
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_85BDC;
  block[3] = &unk_45AE00;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (id)assetViewControllerViewForLiveResizeSnapshot
{
  visibleViewController = [(THBookViewController *)self visibleViewController];
  if (visibleViewController == [(THBookViewController *)self documentViewController])
  {
    v6 = [-[THDocumentViewController canvasViewController](-[THBookViewController documentViewController](self "documentViewController")];

    return [v6 enclosingScrollView];
  }

  else
  {
    visibleViewController2 = [(THBookViewController *)self visibleViewController];

    return [(UIViewController *)visibleViewController2 view];
  }
}

- (id)overlayViewColorForLiveResize
{
  if ([(THBookViewController *)self isBookEpub])
  {
    theme = [(THBookViewController *)self theme];
    v4 = [-[THBookViewController view](self "view")];

    return [(THTheme *)theme backgroundColorForTraitCollection:v4];
  }

  else
  {

    return +[UIColor whiteColor];
  }
}

- (void)paginationDidComplete
{
  if ([(THBookViewController *)self _inAnalyticsReadSession]&& ![(THBookViewController *)self analyticsReadStartProgress])
  {
    _analyticsReadingProgress = [(THBookViewController *)self _analyticsReadingProgress];

    [(THBookViewController *)self setAnalyticsReadStartProgress:_analyticsReadingProgress];
  }
}

- (BOOL)p_shouldSendVantageChangedNotificationWithReason:(id)reason
{
  result = 0;
  if (![(THDocumentViewController *)[(THBookViewController *)self documentViewController] showingExpandedWidgetView])
  {
    if (![reason isEqualToString:@"THVantageChangeReasonRotation"])
    {
      return 1;
    }

    if (![(THBookViewController *)self isNotesFullscreenVisible]&& ![(THBookViewController *)self isGlossaryVisible]&& ![(THBookViewController *)self isStudyViewControllerVisible])
    {
      documentViewController = [(THBookViewController *)self documentViewController];
      if (documentViewController == [(THBookViewController *)self visibleViewController])
      {
        return 1;
      }
    }
  }

  return result;
}

- (void)vantageWillChangeBy:(id)by reason:(id)reason
{
  if ([(THBookViewController *)self p_shouldSendVantageChangedNotificationWithReason:reason])
  {
    v7 = @"THVantageChangeReason";
    reasonCopy = reason;
    [+[NSNotificationCenter defaultCenter](NSNotificationCenter postNotificationName:"postNotificationName:object:userInfo:" object:@"THVantageWillChangeNotification" userInfo:by, [NSDictionary dictionaryWithObjects:&reasonCopy forKeys:&v7 count:1]];
  }

  if ([reason isEqualToString:@"THVantageChangeReasonPresentationMode"])
  {
    [(THBookViewController *)self p_updateTOCForUpcomingPresentationModeChange];
  }
}

- (void)vantageChangeWasCancelledBy:(id)by reason:(id)reason
{
  if ([(THBookViewController *)self p_shouldSendVantageChangedNotificationWithReason:reason])
  {
    v6 = @"THVantageChangeReason";
    reasonCopy = reason;
    [+[NSNotificationCenter defaultCenter](NSNotificationCenter postNotificationName:"postNotificationName:object:userInfo:" object:@"THVantageChangeWasCancelledNotification" userInfo:by, [NSDictionary dictionaryWithObjects:&reasonCopy forKeys:&v6 count:1]];
  }
}

- (void)vantageDidChangeBy:(id)by reason:(id)reason
{
  if ([(THBookViewController *)self p_shouldSendVantageChangedNotificationWithReason:reason])
  {
    v7 = @"THVantageChangeReason";
    reasonCopy = reason;
    [+[NSNotificationCenter defaultCenter](NSNotificationCenter postNotificationName:"postNotificationName:object:userInfo:" object:@"THVantageDidChangeNotification" userInfo:by, [NSDictionary dictionaryWithObjects:&reasonCopy forKeys:&v7 count:1]];
  }

  if ([reason isEqualToString:@"THVantageChangeReasonPresentationMode"])
  {
    [(THBookViewController *)self p_updateTOCForPresentationModeChange];
  }

  [(THBookViewController *)self p_placeholderLocationDidChange];
}

- (BOOL)bookIsPaginatedForPortrait
{
  bookDescription = [(THBookViewController *)self bookDescription];
  if (bookDescription)
  {
    LOBYTE(bookDescription) = [(THBookDescription *)[(THBookViewController *)self bookDescription] orientationLock]== 1;
  }

  return bookDescription;
}

- (BOOL)allowCopy
{
  bookDescription = [(THBookViewController *)self bookDescription];

  return [(THBookDescription *)bookDescription allowCopy];
}

- (id)activityItemProviderWithCachedAnnotation:(id)annotation
{
  documentRoot = [(THBookViewController *)self documentRoot];

  return [documentRoot activityItemProviderWithAnnotation:annotation];
}

- (id)activityItemProviderWithCachedAnnotations:(id)annotations
{
  documentRoot = [(THBookViewController *)self documentRoot];

  return [documentRoot activityItemProviderWithAnnotations:annotations];
}

- (id)htmlGeneratorWithAnnotations:(id)annotations
{
  v5 = objc_alloc_init(AEAnnotationGroupHTMLGenerator);
  bookDescription = [(THBookViewController *)self bookDescription];
  v7 = [-[THBookViewController documentRoot](self "documentRoot")];
  [v5 setDataSource:self];
  [v5 setStoreId:{-[THBookDescription storeID](bookDescription, "storeID")}];
  bookTitle = [v7 objectForKey:@"itemName"];
  if (!bookTitle)
  {
    bookTitle = [(THBookDescription *)bookDescription bookTitle];
  }

  [v5 setTitle:bookTitle];
  bookAuthor = [v7 objectForKey:@"artistName"];
  if (!bookAuthor)
  {
    bookAuthor = [(THBookDescription *)bookDescription bookAuthor];
  }

  [v5 setAuthor:bookAuthor];
  [v5 setPublisherName:{objc_msgSend(v7, "objectForKey:", @"publisher"}];
  [v5 setPublisherYear:{objc_msgSend(-[THBookViewController documentRoot](self, "documentRoot"), "yearFromReleaseDate")}];
  [v5 setContentProtected:{-[PFDContext kiUanAfQBD5qIUraolUj](-[THBookDescription drmContext](bookDescription, "drmContext"), "kiUanAfQBD5qIUraolUj")}];
  [v5 setCitationsAllowed:{-[THBookViewController allowCopy](self, "allowCopy")}];
  [v5 setAnnotations:annotations];
  return v5;
}

- (id)annotationID
{
  v2 = [-[THBookViewController documentRoot](self "documentRoot")];

  return [v2 annotationID];
}

- (BOOL)followAnchor:(id)anchor pulse:(BOOL)pulse
{
  pulseCopy = pulse;
  [(THDocumentViewController *)[(THBookViewController *)self documentViewController] zoomOutIfNecessaryPriorToNavigation];
  if ([anchor contentNode])
  {
    if ([(THBookViewController *)self isGlossaryVisible])
    {
      if (![(THGlossaryViewController *)[(THBookViewController *)self glossaryViewController] shouldDismissAfterRotate])
      {
        [(THBookViewController *)self p_showDVC];
        [(THBookViewController *)self hideGlossaryWithDestinationViewController:[(THBookViewController *)self visibleViewController]];
      }
    }

    else
    {
      [(THBookViewController *)self p_showDVC];
    }

    documentViewController = [(THBookViewController *)self documentViewController];
  }

  else
  {
    glossaryEntry = [anchor glossaryEntry];
    if (!glossaryEntry)
    {
      return glossaryEntry;
    }

    [(THBookViewController *)self p_showGlossary];
    documentViewController = [(THBookViewController *)self glossaryViewController];
  }

  LOBYTE(glossaryEntry) = [(THDocumentViewController *)documentViewController followAnchor:anchor pulse:pulseCopy];
  return glossaryEntry;
}

- (void)willFollowAnchor:(id)anchor pulse:(BOOL)pulse
{
  if ([anchor contentNode])
  {
    visibleViewController = [(THBookViewController *)self visibleViewController];
    if (visibleViewController != [(THBookViewController *)self documentViewController])
    {

      [(THBookViewController *)self p_showDVC];
    }
  }
}

- (BOOL)followLink:(id)link animated:(BOOL)animated
{
  animatedCopy = animated;
  v6 = [(THBookViewController *)self anchorFromLink:link];
  v7 = +[UIView areAnimationsEnabled];
  [UIView setAnimationsEnabled:animatedCopy];
  LOBYTE(animatedCopy) = [(THBookViewController *)self followAnchor:v6 pulse:1];
  [UIView setAnimationsEnabled:v7];
  return animatedCopy;
}

- (id)anchorFromLink:(id)link
{
  bookLinkResolver = [(THBookViewController *)self bookLinkResolver];
  currentPresentationType = [(THDocumentViewController *)[(THBookViewController *)self documentViewController] currentPresentationType];

  return [(THBookLinkResolver *)bookLinkResolver anchorFromAbsoluteLink:link presentationType:currentPresentationType];
}

- (void)followAbsolutePageIndex:(unint64_t)index
{
  [(THBookViewController *)self p_showDVC];
  [(THBookViewController *)self hideGlossaryWithDestinationViewController:[(THBookViewController *)self visibleViewController]];
  [(THDocumentViewController *)[(THBookViewController *)self documentViewController] followAbsolutePageIndex:index];
  [-[THDocumentViewController interactiveCanvasController](self->mDocumentViewController "interactiveCanvasController")];

  +[CATransaction flush];
}

- (BOOL)isNotesFullscreenVisible
{
  if (self->mNotesFullscreenViewController)
  {
    if ([(THBookViewController *)self isStudyViewControllerVisible])
    {
      LOBYTE(isViewLoaded) = 0;
    }

    else
    {
      isViewLoaded = [(THNotesViewController *)[(THBookViewController *)self notesFullscreenViewController] isViewLoaded];
      if (isViewLoaded)
      {
        LOBYTE(isViewLoaded) = [-[THNotesViewController view](-[THBookViewController notesFullscreenViewController](self "notesFullscreenViewController")] != 0;
      }
    }
  }

  else
  {
    LOBYTE(isViewLoaded) = 0;
  }

  return isViewLoaded;
}

- (BOOL)isGlossaryVisible
{
  glossaryViewController = [(THBookViewController *)self glossaryViewController];
  if (glossaryViewController)
  {
    glossaryViewController2 = [(THBookViewController *)self glossaryViewController];

    LOBYTE(glossaryViewController) = [(THGlossaryViewController *)glossaryViewController2 isGlossaryVisible];
  }

  return glossaryViewController;
}

- (BOOL)isTOCVisible
{
  visibleViewController = [(THBookViewController *)self visibleViewController];
  if (!visibleViewController)
  {
    return 0;
  }

  v4 = visibleViewController == self->mFlowTocViewController || visibleViewController == self->mChapterBrowserController || visibleViewController == self->mFlowToCTableViewController;
  if ([(THBookViewController *)self isGlossaryVisible]|| [(THBookViewController *)self isNotesFullscreenVisible]|| [(THBookViewController *)self isStudyViewControllerVisible])
  {
    return 0;
  }

  return v4;
}

- (BOOL)isGlossaryPresenting
{
  presentingGlossary = [(THBookViewController *)self presentingGlossary];
  if (presentingGlossary)
  {
    LOBYTE(presentingGlossary) = [(THBookViewController *)self glossaryViewController]!= 0;
  }

  return presentingGlossary;
}

- (void)willJumpToPageLocation:(id)location
{
  [(THBookViewController *)self vantageWillChangeBy:self reason:@"THVantageChangeReasonNavigation"];

  [(THBookViewController *)self p_showDVC];
}

- (void)didJumpToPageLocation:(id)location
{
  [-[THDocumentViewController interactiveCanvasController](self->mDocumentViewController interactiveCanvasController];
  +[CATransaction flush];

  [(THBookViewController *)self vantageDidChangeBy:self reason:@"THVantageChangeReasonNavigation"];
}

- (void)showBookmarksView:(id)view
{
  [(THNavigationOverlayView *)[(THBookViewController *)self navigationOverlayView] setOverlayHidden:0 animated:1];

  [(THBookViewController *)self p_showBookmarkMenu];
}

- (BOOL)canIncreaseFontSize
{
  displaySettingsViewController = [(THBookViewController *)self displaySettingsViewController];

  return [(THBookViewController *)self shouldShowFontResizeControls:displaySettingsViewController];
}

- (BOOL)canDecreaseFontSize
{
  displaySettingsViewController = [(THBookViewController *)self displaySettingsViewController];

  return [(THBookViewController *)self shouldShowFontResizeControls:displaySettingsViewController];
}

- (void)increaseFontSize:(id)size
{
  [(THBookViewController *)self p_setupDisplaySettingsIfNeeded];
  [(THDisplaySettingsViewController *)[(THBookViewController *)self displaySettingsViewController] increaseFontSize:self];

  [(THBookViewController *)self setDisplaySettingsViewController:0];
}

- (void)decreaseFontSize:(id)size
{
  [(THBookViewController *)self p_setupDisplaySettingsIfNeeded];
  [(THDisplaySettingsViewController *)[(THBookViewController *)self displaySettingsViewController] decreaseFontSize:self];

  [(THBookViewController *)self setDisplaySettingsViewController:0];
}

- (void)searchFinished:(BOOL)finished completion:(id)completion
{
  finishedCopy = finished;
  if ([(THBookViewController *)self p_isSearchVisible])
  {

    [(THBookViewController *)self dismissSearchPopover:finishedCopy completion:completion];
  }
}

- (BOOL)canRevealTOC
{
  p_selectedTocViewController = [(THBookViewController *)self p_selectedTocViewController];
  mChapterBrowserController = self->mChapterBrowserController;
  [-[THBookViewController view](self "view")];
  if (v5 <= 0.0)
  {
    v9 = 0;
  }

  else
  {
    [-[THBookViewController view](self "view")];
    v7 = v6;
    [-[THBookViewController view](self "view")];
    v9 = v7 / v8 < 0.5;
  }

  if (p_selectedTocViewController != mChapterBrowserController)
  {
    return 0;
  }

  if (TSUPhoneUI())
  {
    return 1;
  }

  return [(THBookViewController *)self im_isCompactWidth]& v9;
}

- (void)willRevealTOC
{
  [(THDocumentViewController *)self->mDocumentViewController willStartRevealTOC];
  currentChapter = [(THDocumentViewController *)self->mDocumentViewController currentChapter];
  currentRelativePageIndex = [(THDocumentViewController *)self->mDocumentViewController currentRelativePageIndex];
  if (currentRelativePageIndex == 0x7FFFFFFFFFFFFFFFLL)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  [(THChapterBrowserController *)self->mChapterBrowserController setIsPinchingDownFromCanvas:1];
  [(THChapterBrowserController *)self->mChapterBrowserController setChapterIndex:currentChapter];
  [(THTOCViewController *)self->mChapterBrowserController setShroudedFraction:1.0];
  [(THBookViewController *)self p_addViewControllerInBack:self->mChapterBrowserController];
  [(THChapterBrowserController *)self->mChapterBrowserController willTransitionFromChapterIndex:currentChapter];
  [(THChapterBrowserController *)self->mChapterBrowserController hidePageThumbnailAtIndex:currentRelativePageIndex chapterIndex:currentChapter scrollIfNecessary:1];
  [(THChapterBrowserController *)self->mChapterBrowserController scrollToThumbnailAtIndex:[(THDocumentViewController *)self->mDocumentViewController currentRelativePageIndex]];
  mDocumentViewController = self->mDocumentViewController;

  [(THDocumentViewController *)mDocumentViewController startRevealTOC];
}

- (CGRect)pageTargetRectForRevealingTOC
{
  mChapterBrowserController = self->mChapterBrowserController;
  currentRelativePageIndex = [(THDocumentViewController *)self->mDocumentViewController currentRelativePageIndex];
  v5 = [-[THBookViewController unmovingViewForRevealingTOC](self "unmovingViewForRevealingTOC")];

  [(THChapterBrowserController *)mChapterBrowserController rectForPageThumbnailAtIndex:currentRelativePageIndex inLayer:v5];
  result.size.height = v9;
  result.size.width = v8;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

- (void)revealTOCAnimated:(BOOL)animated duration:(double)duration
{
  animatedCopy = animated;
  [(THDocumentViewController *)self->mDocumentViewController showPageThumbnailsForPageIndexes:[NSIndexSet indexSetWithIndex:?], 1, duration];
  mChapterBrowserController = self->mChapterBrowserController;

  [(THTOCViewController *)mChapterBrowserController setShrouded:0 animated:animatedCopy duration:duration];
}

- (void)unrevealTOCAnimated:(BOOL)animated duration:(double)duration
{
  animatedCopy = animated;
  [THDocumentViewController hidePageThumbnailsAnimated:"hidePageThumbnailsAnimated:duration:" duration:?];
  mChapterBrowserController = self->mChapterBrowserController;

  [(THTOCViewController *)mChapterBrowserController setShrouded:1 animated:animatedCopy duration:duration];
}

- (void)didRevealTOC
{
  [(THBookViewController *)self dismissActivePopover];
  if (![(THChapterBrowserController *)self->mChapterBrowserController paginatedTOCShowsStatusBar]&& ![(THBookViewController *)self isToolbarHidden])
  {
    [(THBookViewController *)self hideToolbarAnimated:1];
  }

  [(THBookViewController *)self refreshStatusBarAppearance];
  [(THChapterBrowserController *)self->mChapterBrowserController didTransitionFromCanvas];
  [(THTOCViewControllerDelegate *)[(THTOCViewController *)self->mChapterBrowserController delegate] didTransitionFromViewController:[(THDocumentViewController *)self->mDocumentViewController canvasViewController] toTOCViewController:self->mChapterBrowserController];
  [-[THDocumentViewController view](self->mDocumentViewController "view")];
  [(THDocumentViewController *)self->mDocumentViewController setVisibleInfoUpdatesAllowedInLandscape:0];
  [(THDocumentViewController *)self->mDocumentViewController hidePageThumbnailsAnimated:0 duration:0.0];

  [(THBookViewController *)self recordOutgoingMajorNavigationJump];
}

- (void)endRevealTOC
{
  [(THChapterBrowserController *)self->mChapterBrowserController showPageThumbnailAtIndex:[(THDocumentViewController *)self->mDocumentViewController currentRelativePageIndex]];
  mDocumentViewController = self->mDocumentViewController;

  [(THDocumentViewController *)mDocumentViewController endRevealTOC];
}

- (void)viewsDidResize
{
  assetViewControllerDelegate = [(THBookViewController *)self assetViewControllerDelegate];

  [(AEAssetViewControllerDelegate *)assetViewControllerDelegate didFinishUpdateForAssetViewController:self];
}

- (void)recordOutgoingMajorNavigationJump
{
  bookspotHistoryStack = [(THBookViewController *)self bookspotHistoryStack];

  [(THBookspotHistoryStack *)bookspotHistoryStack recordOutgoingMajorNavigationJump];
}

- (void)willJumpToTOC
{
  bookspotHistoryStack = [(THBookViewController *)self bookspotHistoryStack];

  [(THBookspotHistoryStack *)bookspotHistoryStack recordOutgoingMajorNavigationJumpSuppressingToolbar:1];
}

- (void)updateNavigationAffordances
{
  [(THNavigationHistoryStepperController *)[(THBookViewController *)self navigationHistoryStepperController] updateHistoryNavigation];

  [(THBookViewController *)self updatePageNumberWidth];
}

- (void)updatePageNumberWidth
{
  [(THNavigationOverlayView *)[(THBookViewController *)self navigationOverlayView] layoutIfNeeded];
  [(THNavigationOverlayView *)[(THBookViewController *)self navigationOverlayView] frame];
  v3 = CGRectGetWidth(v14) * 0.5;
  [(UIButton *)[(THNavigationOverlayView *)[(THBookViewController *)self navigationOverlayView] prevButton] frame];
  v4 = v3 - CGRectGetMaxX(v15);
  [(UIButton *)[(THNavigationOverlayView *)[(THBookViewController *)self navigationOverlayView] nextButton] frame];
  MinX = CGRectGetMinX(v16);
  [(THNavigationOverlayView *)[(THBookViewController *)self navigationOverlayView] frame];
  v6 = MinX - CGRectGetWidth(v17) * 0.5;
  navigationOverlayView = [(THBookViewController *)self navigationOverlayView];
  if (v4 >= v6)
  {
    [(UIButton *)[(THNavigationOverlayView *)navigationOverlayView nextButton] frame];
    v10 = CGRectGetMinX(v20);
    [(THNavigationOverlayView *)[(THBookViewController *)self navigationOverlayView] frame];
    v9 = v10 + CGRectGetWidth(v21) * -0.5;
  }

  else
  {
    [(THNavigationOverlayView *)navigationOverlayView frame];
    v8 = CGRectGetWidth(v18) * 0.5;
    [(UIButton *)[(THNavigationOverlayView *)[(THBookViewController *)self navigationOverlayView] prevButton] frame];
    v9 = v8 - CGRectGetMaxX(v19);
  }

  v11 = v9 + v9;
  navOverlayPageNumberView = [(THDocumentViewController *)[(THBookViewController *)self documentViewController] navOverlayPageNumberView];

  [(THPageNumberView *)navOverlayPageNumberView updateMaxWidth:v11];
}

- (void)tocIsReadyToPresent:(id)present
{
  if ([(THBookViewController *)self bookOpenDestinationIsTOC])
  {

    [(THBookViewController *)self viewsAreReadyForOpenAnimation];
  }
}

- (void)setupDVCForTOCController:(id)controller
{
  visibleViewController = [(THBookViewController *)self visibleViewController];
  if (visibleViewController != [(THBookViewController *)self documentViewController])
  {

    [(THBookViewController *)self p_insertDVCInBack];
  }
}

- (id)navigationUnitForChapterBrowserController:(id)controller chapterIndex:(unint64_t)index
{
  documentViewController = [(THBookViewController *)self documentViewController];

  return [(THDocumentViewController *)documentViewController navigationUnitForChapterIndex:index];
}

- (id)presentationTypeForChapterBrowserController:(id)controller
{
  documentViewController = [-[THDocumentViewController documentRoot](-[THBookViewController documentViewController](self documentViewController];

  return [documentViewController chapterBrowserPagePresentationType];
}

- (void)p_updateCanvasWithPendingPageIndexPath
{
  if (self->mPendingPageIndexPath)
  {
    [(THDocumentViewController *)[(THBookViewController *)self documentViewController] setVisibleInfoUpdatesAllowedInLandscape:1];
    [(THDocumentViewController *)[(THBookViewController *)self documentViewController] updateVisibleInfosWithPageIndex:[(NSIndexPath *)self->mPendingPageIndexPath indexAtPosition:1]];

    self->mPendingPageIndexPath = 0;
  }
}

- (void)preloadContentNodesForPageRange:(_NSRange)range chapterIndex:(unint64_t)index
{
  if (range.location != NSInvalidRange[0] || range.length != NSInvalidRange[1])
  {
    length = range.length;
    location = range.location;
    v9 = +[THPresentationType paginatedPresentationTypeInContext:](THPresentationType, "paginatedPresentationTypeInContext:", [objc_msgSend(-[THBookViewController documentRoot](self "documentRoot")]);
    v10 = [(THDocumentViewController *)[(THBookViewController *)self documentViewController] navigationUnitForChapterIndex:index];
    v11 = objc_alloc_init(NSMutableSet);
    if (length)
    {
      v15 = v19;
      do
      {
        v12 = [v10 contentNodeForRelativePageIndex:location forPresentationType:{v9, v15}];
        if (v12)
        {
          v13 = v12;
          [(NSMutableSet *)v11 addObject:v12];
          [v13 startLoading];
          v18[0] = 0;
          v18[1] = v18;
          v18[2] = 0x3052000000;
          v19[0] = sub_8747C;
          v19[1] = sub_8748C;
          v19[2] = [(THBookViewController *)self documentViewController];
          v16[6] = v18;
          v17[0] = _NSConcreteStackBlock;
          v17[1] = 3221225472;
          v17[2] = sub_87498;
          v17[3] = &unk_45AE58;
          v17[4] = v11;
          v17[5] = v13;
          v16[0] = _NSConcreteStackBlock;
          v16[1] = 3221225472;
          v16[2] = sub_874A4;
          v16[3] = &unk_45BE10;
          v16[4] = v11;
          v16[5] = v13;
          [v13 performWhenFinishedLoading:v17 onError:v16];
          _Block_object_dispose(v18, 8);
        }

        ++location;
        --length;
      }

      while (length);
    }

    v14 = [(NSMutableSet *)self->mPreloadingContentNodes mutableCopy];
    [v14 minusSet:v11];
    [v14 makeObjectsPerformSelector:"cancelLoading"];

    self->mPreloadingContentNodes = v11;
  }
}

- (void)cancelPreloadOfContentNodes
{
  mPreloadingContentNodes = self->mPreloadingContentNodes;
  self->mPreloadingContentNodes = 0;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = [(NSMutableSet *)mPreloadingContentNodes countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(mPreloadingContentNodes);
        }

        [*(*(&v7 + 1) + 8 * v6) cancelLoading];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [(NSMutableSet *)mPreloadingContentNodes countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }

  [(NSMutableSet *)mPreloadingContentNodes removeAllObjects];
}

- (void)chapterBrowserController:(id)controller willTransitionToPageIndex:(unint64_t)index chapterIndex:(unint64_t)chapterIndex freeTransform:(BOOL)transform
{
  transformCopy = transform;
  [(THBookViewController *)self setDisallowRotate:1];
  if (!transformCopy)
  {
    [(THNavigationBarController *)[(THBookViewController *)self navigationBarController] setNavigationBarHidden:1 animated:1];
  }

  [(THBookViewController *)self p_insertDVCInBackAnimated:1];
  [(THDocumentViewController *)[(THBookViewController *)self documentViewController] switchToNavigationUnitForChapterIndex:chapterIndex];
  [(THBookLinkResolver *)[(THBookViewController *)self bookLinkResolver] setDocumentLinkResolver:[(THDocumentViewController *)[(THBookViewController *)self documentViewController] documentLinkResolver]];
  [(THDocumentNavigator *)[(THDocumentViewController *)[(THBookViewController *)self documentViewController] documentNavigator] setVisitedPagesAfterOpening:1];
  v17[0] = chapterIndex;
  v17[1] = index;
  v10 = [[NSIndexPath alloc] initWithIndexes:v17 length:2];
  if (self->mPendingPageIndexPath)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  self->mPendingPageIndexPath = v10;
  [-[THDocumentViewController interactiveCanvasController](-[THBookViewController documentViewController](self "documentViewController")];
  [-[THDocumentViewController interactiveCanvasController](-[THBookViewController documentViewController](self "documentViewController")];
  [-[THDocumentViewController interactiveCanvasController](-[THBookViewController documentViewController](self "documentViewController")];
  v11 = [(THDocumentViewController *)[(THBookViewController *)self documentViewController] contentNodeForPageIndex:index];
  [v11 startLoading];
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x3052000000;
  v16[3] = sub_8747C;
  v16[4] = sub_8748C;
  v16[5] = [(THBookViewController *)self documentViewController];
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x3052000000;
  v15[3] = sub_8747C;
  v15[4] = sub_8748C;
  v15[5] = [(THDocumentViewController *)[(THBookViewController *)self documentViewController] interactiveCanvasController];
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x3052000000;
  v14[3] = sub_8747C;
  v14[4] = sub_8748C;
  v14[5] = self;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_879A4;
  v13[3] = &unk_45C528;
  v13[4] = self;
  v13[5] = v10;
  v13[6] = v16;
  v13[7] = v14;
  v13[8] = index;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_87A2C;
  v12[3] = &unk_45BB48;
  v12[4] = self;
  v12[5] = v15;
  v12[6] = v16;
  [v11 performWhenFinishedLoading:v13 onError:v12];
  _Block_object_dispose(v14, 8);
  _Block_object_dispose(v15, 8);
  _Block_object_dispose(v16, 8);
}

- (void)chapterBrowserController:(id)controller didTransitionToPageIndex:(unint64_t)index chapterIndex:(unint64_t)chapterIndex relativeTargetRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v13 = [(THBookViewController *)self setupLoadSpinner:controller];
  [-[THDocumentViewController contentNodeForPageIndex:](-[THBookViewController documentViewController](self "documentViewController")];
  +[CATransaction begin];
  [(THBookViewController *)self p_updateCanvasWithPendingPageIndexPath];
  [-[THDocumentViewController interactiveCanvasController](-[THBookViewController documentViewController](self "documentViewController")];
  v14 = [objc_msgSend(objc_msgSend(-[THDocumentViewController interactiveCanvasController](-[THBookViewController documentViewController](self "documentViewController")];
  LODWORD(v15) = 1.0;
  [v14 setOpacity:v15];
  +[CATransaction commit];
  [(THDocumentViewController *)[(THBookViewController *)self documentViewController] updateVisibleInfos];
  if (v13)
  {
    [(THBookViewController *)self hideLoadSpinner];
  }

  [-[THDocumentViewController interactiveCanvasController](-[THBookViewController documentViewController](self "documentViewController")];
  [-[THDocumentViewController interactiveCanvasController](-[THBookViewController documentViewController](self "documentViewController")];
  [-[THDocumentViewController interactiveCanvasController](-[THBookViewController documentViewController](self "documentViewController")];
  if ([(THBookViewController *)self shouldKeepTOCInBackground:controller])
  {
    [(THBookViewController *)self p_addViewControllerInBack:controller];
  }

  else
  {
    [(THBookViewController *)self hideTOC];
  }

  [(THBookViewController *)self hideToolbarAnimated:0];
  [(THBookViewController *)self p_showDVC];
  v16 = [-[THBookViewController documentRoot](self "documentRoot")];
  if (([v16 indexLoaded] & 1) == 0 && (objc_msgSend(v16, "unloadRequested") & 1) == 0 && (TSUPadIsFirstGen() & 1) == 0)
  {
    [v16 loadIndex];
  }

  [(THBookViewController *)self recordCurrentLocationInHistory];
  [(THDocumentViewController *)[(THBookViewController *)self documentViewController] zoomToRelativeTargetRect:index atPageIndex:x, y, width, height];
  [(THBookViewController *)self setDisallowRotate:0];

  [(THBookViewController *)self refreshStatusBarAppearance];
}

- (void)chapterBrowserController:(id)controller cancelledTransitionToPageIndex:(unint64_t)index chapterIndex:(unint64_t)chapterIndex
{
  v7 = [(THBookViewController *)self documentViewController:controller];
  [-[THDocumentViewController interactiveCanvasController](v7 "interactiveCanvasController")];
  [-[THDocumentViewController interactiveCanvasController](v7 "interactiveCanvasController")];
  [-[THDocumentViewController contentNodeForPageIndex:](v7 contentNodeForPageIndex:{index), "cancelLoading"}];
  [(THBookViewController *)self p_removeViewController:v7];
  [(THDocumentViewController *)v7 setVisibleInfoUpdatesAllowedInLandscape:0];

  self->mPendingPageIndexPath = 0;

  [(THBookViewController *)self setDisallowRotate:0];
}

- (CGRect)chapterBrowserController:(id)controller rectForRelativePageIndex:(unint64_t)index chapterIndex:(unint64_t)chapterIndex
{
  documentViewController = [(THBookViewController *)self documentViewController];

  [(THDocumentViewController *)documentViewController rectForRelativePageIndex:index chapterIndex:chapterIndex];
  result.size.height = v11;
  result.size.width = v10;
  result.origin.y = v9;
  result.origin.x = v8;
  return result;
}

- (id)chapterBrowserController:(id)controller pageNumberStringForRelativePageIndex:(unint64_t)index andChapterIndex:(unint64_t)chapterIndex
{
  v8 = [-[THDocumentViewController navigationUnitForChapterIndex:](-[THBookViewController documentViewController](self "documentViewController")];
  navigationModel = [(THBookViewController *)self navigationModel];
  v10 = [(THBookViewController *)self presentationTypeForChapterBrowserController:controller];

  return [(THDocumentNavigationModel *)navigationModel pageNumberStringForAbsolutePageIndex:&v8[index] forPresentationType:v10];
}

- (unint64_t)chapterCountForChapterBrowserController:(id)controller
{
  documentRoot = [objc_msgSend(-[THBookViewController documentRoot](self documentRoot];

  return [documentRoot count];
}

- (id)chapterBrowserController:(id)controller tocTileModelAtIndex:(unint64_t)index
{
  documentRoot = [objc_msgSend(-[THBookViewController documentRoot](self documentRoot];

  return [documentRoot objectAtIndex:index];
}

- (id)canvasScrollViewForChapterBrowserController:(id)controller
{
  documentViewController = [-[THDocumentViewController interactiveCanvasController](-[THBookViewController documentViewController](self documentViewController];

  return [documentViewController enclosingScrollView];
}

- (unint64_t)chapterBrowserController:(id)controller relativePageIndexForLink:(id)link
{
  documentViewController = [(THBookViewController *)self documentViewController];
  [(THDocumentViewController *)documentViewController ensureDocumentIsLoaded];
  documentNavigator = [(THDocumentViewController *)documentViewController documentNavigator];

  return [(THDocumentNavigator *)documentNavigator relativePageIndexForLink:link];
}

- (CGRect)chapterBrowserController:(id)controller targetRelativeRectForPoint:(CGPoint)point atPageIndex:(unint64_t)index chapterIndex:(unint64_t)chapterIndex
{
  y = point.y;
  x = point.x;
  documentViewController = [(THBookViewController *)self documentViewController];

  [(THDocumentViewController *)documentViewController targetRelativeRectForPoint:index atPageIndex:chapterIndex chapterIndex:0 waitForContentNodeLoad:x, y];
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (CGRect)chapterBrowserController:(id)controller targetRelativeRectForRelativePoint:(CGPoint)point atPageIndex:(unint64_t)index chapterIndex:(unint64_t)chapterIndex
{
  y = point.y;
  x = point.x;
  documentViewController = [(THBookViewController *)self documentViewController];

  [(THDocumentViewController *)documentViewController targetRelativeRectForRelativePoint:index atPageIndex:chapterIndex chapterIndex:0 waitForContentNodeLoad:x, y];
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (BOOL)chapterBrowserController:(id)controller shouldShowShroudForVisibleSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  if ([(THBookViewController *)self visibleViewController]== controller || [(THBookViewController *)self transitioningTOCSize])
  {
    return 0;
  }

  return [(THBookViewController *)self p_shouldShowShroudForVisibleSize:width, height];
}

- (BOOL)isTwoUpForChapterBrowserController:(id)controller
{
  documentViewController = [(THBookViewController *)self documentViewController];

  return [(THDocumentViewController *)documentViewController isTwoUp];
}

- (BOOL)isLastPageInChapterForChapterBrowserController:(id)controller pageIndex:(unint64_t)index chapterIndex:(unint64_t)chapterIndex
{
  documentViewController = [(THBookViewController *)self documentViewController];

  return [(THDocumentViewController *)documentViewController isLastPageInChapterForRelativePageIndex:index chapterIndex:chapterIndex];
}

- (BOOL)isSinglePageInChapterForChapterBrowserController:(id)controller chapterIndex:(unint64_t)index
{
  documentViewController = [(THBookViewController *)self documentViewController];

  return [(THDocumentViewController *)documentViewController isSinglePageChapterForChapterIndex:index];
}

- (void)TOCShowToolbarAnimated:(BOOL)animated
{
  animatedCopy = animated;
  visibleViewController = [(THBookViewController *)self visibleViewController];
  if (visibleViewController == [(THBookViewController *)self chapterBrowserController])
  {

    [(THBookViewController *)self showToolbarAnimated:animatedCopy];
  }
}

- (void)TOCHideToolbarAnimated:(BOOL)animated
{
  animatedCopy = animated;
  visibleViewController = [(THBookViewController *)self visibleViewController];
  if (visibleViewController == [(THBookViewController *)self chapterBrowserController])
  {

    [(THBookViewController *)self hideToolbarAnimated:animatedCopy];
  }
}

- (BOOL)isPageBookmarkedForDocumentViewController:(id)controller
{
  if ([(THBookViewController *)self documentViewController]!= controller)
  {
    return 0;
  }

  return [(THBookViewController *)self isPageBookmarked];
}

- (void)setPageBookmarked:(BOOL)bookmarked forDocumentViewController:(id)controller
{
  bookmarkedCopy = bookmarked;
  if ([(THBookViewController *)self documentViewController]== controller)
  {

    [(THBookViewController *)self setPageBookmarked:bookmarkedCopy];
  }
}

- (BOOL)setupLoadSpinner
{
  mSpinnerView = self->mSpinnerView;
  if (!mSpinnerView)
  {
    +[CATransaction begin];
    self->mSpinnerView = [[UIView alloc] initWithFrame:{0.0, 0.0, 112.0, 112.0}];
    [-[THBookViewController view](self "view")];
    TSDCenterOfRect();
    [(UIView *)self->mSpinnerView setCenter:?];
    [(UIView *)self->mSpinnerView frame];
    v10 = CGRectIntegral(v9);
    [(UIView *)self->mSpinnerView setFrame:v10.origin.x, v10.origin.y, v10.size.width, v10.size.height];
    [(CALayer *)[(UIView *)self->mSpinnerView layer] setCornerRadius:8.0];
    [(UIView *)self->mSpinnerView setBackgroundColor:[UIColor colorWithWhite:0.0 alpha:0.800000012]];
    v4 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:101];
    [(UIView *)self->mSpinnerView bounds];
    TSDCenterOfRect();
    [v4 setCenter:?];
    [v4 frame];
    v12 = CGRectIntegral(v11);
    [v4 setFrame:{v12.origin.x, v12.origin.y, v12.size.width, v12.size.height}];
    [v4 setColor:{+[UIColor colorWithWhite:alpha:](UIColor, "colorWithWhite:alpha:", 1.0, 0.899999976)}];
    [v4 startAnimating];
    [(UIView *)self->mSpinnerView addSubview:v4];

    [(CALayer *)[(UIView *)self->mSpinnerView layer] setZPosition:10.0];
    [-[THBookViewController view](self "view")];
    [(UIView *)self->mSpinnerView setAlpha:0.0];
    isBookEpub = [(THBookViewController *)self isBookEpub];
    v6 = 3.0;
    if (!isBookEpub)
    {
      v6 = 2.0;
    }

    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_884C8;
    v8[3] = &unk_45AE00;
    v8[4] = self;
    [UIView animateWithDuration:0 delay:v8 options:0 animations:0.15 completion:v6];
    +[CATransaction commit];
  }

  return mSpinnerView == 0;
}

- (void)hideLoadSpinner
{
  mSpinnerView = self->mSpinnerView;
  if (!mSpinnerView)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    mSpinnerView = self->mSpinnerView;
  }

  [(UIView *)mSpinnerView removeFromSuperview];

  self->mSpinnerView = 0;
}

- (void)p_applyAccessibilityLabelForButton:(id)button withImageNamed:(id)named
{
  if ([named hasPrefix:@"list.bullet"])
  {
    v6 = @"toc.and.glossary.button";
LABEL_11:
    v7 = THAccessibilityLocalizedString(v6);

    [button setAccessibilityLabel:v7];
    return;
  }

  if ([named hasPrefix:@"rectangle"])
  {
    v6 = @"annotation.button";
    goto LABEL_11;
  }

  if ([named hasPrefix:@"sun.max"])
  {
    v6 = @"brightness.button";
    goto LABEL_11;
  }

  if ([named hasPrefix:@"textformat.size"])
  {
    v6 = @"font.size.and.brightness.button";
    goto LABEL_11;
  }

  if ([named hasPrefix:@"magnifyingglass"])
  {
    v6 = @"search.button";
    goto LABEL_11;
  }

  if (![named hasPrefix:@"bookmark"])
  {
    if (![named hasPrefix:@"chevron.backward"])
    {
      [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
      return;
    }

    v6 = @"library.button";
    goto LABEL_11;
  }

  [button setAccessibilityLabel:THAccessibilityLocalizedString(@"bookmark.button")];
  v8 = THAccessibilityLocalizedString(@"bookmark.button.hint.iOS");

  [button setAccessibilityHint:v8];
}

- (void)p_loadToolbar
{
  v3 = [[BCNavigationBar alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [v3 setSeparatorsVisible:0];
  [v3 setTranslucent:0];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  [-[THBookViewController view](self "view")];
  [(THBookViewController *)self setNavigationBarController:objc_alloc_init(THNavigationBarController)];
  [v3 setDelegate:{-[THBookViewController navigationBarController](self, "navigationBarController")}];
  [(THNavigationBarController *)[(THBookViewController *)self navigationBarController] setNavigationBar:v3];
  [(THNavigationBarController *)[(THBookViewController *)self navigationBarController] setDelegate:self];
  [(THNavigationBarController *)[(THBookViewController *)self navigationBarController] setAutohideTimeout:6.0];
  -[THNavigationBarController buildConstraintsFromParent:layoutGuide:](-[THBookViewController navigationBarController](self, "navigationBarController"), "buildConstraintsFromParent:layoutGuide:", -[THBookViewController view](self, "view"), [-[THBookViewController view](self "view")]);
}

- (void)closeDocument
{
  v3 = +[AETestDriver shared];
  [v3 postEvent:kBETestDriverOpenAnimationStart sender:self];
  v4 = +[AETestDriver shared];
  [v4 postEvent:kBETestDriverOpenAnimationSetupStart sender:self];

  [(THBookViewController *)self closeDocumentWithErrorBlock:0];
}

- (void)closeDocumentWithErrorBlock:(id)block
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_88AF4;
  v8[3] = &unk_45B810;
  v8[4] = self;
  [THPerformanceRegressionLogger logEventWithBlock:v8];
  [(THBookViewController *)self p_bookContentDidLoad];
  [(THBookViewController *)self dismissActivePopover];
  [(THBookViewController *)self p_savePlaceholder];
  v6[4] = self;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_88B3C;
  v7[3] = &unk_45AE00;
  v7[4] = self;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_88B68;
  v6[3] = &unk_45B188;
  [UIView animateWithDuration:v7 animations:v6 completion:0.15];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_88B94;
  v5[3] = &unk_45B810;
  v5[4] = self;
  [THPerformanceRegressionLogger logEventWithBlock:v5];
  [(THBookViewController *)self vantageWillChangeBy:self reason:@"THVantageChangeReasonBookClose"];
  [(AEAssetViewControllerDelegate *)[(THBookViewController *)self assetViewControllerDelegate] assetViewController:self requestClose:1 finishedConsuming:0 error:0 withErrorBlock:block];
  [(THBookViewController *)self vantageDidChangeBy:self reason:@"THVantageChangeReasonBookClose"];
}

- (void)runPreloadOptimizations
{
  v2 = +[TSWPLoadableFonts sharedInstance];

  [(TSWPLoadableFonts *)v2 pauseBackgroundLoading];
}

- (BOOL)p_showBuyButton
{
  p_isSampleBook = [(THBookViewController *)self p_isSampleBook];
  if (p_isSampleBook)
  {
    LOBYTE(p_isSampleBook) = ![(THBookViewController *)self p_isPreorderBook];
  }

  return p_isSampleBook;
}

- (id)rightToolbarItems:(BOOL)items
{
  itemsCopy = items;
  v5 = +[NSMutableArray array];
  if ([(THBookViewController *)self documentViewController])
  {
    if ([(THBookViewController *)self p_shouldShowAppearanceImage])
    {
      appearanceButtonItem = [(THBookViewController *)self appearanceButtonItem];
    }

    else
    {
      appearanceButtonItem = [(THBookViewController *)self brightnessButtonItem];
    }

    v7 = appearanceButtonItem;
    visibleViewController = [(THBookViewController *)self visibleViewController];
    if (visibleViewController == self->mFlowTocViewController || visibleViewController == self->mFlowToCTableViewController)
    {
      [v5 tsu_addObjects:{-[THBookViewController closeTOCButtonItem](self, "closeTOCButtonItem"), -[THBookViewController searchButtonItem](self, "searchButtonItem"), 0}];
    }

    else
    {
      if (!itemsCopy || ![(THBookViewController *)self p_showBuyButton])
      {
        [v5 addObject:{-[THBookViewController bookmarkButtonItem](self, "bookmarkButtonItem")}];
      }

      [v5 addObject:{-[THBookViewController searchButtonItem](self, "searchButtonItem")}];
      if (v7)
      {
        [v5 addObject:v7];
      }
    }
  }

  return v5;
}

- (UIButton)bookmarkButton
{
  result = self->_bookmarkButton;
  if (!result)
  {
    v4 = [THTintableButton buttonWithType:0];
    self->_bookmarkButton = &v4->super;
    [(THTintableButton *)v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIButton *)self->_bookmarkButton addTarget:self action:"p_showBookmarkMenu" forControlEvents:64];
    [(UIButton *)self->_bookmarkButton setImage:[[UIImage systemImageNamed:?]forState:"imageWithConfiguration:", [UIImageSymbolConfiguration configurationWithPointSize:5 weight:3 scale:17.0]], 0];
    [(UIButton *)self->_bookmarkButton sizeToFit];
    return self->_bookmarkButton;
  }

  return result;
}

- (UIBarButtonItem)bookmarkButtonItem
{
  result = self->_bookmarkButtonItem;
  if (!result)
  {
    v4 = [[BCUIFullHeightNavWrapper alloc] initWithView:{-[THBookViewController bookmarkButton](self, "bookmarkButton")}];
    [v4 setCursorInsets:{2.0, 0.0, 2.0, 0.0}];
    v5 = [[UIBarButtonItem alloc] initWithCustomView:v4];
    self->_bookmarkButtonItem = v5;
    [(THBookViewController *)self p_applyAccessibilityLabelForButton:v5 withImageNamed:@"bookmark"];
    [(UIButton *)[(THBookViewController *)self bookmarkButton] frame];
    Width = CGRectGetWidth(v17);
    v7 = 47.0;
    if (Width >= 47.0)
    {
      [(UIButton *)[(THBookViewController *)self bookmarkButton] frame];
      v7 = CGRectGetWidth(v18);
    }

    [(UIBarButtonItem *)self->_bookmarkButtonItem setWidth:v7];

    objc_initWeak(&location, self);
    accessibilityLabel = [(UIBarButtonItem *)self->_bookmarkButtonItem accessibilityLabel];
    v9 = [(UIButton *)self->_bookmarkButton imageForState:0];
    if (!accessibilityLabel)
    {
      accessibilityLabel = &stru_471858;
    }

    v11 = _NSConcreteStackBlock;
    v12 = 3221225472;
    v13 = sub_89010;
    v14 = &unk_45C550;
    objc_copyWeak(&v15, &location);
    v10 = [UIAction actionWithTitle:accessibilityLabel image:v9 identifier:0 handler:&v11];
    [(UIBarButtonItem *)self->_bookmarkButtonItem setMenuRepresentation:v10, v11, v12, v13, v14];
    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
    return self->_bookmarkButtonItem;
  }

  return result;
}

- (UIBarButtonItem)appearanceButtonItem
{
  appearanceButtonItem = self->_appearanceButtonItem;
  if (!appearanceButtonItem)
  {
    self->_appearanceButtonItem = [(THBookViewController *)self createButtonItemConfigurationWithImageName:@"textformat.size" forSelector:"showDisplaySettingsPopover:"];
    [(UIButton *)[(THBookViewController *)self bookmarkButton] frame];
    Width = CGRectGetWidth(v7);
    v5 = 47.0;
    if (Width >= 47.0)
    {
      [(UIButton *)[(THBookViewController *)self bookmarkButton] frame];
      v5 = CGRectGetWidth(v8);
    }

    [(UIBarButtonItem *)self->_appearanceButtonItem setWidth:v5];
    appearanceButtonItem = self->_appearanceButtonItem;
  }

  [(THBookViewController *)self p_applyAccessibilityLabelForButton:appearanceButtonItem withImageNamed:@"textformat.size"];
  return self->_appearanceButtonItem;
}

- (UIBarButtonItem)brightnessButtonItem
{
  if (!self->_brightnessButtonItem && +[BEAppearanceViewController canChangeBrightness])
  {
    self->_brightnessButtonItem = [(THBookViewController *)self createButtonItemConfigurationWithImageName:@"sun.max" forSelector:"showDisplaySettingsPopover:"];
    [(UIButton *)[(THBookViewController *)self bookmarkButton] frame];
    Width = CGRectGetWidth(v6);
    v4 = 47.0;
    if (Width >= 47.0)
    {
      [(UIButton *)[(THBookViewController *)self bookmarkButton] frame];
      v4 = CGRectGetWidth(v7);
    }

    [(UIBarButtonItem *)self->_brightnessButtonItem setWidth:v4];
  }

  return self->_brightnessButtonItem;
}

- (UIBarButtonItem)searchButtonItem
{
  searchButtonItem = self->_searchButtonItem;
  if (!searchButtonItem)
  {
    self->_searchButtonItem = [(THBookViewController *)self createButtonItemConfigurationWithImageName:@"magnifyingglass" forSelector:"showSearchPopoverFromBarButtonItem:"];
    [(UIBarButtonItem *)self->_searchButtonItem setEnabled:[(THBookViewController *)self isCompleteBook]];
    [(UIButton *)[(THBookViewController *)self bookmarkButton] frame];
    Width = CGRectGetWidth(v7);
    v5 = 47.0;
    if (Width >= 47.0)
    {
      [(UIButton *)[(THBookViewController *)self bookmarkButton] frame];
      v5 = CGRectGetWidth(v8);
    }

    [(UIBarButtonItem *)self->_searchButtonItem setWidth:v5];
    searchButtonItem = self->_searchButtonItem;
  }

  [(THBookViewController *)self p_applyAccessibilityLabelForButton:searchButtonItem withImageNamed:@"magnifyingglass"];
  return self->_searchButtonItem;
}

- (UIBarButtonItem)closeTOCButtonItem
{
  result = self->_closeTOCButtonItem;
  if (!result)
  {
    result = [[UIBarButtonItem alloc] initWithTitle:objc_msgSend(THBundle() style:"localizedStringForKey:value:table:" target:@"Resume" action:{&stru_471858, 0), 2, self, "closeTOC"}];
    self->_closeTOCButtonItem = result;
  }

  return result;
}

- (void)_updateCloseButtonItem
{
  if (!self->_closeButtonItem)
  {
    closeButtonItem = 0;
    goto LABEL_6;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  closeButtonItem = self->_closeButtonItem;
  if ((isKindOfClass & 1) == 0)
  {
LABEL_6:
    title = 0;
    goto LABEL_7;
  }

  image = [(UIBarButtonItem *)closeButtonItem image];
  closeButtonItem = self->_closeButtonItem;
  if (image)
  {
    title = &stru_471858;
  }

  else
  {
    title = [(UIBarButtonItem *)closeButtonItem title];
    closeButtonItem = self->_closeButtonItem;
  }

LABEL_7:

  self->_closeButtonItem = [(AEAssetViewControllerDelegate *)[(THBookViewController *)self assetViewControllerDelegate] libraryButtonItemForViewController:self selector:"closeDocument"];
  if ([(AEAssetViewControllerDelegate *)[(THBookViewController *)self assetViewControllerDelegate] canUpdateLibraryBarButtonItem:self->_closeButtonItem withOldString:title])
  {
    [(THBookViewController *)self assetViewControllerUpdateToolbars];
  }

  [(THBookViewController *)self p_applyAccessibilityLabelForButton:self->_closeButtonItem withImageNamed:@"chevron.backward"];
}

- (UIBarButtonItem)closeButtonItem
{
  result = self->_closeButtonItem;
  if (!result)
  {
    [(THBookViewController *)self _updateCloseButtonItem];
    return self->_closeButtonItem;
  }

  return result;
}

- (UIBarButtonItem)tocGlossaryButtonItem
{
  tocGlossaryButtonItem = self->_tocGlossaryButtonItem;
  if (!tocGlossaryButtonItem)
  {
    self->_tocGlossaryButtonItem = [(THBookViewController *)self createButtonItemConfigurationWithImageName:@"list.bullet" forSelector:"showTOCGlossaryPopover:"];
    [(UIBarButtonItem *)self->_tocGlossaryButtonItem setEnabled:[(THBookViewController *)self isCompleteBook]];
    tocGlossaryButtonItem = self->_tocGlossaryButtonItem;
  }

  [(THBookViewController *)self p_applyAccessibilityLabelForButton:tocGlossaryButtonItem withImageNamed:@"list.bullet"];
  return self->_tocGlossaryButtonItem;
}

- (UIBarButtonItem)notesButtonItem
{
  notesButtonItem = self->_notesButtonItem;
  if (!notesButtonItem)
  {
    notesButtonItem = [(THBookViewController *)self createButtonItemConfigurationWithImageName:@"rectangle.on.rectangle.angled" forSelector:"showFullscreenNotesView:"];
    self->_notesButtonItem = notesButtonItem;
  }

  [(THBookViewController *)self p_applyAccessibilityLabelForButton:notesButtonItem withImageNamed:@"rectangle.on.rectangle.angled"];
  return self->_notesButtonItem;
}

- (UIBarButtonItem)shareButtonItem
{
  result = self->_shareButtonItem;
  if (!result)
  {
    self->_shareButtonItem = [(THBookViewController *)self createButtonItemConfigurationWithImageName:@"square.and.arrow.up" forSelector:"showSharePopover:"];
    -[UIBarButtonItem setAccessibilityLabel:](self->_shareButtonItem, "setAccessibilityLabel:", [THBundle() localizedStringForKey:@"Share" value:&stru_471858 table:0]);
    return self->_shareButtonItem;
  }

  return result;
}

- (id)createButtonItemConfigurationWithImageName:(id)name forSelector:(SEL)selector
{
  v7 = [UIBarButtonItem bc_readingExperienceBarItem:name target:self action:selector];
  [(THBookViewController *)self p_applyAccessibilityLabelForButton:v7 withImageNamed:name];
  objc_initWeak(&location, self);
  accessibilityLabel = [v7 accessibilityLabel];
  image = [v7 image];
  if (!accessibilityLabel)
  {
    accessibilityLabel = &stru_471858;
  }

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_896B4;
  v12[3] = &unk_45C578;
  objc_copyWeak(v13, &location);
  v13[1] = selector;
  [v7 setMenuRepresentation:{+[UIAction actionWithTitle:image:identifier:handler:](UIAction, "actionWithTitle:image:identifier:handler:", accessibilityLabel, image, 0, v12)}];
  v10 = v7;
  objc_destroyWeak(v13);
  objc_destroyWeak(&location);
  return v10;
}

- (id)leftToolbarItems:(BOOL)items
{
  v4 = +[NSMutableArray array];
  if ([(THBookViewController *)self documentViewController])
  {
    visibleViewController = [(THBookViewController *)self visibleViewController];
    if (visibleViewController == self->mFlowTocViewController || visibleViewController == self->mFlowToCTableViewController)
    {
      [v4 tsu_addObjects:{-[THBookViewController closeButtonItem](self, "closeButtonItem"), -[THBookViewController shareButtonItem](self, "shareButtonItem"), 0}];
    }

    else
    {
      [v4 tsu_addObjects:{-[THBookViewController closeButtonItem](self, "closeButtonItem"), 0}];
      if ([(THBookViewController *)self isTOCVisible])
      {
        [v4 tsu_addObjects:{-[THBookViewController shareButtonItem](self, "shareButtonItem"), 0, v8}];
      }

      else
      {
        [v4 tsu_addObjects:{-[THBookViewController tocGlossaryButtonItem](self, "tocGlossaryButtonItem"), -[THBookViewController notesButtonItem](self, "notesButtonItem"), 0}];
      }

      v6 = [(AEAssetViewControllerDelegate *)[(THBookViewController *)self assetViewControllerDelegate] assetViewControllerMinifiedBarButtonItem:self];
      if (v6)
      {
        [v4 insertObject:v6 atIndex:1];
      }
    }
  }

  else
  {
    [v4 addObject:{-[THBookViewController closeTOCButtonItem](self, "closeTOCButtonItem")}];
  }

  return v4;
}

- (UIBarButtonItem)buyButtonItem
{
  result = self->mBuyButtonItem;
  if (!result)
  {
    result = [(AEAssetViewControllerDelegate *)[(THBookViewController *)self assetViewControllerDelegate] assetViewControllerBuyButtonItem:self isSample:[(THBookDescription *)[(THBookViewController *)self bookDescription] isSample] isPreorder:[(THBookDescription *)[(THBookViewController *)self bookDescription] isPreorderBook] storeID:[(THBookDescription *)[(THBookViewController *)self bookDescription] storeID]];
    self->mBuyButtonItem = result;
  }

  return result;
}

- (BOOL)p_isSampleBook
{
  bookDescription = [(THBookViewController *)self bookDescription];

  return [(THBookDescription *)bookDescription isSample];
}

- (BOOL)p_isPreorderBook
{
  bookDescription = [(THBookViewController *)self bookDescription];

  return [(THBookDescription *)bookDescription isPreorderBook];
}

- (void)p_setupDisplaySettingsIfNeeded
{
  if (![(THBookViewController *)self displaySettingsViewController])
  {
    v3 = [[THDisplaySettingsViewController alloc] initWithDelegate:self];
    [(THDisplaySettingsViewController *)v3 setOverrideUserInterfaceStyle:[(THBookViewController *)self overrideUserInterfaceStyle]];
    if ([(THBookViewController *)self isBookEpub])
    {
      [(THDisplaySettingsViewController *)v3 setAppearanceStyle:[(THBookViewController *)self appearanceStyle]];
      [(THDisplaySettingsViewController *)v3 setTheme:[(THBookViewController *)self theme]];
    }

    [(THDisplaySettingsViewController *)v3 setTheme:[(THBookViewController *)self theme]];
    [(THBookViewController *)self setDisplaySettingsViewController:v3];
  }
}

- (void)showDisplaySettingsPopover:(id)popover
{
  if ([-[THDisplaySettingsViewController view](-[THBookViewController displaySettingsViewController](self "displaySettingsViewController")])
  {

    [(THBookViewController *)self dismissDisplaySettings:1];
  }

  else
  {
    objc_opt_class();
    [BUDynamicCast() setEnabled:0];
    [(THBookViewController *)self dismissActivePopover];
    [(THToolbarDelegate *)[(THDocumentViewController *)[(THBookViewController *)self documentViewController] toolbarDelegate] userWillInteractInToolbar];
    [(THBookViewController *)self p_setupDisplaySettingsIfNeeded];
    displaySettingsViewController = [(THBookViewController *)self displaySettingsViewController];
    [(THDisplaySettingsViewController *)displaySettingsViewController setModalPresentationStyle:7];
    objc_opt_class();
    if (BUDynamicCast())
    {
      popoverPresentationController = [(THDisplaySettingsViewController *)displaySettingsViewController popoverPresentationController];
      [popoverPresentationController setBarButtonItem:popover];
      [popoverPresentationController setPermittedArrowDirections:1];
      [popoverPresentationController setDelegate:self];
      [popoverPresentationController setPassthroughViews:{-[THBookViewController p_popoverPassthroughViews](self, "p_popoverPassthroughViews")}];
      [popoverPresentationController bc_applyTraitOverridesWithOverrideUserInterfaceStyleFromViewController:displaySettingsViewController];
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_89BE4;
      v7[3] = &unk_45AE00;
      v7[4] = popover;
      [(THBookViewController *)self presentViewController:displaySettingsViewController animated:1 completion:v7];
    }
  }
}

- (void)dismissDisplaySettings:(BOOL)settings
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_89CB0;
  v3[3] = &unk_45AE00;
  v3[4] = self;
  [(THDisplaySettingsViewController *)[(THBookViewController *)self displaySettingsViewController] dismissViewControllerAnimated:settings completion:v3];
}

- (void)p_displaySettingsDidHide
{
  [(THToolbarDelegate *)[(THDocumentViewController *)[(THBookViewController *)self documentViewController] toolbarDelegate] userDidInteractInToolbar];

  [(THBookViewController *)self setDisplaySettingsViewController:0];
}

- (void)_showSearchPopoverFromSourceItem:(id)item withText:(id)text
{
  searchViewController = [(THBookViewController *)self searchViewController];
  v8 = searchViewController;
  if (text || !searchViewController)
  {
    [(THBookViewController *)self dismissActivePopover];
    if (!v8)
    {
      v8 = -[THSearchViewController initWithSearchController:]([THSearchViewController alloc], "initWithSearchController:", [-[THBookViewController documentRoot](self "documentRoot")]);
      [(THSearchViewController *)v8 setTheme:[(THBookViewController *)self theme]];
      [(THSearchViewController *)v8 setSearchDelegate:self];
      [(THBookViewController *)self setSearchViewController:v8];
      v9 = v8;
    }
  }

  else
  {
    if ([(THBookViewController *)self p_isSearchVisible])
    {

      [(THBookViewController *)self dismissSearchPopover:1 completion:0];
      return;
    }

    [(THBookViewController *)self dismissActivePopover];
  }

  -[THSearchViewController setSearchingForPredeterminedString:](v8, "setSearchingForPredeterminedString:", [text length] != 0);
  [(THSearchViewController *)v8 setModalPresentationStyle:7];
  [(THSearchViewController *)v8 setOverrideUserInterfaceStyle:[(THBookViewController *)self overrideUserInterfaceStyle]];
  if (([(THBookViewController *)self im_isCompactWidth]& 1) == 0 && ([(THBookViewController *)self im_isCompactHeight]& 1) == 0)
  {
    [(THToolbarDelegate *)[(THDocumentViewController *)[(THBookViewController *)self documentViewController] toolbarDelegate] userWillInteractInToolbar];
  }

  popoverPresentationController = [(THSearchViewController *)v8 popoverPresentationController];
  [popoverPresentationController setBackgroundColor:{-[THTheme popoverBackgroundColor](-[THBookViewController theme](self, "theme"), "popoverBackgroundColor")}];
  [popoverPresentationController setSourceItem:item];
  [popoverPresentationController setPermittedArrowDirections:1];
  [popoverPresentationController setDelegate:self];
  [popoverPresentationController setPassthroughViews:{-[THBookViewController p_popoverPassthroughViews](self, "p_popoverPassthroughViews")}];
  [popoverPresentationController bc_applyTraitOverridesWithOverrideUserInterfaceStyleFromViewController:v8];
  [(THBookViewController *)self presentViewController:v8 animated:1 completion:&stru_45C598];
  if (text && [text length])
  {

    [(THSearchViewController *)v8 searchForString:text];
  }
}

- (void)p_searchDidHide
{
  [(THToolbarDelegate *)[(THDocumentViewController *)[(THBookViewController *)self documentViewController] toolbarDelegate] userDidInteractInToolbar];
  v3 = [-[THBookViewController documentRoot](self "documentRoot")];
  if ([v3 unloadRequested])
  {
    [v3 unloadIndex];

    [(THBookViewController *)self setSearchViewController:0];
  }
}

- (void)dismissSearchPopover:(BOOL)popover completion:(id)completion
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_8A050;
  v4[3] = &unk_45B2E8;
  v4[4] = self;
  v4[5] = completion;
  [(THSearchViewController *)[(THBookViewController *)self searchViewController] dismissViewControllerAnimated:popover completion:v4];
}

- (CGRect)p_navigationOverlayFrame
{
  x = CGRectZero.origin.x;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  if ([(THBookViewController *)self isBookEpub])
  {
    if ([(THDocumentViewController *)[(THBookViewController *)self documentViewController] configuration])
    {
      [(THDocumentReflowableLayoutConfiguration *)[(THDocumentViewController *)[(THBookViewController *)self documentViewController] configuration] bottomFullWidthToolbarFrame];
      width = v7;
      height = v8;
      x = CGPointZero.x;
      y = CGPointZero.y;
    }
  }

  else
  {
    [-[THBookViewController viewIfLoaded](self "viewIfLoaded")];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    [-[THBookViewController viewIfLoaded](self "viewIfLoaded")];
    v18 = v10 + v17;
    v20 = v12 + v19;
    v22 = v14 - (v17 + v21);
    v24 = v16 - (v19 + v23);
    v29.origin.x = v10 + v17;
    v29.origin.y = v20;
    v29.size.width = v22;
    v29.size.height = v24;
    x = CGRectGetMinX(v29);
    v30.origin.x = v18;
    v30.origin.y = v20;
    v30.size.width = v22;
    v30.size.height = v24;
    y = CGRectGetMaxY(v30) + -64.0;
    v31.origin.x = v18;
    v31.origin.y = v20;
    v31.size.width = v22;
    v31.size.height = v24;
    width = CGRectGetWidth(v31);
    height = 64.0;
  }

  if ([(THBookViewController *)self HUDOverlayView])
  {
    v25 = y + -50.0;
  }

  else
  {
    v25 = y;
  }

  v26 = x;
  v27 = width;
  v28 = height;
  result.size.height = v28;
  result.size.width = v27;
  result.origin.y = v25;
  result.origin.x = v26;
  return result;
}

- (void)p_loadNavigationOverlay
{
  isBookEpub = [(THBookViewController *)self isBookEpub];
  v4 = [[THNavigationOverlayView alloc] initWithFrame:isBookEpub ^ 1 blissClassicStyle:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  v5 = v4;
  if (isBookEpub)
  {
    v6 = 0;
  }

  else
  {
    v6 = 10;
  }

  [(THNavigationOverlayView *)v4 setAutoresizingMask:v6];
  [(THNavigationOverlayView *)v5 setTransparentMode:[(THBookViewController *)self isBookEpub]^ 1];
  v7 = objc_alloc_init(THNavigationHistoryStepperController);
  [(THNavigationHistoryStepperController *)v7 setChrome:v5];
  [(UIButton *)[(THNavigationOverlayView *)v5 prevButton] addTarget:v7 action:"jumpToPrev:" forControlEvents:64];
  [(UIButton *)[(THNavigationOverlayView *)v5 nextButton] addTarget:v7 action:"jumpToNext:" forControlEvents:64];
  [(UIButton *)[(THNavigationOverlayView *)v5 prevButton] addTarget:self action:"userWillInteractInToolbar" forControlEvents:4095];
  [(UIButton *)[(THNavigationOverlayView *)v5 nextButton] addTarget:self action:"userWillInteractInToolbar" forControlEvents:4095];
  [(THNavigationOverlayView *)v5 setOverlayHidden:1 animated:0];
  [(THBookViewController *)self setNavigationOverlayView:v5];
  [(THBookViewController *)self setNavigationHistoryStepperController:v7];
  if (isBookEpub)
  {
    navigationOverlayContainer = [(THDocumentViewController *)[(THBookViewController *)self documentViewController] navigationOverlayContainer];
  }

  else
  {
    navigationOverlayContainer = [(THBookViewController *)self view];
  }

  [(UIView *)navigationOverlayContainer addSubview:v5];
}

- (void)p_loadTitleLabel
{
  if (!self->mTitleLabel && [(THBookViewController *)self isBookEpub])
  {
    v3 = [[BCDisplayOnlyNavigationBar alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    self->mTitleLabelNavigationBar = v3;
    [(BCDisplayOnlyNavigationBar *)v3 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(BCDisplayOnlyNavigationBar *)self->mTitleLabelNavigationBar setTranslucent:0];
    [(BCDisplayOnlyNavigationBar *)self->mTitleLabelNavigationBar setDelegate:self];
    [-[THBookViewController view](self "view")];
    [objc_msgSend(-[BCDisplayOnlyNavigationBar leftAnchor](self->mTitleLabelNavigationBar "leftAnchor")];
    [objc_msgSend(-[BCDisplayOnlyNavigationBar rightAnchor](self->mTitleLabelNavigationBar "rightAnchor")];
    v4 = [-[BCDisplayOnlyNavigationBar topAnchor](self->mTitleLabelNavigationBar "topAnchor")];
    self->mTitleLabelNavigationBarTopConstraint = v4;
    [(NSLayoutConstraint *)v4 setActive:1];
    self->mTitleLabel = objc_alloc_init(UILabel);
    [(UILabel *)self->mTitleLabel setBackgroundColor:+[UIColor clearColor]];
    [(UILabel *)self->mTitleLabel setOpaque:0];
    [(UILabel *)self->mTitleLabel setFont:[UIFont boldSystemFontOfSize:17.0]];
    [(UILabel *)self->mTitleLabel setMinimumScaleFactor:0.588235294];
    [(UILabel *)self->mTitleLabel setAutoresizingMask:2];
    [(UILabel *)self->mTitleLabel setAdjustsFontSizeToFitWidth:0];
    [(UILabel *)self->mTitleLabel setTextAlignment:1];
    [(UILabel *)self->mTitleLabel setBaselineAdjustment:1];
    [(UILabel *)self->mTitleLabel setText:[(THBookDescription *)[(THBookViewController *)self bookDescription] bookTitle]];
    [(UILabel *)self->mTitleLabel setLineBreakMode:5];
    [(UILabel *)self->mTitleLabel sizeToFit];
    v5 = [[UIImage systemImageNamed:?], "imageWithConfiguration:", [UIImageSymbolConfiguration configurationWithPointSize:5 weight:3 scale:17.0]];
    v6 = [UIButton buttonWithType:0];
    self->mActionlessBookmarkButton = v6;
    [(UIButton *)v6 setImage:v5 forState:0];
    [(UIButton *)self->mActionlessBookmarkButton setUserInteractionEnabled:0];
    v7 = +[UIColor systemRedColor];
    mActionlessBookmarkButton = self->mActionlessBookmarkButton;

    [(UIButton *)mActionlessBookmarkButton setTintColor:v7];
  }
}

- (int64_t)positionForBar:(id)bar
{
  if (self->mTitleLabelNavigationBar == bar)
  {
    return 3;
  }

  else
  {
    return 0;
  }
}

- (void)p_savePlaceholder
{
  documentNavigator = [(THDocumentViewController *)[(THBookViewController *)self documentViewController] documentNavigator];

  [(THDocumentNavigator *)documentNavigator savePlaceholder];
}

- (BOOL)p_isPageLocationValid:(id)valid
{
  if (!valid)
  {
    LOBYTE(storageUID) = 0;
    return storageUID;
  }

  if ([(THBookViewController *)self isBookEpub])
  {
    storageUID = [valid storageUID];
    if (!storageUID)
    {
      return storageUID;
    }

    v6 = [valid range] == 0x7FFFFFFFFFFFFFFFLL;
LABEL_5:
    LOBYTE(storageUID) = !v6;
    return storageUID;
  }

  pageCount = [(THDocumentNavigationModel *)[(THBookViewController *)self navigationModel] pageCount];
  absolutePhysicalPageIndex = [valid absolutePhysicalPageIndex];
  LOBYTE(storageUID) = 0;
  if (absolutePhysicalPageIndex != 0x7FFFFFFFFFFFFFFFLL && pageCount != 0x7FFFFFFFFFFFFFFFLL)
  {
    absolutePhysicalPageIndex2 = [valid absolutePhysicalPageIndex];
    if (absolutePhysicalPageIndex2 >= [(THDocumentNavigationModel *)[(THBookViewController *)self navigationModel] pageCount])
    {
      LOBYTE(storageUID) = 0;
      return storageUID;
    }

    if ([objc_msgSend(valid "storageUID")])
    {
      LOBYTE(storageUID) = 1;
      return storageUID;
    }

    v6 = [objc_msgSend(valid "contentNodeGUID")] == 0;
    goto LABEL_5;
  }

  return storageUID;
}

- (id)p_THCFIReaderStringFromBKCFIString:(id)string
{
  if ([string rangeOfString:@"epubcfi(/"]
  {
    v5 = 1;
  }

  else
  {
    v5 = v4 == 0;
  }

  if (v5)
  {
    return string;
  }

  return [@"#" stringByAppendingString:string];
}

- (BOOL)p_jumpToBKCFIString:(id)string
{
  if (!string)
  {
    return 0;
  }

  v4 = [(THBookViewController *)self p_THCFIReaderStringFromBKCFIString:?];
  v13 = 0;
  v5 = [-[THBookViewController documentRoot](self "documentRoot")];
  v6 = v5 != 0;
  if (v5)
  {
    v7 = v5;
    [(THBookViewController *)self navigateToAnchorInDVC:v5 pulse:1];
    v8 = [(THBookViewController *)self absolutePageIndexForCFI:v4];
    v9 = [THPageLocation alloc];
    range = [v7 range];
    -[THBookspotHistoryStack gotoBookspot:minor:](-[THBookViewController bookspotHistoryStack](self, "bookspotHistoryStack"), "gotoBookspot:minor:", -[THPageLocation initWithAbsolutePageIndex:range:storageUID:contentNodeGUID:](v9, "initWithAbsolutePageIndex:range:storageUID:contentNodeGUID:", v8, range, v11, [v7 storageUID], objc_msgSend(objc_msgSend(v7, "contentNode"), "nodeGUID")), 0);
  }

  return v6;
}

- (BOOL)p_jumpToFragment:(id)fragment
{
  if (!fragment)
  {
    return 0;
  }

  v5 = [(THDocumentNavigationModel *)[(THBookViewController *)self navigationModel] contentNodeForGUID:fragment];
  if (v5)
  {
    v6 = [[THModelStorageAnchor alloc] initWithContentNode:v5 storageUID:fragment range:0, 0];
  }

  else
  {
    v6 = -[THDocumentLinkResolver anchorFromCustomLink:presentationType:](-[THBookLinkResolver documentLinkResolver](-[THBookViewController bookLinkResolver](self, "bookLinkResolver"), "documentLinkResolver"), "anchorFromCustomLink:presentationType:", -[THModelLink initWithTarget:context:]([THModelLink alloc], "initWithTarget:context:", +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"ibooks://#%@", fragment), [-[THBookViewController documentRoot](self "documentRoot")]), +[THPresentationType paginatedPresentationTypeInContext:](THPresentationType, "paginatedPresentationTypeInContext:", objc_msgSend(-[THBookViewController documentRoot](self, "documentRoot"), "context")));
  }

  if (!v6)
  {
    return 0;
  }

  [(THBookViewController *)self navigateToAnchorInDVC:v6 pulse:0];
  v8 = [v5 absolutePageIndexForRelativePageIndex:0 forPresentationType:{+[THPresentationType paginatedPresentationTypeInContext:](THPresentationType, "paginatedPresentationTypeInContext:", objc_msgSend(objc_msgSend(-[THBookViewController documentRoot](self, "documentRoot"), "rootNode"), "context"))}];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    v9 = TSUDynamicCast();
    range = [v9 range];
    v12 = v11;
    storageUID = [v9 storageUID];
  }

  else
  {
    storageUID = 0;
    v12 = 0;
    range = 0x7FFFFFFFFFFFFFFFLL;
  }

  -[THBookspotHistoryStack gotoBookspot:minor:](-[THBookViewController bookspotHistoryStack](self, "bookspotHistoryStack"), "gotoBookspot:minor:", -[THPageLocation initWithAbsolutePageIndex:range:storageUID:contentNodeGUID:]([THPageLocation alloc], "initWithAbsolutePageIndex:range:storageUID:contentNodeGUID:", v8, range, v12, storageUID, [v5 nodeGUID]), 0);
  return 1;
}

- (BOOL)p_restoreToLaunchPage
{
  if ([(THBookViewController *)self isBookEpub])
  {
    [(THDocumentViewController *)[(THBookViewController *)self documentViewController] ensureDocumentIsLoaded];
  }

  if ([(THBookViewController *)self openingCFIOverride])
  {
    v3 = [(THBookViewController *)self p_jumpToBKCFIString:[(THBookViewController *)self openingCFIOverride]];
    [(THBookViewController *)self setOpeningCFIOverride:0];
    if (v3)
    {
      goto LABEL_20;
    }

    return 0;
  }

  if ([(THBookViewController *)self openingFragmentOverride])
  {
    v4 = [(THBookViewController *)self p_jumpToFragment:[(THBookViewController *)self openingFragmentOverride]];
    [(THBookViewController *)self setOpeningFragmentOverride:0];
    if (v4)
    {
      goto LABEL_20;
    }

    return 0;
  }

  if ([(THBookViewController *)self openingLocationOverride])
  {
    v5 = [(THBookViewController *)self p_jumpToLocation:[(THBookViewController *)self openingLocationOverride]];
    [(THBookViewController *)self setOpeningLocationOverride:0];
    if (v5)
    {
      goto LABEL_20;
    }

    return 0;
  }

  if ([(THBookViewController *)self openingAbsolutePageIndexOverride]== 0x7FFFFFFFFFFFFFFFLL)
  {
    v15 = 0;
    v16 = 0;
    [objc_msgSend(-[THBookViewController documentRoot](self "documentRoot")];
    if ([(THBookViewController *)self p_isPageLocationValid:v16])
    {
      v6 = [(THBookViewController *)self jumpToPageLocation:v16 touchHistory:v15 == 0 minor:1];
      v7 = v6;
      if (v15)
      {
        if (![(THDocumentViewController *)[(THBookViewController *)self documentViewController] documentNavigator])
        {
          [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
        }

        documentRoot = [(THBookViewController *)self documentRoot];
        [documentRoot resetWithDictionaryRepresentation:v15];
        if (v7)
        {
          goto LABEL_20;
        }
      }

      else if (v6)
      {
        goto LABEL_20;
      }
    }

    return 0;
  }

  v10 = [(THBookViewController *)self jumpToPageLocation:[[THPageLocation alloc] initWithAbsolutePageIndex:[(THBookViewController *)self openingAbsolutePageIndexOverride]] touchHistory:1 minor:0];
  [(THBookViewController *)self setOpeningAbsolutePageIndexOverride:0x7FFFFFFFFFFFFFFFLL];
  if ((v10 & 1) == 0)
  {
    return 0;
  }

LABEL_20:
  [-[THBookViewController view](self "view")];
  [-[THDocumentViewController view](-[THBookViewController documentViewController](self "documentViewController")];
  return 1;
}

- (void)p_placeholderLocationDidChange
{
  readingProgressHighwaterMark = [(THBookViewController *)self readingProgressHighwaterMark];
  if (!readingProgressHighwaterMark)
  {
    readingProgressHighwaterMark = [objc_msgSend(-[THDocumentViewController documentRoot](-[THBookViewController documentViewController](self "documentViewController")];
    [(THBookViewController *)self setReadingProgressHighwaterMark:readingProgressHighwaterMark];
  }

  readingProgress = [(THDocumentNavigator *)[(THBookViewController *)self documentNavigator] readingProgress];
  if (readingProgress)
  {
    v5 = readingProgress;
    assetViewControllerDelegate = [(THBookViewController *)self assetViewControllerDelegate];
    v10 = BCAssetReadingProgressKey;
    v11 = v5;
    [(AEAssetViewControllerDelegate *)assetViewControllerDelegate assetViewController:self assetPropertyChanged:[NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1]];
    [(NSNumber *)readingProgressHighwaterMark floatValue];
    v7 = kAEAnnotationReadingLocationSignificantHighwaterMark;
    if (v8 < kAEAnnotationReadingLocationSignificantHighwaterMark)
    {
      [(THBookViewController *)self setReadingProgressHighwaterMark:v5];
      [v5 floatValue];
      if (v9 > v7)
      {
        [(AEAssetViewControllerDelegate *)[(THBookViewController *)self assetViewControllerDelegate] assetViewControllerSignificantReadingLocationChange:self];
      }
    }
  }

  [+[BCProgressKitController sharedController](BCProgressKitController "sharedController")];
}

- (void)dismissTOCGlossaryView:(BOOL)view completion:(id)completion
{
  viewCopy = view;
  if ([(THBookViewController *)self TOCGlossaryViewController])
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_8B088;
    v8[3] = &unk_45AEA8;
    v8[4] = self;
    v8[5] = completion;
    [(THTOCGlossaryMenuPopoverViewController *)[(THBookViewController *)self TOCGlossaryViewController] dismissViewControllerAnimated:viewCopy completion:v8];
  }

  else if (completion)
  {
    v7 = *(completion + 2);

    v7(completion);
  }
}

- (void)p_TOCGlossaryPopoverDidHide
{
  [(THToolbarDelegate *)[(THDocumentViewController *)[(THBookViewController *)self documentViewController] toolbarDelegate] userDidInteractInToolbar];

  [(THBookViewController *)self setTOCGlossaryViewController:0];
}

- (void)showSharePopover:(id)popover
{
  objc_initWeak(&location, self);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_8B23C;
  v6[3] = &unk_45C608;
  objc_copyWeak(&v7, &location);
  v6[4] = self;
  v6[5] = popover;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_8B4F0;
  v5[3] = &unk_45C630;
  v5[4] = v6;
  [+[BCProgressKitController sharedController](BCProgressKitController "sharedController")];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

- (void)dismissSharePopover:(BOOL)popover
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_8B600;
  v3[3] = &unk_45AE00;
  v3[4] = self;
  [(UIViewController *)[(THBookViewController *)self activityViewController] dismissViewControllerAnimated:popover completion:v3];
}

- (void)p_shareDidHide
{
  [(THToolbarDelegate *)[(THDocumentViewController *)[(THBookViewController *)self documentViewController] toolbarDelegate] userDidInteractInToolbar];

  [(THBookViewController *)self setActivityViewController:0];
}

- (void)showBookmarkMenu:(BOOL)menu fromItem:(id)item
{
  menuCopy = menu;
  if ([-[THBookmarkMenuPopoverViewController view](-[THBookViewController bookmarkViewController](self "bookmarkViewController")])
  {

    [(THBookViewController *)self dismissBookmarkMenu:menuCopy completion:0];
  }

  else
  {
    [(THBookViewController *)self dismissActivePopover];
    v10 = objc_alloc_init(THBookmarkMenuPopoverViewController);
    -[THBookmarkMenuPopoverViewController setTitle:](v10, "setTitle:", [THBundle() localizedStringForKey:@"Bookmarks" value:&stru_471858 table:0]);
    [(THBookmarkMenuPopoverViewController *)v10 setDelegate:self];
    [(THBookmarkMenuPopoverViewController *)v10 setReflowablePaginationController:[(THDocumentViewController *)[(THBookViewController *)self documentViewController] reflowablePaginationController]];
    [(THBookmarkMenuPopoverViewController *)v10 setOverrideUserInterfaceStyle:[(THBookViewController *)self overrideUserInterfaceStyle]];
    [(THBookViewController *)self setBookmarkViewController:v10];
    [(THBookmarkMenuPopoverViewController *)[(THBookViewController *)self bookmarkViewController] setDelegate:self];
    [(THBookmarkMenuPopoverViewController *)[(THBookViewController *)self bookmarkViewController] setTheme:[(THBookViewController *)self theme]];
    [(THBookmarkMenuPopoverViewController *)[(THBookViewController *)self bookmarkViewController] setViewDelegate:self];
    [(THToolbarDelegate *)[(THDocumentViewController *)[(THBookViewController *)self documentViewController] toolbarDelegate] userWillInteractInToolbar];
    objc_opt_class();
    v6 = BUDynamicCast();
    if (v6)
    {
      v7 = v6;
      v8 = [[THNavigationController alloc] initWithRootViewController:[(THBookViewController *)self bookmarkViewController]];
      [(THNavigationController *)v8 setModalPresentationStyle:7];
      popoverPresentationController = [(THNavigationController *)v8 popoverPresentationController];
      [popoverPresentationController setSourceView:v7];
      [v7 bounds];
      [popoverPresentationController setSourceRect:?];
      [popoverPresentationController setPermittedArrowDirections:1];
      [popoverPresentationController setDelegate:self];
      [popoverPresentationController setPassthroughViews:{-[THBookViewController p_popoverPassthroughViews](self, "p_popoverPassthroughViews")}];
      [popoverPresentationController bc_applyTraitOverridesWithOverrideUserInterfaceStyleFromViewController:{-[THBookViewController bookmarkViewController](self, "bookmarkViewController")}];
      [(THBookViewController *)self presentViewController:v8 animated:menuCopy completion:0];
    }
  }
}

- (void)p_bookmarkPopoverDidHide
{
  [(THToolbarDelegate *)[(THDocumentViewController *)[(THBookViewController *)self documentViewController] toolbarDelegate] userDidInteractInToolbar];
  [(THBookmarkMenuPopoverViewController *)[(THBookViewController *)self bookmarkViewController] teardown];
  [(THBookmarkMenuPopoverViewController *)[(THBookViewController *)self bookmarkViewController] setReflowablePaginationController:0];
  [(THBookmarkMenuPopoverViewController *)[(THBookViewController *)self bookmarkViewController] setDelegate:0];

  [(THBookViewController *)self setBookmarkViewController:0];
}

- (void)dismissBookmarkMenu:(BOOL)menu completion:(id)completion
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_8B97C;
  v4[3] = &unk_45B2E8;
  v4[4] = self;
  v4[5] = completion;
  [(THBookmarkMenuPopoverViewController *)[(THBookViewController *)self bookmarkViewController] dismissViewControllerAnimated:menu completion:v4];
}

- (void)p_showBookmarkMenu
{
  bookmarkButton = [(THBookViewController *)self bookmarkButton];

  [(THBookViewController *)self showBookmarkMenu:1 fromItem:bookmarkButton];
}

- (void)prepareForPopoverPresentation:(id)presentation
{
  bookmarkViewController = [(THBookViewController *)self bookmarkViewController];
  presentedViewController = [presentation presentedViewController];
  if (presentedViewController == [(THBookmarkMenuPopoverViewController *)bookmarkViewController navigationController])
  {
    navigationItem = [(THBookmarkMenuPopoverViewController *)bookmarkViewController navigationItem];

    [navigationItem setRightBarButtonItem:0 animated:0];
  }
}

- (id)presentationController:(id)controller viewControllerForAdaptivePresentationStyle:(int64_t)style
{
  v6 = [(THBookViewController *)self bookmarkViewController:controller];
  presentedViewController = [controller presentedViewController];
  if (presentedViewController == [(THBookmarkMenuPopoverViewController *)v6 navigationController])
  {
    [-[THBookmarkMenuPopoverViewController navigationController](v6 "navigationController")];
    v8 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:0 target:self action:"p_dismissBookmarkMenu"];
    [-[THBookmarkMenuPopoverViewController navigationItem](v6 "navigationItem")];
  }

  return 0;
}

- (void)presentationControllerDidDismiss:(id)dismiss
{
  presentedViewController = [dismiss presentedViewController];
  if (presentedViewController == [(THBookmarkMenuPopoverViewController *)[(THBookViewController *)self bookmarkViewController] navigationController])
  {

    [(THBookViewController *)self p_bookmarkPopoverDidHide];
  }

  else if (presentedViewController == [(THBookViewController *)self TOCGlossaryViewController])
  {

    [(THBookViewController *)self p_TOCGlossaryPopoverDidHide];
  }

  else if (presentedViewController == [(THBookViewController *)self displaySettingsViewController])
  {

    [(THBookViewController *)self p_displaySettingsDidHide];
  }

  else if (presentedViewController == [(THBookViewController *)self searchViewController])
  {
    [(THBookViewController *)self p_searchDidHide];
    interactiveCanvasController = [(THDocumentViewController *)[(THBookViewController *)self documentViewController] interactiveCanvasController];

    [interactiveCanvasController resumeEditing];
  }

  else if (presentedViewController == [(THBookViewController *)self activityViewController])
  {

    [(THBookViewController *)self p_shareDidHide];
  }
}

- (int64_t)adaptivePresentationStyleForPresentationController:(id)controller
{
  traitCollection = [(THBookViewController *)self traitCollection];

  return [(THBookViewController *)self adaptivePresentationStyleForPresentationController:controller traitCollection:traitCollection];
}

- (int64_t)adaptivePresentationStyleForPresentationController:(id)controller traitCollection:(id)collection
{
  collectionCopy = collection;
  if (collection || (collectionCopy = [(THBookViewController *)self traitCollection]) != 0)
  {
    v7 = [collectionCopy horizontalSizeClass] == &dword_0 + 1;
    verticalSizeClass = [collectionCopy verticalSizeClass];
    v9 = verticalSizeClass == &dword_0 + 1;
    if (verticalSizeClass == &dword_0 + 1 || v7)
    {
      v11 = 0;
    }

    else
    {
      v11 = 7;
    }
  }

  else
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    v11 = 0;
    v9 = 1;
  }

  presentedViewController = [controller presentedViewController];
  if (presentedViewController == [(THBookViewController *)self TOCGlossaryViewController]|| presentedViewController == [(THBookViewController *)self displaySettingsViewController])
  {
    return -1;
  }

  if (presentedViewController != [(THBookViewController *)self activityViewController]&& presentedViewController != [(THBookmarkMenuPopoverViewController *)[(THBookViewController *)self bookmarkViewController] navigationController])
  {
    if (presentedViewController == [(THBookViewController *)self searchViewController]&& v9)
    {
      return 0;
    }

    else
    {
      return 7;
    }
  }

  return v11;
}

- (id)pageNumberStringForLocation:(id)location
{
  documentRoot = [(THBookViewController *)self documentRoot];

  return [documentRoot pageNumberStringForLocation:location];
}

- (CGImage)thumbnailImageForAbsolutePageIndex:(unint64_t)index
{
  documentRoot = [(THBookViewController *)self documentRoot];

  return [documentRoot thumbnailImageForAbsolutePageIndex:index];
}

- (id)sectionTitleStringForLocation:(id)location
{
  documentRoot = [(THBookViewController *)self documentRoot];

  return [documentRoot sectionTitleStringForLocation:location];
}

- (id)sectionNumberStringForLocation:(id)location
{
  documentRoot = [(THBookViewController *)self documentRoot];

  return [documentRoot sectionNumberStringForLocation:location];
}

- (BOOL)isAnnotationWriteEnabled
{
  v2 = [-[THDocumentViewController documentRoot](-[THBookViewController documentViewController](self "documentViewController")];

  return [v2 canModifyAnnotations];
}

- (id)bookmarkFetchedResultsController
{
  v2 = [-[THDocumentViewController documentRoot](-[THBookViewController documentViewController](self "documentViewController")];

  return [v2 allBookmarksFetchedResultsController];
}

- (void)addRemoveBookmarkCurrentPage
{
  v3 = [(THBookViewController *)self isPageBookmarked]^ 1;

  [(THBookViewController *)self setPageBookmarked:v3];
}

- (BOOL)isCurrentPageBookmarkedForBookmarkMenuPopoverViewController:(id)controller
{
  if ([(THBookViewController *)self bookmarkViewController]!= controller)
  {
    return 0;
  }

  return [(THBookViewController *)self isPageBookmarked];
}

- (void)setCurrentPageBookmarked:(BOOL)bookmarked forBookmarkMenuPopoverViewController:(id)controller
{
  bookmarkedCopy = bookmarked;
  if ([(THBookViewController *)self bookmarkViewController]== controller)
  {

    [(THBookViewController *)self setPageBookmarked:bookmarkedCopy];
  }
}

- (void)removeBookmark:(id)bookmark
{
  [objc_msgSend(-[THDocumentViewController documentRoot](-[THBookViewController documentViewController](self "documentViewController")];

  [(THBookViewController *)self updateBookmarkButton];
}

- (void)p_navigationHistoryDidChange:(id)change
{
  object = [change object];
  v5 = [objc_msgSend(object objectForKey:{@"minor", "BOOLValue"}];
  v6 = [objc_msgSend(object objectForKey:{@"suppressToolbar", "BOOLValue"}];
  if ((v5 & 1) == 0)
  {
    if (v6 & 1 | ![(THBookViewController *)self isBookEpub])
    {

      [(THBookViewController *)self p_setNavigationOverlayHidden:0 animated:1 autoHides:1];
    }

    else
    {
      navigationBarController = [(THBookViewController *)self navigationBarController];

      [(THNavigationBarController *)navigationBarController setNavigationBarHidden:0 animated:1];
    }
  }
}

- (id)_currentLocation
{
  if ([(THBookViewController *)self currentAbsolutePageIndex]== 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  documentNavigator = [(THDocumentViewController *)[(THBookViewController *)self documentViewController] documentNavigator];

  return [(THDocumentNavigator *)documentNavigator currentBookspotLocation];
}

- (void)recordCurrentLocationInHistory
{
  _currentLocation = [(THBookViewController *)self _currentLocation];
  bookspotHistoryStack = [(THBookViewController *)self bookspotHistoryStack];

  [(THBookspotHistoryStack *)bookspotHistoryStack gotoBookspot:_currentLocation minor:1];
}

- (BOOL)jumpToPageLocation:(id)location touchHistory:(BOOL)history minor:(BOOL)minor
{
  minorCopy = minor;
  historyCopy = history;
  isBookEpub = [(THBookViewController *)self isBookEpub];
  if ((isBookEpub & 1) == 0)
  {
    absolutePhysicalPageIndex = [location absolutePhysicalPageIndex];
    if (!historyCopy)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  absolutePhysicalPageIndex = 0x7FFFFFFFFFFFFFFFLL;
  if (historyCopy)
  {
LABEL_5:
    [(THBookViewController *)self recordCurrentLocationInHistory];
  }

LABEL_6:
  [(THBookViewController *)self p_insertDVCInBack];
  [(THDocumentViewController *)[(THBookViewController *)self documentViewController] zoomOutIfNecessaryPriorToNavigation];
  navigationModel = [(THBookViewController *)self navigationModel];
  if (isBookEpub)
  {
    v12 = -[THDocumentNavigationModel contentNodeForBodyStorageID:](navigationModel, "contentNodeForBodyStorageID:", [location storageUID]);
  }

  else
  {
    v12 = [(THDocumentNavigationModel *)navigationModel contentNodeForAbsolutePageIndex:absolutePhysicalPageIndex];
  }

  v13 = v12;
  if (v12)
  {
    [(THBookViewController *)self vantageWillChangeBy:self reason:@"THVantageChangeReasonNavigation"];
    if ([location storageUID])
    {
      v14 = [THModelStorageAnchor storageAnchorWithContentNode:v13 pageLocation:location];
      [(THModelStorageAnchor *)v14 setAbsolutePageIndex:absolutePhysicalPageIndex];
    }

    else
    {
      v15 = +[THPresentationType paginatedPresentationTypeInContext:](THPresentationType, "paginatedPresentationTypeInContext:", [objc_msgSend(-[THBookViewController documentRoot](self "documentRoot")]);
      v14 = -[THModelPageAnchor initWithContentNode:relativePageIndex:presentationType:]([THModelPageAnchor alloc], "initWithContentNode:relativePageIndex:presentationType:", v13, [v13 relativePageIndexForAbsolutePageIndex:absolutePhysicalPageIndex forPresentationType:v15], v15);
    }

    [(THBookViewController *)self navigateToAnchorInDVC:v14 pulse:0];
    v16 = [location copy];
    if (historyCopy)
    {
      [(THBookspotHistoryStack *)[(THBookViewController *)self bookspotHistoryStack] gotoBookspot:v16 minor:minorCopy];
    }

    [(THBookViewController *)self vantageDidChangeBy:self reason:@"THVantageChangeReasonNavigation"];
    v17 = +[NSNotificationCenter defaultCenter];
    v18 = THNavigationHistoryDidChangeNotification;
    v20[0] = @"pageLocation";
    v20[1] = @"minor";
    v21[0] = v16;
    v21[1] = [NSNumber numberWithBool:minorCopy];
    [(NSNotificationCenter *)v17 postNotificationName:v18 object:[NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:2]];
    [(THBookViewController *)self removeTOC];
  }

  return v13 != 0;
}

- (BOOL)isPageBookmarked
{
  isBookmarkApplicable = [(THBookViewController *)self isBookmarkApplicable];
  if (isBookmarkApplicable)
  {
    v4 = [-[THDocumentViewController documentRoot](-[THBookViewController documentViewController](self "documentViewController")];
    if ([(THBookViewController *)self isBookEpub])
    {
      currentPageInfoForBookmarks = [(THBookViewController *)self currentPageInfoForBookmarks];

      LOBYTE(isBookmarkApplicable) = [v4 isPageInfoBookmarked:currentPageInfoForBookmarks];
    }

    else
    {
      currentAbsolutePageIndexForBookmarks = [(THBookViewController *)self currentAbsolutePageIndexForBookmarks];

      LOBYTE(isBookmarkApplicable) = [v4 isAbsolutePhysicalPageBookmarked:currentAbsolutePageIndexForBookmarks];
    }
  }

  return isBookmarkApplicable;
}

- (id)_storageAnchorForPageBookmark
{
  documentViewController = [(THBookViewController *)self documentViewController];
  documentNavigator = [(THDocumentViewController *)documentViewController documentNavigator];
  v4 = [(THDocumentViewController *)documentViewController isTwoUp]^ 1;

  return [(THDocumentNavigator *)documentNavigator storageAnchorForBookmarksUsingViewCenter:v4];
}

- (void)setPageBookmarked:(BOOL)bookmarked
{
  bookmarkedCopy = bookmarked;
  if (![(THBookViewController *)self isBookmarkApplicable]|| [(THBookViewController *)self isPageBookmarked]== bookmarkedCopy)
  {
    return;
  }

  v5 = [-[THDocumentViewController documentRoot](-[THBookViewController documentViewController](self "documentViewController")];
  if ([(THBookViewController *)self isBookEpub])
  {
    currentPageInfoForBookmarks = [(THBookViewController *)self currentPageInfoForBookmarks];
    if (bookmarkedCopy)
    {
      _storageAnchorForPageBookmark = [(THBookViewController *)self _storageAnchorForPageBookmark];
      if (_storageAnchorForPageBookmark)
      {
        [v5 bookmarkPageInfo:currentPageInfoForBookmarks anchor:_storageAnchorForPageBookmark];
      }

      goto LABEL_14;
    }

    v10 = v5;
    v11 = currentPageInfoForBookmarks;
    v12 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    currentAbsolutePageIndexForBookmarks = [(THBookViewController *)self currentAbsolutePageIndexForBookmarks];
    if (bookmarkedCopy)
    {
      _storageAnchorForPageBookmark2 = [(THBookViewController *)self _storageAnchorForPageBookmark];
      if (_storageAnchorForPageBookmark2)
      {
        [v5 bookmarkAbsolutePhysicalPage:currentAbsolutePageIndexForBookmarks anchor:_storageAnchorForPageBookmark2];
      }

      goto LABEL_14;
    }

    v10 = v5;
    v11 = 0;
    v12 = currentAbsolutePageIndexForBookmarks;
  }

  [v10 unbookmarkPageInfo:v11 absolutePageIndex:v12];
LABEL_14:

  [(THBookViewController *)self updateBookmarkButton];
}

- (unint64_t)currentAbsolutePageIndex
{
  documentNavigator = [(THBookViewController *)self documentNavigator];

  return [(THDocumentNavigator *)documentNavigator currentAbsolutePageIndex];
}

- (unint64_t)currentAbsolutePageIndexForBookmarks
{
  documentNavigator = [(THBookViewController *)self documentNavigator];
  if ([(THDocumentViewController *)[(THBookViewController *)self documentViewController] isTwoUp])
  {
    v4 = [-[THBookViewController currentPresentationType](self "currentPresentationType")];
  }

  else
  {
    v4 = &dword_0 + 1;
  }

  return [(THDocumentNavigator *)documentNavigator currentAbsolutePageIndexForBookmarksUsingViewCenter:v4];
}

- (id)currentPageInfoForBookmarks
{
  if ([-[THBookViewController currentPresentationType](self "currentPresentationType")] && -[THBookViewController isBookEpub](self, "isBookEpub"))
  {
    currentAbsolutePageIndex = [(THBookViewController *)self currentAbsolutePageIndex];
    if (currentAbsolutePageIndex == 0x7FFFFFFFFFFFFFFFLL)
    {
      return 0;
    }

    else
    {
      v7 = currentAbsolutePageIndex;
      v8 = +[THPresentationType paginatedPresentationTypeInContext:](THPresentationType, "paginatedPresentationTypeInContext:", [-[THDocumentViewController documentRoot](-[THBookViewController documentViewController](self "documentViewController")]);
      v9 = [-[THDocumentViewController currentNavigationUnit](-[THBookViewController documentViewController](self "documentViewController")];
      currentNavigationUnit = [(THDocumentViewController *)[(THBookViewController *)self documentViewController] currentNavigationUnit];

      return [currentNavigationUnit pageInfoForRelativePageIndex:v9 forPresentationType:v8];
    }
  }

  else
  {
    documentNavigator = [(THBookViewController *)self documentNavigator];
    if ([(THDocumentViewController *)[(THBookViewController *)self documentViewController] isTwoUp])
    {
      v6 = [-[THBookViewController currentPresentationType](self "currentPresentationType")];
    }

    else
    {
      v6 = &dword_0 + 1;
    }

    return [(THDocumentNavigator *)documentNavigator currentPageInfoForBookmarksUsingViewCenter:v6];
  }
}

- (BOOL)isBookmarkApplicable
{
  isAnnotationWriteEnabled = [(THBookViewController *)self isAnnotationWriteEnabled];
  if (isAnnotationWriteEnabled)
  {
    visibleViewController = [(THBookViewController *)self visibleViewController];
    if (visibleViewController != [(THBookViewController *)self documentViewController])
    {
      LOBYTE(isAnnotationWriteEnabled) = 0;
      return isAnnotationWriteEnabled;
    }

    if (![(THBookViewController *)self isBookEpub])
    {
      v5 = [(THBookViewController *)self currentAbsolutePageIndexForBookmarks]== 0x7FFFFFFFFFFFFFFFLL;
LABEL_9:
      LOBYTE(isAnnotationWriteEnabled) = !v5;
      return isAnnotationWriteEnabled;
    }

    if (([-[THBookViewController currentPresentationType](self "currentPresentationType")] & 1) != 0 || (isAnnotationWriteEnabled = -[THReflowablePaginationController paginationComplete](-[THDocumentViewController reflowablePaginationController](-[THBookViewController documentViewController](self, "documentViewController"), "reflowablePaginationController"), "paginationComplete")))
    {
      v5 = [(THBookViewController *)self currentPageInfoForBookmarks]== 0;
      goto LABEL_9;
    }
  }

  return isAnnotationWriteEnabled;
}

- (BOOL)isBookPortraitOnly
{
  documentRoot = [(THDocumentViewController *)[(THBookViewController *)self documentViewController] documentRoot];

  return [documentRoot isPortraitOnlyBook];
}

- (BOOL)isBookEpub
{
  bookDescription = [(THBookViewController *)self bookDescription];

  return [(THBookDescription *)bookDescription isEpub];
}

- (id)cachedAnnotationForFetchedObject:(id)object
{
  v4 = [-[THDocumentViewController documentRoot](-[THBookViewController documentViewController](self "documentViewController")];

  return [v4 cachedAnnotationForFetchedObject:object];
}

- (void)showTOCGlossaryPopover:(id)popover
{
  if ([(THBookViewController *)self TOCGlossaryViewController])
  {

    [(THBookViewController *)self dismissTOCGlossaryView:1];
  }

  else
  {
    [(THBookViewController *)self dismissActivePopover];
    if ([objc_msgSend(objc_msgSend(-[THDocumentViewController documentRoot](-[THBookViewController documentViewController](self "documentViewController")])
    {
      [popover setEnabled:0];
      [(THToolbarDelegate *)[(THDocumentViewController *)[(THBookViewController *)self documentViewController] toolbarDelegate] userWillInteractInToolbar];
      v5 = objc_alloc_init(THTOCGlossaryMenuPopoverViewController);
      if ([(THBookViewController *)self isBookEpub])
      {
        [(THTOCGlossaryMenuPopoverViewController *)v5 setTheme:[(THBookViewController *)self theme]];
      }

      [(THTOCGlossaryMenuPopoverViewController *)v5 setDelegate:self];
      [(THBookViewController *)self setTOCGlossaryViewController:v5];
      [(THTOCGlossaryMenuPopoverViewController *)v5 setModalPresentationStyle:7];
      [(THTOCGlossaryMenuPopoverViewController *)v5 setOverrideUserInterfaceStyle:[(THBookViewController *)self overrideUserInterfaceStyle]];
      popoverPresentationController = [(THTOCGlossaryMenuPopoverViewController *)v5 popoverPresentationController];
      [popoverPresentationController setBarButtonItem:popover];
      [popoverPresentationController setPermittedArrowDirections:1];
      [popoverPresentationController setDelegate:self];
      [popoverPresentationController setPassthroughViews:{-[THBookViewController p_popoverPassthroughViews](self, "p_popoverPassthroughViews")}];
      [popoverPresentationController bc_applyTraitOverridesWithOverrideUserInterfaceStyleFromViewController:v5];
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_8CB50;
      v7[3] = &unk_45AE00;
      v7[4] = popover;
      [(THBookViewController *)self presentViewController:v5 animated:1 completion:v7];
    }

    else
    {

      [(THBookViewController *)self showTOC];
    }
  }
}

- (void)p_updateCenterTitle
{
  if ([(THBookViewController *)self p_isTOCViewController:[(THBookViewController *)self visibleViewController]])
  {

    [(THBookViewController *)self p_setCenterTitleForTOC];
  }

  else if ([(THBookViewController *)self isBookEpub])
  {

    [(THBookViewController *)self p_setCenterTitleToBookTitle];
  }

  else
  {

    [(THBookViewController *)self setCenterTitleForCurrentNavigationUnit];
  }
}

- (void)setCenterTitle:(id)title
{
  navigationBarController = [(THBookViewController *)self navigationBarController];

  [(THNavigationBarController *)navigationBarController setCenterTitle:title];
}

- (void)p_setCenterTitleForTOC
{
  if ([(THBookViewController *)self shouldShowChapterTitle])
  {
    v3 = [THBundle() localizedStringForKey:@"Table of Contents" value:&stru_471858 table:0];
  }

  else
  {
    v3 = &stru_471858;
  }

  [(THBookViewController *)self setCenterTitle:v3];
}

- (void)p_setCenterTitleForNavigationUnit:(id)unit
{
  if ([(THBookViewController *)self shouldShowChapterTitle])
  {
    v5 = [objc_msgSend(-[THDocumentViewController documentRoot](-[THBookViewController documentViewController](self "documentViewController")];
  }

  else
  {
    v5 = &stru_471858;
  }

  [(THBookViewController *)self setCenterTitle:v5];
}

- (void)setCenterTitleForCurrentNavigationUnit
{
  documentViewController = [(THBookViewController *)self documentViewController];
  if ([(THDocumentViewController *)documentViewController currentNavigationUnit])
  {
    currentNavigationUnit = [(THDocumentViewController *)documentViewController currentNavigationUnit];

    [(THBookViewController *)self p_setCenterTitleForNavigationUnit:currentNavigationUnit];
  }
}

- (void)p_setCenterTitleToBookTitle
{
  bookTitle = [(THBookDescription *)[(THBookViewController *)self bookDescription] bookTitle];
  if (bookTitle)
  {
    v4 = bookTitle;
  }

  else
  {
    v4 = &stru_471858;
  }

  [(THBookViewController *)self setCenterTitle:v4];
}

- (void)p_setNavigationOverlayHidden:(BOOL)hidden animated:(BOOL)animated autoHides:(BOOL)hides
{
  hidesCopy = hides;
  animatedCopy = animated;
  selfCopy = self;
  visibleViewController = [(THBookViewController *)self visibleViewController];
  if (visibleViewController == [(THBookViewController *)self documentViewController])
  {
    showingExpandedWidgetView = [(THDocumentViewController *)[(THBookViewController *)self documentViewController] showingExpandedWidgetView];
  }

  else
  {
    showingExpandedWidgetView = 0;
  }

  if ([(THBookViewController *)self isTOCVisible]|| (showingExpandedWidgetView & 1) != 0 || [(THBookViewController *)self isStudyViewControllerVisible]|| [(THBookViewController *)self isGlossaryPresenting]|| [(THBookViewController *)self isGlossaryVisible]|| (v11 = [(THBookViewController *)self isNotesFullscreenVisible], hidden) || (v11 & 1) != 0)
  {
    [(THNavigationOverlayView *)[(THBookViewController *)self navigationOverlayView] setOverlayHidden:1 animated:animatedCopy];
  }

  else
  {
    [(THNavigationHistoryStepperController *)[(THBookViewController *)self navigationHistoryStepperController] updateHistoryNavigation];
    bookspotHistoryStack = [(THNavigationHistoryStepperController *)[(THBookViewController *)self navigationHistoryStepperController] bookspotHistoryStack];
    if ((-[THBookspotHistoryStack hasPrevBookspot](bookspotHistoryStack, "hasPrevBookspot") & 1) != 0 || (-[THBookspotHistoryStack hasNextBookspot](bookspotHistoryStack, "hasNextBookspot") & 1) != 0 || [objc_msgSend(-[THBookViewController documentRoot](self "documentRoot")])
    {
      [(THNavigationOverlayView *)[(THBookViewController *)self navigationOverlayView] setOverlayHidden:0 animated:animatedCopy];
      [NSObject cancelPreviousPerformRequestsWithTarget:self selector:"pAutoHideNavOverlay" object:0];
      if (hidesCopy)
      {
        [(THBookViewController *)self performSelector:"pAutoHideNavOverlay" withObject:0 afterDelay:4.0];
      }
    }
  }

  [(THBookViewController *)self updatePageNumberWidth];
}

- (BOOL)shouldShowChapterTitle
{
  if (![(THBookViewController *)self im_isCompactWidth])
  {
    return 1;
  }

  [-[THBookViewController view](self "view")];
  return CGRectGetWidth(v4) >= kIMConfigurationSize_largePhone[1];
}

- (void)willSetNavigationBarHidden:(BOOL)hidden animated:(BOOL)animated
{
  animatedCopy = animated;
  hiddenCopy = hidden;
  [(THBookViewController *)self setSettingToolbarHidden:?];
  [(THBookViewController *)self refreshStatusBarAppearance];

  [(THBookViewController *)self p_setNavigationOverlayHidden:hiddenCopy animated:animatedCopy autoHides:0];
}

- (void)settingNavigationBarHidden:(BOOL)hidden animated:(BOOL)animated
{
  animatedCopy = animated;
  hiddenCopy = hidden;
  view = [(THBookViewController *)self view];
  v8 = [-[THBookViewController p_selectedTocViewControllerCreateIfNecessary:](self p_selectedTocViewControllerCreateIfNecessary:{0), "shroudOverlayView"}];
  viewBackgroundColor = [(THBookViewController *)self viewBackgroundColor];
  if (animatedCopy)
  {
    v10 = 0.15;
  }

  else
  {
    v10 = 0.0;
  }

  if (view)
  {
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_8D1A8;
    v12[3] = &unk_45AE58;
    v12[4] = view;
    v12[5] = viewBackgroundColor;
    [UIView animateWithDuration:v12 animations:v10];
  }

  if (v8)
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_8D1B0;
    v11[3] = &unk_45AE58;
    v11[4] = v8;
    v11[5] = viewBackgroundColor;
    [UIView animateWithDuration:v11 animations:v10];
  }

  [(THDocumentViewController *)[(THBookViewController *)self documentViewController] settingToolbarHidden:hiddenCopy animated:animatedCopy];
}

- (void)didSetNavigationBarHidden:(BOOL)hidden animated:(BOOL)animated
{
  if ([(THDocumentViewController *)[(THBookViewController *)self documentViewController:hidden] showingExpandedWidgetView])
  {
    [-[THBookViewController view](self "view")];
  }

  [(THDocumentViewController *)[(THBookViewController *)self documentViewController] setNeedsStatusBarAppearanceUpdate];
  documentViewController = [(THBookViewController *)self documentViewController];

  [(THDocumentViewController *)documentViewController setNeedsUpdateOfHomeIndicatorAutoHidden];
}

- (void)userWillInteractInToolbar
{
  navigationBarController = [(THBookViewController *)self navigationBarController];

  [(THNavigationBarController *)navigationBarController resetAutohideTimer];
}

- (void)showToolbarAnimated:(BOOL)animated
{
  animatedCopy = animated;
  [(THBookViewController *)self userWillInteractInToolbar];
  [(THNavigationBarController *)[(THBookViewController *)self navigationBarController] setNavigationBarHidden:0 animated:animatedCopy];

  [(THBookViewController *)self p_updateTitleLabelToolbarVisible:0 animated:animatedCopy];
}

- (void)hideToolbarAnimated:(BOOL)animated
{
  animatedCopy = animated;
  [(THBookViewController *)self dismissActivePopoverIsTransitioning:0];
  [(THNavigationBarController *)[(THBookViewController *)self navigationBarController] setNavigationBarHidden:1 animated:animatedCopy];

  [(THBookViewController *)self p_updateTitleLabelToolbarVisible:1 animated:animatedCopy];
}

- (BOOL)isToolbarHidden
{
  navigationBar = [(THNavigationBarController *)[(THBookViewController *)self navigationBarController] navigationBar];

  return [(BCNavigationBar *)navigationBar isHidden];
}

- (void)updateBookmarkButton
{
  isPageBookmarked = [(THBookViewController *)self isPageBookmarked];
  v4 = isPageBookmarked;
  if (isPageBookmarked)
  {
    v5 = @"bookmark.fill";
  }

  else
  {
    v5 = @"bookmark";
  }

  if ([(BCNavigationBar *)[(THNavigationBarController *)[(THBookViewController *)self navigationBarController] navigationBar] isMinibar])
  {
    v6 = 2;
  }

  else
  {
    v6 = 3;
  }

  [(UIButton *)[(THBookViewController *)self bookmarkButton] setImage:[[UIImage systemImageNamed:?]forState:"imageWithConfiguration:", [UIImageSymbolConfiguration configurationWithPointSize:5 weight:v6 scale:17.0]], 0];
  if (v4)
  {
    [(UIButton *)[(THBookViewController *)self bookmarkButton] setTintColor:+[UIColor systemRedColor]];
    [(UIButton *)[(THBookViewController *)self actionlessBookmarkButton] setImage:[[[UIImage systemImageNamed:?]imageWithRenderingMode:[UIImageSymbolConfiguration forState:"configurationWithPointSize:weight:scale:" configurationWithPointSize:v6 weight:17.0 scale:?]], "imageWithRenderingMode:", 2], 0];
    if ([-[THBookViewController currentPresentationType](self "currentPresentationType")])
    {
      [(UIButton *)[(THBookViewController *)self actionlessBookmarkButton] alpha];
      if (v7 != 0.0)
      {
        goto LABEL_15;
      }

      v8 = 1;
      goto LABEL_14;
    }
  }

  else
  {
    [(UIButton *)[(THBookViewController *)self bookmarkButton] setTintColor:0];
    [(UIButton *)[(THBookViewController *)self actionlessBookmarkButton] setImage:[[[UIImage systemImageNamed:?]imageWithRenderingMode:[UIImageSymbolConfiguration forState:"configurationWithPointSize:weight:scale:" configurationWithPointSize:v6 weight:17.0 scale:?]], "imageWithRenderingMode:", 2], 0];
  }

  [(UIButton *)[(THBookViewController *)self actionlessBookmarkButton] alpha];
  if (v9 != 1.0)
  {
    goto LABEL_15;
  }

  v8 = 0;
LABEL_14:
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_8D5C4;
  v10[3] = &unk_45B2C0;
  v10[4] = self;
  v11 = v8;
  [UIView animateWithDuration:v10 animations:0 completion:0.2];
LABEL_15:
  if ([(THBookViewController *)self p_isPageLocationApplicable])
  {
    [-[THDocumentViewController interactiveCanvasController](-[THBookViewController documentViewController](self "documentViewController")];
  }
}

- (void)_showSearchPopoverShowingToolbarIfNeededFromBarButtonItem:(id)item text:(id)text
{
  v8 = sub_8D710;
  v9 = &unk_45AE58;
  selfCopy = self;
  textCopy = text;
  [(THBookViewController *)self userWillInteractInToolbar:item];
  if (![(THBookViewController *)self isToolbarHidden]|| ([(THBookViewController *)self im_isCompactWidth]& 1) != 0 || ([(THBookViewController *)self im_isCompactHeight]& 1) != 0)
  {
    if ([(THBookViewController *)self isToolbarHidden]|| ![(THBookViewController *)self im_isCompactWidth]|| UIAccessibilityIsVoiceOverRunning())
    {
      v8(&v7);
      return;
    }

    navigationBarController = [(THBookViewController *)self navigationBarController];
    v6 = 1;
  }

  else
  {
    navigationBarController = [(THBookViewController *)self navigationBarController];
    v6 = 0;
  }

  [(THNavigationBarController *)navigationBarController setNavigationBarHidden:v6 animated:1 completion:&v7];
}

- (double)toolbarHeight
{
  view = [(THNavigationBarController *)[(THBookViewController *)self navigationBarController] view];

  [view frameHeight];
  return result;
}

- (BOOL)useWhiteTheme
{
  visibleViewController = [(THBookViewController *)self visibleViewController];
  if (visibleViewController != [(THBookViewController *)self documentViewController])
  {
    return 0;
  }

  return [(THBookViewController *)self isBookEpub];
}

- (void)textForPagesLeftInChapterDidChangeTo:(id)to
{
  if (to)
  {
    toCopy = to;
  }

  else
  {
    toCopy = &stru_471858;
  }

  navigationOverlayView = [(THBookViewController *)self navigationOverlayView];

  [(THNavigationOverlayView *)navigationOverlayView setAlternativeNextCaption:toCopy];
}

- (void)setToolbarHiddenFromAccessibility:(BOOL)accessibility
{
  accessibilityCopy = accessibility;
  navigationBar = [(THNavigationBarController *)[(THBookViewController *)self navigationBarController] navigationBar];

  [(BCNavigationBar *)navigationBar setAccessibilityElementsHidden:accessibilityCopy];
}

- (id)foregroundTintColorForNavigationBar:(id)bar
{
  if ([(THNavigationBarController *)[(THBookViewController *)self navigationBarController] navigationBar]!= bar)
  {
    return 0;
  }

  theme = [(THBookViewController *)self theme];

  return [(THTheme *)theme foregroundTintColorForNavigationBar:bar];
}

- (id)backgroundColorForNavigationBar:(id)bar
{
  theme = [(THBookViewController *)self theme];

  return [(THTheme *)theme backgroundColorForNavigationBar:bar];
}

- (id)titleColorForNavigationBar:(id)bar
{
  theme = [(THBookViewController *)self theme];

  return [(THTheme *)theme titleColorForNavigationBar:bar];
}

- (BOOL)navigationBarIsTranslucent:(id)translucent
{
  theme = [(THBookViewController *)self theme];

  return [(THTheme *)theme navigationBarIsTranslucent:translucent];
}

- (id)storeURLForHTMLGenerator:(id)generator
{
  storeMgr = [+[AEAssetEngine storeMgr](AEAssetEngine storeMgr];
  v5 = [-[THBookViewController documentRoot](self "documentRoot")];

  return [storeMgr bookUrlForStoreId:v5];
}

- (id)tellAFriendBaseURLForHTMLGenerator:(id)generator
{
  storeMgr = [+[AEAssetEngine storeMgr](AEAssetEngine storeMgr];
  objc_opt_class();
  [storeMgr tellAFriendEmailBodyURLBase];

  return BUDynamicCast();
}

- (int64_t)appearanceStyle
{
  if (![(THBookViewController *)self isBookEpub])
  {
    return 4;
  }

  v2 = +[NSUserDefaults standardUserDefaults];
  result = [(NSUserDefaults *)v2 integerForKey:qword_5677B8];
  if (result >= 4)
  {
    return 0;
  }

  return result;
}

- (void)setAppearanceStyle:(int64_t)style
{
  if ([(THBookViewController *)self isBookEpub]&& [(THBookViewController *)self appearanceStyle]!= style)
  {
    if (style != 0x7FFFFFFFFFFFFFFFLL && style)
    {
      v6 = +[NSUserDefaults standardUserDefaults];
      [(NSUserDefaults *)v6 setInteger:style forKey:qword_5677B8];
    }

    else
    {
      v5 = +[NSUserDefaults standardUserDefaults];
      [(NSUserDefaults *)v5 removeObjectForKey:qword_5677B8];
    }

    if (style != 3)
    {
      self->_styleBeforeAutoNight = [(THBookViewController *)self appearanceStyle];
    }

    [(BCNavigationBar *)[(THNavigationBarController *)[(THBookViewController *)self navigationBarController] navigationBar] setOverrideUserInterfaceStyle:[(THBookViewController *)self overrideUserInterfaceStyle]];
    if ([(THDisplaySettingsViewController *)self->mDisplaySettingsViewController appearanceStyle]!= style)
    {
      [(THDisplaySettingsViewController *)self->mDisplaySettingsViewController setAppearanceStyle:style];
      mDisplaySettingsViewController = self->mDisplaySettingsViewController;

      [(THDisplaySettingsViewController *)mDisplaySettingsViewController setAutoNightModeSwitch:1];
    }
  }
}

- (void)applyAppearanceStyle:(int64_t)style
{
  [(THBookViewController *)self setTheme:[(THBookViewController *)self themeForStyle:?]];
  [(THBookViewController *)self setAppearanceStyle:style];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_8DC58;
  v5[3] = &unk_45AE00;
  v5[4] = self;
  [UIView animateWithDuration:v5 animations:&stru_45C650 completion:0.1];
}

- (id)themeForStyle:(int64_t)style
{
  v4 = +[THBookViewController themeMap];
  v5 = [NSNumber numberWithInt:style];

  return [v4 objectForKey:v5];
}

- (void)coordinator:(id)coordinator observer:(id)observer didChangeLayout:(unint64_t)layout
{
  if ([(THBookViewController *)self shouldShowFlowModeSwitch:[(THBookViewController *)self displaySettingsViewController:coordinator]])
  {
    displaySettingsViewController = [(THBookViewController *)self displaySettingsViewController];

    [(THBookViewController *)self displaySettingsControllerDidChangeFlowMode:displaySettingsViewController notifyingCoordinator:0];
  }
}

- (void)coordinator:(id)coordinator observer:(id)observer didChangeStyle:(unint64_t)style
{
  v7 = [(THBookViewController *)self displaySettingsViewController:coordinator];

  [(THBookViewController *)self displaySettingsController:v7 didChangeStyle:style];
}

- (void)coordinator:(id)coordinator observerDidIncreaseFontSize:(id)size
{
  if (![(THBookViewController *)self displaySettingsViewController:coordinator])
  {
    displaySettingsViewController = [(THBookViewController *)self displaySettingsViewController];
    v6 = [+[THApplicationSettings sharedSettings](THApplicationSettings "sharedSettings")];

    [(THBookViewController *)self displaySettingsControllerDidChangeFontSize:displaySettingsViewController toFlowSizeScale:v6];
  }
}

- (void)coordinator:(id)coordinator observerDidDecreaseFontSize:(id)size
{
  if (![(THBookViewController *)self displaySettingsViewController:coordinator])
  {
    displaySettingsViewController = [(THBookViewController *)self displaySettingsViewController];
    v6 = [+[THApplicationSettings sharedSettings](THApplicationSettings "sharedSettings")];

    [(THBookViewController *)self displaySettingsControllerDidChangeFontSize:displaySettingsViewController toFlowSizeScale:v6];
  }
}

- (void)_accessibilityInvertColorsStatusDidChange:(id)change
{
  IsInvertColorsEnabled = UIAccessibilityIsInvertColorsEnabled();
  if (self->_smartInvertEnabled != IsInvertColorsEnabled)
  {
    self->_smartInvertEnabled = IsInvertColorsEnabled;
    [(THBookViewController *)self setTheme:[(THBookViewController *)self themeForStyle:[(THBookViewController *)self appearanceStyle]]];

    [(THBookViewController *)self p_updateFromTheme:1];
  }
}

- (void)dismissActivePopoverIsTransitioning:(BOOL)transitioning
{
  if (!transitioning)
  {
    [(THBookViewController *)self dismissBookmarkMenu:0 completion:0];
    [(THBookViewController *)self dismissTOCGlossaryView:0];
    [(THBookViewController *)self dismissDisplaySettings:0];
    [(THBookViewController *)self dismissSearchPopover:0 completion:0];
    [(THBookViewController *)self dismissSharePopover:0];
    v3 = vars8;
  }

  +[THWPHighlightController dismissActivePopoverEditor];
}

- (THDocumentNavigator)documentNavigator
{
  documentViewController = [(THBookViewController *)self documentViewController];

  return [(THDocumentViewController *)documentViewController documentNavigator];
}

- (void)_traitCollectionDidChange:(id)change previousTraitCollection:(id)collection
{
  [(THBookViewController *)self updateViewBackgroundColor];
  if ((!-[THBookDescription isEpub](self->mBookDescription, "isEpub") || -[THTheme isNight:](-[THBookViewController theme](self, "theme"), "isNight:", self)) && ([-[THBookViewController traitCollection](self "traitCollection")] & 1) == 0)
  {
    [(THBookViewController *)self p_updateFromTheme:1];
    [(THBookViewController *)self settingNavigationBarHidden:[(THBookViewController *)self settingToolbarHidden] animated:0];
  }

  traitCollection = [(THBookViewController *)self traitCollection];

  [(THBookViewController *)self p_updateToolbarButtonStatesWithTraits:traitCollection];
}

- (void)showHUDForVendor:(id)vendor
{
  viewForHUD = [vendor viewForHUD];
  if (viewForHUD)
  {
    v6 = viewForHUD;
    if ([(THBookViewController *)self HUDOverlayView]!= viewForHUD)
    {
      hUDOverlayView = [(THBookViewController *)self HUDOverlayView];
      [(THBookViewController *)self setHUDVendor:vendor];
      [(THBookViewController *)self setHUDOverlayView:v6];
      v8 = 0.0;
      [(UIView *)[(THBookViewController *)self HUDOverlayView] setAlpha:0.0];
      [-[THBookViewController view](self "view")];
      if ([(THBookViewController *)self navigationOverlayView])
      {
        if ([(THNavigationOverlayView *)[(THBookViewController *)self navigationOverlayView] superview])
        {
          v8 = 0.2;
        }

        else
        {
          v8 = 0.0;
        }
      }

      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_8E198;
      v10[3] = &unk_45AE00;
      v10[4] = self;
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_8E1E0;
      v9[3] = &unk_45C678;
      v9[4] = hUDOverlayView;
      v9[5] = v6;
      [UIView animateWithDuration:v10 animations:v9 completion:v8];
    }
  }
}

- (void)hideHUDForVendor:(id)vendor
{
  if ([(THBookViewController *)self HUDVendor]== vendor)
  {

    [(THBookViewController *)self p_hideHUDView];
  }
}

- (void)temporarilySetHUDViewHidden:(BOOL)hidden
{
  v3 = !hidden;
  hUDOverlayView = [(THBookViewController *)self HUDOverlayView];

  [(UIView *)hUDOverlayView setAlpha:v3];
}

- (void)p_hideHUDView
{
  if ([(THBookViewController *)self HUDOverlayView])
  {
    hUDOverlayView = [(THBookViewController *)self HUDOverlayView];
    [(THBookViewController *)self setHUDOverlayView:0];
    [(THBookViewController *)self setHUDVendor:0];
    superview = [(UIView *)hUDOverlayView superview];
    if (superview == [(THBookViewController *)self viewIfLoaded])
    {
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 3221225472;
      v6[2] = sub_8E4D4;
      v6[3] = &unk_45AE00;
      v6[4] = hUDOverlayView;
      v5[0] = _NSConcreteStackBlock;
      v5[1] = 3221225472;
      v5[2] = sub_8E4E0;
      v5[3] = &unk_45C678;
      v5[4] = hUDOverlayView;
      v5[5] = self;
      [UIView animateWithDuration:v6 animations:v5 completion:0.2];
    }
  }
}

- (CGRect)frameForHUDFromVendor:(id)vendor
{
  [-[THBookViewController view](self view];
  x = v13.origin.x;
  y = v13.origin.y;
  width = v13.size.width;
  height = v13.size.height;
  v7 = CGRectGetMaxX(v13) + -40.0;
  v14.origin.x = x;
  v14.origin.y = y;
  v14.size.width = width;
  v14.size.height = height;
  v8 = CGRectGetMinX(v14) + 20.0;
  v15.origin.x = x;
  v15.origin.y = y;
  v15.size.width = width;
  v15.size.height = height;
  v9 = CGRectGetMaxY(v15) + -30.0 + -20.0;
  v10 = 30.0;
  v11 = v8;
  v12 = v7;
  result.size.height = v10;
  result.size.width = v12;
  result.origin.y = v9;
  result.origin.x = v11;
  return result;
}

- (void)bookOpenTransitionDidEnd
{
  if ([(THBookViewController *)self bookOpenFailed])
  {
    v3 = +[UIAlertController alertControllerWithTitle:message:preferredStyle:](UIAlertController, "alertControllerWithTitle:message:preferredStyle:", [THBundle() localizedStringForKey:@"Unable to open book." value:&stru_471858 table:0], 0, 1);
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_8E7A0;
    v4[3] = &unk_45B358;
    v4[4] = self;
    -[UIAlertController addAction:](v3, "addAction:", +[UIAlertAction actionWithTitle:style:handler:](UIAlertAction, "actionWithTitle:style:handler:", [THBundle() localizedStringForKey:@"OK" value:&stru_471858 table:0], 1, v4));
    [(THBookViewController *)self presentViewController:v3 animated:1 completion:0];
  }
}

- (id)transitionContentView
{
  [(THBookViewController *)self visibleViewController];
  objc_opt_class();
  v3 = TSUClassAndProtocolCast();
  if (v3)
  {

    return [v3 transitionContentView];
  }

  else
  {
    visibleViewController = [(THBookViewController *)self visibleViewController];

    return [(UIViewController *)visibleViewController contentScrollView];
  }
}

- (id)transitionContentBackgroundColor
{
  [(THBookViewController *)self visibleViewController];
  objc_opt_class();
  v3 = TSUClassAndProtocolCast();
  if (objc_opt_respondsToSelector())
  {

    return [v3 transitionContentBackgroundColor];
  }

  else
  {

    return [(THBookViewController *)self viewBackgroundColor];
  }
}

- (BOOL)shouldAutorotate
{
  if ([(THBookViewController *)self disallowRotate]|| +[THWFreeTransformController isFreeTransformInProgress])
  {
    return 0;
  }

  if ([(THDocumentViewController *)[(THBookViewController *)self documentViewController] showingExpandedWidgetView])
  {
    expandedViewController = [(THDocumentViewController *)[(THBookViewController *)self documentViewController] expandedViewController];
  }

  else
  {
    if (![(THBookViewController *)self visibleViewController])
    {
      return 1;
    }

    expandedViewController = [(THBookViewController *)self visibleViewController];
  }

  return [(THWExpandedViewController *)expandedViewController shouldAutorotate];
}

- (void)p_addViewControllerInFront:(id)front reason:(id)reason
{
  if ([(THBookViewController *)self visibleViewController]!= front)
  {
    [front beginAppearanceTransition:1 animated:0];
    if ([(THBookViewController *)self visibleViewController])
    {
      visibleViewController = [(THBookViewController *)self visibleViewController];
      if (visibleViewController == [(THBookViewController *)self studyViewController])
      {
        [(THBookViewController *)self p_unloadStudyViewController];
      }
    }

    parentViewController = [front parentViewController];
    if (parentViewController != self)
    {
      [(THBookViewController *)self addChildViewController:front];
    }

    [-[THBookViewController view](self "view")];
    [objc_msgSend(front "view")];
    [-[THBookViewController view](self "view")];
    if (parentViewController != self)
    {
      [front didMoveToParentViewController:self];
    }

    [front endAppearanceTransition];

    [(THBookViewController *)self p_setVisibleViewControllerToViewController:front reason:reason];
  }
}

- (void)p_addViewControllerInBack:(id)back animated:(BOOL)animated
{
  [back beginAppearanceTransition:1 animated:0];
  if ([(THBookViewController *)self visibleViewController]== back)
  {
    [(THBookViewController *)self setVisibleViewController:0];
  }

  parentViewController = [back parentViewController];
  if (parentViewController == self)
  {
    [(THBookViewController *)self addChildViewController:back];
  }

  [-[THBookViewController view](self "view")];
  [objc_msgSend(back "view")];
  [-[THBookViewController view](self "view")];
  if (parentViewController == self)
  {
    [back didMoveToParentViewController:self];
  }

  [back endAppearanceTransition];
}

- (void)p_removeViewController:(id)controller
{
  if ([controller isViewLoaded])
  {
    v5 = [objc_msgSend(controller "view")];
    if (v5 == [(THBookViewController *)self viewIfLoaded])
    {
      [controller beginAppearanceTransition:0 animated:0];
      if ([(THBookViewController *)self visibleViewController]== controller)
      {
        [(THBookViewController *)self setVisibleViewController:0];
      }

      [objc_msgSend(controller "view")];
      if ([(THBookViewController *)self documentViewController]== controller)
      {
        [(THBookViewController *)self p_hideHUDView];
      }

      [controller endAppearanceTransition];
    }
  }
}

- (void)bookView:(id)view didMoveToWindow:(id)window
{
  if (window)
  {
    if (self->mBookOpener)
    {
      [(THBookViewController *)self p_finishBookLoadIfReady];
    }
  }
}

- (void)readingStatisticsCollector:(id)collector didShowContentWithCFIs:(id)is
{
  if ([(THBookViewController *)self readingStatisticsCollector]== collector)
  {
    assetViewControllerDelegate = [(THBookViewController *)self assetViewControllerDelegate];

    [(AEAssetViewControllerDelegate *)assetViewControllerDelegate assetViewController:self didShowContentWithCFIs:is];
  }
}

- (void)readingStatisticsCollector:(id)collector willHideContentWithCFIs:(id)is
{
  if ([(THBookViewController *)self readingStatisticsCollector]== collector)
  {
    assetViewControllerDelegate = [(THBookViewController *)self assetViewControllerDelegate];

    [(AEAssetViewControllerDelegate *)assetViewControllerDelegate assetViewController:self willHideContentWithCFIs:is];
  }
}

- (BOOL)readingStatisticsCollector:(id)collector needTextNodeCharacterCountsForOrdinal:(int64_t)ordinal
{
  if ([(THBookViewController *)self readingStatisticsCollector]!= collector)
  {
    return 0;
  }

  assetViewControllerDelegate = [(THBookViewController *)self assetViewControllerDelegate];

  return [(AEAssetViewControllerDelegate *)assetViewControllerDelegate needTextNodeCharacterCountsForOrdinal:ordinal];
}

- (void)readingStatisticsCollector:(id)collector addTextNodeCharacterCounts:(id)counts ordinal:(int64_t)ordinal completion:(id)completion
{
  if ([(THBookViewController *)self readingStatisticsCollector]== collector)
  {
    assetViewControllerDelegate = [(THBookViewController *)self assetViewControllerDelegate];

    [(AEAssetViewControllerDelegate *)assetViewControllerDelegate addTextNodeCharacterCounts:counts ordinal:ordinal completion:completion];
  }
}

- (BOOL)readingStatisticsCollector:(id)collector needTOCEntriesForOrdinal:(int64_t)ordinal
{
  if ([(THBookViewController *)self readingStatisticsCollector]!= collector)
  {
    return 0;
  }

  assetViewControllerDelegate = [(THBookViewController *)self assetViewControllerDelegate];

  return [(AEAssetViewControllerDelegate *)assetViewControllerDelegate needTOCEntriesForOrdinal:ordinal];
}

- (void)readingStatisticsCollector:(id)collector addTOCEntries:(id)entries ordinal:(int64_t)ordinal completion:(id)completion
{
  if ([(THBookViewController *)self readingStatisticsCollector]== collector)
  {
    assetViewControllerDelegate = [(THBookViewController *)self assetViewControllerDelegate];

    [(AEAssetViewControllerDelegate *)assetViewControllerDelegate addTOCEntries:entries ordinal:ordinal completion:completion];
  }
}

- (void)documentViewController:(id)controller bodyReps:(id)reps visibleRectIs:(CGRect)is
{
  height = is.size.height;
  width = is.size.width;
  y = is.origin.y;
  x = is.origin.x;
  if ([(THBookViewController *)self documentViewController]== controller)
  {
    readingStatisticsCollector = [(THBookViewController *)self readingStatisticsCollector];

    [(THReadingStatisticsCollector *)readingStatisticsCollector bodyReps:reps visibleRectIs:x, y, width, height];
  }
}

- (void)_checkIfScanningReadingStatisticsCanBegin
{
  dispatch_assert_queue_V2(&_dispatch_main_q);
  if ([(THBookViewController *)self bookLoadedSuccessfully]&& [(THBookViewController *)self readingStatisticsControllerLoaded]&& ![(THBookViewController *)self startedScanningReadingStatistics])
  {
    [(THBookViewController *)self setStartedScanningReadingStatistics:1];
    readingStatisticsCollector = [(THBookViewController *)self readingStatisticsCollector];
    documentRoot = [(THBookViewController *)self documentRoot];

    [(THReadingStatisticsCollector *)readingStatisticsCollector scanReadingStatisticsWithDocumentRoot:documentRoot];
  }
}

- (void)bc_analyticsVisibilityDidAppear
{
  if ([(THBookViewController *)self analyticsReadStartDate])
  {

    [(THBookViewController *)self setAnalyticsReadStartDate:0];
  }

  [(THBookViewController *)self setAnalyticsReadStartDate:+[NSDate date]];
  [(THBookViewController *)self setAnalyticsReadStartProgress:[(THBookViewController *)self _analyticsReadingProgress]];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_8F1A8;
  v3[3] = &unk_45B188;
  v3[4] = self;
  [BADoNotDisturbHelper fetchCurrentState:v3];
}

- (void)bc_analyticsVisibilityWillDisappear
{
  ba_effectiveAnalyticsTracker = [(THBookViewController *)self ba_effectiveAnalyticsTracker];
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x3052000000;
  v17[3] = sub_8747C;
  v17[4] = sub_8748C;
  v17[5] = [ba_effectiveAnalyticsTracker newSessionAssertion];
  contentData = [(THBookViewController *)self contentData];
  _analyticsContentSettingsData = [(THBookViewController *)self _analyticsContentSettingsData];
  _analyticsReadingSettingsData = [(THBookViewController *)self _analyticsReadingSettingsData];
  readingSessionData = [(THBookViewController *)self readingSessionData];
  v11 = 0;
  v12 = &v11;
  v13 = 0x3052000000;
  v14 = sub_8747C;
  v15 = sub_8748C;
  analyticsReadStartDate = [(THBookViewController *)self analyticsReadStartDate];
  v8 = v12[5];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_8F3D8;
  v10[3] = &unk_45C6C0;
  v10[4] = ba_effectiveAnalyticsTracker;
  v10[5] = self;
  v10[6] = readingSessionData;
  v10[7] = contentData;
  v10[8] = _analyticsReadingSettingsData;
  v10[9] = _analyticsContentSettingsData;
  v10[10] = &v11;
  v10[11] = v17;
  [BADoNotDisturbHelper fetchCurrentState:v10];
  [(NSDate *)[(THBookViewController *)self analyticsReadStartDate] timeIntervalSinceNow];
  [-[THBookViewController _analyticsSessionHost](self "_analyticsSessionHost")];
  [(THBookViewController *)self setAnalyticsReadStartDate:0];
  _Block_object_dispose(&v11, 8);
  _Block_object_dispose(v17, 8);
}

- (void)emitReadingOrientationChangeEventIfNeeded
{
  if ([+[UIDevice orientation]- 3 >= &dword_0 + 2 currentDevice]
  {
    v3 = &dword_0 + 1;
  }

  else
  {
    v3 = &dword_0 + 2;
  }

  if ([(THBookViewController *)self lastAnalyticsDeviceOrientationReported]!= v3)
  {
    [+[BAEventReporter sharedReporter](BAEventReporter "sharedReporter")];

    [(THBookViewController *)self setLastAnalyticsDeviceOrientationReported:v3];
  }
}

- (id)readingSessionData
{
  _analyticsReadingProgress = [(THBookViewController *)self _analyticsReadingProgress];
  v4 = [NSNumber numberWithBool:[(THBookViewController *)self p_isSampleBook]];
  v5 = [BAReadingSessionData alloc];
  analyticsReadStartProgress = [(THBookViewController *)self analyticsReadStartProgress];
  lastAnalyticsDeviceOrientationReported = [(THBookViewController *)self lastAnalyticsDeviceOrientationReported];

  return [v5 initWithPercentCompletionStart:analyticsReadStartProgress percentCompletionEnd:_analyticsReadingProgress isFreeSample:v4 deviceOrientation:lastAnalyticsDeviceOrientationReported];
}

- (id)contentData
{
  ba_effectiveAnalyticsTracker = [(THBookViewController *)self ba_effectiveAnalyticsTracker];
  result = [(AEAssetViewControllerDelegate *)[(THBookViewController *)self assetViewControllerDelegate] analyticsContentDataForAssetViewController:self contentSubType:[(THBookViewController *)self contentSubType] tracker:ba_effectiveAnalyticsTracker];
  if (!result)
  {
    assetID = [(AEAsset *)[(THBookViewController *)self asset] assetID];
    v6 = BCCurrentBookLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412802;
      v8 = assetID;
      v9 = 2112;
      assetViewControllerDelegate = [(THBookViewController *)self assetViewControllerDelegate];
      v11 = 2112;
      v12 = ba_effectiveAnalyticsTracker;
      _os_log_fault_impl(&dword_0, v6, OS_LOG_TYPE_FAULT, "Failed to create ContentData for asset %@ from assetViewControllerDelegate %@. Creating a fallback with tracker %@.", buf, 0x20u);
    }

    return [[BAContentData alloc] initWithContentID:assetID contentType:+[BAUtilities contentTypeFromAssetType:](BAUtilities contentPrivateID:"contentTypeFromAssetType:" contentUserID:0) contentAcquisitionType:objc_msgSend(ba_effectiveAnalyticsTracker contentSubType:"contentPrivateIDForContentID:" contentLength:assetID) supplementalContentCount:objc_msgSend(ba_effectiveAnalyticsTracker seriesType:"contentUserIDForContentID:" productionType:assetID) isUnified:0 contentKind:{-[THBookViewController contentSubType](self, "contentSubType"), 0, 0, objc_msgSend(+[BAEventReporter sharedReporter](BAEventReporter, "sharedReporter"), "seriesTypeForContentID:", assetID), 0, 0, 0}];
  }

  return result;
}

- (id)_analyticsReadingProgress
{
  if ([(THBookViewController *)self p_isSampleBook])
  {
    documentNavigator = [(THBookViewController *)self documentNavigator];

    return [(THDocumentNavigator *)documentNavigator readingProgressAllowSample:1];
  }

  else
  {
    v4 = [-[THBookViewController documentRoot](self "documentRoot")];

    return [v4 readingProgress];
  }
}

- (id)_analyticsSessionHost
{
  v2 = [(THBookViewController *)self im_ancestorViewControllerConformingToProtocol:&OBJC_PROTOCOL___BASessionHostProviding];

  return [v2 analyticsSessionHost];
}

- (id)_analyticsContentSettingsData
{
  v2 = [-[THDocumentViewController documentRoot](-[THBookViewController documentViewController](self "documentViewController")];
  numberOfBookmarks = [v2 numberOfBookmarks];
  allAnnotations = [v2 allAnnotations];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [allAnnotations countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = 0;
    v9 = *v14;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(allAnnotations);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        if ([v11 annotationType] == 2)
        {
          if ([v11 annotationNote])
          {
            ++v8;
          }

          else
          {
            ++v7;
          }
        }
      }

      v6 = [allAnnotations countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  return [[BAContentSettingsData alloc] initWithBookmarkCount:+[NSNumber numberWithUnsignedInteger:](NSNumber noteCount:"numberWithUnsignedInteger:" highlightCount:{numberOfBookmarks), +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", v8), +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", v7)}];
}

- (id)_analyticsReadingSettingsData
{
  isEpub = [(THBookDescription *)[(THBookViewController *)self bookDescription] isEpub];
  inFlowMode = [(THDocumentViewController *)[(THBookViewController *)self documentViewController] inFlowMode];
  v5 = inFlowMode;
  if ((isEpub & 1) != 0 || inFlowMode)
  {
    [(THDocumentReflowableLayoutConfiguration *)[(THDocumentViewController *)[(THBookViewController *)self documentViewController] configuration] fontSize];
    v6 = [NSNumber numberWithDouble:?];
  }

  else
  {
    v6 = 0;
  }

  [+[UIScreen mainScreen](UIScreen brightness];
  v8 = v7;
  if (isEpub)
  {
    if (+[IMTheme isAutoNightModeEnabled])
    {
      v9 = 1;
    }

    else
    {
      v9 = 2;
    }

    v10 = [BAUtilities backgroundColorFromThemeIdentifier:[(THTheme *)[(THBookViewController *)self theme] themeIdentifier]];
  }

  else
  {
    v9 = 0;
    v10 = &dword_4;
  }

  if (v5)
  {
    v11 = 1;
  }

  else
  {
    v11 = 2;
  }

  v12 = [BAReadingSettingsData alloc];
  if (!v6)
  {
    v6 = &off_49D108;
  }

  v13 = [v12 initWithScrollViewStatus:v11 autoNightThemeStatus:v9 backgroundColor:v10 font:&stru_471858 fontSize:v6 brightnessLevel:{+[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:", v8)}];

  return v13;
}

- (BOOL)shouldAllowToolbarHover
{
  if ([(THBookViewController *)self isNotesFullscreenVisible]|| [(THBookViewController *)self isGlossaryVisible]|| [(THBookViewController *)self isStudyViewControllerVisible])
  {
    return 0;
  }

  p_selectedTocViewController = [(THBookViewController *)self p_selectedTocViewController];
  if (p_selectedTocViewController == [(THBookViewController *)self visibleViewController])
  {
    return [(UIViewController *)p_selectedTocViewController introMediaControllerIsActive]^ 1;
  }

  else
  {
    return 1;
  }
}

- (void)hoverInteraction:(id)interaction didChangeStateForRegionWithKeys:(id)keys
{
  if (self->_hoverInteraction == interaction && [interaction isHovering] && -[THBookViewController shouldAllowToolbarHover](self, "shouldAllowToolbarHover") && objc_msgSend(keys, "containsObject:", @"control"))
  {
    if ([interaction stateForRegionWithKey:@"control"])
    {
      [(THBookViewController *)self showToolbarAnimated:1];
      [(THDocumentViewController *)[(THBookViewController *)self documentViewController] setScrubberHiddenAnimated:0];
      self->_toolbarEnabledViaHover = 1;
    }
  }
}

- (void)hoverInteractionDidSettle:(id)settle
{
  if (([settle stateForRegionWithKey:@"control"] & 1) == 0 && objc_msgSend(settle, "isHovering") && -[THBookViewController shouldAllowToolbarHover](self, "shouldAllowToolbarHover") && self->_toolbarEnabledViaHover)
  {
    [(THBookViewController *)self hideToolbarAnimated:1];
    [(THDocumentViewController *)[(THBookViewController *)self documentViewController] setScrubberHiddenAnimated:1];
    self->_toolbarEnabledViaHover = 0;
  }
}

- (void)buildHoverRegions
{
  hoverInteraction = self->_hoverInteraction;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_8FEDC;
  v3[3] = &unk_45C6E8;
  v3[4] = self;
  [(BCUIHoverInteraction *)hoverInteraction rebuildRegionWithKey:@"control" block:v3];
}

- (void)books_showTableOfContents:(id)contents
{
  if (![(THBookViewController *)self isTOCVisible])
  {

    [(THBookViewController *)self showTOC];
  }
}

- (void)books_showHighlightsAndNotes:(id)notes
{
  if (![(THBookViewController *)self isNotesFullscreenVisible])
  {

    [(THBookViewController *)self showFullscreenNotesView:notes];
  }
}

- (void)books_showGlossary:(id)glossary
{
  if (![(THBookViewController *)self isGlossaryPresenting])
  {

    [(THBookViewController *)self showGlossary:glossary];
  }
}

- (void)books_showStudyCards:(id)cards
{
  if ([(THBookViewController *)self isNotesFullscreenVisible])
  {
    if (![(THBookViewController *)self isStudyViewControllerVisible])
    {
      objc_opt_class();
      [(THBookViewController *)self notesFullscreenViewController];
      v5 = BUDynamicCast();

      [v5 handleStudy:cards];
    }
  }

  else
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_901D0;
    v6[3] = &unk_45AE58;
    v6[4] = self;
    v6[5] = cards;
    [(THBookViewController *)self showFullscreenNotesView:cards completion:v6];
  }
}

- (BOOL)_canSearch
{
  _isShowingContent = [(THBookViewController *)self _isShowingContent];
  if (_isShowingContent)
  {
    LOBYTE(_isShowingContent) = [(THBookViewController *)self presentedViewController]== 0;
  }

  return _isShowingContent;
}

- (id)targetForAction:(SEL)action withSender:(id)sender
{
  if ([(UIViewController *)[(THBookViewController *)self visibleViewController] canPerformAction:action withSender:sender])
  {

    return [(THBookViewController *)self visibleViewController];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = THBookViewController;
    return [(THBookViewController *)&v8 targetForAction:action withSender:sender];
  }
}

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  v9.receiver = self;
  v9.super_class = THBookViewController;
  v6 = [(THBookViewController *)&v9 canPerformAction:action withSender:sender];
  if (sel_isEqual(action, "books_toggleBookmark:"))
  {
    if (v6)
    {
      return [(THBookViewController *)self isBookmarkApplicable];
    }

    return 0;
  }

  if (sel_isEqual(action, "books_setThemeWhite:") || sel_isEqual(action, "books_setThemeSepia:") || sel_isEqual(action, "books_setThemeGray:") || sel_isEqual(action, "books_setThemeNight:"))
  {
    if (v6)
    {
      return [-[THBookViewController documentRoot](self "documentRoot")];
    }

    return 0;
  }

  if (sel_isEqual(action, "books_find:"))
  {
    if (v6)
    {
      return [(THBookViewController *)self _canSearch];
    }

    return 0;
  }

  if (sel_isEqual(action, "books_increaseSize:"))
  {
    if (v6)
    {
      return [(THBookViewController *)self canIncreaseFontSize];
    }

    return 0;
  }

  if (sel_isEqual(action, "books_decreaseSize:"))
  {
    if (v6)
    {
      return [(THBookViewController *)self canDecreaseFontSize];
    }

    return 0;
  }

  if (!sel_isEqual(action, "books_showStudyCards:"))
  {
    isEqual = sel_isEqual(action, "books_showGlossary:");
    if ((isEqual & v6 & 1) == 0)
    {
      return !isEqual & v6;
    }

    return [(THBookViewController *)self _canShowGlossaryOrStudyCards];
  }

  if (v6)
  {
    return [(THBookViewController *)self _canShowGlossaryOrStudyCards];
  }

  return 0;
}

- (void)validateCommand:(id)command
{
  v13.receiver = self;
  v13.super_class = THBookViewController;
  [(THBookViewController *)&v13 validateCommand:?];
  action = [command action];
  theme = [(THBookViewController *)self theme];
  if (action == "books_toggleBookmark:")
  {
    isPageBookmarked = [(THBookViewController *)self isPageBookmarked];
    v11 = THBundle();
    if (isPageBookmarked)
    {
      v12 = @"Remove Bookmark";
    }

    else
    {
      v12 = @"Bookmark Page";
    }

    [command setTitle:{objc_msgSend(v11, "localizedStringForKey:value:table:", v12, &stru_471858, 0)}];
  }

  else
  {
    v7 = theme;
    if (sel_isEqual(action, "books_setThemeWhite:"))
    {
      themeIdentifier = [(THTheme *)v7 themeIdentifier];
      v9 = &kIMThemeIdentifierWhitePageTheme;
    }

    else if (sel_isEqual(action, "books_setThemeSepia:"))
    {
      themeIdentifier = [(THTheme *)v7 themeIdentifier];
      v9 = &kIMThemeIdentifierSepiaPageTheme;
    }

    else if (sel_isEqual(action, "books_setThemeGray:"))
    {
      themeIdentifier = [(THTheme *)v7 themeIdentifier];
      v9 = &kIMThemeIdentifierGrayPageTheme;
    }

    else
    {
      if (!sel_isEqual(action, "books_setThemeNight:"))
      {
        return;
      }

      themeIdentifier = [(THTheme *)v7 themeIdentifier];
      v9 = &kIMThemeIdentifierNightPageTheme;
    }

    [command setState:{objc_msgSend(themeIdentifier, "isEqualToString:", *v9)}];
  }
}

@end