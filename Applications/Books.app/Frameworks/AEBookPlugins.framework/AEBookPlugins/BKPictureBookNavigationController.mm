@interface BKPictureBookNavigationController
- (BKPageCurlManager)pageCurlManager;
- (BKPictureBookNavigationController)init;
- (BOOL)_contentController:(id)controller hasMediaElementAtPoint:(CGPoint)point inView:(id)view;
- (BOOL)_hasMediaElementAtTouch:(id)touch;
- (BOOL)_isFreeScale;
- (BOOL)bkLongPressGestureCanTransitionToRecognizedState:(id)state;
- (BOOL)currentlyZoomed;
- (BOOL)gestureRecognizer:(id)recognizer canBePreventedByGestureRecognizer:(id)gestureRecognizer;
- (BOOL)gestureRecognizer:(id)recognizer shouldBeRequiredToFailByGestureRecognizer:(id)gestureRecognizer;
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (BOOL)hasMediaElementAtPoint:(CGPoint)point inView:(id)view;
- (BOOL)isMediaPlayerGestureRecognizer:(id)recognizer;
- (BOOL)isZoomedBeyondPage;
- (BOOL)isZoomedCloseToSpread;
- (BOOL)isZoomedToRightPage;
- (BOOL)isZoomedToSinglePage;
- (BOOL)isZoomedToSpread;
- (BOOL)shouldZoomToSinglePage;
- (BOOL)singlePageAspectFits;
- (BOOL)supportsSinglePageMode;
- (CGRect)_backPageCurlFrame;
- (CGRect)_containerBoundsForGeometry;
- (CGRect)_resetCurlContainerFrame;
- (CGRect)_resetSinglePageCurlContainerFrame;
- (CGSize)contentSize;
- (IMPerformSelectorProxy)performSelectorProxy;
- (UIView)singlePageCurlContainer;
- (_NSRange)visiblePages;
- (double)effectiveZoomScale;
- (double)singlePagePadding;
- (double)singlePageZoomScale;
- (id)_createZoomingScrollView;
- (id)_singlePageVisibleContentViewControllerForPageOffset:(int64_t)offset;
- (id)curlContainer;
- (id)viewControllers;
- (id)viewForPageNumber:(int64_t)number;
- (int)tapActionForLocation:(CGPoint)location view:(id)view ignoreOppositePage:(BOOL)page;
- (unint64_t)_pageOffsetAfter:(int64_t)after whenCurlingForward:(BOOL)forward;
- (void)_adjustToNewSize:(CGSize)size withOptionalTransitionCoordinator:(id)coordinator;
- (void)_applyAdditionalScale:(id)scale;
- (void)_autoCurlToSinglePageOffset:(int64_t)offset forwardCurl:(BOOL)curl;
- (void)_autoCurlToSpreadPageOffset:(int64_t)offset forwardCurl:(BOOL)curl;
- (void)_autoSlideToSpreadPageOffset:(int64_t)offset forwardCurl:(BOOL)curl;
- (void)_contentIsReadyOrFailed:(id)failed;
- (void)_curlPageForReadAloud:(id)aloud;
- (void)_displayPagesForOffset:(int64_t)offset;
- (void)_generateLeftPageImageAtPageOffset:(int64_t)offset completion:(id)completion;
- (void)_generateRightPageImageAtPageOffset:(int64_t)offset completion:(id)completion;
- (void)_insertDestinationSnapshotImageUnderCurrentPageCurl:(int64_t)curl;
- (void)_killSpreadManualCurl;
- (void)_manualCurlToSinglePage:(CGPoint)page;
- (void)_resetCurlContainer;
- (void)_resetSinglePageCurlContainer:(id)container;
- (void)_restoreViewHierarchyWithArray:(id)array;
- (void)_setupView;
- (void)_timeOutWaitingForPaint;
- (void)_traitCollectionDidChange:(id)change previousTraitCollection:(id)collection;
- (void)_updateBookScale;
- (void)_updateSelectionHighlights;
- (void)addPendingContent:(id)content;
- (void)contentViewImage:(BOOL)image afterScreenUpdates:(BOOL)updates completion:(id)completion;
- (void)curlPageForReadAloud:(BOOL)aloud;
- (void)dealloc;
- (void)enterSinglePageMode;
- (void)exitSinglePageMode;
- (void)handleDoubleTap:(id)tap;
- (void)handlePageChangeTap:(id)tap;
- (void)handleSinglePageManualCurlGesture:(id)gesture;
- (void)handleSpreadManualCurlGesture:(id)gesture;
- (void)leftSwipe:(id)swipe;
- (void)manualCurlGesture:(id)gesture;
- (void)pageAnimation:(id)animation didFinish:(BOOL)finish;
- (void)pageAnimationWillBegin:(id)begin;
- (void)pageCurlManager:(id)manager didCancelCurl:(id)curl;
- (void)pageCurlManager:(id)manager didFinishCurl:(id)curl transitionCompleted:(BOOL)completed;
- (void)pageCurlManager:(id)manager willBeginCurl:(id)curl;
- (void)releaseViews;
- (void)removePendingContent:(id)content;
- (void)rightSwipe:(id)swipe;
- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate;
- (void)scrollViewDidEndZooming:(id)zooming withView:(id)view atScale:(double)scale;
- (void)scrollViewDidScroll:(id)scroll;
- (void)scrollViewDidZoom:(id)zoom;
- (void)scrollViewWillBeginDragging:(id)dragging;
- (void)scrollViewWillBeginZooming:(id)zooming withView:(id)view;
- (void)setContentSize:(CGSize)size;
- (void)setPageOffset:(int64_t)offset;
- (void)setSelectionHighlightsVisible:(BOOL)visible;
- (void)slide:(BOOL)slide animated:(BOOL)animated withDelay:(double)delay;
- (void)toggleControls:(id)controls;
- (void)transitionDidFinish:(BOOL)finish;
- (void)turnToNextPage;
- (void)turnToPageNumber:(int64_t)number animated:(BOOL)animated;
- (void)turnToPreviousPage;
- (void)updateUpsellZoomScale;
- (void)updateVisibleContentViewControllerForOffset:(int64_t)offset;
- (void)viewDidLoad;
- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear;
- (void)viewIsAppearing:(BOOL)appearing;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)zoom:(BOOL)zoom animated:(BOOL)animated;
- (void)zoomToPage:(unint64_t)page animated:(BOOL)animated;
- (void)zoomToPoint:(CGPoint)point scale:(double)scale animated:(BOOL)animated;
- (void)zoomToSpread:(BOOL)spread;
@end

@implementation BKPictureBookNavigationController

- (BKPictureBookNavigationController)init
{
  v9.receiver = self;
  v9.super_class = BKPictureBookNavigationController;
  v2 = [(BKPageNavigationViewController *)&v9 init];
  v3 = v2;
  if (v2)
  {
    v2->_contentSize = vdupq_n_s64(0x4059000000000000uLL);
    *&v2->_canFitToWidth = 0x7FFFFFFFFFFFFFFFLL;
    v4 = +[NSUserDefaults standardUserDefaults];
    HIBYTE(v3->_lastCompletedTransition) = [v4 BOOLForKey:@"BKUseLegacyCurlAnimation"];

    v5 = +[NSNotificationCenter defaultCenter];
    [v5 addObserver:v3 selector:"onAppWillEnterForeground:" name:UIApplicationWillEnterForegroundNotification object:0];

    v6 = +[UITraitCollection bc_allAPITraits];
    v7 = [(BKPictureBookNavigationController *)v3 registerForTraitChanges:v6 withAction:"_traitCollectionDidChange:previousTraitCollection:"];
  }

  return v3;
}

- (void)dealloc
{
  [(BKPictureBookNavigationController *)self releaseViews];
  [(BKPageSlide *)self->_pageSlideAnimation teardown];
  v3.receiver = self;
  v3.super_class = BKPictureBookNavigationController;
  [(BKViewController *)&v3 dealloc];
}

- (void)releaseViews
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:UIApplicationWillEnterForegroundNotification object:0];

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self name:BKContentReadyNotification object:self->_rightContentViewController];

  v5 = +[NSNotificationCenter defaultCenter];
  [v5 removeObserver:self name:BKContentFAILNotification object:self->_rightContentViewController];

  v6 = +[NSNotificationCenter defaultCenter];
  [v6 removeObserver:self name:BKContentReadyNotification object:self->_pendingLoads];

  v7 = +[NSNotificationCenter defaultCenter];
  [v7 removeObserver:self name:BKContentFAILNotification object:self->_pendingLoads];

  [(UITapGestureRecognizer *)self->_pageChangeTapRecognizer setDelegate:0];
  [(UITapGestureRecognizer *)self->_pageChangeTapRecognizer removeTarget:0 action:0];
  [(UITapGestureRecognizer *)self->_controlsTapRecognizer setDelegate:0];
  [(UITapGestureRecognizer *)self->_controlsTapRecognizer removeTarget:0 action:0];
  [(UITapGestureRecognizer *)self->_doubleTapGestureRecognizer setDelegate:0];
  [(UITapGestureRecognizer *)self->_doubleTapGestureRecognizer removeTarget:0 action:0];
  [(UISwipeGestureRecognizer *)self->_leftSwipeGestureRecognizer setDelegate:0];
  [(UISwipeGestureRecognizer *)self->_leftSwipeGestureRecognizer removeTarget:0 action:0];
  [(UISwipeGestureRecognizer *)self->_rightSwipeGestureRecognizer setDelegate:0];
  [(UISwipeGestureRecognizer *)self->_rightSwipeGestureRecognizer removeTarget:0 action:0];
  [(BKLongPressGestureRecognizer *)self->_manualCurlGestureRecognizer setDelegate:0];
  [(BKLongPressGestureRecognizer *)self->_manualCurlGestureRecognizer removeTarget:0 action:0];
  [(UIPanGestureRecognizer *)self->_panManualCurlGestureRecognizer setDelegate:0];
  [(UIPanGestureRecognizer *)self->_panManualCurlGestureRecognizer removeTarget:0 action:0];
  [(BKPictureBookScrollView *)self->_scrollView setDelegate:0];
  [(BKPictureBookCurlState *)self->_curlState setDelegate:0];
  v8.receiver = self;
  v8.super_class = BKPictureBookNavigationController;
  [(BKViewController *)&v8 releaseViews];
}

- (void)viewDidLoad
{
  v24.receiver = self;
  v24.super_class = BKPictureBookNavigationController;
  [(BKPictureBookNavigationController *)&v24 viewDidLoad];
  view = [(BKPictureBookNavigationController *)self view];
  [view setOpaque:0];
  _createZoomingScrollView = [(BKPictureBookNavigationController *)self _createZoomingScrollView];
  scrollView = self->_scrollView;
  self->_scrollView = _createZoomingScrollView;

  [view bounds];
  IMActionSafeRectForRect();
  [(BKPictureBookScrollView *)self->_scrollView setFrame:?];
  [view addSubview:self->_scrollView];
  v6 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"handleDoubleTap:"];
  doubleTapGestureRecognizer = self->_doubleTapGestureRecognizer;
  self->_doubleTapGestureRecognizer = v6;

  [(UITapGestureRecognizer *)self->_doubleTapGestureRecognizer setNumberOfTapsRequired:2];
  [(UITapGestureRecognizer *)self->_doubleTapGestureRecognizer setDelegate:self];
  [view addGestureRecognizer:self->_doubleTapGestureRecognizer];
  v8 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"handlePageChangeTap:"];
  pageChangeTapRecognizer = self->_pageChangeTapRecognizer;
  self->_pageChangeTapRecognizer = v8;

  [(UITapGestureRecognizer *)self->_pageChangeTapRecognizer setDelegate:self];
  [(UITapGestureRecognizer *)self->_pageChangeTapRecognizer requireGestureRecognizerToFail:self->_doubleTapGestureRecognizer];
  [view addGestureRecognizer:self->_pageChangeTapRecognizer];
  v10 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"toggleControls:"];
  controlsTapRecognizer = self->_controlsTapRecognizer;
  self->_controlsTapRecognizer = v10;

  [(UITapGestureRecognizer *)self->_controlsTapRecognizer setDelegate:self];
  [(UITapGestureRecognizer *)self->_controlsTapRecognizer requireGestureRecognizerToFail:self->_pageChangeTapRecognizer];
  [(UITapGestureRecognizer *)self->_controlsTapRecognizer requireGestureRecognizerToFail:self->_doubleTapGestureRecognizer];
  [view addGestureRecognizer:self->_controlsTapRecognizer];
  v12 = [[BKLongPressGestureRecognizer alloc] initWithTarget:self action:"manualCurlGesture:"];
  manualCurlGestureRecognizer = self->_manualCurlGestureRecognizer;
  self->_manualCurlGestureRecognizer = v12;

  [(BKLongPressGestureRecognizer *)self->_manualCurlGestureRecognizer setDelegate:self];
  [(BKLongPressGestureRecognizer *)self->_manualCurlGestureRecognizer setMinimumPressDuration:0.0500000007];
  [(BKLongPressGestureRecognizer *)self->_manualCurlGestureRecognizer setCancelsTouchesInView:1];
  [(BKLongPressGestureRecognizer *)self->_manualCurlGestureRecognizer requireGestureRecognizerToFail:self->_pageChangeTapRecognizer];
  [view addGestureRecognizer:self->_manualCurlGestureRecognizer];
  v14 = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:"leftSwipe:"];
  leftSwipeGestureRecognizer = self->_leftSwipeGestureRecognizer;
  self->_leftSwipeGestureRecognizer = v14;

  [(UISwipeGestureRecognizer *)self->_leftSwipeGestureRecognizer setDelegate:self];
  [(UISwipeGestureRecognizer *)self->_leftSwipeGestureRecognizer setDirection:2];
  [(UISwipeGestureRecognizer *)self->_leftSwipeGestureRecognizer setCancelsTouchesInView:1];
  [(UISwipeGestureRecognizer *)self->_leftSwipeGestureRecognizer requireGestureRecognizerToFail:self->_manualCurlGestureRecognizer];
  [(UISwipeGestureRecognizer *)self->_leftSwipeGestureRecognizer requireGestureRecognizerToFail:self->_panManualCurlGestureRecognizer];
  [view addGestureRecognizer:self->_leftSwipeGestureRecognizer];
  v16 = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:"rightSwipe:"];
  rightSwipeGestureRecognizer = self->_rightSwipeGestureRecognizer;
  self->_rightSwipeGestureRecognizer = v16;

  [(UISwipeGestureRecognizer *)self->_rightSwipeGestureRecognizer setDelegate:self];
  [(UISwipeGestureRecognizer *)self->_rightSwipeGestureRecognizer setDirection:1];
  [(UISwipeGestureRecognizer *)self->_rightSwipeGestureRecognizer requireGestureRecognizerToFail:self->_manualCurlGestureRecognizer];
  [(UISwipeGestureRecognizer *)self->_rightSwipeGestureRecognizer requireGestureRecognizerToFail:self->_panManualCurlGestureRecognizer];
  [view addGestureRecognizer:self->_rightSwipeGestureRecognizer];
  v18 = objc_alloc_init(BKPictureBookView);
  bookView = self->_bookView;
  self->_bookView = v18;

  [(BKPictureBookNavigationController *)self contentSize];
  [(BKPictureBookView *)self->_bookView setContentSize:?];
  [(BKPictureBookView *)self->_bookView setDrawsShadow:1];
  [(BKPictureBookView *)self->_bookView setDrawsSpine:[(BKPictureBookNavigationController *)self drawsSpine]];
  [(BKPictureBookView *)self->_bookView sizeToFit];
  curlContainer = [(BKPictureBookNavigationController *)self curlContainer];
  singlePageCurlContainer = [(BKPictureBookNavigationController *)self singlePageCurlContainer];
  [(BKPictureBookScrollView *)self->_scrollView addSubview:self->_bookView];
  if (!self->_needsTurnToPageNumber)
  {
    v22 = [[NSMutableSet alloc] initWithCapacity:2];
    needsTurnToPageNumber = self->_needsTurnToPageNumber;
    self->_needsTurnToPageNumber = v22;
  }
}

- (void)viewIsAppearing:(BOOL)appearing
{
  v4.receiver = self;
  v4.super_class = BKPictureBookNavigationController;
  [(BKPictureBookNavigationController *)&v4 viewIsAppearing:appearing];
  [(BKPictureBookNavigationController *)self _setupView];
}

- (void)_setupView
{
  view = [(BKPictureBookNavigationController *)self view];
  [view bounds];
  IMActionSafeRectForRect();
  [(BKPictureBookScrollView *)self->_scrollView setFrame:?];

  LOBYTE(self->_lastCompletedTransition) = [(BKPictureBookNavigationController *)self singlePageAspectFits];
  scrollView = self->_scrollView;
  [(BKPictureBookView *)self->_bookView bounds];
  [(BKZoomingScrollView *)scrollView configureForImageSize:v5, v6];
  [(BKPictureBookScrollView *)self->_scrollView minimumZoomScale];
  [(BKPictureBookScrollView *)self->_scrollView setZoomScale:?];
  openToSpread = [(BKPictureBookNavigationController *)self openToSpread];
  if ([(BKPictureBookNavigationController *)self lastCompletedTransition]== 1 || openToSpread && (openToSpread != 0x7FFFFFFFFFFFFFFFLL || !isPortrait()))
  {
    [(BKPictureBookScrollView *)self->_scrollView minimumZoomScale];
    [(BKPictureBookScrollView *)self->_scrollView setZoomScale:?];
  }

  else
  {
    [(BKPictureBookNavigationController *)self zoomToPage:[(BKPageNavigationViewController *)self pageOffset]+ 1 animated:0];
  }

  [(BKPictureBookNavigationController *)self _updateBookScale];
  pageOffset = [(BKPageNavigationViewController *)self pageOffset];

  [(BKPictureBookNavigationController *)self _displayPagesForOffset:pageOffset];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = BKPictureBookNavigationController;
  [(BKPictureBookNavigationController *)&v4 viewWillDisappear:disappear];
  [(BKPictureBookCurlState *)self->_curlState killAllCurls];
  [(BKPageCurlManager *)self->_pageCurlManager reset];
  [(BKPictureBookNavigationController *)self _resetSinglePageCurlContainer];
}

