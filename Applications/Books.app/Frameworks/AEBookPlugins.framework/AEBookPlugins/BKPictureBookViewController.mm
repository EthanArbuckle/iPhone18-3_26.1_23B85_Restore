@interface BKPictureBookViewController
+ (void)initialize;
- (BKImageResizerHelper)imageResizer;
- (BKPictureBookViewController)initWithBook:(id)book storeID:(id)d;
- (BOOL)_bookRenditionFlowIsScrolled;
- (BOOL)_bookRenditionFlowIsScrolledContinuous;
- (BOOL)_isFocusedOnSecondPageOfSpread;
- (BOOL)_isManualCurlInProgress;
- (BOOL)animateLiveResizeTransitions;
- (BOOL)aspectFitDuringLiveResize;
- (BOOL)blurSnapshotDuringLiveResize;
- (BOOL)dismissShouldBegin:(id)begin;
- (BOOL)hasContinuousScrollingBehavior;
- (BOOL)isSpread;
- (BOOL)isVerticalScrubberVisible;
- (BOOL)pageNavigationController:(id)controller shouldDelayChangeToPageOffset:(int64_t)offset completion:(id)completion;
- (BOOL)pageNavigationIsVertical;
- (BOOL)savedLocationIsEndOfBook;
- (BOOL)shouldShowBookmarkControl;
- (BOOL)shouldShowHUDs;
- (BOOL)shouldShowTOCControl;
- (BOOL)showSpreads;
- (BOOL)snapshotDuringLiveResize;
- (CGRect)desiredBoundsForNavigationController;
- (CGRect)scrubberContainerViewFrame;
- (CGSize)idealCacheSize;
- (CGSize)thumbnailingContentSizeForPageNumber:(int64_t)number;
- (UIView)currentReadingPositionView;
- (UIView)scrubberContainerView;
- (UIViewPropertyAnimator)verticalScrubberAnimator;
- (WKWebView)snapshotWebView;
- (_NSRange)currentPages;
- (double)_contentAspectRatio;
- (id)_bk_backgroundColor;
- (id)_bookmarkDirectory;
- (id)_pageDirectory;
- (id)_prepareSmilMapOn:(_NSRange)on;
- (id)_stylesheetSetForSnapshot:(id)snapshot;
- (id)assetViewControllerViewForLiveResizeSnapshot;
- (id)contentViewControllerForLocation:(id)location;
- (id)currentScrubber;
- (id)currentSoundtrack;
- (id)pageLocationForPageNumber:(int64_t)number;
- (id)pageNavigationViewController;
- (id)pageTitleForPageNumber:(int64_t)number;
- (id)pictureBookRenderingCache;
- (id)resizeImage:(id)image toSize:(CGSize)size callback:(id)callback;
- (id)scrubber;
- (id)scrubberCallout;
- (id)thumbnailScrubber:(id)scrubber thumbnailForPage:(int64_t)page size:(CGSize)size context:(id)context;
- (id)thumbnailingGenerateImageForPageNumber:(int64_t)number callbackBlock:(id)block;
- (id)upsellContentViewController;
- (id)verticalScrubber;
- (id)webViewForSnapshotting:(id)snapshotting size:(CGSize)size;
- (int64_t)calculatePageCountExcludingUpsell;
- (unint64_t)_itemIndexForCurrentPage;
- (unint64_t)defaultLayoutToUse;
- (unint64_t)supportedInterfaceOrientations;
- (void)_cancelCachingAndCleanupSnapshotWebViews;
- (void)_cleanDocumentElementForMediaOverlay:(id)overlay;
- (void)_cleanupSnapshotWebViews;
- (void)_focusOnPage:(int64_t)page;
- (void)_installClickHandlers:(id)handlers;
- (void)_markupDocumentElementForMediaOverlay:(id)overlay;
- (void)_nextPageHint:(BOOL)hint;
- (void)_performScrollTest:(id)test completionHandler:(id)handler;
- (void)_prewarmThumbnailsForVerticalScrubber;
- (void)_removeClickHandlers:(id)handlers;
- (void)_traitCollectionDidChange:(id)change previousTraitCollection:(id)collection;
- (void)_updateWebProcessPluginObject:(id)object withParameter:(id)parameter;
- (void)animateVerticalScrubberIn:(double)in animated:(BOOL)animated;
- (void)appearanceViewController:(id)controller didChangeLayout:(unint64_t)layout;
- (void)assetViewControllerDidEndLiveResize;
- (void)assetViewControllerWillEnterForeground;
- (void)bkaxToggleControls:(id)controls;
- (void)books_pageBackward:(id)backward;
- (void)books_pageForward:(id)forward;
- (void)books_pageLeft:(id)left;
- (void)books_pageRight:(id)right;
- (void)contentView:(id)view unhandledClickAtPoint:(CGPoint)point;
- (void)contentViewController:(id)controller navigatePageDirection:(id)direction;
- (void)contentViewReady:(id)ready;
- (void)dealloc;
- (void)didChangeLocationClosing:(BOOL)closing suspending:(BOOL)suspending;
- (void)displayVerticalScrubberBackground;
- (void)edgePanGestureHandler:(id)handler;
- (void)finishedSnapshottingForCache:(id)cache;
- (void)generateRenderingPiggyBackForAllPages;
- (void)generateSnapshotsForCurrentPages;
- (void)hideVerticalScrubber;
- (void)hideVerticalScrubberAndResetZoomScale:(BOOL)scale;
- (void)infoHUDTapped:(id)tapped;
- (void)jumpToLocation:(id)location animated:(BOOL)animated completion:(id)completion;
- (void)layoutScrubberCallout:(id)callout;
- (void)loadView;
- (void)pageNavigationDidChangeLocation:(id)location;
- (void)pageNavigationSnapshotForPageNumber:(int64_t)number completion:(id)completion;
- (void)pageNavigationSnapshotForPageNumber:(int64_t)number size:(CGSize)size isRight:(BOOL)right zoomScale:(double)scale applyMaskAndGutter:(BOOL)gutter completion:(id)completion;
- (void)pictureBookVerticalNavigationInteractionDidStart:(int64_t)start;
- (void)pictureBookVerticalNavigationpreferredPageNumberHUDVisibilityChanged:(BOOL)changed;
- (void)prepareForScrubberAnimation;
- (void)presentAppearanceViewControllerFromItem:(id)item;
- (void)restoreSavedLocation;
- (void)scrubberTouch:(id)touch forEvent:(id)event;
- (void)setBook:(id)book;
- (void)setControlsVisible:(BOOL)visible animated:(BOOL)animated;
- (void)setLayout:(unint64_t)layout;
- (void)setLocation:(id)location;
- (void)setPageCountIncludingUpsell:(int64_t)upsell;
- (void)setSection:(int)section animated:(BOOL)animated adjustScrollToReveal:(BOOL)reveal;
- (void)setTheme:(id)theme;
- (void)setupBackgroundImageViewWithImage:(id)image;
- (void)setupVerticalScrubber;
- (void)showScrim:(BOOL)scrim;
- (void)showVerticalScrubber;
- (void)touchBarScrollerDidEnd:(double)end completion:(id)completion;
- (void)touchBarScrollerDidScroll:(double)scroll;
- (void)touchBarScrollerDidStart:(double)start;
- (void)transitionDidFinish:(BOOL)finish;
- (void)turnToNextChapter;
- (void)turnToPreviousChapter;
- (void)updateCurrentReadingPositionViewIfNeeded;
- (void)updatePageNumberHUD;
- (void)updateScrubberUsingTouchbar:(double)touchbar;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation BKPictureBookViewController

+ (void)initialize
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v4 = @"BKReadingScrolledContinuous";
  v5 = &__kCFBooleanTrue;
  v3 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];
  [v2 registerDefaults:v3];
}

- (BKPictureBookViewController)initWithBook:(id)book storeID:(id)d
{
  v14.receiver = self;
  v14.super_class = BKPictureBookViewController;
  v4 = [(BKThumbnailBookViewController *)&v14 initWithBook:book storeID:d];
  if (v4)
  {
    v5 = [IMTheme themeWithIdentifier:kIMThemeIdentifierDynamicTheme];
    [(BKPictureBookViewController *)v4 setTheme:v5];

    v6 = [[NSNumber alloc] initWithInt:0];
    thumbnailContext = v4->_thumbnailContext;
    v4->_thumbnailContext = v6;

    v8 = [[UIScreenEdgePanGestureRecognizer alloc] initWithTarget:v4 action:"edgePanGestureHandler:"];
    edgePanGestureRecognizer = v4->_edgePanGestureRecognizer;
    v4->_edgePanGestureRecognizer = v8;

    [(UIScreenEdgePanGestureRecognizer *)v4->_edgePanGestureRecognizer setEdges:8];
    [(UIScreenEdgePanGestureRecognizer *)v4->_edgePanGestureRecognizer setCancelsTouchesInView:1];
    [(UIScreenEdgePanGestureRecognizer *)v4->_edgePanGestureRecognizer setDelegate:v4];
    if ([(BKPictureBookViewController *)v4 isViewLoaded])
    {
      view = [(BKPictureBookViewController *)v4 view];
      [view addGestureRecognizer:v4->_edgePanGestureRecognizer];

      [(BKPictureBookViewController *)v4 setSwipeToShowScrubberEnable:1];
    }

    v11 = +[UITraitCollection bc_allAPITraits];
    v12 = [(BKPictureBookViewController *)v4 registerForTraitChanges:v11 withAction:"_traitCollectionDidChange:previousTraitCollection:"];
  }

  return v4;
}

- (void)dealloc
{
  [(UIScreenEdgePanGestureRecognizer *)self->_edgePanGestureRecognizer setDelegate:0];
  [(UIScreenEdgePanGestureRecognizer *)self->_edgePanGestureRecognizer removeTarget:0 action:0];
  [(BKPictureBookViewController *)self _cleanupSnapshotWebViews];
  v3.receiver = self;
  v3.super_class = BKPictureBookViewController;
  [(BKThumbnailBookViewController *)&v3 dealloc];
}

- (void)_cleanupSnapshotWebViews
{
  WeakRetained = objc_loadWeakRetained(&self->_snapshotWebView);
  [WeakRetained removeFromSuperview];

  objc_storeWeak(&self->_snapshotWebView, 0);
}

- (void)loadView
{
  v5.receiver = self;
  v5.super_class = BKPictureBookViewController;
  [(BKPictureBookViewController *)&v5 loadView];
  if (self->_edgePanGestureRecognizer)
  {
    if ([(BKThumbnailBookViewController *)self isInterfaceRTL])
    {
      v3 = 2;
    }

    else
    {
      v3 = 8;
    }

    [(UIScreenEdgePanGestureRecognizer *)self->_edgePanGestureRecognizer setEdges:v3];
    view = [(BKPictureBookViewController *)self view];
    [view addGestureRecognizer:self->_edgePanGestureRecognizer];

    [(BKPictureBookViewController *)self setSwipeToShowScrubberEnable:1];
  }
}

- (unint64_t)supportedInterfaceOrientations
{
  if (isPhone() && [(BKPictureBookViewController *)self hasContinuousScrollingBehavior])
  {
    return 2;
  }

  v4.receiver = self;
  v4.super_class = BKPictureBookViewController;
  return [(BKBookViewController *)&v4 supportedInterfaceOrientations];
}

- (UIView)scrubberContainerView
{
  scrubberContainerView = self->_scrubberContainerView;
  if (!scrubberContainerView)
  {
    v4 = [UIView alloc];
    [(BKPictureBookViewController *)self scrubberContainerViewFrame];
    v5 = [v4 initWithFrame:?];
    v6 = self->_scrubberContainerView;
    self->_scrubberContainerView = v5;

    [(UIView *)self->_scrubberContainerView setAutoresizingMask:0];
    scrubberContainerView = self->_scrubberContainerView;
  }

  return scrubberContainerView;
}

- (UIView)currentReadingPositionView
{
  currentReadingPositionView = self->_currentReadingPositionView;
  if (!currentReadingPositionView)
  {
    v4 = [[UIView alloc] initWithFrame:{0.0, 0.0, 5.0, 5.0}];
    v5 = self->_currentReadingPositionView;
    self->_currentReadingPositionView = v4;

    [(UIView *)self->_currentReadingPositionView bounds];
    v6 = CGRectGetWidth(v15) * 0.5;
    layer = [(UIView *)self->_currentReadingPositionView layer];
    [layer setCornerRadius:v6];

    [(UIView *)self->_currentReadingPositionView setAutoresizingMask:0];
    v8 = +[UIColor bc_booksWhite];
    [(UIView *)self->_currentReadingPositionView setBackgroundColor:v8];

    v9 = [UIColor colorWithRed:0.6 green:0.6 blue:0.6 alpha:0.18];
    cGColor = [v9 CGColor];
    layer2 = [(UIView *)self->_currentReadingPositionView layer];
    [layer2 setShadowColor:cGColor];

    layer3 = [(UIView *)self->_currentReadingPositionView layer];
    [layer3 setShadowRadius:4.0];

    [(UIView *)self->_currentReadingPositionView setUserInteractionEnabled:0];
    [(UIView *)self->_currentReadingPositionView setTranslatesAutoresizingMaskIntoConstraints:0];
    currentReadingPositionView = self->_currentReadingPositionView;
  }

  return currentReadingPositionView;
}

- (CGRect)scrubberContainerViewFrame
{
  view = [(BKPictureBookViewController *)self view];
  [view safeAreaInsets];
  v5 = v4;

  isInterfaceRTL = [(BKThumbnailBookViewController *)self isInterfaceRTL];
  view2 = [(BKPictureBookViewController *)self view];
  v8 = view2;
  if (isInterfaceRTL)
  {
    [view2 safeAreaInsets];
    v10 = v9 + 8.0;
  }

  else
  {
    [view2 frame];
    Width = CGRectGetWidth(v21);
    view3 = [(BKPictureBookViewController *)self view];
    [view3 safeAreaInsets];
    v10 = Width - v13 + -40.0 + -8.0;
  }

  v14 = v5 + 8.0;
  view4 = [(BKPictureBookViewController *)self view];
  [view4 frame];
  v16 = CGRectGetHeight(v22) + v14 * -2.0;

  v17 = 40.0;
  v18 = v10;
  v19 = v14;
  v20 = v16;
  result.size.height = v20;
  result.size.width = v17;
  result.origin.y = v19;
  result.origin.x = v18;
  return result;
}

