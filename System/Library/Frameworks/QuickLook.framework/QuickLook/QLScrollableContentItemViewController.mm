@interface QLScrollableContentItemViewController
- (BOOL)canPinchToDismiss;
- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4;
- (BOOL)shouldLayoutContentBasedOnPeripheryInsets;
- (CGSize)imageSize;
- (QLScrollableContentItemViewController)init;
- (double)previewScrollView:(id)a3 extraMinimumZoomForMinimumZoomScale:(double)a4 maximumZoomScale:(double)a5;
- (void)_doubleTapRecognized:(id)a3;
- (void)_updateScrollViewZoomUpdate:(CGSize)a3;
- (void)loadView;
- (void)previewScrollViewDidScroll:(id)a3;
- (void)previewScrollViewDidZoom:(id)a3;
- (void)setContentView:(id)a3;
- (void)transitionWillFinish:(BOOL)a3 didComplete:(BOOL)a4;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation QLScrollableContentItemViewController

- (QLScrollableContentItemViewController)init
{
  [(QLScrollableContentItemViewController *)self setShouldFit:0];
  v4.receiver = self;
  v4.super_class = QLScrollableContentItemViewController;
  return [(QLItemViewController *)&v4 init];
}

- (CGSize)imageSize
{
  v2 = *MEMORY[0x277CBF3A8];
  v3 = *(MEMORY[0x277CBF3A8] + 8);
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)loadView
{
  if (!self->_scrollView)
  {
    v3 = objc_alloc_init(QLPreviewScrollView);
    scrollView = self->_scrollView;
    self->_scrollView = v3;

    [(QLPreviewScrollView *)self->_scrollView setClipsToBounds:0];
    [(QLPreviewScrollView *)self->_scrollView setZoomDelegate:self];
    [(QLPreviewScrollView *)self->_scrollView setShouldFit:[(QLScrollableContentItemViewController *)self shouldFit]];
    [(QLPreviewScrollView *)self->_scrollView setContentInsetAdjustmentBehavior:2];
    v5 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel__doubleTapRecognized_];
    doubleTapGesture = self->_doubleTapGesture;
    self->_doubleTapGesture = v5;

    [(UITapGestureRecognizer *)self->_doubleTapGesture setNumberOfTapsRequired:2];
    v7 = [(QLItemViewController *)self delegate];
    [(UITapGestureRecognizer *)self->_doubleTapGesture setDelegate:v7];

    v20 = objc_opt_new();
    [v20 addSubview:self->_scrollView];
    [(QLPreviewScrollView *)self->_scrollView setTranslatesAutoresizingMaskIntoConstraints:0];
    v8 = [(QLPreviewScrollView *)self->_scrollView leftAnchor];
    v9 = [v20 leftAnchor];
    v10 = [v8 constraintEqualToAnchor:v9];
    [v10 setActive:1];

    v11 = [(QLPreviewScrollView *)self->_scrollView rightAnchor];
    v12 = [v20 rightAnchor];
    v13 = [v11 constraintEqualToAnchor:v12];
    [v13 setActive:1];

    v14 = [(QLPreviewScrollView *)self->_scrollView topAnchor];
    v15 = [v20 topAnchor];
    v16 = [v14 constraintEqualToAnchor:v15];
    [v16 setActive:1];

    v17 = [(QLPreviewScrollView *)self->_scrollView bottomAnchor];
    v18 = [v20 bottomAnchor];
    v19 = [v17 constraintEqualToAnchor:v18];
    [v19 setActive:1];

    [(QLScrollableContentItemViewController *)self setView:v20];
  }
}

