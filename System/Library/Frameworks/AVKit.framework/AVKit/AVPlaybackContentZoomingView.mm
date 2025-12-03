@interface AVPlaybackContentZoomingView
- (AVPlaybackContentZoomingView)initWithFrame:(CGRect)frame activeContentView:(id)view;
- (BOOL)canShowStatusBarBackgroundGradientWhenStatusBarVisible;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (CGRect)_contentRectForScale:(double)scale;
- (CGRect)previousBounds;
- (CGRect)videoContentFrame;
- (CGSize)_contentSizeForScale:(double)scale;
- (CGSize)contentAspectRatio;
- (UIEdgeInsets)_contentInsets;
- (UIWindow)lastKnownWindow;
- (void)_boundingPathMayHaveChangedForView:(id)view relativeToBoundsOriginOnly:(BOOL)only;
- (void)_updateMinMaxZoomScales:(BOOL)scales;
- (void)_updateZoomScaling;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)scrollViewDidEndZooming:(id)zooming withView:(id)view atScale:(double)scale;
- (void)scrollViewDidZoom:(id)zoom;
- (void)scrollViewWillBeginZooming:(id)zooming withView:(id)view;
- (void)setCanShowStatusBarBackgroundGradientWhenStatusBarVisible:(BOOL)visible;
- (void)setContentAspectRatio:(CGSize)ratio;
- (void)setFrame:(CGRect)frame;
- (void)setLastKnownWindow:(id)window;
- (void)setVideoGravity:(int64_t)gravity removingAllSublayerTransformAnimations:(BOOL)animations;
- (void)setZoomingEnabled:(BOOL)enabled;
- (void)willMoveToWindow:(id)window;
- (void)zoomToPoint:(CGPoint)point;
@end

@implementation AVPlaybackContentZoomingView

- (UIWindow)lastKnownWindow
{
  WeakRetained = objc_loadWeakRetained(&self->_lastKnownWindow);

  return WeakRetained;
}

