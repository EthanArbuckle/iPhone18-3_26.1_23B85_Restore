@interface BKPictureBookNavigationController
- (BKPageCurlManager)pageCurlManager;
- (BKPictureBookNavigationController)init;
- (BOOL)_contentController:(id)a3 hasMediaElementAtPoint:(CGPoint)a4 inView:(id)a5;
- (BOOL)_hasMediaElementAtTouch:(id)a3;
- (BOOL)_isFreeScale;
- (BOOL)bkLongPressGestureCanTransitionToRecognizedState:(id)a3;
- (BOOL)currentlyZoomed;
- (BOOL)gestureRecognizer:(id)a3 canBePreventedByGestureRecognizer:(id)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldBeRequiredToFailByGestureRecognizer:(id)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (BOOL)hasMediaElementAtPoint:(CGPoint)a3 inView:(id)a4;
- (BOOL)isMediaPlayerGestureRecognizer:(id)a3;
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
- (id)_singlePageVisibleContentViewControllerForPageOffset:(int64_t)a3;
- (id)curlContainer;
- (id)viewControllers;
- (id)viewForPageNumber:(int64_t)a3;
- (int)tapActionForLocation:(CGPoint)a3 view:(id)a4 ignoreOppositePage:(BOOL)a5;
- (unint64_t)_pageOffsetAfter:(int64_t)a3 whenCurlingForward:(BOOL)a4;
- (void)_adjustToNewSize:(CGSize)a3 withOptionalTransitionCoordinator:(id)a4;
- (void)_applyAdditionalScale:(id)a3;
- (void)_autoCurlToSinglePageOffset:(int64_t)a3 forwardCurl:(BOOL)a4;
- (void)_autoCurlToSpreadPageOffset:(int64_t)a3 forwardCurl:(BOOL)a4;
- (void)_autoSlideToSpreadPageOffset:(int64_t)a3 forwardCurl:(BOOL)a4;
- (void)_contentIsReadyOrFailed:(id)a3;
- (void)_curlPageForReadAloud:(id)a3;
- (void)_displayPagesForOffset:(int64_t)a3;
- (void)_generateLeftPageImageAtPageOffset:(int64_t)a3 completion:(id)a4;
- (void)_generateRightPageImageAtPageOffset:(int64_t)a3 completion:(id)a4;
- (void)_insertDestinationSnapshotImageUnderCurrentPageCurl:(int64_t)a3;
- (void)_killSpreadManualCurl;
- (void)_manualCurlToSinglePage:(CGPoint)a3;
- (void)_resetCurlContainer;
- (void)_resetSinglePageCurlContainer:(id)a3;
- (void)_restoreViewHierarchyWithArray:(id)a3;
- (void)_setupView;
- (void)_timeOutWaitingForPaint;
- (void)_traitCollectionDidChange:(id)a3 previousTraitCollection:(id)a4;
- (void)_updateBookScale;
- (void)_updateSelectionHighlights;
- (void)addPendingContent:(id)a3;
- (void)contentViewImage:(BOOL)a3 afterScreenUpdates:(BOOL)a4 completion:(id)a5;
- (void)curlPageForReadAloud:(BOOL)a3;
- (void)dealloc;
- (void)enterSinglePageMode;
- (void)exitSinglePageMode;
- (void)handleDoubleTap:(id)a3;
- (void)handlePageChangeTap:(id)a3;
- (void)handleSinglePageManualCurlGesture:(id)a3;
- (void)handleSpreadManualCurlGesture:(id)a3;
- (void)leftSwipe:(id)a3;
- (void)manualCurlGesture:(id)a3;
- (void)pageAnimation:(id)a3 didFinish:(BOOL)a4;
- (void)pageAnimationWillBegin:(id)a3;
- (void)pageCurlManager:(id)a3 didCancelCurl:(id)a4;
- (void)pageCurlManager:(id)a3 didFinishCurl:(id)a4 transitionCompleted:(BOOL)a5;
- (void)pageCurlManager:(id)a3 willBeginCurl:(id)a4;
- (void)releaseViews;
- (void)removePendingContent:(id)a3;
- (void)rightSwipe:(id)a3;
- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4;
- (void)scrollViewDidEndZooming:(id)a3 withView:(id)a4 atScale:(double)a5;
- (void)scrollViewDidScroll:(id)a3;
- (void)scrollViewDidZoom:(id)a3;
- (void)scrollViewWillBeginDragging:(id)a3;
- (void)scrollViewWillBeginZooming:(id)a3 withView:(id)a4;
- (void)setContentSize:(CGSize)a3;
- (void)setPageOffset:(int64_t)a3;
- (void)setSelectionHighlightsVisible:(BOOL)a3;
- (void)slide:(BOOL)a3 animated:(BOOL)a4 withDelay:(double)a5;
- (void)toggleControls:(id)a3;
- (void)transitionDidFinish:(BOOL)a3;
- (void)turnToNextPage;
- (void)turnToPageNumber:(int64_t)a3 animated:(BOOL)a4;
- (void)turnToPreviousPage;
- (void)updateUpsellZoomScale;
- (void)updateVisibleContentViewControllerForOffset:(int64_t)a3;
- (void)viewDidLoad;
- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4;
- (void)viewIsAppearing:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
- (void)zoom:(BOOL)a3 animated:(BOOL)a4;
- (void)zoomToPage:(unint64_t)a3 animated:(BOOL)a4;
- (void)zoomToPoint:(CGPoint)a3 scale:(double)a4 animated:(BOOL)a5;
- (void)zoomToSpread:(BOOL)a3;
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
  v3 = [(BKPictureBookNavigationController *)self view];
  [v3 setOpaque:0];
  v4 = [(BKPictureBookNavigationController *)self _createZoomingScrollView];
  scrollView = self->_scrollView;
  self->_scrollView = v4;

  [v3 bounds];
  IMActionSafeRectForRect();
  [(BKPictureBookScrollView *)self->_scrollView setFrame:?];
  [v3 addSubview:self->_scrollView];
  v6 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"handleDoubleTap:"];
  doubleTapGestureRecognizer = self->_doubleTapGestureRecognizer;
  self->_doubleTapGestureRecognizer = v6;

  [(UITapGestureRecognizer *)self->_doubleTapGestureRecognizer setNumberOfTapsRequired:2];
  [(UITapGestureRecognizer *)self->_doubleTapGestureRecognizer setDelegate:self];
  [v3 addGestureRecognizer:self->_doubleTapGestureRecognizer];
  v8 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"handlePageChangeTap:"];
  pageChangeTapRecognizer = self->_pageChangeTapRecognizer;
  self->_pageChangeTapRecognizer = v8;

  [(UITapGestureRecognizer *)self->_pageChangeTapRecognizer setDelegate:self];
  [(UITapGestureRecognizer *)self->_pageChangeTapRecognizer requireGestureRecognizerToFail:self->_doubleTapGestureRecognizer];
  [v3 addGestureRecognizer:self->_pageChangeTapRecognizer];
  v10 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"toggleControls:"];
  controlsTapRecognizer = self->_controlsTapRecognizer;
  self->_controlsTapRecognizer = v10;

  [(UITapGestureRecognizer *)self->_controlsTapRecognizer setDelegate:self];
  [(UITapGestureRecognizer *)self->_controlsTapRecognizer requireGestureRecognizerToFail:self->_pageChangeTapRecognizer];
  [(UITapGestureRecognizer *)self->_controlsTapRecognizer requireGestureRecognizerToFail:self->_doubleTapGestureRecognizer];
  [v3 addGestureRecognizer:self->_controlsTapRecognizer];
  v12 = [[BKLongPressGestureRecognizer alloc] initWithTarget:self action:"manualCurlGesture:"];
  manualCurlGestureRecognizer = self->_manualCurlGestureRecognizer;
  self->_manualCurlGestureRecognizer = v12;

  [(BKLongPressGestureRecognizer *)self->_manualCurlGestureRecognizer setDelegate:self];
  [(BKLongPressGestureRecognizer *)self->_manualCurlGestureRecognizer setMinimumPressDuration:0.0500000007];
  [(BKLongPressGestureRecognizer *)self->_manualCurlGestureRecognizer setCancelsTouchesInView:1];
  [(BKLongPressGestureRecognizer *)self->_manualCurlGestureRecognizer requireGestureRecognizerToFail:self->_pageChangeTapRecognizer];
  [v3 addGestureRecognizer:self->_manualCurlGestureRecognizer];
  v14 = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:"leftSwipe:"];
  leftSwipeGestureRecognizer = self->_leftSwipeGestureRecognizer;
  self->_leftSwipeGestureRecognizer = v14;

  [(UISwipeGestureRecognizer *)self->_leftSwipeGestureRecognizer setDelegate:self];
  [(UISwipeGestureRecognizer *)self->_leftSwipeGestureRecognizer setDirection:2];
  [(UISwipeGestureRecognizer *)self->_leftSwipeGestureRecognizer setCancelsTouchesInView:1];
  [(UISwipeGestureRecognizer *)self->_leftSwipeGestureRecognizer requireGestureRecognizerToFail:self->_manualCurlGestureRecognizer];
  [(UISwipeGestureRecognizer *)self->_leftSwipeGestureRecognizer requireGestureRecognizerToFail:self->_panManualCurlGestureRecognizer];
  [v3 addGestureRecognizer:self->_leftSwipeGestureRecognizer];
  v16 = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:"rightSwipe:"];
  rightSwipeGestureRecognizer = self->_rightSwipeGestureRecognizer;
  self->_rightSwipeGestureRecognizer = v16;

  [(UISwipeGestureRecognizer *)self->_rightSwipeGestureRecognizer setDelegate:self];
  [(UISwipeGestureRecognizer *)self->_rightSwipeGestureRecognizer setDirection:1];
  [(UISwipeGestureRecognizer *)self->_rightSwipeGestureRecognizer requireGestureRecognizerToFail:self->_manualCurlGestureRecognizer];
  [(UISwipeGestureRecognizer *)self->_rightSwipeGestureRecognizer requireGestureRecognizerToFail:self->_panManualCurlGestureRecognizer];
  [v3 addGestureRecognizer:self->_rightSwipeGestureRecognizer];
  v18 = objc_alloc_init(BKPictureBookView);
  bookView = self->_bookView;
  self->_bookView = v18;

  [(BKPictureBookNavigationController *)self contentSize];
  [(BKPictureBookView *)self->_bookView setContentSize:?];
  [(BKPictureBookView *)self->_bookView setDrawsShadow:1];
  [(BKPictureBookView *)self->_bookView setDrawsSpine:[(BKPictureBookNavigationController *)self drawsSpine]];
  [(BKPictureBookView *)self->_bookView sizeToFit];
  v20 = [(BKPictureBookNavigationController *)self curlContainer];
  v21 = [(BKPictureBookNavigationController *)self singlePageCurlContainer];
  [(BKPictureBookScrollView *)self->_scrollView addSubview:self->_bookView];
  if (!self->_needsTurnToPageNumber)
  {
    v22 = [[NSMutableSet alloc] initWithCapacity:2];
    needsTurnToPageNumber = self->_needsTurnToPageNumber;
    self->_needsTurnToPageNumber = v22;
  }
}

- (void)viewIsAppearing:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = BKPictureBookNavigationController;
  [(BKPictureBookNavigationController *)&v4 viewIsAppearing:a3];
  [(BKPictureBookNavigationController *)self _setupView];
}