- (void)_adjustToNewSize:(CGSize)size withOptionalTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  coordinatorCopy = coordinator;
  [(BKPageCurlManager *)self->_pageCurlManager setHidden:1];
  [(BKPictureBookNavigationController *)self _resetSinglePageCurlContainer];
  x = self->_manualCurlStartPosition.x;
  if (x != 0.0)
  {
    [*&x cancelManualCurl];
  }

  if (self->_leftContentViewController)
  {
    [(BKPictureBookNavigationController *)self _killSpreadManualCurl];
  }

  else
  {
    [(BKPageCurlManager *)self->_pageCurlManager reset];
  }

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_4824;
  v16[3] = &unk_1E2B30;
  v16[4] = self;
  *&v16[5] = width;
  *&v16[6] = height;
  v9 = objc_retainBlock(v16);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_4BFC;
  v15[3] = &unk_1E2A60;
  v15[4] = self;
  v10 = objc_retainBlock(v15);
  if (coordinatorCopy)
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_4C04;
    v13[3] = &unk_1E2B58;
    v14 = v9;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_4C14;
    v11[3] = &unk_1E2B58;
    v12 = v10;
    [coordinatorCopy animateAlongsideTransition:v13 completion:v11];
  }

  else
  {
    (v9[2])(v9, 0);
    (v10[2])(v10, 0);
  }
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  coordinatorCopy = coordinator;
  if ([(BKPictureBookNavigationController *)self isVisible])
  {
    delegate = [(BKPageNavigationViewController *)self delegate];
    inLiveResize = [delegate inLiveResize];

    if ((inLiveResize & 1) == 0)
    {
      [(BKPictureBookNavigationController *)self _adjustToNewSize:coordinatorCopy withOptionalTransitionCoordinator:width, height];
    }
  }

  v10.receiver = self;
  v10.super_class = BKPictureBookNavigationController;
  [(BKPictureBookNavigationController *)&v10 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
}

- (void)_traitCollectionDidChange:(id)change previousTraitCollection:(id)collection
{
  LOBYTE(self->_lastCompletedTransition) = [(BKPictureBookNavigationController *)self singlePageAspectFits:change];
  if (![(BKPictureBookNavigationController *)self supportsSinglePageMode])
  {

    [(BKPictureBookNavigationController *)self exitSinglePageMode];
  }
}

- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear
{
  v6.receiver = self;
  v6.super_class = BKPictureBookNavigationController;
  [(BKPictureBookNavigationController *)&v6 viewDidMoveToWindow:window shouldAppearOrDisappear:disappear];
  if (window)
  {
    [(BKPictureBookNavigationController *)self _setupView];
  }
}