- (CGRect)previousBounds
{
  x = self->_previousBounds.origin.x;
  y = self->_previousBounds.origin.y;
  width = self->_previousBounds.size.width;
  height = self->_previousBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGSize)contentAspectRatio
{
  width = self->_contentAspectRatio.width;
  height = self->_contentAspectRatio.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGRect)videoContentFrame
{
  x = self->_videoContentFrame.origin.x;
  y = self->_videoContentFrame.origin.y;
  width = self->_videoContentFrame.size.width;
  height = self->_videoContentFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (UIEdgeInsets)_contentInsets
{
  [(AVPlaybackContentZoomingView *)self zoomScale];
  [(AVPlaybackContentZoomingView *)self _contentSizeForScale:?];
  v4 = v3;
  v6 = v5;
  [(AVPlaybackContentZoomingView *)self bounds];
  v8 = *MEMORY[0x1E69DDCE0];
  v9 = *(MEMORY[0x1E69DDCE0] + 8);
  v11 = v10 - v4;
  if (v11 > 0.0)
  {
    v9 = v11 * 0.5;
  }

  v12 = v7 - v6;
  v13 = (v7 - v6) * 0.5;
  if (v12 > 0.0)
  {
    v8 = v13;
  }

  v14 = v8;
  v15 = v9;
  result.right = v15;
  result.bottom = v14;
  result.left = v9;
  result.top = v8;
  return result;
}

- (void)_updateMinMaxZoomScales:(BOOL)scales
{
  [(AVPlaybackContentZoomingView *)self _contentSizeForScale:1.0];
  v6 = v5;
  v8 = v7;
  v9 = 1.0;
  if ([(AVPlaybackContentZoomingView *)self isZoomingEnabled]&& v6 > 0.0 && v8 > 0.0)
  {
    [(AVPlaybackContentZoomingView *)self bounds];
    Width = CGRectGetWidth(v23);
    v9 = (Width + Width) / v6;
    [(AVPlaybackContentZoomingView *)self bounds];
    Height = CGRectGetHeight(v24);
    v12 = (Height + Height) / v8;
    if (v9 < v12)
    {
      v9 = v12;
    }

    [(AVPlaybackContentZoomingView *)self bounds];
    v13 = CGRectGetWidth(v25);
    v14 = (v13 + v13) / v8;
    [(AVPlaybackContentZoomingView *)self bounds];
    v15 = CGRectGetHeight(v26);
    v16 = (v15 + v15) / v6;
    if (v14 >= v16)
    {
      v16 = v14;
    }

    if (v9 < v16)
    {
      v9 = v16;
    }
  }

  [(AVPlaybackContentZoomingView *)self minimumZoomScale];
  if (v17 != 1.0)
  {
    [(AVPlaybackContentZoomingView *)self setMinimumZoomScale:1.0];
  }

  [(AVPlaybackContentZoomingView *)self maximumZoomScale];
  if (v18 != v9)
  {
    [(AVPlaybackContentZoomingView *)self zoomScale];
    if (scales || (v20 = v19, [(UIView *)self avkit_isBeingDismissed]))
    {
      v20 = 1.0;
    }

    [(AVPlaybackContentZoomingView *)self setMaximumZoomScale:v9];
    [(AVPlaybackContentZoomingView *)self zoomScale];
    if (v20 != v21)
    {

      [(AVPlaybackContentZoomingView *)self setZoomScale:v20];
    }
  }
}

- (CGRect)_contentRectForScale:(double)scale
{
  v3 = *MEMORY[0x1E695EFF8];
  v4 = *(MEMORY[0x1E695EFF8] + 8);
  [(AVPlaybackContentZoomingView *)self _contentSizeForScale:scale];
  v6 = v5;
  v8 = v7;
  v9 = v3;
  v10 = v4;
  result.size.height = v8;
  result.size.width = v6;
  result.origin.y = v10;
  result.origin.x = v9;
  return result;
}

- (CGSize)_contentSizeForScale:(double)scale
{
  v5 = MEMORY[0x1E695F060];
  avkit_hasFullScreenLayoutClass = [(UIView *)self avkit_hasFullScreenLayoutClass];
  lastKnownWindow = [(AVPlaybackContentZoomingView *)self lastKnownWindow];
  v8 = lastKnownWindow;
  if (!lastKnownWindow || !avkit_hasFullScreenLayoutClass)
  {

LABEL_29:
    [(AVPlaybackContentZoomingView *)self contentAspectRatio];
    v41 = v40;
    v43 = v42;
    [(AVPlaybackContentZoomingView *)self bounds];
    v45 = v44;
    v47 = v46;
    v49 = v48;
    v51 = v50;
    v62.width = v41;
    v62.height = v43;
    v67.origin.x = v45;
    v67.origin.y = v47;
    v67.size.width = v49;
    v67.size.height = v51;
    v64 = AVMakeRectWithAspectRatioInsideRect(v62, v67);
    x = v64.origin.x;
    y = v64.origin.y;
    width = v64.size.width;
    height = v64.size.height;
    goto LABEL_30;
  }

  [(AVPlaybackContentZoomingView *)self contentAspectRatio];
  v11 = v10;
  v12 = v10 - 1;
  v13 = ((v10 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53;
  v16 = ((v9 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF && v9 >= 0 || (v9 - 1) < 0xFFFFFFFFFFFFFLL;

  v18 = (v11 < 0 || v13 > 0x3FE) && v12 > 0xFFFFFFFFFFFFELL;
  if (v18 || !v16)
  {
    goto LABEL_29;
  }

  [(AVPlaybackContentZoomingView *)self contentAspectRatio];
  v20 = v19;
  [(AVPlaybackContentZoomingView *)self contentAspectRatio];
  v22 = v20 / v21;
  if ([(UIView *)self avkit_isCounterRotatedForTransition])
  {
    v22 = 1.0 / v22;
  }

  lastKnownWindow2 = [(AVPlaybackContentZoomingView *)self lastKnownWindow];
  [lastKnownWindow2 bounds];
  UIRectGetCenter();
  v25 = v24;
  v27 = v26;

  cacheLargestInscribedRect = self->_cacheLargestInscribedRect;
  lastKnownWindow3 = [(AVPlaybackContentZoomingView *)self lastKnownWindow];
  [(AVCacheLargestInscribedRectInBoundingPath *)cacheLargestInscribedRect getLargestInscribableRectForView:lastKnownWindow3 withCenter:v25 aspectRatio:v27, v22];
  x = v30;
  y = v32;
  width = v34;
  v37 = v36;

  avkit_isCounterRotatedForTransition = [(UIView *)self avkit_isCounterRotatedForTransition];
  if (avkit_isCounterRotatedForTransition)
  {
    height = width;
  }

  else
  {
    height = v37;
  }

  if (avkit_isCounterRotatedForTransition)
  {
    width = v37;
  }

LABEL_30:
  v52 = *v5;
  v53 = v5[1];
  v65.origin.x = x;
  v65.origin.y = y;
  v65.size.width = width;
  v65.size.height = height;
  if (!CGRectIsInfinite(v65))
  {
    v66.origin.x = x;
    v66.origin.y = y;
    v66.size.width = width;
    v66.size.height = height;
    if (!CGRectIsNull(v66))
    {
      selfCopy = self;
      UIPointRoundToViewScale();
      UISizeRoundToViewScale();
      v56 = v55;
      v58 = v57;

      CGAffineTransformMakeScale(&v61, scale, scale);
      v52 = v58 * v61.c + v61.a * v56;
      v53 = v58 * v61.d + v61.b * v56;
    }
  }

  v59 = v52;
  v60 = v53;
  result.height = v60;
  result.width = v59;
  return result;
}

- (void)layoutSubviews
{
  v18.receiver = self;
  v18.super_class = AVPlaybackContentZoomingView;
  [(AVPlaybackContentZoomingView *)&v18 layoutSubviews];
  activeContentView = [(AVPlaybackContentZoomingView *)self activeContentView];
  [(AVPlaybackContentZoomingView *)self zoomScale];
  [(AVPlaybackContentZoomingView *)self _contentRectForScale:?];
  [activeContentView setFrame:?];

  activeContentView2 = [(AVPlaybackContentZoomingView *)self activeContentView];
  activeContentView3 = [(AVPlaybackContentZoomingView *)self activeContentView];
  [activeContentView3 bounds];
  [activeContentView2 setVideoContentFrame:?];

  [(AVPlaybackContentZoomingView *)self _contentInsets];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  [(AVPlaybackContentZoomingView *)self contentInset];
  if (v9 != v17 || v7 != v14 || v13 != v16 || v11 != v15)
  {
    [(AVPlaybackContentZoomingView *)self _contentInsets];
    [(AVPlaybackContentZoomingView *)self setContentInset:?];
  }
}

- (void)didMoveToWindow
{
  window = [(AVPlaybackContentZoomingView *)self window];
  if (window)
  {
    v4 = window;
    [window _addBoundingPathChangeObserver:self];
    window = v4;
  }
}

- (void)willMoveToWindow:(id)window
{
  windowCopy = window;
  v7.receiver = self;
  v7.super_class = AVPlaybackContentZoomingView;
  [(AVPlaybackContentZoomingView *)&v7 willMoveToWindow:windowCopy];
  window = [(AVPlaybackContentZoomingView *)self window];
  v6 = window;
  if (window)
  {
    [window _removeBoundingPathChangeObserver:self];
  }

  if (windowCopy)
  {
    [(AVPlaybackContentZoomingView *)self setLastKnownWindow:windowCopy];
  }
}

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  [(AVPlaybackContentZoomingView *)self frame];
  v10 = v8;
  v11 = v9;
  v12 = v8 < width;
  if (v9 <= height)
  {
    v12 = 0;
  }

  v14 = v8 > width && v9 < height || v12;
  v16.receiver = self;
  v16.super_class = AVPlaybackContentZoomingView;
  [(AVPlaybackContentZoomingView *)&v16 setFrame:x, y, width, height];
  if (v10 != width || v11 != height)
  {
    [(AVPlaybackContentZoomingView *)self _updateMinMaxZoomScales:v14];
  }
}

- (void)_boundingPathMayHaveChangedForView:(id)view relativeToBoundsOriginOnly:(BOOL)only
{
  [(AVCacheLargestInscribedRectInBoundingPath *)self->_cacheLargestInscribedRect clearCache:view];

  [(AVPlaybackContentZoomingView *)self _updateZoomScaling];
}

- (void)_updateZoomScaling
{
  if (result)
  {
    v1 = result;
    [result _updateMinMaxZoomScales];
    [v1 zoomScale];
    [v1 _contentSizeForScale:?];
    [v1 setContentSize:?];

    return [v1 setNeedsLayout];
  }

  return result;
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  v14.receiver = self;
  v14.super_class = AVPlaybackContentZoomingView;
  if (![(AVPlaybackContentZoomingView *)&v14 gestureRecognizerShouldBegin:beginCopy])
  {
    goto LABEL_10;
  }

  if (![(AVPlaybackContentZoomingView *)self isFullScreen])
  {
    goto LABEL_11;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [beginCopy velocity];
      if (v9 < 0.0)
      {
        [(AVPlaybackContentZoomingView *)self zoomScale];
        v11 = v10;
        [(AVPlaybackContentZoomingView *)self minimumZoomScale];
        if (v11 == v12)
        {
          goto LABEL_10;
        }
      }
    }

LABEL_11:
    v8 = 1;
    goto LABEL_12;
  }

  [beginCopy translationInView:0];
  if (v5 <= 0.0)
  {
    goto LABEL_11;
  }

  [(AVPlaybackContentZoomingView *)self contentInset];
  if (v6 != 0.0)
  {
LABEL_10:
    v8 = 0;
    goto LABEL_12;
  }

  [(AVPlaybackContentZoomingView *)self contentOffset];
  v8 = v7 != 0.0;
LABEL_12:

  return v8;
}

- (void)scrollViewDidZoom:(id)zoom
{
  [zoom zoomScale];
  [(AVPlaybackContentZoomingView *)self setScrollEnabled:v4 != 1.0];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"AVPlayerViewControllerContentViewUpdateContentIntersectionNotification" object:self];
}

- (void)scrollViewDidEndZooming:(id)zooming withView:(id)view atScale:(double)scale
{
  [(AVPlaybackContentZoomingView *)self setScrollEnabled:scale != 1.0, view];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"AVPlayerViewControllerContentViewUpdateContentIntersectionNotification" object:self];
}

- (void)scrollViewWillBeginZooming:(id)zooming withView:(id)view
{
  [(AVPlaybackContentZoomingView *)self setAlwaysBounceVertical:1, view];
  [(AVPlaybackContentZoomingView *)self setAlwaysBounceHorizontal:1];
  [(AVPlaybackContentZoomingView *)self setBouncesHorizontally:1];

  [(AVPlaybackContentZoomingView *)self setBouncesVertically:1];
}

- (void)zoomToPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  [(AVPlaybackContentZoomingView *)self zoomScale];
  if (v6 == 1.0)
  {
    activeContentView = [(AVPlaybackContentZoomingView *)self activeContentView];
    [activeContentView frame];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;

    activeContentView2 = [(AVPlaybackContentZoomingView *)self activeContentView];
    [activeContentView2 convertPoint:self fromView:{x, y}];
    v18 = v17;
    v39 = v19;
    v40 = v17;
    v20 = v19;

    v42.origin.x = v9;
    v42.origin.y = v11;
    v42.size.width = v13;
    v42.size.height = v15;
    v38 = fmin(fmax((v18 - v9) / CGRectGetWidth(v42), 0.0), 1.0);
    v43.origin.x = v9;
    v43.origin.y = v11;
    v43.size.width = v13;
    v43.size.height = v15;
    v37 = fmin(fmax((v20 - v11) / CGRectGetHeight(v43), 0.0), 1.0);
    [(AVPlaybackContentZoomingView *)self maximumZoomScale];
    v22 = v21;
    [(AVPlaybackContentZoomingView *)self minimumZoomScale];
    v24 = fmax((v22 - v23) * 0.5, 0.0) + 1.0;
    [(AVPlaybackContentZoomingView *)self bounds];
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v32 = v31;
    CGAffineTransformMakeScale(&v41, 1.0 / v24, 1.0 / v24);
    v44.origin.x = v26;
    v44.origin.y = v28;
    v44.size.width = v30;
    v44.size.height = v32;
    v45 = CGRectApplyAffineTransform(v44, &v41);
    v33 = v45.origin.y;
    width = v45.size.width;
    height = v45.size.height;
    v46.origin.x = v40 - CGRectGetWidth(v45) * v38;
    v46.origin.y = v33;
    v46.size.width = width;
    v46.size.height = height;
    [(AVPlaybackContentZoomingView *)self zoomToRect:0 animated:v46.origin.x, v39 - CGRectGetHeight(v46) * v37, width, height];
  }

  else
  {
    [(AVPlaybackContentZoomingView *)self setZoomScale:1.0];
  }

  [(AVPlaybackContentZoomingView *)self setNeedsLayout];
  [(AVPlaybackContentZoomingView *)self layoutIfNeeded];
  activeContentView3 = [(AVPlaybackContentZoomingView *)self activeContentView];
  [activeContentView3 removeAllSublayerTransformAnimations];
}