- (void)_setupView
{
  v3 = [(BKPictureBookNavigationController *)self view];
  [v3 bounds];
  IMActionSafeRectForRect();
  [(BKPictureBookScrollView *)self->_scrollView setFrame:?];

  LOBYTE(self->_lastCompletedTransition) = [(BKPictureBookNavigationController *)self singlePageAspectFits];
  scrollView = self->_scrollView;
  [(BKPictureBookView *)self->_bookView bounds];
  [(BKZoomingScrollView *)scrollView configureForImageSize:v5, v6];
  [(BKPictureBookScrollView *)self->_scrollView minimumZoomScale];
  [(BKPictureBookScrollView *)self->_scrollView setZoomScale:?];
  v7 = [(BKPictureBookNavigationController *)self openToSpread];
  if ([(BKPictureBookNavigationController *)self lastCompletedTransition]== 1 || v7 && (v7 != 0x7FFFFFFFFFFFFFFFLL || !isPortrait()))
  {
    [(BKPictureBookScrollView *)self->_scrollView minimumZoomScale];
    [(BKPictureBookScrollView *)self->_scrollView setZoomScale:?];
  }

  else
  {
    [(BKPictureBookNavigationController *)self zoomToPage:[(BKPageNavigationViewController *)self pageOffset]+ 1 animated:0];
  }

  [(BKPictureBookNavigationController *)self _updateBookScale];
  v8 = [(BKPageNavigationViewController *)self pageOffset];

  [(BKPictureBookNavigationController *)self _displayPagesForOffset:v8];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = BKPictureBookNavigationController;
  [(BKPictureBookNavigationController *)&v4 viewWillDisappear:a3];
  [(BKPictureBookCurlState *)self->_curlState killAllCurls];
  [(BKPageCurlManager *)self->_pageCurlManager reset];
  [(BKPictureBookNavigationController *)self _resetSinglePageCurlContainer];
}

- (void)_adjustToNewSize:(CGSize)a3 withOptionalTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
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
  if (v7)
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
    [v7 animateAlongsideTransition:v13 completion:v11];
  }

  else
  {
    (v9[2])(v9, 0);
    (v10[2])(v10, 0);
  }
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  if ([(BKPictureBookNavigationController *)self isVisible])
  {
    v8 = [(BKPageNavigationViewController *)self delegate];
    v9 = [v8 inLiveResize];

    if ((v9 & 1) == 0)
    {
      [(BKPictureBookNavigationController *)self _adjustToNewSize:v7 withOptionalTransitionCoordinator:width, height];
    }
  }

  v10.receiver = self;
  v10.super_class = BKPictureBookNavigationController;
  [(BKPictureBookNavigationController *)&v10 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
}

- (void)_traitCollectionDidChange:(id)a3 previousTraitCollection:(id)a4
{
  LOBYTE(self->_lastCompletedTransition) = [(BKPictureBookNavigationController *)self singlePageAspectFits:a3];
  if (![(BKPictureBookNavigationController *)self supportsSinglePageMode])
  {

    [(BKPictureBookNavigationController *)self exitSinglePageMode];
  }
}

- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4
{
  v6.receiver = self;
  v6.super_class = BKPictureBookNavigationController;
  [(BKPictureBookNavigationController *)&v6 viewDidMoveToWindow:a3 shouldAppearOrDisappear:a4];
  if (a3)
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

- (id)viewForPageNumber:(int64_t)a3
{
  v4 = [(BKPageNavigationViewController *)self delegate];
  v5 = [v4 contentViewControllerForPageNumber:a3];

  v6 = [v5 view];

  return v6;
}

- (void)_applyAdditionalScale:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 loader];
    v7 = [v6 webView];
    [v7 be_scale];
    v9 = v8;

    if (v9 >= BEWebViewMinimumZoomScale || (v10 = *self[1].super.super.IMViewController_opaque, v9 >= v10) || v10 <= 0.0)
    {
      v13 = [v5 view];
      v14 = v13;
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
      v13 = [v5 view];
      v14 = v13;
      v17 = v18;
      p_buf = &v17;
    }

    [v13 setTransform:{p_buf, *&v17.a, *&v17.c, *&v17.tx}];
  }
}

- (void)_displayPagesForOffset:(int64_t)a3
{
  v5 = [(BKPictureBookNavigationController *)self isViewLoaded];
  if (a3 != 0x7FFFFFFFFFFFFFFFLL && v5)
  {
    v6 = [(BKPageNavigationViewController *)self leftPageNumberForSinglePageOffset:a3];
    v7 = [(BKPageNavigationViewController *)self delegate];
    obj = [v7 contentViewControllerForPageNumber:v6];

    v8 = self->_rightContentViewController;
    if (obj != v8)
    {
      [(BKPictureBookNavigationController *)self addPendingContent:obj];
      [(BKPictureBookNavigationController *)self removePendingContent:v8];
      [(BKPictureBookView *)self->_bookView setLeftContentView:0];
      v9 = [(BKContentViewController *)obj view];
      [(BKPictureBookView *)self->_bookView setLeftContentView:v9];

      objc_storeStrong(&self->_rightContentViewController, obj);
      objc_opt_class();
      v10 = BUDynamicCast();
      [(BKPictureBookNavigationController *)self _applyAdditionalScale:v10];
      if ([(BKContentViewController *)v8 isViewLoaded])
      {
        v11 = [(BKPageNavigationViewController *)self delegate];
        [v11 pageNavigationDidRemoveContentViewController:v8];
      }
    }

    v12 = [(BKPageNavigationViewController *)self rightPageNumberForSinglePageOffset:a3];
    v13 = [(BKPageNavigationViewController *)self delegate];
    v14 = [v13 contentViewControllerForPageNumber:v12];

    v15 = self->_pendingLoads;
    if (v14 != v15)
    {
      [(BKPictureBookNavigationController *)self addPendingContent:v14];
      [(BKPictureBookNavigationController *)self removePendingContent:v15];
      [(BKPictureBookView *)self->_bookView setRightContentView:0];
      v16 = [(NSMutableSet *)v14 view];
      [(BKPictureBookView *)self->_bookView setRightContentView:v16];

      objc_storeStrong(&self->_pendingLoads, v14);
      objc_opt_class();
      v17 = BUDynamicCast();
      [(BKPictureBookNavigationController *)self _applyAdditionalScale:v17];
      if ([(NSMutableSet *)v15 isViewLoaded])
      {
        v18 = [(BKPageNavigationViewController *)self delegate];
        [v18 pageNavigationDidRemoveContentViewController:v15];
      }
    }

    [(BKPictureBookNavigationController *)self updateVisibleContentViewControllerForOffset:a3];
    [(BKPictureBookNavigationController *)self updateUpsellZoomScale];
  }
}

- (id)_singlePageVisibleContentViewControllerForPageOffset:(int64_t)a3
{
  if ([(BKPictureBookNavigationController *)self inSinglePageMode]&& ((v5 = [(BKPageNavigationViewController *)self leftPageNumberForSinglePageOffset:a3]- 1, v6 = [(BKPageNavigationViewController *)self rightPageNumberForSinglePageOffset:a3], v5 == a3) && (p_rightContentViewController = &self->_rightContentViewController, [(BKContentViewController *)self->_rightContentViewController isContentLoaded]) || v6 - 1 == a3 && (p_rightContentViewController = &self->_pendingLoads, [(NSMutableSet *)self->_pendingLoads isContentLoaded])))
  {
    v8 = *p_rightContentViewController;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)updateVisibleContentViewControllerForOffset:(int64_t)a3
{
  if ([(BKPictureBookNavigationController *)self inSinglePageMode])
  {
    v5 = [(BKPictureBookNavigationController *)self _singlePageVisibleContentViewControllerForPageOffset:a3];
    if (v5)
    {
      v7 = v5;
      v6 = [(BKPageNavigationViewController *)self delegate];
      [v6 pageNavigationContentViewWillAppear:v7];

      v5 = v7;
    }
  }
}

- (void)contentViewImage:(BOOL)a3 afterScreenUpdates:(BOOL)a4 completion:(id)a5
{
  v5 = a3;
  v7 = a5;
  v8 = v5 && [(BKPictureBookNavigationController *)self drawsSpine];
  v9 = [(BKPictureBookView *)self->_bookView window];

  if (v9)
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
    v24 = [(BKPictureBookView *)self->_bookView im_snapshotInContext];
    v38.width = v21;
    v38.height = v23;
    UIGraphicsBeginImageContextWithOptions(v38, 0, 0.0);
    [v24 drawInRect:{0.0, 0.0, v21, v23}];
    v25 = UIGraphicsGetImageFromCurrentImageContext();

    UIGraphicsEndImageContext();
    v7[2](v7, v25);
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
    v31 = [(BKPageNavigationViewController *)self pageOffset];
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_5878;
    v32[3] = &unk_1E2BA8;
    objc_copyWeak(&v36, &location);
    v25 = v30;
    v33 = v25;
    v34 = self;
    v35 = v7;
    [(BKPictureBookNavigationController *)self _generateLeftPageImageAtPageOffset:v31 completion:v32];

    objc_destroyWeak(&v36);
    objc_destroyWeak(&location);
  }
}

- (void)_generateLeftPageImageAtPageOffset:(int64_t)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [(BKPageNavigationViewController *)self leftPageNumberForSinglePageOffset:a3];
  v8 = [(BKPageNavigationViewController *)self delegate];
  [v8 pageNavigationSnapshotForPageNumber:v7 completion:v6];
}

- (void)_generateRightPageImageAtPageOffset:(int64_t)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [(BKPageNavigationViewController *)self rightPageNumberForSinglePageOffset:a3];
  v8 = [(BKPageNavigationViewController *)self delegate];
  [v8 pageNavigationSnapshotForPageNumber:v7 completion:v6];
}

- (void)setPageOffset:(int64_t)a3
{
  if (self->super._pageOffset != a3 || ![(BKPictureBookNavigationController *)self hasTurnedToInitialPage])
  {
    v6.receiver = self;
    v6.super_class = BKPictureBookNavigationController;
    [(BKPageNavigationViewController *)&v6 setPageOffset:a3];
    if ([(BKPictureBookNavigationController *)self isViewLoaded])
    {
      [(BKPictureBookNavigationController *)self _displayPagesForOffset:a3];
      [(BKPictureBookNavigationController *)self setHasTurnedToInitialPage:1];
      v5 = [(BKPageNavigationViewController *)self delegate];
      [v5 pageNavigationDidChangeLocation:self];
    }
  }
}