- (id)viewControllers
{
  rightContentViewController = self->_rightContentViewController;
  pendingLoads = self->_pendingLoads;
  if (rightContentViewController)
  {
    if (pendingLoads)
    {
      v4 = [NSArray arrayWithObjects:pendingLoads, 0];
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  if (pendingLoads)
  {
    rightContentViewController = self->_pendingLoads;
LABEL_6:
    v4 = [NSArray arrayWithObject:rightContentViewController];
    goto LABEL_8;
  }

  v4 = 0;
LABEL_8:

  return v4;
}

- (IMPerformSelectorProxy)performSelectorProxy
{
  pageSlideAnimation = self->_pageSlideAnimation;
  if (!pageSlideAnimation)
  {
    v4 = [[IMPerformSelectorProxy alloc] initWithTarget:self];
    v5 = self->_pageSlideAnimation;
    self->_pageSlideAnimation = v4;

    pageSlideAnimation = self->_pageSlideAnimation;
  }

  return pageSlideAnimation;
}

- (id)_createZoomingScrollView
{
  v3 = [(BKZoomingScrollView *)[BKPictureBookScrollView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  [(BKPictureBookScrollView *)v3 setAutoresizingMask:18];
  [(BKPictureBookScrollView *)v3 setShowsHorizontalScrollIndicator:0];
  [(BKPictureBookScrollView *)v3 setShowsVerticalScrollIndicator:0];
  [(BKPictureBookScrollView *)v3 setDelegate:self];
  [(BKPictureBookScrollView *)v3 setMinimumZoomScale:0.5];
  [(BKPictureBookScrollView *)v3 setMaximumZoomScale:2.0];
  [(BKPictureBookScrollView *)v3 setBouncesZoom:1];
  [(BKPictureBookScrollView *)v3 setDecelerationRate:UIScrollViewDecelerationRateFast];
  [(BKPictureBookScrollView *)v3 setBounces:0];
  [(BKPictureBookScrollView *)v3 setAlwaysBounceVertical:0];
  [(BKPictureBookScrollView *)v3 setAlwaysBounceHorizontal:0];
  [(BKPictureBookScrollView *)v3 setDirectionalLockEnabled:0];
  [(BKPictureBookScrollView *)v3 setOpaque:0];
  [(BKPictureBookScrollView *)v3 setContentInsetAdjustmentBehavior:2];
  v4 = +[UIColor clearColor];
  [(BKPictureBookScrollView *)v3 setBackgroundColor:v4];

  return v3;
}

- (id)viewForPageNumber:(int64_t)number
{
  delegate = [(BKPageNavigationViewController *)self delegate];
  v5 = [delegate contentViewControllerForPageNumber:number];

  view = [v5 view];

  return view;
}

- (void)_applyAdditionalScale:(id)scale
{
  scaleCopy = scale;
  v5 = scaleCopy;
  if (scaleCopy)
  {
    loader = [scaleCopy loader];
    webView = [loader webView];
    [webView be_scale];
    v9 = v8;

    if (v9 >= BEWebViewMinimumZoomScale || (v10 = *self[1].super.super.IMViewController_opaque, v9 >= v10) || v10 <= 0.0)
    {
      view = [v5 view];
      v14 = view;
      v16 = *&CGAffineTransformIdentity.c;
      *&buf.a = *&CGAffineTransformIdentity.a;
      *&buf.c = v16;
      *&buf.tx = *&CGAffineTransformIdentity.tx;
      p_buf = &buf;
    }

    else
    {
      v11 = v9 / v10;
      v12 = _AEWKPictureBookLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        LODWORD(buf.a) = 134218240;
        *(&buf.a + 4) = v11;
        WORD2(buf.b) = 2048;
        *(&buf.b + 6) = [v5 ordinal];
        _os_log_impl(&dword_0, v12, OS_LOG_TYPE_INFO, "{WebViewLifeCycle} applying additional scale:%f for ordinal:%lu", &buf, 0x16u);
      }

      memset(&buf, 0, sizeof(buf));
      CGAffineTransformMakeScale(&buf, v11, v11);
      v18 = buf;
      view = [v5 view];
      v14 = view;
      v17 = v18;
      p_buf = &v17;
    }

    [view setTransform:{p_buf, *&v17.a, *&v17.c, *&v17.tx}];
  }
}

- (void)_displayPagesForOffset:(int64_t)offset
{
  isViewLoaded = [(BKPictureBookNavigationController *)self isViewLoaded];
  if (offset != 0x7FFFFFFFFFFFFFFFLL && isViewLoaded)
  {
    v6 = [(BKPageNavigationViewController *)self leftPageNumberForSinglePageOffset:offset];
    delegate = [(BKPageNavigationViewController *)self delegate];
    obj = [delegate contentViewControllerForPageNumber:v6];

    v8 = self->_rightContentViewController;
    if (obj != v8)
    {
      [(BKPictureBookNavigationController *)self addPendingContent:obj];
      [(BKPictureBookNavigationController *)self removePendingContent:v8];
      [(BKPictureBookView *)self->_bookView setLeftContentView:0];
      view = [(BKContentViewController *)obj view];
      [(BKPictureBookView *)self->_bookView setLeftContentView:view];

      objc_storeStrong(&self->_rightContentViewController, obj);
      objc_opt_class();
      v10 = BUDynamicCast();
      [(BKPictureBookNavigationController *)self _applyAdditionalScale:v10];
      if ([(BKContentViewController *)v8 isViewLoaded])
      {
        delegate2 = [(BKPageNavigationViewController *)self delegate];
        [delegate2 pageNavigationDidRemoveContentViewController:v8];
      }
    }

    v12 = [(BKPageNavigationViewController *)self rightPageNumberForSinglePageOffset:offset];
    delegate3 = [(BKPageNavigationViewController *)self delegate];
    v14 = [delegate3 contentViewControllerForPageNumber:v12];

    v15 = self->_pendingLoads;
    if (v14 != v15)
    {
      [(BKPictureBookNavigationController *)self addPendingContent:v14];
      [(BKPictureBookNavigationController *)self removePendingContent:v15];
      [(BKPictureBookView *)self->_bookView setRightContentView:0];
      view2 = [(NSMutableSet *)v14 view];
      [(BKPictureBookView *)self->_bookView setRightContentView:view2];

      objc_storeStrong(&self->_pendingLoads, v14);
      objc_opt_class();
      v17 = BUDynamicCast();
      [(BKPictureBookNavigationController *)self _applyAdditionalScale:v17];
      if ([(NSMutableSet *)v15 isViewLoaded])
      {
        delegate4 = [(BKPageNavigationViewController *)self delegate];
        [delegate4 pageNavigationDidRemoveContentViewController:v15];
      }
    }

    [(BKPictureBookNavigationController *)self updateVisibleContentViewControllerForOffset:offset];
    [(BKPictureBookNavigationController *)self updateUpsellZoomScale];
  }
}

- (id)_singlePageVisibleContentViewControllerForPageOffset:(int64_t)offset
{
  if ([(BKPictureBookNavigationController *)self inSinglePageMode]&& ((v5 = [(BKPageNavigationViewController *)self leftPageNumberForSinglePageOffset:offset]- 1, v6 = [(BKPageNavigationViewController *)self rightPageNumberForSinglePageOffset:offset], v5 == offset) && (p_rightContentViewController = &self->_rightContentViewController, [(BKContentViewController *)self->_rightContentViewController isContentLoaded]) || v6 - 1 == offset && (p_rightContentViewController = &self->_pendingLoads, [(NSMutableSet *)self->_pendingLoads isContentLoaded])))
  {
    v8 = *p_rightContentViewController;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)updateVisibleContentViewControllerForOffset:(int64_t)offset
{
  if ([(BKPictureBookNavigationController *)self inSinglePageMode])
  {
    v5 = [(BKPictureBookNavigationController *)self _singlePageVisibleContentViewControllerForPageOffset:offset];
    if (v5)
    {
      v7 = v5;
      delegate = [(BKPageNavigationViewController *)self delegate];
      [delegate pageNavigationContentViewWillAppear:v7];

      v5 = v7;
    }
  }
}

- (void)contentViewImage:(BOOL)image afterScreenUpdates:(BOOL)updates completion:(id)completion
{
  imageCopy = image;
  completionCopy = completion;
  v8 = imageCopy && [(BKPictureBookNavigationController *)self drawsSpine];
  window = [(BKPictureBookView *)self->_bookView window];

  if (window)
  {
    [(BKPictureBookScrollView *)self->_scrollView bounds];
    v11 = v10;
    [(BKPictureBookView *)self->_bookView bounds];
    v13 = v11 / v12;
    [(BKPictureBookView *)self->_bookView bounds];
    v15 = v13 * v14;
    [(BKPictureBookScrollView *)self->_scrollView bounds];
    if (v15 > v16)
    {
      [(BKPictureBookScrollView *)self->_scrollView bounds];
      v18 = v17;
      [(BKPictureBookView *)self->_bookView bounds];
      v13 = v18 / v19;
    }

    [(BKPictureBookScrollView *)self->_scrollView contentSize];
    v21 = v13 * v20;
    [(BKPictureBookScrollView *)self->_scrollView contentSize];
    v23 = v13 * v22;
    im_snapshotInContext = [(BKPictureBookView *)self->_bookView im_snapshotInContext];
    v38.width = v21;
    v38.height = v23;
    UIGraphicsBeginImageContextWithOptions(v38, 0, 0.0);
    [im_snapshotInContext drawInRect:{0.0, 0.0, v21, v23}];
    v25 = UIGraphicsGetImageFromCurrentImageContext();

    UIGraphicsEndImageContext();
    completionCopy[2](completionCopy, v25);
  }

  else
  {
    [(BKPictureBookNavigationController *)self contentSize];
    [BKPictureBookView actualSizeForContentSize:v8 drawsSpine:?];
    v27 = v26;
    v29 = v28;
    v30 = objc_alloc_init(BKPictureBookView);
    [(BKPictureBookNavigationController *)self contentSize];
    [(BKPictureBookView *)v30 setContentSize:?];
    [(BKPictureBookView *)v30 setFrame:0.0, 0.0, v27, v29];
    [(BKPictureBookView *)v30 setOpaque:0];
    [(BKPictureBookView *)v30 setScale:1.0];
    [(BKPictureBookView *)v30 setDrawsSpine:v8];
    objc_initWeak(&location, self);
    pageOffset = [(BKPageNavigationViewController *)self pageOffset];
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_5878;
    v32[3] = &unk_1E2BA8;
    objc_copyWeak(&v36, &location);
    v25 = v30;
    v33 = v25;
    selfCopy = self;
    v35 = completionCopy;
    [(BKPictureBookNavigationController *)self _generateLeftPageImageAtPageOffset:pageOffset completion:v32];

    objc_destroyWeak(&v36);
    objc_destroyWeak(&location);
  }
}

- (void)_generateLeftPageImageAtPageOffset:(int64_t)offset completion:(id)completion
{
  completionCopy = completion;
  v7 = [(BKPageNavigationViewController *)self leftPageNumberForSinglePageOffset:offset];
  delegate = [(BKPageNavigationViewController *)self delegate];
  [delegate pageNavigationSnapshotForPageNumber:v7 completion:completionCopy];
}

- (void)_generateRightPageImageAtPageOffset:(int64_t)offset completion:(id)completion
{
  completionCopy = completion;
  v7 = [(BKPageNavigationViewController *)self rightPageNumberForSinglePageOffset:offset];
  delegate = [(BKPageNavigationViewController *)self delegate];
  [delegate pageNavigationSnapshotForPageNumber:v7 completion:completionCopy];
}

- (void)setPageOffset:(int64_t)offset
{
  if (self->super._pageOffset != offset || ![(BKPictureBookNavigationController *)self hasTurnedToInitialPage])
  {
    v6.receiver = self;
    v6.super_class = BKPictureBookNavigationController;
    [(BKPageNavigationViewController *)&v6 setPageOffset:offset];
    if ([(BKPictureBookNavigationController *)self isViewLoaded])
    {
      [(BKPictureBookNavigationController *)self _displayPagesForOffset:offset];
      [(BKPictureBookNavigationController *)self setHasTurnedToInitialPage:1];
      delegate = [(BKPageNavigationViewController *)self delegate];
      [delegate pageNavigationDidChangeLocation:self];
    }
  }
}

- (_NSRange)visiblePages
{
  inSinglePageMode = [(BKPictureBookNavigationController *)self inSinglePageMode];
  pageOffset = [(BKPageNavigationViewController *)self pageOffset];
  if (inSinglePageMode)
  {
    v5 = pageOffset + 1;
    v6 = 1;
  }

  else
  {
    v7 = [(BKPageNavigationViewController *)self leftPageNumberForSpreadPageOffset:pageOffset];
    v8 = [(BKPageNavigationViewController *)self rightPageNumberForSpreadPageOffset:[(BKPageNavigationViewController *)self pageOffset]];
    layoutDirection = [(BKViewController *)self layoutDirection];
    if (v8 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v10 = v7;
    }

    else
    {
      v10 = v8;
    }

    if (v7 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v11 = v8;
    }

    else
    {
      v11 = v7;
    }

    if (v7 == 0x7FFFFFFFFFFFFFFFLL || v8 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v6 = 1;
    }

    else
    {
      v6 = 2;
    }

    if (layoutDirection == 1)
    {
      v5 = v10;
    }

    else
    {
      v5 = v11;
    }
  }

  result.length = v6;
  result.location = v5;
  return result;
}

- (void)slide:(BOOL)slide animated:(BOOL)animated withDelay:(double)delay
{
  animatedCopy = animated;
  slideCopy = slide;
  [(BKPictureBookScrollView *)self->_scrollView contentOffset];
  v10 = v9;
  scrollView = self->_scrollView;
  if (slideCopy)
  {
    [(BKPictureBookScrollView *)scrollView contentInset];
    v13 = -v12;
  }

  else
  {
    [(BKPictureBookScrollView *)scrollView contentSize];
    v15 = v14;
    [(BKPictureBookScrollView *)self->_scrollView bounds];
    v16 = v15 - CGRectGetWidth(v53);
    [(BKPictureBookScrollView *)self->_scrollView contentInset];
    v13 = v16 + v17;
  }

  [(BKPictureBookScrollView *)self->_scrollView contentOffset];
  v20 = v13 == v19 && v10 == v18;
  if (!v20)
  {
    if (animatedCopy)
    {
      [(BKPictureBookNavigationController *)self contentSize];
      v22 = v21;
      v24 = v23;
      thumbnailBookViewConfiguration = [(BKPictureBookNavigationController *)self thumbnailBookViewConfiguration];
      drawsSpine = [(BKPictureBookNavigationController *)self drawsSpine];
      supportsSinglePageMode = [(BKPictureBookNavigationController *)self supportsSinglePageMode];
      [(BKPictureBookNavigationController *)self _containerBoundsForGeometry];
      v32 = [BKPictureBookViewGeometry geometryWithContentSize:thumbnailBookViewConfiguration configuration:drawsSpine drawsSpine:supportsSinglePageMode ignoresPadding:v22 containerBounds:v24, v28, v29, v30, v31];

      [(BKPictureBookScrollView *)self->_scrollView contentSize];
      v34 = v33;
      [(BKPictureBookScrollView *)self->_scrollView bounds];
      v35 = vabdd_f64(v34, CGRectGetWidth(v54));
      [v32 sizeForSpread:0 landscape:isPortrait() ^ 1];
      v37 = v36;
      v39 = v38;
      [v32 maximumSize];
      v41 = v40;
      v43 = v42;
      [(BKPictureBookScrollView *)self->_scrollView bounds];
      v20 = v37 == v41;
      v45 = v35 / v44;
      if (v20 && v39 == v43)
      {
        [(BKPictureBookNavigationController *)self pageCurlManager:self->_curlState durationForCurl:0];
        v45 = v46;
      }

      v47 = dispatch_time(0, 200000000);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_5F94;
      block[3] = &unk_1E2BD0;
      block[4] = self;
      dispatch_after(v47, &_dispatch_main_q, block);
      v50[0] = _NSConcreteStackBlock;
      v50[1] = 3221225472;
      v50[2] = sub_5FA8;
      v50[3] = &unk_1E2BF8;
      v50[4] = self;
      *&v50[5] = v13;
      *&v50[6] = v10;
      v49[0] = _NSConcreteStackBlock;
      v49[1] = 3221225472;
      v49[2] = sub_5FF8;
      v49[3] = &unk_1E2C20;
      v49[4] = self;
      [UIView animateWithDuration:4 delay:v50 options:v49 animations:v45 completion:delay];
    }

    else
    {
      v48 = self->_scrollView;

      [(BKPictureBookScrollView *)v48 setContentOffset:v13, v10];
    }
  }
}

- (void)_insertDestinationSnapshotImageUnderCurrentPageCurl:(int64_t)curl
{
  v5 = [[BKPageBookCurlView alloc] initWithImage:0 borderColor:0 isLeft:0];
  [(BKPageCurl *)self->_manualCurl frame];
  [(BKPageBookCurlView *)v5 setFrame:?];
  theme = [(BKPictureBookNavigationController *)self theme];
  -[BKPageBookCurlView setUseInvertedColors:](v5, "setUseInvertedColors:", [theme shouldInvertContent]);

  superview = [(BKPageCurl *)self->_manualCurl superview];
  [superview insertSubview:v5 belowSubview:self->_manualCurl];

  delegate = [(BKPageNavigationViewController *)self delegate];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_62DC;
  v18[3] = &unk_1E2C48;
  v9 = v5;
  v19 = v9;
  [delegate pageNavigationSnapshotForPageNumber:curl + 1 completion:v18];

  if (*&self->_desiredScale)
  {
    v10 = _AEWKPictureBookLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "We only track one lastCurlUnderPageView. removing previous", &buf, 2u);
    }

    BUAssertionFailed();
    [*&self->_desiredScale removeFromSuperview];
  }

  objc_storeStrong(&self->_desiredScale, v5);
  [(BKPictureBookNavigationController *)self performSelector:"_timeOutWaitingForPaint" withObject:0 afterDelay:1.0];
  v11 = [(BKPictureBookNavigationController *)self _singlePageVisibleContentViewControllerForPageOffset:curl];
  objc_initWeak(&buf, self);
  objc_opt_class();
  v12 = BUDynamicCast();
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_62E8;
  v14[3] = &unk_1E2C70;
  objc_copyWeak(&v16, &buf);
  v13 = v9;
  v15 = v13;
  [v12 afterEnsuringFirstPaintPerform:v14];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&buf);
}

- (void)turnToPageNumber:(int64_t)number animated:(BOOL)animated
{
  if (number != 0x7FFFFFFFFFFFFFFFLL)
  {
    animatedCopy = animated;
    if ([(BKPageNavigationViewController *)self pageOffset]+ 1 != number)
    {
      v7 = +[AETestDriver shared];
      [v7 postEvent:kBETestDriverPageTurnStart sender:self];

      v8 = +[AETestDriver shared];
      [v8 postEvent:kBETestDriverPageTurnSetupStart sender:self];

      self->_cancelControlTapForPageTurn = 1;
      self->_cancelPageChangeForPageTurn = 1;
      v9 = [(BKPictureBookNavigationController *)self isVisible]& animatedCopy;
      if (v9 == 1 && [(BKPictureBookNavigationController *)self _isFreeScale])
      {
        *&self->_curlPageForReadAloud = number;
        v10 = [(BKPageNavigationViewController *)self pageOffset]+ 1;

        [(BKPictureBookNavigationController *)self zoomToPage:v10 animated:1];
      }

      else
      {
        pageCount = [(BKPageNavigationViewController *)self pageCount];
        if (pageCount >= number)
        {
          numberCopy = number;
        }

        else
        {
          numberCopy = pageCount;
        }

        if (numberCopy <= 1)
        {
          v13 = 1;
        }

        else
        {
          v13 = numberCopy;
        }

        v14 = v13 - 1;
        layoutDirection = [(BKViewController *)self layoutDirection];
        v16 = (layoutDirection != 1) ^ v13;
        inSinglePageMode = [(BKPictureBookNavigationController *)self inSinglePageMode];
        pageOffset = [(BKPageNavigationViewController *)self pageOffset];
        if (inSinglePageMode)
        {
          if (LOBYTE(self->_swipeSelector) != 1 || (x = self->_manualCurlStartPosition.x, x == 0.0) || v14 > pageOffset == [*&x forwardCurl])
          {
            [(BKPictureBookNavigationController *)self slide:v16 & 1 animated:0 withDelay:0.0];
            pageOffset2 = [(BKPageNavigationViewController *)self pageOffset];
            v26 = v9 ^ 1;
            if (v14 == pageOffset2)
            {
              v26 = 1;
            }

            if ((v26 & 1) == 0)
            {
              [(BKPictureBookNavigationController *)self _autoCurlToSinglePageOffset:v14 forwardCurl:v14 > pageOffset];
            }

            [(BKPictureBookNavigationController *)self setPageOffset:v14];
            if (HIBYTE(self->_lastCompletedTransition) == 1)
            {

              [(BKPictureBookNavigationController *)self _insertDestinationSnapshotImageUnderCurrentPageCurl:v14];
            }
          }

          else
          {
            [*&self->_manualCurlStartPosition.x cancelManualCurl];
            self->_curlPageForReadAloudSelector = "turnToPreviousPage";
            LOBYTE(self->_swipeSelector) = 0;
          }
        }

        else
        {
          v20 = [(BKPageNavigationViewController *)self leftPageNumberForSpreadPageOffset:pageOffset];
          v21 = [(BKPageNavigationViewController *)self leftPageNumberForSpreadPageOffset:v14];
          v22 = v9 ^ 1;
          v23 = 0.0;
          if (v20 == v21)
          {
            v22 = 1;
          }

          if ((v22 & 1) == 0)
          {
            v24 = (layoutDirection != 1) ^ (v14 <= [(BKPageNavigationViewController *)self pageOffset]);
            if (HIBYTE(self->_lastCompletedTransition) == 1)
            {
              [(BKPictureBookNavigationController *)self _autoCurlToSpreadPageOffset:v14 forwardCurl:v24];
            }

            else
            {
              [(BKPictureBookNavigationController *)self _autoSlideToSpreadPageOffset:v14 forwardCurl:v24];
            }

            v23 = 0.2;
          }

          [(BKPictureBookNavigationController *)self slide:v16 & 1 animated:v9 withDelay:v23];

          [(BKPictureBookNavigationController *)self setPageOffset:v14];
        }
      }
    }
  }
}

- (void)_autoSlideToSpreadPageOffset:(int64_t)offset forwardCurl:(BOOL)curl
{
  curlCopy = curl;
  v35 = [(BKPageNavigationViewController *)self leftPageNumberForSpreadPageOffset:[(BKPageNavigationViewController *)self pageOffset]];
  v34 = [(BKPageNavigationViewController *)self rightPageNumberForSpreadPageOffset:[(BKPageNavigationViewController *)self pageOffset]];
  v7 = [(BKPageNavigationViewController *)self leftPageNumberForSpreadPageOffset:offset];
  v8 = [(BKPageNavigationViewController *)self rightPageNumberForSpreadPageOffset:offset];
  v36 = objc_opt_new();
  isZoomedToSpread = [(BKPictureBookNavigationController *)self isZoomedToSpread];
  [(BKPictureBookNavigationController *)self contentSize];
  v11 = v10;
  v13 = v12;
  thumbnailBookViewConfiguration = [(BKPictureBookNavigationController *)self thumbnailBookViewConfiguration];
  drawsSpine = [(BKPictureBookNavigationController *)self drawsSpine];
  supportsSinglePageMode = [(BKPictureBookNavigationController *)self supportsSinglePageMode];
  [(BKPictureBookNavigationController *)self _containerBoundsForGeometry];
  v21 = [BKPictureBookViewGeometry geometryWithContentSize:thumbnailBookViewConfiguration configuration:drawsSpine drawsSpine:supportsSinglePageMode ignoresPadding:v11 containerBounds:v13, v17, v18, v19, v20];

  [v21 scaleForSpread:isZoomedToSpread landscape:isPortrait() ^ 1];
  if (v22 >= BEWebViewMinimumZoomScale)
  {
    v23 = v22;
  }

  else
  {
    v23 = BEWebViewMinimumZoomScale;
  }

  p_pageCurlManager = &self->_pageCurlManager;
  [(BKPageCurlManager *)self->_pageCurlManager setScale:v23];
  if (BYTE2(self->_lastCompletedTransition) == 1)
  {
    [(BKPictureBookNavigationController *)self _resetSinglePageCurlContainerFrame];
  }

  else
  {
    [(BKPictureBookNavigationController *)self _resetCurlContainerFrame];
  }

  [v36 setScale:v23];
  [v36 setCurlContainer:*p_pageCurlManager];
  delegate = [(BKPageNavigationViewController *)self delegate];
  [v36 setNavDelegate:delegate];

  [v36 setForwardCurl:curlCopy];
  [v36 setAutoCurl:1];
  [v36 setApplyMaskAndGutter:{-[BKPictureBookNavigationController drawsSpine](self, "drawsSpine")}];
  pageCurlManager = [(BKPictureBookNavigationController *)self pageCurlManager];
  numberOfQueuedCurls = [pageCurlManager numberOfQueuedCurls];

  if (!numberOfQueuedCurls)
  {
    if ([(BKContentViewController *)self->_rightContentViewController isContentLoaded])
    {
      view = [(BKContentViewController *)self->_rightContentViewController view];
      [v36 setLeftSourceView:view];
    }

    if ([(NSMutableSet *)self->_pendingLoads isContentLoaded])
    {
      view2 = [(NSMutableSet *)self->_pendingLoads view];
      [v36 setRightSourceView:view2];
    }

    [(BKPictureBookView *)self->_bookView setLeftContentView:0];
    [(BKPictureBookView *)self->_bookView setRightContentView:0];
  }

  layoutDirection = [(BKViewController *)self layoutDirection];
  [v36 generateWithOldLeftPageNumber:v35 oldRightPageNumber:v34 newLeftPageNumber:v7 newRightPageNumber:v8 useMirrorForBackImage:0];
  v31 = objc_alloc_init(BKPageSlide);
  [(BKPageAnimation *)v31 setPageAnimationDelegate:self];
  pageArray = [v36 pageArray];
  backPageArray = [v36 backPageArray];
  if (BYTE2(self->_lastCompletedTransition) == 1)
  {
    p_pageCurlManager = &self->_manualCurl;
  }

  [(BKPageSlide *)v31 autoSlideFromPages:pageArray toPages:backPageArray inContainer:*p_pageCurlManager isForwardAnimation:curlCopy isRTL:layoutDirection == 1 isZoomedToSpread:isZoomedToSpread completion:0];
}

- (void)turnToNextPage
{
  if ([(BKPictureBookNavigationController *)self isZoomedToSpread])
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  [(BKPageNavigationViewController *)self turnToNextPageWithDelta:v3];
}

- (void)turnToPreviousPage
{
  if ([(BKPictureBookNavigationController *)self isZoomedToSpread])
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  [(BKPageNavigationViewController *)self turnToPreviousPageWithDelta:v3];
}

- (void)transitionDidFinish:(BOOL)finish
{
  if (finish)
  {
    [(BKPictureBookNavigationController *)self setLastCompletedTransition:1];
  }

  else
  {
    [(BKPictureBookNavigationController *)self setLastCompletedTransition:2];
  }
}

- (void)setContentSize:(CGSize)size
{
  if (size.width != self->_contentSize.width || size.height != self->_contentSize.height)
  {
    self->_contentSize.width = fmax(size.width, 100.0);
    self->_contentSize.height = fmax(size.height, 100.0);
    [(BKPictureBookView *)self->_bookView setContentSize:?];
  }
}

- (void)addPendingContent:(id)content
{
  contentCopy = content;
  if (contentCopy)
  {
    v7 = contentCopy;
    if ([contentCopy isLoading])
    {
      v5 = +[NSNotificationCenter defaultCenter];
      [v5 addObserver:self selector:"_contentIsReadyOrFailed:" name:BKContentReadyNotification object:v7];
      [v5 addObserver:self selector:"_contentIsReadyOrFailed:" name:BKContentFAILNotification object:v7];
      [(BKPictureBookNavigationController *)self willChangeValueForKey:@"isContentRenderComplete"];
      [self->_needsTurnToPageNumber addObject:v7];
      [(BKPictureBookNavigationController *)self didChangeValueForKey:@"isContentRenderComplete"];
      view = [v7 view];
      [view setHidden:1];
    }
  }

  _objc_release_x1();
}

- (void)removePendingContent:(id)content
{
  contentCopy = content;
  if (contentCopy)
  {
    v7 = contentCopy;
    if ([self->_needsTurnToPageNumber containsObject:contentCopy])
    {
      v5 = +[NSNotificationCenter defaultCenter];
      [v5 removeObserver:self name:BKContentReadyNotification object:v7];
      [v5 removeObserver:self name:BKContentFAILNotification object:v7];
      [(BKPictureBookNavigationController *)self willChangeValueForKey:@"isContentRenderComplete"];
      [self->_needsTurnToPageNumber removeObject:v7];
      [(BKPictureBookNavigationController *)self didChangeValueForKey:@"isContentRenderComplete"];
      if (![self->_needsTurnToPageNumber count])
      {
        [(BKPictureBookNavigationController *)self _resetCurlContainer];
        [(BKPictureBookNavigationController *)self _resetSinglePageCurlContainer];
      }

      view = [v7 view];
      [view setHidden:0];
    }
  }

  _objc_release_x1();
}

- (void)_contentIsReadyOrFailed:(id)failed
{
  object = [failed object];
  [(BKPictureBookNavigationController *)self removePendingContent:object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [object performSelector:"playFirstVisibleAutoplayMediaObject" withObject:0 afterDelay:0.25];
  }
}

- (BKPageCurlManager)pageCurlManager
{
  curlState = self->_curlState;
  if (!curlState)
  {
    v4 = [[BKPageCurlManager alloc] initWithContext:self];
    v5 = self->_curlState;
    self->_curlState = v4;

    [(BKPictureBookCurlState *)self->_curlState setDelegate:self];
    curlState = self->_curlState;
  }

  return curlState;
}

- (int)tapActionForLocation:(CGPoint)location view:(id)view ignoreOppositePage:(BOOL)page
{
  y = location.y;
  x = location.x;
  viewCopy = view;
  thumbnailBookViewConfiguration = [(BKPictureBookNavigationController *)self thumbnailBookViewConfiguration];
  [thumbnailBookViewConfiguration tapToTurnWidth];
  v12 = v11;

  v13 = +[NSUserDefaults standardUserDefaults];
  v14 = [v13 BOOLForKey:BKLeftTapTurnToNextDefault[0]];

  layoutDirection = [(BKViewController *)self layoutDirection];
  [viewCopy bounds];
  if (x > CGRectGetMaxX(v29) - v12)
  {
    goto LABEL_2;
  }

  [viewCopy bounds];
  if (x < v12 + CGRectGetMinX(v30))
  {
    goto LABEL_4;
  }

  [viewCopy convertPoint:self->_bookView toView:{x, y}];
  v21 = v20;
  [(BKPictureBookScrollView *)self->_scrollView zoomScale];
  v23 = v22;
  [(BKPictureBookScrollView *)self->_scrollView minimumZoomScale];
  if (v23 > v24 && !page && ![(BKPictureBookNavigationController *)self inSinglePageMode])
  {
    pageOffset = [(BKPageNavigationViewController *)self pageOffset];
    v26 = pageOffset & 1;
    if (pageOffset < 0)
    {
      v26 = -v26;
    }

    if (v26 == (layoutDirection != 1))
    {
      [(BKPictureBookView *)self->_bookView bounds];
      if (v21 > CGRectGetMidX(v31))
      {
        goto LABEL_2;
      }
    }

    pageOffset2 = [(BKPageNavigationViewController *)self pageOffset];
    v28 = pageOffset2 & 1;
    if (pageOffset2 < 0)
    {
      v28 = -v28;
    }

    if (v28 == (layoutDirection == 1))
    {
      [(BKPictureBookView *)self->_bookView bounds];
      if (v21 < CGRectGetMidX(v32))
      {
LABEL_4:
        v16 = 1;
        goto LABEL_5;
      }
    }
  }

  [(BKPictureBookView *)self->_bookView bounds];
  if (v21 <= CGRectGetMidX(v33) || ([(BKPictureBookView *)self->_bookView bounds], v21 <= CGRectGetMaxX(v34) - v12))
  {
    [(BKPictureBookView *)self->_bookView bounds];
    if (v21 >= CGRectGetMidX(v35) || ([(BKPictureBookView *)self->_bookView bounds], v21 >= v12 + CGRectGetMinX(v36)))
    {
      v18 = 0;
      goto LABEL_11;
    }

    goto LABEL_4;
  }

LABEL_2:
  v16 = 2;
LABEL_5:
  if (layoutDirection == 1)
  {
    v17 = 1;
  }

  else
  {
    v17 = 2;
  }

  if (v14)
  {
    v18 = v17;
  }

  else
  {
    v18 = v16;
  }

LABEL_11:

  return v18;
}

- (void)handlePageChangeTap:(id)tap
{
  if (!self->_cancelPageChangeForPageTurn)
  {
    tapCopy = tap;
    view = [tapCopy view];
    [tapCopy locationInView:view];
    v7 = v6;
    v9 = v8;

    v10 = [(BKPictureBookNavigationController *)self tapActionForLocation:view view:0 ignoreOppositePage:v7, v9];
    if ([(BKPictureBookNavigationController *)self isZoomedBeyondPage]&& v10)
    {
      [(BKPictureBookView *)self->_bookView frame];
      MidX = CGRectGetMidX(v14);
      [(BKPictureBookScrollView *)self->_scrollView bounds];
      [(BKPictureBookNavigationController *)self zoom:MidX > CGRectGetMidX(v15) animated:1];
    }

    else if (v10 == 1)
    {
      [(BKPictureBookNavigationController *)self turnToPreviousPage];
    }

    else if (v10 == 2)
    {
      [(BKPictureBookNavigationController *)self turnToNextPage];
    }

    delegate = [(BKPageNavigationViewController *)self delegate];
    [delegate pageNavigationDidBeginInteracting:self];
  }
}

- (void)handleDoubleTap:(id)tap
{
  tapCopy = tap;
  view = [tapCopy view];
  [tapCopy locationInView:view];
  [view convertPoint:self->_bookView toView:?];
  v6 = v5;
  [(BKPictureBookView *)self->_bookView bounds];
  MidX = CGRectGetMidX(v17);
  if ([(BKPictureBookNavigationController *)self isZoomedBeyondPage]|| [(BKPictureBookNavigationController *)self _isFreeScale])
  {
    if (![(BKPictureBookNavigationController *)self supportsSinglePageMode])
    {
      [(BKPictureBookScrollView *)self->_scrollView bounds];
      v9 = v8;
      [(BKPictureBookScrollView *)self->_scrollView bounds];
      if (v9 >= v10)
      {
        [(BKPictureBookNavigationController *)self zoomToSpread:1];
        goto LABEL_10;
      }
    }

    goto LABEL_8;
  }

  if (![(BKPictureBookNavigationController *)self isZoomedToSinglePage])
  {
    [(BKPictureBookScrollView *)self->_scrollView bounds];
    v12 = v11;
    [(BKPictureBookScrollView *)self->_scrollView bounds];
    if (v12 < v13)
    {
LABEL_8:
      [(BKPictureBookNavigationController *)self zoom:v6 <= MidX animated:1];
      goto LABEL_10;
    }
  }

  [(BKPictureBookScrollView *)self->_scrollView zoomScale];
  [(BKPictureBookScrollView *)self->_scrollView maximumZoomScale];
  [(BKPictureBookScrollView *)self->_scrollView zoomScale];
  [tapCopy locationInView:view];
  [view convertPoint:self->_bookView toView:?];
  [BKPictureBookNavigationController zoomToPoint:"zoomToPoint:scale:animated:" scale:1 animated:?];
LABEL_10:
  delegate = [(BKPageNavigationViewController *)self delegate];
  [delegate pageNavigationDidBeginInteracting:self];
}

- (void)toggleControls:(id)controls
{
  controlsCopy = controls;
  leftContentViewController = self->_leftContentViewController;
  if (leftContentViewController && ([(BKContentViewController *)leftContentViewController isAutoCurl]& 1) == 0)
  {
    [(BKContentViewController *)self->_leftContentViewController cancelManualCurl];
  }

  x = self->_manualCurlStartPosition.x;
  if (x != 0.0)
  {
    [*&x cancelManualCurl];
  }

  if (!self->_cancelControlTapForPageTurn)
  {
    presentedViewController = [(BKPictureBookNavigationController *)self presentedViewController];

    if (!presentedViewController)
    {
      delegate = [(BKPageNavigationViewController *)self delegate];
      [delegate pageNavigationToggleControls:self];
    }
  }
}

- (void)leftSwipe:(id)swipe
{
  layoutDirection = [(BKViewController *)self layoutDirection];
  pageOffset = [(BKPageNavigationViewController *)self pageOffset];
  pageCount = [(BKPageNavigationViewController *)self pageCount];
  [(BKPictureBookScrollView *)self->_scrollView setScrollEnabled:0];
  [(BKPictureBookNavigationController *)self turnToNextPage];
  [(BKPictureBookScrollView *)self->_scrollView setScrollEnabled:[(BKPictureBookNavigationController *)self inSinglePageMode]^ 1];
  delegate = [(BKPageNavigationViewController *)self delegate];
  [delegate pageNavigationDidBeginInteracting:self];

  if (layoutDirection != 1)
  {
    delegate2 = [(BKPageNavigationViewController *)self delegate];
    v9 = delegate2;
    if (pageOffset == pageCount - 1)
    {
      [delegate2 pageNavigationDidTryToSwipePastEndOfBook:self];
    }

    else
    {
      [delegate2 pageNavigationDidSwipeToNextPage:self];
    }
  }
}

- (void)rightSwipe:(id)swipe
{
  layoutDirection = [(BKViewController *)self layoutDirection];
  pageOffset = [(BKPageNavigationViewController *)self pageOffset];
  pageCount = [(BKPageNavigationViewController *)self pageCount];
  [(BKPictureBookScrollView *)self->_scrollView setScrollEnabled:0];
  [(BKPictureBookNavigationController *)self turnToPreviousPage];
  [(BKPictureBookScrollView *)self->_scrollView setScrollEnabled:[(BKPictureBookNavigationController *)self inSinglePageMode]^ 1];
  delegate = [(BKPageNavigationViewController *)self delegate];
  [delegate pageNavigationDidBeginInteracting:self];

  if (layoutDirection == 1)
  {
    delegate2 = [(BKPageNavigationViewController *)self delegate];
    v9 = delegate2;
    if (pageOffset == pageCount - 1)
    {
      [delegate2 pageNavigationDidTryToSwipePastEndOfBook:self];
    }

    else
    {
      [delegate2 pageNavigationDidSwipeToNextPage:self];
    }
  }
}

- (BOOL)_hasMediaElementAtTouch:(id)touch
{
  touchCopy = touch;
  view = [(BKPictureBookNavigationController *)self view];
  [touchCopy locationInView:view];
  v7 = v6;
  v9 = v8;

  LOBYTE(self) = [(BKPictureBookNavigationController *)self hasMediaElementAtPoint:view inView:v7, v9];
  return self;
}

- (BOOL)hasMediaElementAtPoint:(CGPoint)point inView:(id)view
{
  y = point.y;
  x = point.x;
  viewCopy = view;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = [(BKPictureBookNavigationController *)self viewControllers:0];
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        objc_opt_class();
        v13 = BUDynamicCast();
        if (v13 && [(BKPictureBookNavigationController *)self _contentController:v13 hasMediaElementAtPoint:viewCopy inView:x, y])
        {

          v14 = 1;
          goto LABEL_12;
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

  v14 = 0;
LABEL_12:

  return v14;
}

- (BOOL)_contentController:(id)controller hasMediaElementAtPoint:(CGPoint)point inView:(id)view
{
  y = point.y;
  x = point.x;
  controllerCopy = controller;
  viewCopy = view;
  webView2 = [controllerCopy webView2];
  be_contentView = [webView2 be_contentView];
  [be_contentView convertPoint:viewCopy fromView:{x, y}];
  v13 = v12;
  v15 = v14;

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  loader = [controllerCopy loader];
  mediaFrames = [loader mediaFrames];
  allValues = [mediaFrames allValues];

  v19 = [allValues countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v19)
  {
    v20 = *v24;
    while (2)
    {
      for (i = 0; i != v19; i = i + 1)
      {
        if (*v24 != v20)
        {
          objc_enumerationMutation(allValues);
        }

        [*(*(&v23 + 1) + 8 * i) CGRectValue];
        v28.x = v13;
        v28.y = v15;
        if (CGRectContainsPoint(v29, v28))
        {
          LOBYTE(v19) = 1;
          goto LABEL_11;
        }
      }

      v19 = [allValues countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v19)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v19;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  recognizerCopy = recognizer;
  touchCopy = touch;
  v8 = 0;
  if (self->_pageChangeTapRecognizer != recognizerCopy && self->_controlsTapRecognizer != recognizerCopy || ![(BKPictureBookNavigationController *)self _hasMediaElementAtTouch:touchCopy])
  {
    if (self->_doubleTapGestureRecognizer != recognizerCopy || (-[UITapGestureRecognizer view](recognizerCopy, "view"), v9 = objc_claimAutoreleasedReturnValue(), [touchCopy locationInView:v9], v11 = v10, v13 = v12, v9, -[UITapGestureRecognizer view](recognizerCopy, "view"), v14 = objc_claimAutoreleasedReturnValue(), v15 = -[BKPictureBookNavigationController tapActionForLocation:view:ignoreOppositePage:](self, "tapActionForLocation:view:ignoreOppositePage:", v14, 1, v11, v13), v14, !v15))
    {
      v8 = 1;
    }
  }

  return v8;
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  v5 = beginCopy;
  if (self->_pageChangeTapRecognizer == beginCopy)
  {
    self->_cancelPageChangeForPageTurn = 0;
    view = [(UITapGestureRecognizer *)beginCopy view];
    [(UITapGestureRecognizer *)v5 locationInView:view];
    LOBYTE(v6) = [(BKPictureBookNavigationController *)self tapActionForLocation:view view:[(BKPictureBookNavigationController *)self isZoomedBeyondPage] ignoreOppositePage:v8, v9]!= 0;
LABEL_15:

    goto LABEL_16;
  }

  if (self->_doubleTapGestureRecognizer == beginCopy)
  {
    view = [(UITapGestureRecognizer *)beginCopy view];
    [(UITapGestureRecognizer *)v5 locationInView:view];
    LOBYTE(v6) = ![(BKPictureBookNavigationController *)self tapActionForLocation:view view:1 ignoreOppositePage:?]&& [(BKPageCurlManager *)self->_pageCurlManager isHidden]&& ([(BKPageCurl *)self->_manualCurl isHidden]& 1) != 0;
    goto LABEL_15;
  }

  if (self->_leftSwipeGestureRecognizer == beginCopy)
  {
    [(BKPictureBookScrollView *)self->_scrollView contentOffset];
    v12 = v11;
    [(BKPictureBookScrollView *)self->_scrollView bounds];
    v13 = v12 + CGRectGetWidth(v22);
    [(BKPictureBookScrollView *)self->_scrollView contentSize];
    v15 = v14 + -5.0;
    LOBYTE(v6) = v13 >= v14 + -5.0;
    leftContentViewController = self->_leftContentViewController;
    if (!leftContentViewController || [(BKContentViewController *)leftContentViewController isAutoCurl])
    {
      inSinglePageMode = [(BKPictureBookNavigationController *)self inSinglePageMode];
      if (v13 >= v15)
      {
        LOBYTE(v6) = 1;
      }

      else
      {
        LOBYTE(v6) = inSinglePageMode;
      }
    }
  }

  else
  {
    if (self->_rightSwipeGestureRecognizer != beginCopy)
    {
      if (self->_controlsTapRecognizer == beginCopy)
      {
        self->_cancelControlTapForPageTurn = 0;
      }

      else if (self->_manualCurlGestureRecognizer == beginCopy || self->_panManualCurlGestureRecognizer == beginCopy)
      {
        v6 = ![(BKPictureBookNavigationController *)self isZoomedBeyondPage];
        goto LABEL_16;
      }

      LOBYTE(v6) = 1;
      goto LABEL_16;
    }

    v18 = self->_leftContentViewController;
    if (v18 && ([(BKContentViewController *)v18 isAutoCurl]& 1) == 0)
    {
      [(BKContentViewController *)self->_leftContentViewController cancelManualCurl];
      v19 = 0;
      self->_curlPageForReadAloudSelector = "turnToPreviousPage";
    }

    else
    {
      v19 = 1;
    }

    [(BKPictureBookScrollView *)self->_scrollView contentOffset];
    x = self->_manualCurlStartPosition.x;
    if (x == 0.0)
    {
      v6 = [(BKPictureBookNavigationController *)self inSinglePageMode]| v19 & (v20 <= 5.0);
    }

    else
    {
      [*&x cancelManualCurl];
      LOBYTE(v6) = 0;
      self->_curlPageForReadAloudSelector = "turnToPreviousPage";
    }
  }

LABEL_16:

  return v6;
}

- (BOOL)isMediaPlayerGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  NSClassFromString(@"MPTapGestureRecognizer");
  v4 = 1;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    NSClassFromString(@"MPSwipeGestureRecognizer");
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      NSClassFromString(@"MPActivityGestureRecognizer");
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v4 = 0;
        }
      }
    }
  }

  return v4;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldBeRequiredToFailByGestureRecognizer:(id)gestureRecognizer
{
  gestureRecognizerCopy = gestureRecognizer;
  v7 = gestureRecognizerCopy;
  if (self->_doubleTapGestureRecognizer == recognizer || self->_pageChangeTapRecognizer == recognizer)
  {
    bk_isWKSyntheticTapGestureRecognizer = [gestureRecognizerCopy bk_isWKSyntheticTapGestureRecognizer];
  }

  else
  {
    bk_isWKSyntheticTapGestureRecognizer = 0;
  }

  return bk_isWKSyntheticTapGestureRecognizer;
}

