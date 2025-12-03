@interface AXSSImagePreviewViewController
- (AXSSImagePreviewViewController)initWithContentSnapshot:(id)snapshot;
- (AXSSImagePreviewViewControllerDelegate)delegate;
- (BOOL)_isSnapshotViewAttached;
- (CGSize)_scrollViewClippedSize;
- (UIEdgeInsets)edgeInsets;
- (id)viewForZoomingInScrollView:(id)view;
- (void)_addGestureRecognizers;
- (void)_centerImageIfNeeded;
- (void)_doubleTapGestureRecognized:(id)recognized;
- (void)_imagePreviewViewControllerSetupUI;
- (void)_pinchGestureRecognized:(id)recognized;
- (void)_removeGestureRecognizers;
- (void)_stopScrollViewAnimations;
- (void)_swipeGestureRecognized:(id)recognized;
- (void)_toggleManualZoomMode;
- (void)_viewShouldExpand;
- (void)_zoomImage:(double)image withContentOffset:(CGPoint)offset animated:(BOOL)animated;
- (void)scrollViewDidScroll:(id)scroll;
- (void)scrollViewDidZoom:(id)zoom;
- (void)setEdgeInsets:(UIEdgeInsets)insets;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation AXSSImagePreviewViewController

- (AXSSImagePreviewViewController)initWithContentSnapshot:(id)snapshot
{
  snapshotCopy = snapshot;
  v8.receiver = self;
  v8.super_class = AXSSImagePreviewViewController;
  v5 = [(AXSSImagePreviewViewController *)&v8 initWithNibName:0 bundle:0];
  v6 = v5;
  if (v5)
  {
    [(AXSSImagePreviewViewController *)v5 setContentSnapshot:snapshotCopy];
  }

  return v6;
}

- (void)viewWillLayoutSubviews
{
  v8.receiver = self;
  v8.super_class = AXSSImagePreviewViewController;
  [(AXSSImagePreviewViewController *)&v8 viewWillLayoutSubviews];
  scrollView = [(AXSSImagePreviewViewController *)self scrollView];
  [scrollView bounds];
  Height = CGRectGetHeight(v9);

  if (Height <= 1.0)
  {
    contentSnapshot = [(AXSSImagePreviewViewController *)self contentSnapshot];
    [contentSnapshot removeFromSuperview];
  }

  else
  {
    if (![(AXSSImagePreviewViewController *)self _isSnapshotViewAttached])
    {
      scrollView2 = [(AXSSImagePreviewViewController *)self scrollView];
      contentSnapshot2 = [(AXSSImagePreviewViewController *)self contentSnapshot];
      [scrollView2 addSubview:contentSnapshot2];
    }

    [(AXSSImagePreviewViewController *)self _fitImageIfNeeded:0];
  }
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = AXSSImagePreviewViewController;
  [(AXSSImagePreviewViewController *)&v3 viewDidLoad];
  [(AXSSImagePreviewViewController *)self _imagePreviewViewControllerSetupUI];
}

- (void)setEdgeInsets:(UIEdgeInsets)insets
{
  v3.f64[0] = insets.top;
  v3.f64[1] = insets.left;
  v4.f64[0] = insets.bottom;
  v4.f64[1] = insets.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_edgeInsets.top, v3), vceqq_f64(*&self->_edgeInsets.bottom, v4)))) & 1) == 0)
  {
    self->_edgeInsets = insets;
    right = insets.right;
    left = insets.left;
    bottom = insets.bottom;
    top = insets.top;
    scrollView = [(AXSSImagePreviewViewController *)self scrollView];
    [scrollView setScrollIndicatorInsets:{top, left, bottom, right}];

    [(AXSSImagePreviewViewController *)self _centerImageIfNeeded];
  }
}

