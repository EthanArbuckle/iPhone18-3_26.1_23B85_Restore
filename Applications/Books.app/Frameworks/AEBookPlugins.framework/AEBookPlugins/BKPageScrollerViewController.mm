@interface BKPageScrollerViewController
- (BKImageResizerDelegate)imageResizerDelegate;
- (BKPageScrollerThumbnailingDelegate)thumbnailingDelegate;
- (BKPageScrollerViewController)initWithTransitionStyle:(int64_t)a3 navigationOrientation:(int64_t)a4 options:(id)a5;
- (BOOL)gestureRecognizer:(id)a3 canBePreventedByGestureRecognizer:(id)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldBeRequiredToFailByGestureRecognizer:(id)a4;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (BOOL)isZoomedOut;
- (CGRect)_frameForPageNumber:(unint64_t)a3;
- (_NSRange)visiblePages;
- (id)_allPageViews;
- (id)contentView;
- (id)viewForPageNumber:(int64_t)a3;
- (id)viewForZoomingInScrollView:(id)a3;
- (void)_updatePageViewScrollStates;
- (void)_updateSurroundingZoomScales;
- (void)_visibleAreaChangedInScrollView:(id)a3;
- (void)contentViewImage:(BOOL)a3 completion:(id)a4;
- (void)dealloc;
- (void)handleDoubleTap:(id)a3;
- (void)handlePageChangeTap:(id)a3;
- (void)loadView;
- (void)pagingScrollView:(id)a3 didRemoveView:(id)a4 atIndex:(int64_t)a5;
- (void)pagingScrollView:(id)a3 viewDidAppear:(id)a4 atIndex:(int64_t)a5;
- (void)pagingScrollView:(id)a3 viewDidDisappear:(id)a4 atIndex:(int64_t)a5;
- (void)releaseViews;
- (void)resetZoomScaleForScrollView:(id)a3;
- (void)scrollViewDidEndDecelerating:(id)a3;
- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4;
- (void)scrollViewWillBeginDragging:(id)a3;
- (void)scrollViewWillBeginZooming:(id)a3 withView:(id)a4;
- (void)setPageCount:(int64_t)a3;
- (void)setPageOffset:(int64_t)a3;
- (void)toggleControls:(id)a3;
- (void)turnToPageNumber:(int64_t)a3 animated:(BOOL)a4;
- (void)viewWillAppear:(BOOL)a3;
- (void)zoomVisiblePageToFit:(BOOL)a3;
- (void)zoomingScrollView:(id)a3 didSimulateZoomScale:(double)a4 onView:(id)a5;
@end

@implementation BKPageScrollerViewController

- (BKPageScrollerViewController)initWithTransitionStyle:(int64_t)a3 navigationOrientation:(int64_t)a4 options:(id)a5
{
  result = [(BKPageNavigationViewController *)self init:a3];
  if (result)
  {
    result->_navigationOrientation = a4;
    result->_maxZoomScale = 32.0;
    result->_maxResizeScale = 1.0;
    result->super._pageOffset = 0x7FFFFFFFFFFFFFFFLL;
  }

  return result;
}

- (void)dealloc
{
  [(BKPageScrollerViewController *)self releaseViews];
  v3.receiver = self;
  v3.super_class = BKPageScrollerViewController;
  [(BKViewController *)&v3 dealloc];
}

- (void)releaseViews
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [(BKPageScrollerViewController *)self _allPageViews];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v9 + 1) + 8 * v7) teardown];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  [(BKPagingScrollView *)self->_pageScroller setDelegate:0];
  [(UITapGestureRecognizer *)self->_pageChangeTapRecognizer setDelegate:0];
  [(UITapGestureRecognizer *)self->_pageChangeTapRecognizer removeTarget:self action:0];
  [(UITapGestureRecognizer *)self->_doubleTapRecognizer setDelegate:0];
  [(UITapGestureRecognizer *)self->_doubleTapRecognizer removeTarget:self action:0];
  [(UITapGestureRecognizer *)self->_controlsTapRecognizer setDelegate:0];
  [(UITapGestureRecognizer *)self->_controlsTapRecognizer removeTarget:self action:0];
  v8.receiver = self;
  v8.super_class = BKPageScrollerViewController;
  [(BKViewController *)&v8 releaseViews];
}

