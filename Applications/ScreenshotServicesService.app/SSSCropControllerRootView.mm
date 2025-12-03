@interface SSSCropControllerRootView
- (BOOL)_layoutShouldShowCroppedContents;
- (BOOL)_scrollViewIsInLiveUserEvent;
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (CGAffineTransform)_transformToConvertFromRect:(SEL)rect toRect:(CGRect)toRect;
- (CGRect)_cropRectFromOverlayView:(id)view;
- (CGRect)_currentScrollViewCropRect;
- (CGRect)cropOverlayViewRectInWindow;
- (CGRect)cropRect;
- (CGSize)_minimumSizeForOverlayViewInUnitSpace;
- (NSArray)gestureRecognizers;
- (SSSCropControllerRootView)initWithFrame:(CGRect)frame;
- (SSSCropControllerRootViewDelegate)delegate;
- (UIEdgeInsets)_contentInsetForUnitRect:(CGRect)rect;
- (double)_maximumZoomScale;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (id)unitRectCoordinateSpace;
- (void)_aboutToChangeSize;
- (void)_didChangeSize;
- (void)_emitCropRectChangeMessage;
- (void)_emitCropRectWillBeginChangingMessage;
- (void)_handleOverlayViewResize:(id)resize;
- (void)_layoutOccludingView:(id)view viewToCrop:(id)crop overlayView:(id)overlayView;
- (void)_layoutOccludingViewContainerView:(id)view occludingView:(id)occludingView scrollViewMaskView:(id)maskView;
- (void)_layoutOverlayView:(id)view viewToCrop:(id)crop;
- (void)_layoutScrollView:(id)view;
- (void)_layoutScrollViewContainerView:(id)view scrollView:(id)scrollView overlayView:(id)overlayView;
- (void)_layoutUpdateScrollViewContentLayout:(id)layout viewToCrop:(id)crop;
- (void)_layoutViewToCrop:(id)crop scrollView:(id)view;
- (void)_moveToUnitRect:(CGRect)rect animated:(BOOL)animated;
- (void)_prolongZoomTimerStartingIfNotRunning:(BOOL)running;
- (void)_scrollViewTerminalUserEventOccurred;
- (void)_updateForScrollViewLiveUserEvent;
- (void)_updateForScrollViewNonLiveUserEvent;
- (void)_updateLastScrollViewUnitRect;
- (void)_updateOverlayView;
- (void)_updatePDFViewForEditModeChangeIfNecessary;
- (void)_updateScrollViewZoomScaleEndpoints;
- (void)_zoomTimerFired;
- (void)commitInflightEdits;
- (void)dealloc;
- (void)layoutSubviews;
- (void)notifyScrollViewChanged:(id)changed;
- (void)notifyZoomScaleChanged:(id)changed;
- (void)prepareForFullscreenExperience:(BOOL)experience;
- (void)scrollViewDidEndDecelerating:(id)decelerating;
- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate;
- (void)scrollViewDidEndZooming:(id)zooming withView:(id)view atScale:(double)scale;
- (void)scrollViewDidScroll:(id)scroll;
- (void)scrollViewDidZoom:(id)zoom;
- (void)scrollViewWillBeginDragging:(id)dragging;
- (void)scrollViewWillBeginZooming:(id)zooming withView:(id)view;
- (void)setBounds:(CGRect)bounds;
- (void)setCropEnabled:(BOOL)enabled;
- (void)setCropRect:(CGRect)rect;
- (void)setEditMode:(int64_t)mode;
- (void)setFrame:(CGRect)frame;
- (void)setNumberOfTouchesRequiredForPanningCrop:(int64_t)crop;
- (void)setOverlayViewUnitRect:(CGRect)rect;
- (void)setPageCropRect:(CGRect)rect;
- (void)setSnapRects:(id)rects;
- (void)setState:(unint64_t)state;
- (void)setUndoCropRect:(CGRect)rect;
- (void)setViewToCrop:(id)crop;
@end

@implementation SSSCropControllerRootView

- (SSSCropControllerRootView)initWithFrame:(CGRect)frame
{
  v17.receiver = self;
  v17.super_class = SSSCropControllerRootView;
  v3 = [(SSSCropControllerRootView *)&v17 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  [v3 setAutoresizesSubviews:0];
  [v3 setAccessibilityIdentifier:@"Screenshots-Crop-Root-View"];
  *(v3 + 43) = 0x3FF0000000000000;
  *(v3 + 44) = 0x3FF0000000000000;
  *(v3 + 45) = 0x3FF0000000000000;
  v4 = objc_alloc_init(SSSPassthroughView);
  v5 = *(v3 + 7);
  *(v3 + 7) = v4;

  [*(v3 + 7) setClipsToBounds:1];
  [v3 addSubview:*(v3 + 7)];
  v6 = objc_alloc_init(SSSPassthroughView);
  v7 = *(v3 + 9);
  *(v3 + 9) = v6;

  [*(v3 + 9) setClipsToBounds:1];
  v8 = objc_alloc_init(SSSScrollView);
  v9 = *(v3 + 28);
  *(v3 + 28) = v8;

  [*(v3 + 28) _setZoomFeedbackGenerator:0];
  [*(v3 + 28) setAutoresizesSubviews:0];
  [*(v3 + 28) setBouncesZoom:0];
  [*(v3 + 28) setBounces:0];
  [*(v3 + 28) setScrollsToTop:0];
  [*(v3 + 28) setAlwaysBounceVertical:0];
  [*(v3 + 28) setAlwaysBounceHorizontal:0];
  [*(v3 + 28) _setAutoScrollEnabled:0];
  [*(v3 + 28) setShowsVerticalScrollIndicator:0];
  [*(v3 + 28) setShowsHorizontalScrollIndicator:0];
  [*(v3 + 28) setDelegate:v3];
  [*(v3 + 7) addSubview:*(v3 + 28)];
  *(v3 + 2) = 0;
  *(v3 + 3) = 0;
  __asm { FMOV            V0.2D, #1.0 }

  *(v3 + 2) = _Q0;
  *(v3 + 19) = 0;
  *(v3 + 20) = 0;
  *(v3 + 168) = _Q0;
  *(v3 + 49) = 0;
  *(v3 + 50) = 0;
  *(v3 + 408) = _Q0;
  v3[313] = 0;
  size = CGRectNull.size;
  *(v3 + 232) = CGRectNull.origin;
  *(v3 + 248) = size;
  return v3;
}

- (void)dealloc
{
  [(SSSScreenshotContainerView *)self->_viewToCrop removeFromSuperview];
  [(SSSScrollView *)self->_scrollView removeFromSuperview];
  v3.receiver = self;
  v3.super_class = SSSCropControllerRootView;
  [(SSSCropControllerRootView *)&v3 dealloc];
}

- (void)prepareForFullscreenExperience:(BOOL)experience
{
  experienceCopy = experience;
  if ([(SSSCropControllerRootView *)self cropEnabled]|| experienceCopy)
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_10000B3C4;
    v5[3] = &unk_1000BA0B8;
    v5[4] = self;
    v6 = experienceCopy;
    [UIView performWithoutAnimation:v5];
  }
}

- (void)_aboutToChangeSize
{
  p_cropRectWhenViewSizeChangeBegan = &self->_cropRectWhenViewSizeChangeBegan;
  [(SSSCropControllerRootView *)self cropRect];
  p_cropRectWhenViewSizeChangeBegan->origin.x = v3;
  p_cropRectWhenViewSizeChangeBegan->origin.y = v4;
  p_cropRectWhenViewSizeChangeBegan->size.width = v5;
  p_cropRectWhenViewSizeChangeBegan->size.height = v6;
}

- (void)_didChangeSize
{
  [(SSSCropControllerRootView *)self _updateScrollViewZoomScaleEndpoints];
  [(SSSCropControllerRootView *)self cropRect];
  if (SSRectEqualToRect())
  {
    [(SSSCropControllerRootView *)self setOverlayViewUnitRect:self->_cropRect.origin.x, self->_cropRect.origin.y, self->_cropRect.size.width, self->_cropRect.size.height];
    scrollView = self->_scrollView;
    viewToCrop = self->_viewToCrop;

    [(SSSCropControllerRootView *)self _layoutUpdateScrollViewContentLayout:scrollView viewToCrop:viewToCrop];
  }

  else
  {
    if (self->_editMode == 1 && _os_feature_enabled_impl())
    {
      x = 0.0;
      y = 0.0;
      width = 1.0;
      height = 1.0;
    }

    else
    {
      x = self->_cropRectWhenViewSizeChangeBegan.origin.x;
      y = self->_cropRectWhenViewSizeChangeBegan.origin.y;
      width = self->_cropRectWhenViewSizeChangeBegan.size.width;
      height = self->_cropRectWhenViewSizeChangeBegan.size.height;
    }

    [(SSSCropControllerRootView *)self _moveToUnitRect:1 animated:x, y, width, height];
  }
}

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  [(SSSCropControllerRootView *)self frame];
  if (v9 == width && v8 == height)
  {
    v11.receiver = self;
    v11.super_class = SSSCropControllerRootView;
    [(SSSCropControllerRootView *)&v11 setFrame:x, y, width, height];
  }

  else
  {
    [(SSSCropControllerRootView *)self _aboutToChangeSize];
    v12.receiver = self;
    v12.super_class = SSSCropControllerRootView;
    [(SSSCropControllerRootView *)&v12 setFrame:x, y, width, height];
    [(SSSCropControllerRootView *)self _didChangeSize];
  }
}