- (void)setContentView:(id)a3
{
  v10 = a3;
  [(QLScrollableContentItemViewController *)self loadView];
  contentView = self->_contentView;
  if (contentView != v10)
  {
    if (contentView)
    {
      [(UIView *)contentView removeFromSuperview];
      [(UIView *)self->_contentView removeGestureRecognizer:self->_doubleTapGesture];
    }

    objc_storeStrong(&self->_contentView, a3);
    [(QLScrollableContentItemViewController *)self imageSize];
    v7 = v6;
    v9 = v8;
    [(UIView *)self->_contentView setFrame:*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8), v6, v8];
    [(UIView *)self->_contentView addGestureRecognizer:self->_doubleTapGesture];
    [(QLPreviewScrollView *)self->_scrollView setContentView:self->_contentView withSize:v7, v9];
  }
}

- (void)_doubleTapRecognized:(id)a3
{
  scrollView = self->_scrollView;
  v5 = a3;
  [(QLPreviewScrollView *)scrollView zoomScale];
  v7 = v6;
  [(QLPreviewScrollView *)self->_scrollView contentIsSmallerThanView];
  v9 = v8;
  [(QLPreviewScrollView *)self->_scrollView minZoomScale];
  v11 = v10;
  v12 = self->_scrollView;
  if (v9 != 0.0)
  {
    if (v7 != v10)
    {
      [(QLPreviewScrollView *)v12 minZoomScale];
LABEL_10:
      v15 = v13;
      goto LABEL_11;
    }

LABEL_9:
    [(QLPreviewScrollView *)v12 maxZoomScale];
    goto LABEL_10;
  }

  [(QLPreviewScrollView *)v12 minZoomScale];
  v15 = v14;
  if (v7 == v11)
  {
    v15 = v14 * 2.5;
    [(QLPreviewScrollView *)self->_scrollView fillZoomScale];
    if (v15 < v16)
    {
      [(QLPreviewScrollView *)self->_scrollView fillZoomScale];
      v15 = v17;
    }

    [(QLPreviewScrollView *)self->_scrollView maxZoomScale];
    if (v15 > v18)
    {
      v12 = self->_scrollView;
      goto LABEL_9;
    }
  }

LABEL_11:
  v19 = self->_scrollView;
  v20 = [v5 view];
  [v5 locationInView:v20];
  v22 = v21;
  v24 = v23;

  [(QLPreviewScrollView *)v19 zoomRectForScale:v15 withCenter:v22, v24];
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;

  [(QLPreviewScrollView *)self->_scrollView zoomToRect:1 animated:v26, v28, v30, v32];
  v33 = [(QLItemViewController *)self delegate];
  [v33 previewItemViewController:self wantsFullScreen:1];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  v8 = [(QLScrollableContentItemViewController *)self view];
  [v8 frame];
  v10 = v9;
  v12 = v11;

  if (width != v10 || height != v12)
  {
    [(QLPreviewScrollView *)self->_scrollView setPreventZoomUpdate:1];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __92__QLScrollableContentItemViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
    v15[3] = &unk_278B58520;
    v15[4] = self;
    *&v15[5] = width;
    *&v15[6] = height;
    [v7 animateAlongsideTransition:v15 completion:0];
  }

  v14.receiver = self;
  v14.super_class = QLScrollableContentItemViewController;
  [(QLScrollableContentItemViewController *)&v14 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
}

- (void)transitionWillFinish:(BOOL)a3 didComplete:(BOOL)a4
{
  v4 = a4;
  v8.receiver = self;
  v8.super_class = QLScrollableContentItemViewController;
  [QLItemViewController transitionWillFinish:sel_transitionWillFinish_didComplete_ didComplete:?];
  if (v4 && !a3)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __74__QLScrollableContentItemViewController_transitionWillFinish_didComplete___block_invoke;
    v7[3] = &unk_278B57190;
    v7[4] = self;
    [MEMORY[0x277D75D18] animateWithDuration:v7 animations:0.1];
  }
}

uint64_t __74__QLScrollableContentItemViewController_transitionWillFinish_didComplete___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 1128);
  [v1 minZoomScale];

  return [v1 setZoomScale:?];
}

