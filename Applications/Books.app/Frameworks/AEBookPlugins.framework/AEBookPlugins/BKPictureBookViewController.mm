@interface BKPictureBookViewController
+ (void)initialize;
- (BKImageResizerHelper)imageResizer;
- (BKPictureBookViewController)initWithBook:(id)a3 storeID:(id)a4;
- (BOOL)_bookRenditionFlowIsScrolled;
- (BOOL)_bookRenditionFlowIsScrolledContinuous;
- (BOOL)_isFocusedOnSecondPageOfSpread;
- (BOOL)_isManualCurlInProgress;
- (BOOL)animateLiveResizeTransitions;
- (BOOL)aspectFitDuringLiveResize;
- (BOOL)blurSnapshotDuringLiveResize;
- (BOOL)dismissShouldBegin:(id)a3;
- (BOOL)hasContinuousScrollingBehavior;
- (BOOL)isSpread;
- (BOOL)isVerticalScrubberVisible;
- (BOOL)pageNavigationController:(id)a3 shouldDelayChangeToPageOffset:(int64_t)a4 completion:(id)a5;
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
- (CGSize)thumbnailingContentSizeForPageNumber:(int64_t)a3;
- (UIView)currentReadingPositionView;
- (UIView)scrubberContainerView;
- (UIViewPropertyAnimator)verticalScrubberAnimator;
- (WKWebView)snapshotWebView;
- (_NSRange)currentPages;
- (double)_contentAspectRatio;
- (id)_bk_backgroundColor;
- (id)_bookmarkDirectory;
- (id)_pageDirectory;
- (id)_prepareSmilMapOn:(_NSRange)a3;
- (id)_stylesheetSetForSnapshot:(id)a3;
- (id)assetViewControllerViewForLiveResizeSnapshot;
- (id)contentViewControllerForLocation:(id)a3;
- (id)currentScrubber;
- (id)currentSoundtrack;
- (id)pageLocationForPageNumber:(int64_t)a3;
- (id)pageNavigationViewController;
- (id)pageTitleForPageNumber:(int64_t)a3;
- (id)pictureBookRenderingCache;
- (id)resizeImage:(id)a3 toSize:(CGSize)a4 callback:(id)a5;
- (id)scrubber;
- (id)scrubberCallout;
- (id)thumbnailScrubber:(id)a3 thumbnailForPage:(int64_t)a4 size:(CGSize)a5 context:(id)a6;
- (id)thumbnailingGenerateImageForPageNumber:(int64_t)a3 callbackBlock:(id)a4;
- (id)upsellContentViewController;
- (id)verticalScrubber;
- (id)webViewForSnapshotting:(id)a3 size:(CGSize)a4;
- (int64_t)calculatePageCountExcludingUpsell;
- (unint64_t)_itemIndexForCurrentPage;
- (unint64_t)defaultLayoutToUse;
- (unint64_t)supportedInterfaceOrientations;
- (void)_cancelCachingAndCleanupSnapshotWebViews;
- (void)_cleanDocumentElementForMediaOverlay:(id)a3;
- (void)_cleanupSnapshotWebViews;
- (void)_focusOnPage:(int64_t)a3;
- (void)_installClickHandlers:(id)a3;
- (void)_markupDocumentElementForMediaOverlay:(id)a3;
- (void)_nextPageHint:(BOOL)a3;
- (void)_performScrollTest:(id)a3 completionHandler:(id)a4;
- (void)_prewarmThumbnailsForVerticalScrubber;
- (void)_removeClickHandlers:(id)a3;
- (void)_traitCollectionDidChange:(id)a3 previousTraitCollection:(id)a4;
- (void)_updateWebProcessPluginObject:(id)a3 withParameter:(id)a4;
- (void)animateVerticalScrubberIn:(double)a3 animated:(BOOL)a4;
- (void)appearanceViewController:(id)a3 didChangeLayout:(unint64_t)a4;
- (void)assetViewControllerDidEndLiveResize;
- (void)assetViewControllerWillEnterForeground;
- (void)bkaxToggleControls:(id)a3;
- (void)books_pageBackward:(id)a3;
- (void)books_pageForward:(id)a3;
- (void)books_pageLeft:(id)a3;
- (void)books_pageRight:(id)a3;
- (void)contentView:(id)a3 unhandledClickAtPoint:(CGPoint)a4;
- (void)contentViewController:(id)a3 navigatePageDirection:(id)a4;
- (void)contentViewReady:(id)a3;
- (void)dealloc;
- (void)didChangeLocationClosing:(BOOL)a3 suspending:(BOOL)a4;
- (void)displayVerticalScrubberBackground;
- (void)edgePanGestureHandler:(id)a3;
- (void)finishedSnapshottingForCache:(id)a3;
- (void)generateRenderingPiggyBackForAllPages;
- (void)generateSnapshotsForCurrentPages;
- (void)hideVerticalScrubber;
- (void)hideVerticalScrubberAndResetZoomScale:(BOOL)a3;
- (void)infoHUDTapped:(id)a3;
- (void)jumpToLocation:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)layoutScrubberCallout:(id)a3;
- (void)loadView;
- (void)pageNavigationDidChangeLocation:(id)a3;
- (void)pageNavigationSnapshotForPageNumber:(int64_t)a3 completion:(id)a4;
- (void)pageNavigationSnapshotForPageNumber:(int64_t)a3 size:(CGSize)a4 isRight:(BOOL)a5 zoomScale:(double)a6 applyMaskAndGutter:(BOOL)a7 completion:(id)a8;
- (void)pictureBookVerticalNavigationInteractionDidStart:(int64_t)a3;
- (void)pictureBookVerticalNavigationpreferredPageNumberHUDVisibilityChanged:(BOOL)a3;
- (void)prepareForScrubberAnimation;
- (void)presentAppearanceViewControllerFromItem:(id)a3;
- (void)restoreSavedLocation;
- (void)scrubberTouch:(id)a3 forEvent:(id)a4;
- (void)setBook:(id)a3;
- (void)setControlsVisible:(BOOL)a3 animated:(BOOL)a4;
- (void)setLayout:(unint64_t)a3;
- (void)setLocation:(id)a3;
- (void)setPageCountIncludingUpsell:(int64_t)a3;
- (void)setSection:(int)a3 animated:(BOOL)a4 adjustScrollToReveal:(BOOL)a5;
- (void)setTheme:(id)a3;
- (void)setupBackgroundImageViewWithImage:(id)a3;
- (void)setupVerticalScrubber;
- (void)showScrim:(BOOL)a3;
- (void)showVerticalScrubber;
- (void)touchBarScrollerDidEnd:(double)a3 completion:(id)a4;
- (void)touchBarScrollerDidScroll:(double)a3;
- (void)touchBarScrollerDidStart:(double)a3;
- (void)transitionDidFinish:(BOOL)a3;
- (void)turnToNextChapter;
- (void)turnToPreviousChapter;
- (void)updateCurrentReadingPositionViewIfNeeded;
- (void)updatePageNumberHUD;
- (void)updateScrubberUsingTouchbar:(double)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
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

- (BKPictureBookViewController)initWithBook:(id)a3 storeID:(id)a4
{
  v14.receiver = self;
  v14.super_class = BKPictureBookViewController;
  v4 = [(BKThumbnailBookViewController *)&v14 initWithBook:a3 storeID:a4];
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
      v10 = [(BKPictureBookViewController *)v4 view];
      [v10 addGestureRecognizer:v4->_edgePanGestureRecognizer];

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
    v4 = [(BKPictureBookViewController *)self view];
    [v4 addGestureRecognizer:self->_edgePanGestureRecognizer];

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
    v7 = [(UIView *)self->_currentReadingPositionView layer];
    [v7 setCornerRadius:v6];

    [(UIView *)self->_currentReadingPositionView setAutoresizingMask:0];
    v8 = +[UIColor bc_booksWhite];
    [(UIView *)self->_currentReadingPositionView setBackgroundColor:v8];

    v9 = [UIColor colorWithRed:0.6 green:0.6 blue:0.6 alpha:0.18];
    v10 = [v9 CGColor];
    v11 = [(UIView *)self->_currentReadingPositionView layer];
    [v11 setShadowColor:v10];

    v12 = [(UIView *)self->_currentReadingPositionView layer];
    [v12 setShadowRadius:4.0];

    [(UIView *)self->_currentReadingPositionView setUserInteractionEnabled:0];
    [(UIView *)self->_currentReadingPositionView setTranslatesAutoresizingMaskIntoConstraints:0];
    currentReadingPositionView = self->_currentReadingPositionView;
  }

  return currentReadingPositionView;
}

- (CGRect)scrubberContainerViewFrame
{
  v3 = [(BKPictureBookViewController *)self view];
  [v3 safeAreaInsets];
  v5 = v4;

  v6 = [(BKThumbnailBookViewController *)self isInterfaceRTL];
  v7 = [(BKPictureBookViewController *)self view];
  v8 = v7;
  if (v6)
  {
    [v7 safeAreaInsets];
    v10 = v9 + 8.0;
  }

  else
  {
    [v7 frame];
    Width = CGRectGetWidth(v21);
    v12 = [(BKPictureBookViewController *)self view];
    [v12 safeAreaInsets];
    v10 = Width - v13 + -40.0 + -8.0;
  }

  v14 = v5 + 8.0;
  v15 = [(BKPictureBookViewController *)self view];
  [v15 frame];
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
  v3 = [(BKPictureBookViewController *)self scrubberContainerView];
  v4 = *&CGAffineTransformIdentity.c;
  v68[0] = *&CGAffineTransformIdentity.a;
  v68[1] = v4;
  v68[2] = *&CGAffineTransformIdentity.tx;
  [v3 setTransform:v68];

  v5 = [(BKPictureBookViewController *)self scrubberContainerView];
  v6 = [v5 superview];

  if (!v6)
  {
    v7 = [(BKPictureBookViewController *)self view];
    v8 = [(BKPictureBookViewController *)self scrubberContainerView];
    [v7 addSubview:v8];

    v9 = [(BKPictureBookViewController *)self verticalScrubber];
    [v5 addSubview:v9];

    [(BKPictureBookViewController *)self scrubberContainerViewFrame];
    [v5 setFrame:?];
    [v5 bounds];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v18 = [(BKPictureBookViewController *)self verticalScrubber];
    [v18 setFrame:{v11, v13, v15, v17}];

    v19 = [(BKPictureBookViewController *)self currentReadingPositionView];
    [v19 frame];
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v27 = v26;

    LODWORD(v8) = [(BKThumbnailBookViewController *)self isInterfaceRTL];
    v28 = [(BKPictureBookViewController *)self verticalScrubber];
    [v28 frame];
    if (v8)
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

    v38 = [(BKPictureBookViewController *)self currentReadingPositionView];
    [v38 setFrame:{v37, 0.0, v25, v27}];

    v39 = [(BKPictureBookViewController *)self currentReadingPositionView];
    [v5 addSubview:v39];
  }

  [(BKPictureBookViewController *)self scrubberContainerViewFrame];
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v47 = v46;
  [v5 frame];
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
    [v5 setFrame:{v41, v43, v45, v47}];
    [v5 bounds];
    v53 = v52;
    v55 = v54;
    v57 = v56;
    v59 = v58;
    v60 = [(BKPictureBookViewController *)self verticalScrubber];
    [v60 setFrame:{v53, v55, v57, v59}];
  }

  v61 = [(BKPictureBookViewController *)self verticalScrubber];
  v62 = [v61 layer];
  [v62 removeAllAnimations];

  v63 = [(BKBookViewController *)self pageCountExcludingUpsell];
  v64 = [(BKPictureBookViewController *)self verticalScrubber];
  [v64 setPageCount:v63];

  v65 = [(BKBookViewController *)self currentPageNumber];
  v66 = [(BKPictureBookViewController *)self verticalScrubber];
  [v66 setPageNumber:v65];

  v67 = [(BKPictureBookViewController *)self verticalScrubber];
  [v67 setProgress:1.0];
}