- (void)setBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  [(SSSCropControllerRootView *)self bounds];
  if (v9 == width && v8 == height)
  {
    v11.receiver = self;
    v11.super_class = SSSCropControllerRootView;
    [(SSSCropControllerRootView *)&v11 setBounds:x, y, width, height];
  }

  else
  {
    [(SSSCropControllerRootView *)self _aboutToChangeSize];
    v12.receiver = self;
    v12.super_class = SSSCropControllerRootView;
    [(SSSCropControllerRootView *)&v12 setBounds:x, y, width, height];
    [(SSSCropControllerRootView *)self _didChangeSize];
  }
}

- (void)layoutSubviews
{
  [(SSSCropControllerRootView *)self prepareForFullscreenExperience:0];
  [(SSSCropControllerRootView *)self bounds];
  if (!CGRectIsEmpty(v45))
  {
    [(SSSCropControllerRootView *)self bounds];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    [(UIView *)self->_scrollViewContainerView frame];
    v47.origin.x = v11;
    v47.origin.y = v12;
    v47.size.width = v13;
    v47.size.height = v14;
    v46.origin.x = v4;
    v46.origin.y = v6;
    v46.size.width = v8;
    v46.size.height = v10;
    if (!CGRectEqualToRect(v46, v47))
    {
      scrollViewContainerView = self->_scrollViewContainerView;
      [(SSSCropControllerRootView *)self bounds];
      [(UIView *)scrollViewContainerView setFrame:?];
      [(SSSCropControllerRootView *)self _updateOverlayView];
    }

    occludingViewContainerView = self->_occludingViewContainerView;
    [(SSSCropControllerRootView *)self bounds];
    [(UIView *)occludingViewContainerView setFrame:?];
    [(SSSCropControllerRootView *)self _layoutScrollView:self->_scrollView];
    [(SSSCropControllerRootView *)self _layoutViewToCrop:self->_viewToCrop scrollView:self->_scrollView];
    [(SSSCropControllerRootView *)self _layoutOverlayView:self->_overlayView viewToCrop:self->_viewToCrop];
    [(SSSCropControllerRootView *)self _layoutOccludingView:self->_occludingView viewToCrop:self->_viewToCrop overlayView:self->_overlayView];
    [(SSSScrollView *)self->_scrollView frame];
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;
    [(SSSUncroppedOccludingView *)self->_occludingView frame];
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v32 = v31;
    [(SSSCropControllerRootView *)self _layoutScrollViewContainerView:self->_scrollViewContainerView scrollView:self->_scrollView overlayView:self->_overlayView];
    [(SSSCropControllerRootView *)self _layoutOccludingViewContainerView:self->_occludingViewContainerView occludingView:self->_occludingView scrollViewMaskView:self->_scrollViewContainerView];
    scrollView = self->_scrollView;
    [(SSSCropControllerRootView *)self convertRect:self->_scrollViewContainerView toView:v18, v20, v22, v24];
    [(SSSScrollView *)scrollView setFrame:?];
    occludingView = self->_occludingView;
    [(SSSCropControllerRootView *)self convertRect:self->_occludingViewContainerView toView:v26, v28, v30, v32];
    [(SSSUncroppedOccludingView *)occludingView setFrame:?];
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    gestureRecognizers = [(SSSCropControllerRootView *)self gestureRecognizers];
    v36 = [gestureRecognizers countByEnumeratingWithState:&v40 objects:v44 count:16];
    if (v36)
    {
      v37 = v36;
      v38 = *v41;
      do
      {
        v39 = 0;
        do
        {
          if (*v41 != v38)
          {
            objc_enumerationMutation(gestureRecognizers);
          }

          [*(*(&v40 + 1) + 8 * v39) setEnabled:{-[SSSCropControllerRootView cropEnabled](self, "cropEnabled")}];
          v39 = v39 + 1;
        }

        while (v37 != v39);
        v37 = [gestureRecognizers countByEnumeratingWithState:&v40 objects:v44 count:16];
      }

      while (v37);
    }
  }
}

