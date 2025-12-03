@interface BKPageScrollerViewController
- (BKImageResizerDelegate)imageResizerDelegate;
- (BKPageScrollerThumbnailingDelegate)thumbnailingDelegate;
- (BKPageScrollerViewController)initWithTransitionStyle:(int64_t)style navigationOrientation:(int64_t)orientation options:(id)options;
- (BOOL)gestureRecognizer:(id)recognizer canBePreventedByGestureRecognizer:(id)gestureRecognizer;
- (BOOL)gestureRecognizer:(id)recognizer shouldBeRequiredToFailByGestureRecognizer:(id)gestureRecognizer;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (BOOL)isZoomedOut;
- (CGRect)_frameForPageNumber:(unint64_t)number;
- (_NSRange)visiblePages;
- (id)_allPageViews;
- (id)contentView;
- (id)viewForPageNumber:(int64_t)number;
- (id)viewForZoomingInScrollView:(id)view;
- (void)_updatePageViewScrollStates;
- (void)_updateSurroundingZoomScales;
- (void)_visibleAreaChangedInScrollView:(id)view;
- (void)contentViewImage:(BOOL)image completion:(id)completion;
- (void)dealloc;
- (void)handleDoubleTap:(id)tap;
- (void)handlePageChangeTap:(id)tap;
- (void)loadView;
- (void)pagingScrollView:(id)view didRemoveView:(id)removeView atIndex:(int64_t)index;
- (void)pagingScrollView:(id)view viewDidAppear:(id)appear atIndex:(int64_t)index;
- (void)pagingScrollView:(id)view viewDidDisappear:(id)disappear atIndex:(int64_t)index;
- (void)releaseViews;
- (void)resetZoomScaleForScrollView:(id)view;
- (void)scrollViewDidEndDecelerating:(id)decelerating;
- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate;
- (void)scrollViewWillBeginDragging:(id)dragging;
- (void)scrollViewWillBeginZooming:(id)zooming withView:(id)view;
- (void)setPageCount:(int64_t)count;
- (void)setPageOffset:(int64_t)offset;
- (void)toggleControls:(id)controls;
- (void)turnToPageNumber:(int64_t)number animated:(BOOL)animated;
- (void)viewWillAppear:(BOOL)appear;
- (void)zoomVisiblePageToFit:(BOOL)fit;
- (void)zoomingScrollView:(id)view didSimulateZoomScale:(double)scale onView:(id)onView;
@end

@implementation BKPageScrollerViewController