- (BOOL)isVerticalScrubberVisible
{
  if (!self->super._verticalScrubber)
  {
    return 0;
  }

  v3 = [(UIView *)self->_scrubberContainerView superview];
  if (v3)
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

- (void)hideVerticalScrubberAndResetZoomScale:(BOOL)a3
{
  objc_opt_class();
  v5 = [(BKPictureBookViewController *)self pageNavigationViewController];
  v6 = BUDynamicCast();

  if (v6)
  {
    v7 = [(BKPictureBookViewController *)self verticalScrubberAnimator];
    v8 = [(BKThumbnailBookViewController *)self pageNumberHUD];
    [v8 layoutIfNeeded];

    [(BKThumbnailBookViewController *)self defaultPageNumberHUDWidthConstraintConstant];
    v10 = v9;
    v11 = [(BKThumbnailBookViewController *)self pageNumberHUDWidthConstraint];
    [v11 setConstant:v10];

    v12 = [(BKThumbnailBookViewController *)self pageNumberHUD];
    [v12 forceReflowText];

    v13 = [(BKThumbnailBookViewController *)self pageNumberHUD];
    [v13 setNeedsLayout];

    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_D954;
    v22[3] = &unk_1E2CD8;
    v25 = a3;
    v14 = v6;
    v23 = v14;
    v24 = self;
    [v7 addAnimations:v22];
    objc_initWeak(&location, self);
    v15 = _NSConcreteStackBlock;
    v16 = 3221225472;
    v17 = sub_DAB4;
    v18 = &unk_1E2D00;
    objc_copyWeak(&v20, &location);
    v19 = v14;
    [v7 addCompletion:&v15];
    [v7 startAnimation];

    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
  }
}

- (void)prepareForScrubberAnimation
{
  objc_opt_class();
  v3 = [(BKPictureBookViewController *)self pageNavigationViewController];
  v4 = BUDynamicCast();

  if (v4)
  {
    [(BKBookViewController *)self setControlsVisible:0];
    v5 = [(BKPictureBookViewController *)self pictureBookRenderingCacheIfLoaded];
    [v5 suspend];

    [(BKPictureBookViewController *)self setupVerticalScrubber];
    v6 = [v4 shouldDisplaySpread];
    v7 = [(BKPictureBookViewController *)self verticalScrubber];
    [v7 setShowSpreads:v6];

    CGAffineTransformMakeScale(&v14, 0.0, 0.0);
    v8 = [(BKPictureBookViewController *)self scrubberContainerView];
    v13 = v14;
    [v8 setTransform:&v13];

    v9 = [(BKThumbnailBookViewController *)self pageNumberHUD];
    v10 = *&CGAffineTransformIdentity.c;
    *&v13.a = *&CGAffineTransformIdentity.a;
    *&v13.c = v10;
    *&v13.tx = *&CGAffineTransformIdentity.tx;
    [v9 setTransform:&v13];

    v11 = [(BKPictureBookViewController *)self scrubberContainerView];
    [v11 setAlpha:1.0];

    if (!UIAccessibilityIsVoiceOverRunning() && !UIAccessibilityIsSwitchControlRunning())
    {
      [(BKPictureBookViewController *)self displayVerticalScrubberBackground];
    }

    [(BKPictureBookViewController *)self updateCurrentReadingPositionViewIfNeeded];
    [(UIView *)self->_currentReadingPositionView setAlpha:0.0];
    [v4 setAllowDoubleTapToZoom:0];
    [(BKBookViewController *)self pageViewControllersDidChange];
    v12 = [(BKThumbnailBookViewController *)self pageNumberHUD];
    [v12 layoutIfNeeded];
  }
}

- (void)edgePanGestureHandler:(id)a3
{
  v14 = a3;
  if ([v14 state] == &dword_0 + 1)
  {
    [(BKPictureBookViewController *)self prepareForScrubberAnimation];
  }

  else if ([v14 state] == &dword_0 + 2 || objc_msgSend(v14, "state") == &dword_0 + 3)
  {
    objc_opt_class();
    v4 = [(BKPictureBookViewController *)self pageNavigationViewController];
    v5 = BUDynamicCast();

    if (v5)
    {
      v6 = [(BKPictureBookViewController *)self view];
      [v14 locationInView:v6];
      v8 = v7;

      if (![(BKThumbnailBookViewController *)self isInterfaceRTL])
      {
        v9 = [(BKPictureBookViewController *)self view];
        [v9 bounds];
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

      v11 = [v14 state] == &dword_0 + 3;
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
  v3 = [(BKPictureBookViewController *)self pageNavigationViewController];
  v16 = BUDynamicCast();

  if (v12[5])
  {
    objc_initWeak(&location, self);
    v4 = [(BKPictureBookViewController *)self pictureBookRenderingCache];
    v5 = [v12[5] pageOffset];
    v6 = [(BKBookViewController *)self book];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_E0D0;
    v8[3] = &unk_1E2D28;
    objc_copyWeak(&v9, &location);
    v8[4] = &v11;
    v7 = [v4 generateMasterImageForPageNumber:v5 + 1 asset:v6 priority:0 callbackBlock:v8];

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }

  _Block_object_dispose(&v11, 8);
}

- (void)setupBackgroundImageViewWithImage:(id)a3
{
  v4 = a3;
  v5 = [UIView alloc];
  v6 = [(BKPictureBookViewController *)self view];
  [v6 bounds];
  v7 = [v5 initWithFrame:?];
  [(BKPictureBookViewController *)self setBackgroundImageView:v7];

  v8 = [UIImageView alloc];
  v9 = [(BKPictureBookViewController *)self backgroundImageView];
  [v9 bounds];
  v10 = [v8 initWithFrame:?];

  [v10 setImage:v4];
  CGAffineTransformMakeScale(&v29, 2.0, 2.0);
  v28 = v29;
  [v10 setTransform:&v28];
  v11 = [UIBlurEffect _effectWithBlurRadius:40.0 scale:1.3];
  v12 = [[UIVisualEffectView alloc] initWithEffect:v11];
  v13 = [(BKPictureBookViewController *)self backgroundImageView];
  [v13 bounds];
  [v12 setFrame:?];

  v14 = [UIView alloc];
  v15 = [(BKPictureBookViewController *)self backgroundImageView];
  [v15 bounds];
  v16 = [v14 initWithFrame:?];

  v17 = [UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.5];
  [v16 setBackgroundColor:v17];

  v18 = [CAFilter filterWithType:kCAFilterPlusD];
  v19 = [v16 layer];
  [v19 setCompositingFilter:v18];

  v20 = [UIView alloc];
  v21 = [(BKPictureBookViewController *)self backgroundImageView];
  [v21 bounds];
  v22 = [v20 initWithFrame:?];

  v23 = [UIColor colorWithDynamicProvider:&stru_1E2D68];
  [v22 setBackgroundColor:v23];

  v24 = [(BKPictureBookViewController *)self backgroundImageView];
  [v24 addSubview:v10];

  v25 = [(BKPictureBookViewController *)self backgroundImageView];
  [v25 addSubview:v12];

  v26 = [(BKPictureBookViewController *)self backgroundImageView];
  [v26 addSubview:v16];

  v27 = [(BKPictureBookViewController *)self backgroundImageView];
  [v27 addSubview:v22];
}

- (void)animateVerticalScrubberIn:(double)a3 animated:(BOOL)a4
{
  v4 = a4;
  objc_opt_class();
  v7 = [(BKPictureBookViewController *)self pageNavigationViewController];
  v8 = BUDynamicCast();

  if (!v8)
  {
    sub_136A84();
    goto LABEL_30;
  }

  v9 = [v8 scrollView];
  [v9 bounds];
  v11 = v10;
  [v8 pageSize];
  v13 = v12;
  if ([v8 shouldDisplaySpread])
  {
    v13 = v13 + v13;
  }

  v14 = [(BKThumbnailBookViewController *)self isInterfaceRTL];
  v15 = (v11 - v13) * 0.5;
  v16 = [(BKPictureBookViewController *)self view];
  [v16 safeAreaInsets];
  v18 = v17;
  v20 = v19;

  if (v14)
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
    [v9 zoomScale];
    v23 = fabs(v24 + -1.0) >= 0.00999999978;
  }

  else
  {
    v23 = 1;
  }

  if (a3 >= 1.0)
  {
    v25 = [(BKPictureBookViewController *)self pictureBookRenderingCacheIfLoaded];
    [v25 resume];

    [(BKPictureBookViewController *)self setSwipeToShowScrubberEnable:0];
    a3 = 1.0;
    goto LABEL_14;
  }

  if (a3 <= 1.0)
  {
LABEL_14:
    v26 = [(BKThumbnailBookViewController *)self topToolbar];
    [v26 alpha];
    if (v27 == 0.0)
    {
      v28 = [(BKPictureBookViewController *)self view];
      [v28 safeAreaInsets];
    }

    else
    {
      v28 = [(BKThumbnailBookViewController *)self topToolbar];
      [v28 frame];
      MaxY = CGRectGetMaxY(v88);
    }

    v30 = MaxY;

    [v9 contentOffset];
    v32 = v31;
    [v9 bounds];
    v34 = v32 + v33 * 0.5;
    [v9 contentSize];
    v36 = v34 / v35;
    [v9 bounds];
    v38 = v30 * 0.5 + v36 * v37;
    v39 = [(BKPictureBookViewController *)self scrubberContainerView];
    [v39 center];
    v41 = v40 - v38;

    v67 = *&CGAffineTransformIdentity.c;
    v68 = *&CGAffineTransformIdentity.a;
    *&v87.a = *&CGAffineTransformIdentity.a;
    *&v87.c = v67;
    v66 = *&CGAffineTransformIdentity.tx;
    *&v87.tx = v66;
    if ([(BKThumbnailBookViewController *)self isInterfaceRTL])
    {
      v42 = [(BKPictureBookViewController *)self scrubberContainerView];
      [v42 center];
      v44 = -v43;
    }

    else
    {
      v42 = [(BKPictureBookViewController *)self view];
      [v42 frame];
      Width = CGRectGetWidth(v89);
      v46 = [(BKPictureBookViewController *)self scrubberContainerView];
      [v46 center];
      v44 = Width - v47;
    }

    *&v86.a = v68;
    *&v86.c = v67;
    *&v86.tx = v66;
    CGAffineTransformTranslate(&v87, &v86, (1.0 - a3) * v44, -((1.0 - a3) * v41));
    v85 = v87;
    CGAffineTransformScale(&v86, &v85, a3, a3);
    v87 = v86;
    memset(&v86.c, 0, 32);
    if (v14)
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
    CGAffineTransformTranslate(&v86, &v85, v48 * a3, 0.0);
    v49 = [(BKPictureBookViewController *)self view];
    [v49 frame];
    v50 = 56.0 - v22;
    v51 = CGRectGetWidth(v90) - (56.0 - v22);

    v52 = [v8 view];
    [v52 frame];
    v53 = v51 / CGRectGetWidth(v91);

    *&v84.a = v68;
    *&v84.c = v67;
    *&v84.tx = v66;
    memset(&v85, 0, sizeof(v85));
    CGAffineTransformTranslate(&v85, &v84, v50 * a3, 0.0);
    [(BKThumbnailBookViewController *)self defaultPageNumberHUDWidthConstraintConstant];
    v55 = v54 + a3 * -56.0;
    v73[0] = _NSConcreteStackBlock;
    v73[1] = 3221225472;
    v73[2] = sub_EB9C;
    v73[3] = &unk_1E2D90;
    v82 = v23;
    v56 = v8;
    v77 = v85;
    v79 = v87;
    v81 = v86;
    v83 = v14;
    v74 = v56;
    v75 = self;
    v76 = 1.0 - (1.0 - v53) * a3;
    v78 = v55;
    v80 = a3;
    v57 = objc_retainBlock(v73);
    objc_initWeak(&v84, self);
    v71[0] = _NSConcreteStackBlock;
    v71[1] = 3221225472;
    v71[2] = sub_ECFC;
    v71[3] = &unk_1E2DB8;
    objc_copyWeak(v72, &v84);
    v71[4] = self;
    v72[1] = *&a3;
    v72[2] = *&v55;
    v58 = objc_retainBlock(v71);
    if (v4)
    {
      v59 = [(BKPictureBookViewController *)self verticalScrubberAnimator];
      [v59 addAnimations:v57];

      v60 = [(BKPictureBookViewController *)self verticalScrubberAnimator];
      [v60 addCompletion:v58];

      v61 = [(BKPictureBookViewController *)self verticalScrubberAnimator];
      v69[0] = _NSConcreteStackBlock;
      v69[1] = 3221225472;
      v69[2] = sub_EDA8;
      v69[3] = &unk_1E2DE0;
      objc_copyWeak(&v70, &v84);
      [v61 addCompletion:v69];

      v62 = [(BKPictureBookViewController *)self verticalScrubberAnimator];
      [v62 startAnimation];

      objc_destroyWeak(&v70);
    }

    else
    {
      (v57[2])(v57);
      (v58[2])(v58, 0);
    }

    v63 = [(BKPictureBookViewController *)self verticalScrubberAnimator];
    v64 = [v63 state];

    if (v64 != &dword_0 + 1)
    {
      v65 = [(BKPictureBookViewController *)self verticalScrubberAnimator];
      [v65 startAnimation];
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
    v3 = [(BKPictureBookViewController *)self verticalScrubber];
    [v3 thumbRect];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;

    v12 = [(BKPictureBookViewController *)self scrubberContainerView];
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
    v15 = [(BKPictureBookViewController *)self verticalScrubber];
    [v12 convertPoint:v15 fromView:{MidX, MidY}];
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
  v4 = [(BKThumbnailBookViewController *)self topToolbar];
  [v4 setBarTintColor:v3];

  v12 = NSForegroundColorAttributeName;
  v5 = +[UIColor bc_booksLabelColor];
  v13 = v5;
  v6 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  v7 = [(BKThumbnailBookViewController *)self topToolbar];
  [v7 setTitleTextAttributes:v6];

  v8 = +[UIColor bc_booksLabelColor];
  v9 = [(BKThumbnailBookViewController *)self topToolbar];
  [v9 setTintColor:v8];

  v10 = [(BKThumbnailBookViewController *)self pageNumberHUD];
  [v10 setDelegate:self];

  [(BKPictureBookViewController *)self updatePageNumberHUD];
}

- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v22.receiver = self;
  v22.super_class = BKPictureBookViewController;
  [(BKThumbnailBookViewController *)&v22 viewDidMoveToWindow:v6 shouldAppearOrDisappear:v4];
  if (v6 && self->super._imageCache)
  {
    v7 = [(BKPictureBookViewController *)self _thumbnailBookViewConfiguration];
    v8 = [(BKBookViewController *)self book];
    v9 = [(BKBookViewController *)self book];
    v10 = [v9 firstDocument];
    [v10 fixedLayoutSize];
    v12 = v11;
    v14 = v13;
    v15 = [v8 hidesSpine];
    [v6 bounds];
    v20 = [BKPictureBookViewGeometry geometryWithContentSize:v7 configuration:v15 ^ 1 drawsSpine:v12 containerBounds:v14, v16, v17, v18, v19];

    v21 = [(BKPictureBookViewController *)self pictureBookRenderingCache];
    [v21 setLayoutGeometry:v20];
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = BKPictureBookViewController;
  [(BKBookViewController *)&v4 viewDidAppear:a3];
  [(BKPictureBookViewController *)self generateSnapshotsForCurrentPages];
  [(BKPictureBookViewController *)self generateRenderingPiggyBackForAllPages];
  [(BKPictureBookViewController *)self _prewarmThumbnailsForVerticalScrubber];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  [(BKPictureBookViewController *)self _cancelCachingAndCleanupSnapshotWebViews];
  v5.receiver = self;
  v5.super_class = BKPictureBookViewController;
  [(BKThumbnailBookViewController *)&v5 viewWillDisappear:v3];
}

- (void)_cancelCachingAndCleanupSnapshotWebViews
{
  objc_opt_class();
  v3 = BUDynamicCast();
  v4 = [v3 renderingPiggyBack];
  [v4 invalidate];

  imageCache = self->super._imageCache;
  thumbnailContext = self->_thumbnailContext;

  [(IMThumbnailRenderingCache *)imageCache cancelRenderingCacheOperationsForTarget:0 context:thumbnailContext];
}

- (id)pictureBookRenderingCache
{
  if (!self->super._imageCache)
  {
    v3 = [(BKBookViewController *)self book];

    if (v3)
    {
      v4 = [(BKPictureBookViewController *)self _thumbnailBookViewConfiguration];
      v5 = [(BKBookViewController *)self book];
      v6 = [AEPictureBookRenderingCache alloc];
      v7 = [v5 databaseKey];
      v8 = [(AEPictureBookRenderingCache *)v6 initWithIdentifier:v7 configuration:v4 webViewBuilder:self];

      [(AEPictureBookRenderingCache *)v8 setUpsellPageNumber:[(BKBookViewController *)self upsellPageNumber]];
      objc_storeStrong(&self->super._imageCache, v8);
      v9 = [BKPictureBookReadingStatisticsCollector readingStatisticsCollectorWithAssetViewController:self];
      v10 = [(BKBookViewController *)self book];
      [v9 setupWithBookInfo:v10];

      [(AEPictureBookRenderingCache *)v8 setRenderingPiggyBack:v9];
      v11 = [(AEPictureBookRenderingCache *)v8 persistentCachePath];
      v12 = [(BKBookViewController *)self book];
      v13 = [v12 persistentCachePath];
      v14 = [v11 isEqualToString:v13];

      if ((v14 & 1) == 0)
      {
        v15 = [(BKBookViewController *)self book];
        [v15 resetPersistentCache];

        v16 = [(BKBookViewController *)self book];
        v17 = [(AEPictureBookRenderingCache *)v8 persistentCachePath];
        [v16 setPersistentCachePath:v17];

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
  v3 = [(BKBookViewController *)self book];
  v4 = [v3 fixedLayoutFlow];
  if ([v4 isEqualToString:@"scrolled-continuous"])
  {
    v5 = 1;
  }

  else
  {
    v6 = [(BKBookViewController *)self book];
    v7 = [v6 fixedLayoutFlow];
    v5 = [v7 isEqualToString:@"scrolled-doc"];
  }

  return v5;
}

- (BOOL)_bookRenditionFlowIsScrolledContinuous
{
  v2 = [(BKBookViewController *)self book];
  v3 = [v2 fixedLayoutFlow];
  v4 = [v3 isEqualToString:@"scrolled-continuous"];

  return v4;
}

- (unint64_t)defaultLayoutToUse
{
  if ([(BKPictureBookViewController *)self _bookRenditionFlowIsScrolled])
  {
    v3 = [(BKBookViewController *)self book];
    v4 = [(BKThumbnailBookViewController *)self scrollLayoutForBook:v3];

    return v4;
  }

  else
  {

    return [(BKBookViewController *)self lastLayoutUsed];
  }
}

- (BOOL)showSpreads
{
  v2 = [(BKBookViewController *)self book];
  v3 = [v2 fixedLayoutSpread];
  v4 = [v3 isEqualToString:@"none"];

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
        v9 = [(BKBookViewController *)self book];
        v10 = [v9 firstDocument];
        [v10 fixedLayoutSize];
        [(BKPictureBookNavigationController *)v8 setContentSize:?];

        v11 = [(BKBookViewController *)self book];
        -[BKPictureBookNavigationController setDrawsSpine:](v8, "setDrawsSpine:", [v11 hidesSpine] ^ 1);

        v12 = [(BKBookViewController *)self book];
        -[BKPictureBookNavigationController setOpenToSpread:](v8, "setOpenToSpread:", [v12 openToSpread]);

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
      v5 = [(BKBookViewController *)self book];
      [(BKPictureBookVerticalNavigationController *)v4 setBook:v5];

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

- (void)setLayout:(unint64_t)a3
{
  v31.receiver = self;
  v31.super_class = BKPictureBookViewController;
  [(BKThumbnailBookViewController *)&v31 setLayout:a3];
  [(BKPictureBookViewController *)self hideVerticalScrubber];
  [(BKThumbnailBookViewController *)self updateBottomToolbar:1];
  [(BKPictureBookViewController *)self updatePageNumberHUD];
  [(BKBookViewController *)self clearSearchResult];
  v4 = [(BKPageNavigationViewController *)self->super.super._pageNavigationViewController view];
  v5 = [v4 superview];

  v6 = [(BKPageNavigationViewController *)self->super.super._pageNavigationViewController view];
  [v6 removeFromSuperview];

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v7 = [(BKPageNavigationViewController *)self->super.super._pageNavigationViewController childViewControllers];
  v8 = [v7 countByEnumeratingWithState:&v27 objects:v32 count:16];
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
          objc_enumerationMutation(v7);
        }

        [*(*(&v27 + 1) + 8 * v11) removeFromParentViewController];
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v9);
  }

  [(BKPageNavigationViewController *)self->super.super._pageNavigationViewController removeFromParentViewController];
  pageNavigationViewController = self->super.super._pageNavigationViewController;
  self->super.super._pageNavigationViewController = 0;

  v13 = [(BKPictureBookViewController *)self pageNavigationViewController];
  v14 = [(BKPictureBookViewController *)self view];
  [v14 bounds];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v23 = [v13 view];
  [v23 setFrame:{v16, v18, v20, v22}];

  v24 = [v13 view];
  [v5 insertSubview:v24 aboveSubview:self->super._backgroundView];

  v25 = [NSNumber numberWithUnsignedInteger:[(BKBookViewController *)self layout]];
  [(BKPictureBookViewController *)self _updateWebProcessPluginObject:v25 withParameter:@"BEWebProcessPluginLayoutModeParameterKey"];

  v26 = [(BKThumbnailBookViewController *)self pageNumberHUD];
  [v26 setNeedsUpdateConstraints];
}

- (void)updatePageNumberHUD
{
  layout = self->super.super._layout;
  v4 = [(BKThumbnailBookViewController *)self pageNumberHUD];
  v5 = v4;
  if (layout == 2)
  {
    v6 = @"sidebar.trailing";
  }

  else
  {
    v6 = 0;
  }

  [v4 setIconSymbol:v6];

  v7 = [(BKThumbnailBookViewController *)self pageNumberHUD];
  [v7 setUserInteractionEnabled:layout == 2];
}

- (BOOL)savedLocationIsEndOfBook
{
  v3 = [(BKBookViewController *)self book];
  v4 = [v3 linearDocuments];

  v5 = [v4 count];
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

  v7 = [v4 objectAtIndex:&v5[v6]];
  if (!v7)
  {
    goto LABEL_7;
  }

  v8 = v7;
  v9 = [(BKBookViewController *)self book];
  v10 = [v9 readingLocation];
  v11 = [v10 ordinal];
  v12 = [v8 documentOrdinal];
  v13 = v11 >= [v12 intValue];

LABEL_8:
  return v13;
}

- (void)appearanceViewController:(id)a3 didChangeLayout:(unint64_t)a4
{
  v6 = a3;
  [(BKPictureBookViewController *)self _cancelCachingAndCleanupSnapshotWebViews];
  v7.receiver = self;
  v7.super_class = BKPictureBookViewController;
  [(BKThumbnailBookViewController *)&v7 appearanceViewController:v6 didChangeLayout:a4];
}

- (void)setLocation:(id)a3
{
  v4 = a3;
  v5 = _AECaptureLocationLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [NSString stringWithUTF8String:"[BKPictureBookViewController setLocation:]"];
    *buf = 138412546;
    v33 = v6;
    v34 = 2112;
    v35 = v4;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "#PictureBookVC %@: %@", buf, 0x16u);
  }

  v31.receiver = self;
  v31.super_class = BKPictureBookViewController;
  [(BKBookViewController *)&v31 setLocation:v4];
  v7 = [(BKPictureBookViewController *)self viewIfLoaded];
  v8 = [v7 window];
  v9 = [v8 windowScene];
  v10 = [v9 activationState];

  if (v10)
  {
    v11 = _AEBookPluginsLifeCycleLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [(BKBookViewController *)self book];
      v13 = [v12 assetLogID];
      *buf = 138543362;
      v33 = v13;
      v14 = "Setting Location when scene state is not foregroundActive. Bailing out. logID:%{public}@";
      v15 = v11;
      v16 = 12;
LABEL_6:
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, v14, buf, v16);
    }
  }

  else
  {
    v17 = [(BKPictureBookViewController *)self viewIfLoaded];

    if (!v17)
    {
      v11 = _AEBookPluginsLifeCycleLog();
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_18;
      }

      v12 = [(BKBookViewController *)self book];
      v13 = [v12 assetLogID];
      *buf = 138543618;
      v33 = v4;
      v34 = 2114;
      v35 = v13;
      v14 = "Bailing out on attempt to set location when our view is not loaded. Location:%{public}@ logID:%{public}@ ";
      v15 = v11;
      v16 = 22;
      goto LABEL_6;
    }

    objc_opt_class();
    v18 = [(BKBookViewController *)self location];
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

      v22 = [(BKPictureBookViewController *)self pageNavigationViewController];
      v23 = [v11 ordinal];
      v24 = &v23[[v11 pageOffset]];
      v25 = v22;
    }

    else
    {
      if (v20)
      {
        *buf = 0;
        _os_log_impl(&dword_0, v19, OS_LOG_TYPE_DEFAULT, "#PictureBookVC 2 Setting Offset 0", buf, 2u);
      }

      v25 = [(BKPictureBookViewController *)self pageNavigationViewController];
      v22 = v25;
      v24 = 0;
    }

    [v25 setPageOffset:v24];

    [(BKPictureBookViewController *)self updateCurrentReadingPositionViewIfNeeded];
    v26 = [(BKPictureBookViewController *)self currentPages];
    v28 = [NSNumber numberWithUnsignedInteger:v27];
    [(BKPictureBookViewController *)self _updateWebProcessPluginObject:v28 withParameter:@"BEWebProcessPluginCurrentPageLengthParameterKey"];

    v29 = [NSNumber numberWithUnsignedInteger:v26];
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

- (void)didChangeLocationClosing:(BOOL)a3 suspending:(BOOL)a4
{
  v5.receiver = self;
  v5.super_class = BKPictureBookViewController;
  [(BKThumbnailBookViewController *)&v5 didChangeLocationClosing:a3 suspending:a4];
  if ([(BKPictureBookViewController *)self isVisible])
  {
    [(BKPictureBookViewController *)self generateSnapshotsForCurrentPages];
  }
}

- (id)pageLocationForPageNumber:(int64_t)a3
{
  v11.receiver = self;
  v11.super_class = BKPictureBookViewController;
  v4 = [(BKBookViewController *)&v11 pageLocationForPageNumber:?];
  v5 = v4;
  if (a3 != 0x7FFFFFFFFFFFFFFFLL && !v4)
  {
    v6 = [BKPageLocation alloc];
    if (a3)
    {
      v7 = a3 - 1;
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
    v9 = [NSNumber numberWithInteger:a3];
    *buf = 138412546;
    v13 = v5;
    v14 = 2112;
    v15 = v9;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "#PictureBookVC returning pageLocation:%@ for pageNumber:%@", buf, 0x16u);
  }

  return v5;
}

- (void)setPageCountIncludingUpsell:(int64_t)a3
{
  v7.receiver = self;
  v7.super_class = BKPictureBookViewController;
  [(BKBookViewController *)&v7 setPageCountIncludingUpsell:?];
  v5 = [(BKPictureBookViewController *)self pictureBookRenderingCacheIfLoaded];
  [v5 setUpsellPageNumber:{-[BKBookViewController upsellPageNumber](self, "upsellPageNumber")}];

  v6 = [NSNumber numberWithInteger:a3];
  [(BKPictureBookViewController *)self _updateWebProcessPluginObject:v6 withParameter:@"BEWebProcessPluginPageCountParameterKey"];
}

- (int64_t)calculatePageCountExcludingUpsell
{
  v7.receiver = self;
  v7.super_class = BKPictureBookViewController;
  v3 = [(BKBookViewController *)&v7 calculatePageCountExcludingUpsell];
  if (v3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = [(BKBookViewController *)self book];

    if (v4)
    {
      v5 = [(BKBookViewController *)self book];
      v3 = [v5 linearDocumentCount];
    }

    else
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  return v3;
}

- (void)setBook:(id)a3
{
  v9.receiver = self;
  v9.super_class = BKPictureBookViewController;
  [(BKBookViewController *)&v9 setBook:?];
  if (a3)
  {
    [(BKBookViewController *)self createPaginationControllerIfNeeded:1];
  }

  if (![(BKPictureBookViewController *)self showSpreads])
  {
    v5 = [(BKBookViewController *)self paginationController];
    v6 = [v5 layoutQueue];
    [v6 waitUntilAllOperationsAreFinished];

    v7 = [(BKBookViewController *)self paginationController];
    v8 = [v7 resultsQueue];
    [v8 waitUntilAllOperationsAreFinished];
  }
}

- (void)transitionDidFinish:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = BKPictureBookViewController;
  [(BKBookViewController *)&v7 transitionDidFinish:?];
  objc_opt_class();
  v5 = [(BKPictureBookViewController *)self pageNavigationViewController];
  v6 = BUDynamicCast();

  [v6 transitionDidFinish:v3];
}

- (void)jumpToLocation:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  v10 = [(BKBookViewController *)self paginationController];

  if (v10)
  {
    [(BKBookViewController *)self clearSelection];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v8;
      v12 = [v11 ordinal];
      v13 = [v11 pageOffset];

      v14 = &v13[v12 + 1];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v14 = [v8 ordinal] + 1;
      }

      else
      {
        v15 = [(BKBookViewController *)self paginationController];
        v14 = [v15 pageNumberForLocation:v8];
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
      v21 = v8;
      v22 = 2112;
      v23 = v17;
      _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "#PictureBookVC jumpToLocation:%@ pageNumber:%@", &v20, 0x16u);
    }

    [(BKThumbnailBookViewController *)self turnToPageNumber:v14 animated:v6];
  }

  v18 = objc_retainBlock(v9);
  v19 = v18;
  if (v18)
  {
    (*(v18 + 2))(v18);
  }
}