- (void)loadView
{
  v20 = [[UIView alloc] initWithFrame:{0.0, 0.0, 320.0, 460.0}];
  [v20 setAutoresizingMask:18];
  [v20 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(BKPageScrollerViewController *)self navigationOrientation];
  if (v11)
  {
    v6 = v6 + -20.0;
  }

  else
  {
    v4 = v4 + -20.0;
  }

  if (v11)
  {
    v10 = v10 + 40.0;
  }

  else
  {
    v8 = v8 + 40.0;
  }

  v12 = [[BKPagingScrollView alloc] initWithFrame:v4, v6, v8, v10];
  pageScroller = self->_pageScroller;
  self->_pageScroller = v12;

  [(BKPagingScrollView *)self->_pageScroller setNavigationOrientation:[(BKPageScrollerViewController *)self navigationOrientation]];
  [(BKPagingScrollView *)self->_pageScroller setLayoutDirection:[(BKViewController *)self layoutDirection]];
  [(BKPagingScrollView *)self->_pageScroller setAutoresizingMask:18];
  [(BKPagingScrollView *)self->_pageScroller setDelegate:self];
  [(BKPagingScrollView *)self->_pageScroller setPageCacheDistance:1];
  [(BKPagingScrollView *)self->_pageScroller setPageCount:[(BKPageNavigationViewController *)self pageCount]];
  [(BKPagingScrollView *)self->_pageScroller setPageOffset:[(BKPageNavigationViewController *)self pageOffset]];
  [(BKPagingScrollView *)self->_pageScroller setContentInsetAdjustmentBehavior:2];
  [v20 addSubview:self->_pageScroller];
  v14 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"handleDoubleTap:"];
  doubleTapRecognizer = self->_doubleTapRecognizer;
  self->_doubleTapRecognizer = v14;

  [(UITapGestureRecognizer *)self->_doubleTapRecognizer setDelegate:self];
  [(UITapGestureRecognizer *)self->_doubleTapRecognizer setNumberOfTapsRequired:2];
  [(BKPagingScrollView *)self->_pageScroller addGestureRecognizer:self->_doubleTapRecognizer];
  v16 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"handlePageChangeTap:"];
  pageChangeTapRecognizer = self->_pageChangeTapRecognizer;
  self->_pageChangeTapRecognizer = v16;

  [(UITapGestureRecognizer *)self->_pageChangeTapRecognizer setDelegate:self];
  [(UITapGestureRecognizer *)self->_pageChangeTapRecognizer requireGestureRecognizerToFail:self->_doubleTapRecognizer];
  [(BKPagingScrollView *)self->_pageScroller addGestureRecognizer:self->_pageChangeTapRecognizer];
  v18 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"toggleControls:"];
  controlsTapRecognizer = self->_controlsTapRecognizer;
  self->_controlsTapRecognizer = v18;

  [(UITapGestureRecognizer *)self->_controlsTapRecognizer setDelegate:self];
  [(UITapGestureRecognizer *)self->_controlsTapRecognizer requireGestureRecognizerToFail:self->_pageChangeTapRecognizer];
  [(UITapGestureRecognizer *)self->_controlsTapRecognizer requireGestureRecognizerToFail:self->_doubleTapRecognizer];
  [(BKPagingScrollView *)self->_pageScroller addGestureRecognizer:self->_controlsTapRecognizer];
  [(BKPageScrollerViewController *)self setView:v20];
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = BKPageScrollerViewController;
  [(BKPageScrollerViewController *)&v4 viewWillAppear:a3];
  [(BKPagingScrollView *)self->_pageScroller layoutIfNeeded];
}

- (id)contentView
{
  v3 = [(BKPagingScrollView *)self->_pageScroller currentView];
  v4 = [(BKPageScrollerViewController *)self _pageViewInZoomingScrollView:v3];

  return v4;
}

- (void)contentViewImage:(BOOL)a3 completion:(id)a4
{
  v11 = a4;
  v6 = [(BKPagingScrollView *)self->_pageScroller currentView];
  v7 = [(BKPageScrollerViewController *)self _pageViewInZoomingScrollView:v6];
  if (!a3)
  {
    [(BKPageScrollerViewController *)self resetZoomScaleForScrollView:v6];
  }

  v8 = [v7 im_snapshotInContext];

  v9 = objc_retainBlock(v11);
  v10 = v9;
  if (v9)
  {
    (*(v9 + 2))(v9, v8);
  }
}