- (id)viewForZoomingInScrollView:(id)view
{
  viewCopy = view;
  scrollView = [(AXSSImagePreviewViewController *)self scrollView];

  if (scrollView == viewCopy)
  {
    _isSnapshotViewAttached = [(AXSSImagePreviewViewController *)self _isSnapshotViewAttached];

    if (_isSnapshotViewAttached)
    {
      contentSnapshot = [(AXSSImagePreviewViewController *)self contentSnapshot];
      goto LABEL_6;
    }
  }

  else
  {
  }

  contentSnapshot = 0;
LABEL_6:

  return contentSnapshot;
}

- (void)scrollViewDidZoom:(id)zoom
{
  zoomCopy = zoom;
  scrollView = [(AXSSImagePreviewViewController *)self scrollView];

  if (scrollView == zoomCopy)
  {
    if ([(AXSSImagePreviewViewController *)self isManualZoomActive])
    {
      [(AXSSImagePreviewViewController *)self _viewShouldExpand];
    }

    [(AXSSImagePreviewViewController *)self _centerImageIfNeeded];
  }
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  scrollView = [(AXSSImagePreviewViewController *)self scrollView];

  if (scrollView == scrollCopy)
  {

    [(AXSSImagePreviewViewController *)self _centerImageIfNeeded];
  }
}

- (void)_doubleTapGestureRecognized:(id)recognized
{
  recognizedCopy = recognized;
  doubleTapGestureRecognizer = [(AXSSImagePreviewViewController *)self doubleTapGestureRecognizer];
  if (doubleTapGestureRecognizer == recognizedCopy)
  {

    goto LABEL_5;
  }

  state = [recognizedCopy state];

  if (state == 3)
  {
LABEL_5:
    [(AXSSImagePreviewViewController *)self _toggleManualZoomMode];
  }
}

- (void)_pinchGestureRecognized:(id)recognized
{
  recognizedCopy = recognized;
  pinchGestureRecognizer = [(AXSSImagePreviewViewController *)self pinchGestureRecognizer];
  if (pinchGestureRecognizer == recognizedCopy)
  {
  }

  else
  {
    state = [recognizedCopy state];

    if (state != 1)
    {
      goto LABEL_7;
    }
  }

  if (![(AXSSImagePreviewViewController *)self isManualZoomActive])
  {
    [(AXSSImagePreviewViewController *)self _toggleManualZoomMode];
  }

LABEL_7:
}

- (void)_swipeGestureRecognized:(id)recognized
{
  recognizedCopy = recognized;
  swipeGestureRecognizer = [(AXSSImagePreviewViewController *)self swipeGestureRecognizer];
  if (swipeGestureRecognizer == recognizedCopy)
  {

    goto LABEL_5;
  }

  state = [recognizedCopy state];

  if (state == 3)
  {
LABEL_5:
    [(AXSSImagePreviewViewController *)self _viewShouldExpand];
  }
}

- (BOOL)_isSnapshotViewAttached
{
  contentSnapshot = [(AXSSImagePreviewViewController *)self contentSnapshot];
  superview = [contentSnapshot superview];
  v4 = superview != 0;

  return v4;
}

- (void)_toggleManualZoomMode
{
  v3 = objc_alloc_init(MEMORY[0x277D75A10]);
  [v3 prepare];
  [(AXSSImagePreviewViewController *)self _stopScrollViewAnimations];
  if ([(AXSSImagePreviewViewController *)self isManualZoomActive])
  {
    [(AXSSImagePreviewViewController *)self setIsManualZoomActive:0];
    [(AXSSImagePreviewViewController *)self _fitImageIfNeeded:1];
  }

  else
  {
    [(AXSSImagePreviewViewController *)self setIsManualZoomActive:1];
    [(AXSSImagePreviewViewController *)self _viewShouldExpand];
    [(AXSSImagePreviewViewController *)self _zoomImageToBestScaleIfNeeded:1];
  }

  [v3 selectionChanged];
}