- (void)setupVerticalScrubber
{
  scrubberContainerView = [(BKPictureBookViewController *)self scrubberContainerView];
  v4 = *&CGAffineTransformIdentity.c;
  v68[0] = *&CGAffineTransformIdentity.a;
  v68[1] = v4;
  v68[2] = *&CGAffineTransformIdentity.tx;
  [scrubberContainerView setTransform:v68];

  scrubberContainerView2 = [(BKPictureBookViewController *)self scrubberContainerView];
  superview = [scrubberContainerView2 superview];

  if (!superview)
  {
    view = [(BKPictureBookViewController *)self view];
    scrubberContainerView3 = [(BKPictureBookViewController *)self scrubberContainerView];
    [view addSubview:scrubberContainerView3];

    verticalScrubber = [(BKPictureBookViewController *)self verticalScrubber];
    [scrubberContainerView2 addSubview:verticalScrubber];

    [(BKPictureBookViewController *)self scrubberContainerViewFrame];
    [scrubberContainerView2 setFrame:?];
    [scrubberContainerView2 bounds];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    verticalScrubber2 = [(BKPictureBookViewController *)self verticalScrubber];
    [verticalScrubber2 setFrame:{v11, v13, v15, v17}];

    currentReadingPositionView = [(BKPictureBookViewController *)self currentReadingPositionView];
    [currentReadingPositionView frame];
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v27 = v26;

    LODWORD(scrubberContainerView3) = [(BKThumbnailBookViewController *)self isInterfaceRTL];
    verticalScrubber3 = [(BKPictureBookViewController *)self verticalScrubber];
    [verticalScrubber3 frame];
    if (scrubberContainerView3)
    {
      MaxX = CGRectGetMaxX(*&v29);
      v69.origin.x = v21;
      v69.origin.y = v23;
      v69.size.width = v25;
      v69.size.height = v27;
      v34 = 8.0 - CGRectGetWidth(v69);
      v35 = 0.5;
    }

    else
    {
      MinX = CGRectGetMinX(*&v29);
      v70.origin.x = v21;
      v70.origin.y = v23;
      v70.size.width = v25;
      v70.size.height = v27;
      MaxX = MinX - CGRectGetWidth(v70);
      v71.origin.x = v21;
      v71.origin.y = v23;
      v71.size.width = v25;
      v71.size.height = v27;
      v34 = 8.0 - CGRectGetWidth(v71);
      v35 = -0.5;
    }

    v37 = MaxX + v34 * v35;

    currentReadingPositionView2 = [(BKPictureBookViewController *)self currentReadingPositionView];
    [currentReadingPositionView2 setFrame:{v37, 0.0, v25, v27}];

    currentReadingPositionView3 = [(BKPictureBookViewController *)self currentReadingPositionView];
    [scrubberContainerView2 addSubview:currentReadingPositionView3];
  }

  [(BKPictureBookViewController *)self scrubberContainerViewFrame];
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v47 = v46;
  [scrubberContainerView2 frame];
  v73.origin.x = v48;
  v73.origin.y = v49;
  v73.size.width = v50;
  v73.size.height = v51;
  v72.origin.x = v41;
  v72.origin.y = v43;
  v72.size.width = v45;
  v72.size.height = v47;
  if (!CGRectEqualToRect(v72, v73))
  {
    [scrubberContainerView2 setFrame:{v41, v43, v45, v47}];
    [scrubberContainerView2 bounds];
    v53 = v52;
    v55 = v54;
    v57 = v56;
    v59 = v58;
    verticalScrubber4 = [(BKPictureBookViewController *)self verticalScrubber];
    [verticalScrubber4 setFrame:{v53, v55, v57, v59}];
  }

  verticalScrubber5 = [(BKPictureBookViewController *)self verticalScrubber];
  layer = [verticalScrubber5 layer];
  [layer removeAllAnimations];

  pageCountExcludingUpsell = [(BKBookViewController *)self pageCountExcludingUpsell];
  verticalScrubber6 = [(BKPictureBookViewController *)self verticalScrubber];
  [verticalScrubber6 setPageCount:pageCountExcludingUpsell];

  currentPageNumber = [(BKBookViewController *)self currentPageNumber];
  verticalScrubber7 = [(BKPictureBookViewController *)self verticalScrubber];
  [verticalScrubber7 setPageNumber:currentPageNumber];

  verticalScrubber8 = [(BKPictureBookViewController *)self verticalScrubber];
  [verticalScrubber8 setProgress:1.0];
}

- (BOOL)isVerticalScrubberVisible
{
  if (!self->super._verticalScrubber)
  {
    return 0;
  }

  superview = [(UIView *)self->_scrubberContainerView superview];
  if (superview)
  {
    [(UIView *)self->_scrubberContainerView alpha];
    v5 = v4 != 0.0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)hideVerticalScrubber
{
  if ([(BKPictureBookViewController *)self isVerticalScrubberVisible])
  {

    [(BKPictureBookViewController *)self hideVerticalScrubberAndResetZoomScale:1];
  }
}

- (void)showVerticalScrubber
{
  if (![(BKPictureBookViewController *)self isVerticalScrubberVisible])
  {
    [(BKPictureBookViewController *)self prepareForScrubberAnimation];

    [(BKPictureBookViewController *)self animateVerticalScrubberIn:1 animated:1.1];
  }
}

- (void)hideVerticalScrubberAndResetZoomScale:(BOOL)scale
{
  objc_opt_class();
  pageNavigationViewController = [(BKPictureBookViewController *)self pageNavigationViewController];
  v6 = BUDynamicCast();

  if (v6)
  {
    verticalScrubberAnimator = [(BKPictureBookViewController *)self verticalScrubberAnimator];
    pageNumberHUD = [(BKThumbnailBookViewController *)self pageNumberHUD];
    [pageNumberHUD layoutIfNeeded];

    [(BKThumbnailBookViewController *)self defaultPageNumberHUDWidthConstraintConstant];
    v10 = v9;
    pageNumberHUDWidthConstraint = [(BKThumbnailBookViewController *)self pageNumberHUDWidthConstraint];
    [pageNumberHUDWidthConstraint setConstant:v10];

    pageNumberHUD2 = [(BKThumbnailBookViewController *)self pageNumberHUD];
    [pageNumberHUD2 forceReflowText];

    pageNumberHUD3 = [(BKThumbnailBookViewController *)self pageNumberHUD];
    [pageNumberHUD3 setNeedsLayout];

    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_D954;
    v22[3] = &unk_1E2CD8;
    scaleCopy = scale;
    v14 = v6;
    v23 = v14;
    selfCopy = self;
    [verticalScrubberAnimator addAnimations:v22];
    objc_initWeak(&location, self);
    v15 = _NSConcreteStackBlock;
    v16 = 3221225472;
    v17 = sub_DAB4;
    v18 = &unk_1E2D00;
    objc_copyWeak(&v20, &location);
    v19 = v14;
    [verticalScrubberAnimator addCompletion:&v15];
    [verticalScrubberAnimator startAnimation];

    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
  }
}

- (void)prepareForScrubberAnimation
{
  objc_opt_class();
  pageNavigationViewController = [(BKPictureBookViewController *)self pageNavigationViewController];
  v4 = BUDynamicCast();

  if (v4)
  {
    [(BKBookViewController *)self setControlsVisible:0];
    pictureBookRenderingCacheIfLoaded = [(BKPictureBookViewController *)self pictureBookRenderingCacheIfLoaded];
    [pictureBookRenderingCacheIfLoaded suspend];

    [(BKPictureBookViewController *)self setupVerticalScrubber];
    shouldDisplaySpread = [v4 shouldDisplaySpread];
    verticalScrubber = [(BKPictureBookViewController *)self verticalScrubber];
    [verticalScrubber setShowSpreads:shouldDisplaySpread];

    CGAffineTransformMakeScale(&v14, 0.0, 0.0);
    scrubberContainerView = [(BKPictureBookViewController *)self scrubberContainerView];
    v13 = v14;
    [scrubberContainerView setTransform:&v13];

    pageNumberHUD = [(BKThumbnailBookViewController *)self pageNumberHUD];
    v10 = *&CGAffineTransformIdentity.c;
    *&v13.a = *&CGAffineTransformIdentity.a;
    *&v13.c = v10;
    *&v13.tx = *&CGAffineTransformIdentity.tx;
    [pageNumberHUD setTransform:&v13];

    scrubberContainerView2 = [(BKPictureBookViewController *)self scrubberContainerView];
    [scrubberContainerView2 setAlpha:1.0];

    if (!UIAccessibilityIsVoiceOverRunning() && !UIAccessibilityIsSwitchControlRunning())
    {
      [(BKPictureBookViewController *)self displayVerticalScrubberBackground];
    }

    [(BKPictureBookViewController *)self updateCurrentReadingPositionViewIfNeeded];
    [(UIView *)self->_currentReadingPositionView setAlpha:0.0];
    [v4 setAllowDoubleTapToZoom:0];
    [(BKBookViewController *)self pageViewControllersDidChange];
    pageNumberHUD2 = [(BKThumbnailBookViewController *)self pageNumberHUD];
    [pageNumberHUD2 layoutIfNeeded];
  }
}

- (void)edgePanGestureHandler:(id)handler
{
  handlerCopy = handler;
  if ([handlerCopy state] == &dword_0 + 1)
  {
    [(BKPictureBookViewController *)self prepareForScrubberAnimation];
  }

  else if ([handlerCopy state] == &dword_0 + 2 || objc_msgSend(handlerCopy, "state") == &dword_0 + 3)
  {
    objc_opt_class();
    pageNavigationViewController = [(BKPictureBookViewController *)self pageNavigationViewController];
    v5 = BUDynamicCast();

    if (v5)
    {
      view = [(BKPictureBookViewController *)self view];
      [handlerCopy locationInView:view];
      v8 = v7;

      if (![(BKThumbnailBookViewController *)self isInterfaceRTL])
      {
        view2 = [(BKPictureBookViewController *)self view];
        [view2 bounds];
        v8 = CGRectGetWidth(v16) - v8;
      }

      if (v8 / 112.0 + -0.2 >= 0.0)
      {
        v10 = v8 / 112.0 + -0.2;
      }

      else
      {
        v10 = 0.0;
      }

      v11 = [handlerCopy state] == &dword_0 + 3;
      v12 = v10 < 1.0;
      v13 = 1.1;
      if (!v11 || !v12)
      {
        v13 = v10;
      }

      [(BKPictureBookViewController *)self animateVerticalScrubberIn:v11 & v12 animated:v13];
    }
  }
}

- (void)displayVerticalScrubberBackground
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_E0B8;
  v15 = sub_E0C8;
  objc_opt_class();
  pageNavigationViewController = [(BKPictureBookViewController *)self pageNavigationViewController];
  v16 = BUDynamicCast();

  if (v12[5])
  {
    objc_initWeak(&location, self);
    pictureBookRenderingCache = [(BKPictureBookViewController *)self pictureBookRenderingCache];
    pageOffset = [v12[5] pageOffset];
    book = [(BKBookViewController *)self book];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_E0D0;
    v8[3] = &unk_1E2D28;
    objc_copyWeak(&v9, &location);
    v8[4] = &v11;
    v7 = [pictureBookRenderingCache generateMasterImageForPageNumber:pageOffset + 1 asset:book priority:0 callbackBlock:v8];

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }

  _Block_object_dispose(&v11, 8);
}

- (void)setupBackgroundImageViewWithImage:(id)image
{
  imageCopy = image;
  v5 = [UIView alloc];
  view = [(BKPictureBookViewController *)self view];
  [view bounds];
  v7 = [v5 initWithFrame:?];
  [(BKPictureBookViewController *)self setBackgroundImageView:v7];

  v8 = [UIImageView alloc];
  backgroundImageView = [(BKPictureBookViewController *)self backgroundImageView];
  [backgroundImageView bounds];
  v10 = [v8 initWithFrame:?];

  [v10 setImage:imageCopy];
  CGAffineTransformMakeScale(&v29, 2.0, 2.0);
  v28 = v29;
  [v10 setTransform:&v28];
  v11 = [UIBlurEffect _effectWithBlurRadius:40.0 scale:1.3];
  v12 = [[UIVisualEffectView alloc] initWithEffect:v11];
  backgroundImageView2 = [(BKPictureBookViewController *)self backgroundImageView];
  [backgroundImageView2 bounds];
  [v12 setFrame:?];

  v14 = [UIView alloc];
  backgroundImageView3 = [(BKPictureBookViewController *)self backgroundImageView];
  [backgroundImageView3 bounds];
  v16 = [v14 initWithFrame:?];

  v17 = [UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.5];
  [v16 setBackgroundColor:v17];

  v18 = [CAFilter filterWithType:kCAFilterPlusD];
  layer = [v16 layer];
  [layer setCompositingFilter:v18];

  v20 = [UIView alloc];
  backgroundImageView4 = [(BKPictureBookViewController *)self backgroundImageView];
  [backgroundImageView4 bounds];
  v22 = [v20 initWithFrame:?];

  v23 = [UIColor colorWithDynamicProvider:&stru_1E2D68];
  [v22 setBackgroundColor:v23];

  backgroundImageView5 = [(BKPictureBookViewController *)self backgroundImageView];
  [backgroundImageView5 addSubview:v10];

  backgroundImageView6 = [(BKPictureBookViewController *)self backgroundImageView];
  [backgroundImageView6 addSubview:v12];

  backgroundImageView7 = [(BKPictureBookViewController *)self backgroundImageView];
  [backgroundImageView7 addSubview:v16];

  backgroundImageView8 = [(BKPictureBookViewController *)self backgroundImageView];
  [backgroundImageView8 addSubview:v22];
}

- (void)animateVerticalScrubberIn:(double)in animated:(BOOL)animated
{
  animatedCopy = animated;
  objc_opt_class();
  pageNavigationViewController = [(BKPictureBookViewController *)self pageNavigationViewController];
  v8 = BUDynamicCast();

  if (!v8)
  {
    sub_136A84();
    goto LABEL_30;
  }

  scrollView = [v8 scrollView];
  [scrollView bounds];
  v11 = v10;
  [v8 pageSize];
  v13 = v12;
  if ([v8 shouldDisplaySpread])
  {
    v13 = v13 + v13;
  }

  isInterfaceRTL = [(BKThumbnailBookViewController *)self isInterfaceRTL];
  v15 = (v11 - v13) * 0.5;
  view = [(BKPictureBookViewController *)self view];
  [view safeAreaInsets];
  v18 = v17;
  v20 = v19;

  if (isInterfaceRTL)
  {
    v21 = v20;
  }

  else
  {
    v21 = v18;
  }

  v22 = v15 - v21;
  if (v22 >= 56.0)
  {
    [scrollView zoomScale];
    v23 = fabs(v24 + -1.0) >= 0.00999999978;
  }

  else
  {
    v23 = 1;
  }

  if (in >= 1.0)
  {
    pictureBookRenderingCacheIfLoaded = [(BKPictureBookViewController *)self pictureBookRenderingCacheIfLoaded];
    [pictureBookRenderingCacheIfLoaded resume];

    [(BKPictureBookViewController *)self setSwipeToShowScrubberEnable:0];
    in = 1.0;
    goto LABEL_14;
  }

  if (in <= 1.0)
  {
LABEL_14:
    topToolbar = [(BKThumbnailBookViewController *)self topToolbar];
    [topToolbar alpha];
    if (v27 == 0.0)
    {
      view2 = [(BKPictureBookViewController *)self view];
      [view2 safeAreaInsets];
    }

    else
    {
      view2 = [(BKThumbnailBookViewController *)self topToolbar];
      [view2 frame];
      MaxY = CGRectGetMaxY(v88);
    }

    v30 = MaxY;

    [scrollView contentOffset];
    v32 = v31;
    [scrollView bounds];
    v34 = v32 + v33 * 0.5;
    [scrollView contentSize];
    v36 = v34 / v35;
    [scrollView bounds];
    v38 = v30 * 0.5 + v36 * v37;
    scrubberContainerView = [(BKPictureBookViewController *)self scrubberContainerView];
    [scrubberContainerView center];
    v41 = v40 - v38;

    v67 = *&CGAffineTransformIdentity.c;
    v68 = *&CGAffineTransformIdentity.a;
    *&v87.a = *&CGAffineTransformIdentity.a;
    *&v87.c = v67;
    v66 = *&CGAffineTransformIdentity.tx;
    *&v87.tx = v66;
    if ([(BKThumbnailBookViewController *)self isInterfaceRTL])
    {
      scrubberContainerView2 = [(BKPictureBookViewController *)self scrubberContainerView];
      [scrubberContainerView2 center];
      v44 = -v43;
    }

    else
    {
      scrubberContainerView2 = [(BKPictureBookViewController *)self view];
      [scrubberContainerView2 frame];
      Width = CGRectGetWidth(v89);
      scrubberContainerView3 = [(BKPictureBookViewController *)self scrubberContainerView];
      [scrubberContainerView3 center];
      v44 = Width - v47;
    }

    *&v86.a = v68;
    *&v86.c = v67;
    *&v86.tx = v66;
    CGAffineTransformTranslate(&v87, &v86, (1.0 - in) * v44, -((1.0 - in) * v41));
    v85 = v87;
    CGAffineTransformScale(&v86, &v85, in, in);
    v87 = v86;
    memset(&v86.c, 0, 32);
    if (isInterfaceRTL)
    {
      v48 = 56.0;
    }

    else
    {
      v48 = -56.0;
    }

    *&v85.a = v68;
    *&v85.c = v67;
    *&v85.tx = v66;
    *&v86.a = 0uLL;
    CGAffineTransformTranslate(&v86, &v85, v48 * in, 0.0);
    view3 = [(BKPictureBookViewController *)self view];
    [view3 frame];
    v50 = 56.0 - v22;
    v51 = CGRectGetWidth(v90) - (56.0 - v22);

    view4 = [v8 view];
    [view4 frame];
    v53 = v51 / CGRectGetWidth(v91);

    *&v84.a = v68;
    *&v84.c = v67;
    *&v84.tx = v66;
    memset(&v85, 0, sizeof(v85));
    CGAffineTransformTranslate(&v85, &v84, v50 * in, 0.0);
    [(BKThumbnailBookViewController *)self defaultPageNumberHUDWidthConstraintConstant];
    v55 = v54 + in * -56.0;
    v73[0] = _NSConcreteStackBlock;
    v73[1] = 3221225472;
    v73[2] = sub_EB9C;
    v73[3] = &unk_1E2D90;
    v82 = v23;
    v56 = v8;
    v77 = v85;
    v79 = v87;
    v81 = v86;
    v83 = isInterfaceRTL;
    v74 = v56;
    selfCopy = self;
    v76 = 1.0 - (1.0 - v53) * in;
    v78 = v55;
    inCopy = in;
    v57 = objc_retainBlock(v73);
    objc_initWeak(&v84, self);
    v71[0] = _NSConcreteStackBlock;
    v71[1] = 3221225472;
    v71[2] = sub_ECFC;
    v71[3] = &unk_1E2DB8;
    objc_copyWeak(v72, &v84);
    v71[4] = self;
    v72[1] = *&in;
    v72[2] = *&v55;
    v58 = objc_retainBlock(v71);
    if (animatedCopy)
    {
      verticalScrubberAnimator = [(BKPictureBookViewController *)self verticalScrubberAnimator];
      [verticalScrubberAnimator addAnimations:v57];

      verticalScrubberAnimator2 = [(BKPictureBookViewController *)self verticalScrubberAnimator];
      [verticalScrubberAnimator2 addCompletion:v58];

      verticalScrubberAnimator3 = [(BKPictureBookViewController *)self verticalScrubberAnimator];
      v69[0] = _NSConcreteStackBlock;
      v69[1] = 3221225472;
      v69[2] = sub_EDA8;
      v69[3] = &unk_1E2DE0;
      objc_copyWeak(&v70, &v84);
      [verticalScrubberAnimator3 addCompletion:v69];

      verticalScrubberAnimator4 = [(BKPictureBookViewController *)self verticalScrubberAnimator];
      [verticalScrubberAnimator4 startAnimation];

      objc_destroyWeak(&v70);
    }

    else
    {
      (v57[2])(v57);
      (v58[2])(v58, 0);
    }

    verticalScrubberAnimator5 = [(BKPictureBookViewController *)self verticalScrubberAnimator];
    state = [verticalScrubberAnimator5 state];

    if (state != &dword_0 + 1)
    {
      verticalScrubberAnimator6 = [(BKPictureBookViewController *)self verticalScrubberAnimator];
      [verticalScrubberAnimator6 startAnimation];
    }

    objc_destroyWeak(v72);
    objc_destroyWeak(&v84);
  }

LABEL_30:
}