- (void)setPageOffset:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = BKPageScrollerViewController;
  [(BKPageNavigationViewController *)&v5 setPageOffset:?];
  [(BKPagingScrollView *)self->_pageScroller setPageOffset:a3];
}

- (void)setPageCount:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = BKPageScrollerViewController;
  [(BKPageNavigationViewController *)&v5 setPageCount:?];
  [(BKPagingScrollView *)self->_pageScroller setPageCount:a3];
}

- (_NSRange)visiblePages
{
  v3 = [(BKPageNavigationViewController *)self pageOffset];
  v4 = [(BKPageNavigationViewController *)self pageCount];
  if (v3 + 1 < v4)
  {
    v5 = v3 + 1;
  }

  else
  {
    v5 = v4;
  }

  if (v5 <= 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = v5;
  }

  v7 = 1;
  result.length = v7;
  result.location = v6;
  return result;
}

- (void)turnToPageNumber:(int64_t)a3 animated:(BOOL)a4
{
  v4 = a3 - 1;
  if (a3 >= 1)
  {
    v5 = a4;
    if ([(BKPageNavigationViewController *)self pageCount]>= a3)
    {
      if ([(BKPageScrollerViewController *)self isVisible]&& v5)
      {
        self->_animatingPageOffset = 1;
        v8 = +[AETestDriver shared];
        [v8 postEvent:kBETestDriverPageTurnStart sender:self];
        [v8 postEvent:kBETestDriverPageTurnSetupStart sender:self];
        [v8 postEvent:kBETestDriverPageTurnSetupEnd sender:self];
        [v8 postEvent:kBETestDriverPageTurnAnimationStart sender:self];
        v12[0] = _NSConcreteStackBlock;
        v12[1] = 3221225472;
        v12[2] = sub_66A5C;
        v12[3] = &unk_1E4548;
        v12[4] = self;
        v12[5] = a3;
        v10[0] = _NSConcreteStackBlock;
        v10[1] = 3221225472;
        v10[2] = sub_66A68;
        v10[3] = &unk_1E3F28;
        v10[4] = self;
        v11 = v8;
        v9 = v8;
        [UIView animateWithDuration:v12 animations:v10 completion:0.2];
      }

      else
      {

        [(BKPageScrollerViewController *)self setPageOffset:v4];
      }
    }
  }
}

- (BOOL)isZoomedOut
{
  v2 = [(BKPageScrollerViewController *)self _currentZoomingScrollView];
  [v2 zoomScale];
  v4 = v3;
  [v2 minimumZoomScale];
  v6 = vabdd_f64(v4, v5) < 0.00999999978;

  return v6;
}