- (CGSize)_scrollViewClippedSize
{
  scrollView = [(AXSSImagePreviewViewController *)self scrollView];
  [scrollView bounds];
  v5 = v4;
  v7 = v6;

  [(AXSSImagePreviewViewController *)self edgeInsets];
  v10 = v5 - (v8 + v9);
  v13 = v7 - (v11 + v12);
  v14 = v10;
  result.height = v13;
  result.width = v14;
  return result;
}

- (void)_centerImageIfNeeded
{
  if ([(AXSSImagePreviewViewController *)self _isSnapshotViewAttached])
  {
    [(AXSSImagePreviewViewController *)self _scrollViewClippedSize];
    v4 = v3;
    v6 = v5;
    scrollView = [(AXSSImagePreviewViewController *)self scrollView];
    [scrollView contentSize];
    v9 = v8;
    v11 = v10;

    [(AXSSImagePreviewViewController *)self edgeInsets];
    v16 = (v4 - v9) * 0.5;
    v17 = v13 + v16;
    v18 = v15 + v16;
    v19 = v9 < v4;
    if (v9 >= v4)
    {
      v20 = v15;
    }

    else
    {
      v20 = v18;
    }

    if (v19)
    {
      v21 = v17;
    }

    else
    {
      v21 = v13;
    }

    v22 = (v6 - v11) * 0.5;
    v23 = v12 + v22;
    v24 = v14 + v22;
    v25 = v11 < v6;
    if (v11 >= v6)
    {
      v26 = v12;
    }

    else
    {
      v26 = v23;
    }

    if (v25)
    {
      v27 = v24;
    }

    else
    {
      v27 = v14;
    }

    scrollView2 = [(AXSSImagePreviewViewController *)self scrollView];
    [scrollView2 setContentInset:{v26, v21, v27, v20}];
  }
}

- (void)_zoomImage:(double)image withContentOffset:(CGPoint)offset animated:(BOOL)animated
{
  animatedCopy = animated;
  y = offset.y;
  x = offset.x;
  scrollView = [(AXSSImagePreviewViewController *)self scrollView];
  [scrollView zoomScale];
  if (v10 != image || (([scrollView contentOffset], v12 == x) ? (v13 = v11 == y) : (v13 = 0), !v13))
  {
    if (animatedCopy)
    {
      v14 = MEMORY[0x277D75D18];
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __72__AXSSImagePreviewViewController__zoomImage_withContentOffset_animated___block_invoke;
      v15[3] = &unk_278BF0440;
      v16 = scrollView;
      imageCopy = image;
      v18 = x;
      v19 = y;
      [v14 animateWithDuration:0x20000 delay:v15 usingSpringWithDamping:0 initialSpringVelocity:0.5 options:0.0 animations:0.800000012 completion:5.0];
    }

    else
    {
      [scrollView setZoomScale:0 animated:image];
      [scrollView setContentOffset:0 animated:{x, y}];
    }
  }
}

uint64_t __72__AXSSImagePreviewViewController__zoomImage_withContentOffset_animated___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setZoomScale:*(a1 + 40)];
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  v4 = *(a1 + 32);

  return [v4 setContentOffset:{v2, v3}];
}

- (void)_stopScrollViewAnimations
{
  scrollView = [(AXSSImagePreviewViewController *)self scrollView];
  [scrollView zoomScale];
  [scrollView setZoomScale:0 animated:?];
  [scrollView contentOffset];
  [scrollView setContentOffset:0 animated:?];
}

- (void)_imagePreviewViewControllerSetupUI
{
  scrollView = [(AXSSImagePreviewViewController *)self scrollView];

  if (!scrollView)
  {
    v4 = objc_alloc(MEMORY[0x277D759D8]);
    view = [(AXSSImagePreviewViewController *)self view];
    [view bounds];
    v7 = [v4 initWithFrame:?];

    [v7 setAutoresizingMask:18];
    [v7 setDelegate:self];
    [v7 setAlwaysBounceVertical:1];
    [v7 setAlwaysBounceHorizontal:1];
    [(AXSSImagePreviewViewController *)self edgeInsets];
    [v7 setScrollIndicatorInsets:?];
    view2 = [(AXSSImagePreviewViewController *)self view];
    [view2 addSubview:v7];

    [(AXSSImagePreviewViewController *)self setScrollView:v7];
  }
}