- (UIViewPropertyAnimator)verticalScrubberAnimator
{
  verticalScrubberAnimator = self->_verticalScrubberAnimator;
  if (!verticalScrubberAnimator)
  {
    v4 = [[UISpringTimingParameters alloc] initWithMass:1.0 stiffness:230.0 damping:25.0 initialVelocity:{0.0, 0.0}];
    v5 = [UIViewPropertyAnimator alloc];
    [v4 settlingDuration];
    v6 = [v5 initWithDuration:v4 timingParameters:?];
    v7 = self->_verticalScrubberAnimator;
    self->_verticalScrubberAnimator = v6;

    verticalScrubberAnimator = self->_verticalScrubberAnimator;
  }

  return verticalScrubberAnimator;
}

- (void)updateCurrentReadingPositionViewIfNeeded
{
  if ([(BKPictureBookViewController *)self isVerticalScrubberVisible])
  {
    verticalScrubber = [(BKPictureBookViewController *)self verticalScrubber];
    [verticalScrubber thumbRect];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;

    scrubberContainerView = [(BKPictureBookViewController *)self scrubberContainerView];
    v22.origin.x = v5;
    v22.origin.y = v7;
    v22.size.width = v9;
    v22.size.height = v11;
    MidX = CGRectGetMidX(v22);
    v23.origin.x = v5;
    v23.origin.y = v7;
    v23.size.width = v9;
    v23.size.height = v11;
    MidY = CGRectGetMidY(v23);
    verticalScrubber2 = [(BKPictureBookViewController *)self verticalScrubber];
    [scrubberContainerView convertPoint:verticalScrubber2 fromView:{MidX, MidY}];
    v17 = v16;

    [(UIView *)self->_currentReadingPositionView frame];
    [(UIView *)self->_currentReadingPositionView setFrame:v24.origin.x, v17 - floor(CGRectGetHeight(v24) * 0.5), v24.size.width, v24.size.height];
    v25.origin.x = v5;
    v25.origin.y = v7;
    v25.size.width = v9;
    v25.size.height = v11;
    v18 = floor(CGRectGetMidX(v25));
    v26.origin.x = v5;
    v26.origin.y = v7;
    v26.size.width = v9;
    v26.size.height = v11;
    v19 = floor(CGRectGetMidY(v26));
    verticalScrubber = self->super._verticalScrubber;

    [(BKThumbnailScrubber *)verticalScrubber setGravitationalPoint:v18, v19];
  }
}

- (void)viewDidLoad
{
  v11.receiver = self;
  v11.super_class = BKPictureBookViewController;
  [(BKThumbnailBookViewController *)&v11 viewDidLoad];
  v3 = +[UIColor bc_booksBackground];
  topToolbar = [(BKThumbnailBookViewController *)self topToolbar];
  [topToolbar setBarTintColor:v3];

  v12 = NSForegroundColorAttributeName;
  v5 = +[UIColor bc_booksLabelColor];
  v13 = v5;
  v6 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  topToolbar2 = [(BKThumbnailBookViewController *)self topToolbar];
  [topToolbar2 setTitleTextAttributes:v6];

  v8 = +[UIColor bc_booksLabelColor];
  topToolbar3 = [(BKThumbnailBookViewController *)self topToolbar];
  [topToolbar3 setTintColor:v8];

  pageNumberHUD = [(BKThumbnailBookViewController *)self pageNumberHUD];
  [pageNumberHUD setDelegate:self];

  [(BKPictureBookViewController *)self updatePageNumberHUD];
}

- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  windowCopy = window;
  v22.receiver = self;
  v22.super_class = BKPictureBookViewController;
  [(BKThumbnailBookViewController *)&v22 viewDidMoveToWindow:windowCopy shouldAppearOrDisappear:disappearCopy];
  if (windowCopy && self->super._imageCache)
  {
    _thumbnailBookViewConfiguration = [(BKPictureBookViewController *)self _thumbnailBookViewConfiguration];
    book = [(BKBookViewController *)self book];
    book2 = [(BKBookViewController *)self book];
    firstDocument = [book2 firstDocument];
    [firstDocument fixedLayoutSize];
    v12 = v11;
    v14 = v13;
    hidesSpine = [book hidesSpine];
    [windowCopy bounds];
    v20 = [BKPictureBookViewGeometry geometryWithContentSize:_thumbnailBookViewConfiguration configuration:hidesSpine ^ 1 drawsSpine:v12 containerBounds:v14, v16, v17, v18, v19];

    pictureBookRenderingCache = [(BKPictureBookViewController *)self pictureBookRenderingCache];
    [pictureBookRenderingCache setLayoutGeometry:v20];
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = BKPictureBookViewController;
  [(BKBookViewController *)&v4 viewDidAppear:appear];
  [(BKPictureBookViewController *)self generateSnapshotsForCurrentPages];
  [(BKPictureBookViewController *)self generateRenderingPiggyBackForAllPages];
  [(BKPictureBookViewController *)self _prewarmThumbnailsForVerticalScrubber];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  [(BKPictureBookViewController *)self _cancelCachingAndCleanupSnapshotWebViews];
  v5.receiver = self;
  v5.super_class = BKPictureBookViewController;
  [(BKThumbnailBookViewController *)&v5 viewWillDisappear:disappearCopy];
}

- (void)_cancelCachingAndCleanupSnapshotWebViews
{
  objc_opt_class();
  v3 = BUDynamicCast();
  renderingPiggyBack = [v3 renderingPiggyBack];
  [renderingPiggyBack invalidate];

  imageCache = self->super._imageCache;
  thumbnailContext = self->_thumbnailContext;

  [(IMThumbnailRenderingCache *)imageCache cancelRenderingCacheOperationsForTarget:0 context:thumbnailContext];
}

- (id)pictureBookRenderingCache
{
  if (!self->super._imageCache)
  {
    book = [(BKBookViewController *)self book];

    if (book)
    {
      _thumbnailBookViewConfiguration = [(BKPictureBookViewController *)self _thumbnailBookViewConfiguration];
      book2 = [(BKBookViewController *)self book];
      v6 = [AEPictureBookRenderingCache alloc];
      databaseKey = [book2 databaseKey];
      v8 = [(AEPictureBookRenderingCache *)v6 initWithIdentifier:databaseKey configuration:_thumbnailBookViewConfiguration webViewBuilder:self];

      [(AEPictureBookRenderingCache *)v8 setUpsellPageNumber:[(BKBookViewController *)self upsellPageNumber]];
      objc_storeStrong(&self->super._imageCache, v8);
      v9 = [BKPictureBookReadingStatisticsCollector readingStatisticsCollectorWithAssetViewController:self];
      book3 = [(BKBookViewController *)self book];
      [v9 setupWithBookInfo:book3];

      [(AEPictureBookRenderingCache *)v8 setRenderingPiggyBack:v9];
      persistentCachePath = [(AEPictureBookRenderingCache *)v8 persistentCachePath];
      book4 = [(BKBookViewController *)self book];
      persistentCachePath2 = [book4 persistentCachePath];
      v14 = [persistentCachePath isEqualToString:persistentCachePath2];

      if ((v14 & 1) == 0)
      {
        book5 = [(BKBookViewController *)self book];
        [book5 resetPersistentCache];

        book6 = [(BKBookViewController *)self book];
        persistentCachePath3 = [(AEPictureBookRenderingCache *)v8 persistentCachePath];
        [book6 setPersistentCachePath:persistentCachePath3];

        [(NSManagedObjectContext *)self->super.super._bookMoc save:0];
      }
    }
  }

  [(BKPictureBookViewController *)self idealCacheSize];
  [(IMThumbnailRenderingCache *)self->super._imageCache setPrimaryImageSize:?];
  imageCache = self->super._imageCache;

  return imageCache;
}

- (BOOL)_bookRenditionFlowIsScrolled
{
  book = [(BKBookViewController *)self book];
  fixedLayoutFlow = [book fixedLayoutFlow];
  if ([fixedLayoutFlow isEqualToString:@"scrolled-continuous"])
  {
    v5 = 1;
  }

  else
  {
    book2 = [(BKBookViewController *)self book];
    fixedLayoutFlow2 = [book2 fixedLayoutFlow];
    v5 = [fixedLayoutFlow2 isEqualToString:@"scrolled-doc"];
  }

  return v5;
}

- (BOOL)_bookRenditionFlowIsScrolledContinuous
{
  book = [(BKBookViewController *)self book];
  fixedLayoutFlow = [book fixedLayoutFlow];
  v4 = [fixedLayoutFlow isEqualToString:@"scrolled-continuous"];

  return v4;
}

- (unint64_t)defaultLayoutToUse
{
  if ([(BKPictureBookViewController *)self _bookRenditionFlowIsScrolled])
  {
    book = [(BKBookViewController *)self book];
    v4 = [(BKThumbnailBookViewController *)self scrollLayoutForBook:book];

    return v4;
  }

  else
  {

    return [(BKBookViewController *)self lastLayoutUsed];
  }
}

- (BOOL)showSpreads
{
  book = [(BKBookViewController *)self book];
  fixedLayoutSpread = [book fixedLayoutSpread];
  v4 = [fixedLayoutSpread isEqualToString:@"none"];

  return v4 ^ 1;
}

- (id)pageNavigationViewController
{
  pageNavigationViewController = self->super.super._pageNavigationViewController;
  if (!pageNavigationViewController)
  {
    if ([(BKBookViewController *)self layout]== &dword_0 + 1 || !+[(BKThumbnailBookViewController *)BKPictureBookViewController])
    {
      if ([(BKPictureBookViewController *)self showSpreads])
      {
        v8 = objc_alloc_init(BKPictureBookNavigationController);
        [(BKPageNavigationViewController *)v8 setDelegate:self];
        [(BKPageNavigationViewController *)v8 setPageCount:[(BKBookViewController *)self pageCountIncludingUpsell]];
        [(BKPictureBookNavigationController *)v8 setDrawsSpine:1];
        book = [(BKBookViewController *)self book];
        firstDocument = [book firstDocument];
        [firstDocument fixedLayoutSize];
        [(BKPictureBookNavigationController *)v8 setContentSize:?];

        book2 = [(BKBookViewController *)self book];
        -[BKPictureBookNavigationController setDrawsSpine:](v8, "setDrawsSpine:", [book2 hidesSpine] ^ 1);

        book3 = [(BKBookViewController *)self book];
        -[BKPictureBookNavigationController setOpenToSpread:](v8, "setOpenToSpread:", [book3 openToSpread]);

        [(BKViewController *)v8 setLayoutDirection:[(BKViewController *)self layoutDirection]];
      }

      else
      {
        v8 = objc_alloc_init(BKPageScrollerViewController);
        [(BKPictureBookNavigationController *)v8 setThumbnailingDelegate:self];
        [(BKPictureBookNavigationController *)v8 setMaintainZoomScale:1];
        [(BKPageNavigationViewController *)v8 setDelegate:self];
        [(BKPictureBookNavigationController *)v8 setImageResizerDelegate:self];
        [(BKPageNavigationViewController *)v8 setPageCount:[(BKBookViewController *)self pageCountIncludingUpsell]];
        [(BKViewController *)v8 setLayoutDirection:[(BKViewController *)self layoutDirection]];
        [(BKPictureBookNavigationController *)v8 setMaxZoomScale:8.0];
        [(BKPictureBookNavigationController *)v8 setResizeViewsWhenZoomed:1];
        [(BKPictureBookNavigationController *)v8 setMaxResizeScale:4.0];
      }

      v13 = self->super.super._pageNavigationViewController;
      self->super.super._pageNavigationViewController = &v8->super;
    }

    else
    {
      v4 = objc_alloc_init(BKPictureBookVerticalNavigationController);
      [(BKPictureBookVerticalNavigationController *)v4 setDelegate:self];
      [(BKPictureBookVerticalNavigationController *)v4 setPageCount:[(BKBookViewController *)self pageCountIncludingUpsell]];
      book4 = [(BKBookViewController *)self book];
      [(BKPictureBookVerticalNavigationController *)v4 setBook:book4];

      [(BKViewController *)v4 setLayoutDirection:[(BKViewController *)self layoutDirection]];
      v6 = self->super.super._pageNavigationViewController;
      self->super.super._pageNavigationViewController = &v4->super;
      v7 = v4;

      [(BKPictureBookVerticalNavigationController *)v7 loadViewIfNeeded];
      [(BKPictureBookViewController *)self _prewarmThumbnailsForVerticalScrubber];
    }

    [(BKPictureBookViewController *)self addChildViewController:self->super.super._pageNavigationViewController];
    v14 = [NSNumber numberWithUnsignedInteger:[(BKBookViewController *)self layout]];
    [(BKPictureBookViewController *)self _updateWebProcessPluginObject:v14 withParameter:@"BEWebProcessPluginLayoutModeParameterKey"];

    pageNavigationViewController = self->super.super._pageNavigationViewController;
  }

  return pageNavigationViewController;
}