- (CGRect)_frameForPageNumber:(unint64_t)a3
{
  if (self->_pageScroller)
  {
    if ([(BKPageScrollerViewController *)self navigationOrientation])
    {
      [(BKPagingScrollView *)self->_pageScroller frame];
      y = v5 * (a3 - 1) + 20.0;
      [(BKPagingScrollView *)self->_pageScroller frame];
      width = v7;
      [(BKPagingScrollView *)self->_pageScroller frame];
      height = v9 + -40.0;
      x = 0.0;
    }

    else
    {
      v12 = [(BKViewController *)self layoutDirection];
      [(BKPagingScrollView *)self->_pageScroller frame];
      v14 = v13;
      if (v12 == 1)
      {
        v15 = [(BKPageNavigationViewController *)self pageCount]- a3;
      }

      else
      {
        v15 = (a3 - 1);
      }

      x = v14 * v15 + 20.0;
      [(BKPagingScrollView *)self->_pageScroller frame];
      width = v16 + -40.0;
      [(BKPagingScrollView *)self->_pageScroller frame];
      y = 0.0;
    }
  }

  else
  {
    x = CGRectZero.origin.x;
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
  }

  v17 = x;
  v18 = y;
  v19 = width;
  result.size.height = height;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

- (id)viewForPageNumber:(int64_t)a3
{
  [(BKPageScrollerViewController *)self _frameForPageNumber:?];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [[BKZoomingScrollView alloc] initWithFrame:v5, v7, v9, v11];
  v14 = [BKPageScrollerPageView alloc];
  v15 = [(BKPageNavigationViewController *)self delegate];
  v16 = [(BKPageScrollerViewController *)self thumbnailingDelegate];
  v17 = [(BKPageScrollerViewController *)self imageResizerDelegate];
  v18 = [(BKPageScrollerPageView *)v14 initWithFrame:a3 pageNumber:v15 navigationDelegate:v16 thumbnailingDelegate:v17 imageResizerDelegate:v6, v8, v10, v12];

  [(BKPageScrollerPageView *)v18 sizeThatFits:v10, v12];
  [(BKPageScrollerPageView *)v18 setFrame:0.0, 0.0, v19, v20];
  [(BKPageScrollerPageView *)v18 setTag:128];
  v21 = [(BKPageScrollerPageView *)v18 layer];
  [v21 setShadowOffset:{0.0, 1.0}];

  v22 = [(BKPageScrollerPageView *)v18 layer];
  LODWORD(v23) = 1051931443;
  [v22 setShadowOpacity:v23];

  v24 = [(BKPageScrollerPageView *)v18 layer];
  [v24 setShadowRadius:3.0];

  [(BKPageScrollerPageView *)v18 bounds];
  v25 = [UIBezierPath bezierPathWithRect:?];
  v26 = [v25 CGPath];
  v27 = [(BKPageScrollerPageView *)v18 layer];
  [v27 setShadowPath:v26];

  [(BKZoomingScrollView *)v13 setAutoresizingMask:18];
  [(BKZoomingScrollView *)v13 setShowsHorizontalScrollIndicator:0];
  [(BKZoomingScrollView *)v13 setShowsVerticalScrollIndicator:0];
  [(BKZoomingScrollView *)v13 addSubview:v18];
  [(BKZoomingScrollView *)v13 setDelegate:self];
  [(BKZoomingScrollView *)v13 setMinimumZoomScale:1.0];
  [(BKZoomingScrollView *)v13 setMaximumZoomScale:self->_maxZoomScale];
  [(BKZoomingScrollView *)v13 setMaxSimulatedZoomScale:self->_maxResizeScale];
  [(BKZoomingScrollView *)v13 setBouncesZoom:1];
  [(BKZoomingScrollView *)v13 setDecelerationRate:UIScrollViewDecelerationRateFast];
  [(BKZoomingScrollView *)v13 setDirectionalLockEnabled:1];
  [(BKZoomingScrollView *)v13 setContentInsetAdjustmentBehavior:2];
  [(BKZoomingScrollView *)v13 setClipsToBounds:1];
  [(BKPageScrollerPageView *)v18 bounds];
  [(BKZoomingScrollView *)v13 configureForImageSize:v28, v29];
  v30 = [(BKPageScrollerViewController *)self _currentZoomingScrollView];
  v31 = v30;
  if (self->_maintainZoomScale && v30)
  {
    [v30 totalZoomScale];
    [(BKZoomingScrollView *)v13 setTotalZoomScale:?];
  }

  else
  {
    [(BKZoomingScrollView *)v13 minimumZoomScale];
    [(BKZoomingScrollView *)v13 setZoomScale:?];
  }

  return v13;
}

- (void)zoomVisiblePageToFit:(BOOL)a3
{
  v4 = [(BKPagingScrollView *)self->_pageScroller viewAtIndex:[(BKPageNavigationViewController *)self pageOffset]];
  self->_animatingZoomScale = 1;
  objc_initWeak(&location, v4);
  [v4 minimumZoomScale];
  v6 = v5;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_67074;
  v7[3] = &unk_1E2AC8;
  v7[4] = self;
  objc_copyWeak(&v8, &location);
  [v4 setZoomScale:1 animated:v7 completionBlock:v6];
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (id)viewForZoomingInScrollView:(id)a3
{
  if (self->_pageScroller == a3)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(BKPageScrollerViewController *)self _pageViewInZoomingScrollView:v3];
  }

  return v5;
}

- (void)scrollViewWillBeginDragging:(id)a3
{
  v4 = [(BKPageNavigationViewController *)self delegate];
  [v4 pageNavigationDidBeginInteracting:self];
}

- (void)scrollViewWillBeginZooming:(id)a3 withView:(id)a4
{
  v5 = [(BKPageNavigationViewController *)self delegate:a3];
  [v5 pageNavigationDidBeginInteracting:self];
}

- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4
{
  if (!a4)
  {
    [(BKPageScrollerViewController *)self _visibleAreaChangedInScrollView:a3];
  }
}