- (void)contentViewReady:(id)a3
{
  v3.receiver = self;
  v3.super_class = BKPictureBookViewController;
  [(BKThumbnailBookViewController *)&v3 contentViewReady:a3];
}

- (id)_stylesheetSetForSnapshot:(id)a3
{
  v3 = +[ContentViewStyleManager getPictureBookUserStyleSheetWithLegacyBook:](ContentViewStyleManager, "getPictureBookUserStyleSheetWithLegacyBook:", [a3 shouldDisableOptimizeSpeed] ^ 1);
  v4 = [BEWebViewFactoryStylesheetSet alloc];
  v8 = v3;
  v5 = [NSArray arrayWithObjects:&v8 count:1];
  v6 = [v4 initWithMainframeOnlyStylesheets:v5];

  return v6;
}

- (void)finishedSnapshottingForCache:(id)a3
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

- (id)webViewForSnapshotting:(id)a3 size:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v7 = a3;
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

    [v7 fixedLayoutSize];
    [BEWebViewFactory updateFixedLayoutWebView:v9 fixedLayoutSize:?];
  }

  else
  {
    v10 = [v7 bookLanguage];
    v11 = [BEContentCleanupJSOptions fixedLayoutOptionsWithLanguage:v10];

    v12 = [BECFIUtilitiesJSOptions cfiUtilitiesJSOptionsForBookInfoSnapshot:v7 ordinal:0];
    v13 = [BEWebViewFactoryPaginationOptions paginationOptionsForBookInfoSnapshot:v7 withConfiguration:0 contentLayoutSize:width, height];
    [v7 fixedLayoutSize];
    v15 = v14;
    v17 = v16;
    v18 = [v7 cacheItem];
    v19 = [(BKPictureBookViewController *)self _stylesheetSetForSnapshot:v7];
    v9 = [BEWebViewFactory viewConfiguredForPictureBooks:v18 fixedLayoutSize:v13 protocolCacheItem:v11 paginationOptions:v12 cleanupOptions:v19 cfiOptions:0.0 stylesheetSet:0.0, width, height, v15, v17];

    [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v9 setAutoresizingMask:0];
    v20 = [(BKPictureBookViewController *)self view];
    [v20 insertSubview:v9 atIndex:0];

    objc_storeWeak(&self->_snapshotWebView, v9);
  }

  return v9;
}