- (BOOL)_layoutShouldShowCroppedContents
{
  if (self->_overlayViewResizeGestureIsTracking)
  {
    return 1;
  }

  if ([(NSTimer *)self->_zoomInTimer isValid])
  {
    return 1;
  }

  return self->_editMode == 1;
}

- (void)_layoutScrollView:(id)view
{
  viewCopy = view;
  [(SSSCropControllerRootView *)self bounds];
  [viewCopy sss_setFrameUnanimatingIfChangingFromCGSizeZero:?];
  panGestureRecognizer = [viewCopy panGestureRecognizer];
  [panGestureRecognizer setMinimumNumberOfTouches:{-[SSSCropControllerRootView numberOfTouchesRequiredForPanningCrop](self, "numberOfTouchesRequiredForPanningCrop")}];

  panGestureRecognizer2 = [viewCopy panGestureRecognizer];

  [panGestureRecognizer2 setMaximumNumberOfTouches:{-[SSSCropControllerRootView numberOfTouchesRequiredForPanningCrop](self, "numberOfTouchesRequiredForPanningCrop")}];
}

- (void)_layoutViewToCrop:(id)crop scrollView:(id)view
{
  cropCopy = crop;
  viewCopy = view;
  if (self->_showingPDF)
  {
    if (self->_editMode == 2)
    {
      [cropCopy intrinsicContentSize];
      [viewCopy convertSize:cropCopy fromView:?];
      v8 = v7;
      v10 = v9;
      x = CGPointZero.x;
      y = CGPointZero.y;
      viewToCrop = self->_viewToCrop;
    }

    else
    {
      viewToCrop = self->_viewToCrop;
      [(SSSCropControllerRootView *)self bounds];
      [viewCopy convertRect:self fromView:?];
    }

    [(SSSScreenshotContainerView *)viewToCrop sss_setFrameUnanimatingIfChangingFromCGSizeZero:x, y, v8, v10];
  }

  p_previousScrollViewFrame = &self->_previousScrollViewFrame;
  if (CGRectIsEmpty(self->_previousScrollViewFrame) || ([(SSSScrollView *)self->_scrollView frame], v26.origin.x = v15, v26.origin.y = v16, v26.size.width = v17, v26.size.height = v18, v25.origin.x = p_previousScrollViewFrame->origin.x, v25.origin.y = self->_previousScrollViewFrame.origin.y, v25.size.width = self->_previousScrollViewFrame.size.width, v25.size.height = self->_previousScrollViewFrame.size.height, !CGRectEqualToRect(v25, v26)))
  {
    [(SSSScrollView *)self->_scrollView frame];
    p_previousScrollViewFrame->origin.x = v19;
    self->_previousScrollViewFrame.origin.y = v20;
    self->_previousScrollViewFrame.size.width = v21;
    self->_previousScrollViewFrame.size.height = v22;
    [(SSSCropControllerRootView *)self _layoutUpdateScrollViewContentLayout:self->_scrollView viewToCrop:self->_viewToCrop];
  }
}

- (void)_layoutOverlayView:(id)view viewToCrop:(id)crop
{
  viewCopy = view;
  unitRectCoordinateSpace = [(SSSCropControllerRootView *)self unitRectCoordinateSpace];
  [unitRectCoordinateSpace convertRect:self toCoordinateSpace:{self->_overlayViewUnitRect.origin.x, self->_overlayViewUnitRect.origin.y, self->_overlayViewUnitRect.size.width, self->_overlayViewUnitRect.size.height}];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v22.origin.x = v7;
  v22.origin.y = v9;
  v22.size.width = v11;
  v22.size.height = v13;
  if (CGRectIsEmpty(v22) || self->_editMode == 1)
  {
    [(SSSCropControllerRootView *)self bounds];
    v7 = v14;
    v9 = v15;
    v11 = v16;
    v13 = v17;
  }

  [viewCopy sss_setFrameUnanimatingIfChangingFromCGSizeZero:{v7, v9, v11, v13}];
  cropEnabled = [(SSSCropControllerRootView *)self cropEnabled];
  v19 = 0.0;
  if (cropEnabled)
  {
    v19 = 1.0;
  }

  [viewCopy setAlpha:v19];
}

- (void)_layoutScrollViewContainerView:(id)view scrollView:(id)scrollView overlayView:(id)overlayView
{
  viewCopy = view;
  scrollViewCopy = scrollView;
  overlayViewCopy = overlayView;
  if (self->_viewToCrop)
  {
    if ([(SSSCropControllerRootView *)self _layoutShouldShowCroppedContents])
    {
      v11 = 1.0;
      v12 = 0.0;
      v13 = 0.0;
      v14 = 1.0;
    }

    else
    {
      [(SSSCropControllerRootView *)self _cropRectFromOverlayView:overlayViewCopy];
      v12 = v20;
      v13 = v21;
      v11 = v22;
      v14 = v23;
    }

    unitRectCoordinateSpace = [(SSSCropControllerRootView *)self unitRectCoordinateSpace];
    [unitRectCoordinateSpace convertRect:self toCoordinateSpace:{v12, v13, v11, v14}];
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v32 = v31;

    v19 = viewCopy;
    v15 = v26;
    v16 = v28;
    v17 = v30;
    v18 = v32;
  }

  else
  {
    [scrollViewCopy frame];
    v19 = viewCopy;
  }

  [v19 sss_setFrameUnanimatingIfChangingFromCGSizeZero:{v15, v16, v17, v18}];
}

- (void)_layoutOccludingView:(id)view viewToCrop:(id)crop overlayView:(id)overlayView
{
  viewCopy = view;
  overlayViewCopy = overlayView;
  cropCopy = crop;
  [(SSSCropControllerRootView *)self bounds];
  [viewCopy sss_setFrameUnanimatingIfChangingFromCGSizeZero:?];
  [cropCopy bounds];
  [(SSSCropControllerRootView *)self convertRect:cropCopy fromView:?];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  [(SSSCropControllerRootView *)self bounds];
  v23.origin.x = v11;
  v23.origin.y = v13;
  v23.size.width = v15;
  v23.size.height = v17;
  if (CGRectIntersectsRect(v20, v23))
  {
    [(SSSCropControllerRootView *)self bounds];
    v24.origin.x = v11;
    v24.origin.y = v13;
    v24.size.width = v15;
    v24.size.height = v17;
    v22 = CGRectIntersection(v21, v24);
    [viewCopy sss_setFrameUnanimatingIfChangingFromCGSizeZero:{v22.origin.x, v22.origin.y, v22.size.width, v22.size.height}];
    [overlayViewCopy bounds];
    [viewCopy convertRect:overlayViewCopy fromView:?];
    [viewCopy setUnoccludedRect:?];
  }
}