- (void)scrollViewDidEndDecelerating:(id)a3
{
  [(BKPageScrollerViewController *)self _visibleAreaChangedInScrollView:a3];
  pageScroller = self->_pageScroller;

  [(BKPagingScrollView *)pageScroller updateCachedPages];
}

- (void)zoomingScrollView:(id)a3 didSimulateZoomScale:(double)a4 onView:(id)a5
{
  v6 = a5;
  [v6 bounds];
  v7 = [UIBezierPath bezierPathWithRect:?];
  v8 = [v7 CGPath];
  v9 = [v6 layer];
  [v9 setShadowPath:v8];

  v10 = [v6 layer];
  [v10 setShadowOffset:{a4 * 0.0, a4}];

  v11 = [v6 layer];

  [v11 setShadowRadius:a4 * 3.0];
}

- (void)pagingScrollView:(id)a3 didRemoveView:(id)a4 atIndex:(int64_t)a5
{
  v5 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v5 setDelegate:0];
  }
}

- (void)pagingScrollView:(id)a3 viewDidAppear:(id)a4 atIndex:(int64_t)a5
{
  self->super._pageOffset = [(BKPagingScrollView *)self->_pageScroller pageOffset:a3];
  v7 = [(BKPageNavigationViewController *)self delegate];
  [v7 pageNavigationDidChangeLocation:self];

  v8 = [(BKPageNavigationViewController *)self delegate];
  v9 = [v8 existingContentViewControllerForPageNumber:a5 + 1];

  [v9 beginAppearanceTransition:1 animated:0];
  [v9 endAppearanceTransition];
}

- (void)resetZoomScaleForScrollView:(id)a3
{
  v3 = a3;
  [v3 minimumZoomScale];
  [v3 setZoomScale:?];
}

- (void)pagingScrollView:(id)a3 viewDidDisappear:(id)a4 atIndex:(int64_t)a5
{
  v9 = a4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && !self->_maintainZoomScale)
  {
    [(BKPageScrollerViewController *)self performSelector:"resetZoomScaleForScrollView:" withObject:v9 afterDelay:0.0];
  }

  v7 = [(BKPageNavigationViewController *)self delegate];
  v8 = [v7 existingContentViewControllerForPageNumber:a5 + 1];

  [v8 beginAppearanceTransition:0 animated:0];
  [v8 endAppearanceTransition];
}

- (void)handleDoubleTap:(id)a3
{
  v4 = a3;
  v5 = [(BKPageNavigationViewController *)self delegate];
  v6 = [v5 existingContentViewControllerForPageNumber:{-[BKPageNavigationViewController pageOffset](self, "pageOffset") + 1}];

  v7 = [(BKPagingScrollView *)self->_pageScroller viewAtIndex:[(BKPageNavigationViewController *)self pageOffset]];
  v8 = [v6 view];
  [v4 locationInView:v8];
  v10 = v9;

  [v7 zoomScale];
  v12 = v11;
  [v7 minimumZoomScale];
  if (v12 <= v13)
  {
    v14 = [v6 view];
    [v14 bounds];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;

    v27.origin.x = v16;
    v27.origin.y = v18;
    v27.size.width = v20;
    v27.size.height = v22;
    if (v10 >= CGRectGetMidX(v27))
    {
      v29.origin.x = v16;
      v29.origin.y = v18;
      v29.size.width = v20;
      v29.size.height = v22;
      MidX = CGRectGetMidX(v29);
    }

    else
    {
      v28.origin.x = v16;
      v28.origin.y = v18;
      v28.size.width = v20;
      v28.size.height = v22;
      MidX = CGRectGetMinX(v28);
    }

    v24 = MidX;
    self->_animatingZoomScale = 1;
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_67758;
    v25[3] = &unk_1E3F50;
    v25[4] = self;
    v26 = v7;
    [v26 zoomToRect:1 animated:v25 completionBlock:{v24, v18, v20 * 0.5, v22}];
  }

  else
  {
    [(BKPageScrollerViewController *)self zoomVisiblePageToFit:1];
  }
}

