@interface THDocumentViewController
- (BOOL)allowCopy;
- (BOOL)bookmarksShouldBeVisible;
- (BOOL)canCopy;
- (BOOL)canGoToNextPage;
- (BOOL)canGoToPreviousPage;
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (BOOL)documentNavigatorIsOnActiveCanvas:(id)canvas;
- (BOOL)flowPageController:(id)controller isEdgeObscured:(unsigned int)obscured;
- (BOOL)followAnchor:(id)anchor pulse:(BOOL)pulse;
- (BOOL)followLink:(id)link animated:(BOOL)animated;
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (BOOL)inFlowMode;
- (BOOL)inPaginatedMode;
- (BOOL)interactiveCanvasController:(id)controller allowsDragOfSmartField:(id)field;
- (BOOL)interactiveCanvasController:(id)controller pointIsInLeftMargin:(CGPoint)margin;
- (BOOL)interactiveCanvasController:(id)controller pointIsInRightMargin:(CGPoint)margin;
- (BOOL)interactiveCanvasController:(id)controller shouldZoomToColumn:(id)column withFrame:(CGRect)frame tapPoint:(CGPoint)point;
- (BOOL)interactiveCanvasControllerShouldAllowZoomToColumn:(id)column;
- (BOOL)interactiveCanvasControllerShouldPageLeftOnMarginTap:(id)tap;
- (BOOL)interactiveCanvasControllerShouldPageRightOnMarginTap:(id)tap;
- (BOOL)interactiveCanvasControllerShouldUseGuidedPan:(id)pan withMovementDirection:(CGPoint)direction;
- (BOOL)isEpub;
- (BOOL)isFreeTransformInProgress;
- (BOOL)isGlossaryVisible;
- (BOOL)isNotesFullscreenVisible;
- (BOOL)isPageBookmarked;
- (BOOL)p_allowsPageDisplacement;
- (BOOL)p_allowsPinchZoom;
- (BOOL)p_canOverscroll;
- (BOOL)p_isCompactFlowPresentation;
- (BOOL)p_isCompactFlowPresentationForSectionController:(id)controller;
- (BOOL)p_isPageLocationApplicable;
- (BOOL)p_isSinglePageChapter;
- (BOOL)p_updateScrollViewClipsToBounds;
- (BOOL)pointIsInLeftMargin:(CGPoint)margin fromView:(id)view;
- (BOOL)pointIsInRightMargin:(CGPoint)margin fromView:(id)view;
- (BOOL)popoverController:(id)controller shouldIgnorePassThroughGestureRecognizer:(id)recognizer;
- (BOOL)prefersHomeIndicatorAutoHidden;
- (BOOL)repIsPresentedExpanded:(id)expanded;
- (BOOL)shouldPagingBeEnabled;
- (BOOL)suspendCanvasScroll;
- (BOOL)th_cachedIsCompactHeight;
- (BOOL)th_cachedIsCompactWidth;
- (BOOL)widgetHostingAllowAutoplayForRep:(id)rep;
- (BOOL)widgetHostingAllowInteractionOnPageForRep:(id)rep;
- (BOOL)widgetHostingShouldAllowNaturalHorizontalScrollForRep:(id)rep;
- (BOOL)widgetLayoutIsCompact:(id)compact;
- (BOOL)willAdjustHeightForSnapshot;
- (CGPoint)beginDraggingContentOffset;
- (CGPoint)interactiveCanvasController:(id)controller clampContentOffset:(CGPoint)offset forViewScale:(double)scale;
- (CGPoint)lastScrollOffset;
- (CGRect)bookmarkHotspotRegionForPage:(id)page;
- (CGRect)canvasPreviewFrameForDocumentManager;
- (CGRect)contentFrame;
- (CGRect)flowPageController:(id)controller overrideForBodyFrame:(CGRect)frame;
- (CGRect)interactiveCanvasController:(id)controller expandBoundsForHitTesting:(CGRect)testing;
- (CGRect)p_contentFrameFrameForSize:(CGSize)size;
- (CGRect)pageViewProviderUnclippedVisibleBounds:(id)bounds;
- (CGRect)previousContentFrame;
- (CGRect)rectForCompletionAnimationWithRep:(id)rep;
- (CGRect)rectForRelativePageIndex:(unint64_t)index chapterIndex:(unint64_t)chapterIndex;
- (CGRect)scrollViewClippingBoundsForInteractiveCanvasController:(id)controller;
- (CGRect)shadowBoundsForCanvasExitTransformDelegate:(id)delegate;
- (CGRect)targetRelativeRectForPoint:(CGPoint)point atPageIndex:(unint64_t)index chapterIndex:(unint64_t)chapterIndex waitForContentNodeLoad:(BOOL)load;
- (CGRect)targetRelativeRectForRelativePoint:(CGPoint)point atPageIndex:(unint64_t)index chapterIndex:(unint64_t)chapterIndex waitForContentNodeLoad:(BOOL)load;
- (CGRect)visibleUnscaledRectBeforeRotation;
- (CGRect)widgetLayoutBounds;
- (CGSize)lastLayoutBoundsSize;
- (CGSize)lastLayoutSize;
- (CGSize)p_currentPageSize;
- (CGSize)p_currentSpreadSize;
- (CGSize)p_desiredCanvasSize;
- (CGSize)p_maxScrollViewSize;
- (CGSize)p_maxScrollViewSizeForViewSize:(CGSize)size;
- (CGSize)p_windowOrViewSize;
- (CGSize)pageSizeForPagePositionController:(id)controller;
- (CGSize)pageSizeForPresentationType:(id)type;
- (CGSize)paginatedPageSize;
- (CGSize)paginatedSpreadSize;
- (CGSize)previousTransitionSize;
- (CGSize)widgetHostExpandedSize;
- (CGSize)widgetStackMaxContainerSizeForSize:(CGSize)size;
- (CGSize)windowMinSize;
- (THDocumentReflowableLayoutConfiguration)configuration;
- (THDocumentViewController)initWithDefaultView;
- (THPresentationType)currentPresentationType;
- (UIEdgeInsets)contentInsetsForPresentationType:(id)type;
- (UIEdgeInsets)expandedViewControllerSafeAreaInsets:(id)insets;
- (UIView)expandedWindowHostView;
- (UIView)rootSuperview;
- (_NSRange)currentRelativePageIndexRange;
- (_NSRange)visibleRelativePageRange;
- (double)bottomBarHeight;
- (double)currentViewScale;
- (double)fitHeightViewScale;
- (double)fitWidthViewScale;
- (double)gutterWidthForPresentationType:(id)type;
- (double)interactiveCanvasController:(id)controller adjustViewScale:(double)scale;
- (double)nextCanvasViewScaleDetentForProposedViewScale:(double)scale greater:(BOOL)greater;
- (double)p_horizontalOverscrollAnimationDuration;
- (double)p_pageMarginWidth;
- (double)p_verticalOverscrollAnimationDuration;
- (double)statusBarHeight;
- (double)toolbarHeight;
- (double)topBarHeight;
- (double)viewHeaderHeight;
- (double)zoomedInViewScale;
- (double)zoomedOutViewScale;
- (id)actionForHyperlink:(id)hyperlink inRep:(id)rep gesture:(id)gesture;
- (id)activityItemProviderWithCachedAnnotation:(id)annotation;
- (id)anchorFromLink:(id)link;
- (id)backgroundColor;
- (id)backgroundColorForDragUIPlatter;
- (id)bookLinkResolver;
- (id)childViewControllerForHomeIndicatorAutoHidden;
- (id)childViewControllerForStatusBarHidden;
- (id)childViewControllerForStatusBarStyle;
- (id)contentNodeForPageIndex:(unint64_t)index;
- (id)currentContentNode;
- (id)currentNavigationUnit;
- (id)curtainColorForFreeTransform;
- (id)expandableRepForInfo:(id)info;
- (id)expandedViewController:(id)controller actionForHyperlink:(id)hyperlink inRep:(id)rep gesture:(id)gesture;
- (id)foregroundTextColor;
- (id)hostCanvasLayer;
- (id)interactiveCanvasController:(id)controller delegateConformingToProtocol:(id)protocol forLayout:(id)layout;
- (id)interactiveCanvasController:(id)controller delegateConformingToProtocol:(id)protocol forRep:(id)rep;
- (id)interactiveCanvasController:(id)controller infoForModel:(id)model withSelection:(id)selection;
- (id)layoutControllerForSectionController:(id)controller;
- (id)navigationUnitForChapterIndex:(unint64_t)index;
- (id)p_canvasInfoForExpandedInfo:(id)info presentationType:(id)type;
- (id)p_contentNodeForInfo:(id)info presentationType:(id)type;
- (id)p_expandableInfoForInfo:(id)info forceLoad:(BOOL)load;
- (id)p_expandedViewControllerForRep:(id)rep;
- (id)p_overscrollBarWithFrame:(CGRect)frame chapterIndex:(unint64_t)index tocTile:(id)tile;
- (id)p_ownerInfoForPopUpInfo:(id)info;
- (id)p_pressableRepGestureRecognizer;
- (id)panGuideForInteractiveCanvasController:(id)controller withMovementDirection:(CGPoint)direction;
- (id)scrollableCanvasActivityItemProviderWithCachedAnnotation:(id)annotation;
- (id)selectedSectionController;
- (id)titleOfCurrentNavigationUnit;
- (id)traitCollection;
- (int)p_activePagePaddingOptions;
- (int64_t)columnCountForPresentationType:(id)type;
- (int64_t)guidedPanPageIndexForLayout:(id)layout;
- (int64_t)overrideUserInterfaceStyle;
- (int64_t)preferredStatusBarStyle;
- (int64_t)th_cachedInterfaceOrientation;
- (unint64_t)currentAbsolutePageIndex;
- (unint64_t)currentChapter;
- (unint64_t)currentLesson;
- (unint64_t)currentRelativePageIndex;
- (unint64_t)currentTOCLessonIndex;
- (unint64_t)fontSizeForPresentationType:(id)type;
- (unint64_t)pageViewProviderStartAbsolutePageIndex:(id)index;
- (unint64_t)visiblePageCountForDocumentNavigator:(id)navigator;
- (void)_computeTraitCollectionDerivedValues;
- (void)_traitCollectionDidChange:(id)change previousTraitCollection:(id)collection;
- (void)_updateScrubberCalloutForPageNumber:(int64_t)number;
- (void)_updateScrubberTheme:(id)theme;
- (void)bookViewDidRotateTransitionToSize:(CGSize)size;
- (void)bookViewDidTransitionToSize:(CGSize)size;
- (void)bookViewWillAnimateRotationToSize:(CGSize)size duration:(double)duration;
- (void)bookViewWillRotateTransitionToSize:(CGSize)size duration:(double)duration;
- (void)bookViewWillTransitionToSize:(CGSize)size;
- (void)books_addHighlight:(id)highlight;
- (void)books_addNote:(id)note;
- (void)books_chapterBackward:(id)backward;
- (void)books_chapterForward:(id)forward;
- (void)books_pageBackward:(id)backward;
- (void)books_pageForward:(id)forward;
- (void)books_toggleContinuousScroll:(id)scroll;
- (void)buildHoverControlRegionForInteraction:(id)interaction withBuilder:(id)builder;
- (void)changeAnnotationStyle:(id)style;
- (void)changeFontSize:(unint64_t)size;
- (void)closeDocument;
- (void)copySelection;
- (void)corruptBookAlert;
- (void)dealloc;
- (void)didReceiveMemoryWarning;
- (void)documentNavigator:(id)navigator didJumpToPageLocation:(id)location;
- (void)documentNavigator:(id)navigator failedToFollowAnchor:(id)anchor pulse:(BOOL)pulse;
- (void)documentNavigator:(id)navigator failedToFollowLink:(id)link;
- (void)documentNavigator:(id)navigator scrollToAbsolutePageIndex:(unint64_t)index specificUnscaledCanvasRect:(CGRect)rect animated:(BOOL)animated willPulse:(BOOL)pulse;
- (void)documentNavigator:(id)navigator willJumpToPageLocation:(id)location;
- (void)documentNavigator:(id)navigator willNavigateToAbsolutePageIndex:(unint64_t)index inContentNode:(id)node;
- (void)endRevealTOC;
- (void)ensureDocumentIsLoaded;
- (void)expandedViewController:(id)controller handleHyperlinkWithURL:(id)l;
- (void)expandedViewControllerDidDismiss:(id)dismiss;
- (void)expandedViewControllerDidPresent:(id)present;
- (void)expandedViewControllerWantsDismiss:(id)dismiss;
- (void)expandedViewControllerWillBeginDismissing:(id)dismissing;
- (void)expandedViewControllerWillPresent:(id)present;
- (void)flowPageControllerWillChangeContentHeight:(id)height;
- (void)followAbsolutePageIndex:(unint64_t)index;
- (void)freeTransformDidBeginWithRep:(id)rep expandableRep:(id)expandableRep;
- (void)freeTransformDidCancelWithRep:(id)rep expandableRep:(id)expandableRep;
- (void)freeTransformDidEndWithRep:(id)rep expandableRep:(id)expandableRep completionBlock:(id)block;
- (void)freeTransformPostAnimationDidCancelWithRep:(id)rep expandableRep:(id)expandableRep;
- (void)guidedPanDidEnd;
- (void)guidedPanWillAnimateFrom:(id)from to:(id)to duration:(double)duration;
- (void)guidedPanWillBegin;
- (void)hideNavigationHistory;
- (void)hidePageThumbnailsAnimated:(BOOL)animated duration:(double)duration;
- (void)hideToolbarAnimated:(BOOL)animated;
- (void)interactiveCanvasController:(id)controller didOverscrollBottom:(double)bottom state:(int)state;
- (void)interactiveCanvasController:(id)controller didOverscrollLeft:(double)left state:(int)state;
- (void)interactiveCanvasController:(id)controller didOverscrollRight:(double)right state:(int)state;
- (void)interactiveCanvasController:(id)controller didOverscrollTop:(double)top state:(int)state;
- (void)interactiveCanvasController:(id)controller didZoomToColumn:(id)column ofRep:(id)rep;
- (void)interactiveCanvasController:(id)controller layoutRegistered:(id)registered;
- (void)interactiveCanvasController:(id)controller progressDidChangeForRep:(id)rep percent:(id)percent;
- (void)interactiveCanvasController:(id)controller resetAttemptForRep:(id)rep;
- (void)interactiveCanvasController:(id)controller scoreDidChangeForRep:(id)rep score:(id)score total:(id)total;
- (void)interactiveCanvasController:(id)controller scrollViewWillBeginDragging:(id)dragging;
- (void)interactiveCanvasController:(id)controller wantsToPresentContextMenuAtCanvasPoint:(CGPoint)point forAnnotationUUID:(id)d;
- (void)interactiveCanvasController:(id)controller willAnimateScrollToVisibleUnscaledRect:(CGRect)rect;
- (void)interactiveCanvasController:(id)controller willAnimateToViewScale:(double)scale withDuration:(double)duration unscaledContentOffset:(CGPoint)offset;
- (void)interactiveCanvasControllerDidEndScrollingAnimation:(id)animation stillAnimating:(BOOL)animating;
- (void)interactiveCanvasControllerDidLayout:(id)layout;
- (void)interactiveCanvasControllerDidLayoutAndRenderOnBackgroundThread:(id)thread;
- (void)interactiveCanvasControllerDidScroll:(id)scroll;
- (void)interactiveCanvasControllerDidStopScrolling:(id)scrolling;
- (void)interactiveCanvasControllerDidZoom:(id)zoom;
- (void)interactiveCanvasControllerFreeTransformDidEnd:(id)end;
- (void)interactiveCanvasControllerWillLayout:(id)layout;
- (void)interactiveCanvasControllerWillScroll:(id)scroll;
- (void)interactiveCanvasControllerWillZoom:(id)zoom;
- (void)layoutScrubberCallout;
- (void)loadDocument;
- (void)navigationUnitDidChange:(id)change;
- (void)p_activateProgressForRep:(id)rep;
- (void)p_adjustContentViewFrameForSize:(CGSize)size;
- (void)p_animateHorizontalOverscrollToPageIndex:(unint64_t)index duration:(double)duration animationCompletionBlock:(id)block layoutCompletionBlock:(id)completionBlock;
- (void)p_animateToNextPage:(BOOL)page;
- (void)p_buildContextTree;
- (void)p_canvasDidZoom;
- (void)p_cleanupAfterViewUnload;
- (void)p_clearCanvas;
- (void)p_deactivateProgressForRep:(id)rep;
- (void)p_didFinishTransitionWithSize:(CGSize)size;
- (void)p_dismissActiveAnimated:(BOOL)animated;
- (void)p_ensureInNavigationUnitForContentNode:(id)node;
- (void)p_ensureVisibleAbsolutePhysicalPageIndexFromFullscreen;
- (void)p_fadeOutOverscrollTransition;
- (void)p_fireCanvasDidZoomCompletion;
- (void)p_fixScrollViewToMatchCanvas;
- (void)p_getWidgetIDsForInfo:(id)info completion:(id)completion;
- (void)p_horizontalOverscrollNextChapter;
- (void)p_horizontalOverscrollPreviousChapter;
- (void)p_interactiveCanvasControllerDidLayout;
- (void)p_layoutCanvasForSize:(CGSize)size duration:(double)duration forceBackgroundLayout:(BOOL)layout;
- (void)p_layoutSinglePageChapter;
- (void)p_localteardown;
- (void)p_localteardownSecondStage;
- (void)p_pageLeft;
- (void)p_pageRight;
- (void)p_performDelayedLayoutAndRotation:(id)rotation;
- (void)p_performanceModeUpdated;
- (void)p_presentationStyleChanged;
- (void)p_releaseOverscrollViews;
- (void)p_removeCanvasTransform;
- (void)p_resetPageDisplacment;
- (void)p_resizeViewsForSize:(CGSize)size duration:(double)duration maintainPageIndex:(BOOL)index;
- (void)p_setActiveSectionControllerDeferVantageDidChange:(BOOL)change;
- (void)p_setFlowPresentation;
- (void)p_setPagedPresentation;
- (void)p_setUnscaledCanvasRect:(CGRect)rect animated:(BOOL)animated;
- (void)p_setupHorizontalOverscrollTransitionAnimationToAbsolutePageIndex:(unint64_t)index;
- (void)p_setupNavOverlayContainer;
- (void)p_setupOverscrollViews;
- (void)p_setupPageNumberViews;
- (void)p_setupVerticalOverscrollTransitionAnimationToChapter:(id)chapter;
- (void)p_swipeToNextOffsetForScrollView:(id)view flowPageController:(id)controller withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset;
- (void)p_updateBookmarkAffordances;
- (void)p_updateCanvasSize;
- (void)p_updateNavigationOverlayContainerFrame;
- (void)p_updatePageNumberViewPositionsForSize:(CGSize)size;
- (void)p_updatePageNumberViewVisibility;
- (void)p_updatePageNumberingForce:(BOOL)force;
- (void)p_updatePageViewHostsWithTheme:(id)theme;
- (void)p_updatePageViewsForScrollingAnimated:(BOOL)animated restoreOrigin:(BOOL)origin pageIndexSet:(id)set;
- (void)p_updatePresentationTypeAnimated:(BOOL)animated;
- (void)p_updateProgessKitSectionInCanvasRect:(CGRect)rect;
- (void)p_updateProgressKitForNewNavigationUnit:(id)unit;
- (void)p_updateScrollViewAndZoomSettingsForSize:(CGSize)size;
- (void)p_updateScrollViewDecelerationRate;
- (void)p_updateScrollViewForSize:(CGSize)size;
- (void)p_updateScrubberCheckToolbarState:(BOOL)state;
- (void)p_updateVerticalOverscrollTransform;
- (void)p_updateVisibleInfos;
- (void)p_updateVisibleInfosWithPaddingOptions:(int)options force:(BOOL)force;
- (void)p_updateWidgetInteractionMode;
- (void)p_verticalOverscrollNextChapter;
- (void)p_verticalOverscrollPreviousChapter;
- (void)p_verticalOverscrollSetPreviousChapterNavigationUnit:(id)unit;
- (void)p_visiblePageRangeWillChangeTo:(_NSRange)to;
- (void)p_visibleRectChanged;
- (void)p_willLayoutCanvasFlow:(id)flow;
- (void)p_willLayoutCanvasPaginated:(id)paginated;
- (void)p_zoomToAnchor:(id)anchor;
- (void)pageViewProviderViewsAdded:(id)added pageIndexSet:(id)set;
- (void)paginationController:(id)controller paginationCompleteStateChangedTo:(BOOL)to;
- (void)paginationController:(id)controller paginationResultChanged:(id)changed forContentNode:(id)node paginationProgress:(double)progress paginationComplete:(BOOL)complete;
- (void)popMinimizeLayoutPadding;
- (void)popoverControllerWillDismiss:(id)dismiss;
- (void)presentExpandedViewController:(id)controller completionBlock:(id)block;
- (void)presentPopoverForPopUpInfo:(id)info withFrame:(CGRect)frame inLayer:(id)layer;
- (void)presentRepExpanded:(id)expanded;
- (void)presentSearchResultsForString:(id)string;
- (void)recordCurrentLocationInHistory;
- (void)recordOutgoingMajorNavigationJump;
- (void)removeNote:(id)note;
- (void)removeNoteAndHighlight:(id)highlight;
- (void)removePreviewForRelativePageIndex:(unint64_t)index;
- (void)scrub:(id)scrub;
- (void)scrubValueChanged:(id)changed;
- (void)scrubberTouch:(id)touch forEvent:(id)event;
- (void)scrubberTouchDown:(id)down;
- (void)sectionControllerInfosDidChange:(id)change;
- (void)sectionControllerNeedsLayout:(id)layout;
- (void)selectionDidChange;
- (void)setCurrentNavigationUnit:(id)unit;
- (void)setCurrentNavigationUnit:(id)unit withRelativePageIndex:(unint64_t)index animated:(BOOL)animated;
- (void)setPageBookmarked:(BOOL)bookmarked;
- (void)setPerformanceModeBookOpening:(BOOL)opening;
- (void)setScrubberCalloutVisible:(BOOL)visible;
- (void)setScrubberHiddenAnimated:(BOOL)animated;
- (void)setSuspendCanvasScroll:(BOOL)scroll;
- (void)settingToolbarHidden:(BOOL)hidden animated:(BOOL)animated;
- (void)showGlossaryViewWithAnchor:(id)anchor;
- (void)showPageThumbnailsForMissingPageIndexes:(id)indexes;
- (void)showPageThumbnailsForPageIndexes:(id)indexes animated:(BOOL)animated duration:(double)duration;
- (void)showTOC;
- (void)showToolbarAnimated:(BOOL)animated;
- (void)startRevealTOC;
- (void)switchToNavigationUnitForChapterIndex:(unint64_t)index;
- (void)tapGesture:(id)gesture;
- (void)teardown;
- (void)toggleFlowPresentation;
- (void)toggleToolbar;
- (void)unloadDocument;
- (void)updateForTheme:(id)theme;
- (void)updateNavigationAffordances;
- (void)updateTwoUpForSize:(CGSize)size;
- (void)updateVisibleInfosWithPageIndex:(unint64_t)index;
- (void)validateCommand:(id)command;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)viewsDidResize;
- (void)zoomOutAnimated:(BOOL)animated;
- (void)zoomOutIfNecessaryAnimated:(BOOL)animated completion:(id)completion;
- (void)zoomOutIfNecessaryPriorToNavigation;
- (void)zoomToRelativeTargetRect:(CGRect)rect atPageIndex:(unint64_t)index;
@end

@implementation THDocumentViewController

- (THDocumentViewController)initWithDefaultView
{
  v2 = [(THDocumentViewController *)self initWithNibName:@"THDocumentViewController" bundle:THBundle()];
  v3 = v2;
  if (v2)
  {
    [(THDocumentViewController *)v2 setEdgesForExtendedLayout:15];
    [(THDocumentViewController *)v3 setExtendedLayoutIncludesOpaqueBars:1];
    [(THDocumentViewController *)v3 setVisibleRelativePageRange:NSInvalidRange[0], NSInvalidRange[1]];
    [(THDocumentViewController *)v3 setAllowPortraitTOC:1];
    v3->mOverscrollViewChapterNumber = 0x7FFFFFFFFFFFFFFFLL;
    size = CGRectNull.size;
    v3->mScrollTargetRect.origin = CGRectNull.origin;
    v3->mScrollTargetRect.size = size;
    [(THDocumentViewController *)v3 setFirstLoad:1];
    -[THDocumentViewController setFlowSizeScale:](v3, "setFlowSizeScale:", [+[THApplicationSettings sharedSettings](THApplicationSettings "sharedSettings")]);
    [(THDocumentViewController *)v3 setFtc:objc_alloc_init(THWFreeTransformController)];
    v3->mLastAbsolutePageIndex = 0x7FFFFFFFFFFFFFFFLL;
    [(THDocumentViewController *)v3 setStatusBarHeightForOrientation:[NSMutableDictionary dictionaryWithCapacity:4]];
    [(THDocumentViewController *)v3 setShowFlowModeIfAvailable:0];
    v5 = +[NSUserDefaults standardUserDefaults];
    v6 = [(NSUserDefaults *)v5 objectForKey:THDocumentLayoutKey];
    if (v6 && [v6 intValue] >= 2)
    {
      [(THDocumentViewController *)v3 setShowFlowModeIfAvailable:1];
    }

    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v3->_dispatchQueue = dispatch_queue_create("com.apple.iBooks.THDocumentViewController", v7);
    v3->_accessLock._os_unfair_lock_opaque = 0;
    v3->_displaySleepController = objc_alloc_init(BCDisplaySleepController);
    [(THDocumentViewController *)v3 p_setDefaultScrubberCalloutFollowsThumbState];
    [(THDocumentViewController *)v3 registerForTraitChanges:+[UITraitCollection withAction:"bc_allAPITraits"], "_traitCollectionDidChange:previousTraitCollection:"];
  }

  return v3;
}

- (void)dealloc
{
  [+[NSNotificationCenter defaultCenter](NSNotificationCenter removeObserver:"removeObserver:", self];
  [NSObject cancelPreviousPerformRequestsWithTarget:self];
  [(THDocumentViewController *)self p_cleanupAfterViewUnload];

  self->mOrientationAnchor = 0;
  self->mDocumentLinkResolver = 0;

  self->mLastPageNumberUpdate = 0;
  mCanvasDidZoomCompletion = self->mCanvasDidZoomCompletion;
  if (mCanvasDidZoomCompletion)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    mCanvasDidZoomCompletion = self->mCanvasDidZoomCompletion;
  }

  self->mGuidedPanController = 0;
  self->mRevealTOCPanController = 0;
  [(THDocumentNavigator *)self->mDocumentNavigator setDelegate:0];

  self->mDocumentNavigator = 0;
  self->_reflowablePaginationController = 0;
  [(THDocumentViewController *)self setFtc:0];

  self->_configuration = 0;
  self->mPageViewDisplacement = 0;

  self->mOverscrollTransitionView = 0;
  self->_lastStorageAnchor = 0;

  self->mPageViewProvider = 0;
  self->_flowSectionController = 0;

  self->_scrubberCallout = 0;
  self->_paginatedSectionController = 0;

  self->_scrubber = 0;
  self->_statusBarHeightForOrientation = 0;
  v4.receiver = self;
  v4.super_class = THDocumentViewController;
  [(THDocumentViewController *)&v4 dealloc];
}

- (void)didReceiveMemoryWarning
{
  v2.receiver = self;
  v2.super_class = THDocumentViewController;
  [(THDocumentViewController *)&v2 didReceiveMemoryWarning];
}

- (void)p_cleanupAfterViewUnload
{
  self->mTapRecognizer = 0;

  self->mContentPageNumberView = 0;
  self->mNavOverlayPageNumberView = 0;

  self->mNavigationOverlayContainer = 0;
  [(TSWPopoverController *)self->mPopUpPopoverController setDelegate:0];

  self->mPopUpPopoverController = 0;
  [(THWExpandedViewController *)self->mExpandedViewController teardown];

  self->mExpandedViewController = 0;
  [(THDocumentViewController *)self p_releaseOverscrollViews];
  v3 = OBJC_IVAR___TSADocumentViewController__scrollView;

  *&self->TSADocumentViewController_opaque[v3] = 0;
}

- (double)viewHeaderHeight
{
  if ([(THDocumentViewController *)self prefersStatusBarHidden])
  {
    return 0.0;
  }

  th_cachedInterfaceOrientation = [(THDocumentViewController *)self th_cachedInterfaceOrientation];
  if (th_cachedInterfaceOrientation <= 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = th_cachedInterfaceOrientation;
  }

  v6 = [(NSMutableDictionary *)[(THDocumentViewController *)self statusBarHeightForOrientation] objectForKeyedSubscript:[NSNumber numberWithInteger:v5]];
  if (!v6)
  {
    [+[UIWindow _applicationKeyWindow](UIWindow "_applicationKeyWindow")];
    v8 = v7;
    [UIApp statusBarHeightForOrientation:v5 ignoreHidden:1];
    if (v8 > v9)
    {
      v9 = v8;
    }

    v6 = [NSNumber numberWithDouble:v9];
    [(NSMutableDictionary *)[(THDocumentViewController *)self statusBarHeightForOrientation] setObject:v6 forKeyedSubscript:[NSNumber numberWithInteger:v5]];
  }

  [(NSNumber *)v6 doubleValue];
  return result;
}

- (void)p_updatePageNumberViewPositionsForSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  [(THPageNumberView *)[(THDocumentViewController *)self contentPageNumberView] setMode:[(THDocumentViewController *)self inFlowMode]^ 1];
  contentPageNumberView = [(THDocumentViewController *)self contentPageNumberView];
  if ([(THDocumentViewController *)self isEpub])
  {
    v7 = [(THDocumentViewController *)self inFlowMode]^ 1;
  }

  else
  {
    v7 = 0;
  }

  [(THPageNumberView *)contentPageNumberView setBold:v7];
  if ([(THDocumentViewController *)self inFlowMode])
  {
    [-[THDocumentViewController view](self "view")];
    v9 = width + -10.0 - v8;
    [-[THDocumentViewController view](self "view")];
    v11 = height + -10.0 - v10;
  }

  else
  {
    [(THDocumentReflowableLayoutConfiguration *)[(THDocumentViewController *)self configuration] pageNumberPosition];
    v9 = v12;
    v11 = v13;
  }

  [(THPageNumberView *)[(THDocumentViewController *)self contentPageNumberView] updatePosition:v9, v11];
  [(THPageNumberView *)[(THDocumentViewController *)self navOverlayPageNumberView] setMode:1];
  [(THPageNumberView *)[(THDocumentViewController *)self navOverlayPageNumberView] setBold:1];
  superview = [(THPageNumberView *)[(THDocumentViewController *)self navOverlayPageNumberView] superview];
  [(THDocumentReflowableLayoutConfiguration *)[(THDocumentViewController *)self configuration] pageNumberPosition];
  [superview convertPoint:-[THDocumentViewController view](self fromView:{"view"), v15, v16}];
  [(THPageNumberView *)[(THDocumentViewController *)self navOverlayPageNumberView] updatePosition:v17, v18];

  [(THDocumentViewController *)self p_updatePageNumberViewVisibility];
}

- (void)p_updatePageNumberViewVisibility
{
  if ([(THDocumentViewController *)self inFlowMode])
  {
    v3 = 0;
  }

  else
  {
    v3 = [(THDocumentViewController *)self isEpub]^ 1;
  }

  [(THPageNumberView *)[(THDocumentViewController *)self contentPageNumberView] setHidden:v3];
  isEpub = [(THDocumentViewController *)self isEpub];
  navOverlayPageNumberView = [(THDocumentViewController *)self navOverlayPageNumberView];

  [(THPageNumberView *)navOverlayPageNumberView setHidden:isEpub ^ 1];
}

- (void)p_updateNavigationOverlayContainerFrame
{
  [(THDocumentReflowableLayoutConfiguration *)[(THDocumentViewController *)self configuration] bottomFullWidthToolbarFrame];
  [(UIView *)[(THDocumentViewController *)self navigationOverlayContainer] setFrame:v3, v4, v5, v6];
  isEpub = [(THDocumentViewController *)self isEpub];
  navigationOverlayContainer = [(THDocumentViewController *)self navigationOverlayContainer];

  [(UIView *)navigationOverlayContainer setHidden:isEpub ^ 1];
}

- (void)loadDocument
{
  if (([(THDocumentViewController *)self isDocumentLoaded]& 1) == 0)
  {
    v13.receiver = self;
    v13.super_class = THDocumentViewController;
    [(THDocumentViewController *)&v13 loadDocument];
    -[THDocumentViewController setFlowSizeScale:](self, "setFlowSizeScale:", [+[THApplicationSettings sharedSettings](THApplicationSettings "sharedSettings")]);
    [(THDocumentViewController *)self setDocumentNavigator:[[THDocumentNavigator alloc] initWithDocumentRoot:[(THDocumentViewController *)self documentRoot] interactiveCanvasController:[(THDocumentViewController *)self interactiveCanvasController]]];
    [(THDocumentNavigator *)[(THDocumentViewController *)self documentNavigator] setDelegate:self];
    if ([(THDocumentViewController *)self isEpub])
    {
      v3 = objc_alloc_init(THiOSThemeProvider);
      objc_opt_class();
      [(THThemeDelegate *)[(THDocumentViewController *)self themeDelegate] theme];
      [(THiOSThemeProvider *)v3 updateWithTheme:TSUDynamicCast() traitCollection:[(THDocumentViewController *)self traitCollection]];
      [-[THDocumentViewController documentRoot](self "documentRoot")];
    }

    if ([objc_msgSend(-[THDocumentViewController documentRoot](self "documentRoot")])
    {
      v4 = [THPagePositionController paginatedPositionerWithDelegate:self];
      v5 = [objc_msgSend(-[THDocumentViewController documentRoot](self "documentRoot")];
      [v5 setPageSizeDelegate:self];
      copyFixingSize = [v5 copyFixingSize];
      self->_paginatedSectionController = [[THSectionController alloc] initWithDelegate:self pagePositionController:v4 presentationType:copyFixingSize];

      v7 = [THPageViewProvider alloc];
      interactiveCanvasController = [(THDocumentViewController *)self interactiveCanvasController];
      [(THDocumentViewController *)self paginatedPageSize];
      v9 = [(THPageViewProvider *)v7 initWithInteractiveCanvasController:interactiveCanvasController pageSize:?];
      self->mPageViewProvider = v9;
      [(THPageViewProvider *)v9 setDelegate:self];
      [(THPageViewProvider *)self->mPageViewProvider setPreviewEnabled:[(THDocumentViewController *)self isEpub]^ 1];
    }

    if ([objc_msgSend(-[THDocumentViewController documentRoot](self "documentRoot")])
    {
      v10 = [THPagePositionController flowPositionerWithDelegate:self];
      v11 = [objc_msgSend(-[THDocumentViewController documentRoot](self "documentRoot")];
      [v11 setPageSizeDelegate:self];
      self->_flowSectionController = [[THFlowSectionController alloc] initWithDelegate:self pagePositionController:v10 presentationType:v11];
    }

    self->mHaveDisplayedCorruptBookAlert = 0;
    [(THDocumentViewController *)self setVisibleRelativePageRange:NSInvalidRange[0], NSInvalidRange[1]];
    [(THDocumentViewController *)self setPagePaddingOptions:0];
    [-[THDocumentViewController interactiveCanvasController](self "interactiveCanvasController")];
    [(THDocumentViewController *)self p_setActiveSectionControllerDeferVantageDidChange:0];
    [(THDocumentViewController *)self p_setupPageNumberViews];
    [(THDocumentViewController *)self p_setupNavOverlayContainer];
    if ([(THDocumentViewController *)self isEpub]&& [(THDocumentViewController *)self flowSectionController])
    {
      if ([(THDocumentViewController *)self paginatedSectionController])
      {

        v12 = [[THReflowablePaginationController alloc] initWithDocumentRoot:[(THDocumentViewController *)self documentRoot] sourcePresentationType:[(THSectionController *)[(THDocumentViewController *)self flowSectionController] presentationType] targetPresentationType:[(THSectionController *)[(THDocumentViewController *)self paginatedSectionController] presentationType] loadCache:1 observer:self];
        self->_reflowablePaginationController = v12;
        [(THSectionController *)[(THDocumentViewController *)self paginatedSectionController] setReflowablePaginationController:v12];
        [-[THDocumentViewController documentRoot](self "documentRoot")];
        [(THReflowablePaginationController *)[(THDocumentViewController *)self reflowablePaginationController] assignContentNodes];
        [(THDocumentLinkResolver *)[(THDocumentViewController *)self documentLinkResolver] invalidatePaginationResults];
        [objc_msgSend(-[THDocumentViewController documentRoot](self "documentRoot")];
        [(THReflowablePaginationController *)[(THDocumentViewController *)self reflowablePaginationController] paginate];
      }
    }

    [(THDocumentViewController *)self p_buildContextTree];
  }
}

- (void)ensureDocumentIsLoaded
{
  if (([(THDocumentViewController *)self isDocumentLoaded]& 1) == 0)
  {

    [(THDocumentViewController *)self loadDocument];
  }
}

- (void)unloadDocument
{
  [(THReflowablePaginationController *)[(THDocumentViewController *)self reflowablePaginationController] willClose];
  [(THDocumentViewController *)self p_localteardown];
  [-[THDocumentViewController interactiveCanvasController](self "interactiveCanvasController")];
  [-[THDocumentViewController interactiveCanvasController](self "interactiveCanvasController")];
  [-[THDocumentViewController interactiveCanvasController](self "interactiveCanvasController")];
  [-[THDocumentViewController interactiveCanvasController](self "interactiveCanvasController")];
  [(THSectionController *)[(THDocumentViewController *)self paginatedSectionController] teardown];
  [(THDocumentViewController *)self setPaginatedSectionController:0];
  [(THSectionController *)[(THDocumentViewController *)self flowSectionController] teardown];
  [(THDocumentViewController *)self setFlowSectionController:0];
  [(THDocumentViewController *)self setActiveSectionController:0];
  [(THDocumentViewController *)self setDocumentLinkResolver:0];
  [(THDocumentViewController *)self setDocumentNavigator:0];
  [(THDocumentViewController *)self setPreventVisibleInfoUpdates:0];
  [-[THDocumentViewController interactiveCanvasController](self "interactiveCanvasController")];
  [-[THDocumentViewController canvasViewController](self "canvasViewController")];
  v3.receiver = self;
  v3.super_class = THDocumentViewController;
  [(THDocumentViewController *)&v3 unloadDocument];
  [+[TSDFrameImageCache sharedFrameImageCache](TSDFrameImageCache "sharedFrameImageCache")];
  [(THDocumentViewController *)self p_localteardownSecondStage];
}

- (void)p_localteardown
{
  [NSObject cancelPreviousPerformRequestsWithTarget:self selector:"p_performDelayedLayoutAndRotation:" object:[NSValue valueWithCGSize:self->_previousTransitionSize.width, self->_previousTransitionSize.height]];
  v3 = OBJC_IVAR___TSADocumentViewController__scrollView;
  [*&self->TSADocumentViewController_opaque[OBJC_IVAR___TSADocumentViewController__scrollView] setDelegate:0];
  [*&self->TSADocumentViewController_opaque[v3] removeFromSuperview];
  [(BKScrubberControl *)[(THDocumentViewController *)self scrubber] removeTarget:self action:0 forControlEvents:0xFFFFFFFFLL];
  [(BKScrubberControl *)[(THDocumentViewController *)self scrubber] removeFromSuperview];

  self->_scrubber = 0;
  [(BKScrubberCalloutView *)[(THDocumentViewController *)self scrubberCallout] removeFromSuperview];

  self->_scrubberCallout = 0;
  [(THDocumentViewController *)self setDocumentLinkResolver:0];
  [-[THDocumentViewController canvasViewController](self "canvasViewController")];
  [-[THDocumentViewController documentRoot](self "documentRoot")];
  [(THReflowablePaginationController *)[(THDocumentViewController *)self reflowablePaginationController] unregisterObserver:self];
  [(THReflowablePaginationController *)[(THDocumentViewController *)self reflowablePaginationController] teardown];

  [(THDocumentViewController *)self setLastStorageAnchor:0];
}

- (void)p_localteardownSecondStage
{
  [(THPageViewProvider *)[(THDocumentViewController *)self pageViewProvider] teardown];

  self->mPageViewProvider = 0;
  self->mPageViewDisplacement = 0;
  [(THWAutoplayController *)self->mAutoplayController teardown];

  self->mAutoplayController = 0;
}

- (void)teardown
{
  [(THDocumentViewController *)self p_localteardown];
  [(THDocumentViewController *)self p_localteardownSecondStage];
  v3.receiver = self;
  v3.super_class = THDocumentViewController;
  [(THDocumentViewController *)&v3 teardown];
}

- (void)p_updateScrollViewDecelerationRate
{
  inFlowMode = [(THDocumentViewController *)self inFlowMode];
  v4 = &UIScrollViewDecelerationRateFast;
  if (!inFlowMode)
  {
    v4 = &UIScrollViewDecelerationRateNormal;
  }

  v5 = *v4;
  v6 = *&self->TSADocumentViewController_opaque[OBJC_IVAR___TSADocumentViewController__scrollView];

  [v6 setDecelerationRate:v5];
}

- (void)viewWillAppear:(BOOL)appear
{
  v8.receiver = self;
  v8.super_class = THDocumentViewController;
  [(THDocumentViewController *)&v8 viewWillAppear:appear];
  [-[THDocumentViewController view](self "view")];
  [(THDocumentViewController *)self setLastLayoutBoundsSize:v4, v5];
  [-[THDocumentViewController view](self "view")];
  [(THDocumentViewController *)self updateTwoUpForSize:v6, v7];
  [(THDocumentViewController *)self p_updateVisibleInfos];
  [(THDocumentViewController *)self p_updateBookmarkAffordances];
  [(BCDisplaySleepController *)[(THDocumentViewController *)self displaySleepController] userInteractionOccurred];
  [(THDocumentViewController *)self p_updateScrollViewDecelerationRate];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = THDocumentViewController;
  [(THDocumentViewController *)&v4 viewWillDisappear:disappear];
  if (([-[THDocumentViewController presentedViewController](self "presentedViewController")] & 1) == 0)
  {
    [(THDocumentViewController *)self p_dismissActiveAnimated:0];
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  v4.receiver = self;
  v4.super_class = THDocumentViewController;
  [(THDocumentViewController *)&v4 viewDidAppear:appear];
  [-[THDocumentViewController interactiveCanvasController](selfCopy "interactiveCanvasController")];
  [(THDocumentViewController *)selfCopy setPagePaddingOptions:3];
  if ([(THDocumentViewController *)selfCopy canvasViewController])
  {
    selfCopy = [(THDocumentViewController *)selfCopy canvasViewController];
  }

  [(THDocumentViewController *)selfCopy becomeFirstResponder];
}

- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear
{
  v10.receiver = self;
  v10.super_class = THDocumentViewController;
  [(THDocumentViewController *)&v10 viewDidMoveToWindow:window shouldAppearOrDisappear:disappear];
  if (window)
  {
    [(THDocumentReflowableLayoutConfiguration *)[(THDocumentViewController *)self configuration] scrubberFrame];
    [(BKScrubberControl *)[(THDocumentViewController *)self scrubber] setFrame:v6, v7, v8, v9];
  }

  [(BCDisplaySleepController *)[(THDocumentViewController *)self displaySleepController] setWindow:window];
}

- (void)viewDidLoad
{
  v15.receiver = self;
  v15.super_class = THDocumentViewController;
  [(THDocumentViewController *)&v15 viewDidLoad];
  [(THDocumentViewController *)self _computeTraitCollectionDerivedValues];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_B150;
  v14[3] = &unk_45AE00;
  v14[4] = self;
  os_unfair_lock_lock(&self->_accessLock);
  sub_B150(v14);
  os_unfair_lock_unlock(&self->_accessLock);
  [-[THDocumentViewController view](self "view")];
  [-[THDocumentViewController view](self "view")];
  v3 = OBJC_IVAR___TSADocumentViewController__scrollView;
  [*&self->TSADocumentViewController_opaque[OBJC_IVAR___TSADocumentViewController__scrollView] setAlwaysBounceHorizontal:0];
  [*&self->TSADocumentViewController_opaque[v3] setAlwaysBounceVertical:0];
  [*&self->TSADocumentViewController_opaque[v3] setDirectionalLockEnabled:1];
  [*&self->TSADocumentViewController_opaque[v3] setContentInsetAdjustmentBehavior:2];
  [objc_msgSend(objc_msgSend(-[THDocumentViewController interactiveCanvasController](self "interactiveCanvasController")];
  objc_opt_class();
  v4 = TSUDynamicCast();
  if (v4)
  {
    v5 = v4;
    [v4 setPreventChildInducedBounce:1];
    [v5 setPreventBounceAnimation:1];
  }

  if ([(THDocumentViewController *)self useScrubber])
  {
    v6 = [[BKScrubberControl alloc] initWithFrame:-[THDocumentReflowableLayoutConfiguration scrubberStyle](-[THDocumentViewController configuration](self style:{"configuration"), "scrubberStyle"), CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    self->_scrubber = v6;
    [(BKScrubberControl *)v6 setBkAccessibilityDelegate:self];
    [(BKScrubberControl *)[(THDocumentViewController *)self scrubber] setAutoresizingMask:2];
    [(BKScrubberControl *)[(THDocumentViewController *)self scrubber] addTarget:self action:"scrub:" forControlEvents:192];
    [(BKScrubberControl *)[(THDocumentViewController *)self scrubber] addTarget:self action:"scrubValueChanged:" forControlEvents:4096];
    [(BKScrubberControl *)[(THDocumentViewController *)self scrubber] addTarget:self action:"scrubberTouchDown:" forControlEvents:1];
    [(BKScrubberControl *)[(THDocumentViewController *)self scrubber] addTarget:self action:"scrubberTouch:forEvent:" forControlEvents:4095];
    [(BKScrubberControl *)[(THDocumentViewController *)self scrubber] addTarget:self action:"scrubEnded:" forControlEvents:448];
    if ([(THDocumentViewController *)self inFlowMode])
    {
      [(BKScrubberControl *)[(THDocumentViewController *)self scrubber] setHidden:1];
      [(BKScrubberControl *)[(THDocumentViewController *)self scrubber] setEnabled:0];
    }

    [-[THDocumentViewController view](self "view")];
    self->_scrubberCallout = [[BKScrubberCalloutView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    [(BKScrubberCalloutView *)[(THDocumentViewController *)self scrubberCallout] setUsesMonospacedDigitFontForSubtitle:1];
    [(THDocumentViewController *)self setScrubberCalloutWidth:0.0];
    objc_opt_class();
    [(THThemeDelegate *)[(THDocumentViewController *)self themeDelegate] theme];
    v7 = TSUDynamicCast();
    if (v7)
    {
      -[BKScrubberCalloutView setBackgroundColor:](self->_scrubberCallout, "setBackgroundColor:", [v7 HUDBackgroundColor]);
    }

    [(BKScrubberCalloutView *)self->_scrubberCallout addToViewController:self];
  }

  v8 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"tapGesture:"];
  self->mTapRecognizer = v8;
  [(UITapGestureRecognizer *)v8 setDelegate:self];
  [(UITapGestureRecognizer *)self->mTapRecognizer setCancelsTouchesInView:0];
  [-[THDocumentViewController view](self "view")];
  self->mPageViewDisplacement = [[THPageViewDisplacement alloc] initWithView:[(THDocumentViewController *)self view] scrollView:*&self->TSADocumentViewController_opaque[v3]];
  v9 = [[THGuidedPanController alloc] initWithInteractiveCanvasController:[(THDocumentViewController *)self interactiveCanvasController]];
  self->mGuidedPanController = v9;
  [(THGuidedPanController *)v9 setDelegate:self];
  if (![(THDocumentViewController *)self isEpub])
  {
    self->mRevealTOCPanController = [[THRevealTOCPanController alloc] initWithDelegate:[(THDocumentViewController *)self revealTOCDelegate] interactiveCanvasController:[(THDocumentViewController *)self interactiveCanvasController]];
  }

  interactiveCanvasController = [(THDocumentViewController *)self interactiveCanvasController];
  v11 = [interactiveCanvasController gestureRecognizerWithKind:TSWPImmediatePress];
  [objc_msgSend(-[THDocumentViewController interactiveCanvasController](self "interactiveCanvasController")];
  [objc_msgSend(objc_msgSend(objc_msgSend(-[THDocumentViewController interactiveCanvasController](self "interactiveCanvasController")];
  canvasViewController = [(THDocumentViewController *)self canvasViewController];
  if (canvasViewController)
  {
    v13 = canvasViewController;
    if (![canvasViewController parentViewController])
    {
      [(THDocumentViewController *)self addChildViewController:v13];
    }
  }

  self->mAutoplayController = objc_alloc_init(THWAutoplayController);
  [(THWAutoplayController *)self->mAutoplayController setInteractiveCanvasController:[(THDocumentViewController *)self interactiveCanvasController]];
}

- (void)viewWillLayoutSubviews
{
  v10.receiver = self;
  v10.super_class = THDocumentViewController;
  [(THDocumentViewController *)&v10 viewWillLayoutSubviews];
  [-[THDocumentViewController view](self "view")];
  v4 = v3;
  v6 = v5;
  [(THDocumentViewController *)self lastLayoutBoundsSize];
  if (v8 != v4 || v7 != v6)
  {
    if ([-[THDocumentViewController view](self "view")])
    {
      [(THDocumentViewController *)self adjustContentViewFrame];
      [(THDocumentViewController *)self setLastLayoutBoundsSize:v4, v6];
    }
  }
}

- (void)viewDidLayoutSubviews
{
  v19.receiver = self;
  v19.super_class = THDocumentViewController;
  [(THDocumentViewController *)&v19 viewDidLayoutSubviews];
  [(THDocumentViewController *)self p_updateNavigationOverlayContainerFrame];
  if ([(THDocumentViewController *)self isEpub])
  {
    [(THDocumentViewController *)self p_updatePresentationTypeAnimated:0];
    [(THDocumentReflowableLayoutConfiguration *)[(THDocumentViewController *)self configuration] scrubberFrame];
    [(BKScrubberControl *)[(THDocumentViewController *)self scrubber] setFrame:v3, v4, v5, v6];
    [(BKScrubberControl *)[(THDocumentViewController *)self scrubber] setOrientation:[(THDocumentViewController *)self inFlowMode]];
  }

  else if (![(THDocumentViewController *)self isTransitioning])
  {
    [-[THDocumentViewController view](self "view")];
    v8 = v7;
    v10 = v9;
    [(THDocumentViewController *)self lastLayoutSize];
    if (v12 != v8 || v11 != v10)
    {
      [(THDocumentViewController *)self bookViewWillTransitionToSize:v8, v10];
      [(THDocumentViewController *)self bookViewDidTransitionToSize:v8, v10];
      [(THDocumentViewController *)self setLastLayoutSize:v8, v10];
      [-[THDocumentViewController canvasViewController](self "canvasViewController")];
      if ([(THDocumentViewController *)self useScrubber])
      {
        [(THDocumentReflowableLayoutConfiguration *)[(THDocumentViewController *)self configuration] scrubberFrame];
        [(BKScrubberControl *)[(THDocumentViewController *)self scrubber] setFrame:v13, v14, v15, v16];
      }
    }
  }

  [(THDocumentReflowableLayoutConfiguration *)[(THDocumentViewController *)self configuration] scrubberCalloutWidth];
  [(THDocumentViewController *)self setScrubberCalloutWidth:?];
  [-[THDocumentViewController view](self "view")];
  [(THDocumentViewController *)self p_updatePageNumberViewPositionsForSize:v17, v18];
}

- (id)childViewControllerForStatusBarHidden
{
  result = [(THDocumentViewController *)self expandedViewController];
  if (result)
  {

    return [(THDocumentViewController *)self expandedViewController];
  }

  return result;
}

- (id)childViewControllerForStatusBarStyle
{
  result = [(THDocumentViewController *)self expandedViewController];
  if (result)
  {

    return [(THDocumentViewController *)self expandedViewController];
  }

  return result;
}

- (int64_t)preferredStatusBarStyle
{
  v3 = [-[THThemeDelegate theme](-[THDocumentViewController themeDelegate](self "themeDelegate")];
  if (![(THDocumentViewController *)self isEpub]&& [(THPresentationType *)[(THDocumentViewController *)self currentPresentationType] isFlow]&& [(THToolbarDelegate *)[(THDocumentViewController *)self toolbarDelegate] isToolbarHidden])
  {
    v3 = &dword_0 + 3;
  }

  if (UIAccessibilityIsInvertColorsEnabled() && [(THDocumentViewController *)self isEpub])
  {
    v4 = [-[THThemeDelegate theme](-[THDocumentViewController themeDelegate](self "themeDelegate")];
    if (v4 == kIMThemeIdentifierWhitePageTheme || v4 == kIMThemeIdentifierSepiaPageTheme)
    {
      return 1;
    }

    else if (v4 == kIMThemeIdentifierGrayPageTheme || v4 == kIMThemeIdentifierNightPageTheme)
    {
      return 3;
    }
  }

  return v3;
}

- (int64_t)overrideUserInterfaceStyle
{
  v4.receiver = self;
  v4.super_class = THDocumentViewController;
  result = [(THDocumentViewController *)&v4 overrideUserInterfaceStyle];
  if (!result)
  {
    objc_opt_class();
    [(THThemeDelegate *)[(THDocumentViewController *)self themeDelegate] theme];
    result = TSUDynamicCast();
    if (result)
    {
      return [result userInterfaceStyle];
    }
  }

  return result;
}

- (id)childViewControllerForHomeIndicatorAutoHidden
{
  result = [(THDocumentViewController *)self expandedViewController];
  if (result)
  {

    return [(THDocumentViewController *)self expandedViewController];
  }

  return result;
}

- (BOOL)prefersHomeIndicatorAutoHidden
{
  toolbarDelegate = [(THDocumentViewController *)self toolbarDelegate];

  return [(THToolbarDelegate *)toolbarDelegate isToolbarHidden];
}

- (BOOL)isPageBookmarked
{
  userAnnotationDelegate = [(THDocumentViewController *)self userAnnotationDelegate];

  return [(THUserAnnotationDelegate *)userAnnotationDelegate isPageBookmarkedForDocumentViewController:self];
}

- (void)setPageBookmarked:(BOOL)bookmarked
{
  bookmarkedCopy = bookmarked;
  userAnnotationDelegate = [(THDocumentViewController *)self userAnnotationDelegate];

  [(THUserAnnotationDelegate *)userAnnotationDelegate setPageBookmarked:bookmarkedCopy forDocumentViewController:self];
}

- (void)updateForTheme:(id)theme
{
  if ([(THDocumentViewController *)self isEpub])
  {
    objc_opt_class();
    v4 = TSUDynamicCast();
    v5 = [v4 backgroundColorForTraitEnvironment:self];
    [-[THDocumentViewController view](self "view")];
    -[THPageNumberView setPageNumberColor:backgroundColor:](-[THDocumentViewController navOverlayPageNumberView](self, "navOverlayPageNumberView"), "setPageNumberColor:backgroundColor:", [v4 headerTextColor], v5);
    -[THPageNumberView setPageNumberColor:backgroundColor:](-[THDocumentViewController contentPageNumberView](self, "contentPageNumberView"), "setPageNumberColor:backgroundColor:", [v4 headerTextColorDimmed], v5);
    [(THOverscrollImageView *)[(THDocumentViewController *)self leftOverscrollView] setBackgroundColor:v5];
    [(THOverscrollImageView *)[(THDocumentViewController *)self rightOverscrollView] setBackgroundColor:v5];
    [(UIView *)[(THDocumentViewController *)self topOverscrollView] setBackgroundColor:v5];
    [(UIView *)[(THDocumentViewController *)self bottomOverscrollView] setBackgroundColor:v5];
    interactiveCanvasController = [(THDocumentViewController *)self interactiveCanvasController];
    [objc_msgSend(interactiveCanvasController "canvasView")];
    [objc_msgSend(objc_msgSend(interactiveCanvasController "canvasView")];
    objc_opt_class();
    [-[THDocumentViewController documentRoot](self "documentRoot")];
    v7 = TSUDynamicCast();
    [v7 updateWithTheme:v4 traitCollection:{-[THDocumentViewController traitCollection](self, "traitCollection")}];
    forceThemeColors = [v7 forceThemeColors];
    popUpInfo = [(TSWPopoverController *)self->mPopUpPopoverController popUpInfo];
    if (forceThemeColors)
    {
      v10 = [TSUColor colorWithUIColor:v5];
    }

    else
    {
      v10 = 0;
    }

    [(TSWPopUpInfo *)popUpInfo updateBackgroundColor:v10];
    [(THDocumentViewController *)self p_updatePageViewHostsWithTheme:v4];
    [(THWExpandedViewController *)[(THDocumentViewController *)self expandedViewController] invalidate];
    [(THSectionController *)[(THDocumentViewController *)self activeSectionController] clearCTCaches];
    [interactiveCanvasController pushThreadedLayoutAndRenderDisabled];
    [interactiveCanvasController recreateAllLayoutsAndReps];
    [interactiveCanvasController layoutIfNeeded];
    [interactiveCanvasController popThreadedLayoutAndRenderDisabled];

    [(THDocumentViewController *)self _updateScrubberTheme:v4];
  }
}

- (void)_updateScrubberTheme:(id)theme
{
  if ([theme shouldInvertContent])
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  [(BKScrubberControl *)self->_scrubber setThemeInterfaceStyle:v5];
  [-[BKScrubberControl track](self->_scrubber "track")];
  hUDBackgroundColor = [theme HUDBackgroundColor];
  scrubberCallout = self->_scrubberCallout;

  [(BKScrubberCalloutView *)scrubberCallout setBackgroundColor:hUDBackgroundColor];
}

- (void)p_updatePageViewHostsWithTheme:(id)theme
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_BA24;
  v3[3] = &unk_45AE58;
  v3[4] = self;
  v3[5] = [theme backgroundColorForTraitEnvironment:self];
  [UIView performWithoutAnimation:v3];
}

- (id)foregroundTextColor
{
  theme = [(THThemeDelegate *)[(THDocumentViewController *)self themeDelegate] theme];

  return [theme contentTextColor];
}

- (id)backgroundColor
{
  theme = [(THThemeDelegate *)[(THDocumentViewController *)self themeDelegate] theme];

  return [theme backgroundColorForTraitEnvironment:self];
}

- (BOOL)pointIsInLeftMargin:(CGPoint)margin fromView:(id)view
{
  [-[THDocumentViewController view](self "view")];
  v6 = v5;
  v8 = v7;
  [(THDocumentViewController *)self p_pageMarginWidth];
  if (v6 >= v9)
  {
    return 0;
  }

  [(THToolbarDelegate *)[(THDocumentViewController *)self toolbarDelegate] toolbarHeight];
  return v8 > v10;
}

- (BOOL)pointIsInRightMargin:(CGPoint)margin fromView:(id)view
{
  [-[THDocumentViewController view](self "view")];
  v6 = v5;
  v8 = v7;
  [-[THDocumentViewController view](self "view")];
  v10 = v9;
  [(THDocumentViewController *)self p_pageMarginWidth];
  if (v6 <= v10 - v11)
  {
    return 0;
  }

  [(THToolbarDelegate *)[(THDocumentViewController *)self toolbarDelegate] toolbarHeight];
  return v8 > v12;
}

- (void)scrub:(id)scrub
{
  pageNumber = [scrub pageNumber];
  [(THBookNavigation *)[(THDocumentViewController *)self bookNavigationDelegate] recordOutgoingMajorNavigationJump];
  [(THDocumentNavigator *)[(THDocumentViewController *)self documentNavigator] setVisibleAbsolutePhysicalPageIndex:pageNumber - 1];
  [(THBookNavigation *)[(THDocumentViewController *)self bookNavigationDelegate] recordCurrentLocationInHistory];
  bookNavigationDelegate = [(THDocumentViewController *)self bookNavigationDelegate];

  [(THBookNavigation *)bookNavigationDelegate updateNavigationAffordances];
}

- (void)p_updateScrubberCheckToolbarState:(BOOL)state
{
  stateCopy = state;
  [(BKScrubberControl *)[(THDocumentViewController *)self scrubber] setEnabled:1];
  if (stateCopy)
  {
    isToolbarHidden = [(THToolbarDelegate *)[(THDocumentViewController *)self toolbarDelegate] isToolbarHidden];
    scrubber = [(THDocumentViewController *)self scrubber];

    [(BKScrubberControl *)scrubber setHidden:isToolbarHidden];
  }
}

- (void)scrubValueChanged:(id)changed
{
  pageNumber = [(BKScrubberControl *)self->_scrubber pageNumber];

  [(THDocumentViewController *)self _updateScrubberCalloutForPageNumber:pageNumber];
}

- (void)_updateScrubberCalloutForPageNumber:(int64_t)number
{
  if ((number - 1) <= 0x7FFFFFFFFFFFFFFDLL)
  {
    v5 = [objc_msgSend(-[THDocumentViewController documentRoot](self "documentRoot")];
    if (v5)
    {
      v6 = [objc_msgSend(-[THDocumentViewController documentRoot](self "documentRoot")];
      [objc_msgSend(-[THDocumentViewController documentRoot](self "documentRoot")];
      v8 = [[NSString alloc] initWithFormat:objc_msgSend(THBundle(), "localizedStringForKey:value:table:", @"Page %@", &stru_471858, 0), +[NSNumberFormatter imaxLocalizedUnsignedInteger:usesGroupingSeparator:](NSNumberFormatter, "imaxLocalizedUnsignedInteger:usesGroupingSeparator:", number, 0)];
      if (v6)
      {
        v7 = v6;
      }

      else
      {
        v7 = &stru_471858;
      }

      [-[BKScrubberCalloutView title](-[THDocumentViewController scrubberCallout](self "scrubberCallout")];
      [-[BKScrubberCalloutView subtitle](-[THDocumentViewController scrubberCallout](self "scrubberCallout")];
    }
  }
}

- (void)layoutScrubberCallout
{
  [-[THDocumentViewController view](self "view")];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  userInterfaceLayoutDirection = [+[UIApplication sharedApplication](UIApplication userInterfaceLayoutDirection];
  [(BKScrubberCalloutView *)[(THDocumentViewController *)self scrubberCallout] sizeThatFits:CGSizeZero.width, CGSizeZero.height];
  v13 = v12;
  v15 = v14;
  [(THDocumentViewController *)self scrubberCalloutWidth];
  if (v16 > 0.0)
  {
    [(THDocumentViewController *)self scrubberCalloutWidth];
    v13 = v17;
  }

  v50.origin.x = v4;
  v50.origin.y = v6;
  v50.size.width = v8;
  v50.size.height = v10;
  v18 = CGRectGetMidX(v50) - v13 * 0.5;
  v51.origin.x = v4;
  v51.origin.y = v6;
  v51.size.width = v8;
  rect = v10;
  v51.size.height = v10;
  MinY = CGRectGetMinY(v51);
  layout = [(THDocumentReflowableLayoutConfiguration *)[(THDocumentViewController *)self configuration] layout];
  if ([(THDocumentViewController *)self scrubberCalloutFollowsScrollerThumb])
  {
    v47 = MinY;
    view = [(THDocumentViewController *)self view];
    [-[BKScrubberControl thumb](self->_scrubber "thumb")];
    [view convertRect:objc_msgSend(-[BKScrubberControl thumb](self->_scrubber fromView:{"thumb"), "superview"), v22, v23, v24, v25}];
    if (layout == &dword_0 + 2)
    {
      MidY = CGRectGetMidY(*&v26);
      v52.size.height = rect;
      v31 = MidY + v15 * -0.5;
      v52.origin.x = v4;
      v52.origin.y = v6;
      v52.size.width = v8;
      v32 = CGRectGetHeight(v52) + -5.0 - v15;
      if (v32 >= v31)
      {
        v32 = v31;
      }

      if (v32 >= 5.0)
      {
        MinY = v32;
      }

      else
      {
        MinY = 5.0;
      }
    }

    else
    {
      v33 = CGRectGetMidX(*&v26) - v13 * 0.5;
      v53.origin.x = v4;
      v53.origin.y = v6;
      v53.size.width = v8;
      v53.size.height = rect;
      v34 = CGRectGetWidth(v53) + -5.0 - v13;
      if (v34 >= v33)
      {
        v34 = v33;
      }

      if (v34 >= 5.0)
      {
        v18 = v34;
      }

      else
      {
        v18 = 5.0;
      }

      MinY = v47;
    }
  }

  if ([(THDocumentReflowableLayoutConfiguration *)[(THDocumentViewController *)self configuration] isScroll])
  {
    if ([(THDocumentViewController *)self scrubberCalloutFollowsScrollerThumb])
    {
      [(BKScrubberControl *)self->_scrubber frame];
      if (userInterfaceLayoutDirection == UIUserInterfaceLayoutDirectionRightToLeft)
      {
        MaxX = CGRectGetMaxX(*&v35);
        v40 = 12.0;
      }

      else
      {
        MaxX = CGRectGetMinX(*&v35) - v13;
        v40 = -12.0;
      }

      v18 = MaxX + v40;
    }

    else
    {
      if (isPhone())
      {
        v41 = 24.0;
      }

      else
      {
        v41 = 34.0;
      }

      [(THDocumentReflowableLayoutConfiguration *)[(THDocumentViewController *)self configuration] bottomRightToolbarFrame];
      MinY = CGRectGetMinY(v55) - v15 + -1.0 - v41;
    }
  }

  else
  {
    [(BKScrubberControl *)self->_scrubber frame];
    MinY = CGRectGetMinY(v54) - v15;
  }

  v56.origin.x = v18;
  v56.origin.y = MinY;
  v56.size.width = v13;
  v56.size.height = v15;
  v57 = CGRectIntegral(v56);
  x = v57.origin.x;
  y = v57.origin.y;
  width = v57.size.width;
  height = v57.size.height;
  scrubberCallout = [(THDocumentViewController *)self scrubberCallout];

  [(BKScrubberCalloutView *)scrubberCallout setFrame:x, y, width, height];
}

- (void)scrubberTouchDown:(id)down
{
  [(THToolbarDelegate *)[(THDocumentViewController *)self toolbarDelegate] userWillInteractInToolbar];
  [(BKScrubberCalloutView *)[(THDocumentViewController *)self scrubberCallout] setFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];

  [(THDocumentViewController *)self setIsScrubbing:1];
}

- (void)scrubberTouch:(id)touch forEvent:(id)event
{
  v5 = [(BKScrubberControl *)self->_scrubber isTracking:touch];

  [(THDocumentViewController *)self setScrubberCalloutVisible:v5];
}

- (void)setScrubberCalloutVisible:(BOOL)visible
{
  visibleCopy = visible;
  visibleCopy2 = visible;
  [(BKScrubberCalloutView *)[(THDocumentViewController *)self scrubberCallout] alpha];
  if (v6 != visibleCopy2)
  {
    scrubberCallout = [(THDocumentViewController *)self scrubberCallout];
    if (visibleCopy)
    {
      [(BKScrubberCalloutView *)scrubberCallout setAlpha:1.0];
    }

    else
    {
      [(BKScrubberCalloutView *)scrubberCallout alpha];
      if (v8 == 1.0)
      {
        [(THToolbarDelegate *)[(THDocumentViewController *)self toolbarDelegate] userDidInteractInToolbar];
        v9[0] = _NSConcreteStackBlock;
        v9[1] = 3221225472;
        v9[2] = sub_C47C;
        v9[3] = &unk_45AE00;
        v9[4] = self;
        [UIView animateWithDuration:4 delay:v9 options:0 animations:0.2 completion:0.3];
      }
    }

    [(THDocumentViewController *)self _updateScrubberCalloutForPageNumber:[(BKScrubberControl *)self->_scrubber pageNumber]];
    [(THDocumentViewController *)self layoutScrubberCallout];
  }

  if (visibleCopy)
  {
    [(THToolbarDelegate *)[(THDocumentViewController *)self toolbarDelegate] userWillInteractInToolbar];
  }
}

- (void)startRevealTOC
{
  [(THDocumentViewController *)self setIsRevealingTOC:1];
  [(THOverscrollImageView *)[(THDocumentViewController *)self leftOverscrollView] setHidden:1];
  [(THOverscrollImageView *)[(THDocumentViewController *)self rightOverscrollView] setHidden:1];
  mPageViewDisplacement = self->mPageViewDisplacement;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_C570;
  v4[3] = &unk_45AED0;
  v4[4] = self;
  [(THPageViewDisplacement *)mPageViewDisplacement startRevealTOCWithPageIndex:[(THDocumentViewController *)self currentRelativePageIndex] enumerator:v4];
}

- (void)endRevealTOC
{
  if (![(THDocumentViewController *)self p_allowsPageDisplacement])
  {
    mPageViewDisplacement = self->mPageViewDisplacement;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_C7B8;
    v5[3] = &unk_45AED0;
    v5[4] = self;
    [(THPageViewDisplacement *)mPageViewDisplacement endRevealTOCWithEnumerator:v5];
  }

  [(THDocumentViewController *)self setIsRevealingTOC:0];
  p_canOverscroll = [(THDocumentViewController *)self p_canOverscroll];
  [(THOverscrollImageView *)[(THDocumentViewController *)self leftOverscrollView] setHidden:p_canOverscroll ^ 1];
  [(THOverscrollImageView *)[(THDocumentViewController *)self rightOverscrollView] setHidden:p_canOverscroll ^ 1];
}

- (void)updateTwoUpForSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  isTwoUp = self->_isTwoUp;
  v7 = ![(THDocumentViewController *)self isEpub]&& [(THBookPropertiesProvider *)[(THDocumentViewController *)self bookPropertiesDelegate] bookIsPaginatedForPortrait]&& width > height && width > 1024.0 && ![(THDocumentViewController *)self th_cachedIsCompactWidth]&& ![(THDocumentViewController *)self th_cachedIsCompactHeight];
  self->_isTwoUp = v7;
  if (isTwoUp)
  {
    [(THDocumentViewController *)self setTransitioningFromTwoUpToOneUp:!v7];
    v8 = 0;
  }

  else
  {
    [(THDocumentViewController *)self setTransitioningFromTwoUpToOneUp:0];
    v8 = self->_isTwoUp;
  }

  [(THDocumentViewController *)self setTransitioningFromOneUpToTwoUp:v8];
}

- (void)changeFontSize:(unint64_t)size
{
  [(THDocumentViewController *)self setFlowSizeScale:?];
  activeSectionController = [(THDocumentViewController *)self activeSectionController];
  [-[THDocumentViewController interactiveCanvasController](self "interactiveCanvasController")];
  v6 = [(THSectionController *)activeSectionController bodyAnchorForCanvasRect:?];
  [+[THApplicationSettings sharedSettings](THApplicationSettings "sharedSettings")];
  [(THDocumentReflowableLayoutConfiguration *)[(THDocumentViewController *)self configuration] setOverrideFontSize:v7];
  if ([(THDocumentViewController *)self inFlowMode]&& ![(THDocumentViewController *)self isEpub])
  {
    [-[THDocumentViewController interactiveCanvasController](self "interactiveCanvasController")];
    [-[THDocumentViewController interactiveCanvasController](self "interactiveCanvasController")];
    [(THSectionController *)[(THDocumentViewController *)self activeSectionController] rectForBodyAnchor:v6];
    [(THDocumentViewController *)self p_setUnscaledCanvasRect:?];
    [-[THDocumentViewController interactiveCanvasController](self "interactiveCanvasController")];
    [-[THDocumentViewController interactiveCanvasController](self "interactiveCanvasController")];
    v8 = +[CATransition animation];
    [v8 setType:kCATransitionFade];
    [v8 setDuration:0.150000006];
    v9 = [-[THDocumentViewController canvasScrollView](self "canvasScrollView")];

    [v9 addAnimation:v8 forKey:0];
  }

  else
  {

    [(THDocumentViewController *)self p_updatePresentationTypeAnimated:1];
  }
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  if (self->mTapRecognizer != recognizer)
  {
    return 1;
  }

  view = [touch view];
  return view == [(THDocumentViewController *)self view];
}

- (void)tapGesture:(id)gesture
{
  if (self->mTapRecognizer == gesture && ([-[THDocumentViewController interactiveCanvasController](self "interactiveCanvasController")] & 1) == 0 && !self->mOverscrollAnimationInProcess)
  {
    [gesture locationInView:{-[THDocumentViewController view](self, "view")}];
    v6 = v5;
    v8 = v7;
    [-[THDocumentViewController view](self "view")];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    [-[THDocumentViewController view](self "view")];
    v18 = v17 / 3.0;
    v23.origin.x = v10;
    v23.origin.y = v12;
    v23.size.width = v14;
    v23.size.height = v16;
    v24 = CGRectInset(v23, 0.0, v18);
    width = v24.size.width;
    v22.x = v6;
    v22.y = v8;
    if (CGRectContainsPoint(v24, v22))
    {

      [(THDocumentViewController *)self p_animateToNextPage:v6 >= width * 0.5];
    }

    else
    {

      [(THDocumentViewController *)self toggleToolbar];
    }
  }
}

- (BOOL)canGoToPreviousPage
{
  isPagingEnabled = [*&self->TSADocumentViewController_opaque[OBJC_IVAR___TSADocumentViewController__scrollView] isPagingEnabled];
  if (isPagingEnabled)
  {
    LOBYTE(isPagingEnabled) = [(THDocumentViewController *)self currentAbsolutePageIndex]!= 0;
  }

  return isPagingEnabled;
}

- (BOOL)canGoToNextPage
{
  isPagingEnabled = [*&self->TSADocumentViewController_opaque[OBJC_IVAR___TSADocumentViewController__scrollView] isPagingEnabled];
  if (isPagingEnabled)
  {
    v4 = [(THDocumentViewController *)self currentAbsolutePageIndex]+ 1;
    LOBYTE(isPagingEnabled) = v4 < [objc_msgSend(-[THDocumentViewController documentRoot](self "documentRoot")];
  }

  return isPagingEnabled;
}

- (void)p_animateToNextPage:(BOOL)page
{
  isPagingEnabled = [*&self->TSADocumentViewController_opaque[OBJC_IVAR___TSADocumentViewController__scrollView] isPagingEnabled];
  if (page)
  {
    if (!isPagingEnabled)
    {
      return;
    }

    v6 = [(THDocumentViewController *)self currentAbsolutePageIndex]+ 1;
    if (v6 >= [objc_msgSend(-[THDocumentViewController documentRoot](self "documentRoot")])
    {
      return;
    }

    v7 = 1;
  }

  else
  {
    if (!isPagingEnabled || ![(THDocumentViewController *)self currentAbsolutePageIndex])
    {
      return;
    }

    v7 = -1;
  }

  v8 = [(THDocumentViewController *)self currentRelativePageIndex]+ v7;
  if (v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(THDocumentViewController *)self p_dismissActiveAnimated:1];
    if ([(THDocumentViewController *)self p_allowsPageDisplacement])
    {
      mPageViewDisplacement = self->mPageViewDisplacement;
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_CF3C;
      v11[3] = &unk_45AED0;
      v11[4] = self;
      [(THPageViewDisplacement *)mPageViewDisplacement animateFadeWithDuration:v8 forPageIndex:v11 enumerator:0.2];
    }

    if (v8 == -1)
    {
      [(THDocumentViewController *)self p_horizontalOverscrollPreviousChapter];
    }

    else if (v8 == [(THSectionController *)[(THDocumentViewController *)self activeSectionController] pageCount])
    {
      [(THDocumentViewController *)self p_horizontalOverscrollNextChapter];
    }

    else
    {
      interactiveCanvasController = [(THDocumentViewController *)self interactiveCanvasController];
      if (page)
      {
        [interactiveCanvasController pageRight];
      }

      else
      {
        [interactiveCanvasController pageLeft];
      }
    }
  }
}

- (void)p_updateProgressKitForNewNavigationUnit:(id)unit
{
  if ([objc_msgSend(objc_msgSend(-[THDocumentViewController documentRoot](self "documentRoot")])
  {
    v5 = [objc_msgSend(-[THDocumentViewController documentRoot](self "documentRoot")];
    v6 = [objc_msgSend(-[THDocumentViewController documentRoot](self "documentRoot")];
    v7 = [objc_msgSend(objc_msgSend(-[THDocumentViewController documentRoot](self "documentRoot")];
    v8 = +[BCProgressKitController sharedController];
    [v8 activateChapterForBook:v7 chapterID:v5 title:v6 completion:0];

    [v8 deactivateCurrentWidgetForBook:v7 completion:0];
  }
}

- (void)p_updateProgessKitSectionInCanvasRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  currentNavigationUnit = [(THDocumentViewController *)self currentNavigationUnit];
  readingStatisticsDelegate = [(THDocumentViewController *)self readingStatisticsDelegate];
  if ([objc_msgSend(currentNavigationUnit "contentNodes")])
  {
    if (readingStatisticsDelegate)
    {
      currentPresentationType = [(THDocumentViewController *)self currentPresentationType];
      interactiveCanvasController = [(THDocumentViewController *)self interactiveCanvasController];
      dispatchQueue = self->_dispatchQueue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_D324;
      block[3] = &unk_45AEF8;
      *&block[9] = x;
      *&block[10] = y;
      *&block[11] = width;
      *&block[12] = height;
      block[4] = self;
      block[5] = currentNavigationUnit;
      block[6] = currentPresentationType;
      block[7] = interactiveCanvasController;
      block[8] = readingStatisticsDelegate;
      dispatch_async(dispatchQueue, block);
    }
  }
}

- (void)p_getWidgetIDsForInfo:(id)info completion:(id)completion
{
  v7 = [-[THDocumentViewController documentRoot](self "documentRoot")];
  v8 = [objc_msgSend(objc_msgSend(-[THDocumentViewController documentRoot](self "documentRoot")];
  v9 = TSUProtocolCast();
  if (v9)
  {
    v10 = v9;
    progressKitID = [v9 progressKitID];
    v12 = [v7 contentNodeForGUID:{objc_msgSend(v10, "progressKitSectionID")}];
  }

  else
  {
    progressKitID = [-[THDocumentViewController currentContentNode](self "currentContentNode")];
    inPaginatedMode = [(THDocumentViewController *)self inPaginatedMode];
    interactiveCanvasController = [(THDocumentViewController *)self interactiveCanvasController];
    if (inPaginatedMode)
    {
      [interactiveCanvasController visibleUnscaledRect];
    }

    else
    {
      [interactiveCanvasController visibleUnscaledRectForContent];
    }

    TSDRoundedRect();
    v12 = [-[THDocumentViewController currentNavigationUnit](self "currentNavigationUnit")];
    [v12 nodeGUID];
  }

  title = [v12 title];
  v20 = [v7 navigationUnitContainingContentNode:v12];
  v21 = [v7 uniqueIdentifierForNavigationUnit:v20];
  v22 = [v7 parentTitleForNavigationUnit:v20];
  v23 = *(completion + 2);

  v23(completion, v8, v21, v22, 0, title, progressKitID);
}

- (void)p_activateProgressForRep:(id)rep
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_D8C4;
  v3[3] = &unk_45AF48;
  v3[4] = rep;
  v3[5] = self;
  -[THDocumentViewController p_getWidgetIDsForInfo:completion:](self, "p_getWidgetIDsForInfo:completion:", [rep info], v3);
}

- (void)p_deactivateProgressForRep:(id)rep
{
  documentRoot = [objc_msgSend(objc_msgSend(-[THDocumentViewController documentRoot](self documentRoot];
  v4 = +[BCProgressKitController sharedController];

  [v4 deactivateCurrentWidgetForBook:documentRoot completion:0];
}

- (void)p_buildContextTree
{
  v3 = [objc_msgSend(objc_msgSend(-[THDocumentViewController documentRoot](self "documentRoot")];
  v4 = +[BCProgressKitController sharedController];
  if ([v4 isTrackingAssetID:v3])
  {
    dispatchQueue = self->_dispatchQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_DB50;
    block[3] = &unk_45AF70;
    block[4] = self;
    block[5] = v4;
    block[6] = v3;
    dispatch_async(dispatchQueue, block);
  }
}

- (void)paginationController:(id)controller paginationResultChanged:(id)changed forContentNode:(id)node paginationProgress:(double)progress paginationComplete:(BOOL)complete
{
  completeCopy = complete;
  if (-[THPresentationType isEqualIncludingSize:](-[THSectionController presentationType](-[THDocumentViewController paginatedSectionController](self, "paginatedSectionController", controller, changed, node), "presentationType"), "isEqualIncludingSize:", [changed presentationType]))
  {
    [(BKScrubberControl *)[(THDocumentViewController *)self scrubber] setProgress:progress];
    [(THDocumentViewController *)self p_updatePageNumberingForce:0];
    if (!completeCopy)
    {
      if (![(THDocumentViewController *)self inFlowMode])
      {
        scrubber = [(THDocumentViewController *)self scrubber];

        [(BKScrubberControl *)scrubber setHidden:0];
      }

      return;
    }
  }

  else if (!completeCopy)
  {
    return;
  }

  paginationDelegate = [(THDocumentViewController *)self paginationDelegate];

  [(THPaginationStatusDelegate *)paginationDelegate paginationDidComplete];
}

- (void)paginationController:(id)controller paginationCompleteStateChangedTo:(BOOL)to
{
  toCopy = to;
  if (to)
  {
    [(THDocumentLinkResolver *)[(THDocumentViewController *)self documentLinkResolver] updatePaginationResults];
    [objc_msgSend(-[THDocumentViewController documentRoot](self "documentRoot")];
    v6 = dispatch_time(0, 500000000);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_DF60;
    block[3] = &unk_45AE00;
    block[4] = self;
    dispatch_after(v6, &_dispatch_main_q, block);
  }

  [(THPaginationStatusDelegate *)[(THDocumentViewController *)self paginationDelegate] documentViewController:self didChangePaginationStatus:!toCopy];
  [(THBookNavigation *)[(THDocumentViewController *)self bookNavigationDelegate] updateNavigationAffordances];
}

- (CGSize)pageSizeForPresentationType:(id)type
{
  if (-[THDocumentViewController isEpub](self, "isEpub") || [type isFlow] && -[THDocumentViewController p_isCompactFlowPresentationForSectionController:](self, "p_isCompactFlowPresentationForSectionController:", -[THDocumentViewController flowSectionController](self, "flowSectionController")))
  {

    [(THDocumentViewController *)self p_maxScrollViewSize];
  }

  else
  {
    if ([type isPaginated])
    {
      paginatedSectionController = [(THDocumentViewController *)self paginatedSectionController];
LABEL_11:

      [(THSectionController *)paginatedSectionController pageSize];
      goto __THDocumentViewController_pageSizeForPresentationType__;
    }

    if ([(THDocumentViewController *)self activeSectionController])
    {
      paginatedSectionController = [(THDocumentViewController *)self activeSectionController];
      goto LABEL_11;
    }

    [(THDocumentViewController *)self p_windowOrViewSize];

    [THPagePositionController fixedPageSizeForLandscapeOrientation:v8 > v9];
  }

- (unint64_t)fontSizeForPresentationType:(id)type
{
  if (![(THDocumentViewController *)self isEpub])
  {
    return 0;
  }

  return [(THDocumentViewController *)self flowSizeScale];
}

- (int64_t)columnCountForPresentationType:(id)type
{
  if (![(THDocumentViewController *)self isEpub])
  {
    return 0;
  }

  configuration = [(THDocumentViewController *)self configuration];

  return [(THDocumentReflowableLayoutConfiguration *)configuration columnCount];
}

- (double)gutterWidthForPresentationType:(id)type
{
  isEpub = [(THDocumentViewController *)self isEpub];
  result = 0.0;
  if (isEpub)
  {
    [(THDocumentReflowableLayoutConfiguration *)[(THDocumentViewController *)self configuration] gutterWidth];
    v7 = v6;
    [-[THDocumentReflowableLayoutConfiguration environment](-[THDocumentViewController configuration](self "configuration")];
    return v7 + v8;
  }

  return result;
}

- (UIEdgeInsets)contentInsetsForPresentationType:(id)type
{
  v5 = TSDEdgeInsetsZero[0];
  v4 = TSDEdgeInsetsZero[1];
  v6 = TSDEdgeInsetsZero[2];
  v7 = TSDEdgeInsetsZero[3];
  if ([(THDocumentViewController *)self isEpub])
  {
    configuration = [(THDocumentViewController *)self configuration];
    environment = [(THDocumentReflowableLayoutConfiguration *)configuration environment];
    [(THDocumentReflowableLayoutConfiguration *)configuration contentInsets];
    [environment safeAreaInsets];
    UIEdgeInsetsAdd();
    [environment safeAreaInsets];
    UIEdgeInsetsSubtract();
    v4 = v10;
    v6 = v11;
    v7 = v12;
    v5 = v13 + 4.0;
  }

  v14 = v5;
  v15 = v4;
  v16 = v6;
  v17 = v7;
  result.right = v17;
  result.bottom = v16;
  result.left = v15;
  result.top = v14;
  return result;
}

- (id)backgroundColorForDragUIPlatter
{
  v4[0] = [(THDocumentViewController *)self traitCollection];
  v4[1] = [UITraitCollection traitCollectionWithUserInterfaceLevel:1];
  return [-[THThemeDelegate theme](-[THDocumentViewController themeDelegate](self "themeDelegate")];
}

- (CGSize)paginatedPageSize
{
  if ([(THDocumentViewController *)self paginatedSectionController])
  {
    paginatedSectionController = [(THDocumentViewController *)self paginatedSectionController];

    [(THSectionController *)paginatedSectionController pageSize];
  }

  else
  {
    v6 = [objc_msgSend(-[THDocumentViewController documentRoot](self "documentRoot")];

    [THPagePositionController fixedPageSizeForLandscapeOrientation:v6];
  }

  result.height = v5;
  result.width = v4;
  return result;
}

- (CGSize)paginatedSpreadSize
{
  [(THDocumentViewController *)self paginatedPageSize];
  v4 = v3;
  v6 = v5;
  isTwoUp = [(THDocumentViewController *)self isTwoUp];
  v8 = v4 + v4;
  if (!isTwoUp)
  {
    v8 = v4;
  }

  v9 = v6;
  result.height = v9;
  result.width = v8;
  return result;
}

- (CGSize)p_currentPageSize
{
  activeSectionController = [(THDocumentViewController *)self activeSectionController];

  [(THSectionController *)activeSectionController pageSize];
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGSize)p_currentSpreadSize
{
  if ([(THDocumentViewController *)self activeSectionController])
  {
    activeSectionController = [(THDocumentViewController *)self activeSectionController];
  }

  else
  {
    activeSectionController = [(THDocumentViewController *)self currentPresentationType];
  }

  [(THSectionController *)activeSectionController pageSize];
  v5 = v4;
  v7 = v6;
  isTwoUp = [(THDocumentViewController *)self isTwoUp];
  v9 = v5 + v5;
  if (!isTwoUp)
  {
    v9 = v5;
  }

  v10 = v7;
  result.height = v10;
  result.width = v9;
  return result;
}

- (CGRect)contentFrame
{
  v19.receiver = self;
  v19.super_class = THDocumentViewController;
  [(THDocumentViewController *)&v19 contentFrame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  if ([(THDocumentViewController *)self activeSectionController]&& [(THDocumentViewController *)self inPaginatedMode])
  {
    [(THDocumentViewController *)self p_currentSpreadSize];
    TSDScaleSizeWithinSize();
    TSDRectWithSize();
    TSDCenterRectOverRect();
    [objc_msgSend(-[THDocumentViewController interactiveCanvasController](self "interactiveCanvasController")];
    TSDRoundedPointForScale();
    v4 = v11;
    v6 = v12;
    TSDRoundedSizeForScale();
    v8 = v13;
    v10 = v14;
  }

  v15 = v4;
  v16 = v6;
  v17 = v8;
  v18 = v10;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (void)p_updatePresentationTypeAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v5 = objc_autoreleasePoolPush();
  [(THDocumentReflowableLayoutConfiguration *)[(THDocumentViewController *)self configuration] invalidate];
  [(THDocumentViewController *)self configuration];
  v6 = objc_opt_class();
  [(THDocumentViewController *)self p_currentPageSize];
  -[THDocumentReflowableLayoutConfiguration setDisableContentSpreadPages:](-[THDocumentViewController configuration](self, "configuration"), "setDisableContentSpreadPages:", [v6 spreadPagesAllowedWithViewportSize:objc_msgSend(+[THApplicationSettings sharedSettings](THApplicationSettings fontSizeIndex:{"sharedSettings"), "flowSizeScale"), v7, v8}] ^ 1);
  v9 = [objc_msgSend(objc_msgSend(-[THDocumentViewController documentRoot](self "documentRoot")];
  if ([(THDocumentViewController *)self isEpub]&& ![(THPresentationType *)[(THSectionController *)[(THDocumentViewController *)self paginatedSectionController] presentationType] isEqualIncludingSize:v9])
  {
    if (![(THDocumentViewController *)self lastStorageAnchor])
    {
      activeSectionController = [(THDocumentViewController *)self activeSectionController];
      [-[THDocumentViewController interactiveCanvasController](self "interactiveCanvasController")];
      [(THDocumentViewController *)self setLastStorageAnchor:[(THSectionController *)activeSectionController bodyAnchorForCanvasRect:?]];
    }

    [-[THDocumentViewController interactiveCanvasController](self "interactiveCanvasController")];
    v12 = v11;
    [-[THDocumentViewController interactiveCanvasController](self "interactiveCanvasController")];
    if (![(THDocumentViewController *)self inFlowMode])
    {
      [(THDocumentViewController *)self p_clearCanvas];
      [-[THDocumentViewController interactiveCanvasController](self "interactiveCanvasController")];
      [(THDocumentViewController *)self setPreventVisibleInfoUpdates:1];
    }

    [(THDocumentLinkResolver *)[(THDocumentViewController *)self documentLinkResolver] invalidatePaginationResults];
    [objc_msgSend(-[THDocumentViewController documentRoot](self "documentRoot")];
    [v9 pageSize];
    [(THPageViewProvider *)[(THDocumentViewController *)self pageViewProvider] setPageSize:v13, v14];
    [(THReflowablePaginationController *)[(THDocumentViewController *)self reflowablePaginationController] setPresentationType:v9];
    [(THSectionController *)[(THDocumentViewController *)self paginatedSectionController] setPresentationType:v9];
    [v9 pageSize];
    v16 = v15;
    [v9 pageSize];
    v18 = v17;
    [(THDocumentViewController *)self viewHeaderHeight];
    [(THDocumentViewController *)self p_resizeViewsForSize:0 duration:v16 maintainPageIndex:v18 + v19, 0.0];
    [(THReflowablePaginationController *)[(THDocumentViewController *)self reflowablePaginationController] paginate];
    if ([(THDocumentViewController *)self inFlowMode])
    {
      [-[THDocumentViewController interactiveCanvasController](self "interactiveCanvasController")];
    }

    else
    {
      [(THDocumentViewController *)self setPreventVisibleInfoUpdates:0];
      [(THDocumentViewController *)self p_updateVisibleInfosWithPaddingOptions:[(THDocumentViewController *)self p_activePagePaddingOptions] force:1];
    }

    [(THSectionController *)[(THDocumentViewController *)self activeSectionController] rectForBodyAnchor:[(THDocumentViewController *)self lastStorageAnchor]];
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v27 = v26;
    if ([(THDocumentViewController *)self inFlowMode]&& v23 <= 20.0 && [(THDocumentViewController *)self isEpub])
    {
      v23 = 0.0;
    }

    [(THDocumentViewController *)self p_setUnscaledCanvasRect:v21, v23, v25, v27];
    [-[THDocumentViewController interactiveCanvasController](self "interactiveCanvasController")];
    if (v12 != v28)
    {
      [(THDocumentViewController *)self setJustUpdatedPresentationType:1];
    }

    [-[THDocumentViewController interactiveCanvasController](self "interactiveCanvasController")];
    if (animatedCopy)
    {
      v29 = +[CATransition animation];
      [v29 setType:kCATransitionFade];
      [v29 setDuration:0.15];
      [objc_msgSend(-[THDocumentViewController canvasScrollView](self "canvasScrollView")];
    }
  }

  objc_autoreleasePoolPop(v5);
}

- (void)p_layoutCanvasForSize:(CGSize)size duration:(double)duration forceBackgroundLayout:(BOOL)layout
{
  layoutCopy = layout;
  height = size.height;
  width = size.width;
  self->mDisableContentOffsetClamping = 1;
  activeSectionController = [(THDocumentViewController *)self activeSectionController];
  if (activeSectionController == [(THDocumentViewController *)self selectedSectionController])
  {
LABEL_28:
    [(THBookNavigation *)[(THDocumentViewController *)self bookNavigationDelegate] viewsDidResize];
    self->mDisableContentOffsetClamping = 0;
    return;
  }

  [(THDocumentViewController *)self setPreventVisibleInfoUpdates:1];
  orientationAnchor = [(THDocumentViewController *)self orientationAnchor];
  if (orientationAnchor)
  {
    storageAnchorForCurrentPage = orientationAnchor;
    v13 = orientationAnchor;
  }

  else
  {
    storageAnchorForCurrentPage = [(THDocumentNavigator *)[(THDocumentViewController *)self documentNavigator] storageAnchorForCurrentPage];
  }

  if (duration <= 0.0)
  {
    v14 = 0;
  }

  else
  {
    v14 = +[CATransition animation];
    [v14 setType:kCATransitionFade];
    [v14 setDuration:duration];
  }

  [-[THDocumentViewController interactiveCanvasController](self "interactiveCanvasController")];
  if ([(THDocumentViewController *)self inFlowMode])
  {
    [-[THDocumentViewController canvasViewController](self "canvasViewController")];
    [(THDocumentViewController *)self p_fixScrollViewToMatchCanvas];
    [(THDocumentViewController *)self p_removeCanvasTransform];
  }

  [(THDocumentViewController *)self p_setActiveSectionControllerDeferVantageDidChange:duration > 0.0];
  if ([(THDocumentViewController *)self activeSectionController])
  {
    currentPresentationType = [(THDocumentViewController *)self currentPresentationType];
    v16 = +[THPresentationType paginatedPresentationTypeInContext:](THPresentationType, "paginatedPresentationTypeInContext:", [-[THDocumentViewController documentRoot](self "documentRoot")]);
    if ([(THDocumentViewController *)self showingExpandedWidgetView]&& [(THPresentationType *)currentPresentationType isEqual:v16])
    {
      v17 = [(THDocumentViewController *)self p_canvasInfoForExpandedInfo:[(THWExpandedViewController *)[(THDocumentViewController *)self expandedViewController] expandedInfo] presentationType:currentPresentationType];
      v18 = [(THDocumentViewController *)self p_contentNodeForInfo:v17 presentationType:currentPresentationType];
      v19 = [(THModelContentNode *)v18 relativePageIndexForInfo:v17 forPresentationType:currentPresentationType];
      v20 = [-[THDocumentViewController documentRoot](self "documentRoot")];
      v21 = v19;
      contentNode = v18;
    }

    else
    {
      objc_opt_class();
      v23 = TSUDynamicCast();
      objc_opt_class();
      v24 = TSUDynamicCast();
      isFlow = [(THPresentationType *)currentPresentationType isFlow];
      v26 = 0;
      if (isFlow && v24)
      {
        v26 = [v24 range] == 0;
      }

      if (!v23 && !v26)
      {
        [(THSectionController *)[(THDocumentViewController *)self activeSectionController] rectForBodyAnchor:v24];
LABEL_22:
        v32 = v27;
        v33 = v28;
        v34 = v29;
        v35 = v30;
        [(THDocumentViewController *)self setPreventVisibleInfoUpdates:0];
        [(THDocumentViewController *)self p_setUnscaledCanvasRect:v32, v33, v34, v35];
        [(THDocumentViewController *)self setVisibleRelativePageRange:NSInvalidRange[0], NSInvalidRange[1]];
        [(THDocumentViewController *)self p_updateVisibleInfos];
        interactiveCanvasController = [(THDocumentViewController *)self interactiveCanvasController];
        if (layoutCopy)
        {
          [interactiveCanvasController popThreadedLayoutAndRenderDisabled];
          [-[THDocumentViewController interactiveCanvasController](self "interactiveCanvasController")];
        }

        else
        {
          [interactiveCanvasController layoutIfNeeded];
          [-[THDocumentViewController interactiveCanvasController](self "interactiveCanvasController")];
        }

        [(THDocumentViewController *)self p_updateNavigationOverlayContainerFrame];
        [(THDocumentViewController *)self p_updatePageNumberViewPositionsForSize:width, height];
        if (duration > 0.0)
        {
          +[CATransaction begin];
          [CATransaction setAnimationDuration:duration];
          v37[0] = _NSConcreteStackBlock;
          v37[1] = 3221225472;
          v37[2] = sub_ED24;
          v37[3] = &unk_45AE00;
          v37[4] = self;
          [CATransaction setCompletionBlock:v37];
          [objc_msgSend(-[THDocumentViewController canvasScrollView](self "canvasScrollView")];
          +[CATransaction commit];
        }

        [(THDocumentViewController *)self setOrientationAnchor:storageAnchorForCurrentPage];
        goto LABEL_28;
      }

      v31 = [-[THDocumentViewController documentRoot](self "documentRoot")];
      contentNode = [(THModelBoundAnchor *)storageAnchorForCurrentPage contentNode];
      v20 = v31;
      v21 = 0;
    }

    -[THSectionController canvasRectForRelativePageIndex:](-[THDocumentViewController activeSectionController](self, "activeSectionController"), "canvasRectForRelativePageIndex:", [v20 navigationUnitRelativePageIndexForContentNodeRelativePageIndex:v21 inContentNode:contentNode forPresentationType:currentPresentationType]);
    goto LABEL_22;
  }
}

- (void)p_setupPageNumberViews
{
  if ([(THDocumentViewController *)self contentPageNumberView])
  {
    if ([(THDocumentViewController *)self contentPageNumberView])
    {
      [-[THDocumentViewController view](self "view")];
    }
  }

  else
  {
    self->mContentPageNumberView = [[THPageNumberView alloc] initWithPosition:CGPointZero.x, CGPointZero.y];
    [-[THDocumentViewController view](self "view")];
  }

  if (![(THDocumentViewController *)self navOverlayPageNumberView])
  {
    self->mNavOverlayPageNumberView = [[THPageNumberView alloc] initWithPosition:CGPointZero.x, CGPointZero.y];
  }

  [-[THDocumentViewController view](self "view")];

  [(THDocumentViewController *)self p_updatePageNumberViewPositionsForSize:v3, v4];
}

- (void)p_setupNavOverlayContainer
{
  if (![(THDocumentViewController *)self navigationOverlayContainer])
  {
    self->mNavigationOverlayContainer = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    goto LABEL_5;
  }

  if ([(THDocumentViewController *)self navigationOverlayContainer])
  {
LABEL_5:
    [-[THDocumentViewController view](self "view")];
  }

  [(THDocumentViewController *)self p_updateNavigationOverlayContainerFrame];
}

- (BOOL)p_updateScrollViewClipsToBounds
{
  v3 = OBJC_IVAR___TSADocumentViewController__scrollView;
  clipsToBounds = [*&self->TSADocumentViewController_opaque[OBJC_IVAR___TSADocumentViewController__scrollView] clipsToBounds];
  if ([(THDocumentViewController *)self p_allowsPinchZoom])
  {
    v5 = 0;
  }

  else
  {
    v5 = [(THDocumentViewController *)self p_allowsPageDisplacement]^ 1;
  }

  [*&self->TSADocumentViewController_opaque[v3] setClipsToBounds:v5];
  return clipsToBounds ^ v5;
}

- (CGRect)p_contentFrameFrameForSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  remainder.origin = CGPointZero;
  remainder.size = size;
  [(THDocumentViewController *)self viewHeaderHeight];
  if (v6 > 0.0)
  {
    v7 = v6;
    size = CGRectZero.size;
    v24.origin = CGRectZero.origin;
    v24.size = size;
    x = remainder.origin.x;
    size.width = remainder.origin.y;
    v10 = width;
    v11 = height;
    CGRectDivide(*(&size - 8), &v24, &remainder, v7, CGRectMinYEdge);
  }

  if ([(THDocumentViewController *)self activeSectionController]&& [(THDocumentViewController *)self inPaginatedMode])
  {
    [(THDocumentViewController *)self p_currentSpreadSize];
    TSDScaleSizeWithinSize();
    TSDRectWithSize();
    TSDCenterRectOverRect();
    remainder.origin.x = v12;
    remainder.origin.y = v13;
    remainder.size.width = v14;
    remainder.size.height = v15;
    [objc_msgSend(-[THDocumentViewController interactiveCanvasController](self "interactiveCanvasController")];
    TSDRoundedPointForScale();
    remainder.origin.x = v16;
    remainder.origin.y = v17;
    TSDRoundedSizeForScale();
    remainder.size.width = v18;
    remainder.size.height = v19;
  }

  v20 = remainder.origin.x;
  y = remainder.origin.y;
  v22 = remainder.size.width;
  v23 = remainder.size.height;
  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = y;
  result.origin.x = v20;
  return result;
}

- (void)p_adjustContentViewFrameForSize:(CGSize)size
{
  [(THDocumentViewController *)self p_contentFrameFrameForSize:size.width, size.height];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = OBJC_IVAR___TSADocumentViewController__scrollView;
  [*&self->TSADocumentViewController_opaque[OBJC_IVAR___TSADocumentViewController__scrollView] frame];
  v14 = v13;
  [*&self->TSADocumentViewController_opaque[v12] frame];
  v22.origin.x = v15;
  v22.origin.y = v16;
  v22.size.width = v17;
  v22.size.height = v18;
  v21.origin.x = v5;
  v21.origin.y = v7;
  v21.size.width = v9;
  v21.size.height = v11;
  if (!CGRectEqualToRect(v21, v22))
  {
    [*&self->TSADocumentViewController_opaque[v12] setFrame:{v5, v7, v9, v11}];
  }

  [objc_msgSend(objc_msgSend(-[THDocumentViewController interactiveCanvasController](self "interactiveCanvasController")];
  [-[THDocumentViewController interactiveCanvasController](self "interactiveCanvasController")];
  if (v11 != v14 && [(THDocumentViewController *)self shouldAutoscrollToSelectionOnContentViewSizeChange]&& v11 < v14)
  {
    interactiveCanvasController = [(THDocumentViewController *)self interactiveCanvasController];

    [interactiveCanvasController setShouldAutoscrollToSelectionAfterLayout:1];
  }
}

- (void)p_updateScrollViewForSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v6 = *&CGAffineTransformIdentity.c;
  v40[0] = *&CGAffineTransformIdentity.a;
  v40[1] = v6;
  v40[2] = *&CGAffineTransformIdentity.tx;
  v7 = OBJC_IVAR___TSADocumentViewController__scrollView;
  [*&self->TSADocumentViewController_opaque[OBJC_IVAR___TSADocumentViewController__scrollView] setTransform:v40];
  [(THDocumentViewController *)self p_adjustContentViewFrameForSize:width, height];
  [*&self->TSADocumentViewController_opaque[v7] setPagingEnabled:{-[THDocumentViewController shouldPagingBeEnabled](self, "shouldPagingBeEnabled")}];
  [(THDocumentViewController *)self p_updateScrollViewClipsToBounds];
  if ([(THDocumentViewController *)self configuration])
  {
    [(THDocumentReflowableLayoutConfiguration *)[(THDocumentViewController *)self configuration] scrubberFrame];
    x = CGRectZero.origin.x;
    y = CGRectZero.origin.y;
    v14 = CGRectZero.size.width;
    v15 = CGRectZero.size.height;
  }

  else
  {
    x = CGRectZero.origin.x;
    y = CGRectZero.origin.y;
    v14 = CGRectZero.size.width;
    v15 = CGRectZero.size.height;
    v11 = v15;
    v10 = v14;
    v9 = y;
    v8 = CGRectZero.origin.x;
  }

  v16 = CGRectEqualToRect(*&v8, *&x);
  v17 = *&self->TSADocumentViewController_opaque[v7];
  if (v16)
  {
    [v17 frame];
    v36 = v19;
    v37 = v18;
    rect = v20;
    v22 = v21;
    [-[THDocumentViewController view](self "view")];
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v35 = v29;
    [*&self->TSADocumentViewController_opaque[v7] setShowsHorizontalScrollIndicator:1];
    [*&self->TSADocumentViewController_opaque[v7] setShowsVerticalScrollIndicator:1];
    v41.origin.x = v24;
    v41.origin.y = v26;
    v41.size.width = v28;
    v41.size.height = v30;
    MinY = CGRectGetMinY(v41);
    v42.origin.x = v37;
    v42.origin.y = rect;
    v42.size.width = v36;
    v42.size.height = v22;
    v38 = MinY - CGRectGetMinY(v42);
    v43.origin.x = v37;
    v43.origin.y = rect;
    v43.size.width = v36;
    v43.size.height = v22;
    MaxY = CGRectGetMaxY(v43);
    v44.origin.x = v24;
    v44.origin.y = v26;
    v44.size.width = v28;
    v44.size.height = v35;
    v33 = MaxY - CGRectGetMaxY(v44);
    v45.origin.x = v37;
    v45.origin.y = rect;
    v45.size.width = v36;
    v45.size.height = v22;
    MaxX = CGRectGetMaxX(v45);
    v46.origin.x = v24;
    v46.origin.y = v26;
    v46.size.width = v28;
    v46.size.height = v35;
    [*&self->TSADocumentViewController_opaque[v7] setScrollIndicatorInsets:{v38, 0.0, v33, MaxX - CGRectGetMaxX(v46)}];
  }

  else
  {
    [v17 setShowsHorizontalScrollIndicator:0];
    [*&self->TSADocumentViewController_opaque[v7] setShowsVerticalScrollIndicator:0];
  }
}

- (void)p_ensureVisibleAbsolutePhysicalPageIndexFromFullscreen
{
  if (![(THDocumentViewController *)self showingExpandedWidgetView])
  {
    if ([(THDocumentViewController *)self lastAbsolutePageIndex]== 0x7FFFFFFFFFFFFFFFLL)
    {
      currentAbsolutePageIndex = [(THDocumentViewController *)self currentAbsolutePageIndex];
    }

    else
    {
      currentAbsolutePageIndex = [(THDocumentViewController *)self lastAbsolutePageIndex];
    }

    v14 = currentAbsolutePageIndex;
    [(THDocumentViewController *)self setLastAbsolutePageIndex:0x7FFFFFFFFFFFFFFFLL];
    if (v14 == 0x7FFFFFFFFFFFFFFFLL)
    {
      return;
    }

LABEL_21:
    documentNavigator = [(THDocumentViewController *)self documentNavigator];

    [(THDocumentNavigator *)documentNavigator setVisibleAbsolutePhysicalPageIndex:v14];
    return;
  }

  v21 = +[THPresentationType paginatedPresentationTypeInContext:](THPresentationType, "paginatedPresentationTypeInContext:", [-[THDocumentViewController documentRoot](self "documentRoot")]);
  v3 = [(THDocumentViewController *)self p_canvasInfoForExpandedInfo:[(THWExpandedViewController *)[(THDocumentViewController *)self expandedViewController] expandedInfo] presentationType:v21];
  if (![(THDocumentViewController *)self isEpub])
  {
    if ([(THDocumentViewController *)self inFlowMode])
    {
      v13 = [(THDocumentViewController *)self expandableRepForInfo:v3];
      if (v13)
      {
        [v13 frameInUnscaledCanvas];

        [(THDocumentViewController *)self p_setUnscaledCanvasRect:?];
        return;
      }
    }

    v16 = [(THDocumentViewController *)self p_contentNodeForInfo:v3 presentationType:v21];
    if (!v16)
    {
      return;
    }

    v14 = [objc_msgSend(-[THDocumentViewController documentRoot](self "documentRoot")];
    [-[THDocumentViewController interactiveCanvasController](self "interactiveCanvasController")];
    v18 = v17;
    [(THDocumentViewController *)self zoomedOutViewScale];
    if (vabdd_f64(v18, v19) >= 0.00999999978 && [(THDocumentViewController *)self currentAbsolutePageIndex]== v14)
    {
      return;
    }

    goto LABEL_21;
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = [-[THDocumentViewController currentNavigationUnit](self "currentNavigationUnit")];
  v4 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v4)
  {
    v5 = *v28;
LABEL_5:
    v6 = 0;
    while (1)
    {
      if (*v28 != v5)
      {
        objc_enumerationMutation(obj);
      }

      v7 = *(*(&v27 + 1) + 8 * v6);
      v23 = 0;
      v24 = &v23;
      v25 = 0x2020000000;
      v26 = 0;
      v8 = [v7 bodyStorageForPresentationType:v21];
      v9 = objc_opt_class();
      range = [v8 range];
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_F7E4;
      v22[3] = &unk_45AF98;
      v22[4] = v3;
      v22[5] = self;
      v22[6] = v7;
      v22[7] = &v23;
      [v8 enumerateAttachmentsOfClass:v9 inTextRange:range usingBlock:{v11, v22}];
      LOBYTE(v7) = *(v24 + 24);
      _Block_object_dispose(&v23, 8);
      if (v7)
      {
        break;
      }

      if (v4 == ++v6)
      {
        v4 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
        if (v4)
        {
          goto LABEL_5;
        }

        return;
      }
    }
  }
}

- (void)p_resizeViewsForSize:(CGSize)size duration:(double)duration maintainPageIndex:(BOOL)index
{
  indexCopy = index;
  height = size.height;
  width = size.width;
  [(THDocumentViewController *)self updateTwoUpForSize:?];
  [(THDocumentViewController *)self p_releaseOverscrollViews];
  [(THDocumentViewController *)self p_layoutCanvasForSize:0 duration:width forceBackgroundLayout:height, duration];
  [(THDocumentViewController *)self p_dismissActiveAnimated:1];
  [(THDocumentViewController *)self p_setupPageNumberViews];
  [(THDocumentViewController *)self p_setupNavOverlayContainer];
  [(THDocumentViewController *)self p_updateScrollViewAndZoomSettingsForSize:width, height];
  [(THDocumentViewController *)self zoomOutAnimated:0];
  [(THDocumentViewController *)self p_updatePageNumberingForce:1];
  if (indexCopy)
  {
    [(THDocumentViewController *)self p_ensureVisibleAbsolutePhysicalPageIndexFromFullscreen];
  }

  [(THDocumentViewController *)self p_setupOverscrollViews];
}

- (void)p_dismissActiveAnimated:(BOOL)animated
{
  if ([(TSWPopoverController *)self->mPopUpPopoverController shouldDismissWhileRotating:self->mIsRotating])
  {
    [(TSWPopoverController *)self->mPopUpPopoverController dismissPopoverAnimated:0];
  }

  objc_opt_class();
  [objc_msgSend(-[THDocumentViewController interactiveCanvasController](self "interactiveCanvasController")];
  [TSUDynamicCast() dismissActivePopovers];
  interactiveCanvasController = [(THDocumentViewController *)self interactiveCanvasController];

  [interactiveCanvasController endEditing];
}

- (id)currentNavigationUnit
{
  activeSectionController = [(THDocumentViewController *)self activeSectionController];

  return [(THSectionController *)activeSectionController currentNavigationUnit];
}

- (void)setCurrentNavigationUnit:(id)unit
{
  if ([(THDocumentViewController *)self currentNavigationUnit]!= unit)
  {
    [(THDocumentViewController *)self p_releaseOverscrollViews];
    [(THDocumentViewController *)self p_clearCanvas];
    [(THSectionController *)[(THDocumentViewController *)self paginatedSectionController] setCurrentNavigationUnit:unit];
    [(THSectionController *)[(THDocumentViewController *)self flowSectionController] setCurrentNavigationUnit:unit];
    if (![(THDocumentViewController *)self isEpub])
    {
      -[THToolbarDelegate setCenterTitle:](-[THDocumentViewController toolbarDelegate](self, "toolbarDelegate"), "setCenterTitle:", [objc_msgSend(-[THDocumentViewController documentRoot](self "documentRoot")]);
    }

    if ([(THDocumentViewController *)self activeSectionController]|| ([(THDocumentViewController *)self p_setActiveSectionControllerDeferVantageDidChange:0], [(THDocumentViewController *)self activeSectionController]))
    {
      if ([(THDocumentViewController *)self inFlowMode])
      {
        [(THDocumentViewController *)self p_updateVisibleInfos];
      }

      [(THDocumentViewController *)self p_windowOrViewSize];
      [(THDocumentViewController *)self p_updateScrollViewAndZoomSettingsForSize:?];
      [(THDocumentViewController *)self zoomOutAnimated:0];
      [(THDocumentViewController *)self navigationUnitDidChange:unit];
      [(THDocumentViewController *)self p_updateProgressKitForNewNavigationUnit:unit];

      [(THDocumentViewController *)self p_setupOverscrollViews];
    }
  }
}

- (void)setCurrentNavigationUnit:(id)unit withRelativePageIndex:(unint64_t)index animated:(BOOL)animated
{
  [(THDocumentViewController *)self setCurrentNavigationUnit:unit, index, animated];
  [(THSectionController *)[(THDocumentViewController *)self activeSectionController] canvasRectForRelativePageIndex:index];
  [(THDocumentViewController *)self p_setUnscaledCanvasRect:?];
  documentNavigator = [(THDocumentViewController *)self documentNavigator];

  [(THDocumentNavigator *)documentNavigator setVisitedPagesAfterOpening:1];
}

- (void)navigationUnitDidChange:(id)change
{
  [(THBookNavigation *)[(THDocumentViewController *)self bookNavigationDelegate] navigationUnitDidChange:change];
  documentNavigator = [(THDocumentViewController *)self documentNavigator];

  [(THDocumentNavigator *)documentNavigator setVisitedPagesAfterOpening:1];
}

- (void)recordOutgoingMajorNavigationJump
{
  bookNavigationDelegate = [(THDocumentViewController *)self bookNavigationDelegate];

  [(THBookNavigation *)bookNavigationDelegate recordOutgoingMajorNavigationJump];
}

- (void)viewsDidResize
{
  bookNavigationDelegate = [(THDocumentViewController *)self bookNavigationDelegate];

  [(THBookNavigation *)bookNavigationDelegate viewsDidResize];
}

- (void)recordCurrentLocationInHistory
{
  bookNavigationDelegate = [(THDocumentViewController *)self bookNavigationDelegate];

  [(THBookNavigation *)bookNavigationDelegate recordCurrentLocationInHistory];
}

- (void)updateNavigationAffordances
{
  bookNavigationDelegate = [(THDocumentViewController *)self bookNavigationDelegate];

  [(THBookNavigation *)bookNavigationDelegate updateNavigationAffordances];
}

- (unint64_t)currentChapter
{
  v3 = [objc_msgSend(-[THDocumentViewController documentRoot](self "documentRoot")];
  if (!v3)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v4 = v3;
  if (![(THDocumentViewController *)self currentNavigationUnit])
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  currentNavigationUnit = [(THDocumentViewController *)self currentNavigationUnit];

  return [v4 indexOfObjectIdenticalTo:currentNavigationUnit];
}

- (unint64_t)currentLesson
{
  if (![objc_msgSend(-[THDocumentViewController documentRoot](self "documentRoot")] || !-[THDocumentViewController currentNavigationUnit](self, "currentNavigationUnit") || !-[THDocumentViewController currentContentNode](self, "currentContentNode"))
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v3 = [-[THDocumentViewController currentNavigationUnit](self "currentNavigationUnit")];
  currentContentNode = [(THDocumentViewController *)self currentContentNode];

  return [v3 indexOfObjectIdenticalTo:currentContentNode];
}

- (unint64_t)currentTOCLessonIndex
{
  if (![objc_msgSend(-[THDocumentViewController documentRoot](self "documentRoot")])
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  if (![(THDocumentViewController *)self currentNavigationUnit])
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  if (![(THDocumentViewController *)self currentContentNode])
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  currentNavigationUnit = [-[THDocumentViewController currentNavigationUnit](self currentNavigationUnit];
  v4 = [currentNavigationUnit countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (!v4)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v5 = v4;
  v6 = 0;
  v7 = *v13;
LABEL_6:
  v8 = 0;
  v9 = v6;
  v6 += v5;
  while (1)
  {
    if (*v13 != v7)
    {
      objc_enumerationMutation(currentNavigationUnit);
    }

    v10 = *(*(&v12 + 1) + 8 * v8);
    if (v10 == [(THDocumentViewController *)self currentContentNode])
    {
      return v9;
    }

    ++v9;
    if (v5 == ++v8)
    {
      v5 = [currentNavigationUnit countByEnumeratingWithState:&v12 objects:v16 count:16];
      v9 = 0x7FFFFFFFFFFFFFFFLL;
      if (v5)
      {
        goto LABEL_6;
      }

      return v9;
    }
  }
}

- (CGRect)canvasPreviewFrameForDocumentManager
{
  interactiveCanvasController = [(THDocumentViewController *)self interactiveCanvasController];

  [interactiveCanvasController visibleUnscaledRect];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (BOOL)inFlowMode
{
  currentPresentationType = [(THDocumentViewController *)self currentPresentationType];

  return [(THPresentationType *)currentPresentationType isFlow];
}

- (BOOL)inPaginatedMode
{
  currentPresentationType = [(THDocumentViewController *)self currentPresentationType];

  return [(THPresentationType *)currentPresentationType isPaginated];
}

- (BOOL)shouldPagingBeEnabled
{
  v3 = [-[THDocumentViewController canvasViewController](self "canvasViewController")];
  inPaginatedMode = [(THDocumentViewController *)self inPaginatedMode];
  if (inPaginatedMode)
  {
    if ([v3 allowsPinchZoom])
    {
      [v3 viewScale];
      v6 = v5;
      [v3 minimumPinchViewScale];
      LOBYTE(inPaginatedMode) = vabdd_f64(v6, v7) < 0.00999999978;
    }

    else
    {
      LOBYTE(inPaginatedMode) = 1;
    }
  }

  return inPaginatedMode;
}

- (double)currentViewScale
{
  interactiveCanvasController = [(THDocumentViewController *)self interactiveCanvasController];

  [interactiveCanvasController viewScale];
  return result;
}

- (double)zoomedInViewScale
{
  v2 = [-[THDocumentViewController canvasViewController](self "canvasViewController")];

  [v2 maximumPinchViewScale];
  return result;
}

- (double)zoomedOutViewScale
{
  v2 = [-[THDocumentViewController canvasViewController](self "canvasViewController")];

  [v2 minimumPinchViewScale];
  return result;
}

- (double)fitWidthViewScale
{
  [(THDocumentViewController *)self p_currentSpreadSize];
  v4 = v3;
  [(THDocumentViewController *)self p_maxScrollViewSize];
  return v5 / v4;
}

- (double)fitHeightViewScale
{
  [(THDocumentViewController *)self p_currentSpreadSize];
  v4 = v3;
  [(THDocumentViewController *)self p_maxScrollViewSize];
  return v5 / v4;
}

- (void)popMinimizeLayoutPadding
{
  minimizeLayoutPadding = self->_minimizeLayoutPadding;
  if (minimizeLayoutPadding >= 1)
  {
    self->_minimizeLayoutPadding = --minimizeLayoutPadding;
  }

  if (!minimizeLayoutPadding && [(THDocumentViewController *)self interactiveCanvasController])
  {

    [(THDocumentViewController *)self p_updateVisibleInfos];
  }
}

- (void)setPerformanceModeBookOpening:(BOOL)opening
{
  if (self->_performanceModeBookOpening != opening)
  {
    self->_performanceModeBookOpening = opening;
    [(THDocumentViewController *)self p_performanceModeUpdated];
  }
}

- (void)p_performanceModeUpdated
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  interactiveCanvasController = [objc_msgSend(-[THDocumentViewController interactiveCanvasController](self interactiveCanvasController];
  v4 = [interactiveCanvasController countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(interactiveCanvasController);
        }

        [*(*(&v8 + 1) + 8 * i) recursivelyPerformSelector:"performanceModeChanged"];
      }

      v5 = [interactiveCanvasController countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }

  [-[THDocumentViewController interactiveCanvasController](self "interactiveCanvasController")];
  [-[THDocumentViewController interactiveCanvasController](self "interactiveCanvasController")];
}

- (void)validateCommand:(id)command
{
  v9.receiver = self;
  v9.super_class = THDocumentViewController;
  [(THDocumentViewController *)&v9 validateCommand:?];
  action = [command action];
  if (sel_isEqual(action, "books_toggleContinuousScroll:"))
  {
    isScroll = [(THDocumentReflowableLayoutConfiguration *)[(THDocumentViewController *)self configuration] isScroll];
LABEL_5:
    [command setState:isScroll];
    return;
  }

  if (sel_isEqual(action, "books_disableContinuousScroll:"))
  {
    isScroll = [(THDocumentReflowableLayoutConfiguration *)[(THDocumentViewController *)self configuration] isScroll]^ 1;
    goto LABEL_5;
  }

  if (sel_isEqual(action, "books_enableContinuousScroll:"))
  {
    [command setState:{-[THDocumentReflowableLayoutConfiguration isScroll](-[THDocumentViewController configuration](self, "configuration"), "isScroll")}];
    v7 = THBundle();
    v8 = @"Vertical Scrolling";
  }

  else if (sel_isEqual(action, "books_chapterLeft:"))
  {
    v7 = THBundle();
    v8 = @"Previous Chapter";
  }

  else
  {
    if (!sel_isEqual(action, "books_chapterRight:"))
    {
      return;
    }

    v7 = THBundle();
    v8 = @"Next Chapter";
  }

  [command setTitle:{objc_msgSend(v7, "localizedStringForKey:value:table:", v8, &stru_471858, 0)}];
}

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  v9.receiver = self;
  v9.super_class = THDocumentViewController;
  v6 = [(THDocumentViewController *)&v9 canPerformAction:action withSender:sender];
  if (sel_isEqual(action, "copy:"))
  {
    if (v6)
    {
      return [(THDocumentViewController *)self canCopy];
    }

    return 0;
  }

  if (sel_isEqual(action, "books_toggleContinuousScroll:") || sel_isEqual(action, "books_disableContinuousScroll:") || sel_isEqual(action, "books_enableContinuousScroll:"))
  {
    if (v6)
    {
      return [(THDocumentViewController *)self isEpub];
    }

    return 0;
  }

  if (sel_isEqual(action, "books_addHighlight:"))
  {
    if (v6)
    {
      return [-[THDocumentViewController interactiveCanvasController](self "interactiveCanvasController")];
    }

    return 0;
  }

  isEqual = sel_isEqual(action, "books_addNote:");
  if ((isEqual & v6) == 1)
  {
    return [-[THDocumentViewController interactiveCanvasController](self "interactiveCanvasController")];
  }

  else
  {
    return !isEqual & v6;
  }
}

- (void)books_toggleContinuousScroll:(id)scroll
{
  if ([(THDocumentReflowableLayoutConfiguration *)[(THDocumentViewController *)self configuration] isScroll])
  {

    [(THDocumentViewController *)self books_disableContinuousScroll:scroll];
  }

  else
  {

    [(THDocumentViewController *)self books_enableContinuousScroll:scroll];
  }
}

- (void)changeAnnotationStyle:(id)style
{
  interactiveCanvasController = [(THDocumentViewController *)self interactiveCanvasController];

  [interactiveCanvasController changeAnnotationStyle:style];
}

- (void)removeNoteAndHighlight:(id)highlight
{
  interactiveCanvasController = [(THDocumentViewController *)self interactiveCanvasController];

  [interactiveCanvasController removeNoteAndHighlight:highlight];
}

- (void)removeNote:(id)note
{
  interactiveCanvasController = [(THDocumentViewController *)self interactiveCanvasController];

  [interactiveCanvasController removeNote:note];
}

- (void)books_addHighlight:(id)highlight
{
  interactiveCanvasController = [(THDocumentViewController *)self interactiveCanvasController];

  [interactiveCanvasController addHighlight:highlight];
}

- (void)books_addNote:(id)note
{
  interactiveCanvasController = [(THDocumentViewController *)self interactiveCanvasController];

  [interactiveCanvasController addNote:note];
}

- (void)books_pageForward:(id)forward
{
  interactiveCanvasController = [(THDocumentViewController *)self interactiveCanvasController];

  [interactiveCanvasController navigateToNextPage];
}

- (void)books_pageBackward:(id)backward
{
  interactiveCanvasController = [(THDocumentViewController *)self interactiveCanvasController];

  [interactiveCanvasController navigateToPreviousPage];
}

- (void)books_chapterForward:(id)forward
{
  interactiveCanvasController = [(THDocumentViewController *)self interactiveCanvasController];

  [interactiveCanvasController navigateToNextChapter];
}

- (void)books_chapterBackward:(id)backward
{
  interactiveCanvasController = [(THDocumentViewController *)self interactiveCanvasController];

  [interactiveCanvasController navigateToPreviousChapter];
}

- (BOOL)p_isCompactFlowPresentation
{
  if (![(THDocumentViewController *)self compactFlowPresentationState])
  {
    if ([(THDocumentViewController *)self paginatedSectionController])
    {
      activeSectionController = [(THDocumentViewController *)self activeSectionController];
      if (activeSectionController == [(THDocumentViewController *)self flowSectionController])
      {
        v4 = 1;
        if (![(THDocumentViewController *)self th_cachedIsCompactWidth])
        {
          if ([(THDocumentViewController *)self th_cachedIsCompactHeight])
          {
            v4 = 1;
          }

          else
          {
            v4 = 2;
          }
        }
      }

      else
      {
        v4 = 2;
      }
    }

    else
    {
      v4 = 1;
    }

    [(THDocumentViewController *)self setCompactFlowPresentationState:v4];
  }

  return [(THDocumentViewController *)self compactFlowPresentationState]== 1;
}

- (BOOL)p_isCompactFlowPresentationForSectionController:(id)controller
{
  if ([(THDocumentViewController *)self activeSectionController]== controller)
  {

    return [(THDocumentViewController *)self p_isCompactFlowPresentation];
  }

  else
  {
    if (![(THDocumentViewController *)self paginatedSectionController])
    {
      return 1;
    }

    if ([(THDocumentViewController *)self flowSectionController]!= controller)
    {
      return 0;
    }

    if (![(THDocumentViewController *)self th_cachedIsCompactWidth])
    {

      return [(THDocumentViewController *)self th_cachedIsCompactHeight];
    }

    else
    {
      return 1;
    }
  }
}

- (id)selectedSectionController
{
  if (self->_flowSectionController && (![(THDocumentViewController *)self paginatedSectionController]|| [(THDocumentViewController *)self showFlowModeIfAvailable]))
  {

    return [(THDocumentViewController *)self flowSectionController];
  }

  else
  {

    return [(THDocumentViewController *)self paginatedSectionController];
  }
}

- (void)toggleFlowPresentation
{
  if (self->_flowSectionController)
  {
    if ([(THDocumentViewController *)self showFlowModeIfAvailable])
    {

      [(THDocumentViewController *)self p_setPagedPresentation];
    }

    else
    {

      [(THDocumentViewController *)self p_setFlowPresentation];
    }
  }
}

- (void)p_setFlowPresentation
{
  if (![(THDocumentViewController *)self showFlowModeIfAvailable])
  {
    [(THDocumentViewController *)self setShowFlowModeIfAvailable:1];

    [(THDocumentViewController *)self p_presentationStyleChanged];
  }
}

- (void)p_setPagedPresentation
{
  if ([(THDocumentViewController *)self showFlowModeIfAvailable])
  {
    [(THDocumentViewController *)self setShowFlowModeIfAvailable:0];

    [(THDocumentViewController *)self p_presentationStyleChanged];
  }
}

- (void)p_presentationStyleChanged
{
  v3 = +[NSUserDefaults standardUserDefaults];
  if ([(THDocumentViewController *)self showFlowModeIfAvailable])
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  [(NSUserDefaults *)v3 setInteger:v4 forKey:THDocumentLayoutKey];
  [(THDocumentViewController *)self setLastAbsolutePageIndex:[(THDocumentViewController *)self currentAbsolutePageIndex]];
  [-[THDocumentViewController view](self "view")];
  [(THDocumentViewController *)self p_resizeViewsForSize:1 duration:v5 maintainPageIndex:v6, 0.25];
  [(THDocumentViewController *)self p_resetPageDisplacment];
  [(THDocumentViewController *)self p_updateWidgetInteractionMode];
  [(THDocumentViewController *)self p_updateScrubberCheckToolbarState:1];
  guidedPanController = [(THDocumentViewController *)self guidedPanController];

  [(THGuidedPanController *)guidedPanController setTarget:0];
}

- (void)p_setActiveSectionControllerDeferVantageDidChange:(BOOL)change
{
  changeCopy = change;
  selectedSectionController = [(THDocumentViewController *)self selectedSectionController];
  if ([(THDocumentViewController *)self activeSectionController]!= selectedSectionController)
  {

    self->_configuration = 0;
    if ([(THDocumentViewController *)self activeSectionController]&& ![(THPresentationType *)[(THSectionController *)[(THDocumentViewController *)self activeSectionController] presentationType] isEqual:[(THSectionController *)selectedSectionController presentationType]])
    {
      [(THBookNavigation *)[(THDocumentViewController *)self bookNavigationDelegate] vantageWillChangeBy:self reason:@"THVantageChangeReasonPresentationMode"];
      v6 = 0;
    }

    else
    {
      v6 = 1;
    }

    [(THDocumentViewController *)self setActiveSectionController:selectedSectionController];
    [(THDocumentViewController *)self setCompactFlowPresentationState:0];
    v7 = +[UIColor clearColor];
    isFlow = [(THPresentationType *)[(THDocumentViewController *)self currentPresentationType] isFlow];
    if ((isFlow & 1) != 0 || [(THDocumentViewController *)self isEpub])
    {
      v7 = [-[THThemeDelegate theme](-[THDocumentViewController themeDelegate](self "themeDelegate")];
    }

    [objc_msgSend(-[THDocumentViewController interactiveCanvasController](self "interactiveCanvasController")];
    if (![(THDocumentViewController *)self isEpub])
    {
      if ((isFlow & 1) == 0)
      {
        v7 = +[UIColor clearColor];
      }

      [-[THDocumentViewController view](self "view")];
    }

    if ([-[THDocumentViewController documentRoot](self "documentRoot")])
    {
      [(THDocumentViewController *)self corruptBookAlert];

      [(THDocumentViewController *)self setActiveSectionController:0];
    }

    else
    {
      [(THDocumentViewController *)self p_updateScrollViewDecelerationRate];
      [-[THDocumentViewController interactiveCanvasController](self "interactiveCanvasController")];
      [-[THDocumentViewController interactiveCanvasController](self "interactiveCanvasController")];
      [(THDocumentViewController *)self p_updateCanvasSize];
      if (((v6 | changeCopy) & 1) == 0)
      {
        bookNavigationDelegate = [(THDocumentViewController *)self bookNavigationDelegate];

        [(THBookNavigation *)bookNavigationDelegate vantageDidChangeBy:self reason:@"THVantageChangeReasonPresentationMode"];
      }
    }
  }
}

- (CGSize)p_desiredCanvasSize
{
  [(THSectionController *)[(THDocumentViewController *)self activeSectionController] preferredCanvasSize];
  v4 = v3;
  v6 = v5;
  if ([(THDocumentViewController *)self inFlowMode])
  {
    [(THDocumentViewController *)self p_currentSpreadSize];
    if (v6 < v7)
    {
      v6 = v7;
    }
  }

  v8 = v4;
  v9 = v6;
  result.height = v9;
  result.width = v8;
  return result;
}

- (void)p_updateCanvasSize
{
  [(THDocumentViewController *)self p_desiredCanvasSize];
  v4 = v3;
  v6 = v5;
  [objc_msgSend(objc_msgSend(-[THDocumentViewController interactiveCanvasController](self "interactiveCanvasController")];
  v9 = v8 == v4 && v7 == v6;
  if (!v9 && !self->mOverscrollAnimationInProcess)
  {
    self->mPreventScrollViewDidScrollReentrance = 1;
    [objc_msgSend(objc_msgSend(-[THDocumentViewController interactiveCanvasController](self "interactiveCanvasController")];
    self->mPreventScrollViewDidScrollReentrance = 0;

    [(THDocumentViewController *)self p_setupOverscrollViews];
  }
}

- (CGSize)p_maxScrollViewSizeForViewSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  [(THDocumentViewController *)self viewHeaderHeight];
  v6 = height - v5;
  v7 = width;
  result.height = v6;
  result.width = v7;
  return result;
}

- (CGSize)p_maxScrollViewSize
{
  [(THDocumentViewController *)self p_windowOrViewSize];

  [(THDocumentViewController *)self p_maxScrollViewSizeForViewSize:?];
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGSize)p_windowOrViewSize
{
  view = [(THDocumentViewController *)self view];
  window = [view window];
  if (window)
  {
    [window bounds];
  }

  else
  {
    [view frame];
  }

  v6 = v4;
  v7 = v5;
  result.height = v7;
  result.width = v6;
  return result;
}

- (void)zoomOutAnimated:(BOOL)animated
{
  animatedCopy = animated;
  if ([(THDocumentViewController *)self activeSectionController])
  {
    [objc_msgSend(-[THDocumentViewController canvasViewController](self "canvasViewController")];
    v6 = v5;
    [-[THDocumentViewController interactiveCanvasController](self "interactiveCanvasController")];
    [-[THDocumentViewController interactiveCanvasController](self "interactiveCanvasController")];
    if (!animatedCopy)
    {

      [(THDocumentViewController *)self p_canvasDidZoom];
    }
  }
}

- (void)zoomOutIfNecessaryPriorToNavigation
{
  if ([(THDocumentViewController *)self interactiveCanvasControllerShouldAllowZoomToColumn:[(THDocumentViewController *)self interactiveCanvasController]]|| [(THDocumentViewController *)self p_allowsPinchZoom])
  {

    [(THDocumentViewController *)self zoomOutAnimated:0];
  }
}

- (void)zoomOutIfNecessaryAnimated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  [(THDocumentViewController *)self currentViewScale];
  v8 = v7;
  [(THDocumentViewController *)self zoomedOutViewScale];
  if (vabdd_f64(v8, v9) < 0.00999999978 || ([(THDocumentViewController *)self currentViewScale], v11 = v10, [(THDocumentViewController *)self zoomedOutViewScale], v11 <= v12))
  {
    if (completion)
    {
      v13 = *(completion + 2);

      v13(completion);
    }
  }

  else
  {
    [(THDocumentViewController *)self setCanvasDidZoomCompletion:completion];

    [(THDocumentViewController *)self zoomOutAnimated:animatedCopy];
  }
}

- (BOOL)p_allowsPinchZoom
{
  v3 = [-[THDocumentViewController canvasViewController](self "canvasViewController")];
  if ([(THDocumentViewController *)self th_cachedIsCompactWidth]|| (v4 = [(THDocumentViewController *)self th_cachedIsCompactHeight]))
  {
    [v3 minimumPinchViewScale];
    v6 = v5;
    [v3 maximumPinchViewScale];
    if (vabdd_f64(v6, v7) >= 0.00999999978)
    {
      LOBYTE(v4) = ![(THDocumentViewController *)self p_isCompactFlowPresentation];
    }

    else
    {
      LOBYTE(v4) = 0;
    }
  }

  return v4;
}

- (BOOL)p_allowsPageDisplacement
{
  activeSectionController = [(THDocumentViewController *)self activeSectionController];
  if (activeSectionController)
  {
    if ([(THDocumentViewController *)self inFlowMode])
    {
      LOBYTE(activeSectionController) = 0;
    }

    else
    {
      [(THDocumentViewController *)self p_currentSpreadSize];
      v5 = v4;
      v7 = v6;
      [(THDocumentViewController *)self p_windowOrViewSize];
      LOBYTE(activeSectionController) = 0;
      if (v5 > 0.0 && v8 > 0.0)
      {
        LOBYTE(activeSectionController) = v7 / v5 > v9 / v8;
      }
    }
  }

  return activeSectionController;
}

- (void)p_updateScrollViewAndZoomSettingsForSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  [(THDocumentViewController *)self p_updateScrollViewForSize:?];
  [(THDocumentViewController *)self p_currentSpreadSize];
  v7 = v6;
  [(THDocumentViewController *)self p_maxScrollViewSizeForViewSize:width, height];
  v9 = v8;
  [*&self->TSADocumentViewController_opaque[OBJC_IVAR___TSADocumentViewController__scrollView] bounds];
  v11 = v10;
  if ([(THDocumentViewController *)self inFlowMode])
  {
    v12 = v9;
  }

  else
  {
    v12 = v11;
  }

  v13 = v12 / v7;
  if ([(THDocumentViewController *)self p_isCompactFlowPresentation])
  {
    v13 = 1.0;
  }

  v14 = [-[THDocumentViewController canvasViewController](self "canvasViewController")];
  [v14 setShowsScaleFeedback:0];
  [v14 setMinimumPinchViewScale:v13];
  [v14 setMaximumPinchViewScale:1.0];
  [v14 setAllowsPinchZoom:{-[THDocumentViewController p_allowsPinchZoom](self, "p_allowsPinchZoom")}];

  [(THDocumentViewController *)self p_updateScrollViewClipsToBounds];
}

- (CGRect)shadowBoundsForCanvasExitTransformDelegate:(id)delegate
{
  if (-[THDocumentViewController isTwoUp](self, "isTwoUp", delegate) && [-[THDocumentViewController currentNavigationUnit](self "currentNavigationUnit")] == &dword_0 + 1)
  {
    v4 = [-[THPageViewProvider pageHostForAbsolutePageIndex:](-[THDocumentViewController pageViewProvider](self "pageViewProvider")];
  }

  else
  {
    v4 = *&self->TSADocumentViewController_opaque[OBJC_IVAR___TSADocumentViewController__scrollView];
  }

  [v4 bounds];
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (CGRect)rectForRelativePageIndex:(unint64_t)index chapterIndex:(unint64_t)chapterIndex
{
  v6 = [-[THDocumentViewController navigationUnitForChapterIndex:](self navigationUnitForChapterIndex:{chapterIndex), "pageCountForPresentationType:", -[THDocumentViewController currentPresentationType](self, "currentPresentationType")}];
  if ([(THDocumentViewController *)self isTwoUp])
  {
    v7 = v6 - 1;
    if (v7)
    {
      [*&self->TSADocumentViewController_opaque[OBJC_IVAR___TSADocumentViewController__scrollView] frame];
      v12 = v23;
      v14 = v24;
      v16 = v22 * 0.5;
      if (v7 == index)
      {
        v18 = v18 + v22 * 0.5;
      }
    }

    else
    {
      v8 = OBJC_IVAR___TSADocumentViewController__scrollView;
      [*&self->TSADocumentViewController_opaque[OBJC_IVAR___TSADocumentViewController__scrollView] frame];
      v10 = v9;
      v12 = v11;
      v14 = v13;
      v16 = v15 * 0.5;
      [*&self->TSADocumentViewController_opaque[v8] frame];
      v18 = v10 + (v17 - v16) * 0.5;
    }
  }

  else
  {
    [*&self->TSADocumentViewController_opaque[OBJC_IVAR___TSADocumentViewController__scrollView] frame];
    v12 = v19;
    v16 = v20;
    v14 = v21;
  }

  v25 = v12;
  v26 = v16;
  v27 = v14;
  result.size.height = v27;
  result.size.width = v26;
  result.origin.y = v25;
  result.origin.x = v18;
  return result;
}

- (BOOL)p_isSinglePageChapter
{
  currentChapter = [(THDocumentViewController *)self currentChapter];

  return [(THDocumentViewController *)self isSinglePageChapterForChapterIndex:currentChapter];
}

- (_NSRange)currentRelativePageIndexRange
{
  currentRelativePageIndex = [(THDocumentViewController *)self currentRelativePageIndex];
  if ([(THDocumentViewController *)self isTwoUp])
  {
    if ([-[THDocumentViewController currentNavigationUnit](self "currentNavigationUnit")] <= 1)
    {
      v4 = 1;
    }

    else
    {
      v4 = 2;
    }
  }

  else
  {
    v4 = 1;
  }

  v5 = currentRelativePageIndex;
  result.length = v4;
  result.location = v5;
  return result;
}

- (void)sectionControllerNeedsLayout:(id)layout
{
  if ([(THDocumentViewController *)self activeSectionController]== layout)
  {
    interactiveCanvasController = [(THDocumentViewController *)self interactiveCanvasController];

    [interactiveCanvasController layoutInvalidated];
  }
}

- (id)layoutControllerForSectionController:(id)controller
{
  interactiveCanvasController = [(THDocumentViewController *)self interactiveCanvasController];

  return [interactiveCanvasController layoutController];
}

- (void)sectionControllerInfosDidChange:(id)change
{
  if ([(THDocumentViewController *)self activeSectionController]== change)
  {
    p_activePagePaddingOptions = [(THDocumentViewController *)self p_activePagePaddingOptions];

    [(THDocumentViewController *)self p_updateVisibleInfosWithPaddingOptions:p_activePagePaddingOptions force:1];
  }
}

- (unint64_t)currentAbsolutePageIndex
{
  if ([(THDocumentViewController *)self reflowablePaginationController]&& ![(THReflowablePaginationController *)[(THDocumentViewController *)self reflowablePaginationController] paginationComplete]|| ![(THDocumentViewController *)self documentNavigator])
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  documentNavigator = [(THDocumentViewController *)self documentNavigator];

  return [(THDocumentNavigator *)documentNavigator currentAbsolutePageIndex];
}

- (unint64_t)currentRelativePageIndex
{
  documentNavigator = [(THDocumentViewController *)self documentNavigator];

  return [(THDocumentNavigator *)documentNavigator currentNavigationUnitRelativePageIndex];
}

- (THPresentationType)currentPresentationType
{
  result = [(THSectionController *)[(THDocumentViewController *)self activeSectionController] presentationType];
  if (!result)
  {
    if (-[THDocumentViewController showFlowModeIfAvailable](self, "showFlowModeIfAvailable") && [objc_msgSend(-[THDocumentViewController documentRoot](self "documentRoot")])
    {
      v4 = [-[THDocumentViewController documentRoot](self "documentRoot")];

      return [v4 flowPresentationType];
    }

    else
    {
      v5 = [-[THDocumentViewController documentRoot](self "documentRoot")];

      return [v5 defaultPresentationType];
    }
  }

  return result;
}

- (void)p_visiblePageRangeWillChangeTo:(_NSRange)to
{
  if (to.location != NSInvalidRange[0] || to.length != NSInvalidRange[1])
  {
    v5 = [-[THDocumentViewController currentNavigationUnit](self "currentNavigationUnit")];
    visibleRelativePageRange = [(THDocumentViewController *)self visibleRelativePageRange];
    if (visibleRelativePageRange != NSInvalidRange[0] || v7 != NSInvalidRange[1])
    {
      currentNavigationUnit = [(THDocumentViewController *)self currentNavigationUnit];
      visibleRelativePageRange2 = [(THDocumentViewController *)self visibleRelativePageRange];
      v5 = [v5 tsu_arrayByRemovingObjectsIdenticalToObjectsInArray:{objc_msgSend(currentNavigationUnit, "contentNodesSurroundingRelativePageRange:forPresentationType:", visibleRelativePageRange2, v11, -[THDocumentViewController currentPresentationType](self, "currentPresentationType"))}];
    }

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v12 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:{16, v5}];
    if (v12)
    {
      v13 = *v20;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v20 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v19 + 1) + 8 * i);
          [v15 startLoading];
          v18[0] = 0;
          v18[1] = v18;
          v18[2] = 0x3052000000;
          v18[3] = sub_11BB4;
          v18[4] = sub_11BC4;
          v18[5] = self;
          v17[0] = _NSConcreteStackBlock;
          v17[1] = 3221225472;
          v17[2] = sub_11BD4;
          v17[3] = &unk_45B000;
          v17[4] = v18;
          [v15 performWhenFinishedLoading:&stru_45AFD8 onError:v17];
          _Block_object_dispose(v18, 8);
        }

        v12 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v12);
    }
  }
}

- (int)p_activePagePaddingOptions
{
  if (![(THDocumentViewController *)self inPaginatedMode]|| [(THDocumentViewController *)self minimizeLayoutPadding])
  {
    return 0;
  }

  return [(THDocumentViewController *)self pagePaddingOptions];
}

- (void)p_updateVisibleInfos
{
  p_activePagePaddingOptions = [(THDocumentViewController *)self p_activePagePaddingOptions];

  [(THDocumentViewController *)self p_updateVisibleInfosWithPaddingOptions:p_activePagePaddingOptions force:0];
}

- (void)p_updateVisibleInfosWithPaddingOptions:(int)options force:(BOOL)force
{
  v5 = *&options;
  if ([-[THDocumentViewController documentRoot](self "documentRoot")])
  {

    [(THDocumentViewController *)self corruptBookAlert];
  }

  else
  {
    if (![(THDocumentViewController *)self interactiveCanvasController])
    {
      [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    }

    if ([(THDocumentViewController *)self activeSectionController]&& [(THDocumentViewController *)self currentNavigationUnit])
    {
      if ([(THDocumentViewController *)self inFlowMode])
      {
        setupLoadSpinner = 0;
      }

      else
      {
        setupLoadSpinner = [(THSpinnerProvider *)[(THDocumentViewController *)self spinnerProvider] setupLoadSpinner];
      }

      if (![(THDocumentViewController *)self preventVisibleInfoUpdates])
      {
        inPaginatedMode = [(THDocumentViewController *)self inPaginatedMode];
        interactiveCanvasController = [(THDocumentViewController *)self interactiveCanvasController];
        if (inPaginatedMode)
        {
          [interactiveCanvasController visibleUnscaledRect];
        }

        else
        {
          [interactiveCanvasController visibleUnscaledRectForContent];
        }

        TSDRoundedRect();
        v11 = v10;
        v13 = v12;
        v15 = v14;
        v17 = v16;
        v18 = [(THSectionController *)[(THDocumentViewController *)self activeSectionController] relativePageRangeForCanvasRect:v5 pad:v10, v12, v14, v16];
        v20 = v19;
        if (force || [(THDocumentViewController *)self visibleRelativePageRange]!= v18 || v24 != v20)
        {
          [(THDocumentViewController *)self p_visiblePageRangeWillChangeTo:v18, v20];
          v21 = [(THSectionController *)[(THDocumentViewController *)self activeSectionController] infosToDisplayForRelativePageRange:v18 forceLoad:v20, [(THDocumentViewController *)self firstLoad]];
          [(THDocumentViewController *)self setFirstLoad:0];
          pageViewProvider = [(THDocumentViewController *)self pageViewProvider];
          if ([(THDocumentViewController *)self inFlowMode])
          {
            v23 = 0;
          }

          else
          {
            v23 = v21;
          }

          [(THPageViewProvider *)pageViewProvider updateWithInfosToDisplay:v23];
          [-[THDocumentViewController interactiveCanvasController](self "interactiveCanvasController")];
          [(THDocumentViewController *)self setVisibleRelativePageRange:v18, v20];
        }

        [(THDocumentViewController *)self p_updateProgessKitSectionInCanvasRect:v11, v13, v15, v17];
      }

      if (setupLoadSpinner)
      {
        [(THSpinnerProvider *)[(THDocumentViewController *)self spinnerProvider] hideLoadSpinner];
      }

      if (![(THDocumentViewController *)self inFlowMode])
      {

        [(THDocumentViewController *)self p_updateCanvasSize];
      }
    }
  }
}

- (CGSize)pageSizeForPagePositionController:(id)controller
{
  if ([controller pageHorizontally])
  {
    if (![(THDocumentViewController *)self paginatedSectionController])
    {
      [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    }

    paginatedSectionController = [(THDocumentViewController *)self paginatedSectionController];
  }

  else
  {
    if ([(THDocumentViewController *)self p_isCompactFlowPresentationForSectionController:[(THDocumentViewController *)self flowSectionController]])
    {
      [(THDocumentViewController *)self p_maxScrollViewSize];
      goto LABEL_11;
    }

    if (![(THDocumentViewController *)self flowSectionController])
    {
      [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    }

    paginatedSectionController = [(THDocumentViewController *)self flowSectionController];
  }

  [(THPresentationType *)[(THSectionController *)paginatedSectionController presentationType] pageSize];
LABEL_11:
  if (CGSizeZero.width == v5 && CGSizeZero.height == v6)
  {

    [(THDocumentViewController *)self p_maxScrollViewSize];
  }

  result.height = v6;
  result.width = v5;
  return result;
}

- (void)p_willLayoutCanvasPaginated:(id)paginated
{
  if (![(THDocumentViewController *)self inPaginatedMode])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  activeSectionController = [(THDocumentViewController *)self activeSectionController];
  infosToDisplay = [paginated infosToDisplay];
  layoutController = [paginated layoutController];

  [(THSectionController *)activeSectionController ensureSectionInfosLaidOut:infosToDisplay layoutController:layoutController];
}

- (void)p_willLayoutCanvasFlow:(id)flow
{
  if (![(THDocumentViewController *)self inFlowMode])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  if (CGRectIsNull(self->mScrollTargetRect))
  {
    if (!self->mLayoutAnchor)
    {
      activeSectionController = [(THDocumentViewController *)self activeSectionController];
      [flow contentOffset];
      self->mLayoutAnchor = [(THSectionController *)activeSectionController layoutAnchorForContentOffset:?];
    }

    activeSectionController2 = [(THDocumentViewController *)self activeSectionController];
    mLayoutAnchor = self->mLayoutAnchor;
    [flow visibleHeight];
    v9 = 2048.0;
    if (v8 + v8 >= 2048.0)
    {
      [flow visibleHeight];
      v9 = v10 + v10;
    }

    [flow visibleHeight];
    v12 = 2048.0;
    if (v11 + v11 >= 2048.0)
    {
      [flow visibleHeight];
      v12 = v13 + v13;
    }

    -[THSectionController layoutContentAtLayoutAnchor:padAbove:padBelow:layoutController:](activeSectionController2, "layoutContentAtLayoutAnchor:padAbove:padBelow:layoutController:", mLayoutAnchor, [flow layoutController], v9, v12);
    if (self->mLayoutAnchor)
    {
      if (![(THDocumentViewController *)self inFlowMode])
      {
        [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
      }

      [(THFlowLayoutAnchor *)self->mLayoutAnchor deltaFromOriginalOffset];
      v15 = v14;
      [(THDocumentViewController *)self currentViewScale];
      self->mCanvasYOffset = self->mCanvasYOffset - v15 * v16;
      v17 = [objc_msgSend(flow "layerHost")];
      [(THDocumentViewController *)self p_desiredCanvasSize];
      [v17 setUnscaledSizeOnLayer:?];
      CGAffineTransformMakeTranslation(&v20, 0.0, self->mCanvasYOffset);
      v18 = [objc_msgSend(flow "layerHost")];
      v19 = v20;
      [v18 setAffineTransform:&v19];
      [flow visibleBoundsRect];
      if (CGRectIsEmpty(v21))
      {
        [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
      }

      [(THDocumentViewController *)self p_updateVerticalOverscrollTransform];
    }
  }
}

- (void)interactiveCanvasControllerWillLayout:(id)layout
{
  if (([-[THDocumentViewController documentRoot](self "documentRoot")] & 1) == 0 && objc_msgSend(objc_msgSend(layout, "infosToDisplay"), "count"))
  {
    if (![(THDocumentViewController *)self activeSectionController])
    {
      [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    }

    if ([(THDocumentViewController *)self inPaginatedMode])
    {
      [(THDocumentViewController *)self p_willLayoutCanvasPaginated:layout];
    }

    else
    {
      [(THDocumentViewController *)self p_willLayoutCanvasFlow:layout];
    }
  }

  self->mLayoutAnchor = 0;
}

- (void)p_fireCanvasDidZoomCompletion
{
  if ([(THDocumentViewController *)self canvasDidZoomCompletion])
  {
    canvasDidZoomCompletion = [(THDocumentViewController *)self canvasDidZoomCompletion];
    [(THDocumentViewController *)self setCanvasDidZoomCompletion:0];
    canvasDidZoomCompletion[2]();
  }
}

- (void)p_interactiveCanvasControllerDidLayout
{
  if ([(THDocumentViewController *)self inFlowMode])
  {
    [(THDocumentViewController *)self p_setupOverscrollViews];
  }

  [(THDocumentViewController *)self p_fadeOutOverscrollTransition];
}

- (void)interactiveCanvasControllerDidLayout:(id)layout
{
  [(THDocumentViewController *)self performSelectorOnMainThread:"p_interactiveCanvasControllerDidLayout" withObject:0 waitUntilDone:0];
  [(THPageViewProvider *)[(THDocumentViewController *)self pageViewProvider] canvasDidLayout];
  if ([(THDocumentViewController *)self inFlowMode]&& CGRectIsNull(self->mScrollTargetRect))
  {
    if (self->mLayoutAnchor)
    {
      [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    }

    if (([layout currentlyWaitingOnThreadedLayoutAndRender] & 1) == 0)
    {
      [(THDocumentViewController *)self p_fixScrollViewToMatchCanvas];
      if (([layout currentlyScrolling] & 1) == 0)
      {

        [(THDocumentViewController *)self p_removeCanvasTransform];
      }
    }
  }
}

- (void)interactiveCanvasController:(id)controller scrollViewWillBeginDragging:(id)dragging
{
  [controller contentOffset];
  [(THDocumentViewController *)self setBeginDraggingContentOffset:?];
  mPopUpPopoverController = self->mPopUpPopoverController;
  if (mPopUpPopoverController)
  {

    [(TSWPopoverController *)mPopUpPopoverController dismissPopoverAnimated:1];
  }
}

- (BOOL)interactiveCanvasController:(id)controller allowsDragOfSmartField:(id)field
{
  objc_opt_class();
  v4 = TSUDynamicCast();
  if (v4)
  {
    v5 = v4;
    v6 = [objc_msgSend(objc_msgSend(v4 "url")];
    if (v6)
    {
      LOBYTE(v6) = [objc_msgSend(objc_msgSend(v5 "url")] ^ 1;
    }
  }

  else
  {
    LOBYTE(v6) = 1;
  }

  return v6;
}

- (void)p_swipeToNextOffsetForScrollView:(id)view flowPageController:(id)controller withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset
{
  y = velocity.y;
  contentNode = [controller contentNode];
  [controller desiredPageSizeForRelativePageIndex:0];
  v12 = v11;
  v14 = v13;
  [(THSectionController *)[(THDocumentViewController *)self activeSectionController] canvasOriginForPageController:controller];
  v16 = v15;
  x = offset->x;
  v18 = offset->y;
  [*&self->TSADocumentViewController_opaque[OBJC_IVAR___TSADocumentViewController__scrollView] frame];
  v20 = v19;
  [(THDocumentViewController *)self beginDraggingContentOffset];
  if (y > 0.0)
  {
    v22 = v20 + v21;
    v23 = [controller firstBodyCharacterIndexOverlappingPageRect:0 forRelativePageIndex:{0.0, v20 + v21 + -40.0 - v16, v12, 40.0}];
    if (v23)
    {
      [controller originOfCharacterIndex:v23 forRelativePageIndex:0];
      if (v16 + v24 > v22 + v20 * -0.5)
      {
        v22 = v16 + v24;
      }
    }

    if ([-[THDocumentViewController currentNavigationUnit](self "currentNavigationUnit")])
    {
      v25 = v14 + v16;
      if (v25 < v22)
      {
        [(THDocumentViewController *)self beginDraggingContentOffset];
        if (vabdd_f64(v25, v26) <= 50.0)
        {
          v18 = v22;
        }

        else
        {
          v18 = v25;
        }

        goto LABEL_23;
      }
    }

    else if (v22 <= v18)
    {
      goto LABEL_23;
    }

    v18 = v22;
    goto LABEL_23;
  }

  v27 = v21 - v20;
  v28 = [controller firstBodyCharacterIndexOverlappingPageRect:0 forRelativePageIndex:{0.0, v27 + 20.0 - v16, v12, 40.0}];
  if (v28)
  {
    [controller originOfCharacterIndex:v28 forRelativePageIndex:0];
    if (v16 + v29 > v27)
    {
      v27 = v16 + v29;
    }
  }

  v30 = [-[THDocumentViewController currentNavigationUnit](self "currentNavigationUnit")];
  if (v30)
  {
    [(THSectionController *)[(THDocumentViewController *)self activeSectionController] canvasOriginForPageController:[(THSectionController *)[(THDocumentViewController *)self activeSectionController] pageControllerForContentNode:v30]];
    v32 = v31;
    if (v16 <= v27 || ([(THDocumentViewController *)self beginDraggingContentOffset], v16 >= v33) || ([(THDocumentViewController *)self beginDraggingContentOffset], v18 = v16, vabdd_f64(v16, v34) <= 50.0))
    {
      if (v32 <= v27)
      {
        v18 = v27;
      }

      else
      {
        v18 = v32;
      }
    }
  }

  else
  {
    v18 = v27;
  }

LABEL_23:
  offset->x = x;
  offset->y = v18;
}

- (void)interactiveCanvasControllerFreeTransformDidEnd:(id)end
{
  if ([(THDocumentViewController *)self p_updateScrollViewClipsToBounds]&& [(THDocumentViewController *)self p_allowsPageDisplacement])
  {
    [(THDocumentViewController *)self updateVisibleInfosWithPageIndex:[(THDocumentViewController *)self currentRelativePageIndex]];
    v4 = [objc_msgSend(-[THDocumentViewController interactiveCanvasController](self "interactiveCanvasController")];

    [v4 _prepareToPageWithHorizontalVelocity:0.0 verticalVelocity:0.0];
  }
}

- (void)interactiveCanvasController:(id)controller didOverscrollLeft:(double)left state:(int)state
{
  if ([(THDocumentViewController *)self leftOverscrollView:controller])
  {
    [(THDocumentViewController *)self isEpub];
    if ((state & 0xFFFFFFFE) == 2)
    {
      [(THDocumentViewController *)self p_horizontalOverscrollPreviousChapter];
    }

    [(THDocumentViewController *)self setLastStorageAnchor:0];

    [(THDocumentViewController *)self setJustUpdatedPresentationType:0];
  }
}

- (void)interactiveCanvasController:(id)controller didOverscrollRight:(double)right state:(int)state
{
  if ([(THDocumentViewController *)self rightOverscrollView:controller])
  {
    [(THDocumentViewController *)self isEpub];
    if ((state & 0xFFFFFFFE) == 2)
    {
      [(THDocumentViewController *)self p_horizontalOverscrollNextChapter];
    }

    [(THDocumentViewController *)self setLastStorageAnchor:0];

    [(THDocumentViewController *)self setJustUpdatedPresentationType:0];
  }
}

- (void)interactiveCanvasController:(id)controller didOverscrollTop:(double)top state:(int)state
{
  if ([(THDocumentViewController *)self topOverscrollView])
  {
    th_cachedIsCompactHeight = [(THDocumentViewController *)self th_cachedIsCompactHeight];
    v9 = 128.0;
    if (th_cachedIsCompactHeight)
    {
      v9 = 48.0;
    }

    if (state == 2 && v9 < top)
    {

      [(THDocumentViewController *)self p_verticalOverscrollPreviousChapter];
    }
  }
}

- (void)interactiveCanvasController:(id)controller didOverscrollBottom:(double)bottom state:(int)state
{
  if ([(THDocumentViewController *)self bottomOverscrollView])
  {
    th_cachedIsCompactHeight = [(THDocumentViewController *)self th_cachedIsCompactHeight];
    v9 = 128.0;
    if (th_cachedIsCompactHeight)
    {
      v9 = 48.0;
    }

    if (state == 2 && v9 < bottom)
    {

      [(THDocumentViewController *)self p_verticalOverscrollNextChapter];
    }
  }
}

- (double)p_pageMarginWidth
{
  v2 = [objc_msgSend(-[THDocumentViewController bc_windowForViewController](self "bc_windowForViewController")];
  result = 60.0;
  if ((v2 - 3) < 2)
  {
    return 70.0;
  }

  return result;
}

- (BOOL)interactiveCanvasController:(id)controller pointIsInLeftMargin:(CGPoint)margin
{
  [-[THDocumentViewController interactiveCanvasController](self interactiveCanvasController];
  v6 = v5;
  v8 = v7;
  v9 = [-[THDocumentViewController canvasViewController](self "canvasViewController")];

  return [(THDocumentViewController *)self pointIsInLeftMargin:v9 fromView:v6, v8];
}

- (BOOL)interactiveCanvasController:(id)controller pointIsInRightMargin:(CGPoint)margin
{
  [-[THDocumentViewController interactiveCanvasController](self interactiveCanvasController];
  v6 = v5;
  v8 = v7;
  v9 = [-[THDocumentViewController canvasViewController](self "canvasViewController")];

  return [(THDocumentViewController *)self pointIsInRightMargin:v9 fromView:v6, v8];
}

- (BOOL)interactiveCanvasControllerShouldPageLeftOnMarginTap:(id)tap
{
  if ((TSUPadUI() & 1) != 0 || (isPagingEnabled = [(THDocumentViewController *)self isEpub]) != 0)
  {
    isPagingEnabled = [*&self->TSADocumentViewController_opaque[OBJC_IVAR___TSADocumentViewController__scrollView] isPagingEnabled];
    if (isPagingEnabled)
    {
      LOBYTE(isPagingEnabled) = [(THDocumentViewController *)self currentAbsolutePageIndex]!= 0;
    }
  }

  return isPagingEnabled;
}

- (BOOL)interactiveCanvasControllerShouldPageRightOnMarginTap:(id)tap
{
  if ((TSUPadUI() & 1) != 0 || (isPagingEnabled = [(THDocumentViewController *)self isEpub]) != 0)
  {
    isPagingEnabled = [*&self->TSADocumentViewController_opaque[OBJC_IVAR___TSADocumentViewController__scrollView] isPagingEnabled];
    if (isPagingEnabled)
    {
      currentAbsolutePageIndex = [(THDocumentViewController *)self currentAbsolutePageIndex];
      v6 = 1;
      if (self->_isTwoUp)
      {
        v6 = 2;
      }

      LOBYTE(isPagingEnabled) = v6 + currentAbsolutePageIndex < [objc_msgSend(-[THDocumentViewController documentRoot](self "documentRoot")];
    }
  }

  return isPagingEnabled;
}

- (void)interactiveCanvasController:(id)controller wantsToPresentContextMenuAtCanvasPoint:(CGPoint)point forAnnotationUUID:(id)d
{
  [-[THDocumentViewController view](self view];
  v8 = v7;
  v10 = v9;
  canvasViewController = [(THDocumentViewController *)self canvasViewController];
  view = [(THDocumentViewController *)self view];

  [canvasViewController shouldPresentContextMenuInView:view atPoint:d forAnnotationUUID:{v8, v10}];
}

- (BOOL)interactiveCanvasControllerShouldAllowZoomToColumn:(id)column
{
  if ([(THDocumentViewController *)self th_cachedIsCompactWidth]|| (v4 = [(THDocumentViewController *)self th_cachedIsCompactHeight]))
  {
    LOBYTE(v4) = ![(THDocumentViewController *)self p_isCompactFlowPresentation];
  }

  return v4;
}

- (BOOL)interactiveCanvasController:(id)controller shouldZoomToColumn:(id)column withFrame:(CGRect)frame tapPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  [controller convertUnscaledToBoundsRect:{frame.origin.x, frame.origin.y, frame.size.width, frame.size.height}];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  [controller convertUnscaledToBoundsPoint:{x, y}];
  v18 = v17;
  v20 = v19;
  v29.origin.x = v10;
  v29.origin.y = v12;
  v29.size.width = v14;
  v29.size.height = v16;
  CGRectGetWidth(v29);
  v30.origin.x = v10;
  v30.origin.y = v12;
  v30.size.width = v14;
  v30.size.height = v16;
  CGRectGetHeight(v30);
  TSDCenterOfRect();
  TSDRectWithCenterAndSize();
  v25 = v18;
  v26 = v20;

  return CGRectContainsPoint(*&v21, *&v25);
}

- (void)interactiveCanvasController:(id)controller didZoomToColumn:(id)column ofRep:(id)rep
{
  [-[THDocumentViewController interactiveCanvasController](self interactiveCanvasController];
  [rep layout];
  objc_opt_class();
  v8 = [[THGuidedPanColumnTarget alloc] initWithLayout:TSUClassAndProtocolCast() column:column, &OBJC_PROTOCOL___TSWPLayoutTarget];
  guidedPanController = [(THDocumentViewController *)self guidedPanController];

  [(THGuidedPanController *)guidedPanController setTarget:v8];
}

- (id)interactiveCanvasController:(id)controller delegateConformingToProtocol:(id)protocol forRep:(id)rep
{
  if (protocol_isEqual(protocol, &OBJC_PROTOCOL___THPageLayerAndSubviewHostProvider))
  {

    return [(THDocumentViewController *)self pageViewProvider];
  }

  else if (protocol_isEqual(protocol, &OBJC_PROTOCOL___THPerformanceCoordinator))
  {
    return self;
  }

  else
  {
    return 0;
  }
}

- (id)interactiveCanvasController:(id)controller delegateConformingToProtocol:(id)protocol forLayout:(id)layout
{
  if (protocol_isEqual(protocol, &OBJC_PROTOCOL___THWWidgetStackHosting))
  {
    return self;
  }

  else
  {
    return 0;
  }
}

- (void)interactiveCanvasController:(id)controller progressDidChangeForRep:(id)rep percent:(id)percent
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_132EC;
  v5[3] = &unk_45B028;
  v5[4] = percent;
  -[THDocumentViewController p_getWidgetIDsForInfo:completion:](self, "p_getWidgetIDsForInfo:completion:", [rep info], v5);
}

- (void)interactiveCanvasController:(id)controller scoreDidChangeForRep:(id)rep score:(id)score total:(id)total
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_133F8;
  v6[3] = &unk_45AF48;
  v6[4] = score;
  v6[5] = total;
  -[THDocumentViewController p_getWidgetIDsForInfo:completion:](self, "p_getWidgetIDsForInfo:completion:", [rep info], v6);
}

- (void)interactiveCanvasController:(id)controller resetAttemptForRep:(id)rep
{
  info = [rep info];

  [(THDocumentViewController *)self p_getWidgetIDsForInfo:info completion:&stru_45B068];
}

- (void)selectionDidChange
{
  if ([objc_msgSend(objc_msgSend(-[THDocumentViewController interactiveCanvasController](self "interactiveCanvasController")])
  {
    interactiveCanvasController = [(THDocumentViewController *)self interactiveCanvasController];

    [interactiveCanvasController resumeEditing];
  }
}

- (void)interactiveCanvasControllerWillScroll:(id)scroll
{
  [scroll contentOffset];
  [(THDocumentViewController *)self setLastScrollOffset:?];
  [(THBookNavigation *)[(THDocumentViewController *)self bookNavigationDelegate] vantageWillChangeBy:self reason:@"THVantageChangeReasonScrolling"];
  if ([(THDocumentViewController *)self inFlowMode])
  {
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_1363C;
    v4[3] = &unk_45AE00;
    v4[4] = self;
    [UIView animateWithDuration:0 delay:v4 options:&stru_45B0A8 animations:0.05 completion:0.0];
  }
}

- (void)interactiveCanvasController:(id)controller willAnimateScrollToVisibleUnscaledRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  if ([(THDocumentViewController *)self inFlowMode])
  {
    [controller pushThreadedLayoutAndRenderDisabled];
    [(THDocumentViewController *)self p_fixScrollViewToMatchCanvas];

    self->mLayoutAnchor = 0;
    v10 = [(THSectionController *)[(THDocumentViewController *)self activeSectionController] layoutAnchorForContentOffset:x, y];
    activeSectionController = [(THDocumentViewController *)self activeSectionController];
    [controller visibleHeight];
    v13 = v12;
    [controller visibleHeight];
    -[THSectionController layoutContentAtLayoutAnchor:padAbove:padBelow:layoutController:](activeSectionController, "layoutContentAtLayoutAnchor:padAbove:padBelow:layoutController:", v10, [controller layoutController], v13, v14 + v14);
    self->mScrollTargetRect.origin.x = x;
    self->mScrollTargetRect.origin.y = y;
    self->mScrollTargetRect.size.width = width;
    self->mScrollTargetRect.size.height = height;
    [controller popThreadedLayoutAndRenderDisabled];
  }

  bookNavigationDelegate = [(THDocumentViewController *)self bookNavigationDelegate];

  [(THBookNavigation *)bookNavigationDelegate vantageWillChangeBy:self reason:@"THVantageChangeReasonScrolling"];
}

- (void)interactiveCanvasControllerDidEndScrollingAnimation:(id)animation stillAnimating:(BOOL)animating
{
  size = CGRectNull.size;
  self->mScrollTargetRect.origin = CGRectNull.origin;
  self->mScrollTargetRect.size = size;
  if ([(THDocumentViewController *)self inFlowMode:animation])
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_13848;
    v6[3] = &unk_45AE00;
    v6[4] = self;
    [UIView animateWithDuration:0 delay:v6 options:&stru_45B0C8 animations:0.05 completion:0.0];
  }
}

- (void)interactiveCanvasControllerDidStopScrolling:(id)scrolling
{
  [(THPageViewProvider *)[(THDocumentViewController *)self pageViewProvider] canvasDidStopScrolling];
  [scrolling contentOffset];
  v6 = v5;
  v8 = v7;
  [(THDocumentViewController *)self lastScrollOffset];
  v10 = v9;
  v12 = v11;
  bookNavigationDelegate = [(THDocumentViewController *)self bookNavigationDelegate];
  if (v10 == v6 && v12 == v8)
  {
    [(THBookNavigation *)bookNavigationDelegate vantageChangeWasCancelledBy:self reason:@"THVantageChangeReasonScrolling"];
  }

  else
  {
    [(THBookNavigation *)bookNavigationDelegate vantageDidChangeBy:self reason:@"THVantageChangeReasonScrolling"];
  }

  if ([(THDocumentViewController *)self justUpdatedPresentationType]|| ([(THDocumentViewController *)self lastScrollOffset], v16 == v6) && v15 == v8)
  {
    [(THDocumentViewController *)self setJustUpdatedPresentationType:0];
  }

  else
  {
    [(THDocumentViewController *)self setLastStorageAnchor:0];
  }

  [(THDocumentViewController *)self p_visibleRectChanged];
  [(THDocumentViewController *)self p_updatePageViewsForScrollingAnimated:0 restoreOrigin:0];
  [(THDocumentViewController *)self p_updateBookmarkAffordances];
  [(BCDisplaySleepController *)[(THDocumentViewController *)self displaySleepController] userInteractionOccurred];
  if ([(THDocumentViewController *)self inFlowMode])
  {
    if (CGRectIsNull(self->mScrollTargetRect))
    {
      [(THDocumentViewController *)self p_fixScrollViewToMatchCanvas];
      [(THDocumentViewController *)self p_removeCanvasTransform];
    }

    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_13A48;
    v17[3] = &unk_45AE00;
    v17[4] = self;
    [UIView animateWithDuration:0 delay:v17 options:&stru_45B0E8 animations:0.05 completion:0.0];
  }

  [(THDocumentViewController *)self p_updatePageNumberingForce:1];
  [(THDocumentViewController *)self setLastScrollOffset:v6, v8];
}

- (void)p_visibleRectChanged
{
  if ([(THDocumentViewController *)self isDocumentLoaded]&& ![(THDocumentViewController *)self isRotating])
  {

    [(THDocumentViewController *)self p_updateVisibleInfos];
  }
}

- (BOOL)p_isPageLocationApplicable
{
  currentPresentationType = [(THDocumentViewController *)self currentPresentationType];
  if (currentPresentationType)
  {
    LOBYTE(currentPresentationType) = ![(THDocumentViewController *)self isRotating];
  }

  return currentPresentationType;
}

- (void)p_updatePageNumberingForce:(BOOL)force
{
  forceCopy = force;
  if (![(THDocumentViewController *)self isDocumentLoaded]|| ![(THDocumentViewController *)self p_isPageLocationApplicable])
  {
    return;
  }

  if ([(THDocumentViewController *)self inFlowMode])
  {
    if ([(THDocumentViewController *)self lastPageNumberUpdate])
    {
      [(NSDate *)[(THDocumentViewController *)self lastPageNumberUpdate] timeIntervalSinceNow];
      v6 = v5 < -2.0;
      if (v5 >= -2.0 && !forceCopy)
      {
        v7 = 0;
LABEL_30:
        currentAbsolutePageIndex = 0x7FFFFFFFFFFFFFFFLL;
        goto LABEL_38;
      }
    }

    else
    {
      v6 = 1;
    }

    currentAbsolutePageIndex = [(THDocumentViewController *)self currentAbsolutePageIndex];
    -[THPageNumberView setPageNumberText:](-[THDocumentViewController contentPageNumberView](self, "contentPageNumberView"), "setPageNumberText:", [objc_msgSend(-[THDocumentViewController documentRoot](self "documentRoot")]);
    if (currentAbsolutePageIndex == 0x7FFFFFFFFFFFFFFFLL)
    {
      v14 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = currentAbsolutePageIndex + 1;
    }

    if ([(THDocumentViewController *)self reflowablePaginationController]&& ![(THReflowablePaginationController *)[(THDocumentViewController *)self reflowablePaginationController] paginationComplete])
    {
      v15 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = [objc_msgSend(-[THDocumentViewController documentRoot](self "documentRoot")];
    }

    [(BKScrubberControl *)[(THDocumentViewController *)self scrubber] setPageNumber:v14];
    [(BKScrubberControl *)[(THDocumentViewController *)self scrubber] setPageCount:v15];
    [(THPageNumberView *)[(THDocumentViewController *)self navOverlayPageNumberView] setPageNumber:v14];
    [(THPageNumberView *)[(THDocumentViewController *)self navOverlayPageNumberView] setPageCount:v15];
    if (!v6)
    {
      v7 = 0;
      goto LABEL_38;
    }

    [(THDocumentViewController *)self setLastPageNumberUpdate:+[NSDate date]];
    goto LABEL_37;
  }

  if (![(THDocumentViewController *)self isEpub])
  {
    if (![(THDocumentViewController *)self useScrubber])
    {
      v7 = 1;
      goto LABEL_30;
    }

    currentAbsolutePageIndex2 = [(THDocumentViewController *)self currentAbsolutePageIndex];
    currentAbsolutePageIndex = currentAbsolutePageIndex2;
    if (currentAbsolutePageIndex2 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v12 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = currentAbsolutePageIndex2 + 1;
    }

    if ([(THDocumentViewController *)self reflowablePaginationController]&& ![(THReflowablePaginationController *)[(THDocumentViewController *)self reflowablePaginationController] paginationComplete])
    {
      v13 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v13 = [objc_msgSend(-[THDocumentViewController documentRoot](self "documentRoot")];
    }

    [(BKScrubberControl *)[(THDocumentViewController *)self scrubber] setPageNumber:v12];
    [(BKScrubberControl *)[(THDocumentViewController *)self scrubber] setPageCount:v13];
LABEL_37:
    v7 = 1;
    goto LABEL_38;
  }

  if ([(THReflowablePaginationController *)[(THDocumentViewController *)self reflowablePaginationController] paginationComplete])
  {
    currentAbsolutePageIndex = [(THDocumentViewController *)self currentAbsolutePageIndex];
    v9 = [objc_msgSend(-[THDocumentViewController documentRoot](self "documentRoot")];
    [(BKScrubberControl *)[(THDocumentViewController *)self scrubber] setPageCount:v9];
    [(THPageNumberView *)[(THDocumentViewController *)self contentPageNumberView] setPageCount:v9];
    [(THPageNumberView *)[(THDocumentViewController *)self navOverlayPageNumberView] setPageCount:v9];
    if (currentAbsolutePageIndex == 0x7FFFFFFFFFFFFFFFLL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = currentAbsolutePageIndex + 1;
    }

    [(BKScrubberControl *)[(THDocumentViewController *)self scrubber] setPageNumber:v10];
    [(THPageNumberView *)[(THDocumentViewController *)self contentPageNumberView] setPageNumber:v10];
    [(THPageNumberView *)[(THDocumentViewController *)self navOverlayPageNumberView] setPageNumber:v10];
    goto LABEL_37;
  }

  v7 = 1;
  [(BKScrubberControl *)[(THDocumentViewController *)self scrubber] setPageCount:1];
  [(BKScrubberControl *)[(THDocumentViewController *)self scrubber] setPageNumber:1];
  currentAbsolutePageIndex = 0x7FFFFFFFFFFFFFFFLL;
  [(THPageNumberView *)[(THDocumentViewController *)self contentPageNumberView] setPageCount:0x7FFFFFFFFFFFFFFFLL];
  [(THPageNumberView *)[(THDocumentViewController *)self contentPageNumberView] setPageNumber:0x7FFFFFFFFFFFFFFFLL];
  [(THPageNumberView *)[(THDocumentViewController *)self navOverlayPageNumberView] setPageCount:0x7FFFFFFFFFFFFFFFLL];
  [(THPageNumberView *)[(THDocumentViewController *)self navOverlayPageNumberView] setPageNumber:0x7FFFFFFFFFFFFFFFLL];
LABEL_38:
  if ([(THDocumentViewController *)self isEpub]&& [(THReflowablePaginationController *)[(THDocumentViewController *)self reflowablePaginationController] paginationComplete]&& (![(THDocumentViewController *)self inFlowMode]|| (v7 & [(THDocumentViewController *)self inFlowMode]) == 1))
  {
    if (currentAbsolutePageIndex == 0x7FFFFFFFFFFFFFFFLL)
    {
      currentAbsolutePageIndex = [(THDocumentViewController *)self currentAbsolutePageIndex];
    }

    v16 = [-[THDocumentViewController currentNavigationUnit](self "currentNavigationUnit")];
    if (v17 != 0x7FFFFFFFFFFFFFFFLL && v16 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v18 = v16 + v17 + ~currentAbsolutePageIndex;
      if (v18 >= 0)
      {
        configuration = [(THDocumentViewController *)self configuration];
        if (v18 == 1)
        {
          v20 = [(THDocumentReflowableLayoutConfiguration *)configuration singularPagesLeftInChapterWithRemainingPageCount:1];
        }

        else
        {
          v20 = v18 ? [(THDocumentReflowableLayoutConfiguration *)configuration pluralPagesLeftInChapterWithRemainingPageCount:v18]: [(THDocumentReflowableLayoutConfiguration *)configuration lastPageInChapterString];
        }

        v21 = v20;
        if (v20)
        {
          toolbarDelegate = [(THDocumentViewController *)self toolbarDelegate];

          [(THToolbarDelegate *)toolbarDelegate textForPagesLeftInChapterDidChangeTo:v21];
        }
      }
    }
  }
}

- (void)interactiveCanvasControllerDidScroll:(id)scroll
{
  if (!self->mPreventScrollViewDidScrollReentrance)
  {
    if (([scroll isOverscrolling] & 1) == 0)
    {
      [(THDocumentViewController *)self setOrientationAnchor:0];
      if ([(THDocumentViewController *)self interactiveCanvasController]!= scroll)
      {
        [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
      }

      if ([(THDocumentViewController *)self inFlowMode])
      {
        if (([scroll currentlyWaitingOnThreadedLayoutAndRender] & 1) == 0)
        {
          v5[0] = _NSConcreteStackBlock;
          v5[1] = 3221225472;
          v5[2] = sub_140B4;
          v5[3] = &unk_45AE00;
          v5[4] = scroll;
          [objc_msgSend(-[THDocumentViewController documentRoot](self "documentRoot")];
        }
      }

      else
      {
        [(THDocumentViewController *)self p_updatePageNumberingForce:0];
      }

      if (([scroll currentlyWaitingOnThreadedLayoutAndRender] & 1) == 0)
      {
        [(THDocumentViewController *)self p_visibleRectChanged];
      }
    }

    [(THDocumentViewController *)self p_updatePageViewsForScrollingAnimated:1 restoreOrigin:0];
  }
}

- (void)interactiveCanvasControllerDidLayoutAndRenderOnBackgroundThread:(id)thread
{
  if (([thread currentlyWaitingOnThreadedLayoutAndRender] & 1) == 0 && (objc_msgSend(thread, "isOverscrolling") & 1) == 0)
  {
    if ([(THDocumentViewController *)self inFlowMode]&& CGRectIsNull(self->mScrollTargetRect))
    {
      [(THDocumentViewController *)self p_fixScrollViewToMatchCanvas];
    }

    [(THDocumentViewController *)self p_visibleRectChanged];
    [(THDocumentViewController *)self p_updatePageViewsForScrollingAnimated:0 restoreOrigin:0];
  }

  pageViewProvider = [(THDocumentViewController *)self pageViewProvider];

  [(THPageViewProvider *)pageViewProvider canvasDidLayoutAndRenderOnBackgroundThread];
}

- (void)p_updateBookmarkAffordances
{
  [(THToolbarDelegate *)[(THDocumentViewController *)self toolbarDelegate] updateBookmarkButton];
  interactiveCanvasController = [(THDocumentViewController *)self interactiveCanvasController];

  [interactiveCanvasController updateBookmarkStatusAnimated:0];
}

- (void)p_fixScrollViewToMatchCanvas
{
  if (!+[NSThread isMainThread])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  if (![(THDocumentViewController *)self inFlowMode])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  if ([-[THDocumentViewController interactiveCanvasController](self "interactiveCanvasController")])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  if (!CGRectIsNull(self->mScrollTargetRect))
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  v3 = OBJC_IVAR___TSADocumentViewController__scrollView;
  [*&self->TSADocumentViewController_opaque[OBJC_IVAR___TSADocumentViewController__scrollView] contentSize];
  v5 = v4;
  v7 = v6;
  [objc_msgSend(objc_msgSend(-[THDocumentViewController interactiveCanvasController](self "interactiveCanvasController")];
  if (v5 != v9 || v7 != v8)
  {
    [*&self->TSADocumentViewController_opaque[v3] contentOffset];
    v12 = v11;
    [objc_msgSend(objc_msgSend(-[THDocumentViewController interactiveCanvasController](self "interactiveCanvasController")];
    [*&self->TSADocumentViewController_opaque[v3] contentOffset];
    v14 = self->mCanvasYOffset + v13 - v12;
    self->mCanvasYOffset = v14;
    CGAffineTransformMakeTranslation(&v17, 0.0, v14);
    v15 = [objc_msgSend(-[THDocumentViewController interactiveCanvasController](self "interactiveCanvasController")];
    v16 = v17;
    [v15 setAffineTransform:&v16];
    [*&self->TSADocumentViewController_opaque[v3] setContentInset:{-self->mCanvasYOffset, 0.0, self->mCanvasYOffset, 0.0}];
    [(THDocumentViewController *)self p_setupOverscrollViews];
  }
}

- (void)p_removeCanvasTransform
{
  if (!+[NSThread isMainThread])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  if (![(THDocumentViewController *)self inFlowMode])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  if ([-[THDocumentViewController interactiveCanvasController](self "interactiveCanvasController")])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  if ([-[THDocumentViewController interactiveCanvasController](self "interactiveCanvasController")])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  if (!CGRectIsNull(self->mScrollTargetRect))
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  v3 = OBJC_IVAR___TSADocumentViewController__scrollView;
  [*&self->TSADocumentViewController_opaque[OBJC_IVAR___TSADocumentViewController__scrollView] contentSize];
  v5 = v4;
  v7 = v6;
  [objc_msgSend(objc_msgSend(-[THDocumentViewController interactiveCanvasController](self "interactiveCanvasController")];
  if (v5 != v9 || v7 != v8)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  if (self->mCanvasYOffset != 0.0)
  {
    if ([(THDocumentViewController *)self inFlowMode])
    {
      self->mPreventScrollViewDidScrollReentrance = 1;
    }

    [*&self->TSADocumentViewController_opaque[v3] contentOffset];
    v12 = v11;
    v14 = v13 - self->mCanvasYOffset;
    [objc_msgSend(objc_msgSend(-[THDocumentViewController interactiveCanvasController](self interactiveCanvasController];
    [*&self->TSADocumentViewController_opaque[v3] setContentInset:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
    [*&self->TSADocumentViewController_opaque[v3] setContentOffset:{v12, v14}];
    self->mCanvasYOffset = 0.0;
    if ([(THDocumentViewController *)self inFlowMode])
    {
      self->mPreventScrollViewDidScrollReentrance = 0;
    }

    [(THDocumentViewController *)self p_updateVerticalOverscrollTransform];
  }
}

- (void)p_updateVerticalOverscrollTransform
{
  memset(&v6, 0, sizeof(v6));
  CGAffineTransformMakeTranslation(&v6, 0.0, self->mCanvasYOffset);
  v5[1] = v6;
  v5[0] = v6;
  [(CALayer *)[(UIView *)[(THDocumentViewController *)self topOverscrollView] layer] setAffineTransform:v5];
  v4 = v6;
  layer = [(UIView *)[(THDocumentViewController *)self bottomOverscrollView] layer];
  v5[0] = v4;
  [(CALayer *)layer setAffineTransform:v5];
}

- (CGRect)interactiveCanvasController:(id)controller expandBoundsForHitTesting:(CGRect)testing
{
  height = testing.size.height;
  width = testing.size.width;
  y = testing.origin.y;
  x = testing.origin.x;
  [(THDocumentViewController *)self p_maxScrollViewSize];
  TSDRectWithSize();
  [*&self->TSADocumentViewController_opaque[OBJC_IVAR___TSADocumentViewController__scrollView] frame];
  TSDCenterRectOverRect();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  if ([(THDocumentViewController *)self p_allowsPageDisplacement])
  {
    v40 = x;
    v18 = y;
    v19 = width;
    v20 = height;
    [-[THDocumentViewController interactiveCanvasController](self "interactiveCanvasController")];
    v22 = v21;
    [(THDocumentViewController *)self zoomedOutViewScale];
    if (vabdd_f64(v22, v23) < 0.00999999978)
    {
      [(THDocumentViewController *)self p_currentSpreadSize];
      TSDFitOrFillSizeInRect();
      v11 = v24;
      v13 = v25;
      v15 = v26;
      v17 = v27;
    }

    height = v20;
    width = v19;
    y = v18;
    x = v40;
  }

  [-[THDocumentViewController view](self "view")];
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  if (![(THDocumentViewController *)self p_allowsPageDisplacement])
  {
    v41.origin.x = x;
    v41.origin.y = y;
    v41.size.width = width;
    v41.size.height = height;
    v44.origin.x = v29;
    v44.origin.y = v31;
    v44.size.width = v33;
    v44.size.height = v35;
    v42 = CGRectUnion(v41, v44);
    v29 = v42.origin.x;
    v31 = v42.origin.y;
    v33 = v42.size.width;
    v35 = v42.size.height;
  }

  v36 = v29;
  v37 = v31;
  v38 = v33;
  v39 = v35;
  result.size.height = v39;
  result.size.width = v38;
  result.origin.y = v37;
  result.origin.x = v36;
  return result;
}

- (void)interactiveCanvasController:(id)controller layoutRegistered:(id)registered
{
  v5 = TSUProtocolCast();
  if (v5)
  {

    [v5 setDelegate:self];
  }
}

- (CGRect)scrollViewClippingBoundsForInteractiveCanvasController:(id)controller
{
  [(THDocumentViewController *)self p_maxScrollViewSize];
  [*&self->TSADocumentViewController_opaque[OBJC_IVAR___TSADocumentViewController__scrollView] bounds];
  TSDRectWithSize();
  TSDRectWithSize();

  TSDCenterRectOverRect();
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (id)interactiveCanvasController:(id)controller infoForModel:(id)model withSelection:(id)selection
{
  objc_opt_class();
  v6 = TSUClassAndProtocolCast();
  objc_opt_class();
  v7 = TSUDynamicCast();
  if (!v7)
  {
    return v6;
  }

  v8 = v7;
  objc_opt_class();
  v9 = TSUDynamicCast();
  if (!v9)
  {
    return v6;
  }

  v10 = v9;
  activeSectionController = [(THDocumentViewController *)self activeSectionController];
  range = [v10 range];

  return [(THSectionController *)activeSectionController bodyInfoForStorage:v8 charIndex:range];
}

- (BOOL)canCopy
{
  objc_opt_class();
  [objc_msgSend(-[THDocumentViewController interactiveCanvasController](self "interactiveCanvasController")];
  v3 = TSUDynamicCast();

  return [v3 canCopy];
}

- (void)copySelection
{
  objc_opt_class();
  [objc_msgSend(-[THDocumentViewController interactiveCanvasController](self "interactiveCanvasController")];
  v3 = TSUDynamicCast();

  [v3 copy:self];
}

- (void)p_canvasDidZoom
{
  shouldPagingBeEnabled = [(THDocumentViewController *)self shouldPagingBeEnabled];
  [*&self->TSADocumentViewController_opaque[OBJC_IVAR___TSADocumentViewController__scrollView] setPagingEnabled:shouldPagingBeEnabled];
  [(THDocumentViewController *)self p_setupOverscrollViews];
  [(THDocumentViewController *)self p_fireCanvasDidZoomCompletion];

  [(THDocumentViewController *)self p_updatePageViewsForScrollingAnimated:0 restoreOrigin:0];
}

- (void)interactiveCanvasControllerWillZoom:(id)zoom
{
  if ([(THDocumentViewController *)self p_allowsPageDisplacement])
  {
    mPageViewDisplacement = self->mPageViewDisplacement;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_14EE4;
    v5[3] = &unk_45AED0;
    v5[4] = self;
    [(THPageViewDisplacement *)mPageViewDisplacement animateShowWithDuration:[(THDocumentViewController *)self currentRelativePageIndex] forPageIndex:v5 enumerator:0.1];
  }
}

- (void)interactiveCanvasControllerDidZoom:(id)zoom
{
  [(THDocumentViewController *)self p_canvasDidZoom];
  if ([(THDocumentViewController *)self p_allowsPageDisplacement])
  {
    [(THDocumentViewController *)self fitWidthViewScale];
    v5 = v4;
    [(THDocumentViewController *)self fitHeightViewScale];
    v7 = fmin(v5, v6);
    v8 = v7 + v7 * 0.1;
    mPageViewDisplacement = self->mPageViewDisplacement;
    currentRelativePageIndex = [(THDocumentViewController *)self currentRelativePageIndex];
    [(THDocumentViewController *)self zoomedOutViewScale];
    v12 = v11;
    [-[THDocumentViewController interactiveCanvasController](self "interactiveCanvasController")];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_15178;
    v14[3] = &unk_45AED0;
    v14[4] = self;
    [(THPageViewDisplacement *)mPageViewDisplacement animateZoomWithDuration:currentRelativePageIndex initialPageIndex:v14 minViewScale:0.1 maxViewScale:v12 currentViewScale:v8 enumerator:v13];
  }
}

- (void)interactiveCanvasController:(id)controller willAnimateToViewScale:(double)scale withDuration:(double)duration unscaledContentOffset:(CGPoint)offset
{
  x = offset.x;
  if ([(THDocumentViewController *)self p_allowsPageDisplacement:controller])
  {
    [(THDocumentViewController *)self fitWidthViewScale];
    v11 = v10;
    [(THDocumentViewController *)self fitHeightViewScale];
    v13 = fmin(v11, v12);
    v14 = v13 + v13 * 0.1;
    [(THDocumentViewController *)self p_currentPageSize];
    *&v15 = x / v15;
    v16 = vcvtas_u32_f32(*&v15);
    mPageViewDisplacement = self->mPageViewDisplacement;
    [(THDocumentViewController *)self zoomedOutViewScale];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_15404;
    v19[3] = &unk_45AED0;
    v19[4] = self;
    [(THPageViewDisplacement *)mPageViewDisplacement animateZoomWithDuration:v16 initialPageIndex:v19 minViewScale:duration maxViewScale:v18 currentViewScale:v14 enumerator:scale];
  }
}

- (CGPoint)interactiveCanvasController:(id)controller clampContentOffset:(CGPoint)offset forViewScale:(double)scale
{
  y = offset.y;
  x = offset.x;
  if (!self->mDisableContentOffsetClamping)
  {
    [(THDocumentViewController *)self zoomedOutViewScale];
    v11 = vabdd_f64(scale, v10);
    if (v11 < 0.00999999978)
    {
      [*&self->TSADocumentViewController_opaque[OBJC_IVAR___TSADocumentViewController__scrollView] bounds];
      v13 = v12;
      isTwoUp = [(THDocumentViewController *)self isTwoUp];
      v15 = v13 * 0.5;
      if (!isTwoUp)
      {
        v15 = v13;
      }

      v11 = floor((x + v15 * 0.5) / v15);
    }

    [objc_msgSend(-[THDocumentViewController canvasViewController](self canvasViewController];
    if (vabdd_f64(scale, v16) >= 0.00999999978)
    {
      [(THDocumentViewController *)self p_maxScrollViewSize];
    }

    else
    {
      [-[THDocumentViewController canvasScrollView](self "canvasScrollView")];
    }

    [objc_msgSend(objc_msgSend(controller "layerHost")];
    TSDMultiplySizeScalar();
    v17 = OBJC_IVAR___TSADocumentViewController__scrollView;
    [*&self->TSADocumentViewController_opaque[OBJC_IVAR___TSADocumentViewController__scrollView] bounds];
    [*&self->TSADocumentViewController_opaque[v17] bounds];
    [*&self->TSADocumentViewController_opaque[v17] bounds];
    TSUClamp();
    x = v18;
    [*&self->TSADocumentViewController_opaque[v17] bounds];
    TSUClamp();
    y = v19;
  }

  v20 = x;
  v21 = y;
  result.y = v21;
  result.x = v20;
  return result;
}

- (double)interactiveCanvasController:(id)controller adjustViewScale:(double)scale
{
  [(THDocumentViewController *)self fitWidthViewScale];
  [(THDocumentViewController *)self fitHeightViewScale];
  if (vabdd_f64(scale, scaleCopy) >= 0.1)
  {
    scaleCopy = scale;
  }

  [(THDocumentViewController *)self zoomedInViewScale];
  [(THDocumentViewController *)self zoomedOutViewScale];

  TSUClamp();
  return result;
}

- (double)nextCanvasViewScaleDetentForProposedViewScale:(double)scale greater:(BOOL)greater
{
  [(THDocumentViewController *)self currentViewScale];
  [(THDocumentViewController *)self zoomedInViewScale];
  [(THDocumentViewController *)self zoomedOutViewScale];
  [(THDocumentViewController *)self fitWidthViewScale];
  [(THDocumentViewController *)self fitHeightViewScale];

  TSUClamp();
  return result;
}

- (BOOL)interactiveCanvasControllerShouldUseGuidedPan:(id)pan withMovementDirection:(CGPoint)direction
{
  y = direction.y;
  x = direction.x;
  objc_opt_class();
  v7 = TSUDynamicCast();
  if ((([v7 isCompactWidth] & 1) != 0 || objc_msgSend(v7, "isCompactHeight")) && -[THGuidedPanController wantsToHandlePan](-[THDocumentViewController guidedPanController](self, "guidedPanController"), "wantsToHandlePan"))
  {
    return 1;
  }

  [-[THDocumentViewController interactiveCanvasController](self "interactiveCanvasController")];
  v10 = v9;
  [(THDocumentViewController *)self zoomedOutViewScale];
  if (vabdd_f64(v10, v11) >= 0.00999999978)
  {
    return 0;
  }

  revealTOCPanController = [(THDocumentViewController *)self revealTOCPanController];

  return [(THRevealTOCPanController *)revealTOCPanController wantsToHandlePanInDirection:x, y];
}

- (id)panGuideForInteractiveCanvasController:(id)controller withMovementDirection:(CGPoint)direction
{
  y = direction.y;
  x = direction.x;
  objc_opt_class();
  v7 = TSUDynamicCast();
  if (([v7 isCompactWidth] & 1) == 0 && !objc_msgSend(v7, "isCompactHeight") || !-[THGuidedPanController wantsToHandlePan](-[THDocumentViewController guidedPanController](self, "guidedPanController"), "wantsToHandlePan") || (result = -[THDocumentViewController guidedPanController](self, "guidedPanController")) == 0)
  {
    [-[THDocumentViewController interactiveCanvasController](self "interactiveCanvasController")];
    v10 = v9;
    [(THDocumentViewController *)self zoomedOutViewScale];
    if (vabdd_f64(v10, v11) < 0.00999999978 && [(THRevealTOCPanController *)[(THDocumentViewController *)self revealTOCPanController] wantsToHandlePanInDirection:x, y])
    {

      return [(THDocumentViewController *)self revealTOCPanController];
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (void)guidedPanWillBegin
{
  [(THDocumentViewController *)self setInGuidedPan:1];
  [(THDocumentViewController *)self hideToolbarAnimated:1];
  if ([(THDocumentViewController *)self p_allowsPageDisplacement])
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_15B94;
    v3[3] = &unk_45AED0;
    v3[4] = self;
    [(THPageViewDisplacement *)[(THDocumentViewController *)self pageViewDisplacement] animateOpacityAndDisplaymentProgess:[(THDocumentViewController *)self currentRelativePageIndex] delay:v3 duration:0.0 initialPageIndex:0.0 enumerator:0.15];
  }
}

- (void)guidedPanWillAnimateFrom:(id)from to:(id)to duration:(double)duration
{
  if (-[THDocumentViewController p_allowsPageDisplacement](self, "p_allowsPageDisplacement") && ![to guidedPanTargetKind])
  {
    v9 = [to guidedPanRelativePageIndexWithController:{-[THDocumentViewController guidedPanController](self, "guidedPanController")}];
    if ([from guidedPanTargetKind])
    {
      v10 = 0.2;
    }

    else
    {
      v10 = 0.5;
    }

    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_15E20;
    v11[3] = &unk_45B160;
    v11[4] = self;
    v11[5] = v9;
    [(THPageViewDisplacement *)[(THDocumentViewController *)self pageViewDisplacement] animateOpacityAndDisplaymentProgess:v9 delay:v11 duration:1.0 initialPageIndex:v10 * duration enumerator:(1.0 - v10) * duration];
  }
}

- (void)guidedPanDidEnd
{
  [(THDocumentViewController *)self p_canvasDidZoom];

  [(THDocumentViewController *)self setInGuidedPan:0];
}

- (int64_t)guidedPanPageIndexForLayout:(id)layout
{
  v4 = [objc_msgSend(layout "pageLayout")];

  return [(THDocumentViewController *)self p_relativePageIndexForPageInfo:v4];
}

- (CGRect)widgetLayoutBounds
{
  view = [(THDocumentViewController *)self view];

  [view bounds];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (BOOL)widgetLayoutIsCompact:(id)compact
{
  if ([(THDocumentViewController *)self th_cachedIsCompactHeight])
  {
    return 1;
  }

  return [(THDocumentViewController *)self th_cachedIsCompactWidth];
}

- (void)flowPageControllerWillChangeContentHeight:(id)height
{
  if (!self->mLayoutAnchor)
  {
    activeSectionController = [(THDocumentViewController *)self activeSectionController];
    [-[THDocumentViewController interactiveCanvasController](self "interactiveCanvasController")];
    self->mLayoutAnchor = [(THSectionController *)activeSectionController layoutAnchorForContentOffset:?];
  }
}

- (CGRect)flowPageController:(id)controller overrideForBodyFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  if ([(THDocumentViewController *)self p_isCompactFlowPresentation]|| [(THDocumentViewController *)self isEpub])
  {
    [(THDocumentViewController *)self p_windowOrViewSize];
    v10 = v9;
    if ([(THDocumentViewController *)self isEpub])
    {
      [(THPresentationType *)[(THDocumentViewController *)self currentPresentationType] contentInsets];
    }

    else
    {
      [(THDocumentReflowableLayoutConfiguration *)[(THDocumentViewController *)self configuration] contentInsets];
      [-[THDocumentReflowableLayoutConfiguration environment](-[THDocumentViewController configuration](self "configuration")];
      UIEdgeInsetsAdd();
    }

    x = v11;
    v13 = v12;
    y = y * (v10 / 768.0);
    if ([(THDocumentViewController *)self isEpub])
    {
      y = y + 20.0;
    }

    width = v10 - x - v13;
  }

  v14 = x;
  v15 = y;
  v16 = width;
  v17 = height;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (BOOL)flowPageController:(id)controller isEdgeObscured:(unsigned int)obscured
{
  v6 = [+[UIApplication userInterfaceLayoutDirection:controller]];
  isEpub = [(THDocumentViewController *)self isEpub];
  if (isEpub)
  {
    if (obscured != 2 || v6 == UIUserInterfaceLayoutDirectionRightToLeft)
    {
      if (obscured)
      {
        v8 = 0;
      }

      else
      {
        v8 = v6 == UIUserInterfaceLayoutDirectionRightToLeft;
      }

      LOBYTE(isEpub) = v8;
    }

    else
    {
      LOBYTE(isEpub) = 1;
    }
  }

  return isEpub;
}

- (id)p_overscrollBarWithFrame:(CGRect)frame chapterIndex:(unint64_t)index tocTile:(id)tile
{
  height = frame.size.height;
  width = frame.size.width;
  v8 = [[UIImageView alloc] initWithFrame:{frame.origin.x, frame.origin.y, frame.size.width, frame.size.height}];
  v9 = [objc_msgSend(tile "portraitEntries")];
  if (v9)
  {
    v9 = [objc_msgSend(tile "portraitEntries")];
  }

  sectionIdentifier = [v9 sectionIdentifier];
  TSUScreenScale();
  v12 = v11;
  v30.width = width;
  v30.height = height;
  UIGraphicsBeginImageContextWithOptions(v30, 0, v12);
  Mutable = CFAttributedStringCreateMutable(0, 0);
  CFAttributedStringBeginEditing(Mutable);
  if (sectionIdentifier && [sectionIdentifier length])
  {
    v14 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", [THBundle() localizedStringForKey:@"Chapter %@" value:&stru_471858 table:0], sectionIdentifier);
    frontTitleText = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ %@", v14, [tile frontTitleText]);
  }

  else
  {
    frontTitleText = [tile frontTitleText];
    v14 = 0;
  }

  v26.location = 0;
  v26.length = 0;
  CFAttributedStringReplaceString(Mutable, v26, frontTitleText);
  UIFontForLanguage = CTFontCreateUIFontForLanguage(kCTFontUIFontEmphasizedSystem, 20.0, 0);
  v27.length = [(__CFString *)frontTitleText length];
  v27.location = 0;
  CFAttributedStringSetAttribute(Mutable, v27, kCTFontAttributeName, UIFontForLanguage);
  v17 = [(__CFString *)frontTitleText length];
  v18 = [+[UIColor colorWithWhite:alpha:](UIColor CGColor:0.666666687];
  v28.location = 0;
  v28.length = v17;
  CFAttributedStringSetAttribute(Mutable, v28, kCTForegroundColorAttributeName, v18);
  if (v14)
  {
    v19 = [(NSString *)v14 length];
    v20 = [+[UIColor colorWithWhite:alpha:](UIColor CGColor:0.376470596];
    v29.location = 0;
    v29.length = v19;
    CFAttributedStringSetAttribute(Mutable, v29, kCTForegroundColorAttributeName, v20);
  }

  CFRelease(UIFontForLanguage);
  CFAttributedStringEndEditing(Mutable);
  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextSaveGState(CurrentContext);
  v22 = *&CGAffineTransformIdentity.c;
  *&v25.a = *&CGAffineTransformIdentity.a;
  *&v25.c = v22;
  *&v25.tx = *&CGAffineTransformIdentity.tx;
  CGContextSetTextMatrix(CurrentContext, &v25);
  CGContextTranslateCTM(CurrentContext, 0.0, height);
  CGContextScaleCTM(CurrentContext, 1.0, -1.0);
  v23 = CTLineCreateWithAttributedString(Mutable);
  ImageBounds = CTLineGetImageBounds(v23, CurrentContext);
  CGContextSetTextPosition(CurrentContext, (width - ImageBounds.size.width) * 0.5, floor((height - ImageBounds.size.height) * 0.5));
  CTLineDraw(v23, CurrentContext);
  CFRelease(v23);
  CFRelease(Mutable);
  [v8 setImage:UIGraphicsGetImageFromCurrentImageContext()];
  UIGraphicsEndImageContext();
  return v8;
}

- (BOOL)p_canOverscroll
{
  if ([(THDocumentViewController *)self isRotating])
  {
    return 0;
  }

  [(THDocumentViewController *)self currentViewScale];
  v5 = v4;
  [(THDocumentViewController *)self zoomedOutViewScale];
  return vabdd_f64(v5, v6) < 0.00999999978;
}

- (void)p_setupOverscrollViews
{
  p_canOverscroll = [(THDocumentViewController *)self p_canOverscroll];
  if (!p_canOverscroll)
  {
LABEL_42:
    [(UIView *)[(THDocumentViewController *)self topOverscrollView] setHidden:p_canOverscroll ^ 1];
    [(UIView *)[(THDocumentViewController *)self bottomOverscrollView] setHidden:p_canOverscroll ^ 1];
    [(THOverscrollImageView *)[(THDocumentViewController *)self leftOverscrollView] setHidden:p_canOverscroll ^ 1];
    [(THOverscrollImageView *)[(THDocumentViewController *)self rightOverscrollView] setHidden:p_canOverscroll ^ 1];
    return;
  }

  v4 = *&CGAffineTransformIdentity.c;
  v78 = *&CGAffineTransformIdentity.a;
  v79 = v4;
  v80 = *&CGAffineTransformIdentity.tx;
  [(CALayer *)[(UIView *)[(THDocumentViewController *)self topOverscrollView] layer] setAffineTransform:&v78];
  v75 = *&CGAffineTransformIdentity.a;
  v76 = *&CGAffineTransformIdentity.c;
  v77 = *&CGAffineTransformIdentity.tx;
  layer = [(UIView *)[(THDocumentViewController *)self bottomOverscrollView] layer];
  v78 = v75;
  v79 = v76;
  v80 = v77;
  [(CALayer *)layer setAffineTransform:&v78];
  width = CGSizeZero.width;
  height = CGSizeZero.height;
  if ([(THDocumentViewController *)self activeSectionController])
  {
    [(THDocumentViewController *)self p_desiredCanvasSize];
    [(THDocumentViewController *)self currentViewScale];
    TSDMultiplySizeScalar();
    width = v8;
    height = v9;
  }

  currentChapter = [(THDocumentViewController *)self currentChapter];
  if (currentChapter != self->mOverscrollViewChapterNumber)
  {
    [(THDocumentViewController *)self p_releaseOverscrollViews];
    self->mOverscrollViewChapterNumber = currentChapter;
  }

  if (currentChapter != 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = [objc_msgSend(-[THDocumentViewController documentRoot](self "documentRoot")];
    inFlowMode = [(THDocumentViewController *)self inFlowMode];
    v13 = OBJC_IVAR___TSADocumentViewController__scrollView;
    v14 = *&self->TSADocumentViewController_opaque[OBJC_IVAR___TSADocumentViewController__scrollView];
    if (inFlowMode)
    {
      [v14 setAlwaysBounceHorizontal:0];
      [*&self->TSADocumentViewController_opaque[v13] setAlwaysBounceVertical:1];
      [(THOverscrollImageView *)[(THDocumentViewController *)self leftOverscrollView] removeFromSuperview];
      [(THOverscrollImageView *)[(THDocumentViewController *)self rightOverscrollView] removeFromSuperview];
      [*&self->TSADocumentViewController_opaque[v13] frame];
      [*&self->TSADocumentViewController_opaque[v13] frame];
      v16 = v15;
      [*&self->TSADocumentViewController_opaque[v13] frame];
      v18 = v17;
      v19 = height;
      v20 = v17;
      v21 = fmaxf(v19, v20);
      v22 = -20.0 - v17;
      if (currentChapter && !self->mTopOverscrollView && (currentChapter <= [v11 count] || !v11))
      {
        self->mTopOverscrollView = [[UIView alloc] initWithFrame:{0.0, v22, v16, v18}];
        [(UIView *)self->mTopOverscrollView setBackgroundColor:[(THDocumentViewController *)self backgroundColor]];
        v23 = -[THDocumentViewController p_overscrollBarWithFrame:chapterIndex:tocTile:](self, "p_overscrollBarWithFrame:chapterIndex:tocTile:", currentChapter - 1, [v11 objectAtIndex:currentChapter - 1], 0.0, v18 + -48.0, v16, 48.0);
        [v23 setAutoresizingMask:12];
        [(UIView *)self->mTopOverscrollView addSubview:v23];
      }

      if (!self->mBottomOverscrollView)
      {
        v24 = currentChapter + 1;
        if (v24 < [v11 count] || !v11)
        {
          self->mBottomOverscrollView = [[UIView alloc] initWithFrame:{0.0, v21 + 20.0, v16, v18}];
          [(UIView *)self->mBottomOverscrollView setBackgroundColor:[(THDocumentViewController *)self backgroundColor]];
          v25 = -[THDocumentViewController p_overscrollBarWithFrame:chapterIndex:tocTile:](self, "p_overscrollBarWithFrame:chapterIndex:tocTile:", v24, [v11 objectAtIndex:v24], 0.0, 0.0, v16, 48.0);
          [v25 setAutoresizingMask:36];
          [(UIView *)self->mBottomOverscrollView addSubview:v25];
        }
      }

      if (![(UIView *)[(THDocumentViewController *)self topOverscrollView] superview])
      {
        [*&self->TSADocumentViewController_opaque[v13] addSubview:{-[THDocumentViewController topOverscrollView](self, "topOverscrollView")}];
      }

      if (![(UIView *)[(THDocumentViewController *)self bottomOverscrollView] superview])
      {
        [*&self->TSADocumentViewController_opaque[v13] addSubview:{-[THDocumentViewController bottomOverscrollView](self, "bottomOverscrollView")}];
      }

      [(UIView *)[(THDocumentViewController *)self topOverscrollView] setFrame:0.0, v22, v16, v18];
      bottomOverscrollView = [(THDocumentViewController *)self bottomOverscrollView];
      v27 = 0.0;
      v28 = v21 + 20.0;
      v29 = v16;
      v30 = v18;
    }

    else
    {
      [v14 setAlwaysBounceHorizontal:1];
      [*&self->TSADocumentViewController_opaque[v13] setAlwaysBounceVertical:0];
      [(UIView *)[(THDocumentViewController *)self topOverscrollView] removeFromSuperview];
      [(UIView *)[(THDocumentViewController *)self bottomOverscrollView] removeFromSuperview];
      [*&self->TSADocumentViewController_opaque[v13] bounds];
      v32 = v31;
      v34 = v33;
      [*&self->TSADocumentViewController_opaque[v13] contentSize];
      if (v35 > 0.0)
      {
        [*&self->TSADocumentViewController_opaque[v13] contentSize];
        v34 = v36;
      }

      v37 = 1.0;
      if ([(THDocumentViewController *)self isTwoUp])
      {
        if ([(THDocumentViewController *)self p_isSinglePageChapter])
        {
          v37 = 0.0;
        }

        else
        {
          v37 = 1.0;
        }
      }

      [-[THDocumentViewController interactiveCanvasController](self "interactiveCanvasController")];
      if (v38 == 1.0)
      {
        v39 = 0.0;
      }

      else
      {
        v39 = v37;
      }

      v40 = v32 + v39;
      v41 = v39 - v40;
      if (currentChapter && !self->mLeftOverscrollView && (currentChapter <= [v11 count] || !v11))
      {
        self->mLeftOverscrollView = [[THOverscrollImageView alloc] initWithFrame:v39 - v40, 0.0, v40, v34];
        [(THOverscrollImageView *)self->mLeftOverscrollView setBackgroundColor:[(THDocumentViewController *)self backgroundColor]];
        [-[THOverscrollImageView layer](self->mLeftOverscrollView "layer")];
        if (![(THDocumentViewController *)self isEpub])
        {
          if (v11)
          {
            v49 = [v11 objectAtIndex:currentChapter - 1];
            v50 = [objc_msgSend(v49 "largerThumbs")];
            if (v50)
            {
              v51 = v50;
              if ([(THDocumentViewController *)self isTwoUp])
              {
                largerThumbs = [v49 largerThumbs];
                v53 = (v40 - v40 * 0.5) * 0.5;
                if (v51 != &dword_0 + 1)
                {
                  v53 = v40 * 0.5;
                }

                v74 = v53;
                v54 = +[UIImage imageWithCGImage:](UIImage, "imageWithCGImage:", +[TSDBitmapImageProvider CGImageForImageData:](TSDBitmapImageProvider, "CGImageForImageData:", [largerThumbs objectAtIndex:v51 - 1]));
                CGRectMakeWithSize();
                v57 = [[THOverscrollImageView alloc] initWithFrame:v74, v55, v40 * 0.5, v56];
                [(THOverscrollImageView *)v57 setImage:v54];
                [(THOverscrollImageView *)self->mLeftOverscrollView addSubview:v57];
                if (v51 == &dword_0 + 1)
                {
                  [(THOverscrollImageView *)self->mLeftOverscrollView setBackgroundColor:+[UIColor clearColor]];
                }

                else
                {
                  v66 = +[UIImage imageWithCGImage:](UIImage, "imageWithCGImage:", +[TSDBitmapImageProvider CGImageForImageData:](TSDBitmapImageProvider, "CGImageForImageData:", [objc_msgSend(v49 "largerThumbs")]));
                  CGRectMakeWithSize();
                  v69 = [[THOverscrollImageView alloc] initWithFrame:0.0, v67, v40 * 0.5, v68];
                  [(THOverscrollImageView *)v69 setImage:v66];
                  [(THOverscrollImageView *)self->mLeftOverscrollView addSubview:v69];
                }
              }

              else
              {
                -[THOverscrollImageView setImage:](self->mLeftOverscrollView, "setImage:", +[UIImage imageWithCGImage:](UIImage, "imageWithCGImage:", +[TSDBitmapImageProvider CGImageForImageData:](TSDBitmapImageProvider, "CGImageForImageData:", [objc_msgSend(v49 "largerThumbs")])));
              }
            }
          }
        }
      }

      v42 = width - v39;
      if (!self->mRightOverscrollView)
      {
        if (currentChapter + 1 >= [v11 count] && v11)
        {
          v43 = [objc_msgSend(objc_msgSend(v11 objectAtIndex:{currentChapter), "largerThumbs"), "count"}];
          if (![(THDocumentViewController *)self isEpub]&& (![(THDocumentViewController *)self isTwoUp]|| v43 >= 2))
          {
            v44 = [[THOverscrollImageView alloc] initWithFrame:v42, 0.0, v40, v34];
            self->mRightOverscrollView = v44;
            [(THOverscrollImageView *)v44 setClipsToBounds:1];
            layer2 = [(THOverscrollImageView *)self->mRightOverscrollView layer];
            [layer2 setShadowColor:{-[UIColor CGColor](+[UIColor blackColor](UIColor, "blackColor"), "CGColor")}];
            [layer2 setShadowOffset:{5.0, 0.0}];
            LODWORD(v46) = 1050253722;
            [layer2 setShadowOpacity:v46];
            Mutable = CGPathCreateMutable();
            [(THOverscrollImageView *)self->mRightOverscrollView bounds];
            v81.origin.x = v48 + -10.0;
            v81.size.width = 10.0;
            CGPathAddRect(Mutable, 0, v81);
            [layer2 setShadowPath:Mutable];
            CGPathRelease(Mutable);
          }
        }

        else
        {
          self->mRightOverscrollView = [[THOverscrollImageView alloc] initWithFrame:v42, 0.0, v40, v34];
          [(THOverscrollImageView *)self->mRightOverscrollView setBackgroundColor:[(THDocumentViewController *)self backgroundColor]];
          [-[THOverscrollImageView layer](self->mRightOverscrollView "layer")];
          if (![(THDocumentViewController *)self isEpub])
          {
            if (v11)
            {
              v58 = [v11 objectAtIndex:currentChapter + 1];
              v59 = [objc_msgSend(v58 "largerThumbs")];
              if (v59)
              {
                v60 = v59;
                if ([(THDocumentViewController *)self isTwoUp])
                {
                  v61 = +[UIImage imageWithCGImage:](UIImage, "imageWithCGImage:", +[TSDBitmapImageProvider CGImageForImageData:](TSDBitmapImageProvider, "CGImageForImageData:", [objc_msgSend(v58 "largerThumbs")]));
                  if (v60 == &dword_0 + 1)
                  {
                    v62 = (v40 - v40 * 0.5) * 0.5;
                  }

                  else
                  {
                    v62 = 0.0;
                  }

                  CGRectMakeWithSize();
                  v65 = [[THOverscrollImageView alloc] initWithFrame:v62, v63, v40 * 0.5, v64];
                  [(THOverscrollImageView *)v65 setImage:v61];
                  [(THOverscrollImageView *)self->mRightOverscrollView addSubview:v65];
                  if (v60 == &dword_0 + 1)
                  {
                    [(THOverscrollImageView *)self->mRightOverscrollView setBackgroundColor:+[UIColor clearColor]];
                  }

                  else
                  {
                    v70 = +[UIImage imageWithCGImage:](UIImage, "imageWithCGImage:", +[TSDBitmapImageProvider CGImageForImageData:](TSDBitmapImageProvider, "CGImageForImageData:", [objc_msgSend(v58 "largerThumbs")]));
                    CGRectMakeWithSize();
                    v73 = [[THOverscrollImageView alloc] initWithFrame:v40 * 0.5, v71, v40 * 0.5, v72];
                    [(THOverscrollImageView *)v73 setImage:v70];
                    [(THOverscrollImageView *)self->mRightOverscrollView addSubview:v73];
                  }
                }

                else
                {
                  -[THOverscrollImageView setImage:](self->mRightOverscrollView, "setImage:", +[UIImage imageWithCGImage:](UIImage, "imageWithCGImage:", +[TSDBitmapImageProvider CGImageForImageData:](TSDBitmapImageProvider, "CGImageForImageData:", [objc_msgSend(v58 "largerThumbs")])));
                }
              }
            }
          }
        }
      }

      if (![(THOverscrollImageView *)[(THDocumentViewController *)self leftOverscrollView] superview])
      {
        [*&self->TSADocumentViewController_opaque[v13] addSubview:{-[THDocumentViewController leftOverscrollView](self, "leftOverscrollView")}];
      }

      if (![(THOverscrollImageView *)[(THDocumentViewController *)self rightOverscrollView] superview])
      {
        [*&self->TSADocumentViewController_opaque[v13] addSubview:{-[THDocumentViewController rightOverscrollView](self, "rightOverscrollView")}];
      }

      [(THOverscrollImageView *)[(THDocumentViewController *)self leftOverscrollView] setFrame:v41, 0.0, v40, v34];
      bottomOverscrollView = [(THDocumentViewController *)self rightOverscrollView];
      v28 = 0.0;
      v27 = v42;
      v29 = v40;
      v30 = v34;
    }

    [(THOverscrollImageView *)bottomOverscrollView setFrame:v27, v28, v29, v30];
    [(THDocumentViewController *)self p_updateVerticalOverscrollTransform];
    goto LABEL_42;
  }
}

- (void)p_releaseOverscrollViews
{
  [(UIView *)[(THDocumentViewController *)self topOverscrollView] removeFromSuperview];
  [(UIView *)[(THDocumentViewController *)self bottomOverscrollView] removeFromSuperview];
  [(THDocumentViewController *)self setTopOverscrollView:0];
  [(THDocumentViewController *)self setBottomOverscrollView:0];
  [(THOverscrollImageView *)[(THDocumentViewController *)self leftOverscrollView] removeFromSuperview];
  [(THOverscrollImageView *)[(THDocumentViewController *)self rightOverscrollView] removeFromSuperview];
  [(THDocumentViewController *)self setLeftOverscrollView:0];

  [(THDocumentViewController *)self setRightOverscrollView:0];
}

- (void)p_fadeOutOverscrollTransition
{
  if ([(THDocumentViewController *)self overscrollTransitionView])
  {
    if (self->mOverscrollTransitionInProcess)
    {
      [(THDocumentViewController *)self p_updateVisibleInfos];
      v4[0] = _NSConcreteStackBlock;
      v4[1] = 3221225472;
      v4[2] = sub_17270;
      v4[3] = &unk_45AE00;
      v4[4] = self;
      v3[0] = _NSConcreteStackBlock;
      v3[1] = 3221225472;
      v3[2] = sub_172A0;
      v3[3] = &unk_45B188;
      v3[4] = self;
      [UIView animateWithDuration:0 delay:v4 options:v3 animations:0.25 completion:0.0];
      self->mOverscrollTransitionInProcess = 0;
      [(THDocumentViewController *)self setLastStorageAnchor:0];
      [(THDocumentViewController *)self setJustUpdatedPresentationType:0];
    }
  }
}

- (void)p_setupVerticalOverscrollTransitionAnimationToChapter:(id)chapter
{
  view = [(THDocumentViewController *)self view];
  [(UIView *)[(THDocumentViewController *)self overscrollTransitionView] frame];
  [view convertRect:*&self->TSADocumentViewController_opaque[OBJC_IVAR___TSADocumentViewController__scrollView] fromView:?];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  [(UIView *)[(THDocumentViewController *)self overscrollTransitionView] removeFromSuperview];
  [(UIView *)[(THDocumentViewController *)self overscrollTransitionView] setFrame:v7, v9, v11, v13];
  [-[THDocumentViewController view](self "view")];
  [(THDocumentViewController *)self p_verticalOverscrollAnimationDuration];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_17494;
  v15[3] = &unk_45AE00;
  v15[4] = self;
  [UIView animateWithDuration:"animateWithDuration:delay:options:animations:completion:" delay:0 options:v15 animations:&stru_45B1A8 completion:?];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_17518;
  v14[3] = &unk_45AE58;
  v14[4] = self;
  v14[5] = chapter;
  [+[NSOperationQueue mainQueue](NSOperationQueue addOperation:"addOperation:", [NSBlockOperation blockOperationWithBlock:v14]];
}

- (void)p_verticalOverscrollSetPreviousChapterNavigationUnit:(id)unit
{
  [-[THDocumentViewController interactiveCanvasController](self "interactiveCanvasController")];
  [(THDocumentViewController *)self setCurrentNavigationUnit:unit];
  [(THDocumentViewController *)self setVisibleRelativePageRange:NSInvalidRange[0], NSInvalidRange[1]];
  [(THDocumentViewController *)self updateVisibleInfos];
  activeSectionController = [(THDocumentViewController *)self activeSectionController];
  [-[THDocumentViewController interactiveCanvasController](self "interactiveCanvasController")];
  -[THSectionController layoutContentFromBottom:layoutController:](activeSectionController, "layoutContentFromBottom:layoutController:", [-[THDocumentViewController interactiveCanvasController](self "interactiveCanvasController")], v6 + v6);
  [-[THDocumentViewController interactiveCanvasController](self "interactiveCanvasController")];
  [(THDocumentViewController *)self p_desiredCanvasSize];
  TSDRectWithSize();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  [*&self->TSADocumentViewController_opaque[OBJC_IVAR___TSADocumentViewController__scrollView] bounds];
  if (v14 > v15)
  {
    v16 = v14 - v15;
  }

  else
  {
    v15 = v14;
    v16 = v10;
  }

  [(THDocumentViewController *)self p_setUnscaledCanvasRect:v8, v16, v12, v15];
}

- (void)p_verticalOverscrollPreviousChapter
{
  currentChapter = [(THDocumentViewController *)self currentChapter];
  if (currentChapter && currentChapter != 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = [(THDocumentViewController *)self navigationUnitForChapterIndex:currentChapter - 1];
    if (v4)
    {
      v5 = v4;
      self->mOverscrollAnimationInProcess = 1;
      view = [(THDocumentViewController *)self view];
      [(UIView *)[(THDocumentViewController *)self topOverscrollView] frame];
      v7 = OBJC_IVAR___TSADocumentViewController__scrollView;
      [view convertRect:*&self->TSADocumentViewController_opaque[OBJC_IVAR___TSADocumentViewController__scrollView] fromView:?];
      v9 = v8;
      v11 = v10;
      v12 = v10 + v10;
      -[THDocumentViewController setOverscrollTransitionView:](self, "setOverscrollTransitionView:", [[UIView alloc] initWithFrame:{v13, v14, v8, v10 + v10}]);
      [(UIView *)[(THDocumentViewController *)self topOverscrollView] removeFromSuperview];
      [(UIView *)[(THDocumentViewController *)self topOverscrollView] setFrame:0.0, 0.0, v9, v11];
      [(UIView *)[(THDocumentViewController *)self overscrollTransitionView] addSubview:[(THDocumentViewController *)self topOverscrollView]];
      [-[THDocumentViewController view](self "view")];
      [objc_msgSend(objc_msgSend(-[THDocumentViewController interactiveCanvasController](self "interactiveCanvasController")];
      v15 = [-[THDocumentViewController interactiveCanvasController](self "interactiveCanvasController")];
      [v15 removeFromSuperview];
      [v15 frame];
      v17 = v16;
      v19 = v18;
      v21 = v20;
      v22 = v11 + 20.0;
      [v15 setFrame:{v16, v22}];
      [(UIView *)[(THDocumentViewController *)self overscrollTransitionView] addSubview:v15];
      [*&self->TSADocumentViewController_opaque[v7] frame];
      v24 = v23;
      v26 = v25;
      [(THDocumentViewController *)self setTopOverscrollView:0];
      [(THDocumentViewController *)self p_verticalOverscrollAnimationDuration];
      v28[0] = _NSConcreteStackBlock;
      v28[1] = 3221225472;
      v28[2] = sub_178E8;
      v28[3] = &unk_45B1D0;
      v28[4] = self;
      v28[5] = v24;
      v28[6] = v26;
      *&v28[7] = v9;
      *&v28[8] = v12;
      v27[0] = _NSConcreteStackBlock;
      v27[1] = 3221225472;
      v27[2] = sub_1793C;
      v27[3] = &unk_45B1F8;
      *&v27[7] = v17;
      *&v27[8] = v22;
      v27[9] = v19;
      v27[10] = v21;
      v27[4] = v15;
      v27[5] = self;
      v27[6] = v5;
      [UIView animateWithDuration:"animateWithDuration:delay:options:animations:completion:" delay:0 options:v28 animations:v27 completion:?];
    }
  }
}

- (void)p_verticalOverscrollNextChapter
{
  currentChapter = [(THDocumentViewController *)self currentChapter];
  v4 = [objc_msgSend(-[THDocumentViewController documentRoot](self "documentRoot")];
  if (currentChapter != 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = currentChapter + 1;
    if (v5 < [v4 count])
    {
      v6 = [(THDocumentViewController *)self navigationUnitForChapterIndex:v5];
      if (v6)
      {
        v7 = v6;
        self->mOverscrollAnimationInProcess = 1;
        view = [(THDocumentViewController *)self view];
        [(UIView *)[(THDocumentViewController *)self bottomOverscrollView] frame];
        v9 = OBJC_IVAR___TSADocumentViewController__scrollView;
        [view convertRect:*&self->TSADocumentViewController_opaque[OBJC_IVAR___TSADocumentViewController__scrollView] fromView:?];
        v11 = v10;
        v13 = v12;
        v14 = v12 + v12;
        -[THDocumentViewController setOverscrollTransitionView:](self, "setOverscrollTransitionView:", [[UIView alloc] initWithFrame:{v16, v15 - v12, v10, v12 + v12}]);
        [(UIView *)[(THDocumentViewController *)self bottomOverscrollView] removeFromSuperview];
        [(UIView *)[(THDocumentViewController *)self bottomOverscrollView] setFrame:0.0, v13, v11, v13];
        [(UIView *)[(THDocumentViewController *)self overscrollTransitionView] addSubview:[(THDocumentViewController *)self bottomOverscrollView]];
        [-[THDocumentViewController view](self "view")];
        [objc_msgSend(objc_msgSend(-[THDocumentViewController interactiveCanvasController](self "interactiveCanvasController")];
        v17 = [-[THDocumentViewController interactiveCanvasController](self "interactiveCanvasController")];
        [v17 removeFromSuperview];
        [v17 frame];
        v19 = v18;
        v21 = v20;
        v23 = v22;
        v24 = v13 + -20.0 - v22;
        [v17 setFrame:{v18, v24}];
        [(UIView *)[(THDocumentViewController *)self overscrollTransitionView] addSubview:v17];
        [*&self->TSADocumentViewController_opaque[v9] frame];
        v26 = v25;
        v28 = v27 - v13;
        [(THDocumentViewController *)self setBottomOverscrollView:0];
        [(THDocumentViewController *)self p_verticalOverscrollAnimationDuration];
        v30[0] = _NSConcreteStackBlock;
        v30[1] = 3221225472;
        v30[2] = sub_17D94;
        v30[3] = &unk_45B1D0;
        v30[4] = self;
        v30[5] = v26;
        *&v30[6] = v28;
        *&v30[7] = v11;
        *&v30[8] = v14;
        v29[0] = _NSConcreteStackBlock;
        v29[1] = 3221225472;
        v29[2] = sub_17DE8;
        v29[3] = &unk_45B1F8;
        *&v29[7] = v19;
        *&v29[8] = v24;
        v29[9] = v21;
        *&v29[10] = v23;
        v29[4] = v17;
        v29[5] = self;
        v29[6] = v7;
        [UIView animateWithDuration:"animateWithDuration:delay:options:animations:completion:" delay:0 options:v30 animations:v29 completion:?];
      }
    }
  }
}

- (void)p_animateHorizontalOverscrollToPageIndex:(unint64_t)index duration:(double)duration animationCompletionBlock:(id)block layoutCompletionBlock:(id)completionBlock
{
  if (![(THPresentationType *)[(THDocumentViewController *)self currentPresentationType] isPaginated])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  currentAbsolutePageIndex = [(THDocumentViewController *)self currentAbsolutePageIndex];
  v12 = [objc_msgSend(-[THDocumentViewController documentRoot](self "documentRoot")];
  v13 = OBJC_IVAR___TSADocumentViewController__scrollView;
  [*&self->TSADocumentViewController_opaque[OBJC_IVAR___TSADocumentViewController__scrollView] contentOffset];
  v15 = v14;
  v17 = v16;
  [(THSectionController *)[(THDocumentViewController *)self activeSectionController] canvasRectForRelativePageIndex:v12];
  v19 = v18;
  [-[THDocumentViewController interactiveCanvasController](self "interactiveCanvasController")];
  [*&self->TSADocumentViewController_opaque[v13] setContentOffset:{v19 * v20, v17}];
  [*&self->TSADocumentViewController_opaque[v13] contentOffset];
  v22 = v21 - v15;
  [*&self->TSADocumentViewController_opaque[v13] bounds];
  if (index <= currentAbsolutePageIndex)
  {
    v24 = v23;
  }

  else
  {
    v24 = -v23;
  }

  if (vabdd_f64(v22, v24) >= 0.00999999978)
  {
    [-[THDocumentViewController interactiveCanvasController](self "interactiveCanvasController")];
    [objc_msgSend(objc_msgSend(-[THDocumentViewController interactiveCanvasController](self "interactiveCanvasController")];
    [*&self->TSADocumentViewController_opaque[v13] setUserInteractionEnabled:0];
    objc_opt_class();
    v26 = TSUCheckedDynamicCast();
    v27 = v26;
    if (v26 && [v26 preventBounceAnimation])
    {
      [v27 setPreventBounceAnimation:0];
      v28 = 1;
    }

    else
    {
      v28 = 0;
    }

    +[CATransaction begin];
    [CATransaction setAnimationDuration:duration];
    [CATransaction setAnimationTimingFunction:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut]];
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_183EC;
    v33[3] = &unk_45B220;
    v33[7] = completionBlock;
    v33[8] = index;
    v33[4] = self;
    v33[5] = v27;
    v34 = v28;
    v33[6] = block;
    [CATransaction setCompletionBlock:v33];
    v29 = [CABasicAnimation animationWithKeyPath:@"sublayerTransform"];
    CATransform3DMakeTranslation(&v32, v22, 0.0, 0.0);
    [(CABasicAnimation *)v29 setFromValue:[NSValue valueWithCATransform3D:&v32]];
    CATransform3DMakeTranslation(&v32, v24, 0.0, 0.0);
    [(CABasicAnimation *)v29 setToValue:[NSValue valueWithCATransform3D:&v32]];
    [(CABasicAnimation *)v29 setTimingFunction:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut]];
    [(CABasicAnimation *)v29 setRemovedOnCompletion:0];
    [(CABasicAnimation *)v29 setFillMode:kCAFillModeForwards];
    [objc_msgSend(*&self->TSADocumentViewController_opaque[v13] "layer")];
    if ([(THDocumentViewController *)self p_allowsPageDisplacement])
    {
      mPageViewProvider = self->mPageViewProvider;
      v31[0] = _NSConcreteStackBlock;
      v31[1] = 3221225472;
      v31[2] = sub_184D8;
      v31[3] = &unk_45B298;
      v31[4] = self;
      *&v31[5] = duration;
      [(THPageViewProvider *)mPageViewProvider syncPerformBlock:v31];
    }

    +[CATransaction commit];
  }

  else
  {
    if (block)
    {
      (*(block + 2))(block);
    }

    [(THDocumentNavigator *)[(THDocumentViewController *)self documentNavigator] setVisibleAbsolutePhysicalPageIndex:index];
    [-[THDocumentViewController interactiveCanvasController](self "interactiveCanvasController")];
    [-[THDocumentViewController interactiveCanvasController](self "interactiveCanvasController")];
    +[CATransaction flush];
    if (completionBlock)
    {
      v25 = *(completionBlock + 2);

      v25(completionBlock);
    }
  }
}

- (void)p_setupHorizontalOverscrollTransitionAnimationToAbsolutePageIndex:(unint64_t)index
{
  self->mOverscrollAnimationInProcess = 1;
  [(THDocumentViewController *)self p_horizontalOverscrollAnimationDuration];
  v5[4] = self;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_186BC;
  v6[3] = &unk_45AE00;
  v6[4] = self;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_18780;
  v5[3] = &unk_45AE00;
  [(THDocumentViewController *)self p_animateHorizontalOverscrollToPageIndex:index duration:v6 animationCompletionBlock:v5 layoutCompletionBlock:?];
}

- (void)p_horizontalOverscrollPreviousChapter
{
  if (![(THDocumentViewController *)self overscrollTransitionView]&& (![(THDocumentViewController *)self reflowablePaginationController]|| [(THReflowablePaginationController *)[(THDocumentViewController *)self reflowablePaginationController] paginationComplete]))
  {
    if ([(THDocumentViewController *)self p_canOverscroll])
    {
      if ([(THDocumentViewController *)self leftOverscrollView])
      {
        currentChapter = [(THDocumentViewController *)self currentChapter];
        if (currentChapter)
        {
          if (currentChapter != 0x7FFFFFFFFFFFFFFFLL)
          {
            v4 = [(THDocumentViewController *)self navigationUnitForChapterIndex:currentChapter - 1];
            if (v4)
            {
              v5 = v4;
              [(THDocumentViewController *)self setOverscrollTransitionView:[(THDocumentViewController *)self leftOverscrollView]];
              [(THDocumentViewController *)self setLeftOverscrollView:0];
              currentPresentationType = [(THDocumentViewController *)self currentPresentationType];
              v7 = [v5 absolutePageIndexForRelativePageIndex:objc_msgSend(v5 forPresentationType:{"pageCountForPresentationType:", currentPresentationType) - 1, currentPresentationType}];

              [(THDocumentViewController *)self p_setupHorizontalOverscrollTransitionAnimationToAbsolutePageIndex:v7];
            }
          }
        }
      }
    }
  }
}

- (void)p_horizontalOverscrollNextChapter
{
  if (![(THDocumentViewController *)self overscrollTransitionView]&& (![(THDocumentViewController *)self reflowablePaginationController]|| [(THReflowablePaginationController *)[(THDocumentViewController *)self reflowablePaginationController] paginationComplete]))
  {
    if ([(THDocumentViewController *)self p_canOverscroll])
    {
      if ([(THDocumentViewController *)self rightOverscrollView])
      {
        currentChapter = [(THDocumentViewController *)self currentChapter];
        v4 = [objc_msgSend(-[THDocumentViewController documentRoot](self "documentRoot")];
        if (currentChapter != 0x7FFFFFFFFFFFFFFFLL)
        {
          v5 = currentChapter + 1;
          if (v5 < [v4 count])
          {
            v6 = [(THDocumentViewController *)self navigationUnitForChapterIndex:v5];
            if (v6)
            {
              v7 = v6;
              [(THDocumentViewController *)self setOverscrollTransitionView:[(THDocumentViewController *)self rightOverscrollView]];
              [(THDocumentViewController *)self setRightOverscrollView:0];
              v8 = [v7 absolutePageIndexForRelativePageIndex:0 forPresentationType:{-[THDocumentViewController currentPresentationType](self, "currentPresentationType")}];

              [(THDocumentViewController *)self p_setupHorizontalOverscrollTransitionAnimationToAbsolutePageIndex:v8];
            }
          }
        }
      }
    }
  }
}

- (void)p_pageLeft
{
  interactiveCanvasController = [(THDocumentViewController *)self interactiveCanvasController];

  [interactiveCanvasController pageLeft];
}

- (void)p_pageRight
{
  interactiveCanvasController = [(THDocumentViewController *)self interactiveCanvasController];

  [interactiveCanvasController pageRight];
}

- (void)presentSearchResultsForString:(id)string
{
  toolbarDelegate = [(THDocumentViewController *)self toolbarDelegate];

  [(THToolbarDelegate *)toolbarDelegate showSearchPopoverWithText:string];
}

- (void)showToolbarAnimated:(BOOL)animated
{
  [(THToolbarDelegate *)[(THDocumentViewController *)self toolbarDelegate] showToolbarAnimated:animated];

  [(THDocumentViewController *)self p_updatePageNumberViewVisibility];
}

- (void)hideToolbarAnimated:(BOOL)animated
{
  [(THToolbarDelegate *)[(THDocumentViewController *)self toolbarDelegate] hideToolbarAnimated:animated];

  [(THDocumentViewController *)self p_updatePageNumberViewVisibility];
}

- (void)settingToolbarHidden:(BOOL)hidden animated:(BOOL)animated
{
  animatedCopy = animated;
  hiddenCopy = hidden;
  [-[THDocumentViewController interactiveCanvasController](self "interactiveCanvasController")];
  [(THDocumentViewController *)self p_updateScrubberCheckToolbarState:0];
  if (animatedCopy)
  {

    [(THDocumentViewController *)self setScrubberHiddenAnimated:hiddenCopy];
  }

  else
  {
    scrubber = [(THDocumentViewController *)self scrubber];

    [(BKScrubberControl *)scrubber setHidden:hiddenCopy];
  }
}

- (void)setScrubberHiddenAnimated:(BOOL)animated
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_18C14;
  v3[3] = &unk_45B2C0;
  v3[4] = self;
  animatedCopy = animated;
  [UIView transitionWithView:[(THDocumentViewController *)self scrubber] duration:256 options:v3 animations:0 completion:0.25];
}

- (void)toggleToolbar
{
  if (![(THDocumentViewController *)self showingExpandedWidgetView])
  {
    if (([(THToolbarDelegate *)[(THDocumentViewController *)self toolbarDelegate] isToolbarHidden]& 1) != 0)
    {

      [(THDocumentViewController *)self showToolbarAnimated:1];
    }

    else
    {

      [(THDocumentViewController *)self hideToolbarAnimated:1];
    }
  }
}

- (void)p_setUnscaledCanvasRect:(CGRect)rect animated:(BOOL)animated
{
  animatedCopy = animated;
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  if ((!-[THDocumentViewController inFlowMode](self, "inFlowMode") || [objc_msgSend(objc_msgSend(-[THDocumentViewController interactiveCanvasController](self "interactiveCanvasController")]) && -[THDocumentViewController inFlowMode](self, "inFlowMode"))
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  if ([(THDocumentViewController *)self inFlowMode])
  {

    self->mLayoutAnchor = 0;
    self->mLayoutAnchor = [(THSectionController *)[(THDocumentViewController *)self activeSectionController] layoutAnchorForContentOffset:x, y];
  }

  [-[THDocumentViewController interactiveCanvasController](self "interactiveCanvasController")];
  [(THSectionController *)[(THDocumentViewController *)self activeSectionController] ensureLayoutThroughRect:[(THDocumentViewController *)self p_activePagePaddingOptions] pad:x, y, width, height];
  [(THDocumentViewController *)self p_updateCanvasSize];
  [-[THDocumentViewController interactiveCanvasController](self "interactiveCanvasController")];
  [(THDocumentViewController *)self p_visibleRectChanged];
  if (([-[THDocumentViewController interactiveCanvasController](self "interactiveCanvasController")] & 1) == 0)
  {
    [(THDocumentViewController *)self p_updateBookmarkAffordances];
    displaySleepController = [(THDocumentViewController *)self displaySleepController];

    [(BCDisplaySleepController *)displaySleepController userInteractionOccurred];
  }
}

- (void)p_clearCanvas
{
  if ([-[THDocumentViewController interactiveCanvasController](self "interactiveCanvasController")])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  [-[THDocumentViewController interactiveCanvasController](self "interactiveCanvasController")];
  [(THDocumentViewController *)self setVisibleRelativePageRange:NSInvalidRange[0], NSInvalidRange[1]];
  [-[THDocumentViewController interactiveCanvasController](self "interactiveCanvasController")];
  [(THPageViewProvider *)[(THDocumentViewController *)self pageViewProvider] updateWithInfosToDisplay:0];
  [-[THDocumentViewController interactiveCanvasController](self "interactiveCanvasController")];
  interactiveCanvasController = [(THDocumentViewController *)self interactiveCanvasController];

  [interactiveCanvasController popThreadedLayoutAndRenderDisabled];
}

- (id)currentContentNode
{
  documentNavigator = [(THDocumentViewController *)self documentNavigator];

  return [(THDocumentNavigator *)documentNavigator currentContentNode];
}

- (double)p_horizontalOverscrollAnimationDuration
{
  IsVoiceOverRunning = UIAccessibilityIsVoiceOverRunning();
  result = 0.5;
  if (IsVoiceOverRunning)
  {
    return 0.0;
  }

  return result;
}

- (double)p_verticalOverscrollAnimationDuration
{
  IsVoiceOverRunning = UIAccessibilityIsVoiceOverRunning();
  result = 0.75;
  if (IsVoiceOverRunning)
  {
    return 0.0;
  }

  return result;
}

- (void)followAbsolutePageIndex:(unint64_t)index
{
  if (index != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = [objc_msgSend(-[THDocumentViewController documentRoot](self "documentRoot")];
    [(THDocumentViewController *)self p_ensureInNavigationUnitForContentNode:v6];
    v7 = [v6 storageAnchorForNodeRelativePageIndex:{objc_msgSend(v6, "relativePageIndexForAbsolutePageIndex:forPresentationType:", index, +[THPresentationType paginatedPresentationTypeInContext:](THPresentationType, "paginatedPresentationTypeInContext:", -[THPresentationType context](-[THDocumentViewController currentPresentationType](self, "currentPresentationType"), "context")))}];
    [v7 setAbsolutePageIndex:index];

    [(THDocumentViewController *)self followAnchor:v7 pulse:0];
  }
}

- (BOOL)followAnchor:(id)anchor pulse:(BOOL)pulse
{
  if (anchor)
  {
    pulseCopy = pulse;
    if ([(THDocumentViewController *)self isEpub])
    {
      objc_opt_class();
      [(THDocumentViewController *)self setLastStorageAnchor:TSUDynamicCast()];
      [(THDocumentViewController *)self p_updatePresentationTypeAnimated:0];
    }

    [(THDocumentViewController *)self p_dismissActiveAnimated:1];
    v7 = [(THDocumentNavigator *)[(THDocumentViewController *)self documentNavigator] followAnchor:anchor pulse:pulseCopy];
    if (v7)
    {
      objc_opt_class();
      [(THDocumentViewController *)self setLastStorageAnchor:TSUDynamicCast()];
    }

    [(THDocumentViewController *)self p_updatePageNumberingForce:1];
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (BOOL)followLink:(id)link animated:(BOOL)animated
{
  animatedCopy = animated;
  [(THDocumentViewController *)self p_dismissActiveAnimated:animated];
  LOBYTE(animatedCopy) = [(THDocumentNavigator *)[(THDocumentViewController *)self documentNavigator] followLink:link animated:animatedCopy];
  [(THDocumentViewController *)self p_updatePageNumberingForce:1];
  return animatedCopy;
}

- (id)anchorFromLink:(id)link
{
  bookNavigationDelegate = [(THDocumentViewController *)self bookNavigationDelegate];

  return [(THBookNavigation *)bookNavigationDelegate anchorFromLink:link];
}

- (void)showTOC
{
  bookNavigationDelegate = [(THDocumentViewController *)self bookNavigationDelegate];

  [(THBookNavigation *)bookNavigationDelegate showTOC];
}

- (void)closeDocument
{
  bookNavigationDelegate = [(THDocumentViewController *)self bookNavigationDelegate];

  [(THBookNavigation *)bookNavigationDelegate closeDocument];
}

- (BOOL)isNotesFullscreenVisible
{
  bookNavigationDelegate = [(THDocumentViewController *)self bookNavigationDelegate];

  return [(THBookNavigation *)bookNavigationDelegate isNotesFullscreenVisible];
}

- (BOOL)isGlossaryVisible
{
  bookNavigationDelegate = [(THDocumentViewController *)self bookNavigationDelegate];

  return [(THBookNavigation *)bookNavigationDelegate isGlossaryVisible];
}

- (void)showGlossaryViewWithAnchor:(id)anchor
{
  bookNavigationDelegate = [(THDocumentViewController *)self bookNavigationDelegate];

  [(THBookNavigation *)bookNavigationDelegate showGlossaryViewWithAnchor:anchor];
}

- (id)bookLinkResolver
{
  bookNavigationDelegate = [(THDocumentViewController *)self bookNavigationDelegate];

  return [(THBookNavigation *)bookNavigationDelegate bookLinkResolver];
}

- (void)hideNavigationHistory
{
  bookNavigationDelegate = [(THDocumentViewController *)self bookNavigationDelegate];

  [(THBookNavigation *)bookNavigationDelegate hideNavigationHistory];
}

- (void)documentNavigator:(id)navigator willNavigateToAbsolutePageIndex:(unint64_t)index inContentNode:(id)node
{
  [node startLoading];
  [node waitUntilFinishedLoadingAndPaginating];

  [(THDocumentViewController *)self p_ensureInNavigationUnitForContentNode:node];
}

- (void)documentNavigator:(id)navigator scrollToAbsolutePageIndex:(unint64_t)index specificUnscaledCanvasRect:(CGRect)rect animated:(BOOL)animated willPulse:(BOOL)pulse
{
  pulseCopy = pulse;
  animatedCopy = animated;
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  if ([(THDocumentViewController *)self inFlowMode])
  {
    if (pulseCopy)
    {
      if (y + -100.0 >= 0.0)
      {
        y = y + -100.0;
      }

      else
      {
        y = 0.0;
      }
    }

    else if (!index && y <= 20.0 && [(THDocumentViewController *)self isEpub])
    {
      y = 0.0;
    }
  }

  [(THDocumentViewController *)self p_setUnscaledCanvasRect:animatedCopy animated:x, y, width, height];

  [(THDocumentViewController *)self setLastStorageAnchor:0];
}

- (void)documentNavigator:(id)navigator failedToFollowLink:(id)link
{
  bookNavigationDelegate = [(THDocumentViewController *)self bookNavigationDelegate];

  [(THBookNavigation *)bookNavigationDelegate followLink:link];
}

- (void)documentNavigator:(id)navigator failedToFollowAnchor:(id)anchor pulse:(BOOL)pulse
{
  pulseCopy = pulse;
  bookNavigationDelegate = [(THDocumentViewController *)self bookNavigationDelegate];

  [(THBookNavigation *)bookNavigationDelegate followAnchor:anchor pulse:pulseCopy];
}

- (void)documentNavigator:(id)navigator willJumpToPageLocation:(id)location
{
  [(THDocumentViewController *)self bookNavigationDelegate];
  if (objc_opt_respondsToSelector())
  {
    bookNavigationDelegate = [(THDocumentViewController *)self bookNavigationDelegate];

    [(THBookNavigation *)bookNavigationDelegate willJumpToPageLocation:location];
  }
}

- (void)documentNavigator:(id)navigator didJumpToPageLocation:(id)location
{
  [(THDocumentViewController *)self bookNavigationDelegate];
  if (objc_opt_respondsToSelector())
  {
    [(THBookNavigation *)[(THDocumentViewController *)self bookNavigationDelegate] didJumpToPageLocation:location];
  }

  displaySleepController = [(THDocumentViewController *)self displaySleepController];

  [(BCDisplaySleepController *)displaySleepController userInteractionOccurred];
}

- (BOOL)documentNavigatorIsOnActiveCanvas:(id)canvas
{
  viewIfLoaded = [objc_msgSend(-[THDocumentViewController viewIfLoaded](self viewIfLoaded];
  if (viewIfLoaded)
  {
    v4 = viewIfLoaded;
    if ([viewIfLoaded activationState])
    {
      LOBYTE(viewIfLoaded) = [v4 activationState] == &dword_0 + 1;
    }

    else
    {
      LOBYTE(viewIfLoaded) = 1;
    }
  }

  return viewIfLoaded;
}

- (unint64_t)visiblePageCountForDocumentNavigator:(id)navigator
{
  if ([(THDocumentViewController *)self isTwoUp])
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (id)p_expandedViewControllerForRep:(id)rep
{
  objc_opt_class();
  [rep expandedContentDrawableToPresent];
  v5 = TSUDynamicCast();
  objc_opt_class();
  [rep info];
  v6 = TSUDynamicCast();
  objc_opt_class();
  [v6 expandedStageDrawable];
  v7 = TSUDynamicCast();
  if (v5 && ![v5 isAudioOnly] || v7 && (objc_msgSend(v7, "isAudioOnly") & 1) == 0)
  {
    v10 = [[THWiOSExpandedMovieViewController alloc] initWithDocumentRoot:[(THDocumentViewController *)self documentRoot] expandableRep:rep delegate:self];
    [-[THDocumentViewController parentViewController](self "parentViewController")];
    return v10;
  }

  else
  {
    v8 = [[THWiOSExpandedViewController alloc] initWithDocumentRoot:[(THDocumentViewController *)self documentRoot] expandableRep:rep delegate:self];

    return v8;
  }
}

- (void)presentRepExpanded:(id)expanded
{
  if (!+[NSThread isMainThread])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  if (expanded)
  {
    if (!self->mExpandedViewController)
    {
      v5 = [(THDocumentViewController *)self p_expandedViewControllerForRep:expanded];

      [(THDocumentViewController *)self presentExpandedViewController:v5 completionBlock:0];
    }
  }

  else
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }
}

- (void)presentExpandedViewController:(id)controller completionBlock:(id)block
{
  [(THDocumentViewController *)self setExpandedViewController:controller];
  [(THDocumentViewController *)self refreshStatusBarAppearance];
  [-[THDocumentViewController view](self "view")];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_199B0;
  v6[3] = &unk_45B2E8;
  v6[4] = self;
  v6[5] = block;
  [(THWExpandedViewController *)[(THDocumentViewController *)self expandedViewController] presentExpandedAnimatedWithCompletionBlock:v6];
}

- (BOOL)repIsPresentedExpanded:(id)expanded
{
  if (![expanded info])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  expandedViewController = [(THDocumentViewController *)self expandedViewController];
  if (expandedViewController)
  {
    info = [expanded info];
    LOBYTE(expandedViewController) = info == [-[THWExpandedViewController expandedRepSourceRep](-[THDocumentViewController expandedViewController](self "expandedViewController")];
  }

  return expandedViewController;
}

- (CGSize)widgetHostExpandedSize
{
  [-[THDocumentViewController view](self "view")];
  v3 = v2;
  v5 = v4;
  result.height = v5;
  result.width = v3;
  return result;
}

- (id)p_pressableRepGestureRecognizer
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  interactiveCanvasController = [objc_msgSend(-[THDocumentViewController interactiveCanvasController](self interactiveCanvasController];
  v3 = [interactiveCanvasController countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = *v11;
  v6 = TSWPImmediatePress;
LABEL_3:
  v7 = 0;
  while (1)
  {
    if (*v11 != v5)
    {
      objc_enumerationMutation(interactiveCanvasController);
    }

    v8 = *(*(&v10 + 1) + 8 * v7);
    if ([v8 gestureKind] == v6)
    {
      return v8;
    }

    if (v4 == ++v7)
    {
      v4 = [interactiveCanvasController countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v4)
      {
        goto LABEL_3;
      }

      return 0;
    }
  }
}

- (void)presentPopoverForPopUpInfo:(id)info withFrame:(CGRect)frame inLayer:(id)layer
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  if (+[NSThread isMainThread])
  {
    if (info)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    if (info)
    {
LABEL_3:
      if (layer)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  if (layer)
  {
LABEL_4:
    if (!info)
    {
      return;
    }

    goto LABEL_9;
  }

LABEL_8:
  [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  if (!info)
  {
    return;
  }

LABEL_9:
  if ([(TSWPopoverController *)self->mPopUpPopoverController popUpInfo]!= info)
  {
    if (![info frameViewSettings])
    {
      [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    }

    if (![info popoverTheme])
    {
      [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    }

    if (self->mPopUpPopoverController)
    {
      [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    }

    v12 = [-[THDocumentViewController documentRoot](self "documentRoot")];
    if (v12 && (v13 = v12, [v12 forceThemeColors]))
    {
      v14 = +[TSUColor colorWithCGColor:](TSUColor, "colorWithCGColor:", [v13 backgroundColor]);
    }

    else
    {
      v14 = 0;
    }

    [info updateBackgroundColor:v14];
    objc_opt_class();
    [objc_msgSend(-[THDocumentViewController interactiveCanvasController](self "interactiveCanvasController")];
    [TSUDynamicCast() setSelection:0];
    v15 = [THWPopUpContentProvider alloc];
    [-[THDocumentViewController interactiveCanvasController](self "interactiveCanvasController")];
    v17 = [(THWPopUpContentProvider *)v15 initWithPopUpInfo:info scale:[(THDocumentViewController *)self documentRoot] documentRoot:self scrollableCanvasHost:self bookNavigator:[(THDocumentViewController *)self documentNavigator] documentNavigator:v16];
    v18 = [[TSWPopoverController alloc] initWithContentProvider:v17];
    self->mPopUpPopoverController = v18;
    [(TSWPopoverController *)v18 setDelegate:self];

    p_pressableRepGestureRecognizer = [(THDocumentViewController *)self p_pressableRepGestureRecognizer];
    -[TSWPopoverController setPassThroughGestureRecognizers:](self->mPopUpPopoverController, "setPassThroughGestureRecognizers:", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", [*&self->TSADocumentViewController_opaque[OBJC_IVAR___TSADocumentViewController__scrollView] panGestureRecognizer], p_pressableRepGestureRecognizer, 0));
    [objc_msgSend(-[THDocumentViewController view](self "view")];
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v27 = v26;
    [objc_msgSend(-[THDocumentViewController view](self "view")];
    v29 = v23 + v28;
    v30 = v27 - v28;
    mPopUpPopoverController = self->mPopUpPopoverController;
    [objc_msgSend(objc_msgSend(-[THDocumentViewController view](self "view")];
    -[TSWPopoverController presentPopoverFromRect:inView:viewBounds:permittedArrowDirections:displayMode:animated:](mPopUpPopoverController, "presentPopoverFromRect:inView:viewBounds:permittedArrowDirections:displayMode:animated:", [-[THDocumentViewController view](self "view")], 15, 1, 1, v32, v33, v34, v35, v21, v29, v25, v30);
    v36 = TSUProtocolCast();
    if (v36)
    {
      v37[0] = _NSConcreteStackBlock;
      v37[1] = 3221225472;
      v37[2] = sub_1A184;
      v37[3] = &unk_45AF48;
      v37[4] = v36;
      v37[5] = self;
      [(THDocumentViewController *)self p_getWidgetIDsForInfo:v36 completion:v37];
    }
  }
}

- (BOOL)widgetHostingAllowInteractionOnPageForRep:(id)rep
{
  if (![(THDocumentViewController *)self th_cachedIsCompactWidth]&& ![(THDocumentViewController *)self th_cachedIsCompactHeight])
  {
    return 1;
  }

  return [rep widgetInteractionAllowOnPageForCompact];
}

- (BOOL)widgetHostingAllowAutoplayForRep:(id)rep
{
  if (![(THDocumentViewController *)self th_cachedIsCompactWidth]&& ![(THDocumentViewController *)self th_cachedIsCompactHeight])
  {
    return 1;
  }

  return [rep widgetInteractionAllowAutoplayForCompact];
}

- (BOOL)widgetHostingShouldAllowNaturalHorizontalScrollForRep:(id)rep
{
  inFlowMode = [(THDocumentViewController *)self inFlowMode];
  if (inFlowMode)
  {

    LOBYTE(inFlowMode) = [(THDocumentViewController *)self isEpub];
  }

  return inFlowMode;
}

- (BOOL)popoverController:(id)controller shouldIgnorePassThroughGestureRecognizer:(id)recognizer
{
  result = 0;
  if (self->mPopUpPopoverController == controller && [(THDocumentViewController *)self p_pressableRepGestureRecognizer]== recognizer)
  {
    interactiveCanvasController = [(THDocumentViewController *)self interactiveCanvasController];
    [recognizer locationInView:{objc_msgSend(-[THDocumentViewController canvasViewController](self, "canvasViewController"), "canvasView")}];
    [interactiveCanvasController convertBoundsToUnscaledPoint:?];
    [objc_msgSend(-[THDocumentViewController interactiveCanvasController](self "interactiveCanvasController")];
    popUpInfo = [TSUProtocolCast() popUpInfo];
    if (!popUpInfo || popUpInfo == [(TSWPopoverController *)self->mPopUpPopoverController popUpInfo])
    {
      return 1;
    }
  }

  return result;
}

- (void)popoverControllerWillDismiss:(id)dismiss
{
  if (self->mPopUpPopoverController == dismiss)
  {
    [dismiss popUpInfo];
    v4 = TSUProtocolCast();
    if (v4)
    {
      [(THDocumentViewController *)self p_getWidgetIDsForInfo:v4 completion:&stru_45B308];
    }

    [(TSWPopoverController *)self->mPopUpPopoverController setDelegate:0];

    self->mPopUpPopoverController = 0;
    canvasViewController = [(THDocumentViewController *)self canvasViewController];

    [canvasViewController becomeFirstResponder];
  }
}

- (id)hostCanvasLayer
{
  v2 = [-[THDocumentViewController interactiveCanvasController](self "interactiveCanvasController")];

  return [v2 canvasLayer];
}

- (id)curtainColorForFreeTransform
{
  if (![(THDocumentViewController *)self expandedViewController])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  expandedViewController = [(THDocumentViewController *)self expandedViewController];

  return [(THWExpandedViewController *)expandedViewController curtainColorForFreeTransform];
}

- (CGRect)rectForCompletionAnimationWithRep:(id)rep
{
  hostCanvasLayer = [-[THDocumentViewController hostCanvasLayer](self hostCanvasLayer];

  [hostCanvasLayer frame];
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (void)freeTransformDidBeginWithRep:(id)rep expandableRep:(id)expandableRep
{
  if (!+[NSThread isMainThread])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  if (!rep)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  [(THDocumentViewController *)self p_dismissActiveAnimated:1];
  [(THDocumentViewController *)self setExpandedViewController:[(THDocumentViewController *)self p_expandedViewControllerForRep:expandableRep]];
  self->mShowToolbarOnCancelFTC = [(THToolbarDelegate *)[(THDocumentViewController *)self toolbarDelegate] isToolbarHidden]^ 1;

  [(THDocumentViewController *)self hideToolbarAnimated:1];
}

- (void)freeTransformDidEndWithRep:(id)rep expandableRep:(id)expandableRep completionBlock:(id)block
{
  if (![(THDocumentViewController *)self expandedViewController:rep])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  expandedViewController = [(THDocumentViewController *)self expandedViewController];

  [(THDocumentViewController *)self presentExpandedViewController:expandedViewController completionBlock:block];
}

- (void)freeTransformPostAnimationDidCancelWithRep:(id)rep expandableRep:(id)expandableRep
{
  if (![(THDocumentViewController *)self expandedViewController:rep])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  [(THWExpandedViewController *)[(THDocumentViewController *)self expandedViewController] teardown];

  self->mExpandedViewController = 0;
}

- (void)freeTransformDidCancelWithRep:(id)rep expandableRep:(id)expandableRep
{
  if (self->mShowToolbarOnCancelFTC)
  {
    [(THDocumentViewController *)self showToolbarAnimated:1, expandableRep];
  }
}

- (BOOL)bookmarksShouldBeVisible
{
  v3 = [-[THDocumentViewController documentRoot](self "documentRoot")] ^ 1;
  v4 = [(THDocumentViewController *)self im_ancestorViewControllerConformingToProtocol:&OBJC_PROTOCOL___THPageBookmarkVisibility];
  if (([-[THDocumentViewController documentRoot](self "documentRoot")] & 1) == 0 && v4)
  {
    LOBYTE(v3) = [v4 bookmarksShouldBeVisible];
  }

  return ![(THDocumentViewController *)self inFlowMode]& v3;
}

- (CGRect)bookmarkHotspotRegionForPage:(id)page
{
  x = CGRectZero.origin.x;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  if ([(THToolbarDelegate *)[(THDocumentViewController *)self toolbarDelegate] isToolbarHidden]&& [(THDocumentViewController *)self isEpub]&& ![(THDocumentViewController *)self inFlowMode])
  {
    [objc_msgSend(page "geometry")];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    [(THDocumentReflowableLayoutConfiguration *)[(THDocumentViewController *)self configuration] bookmarkHotspotDimension];
    width = v17;
    v22.origin.x = v10;
    v22.origin.y = v12;
    v22.size.width = v14;
    v22.size.height = v16;
    x = CGRectGetMaxX(v22) - width;
    v23.origin.x = v10;
    v23.origin.y = v12;
    v23.size.width = v14;
    v23.size.height = v16;
    y = CGRectGetMinY(v23);
    height = width;
  }

  v18 = x;
  v19 = y;
  v20 = width;
  v21 = height;
  result.size.height = v21;
  result.size.width = v20;
  result.origin.y = v19;
  result.origin.x = v18;
  return result;
}

- (id)p_canvasInfoForExpandedInfo:(id)info presentationType:(id)type
{
  if ([type isPaginated])
  {
    [(THDocumentViewController *)self p_ownerInfoForPopUpInfo:info];
    return info;
  }

  else
  {

    return [(THDocumentViewController *)self p_expandableInfoForInfo:info forceLoad:0];
  }
}

- (id)p_contentNodeForInfo:(id)info presentationType:(id)type
{
  while (1)
  {
    objc_opt_class();
    v5 = TSUDynamicCast();
    if (v5)
    {
      break;
    }

    result = [info parentInfo];
    info = result;
    if (!result)
    {
      return result;
    }
  }

  return [v5 parent];
}

- (UIView)rootSuperview
{
  view = [(THDocumentViewController *)self view];

  return [view superview];
}

- (UIView)expandedWindowHostView
{
  view = [(THDocumentViewController *)self view];

  return [view superview];
}

- (CGSize)windowMinSize
{
  [-[THDocumentViewController view](self "view")];
  v3 = v2;
  v5 = v4;
  result.height = v5;
  result.width = v3;
  return result;
}

- (BOOL)isFreeTransformInProgress
{
  v2 = [(THDocumentViewController *)self ftc];

  return [(THWFreeTransformController *)v2 isFreeTransformInProgress];
}

- (id)expandableRepForInfo:(id)info
{
  v5 = [-[THDocumentViewController interactiveCanvasController](self "interactiveCanvasController")];
  if (!v5)
  {
    v6 = [(THDocumentViewController *)self p_expandableInfoForInfo:info forceLoad:0];
    if (!v6 || (v5 = [-[THDocumentViewController interactiveCanvasController](self "interactiveCanvasController")]) == 0)
    {
      v5 = [-[THDocumentViewController interactiveCanvasController](self "interactiveCanvasController")];
    }
  }

  v7 = v5;
  v8 = TSUProtocolCast();
  objc_opt_class();
  expandableRep = TSUClassAndProtocolCast();
  if (objc_opt_respondsToSelector())
  {
    expandableRep = [v8 expandableRep];
  }

  if (v7 && !expandableRep)
  {
    objc_opt_class();
    expandableRep = TSUClassAndProtocolCast();
  }

  if (expandableRep)
  {
    return expandableRep;
  }

  if (![info parentInfo])
  {
    return 0;
  }

  parentInfo = [info parentInfo];

  return [(THDocumentViewController *)self expandableRepForInfo:parentInfo];
}

- (void)expandedViewControllerWillPresent:(id)present
{
  [-[THDocumentViewController interactiveCanvasController](self "interactiveCanvasController")];
  [(THDocumentViewController *)self hideToolbarAnimated:0];
  [(THDocumentViewController *)self p_dismissActiveAnimated:1];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  interactiveCanvasController = [objc_msgSend(-[THDocumentViewController interactiveCanvasController](self interactiveCanvasController];
  v6 = [interactiveCanvasController countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(interactiveCanvasController);
        }

        [*(*(&v10 + 1) + 8 * i) recursivelyPerformSelectorIfImplemented:"expandedViewControllerWillPresent:" withObject:present];
      }

      v7 = [interactiveCanvasController countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)expandedViewControllerDidPresent:(id)present
{
  [(THDocumentViewController *)self setPagePaddingOptions:0];
  [(THDocumentViewController *)self hideToolbarAnimated:1];
  toolbarDelegate = [(THDocumentViewController *)self toolbarDelegate];

  [(THToolbarDelegate *)toolbarDelegate setToolbarHiddenFromAccessibility:1];
}

- (void)expandedViewControllerWillBeginDismissing:(id)dismissing
{
  if (![(THDocumentViewController *)self inFlowMode])
  {
    [(THDocumentViewController *)self p_ensureVisibleAbsolutePhysicalPageIndexFromFullscreen];
    interactiveCanvasController = [(THDocumentViewController *)self interactiveCanvasController];

    [interactiveCanvasController forceStopScrolling];
  }
}

- (void)expandedViewControllerDidDismiss:(id)dismiss
{
  selfCopy = self;
  if ([(THDocumentViewController *)self expandedViewController]== dismiss)
  {
    [(THWExpandedViewController *)[(THDocumentViewController *)selfCopy expandedViewController] setDelegate:0];
    [(THWExpandedViewController *)selfCopy->mExpandedViewController teardown];

    selfCopy->mExpandedViewController = 0;
  }

  [(THDocumentViewController *)selfCopy setPagePaddingOptions:3];
  if ([(THDocumentViewController *)selfCopy inPaginatedMode])
  {
    [(THDocumentViewController *)selfCopy p_updateVisibleInfos];
  }

  [(THDocumentViewController *)selfCopy refreshStatusBarAppearance];
  [(THDocumentViewController *)selfCopy setLastAbsolutePageIndex:0x7FFFFFFFFFFFFFFFLL];
  [(THToolbarDelegate *)[(THDocumentViewController *)selfCopy toolbarDelegate] setToolbarHiddenFromAccessibility:0];
  if ([(THDocumentViewController *)selfCopy canvasViewController])
  {
    selfCopy = [(THDocumentViewController *)selfCopy canvasViewController];
  }

  [(THDocumentViewController *)selfCopy becomeFirstResponder];
}

- (UIEdgeInsets)expandedViewControllerSafeAreaInsets:(id)insets
{
  view = [(THDocumentViewController *)self view];

  [view safeAreaInsets];
  result.right = v7;
  result.bottom = v6;
  result.left = v5;
  result.top = v4;
  return result;
}

- (void)expandedViewController:(id)controller handleHyperlinkWithURL:(id)l
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1B1A8;
  v4[3] = &unk_45AE58;
  v4[4] = self;
  v4[5] = l;
  [(THWExpandedViewController *)[(THDocumentViewController *)self expandedViewController] dismissExpandedAnimatedWithCompletionBlock:v4];
}

- (id)actionForHyperlink:(id)hyperlink inRep:(id)rep gesture:(id)gesture
{
  gestureKind = [gesture gestureKind];
  v9 = TSWPLongPress;
  if (gestureKind != TSWPImmediateSingleTap && gestureKind != TSWPLongPress)
  {
    return 0;
  }

  v11 = gestureKind;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1B368;
  v17[3] = &unk_45AE58;
  v17[4] = rep;
  v17[5] = hyperlink;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1B374;
  v16[3] = &unk_45AE00;
  v16[4] = rep;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1B380;
  v15[3] = &unk_45AF70;
  v15[4] = rep;
  v15[5] = self;
  v15[6] = hyperlink;
  v13 = [TSWPTwoPartAction actionWithStartAction:v17 cancelAction:v16 finishAction:v15];
  if (v11 == v9)
  {
    v12 = 1;
  }

  else
  {
    v12 = TSUSupportsTextInteraction();
  }

  [(TSWPTwoPartAction *)v13 setPerformImmediately:v12];
  return v13;
}

- (void)expandedViewControllerWantsDismiss:(id)dismiss
{
  expandedViewController = [(THDocumentViewController *)self expandedViewController];

  [(THWExpandedViewController *)expandedViewController dismissExpandedAnimatedWithCompletionBlock:0];
}

- (id)expandedViewController:(id)controller actionForHyperlink:(id)hyperlink inRep:(id)rep gesture:(id)gesture
{
  gestureKind = [gesture gestureKind];
  v12 = TSWPLongPress;
  if (gestureKind != TSWPImmediateSingleTap && gestureKind != TSWPLongPress)
  {
    return 0;
  }

  v14 = gestureKind;
  documentNavigator = [(THDocumentViewController *)self documentNavigator];
  if (documentNavigator)
  {
    v16 = -[THDocumentNavigator linkForURL:inStorage:](documentNavigator, "linkForURL:inStorage:", [hyperlink url], objc_msgSend(hyperlink, "parentStorage"));
    if (([v16 targetIsApplePub] & 1) != 0 || objc_msgSend(v16, "targetIsiBooks"))
    {
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_1B620;
      v22[3] = &unk_45AE58;
      v22[4] = rep;
      v22[5] = hyperlink;
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_1B62C;
      v21[3] = &unk_45AE00;
      v21[4] = rep;
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_1B638;
      v20[3] = &unk_45B330;
      v20[4] = rep;
      v20[5] = controller;
      v20[6] = self;
      v20[7] = hyperlink;
      v18 = [TSWPTwoPartAction actionWithStartAction:v22 cancelAction:v21 finishAction:v20];
      if (v14 == v12)
      {
        v17 = 1;
      }

      else
      {
        v17 = TSUSupportsTextInteraction();
      }

      [(TSWPTwoPartAction *)v18 setPerformImmediately:v17];
      return v18;
    }
  }

  return [(THDocumentViewController *)self actionForHyperlink:hyperlink inRep:rep gesture:gesture];
}

- (void)p_ensureInNavigationUnitForContentNode:(id)node
{
  if (!node)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  if (![(THNavigationUnit *)[(THSectionController *)[(THDocumentViewController *)self activeSectionController] currentNavigationUnit] containsContentNode:node])
  {
    v5 = [objc_msgSend(-[THDocumentViewController documentRoot](self "documentRoot")];

    [(THDocumentViewController *)self setCurrentNavigationUnit:v5];
  }
}

- (void)p_zoomToAnchor:(id)anchor
{
  if (anchor)
  {
    range = [anchor range];
    v7 = v6;
    contentNode = [anchor contentNode];
    v9 = [contentNode bodyStorageForPresentationType:{-[THDocumentViewController currentPresentationType](self, "currentPresentationType")}];
    if (v9)
    {
      v10 = [contentNode nodeUniqueIDForInfo:v9];
    }

    else
    {
      v10 = 0;
    }

    storageUID = [anchor storageUID];
    if ([v10 isEqualToString:storageUID])
    {
      v12 = [(THSectionController *)[(THDocumentViewController *)self activeSectionController] pageControllerForContentNode:contentNode];
      v13 = [v12 relativePageIndexForCharIndex:range forceLayout:0];
      if (v13 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v14 = v13;
        objc_opt_class();
        [-[THDocumentViewController interactiveCanvasController](self "interactiveCanvasController")];
        v15 = TSUDynamicCast();
        if (v15)
        {
          v38 = 0u;
          v39 = 0u;
          v36 = 0u;
          v37 = 0u;
          childReps = [v15 childReps];
          v17 = [childReps countByEnumeratingWithState:&v36 objects:v40 count:16];
          if (v17)
          {
            v18 = v17;
            v19 = *v37;
            v35 = v7;
            while (2)
            {
              for (i = 0; i != v18; ++i)
              {
                if (*v37 != v19)
                {
                  objc_enumerationMutation(childReps);
                }

                objc_opt_class();
                v21 = TSUDynamicCast();
                if (v21)
                {
                  v22 = v21;
                  objc_opt_class();
                  [v22 repForCharIndex:range isStart:0];
                  v23 = TSUDynamicCast();
                  if (v23)
                  {
                    v29 = v23;
                    v7 = v35;
                    goto LABEL_25;
                  }
                }
              }

              v18 = [childReps countByEnumeratingWithState:&v36 objects:v40 count:16];
              if (v18)
              {
                continue;
              }

              break;
            }
          }
        }
      }
    }

    else
    {
      v24 = [contentNode infoForNodeUniqueID:storageUID forPresentationType:{-[THDocumentViewController currentPresentationType](self, "currentPresentationType")}];
      if (v24)
      {
        parentInfo = [v24 parentInfo];
        if (parentInfo)
        {
          parentInfo = [-[THDocumentViewController interactiveCanvasController](self "interactiveCanvasController")];
        }

        objc_opt_class();
        [-[THDocumentViewController interactiveCanvasController](self "interactiveCanvasController")];
        v26 = TSUDynamicCast();
        if (v26)
        {
          v27 = v26;
          objc_opt_class();
          [v27 containedRep];
          v28 = TSUDynamicCast();
          if (v28)
          {
            v29 = v28;
LABEL_25:
            [v29 rectForHighlight:range lineHasAttachment:{v7, objc_msgSend(objc_msgSend(v29, "storage"), "rangeContainsAttachment:", range, v7)}];
            v30 = [v29 closestColumnForPoint:?];
            if (v30)
            {
              [v30 frameBounds];
              [v29 convertNaturalRectToUnscaledCanvas:?];
              [-[THDocumentViewController interactiveCanvasController](self "interactiveCanvasController")];
            }
          }
        }
      }
    }
  }
}

- (id)p_ownerInfoForPopUpInfo:(id)info
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  interactiveCanvasController = [objc_msgSend(-[THDocumentViewController interactiveCanvasController](self interactiveCanvasController];
  result = [interactiveCanvasController countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (result)
  {
    v6 = result;
    v7 = *v11;
    while (2)
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(interactiveCanvasController);
        }

        v9 = *(*(&v10 + 1) + 8 * v8);
        if ([v9 popUpInfo] == info)
        {
          return [v9 info];
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      result = [interactiveCanvasController countByEnumeratingWithState:&v10 objects:v14 count:16];
      v6 = result;
      if (result)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

- (id)p_expandableInfoForInfo:(id)info forceLoad:(BOOL)load
{
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  currentNavigationUnit = [-[THDocumentViewController currentNavigationUnit](self currentNavigationUnit];
  v8 = [currentNavigationUnit countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  v10 = 0;
  v11 = *v16;
LABEL_3:
  v12 = 0;
  while (1)
  {
    if (*v16 != v11)
    {
      objc_enumerationMutation(currentNavigationUnit);
    }

    v13 = *(*(&v15 + 1) + 8 * v12);
    if (load || [*(*(&v15 + 1) + 8 * v12) isLoaded])
    {
      v10 = [v13 expandableInfoForWidgetInfo:info forPresentationType:{+[THPresentationType flowPresentationTypeInContext:](THPresentationType, "flowPresentationTypeInContext:", objc_msgSend(-[THDocumentViewController documentRoot](self, "documentRoot"), "context"))}];
      if ([-[THDocumentViewController documentRoot](self "documentRoot")])
      {
        if (v10)
        {
          return v10;
        }
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        return v10;
      }
    }

    if (v9 == ++v12)
    {
      v9 = [currentNavigationUnit countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v9)
      {
        goto LABEL_3;
      }

      return v10;
    }
  }
}

- (void)switchToNavigationUnitForChapterIndex:(unint64_t)index
{
  v4 = [(THDocumentViewController *)self navigationUnitForChapterIndex:index];
  if (!v4)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  [(THDocumentViewController *)self setCurrentNavigationUnit:v4];
}

- (id)navigationUnitForChapterIndex:(unint64_t)index
{
  v4 = -[THDocumentLinkResolver contentNodeFromLink:](-[THDocumentViewController documentLinkResolver](self, "documentLinkResolver"), "contentNodeFromLink:", -[THDocumentLinkResolver absoluteLink:withContentNode:](-[THDocumentViewController documentLinkResolver](self, "documentLinkResolver"), "absoluteLink:withContentNode:", [objc_msgSend(objc_msgSend(objc_msgSend(-[THDocumentViewController documentRoot](self "documentRoot")], 0));
  v5 = [-[THDocumentViewController documentRoot](self "documentRoot")];

  return [v5 navigationUnitContainingContentNode:v4];
}

- (void)updateVisibleInfosWithPageIndex:(unint64_t)index
{
  [(THDocumentViewController *)self p_currentPageSize];
  v6 = v5 * index;
  [(THDocumentViewController *)self setLastAbsolutePageIndex:0x7FFFFFFFFFFFFFFFLL];
  [(THDocumentViewController *)self setPreventVisibleInfoUpdates:1];
  [-[THDocumentViewController interactiveCanvasController](self "interactiveCanvasController")];
  [(THDocumentViewController *)self setPreventVisibleInfoUpdates:0];

  [(THDocumentViewController *)self p_updateVisibleInfosWithPaddingOptions:0 force:0];
}

- (id)contentNodeForPageIndex:(unint64_t)index
{
  currentNavigationUnit = [(THDocumentViewController *)self currentNavigationUnit];
  currentPresentationType = [(THDocumentViewController *)self currentPresentationType];

  return [currentNavigationUnit contentNodeForRelativePageIndex:index forPresentationType:currentPresentationType];
}

- (CGRect)targetRelativeRectForPoint:(CGPoint)point atPageIndex:(unint64_t)index chapterIndex:(unint64_t)chapterIndex waitForContentNodeLoad:(BOOL)load
{
  loadCopy = load;
  y = point.y;
  x = point.x;
  [(THDocumentViewController *)self ensureDocumentIsLoaded];
  presentationType = [(THSectionController *)[(THDocumentViewController *)self paginatedSectionController] presentationType];
  [(THSectionController *)[(THDocumentViewController *)self paginatedSectionController] pageSize];
  TSDRectWithSize();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = v15;
  v20 = v17;
  v21 = [(THDocumentViewController *)self navigationUnitForChapterIndex:chapterIndex];
  if (([objc_msgSend(v21 contentNodeForRelativePageIndex:index forPresentationType:{presentationType), "isLoaded"}] & 1) != 0 || loadCopy)
  {
    v22 = [v21 pageInfoForRelativePageIndex:index forPresentationType:presentationType];
    if (!v22)
    {
      [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    }

    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    modelBodyInfos = [v22 modelBodyInfos];
    v24 = [modelBodyInfos countByEnumeratingWithState:&v71 objects:v75 count:16];
    if (v24)
    {
      v25 = v24;
      v63 = v20;
      v64 = v19;
      v65 = v14;
      v66 = v12;
      v61 = v18;
      v62 = v16;
      v26 = *v72;
      while (2)
      {
        for (i = 0; i != v25; i = i + 1)
        {
          if (*v72 != v26)
          {
            objc_enumerationMutation(modelBodyInfos);
          }

          v28 = *(*(&v71 + 1) + 8 * i);
          [objc_msgSend(v28 "geometry")];
          v29 = v77.origin.x;
          v30 = v77.origin.y;
          width = v77.size.width;
          height = v77.size.height;
          v76.y = y;
          v76.x = x;
          if (CGRectContainsPoint(v77, v76))
          {
            lineHints = [v28 lineHints];
            if (lineHints)
            {
              v34 = lineHints;
              if ([lineHints valid])
              {
                if ([v34 hintsCount])
                {
                  columnStyle = [v28 columnStyle];
                  if ([columnStyle columnCount])
                  {
                    v36 = 0;
                    v37 = x - v29;
                    v38 = 1;
                    while (1)
                    {
                      v69 = 0;
                      v70 = 0.0;
                      [columnStyle positionForColumnIndex:v36 bodyWidth:&v70 outWidth:&v69 outGap:width];
                      v39 = v78.origin.x;
                      v40 = v70;
                      v78.origin.y = 0.0;
                      v78.size.width = v70;
                      v78.size.height = height;
                      MinX = CGRectGetMinX(v78);
                      v79.origin.y = 0.0;
                      v79.origin.x = v39;
                      v79.size.width = v40;
                      v79.size.height = height;
                      MaxX = CGRectGetMaxX(v79);
                      if (v37 <= MaxX && v37 >= MinX)
                      {
                        break;
                      }

                      v36 = v38;
                      v44 = [columnStyle columnCount] > v38++;
                      if (!v44)
                      {
                        goto LABEL_22;
                      }
                    }

                    v45 = MaxX;
                    v47 = CGRectZero.origin.x;
                    v46 = CGRectZero.origin.y;
                    v49 = CGRectZero.size.width;
                    v48 = CGRectZero.size.height;
                    hints = [v34 hints];
                    hintsCount = [v34 hintsCount];
                    if (hintsCount)
                    {
                      v52 = hintsCount;
                      v53 = (hints + 24);
                      v54 = 1;
                      do
                      {
                        if (*(v53 + 2))
                        {
                          TSUCenterOfRect();
                          if (v55 <= v45 && v55 >= MinX)
                          {
                            v80.origin.x = v47;
                            v80.origin.y = v46;
                            v80.size.width = v49;
                            v80.size.height = v48;
                            if (CGRectIsEmpty(v80))
                            {
                              v47 = *(v53 - 3);
                              v46 = *(v53 - 2);
                              v49 = *(v53 - 1);
                              v48 = *v53;
                            }

                            else
                            {
                              v81.origin.x = v47;
                              v81.origin.y = v46;
                              v81.size.width = v49;
                              v81.size.height = v48;
                              v82 = CGRectUnion(v81, *(v53 - 3));
                              v47 = v82.origin.x;
                              v46 = v82.origin.y;
                              v49 = v82.size.width;
                              v48 = v82.size.height;
                            }
                          }
                        }

                        v53 += 7;
                        v44 = v52 > v54++;
                      }

                      while (v44);
                    }

                    if (v49 > 0.0)
                    {
                      v65 = v30 + v46;
                      v66 = v29 + v47;
                      v63 = v48;
                      v64 = v49;
                    }

                    goto LABEL_38;
                  }
                }
              }
            }
          }

LABEL_22:
          ;
        }

        v25 = [modelBodyInfos countByEnumeratingWithState:&v71 objects:v75 count:16];
        if (v25)
        {
          continue;
        }

        break;
      }

LABEL_38:
      v18 = v61;
      v16 = v62;
      v14 = v65;
      v12 = v66;
      v20 = v63;
      v19 = v64;
    }
  }

  v57 = v12 / v16;
  v58 = v14 / v18;
  v59 = v19 / v16;
  v60 = v20 / v18;
  result.size.height = v60;
  result.size.width = v59;
  result.origin.y = v58;
  result.origin.x = v57;
  return result;
}

- (CGRect)targetRelativeRectForRelativePoint:(CGPoint)point atPageIndex:(unint64_t)index chapterIndex:(unint64_t)chapterIndex waitForContentNodeLoad:(BOOL)load
{
  loadCopy = load;
  y = point.y;
  x = point.x;
  [(THDocumentViewController *)self ensureDocumentIsLoaded];
  [(THSectionController *)[(THDocumentViewController *)self paginatedSectionController] pageSize];
  if (x > 1.0 || x < 0.0)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  if (y > 1.0 || y < 0.0)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  TSDRectWithSize();

  [(THDocumentViewController *)self targetRelativeRectForPoint:index atPageIndex:chapterIndex chapterIndex:loadCopy waitForContentNodeLoad:x * v12, y * v13];
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (void)zoomToRelativeTargetRect:(CGRect)rect atPageIndex:(unint64_t)index
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  IsEmpty = CGRectIsEmpty(rect);
  v11 = height == 1.0 && width == 1.0;
  if (!IsEmpty && !v11)
  {
    [(THSectionController *)[(THDocumentViewController *)self paginatedSectionController] pageSize];
    TSDRectWithSize();
    v13 = v12 * index + v12 * x;
    v15 = v14 * y + 0.0;
    v16 = width * v12;
    v17 = height * v14;
    interactiveCanvasController = [(THDocumentViewController *)self interactiveCanvasController];

    [interactiveCanvasController zoomToColumnWithFrame:{v13, v15, v16, v17}];
  }
}

- (void)showPageThumbnailsForMissingPageIndexes:(id)indexes
{
  v6 = [indexes mutableCopy];
  visibleRelativePageRange = [(THDocumentViewController *)self visibleRelativePageRange];
  [v6 removeIndexesInRange:{visibleRelativePageRange, v5}];
  [(THDocumentViewController *)self showPageThumbnailsForPageIndexes:v6 animated:0 duration:0.0];
}

- (void)showPageThumbnailsForPageIndexes:(id)indexes animated:(BOOL)animated duration:(double)duration
{
  animatedCopy = animated;
  if (!self->mCurrentThumbnailViews)
  {
    self->mCurrentThumbnailViews = objc_alloc_init(NSMutableArray);
    self->mCurrentThumbnailPageIndexes = objc_alloc_init(NSMutableIndexSet);
  }

  v8 = [objc_msgSend(objc_msgSend(-[THDocumentViewController documentRoot](self "documentRoot")];
  firstIndex = [indexes firstIndex];
  if (firstIndex != 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = firstIndex;
    if (animatedCopy)
    {
      v11 = 0.0;
    }

    else
    {
      v11 = 1.0;
    }

    do
    {
      if (([(NSMutableIndexSet *)self->mCurrentThumbnailPageIndexes containsIndex:v10]& 1) == 0)
      {
        v12 = OBJC_IVAR___TSADocumentViewController__scrollView;
        [*&self->TSADocumentViewController_opaque[OBJC_IVAR___TSADocumentViewController__scrollView] bounds];
        v14 = v13 * v10;
        [*&self->TSADocumentViewController_opaque[v12] bounds];
        v16 = v15;
        [*&self->TSADocumentViewController_opaque[v12] bounds];
        v18 = [[UIImageView alloc] initWithFrame:{v14, 0.0, v16, v17}];
        v19 = [[TSDBitmapImageProvider alloc] initWithImageData:{objc_msgSend(objc_msgSend(v8, "largerThumbs"), "objectAtIndex:", v10)}];
        [v18 setAlpha:v11];
        [v18 setImage:{+[UIImage imageWithCGImage:](UIImage, "imageWithCGImage:", objc_msgSend(v19, "CGImageForNaturalSize"))}];

        [objc_msgSend(-[THDocumentViewController canvasViewController](self "canvasViewController")];
        [(NSMutableArray *)self->mCurrentThumbnailViews addObject:v18];
        [(NSMutableIndexSet *)self->mCurrentThumbnailPageIndexes addIndex:v10];
      }

      v10 = [indexes indexGreaterThanIndex:v10];
    }

    while (v10 != 0x7FFFFFFFFFFFFFFFLL);
  }

  if (animatedCopy)
  {
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_1C994;
    v21[3] = &unk_45AE00;
    v21[4] = self;
    [UIView animateWithDuration:v21 animations:duration];
  }
}

- (void)hidePageThumbnailsAnimated:(BOOL)animated duration:(double)duration
{
  if (animated)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1CB8C;
    v6[3] = &unk_45AE00;
    v6[4] = self;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1CC80;
    v5[3] = &unk_45B188;
    v5[4] = self;
    [UIView animateWithDuration:v6 animations:v5 completion:duration];
  }

  else
  {
    [(NSMutableArray *)self->mCurrentThumbnailViews makeObjectsPerformSelector:"removeFromSuperview", duration];

    self->mCurrentThumbnailViews = 0;
    self->mCurrentThumbnailPageIndexes = 0;
  }
}

- (void)corruptBookAlert
{
  [-[THDocumentViewController documentRoot](self "documentRoot")];
  if (!self->mHaveDisplayedCorruptBookAlert)
  {
    v3 = [THBundle() localizedStringForKey:@"This book is either missing content or contains invalid content." value:&stru_471858 table:0];
    v4 = +[UIAlertController alertControllerWithTitle:message:preferredStyle:](UIAlertController, "alertControllerWithTitle:message:preferredStyle:", v3, [THBundle() localizedStringForKey:@"Try downloading the book again" value:&stru_471858 table:0], 1);
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1CE68;
    v5[3] = &unk_45B358;
    v5[4] = self;
    -[UIAlertController addAction:](v4, "addAction:", +[UIAlertAction actionWithTitle:style:handler:](UIAlertAction, "actionWithTitle:style:handler:", [THBundle() localizedStringForKey:@"OK" value:&stru_471858 table:0], 1, v5));
    [(THDocumentViewController *)self presentViewController:v4 animated:1 completion:0];
    self->mHaveDisplayedCorruptBookAlert = 1;
  }
}

- (id)scrollableCanvasActivityItemProviderWithCachedAnnotation:(id)annotation
{
  bookPropertiesDelegate = [(THDocumentViewController *)self bookPropertiesDelegate];

  return [(THBookPropertiesProvider *)bookPropertiesDelegate activityItemProviderWithCachedAnnotation:annotation];
}

- (BOOL)allowCopy
{
  bookPropertiesDelegate = [(THDocumentViewController *)self bookPropertiesDelegate];

  return [(THBookPropertiesProvider *)bookPropertiesDelegate allowCopy];
}

- (id)titleOfCurrentNavigationUnit
{
  v3 = [-[THDocumentViewController documentRoot](self "documentRoot")];
  currentNavigationUnit = [(THDocumentViewController *)self currentNavigationUnit];

  return [v3 titleStringForNavigationUnit:currentNavigationUnit];
}

- (id)activityItemProviderWithCachedAnnotation:(id)annotation
{
  bookPropertiesDelegate = [(THDocumentViewController *)self bookPropertiesDelegate];

  return [(THBookPropertiesProvider *)bookPropertiesDelegate activityItemProviderWithCachedAnnotation:annotation];
}

- (BOOL)suspendCanvasScroll
{
  objc_opt_class();
  v2 = TSUDynamicCast();

  return [v2 suspendScrolling];
}

- (void)setSuspendCanvasScroll:(BOOL)scroll
{
  scrollCopy = scroll;
  objc_opt_class();
  v4 = TSUDynamicCast();

  [v4 setSuspendScrolling:scrollCopy];
}

- (void)removePreviewForRelativePageIndex:(unint64_t)index
{
  if (![(THDocumentViewController *)self inFlowMode])
  {
    currentNavigationUnit = [(THSectionController *)[(THDocumentViewController *)self activeSectionController] currentNavigationUnit];
    currentPresentationType = [(THDocumentViewController *)self currentPresentationType];
    if ([(THNavigationUnit *)currentNavigationUnit pageCountForPresentationType:currentPresentationType]> index)
    {
      [-[THPageViewProvider pageHostForAbsolutePageIndex:](-[THDocumentViewController pageViewProvider](self "pageViewProvider")];
    }

    height = CGSizeZero.height;

    [(THDocumentViewController *)self setLastLayoutSize:CGSizeZero.width, height];
  }
}

- (void)pageViewProviderViewsAdded:(id)added pageIndexSet:(id)set
{
  if ([(THDocumentViewController *)self inGuidedPan]&& [(THDocumentViewController *)self p_allowsPageDisplacement])
  {
    mPageViewDisplacement = self->mPageViewDisplacement;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1D1CC;
    v7[3] = &unk_45B3D0;
    v7[4] = self;
    v7[5] = set;
    [(THPageViewDisplacement *)mPageViewDisplacement hideWithEnumerator:v7];
  }

  else if (([-[THDocumentViewController interactiveCanvasController](self "interactiveCanvasController")] & 1) == 0)
  {
    [(THDocumentViewController *)self p_updatePageViewsForScrollingAnimated:0 restoreOrigin:0 pageIndexSet:set];
  }

  [(THDocumentViewController *)self p_updatePageViewHostsWithTheme:[(THThemeDelegate *)[(THDocumentViewController *)self themeDelegate] theme]];
}

- (CGRect)pageViewProviderUnclippedVisibleBounds:(id)bounds
{
  interactiveCanvasController = [(THDocumentViewController *)self interactiveCanvasController];

  [interactiveCanvasController visibleBoundsRect];
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (unint64_t)pageViewProviderStartAbsolutePageIndex:(id)index
{
  currentNavigationUnit = [(THDocumentViewController *)self currentNavigationUnit];
  currentPresentationType = [(THDocumentViewController *)self currentPresentationType];

  return [currentNavigationUnit startPageAbsolutePageIndexForPresentationType:currentPresentationType];
}

- (void)p_updatePageViewsForScrollingAnimated:(BOOL)animated restoreOrigin:(BOOL)origin pageIndexSet:(id)set
{
  originCopy = origin;
  animatedCopy = animated;
  if ([(THDocumentViewController *)self p_allowsPageDisplacement])
  {
    if (!self->mOverscrollAnimationInProcess && !-[THDocumentViewController isRotating](self, "isRotating") && !-[THDocumentViewController preventVisibleInfoUpdates](self, "preventVisibleInfoUpdates") && ([-[THDocumentViewController interactiveCanvasController](self "interactiveCanvasController")] & 1) == 0)
    {
      [(THDocumentViewController *)self zoomedOutViewScale];
      v10 = v9;
      [(THDocumentViewController *)self currentViewScale];
      if (vabdd_f64(v10, v11) < 0.00999999978 && !-[THDocumentViewController isRevealingTOC](self, "isRevealingTOC") && ([-[THDocumentViewController interactiveCanvasController](self "interactiveCanvasController")] & 1) == 0)
      {
        isFocusedOnTarget = [(THGuidedPanController *)[(THDocumentViewController *)self guidedPanController] isFocusedOnTarget];
        if ((set || (isFocusedOnTarget & 1) == 0) && ![(THDocumentViewController *)self inGuidedPan])
        {
          if ([(THDocumentViewController *)self isTwoUp])
          {
            v13 = 2;
          }

          else
          {
            v13 = 1;
          }

          [(THPageViewDisplacement *)self->mPageViewDisplacement setNumberOfPagesShown:v13];
          mPageViewDisplacement = self->mPageViewDisplacement;
          v15[0] = _NSConcreteStackBlock;
          v15[1] = 3221225472;
          v15[2] = sub_1D5AC;
          v15[3] = &unk_45B3F8;
          v15[4] = self;
          v15[5] = set;
          [(THPageViewDisplacement *)mPageViewDisplacement updateDisplacementAnimated:animatedCopy restoreOrigin:originCopy enumerator:v15];
        }
      }
    }
  }
}

- (id)traitCollection
{
  v8.receiver = self;
  v8.super_class = THDocumentViewController;
  traitCollection = [(THDocumentViewController *)&v8 traitCollection];
  if (!traitCollection)
  {
    return objc_alloc_init(UITraitCollection);
  }

  v4 = traitCollection;
  if ([(THDocumentViewController *)self isViewLoaded])
  {
    v5 = [(THDocumentViewController *)self inFlowMode]? 2 : 1;
    v6 = [UITraitCollection bk_traitCollectionWithReadingMode:v5];
    v9[0] = v4;
    v9[1] = v6;
    v4 = [UITraitCollection traitCollectionWithTraitsFromCollections:[NSArray arrayWithObjects:v9 count:2]];
    if (!v4)
    {
      return objc_alloc_init(UITraitCollection);
    }
  }

  return v4;
}

- (void)_computeTraitCollectionDerivedValues
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1D9A8;
  v3[3] = &unk_45AE00;
  v3[4] = self;
  os_unfair_lock_lock(&self->_accessLock);
  sub_1D9A8(v3);
  os_unfair_lock_unlock(&self->_accessLock);
}

- (void)_traitCollectionDidChange:(id)change previousTraitCollection:(id)collection
{
  [(THDocumentViewController *)self _computeTraitCollectionDerivedValues:change];
  [(THDocumentReflowableLayoutConfiguration *)[(THDocumentViewController *)self configuration] invalidate];
  [(THDocumentViewController *)self p_updateScrollViewDecelerationRate];

  [(THDocumentViewController *)self setCompactFlowPresentationState:0];
}

- (int64_t)th_cachedInterfaceOrientation
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1DB44;
  v5[3] = &unk_45B420;
  v5[4] = self;
  v5[5] = &v6;
  os_unfair_lock_lock(&self->_accessLock);
  sub_1DB44(v5);
  os_unfair_lock_unlock(&self->_accessLock);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)th_cachedIsCompactHeight
{
  selfCopy = self;
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1DC44;
  v4[3] = &unk_45B420;
  v4[4] = self;
  v4[5] = &v5;
  os_unfair_lock_lock(&self->_accessLock);
  sub_1DC44(v4);
  os_unfair_lock_unlock(&selfCopy->_accessLock);
  LOBYTE(selfCopy) = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return selfCopy;
}

- (BOOL)th_cachedIsCompactWidth
{
  selfCopy = self;
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1DD44;
  v4[3] = &unk_45B420;
  v4[4] = self;
  v4[5] = &v5;
  os_unfair_lock_lock(&self->_accessLock);
  sub_1DD44(v4);
  os_unfair_lock_unlock(&selfCopy->_accessLock);
  LOBYTE(selfCopy) = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return selfCopy;
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  [(THWFreeTransformController *)[(THDocumentViewController *)self ftc] cancelTransform];
  [(THDocumentViewController *)self setLastLayoutBoundsSize:width, height];
  if (![(THDocumentViewController *)self lastStorageAnchor])
  {
    activeSectionController = [(THDocumentViewController *)self activeSectionController];
    [-[THDocumentViewController interactiveCanvasController](self "interactiveCanvasController")];
    [(THDocumentViewController *)self setLastStorageAnchor:[(THSectionController *)activeSectionController bodyAnchorForCanvasRect:?]];
  }

  if ([(THDocumentViewController *)self lastAbsolutePageIndex]== 0x7FFFFFFFFFFFFFFFLL && ![(THDocumentViewController *)self expandedViewController])
  {
    [(THDocumentViewController *)self setLastAbsolutePageIndex:[(THDocumentViewController *)self currentAbsolutePageIndex]];
  }

  [(THDocumentViewController *)self updateTwoUpForSize:width, height];
  if ([(THDocumentViewController *)self p_isSinglePageChapter])
  {
    [(THDocumentViewController *)self p_layoutSinglePageChapter];
  }

  v18.receiver = self;
  v18.super_class = THDocumentViewController;
  [(THDocumentViewController *)&v18 viewWillTransitionToSize:coordinator withTransitionCoordinator:width, height];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1E030;
  v17[3] = &unk_45B448;
  v17[4] = self;
  [coordinator animateAlongsideTransition:v17 completion:0];
  if (!-[THDocumentViewController isEpub](self, "isEpub") && [coordinator isAnimated])
  {
    [(THDocumentViewController *)self setIsTransitioning:1];
    if (coordinator && ([coordinator targetTransform], !CGAffineTransformIsIdentity(&v16)))
    {
      [coordinator transitionDuration];
      [(THDocumentViewController *)self bookViewWillRotateTransitionToSize:width duration:height, v10];
      v9 = 1;
    }

    else
    {
      [(THDocumentViewController *)self bookViewWillTransitionToSize:width, height];
      v9 = 0;
    }

    v16.a = 0.0;
    *&v16.b = &v16;
    *&v16.c = 0x2020000000;
    LOBYTE(v16.d) = 0;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1E0A4;
    v14[3] = &unk_45B470;
    v15 = v9;
    v14[4] = self;
    v14[5] = &v16;
    *&v14[6] = width;
    *&v14[7] = height;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1E11C;
    v12[3] = &unk_45B498;
    v13 = v9;
    v12[4] = self;
    *&v12[5] = width;
    *&v12[6] = height;
    v11 = [coordinator animateAlongsideTransition:v14 completion:v12];
    *(*&v16.b + 24) = v11;
    _Block_object_dispose(&v16, 8);
  }
}

- (void)p_layoutSinglePageChapter
{
  if ([(THDocumentViewController *)self transitioningFromTwoUpToOneUp]|| [(THDocumentViewController *)self transitioningFromOneUpToTwoUp])
  {
    mPageViewProvider = self->mPageViewProvider;
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_1E230;
    v4[3] = &unk_45AE00;
    v4[4] = self;
    [(THPageViewProvider *)mPageViewProvider syncPerformBlock:v4];
  }
}

- (void)bookViewWillTransitionToSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  if ([(THDocumentViewController *)self isDocumentLoaded])
  {
    [(THDocumentReflowableLayoutConfiguration *)[(THDocumentViewController *)self configuration] invalidate];
    if ([(THDocumentViewController *)self p_isSinglePageChapter])
    {
      [(THDocumentViewController *)self p_layoutSinglePageChapter];
    }

    if ([(THDocumentViewController *)self lastAbsolutePageIndex]== 0x7FFFFFFFFFFFFFFFLL)
    {
      [(THDocumentViewController *)self setLastAbsolutePageIndex:[(THDocumentViewController *)self currentAbsolutePageIndex]];
    }

    [(THDocumentViewController *)self updateTwoUpForSize:width, height];
    [(THDocumentViewController *)self p_dismissActiveAnimated:0];
    [-[THDocumentViewController interactiveCanvasController](self "interactiveCanvasController")];
    [(THDocumentViewController *)self setVisibleUnscaledRectBeforeRotation:?];
    if ([(THDocumentViewController *)self showingExpandedWidgetView])
    {
      [(THDocumentViewController *)self p_layoutCanvasForSize:0 duration:width forceBackgroundLayout:height, 0.0];
    }

    bookNavigationDelegate = [(THDocumentViewController *)self bookNavigationDelegate];

    [(THBookNavigation *)bookNavigationDelegate vantageWillChangeBy:self reason:@"THVantageChangeReasonWindowResize"];
  }
}

- (void)bookViewWillRotateTransitionToSize:(CGSize)size duration:(double)duration
{
  height = size.height;
  width = size.width;
  [objc_msgSend(objc_msgSend(-[THDocumentViewController interactiveCanvasController](self "interactiveCanvasController")];
  [*&self->TSADocumentViewController_opaque[OBJC_IVAR___TSADocumentViewController__scrollView] setContentInset:{0.0, 0.0, 0.0, 0.0}];
  if ([(THDocumentViewController *)self isDocumentLoaded])
  {
    [(THDocumentReflowableLayoutConfiguration *)[(THDocumentViewController *)self configuration] invalidate];
    [NSObject cancelPreviousPerformRequestsWithTarget:self selector:"p_performDelayedLayoutAndRotation:" object:[NSValue valueWithCGSize:self->_previousTransitionSize.width, self->_previousTransitionSize.height]];
    self->_previousTransitionSize = CGSizeZero;
    expandedViewController = [(THDocumentViewController *)self expandedViewController];
    v9 = 1;
    if (!expandedViewController)
    {
      v9 = [(THDocumentViewController *)self presentedViewController]!= 0;
    }

    [(THDocumentViewController *)self setDeferCanvasLayoutToAfterRotationHasCompleted:v9];
    self->mIsRotating = 1;
    [(THDocumentViewController *)self p_releaseOverscrollViews];
    activeSectionController = [(THDocumentViewController *)self activeSectionController];
    if (activeSectionController == [(THDocumentViewController *)self flowSectionController])
    {
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_1E5D8;
      v11[3] = &unk_45AE00;
      v11[4] = self;
      [UIView performBlockWithActionsAndAnimationsDisabled:v11];
    }

    else
    {
      [-[THDocumentViewController interactiveCanvasController](self "interactiveCanvasController")];
      [(THDocumentViewController *)self setVisibleUnscaledRectBeforeRotation:?];
      [-[THDocumentViewController view](self "view")];
    }

    if (([(THDocumentViewController *)self showingExpandedWidgetView]|| [(THDocumentViewController *)self currentChapter]!= 0x7FFFFFFFFFFFFFFFLL) && ![(THDocumentViewController *)self deferCanvasLayoutToAfterRotationHasCompleted])
    {
      [(THDocumentViewController *)self p_layoutCanvasForSize:0 duration:width forceBackgroundLayout:height, duration];
    }

    [-[THDocumentViewController canvasScrollView](self "canvasScrollView")];
    [(THDocumentViewController *)self p_dismissActiveAnimated:0];
    [(THBookNavigation *)[(THDocumentViewController *)self bookNavigationDelegate] vantageWillChangeBy:self reason:@"THVantageChangeReasonRotation"];
  }
}

- (void)bookViewWillAnimateRotationToSize:(CGSize)size duration:(double)duration
{
  height = size.height;
  width = size.width;
  if ([(THDocumentViewController *)self isDocumentLoaded])
  {
    activeSectionController = [(THDocumentViewController *)self activeSectionController];
    if (activeSectionController == [(THDocumentViewController *)self paginatedSectionController])
    {
      [(THDocumentViewController *)self p_maxScrollViewSizeForViewSize:width, height];
      v10 = v9;
      v12 = v11;
      [(THDocumentViewController *)self p_updateScrollViewAndZoomSettingsForSize:width, height];
      [(THDocumentViewController *)self zoomedOutViewScale];
      v14 = v13;
      [(THDocumentViewController *)self visibleUnscaledRectBeforeRotation];
      TSDCenterOfRect();
      v16 = v15;
      [(THDocumentViewController *)self visibleUnscaledRectBeforeRotation];
      v18 = v17;
      v19 = v12 / v14 * 0.5;
      p_isSinglePageChapter = [(THDocumentViewController *)self p_isSinglePageChapter];
      if (p_isSinglePageChapter)
      {
        [(THDocumentViewController *)self p_layoutSinglePageChapter];
      }

      v21 = v19 + v18;
      if ([(THDocumentViewController *)self transitioningFromTwoUpToOneUp])
      {
        v16 = v16 + v10 * -0.5;
      }

      else if ([(THDocumentViewController *)self transitioningFromOneUpToTwoUp])
      {
        if ([objc_msgSend(-[THDocumentViewController documentRoot](self "documentRoot")])
        {
          [(THDocumentViewController *)self visibleUnscaledRectBeforeRotation];
          v16 = v16 - v22;
        }

        if (p_isSinglePageChapter)
        {
          v23 = [-[THDocumentViewController interactiveCanvasController](self "interactiveCanvasController")];
          [v23 frame];
          v25 = v24;
          v38 = v27;
          v39 = v26;
          v29 = v28 + v28;
          [-[THDocumentViewController interactiveCanvasController](self "interactiveCanvasController")];
          [v23 setFrame:{v25 - v16 * v30, v39, v29, v38}];
        }
      }

      [*&self->TSADocumentViewController_opaque[OBJC_IVAR___TSADocumentViewController__scrollView] bounds];
      TSDMultiplySizeScalar();
      [-[THDocumentViewController interactiveCanvasController](self "interactiveCanvasController")];
      [-[THDocumentViewController interactiveCanvasController](self "interactiveCanvasController")];
    }

    [-[THDocumentViewController view](self "view")];
    MidX = CGRectGetMidX(v41);
    [objc_msgSend(-[THDocumentViewController view](self "view")];
    v37 = v36;
    [(UIView *)self->mWhiteBackground bounds];
    [(UIView *)self->mWhiteBackground setCenter:MidX, v37 + CGRectGetHeight(v42) * 0.5];
    if ([(THDocumentViewController *)self inFlowMode])
    {
      [-[THDocumentViewController interactiveCanvasController](self "interactiveCanvasController")];
      [(THDocumentViewController *)self p_updateCanvasSize];

      [(THDocumentViewController *)self p_resizeViewsForSize:1 duration:width maintainPageIndex:height, 0.0];
    }
  }
}

- (void)p_updateWidgetInteractionMode
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  interactiveCanvasController = [objc_msgSend(-[THDocumentViewController interactiveCanvasController](self interactiveCanvasController];
  v3 = [interactiveCanvasController countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(interactiveCanvasController);
        }

        [*(*(&v7 + 1) + 8 * i) recursivelyPerformSelectorIfImplemented:"widgetInteractionModeChanged"];
      }

      v4 = [interactiveCanvasController countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)bookViewDidRotateTransitionToSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  if ([(THDocumentViewController *)self isDocumentLoaded])
  {
    if ([(THDocumentViewController *)self deferCanvasLayoutToAfterRotationHasCompleted])
    {
      [NSObject cancelPreviousPerformRequestsWithTarget:self selector:"p_performDelayedLayoutAndRotation:" object:[NSValue valueWithCGSize:self->_previousTransitionSize.width, self->_previousTransitionSize.height]];
      self->_previousTransitionSize.width = width;
      self->_previousTransitionSize.height = height;
      [(THDocumentViewController *)self performSelector:"p_performDelayedLayoutAndRotation:" withObject:[NSValue afterDelay:"valueWithCGSize:" valueWithCGSize:height], 0.5];
    }

    else
    {
      [(THDocumentViewController *)self p_didFinishTransitionWithSize:width, height];
    }
  }

  [objc_msgSend(objc_msgSend(-[THDocumentViewController interactiveCanvasController](self "interactiveCanvasController")];
  v6 = [objc_msgSend(-[THDocumentViewController interactiveCanvasController](self "interactiveCanvasController")];

  [v6 adjustContentInsets];
}

- (void)p_performDelayedLayoutAndRotation:(id)rotation
{
  [(THDocumentViewController *)self setDeferCanvasLayoutToAfterRotationHasCompleted:0];
  [rotation CGSizeValue];
  v6 = v5;
  v8 = v7;
  [THDocumentViewController p_layoutCanvasForSize:"p_layoutCanvasForSize:duration:forceBackgroundLayout:" duration:1 forceBackgroundLayout:?];
  [(THDocumentViewController *)self p_didFinishTransitionWithSize:v6, v8];
  interactiveCanvasController = [(THDocumentViewController *)self interactiveCanvasController];

  [interactiveCanvasController forceStopScrolling];
}

- (void)p_didFinishTransitionWithSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  self->mIsRotating = 0;
  [(THDocumentViewController *)self p_setupPageNumberViews];
  [(THDocumentViewController *)self p_setupNavOverlayContainer];
  [(THDocumentViewController *)self p_updateScrollViewAndZoomSettingsForSize:width, height];
  [(UIView *)self->mWhiteBackground removeFromSuperview];

  self->mWhiteBackground = 0;
  [(THDocumentViewController *)self p_updatePageNumberingForce:1];
  [(THDocumentViewController *)self p_setupOverscrollViews];
  [(THDocumentViewController *)self p_resetPageDisplacment];
  [(THDocumentViewController *)self p_updateWidgetInteractionMode];
  bookNavigationDelegate = [(THDocumentViewController *)self bookNavigationDelegate];

  [(THBookNavigation *)bookNavigationDelegate vantageDidChangeBy:self reason:@"THVantageChangeReasonRotation"];
}

- (void)p_resetPageDisplacment
{
  if (![(THDocumentViewController *)self p_allowsPageDisplacement]&& ![(THDocumentViewController *)self inFlowMode])
  {
    mPageViewDisplacement = self->mPageViewDisplacement;
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_1EEBC;
    v4[3] = &unk_45B270;
    v4[4] = self;
    [(THPageViewDisplacement *)mPageViewDisplacement resetAnimationsWithEnumerator:v4];
  }
}

- (void)bookViewDidTransitionToSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  if ([(THDocumentViewController *)self isDocumentLoaded])
  {
    if ([(THDocumentViewController *)self currentChapter]!= 0x7FFFFFFFFFFFFFFFLL)
    {
      if ([(THDocumentViewController *)self inFlowMode])
      {
        [-[THDocumentViewController interactiveCanvasController](self "interactiveCanvasController")];
        [(THDocumentViewController *)self p_updateCanvasSize];
      }

      [(THDocumentViewController *)self p_resizeViewsForSize:1 duration:width maintainPageIndex:height, 0.0];
    }

    [(THDocumentViewController *)self p_resetPageDisplacment];

    [(THDocumentViewController *)self p_updateWidgetInteractionMode];
  }
}

- (CGSize)widgetStackMaxContainerSizeForSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  if ([(THDocumentViewController *)self inFlowMode])
  {
    [(THDocumentViewController *)self p_maxScrollViewSize];
    height = fmin(height, v6 + 10.0 * -2.0);
  }

  v7 = width;
  v8 = height;
  result.height = v8;
  result.width = v7;
  return result;
}

- (THDocumentReflowableLayoutConfiguration)configuration
{
  result = self->_configuration;
  if (!result)
  {
    self->_configuration = [[THDocumentReflowableLayoutConfiguration alloc] initWithViewController:self provider:self];
    configuration = [(THDocumentViewController *)self configuration];
    isEpub = [(THDocumentViewController *)self isEpub];
    v6 = 0.8;
    if (!isEpub)
    {
      v6 = 1.0;
    }

    [(THDocumentReflowableLayoutConfiguration *)configuration setLargeSizeFactor:v6];
    if ([(THDocumentViewController *)self parentViewController])
    {
      [-[THDocumentReflowableLayoutConfiguration environment](self->_configuration "environment")];
    }

    if ([(THDocumentViewController *)self inFlowMode])
    {
      v7 = 2;
    }

    else
    {
      v7 = 1;
    }

    [(THDocumentReflowableLayoutConfiguration *)[(THDocumentViewController *)self configuration] setLayout:v7];
    [+[THApplicationSettings sharedSettings](THApplicationSettings "sharedSettings")];
    [(THDocumentReflowableLayoutConfiguration *)[(THDocumentViewController *)self configuration] setOverrideFontSize:v8];
    return self->_configuration;
  }

  return result;
}

- (double)statusBarHeight
{
  if ([(THDocumentViewController *)self p_prefersStatusBarHidden])
  {
    return 0.0;
  }

  v3 = UIApp;

  [v3 statusBarHeight];
  return result;
}

- (double)toolbarHeight
{
  th_cachedIsCompactHeight = [(THDocumentViewController *)self th_cachedIsCompactHeight];
  result = 44.0;
  if (th_cachedIsCompactHeight)
  {
    return 32.0;
  }

  return result;
}

- (BOOL)isEpub
{
  documentRoot = [(THDocumentViewController *)self documentRoot];

  return [documentRoot isEPUB];
}

- (double)topBarHeight
{
  toolbarDelegate = [(THDocumentViewController *)self toolbarDelegate];

  [(THToolbarDelegate *)toolbarDelegate topBarHeight];
  return result;
}

- (double)bottomBarHeight
{
  toolbarDelegate = [(THDocumentViewController *)self toolbarDelegate];

  [(THToolbarDelegate *)toolbarDelegate bottomBarHeight];
  return result;
}

- (BOOL)willAdjustHeightForSnapshot
{
  view = [(THDocumentViewController *)self view];
  v3 = isPad();
  if (v3)
  {
    window = [view window];
    if (!window)
    {
      [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    }

    [window frame];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    [objc_msgSend(window "screen")];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v21 = v6;
    v22 = v8;
    v23 = v10;
    v24 = v12;

    LOBYTE(v3) = CGRectEqualToRect(*&v21, *&v14);
  }

  return v3;
}

- (void)buildHoverControlRegionForInteraction:(id)interaction withBuilder:(id)builder
{
  if ([(THDocumentViewController *)self isEpub])
  {
    [(THDocumentReflowableLayoutConfiguration *)[(THDocumentViewController *)self configuration] scrubberFrame];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    [objc_msgSend(interaction "view")];
    MinX = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;
    if ([(THDocumentReflowableLayoutConfiguration *)[(THDocumentViewController *)self configuration] isScroll]&& [(THDocumentReflowableLayoutConfiguration *)[(THDocumentViewController *)self configuration] layout]== &dword_0 + 2)
    {
      userInterfaceLayoutDirection = [+[UIApplication sharedApplication](UIApplication userInterfaceLayoutDirection];
      v24 = v8;
      v25 = v10;
      v26 = v12;
      v27 = v14;
      if (userInterfaceLayoutDirection == UIUserInterfaceLayoutDirectionRightToLeft)
      {
        MaxX = CGRectGetMaxX(*&v24);
      }

      else
      {
        MinX = CGRectGetMinX(*&v24);
        MaxX = v20 - MinX;
      }
    }

    else
    {
      [(THDocumentReflowableLayoutConfiguration *)[(THDocumentViewController *)self configuration] bottomFullWidthToolbarFrame];
      MinX = v29;
      v18 = v30;
      v22 = v31;
    }

    [builder addRegionWithRect:{MinX, v18, MaxX, v22}];
  }
}

- (_NSRange)visibleRelativePageRange
{
  p_mVisibleRelativePageRange = &self->mVisibleRelativePageRange;
  location = self->mVisibleRelativePageRange.location;
  length = p_mVisibleRelativePageRange->length;
  result.length = length;
  result.location = location;
  return result;
}

- (CGPoint)lastScrollOffset
{
  x = self->mLastScrollOffset.x;
  y = self->mLastScrollOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGRect)visibleUnscaledRectBeforeRotation
{
  x = self->mVisibleUnscaledRectBeforeRotation.origin.x;
  y = self->mVisibleUnscaledRectBeforeRotation.origin.y;
  width = self->mVisibleUnscaledRectBeforeRotation.size.width;
  height = self->mVisibleUnscaledRectBeforeRotation.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)previousContentFrame
{
  x = self->_previousContentFrame.origin.x;
  y = self->_previousContentFrame.origin.y;
  width = self->_previousContentFrame.size.width;
  height = self->_previousContentFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGPoint)beginDraggingContentOffset
{
  x = self->_beginDraggingContentOffset.x;
  y = self->_beginDraggingContentOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGSize)previousTransitionSize
{
  width = self->_previousTransitionSize.width;
  height = self->_previousTransitionSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)lastLayoutSize
{
  width = self->_lastLayoutSize.width;
  height = self->_lastLayoutSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)lastLayoutBoundsSize
{
  width = self->_lastLayoutBoundsSize.width;
  height = self->_lastLayoutBoundsSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end