- (void)_layoutOccludingViewContainerView:(id)view occludingView:(id)occludingView scrollViewMaskView:(id)maskView
{
  viewCopy = view;
  maskViewCopy = maskView;
  [occludingView frame];
  if (self->_viewToCrop)
  {
    [maskViewCopy bounds];
    [(SSSCropControllerRootView *)self convertRect:maskViewCopy fromView:?];
  }

  [viewCopy sss_setFrameUnanimatingIfChangingFromCGSizeZero:?];
}

- (void)_layoutUpdateScrollViewContentLayout:(id)layout viewToCrop:(id)crop
{
  layoutCopy = layout;
  if (crop)
  {
    v18 = layoutCopy;
    cropCopy = crop;
    [v18 minimumZoomScale];
    v9 = v8;
    [cropCopy intrinsicContentSize];
    v11 = v10;
    v13 = v12;

    [v18 setZoomScale:0 animated:v9];
    [v18 setContentSize:{v9 * v11, v9 * v13}];
    if ([(SSSCropControllerRootView *)self _layoutShouldShowCroppedContents])
    {
      y = 0.0;
      width = 1.0;
      height = 1.0;
      x = 0.0;
    }

    else
    {
      x = self->_cropRect.origin.x;
      y = self->_cropRect.origin.y;
      width = self->_cropRect.size.width;
      height = self->_cropRect.size.height;
    }

    [(SSSCropControllerRootView *)self _contentInsetForUnitRect:x, y, width, height];
    [v18 setContentInset:?];
    [(SSSCropControllerRootView *)self notifyScrollViewChanged:v18];
    layoutCopy = v18;
  }
}

- (void)setViewToCrop:(id)crop
{
  cropCopy = crop;
  [(SSSCropControllerRootView *)self layoutIfNeeded];
  [(SSSScreenshotContainerView *)self->_viewToCrop removeFromSuperview];
  viewToCrop = self->_viewToCrop;
  self->_viewToCrop = cropCopy;
  v6 = cropCopy;

  [(SSSScrollView *)self->_scrollView addSubview:self->_viewToCrop];

  [(SSSCropControllerRootView *)self setNeedsLayout];
}

- (void)_updatePDFViewForEditModeChangeIfNecessary
{
  if (self->_showingPDF)
  {
    [(SSSCropControllerRootView *)self _aboutToChangeSize];
    viewToCrop = self->_viewToCrop;
    if (self->_editMode == 2)
    {
      [(SSSScreenshotContainerView *)viewToCrop setCrop:0.0, 0.0, 1.0, 1.0];
      [(SSSScreenshotContainerView *)self->_viewToCrop enterCropMode];
    }

    else
    {
      [(SSSScreenshotContainerView *)viewToCrop setCrop:self->_cropRect.origin.x, self->_cropRect.origin.y, self->_cropRect.size.width, self->_cropRect.size.height];
      [(SSSScreenshotContainerView *)self->_viewToCrop enterMarkupMode];
      [(SSSCropControllerRootView *)self _updateScrollViewZoomScaleEndpoints];
    }

    [(SSSCropControllerRootView *)self _layoutUpdateScrollViewContentLayout:self->_scrollView viewToCrop:self->_viewToCrop];
    [(SSSScreenshotContainerView *)self->_viewToCrop setUserInteractionEnabled:self->_editMode == 1];
    [(SSSCropControllerRootView *)self _didChangeSize];

    [(SSSCropControllerRootView *)self setNeedsLayout];
  }

  else
  {
    v4 = self->_viewToCrop;

    [(SSSScreenshotContainerView *)v4 exitMarkupMode];
  }
}

- (void)setEditMode:(int64_t)mode
{
  if (self->_editMode != mode)
  {
    self->_editMode = mode;
    self->_showingPDF = (mode - 1) < 2;
    [(SSSCropControllerRootView *)self _updatePDFViewForEditModeChangeIfNecessary];
    overlayView = self->_overlayView;

    [(SSSCropOverlayView *)overlayView setEditMode:mode];
  }
}

- (void)setState:(unint64_t)state
{
  if (self->_state != state)
  {
    self->_state = state;
    [(SSSCropControllerRootView *)self _updateOverlayView];
    overlayView = self->_overlayView;
    editMode = self->_editMode;

    [(SSSCropOverlayView *)overlayView setEditMode:editMode];
  }
}

- (void)_updateOverlayView
{
  p_initialOverlayViewUnitRect = &self->_initialOverlayViewUnitRect;
  p_overlayViewUnitRect = &self->_overlayViewUnitRect;
  if (CGRectEqualToRect(self->_initialOverlayViewUnitRect, self->_overlayViewUnitRect))
  {
    v5 = 0;
  }

  else
  {
    v6 = p_overlayViewUnitRect->origin.x - p_initialOverlayViewUnitRect->origin.x;
    v7 = -v6;
    if (v6 >= 0.0)
    {
      v7 = p_overlayViewUnitRect->origin.x - p_initialOverlayViewUnitRect->origin.x;
    }

    if (v7 >= 0.01)
    {
      goto LABEL_15;
    }

    v8 = p_overlayViewUnitRect->origin.y - p_initialOverlayViewUnitRect->origin.y;
    if (v8 < 0.0)
    {
      v8 = -v8;
    }

    if (v8 >= 0.01)
    {
      goto LABEL_15;
    }

    v9 = p_overlayViewUnitRect->size.width - p_initialOverlayViewUnitRect->size.width;
    if (v9 < 0.0)
    {
      v9 = -v9;
    }

    if (v9 >= 0.01)
    {
LABEL_15:
      v5 = 1;
    }

    else
    {
      v10 = p_overlayViewUnitRect->size.height - p_initialOverlayViewUnitRect->size.height;
      if (v10 < 0.0)
      {
        v10 = -v10;
      }

      v5 = v10 >= 0.01;
    }
  }

  v11 = _SSScreenshotsRedesign2025Enabled() && self->_editMode == 0 && !v5 && !self->_overlayViewResizeGestureIsTracking && self->_state == 1;
  v12 = os_log_create("com.apple.screenshotservices", "Crop");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = NSStringFromCGRect(*p_overlayViewUnitRect);
    v23[0] = 67109378;
    v23[1] = v11;
    v24 = 2112;
    v25 = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "update overlayUI showRoundedResizeHandles: %{BOOL}d, _overlayViewUnitRect: %@", v23, 0x12u);
  }

  [(SSSCropOverlayView *)self->_overlayView setShowRoundedCorners:v11];
  v14 = 0.0;
  lineAlpha = 0.0;
  if (!v11)
  {
    lineAlpha = self->_lineAlpha;
  }

  [(SSSCropOverlayView *)self->_overlayView setLineAlpha:lineAlpha];
  [(SSSCropOverlayView *)self->_overlayView setLineGrabberAlpha:self->_lineGrabberAlpha];
  [(SSSCropOverlayView *)self->_overlayView setCornerGrabberAlpha:self->_cornerGrabberAlpha];
  if (v11)
  {
    [(SSSCropControllerRootView *)self frame];
    v17 = v16;
    v18 = +[UIScreen mainScreen];
    [v18 bounds];
    if (vabdd_f64(v17, v19) >= 5.0)
    {
      v14 = sub_10000F550();
    }

    else
    {
      traitCollection = [(SSSCropControllerRootView *)self traitCollection];
      [traitCollection displayCornerRadius];
      v14 = v21;
    }
  }

  if (vabdd_f64(self->_lastScrollViewContainerCornerRadius, v14) > 0.09)
  {
    self->_lastScrollViewContainerCornerRadius = v14;
    layer = [(UIView *)self->_scrollViewContainerView layer];
    [layer setCornerRadius:+[UIView areAnimationsEnabled](UIView animated:{"areAnimationsEnabled"), v14}];
  }
}