- (void)setLayout:(unint64_t)layout
{
  v31.receiver = self;
  v31.super_class = BKPictureBookViewController;
  [(BKThumbnailBookViewController *)&v31 setLayout:layout];
  [(BKPictureBookViewController *)self hideVerticalScrubber];
  [(BKThumbnailBookViewController *)self updateBottomToolbar:1];
  [(BKPictureBookViewController *)self updatePageNumberHUD];
  [(BKBookViewController *)self clearSearchResult];
  view = [(BKPageNavigationViewController *)self->super.super._pageNavigationViewController view];
  superview = [view superview];

  view2 = [(BKPageNavigationViewController *)self->super.super._pageNavigationViewController view];
  [view2 removeFromSuperview];

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  childViewControllers = [(BKPageNavigationViewController *)self->super.super._pageNavigationViewController childViewControllers];
  v8 = [childViewControllers countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v28;
    do
    {
      v11 = 0;
      do
      {
        if (*v28 != v10)
        {
          objc_enumerationMutation(childViewControllers);
        }

        [*(*(&v27 + 1) + 8 * v11) removeFromParentViewController];
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [childViewControllers countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v9);
  }

  [(BKPageNavigationViewController *)self->super.super._pageNavigationViewController removeFromParentViewController];
  pageNavigationViewController = self->super.super._pageNavigationViewController;
  self->super.super._pageNavigationViewController = 0;

  pageNavigationViewController = [(BKPictureBookViewController *)self pageNavigationViewController];
  view3 = [(BKPictureBookViewController *)self view];
  [view3 bounds];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  view4 = [pageNavigationViewController view];
  [view4 setFrame:{v16, v18, v20, v22}];

  view5 = [pageNavigationViewController view];
  [superview insertSubview:view5 aboveSubview:self->super._backgroundView];

  v25 = [NSNumber numberWithUnsignedInteger:[(BKBookViewController *)self layout]];
  [(BKPictureBookViewController *)self _updateWebProcessPluginObject:v25 withParameter:@"BEWebProcessPluginLayoutModeParameterKey"];

  pageNumberHUD = [(BKThumbnailBookViewController *)self pageNumberHUD];
  [pageNumberHUD setNeedsUpdateConstraints];
}

- (void)updatePageNumberHUD
{
  layout = self->super.super._layout;
  pageNumberHUD = [(BKThumbnailBookViewController *)self pageNumberHUD];
  v5 = pageNumberHUD;
  if (layout == 2)
  {
    v6 = @"sidebar.trailing";
  }

  else
  {
    v6 = 0;
  }

  [pageNumberHUD setIconSymbol:v6];

  pageNumberHUD2 = [(BKThumbnailBookViewController *)self pageNumberHUD];
  [pageNumberHUD2 setUserInteractionEnabled:layout == 2];
}

- (BOOL)savedLocationIsEndOfBook
{
  book = [(BKBookViewController *)self book];
  linearDocuments = [book linearDocuments];

  v5 = [linearDocuments count];
  if ([(BKPictureBookViewController *)self showSpreads])
  {
    if (v5 < 3)
    {
LABEL_7:
      v13 = 0;
      goto LABEL_8;
    }

    v6 = ~v5 | 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v6 = -1;
  }

  v7 = [linearDocuments objectAtIndex:&v5[v6]];
  if (!v7)
  {
    goto LABEL_7;
  }

  v8 = v7;
  book2 = [(BKBookViewController *)self book];
  readingLocation = [book2 readingLocation];
  ordinal = [readingLocation ordinal];
  documentOrdinal = [v8 documentOrdinal];
  v13 = ordinal >= [documentOrdinal intValue];

LABEL_8:
  return v13;
}

- (void)appearanceViewController:(id)controller didChangeLayout:(unint64_t)layout
{
  controllerCopy = controller;
  [(BKPictureBookViewController *)self _cancelCachingAndCleanupSnapshotWebViews];
  v7.receiver = self;
  v7.super_class = BKPictureBookViewController;
  [(BKThumbnailBookViewController *)&v7 appearanceViewController:controllerCopy didChangeLayout:layout];
}

- (void)setLocation:(id)location
{
  locationCopy = location;
  v5 = _AECaptureLocationLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [NSString stringWithUTF8String:"[BKPictureBookViewController setLocation:]"];
    *buf = 138412546;
    v33 = v6;
    v34 = 2112;
    v35 = locationCopy;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "#PictureBookVC %@: %@", buf, 0x16u);
  }

  v31.receiver = self;
  v31.super_class = BKPictureBookViewController;
  [(BKBookViewController *)&v31 setLocation:locationCopy];
  viewIfLoaded = [(BKPictureBookViewController *)self viewIfLoaded];
  window = [viewIfLoaded window];
  windowScene = [window windowScene];
  activationState = [windowScene activationState];

  if (activationState)
  {
    v11 = _AEBookPluginsLifeCycleLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      book = [(BKBookViewController *)self book];
      assetLogID = [book assetLogID];
      *buf = 138543362;
      v33 = assetLogID;
      v14 = "Setting Location when scene state is not foregroundActive. Bailing out. logID:%{public}@";
      v15 = v11;
      v16 = 12;
LABEL_6:
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, v14, buf, v16);
    }
  }

  else
  {
    viewIfLoaded2 = [(BKPictureBookViewController *)self viewIfLoaded];

    if (!viewIfLoaded2)
    {
      v11 = _AEBookPluginsLifeCycleLog();
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_18;
      }

      book = [(BKBookViewController *)self book];
      assetLogID = [book assetLogID];
      *buf = 138543618;
      v33 = locationCopy;
      v34 = 2114;
      v35 = assetLogID;
      v14 = "Bailing out on attempt to set location when our view is not loaded. Location:%{public}@ logID:%{public}@ ";
      v15 = v11;
      v16 = 22;
      goto LABEL_6;
    }

    objc_opt_class();
    location = [(BKBookViewController *)self location];
    v11 = BUDynamicCast();

    v19 = _AECaptureLocationLog();
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
    if (v11)
    {
      if (v20)
      {
        v21 = [NSNumber numberWithUnsignedInteger:[v11 ordinal]+ [v11 pageOffset]];
        *buf = 138412290;
        v33 = v21;
        _os_log_impl(&dword_0, v19, OS_LOG_TYPE_DEFAULT, "#PictureBookVC 1 Setting offset: %@", buf, 0xCu);
      }

      pageNavigationViewController = [(BKPictureBookViewController *)self pageNavigationViewController];
      ordinal = [v11 ordinal];
      v24 = &ordinal[[v11 pageOffset]];
      pageNavigationViewController2 = pageNavigationViewController;
    }

    else
    {
      if (v20)
      {
        *buf = 0;
        _os_log_impl(&dword_0, v19, OS_LOG_TYPE_DEFAULT, "#PictureBookVC 2 Setting Offset 0", buf, 2u);
      }

      pageNavigationViewController2 = [(BKPictureBookViewController *)self pageNavigationViewController];
      pageNavigationViewController = pageNavigationViewController2;
      v24 = 0;
    }

    [pageNavigationViewController2 setPageOffset:v24];

    [(BKPictureBookViewController *)self updateCurrentReadingPositionViewIfNeeded];
    currentPages = [(BKPictureBookViewController *)self currentPages];
    v28 = [NSNumber numberWithUnsignedInteger:v27];
    [(BKPictureBookViewController *)self _updateWebProcessPluginObject:v28 withParameter:@"BEWebProcessPluginCurrentPageLengthParameterKey"];

    v29 = [NSNumber numberWithUnsignedInteger:currentPages];
    [(BKPictureBookViewController *)self _updateWebProcessPluginObject:v29 withParameter:@"BEWebProcessPluginCurrentPageLocationParameterKey"];

    v30 = [NSNumber numberWithInteger:[(BKBookViewController *)self pageCountIncludingUpsell]];
    [(BKPictureBookViewController *)self _updateWebProcessPluginObject:v30 withParameter:@"BEWebProcessPluginPageCountParameterKey"];
  }

LABEL_18:
}

- (void)restoreSavedLocation
{
  v3 = _AECaptureLocationLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "#PictureBookVC restoreSavedLocation", buf, 2u);
  }

  v4.receiver = self;
  v4.super_class = BKPictureBookViewController;
  [(BKBookViewController *)&v4 restoreSavedLocation];
  if ([(BKPictureBookViewController *)self savedLocationIsEndOfBook])
  {
    [(BKPictureBookViewController *)self setLocation:0];
  }
}

- (void)didChangeLocationClosing:(BOOL)closing suspending:(BOOL)suspending
{
  v5.receiver = self;
  v5.super_class = BKPictureBookViewController;
  [(BKThumbnailBookViewController *)&v5 didChangeLocationClosing:closing suspending:suspending];
  if ([(BKPictureBookViewController *)self isVisible])
  {
    [(BKPictureBookViewController *)self generateSnapshotsForCurrentPages];
  }
}

- (id)pageLocationForPageNumber:(int64_t)number
{
  v11.receiver = self;
  v11.super_class = BKPictureBookViewController;
  v4 = [(BKBookViewController *)&v11 pageLocationForPageNumber:?];
  v5 = v4;
  if (number != 0x7FFFFFFFFFFFFFFFLL && !v4)
  {
    v6 = [BKPageLocation alloc];
    if (number)
    {
      v7 = number - 1;
    }

    else
    {
      v7 = 0;
    }

    v5 = [(BKPageLocation *)v6 initWithOrdinal:v7 andOffset:0];
  }

  v8 = _AECaptureLocationLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [NSNumber numberWithInteger:number];
    *buf = 138412546;
    v13 = v5;
    v14 = 2112;
    v15 = v9;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "#PictureBookVC returning pageLocation:%@ for pageNumber:%@", buf, 0x16u);
  }

  return v5;
}

- (void)setPageCountIncludingUpsell:(int64_t)upsell
{
  v7.receiver = self;
  v7.super_class = BKPictureBookViewController;
  [(BKBookViewController *)&v7 setPageCountIncludingUpsell:?];
  pictureBookRenderingCacheIfLoaded = [(BKPictureBookViewController *)self pictureBookRenderingCacheIfLoaded];
  [pictureBookRenderingCacheIfLoaded setUpsellPageNumber:{-[BKBookViewController upsellPageNumber](self, "upsellPageNumber")}];

  v6 = [NSNumber numberWithInteger:upsell];
  [(BKPictureBookViewController *)self _updateWebProcessPluginObject:v6 withParameter:@"BEWebProcessPluginPageCountParameterKey"];
}

- (int64_t)calculatePageCountExcludingUpsell
{
  v7.receiver = self;
  v7.super_class = BKPictureBookViewController;
  calculatePageCountExcludingUpsell = [(BKBookViewController *)&v7 calculatePageCountExcludingUpsell];
  if (calculatePageCountExcludingUpsell == 0x7FFFFFFFFFFFFFFFLL)
  {
    book = [(BKBookViewController *)self book];

    if (book)
    {
      book2 = [(BKBookViewController *)self book];
      calculatePageCountExcludingUpsell = [book2 linearDocumentCount];
    }

    else
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  return calculatePageCountExcludingUpsell;
}

- (void)setBook:(id)book
{
  v9.receiver = self;
  v9.super_class = BKPictureBookViewController;
  [(BKBookViewController *)&v9 setBook:?];
  if (book)
  {
    [(BKBookViewController *)self createPaginationControllerIfNeeded:1];
  }

  if (![(BKPictureBookViewController *)self showSpreads])
  {
    paginationController = [(BKBookViewController *)self paginationController];
    layoutQueue = [paginationController layoutQueue];
    [layoutQueue waitUntilAllOperationsAreFinished];

    paginationController2 = [(BKBookViewController *)self paginationController];
    resultsQueue = [paginationController2 resultsQueue];
    [resultsQueue waitUntilAllOperationsAreFinished];
  }
}

- (void)transitionDidFinish:(BOOL)finish
{
  finishCopy = finish;
  v7.receiver = self;
  v7.super_class = BKPictureBookViewController;
  [(BKBookViewController *)&v7 transitionDidFinish:?];
  objc_opt_class();
  pageNavigationViewController = [(BKPictureBookViewController *)self pageNavigationViewController];
  v6 = BUDynamicCast();

  [v6 transitionDidFinish:finishCopy];
}

- (void)jumpToLocation:(id)location animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  locationCopy = location;
  completionCopy = completion;
  paginationController = [(BKBookViewController *)self paginationController];

  if (paginationController)
  {
    [(BKBookViewController *)self clearSelection];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = locationCopy;
      ordinal = [v11 ordinal];
      pageOffset = [v11 pageOffset];

      v14 = &pageOffset[ordinal + 1];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v14 = [locationCopy ordinal] + 1;
      }

      else
      {
        paginationController2 = [(BKBookViewController *)self paginationController];
        v14 = [paginationController2 pageNumberForLocation:locationCopy];
      }
    }

    if (v14 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v14 = (&dword_0 + 1);
    }

    v16 = _AECaptureLocationLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [NSNumber numberWithInteger:v14];
      v20 = 138412546;
      v21 = locationCopy;
      v22 = 2112;
      v23 = v17;
      _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "#PictureBookVC jumpToLocation:%@ pageNumber:%@", &v20, 0x16u);
    }

    [(BKThumbnailBookViewController *)self turnToPageNumber:v14 animated:animatedCopy];
  }

  v18 = objc_retainBlock(completionCopy);
  v19 = v18;
  if (v18)
  {
    (*(v18 + 2))(v18);
  }
}

- (void)contentViewReady:(id)ready
{
  v3.receiver = self;
  v3.super_class = BKPictureBookViewController;
  [(BKThumbnailBookViewController *)&v3 contentViewReady:ready];
}

- (id)_stylesheetSetForSnapshot:(id)snapshot
{
  v3 = +[ContentViewStyleManager getPictureBookUserStyleSheetWithLegacyBook:](ContentViewStyleManager, "getPictureBookUserStyleSheetWithLegacyBook:", [snapshot shouldDisableOptimizeSpeed] ^ 1);
  v4 = [BEWebViewFactoryStylesheetSet alloc];
  v8 = v3;
  v5 = [NSArray arrayWithObjects:&v8 count:1];
  v6 = [v4 initWithMainframeOnlyStylesheets:v5];

  return v6;
}

- (void)finishedSnapshottingForCache:(id)cache
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10CE0;
  v6[3] = &unk_1E2BD0;
  v6[4] = self;
  v3 = objc_retainBlock(v6);
  if (v3)
  {
    if (+[NSThread isMainThread])
    {
      (v3[2])(v3);
    }

    else
    {
      v4[0] = _NSConcreteStackBlock;
      v4[1] = 3221225472;
      v4[2] = sub_10CE8;
      v4[3] = &unk_1E2E08;
      v5 = v3;
      dispatch_async(&_dispatch_main_q, v4);
    }
  }
}