- (BOOL)gestureRecognizer:(id)recognizer canBePreventedByGestureRecognizer:(id)gestureRecognizer
{
  recognizerCopy = recognizer;
  gestureRecognizerCopy = gestureRecognizer;
  NSClassFromString(@"UIWebTouchEventsGestureRecognizer");
  if (objc_opt_isKindOfClass() & 1) != 0 || (NSClassFromString(@"WKTouchEventsGestureRecognizer"), (objc_opt_isKindOfClass()))
  {
LABEL_9:
    isKindOfClass = 1;
    goto LABEL_10;
  }

  if (self->_doubleTapGestureRecognizer != recognizerCopy || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    if (self->_leftSwipeGestureRecognizer == recognizerCopy || self->_rightSwipeGestureRecognizer == recognizerCopy)
    {
      NSClassFromString(@"UITextRangeAdjustmentGestureRecognizer");
      isKindOfClass = objc_opt_isKindOfClass();
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v8 = gestureRecognizerCopy;
  if ([v8 numberOfTapsRequired] == &dword_0 + 2)
  {
    isKindOfClass = [v8 matchesTarget:+[UIView be_wkContentViewClass](UIView andAction:{"be_wkContentViewClass"), "_nonBlockingDoubleTapRecognized:"}] ^ 1;
  }

  else
  {
    isKindOfClass = 1;
  }

LABEL_10:
  return isKindOfClass & 1;
}

- (void)pageAnimationWillBegin:(id)begin
{
  if ([(BKPictureBookNavigationController *)self inSinglePageMode])
  {
    singlePageCurlContainer = [(BKPictureBookNavigationController *)self singlePageCurlContainer];
    [singlePageCurlContainer setHidden:0];
  }

  else
  {
    [(BKPageCurlManager *)self->_pageCurlManager setHidden:0];
  }

  scrollView = self->_scrollView;

  [(BKPictureBookScrollView *)scrollView setScrollEnabled:0];
}

- (void)pageAnimation:(id)animation didFinish:(BOOL)finish
{
  finishCopy = finish;
  animationCopy = animation;
  if ([animationCopy state] != &dword_0 + 2)
  {
    if ([(BKPictureBookNavigationController *)self inSinglePageMode])
    {
      [(BKPictureBookNavigationController *)self slide:[(BKPictureBookNavigationController *)self isZoomedToRightPage] animated:0 withDelay:0.0];
      [(BKPictureBookNavigationController *)self _resetSinglePageCurlContainer];
    }

    else
    {
      existingPages = [animationCopy existingPages];
      [(BKPictureBookNavigationController *)self _restoreViewHierarchyWithArray:existingPages];
    }
  }

  [(BKPictureBookScrollView *)self->_scrollView setScrollEnabled:[(BKPictureBookNavigationController *)self inSinglePageMode]^ 1];
  x = self->_manualCurlStartPosition.x;
  self->_manualCurlStartPosition.x = 0.0;

  leftContentViewController = self->_leftContentViewController;
  self->_leftContentViewController = 0;

  if (finishCopy)
  {
    if ([animationCopy finished])
    {
      [(BKPictureBookNavigationController *)self _resetCurlContainer];
    }

    if (-[BKPictureBookNavigationController inSinglePageMode](self, "inSinglePageMode") && [animationCopy state] == &dword_4)
    {
      [(BKPictureBookNavigationController *)self slide:[(BKPictureBookNavigationController *)self isZoomedToRightPage] animated:0 withDelay:0.0];
    }

    [(BKPictureBookNavigationController *)self _resetSinglePageCurlContainer];
    p_singlePageCurlContainer = &self->_singlePageCurlContainer;
    if (self->_singlePageCurlContainer && ![(BKPictureBookCurlState *)self->_curlState numberOfQueuedCurls])
    {
      if (*p_singlePageCurlContainer)
      {
        v10 = *p_singlePageCurlContainer;
      }

      else
      {
        v10 = 0;
      }

      [(BKPictureBookNavigationController *)self performSelector:v10 withObject:&__kCFBooleanTrue];
LABEL_23:
      *p_singlePageCurlContainer = 0;
    }
  }

  else
  {
    p_singlePageCurlContainer = &self->_curlPageForReadAloudSelector;
    if (self->_curlPageForReadAloudSelector && ![(BKPictureBookScrollView *)self->_scrollView touchInProgress])
    {
      if (*p_singlePageCurlContainer)
      {
        v11 = *p_singlePageCurlContainer;
      }

      else
      {
        v11 = 0;
      }

      [(BKPictureBookNavigationController *)self performSelector:v11];
      goto LABEL_23;
    }
  }
}

- (void)pageCurlManager:(id)manager willBeginCurl:(id)curl
{
  if ([(BKPictureBookNavigationController *)self inSinglePageMode:manager])
  {
    singlePageCurlContainer = [(BKPictureBookNavigationController *)self singlePageCurlContainer];
    [singlePageCurlContainer setHidden:0];
  }

  else
  {
    [(BKPageCurlManager *)self->_pageCurlManager setHidden:0];
  }

  scrollView = self->_scrollView;

  [(BKPictureBookScrollView *)scrollView setScrollEnabled:0];
}

- (void)pageCurlManager:(id)manager didFinishCurl:(id)curl transitionCompleted:(BOOL)completed
{
  completedCopy = completed;
  managerCopy = manager;
  curlCopy = curl;
  if (!completedCopy)
  {
    if ([(BKPictureBookNavigationController *)self inSinglePageMode])
    {
      [(BKPictureBookNavigationController *)self slide:[(BKPictureBookNavigationController *)self isZoomedToRightPage] animated:0 withDelay:0.0];
      [(BKPictureBookNavigationController *)self _resetSinglePageCurlContainer];
    }

    else
    {
      existingPages = [curlCopy existingPages];
      [(BKPictureBookNavigationController *)self _restoreViewHierarchyWithArray:existingPages];
    }
  }

  [(BKPictureBookScrollView *)self->_scrollView setScrollEnabled:[(BKPictureBookNavigationController *)self inSinglePageMode]^ 1];
  x = self->_manualCurlStartPosition.x;
  self->_manualCurlStartPosition.x = 0.0;

  leftContentViewController = self->_leftContentViewController;
  self->_leftContentViewController = 0;

  if (completedCopy)
  {
    if ([curlCopy finished])
    {
      [(BKPictureBookNavigationController *)self _resetCurlContainer];
    }

    if (-[BKPictureBookNavigationController inSinglePageMode](self, "inSinglePageMode") && [curlCopy state] == &dword_4)
    {
      [(BKPictureBookNavigationController *)self slide:[(BKPictureBookNavigationController *)self isZoomedToRightPage] animated:0 withDelay:0.0];
    }

    [(BKPictureBookNavigationController *)self _resetSinglePageCurlContainer:curlCopy];
    p_singlePageCurlContainer = &self->_singlePageCurlContainer;
    if (self->_singlePageCurlContainer && ![managerCopy numberOfQueuedCurls])
    {
      if (*p_singlePageCurlContainer)
      {
        v13 = *p_singlePageCurlContainer;
      }

      else
      {
        v13 = 0;
      }

      [(BKPictureBookNavigationController *)self performSelector:v13 withObject:&__kCFBooleanTrue];
LABEL_23:
      *p_singlePageCurlContainer = 0;
    }
  }

  else
  {
    p_singlePageCurlContainer = &self->_curlPageForReadAloudSelector;
    if (self->_curlPageForReadAloudSelector && ![(BKPictureBookScrollView *)self->_scrollView touchInProgress])
    {
      if (*p_singlePageCurlContainer)
      {
        v14 = *p_singlePageCurlContainer;
      }

      else
      {
        v14 = 0;
      }

      [(BKPictureBookNavigationController *)self performSelector:v14];
      goto LABEL_23;
    }
  }
}

- (void)pageCurlManager:(id)manager didCancelCurl:(id)curl
{
  v5 = [(BKPictureBookNavigationController *)self inSinglePageMode:manager]^ 1;
  scrollView = self->_scrollView;

  [(BKPictureBookScrollView *)scrollView setScrollEnabled:v5];
}

- (void)setSelectionHighlightsVisible:(BOOL)visible
{
  visibleCopy = visible;
  [(BKContentViewController *)self->_rightContentViewController setSelectionHighlightsVisible:?];
  pendingLoads = self->_pendingLoads;

  [(NSMutableSet *)pendingLoads setSelectionHighlightsVisible:visibleCopy];
}

- (void)_updateSelectionHighlights
{
  [(BKContentViewController *)self->_rightContentViewController updateSelectionHighlights];
  pendingLoads = self->_pendingLoads;

  [(NSMutableSet *)pendingLoads updateSelectionHighlights];
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  [scrollCopy contentOffset];
  v4 = v3;
  v6 = v5;
  [scrollCopy contentSize];
  v8 = v7;
  [scrollCopy bounds];
  if (v8 > CGRectGetWidth(v16))
  {
    v9 = 0.0;
    if (v4 >= 0.0)
    {
      [scrollCopy contentSize];
      v11 = v10;
      [scrollCopy bounds];
      if (v4 <= ceil(v11 - CGRectGetWidth(v17)))
      {
        goto LABEL_6;
      }

      [scrollCopy contentSize];
      v13 = v12;
      [scrollCopy bounds];
      v9 = round(v13 - CGRectGetWidth(v18));
    }

    [scrollCopy setContentOffset:{v9, v6}];
  }

LABEL_6:
}

- (void)scrollViewWillBeginDragging:(id)dragging
{
  delegate = [(BKPageNavigationViewController *)self delegate];
  [delegate pageNavigationDidBeginInteracting:self];
}

- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate
{
  [(BKZoomingScrollView *)self->_scrollView pointToCenterAfterRotation];
  v7 = v6;
  if (![(BKPictureBookNavigationController *)self isZoomedToSpread])
  {
    [(BKPictureBookView *)self->_bookView bounds];
    MidX = CGRectGetMidX(v12);
    pageOffset = [(BKPageNavigationViewController *)self pageOffset];
    v10 = v7 <= MidX ? [(BKPageNavigationViewController *)self leftPageNumberForSinglePageOffset:pageOffset]: [(BKPageNavigationViewController *)self rightPageNumberForSinglePageOffset:pageOffset];
    if (v10 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [(BKPictureBookNavigationController *)self setPageOffset:v10 - 1];
    }
  }

  if (!decelerate)
  {

    [(BKPictureBookNavigationController *)self _updateSelectionHighlights];
  }
}

- (void)scrollViewDidZoom:(id)zoom
{
  if (!+[BKBookViewController useEnhancedEditMenu])
  {
    [UIView performWithoutAnimation:&stru_1E2C90];
  }

  scrollView = self->_scrollView;

  [(BKZoomingScrollView *)scrollView centerContent];
}

- (void)scrollViewWillBeginZooming:(id)zooming withView:(id)view
{
  zoomingCopy = zooming;
  delegate = [(BKPageNavigationViewController *)self delegate];
  [delegate pageNavigationDidBeginInteracting:self];

  [zoomingCopy setBounces:1];
  [zoomingCopy setAlwaysBounceVertical:1];
  [zoomingCopy setAlwaysBounceHorizontal:0];

  pageCurl = [(BKContentViewController *)self->_leftContentViewController pageCurl];
  existingPages = [pageCurl existingPages];
  [(BKPictureBookNavigationController *)self _restoreViewHierarchyWithArray:existingPages];

  if (!+[BKBookViewController useEnhancedEditMenu])
  {
    [UIView performWithoutAnimation:&stru_1E2CB0];
  }

  [(BKPictureBookNavigationController *)self exitSinglePageMode];
}

- (void)scrollViewDidEndZooming:(id)zooming withView:(id)view atScale:(double)scale
{
  zoomingCopy = zooming;
  if ([(BKPictureBookNavigationController *)self isZoomedToSpread])
  {
    v8 = +[AETestDriver shared];
    [v8 postEvent:kBETestDriverFXLZoomToSpreadEnd sender:self];
  }

  if (*&self->_curlPageForReadAloud)
  {
    v9 = dispatch_time(0, 100000000);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_8CB8;
    block[3] = &unk_1E2BD0;
    block[4] = self;
    dispatch_after(v9, &_dispatch_main_q, block);
    [(BKPictureBookNavigationController *)self _updateBookScale];
  }

  else
  {
    if ([(BKPictureBookNavigationController *)self isZoomedToSinglePage])
    {
      [(BKZoomingScrollView *)self->_scrollView pointToCenterAfterRotation];
      v11 = v10;
      [(BKPictureBookView *)self->_bookView bounds];
      [(BKPictureBookNavigationController *)self zoom:v11 <= CGRectGetMidX(v15) animated:1];
    }

    else if ([(BKPictureBookNavigationController *)self isZoomedCloseToSpread])
    {
      [(BKPictureBookNavigationController *)self zoomToSpread:1];
    }

    [(BKPictureBookScrollView *)self->_scrollView zoomScale];
    if (v12 == scale)
    {
      [(BKPictureBookNavigationController *)self _updateBookScale];
      if ([(BKPictureBookNavigationController *)self isZoomedToSinglePage])
      {
        [(BKPictureBookNavigationController *)self enterSinglePageMode];
      }
    }

    _isFreeScale = [(BKPictureBookNavigationController *)self _isFreeScale];
    [zoomingCopy setBounces:_isFreeScale];
    [zoomingCopy setAlwaysBounceVertical:_isFreeScale];
    [zoomingCopy setAlwaysBounceHorizontal:0];
  }
}

- (double)singlePagePadding
{
  if ([(BKPictureBookNavigationController *)self supportsSinglePageMode])
  {
    return 0.0;
  }

  thumbnailBookViewConfiguration = [(BKPictureBookNavigationController *)self thumbnailBookViewConfiguration];
  [thumbnailBookViewConfiguration singlePagePadding];
  v6 = v5;

  return v6;
}

- (double)effectiveZoomScale
{
  [(BKPictureBookView *)self->_bookView scale];
  v4 = v3;
  [(BKPictureBookScrollView *)self->_scrollView zoomScale];
  return v4 * v5;
}

- (BOOL)isZoomedToSinglePage
{
  if ([(BKPictureBookNavigationController *)self isZoomedToSpread])
  {
    return 0;
  }

  [(BKPictureBookNavigationController *)self effectiveZoomScale];
  v5 = v4;
  [(BKPictureBookNavigationController *)self singlePageZoomScale];
  return vabdd_f64(v5, v6) < 0.07;
}

- (BOOL)isZoomedToRightPage
{
  isZoomedToSinglePage = [(BKPictureBookNavigationController *)self isZoomedToSinglePage];
  if (isZoomedToSinglePage)
  {
    [(BKPictureBookScrollView *)self->_scrollView contentOffset];
    v5 = v4;
    [(BKPictureBookScrollView *)self->_scrollView frame];
    v7 = v5 + v6;
    [(BKPictureBookScrollView *)self->_scrollView contentSize];
    LOBYTE(isZoomedToSinglePage) = vabdd_f64(v7, v8) <= 10.0;
  }

  return isZoomedToSinglePage;
}

- (BOOL)shouldZoomToSinglePage
{
  if ([(BKPictureBookNavigationController *)self isZoomedToSpread])
  {
    return 0;
  }

  [(BKPictureBookNavigationController *)self effectiveZoomScale];
  v5 = v4;
  [(BKPictureBookNavigationController *)self singlePageZoomScale];
  return vabdd_f64(v5, v6) < 0.07;
}

- (BOOL)isZoomedBeyondPage
{
  if ([(BKPictureBookNavigationController *)self isZoomedToSinglePage])
  {
    return 0;
  }

  [(BKPictureBookNavigationController *)self effectiveZoomScale];
  v5 = v4;
  [(BKPictureBookNavigationController *)self singlePageZoomScale];
  return v5 > v6;
}

- (BOOL)isZoomedCloseToSpread
{
  if ([(BKPictureBookNavigationController *)self isZoomedToSpread])
  {
    return 0;
  }

  [(BKPictureBookScrollView *)self->_scrollView zoomScale];
  v5 = v4;
  [(BKPictureBookScrollView *)self->_scrollView minimumZoomScale];
  return vabdd_f64(v5, v6) < 0.23;
}

- (BOOL)isZoomedToSpread
{
  [(BKPictureBookScrollView *)self->_scrollView zoomScale];
  v4 = v3;
  [(BKPictureBookScrollView *)self->_scrollView minimumZoomScale];
  return vabdd_f64(v4, v5) < 0.01;
}

- (BOOL)_isFreeScale
{
  if ([(BKPictureBookNavigationController *)self isZoomedToSinglePage])
  {
    return 0;
  }

  else
  {
    return ![(BKPictureBookNavigationController *)self isZoomedToSpread];
  }
}

- (BOOL)currentlyZoomed
{
  if ([(BKPictureBookNavigationController *)self _isFreeScale])
  {
    return 1;
  }

  return [(BKPictureBookNavigationController *)self isZoomedToSinglePage];
}

- (BOOL)singlePageAspectFits
{
  [(BKPictureBookScrollView *)self->_scrollView bounds];
  v4 = v3;
  v6 = v5;
  [(BKPictureBookView *)self->_bookView actualSize];
  return v7 * 0.5 / v8 > v4 / v6;
}

- (BOOL)supportsSinglePageMode
{
  if ([(BKPictureBookNavigationController *)self isViewLoaded])
  {
    view = [(BKPictureBookNavigationController *)self view];
    [view bounds];
    v5 = v4;
    view2 = [(BKPictureBookNavigationController *)self view];
    [view2 bounds];
    if (v5 >= v7)
    {
      lastCompletedTransition = 0;
    }

    else
    {
      lastCompletedTransition = self->_lastCompletedTransition;
    }
  }

  else
  {
    lastCompletedTransition = 0;
  }

  return lastCompletedTransition & 1;
}

- (UIView)singlePageCurlContainer
{
  manualCurl = self->_manualCurl;
  if (!manualCurl)
  {
    v4 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    v5 = self->_manualCurl;
    self->_manualCurl = v4;

    [(BKPageCurl *)self->_manualCurl setAutoresizingMask:0];
    [(BKPageCurl *)self->_manualCurl setUserInteractionEnabled:0];
    [(BKPageCurl *)self->_manualCurl setHidden:1];
    [(BKPageCurl *)self->_manualCurl setOpaque:1];
    [(BKPageCurl *)self->_manualCurl setClipsToBounds:0];
    [(BKPictureBookNavigationController *)self contentSize];
    v7 = v6;
    v9 = v8;
    thumbnailBookViewConfiguration = [(BKPictureBookNavigationController *)self thumbnailBookViewConfiguration];
    [(BKPictureBookNavigationController *)self _containerBoundsForGeometry];
    v15 = [BKPictureBookViewGeometry geometryWithContentSize:thumbnailBookViewConfiguration configuration:0 drawsSpine:1 ignoresPadding:v7 containerBounds:v9, v11, v12, v13, v14];

    [v15 sizeForSpread:0 landscape:0];
    [(BKPageCurl *)self->_manualCurl setFrame:0.0, 0.0, v16, v17];
    [(BKPictureBookView *)self->_bookView addSubview:self->_manualCurl];

    manualCurl = self->_manualCurl;
  }

  return manualCurl;
}

- (void)enterSinglePageMode
{
  if (![(BKPictureBookNavigationController *)self inSinglePageMode]&& [(BKPictureBookNavigationController *)self supportsSinglePageMode]&& [(BKPictureBookNavigationController *)self isZoomedToSinglePage])
  {
    BYTE2(self->_lastCompletedTransition) = 1;
    isZoomedToRightPage = [(BKPictureBookNavigationController *)self isZoomedToRightPage];
    pageOffset = [(BKPageNavigationViewController *)self pageOffset];
    if (isZoomedToRightPage)
    {
      v5 = [(BKPageNavigationViewController *)self rightPageNumberForSinglePageOffset:pageOffset];
    }

    else
    {
      v5 = [(BKPageNavigationViewController *)self leftPageNumberForSinglePageOffset:pageOffset];
    }

    if (v5 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [(BKPictureBookNavigationController *)self setPageOffset:v5 - 1];
    }

    [(BKPictureBookScrollView *)self->_scrollView setScrollEnabled:0];
    if ([(BKViewController *)self layoutDirection]== &dword_0 + 1)
    {
      v6 = 3;
    }

    else
    {
      v6 = 1;
    }

    pageCurlManager = [(BKPictureBookNavigationController *)self pageCurlManager];
    [pageCurlManager setSpineLocation:v6];
  }
}

- (void)exitSinglePageMode
{
  if ([(BKPictureBookNavigationController *)self inSinglePageMode])
  {
    x = self->_manualCurlStartPosition.x;
    if (x != 0.0)
    {
      [*&x killCurl];
      v4 = self->_manualCurlStartPosition.x;
      self->_manualCurlStartPosition.x = 0.0;
    }

    BYTE2(self->_lastCompletedTransition) = 0;
    *&self->_canFitToWidth = [(BKPageNavigationViewController *)self pageOffset];
    v5 = _AECaptureLocationLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [NSNumber numberWithInteger:*&self->_canFitToWidth];
      v10 = 138412290;
      v11 = v6;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "#PictureBook 5 capture offset : %@", &v10, 0xCu);
    }

    layoutDirection = [(BKViewController *)self layoutDirection];
    pageOffset = [(BKPageNavigationViewController *)self pageOffset];
    if (layoutDirection == 1)
    {
      [(BKPageNavigationViewController *)self rightPageNumberForSinglePageOffset:pageOffset];
    }

    else
    {
      [(BKPageNavigationViewController *)self leftPageNumberForSinglePageOffset:pageOffset];
    }

    [(BKPictureBookNavigationController *)self _resetSinglePageCurlContainer];
    [(BKPictureBookScrollView *)self->_scrollView setScrollEnabled:1];
    pageCurlManager = [(BKPictureBookNavigationController *)self pageCurlManager];
    [pageCurlManager setSpineLocation:2];
  }
}