- (void)setOverlayViewUnitRect:(CGRect)rect
{
  v5.origin.x = 0.0;
  v5.origin.y = 0.0;
  v5.size.width = 1.0;
  v5.size.height = 1.0;
  self->_overlayViewUnitRect = CGRectIntersection(rect, v5);

  [(SSSCropControllerRootView *)self setNeedsLayout];
}

- (void)_handleOverlayViewResize:(id)resize
{
  resizeCopy = resize;
  [resizeCopy locationInView:self];
  if (v4 >= 0.0)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0.0;
  }

  if (v5 >= 0.0)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0.0;
  }

  [(SSSCropControllerRootView *)self bounds];
  if (v6 >= v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = v6;
  }

  [(SSSCropControllerRootView *)self bounds];
  if (v7 >= v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = v7;
  }

  unitRectCoordinateSpace = [(SSSCropControllerRootView *)self unitRectCoordinateSpace];
  [unitRectCoordinateSpace convertPoint:self fromCoordinateSpace:{v9, v11}];
  v14 = v13;
  v16 = v15;

  if ([resizeCopy state] == 1)
  {
    self->_overlayViewResizeGestureIsTracking = 1;
    size = self->_overlayViewUnitRect.size;
    self->_overlayViewUnitRectWhenResizeBegan.origin = self->_overlayViewUnitRect.origin;
    self->_overlayViewUnitRectWhenResizeBegan.size = size;
    overlayView = self->_overlayView;
    [(SSSCropOverlayView *)overlayView convertPoint:self fromView:v9, v11];
    v19 = [(SSSCropOverlayView *)overlayView grabPositionForLocation:?];
    v21 = v20;
    if (sub_100035CB0(v19, v20))
    {
      [resizeCopy setEnabled:0];
      [resizeCopy setEnabled:1];
      self->_overlayViewResizeGestureIsTracking = 0;
    }

    else
    {
      self->_grabPositionForResize.edge = v19;
      self->_grabPositionForResize.corner = v21;
      self->_locationOfResizeGestureInUsWhenResizeBegan.x = v14;
      self->_locationOfResizeGestureInUsWhenResizeBegan.y = v16;
      [(SSSCropControllerRootView *)self _cancelZoomTimer];
      [(SSSCropControllerRootView *)self _emitCropRectWillBeginChangingMessage];
    }

    goto LABEL_25;
  }

  if ([resizeCopy state] == 2)
  {
    [(SSSCropControllerRootView *)self _minimumSizeForOverlayViewInUnitSpace];
    v23 = v22;
    v25 = v24;
    snapRects = [(SSSCropControllerRootView *)self snapRects];
    v27 = sub_100033E74(self->_grabPositionForResize.edge, self->_grabPositionForResize.corner, snapRects, self->_overlayViewUnitRectWhenResizeBegan.origin.x, self->_overlayViewUnitRectWhenResizeBegan.origin.y, self->_overlayViewUnitRectWhenResizeBegan.size.width, self->_overlayViewUnitRectWhenResizeBegan.size.height, self->_locationOfResizeGestureInUsWhenResizeBegan.x, self->_locationOfResizeGestureInUsWhenResizeBegan.y, v14, v16, v23, v25);
    v29 = v28;
    v31 = v30;
    v33 = v32;

    [(SSSCropControllerRootView *)self setOverlayViewUnitRect:v27, v29, v31, v33];
    goto LABEL_25;
  }

  if ([resizeCopy state] == 3)
  {
    [(SSSCropControllerRootView *)self _prolongZoomTimerStartingIfNotRunning:1];
LABEL_24:
    self->_overlayViewResizeGestureIsTracking = 0;
    goto LABEL_25;
  }

  if ([resizeCopy state] == 5 || objc_msgSend(resizeCopy, "state") == 4)
  {
    [(SSSCropControllerRootView *)self setOverlayViewUnitRect:self->_overlayViewUnitRectWhenResizeBegan.origin.x, self->_overlayViewUnitRectWhenResizeBegan.origin.y, self->_overlayViewUnitRectWhenResizeBegan.size.width, self->_overlayViewUnitRectWhenResizeBegan.size.height];
    goto LABEL_24;
  }

LABEL_25:
  [(SSSCropControllerRootView *)self setNeedsLayout];
  [(SSSCropControllerRootView *)self _updateOverlayView];
}

- (CGSize)_minimumSizeForOverlayViewInUnitSpace
{
  v3 = sub_100034278();
  v5 = v4;
  y = CGRectZero.origin.y;
  unitRectCoordinateSpace = [(SSSCropControllerRootView *)self unitRectCoordinateSpace];
  [unitRectCoordinateSpace convertRect:self->_viewToCrop fromCoordinateSpace:{CGRectZero.origin.x, y, v3, v5}];
  v9 = v8;
  v11 = v10;

  v12 = v9;
  v13 = v11;
  result.height = v13;
  result.width = v12;
  return result;
}

- (void)_zoomTimerFired
{
  [(NSTimer *)self->_zoomInTimer invalidate];
  self->_isZoomingIn = 1;
  [(SSSCropControllerRootView *)self _cropRectFromOverlayView:self->_overlayView];

  [(SSSCropControllerRootView *)self _moveToUnitRect:1 animated:?];
}

- (void)_prolongZoomTimerStartingIfNotRunning:(BOOL)running
{
  _zoomTimerRunning = [(SSSCropControllerRootView *)self _zoomTimerRunning];
  if (running || _zoomTimerRunning)
  {
    [(SSSCropControllerRootView *)self _cancelZoomTimer];
    self->_zoomInTimer = [NSTimer scheduledTimerWithTimeInterval:self target:"_zoomTimerFired" selector:0 userInfo:0 repeats:1.0];

    _objc_release_x1();
  }
}