- (_NSRange)visiblePages
{
  v3 = [(BKPictureBookNavigationController *)self inSinglePageMode];
  v4 = [(BKPageNavigationViewController *)self pageOffset];
  if (v3)
  {
    v5 = v4 + 1;
    v6 = 1;
  }

  else
  {
    v7 = [(BKPageNavigationViewController *)self leftPageNumberForSpreadPageOffset:v4];
    v8 = [(BKPageNavigationViewController *)self rightPageNumberForSpreadPageOffset:[(BKPageNavigationViewController *)self pageOffset]];
    v9 = [(BKViewController *)self layoutDirection];
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

    if (v9 == 1)
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

- (void)slide:(BOOL)a3 animated:(BOOL)a4 withDelay:(double)a5
{
  v6 = a4;
  v7 = a3;
  [(BKPictureBookScrollView *)self->_scrollView contentOffset];
  v10 = v9;
  scrollView = self->_scrollView;
  if (v7)
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
    if (v6)
    {
      [(BKPictureBookNavigationController *)self contentSize];
      v22 = v21;
      v24 = v23;
      v25 = [(BKPictureBookNavigationController *)self thumbnailBookViewConfiguration];
      v26 = [(BKPictureBookNavigationController *)self drawsSpine];
      v27 = [(BKPictureBookNavigationController *)self supportsSinglePageMode];
      [(BKPictureBookNavigationController *)self _containerBoundsForGeometry];
      v32 = [BKPictureBookViewGeometry geometryWithContentSize:v25 configuration:v26 drawsSpine:v27 ignoresPadding:v22 containerBounds:v24, v28, v29, v30, v31];

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
      [UIView animateWithDuration:4 delay:v50 options:v49 animations:v45 completion:a5];
    }

    else
    {
      v48 = self->_scrollView;

      [(BKPictureBookScrollView *)v48 setContentOffset:v13, v10];
    }
  }
}

- (void)_insertDestinationSnapshotImageUnderCurrentPageCurl:(int64_t)a3
{
  v5 = [[BKPageBookCurlView alloc] initWithImage:0 borderColor:0 isLeft:0];
  [(BKPageCurl *)self->_manualCurl frame];
  [(BKPageBookCurlView *)v5 setFrame:?];
  v6 = [(BKPictureBookNavigationController *)self theme];
  -[BKPageBookCurlView setUseInvertedColors:](v5, "setUseInvertedColors:", [v6 shouldInvertContent]);

  v7 = [(BKPageCurl *)self->_manualCurl superview];
  [v7 insertSubview:v5 belowSubview:self->_manualCurl];

  v8 = [(BKPageNavigationViewController *)self delegate];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_62DC;
  v18[3] = &unk_1E2C48;
  v9 = v5;
  v19 = v9;
  [v8 pageNavigationSnapshotForPageNumber:a3 + 1 completion:v18];

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
  v11 = [(BKPictureBookNavigationController *)self _singlePageVisibleContentViewControllerForPageOffset:a3];
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

- (void)turnToPageNumber:(int64_t)a3 animated:(BOOL)a4
{
  if (a3 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = a4;
    if ([(BKPageNavigationViewController *)self pageOffset]+ 1 != a3)
    {
      v7 = +[AETestDriver shared];
      [v7 postEvent:kBETestDriverPageTurnStart sender:self];

      v8 = +[AETestDriver shared];
      [v8 postEvent:kBETestDriverPageTurnSetupStart sender:self];

      self->_cancelControlTapForPageTurn = 1;
      self->_cancelPageChangeForPageTurn = 1;
      v9 = [(BKPictureBookNavigationController *)self isVisible]& v4;
      if (v9 == 1 && [(BKPictureBookNavigationController *)self _isFreeScale])
      {
        *&self->_curlPageForReadAloud = a3;
        v10 = [(BKPageNavigationViewController *)self pageOffset]+ 1;

        [(BKPictureBookNavigationController *)self zoomToPage:v10 animated:1];
      }

      else
      {
        v11 = [(BKPageNavigationViewController *)self pageCount];
        if (v11 >= a3)
        {
          v12 = a3;
        }

        else
        {
          v12 = v11;
        }

        if (v12 <= 1)
        {
          v13 = 1;
        }

        else
        {
          v13 = v12;
        }

        v14 = v13 - 1;
        v15 = [(BKViewController *)self layoutDirection];
        v16 = (v15 != 1) ^ v13;
        v17 = [(BKPictureBookNavigationController *)self inSinglePageMode];
        v18 = [(BKPageNavigationViewController *)self pageOffset];
        if (v17)
        {
          if (LOBYTE(self->_swipeSelector) != 1 || (x = self->_manualCurlStartPosition.x, x == 0.0) || v14 > v18 == [*&x forwardCurl])
          {
            [(BKPictureBookNavigationController *)self slide:v16 & 1 animated:0 withDelay:0.0];
            v25 = [(BKPageNavigationViewController *)self pageOffset];
            v26 = v9 ^ 1;
            if (v14 == v25)
            {
              v26 = 1;
            }

            if ((v26 & 1) == 0)
            {
              [(BKPictureBookNavigationController *)self _autoCurlToSinglePageOffset:v14 forwardCurl:v14 > v18];
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
          v20 = [(BKPageNavigationViewController *)self leftPageNumberForSpreadPageOffset:v18];
          v21 = [(BKPageNavigationViewController *)self leftPageNumberForSpreadPageOffset:v14];
          v22 = v9 ^ 1;
          v23 = 0.0;
          if (v20 == v21)
          {
            v22 = 1;
          }

          if ((v22 & 1) == 0)
          {
            v24 = (v15 != 1) ^ (v14 <= [(BKPageNavigationViewController *)self pageOffset]);
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

- (void)_autoSlideToSpreadPageOffset:(int64_t)a3 forwardCurl:(BOOL)a4
{
  v4 = a4;
  v35 = [(BKPageNavigationViewController *)self leftPageNumberForSpreadPageOffset:[(BKPageNavigationViewController *)self pageOffset]];
  v34 = [(BKPageNavigationViewController *)self rightPageNumberForSpreadPageOffset:[(BKPageNavigationViewController *)self pageOffset]];
  v7 = [(BKPageNavigationViewController *)self leftPageNumberForSpreadPageOffset:a3];
  v8 = [(BKPageNavigationViewController *)self rightPageNumberForSpreadPageOffset:a3];
  v36 = objc_opt_new();
  v9 = [(BKPictureBookNavigationController *)self isZoomedToSpread];
  [(BKPictureBookNavigationController *)self contentSize];
  v11 = v10;
  v13 = v12;
  v14 = [(BKPictureBookNavigationController *)self thumbnailBookViewConfiguration];
  v15 = [(BKPictureBookNavigationController *)self drawsSpine];
  v16 = [(BKPictureBookNavigationController *)self supportsSinglePageMode];
  [(BKPictureBookNavigationController *)self _containerBoundsForGeometry];
  v21 = [BKPictureBookViewGeometry geometryWithContentSize:v14 configuration:v15 drawsSpine:v16 ignoresPadding:v11 containerBounds:v13, v17, v18, v19, v20];

  [v21 scaleForSpread:v9 landscape:isPortrait() ^ 1];
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
  v25 = [(BKPageNavigationViewController *)self delegate];
  [v36 setNavDelegate:v25];

  [v36 setForwardCurl:v4];
  [v36 setAutoCurl:1];
  [v36 setApplyMaskAndGutter:{-[BKPictureBookNavigationController drawsSpine](self, "drawsSpine")}];
  v26 = [(BKPictureBookNavigationController *)self pageCurlManager];
  v27 = [v26 numberOfQueuedCurls];

  if (!v27)
  {
    if ([(BKContentViewController *)self->_rightContentViewController isContentLoaded])
    {
      v28 = [(BKContentViewController *)self->_rightContentViewController view];
      [v36 setLeftSourceView:v28];
    }

    if ([(NSMutableSet *)self->_pendingLoads isContentLoaded])
    {
      v29 = [(NSMutableSet *)self->_pendingLoads view];
      [v36 setRightSourceView:v29];
    }

    [(BKPictureBookView *)self->_bookView setLeftContentView:0];
    [(BKPictureBookView *)self->_bookView setRightContentView:0];
  }

  v30 = [(BKViewController *)self layoutDirection];
  [v36 generateWithOldLeftPageNumber:v35 oldRightPageNumber:v34 newLeftPageNumber:v7 newRightPageNumber:v8 useMirrorForBackImage:0];
  v31 = objc_alloc_init(BKPageSlide);
  [(BKPageAnimation *)v31 setPageAnimationDelegate:self];
  v32 = [v36 pageArray];
  v33 = [v36 backPageArray];
  if (BYTE2(self->_lastCompletedTransition) == 1)
  {
    p_pageCurlManager = &self->_manualCurl;
  }

  [(BKPageSlide *)v31 autoSlideFromPages:v32 toPages:v33 inContainer:*p_pageCurlManager isForwardAnimation:v4 isRTL:v30 == 1 isZoomedToSpread:v9 completion:0];
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

- (void)transitionDidFinish:(BOOL)a3
{
  if (a3)
  {
    [(BKPictureBookNavigationController *)self setLastCompletedTransition:1];
  }

  else
  {
    [(BKPictureBookNavigationController *)self setLastCompletedTransition:2];
  }
}

- (void)setContentSize:(CGSize)a3
{
  if (a3.width != self->_contentSize.width || a3.height != self->_contentSize.height)
  {
    self->_contentSize.width = fmax(a3.width, 100.0);
    self->_contentSize.height = fmax(a3.height, 100.0);
    [(BKPictureBookView *)self->_bookView setContentSize:?];
  }
}

- (void)addPendingContent:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v7 = v4;
    if ([v4 isLoading])
    {
      v5 = +[NSNotificationCenter defaultCenter];
      [v5 addObserver:self selector:"_contentIsReadyOrFailed:" name:BKContentReadyNotification object:v7];
      [v5 addObserver:self selector:"_contentIsReadyOrFailed:" name:BKContentFAILNotification object:v7];
      [(BKPictureBookNavigationController *)self willChangeValueForKey:@"isContentRenderComplete"];
      [self->_needsTurnToPageNumber addObject:v7];
      [(BKPictureBookNavigationController *)self didChangeValueForKey:@"isContentRenderComplete"];
      v6 = [v7 view];
      [v6 setHidden:1];
    }
  }

  _objc_release_x1();
}

- (void)removePendingContent:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v7 = v4;
    if ([self->_needsTurnToPageNumber containsObject:v4])
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

      v6 = [v7 view];
      [v6 setHidden:0];
    }
  }

  _objc_release_x1();
}

- (void)_contentIsReadyOrFailed:(id)a3
{
  v4 = [a3 object];
  [(BKPictureBookNavigationController *)self removePendingContent:v4];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v4 performSelector:"playFirstVisibleAutoplayMediaObject" withObject:0 afterDelay:0.25];
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

- (int)tapActionForLocation:(CGPoint)a3 view:(id)a4 ignoreOppositePage:(BOOL)a5
{
  y = a3.y;
  x = a3.x;
  v9 = a4;
  v10 = [(BKPictureBookNavigationController *)self thumbnailBookViewConfiguration];
  [v10 tapToTurnWidth];
  v12 = v11;

  v13 = +[NSUserDefaults standardUserDefaults];
  v14 = [v13 BOOLForKey:BKLeftTapTurnToNextDefault[0]];

  v15 = [(BKViewController *)self layoutDirection];
  [v9 bounds];
  if (x > CGRectGetMaxX(v29) - v12)
  {
    goto LABEL_2;
  }

  [v9 bounds];
  if (x < v12 + CGRectGetMinX(v30))
  {
    goto LABEL_4;
  }

  [v9 convertPoint:self->_bookView toView:{x, y}];
  v21 = v20;
  [(BKPictureBookScrollView *)self->_scrollView zoomScale];
  v23 = v22;
  [(BKPictureBookScrollView *)self->_scrollView minimumZoomScale];
  if (v23 > v24 && !a5 && ![(BKPictureBookNavigationController *)self inSinglePageMode])
  {
    v25 = [(BKPageNavigationViewController *)self pageOffset];
    v26 = v25 & 1;
    if (v25 < 0)
    {
      v26 = -v26;
    }

    if (v26 == (v15 != 1))
    {
      [(BKPictureBookView *)self->_bookView bounds];
      if (v21 > CGRectGetMidX(v31))
      {
        goto LABEL_2;
      }
    }

    v27 = [(BKPageNavigationViewController *)self pageOffset];
    v28 = v27 & 1;
    if (v27 < 0)
    {
      v28 = -v28;
    }

    if (v28 == (v15 == 1))
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
  if (v15 == 1)
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

- (void)handlePageChangeTap:(id)a3
{
  if (!self->_cancelPageChangeForPageTurn)
  {
    v5 = a3;
    v13 = [v5 view];
    [v5 locationInView:v13];
    v7 = v6;
    v9 = v8;

    v10 = [(BKPictureBookNavigationController *)self tapActionForLocation:v13 view:0 ignoreOppositePage:v7, v9];
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

    v12 = [(BKPageNavigationViewController *)self delegate];
    [v12 pageNavigationDidBeginInteracting:self];
  }
}

- (void)handleDoubleTap:(id)a3
{
  v15 = a3;
  v4 = [v15 view];
  [v15 locationInView:v4];
  [v4 convertPoint:self->_bookView toView:?];
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
  [v15 locationInView:v4];
  [v4 convertPoint:self->_bookView toView:?];
  [BKPictureBookNavigationController zoomToPoint:"zoomToPoint:scale:animated:" scale:1 animated:?];
LABEL_10:
  v14 = [(BKPageNavigationViewController *)self delegate];
  [v14 pageNavigationDidBeginInteracting:self];
}

- (void)toggleControls:(id)a3
{
  v8 = a3;
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
    v6 = [(BKPictureBookNavigationController *)self presentedViewController];

    if (!v6)
    {
      v7 = [(BKPageNavigationViewController *)self delegate];
      [v7 pageNavigationToggleControls:self];
    }
  }
}

- (void)leftSwipe:(id)a3
{
  v4 = [(BKViewController *)self layoutDirection];
  v5 = [(BKPageNavigationViewController *)self pageOffset];
  v6 = [(BKPageNavigationViewController *)self pageCount];
  [(BKPictureBookScrollView *)self->_scrollView setScrollEnabled:0];
  [(BKPictureBookNavigationController *)self turnToNextPage];
  [(BKPictureBookScrollView *)self->_scrollView setScrollEnabled:[(BKPictureBookNavigationController *)self inSinglePageMode]^ 1];
  v7 = [(BKPageNavigationViewController *)self delegate];
  [v7 pageNavigationDidBeginInteracting:self];

  if (v4 != 1)
  {
    v8 = [(BKPageNavigationViewController *)self delegate];
    v9 = v8;
    if (v5 == v6 - 1)
    {
      [v8 pageNavigationDidTryToSwipePastEndOfBook:self];
    }

    else
    {
      [v8 pageNavigationDidSwipeToNextPage:self];
    }
  }
}

- (void)rightSwipe:(id)a3
{
  v4 = [(BKViewController *)self layoutDirection];
  v5 = [(BKPageNavigationViewController *)self pageOffset];
  v6 = [(BKPageNavigationViewController *)self pageCount];
  [(BKPictureBookScrollView *)self->_scrollView setScrollEnabled:0];
  [(BKPictureBookNavigationController *)self turnToPreviousPage];
  [(BKPictureBookScrollView *)self->_scrollView setScrollEnabled:[(BKPictureBookNavigationController *)self inSinglePageMode]^ 1];
  v7 = [(BKPageNavigationViewController *)self delegate];
  [v7 pageNavigationDidBeginInteracting:self];

  if (v4 == 1)
  {
    v8 = [(BKPageNavigationViewController *)self delegate];
    v9 = v8;
    if (v5 == v6 - 1)
    {
      [v8 pageNavigationDidTryToSwipePastEndOfBook:self];
    }

    else
    {
      [v8 pageNavigationDidSwipeToNextPage:self];
    }
  }
}

- (BOOL)_hasMediaElementAtTouch:(id)a3
{
  v4 = a3;
  v5 = [(BKPictureBookNavigationController *)self view];
  [v4 locationInView:v5];
  v7 = v6;
  v9 = v8;

  LOBYTE(self) = [(BKPictureBookNavigationController *)self hasMediaElementAtPoint:v5 inView:v7, v9];
  return self;
}

- (BOOL)hasMediaElementAtPoint:(CGPoint)a3 inView:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
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
        if (v13 && [(BKPictureBookNavigationController *)self _contentController:v13 hasMediaElementAtPoint:v7 inView:x, y])
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

- (BOOL)_contentController:(id)a3 hasMediaElementAtPoint:(CGPoint)a4 inView:(id)a5
{
  y = a4.y;
  x = a4.x;
  v8 = a3;
  v9 = a5;
  v10 = [v8 webView2];
  v11 = [v10 be_contentView];
  [v11 convertPoint:v9 fromView:{x, y}];
  v13 = v12;
  v15 = v14;

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v16 = [v8 loader];
  v17 = [v16 mediaFrames];
  v18 = [v17 allValues];

  v19 = [v18 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v19)
  {
    v20 = *v24;
    while (2)
    {
      for (i = 0; i != v19; i = i + 1)
      {
        if (*v24 != v20)
        {
          objc_enumerationMutation(v18);
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

      v19 = [v18 countByEnumeratingWithState:&v23 objects:v27 count:16];
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

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = 0;
  if (self->_pageChangeTapRecognizer != v6 && self->_controlsTapRecognizer != v6 || ![(BKPictureBookNavigationController *)self _hasMediaElementAtTouch:v7])
  {
    if (self->_doubleTapGestureRecognizer != v6 || (-[UITapGestureRecognizer view](v6, "view"), v9 = objc_claimAutoreleasedReturnValue(), [v7 locationInView:v9], v11 = v10, v13 = v12, v9, -[UITapGestureRecognizer view](v6, "view"), v14 = objc_claimAutoreleasedReturnValue(), v15 = -[BKPictureBookNavigationController tapActionForLocation:view:ignoreOppositePage:](self, "tapActionForLocation:view:ignoreOppositePage:", v14, 1, v11, v13), v14, !v15))
    {
      v8 = 1;
    }
  }

  return v8;
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_pageChangeTapRecognizer == v4)
  {
    self->_cancelPageChangeForPageTurn = 0;
    v7 = [(UITapGestureRecognizer *)v4 view];
    [(UITapGestureRecognizer *)v5 locationInView:v7];
    LOBYTE(v6) = [(BKPictureBookNavigationController *)self tapActionForLocation:v7 view:[(BKPictureBookNavigationController *)self isZoomedBeyondPage] ignoreOppositePage:v8, v9]!= 0;
LABEL_15:

    goto LABEL_16;
  }

  if (self->_doubleTapGestureRecognizer == v4)
  {
    v7 = [(UITapGestureRecognizer *)v4 view];
    [(UITapGestureRecognizer *)v5 locationInView:v7];
    LOBYTE(v6) = ![(BKPictureBookNavigationController *)self tapActionForLocation:v7 view:1 ignoreOppositePage:?]&& [(BKPageCurlManager *)self->_pageCurlManager isHidden]&& ([(BKPageCurl *)self->_manualCurl isHidden]& 1) != 0;
    goto LABEL_15;
  }

  if (self->_leftSwipeGestureRecognizer == v4)
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
      v17 = [(BKPictureBookNavigationController *)self inSinglePageMode];
      if (v13 >= v15)
      {
        LOBYTE(v6) = 1;
      }

      else
      {
        LOBYTE(v6) = v17;
      }
    }
  }

  else
  {
    if (self->_rightSwipeGestureRecognizer != v4)
    {
      if (self->_controlsTapRecognizer == v4)
      {
        self->_cancelControlTapForPageTurn = 0;
      }

      else if (self->_manualCurlGestureRecognizer == v4 || self->_panManualCurlGestureRecognizer == v4)
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

- (BOOL)isMediaPlayerGestureRecognizer:(id)a3
{
  v3 = a3;
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

- (BOOL)gestureRecognizer:(id)a3 shouldBeRequiredToFailByGestureRecognizer:(id)a4
{
  v6 = a4;
  v7 = v6;
  if (self->_doubleTapGestureRecognizer == a3 || self->_pageChangeTapRecognizer == a3)
  {
    v8 = [v6 bk_isWKSyntheticTapGestureRecognizer];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)gestureRecognizer:(id)a3 canBePreventedByGestureRecognizer:(id)a4
{
  v6 = a3;
  v7 = a4;
  NSClassFromString(@"UIWebTouchEventsGestureRecognizer");
  if (objc_opt_isKindOfClass() & 1) != 0 || (NSClassFromString(@"WKTouchEventsGestureRecognizer"), (objc_opt_isKindOfClass()))
  {
LABEL_9:
    isKindOfClass = 1;
    goto LABEL_10;
  }

  if (self->_doubleTapGestureRecognizer != v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    if (self->_leftSwipeGestureRecognizer == v6 || self->_rightSwipeGestureRecognizer == v6)
    {
      NSClassFromString(@"UITextRangeAdjustmentGestureRecognizer");
      isKindOfClass = objc_opt_isKindOfClass();
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v8 = v7;
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

- (void)pageAnimationWillBegin:(id)a3
{
  if ([(BKPictureBookNavigationController *)self inSinglePageMode])
  {
    v4 = [(BKPictureBookNavigationController *)self singlePageCurlContainer];
    [v4 setHidden:0];
  }

  else
  {
    [(BKPageCurlManager *)self->_pageCurlManager setHidden:0];
  }

  scrollView = self->_scrollView;

  [(BKPictureBookScrollView *)scrollView setScrollEnabled:0];
}

- (void)pageAnimation:(id)a3 didFinish:(BOOL)a4
{
  v4 = a4;
  v12 = a3;
  if ([v12 state] != &dword_0 + 2)
  {
    if ([(BKPictureBookNavigationController *)self inSinglePageMode])
    {
      [(BKPictureBookNavigationController *)self slide:[(BKPictureBookNavigationController *)self isZoomedToRightPage] animated:0 withDelay:0.0];
      [(BKPictureBookNavigationController *)self _resetSinglePageCurlContainer];
    }

    else
    {
      v6 = [v12 existingPages];
      [(BKPictureBookNavigationController *)self _restoreViewHierarchyWithArray:v6];
    }
  }

  [(BKPictureBookScrollView *)self->_scrollView setScrollEnabled:[(BKPictureBookNavigationController *)self inSinglePageMode]^ 1];
  x = self->_manualCurlStartPosition.x;
  self->_manualCurlStartPosition.x = 0.0;

  leftContentViewController = self->_leftContentViewController;
  self->_leftContentViewController = 0;

  if (v4)
  {
    if ([v12 finished])
    {
      [(BKPictureBookNavigationController *)self _resetCurlContainer];
    }

    if (-[BKPictureBookNavigationController inSinglePageMode](self, "inSinglePageMode") && [v12 state] == &dword_4)
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

- (void)pageCurlManager:(id)a3 willBeginCurl:(id)a4
{
  if ([(BKPictureBookNavigationController *)self inSinglePageMode:a3])
  {
    v5 = [(BKPictureBookNavigationController *)self singlePageCurlContainer];
    [v5 setHidden:0];
  }

  else
  {
    [(BKPageCurlManager *)self->_pageCurlManager setHidden:0];
  }

  scrollView = self->_scrollView;

  [(BKPictureBookScrollView *)scrollView setScrollEnabled:0];
}

- (void)pageCurlManager:(id)a3 didFinishCurl:(id)a4 transitionCompleted:(BOOL)a5
{
  v5 = a5;
  v15 = a3;
  v8 = a4;
  if (!v5)
  {
    if ([(BKPictureBookNavigationController *)self inSinglePageMode])
    {
      [(BKPictureBookNavigationController *)self slide:[(BKPictureBookNavigationController *)self isZoomedToRightPage] animated:0 withDelay:0.0];
      [(BKPictureBookNavigationController *)self _resetSinglePageCurlContainer];
    }

    else
    {
      v9 = [v8 existingPages];
      [(BKPictureBookNavigationController *)self _restoreViewHierarchyWithArray:v9];
    }
  }

  [(BKPictureBookScrollView *)self->_scrollView setScrollEnabled:[(BKPictureBookNavigationController *)self inSinglePageMode]^ 1];
  x = self->_manualCurlStartPosition.x;
  self->_manualCurlStartPosition.x = 0.0;

  leftContentViewController = self->_leftContentViewController;
  self->_leftContentViewController = 0;

  if (v5)
  {
    if ([v8 finished])
    {
      [(BKPictureBookNavigationController *)self _resetCurlContainer];
    }

    if (-[BKPictureBookNavigationController inSinglePageMode](self, "inSinglePageMode") && [v8 state] == &dword_4)
    {
      [(BKPictureBookNavigationController *)self slide:[(BKPictureBookNavigationController *)self isZoomedToRightPage] animated:0 withDelay:0.0];
    }

    [(BKPictureBookNavigationController *)self _resetSinglePageCurlContainer:v8];
    p_singlePageCurlContainer = &self->_singlePageCurlContainer;
    if (self->_singlePageCurlContainer && ![v15 numberOfQueuedCurls])
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

- (void)pageCurlManager:(id)a3 didCancelCurl:(id)a4
{
  v5 = [(BKPictureBookNavigationController *)self inSinglePageMode:a3]^ 1;
  scrollView = self->_scrollView;

  [(BKPictureBookScrollView *)scrollView setScrollEnabled:v5];
}

- (void)setSelectionHighlightsVisible:(BOOL)a3
{
  v3 = a3;
  [(BKContentViewController *)self->_rightContentViewController setSelectionHighlightsVisible:?];
  pendingLoads = self->_pendingLoads;

  [(NSMutableSet *)pendingLoads setSelectionHighlightsVisible:v3];
}

- (void)_updateSelectionHighlights
{
  [(BKContentViewController *)self->_rightContentViewController updateSelectionHighlights];
  pendingLoads = self->_pendingLoads;

  [(NSMutableSet *)pendingLoads updateSelectionHighlights];
}

- (void)scrollViewDidScroll:(id)a3
{
  v14 = a3;
  [v14 contentOffset];
  v4 = v3;
  v6 = v5;
  [v14 contentSize];
  v8 = v7;
  [v14 bounds];
  if (v8 > CGRectGetWidth(v16))
  {
    v9 = 0.0;
    if (v4 >= 0.0)
    {
      [v14 contentSize];
      v11 = v10;
      [v14 bounds];
      if (v4 <= ceil(v11 - CGRectGetWidth(v17)))
      {
        goto LABEL_6;
      }

      [v14 contentSize];
      v13 = v12;
      [v14 bounds];
      v9 = round(v13 - CGRectGetWidth(v18));
    }

    [v14 setContentOffset:{v9, v6}];
  }

LABEL_6:
}

- (void)scrollViewWillBeginDragging:(id)a3
{
  v4 = [(BKPageNavigationViewController *)self delegate];
  [v4 pageNavigationDidBeginInteracting:self];
}

- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4
{
  [(BKZoomingScrollView *)self->_scrollView pointToCenterAfterRotation];
  v7 = v6;
  if (![(BKPictureBookNavigationController *)self isZoomedToSpread])
  {
    [(BKPictureBookView *)self->_bookView bounds];
    MidX = CGRectGetMidX(v12);
    v9 = [(BKPageNavigationViewController *)self pageOffset];
    v10 = v7 <= MidX ? [(BKPageNavigationViewController *)self leftPageNumberForSinglePageOffset:v9]: [(BKPageNavigationViewController *)self rightPageNumberForSinglePageOffset:v9];
    if (v10 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [(BKPictureBookNavigationController *)self setPageOffset:v10 - 1];
    }
  }

  if (!a4)
  {

    [(BKPictureBookNavigationController *)self _updateSelectionHighlights];
  }
}

- (void)scrollViewDidZoom:(id)a3
{
  if (!+[BKBookViewController useEnhancedEditMenu])
  {
    [UIView performWithoutAnimation:&stru_1E2C90];
  }

  scrollView = self->_scrollView;

  [(BKZoomingScrollView *)scrollView centerContent];
}

- (void)scrollViewWillBeginZooming:(id)a3 withView:(id)a4
{
  v5 = a3;
  v6 = [(BKPageNavigationViewController *)self delegate];
  [v6 pageNavigationDidBeginInteracting:self];

  [v5 setBounces:1];
  [v5 setAlwaysBounceVertical:1];
  [v5 setAlwaysBounceHorizontal:0];

  v7 = [(BKContentViewController *)self->_leftContentViewController pageCurl];
  v8 = [v7 existingPages];
  [(BKPictureBookNavigationController *)self _restoreViewHierarchyWithArray:v8];

  if (!+[BKBookViewController useEnhancedEditMenu])
  {
    [UIView performWithoutAnimation:&stru_1E2CB0];
  }

  [(BKPictureBookNavigationController *)self exitSinglePageMode];
}

- (void)scrollViewDidEndZooming:(id)a3 withView:(id)a4 atScale:(double)a5
{
  v7 = a3;
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
    if (v12 == a5)
    {
      [(BKPictureBookNavigationController *)self _updateBookScale];
      if ([(BKPictureBookNavigationController *)self isZoomedToSinglePage])
      {
        [(BKPictureBookNavigationController *)self enterSinglePageMode];
      }
    }

    v13 = [(BKPictureBookNavigationController *)self _isFreeScale];
    [v7 setBounces:v13];
    [v7 setAlwaysBounceVertical:v13];
    [v7 setAlwaysBounceHorizontal:0];
  }
}

- (double)singlePagePadding
{
  if ([(BKPictureBookNavigationController *)self supportsSinglePageMode])
  {
    return 0.0;
  }

  v4 = [(BKPictureBookNavigationController *)self thumbnailBookViewConfiguration];
  [v4 singlePagePadding];
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
  v3 = [(BKPictureBookNavigationController *)self isZoomedToSinglePage];
  if (v3)
  {
    [(BKPictureBookScrollView *)self->_scrollView contentOffset];
    v5 = v4;
    [(BKPictureBookScrollView *)self->_scrollView frame];
    v7 = v5 + v6;
    [(BKPictureBookScrollView *)self->_scrollView contentSize];
    LOBYTE(v3) = vabdd_f64(v7, v8) <= 10.0;
  }

  return v3;
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
    v3 = [(BKPictureBookNavigationController *)self view];
    [v3 bounds];
    v5 = v4;
    v6 = [(BKPictureBookNavigationController *)self view];
    [v6 bounds];
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
    v10 = [(BKPictureBookNavigationController *)self thumbnailBookViewConfiguration];
    [(BKPictureBookNavigationController *)self _containerBoundsForGeometry];
    v15 = [BKPictureBookViewGeometry geometryWithContentSize:v10 configuration:0 drawsSpine:1 ignoresPadding:v7 containerBounds:v9, v11, v12, v13, v14];

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
    v3 = [(BKPictureBookNavigationController *)self isZoomedToRightPage];
    v4 = [(BKPageNavigationViewController *)self pageOffset];
    if (v3)
    {
      v5 = [(BKPageNavigationViewController *)self rightPageNumberForSinglePageOffset:v4];
    }

    else
    {
      v5 = [(BKPageNavigationViewController *)self leftPageNumberForSinglePageOffset:v4];
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

    v7 = [(BKPictureBookNavigationController *)self pageCurlManager];
    [v7 setSpineLocation:v6];
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

    v7 = [(BKViewController *)self layoutDirection];
    v8 = [(BKPageNavigationViewController *)self pageOffset];
    if (v7 == 1)
    {
      [(BKPageNavigationViewController *)self rightPageNumberForSinglePageOffset:v8];
    }

    else
    {
      [(BKPageNavigationViewController *)self leftPageNumberForSinglePageOffset:v8];
    }

    [(BKPictureBookNavigationController *)self _resetSinglePageCurlContainer];
    [(BKPictureBookScrollView *)self->_scrollView setScrollEnabled:1];
    v9 = [(BKPictureBookNavigationController *)self pageCurlManager];
    [v9 setSpineLocation:2];
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

- (void)zoomToSpread:(BOOL)a3
{
  v3 = a3;
  if (![(BKPictureBookNavigationController *)self isZoomedToSpread])
  {
    v5 = +[AETestDriver shared];
    [v5 postEvent:kBETestDriverFXLZoomToSpreadStart sender:self];

    [(BKPictureBookView *)self->_bookView bounds];
    [(BKPictureBookScrollView *)self->_scrollView zoomToRect:v3 animated:?];
    if (!v3)
    {

      [(BKPictureBookNavigationController *)self exitSinglePageMode];
    }
  }
}

- (void)zoom:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
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
  if (v5)
  {
    MinX = CGRectGetMinX(*&v21);
  }

  else
  {
    MinX = CGRectGetMidX(*&v21) - v20;
  }

  scrollView = self->_scrollView;

  [(BKPictureBookScrollView *)scrollView zoomToRect:v4 animated:MinX, v10, v12 * 0.5 + v20, v14];
}

- (void)zoomToPoint:(CGPoint)a3 scale:(double)a4 animated:(BOOL)a5
{
  if (a4 != 0.0)
  {
    v6 = a5;
    y = a3.y;
    x = a3.x;
    [(BKPictureBookScrollView *)self->_scrollView bounds];
    v12 = v11 / a4;
    [(BKPictureBookScrollView *)self->_scrollView bounds];
    v14 = v13 / a4;
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

    [(BKPictureBookScrollView *)scrollView zoomToRect:v6 animated:v16, v21, v12, v14];
  }
}

- (void)zoomToPage:(unint64_t)a3 animated:(BOOL)a4
{
  v4 = a4;
  v7 = [(BKPageNavigationViewController *)self leftPageNumberForSpreadPageOffset:[(BKPageNavigationViewController *)self pageOffset]];
  v8 = [(BKPageNavigationViewController *)self rightPageNumberForSpreadPageOffset:[(BKPageNavigationViewController *)self pageOffset]];
  if (v7 == a3 || v8 == a3)
  {
    [(BKPictureBookNavigationController *)self zoom:v7 == a3 animated:v4];
    [(BKPictureBookNavigationController *)self setPageOffset:a3 - 1];
    if (v4)
    {
      return;
    }
  }

  else if (v4)
  {
    return;
  }

  [(BKPictureBookNavigationController *)self enterSinglePageMode];
}

- (CGRect)_containerBoundsForGeometry
{
  v2 = [(BKPictureBookNavigationController *)self viewIfLoaded];
  v3 = [v2 window];
  v4 = v3;
  if (v3 || (v3 = v2) != 0)
  {
    [v3 bounds];
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
      v8 = [(BKPictureBookNavigationController *)self thumbnailBookViewConfiguration];
      v9 = [(BKPictureBookNavigationController *)self drawsSpine];
      [(BKPictureBookNavigationController *)self _containerBoundsForGeometry];
      v14 = [BKPictureBookViewGeometry geometryWithContentSize:v8 configuration:v9 drawsSpine:v5 containerBounds:v7, v10, v11, v12, v13];
      [v14 maximumSize];
      [v19 setContentSize:?];

      [(BKPictureBookView *)self->_bookView layoutIfNeeded];
      v15 = [(BKPictureBookView *)self->_bookView leftContentView];
      [v15 frame];
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
  v13 = [(BKPictureBookNavigationController *)self _isFreeScale];
  [(BKPictureBookView *)self->_bookView frame];
  v51 = CGRectIntegral(v50);
  x = v51.origin.x;
  y = v51.origin.y;
  width = v51.size.width;
  height = v51.size.height;
  v17 = [(BKPictureBookNavigationController *)self isZoomedToSpread];
  v18 = [(BKPictureBookNavigationController *)self thumbnailBookViewConfiguration];
  v19 = [(BKPictureBookNavigationController *)self drawsSpine];
  v20 = [(BKPictureBookNavigationController *)self supportsSinglePageMode];
  [(BKPictureBookNavigationController *)self _containerBoundsForGeometry];
  v25 = [BKPictureBookViewGeometry geometryWithContentSize:v18 configuration:v19 drawsSpine:v20 ignoresPadding:v4 containerBounds:v6, v21, v22, v23, v24];

  [v25 scaleForSpread:v17 landscape:isPortrait() ^ 1];
  if (v13)
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
    [v25 sizeForSpread:v17 landscape:isPortrait() ^ 1];
    if (v13)
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
      if (v17)
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
    v9 = [(BKPictureBookNavigationController *)self pageCurlManager];
    if ([v9 numberOfQueuedCurls])
    {
    }

    else
    {
      v3 = [(BKPictureBookNavigationController *)self pageSlideAnimation];
      if (v3)
      {
        v4 = v3;
        v5 = [(BKPictureBookNavigationController *)self pageSlideAnimation];
        v6 = [v5 finished];

        if (!v6)
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
  v3 = [(BKPictureBookNavigationController *)self curlContainer];
  v4 = [(BKPictureBookView *)self->_bookView contentView];
  scrollView = self->_scrollView;
  [v4 bounds];
  [(BKPictureBookScrollView *)scrollView convertRect:v4 fromView:?];
  v7 = v6;
  v9 = v8;
  v10 = [v4 superview];
  [v4 bounds];
  [v10 convertRect:v4 fromView:?];
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
    v10 = [(BKPictureBookNavigationController *)self thumbnailBookViewConfiguration];
    v11 = [(BKPictureBookNavigationController *)self drawsSpine];
    v12 = [(BKPictureBookNavigationController *)self supportsSinglePageMode];
    [(BKPictureBookNavigationController *)self _containerBoundsForGeometry];
    v17 = [BKPictureBookViewGeometry geometryWithContentSize:v10 configuration:v11 drawsSpine:v12 ignoresPadding:v7 containerBounds:v9, v13, v14, v15, v16];

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

- (void)_resetSinglePageCurlContainer:(id)a3
{
  v4 = [(BKPictureBookNavigationController *)self pageCurlManager];
  v5 = [v4 numberOfQueuedCurls];

  if (!v5)
  {
    v6 = [(BKPictureBookNavigationController *)self singlePageCurlContainer];
    [v6 setHidden:1];
  }
}

- (CGRect)_resetSinglePageCurlContainerFrame
{
  v3 = [(BKPictureBookView *)self->_bookView contentView];
  scrollView = self->_scrollView;
  [v3 bounds];
  [(BKPictureBookScrollView *)scrollView convertRect:v3 fromView:?];
  v6 = v5;
  [(BKPictureBookScrollView *)self->_scrollView contentOffset];
  if (v7 <= 0.0)
  {
    [(BKPictureBookScrollView *)self->_scrollView contentOffset];
    v10 = v11;
  }

  else
  {
    [v3 frame];
    v9 = v8;
    [v3 frame];
    v10 = v9 + CGRectGetMidX(v21);
  }

  [(BKPictureBookView *)self->_bookView idealSinglePageSize];
  v13 = v12;
  v15 = v14;
  v16 = [(BKPictureBookNavigationController *)self singlePageCurlContainer];
  [v16 setFrame:{v10, v6, v13, v15}];

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
  v3 = [(BKPictureBookView *)self->_bookView contentView];
  [v3 frame];
  v5 = v4;

  v6 = [(BKPictureBookNavigationController *)self singlePageCurlContainer];
  [v6 origin];
  v8 = v7;

  if (v8 > 0.0)
  {
    v5 = -v5;
  }

  v9 = [(BKPictureBookNavigationController *)self singlePageCurlContainer];
  [v9 bounds];
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

- (void)_autoCurlToSpreadPageOffset:(int64_t)a3 forwardCurl:(BOOL)a4
{
  v4 = a4;
  v39 = [(BKPageNavigationViewController *)self leftPageNumberForSpreadPageOffset:[(BKPageNavigationViewController *)self pageOffset]];
  v7 = [(BKPageNavigationViewController *)self rightPageNumberForSpreadPageOffset:[(BKPageNavigationViewController *)self pageOffset]];
  v8 = [(BKPageNavigationViewController *)self leftPageNumberForSpreadPageOffset:a3];
  v9 = [(BKPageNavigationViewController *)self rightPageNumberForSpreadPageOffset:a3];
  v40 = objc_opt_new();
  v10 = [(BKPictureBookNavigationController *)self isZoomedToSpread];
  [(BKPictureBookNavigationController *)self contentSize];
  v12 = v11;
  v14 = v13;
  v15 = [(BKPictureBookNavigationController *)self thumbnailBookViewConfiguration];
  v16 = [(BKPictureBookNavigationController *)self drawsSpine];
  v17 = [(BKPictureBookNavigationController *)self supportsSinglePageMode];
  [(BKPictureBookNavigationController *)self _containerBoundsForGeometry];
  v18 = v16;
  v19 = v4;
  v24 = [BKPictureBookViewGeometry geometryWithContentSize:v15 configuration:v18 drawsSpine:v17 ignoresPadding:v12 containerBounds:v14, v20, v21, v22, v23];

  [v24 scaleForSpread:v10 landscape:isPortrait() ^ 1];
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
  v27 = [(BKPageNavigationViewController *)self delegate];
  [v40 setNavDelegate:v27];

  [v40 setForwardCurl:v4];
  [v40 setAutoCurl:1];
  [v40 setApplyMaskAndGutter:{-[BKPictureBookNavigationController drawsSpine](self, "drawsSpine")}];
  v28 = [(BKPictureBookNavigationController *)self pageCurlManager];
  v29 = [v28 numberOfQueuedCurls];

  v31 = v39;
  v30 = v40;
  if (!v29)
  {
    if ([(BKContentViewController *)self->_rightContentViewController isContentLoaded])
    {
      v32 = [(BKContentViewController *)self->_rightContentViewController view];
      [v40 setLeftSourceView:v32];
    }

    if ([(NSMutableSet *)self->_pendingLoads isContentLoaded])
    {
      v33 = [(NSMutableSet *)self->_pendingLoads view];
      [v40 setRightSourceView:v33];
    }

    [(BKPictureBookView *)self->_bookView setLeftContentView:0];
    [(BKPictureBookView *)self->_bookView setRightContentView:0];
    v30 = v40;
    v31 = v39;
  }

  [v30 generateWithOldLeftPageNumber:v31 oldRightPageNumber:v7 newLeftPageNumber:v8 newRightPageNumber:v9];
  if (LOBYTE(self->_swipeSelector) == 1 && (v34 = self->_leftContentViewController) != 0 && [(BKContentViewController *)v34 isForwardCurl]== v4)
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
    v35 = [(BKPictureBookNavigationController *)self pageCurlManager];
    v36 = [v40 pageArray];
    v37 = [v40 backPage];
    [v35 curlPages:v36 backPage:v37 inContainer:self->_pageCurlManager curlPage:v19];
  }
}

- (void)_autoCurlToSinglePageOffset:(int64_t)a3 forwardCurl:(BOOL)a4
{
  v27 = a4;
  if (LOBYTE(self->_swipeSelector) == 1 && (x = self->_manualCurlStartPosition.x, x != 0.0) && [*&x forwardCurl] == a4)
  {
    [*&self->_manualCurlStartPosition.x finishManualCurl];
    LOBYTE(self->_swipeSelector) = 0;
  }

  else
  {
    [(BKPictureBookNavigationController *)self _resetSinglePageCurlContainerFrame];
    v7 = [[BKPageBookCurlView alloc] initWithImage:0 borderColor:0 isLeft:0];
    v8 = [(BKPictureBookNavigationController *)self theme];
    -[BKPageBookCurlView setUseInvertedColors:](v7, "setUseInvertedColors:", [v8 shouldInvertContent]);

    [(BKPageCurl *)self->_manualCurl bounds];
    [(BKPageBookCurlView *)v7 setFrame:?];
    [(BKPageBookCurlView *)v7 bounds];
    v10 = v9;
    v12 = v11;
    v13 = [(BKPictureBookNavigationController *)self isZoomedToRightPage];
    bookView = self->_bookView;
    if (v13)
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
    v19 = [(BKViewController *)self layoutDirection];
    v20 = (HIBYTE(self->_lastCompletedTransition) ^ 1) & (v19 == 1);
    if (((HIBYTE(self->_lastCompletedTransition) ^ 1) & 1) == 0 && (v21 = 0, v27) || (v22 = -[BKPageBookCurlView initWithImage:borderColor:isLeft:]([BKPageBookCurlView alloc], "initWithImage:borderColor:isLeft:", 0, 0, 0), -[BKPictureBookNavigationController _backPageCurlFrame](self, "_backPageCurlFrame"), -[BKPageBookCurlView setFrame:](v22, "setFrame:"), -[BKPictureBookNavigationController theme](self, "theme"), v23 = objc_claimAutoreleasedReturnValue(), -[BKPageBookCurlView setUseInvertedColors:](v22, "setUseInvertedColors:", [v23 shouldInvertContent]), v23, -[BKPageNavigationViewController delegate](self, "delegate"), v24 = objc_claimAutoreleasedReturnValue(), v28[0] = _NSConcreteStackBlock, v28[1] = 3221225472, v28[2] = sub_AD10, v28[3] = &unk_1E2C48, v21 = v22, v29 = v21, objc_msgSend(v24, "pageNavigationSnapshotForPageNumber:completion:", a3 + 1, v28), v24, v29, (self->_lastCompletedTransition & 0x1000000) != 0))
    {
      v25 = [(BKPictureBookNavigationController *)self pageCurlManager];
      [(BKPageSlide *)v25 curlPages:v18 backPage:v21 inContainer:self->_manualCurl curlPage:v20 ^ v27];
    }

    else
    {
      v25 = objc_alloc_init(BKPageSlide);
      [(BKPageAnimation *)v25 setPageAnimationDelegate:self];
      v26 = [NSArray arrayWithObject:v21];
      [(BKPageSlide *)v25 autoSlideFromPages:v18 toPages:v26 inContainer:self->_manualCurl isForwardAnimation:v20 ^ v27 isRTL:v19 == 1 isZoomedToSpread:0 completion:0];
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

- (void)_manualCurlToSinglePage:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
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
  v15 = [(BKViewController *)self layoutDirection];
  v16 = v15 == 1;
  v17 = [(BKPictureBookNavigationController *)self isZoomedToRightPage];
  v18 = [(BKPageNavigationViewController *)self pageOffset];
  v19 = v18;
  if (v14 == v16)
  {
    if (v18 <= 1)
    {
      v22 = 1;
    }

    else
    {
      v22 = v18;
    }
  }

  else
  {
    v20 = v18 + 1;
    v21 = [(BKPageNavigationViewController *)self pageCount]- 1;
    if (v20 < v21)
    {
      v21 = (v19 + 1);
    }

    v22 = (v21 + 1);
  }

  [(BKPictureBookNavigationController *)self slide:v17 animated:0 withDelay:0.0];
  [(BKPictureBookNavigationController *)self _resetSinglePageCurlContainerFrame];
  v23 = [[BKPageBookCurlView alloc] initWithImage:0 borderColor:0 isLeft:0];
  [(BKPageBookCurlView *)v23 setFrame:v9, v10, width, height];
  v24 = [(BKPictureBookNavigationController *)self theme];
  -[BKPageBookCurlView setUseInvertedColors:](v23, "setUseInvertedColors:", [v24 shouldInvertContent]);

  bookView = self->_bookView;
  if (v17)
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
  v32 = [(BKPictureBookNavigationController *)self theme];
  -[BKPageBookCurlView setUseInvertedColors:](v31, "setUseInvertedColors:", [v32 shouldInvertContent]);

  v33 = [(BKPageNavigationViewController *)self delegate];
  v44[0] = _NSConcreteStackBlock;
  v44[1] = 3221225472;
  v44[2] = sub_B26C;
  v44[3] = &unk_1E2C48;
  v34 = v31;
  v45 = v34;
  [v33 pageNavigationSnapshotForPageNumber:v22 completion:v44];

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
    v37 = [(BKPictureBookNavigationController *)self pageCurlManager];
    v38 = [v37 beginManualCurl:v27 atLocation:v36 inPage:v30 fromPages:v34 backPage:self->_manualCurl inContainer:{x, y}];
    v39 = self->_manualCurlStartPosition.x;
    *&self->_manualCurlStartPosition.x = v38;
  }

  else
  {
    v40 = objc_alloc_init(BKPageSlide);
    [(BKPictureBookNavigationController *)self setPageSlideAnimation:v40];

    v41 = [(BKPictureBookNavigationController *)self pageSlideAnimation];
    [v41 setPageAnimationDelegate:self];

    v42 = [(BKPictureBookNavigationController *)self pageSlideAnimation];
    v43 = [NSArray arrayWithObject:v34];
    [v42 initiateManualAnimationFromPages:v30 toPages:v43 inContainer:self->_manualCurl isForwardAnimation:x > MidX isRTL:v15 == 1 isZoomedToSpread:0];

    v37 = [(BKPictureBookNavigationController *)self pageSlideAnimation];
    [v37 beginManualAnimationAtLocation:{x, y}];
  }

  self->_manualCurlStartPosition.y = x;
  *&self->_pageOffsetToRestore = y;
}

- (void)_curlPageForReadAloud:(id)a3
{
  v4 = [a3 BOOLValue];

  [(BKPictureBookNavigationController *)self curlPageForReadAloud:v4];
}

- (void)curlPageForReadAloud:(BOOL)a3
{
  if (a3)
  {
    v4 = [(BKPictureBookNavigationController *)self pageCurlManager];
    v5 = [v4 numberOfQueuedCurls];

    if (v5)
    {
      self->_singlePageCurlContainer = "_curlPageForReadAloud:";
    }

    else
    {
      if (![(BKPictureBookNavigationController *)self isZoomedToSinglePage])
      {
        [(BKPictureBookNavigationController *)self zoomToSpread:1];
      }

      v7 = [(BKViewController *)self layoutDirection];
      if ([(BKPictureBookNavigationController *)self inSinglePageMode])
      {
        if (v7 == 1)
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
        v39 = [(BKPictureBookNavigationController *)self pageCurlManager];
        [v39 updateManualCurl:*&self->_manualCurlStartPosition.x toLocation:{v37 + Width, Height + -50.0}];

        LOBYTE(self->_swipeSelector) = 1;
      }

      else if (!self->_leftContentViewController)
      {
        v55 = [(BKPictureBookNavigationController *)self curlContainer];
        [(BKPictureBookNavigationController *)self _resetCurlContainerFrame];
        [(BKContentViewController *)self->_leftContentViewController cancelManualCurl];
        v10 = [(BKPictureBookNavigationController *)self pageCurlManager];
        [v10 killAllCurls];

        v11 = [(BKPageNavigationViewController *)self pageOffset]+ 2;
        v12 = [(BKPageNavigationViewController *)self pageCount];
        if (v11 >= v12 - 1)
        {
          v11 = (v12 - 1);
        }

        v54 = [(BKPageNavigationViewController *)self leftPageNumberForSpreadPageOffset:[(BKPageNavigationViewController *)self pageOffset]];
        v13 = [(BKPageNavigationViewController *)self rightPageNumberForSpreadPageOffset:[(BKPageNavigationViewController *)self pageOffset]];
        v14 = [(BKPageNavigationViewController *)self leftPageNumberForSpreadPageOffset:v11];
        v15 = [(BKPageNavigationViewController *)self rightPageNumberForSpreadPageOffset:v11];
        v16 = objc_opt_new();
        leftContentViewController = self->_leftContentViewController;
        self->_leftContentViewController = v16;

        [(BKContentViewController *)self->_leftContentViewController setCurlContainer:v55];
        v18 = [(BKPageNavigationViewController *)self delegate];
        [(BKContentViewController *)self->_leftContentViewController setNavDelegate:v18];

        [(BKContentViewController *)self->_leftContentViewController setForwardCurl:[(BKViewController *)self layoutDirection]== 0];
        v19 = [(BKPictureBookNavigationController *)self isZoomedToSpread];
        v20 = 0.25;
        if (v19)
        {
          v20 = 0.5;
        }

        [(BKContentViewController *)self->_leftContentViewController setCurlThreshold:v20];
        [(BKContentViewController *)self->_leftContentViewController setApplyMaskAndGutter:[(BKPictureBookNavigationController *)self drawsSpine]];
        v21 = [(BKPictureBookNavigationController *)self isZoomedToSpread];
        [(BKPictureBookNavigationController *)self contentSize];
        v23 = v22;
        v25 = v24;
        v26 = [(BKPictureBookNavigationController *)self thumbnailBookViewConfiguration];
        v27 = [(BKPictureBookNavigationController *)self drawsSpine];
        [(BKPictureBookNavigationController *)self _containerBoundsForGeometry];
        v32 = [BKPictureBookViewGeometry geometryWithContentSize:v26 configuration:v27 drawsSpine:v23 containerBounds:v25, v28, v29, v30, v31];

        [v32 scaleForSpread:v21 landscape:isPortrait() ^ 1];
        if (v33 >= BEWebViewMinimumZoomScale)
        {
          v34 = v33;
        }

        else
        {
          v34 = BEWebViewMinimumZoomScale;
        }

        [v55 setScale:v34];
        [(BKContentViewController *)self->_leftContentViewController setScale:v34];
        [(BKContentViewController *)self->_leftContentViewController generateWithOldLeftPageNumber:v54 oldRightPageNumber:v13 newLeftPageNumber:v14 newRightPageNumber:v15];
        if (v7 == 1)
        {
          v35 = 0.0;
          *&v36 = 50.0;
        }

        else
        {
          [v55 bounds];
          v35 = CGRectGetWidth(v59);
          *&v36 = -50.0;
        }

        v40 = *&v36;
        [v55 bounds];
        v41 = CGRectGetHeight(v60);
        [(BKContentViewController *)self->_leftContentViewController startManualCurlAtPostion:v35, v41];
        v42 = [(BKContentViewController *)self->_rightContentViewController view];
        [(BKContentViewController *)self->_leftContentViewController setLeftSourceView:v42];

        v43 = [(NSMutableSet *)self->_pendingLoads view];
        [(BKContentViewController *)self->_leftContentViewController setRightSourceView:v43];

        [(BKPictureBookView *)self->_bookView setLeftContentView:0];
        [(BKPictureBookView *)self->_bookView setRightContentView:0];
        v44 = [(BKPictureBookNavigationController *)self pageCurlManager];
        v45 = [(BKContentViewController *)self->_leftContentViewController isForwardCurl];
        [(BKContentViewController *)self->_leftContentViewController manualCurlStartPosition];
        v47 = v46;
        v49 = v48;
        v50 = [(BKContentViewController *)self->_leftContentViewController curlPage];
        v51 = [(BKContentViewController *)self->_leftContentViewController pageArray];
        v52 = [(BKContentViewController *)self->_leftContentViewController backPage];
        v53 = [v44 beginManualCurl:v45 atLocation:v50 inPage:v51 fromPages:v52 backPage:self->_pageCurlManager inContainer:{v47, v49}];
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

- (void)manualCurlGesture:(id)a3
{
  v4 = a3;
  if ([(BKPictureBookNavigationController *)self inSinglePageMode])
  {
    [(BKPictureBookNavigationController *)self handleSinglePageManualCurlGesture:v4];
  }

  else
  {
    [(BKPictureBookNavigationController *)self handleSpreadManualCurlGesture:v4];
  }
}

- (void)handleSinglePageManualCurlGesture:(id)a3
{
  v4 = a3;
  v5 = [(BKPictureBookNavigationController *)self singlePageCurlContainer];
  [v4 locationInView:v5];
  v7 = v6;
  v9 = v8;

  v10 = [v4 state];
  if (v10 > 3)
  {
    if ((v10 - 4) >= 2)
    {
      return;
    }

    x = self->_manualCurlStartPosition.x;
    if (x != 0.0)
    {
      [*&x cancelManualCurl];
    }

    v25 = [(BKPictureBookNavigationController *)self pageSlideAnimation];
    [v25 cancelManualAnimation];
    goto LABEL_22;
  }

  if (v10 == &dword_0 + 1)
  {

    [(BKPictureBookNavigationController *)self _manualCurlToSinglePage:v7, v9];
  }

  else
  {
    if (v10 != &dword_0 + 2)
    {
      if (v10 == &dword_0 + 3)
      {
        v11 = self->_manualCurlStartPosition.x;
        if (v11 != 0.0)
        {
          v12 = [*&v11 type];
          v13 = vabdd_f64(v7, self->_manualCurlStartPosition.y);
          [(BKPageCurl *)self->_manualCurl frame];
          if (v13 <= CGRectGetWidth(v27) * 0.25)
          {
            [*&self->_manualCurlStartPosition.x cancelManualCurl];
          }

          else
          {
            [*&self->_manualCurlStartPosition.x finishManualCurl];
            v14 = [(BKPageNavigationViewController *)self pageOffset];
            if (v12 == 2)
            {
              v15 = v14 + 1;
            }

            else
            {
              v15 = v14 - 1;
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
            v22 = [(UIView *)self->_lastCurlUnderPageView isGoingToNextPage];
            v23 = [(BKPageNavigationViewController *)self pageOffset];
            if (v22)
            {
              v24 = v23 + 1;
            }

            else
            {
              v24 = v23 - 1;
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
      v17 = [(BKPictureBookNavigationController *)self pageCurlManager];
      [v17 updateManualCurl:*&self->_manualCurlStartPosition.x toLocation:{v7, v9}];
    }

    v18 = [(BKPictureBookNavigationController *)self pageSlideAnimation];

    if (v18)
    {
      v25 = [(BKPictureBookNavigationController *)self pageSlideAnimation];
      [v25 updateManualAnimationToLocation:{v7, v9}];
LABEL_22:
    }
  }
}

- (unint64_t)_pageOffsetAfter:(int64_t)a3 whenCurlingForward:(BOOL)a4
{
  v6 = ([(BKViewController *)self layoutDirection]== &dword_0 + 1) ^ a4;
  v7 = [(BKPictureBookNavigationController *)self isZoomedToSpread];
  v8 = 1;
  if (v7)
  {
    v8 = 2;
  }

  v9 = -2;
  if (!v7)
  {
    v9 = -1;
  }

  if (!v6)
  {
    v8 = v9;
  }

  v10 = v8 + a3;
  if (v6 == 1)
  {
    v11 = [(BKPageNavigationViewController *)self pageCount];
    if (v10 >= v11 - 1)
    {
      v10 = v11 - 1;
    }
  }

  else
  {
    v10 &= ~(v10 >> 63);
  }

  v12 = [(BKPageNavigationViewController *)self leftPageNumberForSpreadPageOffset:v10];
  if (v12 == [(BKPageNavigationViewController *)self leftPageNumberForSpreadPageOffset:a3])
  {
    return a3;
  }

  else
  {
    return v10;
  }
}

- (void)handleSpreadManualCurlGesture:(id)a3
{
  v78 = a3;
  v4 = [(BKPictureBookNavigationController *)self isZoomedToSpread];
  v5 = [(BKPictureBookNavigationController *)self curlContainer];
  [v78 locationInView:v5];
  v7 = v6;
  v9 = v8;

  v10 = [v78 state];
  if (v10 > 3)
  {
    if ((v10 - 4) >= 2)
    {
      goto LABEL_46;
    }

    [(BKContentViewController *)self->_leftContentViewController cancelManualCurl];
    leftContentViewController = self->_leftContentViewController;
    self->_leftContentViewController = 0;

    v14 = [(BKPictureBookNavigationController *)self pageSlideAnimation];
    [v14 cancelManualAnimation];
    goto LABEL_16;
  }

  if (v10 == &dword_0 + 1)
  {
    v16 = &OBJC_IVAR___BKPictureBookNavigationController__singlePageCurlContainer;
    if (v4)
    {
      v16 = &OBJC_IVAR___BKPictureBookNavigationController__curlContainer;
    }

    [*&self->super.super.IMViewController_opaque[*v16] bounds];
    v17 = v7 > CGRectGetMidX(v80);
    objc_opt_class();
    v18 = BUDynamicCast();
    if (v18)
    {
      v19 = [(BKPictureBookNavigationController *)self curlContainer];
      [v18 velocityInView:v19];
      v21 = v20;

      v17 = v21 < 0.0;
    }

    v22 = [(BKViewController *)self layoutDirection];
    v23 = [(BKPictureBookNavigationController *)self _pageOffsetAfter:[(BKPageNavigationViewController *)self pageOffset] whenCurlingForward:v17];
    if (v23 == [(BKPageNavigationViewController *)self pageOffset])
    {
      goto LABEL_45;
    }

    if (!v4)
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
        v29 = [(BKContentViewController *)self->_leftContentViewController pageCurl];
        [v29 cancelManualCurl];

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

    v75 = v22;
    [(BKContentViewController *)self->_leftContentViewController setCurlContainer:self->_pageCurlManager];
    [(BKPageNavigationViewController *)self delegate];
    v49 = v77 = v27;
    [(BKContentViewController *)self->_leftContentViewController setNavDelegate:v49];

    [(BKContentViewController *)self->_leftContentViewController setForwardCurl:v17];
    [(BKContentViewController *)self->_leftContentViewController setApplyMaskAndGutter:[(BKPictureBookNavigationController *)self drawsSpine]];
    v50 = 0.25;
    if (v4)
    {
      v50 = 0.5;
    }

    [(BKContentViewController *)self->_leftContentViewController setCurlThreshold:v50];
    [(BKPictureBookNavigationController *)self contentSize];
    v52 = v51;
    v54 = v53;
    v55 = [(BKPictureBookNavigationController *)self thumbnailBookViewConfiguration];
    v76 = v25;
    v56 = v24;
    v57 = [(BKPictureBookNavigationController *)self drawsSpine];
    [(BKPictureBookNavigationController *)self _containerBoundsForGeometry];
    v62 = [BKPictureBookViewGeometry geometryWithContentSize:v55 configuration:v57 drawsSpine:v52 containerBounds:v54, v58, v59, v60, v61];

    [v62 scaleForSpread:v4 landscape:isPortrait() ^ 1];
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
    v65 = [(BKContentViewController *)self->_rightContentViewController view];
    [(BKContentViewController *)self->_leftContentViewController setLeftSourceView:v65];

    v66 = [(NSMutableSet *)self->_pendingLoads view];
    [(BKContentViewController *)self->_leftContentViewController setRightSourceView:v66];

    [(BKContentViewController *)self->_leftContentViewController generateWithOldLeftPageNumber:v56 oldRightPageNumber:v76 newLeftPageNumber:v26 newRightPageNumber:v77];
    if (HIBYTE(self->_lastCompletedTransition) == 1)
    {
      [(BKContentViewController *)self->_leftContentViewController startManualCurlAtPostion:v7, v9];
    }

    else
    {
      v67 = objc_alloc_init(BKPageSlide);
      [(BKPictureBookNavigationController *)self setPageSlideAnimation:v67];

      v68 = [(BKPictureBookNavigationController *)self pageSlideAnimation];
      [v68 setPageAnimationDelegate:self];

      v69 = [(BKPictureBookNavigationController *)self pageSlideAnimation];
      v70 = [(BKContentViewController *)self->_leftContentViewController pageArray];
      v71 = [(BKContentViewController *)self->_leftContentViewController backPageArray];
      p_manualCurl = v74;
      if (BYTE2(self->_lastCompletedTransition) == 1)
      {
        p_manualCurl = &self->_manualCurl;
      }

      [v69 initiateManualAnimationFromPages:v70 toPages:v71 inContainer:*p_manualCurl isForwardAnimation:v17 isRTL:v75 == 1 isZoomedToSpread:v4];

      v73 = [(BKPictureBookNavigationController *)self pageSlideAnimation];
      [v73 beginManualAnimationAtLocation:{v7, v9}];
    }

    goto LABEL_45;
  }

  if (v10 == &dword_0 + 2)
  {
    v30 = [(BKContentViewController *)self->_rightContentViewController view];
    [(BKContentViewController *)self->_leftContentViewController setLeftSourceView:v30];

    v31 = [(NSMutableSet *)self->_pendingLoads view];
    [(BKContentViewController *)self->_leftContentViewController setRightSourceView:v31];

    if (self->_leftContentViewController && !self->_lastCurlUnderPageView)
    {
      [(BKPictureBookView *)self->_bookView setLeftContentView:0];
      [(BKPictureBookView *)self->_bookView setRightContentView:0];
      v32 = [(BKContentViewController *)self->_leftContentViewController pageCurl];

      if (!v32)
      {
        v33 = [(BKPictureBookNavigationController *)self pageCurlManager];
        v34 = [(BKContentViewController *)self->_leftContentViewController isForwardCurl];
        [(BKContentViewController *)self->_leftContentViewController manualCurlStartPosition];
        v36 = v35;
        v38 = v37;
        v39 = [(BKContentViewController *)self->_leftContentViewController curlPage];
        v40 = [(BKContentViewController *)self->_leftContentViewController pageArray];
        v41 = [(BKContentViewController *)self->_leftContentViewController backPage];
        v42 = [v33 beginManualCurl:v34 atLocation:v39 inPage:v40 fromPages:v41 backPage:self->_pageCurlManager inContainer:{v36, v38}];
        [(BKContentViewController *)self->_leftContentViewController setPageCurl:v42];

        v43 = [(BKContentViewController *)self->_rightContentViewController view];
        [(BKContentViewController *)self->_leftContentViewController setLeftSourceView:v43];

        v44 = [(NSMutableSet *)self->_pendingLoads view];
        [(BKContentViewController *)self->_leftContentViewController setRightSourceView:v44];
      }

      [(BKContentViewController *)self->_leftContentViewController updateManualCurlToPosition:v7, v9];
      v45 = [(BKPageNavigationViewController *)self delegate];
      [v45 pageNavigationDidBeginInteracting:self];
    }

    v46 = [(BKPictureBookNavigationController *)self pageSlideAnimation];
    [v46 updateManualAnimationToLocation:{v7, v9}];
  }

  else if (v10 == &dword_0 + 3)
  {
    v11 = self->_leftContentViewController;
    if (v11 && !self->_lastCurlUnderPageView)
    {
      [(BKContentViewController *)v11 updateManualCurlToPosition:v7, v9];
      if ([(BKContentViewController *)self->_leftContentViewController finishManualCurlAtPostion:v7, v9])
      {
        [(BKPictureBookNavigationController *)self setPageOffset:[(BKPictureBookNavigationController *)self _pageOffsetAfter:[(BKPageNavigationViewController *)self pageOffset] whenCurlingForward:[(BKContentViewController *)self->_leftContentViewController isForwardCurl]]];
        if (!v4)
        {
          [(BKPictureBookNavigationController *)self slide:[(BKContentViewController *)self->_leftContentViewController isForwardCurl] animated:1 withDelay:0.0];
        }
      }

      v12 = [(BKContentViewController *)self->_leftContentViewController pageCurl];

      if (!v12)
      {
        v13 = self->_leftContentViewController;
        self->_leftContentViewController = 0;
      }
    }

    if (self->_lastCurlUnderPageView)
    {
      [(BKPictureBookNavigationController *)self setPageOffset:[(BKPictureBookNavigationController *)self _pageOffsetAfter:[(BKPageNavigationViewController *)self pageOffset] whenCurlingForward:[(BKContentViewController *)self->_leftContentViewController isForwardCurl]]];
      v14 = [(BKPictureBookNavigationController *)self pageSlideAnimation];
      [v14 finishManualAnimation];
LABEL_16:

      [(BKPictureBookNavigationController *)self setPageSlideAnimation:0];
    }
  }

LABEL_46:
}

- (void)_restoreViewHierarchyWithArray:(id)a3
{
  if (a3)
  {
    v4 = [(NSMutableSet *)self->_pendingLoads view];
    [(BKPictureBookView *)self->_bookView setRightContentView:v4];

    v5 = [(BKContentViewController *)self->_rightContentViewController view];
    [(BKPictureBookView *)self->_bookView setLeftContentView:v5];

    leftContentViewController = self->_leftContentViewController;
    if (leftContentViewController)
    {
      v7 = [(BKContentViewController *)leftContentViewController isAutoCurl];
      leftContentViewController = self->_leftContentViewController;
      if ((v7 & 1) == 0)
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
      v4 = [(BKContentViewController *)self->_leftContentViewController pageCurl];
      v5 = [v4 existingPages];

      if (v5)
      {
        v6 = [(NSMutableSet *)self->_pendingLoads view];
        [(BKPictureBookView *)self->_bookView setRightContentView:v6];

        v7 = [(BKContentViewController *)self->_rightContentViewController view];
        [(BKPictureBookView *)self->_bookView setLeftContentView:v7];

        [(BKPictureBookView *)self->_bookView layoutIfNeeded];
        v8 = [(BKPictureBookNavigationController *)self pageCurlManager];
        [v8 killAllCurls];

        v9 = self->_leftContentViewController;
        self->_leftContentViewController = 0;

        [(BKPictureBookNavigationController *)self _resetCurlContainer];
      }
    }
  }
}

- (BOOL)bkLongPressGestureCanTransitionToRecognizedState:(id)a3
{
  v4 = a3;
  v5 = [(BKViewController *)self layoutDirection];
  if ([(BKPictureBookNavigationController *)self inSinglePageMode])
  {
    [(BKPictureBookNavigationController *)self _resetSinglePageCurlContainerFrame];
    v6 = [(BKPictureBookNavigationController *)self view];
    [v4 locationInView:v6];
    v8 = v7;

    v9 = [(BKPictureBookNavigationController *)self view];
    [v9 frame];
    v10 = CGRectGetWidth(v21) + -22.0;

    v11 = 22.0;
  }

  else
  {
    v12 = [(BKPictureBookNavigationController *)self curlContainer];
    [v4 locationInView:v12];
    v8 = v13;

    [(BKPictureBookNavigationController *)self _resetCurlContainerFrame];
    v10 = CGRectGetWidth(v22) + -88.0;
    v11 = 88.0;
  }

  if ([(BKPictureBookNavigationController *)self _isFreeScale]|| v8 > v11 && v8 <= v10)
  {
    goto LABEL_7;
  }

  v15 = [(BKPageNavigationViewController *)self pageOffset];
  v16 = v15;
  if (v5 == 1)
  {
    if (v8 > v10 && !v15)
    {
      goto LABEL_7;
    }

    v17 = [(BKPageNavigationViewController *)self pageOffset];
    v18 = v17 >= [(BKPageNavigationViewController *)self pageCount]- 1;
  }

  else
  {
    v19 = [(BKPageNavigationViewController *)self pageCount];
    if (v8 > v10 && v16 >= v19 - 1)
    {
      goto LABEL_7;
    }

    v18 = [(BKPageNavigationViewController *)self pageOffset]== 0;
  }

  if (v8 < v11 && v18)
  {
LABEL_7:
    LOBYTE(v14) = 0;
    return v14;
  }

  v14 = [(BKPictureBookNavigationController *)self isContentRenderComplete];
  if (v14)
  {
    [(BKPictureBookScrollView *)self->_scrollView setBounces:0];
    [(BKPictureBookScrollView *)self->_scrollView setAlwaysBounceVertical:0];
    [(BKPictureBookScrollView *)self->_scrollView setAlwaysBounceHorizontal:0];
    LOBYTE(v14) = 1;
  }

  return v14;
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