- (void)handlePageChangeTap:(id)a3
{
  pageScroller = self->_pageScroller;
  v5 = a3;
  v34 = [(BKPagingScrollView *)pageScroller viewAtIndex:[(BKPageNavigationViewController *)self pageOffset]];
  v6 = [v5 view];
  [v5 locationInView:v6];
  v8 = v7;

  if (isPad())
  {
    if (isPortrait())
    {
      v9 = 110.0;
    }

    else
    {
      v9 = 82.0;
    }
  }

  else
  {
    v9 = 80.0;
  }

  if (self->_maintainZoomScale)
  {
    [v34 bounds];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    [v6 bounds];
    if (v8 <= CGRectGetMaxX(v36) - v9)
    {
      [v6 bounds];
      if (v8 < v9 + CGRectGetMinX(v38))
      {
        v39.origin.x = v11;
        v39.origin.y = v13;
        v39.size.width = v15;
        v39.size.height = v17;
        v26 = CGRectGetMinX(v39) + -1.0;
        [v34 contentInset];
        if (v26 > v27)
        {
          [v34 contentInset];
          v25 = v28;
          goto LABEL_13;
        }
      }
    }

    else
    {
      v37.origin.x = v11;
      v37.origin.y = v13;
      v37.size.width = v15;
      v37.size.height = v17;
      v18 = CGRectGetMaxX(v37) + 1.0;
      [v34 contentSize];
      v20 = v19;
      [v34 contentInset];
      if (v18 < v20 - v21)
      {
        [v34 contentSize];
        v23 = v22;
        [v34 contentInset];
        v25 = v23 - v24 - v15;
LABEL_13:
        [v34 setContentOffset:1 animated:{v25, v13}];
        goto LABEL_26;
      }
    }
  }

  [v6 bounds];
  if (v8 <= CGRectGetMaxX(v40) - v9)
  {
    [v6 bounds];
    if (v8 >= v9 + CGRectGetMinX(v41))
    {
      v29 = 0;
      goto LABEL_21;
    }

    v29 = -1;
  }

  else
  {
    v29 = 1;
  }

  v30 = +[NSUserDefaults standardUserDefaults];
  v31 = [v30 BOOLForKey:BKLeftTapTurnToNextDefault[0]];

  if ((v31 & 1) == 0)
  {
LABEL_21:
    if ([(BKViewController *)self layoutDirection]== &dword_0 + 1)
    {
      v33 = -v29;
    }

    else
    {
      v33 = v29;
    }

    v32 = v33 + 1;
    goto LABEL_25;
  }

  v32 = 2;
LABEL_25:
  [(BKPageScrollerViewController *)self turnToPageNumber:[(BKPageNavigationViewController *)self pageOffset]+ v32 animated:1];
LABEL_26:
}

- (void)toggleControls:(id)a3
{
  v4 = [(BKPageNavigationViewController *)self delegate];
  [v4 pageNavigationToggleControls:self];
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  if (self->_pageChangeTapRecognizer != a3)
  {
    return 1;
  }

  v4 = a3;
  v5 = [v4 view];
  [v4 locationInView:v5];
  v7 = v6;

  if (isPad())
  {
    if (isPortrait())
    {
      v8 = 110.0;
    }

    else
    {
      v8 = 82.0;
    }
  }

  else
  {
    v8 = 80.0;
  }

  [v5 bounds];
  v3 = 1;
  if (v7 < CGRectGetMaxX(v10) - v8)
  {
    [v5 bounds];
    if (v7 > v8 + CGRectGetMinX(v11))
    {
      v3 = 0;
    }
  }

  return v3;
}

- (BOOL)gestureRecognizer:(id)a3 shouldBeRequiredToFailByGestureRecognizer:(id)a4
{
  if (self->_pageChangeTapRecognizer == a3)
  {
    return [a4 bk_isWKSyntheticTapGestureRecognizer];
  }

  else
  {
    return 0;
  }
}

- (BOOL)gestureRecognizer:(id)a3 canBePreventedByGestureRecognizer:(id)a4
{
  v6 = a4;
  if (self->_doubleTapRecognizer == a3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v7 = v6;
    if ([v7 numberOfTapsRequired] == &dword_0 + 2)
    {
      v8 = [v7 matchesTarget:+[UIView be_wkContentViewClass](UIView andAction:{"be_wkContentViewClass"), "_nonBlockingDoubleTapRecognized:"}] ^ 1;
    }

    else
    {
      LOBYTE(v8) = 1;
    }
  }

  else
  {
    LOBYTE(v8) = 1;
  }

  return v8;
}