- (id)webViewForSnapshotting:(id)snapshotting size:(CGSize)size
{
  height = size.height;
  width = size.width;
  snapshottingCopy = snapshotting;
  WeakRetained = objc_loadWeakRetained(&self->_snapshotWebView);
  if (WeakRetained)
  {
    v9 = WeakRetained;
    [WeakRetained frame];
    v24.origin.x = 0.0;
    v24.origin.y = 0.0;
    v24.size.width = width;
    v24.size.height = height;
    if (!CGRectEqualToRect(v23, v24))
    {
      [v9 setFrame:{0.0, 0.0, width, height}];
    }

    [snapshottingCopy fixedLayoutSize];
    [BEWebViewFactory updateFixedLayoutWebView:v9 fixedLayoutSize:?];
  }

  else
  {
    bookLanguage = [snapshottingCopy bookLanguage];
    v11 = [BEContentCleanupJSOptions fixedLayoutOptionsWithLanguage:bookLanguage];

    v12 = [BECFIUtilitiesJSOptions cfiUtilitiesJSOptionsForBookInfoSnapshot:snapshottingCopy ordinal:0];
    height = [BEWebViewFactoryPaginationOptions paginationOptionsForBookInfoSnapshot:snapshottingCopy withConfiguration:0 contentLayoutSize:width, height];
    [snapshottingCopy fixedLayoutSize];
    v15 = v14;
    v17 = v16;
    cacheItem = [snapshottingCopy cacheItem];
    v19 = [(BKPictureBookViewController *)self _stylesheetSetForSnapshot:snapshottingCopy];
    v9 = [BEWebViewFactory viewConfiguredForPictureBooks:cacheItem fixedLayoutSize:height protocolCacheItem:v11 paginationOptions:v12 cleanupOptions:v19 cfiOptions:0.0 stylesheetSet:0.0, width, height, v15, v17];

    [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v9 setAutoresizingMask:0];
    view = [(BKPictureBookViewController *)self view];
    [view insertSubview:v9 atIndex:0];

    objc_storeWeak(&self->_snapshotWebView, v9);
  }

  return v9;
}

- (void)setControlsVisible:(BOOL)visible animated:(BOOL)animated
{
  animatedCopy = animated;
  visibleCopy = visible;
  if (visible)
  {
    [(BKPictureBookViewController *)self hideVerticalScrubber];
  }

  v7.receiver = self;
  v7.super_class = BKPictureBookViewController;
  [(BKBookViewController *)&v7 setControlsVisible:visibleCopy animated:animatedCopy];
}

- (void)bkaxToggleControls:(id)controls
{
  controlsCopy = controls;
  [(BKBookViewController *)self setBkaxAccessibilityUserIsRequestingControlsVisibilityToggle:1];
  [(BKThumbnailBookViewController *)self toggleControls:controlsCopy];

  [(BKBookViewController *)self setBkaxAccessibilityUserIsRequestingControlsVisibilityToggle:0];
  v5 = dispatch_time(0, 500000000);

  dispatch_after(v5, &_dispatch_main_q, &stru_1E2E28);
}

- (void)presentAppearanceViewControllerFromItem:(id)item
{
  itemCopy = item;
  if ([(BKPictureBookViewController *)self isVerticalScrubberVisible])
  {
    [(BKPictureBookViewController *)self hideVerticalScrubber];
  }

  v5.receiver = self;
  v5.super_class = BKPictureBookViewController;
  [(BKBookViewController *)&v5 presentAppearanceViewControllerFromItem:itemCopy];
}

- (void)setSection:(int)section animated:(BOOL)animated adjustScrollToReveal:(BOOL)reveal
{
  revealCopy = reveal;
  animatedCopy = animated;
  v7 = *&section;
  if (self->super.super._section != section)
  {
    [(BKPictureBookViewController *)self _cancelCachingAndCleanupSnapshotWebViews];
    if (v7 == 1)
    {
      [(BKPictureBookViewController *)self hideVerticalScrubber];
    }
  }

  v9.receiver = self;
  v9.super_class = BKPictureBookViewController;
  [(BKThumbnailBookViewController *)&v9 setSection:v7 animated:animatedCopy adjustScrollToReveal:revealCopy];
}

- (BOOL)snapshotDuringLiveResize
{
  if (![(BKBookViewController *)self section])
  {
    return 1;
  }

  if ([(BKBookViewController *)self section]!= 1)
  {
    return 0;
  }

  directoryController = [(BKThumbnailBookViewController *)self directoryController];
  v4 = [directoryController selectedIndex] != &dword_0 + 1;

  return v4;
}

- (BOOL)blurSnapshotDuringLiveResize
{
  if ([(BKBookViewController *)self section]!= 1)
  {
    return 0;
  }

  directoryController = [(BKThumbnailBookViewController *)self directoryController];
  v4 = [directoryController selectedIndex] != &dword_0 + 1;

  return v4;
}

- (BOOL)animateLiveResizeTransitions
{
  if ([(BKBookViewController *)self section]!= 1)
  {
    return 0;
  }

  directoryController = [(BKThumbnailBookViewController *)self directoryController];
  v4 = [directoryController selectedIndex] != &dword_0 + 1;

  return v4;
}

- (BOOL)aspectFitDuringLiveResize
{
  if (![(BKBookViewController *)self section])
  {
    return 1;
  }

  if ([(BKBookViewController *)self section]!= 1)
  {
    return 0;
  }

  directoryController = [(BKThumbnailBookViewController *)self directoryController];
  v4 = [directoryController selectedIndex] == &dword_0 + 1;

  return v4;
}

- (void)assetViewControllerDidEndLiveResize
{
  v15.receiver = self;
  v15.super_class = BKPictureBookViewController;
  [(BKThumbnailBookViewController *)&v15 assetViewControllerDidEndLiveResize];
  pageNavigationViewController = [(BKPictureBookViewController *)self pageNavigationViewController];
  view = [(BKPictureBookViewController *)self view];
  [view bounds];
  [pageNavigationViewController adjustToNewSize:{v5, v6}];

  if ([(BKBookViewController *)self section]== 1)
  {
    directoryController = [(BKThumbnailBookViewController *)self directoryController];
    selectedViewController = [directoryController selectedViewController];

    objc_opt_class();
    v9 = BUDynamicCast();
    view2 = [(BKPictureBookViewController *)self view];
    [view2 bounds];
    [v9 adjustToNewSize:{v11, v12}];
  }

  if ([(BKPictureBookViewController *)self pageNavigationIsVertical])
  {
    [(BKPictureBookViewController *)self _prewarmThumbnailsForVerticalScrubber];
  }

  v13 = dispatch_time(0, 100000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_11444;
  block[3] = &unk_1E2BD0;
  block[4] = self;
  dispatch_after(v13, &_dispatch_main_q, block);
}

- (id)assetViewControllerViewForLiveResizeSnapshot
{
  if ([(BKBookViewController *)self section]== 1)
  {
    directoryTOCViewControllerView = [(BKThumbnailBookViewController *)self directoryTOCViewControllerView];
  }

  else
  {
    pageNavigationViewController = [(BKPictureBookViewController *)self pageNavigationViewController];
    directoryTOCViewControllerView = [pageNavigationViewController viewForLiveResize];
  }

  return directoryTOCViewControllerView;
}

- (BOOL)dismissShouldBegin:(id)begin
{
  beginCopy = begin;
  if (-[BKPictureBookViewController isVerticalScrubberVisible](self, "isVerticalScrubberVisible") || ([beginCopy velocity], v6 = v5, objc_msgSend(beginCopy, "velocity"), v6 >= v7))
  {
    proposedBeginState = 0;
  }

  else
  {
    proposedBeginState = [beginCopy proposedBeginState];
  }

  return proposedBeginState;
}

- (void)assetViewControllerWillEnterForeground
{
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = [(BKBookViewController *)self contentViewControllers:0];
  allValues = [v2 allValues];

  v4 = [allValues countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      v7 = 0;
      do
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(allValues);
        }

        objc_opt_class();
        v8 = BUDynamicCast();
        webView2 = [v8 webView2];
        be_requiresReload = [webView2 be_requiresReload];

        if (be_requiresReload)
        {
          webView22 = [v8 webView2];
          be_navigationHandler = [webView22 be_navigationHandler];
          [be_navigationHandler attemptReload];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [allValues countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }
}

- (void)updateScrubberUsingTouchbar:(double)touchbar
{
  v4 = [(BKBookViewController *)self pageNumberForTouchBarPosition:touchbar];
  currentScrubber = [(BKPictureBookViewController *)self currentScrubber];
  [currentScrubber setPageNumber:v4];

  [(BKPictureBookViewController *)self layoutScrubberCallout:0];
}

- (void)touchBarScrollerDidStart:(double)start
{
  v7.receiver = self;
  v7.super_class = BKPictureBookViewController;
  [(BKBookViewController *)&v7 touchBarScrollerDidStart:?];
  [(BKBookViewController *)self setControlsVisible:1];
  [(BKPictureBookViewController *)self updateScrubberUsingTouchbar:start];
  currentScrubber = [(BKPictureBookViewController *)self currentScrubber];
  callout = [currentScrubber callout];
  [callout setAlpha:1.0];
}

- (void)touchBarScrollerDidScroll:(double)scroll
{
  v5.receiver = self;
  v5.super_class = BKPictureBookViewController;
  [(BKBookViewController *)&v5 touchBarScrollerDidScroll:?];
  [(BKPictureBookViewController *)self updateScrubberUsingTouchbar:scroll];
}

- (void)touchBarScrollerDidEnd:(double)end completion:(id)completion
{
  v7.receiver = self;
  v7.super_class = BKPictureBookViewController;
  [(BKBookViewController *)&v7 touchBarScrollerDidEnd:completion completion:end];
  [(BKBookViewController *)self setControlsVisible:0];
  currentScrubber = [(BKPictureBookViewController *)self currentScrubber];
  callout = [currentScrubber callout];
  [callout setAlpha:0.0];
}

- (void)infoHUDTapped:(id)tapped
{
  if ([(BKPictureBookViewController *)self isVerticalScrubberVisible])
  {
    [(BKPictureBookViewController *)self hideVerticalScrubber];
    UIAccessibilityPostNotification(UIAccessibilityLayoutChangedNotification, 0);
    v4 = @"Dismissed page chooser";
  }

  else
  {
    [(BKPictureBookViewController *)self showVerticalScrubber];
    v5 = UIAccessibilityLayoutChangedNotification;
    verticalScrubber = [(BKPictureBookViewController *)self verticalScrubber];
    UIAccessibilityPostNotification(v5, verticalScrubber);

    v4 = @"Page chooser";
  }

  v7 = UIAccessibilityAnnouncementNotification;
  v9 = AEBundle();
  v8 = [v9 localizedStringForKey:v4 value:&stru_1E7188 table:0];
  UIAccessibilityPostNotification(v7, v8);
}

- (BOOL)isSpread
{
  pageNavigationViewController = [(BKPictureBookViewController *)self pageNavigationViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  objc_opt_class();
  v5 = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    objc_opt_class();
    pageNavigationViewController2 = [(BKPictureBookViewController *)self pageNavigationViewController];
    v7 = BUDynamicCast();

    isZoomedToSpread = [v7 isZoomedToSpread];
  }

  else
  {
    if ((v5 & 1) == 0)
    {
      v10 = 0;
      goto LABEL_7;
    }

    objc_opt_class();
    pageNavigationViewController3 = [(BKPictureBookViewController *)self pageNavigationViewController];
    v7 = BUDynamicCast();

    isZoomedToSpread = [v7 shouldDisplaySpread];
  }

  v10 = isZoomedToSpread;

LABEL_7:
  return v10;
}

- (void)books_pageRight:(id)right
{
  pageNavigationViewController = [(BKPictureBookViewController *)self pageNavigationViewController];
  [pageNavigationViewController turnToNextPage];
}

- (void)books_pageLeft:(id)left
{
  pageNavigationViewController = [(BKPictureBookViewController *)self pageNavigationViewController];
  [pageNavigationViewController turnToPreviousPage];
}

- (void)books_pageForward:(id)forward
{
  forwardCopy = forward;
  if ([(BKBookViewController *)self isPageProgressionRTL])
  {
    [(BKPictureBookViewController *)self books_pageLeft:forwardCopy];
  }

  else
  {
    [(BKPictureBookViewController *)self books_pageRight:forwardCopy];
  }
}

- (void)books_pageBackward:(id)backward
{
  backwardCopy = backward;
  if ([(BKBookViewController *)self isPageProgressionRTL])
  {
    [(BKPictureBookViewController *)self books_pageRight:backwardCopy];
  }

  else
  {
    [(BKPictureBookViewController *)self books_pageLeft:backwardCopy];
  }
}

- (void)turnToNextChapter
{
  currentPages = [(BKPictureBookViewController *)self currentPages];
  v5 = [(BKBookViewController *)self pageNumberFromRange:currentPages, v4];
  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = v5;
    paginationController = [(BKBookViewController *)self paginationController];
    numberOfChapters = [paginationController numberOfChapters];

    if (numberOfChapters)
    {
      if ([(BKPictureBookViewController *)self isSpread])
      {
        paginationController2 = [(BKBookViewController *)self paginationController];
        pageTotal = [paginationController2 pageTotal];

        if (v6 < pageTotal)
        {
          ++v6;
        }
      }

      paginationController3 = [(BKBookViewController *)self paginationController];
      v12 = [paginationController3 chapterIndexForPageNumber:v6];

      if (v12 == 0x7FFFFFFFFFFFFFFFLL || v12 >= numberOfChapters)
      {
        if (v12 != 0x7FFFFFFFFFFFFFFFLL)
        {
          return;
        }

        paginationController4 = [(BKBookViewController *)self paginationController];
        v14 = [paginationController4 pageRangeForChapterAtIndex:0];

        if (v6 >= v14)
        {
          return;
        }
      }

      else
      {
        paginationController5 = [(BKBookViewController *)self paginationController];
        v14 = [paginationController5 pageRangeForChapterAtIndex:v12 + 1];
      }

      [(BKThumbnailBookViewController *)self turnToPageNumber:v14 animated:1];
    }
  }
}

- (void)turnToPreviousChapter
{
  currentPages = [(BKPictureBookViewController *)self currentPages];
  v5 = [(BKBookViewController *)self pageNumberFromRange:currentPages, v4];
  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = v5;
    paginationController = [(BKBookViewController *)self paginationController];
    numberOfChapters = [paginationController numberOfChapters];

    if (numberOfChapters)
    {
      paginationController2 = [(BKBookViewController *)self paginationController];
      v10 = [paginationController2 chapterIndexForPageNumber:v6 getFirstChapter:1];

      paginationController3 = [(BKBookViewController *)self paginationController];
      v12 = paginationController3;
      if (v10)
      {
        if (v10 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v13 = [paginationController3 pageRangeForChapterAtIndex:0];

          if (v6 >= v13)
          {
            return;
          }

          v14 = &dword_0 + 1;
        }

        else
        {
          v14 = [paginationController3 pageRangeForChapterAtIndex:v10 - 1];
        }
      }

      else
      {
        v15 = [paginationController3 pageRangeForChapterAtIndex:0];

        if (v6 <= v15)
        {
          v14 = &dword_0 + 1;
        }

        else
        {
          v14 = v15;
        }
      }

      [(BKThumbnailBookViewController *)self turnToPageNumber:v14 animated:1];
    }
  }
}

- (void)contentViewController:(id)controller navigatePageDirection:(id)direction
{
  directionCopy = direction;
  if ([directionCopy isEqualToString:@"nextChapter"])
  {
    pageNavigationViewController = [(BKPictureBookViewController *)self pageNavigationViewController];
    currentPages = [(BKPictureBookViewController *)self currentPages];
    [(BKPictureBookViewController *)self currentPages];
    v8 = &currentPages[v7];
LABEL_5:
    [pageNavigationViewController turnToPageNumber:v8 animated:1];
LABEL_6:

    goto LABEL_7;
  }

  if ([directionCopy isEqualToString:@"previousChapter"])
  {
    pageNavigationViewController = [(BKPictureBookViewController *)self pageNavigationViewController];
    v8 = [(BKPictureBookViewController *)self currentPages]- 1;
    goto LABEL_5;
  }

  if ([directionCopy isEqualToString:@"next"])
  {
    pageNavigationViewController = [(BKPictureBookViewController *)self pageNavigationViewController];
    if ([(BKBookViewController *)self isPageProgressionRTL])
    {
LABEL_12:
      [pageNavigationViewController turnToPreviousPage];
      goto LABEL_6;
    }

LABEL_15:
    [pageNavigationViewController turnToNextPage];
    goto LABEL_6;
  }

  if ([directionCopy isEqualToString:@"previous"])
  {
    pageNavigationViewController = [(BKPictureBookViewController *)self pageNavigationViewController];
    if (![(BKBookViewController *)self isPageProgressionRTL])
    {
      goto LABEL_12;
    }

    goto LABEL_15;
  }

LABEL_7:
}