- (void)setControlsVisible:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  if (a3)
  {
    [(BKPictureBookViewController *)self hideVerticalScrubber];
  }

  v7.receiver = self;
  v7.super_class = BKPictureBookViewController;
  [(BKBookViewController *)&v7 setControlsVisible:v5 animated:v4];
}

- (void)bkaxToggleControls:(id)a3
{
  v4 = a3;
  [(BKBookViewController *)self setBkaxAccessibilityUserIsRequestingControlsVisibilityToggle:1];
  [(BKThumbnailBookViewController *)self toggleControls:v4];

  [(BKBookViewController *)self setBkaxAccessibilityUserIsRequestingControlsVisibilityToggle:0];
  v5 = dispatch_time(0, 500000000);

  dispatch_after(v5, &_dispatch_main_q, &stru_1E2E28);
}

- (void)presentAppearanceViewControllerFromItem:(id)a3
{
  v4 = a3;
  if ([(BKPictureBookViewController *)self isVerticalScrubberVisible])
  {
    [(BKPictureBookViewController *)self hideVerticalScrubber];
  }

  v5.receiver = self;
  v5.super_class = BKPictureBookViewController;
  [(BKBookViewController *)&v5 presentAppearanceViewControllerFromItem:v4];
}

- (void)setSection:(int)a3 animated:(BOOL)a4 adjustScrollToReveal:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v7 = *&a3;
  if (self->super.super._section != a3)
  {
    [(BKPictureBookViewController *)self _cancelCachingAndCleanupSnapshotWebViews];
    if (v7 == 1)
    {
      [(BKPictureBookViewController *)self hideVerticalScrubber];
    }
  }

  v9.receiver = self;
  v9.super_class = BKPictureBookViewController;
  [(BKThumbnailBookViewController *)&v9 setSection:v7 animated:v6 adjustScrollToReveal:v5];
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

  v3 = [(BKThumbnailBookViewController *)self directoryController];
  v4 = [v3 selectedIndex] != &dword_0 + 1;

  return v4;
}