- (BOOL)canPinchToDismiss
{
  [(QLPreviewScrollView *)self->_scrollView zoomScale];
  v4 = v3;
  [(QLPreviewScrollView *)self->_scrollView minZoomScale];
  return v4 == v5;
}

- (void)_updateScrollViewZoomUpdate:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  [(QLPreviewScrollView *)self->_scrollView setPreventZoomUpdate:0];
  [(QLPreviewScrollView *)self->_scrollView zoomScale];
  v7 = v6;
  [(QLPreviewScrollView *)self->_scrollView fitZoomScale];
  v9 = v8;
  [(QLPreviewScrollView *)self->_scrollView minZoomScale];
  v11 = v10;
  [(QLPreviewScrollView *)self->_scrollView maxZoomScale];
  v13 = v12;
  [(QLPreviewScrollView *)self->_scrollView updateZoomScalesWithSize:width, height];
  if (v7 == v9)
  {
    [(QLPreviewScrollView *)self->_scrollView fitZoomScale];
    goto LABEL_11;
  }

  scrollView = self->_scrollView;
  if (v7 == v11)
  {
    goto LABEL_4;
  }

  [(QLPreviewScrollView *)scrollView maxZoomScale];
  if (v7 != v13)
  {
    v16 = self->_scrollView;
    if (v7 <= v14)
    {
      [(QLPreviewScrollView *)v16 minZoomScale];
      if (v7 < v17)
      {
        scrollView = self->_scrollView;
LABEL_4:
        [(QLPreviewScrollView *)scrollView minZoomScale];
        goto LABEL_11;
      }

      v14 = v7;
    }

    else
    {
      [(QLPreviewScrollView *)v16 maxZoomScale];
    }
  }

LABEL_11:
  v18 = self->_scrollView;

  [(QLPreviewScrollView *)v18 setZoomScale:v14];
}

- (BOOL)shouldLayoutContentBasedOnPeripheryInsets
{
  v3 = [(QLItemViewController *)self appearance];
  v4 = [v3 presentationMode];

  v5 = [(QLScrollableContentItemViewController *)self view];
  [v5 frame];
  v7 = v6;
  v9 = v8;
  v10 = *MEMORY[0x277CBF3A8];
  v11 = *(MEMORY[0x277CBF3A8] + 8);

  if (v7 == v10 && v9 == v11)
  {
    v13 = [MEMORY[0x277D759A0] mainScreen];
    [v13 bounds];
  }

  else
  {
    v13 = [(QLScrollableContentItemViewController *)self view];
    [v13 frame];
  }

  v16 = v14;
  v17 = v15;

  [(QLScrollableContentItemViewController *)self imageSize];
  return (v4 != 4) & !QLSizeAspectRatioEqualToSizeAspectRatioWithTolerance(v18, v19, v16, v17);
}

- (void)previewScrollViewDidScroll:(id)a3
{
  [(QLScrollableContentItemViewController *)self didScroll:a3];
  v4 = [(QLScrollableContentItemViewController *)self view];
  [(UIView *)self->_contentView frame];
  [v4 convertRect:self->_scrollView fromView:?];
  [(QLItemViewController *)self setContentFrame:?];
}

- (void)previewScrollViewDidZoom:(id)a3
{
  [(QLScrollableContentItemViewController *)self didZoom:a3];
  v4 = [(QLScrollableContentItemViewController *)self view];
  [(UIView *)self->_contentView frame];
  [v4 convertRect:self->_scrollView fromView:?];
  [(QLItemViewController *)self setContentFrame:?];
}

- (double)previewScrollView:(id)a3 extraMinimumZoomForMinimumZoomScale:(double)a4 maximumZoomScale:(double)a5
{
  v7 = [(QLItemViewController *)self appearance];
  if ([v7 presentationMode] == 4)
  {
    v8 = (a5 - a4) * 0.002;
  }

  else
  {
    v8 = 0.0;
  }

  return v8;
}

- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4
{
  v4 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

@end