- (id)upsellContentViewController
{
  v22.receiver = self;
  v22.super_class = BKPictureBookViewController;
  upsellContentViewController = [(BKBookViewController *)&v22 upsellContentViewController];
  if (upsellContentViewController)
  {
    viewIfLoaded = [(BKPictureBookViewController *)self viewIfLoaded];

    if (viewIfLoaded)
    {
      book = [(BKBookViewController *)self book];
      firstDocument = [book firstDocument];
      [firstDocument fixedLayoutSize];
      v8 = v7;
      v10 = v9;
      _thumbnailBookViewConfiguration = [(BKPictureBookViewController *)self _thumbnailBookViewConfiguration];
      book2 = [(BKBookViewController *)self book];
      hidesSpine = [book2 hidesSpine];
      viewIfLoaded2 = [(BKPictureBookViewController *)self viewIfLoaded];
      [viewIfLoaded2 bounds];
      v19 = [BKPictureBookViewGeometry geometryWithContentSize:_thumbnailBookViewConfiguration configuration:hidesSpine ^ 1 drawsSpine:v8 containerBounds:v10, v15, v16, v17, v18];
      [v19 maximumSize];
      [upsellContentViewController setContentSize:?];

      v20 = [IMThemePage themeWithIdentifier:kIMThemeIdentifierWhitePageTheme];
      [upsellContentViewController setTheme:v20];
    }
  }

  return upsellContentViewController;
}

- (void)setTheme:(id)theme
{
  v7.receiver = self;
  v7.super_class = BKPictureBookViewController;
  [(BKBookViewController *)&v7 setTheme:theme];
  book = [(BKBookViewController *)self book];

  if (book)
  {
    v5 = [IMTheme themeWithIdentifier:kIMThemeIdentifierWhitePageTheme];
    upsellContentViewController = [(BKPictureBookViewController *)self upsellContentViewController];
    [upsellContentViewController setTheme:v5];
  }
}

- (id)_bk_backgroundColor
{
  v3 = +[NSLocale currentLocale];
  v4 = [v3 objectForKey:NSLocaleCountryCode];

  lowercaseString = [v4 lowercaseString];
  v6 = [lowercaseString isEqualToString:@"jp"];

  if (v6)
  {
    _bk_backgroundColor = +[UIColor bc_booksBackground];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = BKPictureBookViewController;
    _bk_backgroundColor = [(BKThumbnailBookViewController *)&v10 _bk_backgroundColor];
  }

  v8 = _bk_backgroundColor;

  return v8;
}

- (BOOL)shouldShowHUDs
{
  v15.receiver = self;
  v15.super_class = BKPictureBookViewController;
  shouldShowHUDs = [(BKThumbnailBookViewController *)&v15 shouldShowHUDs];
  viewIfLoaded = [(BKPictureBookViewController *)self viewIfLoaded];
  window = [viewIfLoaded window];

  if (window)
  {
    objc_opt_class();
    pageNavigationViewController = [(BKPictureBookViewController *)self pageNavigationViewController];
    v7 = BUDynamicCast();

    if (v7 && ![(BKBookViewController *)self section])
    {
      +[NSDate timeIntervalSinceReferenceDate];
      v9 = v8 - self->_preferredPageNumberHUDVisibilityChangedTime;
      preferredPageNumberHUDVisibility = [v7 preferredPageNumberHUDVisibility];
      if (v9 <= 2.0)
      {
        shouldShowHUDs = 1;
      }

      else
      {
        shouldShowHUDs = preferredPageNumberHUDVisibility;
      }

      if ([(BKThumbnailBookViewController *)self catalystToolbarActive]|| [(BKBookViewController *)self controlsVisible])
      {
        shouldShowHUDs = 1;
      }

      else if ([(BKPictureBookViewController *)self isVerticalScrubberVisible])
      {
        verticalScrubber = [(BKPictureBookViewController *)self verticalScrubber];
        callout = [verticalScrubber callout];
        [callout alpha];
        if (v14 == 0.0)
        {
          shouldShowHUDs = 1;
        }
      }
    }
  }

  return shouldShowHUDs;
}

- (BOOL)shouldShowBookmarkControl
{
  if ([(BKPictureBookViewController *)self hasContinuousScrollingBehavior])
  {
    return 0;
  }

  v4.receiver = self;
  v4.super_class = BKPictureBookViewController;
  return [(BKThumbnailBookViewController *)&v4 shouldShowBookmarkControl];
}

- (BOOL)shouldShowTOCControl
{
  if ([(BKPictureBookViewController *)self hasContinuousScrollingBehavior])
  {
    return 0;
  }

  v4.receiver = self;
  v4.super_class = BKPictureBookViewController;
  return [(BKThumbnailBookViewController *)&v4 shouldShowTOCControl];
}

- (double)_contentAspectRatio
{
  book = [(BKBookViewController *)self book];
  firstDocument = [book firstDocument];
  [firstDocument fixedLayoutSize];
  v5 = v4;
  v7 = v6;

  v8 = v7 == 0.0 || v5 == 0.0;
  result = v5 / v7;
  if (v8)
  {
    return 1.0;
  }

  return result;
}

- (id)_pageDirectory
{
  v6.receiver = self;
  v6.super_class = BKPictureBookViewController;
  _pageDirectory = [(BKThumbnailBookViewController *)&v6 _pageDirectory];
  [_pageDirectory setShowSpreads:{-[BKPictureBookViewController showSpreads](self, "showSpreads")}];
  book = [(BKBookViewController *)self book];
  [_pageDirectory setHidesSpine:{objc_msgSend(book, "hidesSpine")}];

  return _pageDirectory;
}

- (id)_bookmarkDirectory
{
  v6.receiver = self;
  v6.super_class = BKPictureBookViewController;
  _bookmarkDirectory = [(BKThumbnailBookViewController *)&v6 _bookmarkDirectory];
  book = [(BKBookViewController *)self book];
  [_bookmarkDirectory setHidesSpine:{objc_msgSend(book, "hidesSpine")}];

  [_bookmarkDirectory setShowSpreads:{-[BKPictureBookViewController showSpreads](self, "showSpreads")}];

  return _bookmarkDirectory;
}

- (_NSRange)currentPages
{
  pageNavigationViewController = [(BKPictureBookViewController *)self pageNavigationViewController];
  visiblePages = [pageNavigationViewController visiblePages];
  v5 = v4;

  v6 = visiblePages;
  v7 = v5;
  result.length = v7;
  result.location = v6;
  return result;
}

- (BOOL)pageNavigationIsVertical
{
  objc_opt_class();
  pageNavigationViewController = [(BKPictureBookViewController *)self pageNavigationViewController];
  v4 = BUDynamicCast();

  return v4 != 0;
}