- (BOOL)blurSnapshotDuringLiveResize
{
  if ([(BKBookViewController *)self section]!= 1)
  {
    return 0;
  }

  v3 = [(BKThumbnailBookViewController *)self directoryController];
  v4 = [v3 selectedIndex] != &dword_0 + 1;

  return v4;
}

- (BOOL)animateLiveResizeTransitions
{
  if ([(BKBookViewController *)self section]!= 1)
  {
    return 0;
  }

  v3 = [(BKThumbnailBookViewController *)self directoryController];
  v4 = [v3 selectedIndex] != &dword_0 + 1;

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

  v3 = [(BKThumbnailBookViewController *)self directoryController];
  v4 = [v3 selectedIndex] == &dword_0 + 1;

  return v4;
}

- (void)assetViewControllerDidEndLiveResize
{
  v15.receiver = self;
  v15.super_class = BKPictureBookViewController;
  [(BKThumbnailBookViewController *)&v15 assetViewControllerDidEndLiveResize];
  v3 = [(BKPictureBookViewController *)self pageNavigationViewController];
  v4 = [(BKPictureBookViewController *)self view];
  [v4 bounds];
  [v3 adjustToNewSize:{v5, v6}];

  if ([(BKBookViewController *)self section]== 1)
  {
    v7 = [(BKThumbnailBookViewController *)self directoryController];
    v8 = [v7 selectedViewController];

    objc_opt_class();
    v9 = BUDynamicCast();
    v10 = [(BKPictureBookViewController *)self view];
    [v10 bounds];
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
    v3 = [(BKThumbnailBookViewController *)self directoryTOCViewControllerView];
  }

  else
  {
    v4 = [(BKPictureBookViewController *)self pageNavigationViewController];
    v3 = [v4 viewForLiveResize];
  }

  return v3;
}

- (BOOL)dismissShouldBegin:(id)a3
{
  v4 = a3;
  if (-[BKPictureBookViewController isVerticalScrubberVisible](self, "isVerticalScrubberVisible") || ([v4 velocity], v6 = v5, objc_msgSend(v4, "velocity"), v6 >= v7))
  {
    v8 = 0;
  }

  else
  {
    v8 = [v4 proposedBeginState];
  }

  return v8;
}

- (void)assetViewControllerWillEnterForeground
{
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = [(BKBookViewController *)self contentViewControllers:0];
  v3 = [v2 allValues];

  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v3);
        }

        objc_opt_class();
        v8 = BUDynamicCast();
        v9 = [v8 webView2];
        v10 = [v9 be_requiresReload];

        if (v10)
        {
          v11 = [v8 webView2];
          v12 = [v11 be_navigationHandler];
          [v12 attemptReload];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }
}

- (void)updateScrubberUsingTouchbar:(double)a3
{
  v4 = [(BKBookViewController *)self pageNumberForTouchBarPosition:a3];
  v5 = [(BKPictureBookViewController *)self currentScrubber];
  [v5 setPageNumber:v4];

  [(BKPictureBookViewController *)self layoutScrubberCallout:0];
}

- (void)touchBarScrollerDidStart:(double)a3
{
  v7.receiver = self;
  v7.super_class = BKPictureBookViewController;
  [(BKBookViewController *)&v7 touchBarScrollerDidStart:?];
  [(BKBookViewController *)self setControlsVisible:1];
  [(BKPictureBookViewController *)self updateScrubberUsingTouchbar:a3];
  v5 = [(BKPictureBookViewController *)self currentScrubber];
  v6 = [v5 callout];
  [v6 setAlpha:1.0];
}

- (void)touchBarScrollerDidScroll:(double)a3
{
  v5.receiver = self;
  v5.super_class = BKPictureBookViewController;
  [(BKBookViewController *)&v5 touchBarScrollerDidScroll:?];
  [(BKPictureBookViewController *)self updateScrubberUsingTouchbar:a3];
}

- (void)touchBarScrollerDidEnd:(double)a3 completion:(id)a4
{
  v7.receiver = self;
  v7.super_class = BKPictureBookViewController;
  [(BKBookViewController *)&v7 touchBarScrollerDidEnd:a4 completion:a3];
  [(BKBookViewController *)self setControlsVisible:0];
  v5 = [(BKPictureBookViewController *)self currentScrubber];
  v6 = [v5 callout];
  [v6 setAlpha:0.0];
}

- (void)infoHUDTapped:(id)a3
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
    v6 = [(BKPictureBookViewController *)self verticalScrubber];
    UIAccessibilityPostNotification(v5, v6);

    v4 = @"Page chooser";
  }

  v7 = UIAccessibilityAnnouncementNotification;
  v9 = AEBundle();
  v8 = [v9 localizedStringForKey:v4 value:&stru_1E7188 table:0];
  UIAccessibilityPostNotification(v7, v8);
}

- (BOOL)isSpread
{
  v3 = [(BKPictureBookViewController *)self pageNavigationViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  objc_opt_class();
  v5 = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    objc_opt_class();
    v6 = [(BKPictureBookViewController *)self pageNavigationViewController];
    v7 = BUDynamicCast();

    v8 = [v7 isZoomedToSpread];
  }

  else
  {
    if ((v5 & 1) == 0)
    {
      v10 = 0;
      goto LABEL_7;
    }

    objc_opt_class();
    v9 = [(BKPictureBookViewController *)self pageNavigationViewController];
    v7 = BUDynamicCast();

    v8 = [v7 shouldDisplaySpread];
  }

  v10 = v8;

LABEL_7:
  return v10;
}

- (void)books_pageRight:(id)a3
{
  v3 = [(BKPictureBookViewController *)self pageNavigationViewController];
  [v3 turnToNextPage];
}

- (void)books_pageLeft:(id)a3
{
  v3 = [(BKPictureBookViewController *)self pageNavigationViewController];
  [v3 turnToPreviousPage];
}

- (void)books_pageForward:(id)a3
{
  v4 = a3;
  if ([(BKBookViewController *)self isPageProgressionRTL])
  {
    [(BKPictureBookViewController *)self books_pageLeft:v4];
  }

  else
  {
    [(BKPictureBookViewController *)self books_pageRight:v4];
  }
}

- (void)books_pageBackward:(id)a3
{
  v4 = a3;
  if ([(BKBookViewController *)self isPageProgressionRTL])
  {
    [(BKPictureBookViewController *)self books_pageRight:v4];
  }

  else
  {
    [(BKPictureBookViewController *)self books_pageLeft:v4];
  }
}

- (void)turnToNextChapter
{
  v3 = [(BKPictureBookViewController *)self currentPages];
  v5 = [(BKBookViewController *)self pageNumberFromRange:v3, v4];
  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = v5;
    v7 = [(BKBookViewController *)self paginationController];
    v8 = [v7 numberOfChapters];

    if (v8)
    {
      if ([(BKPictureBookViewController *)self isSpread])
      {
        v9 = [(BKBookViewController *)self paginationController];
        v10 = [v9 pageTotal];

        if (v6 < v10)
        {
          ++v6;
        }
      }

      v11 = [(BKBookViewController *)self paginationController];
      v12 = [v11 chapterIndexForPageNumber:v6];

      if (v12 == 0x7FFFFFFFFFFFFFFFLL || v12 >= v8)
      {
        if (v12 != 0x7FFFFFFFFFFFFFFFLL)
        {
          return;
        }

        v15 = [(BKBookViewController *)self paginationController];
        v14 = [v15 pageRangeForChapterAtIndex:0];

        if (v6 >= v14)
        {
          return;
        }
      }

      else
      {
        v13 = [(BKBookViewController *)self paginationController];
        v14 = [v13 pageRangeForChapterAtIndex:v12 + 1];
      }

      [(BKThumbnailBookViewController *)self turnToPageNumber:v14 animated:1];
    }
  }
}