- (BKPageScrollerViewController)initWithTransitionStyle:(int64_t)style navigationOrientation:(int64_t)orientation options:(id)options
{
  result = [(BKPageNavigationViewController *)self init:style];
  if (result)
  {
    result->_navigationOrientation = orientation;
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
  _allPageViews = [(BKPageScrollerViewController *)self _allPageViews];
  v4 = [_allPageViews countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(_allPageViews);
        }

        [*(*(&v9 + 1) + 8 * v7) teardown];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [_allPageViews countByEnumeratingWithState:&v9 objects:v13 count:16];
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
  navigationOrientation = [(BKPageScrollerViewController *)self navigationOrientation];
  if (navigationOrientation)
  {
    v6 = v6 + -20.0;
  }

  else
  {
    v4 = v4 + -20.0;
  }

  if (navigationOrientation)
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

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = BKPageScrollerViewController;
  [(BKPageScrollerViewController *)&v4 viewWillAppear:appear];
  [(BKPagingScrollView *)self->_pageScroller layoutIfNeeded];
}

- (id)contentView
{
  currentView = [(BKPagingScrollView *)self->_pageScroller currentView];
  v4 = [(BKPageScrollerViewController *)self _pageViewInZoomingScrollView:currentView];

  return v4;
}

- (void)contentViewImage:(BOOL)image completion:(id)completion
{
  completionCopy = completion;
  currentView = [(BKPagingScrollView *)self->_pageScroller currentView];
  v7 = [(BKPageScrollerViewController *)self _pageViewInZoomingScrollView:currentView];
  if (!image)
  {
    [(BKPageScrollerViewController *)self resetZoomScaleForScrollView:currentView];
  }

  im_snapshotInContext = [v7 im_snapshotInContext];

  v9 = objc_retainBlock(completionCopy);
  v10 = v9;
  if (v9)
  {
    (*(v9 + 2))(v9, im_snapshotInContext);
  }
}

- (void)setPageOffset:(int64_t)offset
{
  v5.receiver = self;
  v5.super_class = BKPageScrollerViewController;
  [(BKPageNavigationViewController *)&v5 setPageOffset:?];
  [(BKPagingScrollView *)self->_pageScroller setPageOffset:offset];
}

- (void)setPageCount:(int64_t)count
{
  v5.receiver = self;
  v5.super_class = BKPageScrollerViewController;
  [(BKPageNavigationViewController *)&v5 setPageCount:?];
  [(BKPagingScrollView *)self->_pageScroller setPageCount:count];
}

- (_NSRange)visiblePages
{
  pageOffset = [(BKPageNavigationViewController *)self pageOffset];
  pageCount = [(BKPageNavigationViewController *)self pageCount];
  if (pageOffset + 1 < pageCount)
  {
    v5 = pageOffset + 1;
  }

  else
  {
    v5 = pageCount;
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

- (void)turnToPageNumber:(int64_t)number animated:(BOOL)animated
{
  v4 = number - 1;
  if (number >= 1)
  {
    animatedCopy = animated;
    if ([(BKPageNavigationViewController *)self pageCount]>= number)
    {
      if ([(BKPageScrollerViewController *)self isVisible]&& animatedCopy)
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
        v12[5] = number;
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
  _currentZoomingScrollView = [(BKPageScrollerViewController *)self _currentZoomingScrollView];
  [_currentZoomingScrollView zoomScale];
  v4 = v3;
  [_currentZoomingScrollView minimumZoomScale];
  v6 = vabdd_f64(v4, v5) < 0.00999999978;

  return v6;
}

- (CGRect)_frameForPageNumber:(unint64_t)number
{
  if (self->_pageScroller)
  {
    if ([(BKPageScrollerViewController *)self navigationOrientation])
    {
      [(BKPagingScrollView *)self->_pageScroller frame];
      y = v5 * (number - 1) + 20.0;
      [(BKPagingScrollView *)self->_pageScroller frame];
      width = v7;
      [(BKPagingScrollView *)self->_pageScroller frame];
      height = v9 + -40.0;
      x = 0.0;
    }

    else
    {
      layoutDirection = [(BKViewController *)self layoutDirection];
      [(BKPagingScrollView *)self->_pageScroller frame];
      v14 = v13;
      if (layoutDirection == 1)
      {
        v15 = [(BKPageNavigationViewController *)self pageCount]- number;
      }

      else
      {
        v15 = (number - 1);
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

- (id)viewForPageNumber:(int64_t)number
{
  [(BKPageScrollerViewController *)self _frameForPageNumber:?];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [[BKZoomingScrollView alloc] initWithFrame:v5, v7, v9, v11];
  v14 = [BKPageScrollerPageView alloc];
  delegate = [(BKPageNavigationViewController *)self delegate];
  thumbnailingDelegate = [(BKPageScrollerViewController *)self thumbnailingDelegate];
  imageResizerDelegate = [(BKPageScrollerViewController *)self imageResizerDelegate];
  v18 = [(BKPageScrollerPageView *)v14 initWithFrame:number pageNumber:delegate navigationDelegate:thumbnailingDelegate thumbnailingDelegate:imageResizerDelegate imageResizerDelegate:v6, v8, v10, v12];

  [(BKPageScrollerPageView *)v18 sizeThatFits:v10, v12];
  [(BKPageScrollerPageView *)v18 setFrame:0.0, 0.0, v19, v20];
  [(BKPageScrollerPageView *)v18 setTag:128];
  layer = [(BKPageScrollerPageView *)v18 layer];
  [layer setShadowOffset:{0.0, 1.0}];

  layer2 = [(BKPageScrollerPageView *)v18 layer];
  LODWORD(v23) = 1051931443;
  [layer2 setShadowOpacity:v23];

  layer3 = [(BKPageScrollerPageView *)v18 layer];
  [layer3 setShadowRadius:3.0];

  [(BKPageScrollerPageView *)v18 bounds];
  v25 = [UIBezierPath bezierPathWithRect:?];
  cGPath = [v25 CGPath];
  layer4 = [(BKPageScrollerPageView *)v18 layer];
  [layer4 setShadowPath:cGPath];

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
  _currentZoomingScrollView = [(BKPageScrollerViewController *)self _currentZoomingScrollView];
  v31 = _currentZoomingScrollView;
  if (self->_maintainZoomScale && _currentZoomingScrollView)
  {
    [_currentZoomingScrollView totalZoomScale];
    [(BKZoomingScrollView *)v13 setTotalZoomScale:?];
  }

  else
  {
    [(BKZoomingScrollView *)v13 minimumZoomScale];
    [(BKZoomingScrollView *)v13 setZoomScale:?];
  }

  return v13;
}

- (void)zoomVisiblePageToFit:(BOOL)fit
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

- (id)viewForZoomingInScrollView:(id)view
{
  if (self->_pageScroller == view)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(BKPageScrollerViewController *)self _pageViewInZoomingScrollView:v3];
  }

  return v5;
}

- (void)scrollViewWillBeginDragging:(id)dragging
{
  delegate = [(BKPageNavigationViewController *)self delegate];
  [delegate pageNavigationDidBeginInteracting:self];
}

- (void)scrollViewWillBeginZooming:(id)zooming withView:(id)view
{
  v5 = [(BKPageNavigationViewController *)self delegate:zooming];
  [v5 pageNavigationDidBeginInteracting:self];
}

- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate
{
  if (!decelerate)
  {
    [(BKPageScrollerViewController *)self _visibleAreaChangedInScrollView:dragging];
  }
}

- (void)scrollViewDidEndDecelerating:(id)decelerating
{
  [(BKPageScrollerViewController *)self _visibleAreaChangedInScrollView:decelerating];
  pageScroller = self->_pageScroller;

  [(BKPagingScrollView *)pageScroller updateCachedPages];
}

- (void)zoomingScrollView:(id)view didSimulateZoomScale:(double)scale onView:(id)onView
{
  onViewCopy = onView;
  [onViewCopy bounds];
  v7 = [UIBezierPath bezierPathWithRect:?];
  cGPath = [v7 CGPath];
  layer = [onViewCopy layer];
  [layer setShadowPath:cGPath];

  layer2 = [onViewCopy layer];
  [layer2 setShadowOffset:{scale * 0.0, scale}];

  layer3 = [onViewCopy layer];

  [layer3 setShadowRadius:scale * 3.0];
}

- (void)pagingScrollView:(id)view didRemoveView:(id)removeView atIndex:(int64_t)index
{
  removeViewCopy = removeView;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [removeViewCopy setDelegate:0];
  }
}

- (void)pagingScrollView:(id)view viewDidAppear:(id)appear atIndex:(int64_t)index
{
  self->super._pageOffset = [(BKPagingScrollView *)self->_pageScroller pageOffset:view];
  delegate = [(BKPageNavigationViewController *)self delegate];
  [delegate pageNavigationDidChangeLocation:self];

  delegate2 = [(BKPageNavigationViewController *)self delegate];
  v9 = [delegate2 existingContentViewControllerForPageNumber:index + 1];

  [v9 beginAppearanceTransition:1 animated:0];
  [v9 endAppearanceTransition];
}

- (void)resetZoomScaleForScrollView:(id)view
{
  viewCopy = view;
  [viewCopy minimumZoomScale];
  [viewCopy setZoomScale:?];
}

- (void)pagingScrollView:(id)view viewDidDisappear:(id)disappear atIndex:(int64_t)index
{
  disappearCopy = disappear;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && !self->_maintainZoomScale)
  {
    [(BKPageScrollerViewController *)self performSelector:"resetZoomScaleForScrollView:" withObject:disappearCopy afterDelay:0.0];
  }

  delegate = [(BKPageNavigationViewController *)self delegate];
  v8 = [delegate existingContentViewControllerForPageNumber:index + 1];

  [v8 beginAppearanceTransition:0 animated:0];
  [v8 endAppearanceTransition];
}

- (void)handleDoubleTap:(id)tap
{
  tapCopy = tap;
  delegate = [(BKPageNavigationViewController *)self delegate];
  v6 = [delegate existingContentViewControllerForPageNumber:{-[BKPageNavigationViewController pageOffset](self, "pageOffset") + 1}];

  v7 = [(BKPagingScrollView *)self->_pageScroller viewAtIndex:[(BKPageNavigationViewController *)self pageOffset]];
  view = [v6 view];
  [tapCopy locationInView:view];
  v10 = v9;

  [v7 zoomScale];
  v12 = v11;
  [v7 minimumZoomScale];
  if (v12 <= v13)
  {
    view2 = [v6 view];
    [view2 bounds];
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

- (void)handlePageChangeTap:(id)tap
{
  pageScroller = self->_pageScroller;
  tapCopy = tap;
  v34 = [(BKPagingScrollView *)pageScroller viewAtIndex:[(BKPageNavigationViewController *)self pageOffset]];
  view = [tapCopy view];
  [tapCopy locationInView:view];
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
    [view bounds];
    if (v8 <= CGRectGetMaxX(v36) - v9)
    {
      [view bounds];
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

  [view bounds];
  if (v8 <= CGRectGetMaxX(v40) - v9)
  {
    [view bounds];
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

- (void)toggleControls:(id)controls
{
  delegate = [(BKPageNavigationViewController *)self delegate];
  [delegate pageNavigationToggleControls:self];
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  if (self->_pageChangeTapRecognizer != begin)
  {
    return 1;
  }

  beginCopy = begin;
  view = [beginCopy view];
  [beginCopy locationInView:view];
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

  [view bounds];
  v3 = 1;
  if (v7 < CGRectGetMaxX(v10) - v8)
  {
    [view bounds];
    if (v7 > v8 + CGRectGetMinX(v11))
    {
      v3 = 0;
    }
  }

  return v3;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldBeRequiredToFailByGestureRecognizer:(id)gestureRecognizer
{
  if (self->_pageChangeTapRecognizer == recognizer)
  {
    return [gestureRecognizer bk_isWKSyntheticTapGestureRecognizer];
  }

  else
  {
    return 0;
  }
}

- (BOOL)gestureRecognizer:(id)recognizer canBePreventedByGestureRecognizer:(id)gestureRecognizer
{
  gestureRecognizerCopy = gestureRecognizer;
  if (self->_doubleTapRecognizer == recognizer && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v7 = gestureRecognizerCopy;
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

- (void)_visibleAreaChangedInScrollView:(id)view
{
  isKindOfClass = view;
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
              _currentZoomingScrollView = [(BKPageScrollerViewController *)self _currentZoomingScrollView];

              v5 = v7;
              if (_currentZoomingScrollView == v7)
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

  currentView = [(BKPagingScrollView *)self->_pageScroller currentView];
  v5 = [(BKPageScrollerViewController *)self _pageViewInZoomingScrollView:currentView];

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
  surroundingViews = [(BKPagingScrollView *)self->_pageScroller surroundingViews];
  v8 = [surroundingViews countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(surroundingViews);
        }

        v13 = [(BKPageScrollerViewController *)self _pageViewInZoomingScrollView:*(*(&v14 + 1) + 8 * i)];
        [v13 setScrollState:v11];
      }

      v9 = [surroundingViews countByEnumeratingWithState:&v14 objects:v18 count:16];
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
  allViews = [(BKPagingScrollView *)self->_pageScroller allViews];
  v5 = [allViews countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(allViews);
        }

        v9 = [(BKPageScrollerViewController *)self _pageViewInZoomingScrollView:*(*(&v11 + 1) + 8 * i)];
        if (v9)
        {
          [v3 addObject:v9];
        }
      }

      v6 = [allViews countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (void)_updateSurroundingZoomScales
{
  _currentZoomingScrollView = [(BKPageScrollerViewController *)self _currentZoomingScrollView];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  subviews = [(BKPagingScrollView *)self->_pageScroller subviews];
  v5 = [subviews countByEnumeratingWithState:&v20 objects:v24 count:16];
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
          objc_enumerationMutation(subviews);
        }

        v9 = *(*(&v20 + 1) + 8 * i);
        if (v9 != _currentZoomingScrollView)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v10 = v9;
            v11 = [_currentZoomingScrollView tag];
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

            [_currentZoomingScrollView contentOffset];
            v19 = v18;
            [_currentZoomingScrollView totalZoomScale];
            [v10 setTotalZoomScale:?];
            [v10 setContentOffset:{v16, v19}];
          }
        }
      }

      v6 = [subviews countByEnumeratingWithState:&v20 objects:v24 count:16];
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