- (void)setZoomingEnabled:(BOOL)enabled
{
  if (self->_zoomingEnabled != enabled)
  {
    self->_zoomingEnabled = enabled;
    [(AVPlaybackContentZoomingView *)self _updateMinMaxZoomScales];
  }
}

- (void)setContentAspectRatio:(CGSize)ratio
{
  if (ratio.width != self->_contentAspectRatio.width || ratio.height != self->_contentAspectRatio.height)
  {
    self->_contentAspectRatio = ratio;
    [(AVPlaybackContentZoomingView *)self _updateMinMaxZoomScales];
    [(AVPlaybackContentZoomingView *)self zoomScale];
    [(AVPlaybackContentZoomingView *)self _contentSizeForScale:?];
    [(AVPlaybackContentZoomingView *)self setContentSize:?];

    [(AVPlaybackContentZoomingView *)self setNeedsLayout];
  }
}

- (void)setVideoGravity:(int64_t)gravity removingAllSublayerTransformAnimations:(BOOL)animations
{
  animationsCopy = animations;
  activeContentView = [(AVPlaybackContentZoomingView *)self activeContentView];
  [activeContentView setVideoGravity:gravity removingAllSublayerTransformAnimations:animationsCopy];
}

- (void)setCanShowStatusBarBackgroundGradientWhenStatusBarVisible:(BOOL)visible
{
  visibleCopy = visible;
  activeContentView = [(AVPlaybackContentZoomingView *)self activeContentView];
  [activeContentView setCanShowStatusBarBackgroundGradientWhenStatusBarVisible:visibleCopy];
}

