@interface AXSSImagePreviewViewController
- (AXSSImagePreviewViewController)initWithContentSnapshot:(id)a3;
- (AXSSImagePreviewViewControllerDelegate)delegate;
- (BOOL)_isSnapshotViewAttached;
- (CGSize)_scrollViewClippedSize;
- (UIEdgeInsets)edgeInsets;
- (id)viewForZoomingInScrollView:(id)a3;
- (void)_addGestureRecognizers;
- (void)_centerImageIfNeeded;
- (void)_doubleTapGestureRecognized:(id)a3;
- (void)_imagePreviewViewControllerSetupUI;
- (void)_pinchGestureRecognized:(id)a3;
- (void)_removeGestureRecognizers;
- (void)_stopScrollViewAnimations;
- (void)_swipeGestureRecognized:(id)a3;
- (void)_toggleManualZoomMode;
- (void)_viewShouldExpand;
- (void)_zoomImage:(double)a3 withContentOffset:(CGPoint)a4 animated:(BOOL)a5;
- (void)scrollViewDidScroll:(id)a3;
- (void)scrollViewDidZoom:(id)a3;
- (void)setEdgeInsets:(UIEdgeInsets)a3;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation AXSSImagePreviewViewController

- (AXSSImagePreviewViewController)initWithContentSnapshot:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = AXSSImagePreviewViewController;
  v5 = [(AXSSImagePreviewViewController *)&v8 initWithNibName:0 bundle:0];
  v6 = v5;
  if (v5)
  {
    [(AXSSImagePreviewViewController *)v5 setContentSnapshot:v4];
  }

  return v6;
}

- (void)viewWillLayoutSubviews
{
  v8.receiver = self;
  v8.super_class = AXSSImagePreviewViewController;
  [(AXSSImagePreviewViewController *)&v8 viewWillLayoutSubviews];
  v3 = [(AXSSImagePreviewViewController *)self scrollView];
  [v3 bounds];
  Height = CGRectGetHeight(v9);

  if (Height <= 1.0)
  {
    v7 = [(AXSSImagePreviewViewController *)self contentSnapshot];
    [v7 removeFromSuperview];
  }

  else
  {
    if (![(AXSSImagePreviewViewController *)self _isSnapshotViewAttached])
    {
      v5 = [(AXSSImagePreviewViewController *)self scrollView];
      v6 = [(AXSSImagePreviewViewController *)self contentSnapshot];
      [v5 addSubview:v6];
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

- (void)setEdgeInsets:(UIEdgeInsets)a3
{
  v3.f64[0] = a3.top;
  v3.f64[1] = a3.left;
  v4.f64[0] = a3.bottom;
  v4.f64[1] = a3.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_edgeInsets.top, v3), vceqq_f64(*&self->_edgeInsets.bottom, v4)))) & 1) == 0)
  {
    self->_edgeInsets = a3;
    right = a3.right;
    left = a3.left;
    bottom = a3.bottom;
    top = a3.top;
    v6 = [(AXSSImagePreviewViewController *)self scrollView];
    [v6 setScrollIndicatorInsets:{top, left, bottom, right}];

    [(AXSSImagePreviewViewController *)self _centerImageIfNeeded];
  }
}

- (id)viewForZoomingInScrollView:(id)a3
{
  v4 = a3;
  v5 = [(AXSSImagePreviewViewController *)self scrollView];

  if (v5 == v4)
  {
    v6 = [(AXSSImagePreviewViewController *)self _isSnapshotViewAttached];

    if (v6)
    {
      v7 = [(AXSSImagePreviewViewController *)self contentSnapshot];
      goto LABEL_6;
    }
  }

  else
  {
  }

  v7 = 0;
LABEL_6:

  return v7;
}

- (void)scrollViewDidZoom:(id)a3
{
  v4 = a3;
  v5 = [(AXSSImagePreviewViewController *)self scrollView];

  if (v5 == v4)
  {
    if ([(AXSSImagePreviewViewController *)self isManualZoomActive])
    {
      [(AXSSImagePreviewViewController *)self _viewShouldExpand];
    }

    [(AXSSImagePreviewViewController *)self _centerImageIfNeeded];
  }
}

- (void)scrollViewDidScroll:(id)a3
{
  v4 = a3;
  v5 = [(AXSSImagePreviewViewController *)self scrollView];

  if (v5 == v4)
  {

    [(AXSSImagePreviewViewController *)self _centerImageIfNeeded];
  }
}

- (void)_doubleTapGestureRecognized:(id)a3
{
  v6 = a3;
  v4 = [(AXSSImagePreviewViewController *)self doubleTapGestureRecognizer];
  if (v4 == v6)
  {

    goto LABEL_5;
  }

  v5 = [v6 state];

  if (v5 == 3)
  {
LABEL_5:
    [(AXSSImagePreviewViewController *)self _toggleManualZoomMode];
  }
}