- (void)_addGestureRecognizers
{
  doubleTapGestureRecognizer = [(AXSSImagePreviewViewController *)self doubleTapGestureRecognizer];

  if (!doubleTapGestureRecognizer)
  {
    v4 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel__doubleTapGestureRecognized_];
    [v4 setNumberOfTapsRequired:2];
    [v4 setNumberOfTouchesRequired:1];
    [v4 setDelegate:self];
    scrollView = [(AXSSImagePreviewViewController *)self scrollView];
    [scrollView addGestureRecognizer:v4];

    [(AXSSImagePreviewViewController *)self setDoubleTapGestureRecognizer:v4];
  }

  pinchGestureRecognizer = [(AXSSImagePreviewViewController *)self pinchGestureRecognizer];

  if (!pinchGestureRecognizer)
  {
    v7 = [objc_alloc(MEMORY[0x277D75848]) initWithTarget:self action:sel__pinchGestureRecognized_];
    [v7 setDelegate:self];
    scrollView2 = [(AXSSImagePreviewViewController *)self scrollView];
    [scrollView2 addGestureRecognizer:v7];

    [(AXSSImagePreviewViewController *)self setPinchGestureRecognizer:v7];
  }

  swipeGestureRecognizer = [(AXSSImagePreviewViewController *)self swipeGestureRecognizer];

  if (!swipeGestureRecognizer)
  {
    v11 = [objc_alloc(MEMORY[0x277D75AE0]) initWithTarget:self action:sel__swipeGestureRecognized_];
    [v11 setDelegate:self];
    [v11 setDirection:8];
    scrollView3 = [(AXSSImagePreviewViewController *)self scrollView];
    [scrollView3 addGestureRecognizer:v11];

    [(AXSSImagePreviewViewController *)self setSwipeGestureRecognizer:v11];
  }
}

- (void)_removeGestureRecognizers
{
  doubleTapGestureRecognizer = [(AXSSImagePreviewViewController *)self doubleTapGestureRecognizer];
  if (doubleTapGestureRecognizer)
  {
    scrollView = [(AXSSImagePreviewViewController *)self scrollView];
    [scrollView removeGestureRecognizer:doubleTapGestureRecognizer];

    [(AXSSImagePreviewViewController *)self setDoubleTapGestureRecognizer:0];
  }

  pinchGestureRecognizer = [(AXSSImagePreviewViewController *)self pinchGestureRecognizer];
  if (pinchGestureRecognizer)
  {
    scrollView2 = [(AXSSImagePreviewViewController *)self scrollView];
    [scrollView2 removeGestureRecognizer:pinchGestureRecognizer];

    [(AXSSImagePreviewViewController *)self setPinchGestureRecognizer:0];
  }

  swipeGestureRecognizer = [(AXSSImagePreviewViewController *)self swipeGestureRecognizer];
  if (swipeGestureRecognizer)
  {
    scrollView3 = [(AXSSImagePreviewViewController *)self scrollView];
    [scrollView3 removeGestureRecognizer:swipeGestureRecognizer];

    [(AXSSImagePreviewViewController *)self setSwipeGestureRecognizer:0];
  }
}

- (void)_viewShouldExpand
{
  delegate = [(AXSSImagePreviewViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate imagePreviewShouldExpand:self];
  }
}

- (AXSSImagePreviewViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (UIEdgeInsets)edgeInsets
{
  top = self->_edgeInsets.top;
  left = self->_edgeInsets.left;
  bottom = self->_edgeInsets.bottom;
  right = self->_edgeInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end