- (void)turnToPreviousChapter
{
  v3 = [(BKPictureBookViewController *)self currentPages];
  v5 = [(BKBookViewController *)self pageNumberFromRange:v3, v4];
  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = v5;
    v7 = [(BKBookViewController *)self paginationController];
    v8 = [v7 numberOfChapters];

    if (v8)
    {
      v9 = [(BKBookViewController *)self paginationController];
      v10 = [v9 chapterIndexForPageNumber:v6 getFirstChapter:1];

      v11 = [(BKBookViewController *)self paginationController];
      v12 = v11;
      if (v10)
      {
        if (v10 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v13 = [v11 pageRangeForChapterAtIndex:0];

          if (v6 >= v13)
          {
            return;
          }

          v14 = &dword_0 + 1;
        }

        else
        {
          v14 = [v11 pageRangeForChapterAtIndex:v10 - 1];
        }
      }

      else
      {
        v15 = [v11 pageRangeForChapterAtIndex:0];

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

- (void)contentViewController:(id)a3 navigatePageDirection:(id)a4
{
  v9 = a4;
  if ([v9 isEqualToString:@"nextChapter"])
  {
    v5 = [(BKPictureBookViewController *)self pageNavigationViewController];
    v6 = [(BKPictureBookViewController *)self currentPages];
    [(BKPictureBookViewController *)self currentPages];
    v8 = &v6[v7];
LABEL_5:
    [v5 turnToPageNumber:v8 animated:1];
LABEL_6:

    goto LABEL_7;
  }

  if ([v9 isEqualToString:@"previousChapter"])
  {
    v5 = [(BKPictureBookViewController *)self pageNavigationViewController];
    v8 = [(BKPictureBookViewController *)self currentPages]- 1;
    goto LABEL_5;
  }

  if ([v9 isEqualToString:@"next"])
  {
    v5 = [(BKPictureBookViewController *)self pageNavigationViewController];
    if ([(BKBookViewController *)self isPageProgressionRTL])
    {
LABEL_12:
      [v5 turnToPreviousPage];
      goto LABEL_6;
    }

LABEL_15:
    [v5 turnToNextPage];
    goto LABEL_6;
  }

  if ([v9 isEqualToString:@"previous"])
  {
    v5 = [(BKPictureBookViewController *)self pageNavigationViewController];
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
  v3 = [(BKBookViewController *)&v22 upsellContentViewController];
  if (v3)
  {
    v4 = [(BKPictureBookViewController *)self viewIfLoaded];

    if (v4)
    {
      v5 = [(BKBookViewController *)self book];
      v6 = [v5 firstDocument];
      [v6 fixedLayoutSize];
      v8 = v7;
      v10 = v9;
      v11 = [(BKPictureBookViewController *)self _thumbnailBookViewConfiguration];
      v12 = [(BKBookViewController *)self book];
      v13 = [v12 hidesSpine];
      v14 = [(BKPictureBookViewController *)self viewIfLoaded];
      [v14 bounds];
      v19 = [BKPictureBookViewGeometry geometryWithContentSize:v11 configuration:v13 ^ 1 drawsSpine:v8 containerBounds:v10, v15, v16, v17, v18];
      [v19 maximumSize];
      [v3 setContentSize:?];

      v20 = [IMThemePage themeWithIdentifier:kIMThemeIdentifierWhitePageTheme];
      [v3 setTheme:v20];
    }
  }

  return v3;
}

- (void)setTheme:(id)a3
{
  v7.receiver = self;
  v7.super_class = BKPictureBookViewController;
  [(BKBookViewController *)&v7 setTheme:a3];
  v4 = [(BKBookViewController *)self book];

  if (v4)
  {
    v5 = [IMTheme themeWithIdentifier:kIMThemeIdentifierWhitePageTheme];
    v6 = [(BKPictureBookViewController *)self upsellContentViewController];
    [v6 setTheme:v5];
  }
}

- (id)_bk_backgroundColor
{
  v3 = +[NSLocale currentLocale];
  v4 = [v3 objectForKey:NSLocaleCountryCode];

  v5 = [v4 lowercaseString];
  v6 = [v5 isEqualToString:@"jp"];

  if (v6)
  {
    v7 = +[UIColor bc_booksBackground];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = BKPictureBookViewController;
    v7 = [(BKThumbnailBookViewController *)&v10 _bk_backgroundColor];
  }

  v8 = v7;

  return v8;
}

- (BOOL)shouldShowHUDs
{
  v15.receiver = self;
  v15.super_class = BKPictureBookViewController;
  v3 = [(BKThumbnailBookViewController *)&v15 shouldShowHUDs];
  v4 = [(BKPictureBookViewController *)self viewIfLoaded];
  v5 = [v4 window];

  if (v5)
  {
    objc_opt_class();
    v6 = [(BKPictureBookViewController *)self pageNavigationViewController];
    v7 = BUDynamicCast();

    if (v7 && ![(BKBookViewController *)self section])
    {
      +[NSDate timeIntervalSinceReferenceDate];
      v9 = v8 - self->_preferredPageNumberHUDVisibilityChangedTime;
      v10 = [v7 preferredPageNumberHUDVisibility];
      if (v9 <= 2.0)
      {
        v3 = 1;
      }

      else
      {
        v3 = v10;
      }

      if ([(BKThumbnailBookViewController *)self catalystToolbarActive]|| [(BKBookViewController *)self controlsVisible])
      {
        v3 = 1;
      }

      else if ([(BKPictureBookViewController *)self isVerticalScrubberVisible])
      {
        v12 = [(BKPictureBookViewController *)self verticalScrubber];
        v13 = [v12 callout];
        [v13 alpha];
        if (v14 == 0.0)
        {
          v3 = 1;
        }
      }
    }
  }

  return v3;
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
  v2 = [(BKBookViewController *)self book];
  v3 = [v2 firstDocument];
  [v3 fixedLayoutSize];
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
  v3 = [(BKThumbnailBookViewController *)&v6 _pageDirectory];
  [v3 setShowSpreads:{-[BKPictureBookViewController showSpreads](self, "showSpreads")}];
  v4 = [(BKBookViewController *)self book];
  [v3 setHidesSpine:{objc_msgSend(v4, "hidesSpine")}];

  return v3;
}

- (id)_bookmarkDirectory
{
  v6.receiver = self;
  v6.super_class = BKPictureBookViewController;
  v3 = [(BKThumbnailBookViewController *)&v6 _bookmarkDirectory];
  v4 = [(BKBookViewController *)self book];
  [v3 setHidesSpine:{objc_msgSend(v4, "hidesSpine")}];

  [v3 setShowSpreads:{-[BKPictureBookViewController showSpreads](self, "showSpreads")}];

  return v3;
}

- (_NSRange)currentPages
{
  v2 = [(BKPictureBookViewController *)self pageNavigationViewController];
  v3 = [v2 visiblePages];
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result.length = v7;
  result.location = v6;
  return result;
}

- (BOOL)pageNavigationIsVertical
{
  objc_opt_class();
  v3 = [(BKPictureBookViewController *)self pageNavigationViewController];
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
    v4 = [(BKThumbnailBookViewController *)&v8 scrubber];
    [v4 setShowSpreads:{-[BKPictureBookViewController showSpreads](self, "showSpreads")}];
    [(BKPictureBookViewController *)self _contentAspectRatio];
    [v4 setCellAspectRatio:?];
    [v4 addTarget:self action:"scrubberTouch:forEvent:" forControlEvents:4095];
    v5 = [[BKScrubberCalloutView alloc] initWithFrame:2 style:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    [v5 setShouldDisplayPageInfo:1];
    [v4 setCallout:v5];
    v6 = [(BKPictureBookViewController *)self view];
    [v6 addSubview:v5];

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
    v4 = [(BKThumbnailBookViewController *)&v14 verticalScrubber];
    [v4 setPageCount:{-[BKBookViewController pageCountExcludingUpsell](self, "pageCountExcludingUpsell")}];
    v5 = [v4 layer];
    [v5 setCornerRadius:6.0];

    v6 = [v4 layer];
    [v6 setMasksToBounds:1];

    v7 = +[UIColor bc_booksTertiaryLabelColor];
    v8 = [v7 CGColor];
    v9 = [v4 layer];
    [v9 setShadowColor:v8];

    v10 = [v4 layer];
    [v10 setShadowRadius:10.0];

    [v4 addTarget:self action:"scrubberTouch:forEvent:" forControlEvents:4095];
    v11 = [[BKScrubberCalloutView alloc] initWithFrame:2 style:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    [v11 setShouldDisplayPageInfo:1];
    [v4 setCallout:v11];
    v12 = [(BKPictureBookViewController *)self view];
    [v12 addSubview:v11];

    verticalScrubber = self->super._verticalScrubber;
  }

  return verticalScrubber;
}

- (void)_prewarmThumbnailsForVerticalScrubber
{
  if ([(BKPictureBookViewController *)self isViewLoaded]&& [(BKBookViewController *)self layout]== &dword_0 + 2)
  {
    v4 = [(BKPictureBookViewController *)self verticalScrubber];
    v3 = [(BKPictureBookViewController *)self view];
    [v3 frame];
    [v4 prewarmThumbnailsForScrubberSize:{40.0, CGRectGetHeight(v6)}];
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
  v2 = [(BKPictureBookViewController *)self currentScrubber];
  v3 = [v2 callout];

  return v3;
}

- (void)layoutScrubberCallout:(id)a3
{
  v100 = a3;
  v4 = [(BKPictureBookViewController *)self scrubberCallout];
  v5 = [(BKPictureBookViewController *)self view];
  [v5 bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  [v4 sizeThatFits:{CGSizeZero.width, CGSizeZero.height}];
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
    v20 = [(BKPictureBookViewController *)self verticalScrubber];
    v21 = [v20 superview];
    [v21 bounds];
    v22 = CGRectGetWidth(v103) + 16.0;
    v23 = [(BKPictureBookViewController *)self view];
    [v23 safeAreaInsets];
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

    v27 = [(BKPictureBookViewController *)self verticalScrubber];
    [v27 frame];
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
    v30 = [(BKPictureBookViewController *)self scrubber];
    v31 = [(BKPictureBookViewController *)self view];
    [v30 convertPoint:v31 toView:{CGPointZero.x, CGPointZero.y}];
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
  v35 = [(BKPictureBookViewController *)self currentScrubber];
  v36 = [(BKPictureBookViewController *)self view];
  v37 = [v35 track];
  [v37 bounds];
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v46 = [v35 track];
  [v36 convertRect:v46 fromView:{v39, v41, v43, v45}];
  v93 = v47;
  v94 = v48;
  v95 = v49;
  v51 = v50;

  if (v100)
  {
    v52 = [v100 allTouches];
    v53 = [v52 anyObject];

    v54 = [(BKPictureBookViewController *)self view];
    [v53 locationInView:v54];
    v89 = v55;
    v57 = v56;

    height = v96;
LABEL_12:
    if ([(BKPictureBookViewController *)self shouldUseVerticalScrubber])
    {
      v58 = [(BKPictureBookViewController *)self view];
      [v58 safeAreaInsets];
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

  v75 = [(BKBookViewController *)self touchBarController];

  if (v75)
  {
    v76 = [(BKPictureBookViewController *)self view];
    [v76 bounds];
    v93 = v77;
    v94 = v78;
    v95 = v79;
    v51 = v80;

    v81 = [(BKBookViewController *)self touchBarController];
    [v81 scrollPosition];
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

  v85 = [(BKBookViewController *)self touchBarController];
  if (!v85)
  {
    goto LABEL_12;
  }

  v86 = v85;
  v87 = [(BKPictureBookViewController *)self shouldUseVerticalScrubber];

  if (!v87)
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
  [v4 setFrame:{v70, v69, width, height}];
  [v4 setNeedsLayout];
}

- (void)scrubberTouch:(id)a3 forEvent:(id)a4
{
  v5 = a4;
  if ([(BKPictureBookViewController *)self shouldUseVerticalScrubber])
  {
    v6 = [v5 allTouches];
    v7 = [v6 anyObject];

    v8 = 0.0;
    if ([v7 phase] != &dword_0 + 3)
    {
      if ([v7 phase] == &dword_4)
      {
        v8 = 0.0;
      }

      else
      {
        v8 = 1.0;
      }
    }
  }

  else
  {
    v7 = [(BKPictureBookViewController *)self scrubber];
    v8 = [v7 isTracking];
  }

  v9 = [(BKPictureBookViewController *)self scrubberCallout];
  [v9 alpha];
  if (v8 != v10)
  {
    if (v8 == 1.0)
    {
      [v9 setAlpha:1.0];
      [(BKPictureBookViewController *)self showScrim:!UIAccessibilityIsVoiceOverRunning()];
    }

    else
    {
      [v9 alpha];
      if (v11 == 1.0)
      {
        v12[0] = _NSConcreteStackBlock;
        v12[1] = 3221225472;
        v12[2] = sub_13358;
        v12[3] = &unk_1E2BD0;
        v13 = v9;
        [UIView animateWithDuration:4 delay:v12 options:0 animations:0.2 completion:0.3];
        [(BKPictureBookViewController *)self showScrim:0];
      }
    }
  }

  [(BKPictureBookViewController *)self layoutScrubberCallout:v5];
}

- (void)showScrim:(BOOL)a3
{
  v3 = a3;
  if (self->_scrimView)
  {
    if (!a3)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v5 = [UIView alloc];
    v6 = [(BKPictureBookViewController *)self view];
    [v6 bounds];
    v7 = [v5 initWithFrame:?];
    scrimView = self->_scrimView;
    self->_scrimView = v7;

    v9 = [UIColor colorWithWhite:0.0 alpha:0.15];
    [(UIView *)self->_scrimView setBackgroundColor:v9];

    if (!v3)
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

  v10 = [(UIView *)self->_scrimView superview];

  if (v10)
  {
    goto LABEL_6;
  }

  [(UIView *)self->_scrimView setAlpha:1.0];
  v11 = [(BKPictureBookViewController *)self view];
  [v11 bounds];
  [(UIView *)self->_scrimView setFrame:?];

  v12 = [(BKPictureBookViewController *)self view];
  [v12 insertSubview:self->_scrimView below:self->super._topToolbar];
}

- (id)thumbnailScrubber:(id)a3 thumbnailForPage:(int64_t)a4 size:(CGSize)a5 context:(id)a6
{
  height = a5.height;
  width = a5.width;
  v21.receiver = self;
  v21.super_class = BKPictureBookViewController;
  v10 = [(BKThumbnailBookViewController *)&v21 thumbnailScrubber:a3 thumbnailForPage:a4 size:a6 context:?];
  if (!v10)
  {
    v12 = [(BKBookViewController *)self upsellPageNumber];
    if (a4 != 0x7FFFFFFFFFFFFFFFLL && v12 == a4)
    {
      if (width == CGSizeZero.width && height == CGSizeZero.height)
      {
        v10 = 0;
      }

      else
      {
        v14 = [(BKPictureBookViewController *)self pictureBookRenderingCache];
        v15 = [(BKBookViewController *)self book];
        thumbnailContext = self->_thumbnailContext;
        [(BKThumbnailBookViewController *)self _containerBoundsForGeometry];
        v10 = [v14 thumbnailForPage:a4 asset:v15 size:0 renderingCacheCallbackTarget:thumbnailContext renderingCacheCallbackContext:0 priority:width containerBounds:{height, v17, v18, v19, v20}];
      }
    }
  }

  return v10;
}

- (id)pageTitleForPageNumber:(int64_t)a3
{
  v5 = [(BKBookViewController *)self book];
  v6 = [v5 hasPhysicalPages];

  if (!v6)
  {
    v14.receiver = self;
    v14.super_class = BKPictureBookViewController;
    v12 = [(BKBookViewController *)&v14 pageTitleForPageNumber:a3];
    goto LABEL_10;
  }

  v7 = [(BKBookViewController *)self book];
  v8 = [v7 documentWithOrdinal:a3 - 1];

  if (!v8)
  {
    goto LABEL_8;
  }

  v9 = [(BKBookViewController *)self book];
  v10 = [v9 physicalPageMapForDocument:v8];

  if (![v10 count])
  {

LABEL_8:
    v12 = &stru_1E7188;
    goto LABEL_9;
  }

  v11 = [v10 lastObject];
  v12 = [v11 valueForKey:@"name"];

  if (!v12)
  {
    goto LABEL_8;
  }

LABEL_9:

LABEL_10:

  return v12;
}

- (void)_traitCollectionDidChange:(id)a3 previousTraitCollection:(id)a4
{
  objc_opt_class();
  v5 = [(BKPictureBookViewController *)self pageNavigationViewController];
  v11 = BUDynamicCast();

  v6 = [v11 pageCurlManager];
  v7 = [v6 pageCurlConfiguration];
  [v7 invalidate];

  objc_opt_class();
  v8 = [(BKPictureBookViewController *)self theme];
  v9 = BUDynamicCast();
  v10 = [(BKBookViewController *)self searchViewControllerIfLoaded];
  [v10 setTheme:v9];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  scrubberContainerView = self->_scrubberContainerView;
  if (scrubberContainerView)
  {
    v9 = [(UIView *)scrubberContainerView superview];

    if (v9)
    {
      [(BKPictureBookViewController *)self hideVerticalScrubber];
    }
  }

  v10 = [(BKPictureBookViewController *)self verticalScrubber];

  if (v10)
  {
    v11 = [(BKPictureBookViewController *)self verticalScrubber];
    v12 = [v11 callout];
    [v12 removeFromSuperview];

    [(BKThumbnailBookViewController *)self setVerticalScrubber:0];
  }

  if (![(BKBookViewController *)self inLiveResize])
  {
    [(BKPictureBookViewController *)self _prewarmThumbnailsForVerticalScrubber];
  }

  v13.receiver = self;
  v13.super_class = BKPictureBookViewController;
  [(BKThumbnailBookViewController *)&v13 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
}

- (CGSize)idealCacheSize
{
  v3 = [(BKPictureBookViewController *)self pageNavigationViewController];
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
      v18 = [(BKPictureBookViewController *)self pageNavigationViewController];
      v19 = [v18 viewIfLoaded];
      [v19 bounds];
      v11 = v20;
      v13 = v21;
      v15 = v22;
      v17 = v23;
    }

    v24 = [(BKBookViewController *)self book];
    v25 = [v24 firstDocument];
    [v25 fixedLayoutSize];
    v27 = v26;
    v29 = v28;
    v30 = [(BKPictureBookViewController *)self _thumbnailBookViewConfiguration];
    v31 = [(BKBookViewController *)self book];
    v6 = +[BKPictureBookViewGeometry geometryWithContentSize:configuration:drawsSpine:ignoresPadding:containerBounds:](BKPictureBookViewGeometry, "geometryWithContentSize:configuration:drawsSpine:ignoresPadding:containerBounds:", v30, [v31 hidesSpine] ^ 1, 1, v27, v29, v11, v13, v15, v17);

    objc_opt_class();
    v32 = [(BKPictureBookViewController *)self pageNavigationViewController];
    v7 = BUDynamicCast();

    if (isKindOfClass)
    {
      v33 = [v7 isZoomedToSpread];
      v34 = (isPortrait() ^ 1);
      v35 = v6;
      v36 = v33;
    }

    else
    {
      v34 = [v7 shouldDisplaySpread];
      v35 = v6;
      v36 = 0;
    }

    [v35 sizeForSpread:v36 landscape:v34];
  }

  else
  {
    v6 = [(BKBookViewController *)self book];
    v7 = [v6 firstDocument];
    [v7 fixedLayoutSize];
  }

  v37 = v8;
  v38 = v9;

  v39 = v37;
  v40 = v38;
  result.height = v40;
  result.width = v39;
  return result;
}

- (void)pageNavigationSnapshotForPageNumber:(int64_t)a3 size:(CGSize)a4 isRight:(BOOL)a5 zoomScale:(double)a6 applyMaskAndGutter:(BOOL)a7 completion:(id)a8
{
  v8 = a7;
  v9 = a5;
  height = a4.height;
  width = a4.width;
  v14 = a8;
  v15 = [(BKPictureBookViewController *)self pictureBookRenderingCache];
  [v15 primaryImageSize];
  v18 = v16;
  v19 = v17;
  if (height > v17 || width > v16)
  {
    width = v16;
    height = v17;
  }

  v21 = [(BKBookViewController *)self book];
  [(BKThumbnailBookViewController *)self _containerBoundsForGeometry];
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_13E5C;
  v32[3] = &unk_1E2E50;
  v33 = v14;
  v30 = v14;
  [v15 snapshotForBookInfo:v21 pageNumber:a3 size:v9 maxSize:v8 isRight:v32 zoomScale:width applyMaskAndGutter:height containerBounds:v18 completion:{v19, a6, v23, v25, v27, v29}];
}

- (void)pageNavigationSnapshotForPageNumber:(int64_t)a3 completion:(id)a4
{
  v9 = a4;
  if ((a3 - 1) > 0x7FFFFFFFFFFFFFFDLL)
  {
    v8 = 0;
  }

  else
  {
    v6 = [(BKPictureBookViewController *)self pictureBookRenderingCache];
    v7 = [(BKBookViewController *)self book];
    [(BKThumbnailBookViewController *)self _containerBoundsForGeometry];
    v8 = [v6 anySnapshotForBookInfo:v7 pageNumber:a3 containerBounds:?];
  }

  v9[2](v9, v8);
}

- (void)generateSnapshotsForCurrentPages
{
  v3 = [(BKPictureBookViewController *)self currentPages];
  v5 = v4;
  v6 = [(BKPictureBookViewController *)self pictureBookRenderingCache];
  [v6 resetPrioritiesForPageNumber:{-[BKBookViewController pageNumberFromRange:](self, "pageNumberFromRange:", v3, v5)}];

  [(BKPictureBookViewController *)self idealCacheSize];
  v8 = v7;
  v10 = v9;
  v11 = v3 + v5;
  if (v11 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v12 = v11 + 2;
    do
    {
      if (v11 > [(BKBookViewController *)self pageCountIncludingUpsell])
      {
        break;
      }

      v13 = [(BKPictureBookViewController *)self pictureBookRenderingCache];
      v14 = [(BKBookViewController *)self book];
      [v13 generateSnapshotWithAsset:v14 size:v11 pageNumber:{v8, v10}];

      ++v11;
    }

    while (v11 < v12);
  }

  v15 = v3 - 3;
  v16 = v3 - 1;
  if (v16 > v15 && v16 >= 1)
  {
    do
    {
      v17 = [(BKPictureBookViewController *)self pictureBookRenderingCache];
      v18 = [(BKBookViewController *)self book];
      [v17 generateSnapshotWithAsset:v18 size:v16 pageNumber:{v8, v10}];

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
  v3 = [(BKBookViewController *)self pageCountIncludingUpsell];
  if (v3 >= 2)
  {
    v4 = v3;
    if (v3 != 0x7FFFFFFFFFFFFFFFLL)
    {
      for (i = 1; i != v4; ++i)
      {
        v6 = [(BKPictureBookViewController *)self pictureBookRenderingCache];
        v7 = [(BKBookViewController *)self book];
        [v6 renderingPiggyBackForPageNumber:i asset:v7 priority:0];
      }
    }
  }
}

- (id)contentViewControllerForLocation:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_8;
  }

  v5 = [v4 ordinal];
  if (v5 == [(BKBookViewController *)self upsellOrdinal])
  {
    v6 = [(BKPictureBookViewController *)self upsellContentViewController];
    goto LABEL_9;
  }

  v7 = [(BKBookViewController *)self book];
  v8 = [v7 readingDocumentCount];

  if (v5 < v8)
  {
    if ((v5 & 0x8000000000000000) != 0)
    {
      v9 = [(BKBookViewController *)self book];
      v10 = [v9 firstDocumentLocation];
      v5 = [v10 ordinal];
    }

    v6 = objc_alloc_init(BKPictureBookContentViewController);
    [(BKHTMLContentViewController *)v6 setOrdinal:v5];
    v11 = [(BKBookViewController *)self book];
    v12 = [v11 documentWithOrdinal:v5];
    [(BKContentViewController *)v6 setDocument:v12];

    v13 = [(BKBookViewController *)self book];
    [(BKContentViewController *)v6 setBook:v13];

    [(BKContentViewController *)v6 setPageOffset:0];
    [(BKContentViewController *)v6 setSelectionHighlightType:0];
  }

  else
  {
LABEL_8:
    v6 = 0;
  }

LABEL_9:

  return v6;
}

- (CGSize)thumbnailingContentSizeForPageNumber:(int64_t)a3
{
  v4 = [(BKBookViewController *)self book];
  [v4 fixedLayoutSizeForDocumentWithOrdinal:a3 - 1];
  v6 = v5;
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (id)thumbnailingGenerateImageForPageNumber:(int64_t)a3 callbackBlock:(id)a4
{
  v6 = a4;
  v7 = [(BKPictureBookViewController *)self pictureBookRenderingCache];
  v8 = [(BKBookViewController *)self book];
  v9 = [v7 generateMasterImageForPageNumber:a3 asset:v8 priority:8 callbackBlock:v6];

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

- (id)resizeImage:(id)a3 toSize:(CGSize)a4 callback:(id)a5
{
  height = a4.height;
  width = a4.width;
  v9 = a5;
  v10 = a3;
  v11 = [(BKPictureBookViewController *)self imageResizer];
  v12 = [v11 resizeImage:v10 toSize:v9 callback:{width, height}];

  return v12;
}

- (void)contentView:(id)a3 unhandledClickAtPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v11 = a3;
  v7 = [(BKPictureBookViewController *)self pageNavigationViewController];
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

  v8 = [(BKPictureBookViewController *)self pageNavigationViewController];
  v9 = [v11 view];
  v10 = [v8 hasMediaElementAtPoint:v9 inView:{x, y}];

  if (!v10)
  {
    [v8 curlPageForReadAloud:0];

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

- (id)_prepareSmilMapOn:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v6 = [NSMutableArray arrayWithCapacity:1];
  v22 = self;
  v7 = [(BKBookViewController *)self pageNumberFromRange:location, length];
  v23 = length;
  if (length)
  {
    v8 = 0;
    v9 = v7 - 1;
    do
    {
      v10 = [(BKBookViewController *)v22 book];
      v11 = [v10 documentWithOrdinal:v9 + v8];

      v24 = v11;
      v12 = [v11 mediaOverlayElements];
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v13 = [v12 countByEnumeratingWithState:&v25 objects:v29 count:16];
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
              objc_enumerationMutation(v12);
            }

            v17 = *(*(&v25 + 1) + 8 * i);
            v18 = [NSDictionary alloc];
            v19 = [NSNumber numberWithInteger:v9 + v8];
            v20 = [v18 initWithObjectsAndKeys:{v17, @"smil", v19, @"ordinal", 0}];

            [v6 addObject:v20];
          }

          v14 = [v12 countByEnumeratingWithState:&v25 objects:v29 count:16];
        }

        while (v14);
      }

      ++v8;
    }

    while (v8 != v23);
  }

  return v6;
}

- (void)_installClickHandlers:(id)a3
{
  if (self->super.super._isReading)
  {
    v4 = a3;
    objc_opt_class();
    v7 = BUDynamicCast();

    if (v7)
    {
      v5 = [v7 document];
      v6 = [v5 mediaOverlayElements];

      [v7 installReadAloudClickHandlersOnMediaOverlayElements:v6];
    }
  }
}

- (void)_removeClickHandlers:(id)a3
{
  if (!self->super.super._isReading)
  {
    v4 = a3;
    objc_opt_class();
    v7 = BUDynamicCast();

    if (v7)
    {
      v5 = [v7 document];
      v6 = [v5 mediaOverlayElements];

      [v7 removeReadAloudClickHandlersOnMediaOverlayElements:v6];
    }
  }
}

- (void)_markupDocumentElementForMediaOverlay:(id)a3
{
  if (self->super.super._isReading)
  {
    v4 = a3;
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

- (void)_cleanDocumentElementForMediaOverlay:(id)a3
{
  if (!self->super.super._isReading)
  {
    v4 = a3;
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

- (BOOL)pageNavigationController:(id)a3 shouldDelayChangeToPageOffset:(int64_t)a4 completion:(id)a5
{
  v7 = a5;
  if (a4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    objc_opt_class();
    v8 = [(BKPictureBookViewController *)self pageNavigationViewController];
    v9 = BUDynamicCast();

    [v9 pageSize];
    v11 = v10;
    v13 = v12;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_14B80;
    v15[3] = &unk_1E2E50;
    v16 = v7;
    [(BKPictureBookViewController *)self thumbnailingGenerateImageForPageNumber:a4 + 1 size:v15 callbackBlock:v11, v13];
  }

  return a4 != 0x7FFFFFFFFFFFFFFFLL;
}

- (void)pageNavigationDidChangeLocation:(id)a3
{
  v3.receiver = self;
  v3.super_class = BKPictureBookViewController;
  [(BKThumbnailBookViewController *)&v3 pageNavigationDidChangeLocation:a3];
}

- (void)_nextPageHint:(BOOL)a3
{
  v3 = a3;
  v9 = [(BKPictureBookViewController *)self pageNavigationViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v9;
    v6 = [(BKPictureBookViewController *)self currentPages];
    [(BKPictureBookViewController *)self currentPages];
    v8 = v6 + v7;
    if (v8 <= [(BKBookViewController *)self pageCountIncludingUpsell])
    {
      if (v3 && [v5 isZoomedToSinglePage])
      {
        [v5 turnToPageNumber:v8 - 1 animated:1];
      }

      [v5 curlPageForReadAloud:v3];
    }
  }

  _objc_release_x1();
}

- (BOOL)_isManualCurlInProgress
{
  v2 = [(BKPictureBookViewController *)self pageNavigationViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 isManualCurlInProgress];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_focusOnPage:(int64_t)a3
{
  v5 = [(BKPictureBookViewController *)self pageNavigationViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v5;
    if ([v4 isZoomedToSinglePage] && (objc_msgSend(v4, "isManualCurlInProgress") & 1) == 0)
    {
      [v4 turnToPageNumber:a3 animated:1];
    }
  }

  else
  {
    [v5 turnToPageNumber:a3 animated:1];
  }
}

- (BOOL)_isFocusedOnSecondPageOfSpread
{
  v3 = [(BKPictureBookViewController *)self pageNavigationViewController];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v3 isZoomedToSinglePage])
  {
    v4 = [v3 isZoomedToRightPage];
    if ([(BKViewController *)self layoutDirection]|| (v4 & 1) == 0)
    {
      v5 = ([(BKViewController *)self layoutDirection]== &dword_0 + 1) & (v4 ^ 1);
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
  v3 = [(BKPictureBookViewController *)self currentPages];
  v5 = v4;
  if (v4)
  {
    v6 = v3;
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
      v10 = [v9 pathForSoundtrack];

      if (v10)
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
    v10 = 0;
  }

  return v10;
}

- (void)pictureBookVerticalNavigationInteractionDidStart:(int64_t)a3
{
  if ([(BKPictureBookViewController *)self isVerticalScrubberVisible])
  {
    if (a3 == 1)
    {

      [(BKPictureBookViewController *)self hideVerticalScrubberAndResetZoomScale:0];
    }

    else
    {

      [(BKPictureBookViewController *)self hideVerticalScrubber];
    }
  }
}

- (void)pictureBookVerticalNavigationpreferredPageNumberHUDVisibilityChanged:(BOOL)a3
{
  if (!a3)
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
  v2 = [(BKPictureBookViewController *)self viewIfLoaded];
  v3 = v2;
  if (v2)
  {
    [v2 bounds];
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
  v2 = [(BKPictureBookViewController *)self _bookRenditionFlowIsScrolledContinuous];
  if (v2)
  {
    v3 = +[NSUserDefaults standardUserDefaults];
    v4 = [v3 BOOLForKey:@"BKReadingScrolledContinuous"];

    LOBYTE(v2) = v4;
  }

  return v2;
}

- (void)_updateWebProcessPluginObject:(id)a3 withParameter:(id)a4
{
  v18 = a3;
  v6 = a4;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = [(BKBookViewController *)self contentViewControllers];
  v8 = [v7 allValues];

  v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
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
          objc_enumerationMutation(v8);
        }

        objc_opt_class();
        v13 = BUDynamicCast();
        v14 = v13;
        if (v13)
        {
          v15 = [v13 webView2];
          v16 = [v14 webView2];
          v17 = [v16 be_updateAXValueForMessage:v18];
          [v15 be_updateAXCurrentReadingStateWithMessage:v6 forValue:v17];
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v10);
  }
}

- (WKWebView)snapshotWebView
{
  WeakRetained = objc_loadWeakRetained(&self->_snapshotWebView);

  return WeakRetained;
}

- (void)_performScrollTest:(id)a3 completionHandler:(id)a4
{
  v12 = a3;
  v6 = a4;
  objc_opt_class();
  v7 = [(BKPictureBookViewController *)self pageNavigationViewController];
  v8 = BUDynamicCast();

  v9 = [v8 scrollView];
  if (v9)
  {
    v10 = [[RPTScrollViewTestParameters alloc] initWithTestName:v12 scrollView:v9 completionHandler:v6];
    [RPTTestRunner runTestWithParameters:v10];
  }

  else
  {
    v11 = objc_retainBlock(v6);
    v10 = v11;
    if (v11)
    {
      (*(v11 + 2))(v11);
    }
  }
}

@end