- (void)_pinchGestureRecognized:(id)a3
{
  v6 = a3;
  v4 = [(AXSSImagePreviewViewController *)self pinchGestureRecognizer];
  if (v4 == v6)
  {
  }

  else
  {
    v5 = [v6 state];

    if (v5 != 1)
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

- (void)_swipeGestureRecognized:(id)a3
{
  v6 = a3;
  v4 = [(AXSSImagePreviewViewController *)self swipeGestureRecognizer];
  if (v4 == v6)
  {

    goto LABEL_5;
  }

  v5 = [v6 state];

  if (v5 == 3)
  {
LABEL_5:
    [(AXSSImagePreviewViewController *)self _viewShouldExpand];
  }
}

- (BOOL)_isSnapshotViewAttached
{
  v2 = [(AXSSImagePreviewViewController *)self contentSnapshot];
  v3 = [v2 superview];
  v4 = v3 != 0;

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
  v3 = [(AXSSImagePreviewViewController *)self scrollView];
  [v3 bounds];
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
    v7 = [(AXSSImagePreviewViewController *)self scrollView];
    [v7 contentSize];
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

    v28 = [(AXSSImagePreviewViewController *)self scrollView];
    [v28 setContentInset:{v26, v21, v27, v20}];
  }
}

- (void)_zoomImage:(double)a3 withContentOffset:(CGPoint)a4 animated:(BOOL)a5
{
  v5 = a5;
  y = a4.y;
  x = a4.x;
  v9 = [(AXSSImagePreviewViewController *)self scrollView];
  [v9 zoomScale];
  if (v10 != a3 || (([v9 contentOffset], v12 == x) ? (v13 = v11 == y) : (v13 = 0), !v13))
  {
    if (v5)
    {
      v14 = MEMORY[0x277D75D18];
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __72__AXSSImagePreviewViewController__zoomImage_withContentOffset_animated___block_invoke;
      v15[3] = &unk_278BF0440;
      v16 = v9;
      v17 = a3;
      v18 = x;
      v19 = y;
      [v14 animateWithDuration:0x20000 delay:v15 usingSpringWithDamping:0 initialSpringVelocity:0.5 options:0.0 animations:0.800000012 completion:5.0];
    }

    else
    {
      [v9 setZoomScale:0 animated:a3];
      [v9 setContentOffset:0 animated:{x, y}];
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
  v2 = [(AXSSImagePreviewViewController *)self scrollView];
  [v2 zoomScale];
  [v2 setZoomScale:0 animated:?];
  [v2 contentOffset];
  [v2 setContentOffset:0 animated:?];
}

- (void)_imagePreviewViewControllerSetupUI
{
  v3 = [(AXSSImagePreviewViewController *)self scrollView];

  if (!v3)
  {
    v4 = objc_alloc(MEMORY[0x277D759D8]);
    v5 = [(AXSSImagePreviewViewController *)self view];
    [v5 bounds];
    v7 = [v4 initWithFrame:?];

    [v7 setAutoresizingMask:18];
    [v7 setDelegate:self];
    [v7 setAlwaysBounceVertical:1];
    [v7 setAlwaysBounceHorizontal:1];
    [(AXSSImagePreviewViewController *)self edgeInsets];
    [v7 setScrollIndicatorInsets:?];
    v6 = [(AXSSImagePreviewViewController *)self view];
    [v6 addSubview:v7];

    [(AXSSImagePreviewViewController *)self setScrollView:v7];
  }
}

- (void)_addGestureRecognizers
{
  v3 = [(AXSSImagePreviewViewController *)self doubleTapGestureRecognizer];

  if (!v3)
  {
    v4 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel__doubleTapGestureRecognized_];
    [v4 setNumberOfTapsRequired:2];
    [v4 setNumberOfTouchesRequired:1];
    [v4 setDelegate:self];
    v5 = [(AXSSImagePreviewViewController *)self scrollView];
    [v5 addGestureRecognizer:v4];

    [(AXSSImagePreviewViewController *)self setDoubleTapGestureRecognizer:v4];
  }

  v6 = [(AXSSImagePreviewViewController *)self pinchGestureRecognizer];

  if (!v6)
  {
    v7 = [objc_alloc(MEMORY[0x277D75848]) initWithTarget:self action:sel__pinchGestureRecognized_];
    [v7 setDelegate:self];
    v8 = [(AXSSImagePreviewViewController *)self scrollView];
    [v8 addGestureRecognizer:v7];

    [(AXSSImagePreviewViewController *)self setPinchGestureRecognizer:v7];
  }

  v9 = [(AXSSImagePreviewViewController *)self swipeGestureRecognizer];

  if (!v9)
  {
    v11 = [objc_alloc(MEMORY[0x277D75AE0]) initWithTarget:self action:sel__swipeGestureRecognized_];
    [v11 setDelegate:self];
    [v11 setDirection:8];
    v10 = [(AXSSImagePreviewViewController *)self scrollView];
    [v10 addGestureRecognizer:v11];

    [(AXSSImagePreviewViewController *)self setSwipeGestureRecognizer:v11];
  }
}

- (void)_removeGestureRecognizers
{
  v8 = [(AXSSImagePreviewViewController *)self doubleTapGestureRecognizer];
  if (v8)
  {
    v3 = [(AXSSImagePreviewViewController *)self scrollView];
    [v3 removeGestureRecognizer:v8];

    [(AXSSImagePreviewViewController *)self setDoubleTapGestureRecognizer:0];
  }

  v4 = [(AXSSImagePreviewViewController *)self pinchGestureRecognizer];
  if (v4)
  {
    v5 = [(AXSSImagePreviewViewController *)self scrollView];
    [v5 removeGestureRecognizer:v4];

    [(AXSSImagePreviewViewController *)self setPinchGestureRecognizer:0];
  }

  v6 = [(AXSSImagePreviewViewController *)self swipeGestureRecognizer];
  if (v6)
  {
    v7 = [(AXSSImagePreviewViewController *)self scrollView];
    [v7 removeGestureRecognizer:v6];

    [(AXSSImagePreviewViewController *)self setSwipeGestureRecognizer:0];
  }
}

- (void)_viewShouldExpand
{
  v3 = [(AXSSImagePreviewViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v3 imagePreviewShouldExpand:self];
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