- (BOOL)canShowStatusBarBackgroundGradientWhenStatusBarVisible
{
  activeContentView = [(AVPlaybackContentZoomingView *)self activeContentView];
  canShowStatusBarBackgroundGradientWhenStatusBarVisible = [activeContentView canShowStatusBarBackgroundGradientWhenStatusBarVisible];

  return canShowStatusBarBackgroundGradientWhenStatusBarVisible;
}

- (void)setLastKnownWindow:(id)window
{
  windowCopy = window;
  WeakRetained = objc_loadWeakRetained(&self->_lastKnownWindow);

  if (WeakRetained != windowCopy)
  {
    objc_storeWeak(&self->_lastKnownWindow, windowCopy);
    if (windowCopy)
    {
      [(AVPlaybackContentZoomingView *)self setNeedsLayout];
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __51__AVPlaybackContentZoomingView_setLastKnownWindow___block_invoke;
      v6[3] = &unk_1E720A090;
      v6[4] = self;
      [MEMORY[0x1E69DD250] performWithoutAnimation:v6];
    }
  }
}

- (AVPlaybackContentZoomingView)initWithFrame:(CGRect)frame activeContentView:(id)view
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  viewCopy = view;
  v18.receiver = self;
  v18.super_class = AVPlaybackContentZoomingView;
  height = [(AVPlaybackContentZoomingView *)&v18 initWithFrame:x, y, width, height];
  v12 = height;
  if (height)
  {
    [(AVPlaybackContentZoomingView *)height setContentInsetAdjustmentBehavior:2];
    v13 = objc_opt_new();
    cacheLargestInscribedRect = v12->_cacheLargestInscribedRect;
    v12->_cacheLargestInscribedRect = v13;

    objc_storeStrong(&v12->_activeContentView, view);
    v12->_contentAspectRatio = xmmword_18B6EC4D0;
    [(AVPlaybackContentZoomingView *)v12 setBouncesZoom:1];
    [(AVPlaybackContentZoomingView *)v12 setShowsVerticalScrollIndicator:0];
    [(AVPlaybackContentZoomingView *)v12 setShowsHorizontalScrollIndicator:0];
    [(AVPlaybackContentZoomingView *)v12 _updateMinMaxZoomScales];
    [(AVPlaybackContentZoomingView *)v12 _contentRectForScale:1.0];
    [viewCopy setFrame:?];
    [(AVPlaybackContentZoomingView *)v12 addSubview:viewCopy];
    [(AVPlaybackContentZoomingView *)v12 setDelegate:v12];
    [(AVPlaybackContentZoomingView *)v12 setDecelerationRate:*MEMORY[0x1E69DE3A0]];
    [(AVPlaybackContentZoomingView *)v12 zoomScale];
    [(AVPlaybackContentZoomingView *)v12 setScrollEnabled:v15 != 1.0];
    backgroundColor = [viewCopy backgroundColor];
    [(AVPlaybackContentZoomingView *)v12 setBackgroundColor:backgroundColor];
  }

  return v12;
}

@end