- (double)singlePageZoomScale
{
  [(BKPictureBookScrollView *)self->_scrollView bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(BKPictureBookView *)self->_bookView actualSize];
  v12 = v11;
  v14 = v13 * 0.5;
  [(BKPictureBookNavigationController *)self singlePagePadding];
  v16 = v15;
  v19.origin.x = v4;
  v19.origin.y = v6;
  v19.size.width = v8;
  v19.size.height = v10;
  v17 = CGRectGetWidth(v19) - v16;
  v20.origin.x = v4;
  v20.origin.y = v6;
  v20.size.width = v8;
  v20.size.height = v10;
  if (v14 / v12 <= v17 / CGRectGetHeight(v20))
  {
    v22.origin.x = v4;
    v22.origin.y = v6;
    v22.size.width = v8;
    v22.size.height = v10;
    return CGRectGetHeight(v22) / v12;
  }

  else
  {
    v21.origin.x = v4;
    v21.origin.y = v6;
    v21.size.width = v8;
    v21.size.height = v10;
    return (CGRectGetWidth(v21) - v16) / v14;
  }
}

- (void)zoomToSpread:(BOOL)spread
{
  spreadCopy = spread;
  if (![(BKPictureBookNavigationController *)self isZoomedToSpread])
  {
    v5 = +[AETestDriver shared];
    [v5 postEvent:kBETestDriverFXLZoomToSpreadStart sender:self];

    [(BKPictureBookView *)self->_bookView bounds];
    [(BKPictureBookScrollView *)self->_scrollView zoomToRect:spreadCopy animated:?];
    if (!spreadCopy)
    {

      [(BKPictureBookNavigationController *)self exitSinglePageMode];
    }
  }
}