- (id)scrubber
{
  scrubber = self->super._scrubber;
  if (!scrubber)
  {
    v8.receiver = self;
    v8.super_class = BKPictureBookViewController;
    scrubber = [(BKThumbnailBookViewController *)&v8 scrubber];
    [scrubber setShowSpreads:{-[BKPictureBookViewController showSpreads](self, "showSpreads")}];
    [(BKPictureBookViewController *)self _contentAspectRatio];
    [scrubber setCellAspectRatio:?];
    [scrubber addTarget:self action:"scrubberTouch:forEvent:" forControlEvents:4095];
    v5 = [[BKScrubberCalloutView alloc] initWithFrame:2 style:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    [v5 setShouldDisplayPageInfo:1];
    [scrubber setCallout:v5];
    view = [(BKPictureBookViewController *)self view];
    [view addSubview:v5];

    scrubber = self->super._scrubber;
  }

  return scrubber;
}

- (id)verticalScrubber
{
  verticalScrubber = self->super._verticalScrubber;
  if (!verticalScrubber)
  {
    v14.receiver = self;
    v14.super_class = BKPictureBookViewController;
    verticalScrubber = [(BKThumbnailBookViewController *)&v14 verticalScrubber];
    [verticalScrubber setPageCount:{-[BKBookViewController pageCountExcludingUpsell](self, "pageCountExcludingUpsell")}];
    layer = [verticalScrubber layer];
    [layer setCornerRadius:6.0];

    layer2 = [verticalScrubber layer];
    [layer2 setMasksToBounds:1];

    v7 = +[UIColor bc_booksTertiaryLabelColor];
    cGColor = [v7 CGColor];
    layer3 = [verticalScrubber layer];
    [layer3 setShadowColor:cGColor];

    layer4 = [verticalScrubber layer];
    [layer4 setShadowRadius:10.0];

    [verticalScrubber addTarget:self action:"scrubberTouch:forEvent:" forControlEvents:4095];
    v11 = [[BKScrubberCalloutView alloc] initWithFrame:2 style:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    [v11 setShouldDisplayPageInfo:1];
    [verticalScrubber setCallout:v11];
    view = [(BKPictureBookViewController *)self view];
    [view addSubview:v11];

    verticalScrubber = self->super._verticalScrubber;
  }

  return verticalScrubber;
}

- (void)_prewarmThumbnailsForVerticalScrubber
{
  if ([(BKPictureBookViewController *)self isViewLoaded]&& [(BKBookViewController *)self layout]== &dword_0 + 2)
  {
    verticalScrubber = [(BKPictureBookViewController *)self verticalScrubber];
    view = [(BKPictureBookViewController *)self view];
    [view frame];
    [verticalScrubber prewarmThumbnailsForScrubberSize:{40.0, CGRectGetHeight(v6)}];
  }
}

- (id)currentScrubber
{
  if ([(BKPictureBookViewController *)self shouldUseVerticalScrubber])
  {
    [(BKPictureBookViewController *)self verticalScrubber];
  }

  else
  {
    [(BKPictureBookViewController *)self scrubber];
  }
  v3 = ;

  return v3;
}

- (id)scrubberCallout
{
  currentScrubber = [(BKPictureBookViewController *)self currentScrubber];
  callout = [currentScrubber callout];

  return callout;
}

- (void)layoutScrubberCallout:(id)callout
{
  calloutCopy = callout;
  scrubberCallout = [(BKPictureBookViewController *)self scrubberCallout];
  view = [(BKPictureBookViewController *)self view];
  [view bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  [scrubberCallout sizeThatFits:{CGSizeZero.width, CGSizeZero.height}];
  v15 = v14;
  v17 = v16;
  v102.origin.x = v7;
  v102.origin.y = v9;
  v102.size.width = v11;
  v102.size.height = v13;
  v18 = CGRectGetWidth(v102) + -10.0;
  if (v15 >= v18)
  {
    v19 = v18;
  }

  else
  {
    v19 = v15;
  }

  if ([(BKPictureBookViewController *)self shouldUseVerticalScrubber])
  {
    verticalScrubber = [(BKPictureBookViewController *)self verticalScrubber];
    superview = [verticalScrubber superview];
    [superview bounds];
    v22 = CGRectGetWidth(v103) + 16.0;
    view2 = [(BKPictureBookViewController *)self view];
    [view2 safeAreaInsets];
    v25 = v22 + v24;

    if (![(BKThumbnailBookViewController *)self isInterfaceRTL])
    {
      v104.origin.x = v7;
      v104.origin.y = v9;
      v104.size.width = v11;
      v104.size.height = v13;
      MinX = CGRectGetMinX(v104);
      v105.origin.x = v7;
      v105.origin.y = v9;
      v105.size.width = v11;
      v105.size.height = v13;
      v25 = MinX + round(CGRectGetWidth(v105) - v19 - v25);
    }

    verticalScrubber2 = [(BKPictureBookViewController *)self verticalScrubber];
    [verticalScrubber2 frame];
    v107.origin.y = CGRectGetMinY(v106);
    v107.origin.x = v25;
    v107.size.width = v19;
    v107.size.height = v17;
    v108 = CGRectIntegral(v107);
    y = v108.origin.y;
    x = v108.origin.x;
    width = v108.size.width;
    height = v108.size.height;
  }

  else
  {
    scrubber = [(BKPictureBookViewController *)self scrubber];
    view3 = [(BKPictureBookViewController *)self view];
    [scrubber convertPoint:view3 toView:{CGPointZero.x, CGPointZero.y}];
    v33 = v32 + -10.0 - v17;

    v109.origin.x = v7;
    v109.origin.y = v9;
    v109.size.width = v11;
    v109.size.height = v13;
    v34 = CGRectGetMinX(v109);
    v110.origin.x = v7;
    v110.origin.y = v9;
    v110.size.width = v11;
    v110.size.height = v13;
    v111.origin.x = v34 + round((CGRectGetWidth(v110) - v19) * 0.5);
    v111.origin.y = v33;
    v111.size.width = v19;
    v111.size.height = v17;
    v112 = CGRectIntegral(v111);
    y = v112.origin.y;
    x = v112.origin.x;
    width = v112.size.width;
    height = v112.size.height;
  }

  if (![(BKPictureBookViewController *)self _thumbnailShouldTrackWithScrubber])
  {
    v69 = y;
    v70 = x;
    goto LABEL_33;
  }

  v96 = height;
  v92 = width;
  v90 = v19;
  v91 = v17;
  currentScrubber = [(BKPictureBookViewController *)self currentScrubber];
  view4 = [(BKPictureBookViewController *)self view];
  track = [currentScrubber track];
  [track bounds];
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v45 = v44;
  track2 = [currentScrubber track];
  [view4 convertRect:track2 fromView:{v39, v41, v43, v45}];
  v93 = v47;
  v94 = v48;
  v95 = v49;
  v51 = v50;

  if (calloutCopy)
  {
    allTouches = [calloutCopy allTouches];
    anyObject = [allTouches anyObject];

    view5 = [(BKPictureBookViewController *)self view];
    [anyObject locationInView:view5];
    v89 = v55;
    v57 = v56;

    height = v96;
LABEL_12:
    if ([(BKPictureBookViewController *)self shouldUseVerticalScrubber])
    {
      view6 = [(BKPictureBookViewController *)self view];
      [view6 safeAreaInsets];
      v98 = v59;
      v61 = v60;

      v113.origin.x = v93;
      v113.origin.y = v95;
      v113.size.width = v94;
      v113.size.height = v51;
      MinY = CGRectGetMinY(v113);
      v114.size.height = v51;
      v63 = MinY;
      v114.origin.x = v93;
      v114.origin.y = v95;
      v114.size.width = v94;
      v64 = fmax(v63, fmin(CGRectGetMaxY(v114), v57));
      v115.origin.x = v7;
      v115.origin.y = v9;
      v115.size.width = v11;
      v115.size.height = v13;
      v65 = CGRectGetMaxY(v115) - v61;
      height = v96;
      v66 = v65 + -5.0 - v91;
      v67 = v98 + 5.0;
      v68 = v64 - round(v91 * 0.5);
      if (v98 + 5.0 < v68)
      {
        v67 = v68;
      }

      if (v66 >= v67)
      {
        v69 = v67;
      }

      else
      {
        v69 = v66;
      }

      v70 = x;
    }

    else
    {
      v116.origin.x = v93;
      v116.origin.y = v95;
      v116.size.width = v94;
      v116.size.height = v51;
      v71 = CGRectGetMinX(v116);
      v117.origin.x = v93;
      v117.origin.y = v95;
      v117.size.width = v94;
      v117.size.height = v51;
      v72 = fmax(v71, fmin(CGRectGetMaxX(v117), v89));
      v118.origin.x = v7;
      v118.origin.y = v9;
      v118.size.width = v11;
      v118.size.height = v13;
      v73 = CGRectGetMaxX(v118) + -5.0 - v90;
      v74 = fmax(v72 - round(v90 * 0.5), 5.0);
      if (v73 >= v74)
      {
        v70 = v74;
      }

      else
      {
        v70 = v73;
      }

      v69 = y;
    }

    goto LABEL_32;
  }

  touchBarController = [(BKBookViewController *)self touchBarController];

  if (touchBarController)
  {
    view7 = [(BKPictureBookViewController *)self view];
    [view7 bounds];
    v93 = v77;
    v94 = v78;
    v95 = v79;
    v51 = v80;

    touchBarController2 = [(BKBookViewController *)self touchBarController];
    [touchBarController2 scrollPosition];
    v83 = v82;

    v88 = v7;
    if ([(BKPictureBookViewController *)self shouldUseVerticalScrubber])
    {
      [(BKBookViewController *)self pagePositionForTouchBarPosition:v83];
      v83 = v84;
    }

    height = v96;
    v119.origin.x = v93;
    v119.origin.y = v95;
    v119.size.width = v94;
    v119.size.height = v51;
    v89 = v83 * CGRectGetWidth(v119);
    v120.origin.x = v93;
    v120.origin.y = v95;
    v120.size.width = v94;
    v120.size.height = v51;
    v57 = v83 * CGRectGetHeight(v120);
  }

  else
  {
    v57 = CGPointZero.y;
    v89 = CGPointZero.x;
    height = v96;
  }

  touchBarController3 = [(BKBookViewController *)self touchBarController];
  if (!touchBarController3)
  {
    goto LABEL_12;
  }

  v86 = touchBarController3;
  shouldUseVerticalScrubber = [(BKPictureBookViewController *)self shouldUseVerticalScrubber];

  if (!shouldUseVerticalScrubber)
  {
    goto LABEL_12;
  }

  v121.origin.x = v7;
  v121.origin.y = v9;
  v121.size.width = v11;
  v121.size.height = v13;
  v69 = CGRectGetMaxY(v121) - v91 + -16.0;
  v122.origin.x = v7;
  v122.origin.y = v9;
  v122.size.width = v11;
  v122.size.height = v13;
  v70 = CGRectGetMaxX(v122) * 0.5 - v90 * 0.5;
LABEL_32:

  width = v92;
LABEL_33:
  [scrubberCallout setFrame:{v70, v69, width, height}];
  [scrubberCallout setNeedsLayout];
}

- (void)scrubberTouch:(id)touch forEvent:(id)event
{
  eventCopy = event;
  if ([(BKPictureBookViewController *)self shouldUseVerticalScrubber])
  {
    allTouches = [eventCopy allTouches];
    anyObject = [allTouches anyObject];

    isTracking = 0.0;
    if ([anyObject phase] != &dword_0 + 3)
    {
      if ([anyObject phase] == &dword_4)
      {
        isTracking = 0.0;
      }

      else
      {
        isTracking = 1.0;
      }
    }
  }

  else
  {
    anyObject = [(BKPictureBookViewController *)self scrubber];
    isTracking = [anyObject isTracking];
  }

  scrubberCallout = [(BKPictureBookViewController *)self scrubberCallout];
  [scrubberCallout alpha];
  if (isTracking != v10)
  {
    if (isTracking == 1.0)
    {
      [scrubberCallout setAlpha:1.0];
      [(BKPictureBookViewController *)self showScrim:!UIAccessibilityIsVoiceOverRunning()];
    }

    else
    {
      [scrubberCallout alpha];
      if (v11 == 1.0)
      {
        v12[0] = _NSConcreteStackBlock;
        v12[1] = 3221225472;
        v12[2] = sub_13358;
        v12[3] = &unk_1E2BD0;
        v13 = scrubberCallout;
        [UIView animateWithDuration:4 delay:v12 options:0 animations:0.2 completion:0.3];
        [(BKPictureBookViewController *)self showScrim:0];
      }
    }
  }

  [(BKPictureBookViewController *)self layoutScrubberCallout:eventCopy];
}

- (void)showScrim:(BOOL)scrim
{
  scrimCopy = scrim;
  if (self->_scrimView)
  {
    if (!scrim)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v5 = [UIView alloc];
    view = [(BKPictureBookViewController *)self view];
    [view bounds];
    v7 = [v5 initWithFrame:?];
    scrimView = self->_scrimView;
    self->_scrimView = v7;

    v9 = [UIColor colorWithWhite:0.0 alpha:0.15];
    [(UIView *)self->_scrimView setBackgroundColor:v9];

    if (!scrimCopy)
    {
LABEL_6:
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_1356C;
      v14[3] = &unk_1E2BD0;
      v14[4] = self;
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_135C0;
      v13[3] = &unk_1E2C20;
      v13[4] = self;
      [UIView animateWithDuration:4 delay:v14 options:v13 animations:0.2 completion:0.3];
      return;
    }
  }

  superview = [(UIView *)self->_scrimView superview];

  if (superview)
  {
    goto LABEL_6;
  }

  [(UIView *)self->_scrimView setAlpha:1.0];
  view2 = [(BKPictureBookViewController *)self view];
  [view2 bounds];
  [(UIView *)self->_scrimView setFrame:?];

  view3 = [(BKPictureBookViewController *)self view];
  [view3 insertSubview:self->_scrimView below:self->super._topToolbar];
}

- (id)thumbnailScrubber:(id)scrubber thumbnailForPage:(int64_t)page size:(CGSize)size context:(id)context
{
  height = size.height;
  width = size.width;
  v21.receiver = self;
  v21.super_class = BKPictureBookViewController;
  v10 = [(BKThumbnailBookViewController *)&v21 thumbnailScrubber:scrubber thumbnailForPage:page size:context context:?];
  if (!v10)
  {
    upsellPageNumber = [(BKBookViewController *)self upsellPageNumber];
    if (page != 0x7FFFFFFFFFFFFFFFLL && upsellPageNumber == page)
    {
      if (width == CGSizeZero.width && height == CGSizeZero.height)
      {
        v10 = 0;
      }

      else
      {
        pictureBookRenderingCache = [(BKPictureBookViewController *)self pictureBookRenderingCache];
        book = [(BKBookViewController *)self book];
        thumbnailContext = self->_thumbnailContext;
        [(BKThumbnailBookViewController *)self _containerBoundsForGeometry];
        v10 = [pictureBookRenderingCache thumbnailForPage:page asset:book size:0 renderingCacheCallbackTarget:thumbnailContext renderingCacheCallbackContext:0 priority:width containerBounds:{height, v17, v18, v19, v20}];
      }
    }
  }

  return v10;
}

- (id)pageTitleForPageNumber:(int64_t)number
{
  book = [(BKBookViewController *)self book];
  hasPhysicalPages = [book hasPhysicalPages];

  if (!hasPhysicalPages)
  {
    v14.receiver = self;
    v14.super_class = BKPictureBookViewController;
    v12 = [(BKBookViewController *)&v14 pageTitleForPageNumber:number];
    goto LABEL_10;
  }

  book2 = [(BKBookViewController *)self book];
  v8 = [book2 documentWithOrdinal:number - 1];

  if (!v8)
  {
    goto LABEL_8;
  }

  book3 = [(BKBookViewController *)self book];
  v10 = [book3 physicalPageMapForDocument:v8];

  if (![v10 count])
  {

LABEL_8:
    v12 = &stru_1E7188;
    goto LABEL_9;
  }

  lastObject = [v10 lastObject];
  v12 = [lastObject valueForKey:@"name"];

  if (!v12)
  {
    goto LABEL_8;
  }

LABEL_9:

LABEL_10:

  return v12;
}

- (void)_traitCollectionDidChange:(id)change previousTraitCollection:(id)collection
{
  objc_opt_class();
  pageNavigationViewController = [(BKPictureBookViewController *)self pageNavigationViewController];
  v11 = BUDynamicCast();

  pageCurlManager = [v11 pageCurlManager];
  pageCurlConfiguration = [pageCurlManager pageCurlConfiguration];
  [pageCurlConfiguration invalidate];

  objc_opt_class();
  theme = [(BKPictureBookViewController *)self theme];
  v9 = BUDynamicCast();
  searchViewControllerIfLoaded = [(BKBookViewController *)self searchViewControllerIfLoaded];
  [searchViewControllerIfLoaded setTheme:v9];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  coordinatorCopy = coordinator;
  scrubberContainerView = self->_scrubberContainerView;
  if (scrubberContainerView)
  {
    superview = [(UIView *)scrubberContainerView superview];

    if (superview)
    {
      [(BKPictureBookViewController *)self hideVerticalScrubber];
    }
  }

  verticalScrubber = [(BKPictureBookViewController *)self verticalScrubber];

  if (verticalScrubber)
  {
    verticalScrubber2 = [(BKPictureBookViewController *)self verticalScrubber];
    callout = [verticalScrubber2 callout];
    [callout removeFromSuperview];

    [(BKThumbnailBookViewController *)self setVerticalScrubber:0];
  }

  if (![(BKBookViewController *)self inLiveResize])
  {
    [(BKPictureBookViewController *)self _prewarmThumbnailsForVerticalScrubber];
  }

  v13.receiver = self;
  v13.super_class = BKPictureBookViewController;
  [(BKThumbnailBookViewController *)&v13 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
}

- (CGSize)idealCacheSize
{
  pageNavigationViewController = [(BKPictureBookViewController *)self pageNavigationViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  objc_opt_class();
  v5 = objc_opt_isKindOfClass();
  if (isKindOfClass & 1) != 0 || (v5)
  {
    [(BKThumbnailBookViewController *)self _containerBoundsForGeometry];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v42.origin.x = CGRectZero.origin.x;
    v42.origin.y = CGRectZero.origin.y;
    v42.size.width = CGRectZero.size.width;
    v42.size.height = CGRectZero.size.height;
    v43.origin.x = v11;
    v43.origin.y = v13;
    v43.size.width = v15;
    v43.size.height = v17;
    if (CGRectEqualToRect(v42, v43))
    {
      pageNavigationViewController2 = [(BKPictureBookViewController *)self pageNavigationViewController];
      viewIfLoaded = [pageNavigationViewController2 viewIfLoaded];
      [viewIfLoaded bounds];
      v11 = v20;
      v13 = v21;
      v15 = v22;
      v17 = v23;
    }

    book = [(BKBookViewController *)self book];
    firstDocument = [book firstDocument];
    [firstDocument fixedLayoutSize];
    v27 = v26;
    v29 = v28;
    _thumbnailBookViewConfiguration = [(BKPictureBookViewController *)self _thumbnailBookViewConfiguration];
    book2 = [(BKBookViewController *)self book];
    book3 = +[BKPictureBookViewGeometry geometryWithContentSize:configuration:drawsSpine:ignoresPadding:containerBounds:](BKPictureBookViewGeometry, "geometryWithContentSize:configuration:drawsSpine:ignoresPadding:containerBounds:", _thumbnailBookViewConfiguration, [book2 hidesSpine] ^ 1, 1, v27, v29, v11, v13, v15, v17);

    objc_opt_class();
    pageNavigationViewController3 = [(BKPictureBookViewController *)self pageNavigationViewController];
    firstDocument2 = BUDynamicCast();

    if (isKindOfClass)
    {
      isZoomedToSpread = [firstDocument2 isZoomedToSpread];
      shouldDisplaySpread = (isPortrait() ^ 1);
      v35 = book3;
      v36 = isZoomedToSpread;
    }

    else
    {
      shouldDisplaySpread = [firstDocument2 shouldDisplaySpread];
      v35 = book3;
      v36 = 0;
    }

    [v35 sizeForSpread:v36 landscape:shouldDisplaySpread];
  }

  else
  {
    book3 = [(BKBookViewController *)self book];
    firstDocument2 = [book3 firstDocument];
    [firstDocument2 fixedLayoutSize];
  }

  v37 = v8;
  v38 = v9;

  v39 = v37;
  v40 = v38;
  result.height = v40;
  result.width = v39;
  return result;
}

- (void)pageNavigationSnapshotForPageNumber:(int64_t)number size:(CGSize)size isRight:(BOOL)right zoomScale:(double)scale applyMaskAndGutter:(BOOL)gutter completion:(id)completion
{
  gutterCopy = gutter;
  rightCopy = right;
  height = size.height;
  width = size.width;
  completionCopy = completion;
  pictureBookRenderingCache = [(BKPictureBookViewController *)self pictureBookRenderingCache];
  [pictureBookRenderingCache primaryImageSize];
  v18 = v16;
  v19 = v17;
  if (height > v17 || width > v16)
  {
    width = v16;
    height = v17;
  }

  book = [(BKBookViewController *)self book];
  [(BKThumbnailBookViewController *)self _containerBoundsForGeometry];
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_13E5C;
  v32[3] = &unk_1E2E50;
  v33 = completionCopy;
  v30 = completionCopy;
  [pictureBookRenderingCache snapshotForBookInfo:book pageNumber:number size:rightCopy maxSize:gutterCopy isRight:v32 zoomScale:width applyMaskAndGutter:height containerBounds:v18 completion:{v19, scale, v23, v25, v27, v29}];
}

- (void)pageNavigationSnapshotForPageNumber:(int64_t)number completion:(id)completion
{
  completionCopy = completion;
  if ((number - 1) > 0x7FFFFFFFFFFFFFFDLL)
  {
    v8 = 0;
  }

  else
  {
    pictureBookRenderingCache = [(BKPictureBookViewController *)self pictureBookRenderingCache];
    book = [(BKBookViewController *)self book];
    [(BKThumbnailBookViewController *)self _containerBoundsForGeometry];
    v8 = [pictureBookRenderingCache anySnapshotForBookInfo:book pageNumber:number containerBounds:?];
  }

  completionCopy[2](completionCopy, v8);
}

- (void)generateSnapshotsForCurrentPages
{
  currentPages = [(BKPictureBookViewController *)self currentPages];
  v5 = v4;
  pictureBookRenderingCache = [(BKPictureBookViewController *)self pictureBookRenderingCache];
  [pictureBookRenderingCache resetPrioritiesForPageNumber:{-[BKBookViewController pageNumberFromRange:](self, "pageNumberFromRange:", currentPages, v5)}];

  [(BKPictureBookViewController *)self idealCacheSize];
  v8 = v7;
  v10 = v9;
  v11 = currentPages + v5;
  if (v11 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v12 = v11 + 2;
    do
    {
      if (v11 > [(BKBookViewController *)self pageCountIncludingUpsell])
      {
        break;
      }

      pictureBookRenderingCache2 = [(BKPictureBookViewController *)self pictureBookRenderingCache];
      book = [(BKBookViewController *)self book];
      [pictureBookRenderingCache2 generateSnapshotWithAsset:book size:v11 pageNumber:{v8, v10}];

      ++v11;
    }

    while (v11 < v12);
  }

  v15 = currentPages - 3;
  v16 = currentPages - 1;
  if (v16 > v15 && v16 >= 1)
  {
    do
    {
      pictureBookRenderingCache3 = [(BKPictureBookViewController *)self pictureBookRenderingCache];
      book2 = [(BKBookViewController *)self book];
      [pictureBookRenderingCache3 generateSnapshotWithAsset:book2 size:v16 pageNumber:{v8, v10}];

      if (v16 - 1 <= v15)
      {
        break;
      }
    }

    while (v16-- > 1);
  }
}

- (void)generateRenderingPiggyBackForAllPages
{
  pageCountIncludingUpsell = [(BKBookViewController *)self pageCountIncludingUpsell];
  if (pageCountIncludingUpsell >= 2)
  {
    v4 = pageCountIncludingUpsell;
    if (pageCountIncludingUpsell != 0x7FFFFFFFFFFFFFFFLL)
    {
      for (i = 1; i != v4; ++i)
      {
        pictureBookRenderingCache = [(BKPictureBookViewController *)self pictureBookRenderingCache];
        book = [(BKBookViewController *)self book];
        [pictureBookRenderingCache renderingPiggyBackForPageNumber:i asset:book priority:0];
      }
    }
  }
}

- (id)contentViewControllerForLocation:(id)location
{
  locationCopy = location;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_8;
  }

  ordinal = [locationCopy ordinal];
  if (ordinal == [(BKBookViewController *)self upsellOrdinal])
  {
    upsellContentViewController = [(BKPictureBookViewController *)self upsellContentViewController];
    goto LABEL_9;
  }

  book = [(BKBookViewController *)self book];
  readingDocumentCount = [book readingDocumentCount];

  if (ordinal < readingDocumentCount)
  {
    if ((ordinal & 0x8000000000000000) != 0)
    {
      book2 = [(BKBookViewController *)self book];
      firstDocumentLocation = [book2 firstDocumentLocation];
      ordinal = [firstDocumentLocation ordinal];
    }

    upsellContentViewController = objc_alloc_init(BKPictureBookContentViewController);
    [(BKHTMLContentViewController *)upsellContentViewController setOrdinal:ordinal];
    book3 = [(BKBookViewController *)self book];
    v12 = [book3 documentWithOrdinal:ordinal];
    [(BKContentViewController *)upsellContentViewController setDocument:v12];

    book4 = [(BKBookViewController *)self book];
    [(BKContentViewController *)upsellContentViewController setBook:book4];

    [(BKContentViewController *)upsellContentViewController setPageOffset:0];
    [(BKContentViewController *)upsellContentViewController setSelectionHighlightType:0];
  }

  else
  {
LABEL_8:
    upsellContentViewController = 0;
  }

LABEL_9:

  return upsellContentViewController;
}

- (CGSize)thumbnailingContentSizeForPageNumber:(int64_t)number
{
  book = [(BKBookViewController *)self book];
  [book fixedLayoutSizeForDocumentWithOrdinal:number - 1];
  v6 = v5;
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (id)thumbnailingGenerateImageForPageNumber:(int64_t)number callbackBlock:(id)block
{
  blockCopy = block;
  pictureBookRenderingCache = [(BKPictureBookViewController *)self pictureBookRenderingCache];
  book = [(BKBookViewController *)self book];
  v9 = [pictureBookRenderingCache generateMasterImageForPageNumber:number asset:book priority:8 callbackBlock:blockCopy];

  return v9;
}

- (BKImageResizerHelper)imageResizer
{
  imageResizer = self->_imageResizer;
  if (!imageResizer)
  {
    v4 = objc_alloc_init(BKImageResizerHelper);
    v5 = self->_imageResizer;
    self->_imageResizer = v4;

    imageResizer = self->_imageResizer;
  }

  return imageResizer;
}

- (id)resizeImage:(id)image toSize:(CGSize)size callback:(id)callback
{
  height = size.height;
  width = size.width;
  callbackCopy = callback;
  imageCopy = image;
  imageResizer = [(BKPictureBookViewController *)self imageResizer];
  v12 = [imageResizer resizeImage:imageCopy toSize:callbackCopy callback:{width, height}];

  return v12;
}

- (void)contentView:(id)view unhandledClickAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  viewCopy = view;
  pageNavigationViewController = [(BKPictureBookViewController *)self pageNavigationViewController];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if ([(BKPictureBookViewController *)self isVerticalScrubberVisible])
    {
      goto LABEL_6;
    }

LABEL_8:
    [(BKThumbnailBookViewController *)self toggleControls:self];
    goto LABEL_9;
  }

  pageNavigationViewController2 = [(BKPictureBookViewController *)self pageNavigationViewController];
  view = [viewCopy view];
  v10 = [pageNavigationViewController2 hasMediaElementAtPoint:view inView:{x, y}];

  if (!v10)
  {
    [pageNavigationViewController2 curlPageForReadAloud:0];

    if ([(BKPictureBookViewController *)self isVerticalScrubberVisible])
    {
      goto LABEL_6;
    }

    goto LABEL_8;
  }

  if ([(BKPictureBookViewController *)self isVerticalScrubberVisible])
  {
LABEL_6:
    [(BKPictureBookViewController *)self hideVerticalScrubber];
  }

LABEL_9:
}

- (id)_prepareSmilMapOn:(_NSRange)on
{
  length = on.length;
  location = on.location;
  v6 = [NSMutableArray arrayWithCapacity:1];
  selfCopy = self;
  v7 = [(BKBookViewController *)self pageNumberFromRange:location, length];
  v23 = length;
  if (length)
  {
    v8 = 0;
    v9 = v7 - 1;
    do
    {
      book = [(BKBookViewController *)selfCopy book];
      v11 = [book documentWithOrdinal:v9 + v8];

      v24 = v11;
      mediaOverlayElements = [v11 mediaOverlayElements];
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v13 = [mediaOverlayElements countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v26;
        do
        {
          for (i = 0; i != v14; i = i + 1)
          {
            if (*v26 != v15)
            {
              objc_enumerationMutation(mediaOverlayElements);
            }

            v17 = *(*(&v25 + 1) + 8 * i);
            v18 = [NSDictionary alloc];
            v19 = [NSNumber numberWithInteger:v9 + v8];
            v20 = [v18 initWithObjectsAndKeys:{v17, @"smil", v19, @"ordinal", 0}];

            [v6 addObject:v20];
          }

          v14 = [mediaOverlayElements countByEnumeratingWithState:&v25 objects:v29 count:16];
        }

        while (v14);
      }

      ++v8;
    }

    while (v8 != v23);
  }

  return v6;
}

- (void)_installClickHandlers:(id)handlers
{
  if (self->super.super._isReading)
  {
    handlersCopy = handlers;
    objc_opt_class();
    v7 = BUDynamicCast();

    if (v7)
    {
      document = [v7 document];
      mediaOverlayElements = [document mediaOverlayElements];

      [v7 installReadAloudClickHandlersOnMediaOverlayElements:mediaOverlayElements];
    }
  }
}

- (void)_removeClickHandlers:(id)handlers
{
  if (!self->super.super._isReading)
  {
    handlersCopy = handlers;
    objc_opt_class();
    v7 = BUDynamicCast();

    if (v7)
    {
      document = [v7 document];
      mediaOverlayElements = [document mediaOverlayElements];

      [v7 removeReadAloudClickHandlersOnMediaOverlayElements:mediaOverlayElements];
    }
  }
}

- (void)_markupDocumentElementForMediaOverlay:(id)overlay
{
  if (self->super.super._isReading)
  {
    overlayCopy = overlay;
    objc_opt_class();
    v6 = BUDynamicCast();

    v5 = v6;
    if (v6)
    {
      [v6 markupDocumentForMediaOverlay];
      v5 = v6;
    }
  }
}

- (void)_cleanDocumentElementForMediaOverlay:(id)overlay
{
  if (!self->super.super._isReading)
  {
    overlayCopy = overlay;
    objc_opt_class();
    v6 = BUDynamicCast();

    v5 = v6;
    if (v6)
    {
      [v6 cleanDocumentForMediaOverlay];
      v5 = v6;
    }
  }
}

- (BOOL)pageNavigationController:(id)controller shouldDelayChangeToPageOffset:(int64_t)offset completion:(id)completion
{
  completionCopy = completion;
  if (offset != 0x7FFFFFFFFFFFFFFFLL)
  {
    objc_opt_class();
    pageNavigationViewController = [(BKPictureBookViewController *)self pageNavigationViewController];
    v9 = BUDynamicCast();

    [v9 pageSize];
    v11 = v10;
    v13 = v12;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_14B80;
    v15[3] = &unk_1E2E50;
    v16 = completionCopy;
    [(BKPictureBookViewController *)self thumbnailingGenerateImageForPageNumber:offset + 1 size:v15 callbackBlock:v11, v13];
  }

  return offset != 0x7FFFFFFFFFFFFFFFLL;
}

- (void)pageNavigationDidChangeLocation:(id)location
{
  v3.receiver = self;
  v3.super_class = BKPictureBookViewController;
  [(BKThumbnailBookViewController *)&v3 pageNavigationDidChangeLocation:location];
}

- (void)_nextPageHint:(BOOL)hint
{
  hintCopy = hint;
  pageNavigationViewController = [(BKPictureBookViewController *)self pageNavigationViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = pageNavigationViewController;
    currentPages = [(BKPictureBookViewController *)self currentPages];
    [(BKPictureBookViewController *)self currentPages];
    v8 = currentPages + v7;
    if (v8 <= [(BKBookViewController *)self pageCountIncludingUpsell])
    {
      if (hintCopy && [v5 isZoomedToSinglePage])
      {
        [v5 turnToPageNumber:v8 - 1 animated:1];
      }

      [v5 curlPageForReadAloud:hintCopy];
    }
  }

  _objc_release_x1();
}

- (BOOL)_isManualCurlInProgress
{
  pageNavigationViewController = [(BKPictureBookViewController *)self pageNavigationViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    isManualCurlInProgress = [pageNavigationViewController isManualCurlInProgress];
  }

  else
  {
    isManualCurlInProgress = 0;
  }

  return isManualCurlInProgress;
}

- (void)_focusOnPage:(int64_t)page
{
  pageNavigationViewController = [(BKPictureBookViewController *)self pageNavigationViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = pageNavigationViewController;
    if ([v4 isZoomedToSinglePage] && (objc_msgSend(v4, "isManualCurlInProgress") & 1) == 0)
    {
      [v4 turnToPageNumber:page animated:1];
    }
  }

  else
  {
    [pageNavigationViewController turnToPageNumber:page animated:1];
  }
}

- (BOOL)_isFocusedOnSecondPageOfSpread
{
  pageNavigationViewController = [(BKPictureBookViewController *)self pageNavigationViewController];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [pageNavigationViewController isZoomedToSinglePage])
  {
    isZoomedToRightPage = [pageNavigationViewController isZoomedToRightPage];
    if ([(BKViewController *)self layoutDirection]|| (isZoomedToRightPage & 1) == 0)
    {
      v5 = ([(BKViewController *)self layoutDirection]== &dword_0 + 1) & (isZoomedToRightPage ^ 1);
    }

    else
    {
      v5 = 1;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (unint64_t)_itemIndexForCurrentPage
{
  currentPages = [(BKPictureBookViewController *)self currentPages];
  v5 = v4;
  if (v4)
  {
    v6 = currentPages;
    if (v4 == &dword_0 + 1 || [(BKPictureBookViewController *)self _isFocusedOnSecondPageOfSpread])
    {
      smilMap = self->super.super._smilMap;
      self->super.super._smilMap = 0;

      [(BKBookViewController *)self smilMapOnPages:v6, v5];
      v16 = 0u;
      v17 = 0u;
      v18 = 0u;
      v8 = v19 = 0u;
      v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v17;
        while (2)
        {
          for (i = 0; i != v10; i = i + 1)
          {
            if (*v17 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v16 + 1) + 8 * i);
            v14 = [v13 objectForKey:{@"ordinal", v16}];
            if (v6 == [v14 intValue])
            {
              v5 = [v8 indexOfObject:v13];

              goto LABEL_14;
            }
          }

          v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
          if (v10)
          {
            continue;
          }

          break;
        }
      }

      v5 = 0;
LABEL_14:
    }

    else
    {
      return 0;
    }
  }

  return v5;
}

- (id)currentSoundtrack
{
  if (self->super.super._pageNavigationViewController && (v3 = [(BKPictureBookViewController *)self currentPages], v5 = [(BKBookViewController *)self pageNumberFromRange:v3, v4], v5 != 0x7FFFFFFFFFFFFFFFLL) && (v6 = v5, [(BKPictureBookViewController *)self currentPages], v7))
  {
    v8 = 0;
    while (1)
    {
      v9 = [(BKThumbnailBookViewController *)self existingContentViewControllerForPageNumber:v6 + v8];
      pathForSoundtrack = [v9 pathForSoundtrack];

      if (pathForSoundtrack)
      {
        break;
      }

      ++v8;
      [(BKPictureBookViewController *)self currentPages];
      if (v8 >= v11)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
LABEL_7:
    pathForSoundtrack = 0;
  }

  return pathForSoundtrack;
}

- (void)pictureBookVerticalNavigationInteractionDidStart:(int64_t)start
{
  if ([(BKPictureBookViewController *)self isVerticalScrubberVisible])
  {
    if (start == 1)
    {

      [(BKPictureBookViewController *)self hideVerticalScrubberAndResetZoomScale:0];
    }

    else
    {

      [(BKPictureBookViewController *)self hideVerticalScrubber];
    }
  }
}

- (void)pictureBookVerticalNavigationpreferredPageNumberHUDVisibilityChanged:(BOOL)changed
{
  if (!changed)
  {
    +[NSDate timeIntervalSinceReferenceDate];
    self->_preferredPageNumberHUDVisibilityChangedTime = v4;
  }

  [NSObject cancelPreviousPerformRequestsWithTarget:self selector:"_updateHUDVisibility" object:0];
  if (![(BKBookViewController *)self controlsVisible])
  {
    if (!-[BKPictureBookViewController isVerticalScrubberVisible](self, "isVerticalScrubberVisible") || (-[BKPictureBookViewController verticalScrubber](self, "verticalScrubber"), v5 = objc_claimAutoreleasedReturnValue(), [v5 callout], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "alpha"), v8 = v7, v6, v5, v8 != 0.0))
    {

      [(BKPictureBookViewController *)self performSelector:"_updateHUDVisibility" withObject:0 afterDelay:2.0];
    }
  }
}

- (CGRect)desiredBoundsForNavigationController
{
  viewIfLoaded = [(BKPictureBookViewController *)self viewIfLoaded];
  v3 = viewIfLoaded;
  if (viewIfLoaded)
  {
    [viewIfLoaded bounds];
    x = v4;
    y = v6;
    width = v8;
    height = v10;
  }

  else
  {
    x = CGRectZero.origin.x;
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
  }

  v12 = x;
  v13 = y;
  v14 = width;
  v15 = height;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (BOOL)hasContinuousScrollingBehavior
{
  _bookRenditionFlowIsScrolledContinuous = [(BKPictureBookViewController *)self _bookRenditionFlowIsScrolledContinuous];
  if (_bookRenditionFlowIsScrolledContinuous)
  {
    v3 = +[NSUserDefaults standardUserDefaults];
    v4 = [v3 BOOLForKey:@"BKReadingScrolledContinuous"];

    LOBYTE(_bookRenditionFlowIsScrolledContinuous) = v4;
  }

  return _bookRenditionFlowIsScrolledContinuous;
}

- (void)_updateWebProcessPluginObject:(id)object withParameter:(id)parameter
{
  objectCopy = object;
  parameterCopy = parameter;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  contentViewControllers = [(BKBookViewController *)self contentViewControllers];
  allValues = [contentViewControllers allValues];

  v9 = [allValues countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v20;
    do
    {
      v12 = 0;
      do
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(allValues);
        }

        objc_opt_class();
        v13 = BUDynamicCast();
        v14 = v13;
        if (v13)
        {
          webView2 = [v13 webView2];
          webView22 = [v14 webView2];
          v17 = [webView22 be_updateAXValueForMessage:objectCopy];
          [webView2 be_updateAXCurrentReadingStateWithMessage:parameterCopy forValue:v17];
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [allValues countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v10);
  }
}

- (WKWebView)snapshotWebView
{
  WeakRetained = objc_loadWeakRetained(&self->_snapshotWebView);

  return WeakRetained;
}

- (void)_performScrollTest:(id)test completionHandler:(id)handler
{
  testCopy = test;
  handlerCopy = handler;
  objc_opt_class();
  pageNavigationViewController = [(BKPictureBookViewController *)self pageNavigationViewController];
  v8 = BUDynamicCast();

  scrollView = [v8 scrollView];
  if (scrollView)
  {
    v10 = [[RPTScrollViewTestParameters alloc] initWithTestName:testCopy scrollView:scrollView completionHandler:handlerCopy];
    [RPTTestRunner runTestWithParameters:v10];
  }

  else
  {
    v11 = objc_retainBlock(handlerCopy);
    v10 = v11;
    if (v11)
    {
      (*(v11 + 2))(v11);
    }
  }
}

@end