- (UIEdgeInsets)_contentInsetForUnitRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  [(SSSScrollView *)self->_scrollView bounds:rect.origin.x];
  v7 = v6;
  v9 = v8;
  [(SSSScreenshotContainerView *)self->_viewToCrop intrinsicContentSize];
  v11 = width * v10;
  v13 = height * v12;
  v14 = sub_1000341E4(self->_editMode, v11, v13, v7, v9);
  if (v11 / v13 >= v7 / v9)
  {
    right = UIEdgeInsetsZero.right;
    left = UIEdgeInsetsZero.left;
    bottom = (v9 - v13 * v14) * 0.5;
    top = bottom;
  }

  else
  {
    bottom = UIEdgeInsetsZero.bottom;
    top = UIEdgeInsetsZero.top;
    right = (v7 - v11 * v14) * 0.5;
    left = right;
  }

  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (void)_moveToUnitRect:(CGRect)rect animated:(BOOL)animated
{
  animatedCopy = animated;
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  [(SSSCropControllerRootView *)self layoutIfNeeded];
  [(SSSCropControllerRootView *)self setOverlayViewUnitRect:x, y, width, height];
  unitRectCoordinateSpace = [(SSSCropControllerRootView *)self unitRectCoordinateSpace];
  [unitRectCoordinateSpace convertRect:self->_viewToCrop toCoordinateSpace:{x, y, width, height}];
  v19 = v11;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10000D058;
  v21[3] = &unk_1000BA160;
  v21[4] = self;
  *&v21[5] = x;
  *&v21[6] = y;
  *&v21[7] = width;
  *&v21[8] = height;
  v21[9] = v19;
  v21[10] = v13;
  v21[11] = v15;
  v21[12] = v17;
  v18 = objc_retainBlock(v21);
  if (animatedCopy)
  {
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_10000D0E0;
    v20[3] = &unk_1000BA188;
    v20[4] = self;
    [UIView animateWithDuration:4 delay:v18 options:v20 animations:0.2 completion:0.0];
  }

  else
  {
    [UIView performWithoutAnimation:v18];
  }
}

- (void)setCropRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  [(SSSCropControllerRootView *)self _cancelZoomTimer];
  self->_cropRect.origin.x = x;
  self->_cropRect.origin.y = y;
  self->_cropRect.size.width = width;
  self->_cropRect.size.height = height;
  [(SSSCropControllerRootView *)self _moveToUnitRect:1 animated:x, y, width, height];

  [(SSSCropControllerRootView *)self setNeedsLayout];
}

- (void)setPageCropRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  [(SSSCropControllerRootView *)self _cancelZoomTimer];
  [(SSSCropControllerRootView *)self _aboutToChangeSize];
  self->_cropRect.origin.x = x;
  self->_cropRect.origin.y = y;
  self->_cropRect.size.width = width;
  self->_cropRect.size.height = height;
  [(SSSCropControllerRootView *)self _updateScrollViewZoomScaleEndpoints];
  [(SSSCropControllerRootView *)self _layoutUpdateScrollViewContentLayout:self->_scrollView viewToCrop:self->_viewToCrop];
  v8 = self->_cropRect.origin.x;
  v9 = self->_cropRect.origin.y;
  v10 = self->_cropRect.size.width;
  v11 = self->_cropRect.size.height;

  [(SSSCropControllerRootView *)self _moveToUnitRect:0 animated:v8, v9, v10, v11];
}

- (void)setUndoCropRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  [(SSSCropControllerRootView *)self _cancelZoomTimer];
  self->_cropRect.origin.x = x;
  self->_cropRect.origin.y = y;
  self->_cropRect.size.width = width;
  self->_cropRect.size.height = height;
  [(SSSCropControllerRootView *)self _aboutToChangeSize];
  if (self->_editMode == 1)
  {
    [(SSSScreenshotContainerView *)self->_viewToCrop setCrop:self->_cropRect.origin.x, self->_cropRect.origin.y, self->_cropRect.size.width, self->_cropRect.size.height];
  }

  [(SSSCropControllerRootView *)self _layoutUpdateScrollViewContentLayout:self->_scrollView viewToCrop:self->_viewToCrop];
  [(SSSCropControllerRootView *)self _didChangeSize];

  [(SSSCropControllerRootView *)self _updateOverlayView];
}

- (void)commitInflightEdits
{
  overlayView = self->_overlayView;
  if (!overlayView || ([(SSSCropOverlayView *)overlayView bounds], v22.origin.x = CGRectZero.origin.x, v22.origin.y = CGRectZero.origin.y, v22.size.width = CGRectZero.size.width, v22.size.height = CGRectZero.size.height, !CGRectEqualToRect(v21, v22)))
  {
    [(SSSCropControllerRootView *)self cropRect];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    [(SSSCropControllerRootView *)self _cropRectFromOverlayView:self->_overlayView];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
    if ((SSRectEqualToRect() & 1) == 0)
    {
      if ([(SSSCropControllerRootView *)self cropEnabled])
      {
        v5 = v13;
        v7 = v15;
        v9 = v17;
        v11 = v19;
      }

      [(NSTimer *)self->_zoomInTimer invalidate];
      [(SSSCropControllerRootView *)self _moveToUnitRect:0 animated:v5, v7, v9, v11];

      [(SSSCropControllerRootView *)self _emitCropRectChangeMessage];
    }
  }
}

- (void)_updateScrollViewZoomScaleEndpoints
{
  viewToCrop = [(SSSCropControllerRootView *)self viewToCrop];
  if (viewToCrop)
  {
    v4 = viewToCrop;
    [(SSSCropControllerRootView *)self bounds];
    IsEmpty = CGRectIsEmpty(v23);

    if (!IsEmpty)
    {
      viewToCrop2 = [(SSSCropControllerRootView *)self viewToCrop];
      [viewToCrop2 intrinsicContentSize];
      v8 = v7;
      v10 = v9;

      [(SSSCropControllerRootView *)self bounds];
      [(SSSScrollView *)self->_scrollView setMinimumZoomScale:sub_1000341E4(self->_editMode, v8, v10, v11, v12)];
      scrollView = self->_scrollView;
      [(SSSCropControllerRootView *)self _maximumZoomScale];
      [(SSSScrollView *)scrollView setMaximumZoomScale:?];
      [(SSSScrollView *)self->_scrollView zoomScale];
      v15 = v14;
      [(SSSScrollView *)self->_scrollView minimumZoomScale];
      v16 = self->_scrollView;
      if (v15 >= v17)
      {
        [(SSSScrollView *)v16 zoomScale];
        v19 = v18;
        [(SSSScrollView *)self->_scrollView maximumZoomScale];
        if (v19 <= v20)
        {
          return;
        }

        [(SSSScrollView *)self->_scrollView maximumZoomScale];
      }

      else
      {
        [(SSSScrollView *)v16 minimumZoomScale];
      }

      v21 = self->_scrollView;

      [(SSSScrollView *)v21 setZoomScale:?];
    }
  }
}