- (void)zoom:(BOOL)zoom animated:(BOOL)animated
{
  animatedCopy = animated;
  zoomCopy = zoom;
  [(BKPictureBookView *)self->_bookView bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  [(BKPictureBookNavigationController *)self singlePagePadding];
  v16 = v15;
  [(BKPictureBookView *)self->_bookView scale];
  v18 = v16 * v17;
  [(BKPictureBookNavigationController *)self singlePageZoomScale];
  v20 = v18 / v19;
  v21 = v8;
  v22 = v10;
  v23 = v12;
  v24 = v14;
  if (zoomCopy)
  {
    MinX = CGRectGetMinX(*&v21);
  }

  else
  {
    MinX = CGRectGetMidX(*&v21) - v20;
  }

  scrollView = self->_scrollView;

  [(BKPictureBookScrollView *)scrollView zoomToRect:animatedCopy animated:MinX, v10, v12 * 0.5 + v20, v14];
}

- (void)zoomToPoint:(CGPoint)point scale:(double)scale animated:(BOOL)animated
{
  if (scale != 0.0)
  {
    animatedCopy = animated;
    y = point.y;
    x = point.x;
    [(BKPictureBookScrollView *)self->_scrollView bounds];
    v12 = v11 / scale;
    [(BKPictureBookScrollView *)self->_scrollView bounds];
    v14 = v13 / scale;
    v15 = y - v14 * 0.5;
    if (x - v12 * 0.5 >= 0.0)
    {
      v16 = x - v12 * 0.5;
    }

    else
    {
      v16 = 0.0;
    }

    if (v15 >= 0.0)
    {
      v17 = v15;
    }

    else
    {
      v17 = 0.0;
    }

    [(BKPictureBookView *)self->_bookView bounds];
    v19 = v12 + v16 - v18;
    if (v19 > 0.0)
    {
      v16 = v16 - (v12 + v16 - v18);
    }

    [(BKPictureBookView *)self->_bookView bounds];
    v21 = v17 - (v14 + v17 - v20);
    if (v14 + v17 - v20 <= 0.0)
    {
      v21 = v17;
    }

    scrollView = self->_scrollView;

    [(BKPictureBookScrollView *)scrollView zoomToRect:animatedCopy animated:v16, v21, v12, v14];
  }
}

- (void)zoomToPage:(unint64_t)page animated:(BOOL)animated
{
  animatedCopy = animated;
  v7 = [(BKPageNavigationViewController *)self leftPageNumberForSpreadPageOffset:[(BKPageNavigationViewController *)self pageOffset]];
  v8 = [(BKPageNavigationViewController *)self rightPageNumberForSpreadPageOffset:[(BKPageNavigationViewController *)self pageOffset]];
  if (v7 == page || v8 == page)
  {
    [(BKPictureBookNavigationController *)self zoom:v7 == page animated:animatedCopy];
    [(BKPictureBookNavigationController *)self setPageOffset:page - 1];
    if (animatedCopy)
    {
      return;
    }
  }

  else if (animatedCopy)
  {
    return;
  }

  [(BKPictureBookNavigationController *)self enterSinglePageMode];
}

- (CGRect)_containerBoundsForGeometry
{
  viewIfLoaded = [(BKPictureBookNavigationController *)self viewIfLoaded];
  window = [viewIfLoaded window];
  v4 = window;
  if (window || (window = viewIfLoaded) != 0)
  {
    [window bounds];
    x = v5;
    y = v7;
    width = v9;
    height = v11;
  }

  else
  {
    x = CGRectZero.origin.x;
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
  }

  v13 = x;
  v14 = y;
  v15 = width;
  v16 = height;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (void)updateUpsellZoomScale
{
  if (([(BKContentViewController *)self->_rightContentViewController conformsToProtocol:&OBJC_PROTOCOL___BKUpsell]& 1) != 0 || [(NSMutableSet *)self->_pendingLoads conformsToProtocol:&OBJC_PROTOCOL___BKUpsell])
  {
    v3 = BUProtocolCast();
    if (v3)
    {
      v19 = v3;
      [(BKPictureBookNavigationController *)self contentSize];
      v5 = v4;
      v7 = v6;
      thumbnailBookViewConfiguration = [(BKPictureBookNavigationController *)self thumbnailBookViewConfiguration];
      drawsSpine = [(BKPictureBookNavigationController *)self drawsSpine];
      [(BKPictureBookNavigationController *)self _containerBoundsForGeometry];
      v14 = [BKPictureBookViewGeometry geometryWithContentSize:thumbnailBookViewConfiguration configuration:drawsSpine drawsSpine:v5 containerBounds:v7, v10, v11, v12, v13];
      [v14 maximumSize];
      [v19 setContentSize:?];

      [(BKPictureBookView *)self->_bookView layoutIfNeeded];
      leftContentView = [(BKPictureBookView *)self->_bookView leftContentView];
      [leftContentView frame];
      v17 = v16;
      [v19 contentSize];
      [v19 setZoomScale:v17 / v18];

      [(BKPictureBookView *)self->_bookView scale];
      [v19 setContentScale:?];
      [v19 setFixedLayout:1];
    }
  }
}

- (void)_updateBookScale
{
  [(BKPictureBookNavigationController *)self contentSize];
  v4 = v3;
  v6 = v5;
  [(BKPictureBookScrollView *)self->_scrollView zoomScale];
  v8 = v7;
  [(BKPictureBookView *)self->_bookView scale];
  v10 = v9;
  [(BKPictureBookScrollView *)self->_scrollView minimumZoomScale];
  v12 = v11;
  _isFreeScale = [(BKPictureBookNavigationController *)self _isFreeScale];
  [(BKPictureBookView *)self->_bookView frame];
  v51 = CGRectIntegral(v50);
  x = v51.origin.x;
  y = v51.origin.y;
  width = v51.size.width;
  height = v51.size.height;
  isZoomedToSpread = [(BKPictureBookNavigationController *)self isZoomedToSpread];
  thumbnailBookViewConfiguration = [(BKPictureBookNavigationController *)self thumbnailBookViewConfiguration];
  drawsSpine = [(BKPictureBookNavigationController *)self drawsSpine];
  supportsSinglePageMode = [(BKPictureBookNavigationController *)self supportsSinglePageMode];
  [(BKPictureBookNavigationController *)self _containerBoundsForGeometry];
  v25 = [BKPictureBookViewGeometry geometryWithContentSize:thumbnailBookViewConfiguration configuration:drawsSpine drawsSpine:supportsSinglePageMode ignoresPadding:v4 containerBounds:v6, v21, v22, v23, v24];

  [v25 scaleForSpread:isZoomedToSpread landscape:isPortrait() ^ 1];
  if (_isFreeScale)
  {
    v27 = v8 * v10;
  }

  else
  {
    v27 = v26;
  }

  v28 = *&CGAffineTransformIdentity.c;
  *&v49.a = *&CGAffineTransformIdentity.a;
  *&v49.c = v28;
  *&v49.tx = *&CGAffineTransformIdentity.tx;
  size = CGRectZero.size;
  v48.origin = CGRectZero.origin;
  v48.size = size;
  v47[0] = v48.origin;
  v47[1] = size;
  v46[0] = v48.origin;
  v46[1] = size;
  [(BKPictureBookView *)self->_bookView calculateFramesAtScale:&v48 contentFrame:v47 leftContentFrame:v46 rightContentFrame:v27];
  v30 = CGRectGetWidth(v48);
  v31 = (v30 * CGRectGetHeight(v48));
  *self[1].super.super.IMViewController_opaque = v27;
  v32 = BEWebViewMinimumZoomScale;
  if (v27 >= BEWebViewMinimumZoomScale)
  {
    v33 = 0;
    v34 = v10 * v12;
    v32 = v27;
  }

  else
  {
    CGAffineTransformMakeScale(&v49, v27 / BEWebViewMinimumZoomScale, v27 / BEWebViewMinimumZoomScale);
    v33 = 1;
    v34 = v32;
  }

  *(&self->_lastCompletedTransition + 4) = v33;
  if (v31 <= 50000000)
  {
    [v25 sizeForSpread:isZoomedToSpread landscape:isPortrait() ^ 1];
    if (_isFreeScale)
    {
      v35 = CGSizeZero.width;
      v36 = CGSizeZero.height;
    }

    [(BKPictureBookView *)self->_bookView setIdealSinglePageSize:v35, v36, CGSizeZero.width, CGSizeZero.height];
    bookView = self->_bookView;
    v45 = v49;
    [(BKPictureBookView *)bookView setTransform:&v45];
    [v25 maximumSize];
    v39 = v38;
    [(BKPictureBookView *)self->_bookView setScale:v32];
    [(BKPictureBookView *)self->_bookView setFrame:x, y, width, height];
    [(BKPictureBookView *)self->_bookView setNeedsLayout];
    [(BKPageCurlManager *)self->_pageCurlManager setScale:v32];
    [(BKPictureBookScrollView *)self->_scrollView setContentSize:width, height + -2.0];
    if (*(&self->_lastCompletedTransition + 4) == 1)
    {
      [(BKPictureBookScrollView *)self->_scrollView zoomScale];
    }

    else
    {
      v40 = v34 / v32;
      if (isZoomedToSpread)
      {
        v40 = 1.0;
      }
    }

    [(BKPictureBookScrollView *)self->_scrollView setMinimumZoomScale:v40];
    if ([(BKPictureBookNavigationController *)self _allowZoom])
    {
      v41 = fmax(v39 / v4 + v39 / v4, 2.0) / v32;
    }

    else
    {
      [(BKPictureBookScrollView *)self->_scrollView minimumZoomScale];
    }

    [(BKPictureBookScrollView *)self->_scrollView setMaximumZoomScale:v41];
    [(BKPictureBookNavigationController *)self updateUpsellZoomScale];
    objc_opt_class();
    v42 = BUDynamicCast();
    [(BKPictureBookNavigationController *)self _applyAdditionalScale:v42];
    objc_opt_class();
    v43 = BUDynamicCast();

    [(BKPictureBookNavigationController *)self _applyAdditionalScale:v43];
  }
}

- (void)_resetCurlContainer
{
  if ([(BKPictureBookNavigationController *)self isContentRenderComplete])
  {
    pageCurlManager = [(BKPictureBookNavigationController *)self pageCurlManager];
    if ([pageCurlManager numberOfQueuedCurls])
    {
    }

    else
    {
      pageSlideAnimation = [(BKPictureBookNavigationController *)self pageSlideAnimation];
      if (pageSlideAnimation)
      {
        v4 = pageSlideAnimation;
        pageSlideAnimation2 = [(BKPictureBookNavigationController *)self pageSlideAnimation];
        finished = [pageSlideAnimation2 finished];

        if (!finished)
        {
          return;
        }
      }

      else
      {
      }

      lastCurlUnderPageView = self->_lastCurlUnderPageView;
      self->_lastCurlUnderPageView = 0;

      [(BKPageCurlManager *)self->_pageCurlManager reset];
      pageCurlManager = self->_pageCurlManager;

      [(BKPageCurlManager *)pageCurlManager setHidden:1];
    }
  }
}

- (CGRect)_resetCurlContainerFrame
{
  curlContainer = [(BKPictureBookNavigationController *)self curlContainer];
  contentView = [(BKPictureBookView *)self->_bookView contentView];
  scrollView = self->_scrollView;
  [contentView bounds];
  [(BKPictureBookScrollView *)scrollView convertRect:contentView fromView:?];
  v7 = v6;
  v9 = v8;
  superview = [contentView superview];
  [contentView bounds];
  [superview convertRect:contentView fromView:?];
  v12 = v11;
  v14 = v13;

  [(BKPageCurlManager *)self->_pageCurlManager setFrame:v7, v9, v12, v14];
  v15 = v7;
  v16 = v9;
  v17 = v12;
  v18 = v14;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (id)curlContainer
{
  pageCurlManager = self->_pageCurlManager;
  if (!pageCurlManager)
  {
    v4 = [[BKPictureBookCurlContainerView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
    v5 = self->_pageCurlManager;
    self->_pageCurlManager = v4;

    [(BKPageCurlManager *)self->_pageCurlManager setAutoresizingMask:18];
    [(BKPageCurlManager *)self->_pageCurlManager setUserInteractionEnabled:0];
    [(BKPageCurlManager *)self->_pageCurlManager setHidden:1];
    [(BKPageCurlManager *)self->_pageCurlManager setOpaque:1];
    [(BKPageCurlManager *)self->_pageCurlManager setClipsToBounds:0];
    [(BKPageCurlManager *)self->_pageCurlManager setDrawsSpine:[(BKPictureBookNavigationController *)self drawsSpine]];
    [(BKPictureBookNavigationController *)self contentSize];
    v7 = v6;
    v9 = v8;
    thumbnailBookViewConfiguration = [(BKPictureBookNavigationController *)self thumbnailBookViewConfiguration];
    drawsSpine = [(BKPictureBookNavigationController *)self drawsSpine];
    supportsSinglePageMode = [(BKPictureBookNavigationController *)self supportsSinglePageMode];
    [(BKPictureBookNavigationController *)self _containerBoundsForGeometry];
    v17 = [BKPictureBookViewGeometry geometryWithContentSize:thumbnailBookViewConfiguration configuration:drawsSpine drawsSpine:supportsSinglePageMode ignoresPadding:v7 containerBounds:v9, v13, v14, v15, v16];

    [v17 scaleForSpread:-[BKPictureBookNavigationController isZoomedToSpread](self landscape:{"isZoomedToSpread"), isPortrait() ^ 1}];
    if (v18 < BEWebViewMinimumZoomScale)
    {
      v18 = BEWebViewMinimumZoomScale;
    }

    [(BKPageCurlManager *)self->_pageCurlManager setScale:v18];
    [(BKPictureBookView *)self->_bookView addSubview:self->_pageCurlManager];

    pageCurlManager = self->_pageCurlManager;
  }

  return pageCurlManager;
}

- (void)_resetSinglePageCurlContainer:(id)container
{
  pageCurlManager = [(BKPictureBookNavigationController *)self pageCurlManager];
  numberOfQueuedCurls = [pageCurlManager numberOfQueuedCurls];

  if (!numberOfQueuedCurls)
  {
    singlePageCurlContainer = [(BKPictureBookNavigationController *)self singlePageCurlContainer];
    [singlePageCurlContainer setHidden:1];
  }
}

- (CGRect)_resetSinglePageCurlContainerFrame
{
  contentView = [(BKPictureBookView *)self->_bookView contentView];
  scrollView = self->_scrollView;
  [contentView bounds];
  [(BKPictureBookScrollView *)scrollView convertRect:contentView fromView:?];
  v6 = v5;
  [(BKPictureBookScrollView *)self->_scrollView contentOffset];
  if (v7 <= 0.0)
  {
    [(BKPictureBookScrollView *)self->_scrollView contentOffset];
    v10 = v11;
  }

  else
  {
    [contentView frame];
    v9 = v8;
    [contentView frame];
    v10 = v9 + CGRectGetMidX(v21);
  }

  [(BKPictureBookView *)self->_bookView idealSinglePageSize];
  v13 = v12;
  v15 = v14;
  singlePageCurlContainer = [(BKPictureBookNavigationController *)self singlePageCurlContainer];
  [singlePageCurlContainer setFrame:{v10, v6, v13, v15}];

  v17 = v10;
  v18 = v6;
  v19 = v13;
  v20 = v15;
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

- (CGRect)_backPageCurlFrame
{
  contentView = [(BKPictureBookView *)self->_bookView contentView];
  [contentView frame];
  v5 = v4;

  singlePageCurlContainer = [(BKPictureBookNavigationController *)self singlePageCurlContainer];
  [singlePageCurlContainer origin];
  v8 = v7;

  if (v8 > 0.0)
  {
    v5 = -v5;
  }

  singlePageCurlContainer2 = [(BKPictureBookNavigationController *)self singlePageCurlContainer];
  [singlePageCurlContainer2 bounds];
  v19 = CGRectOffset(v18, v5, 0.0);
  x = v19.origin.x;
  y = v19.origin.y;
  width = v19.size.width;
  height = v19.size.height;

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

- (void)_autoCurlToSpreadPageOffset:(int64_t)offset forwardCurl:(BOOL)curl
{
  curlCopy = curl;
  v39 = [(BKPageNavigationViewController *)self leftPageNumberForSpreadPageOffset:[(BKPageNavigationViewController *)self pageOffset]];
  v7 = [(BKPageNavigationViewController *)self rightPageNumberForSpreadPageOffset:[(BKPageNavigationViewController *)self pageOffset]];
  v8 = [(BKPageNavigationViewController *)self leftPageNumberForSpreadPageOffset:offset];
  v9 = [(BKPageNavigationViewController *)self rightPageNumberForSpreadPageOffset:offset];
  v40 = objc_opt_new();
  isZoomedToSpread = [(BKPictureBookNavigationController *)self isZoomedToSpread];
  [(BKPictureBookNavigationController *)self contentSize];
  v12 = v11;
  v14 = v13;
  thumbnailBookViewConfiguration = [(BKPictureBookNavigationController *)self thumbnailBookViewConfiguration];
  drawsSpine = [(BKPictureBookNavigationController *)self drawsSpine];
  supportsSinglePageMode = [(BKPictureBookNavigationController *)self supportsSinglePageMode];
  [(BKPictureBookNavigationController *)self _containerBoundsForGeometry];
  v18 = drawsSpine;
  v19 = curlCopy;
  v24 = [BKPictureBookViewGeometry geometryWithContentSize:thumbnailBookViewConfiguration configuration:v18 drawsSpine:supportsSinglePageMode ignoresPadding:v12 containerBounds:v14, v20, v21, v22, v23];

  [v24 scaleForSpread:isZoomedToSpread landscape:isPortrait() ^ 1];
  if (v25 >= BEWebViewMinimumZoomScale)
  {
    v26 = v25;
  }

  else
  {
    v26 = BEWebViewMinimumZoomScale;
  }

  [(BKPageCurlManager *)self->_pageCurlManager setScale:v26];
  [(BKPictureBookNavigationController *)self _resetCurlContainerFrame];
  [v40 setScale:v26];
  [v40 setCurlContainer:self->_pageCurlManager];
  delegate = [(BKPageNavigationViewController *)self delegate];
  [v40 setNavDelegate:delegate];

  [v40 setForwardCurl:curlCopy];
  [v40 setAutoCurl:1];
  [v40 setApplyMaskAndGutter:{-[BKPictureBookNavigationController drawsSpine](self, "drawsSpine")}];
  pageCurlManager = [(BKPictureBookNavigationController *)self pageCurlManager];
  numberOfQueuedCurls = [pageCurlManager numberOfQueuedCurls];

  v31 = v39;
  v30 = v40;
  if (!numberOfQueuedCurls)
  {
    if ([(BKContentViewController *)self->_rightContentViewController isContentLoaded])
    {
      view = [(BKContentViewController *)self->_rightContentViewController view];
      [v40 setLeftSourceView:view];
    }

    if ([(NSMutableSet *)self->_pendingLoads isContentLoaded])
    {
      view2 = [(NSMutableSet *)self->_pendingLoads view];
      [v40 setRightSourceView:view2];
    }

    [(BKPictureBookView *)self->_bookView setLeftContentView:0];
    [(BKPictureBookView *)self->_bookView setRightContentView:0];
    v30 = v40;
    v31 = v39;
  }

  [v30 generateWithOldLeftPageNumber:v31 oldRightPageNumber:v7 newLeftPageNumber:v8 newRightPageNumber:v9];
  if (LOBYTE(self->_swipeSelector) == 1 && (v34 = self->_leftContentViewController) != 0 && [(BKContentViewController *)v34 isForwardCurl]== curlCopy)
  {
    [(BKContentViewController *)self->_leftContentViewController finishManualCurlAtPostion:0.0, 0.0];
    leftContentViewController = self->_leftContentViewController;
    self->_leftContentViewController = 0;

    LOBYTE(self->_swipeSelector) = 0;
  }

  else
  {
    [(BKPictureBookNavigationController *)self curlPageForReadAloud:0];
    *&self->_canFitToWidth = 0x7FFFFFFFFFFFFFFFLL;
    pageCurlManager2 = [(BKPictureBookNavigationController *)self pageCurlManager];
    pageArray = [v40 pageArray];
    backPage = [v40 backPage];
    [pageCurlManager2 curlPages:pageArray backPage:backPage inContainer:self->_pageCurlManager curlPage:v19];
  }
}

- (void)_autoCurlToSinglePageOffset:(int64_t)offset forwardCurl:(BOOL)curl
{
  curlCopy = curl;
  if (LOBYTE(self->_swipeSelector) == 1 && (x = self->_manualCurlStartPosition.x, x != 0.0) && [*&x forwardCurl] == curl)
  {
    [*&self->_manualCurlStartPosition.x finishManualCurl];
    LOBYTE(self->_swipeSelector) = 0;
  }

  else
  {
    [(BKPictureBookNavigationController *)self _resetSinglePageCurlContainerFrame];
    v7 = [[BKPageBookCurlView alloc] initWithImage:0 borderColor:0 isLeft:0];
    theme = [(BKPictureBookNavigationController *)self theme];
    -[BKPageBookCurlView setUseInvertedColors:](v7, "setUseInvertedColors:", [theme shouldInvertContent]);

    [(BKPageCurl *)self->_manualCurl bounds];
    [(BKPageBookCurlView *)v7 setFrame:?];
    [(BKPageBookCurlView *)v7 bounds];
    v10 = v9;
    v12 = v11;
    isZoomedToRightPage = [(BKPictureBookNavigationController *)self isZoomedToRightPage];
    bookView = self->_bookView;
    if (isZoomedToRightPage)
    {
      [(BKPictureBookView *)bookView leftContentView];
    }

    else
    {
      [(BKPictureBookView *)bookView rightContentView];
    }
    v15 = ;
    if (v15)
    {
      [(BKPageBookCurlView *)v7 takeSnapshotOfView:v15];
    }

    else
    {
      v30.width = v10;
      v30.height = v12;
      UIGraphicsBeginImageContextWithOptions(v30, 1, 0.0);
      v16 = +[UIColor whiteColor];
      [v16 setFill];

      v31.origin.x = 0.0;
      v31.origin.y = 0.0;
      v31.size.width = v10;
      v31.size.height = v12;
      UIRectFill(v31);
      v17 = UIGraphicsGetImageFromCurrentImageContext();
      [(BKPageBookCurlView *)v7 setImage:v17];

      UIGraphicsEndImageContext();
    }

    v18 = [NSArray arrayWithObjects:v7, 0];
    layoutDirection = [(BKViewController *)self layoutDirection];
    v20 = (HIBYTE(self->_lastCompletedTransition) ^ 1) & (layoutDirection == 1);
    if (((HIBYTE(self->_lastCompletedTransition) ^ 1) & 1) == 0 && (v21 = 0, curlCopy) || (v22 = -[BKPageBookCurlView initWithImage:borderColor:isLeft:]([BKPageBookCurlView alloc], "initWithImage:borderColor:isLeft:", 0, 0, 0), -[BKPictureBookNavigationController _backPageCurlFrame](self, "_backPageCurlFrame"), -[BKPageBookCurlView setFrame:](v22, "setFrame:"), -[BKPictureBookNavigationController theme](self, "theme"), v23 = objc_claimAutoreleasedReturnValue(), -[BKPageBookCurlView setUseInvertedColors:](v22, "setUseInvertedColors:", [v23 shouldInvertContent]), v23, -[BKPageNavigationViewController delegate](self, "delegate"), v24 = objc_claimAutoreleasedReturnValue(), v28[0] = _NSConcreteStackBlock, v28[1] = 3221225472, v28[2] = sub_AD10, v28[3] = &unk_1E2C48, v21 = v22, v29 = v21, objc_msgSend(v24, "pageNavigationSnapshotForPageNumber:completion:", offset + 1, v28), v24, v29, (self->_lastCompletedTransition & 0x1000000) != 0))
    {
      pageCurlManager = [(BKPictureBookNavigationController *)self pageCurlManager];
      [(BKPageSlide *)pageCurlManager curlPages:v18 backPage:v21 inContainer:self->_manualCurl curlPage:v20 ^ curlCopy];
    }

    else
    {
      pageCurlManager = objc_alloc_init(BKPageSlide);
      [(BKPageAnimation *)pageCurlManager setPageAnimationDelegate:self];
      v26 = [NSArray arrayWithObject:v21];
      [(BKPageSlide *)pageCurlManager autoSlideFromPages:v18 toPages:v26 inContainer:self->_manualCurl isForwardAnimation:v20 ^ curlCopy isRTL:layoutDirection == 1 isZoomedToSpread:0 completion:0];
    }
  }
}

- (void)_timeOutWaitingForPaint
{
  v3 = _AEWKPictureBookLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    *v6 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_ERROR, "Timed out on painting content for curl. showing destination now", v6, 2u);
  }

  desiredScale = self->_desiredScale;
  if (desiredScale != 0.0)
  {
    [*&desiredScale removeFromSuperview];
    v5 = self->_desiredScale;
    self->_desiredScale = 0.0;
  }
}

- (void)_manualCurlToSinglePage:(CGPoint)page
{
  y = page.y;
  x = page.x;
  v6 = self->_manualCurlStartPosition.x;
  if (v6 != 0.0)
  {
    [*&v6 killCurl];
    v7 = self->_manualCurlStartPosition.x;
    self->_manualCurlStartPosition.x = 0.0;
  }

  lastCurlUnderPageView = self->_lastCurlUnderPageView;
  self->_lastCurlUnderPageView = 0;

  [(BKPageCurl *)self->_manualCurl bounds];
  v9 = v47.origin.x;
  v10 = v47.origin.y;
  width = v47.size.width;
  height = v47.size.height;
  MidX = CGRectGetMidX(v47);
  v14 = x > MidX;
  layoutDirection = [(BKViewController *)self layoutDirection];
  v16 = layoutDirection == 1;
  isZoomedToRightPage = [(BKPictureBookNavigationController *)self isZoomedToRightPage];
  pageOffset = [(BKPageNavigationViewController *)self pageOffset];
  v19 = pageOffset;
  if (v14 == v16)
  {
    if (pageOffset <= 1)
    {
      v22 = 1;
    }

    else
    {
      v22 = pageOffset;
    }
  }

  else
  {
    v20 = pageOffset + 1;
    v21 = [(BKPageNavigationViewController *)self pageCount]- 1;
    if (v20 < v21)
    {
      v21 = (v19 + 1);
    }

    v22 = (v21 + 1);
  }

  [(BKPictureBookNavigationController *)self slide:isZoomedToRightPage animated:0 withDelay:0.0];
  [(BKPictureBookNavigationController *)self _resetSinglePageCurlContainerFrame];
  v23 = [[BKPageBookCurlView alloc] initWithImage:0 borderColor:0 isLeft:0];
  [(BKPageBookCurlView *)v23 setFrame:v9, v10, width, height];
  theme = [(BKPictureBookNavigationController *)self theme];
  -[BKPageBookCurlView setUseInvertedColors:](v23, "setUseInvertedColors:", [theme shouldInvertContent]);

  bookView = self->_bookView;
  if (isZoomedToRightPage)
  {
    [(BKPictureBookView *)bookView rightContentView];
  }

  else
  {
    [(BKPictureBookView *)bookView leftContentView];
  }
  v26 = ;
  v27 = v14 ^ v16;
  if (v26)
  {
    [(BKPageBookCurlView *)v23 takeSnapshotOfView:v26];
  }

  else
  {
    v46.width = width;
    v46.height = height;
    UIGraphicsBeginImageContextWithOptions(v46, 1, 0.0);
    v28 = +[UIColor whiteColor];
    [v28 setFill];

    v48.origin.x = 0.0;
    v48.origin.y = 0.0;
    v48.size.width = width;
    v48.size.height = height;
    UIRectFill(v48);
    v29 = UIGraphicsGetImageFromCurrentImageContext();
    [(BKPageBookCurlView *)v23 setImage:v29];

    UIGraphicsEndImageContext();
  }

  v30 = [NSArray arrayWithObjects:v23, 0];
  v31 = [[BKPageBookCurlView alloc] initWithImage:0 borderColor:0 isLeft:0];
  [(BKPageBookCurlView *)v31 setFrame:v9, v10, width, height];
  theme2 = [(BKPictureBookNavigationController *)self theme];
  -[BKPageBookCurlView setUseInvertedColors:](v31, "setUseInvertedColors:", [theme2 shouldInvertContent]);

  delegate = [(BKPageNavigationViewController *)self delegate];
  v44[0] = _NSConcreteStackBlock;
  v44[1] = 3221225472;
  v44[2] = sub_B26C;
  v44[3] = &unk_1E2C48;
  v34 = v31;
  v45 = v34;
  [delegate pageNavigationSnapshotForPageNumber:v22 completion:v44];

  if (v27)
  {
    v35 = v23;
  }

  else
  {
    v35 = v34;
  }

  v36 = v35;
  [(BKPageCurl *)self->_manualCurl bounds];
  [(BKPageBookCurlView *)v23 setFrame:?];
  [(BKPictureBookNavigationController *)self _backPageCurlFrame];
  [(BKPageBookCurlView *)v34 setFrame:?];
  if (HIBYTE(self->_lastCompletedTransition) == 1)
  {
    pageCurlManager = [(BKPictureBookNavigationController *)self pageCurlManager];
    v38 = [pageCurlManager beginManualCurl:v27 atLocation:v36 inPage:v30 fromPages:v34 backPage:self->_manualCurl inContainer:{x, y}];
    v39 = self->_manualCurlStartPosition.x;
    *&self->_manualCurlStartPosition.x = v38;
  }

  else
  {
    v40 = objc_alloc_init(BKPageSlide);
    [(BKPictureBookNavigationController *)self setPageSlideAnimation:v40];

    pageSlideAnimation = [(BKPictureBookNavigationController *)self pageSlideAnimation];
    [pageSlideAnimation setPageAnimationDelegate:self];

    pageSlideAnimation2 = [(BKPictureBookNavigationController *)self pageSlideAnimation];
    v43 = [NSArray arrayWithObject:v34];
    [pageSlideAnimation2 initiateManualAnimationFromPages:v30 toPages:v43 inContainer:self->_manualCurl isForwardAnimation:x > MidX isRTL:layoutDirection == 1 isZoomedToSpread:0];

    pageCurlManager = [(BKPictureBookNavigationController *)self pageSlideAnimation];
    [pageCurlManager beginManualAnimationAtLocation:{x, y}];
  }

  self->_manualCurlStartPosition.y = x;
  *&self->_pageOffsetToRestore = y;
}

- (void)_curlPageForReadAloud:(id)aloud
{
  bOOLValue = [aloud BOOLValue];

  [(BKPictureBookNavigationController *)self curlPageForReadAloud:bOOLValue];
}

- (void)curlPageForReadAloud:(BOOL)aloud
{
  if (aloud)
  {
    pageCurlManager = [(BKPictureBookNavigationController *)self pageCurlManager];
    numberOfQueuedCurls = [pageCurlManager numberOfQueuedCurls];

    if (numberOfQueuedCurls)
    {
      self->_singlePageCurlContainer = "_curlPageForReadAloud:";
    }

    else
    {
      if (![(BKPictureBookNavigationController *)self isZoomedToSinglePage])
      {
        [(BKPictureBookNavigationController *)self zoomToSpread:1];
      }

      layoutDirection = [(BKViewController *)self layoutDirection];
      if ([(BKPictureBookNavigationController *)self inSinglePageMode])
      {
        if (layoutDirection == 1)
        {
          Width = 0.0;
          *&v9 = 50.0;
        }

        else
        {
          [(BKPageCurl *)self->_manualCurl bounds];
          Width = CGRectGetWidth(v57);
          *&v9 = -50.0;
        }

        v37 = *&v9;
        [(BKPageCurl *)self->_manualCurl bounds];
        Height = CGRectGetHeight(v58);
        [(BKPictureBookNavigationController *)self _manualCurlToSinglePage:Width, Height];
        pageCurlManager2 = [(BKPictureBookNavigationController *)self pageCurlManager];
        [pageCurlManager2 updateManualCurl:*&self->_manualCurlStartPosition.x toLocation:{v37 + Width, Height + -50.0}];

        LOBYTE(self->_swipeSelector) = 1;
      }

      else if (!self->_leftContentViewController)
      {
        curlContainer = [(BKPictureBookNavigationController *)self curlContainer];
        [(BKPictureBookNavigationController *)self _resetCurlContainerFrame];
        [(BKContentViewController *)self->_leftContentViewController cancelManualCurl];
        pageCurlManager3 = [(BKPictureBookNavigationController *)self pageCurlManager];
        [pageCurlManager3 killAllCurls];

        v11 = [(BKPageNavigationViewController *)self pageOffset]+ 2;
        pageCount = [(BKPageNavigationViewController *)self pageCount];
        if (v11 >= pageCount - 1)
        {
          v11 = (pageCount - 1);
        }

        v54 = [(BKPageNavigationViewController *)self leftPageNumberForSpreadPageOffset:[(BKPageNavigationViewController *)self pageOffset]];
        v13 = [(BKPageNavigationViewController *)self rightPageNumberForSpreadPageOffset:[(BKPageNavigationViewController *)self pageOffset]];
        v14 = [(BKPageNavigationViewController *)self leftPageNumberForSpreadPageOffset:v11];
        v15 = [(BKPageNavigationViewController *)self rightPageNumberForSpreadPageOffset:v11];
        v16 = objc_opt_new();
        leftContentViewController = self->_leftContentViewController;
        self->_leftContentViewController = v16;

        [(BKContentViewController *)self->_leftContentViewController setCurlContainer:curlContainer];
        delegate = [(BKPageNavigationViewController *)self delegate];
        [(BKContentViewController *)self->_leftContentViewController setNavDelegate:delegate];

        [(BKContentViewController *)self->_leftContentViewController setForwardCurl:[(BKViewController *)self layoutDirection]== 0];
        isZoomedToSpread = [(BKPictureBookNavigationController *)self isZoomedToSpread];
        v20 = 0.25;
        if (isZoomedToSpread)
        {
          v20 = 0.5;
        }

        [(BKContentViewController *)self->_leftContentViewController setCurlThreshold:v20];
        [(BKContentViewController *)self->_leftContentViewController setApplyMaskAndGutter:[(BKPictureBookNavigationController *)self drawsSpine]];
        isZoomedToSpread2 = [(BKPictureBookNavigationController *)self isZoomedToSpread];
        [(BKPictureBookNavigationController *)self contentSize];
        v23 = v22;
        v25 = v24;
        thumbnailBookViewConfiguration = [(BKPictureBookNavigationController *)self thumbnailBookViewConfiguration];
        drawsSpine = [(BKPictureBookNavigationController *)self drawsSpine];
        [(BKPictureBookNavigationController *)self _containerBoundsForGeometry];
        v32 = [BKPictureBookViewGeometry geometryWithContentSize:thumbnailBookViewConfiguration configuration:drawsSpine drawsSpine:v23 containerBounds:v25, v28, v29, v30, v31];

        [v32 scaleForSpread:isZoomedToSpread2 landscape:isPortrait() ^ 1];
        if (v33 >= BEWebViewMinimumZoomScale)
        {
          v34 = v33;
        }

        else
        {
          v34 = BEWebViewMinimumZoomScale;
        }

        [curlContainer setScale:v34];
        [(BKContentViewController *)self->_leftContentViewController setScale:v34];
        [(BKContentViewController *)self->_leftContentViewController generateWithOldLeftPageNumber:v54 oldRightPageNumber:v13 newLeftPageNumber:v14 newRightPageNumber:v15];
        if (layoutDirection == 1)
        {
          v35 = 0.0;
          *&v36 = 50.0;
        }

        else
        {
          [curlContainer bounds];
          v35 = CGRectGetWidth(v59);
          *&v36 = -50.0;
        }

        v40 = *&v36;
        [curlContainer bounds];
        v41 = CGRectGetHeight(v60);
        [(BKContentViewController *)self->_leftContentViewController startManualCurlAtPostion:v35, v41];
        view = [(BKContentViewController *)self->_rightContentViewController view];
        [(BKContentViewController *)self->_leftContentViewController setLeftSourceView:view];

        view2 = [(NSMutableSet *)self->_pendingLoads view];
        [(BKContentViewController *)self->_leftContentViewController setRightSourceView:view2];

        [(BKPictureBookView *)self->_bookView setLeftContentView:0];
        [(BKPictureBookView *)self->_bookView setRightContentView:0];
        pageCurlManager4 = [(BKPictureBookNavigationController *)self pageCurlManager];
        isForwardCurl = [(BKContentViewController *)self->_leftContentViewController isForwardCurl];
        [(BKContentViewController *)self->_leftContentViewController manualCurlStartPosition];
        v47 = v46;
        v49 = v48;
        curlPage = [(BKContentViewController *)self->_leftContentViewController curlPage];
        pageArray = [(BKContentViewController *)self->_leftContentViewController pageArray];
        backPage = [(BKContentViewController *)self->_leftContentViewController backPage];
        v53 = [pageCurlManager4 beginManualCurl:isForwardCurl atLocation:curlPage inPage:pageArray fromPages:backPage backPage:self->_pageCurlManager inContainer:{v47, v49}];
        [(BKContentViewController *)self->_leftContentViewController setPageCurl:v53];

        [(BKContentViewController *)self->_leftContentViewController updateManualCurlToPosition:v40 + v35, v41 + -50.0];
        LOBYTE(self->_swipeSelector) = 1;
      }
    }
  }

  else
  {
    [*&self->_manualCurlStartPosition.x cancelManualCurl];
    [(BKContentViewController *)self->_leftContentViewController cancelManualCurl];
    v6 = self->_leftContentViewController;
    self->_leftContentViewController = 0;

    LOBYTE(self->_swipeSelector) = 0;
  }
}

- (void)manualCurlGesture:(id)gesture
{
  gestureCopy = gesture;
  if ([(BKPictureBookNavigationController *)self inSinglePageMode])
  {
    [(BKPictureBookNavigationController *)self handleSinglePageManualCurlGesture:gestureCopy];
  }

  else
  {
    [(BKPictureBookNavigationController *)self handleSpreadManualCurlGesture:gestureCopy];
  }
}

- (void)handleSinglePageManualCurlGesture:(id)gesture
{
  gestureCopy = gesture;
  singlePageCurlContainer = [(BKPictureBookNavigationController *)self singlePageCurlContainer];
  [gestureCopy locationInView:singlePageCurlContainer];
  v7 = v6;
  v9 = v8;

  state = [gestureCopy state];
  if (state > 3)
  {
    if ((state - 4) >= 2)
    {
      return;
    }

    x = self->_manualCurlStartPosition.x;
    if (x != 0.0)
    {
      [*&x cancelManualCurl];
    }

    pageSlideAnimation = [(BKPictureBookNavigationController *)self pageSlideAnimation];
    [pageSlideAnimation cancelManualAnimation];
    goto LABEL_22;
  }

  if (state == &dword_0 + 1)
  {

    [(BKPictureBookNavigationController *)self _manualCurlToSinglePage:v7, v9];
  }

  else
  {
    if (state != &dword_0 + 2)
    {
      if (state == &dword_0 + 3)
      {
        v11 = self->_manualCurlStartPosition.x;
        if (v11 != 0.0)
        {
          type = [*&v11 type];
          v13 = vabdd_f64(v7, self->_manualCurlStartPosition.y);
          [(BKPageCurl *)self->_manualCurl frame];
          if (v13 <= CGRectGetWidth(v27) * 0.25)
          {
            [*&self->_manualCurlStartPosition.x cancelManualCurl];
          }

          else
          {
            [*&self->_manualCurlStartPosition.x finishManualCurl];
            pageOffset = [(BKPageNavigationViewController *)self pageOffset];
            if (type == 2)
            {
              v15 = pageOffset + 1;
            }

            else
            {
              v15 = pageOffset - 1;
            }

            [(BKPictureBookNavigationController *)self setPageOffset:v15];
            [(BKPictureBookNavigationController *)self _resetSinglePageCurlContainerFrame];
          }
        }

        if (self->_lastCurlUnderPageView)
        {
          v19 = vabdd_f64(v7, self->_manualCurlStartPosition.y);
          [(BKPageCurl *)self->_manualCurl frame];
          Width = CGRectGetWidth(v28);
          lastCurlUnderPageView = self->_lastCurlUnderPageView;
          if (v19 <= Width * 0.25)
          {

            [(UIView *)lastCurlUnderPageView cancelManualAnimation];
          }

          else
          {
            [(UIView *)lastCurlUnderPageView finishManualAnimation];
            isGoingToNextPage = [(UIView *)self->_lastCurlUnderPageView isGoingToNextPage];
            pageOffset2 = [(BKPageNavigationViewController *)self pageOffset];
            if (isGoingToNextPage)
            {
              v24 = pageOffset2 + 1;
            }

            else
            {
              v24 = pageOffset2 - 1;
            }

            [(BKPictureBookNavigationController *)self setPageOffset:v24];

            [(BKPictureBookNavigationController *)self _resetSinglePageCurlContainerFrame];
          }
        }
      }

      return;
    }

    if (*&self->_manualCurlStartPosition.x)
    {
      pageCurlManager = [(BKPictureBookNavigationController *)self pageCurlManager];
      [pageCurlManager updateManualCurl:*&self->_manualCurlStartPosition.x toLocation:{v7, v9}];
    }

    pageSlideAnimation2 = [(BKPictureBookNavigationController *)self pageSlideAnimation];

    if (pageSlideAnimation2)
    {
      pageSlideAnimation = [(BKPictureBookNavigationController *)self pageSlideAnimation];
      [pageSlideAnimation updateManualAnimationToLocation:{v7, v9}];
LABEL_22:
    }
  }
}

- (unint64_t)_pageOffsetAfter:(int64_t)after whenCurlingForward:(BOOL)forward
{
  v6 = ([(BKViewController *)self layoutDirection]== &dword_0 + 1) ^ forward;
  isZoomedToSpread = [(BKPictureBookNavigationController *)self isZoomedToSpread];
  v8 = 1;
  if (isZoomedToSpread)
  {
    v8 = 2;
  }

  v9 = -2;
  if (!isZoomedToSpread)
  {
    v9 = -1;
  }

  if (!v6)
  {
    v8 = v9;
  }

  v10 = v8 + after;
  if (v6 == 1)
  {
    pageCount = [(BKPageNavigationViewController *)self pageCount];
    if (v10 >= pageCount - 1)
    {
      v10 = pageCount - 1;
    }
  }

  else
  {
    v10 &= ~(v10 >> 63);
  }

  v12 = [(BKPageNavigationViewController *)self leftPageNumberForSpreadPageOffset:v10];
  if (v12 == [(BKPageNavigationViewController *)self leftPageNumberForSpreadPageOffset:after])
  {
    return after;
  }

  else
  {
    return v10;
  }
}

- (void)handleSpreadManualCurlGesture:(id)gesture
{
  gestureCopy = gesture;
  isZoomedToSpread = [(BKPictureBookNavigationController *)self isZoomedToSpread];
  curlContainer = [(BKPictureBookNavigationController *)self curlContainer];
  [gestureCopy locationInView:curlContainer];
  v7 = v6;
  v9 = v8;

  state = [gestureCopy state];
  if (state > 3)
  {
    if ((state - 4) >= 2)
    {
      goto LABEL_46;
    }

    [(BKContentViewController *)self->_leftContentViewController cancelManualCurl];
    leftContentViewController = self->_leftContentViewController;
    self->_leftContentViewController = 0;

    pageSlideAnimation = [(BKPictureBookNavigationController *)self pageSlideAnimation];
    [pageSlideAnimation cancelManualAnimation];
    goto LABEL_16;
  }

  if (state == &dword_0 + 1)
  {
    v16 = &OBJC_IVAR___BKPictureBookNavigationController__singlePageCurlContainer;
    if (isZoomedToSpread)
    {
      v16 = &OBJC_IVAR___BKPictureBookNavigationController__curlContainer;
    }

    [*&self->super.super.IMViewController_opaque[*v16] bounds];
    v17 = v7 > CGRectGetMidX(v80);
    objc_opt_class();
    v18 = BUDynamicCast();
    if (v18)
    {
      curlContainer2 = [(BKPictureBookNavigationController *)self curlContainer];
      [v18 velocityInView:curlContainer2];
      v21 = v20;

      v17 = v21 < 0.0;
    }

    layoutDirection = [(BKViewController *)self layoutDirection];
    v23 = [(BKPictureBookNavigationController *)self _pageOffsetAfter:[(BKPageNavigationViewController *)self pageOffset] whenCurlingForward:v17];
    if (v23 == [(BKPageNavigationViewController *)self pageOffset])
    {
      goto LABEL_45;
    }

    if (!isZoomedToSpread)
    {
      [(BKPictureBookNavigationController *)self _resetSinglePageCurlContainerFrame];
    }

    [(BKPictureBookNavigationController *)self _resetCurlContainerFrame];
    v24 = [(BKPageNavigationViewController *)self leftPageNumberForSpreadPageOffset:[(BKPageNavigationViewController *)self pageOffset]];
    v25 = [(BKPageNavigationViewController *)self rightPageNumberForSpreadPageOffset:[(BKPageNavigationViewController *)self pageOffset]];
    v26 = [(BKPageNavigationViewController *)self leftPageNumberForSpreadPageOffset:v23];
    v27 = [(BKPageNavigationViewController *)self rightPageNumberForSpreadPageOffset:v23];
    v28 = self->_leftContentViewController;
    if (v28)
    {
      if (v17 != [(BKContentViewController *)v28 isForwardCurl])
      {
        pageCurl = [(BKContentViewController *)self->_leftContentViewController pageCurl];
        [pageCurl cancelManualCurl];

LABEL_45:
        goto LABEL_46;
      }
    }

    else
    {
      v47 = objc_opt_new();
      v48 = self->_leftContentViewController;
      self->_leftContentViewController = v47;
    }

    v75 = layoutDirection;
    [(BKContentViewController *)self->_leftContentViewController setCurlContainer:self->_pageCurlManager];
    [(BKPageNavigationViewController *)self delegate];
    v49 = v77 = v27;
    [(BKContentViewController *)self->_leftContentViewController setNavDelegate:v49];

    [(BKContentViewController *)self->_leftContentViewController setForwardCurl:v17];
    [(BKContentViewController *)self->_leftContentViewController setApplyMaskAndGutter:[(BKPictureBookNavigationController *)self drawsSpine]];
    v50 = 0.25;
    if (isZoomedToSpread)
    {
      v50 = 0.5;
    }

    [(BKContentViewController *)self->_leftContentViewController setCurlThreshold:v50];
    [(BKPictureBookNavigationController *)self contentSize];
    v52 = v51;
    v54 = v53;
    thumbnailBookViewConfiguration = [(BKPictureBookNavigationController *)self thumbnailBookViewConfiguration];
    v76 = v25;
    v56 = v24;
    drawsSpine = [(BKPictureBookNavigationController *)self drawsSpine];
    [(BKPictureBookNavigationController *)self _containerBoundsForGeometry];
    v62 = [BKPictureBookViewGeometry geometryWithContentSize:thumbnailBookViewConfiguration configuration:drawsSpine drawsSpine:v52 containerBounds:v54, v58, v59, v60, v61];

    [v62 scaleForSpread:isZoomedToSpread landscape:isPortrait() ^ 1];
    if (v63 >= BEWebViewMinimumZoomScale)
    {
      v64 = v63;
    }

    else
    {
      v64 = BEWebViewMinimumZoomScale;
    }

    [(BKPageCurlManager *)self->_pageCurlManager setScale:v64, &self->_pageCurlManager];
    [(BKContentViewController *)self->_leftContentViewController setScale:v64];
    view = [(BKContentViewController *)self->_rightContentViewController view];
    [(BKContentViewController *)self->_leftContentViewController setLeftSourceView:view];

    view2 = [(NSMutableSet *)self->_pendingLoads view];
    [(BKContentViewController *)self->_leftContentViewController setRightSourceView:view2];

    [(BKContentViewController *)self->_leftContentViewController generateWithOldLeftPageNumber:v56 oldRightPageNumber:v76 newLeftPageNumber:v26 newRightPageNumber:v77];
    if (HIBYTE(self->_lastCompletedTransition) == 1)
    {
      [(BKContentViewController *)self->_leftContentViewController startManualCurlAtPostion:v7, v9];
    }

    else
    {
      v67 = objc_alloc_init(BKPageSlide);
      [(BKPictureBookNavigationController *)self setPageSlideAnimation:v67];

      pageSlideAnimation2 = [(BKPictureBookNavigationController *)self pageSlideAnimation];
      [pageSlideAnimation2 setPageAnimationDelegate:self];

      pageSlideAnimation3 = [(BKPictureBookNavigationController *)self pageSlideAnimation];
      pageArray = [(BKContentViewController *)self->_leftContentViewController pageArray];
      backPageArray = [(BKContentViewController *)self->_leftContentViewController backPageArray];
      p_manualCurl = v74;
      if (BYTE2(self->_lastCompletedTransition) == 1)
      {
        p_manualCurl = &self->_manualCurl;
      }

      [pageSlideAnimation3 initiateManualAnimationFromPages:pageArray toPages:backPageArray inContainer:*p_manualCurl isForwardAnimation:v17 isRTL:v75 == 1 isZoomedToSpread:isZoomedToSpread];

      pageSlideAnimation4 = [(BKPictureBookNavigationController *)self pageSlideAnimation];
      [pageSlideAnimation4 beginManualAnimationAtLocation:{v7, v9}];
    }

    goto LABEL_45;
  }

  if (state == &dword_0 + 2)
  {
    view3 = [(BKContentViewController *)self->_rightContentViewController view];
    [(BKContentViewController *)self->_leftContentViewController setLeftSourceView:view3];

    view4 = [(NSMutableSet *)self->_pendingLoads view];
    [(BKContentViewController *)self->_leftContentViewController setRightSourceView:view4];

    if (self->_leftContentViewController && !self->_lastCurlUnderPageView)
    {
      [(BKPictureBookView *)self->_bookView setLeftContentView:0];
      [(BKPictureBookView *)self->_bookView setRightContentView:0];
      pageCurl2 = [(BKContentViewController *)self->_leftContentViewController pageCurl];

      if (!pageCurl2)
      {
        pageCurlManager = [(BKPictureBookNavigationController *)self pageCurlManager];
        isForwardCurl = [(BKContentViewController *)self->_leftContentViewController isForwardCurl];
        [(BKContentViewController *)self->_leftContentViewController manualCurlStartPosition];
        v36 = v35;
        v38 = v37;
        curlPage = [(BKContentViewController *)self->_leftContentViewController curlPage];
        pageArray2 = [(BKContentViewController *)self->_leftContentViewController pageArray];
        backPage = [(BKContentViewController *)self->_leftContentViewController backPage];
        v42 = [pageCurlManager beginManualCurl:isForwardCurl atLocation:curlPage inPage:pageArray2 fromPages:backPage backPage:self->_pageCurlManager inContainer:{v36, v38}];
        [(BKContentViewController *)self->_leftContentViewController setPageCurl:v42];

        view5 = [(BKContentViewController *)self->_rightContentViewController view];
        [(BKContentViewController *)self->_leftContentViewController setLeftSourceView:view5];

        view6 = [(NSMutableSet *)self->_pendingLoads view];
        [(BKContentViewController *)self->_leftContentViewController setRightSourceView:view6];
      }

      [(BKContentViewController *)self->_leftContentViewController updateManualCurlToPosition:v7, v9];
      delegate = [(BKPageNavigationViewController *)self delegate];
      [delegate pageNavigationDidBeginInteracting:self];
    }

    pageSlideAnimation5 = [(BKPictureBookNavigationController *)self pageSlideAnimation];
    [pageSlideAnimation5 updateManualAnimationToLocation:{v7, v9}];
  }

  else if (state == &dword_0 + 3)
  {
    v11 = self->_leftContentViewController;
    if (v11 && !self->_lastCurlUnderPageView)
    {
      [(BKContentViewController *)v11 updateManualCurlToPosition:v7, v9];
      if ([(BKContentViewController *)self->_leftContentViewController finishManualCurlAtPostion:v7, v9])
      {
        [(BKPictureBookNavigationController *)self setPageOffset:[(BKPictureBookNavigationController *)self _pageOffsetAfter:[(BKPageNavigationViewController *)self pageOffset] whenCurlingForward:[(BKContentViewController *)self->_leftContentViewController isForwardCurl]]];
        if (!isZoomedToSpread)
        {
          [(BKPictureBookNavigationController *)self slide:[(BKContentViewController *)self->_leftContentViewController isForwardCurl] animated:1 withDelay:0.0];
        }
      }

      pageCurl3 = [(BKContentViewController *)self->_leftContentViewController pageCurl];

      if (!pageCurl3)
      {
        v13 = self->_leftContentViewController;
        self->_leftContentViewController = 0;
      }
    }

    if (self->_lastCurlUnderPageView)
    {
      [(BKPictureBookNavigationController *)self setPageOffset:[(BKPictureBookNavigationController *)self _pageOffsetAfter:[(BKPageNavigationViewController *)self pageOffset] whenCurlingForward:[(BKContentViewController *)self->_leftContentViewController isForwardCurl]]];
      pageSlideAnimation = [(BKPictureBookNavigationController *)self pageSlideAnimation];
      [pageSlideAnimation finishManualAnimation];
LABEL_16:

      [(BKPictureBookNavigationController *)self setPageSlideAnimation:0];
    }
  }

LABEL_46:
}

- (void)_restoreViewHierarchyWithArray:(id)array
{
  if (array)
  {
    view = [(NSMutableSet *)self->_pendingLoads view];
    [(BKPictureBookView *)self->_bookView setRightContentView:view];

    view2 = [(BKContentViewController *)self->_rightContentViewController view];
    [(BKPictureBookView *)self->_bookView setLeftContentView:view2];

    leftContentViewController = self->_leftContentViewController;
    if (leftContentViewController)
    {
      isAutoCurl = [(BKContentViewController *)leftContentViewController isAutoCurl];
      leftContentViewController = self->_leftContentViewController;
      if ((isAutoCurl & 1) == 0)
      {
        [(BKContentViewController *)leftContentViewController cancelManualCurl];
        leftContentViewController = self->_leftContentViewController;
      }
    }

    self->_leftContentViewController = 0;
  }

  [(BKPictureBookNavigationController *)self _resetCurlContainer];
}

- (void)_killSpreadManualCurl
{
  leftContentViewController = self->_leftContentViewController;
  if (leftContentViewController)
  {
    if (([(BKContentViewController *)leftContentViewController isAutoCurl]& 1) == 0)
    {
      pageCurl = [(BKContentViewController *)self->_leftContentViewController pageCurl];
      existingPages = [pageCurl existingPages];

      if (existingPages)
      {
        view = [(NSMutableSet *)self->_pendingLoads view];
        [(BKPictureBookView *)self->_bookView setRightContentView:view];

        view2 = [(BKContentViewController *)self->_rightContentViewController view];
        [(BKPictureBookView *)self->_bookView setLeftContentView:view2];

        [(BKPictureBookView *)self->_bookView layoutIfNeeded];
        pageCurlManager = [(BKPictureBookNavigationController *)self pageCurlManager];
        [pageCurlManager killAllCurls];

        v9 = self->_leftContentViewController;
        self->_leftContentViewController = 0;

        [(BKPictureBookNavigationController *)self _resetCurlContainer];
      }
    }
  }
}

- (BOOL)bkLongPressGestureCanTransitionToRecognizedState:(id)state
{
  stateCopy = state;
  layoutDirection = [(BKViewController *)self layoutDirection];
  if ([(BKPictureBookNavigationController *)self inSinglePageMode])
  {
    [(BKPictureBookNavigationController *)self _resetSinglePageCurlContainerFrame];
    view = [(BKPictureBookNavigationController *)self view];
    [stateCopy locationInView:view];
    v8 = v7;

    view2 = [(BKPictureBookNavigationController *)self view];
    [view2 frame];
    v10 = CGRectGetWidth(v21) + -22.0;

    v11 = 22.0;
  }

  else
  {
    curlContainer = [(BKPictureBookNavigationController *)self curlContainer];
    [stateCopy locationInView:curlContainer];
    v8 = v13;

    [(BKPictureBookNavigationController *)self _resetCurlContainerFrame];
    v10 = CGRectGetWidth(v22) + -88.0;
    v11 = 88.0;
  }

  if ([(BKPictureBookNavigationController *)self _isFreeScale]|| v8 > v11 && v8 <= v10)
  {
    goto LABEL_7;
  }

  pageOffset = [(BKPageNavigationViewController *)self pageOffset];
  v16 = pageOffset;
  if (layoutDirection == 1)
  {
    if (v8 > v10 && !pageOffset)
    {
      goto LABEL_7;
    }

    pageOffset2 = [(BKPageNavigationViewController *)self pageOffset];
    v18 = pageOffset2 >= [(BKPageNavigationViewController *)self pageCount]- 1;
  }

  else
  {
    pageCount = [(BKPageNavigationViewController *)self pageCount];
    if (v8 > v10 && v16 >= pageCount - 1)
    {
      goto LABEL_7;
    }

    v18 = [(BKPageNavigationViewController *)self pageOffset]== 0;
  }

  if (v8 < v11 && v18)
  {
LABEL_7:
    LOBYTE(isContentRenderComplete) = 0;
    return isContentRenderComplete;
  }

  isContentRenderComplete = [(BKPictureBookNavigationController *)self isContentRenderComplete];
  if (isContentRenderComplete)
  {
    [(BKPictureBookScrollView *)self->_scrollView setBounces:0];
    [(BKPictureBookScrollView *)self->_scrollView setAlwaysBounceVertical:0];
    [(BKPictureBookScrollView *)self->_scrollView setAlwaysBounceHorizontal:0];
    LOBYTE(isContentRenderComplete) = 1;
  }

  return isContentRenderComplete;
}

- (CGSize)contentSize
{
  width = self->_contentSize.width;
  height = self->_contentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end