- (void)_visibleAreaChangedInScrollView:(id)a3
{
  isKindOfClass = a3;
  v5 = isKindOfClass;
  if (!self->_animatingZoomScale)
  {
    v7 = isKindOfClass;
    isKindOfClass = [isKindOfClass isDragging];
    v5 = v7;
    if ((isKindOfClass & 1) == 0)
    {
      isKindOfClass = [(BKPagingScrollView *)v7 isDecelerating];
      v5 = v7;
      if ((isKindOfClass & 1) == 0)
      {
        isKindOfClass = [(BKPagingScrollView *)v7 isZooming];
        v5 = v7;
        if ((isKindOfClass & 1) == 0)
        {
          isKindOfClass = [(BKPagingScrollView *)v7 isZoomBouncing];
          v5 = v7;
          if ((isKindOfClass & 1) == 0)
          {
            if (self->_resizeViewsWhenZoomed)
            {
              objc_opt_class();
              isKindOfClass = objc_opt_isKindOfClass();
              v5 = v7;
              if (isKindOfClass)
              {
                isKindOfClass = [(BKPagingScrollView *)v7 simulateZoomScaleByResizingView];
                v5 = v7;
              }
            }

            if (self->_maintainZoomScale)
            {
              v6 = [(BKPageScrollerViewController *)self _currentZoomingScrollView];

              v5 = v7;
              if (v6 == v7)
              {
                isKindOfClass = [(BKPageScrollerViewController *)self _updateSurroundingZoomScales];
                v5 = v7;
              }
            }
          }
        }
      }
    }
  }

  if (self->_pageScroller == v5)
  {
    v8 = v5;
    isKindOfClass = [(BKPageScrollerViewController *)self _updatePageViewScrollStates];
    v5 = v8;
  }

  _objc_release_x1(isKindOfClass, v5);
}

- (void)_updatePageViewScrollStates
{
  animatingPageOffset = 1;
  if (([(BKPagingScrollView *)self->_pageScroller isDragging]& 1) == 0 && ([(BKPagingScrollView *)self->_pageScroller isDecelerating]& 1) == 0)
  {
    animatingPageOffset = self->_animatingPageOffset;
  }

  v4 = [(BKPagingScrollView *)self->_pageScroller currentView];
  v5 = [(BKPageScrollerViewController *)self _pageViewInZoomingScrollView:v4];

  if (animatingPageOffset)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  [v5 setScrollState:v6];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = [(BKPagingScrollView *)self->_pageScroller surroundingViews];
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    if (animatingPageOffset)
    {
      v11 = 1;
    }

    else
    {
      v11 = 3;
    }

    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v13 = [(BKPageScrollerViewController *)self _pageViewInZoomingScrollView:*(*(&v14 + 1) + 8 * i)];
        [v13 setScrollState:v11];
      }

      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }
}

- (id)_allPageViews
{
  v3 = +[NSMutableArray array];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [(BKPagingScrollView *)self->_pageScroller allViews];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [(BKPageScrollerViewController *)self _pageViewInZoomingScrollView:*(*(&v11 + 1) + 8 * i)];
        if (v9)
        {
          [v3 addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (void)_updateSurroundingZoomScales
{
  v3 = [(BKPageScrollerViewController *)self _currentZoomingScrollView];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v4 = [(BKPagingScrollView *)self->_pageScroller subviews];
  v5 = [v4 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v21;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v20 + 1) + 8 * i);
        if (v9 != v3)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v10 = v9;
            v11 = [v3 tag];
            LODWORD(v11) = v11 > [v10 tag];
            if (v11 == ([(BKViewController *)self layoutDirection]== &dword_0 + 1))
            {
              [v10 contentInset];
              v16 = -v17;
            }

            else
            {
              [v10 contentSize];
              v13 = v12;
              [v10 bounds];
              v14 = v13 - CGRectGetWidth(v25);
              [v10 contentInset];
              v16 = v14 + v15;
            }

            [v3 contentOffset];
            v19 = v18;
            [v3 totalZoomScale];
            [v10 setTotalZoomScale:?];
            [v10 setContentOffset:{v16, v19}];
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v6);
  }
}

- (BKPageScrollerThumbnailingDelegate)thumbnailingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_thumbnailingDelegate);

  return WeakRetained;
}

- (BKImageResizerDelegate)imageResizerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_imageResizerDelegate);

  return WeakRetained;
}

@end