- (double)_maximumZoomScale
{
  [(SSSCropControllerRootView *)self bounds];

  sub_100034218();
  return result;
}

- (CGRect)_currentScrollViewCropRect
{
  unitRectCoordinateSpace = [(SSSCropControllerRootView *)self unitRectCoordinateSpace];
  [(SSSCropControllerRootView *)self bounds];
  [unitRectCoordinateSpace convertRect:self fromCoordinateSpace:?];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (CGRect)_cropRectFromOverlayView:(id)view
{
  if (view)
  {
    viewCopy = view;
    unitRectCoordinateSpace = [(SSSCropControllerRootView *)self unitRectCoordinateSpace];
    [viewCopy bounds];
    [unitRectCoordinateSpace convertRect:viewCopy fromCoordinateSpace:?];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
  }

  else
  {
    v11 = 1.0;
    v7 = 0.0;
    v9 = 0.0;
    v13 = 1.0;
  }

  v14 = v7;
  v15 = v9;
  v16 = v11;
  v17 = v13;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (id)unitRectCoordinateSpace
{
  v2 = [[SSSUnitRectCoordinateSpace alloc] initWithView:self->_viewToCrop];

  return v2;
}

- (void)_emitCropRectWillBeginChangingMessage
{
  delegate = [(SSSCropControllerRootView *)self delegate];
  [delegate cropControllerRootViewWillBeginChangingCropRect:self];
}

- (void)_emitCropRectChangeMessage
{
  [(SSSCropControllerRootView *)self _cropRectFromOverlayView:self->_overlayView];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  self->_cropRect.origin.x = v3;
  self->_cropRect.origin.y = v5;
  self->_cropRect.size.width = v7;
  self->_cropRect.size.height = v9;
  delegate = [(SSSCropControllerRootView *)self delegate];
  [delegate cropControllerRootView:self changedToCropRect:{v4, v6, v8, v10}];

  scrollView = self->_scrollView;

  [(SSSCropControllerRootView *)self notifyScrollViewChanged:scrollView];
}

- (void)_scrollViewTerminalUserEventOccurred
{
  if (![(SSSCropControllerRootView *)self _zoomTimerRunning])
  {

    [(SSSCropControllerRootView *)self _emitCropRectChangeMessage];
  }
}

- (void)scrollViewDidEndDecelerating:(id)decelerating
{
  [(SSSCropControllerRootView *)self _scrollViewTerminalUserEventOccurred];

  [(SSSCropControllerRootView *)self _updateForScrollViewNonLiveUserEvent];
}

- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate
{
  if (!decelerate)
  {
    [(SSSCropControllerRootView *)self _scrollViewTerminalUserEventOccurred];
  }

  overlayViewResizeGesture = self->_overlayViewResizeGesture;

  [(UILongPressGestureRecognizer *)overlayViewResizeGesture setEnabled:1];
}

- (void)_updateLastScrollViewUnitRect
{
  p_lastScrollViewUnitRect = &self->_lastScrollViewUnitRect;
  [(SSSCropControllerRootView *)self _currentScrollViewCropRect];
  p_lastScrollViewUnitRect->origin.x = v4;
  p_lastScrollViewUnitRect->origin.y = v5;
  p_lastScrollViewUnitRect->size.width = v6;
  p_lastScrollViewUnitRect->size.height = v7;

  [(SSSCropControllerRootView *)self setNeedsLayout];
}

- (void)_updateForScrollViewLiveUserEvent
{
  [(SSSCropControllerRootView *)self _currentScrollViewCropRect];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  p_lastScrollViewUnitRect = &self->_lastScrollViewUnitRect;
  if (CGRectIsEmpty(self->_lastScrollViewUnitRect))
  {
    p_lastScrollViewUnitRect->origin.x = v4;
    self->_lastScrollViewUnitRect.origin.y = v6;
    height = v10;
    width = v8;
    y = v6;
    x = v4;
    self->_lastScrollViewUnitRect.size.width = v8;
    self->_lastScrollViewUnitRect.size.height = v10;
  }

  else
  {
    x = p_lastScrollViewUnitRect->origin.x;
    y = self->_lastScrollViewUnitRect.origin.y;
    width = self->_lastScrollViewUnitRect.size.width;
    height = self->_lastScrollViewUnitRect.size.height;
  }

  memset(&v16[1], 0, sizeof(CGAffineTransform));
  [(SSSCropControllerRootView *)self _transformToConvertFromRect:x toRect:y, width, height, v4, v6, v8, v10];
  [(SSSCropControllerRootView *)self _updateLastScrollViewUnitRect];
  overlayViewUnitRect = self->_overlayViewUnitRect;
  v16[0] = v16[1];
  v18 = CGRectApplyAffineTransform(overlayViewUnitRect, v16);
  [(SSSCropControllerRootView *)self setOverlayViewUnitRect:v18.origin.x, v18.origin.y, v18.size.width, v18.size.height];
  [(SSSCropControllerRootView *)self _prolongZoomTimerStartingIfNotRunning:0];
  [(SSSCropControllerRootView *)self setNeedsLayout];
}

- (CGAffineTransform)_transformToConvertFromRect:(SEL)rect toRect:(CGRect)toRect
{
  y = a5.origin.y;
  x = a5.origin.x;
  height = toRect.size.height;
  width = toRect.size.width;
  v9 = toRect.origin.y;
  v10 = toRect.origin.x;
  memset(&v16, 0, sizeof(v16));
  CGAffineTransformMakeScale(&v16, a5.size.width / toRect.size.width, a5.size.width / toRect.size.width);
  v15 = v16;
  v17.origin.x = v10;
  v17.origin.y = v9;
  v17.size.width = width;
  v17.size.height = height;
  v18 = CGRectApplyAffineTransform(v17, &v15);
  memset(&v15, 0, sizeof(v15));
  CGAffineTransformMakeTranslation(&v15, x - v18.origin.x, y - v18.origin.y);
  *&retstr->c = 0u;
  *&retstr->tx = 0u;
  *&retstr->a = 0u;
  t1 = v16;
  v13 = v15;
  return CGAffineTransformConcat(retstr, &t1, &v13);
}

- (void)_updateForScrollViewNonLiveUserEvent
{
  if (self->_isZoomingIn)
  {
    self->_isZoomingIn = 0;
    [(SSSCropControllerRootView *)self _emitCropRectChangeMessage];
  }
}

- (BOOL)_scrollViewIsInLiveUserEvent
{
  if (([(SSSScrollView *)self->_scrollView isTracking]& 1) != 0 || ([(SSSScrollView *)self->_scrollView isDecelerating]& 1) != 0 || self->_scrollViewIsInUserInitiatedZoom)
  {
    return ![(SSSScrollView *)self->_scrollView isInProgrammaticCall];
  }

  else
  {
    return 0;
  }
}

- (void)scrollViewWillBeginDragging:(id)dragging
{
  [(UILongPressGestureRecognizer *)self->_overlayViewResizeGesture setEnabled:0];
  [(SSSCropControllerRootView *)self _emitCropRectWillBeginChangingMessage];

  [(SSSCropControllerRootView *)self _updateForScrollViewLiveUserEvent];
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  if ([(SSSCropControllerRootView *)self _scrollViewIsInLiveUserEvent])
  {
    [(SSSCropControllerRootView *)self _updateForScrollViewLiveUserEvent];
    [(SSSCropControllerRootView *)self setNeedsLayout];
  }

  [(SSSCropControllerRootView *)self notifyScrollViewChanged:scrollCopy];
}

- (void)scrollViewDidZoom:(id)zoom
{
  zoomCopy = zoom;
  if ([(SSSCropControllerRootView *)self _scrollViewIsInLiveUserEvent])
  {
    [(SSSCropControllerRootView *)self _updateForScrollViewLiveUserEvent];
  }

  [(SSSCropControllerRootView *)self setNeedsLayout];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  scrollView = [(SSSCropControllerRootView *)self scrollView];
  subviews = [scrollView subviews];

  v7 = [subviews countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(subviews);
        }

        v11 = *(*(&v12 + 1) + 8 * v10);
        if (v11 != self->_viewToCrop)
        {
          [(SSSScreenshotContainerView *)v11 setNeedsLayout];
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [subviews countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  if (!self->_scrollViewIsInUserInitiatedZoom)
  {
    [(SSSCropControllerRootView *)self notifyZoomScaleChanged:zoomCopy];
  }

  [(SSSCropControllerRootView *)self notifyScrollViewChanged:zoomCopy];
}

- (void)notifyScrollViewChanged:(id)changed
{
  changedCopy = changed;
  if (objc_opt_respondsToSelector())
  {
    [(SSSScreenshotContainerView *)self->_viewToCrop cropControllerDidUpdateScrollView:changedCopy];
  }
}

- (void)notifyZoomScaleChanged:(id)changed
{
  changedCopy = changed;
  if (objc_opt_respondsToSelector())
  {
    [(SSSScreenshotContainerView *)self->_viewToCrop cropControllerDidZoomInScrollView:changedCopy];
  }
}

- (void)scrollViewWillBeginZooming:(id)zooming withView:(id)view
{
  pinchGestureRecognizer = [zooming pinchGestureRecognizer];
  self->_scrollViewIsInUserInitiatedZoom = [pinchGestureRecognizer state] == 1;

  if (self->_scrollViewIsInUserInitiatedZoom)
  {

    [(SSSCropControllerRootView *)self _updateForScrollViewLiveUserEvent];
  }
}

- (void)scrollViewDidEndZooming:(id)zooming withView:(id)view atScale:(double)scale
{
  if (self->_scrollViewIsInUserInitiatedZoom)
  {
    zoomingCopy = zooming;
    [(SSSCropControllerRootView *)self _updateForScrollViewLiveUserEvent];
    self->_scrollViewIsInUserInitiatedZoom = 0;
    [(SSSCropControllerRootView *)self _scrollViewTerminalUserEventOccurred];
    [(SSSCropControllerRootView *)self notifyZoomScaleChanged:zoomingCopy];

    [(SSSCropControllerRootView *)self _updateOverlayView];
  }
}

- (NSArray)gestureRecognizers
{
  v3 = +[NSMutableArray array];
  v4 = v3;
  if (self->_overlayViewResizeGesture)
  {
    [v3 addObject:?];
  }

  panGestureRecognizer = [(SSSScrollView *)self->_scrollView panGestureRecognizer];

  if (panGestureRecognizer)
  {
    panGestureRecognizer2 = [(SSSScrollView *)self->_scrollView panGestureRecognizer];
    [v4 addObject:panGestureRecognizer2];
  }

  pinchGestureRecognizer = [(SSSScrollView *)self->_scrollView pinchGestureRecognizer];

  if (pinchGestureRecognizer)
  {
    pinchGestureRecognizer2 = [(SSSScrollView *)self->_scrollView pinchGestureRecognizer];
    [v4 addObject:pinchGestureRecognizer2];
  }

  return v4;
}

- (void)setNumberOfTouchesRequiredForPanningCrop:(int64_t)crop
{
  if (self->_numberOfTouchesRequiredForPanningCrop != crop)
  {
    self->_numberOfTouchesRequiredForPanningCrop = crop;
    [(SSSCropControllerRootView *)self setNeedsLayout];
  }
}

- (void)setCropEnabled:(BOOL)enabled
{
  if ([(SSSCropControllerRootView *)self cropEnabled]!= enabled)
  {
    self->_cropEnabled = enabled;

    [(SSSCropControllerRootView *)self setNeedsLayout];
  }
}

- (void)setSnapRects:(id)rects
{
  rectsCopy = rects;
  if (([(NSArray *)self->_snapRects isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_snapRects, rects);
    [(SSSCropControllerRootView *)self setNeedsLayout];
  }
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  eventCopy = event;
  [(SSSCropOverlayView *)self->_overlayView convertPoint:self fromView:x, y];
  v9 = v8;
  v11 = v10;
  v14.receiver = self;
  v14.super_class = SSSCropControllerRootView;
  if ([(SSSCropControllerRootView *)&v14 pointInside:eventCopy withEvent:x, y])
  {
    v12 = 1;
  }

  else
  {
    v12 = [(SSSCropOverlayView *)self->_overlayView pointInside:eventCopy withEvent:v9, v11];
  }

  return v12;
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  v14.receiver = self;
  v14.super_class = SSSCropControllerRootView;
  eventCopy = event;
  v8 = [(SSSCropControllerRootView *)&v14 hitTest:eventCopy withEvent:x, y];
  [(SSSCropOverlayView *)self->_overlayView convertPoint:self fromView:x, y, v14.receiver, v14.super_class];
  v9 = [(SSSCropOverlayView *)self->_overlayView hitTest:eventCopy withEvent:?];

  v10 = v9;
  if (v9 || ([(SSSUncroppedOccludingView *)self->_occludingView convertPoint:self fromView:x, y], v11 = [(SSSUncroppedOccludingView *)self->_occludingView pointCanPassthrough:?], v10 = v8, v11))
  {
    v12 = v10;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (CGRect)cropOverlayViewRectInWindow
{
  window = [(SSSCropControllerRootView *)self window];
  [(SSSCropOverlayView *)self->_overlayView bounds];
  [window convertRect:self->_overlayView fromView:?];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (CGRect)cropRect
{
  x = self->_cropRect.origin.x;
  y = self->_cropRect.origin.y;
  width = self->_cropRect.size.width;
  height = self->_cropRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (SSSCropControllerRootViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end