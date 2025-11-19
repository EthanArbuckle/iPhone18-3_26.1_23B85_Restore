@interface AVPlaybackContentZoomingView
- (AVPlaybackContentZoomingView)initWithFrame:(CGRect)a3 activeContentView:(id)a4;
- (BOOL)canShowStatusBarBackgroundGradientWhenStatusBarVisible;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (CGRect)_contentRectForScale:(double)a3;
- (CGRect)previousBounds;
- (CGRect)videoContentFrame;
- (CGSize)_contentSizeForScale:(double)a3;
- (CGSize)contentAspectRatio;
- (UIEdgeInsets)_contentInsets;
- (UIWindow)lastKnownWindow;
- (void)_boundingPathMayHaveChangedForView:(id)a3 relativeToBoundsOriginOnly:(BOOL)a4;
- (void)_updateMinMaxZoomScales:(BOOL)a3;
- (void)_updateZoomScaling;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)scrollViewDidEndZooming:(id)a3 withView:(id)a4 atScale:(double)a5;
- (void)scrollViewDidZoom:(id)a3;
- (void)scrollViewWillBeginZooming:(id)a3 withView:(id)a4;
- (void)setCanShowStatusBarBackgroundGradientWhenStatusBarVisible:(BOOL)a3;
- (void)setContentAspectRatio:(CGSize)a3;
- (void)setFrame:(CGRect)a3;
- (void)setLastKnownWindow:(id)a3;
- (void)setVideoGravity:(int64_t)a3 removingAllSublayerTransformAnimations:(BOOL)a4;
- (void)setZoomingEnabled:(BOOL)a3;
- (void)willMoveToWindow:(id)a3;
- (void)zoomToPoint:(CGPoint)a3;
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

- (void)_updateMinMaxZoomScales:(BOOL)a3
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
    if (a3 || (v20 = v19, [(UIView *)self avkit_isBeingDismissed]))
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

- (CGRect)_contentRectForScale:(double)a3
{
  v3 = *MEMORY[0x1E695EFF8];
  v4 = *(MEMORY[0x1E695EFF8] + 8);
  [(AVPlaybackContentZoomingView *)self _contentSizeForScale:a3];
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

- (CGSize)_contentSizeForScale:(double)a3
{
  v5 = MEMORY[0x1E695F060];
  v6 = [(UIView *)self avkit_hasFullScreenLayoutClass];
  v7 = [(AVPlaybackContentZoomingView *)self lastKnownWindow];
  v8 = v7;
  if (!v7 || !v6)
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

  v23 = [(AVPlaybackContentZoomingView *)self lastKnownWindow];
  [v23 bounds];
  UIRectGetCenter();
  v25 = v24;
  v27 = v26;

  cacheLargestInscribedRect = self->_cacheLargestInscribedRect;
  v29 = [(AVPlaybackContentZoomingView *)self lastKnownWindow];
  [(AVCacheLargestInscribedRectInBoundingPath *)cacheLargestInscribedRect getLargestInscribableRectForView:v29 withCenter:v25 aspectRatio:v27, v22];
  x = v30;
  y = v32;
  width = v34;
  v37 = v36;

  v38 = [(UIView *)self avkit_isCounterRotatedForTransition];
  if (v38)
  {
    height = width;
  }

  else
  {
    height = v37;
  }

  if (v38)
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
      v54 = self;
      UIPointRoundToViewScale();
      UISizeRoundToViewScale();
      v56 = v55;
      v58 = v57;

      CGAffineTransformMakeScale(&v61, a3, a3);
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
  v3 = [(AVPlaybackContentZoomingView *)self activeContentView];
  [(AVPlaybackContentZoomingView *)self zoomScale];
  [(AVPlaybackContentZoomingView *)self _contentRectForScale:?];
  [v3 setFrame:?];

  v4 = [(AVPlaybackContentZoomingView *)self activeContentView];
  v5 = [(AVPlaybackContentZoomingView *)self activeContentView];
  [v5 bounds];
  [v4 setVideoContentFrame:?];

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
  v3 = [(AVPlaybackContentZoomingView *)self window];
  if (v3)
  {
    v4 = v3;
    [v3 _addBoundingPathChangeObserver:self];
    v3 = v4;
  }
}

- (void)willMoveToWindow:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = AVPlaybackContentZoomingView;
  [(AVPlaybackContentZoomingView *)&v7 willMoveToWindow:v4];
  v5 = [(AVPlaybackContentZoomingView *)self window];
  v6 = v5;
  if (v5)
  {
    [v5 _removeBoundingPathChangeObserver:self];
  }

  if (v4)
  {
    [(AVPlaybackContentZoomingView *)self setLastKnownWindow:v4];
  }
}

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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

- (void)_boundingPathMayHaveChangedForView:(id)a3 relativeToBoundsOriginOnly:(BOOL)a4
{
  [(AVCacheLargestInscribedRectInBoundingPath *)self->_cacheLargestInscribedRect clearCache:a3];

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

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = AVPlaybackContentZoomingView;
  if (![(AVPlaybackContentZoomingView *)&v14 gestureRecognizerShouldBegin:v4])
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
      [v4 velocity];
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

  [v4 translationInView:0];
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

- (void)scrollViewDidZoom:(id)a3
{
  [a3 zoomScale];
  [(AVPlaybackContentZoomingView *)self setScrollEnabled:v4 != 1.0];
  v5 = [MEMORY[0x1E696AD88] defaultCenter];
  [v5 postNotificationName:@"AVPlayerViewControllerContentViewUpdateContentIntersectionNotification" object:self];
}

- (void)scrollViewDidEndZooming:(id)a3 withView:(id)a4 atScale:(double)a5
{
  [(AVPlaybackContentZoomingView *)self setScrollEnabled:a5 != 1.0, a4];
  v6 = [MEMORY[0x1E696AD88] defaultCenter];
  [v6 postNotificationName:@"AVPlayerViewControllerContentViewUpdateContentIntersectionNotification" object:self];
}

- (void)scrollViewWillBeginZooming:(id)a3 withView:(id)a4
{
  [(AVPlaybackContentZoomingView *)self setAlwaysBounceVertical:1, a4];
  [(AVPlaybackContentZoomingView *)self setAlwaysBounceHorizontal:1];
  [(AVPlaybackContentZoomingView *)self setBouncesHorizontally:1];

  [(AVPlaybackContentZoomingView *)self setBouncesVertically:1];
}

- (void)zoomToPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  [(AVPlaybackContentZoomingView *)self zoomScale];
  if (v6 == 1.0)
  {
    v7 = [(AVPlaybackContentZoomingView *)self activeContentView];
    [v7 frame];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;

    v16 = [(AVPlaybackContentZoomingView *)self activeContentView];
    [v16 convertPoint:self fromView:{x, y}];
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
  v36 = [(AVPlaybackContentZoomingView *)self activeContentView];
  [v36 removeAllSublayerTransformAnimations];
}

- (void)setZoomingEnabled:(BOOL)a3
{
  if (self->_zoomingEnabled != a3)
  {
    self->_zoomingEnabled = a3;
    [(AVPlaybackContentZoomingView *)self _updateMinMaxZoomScales];
  }
}

- (void)setContentAspectRatio:(CGSize)a3
{
  if (a3.width != self->_contentAspectRatio.width || a3.height != self->_contentAspectRatio.height)
  {
    self->_contentAspectRatio = a3;
    [(AVPlaybackContentZoomingView *)self _updateMinMaxZoomScales];
    [(AVPlaybackContentZoomingView *)self zoomScale];
    [(AVPlaybackContentZoomingView *)self _contentSizeForScale:?];
    [(AVPlaybackContentZoomingView *)self setContentSize:?];

    [(AVPlaybackContentZoomingView *)self setNeedsLayout];
  }
}

- (void)setVideoGravity:(int64_t)a3 removingAllSublayerTransformAnimations:(BOOL)a4
{
  v4 = a4;
  v6 = [(AVPlaybackContentZoomingView *)self activeContentView];
  [v6 setVideoGravity:a3 removingAllSublayerTransformAnimations:v4];
}

- (void)setCanShowStatusBarBackgroundGradientWhenStatusBarVisible:(BOOL)a3
{
  v3 = a3;
  v4 = [(AVPlaybackContentZoomingView *)self activeContentView];
  [v4 setCanShowStatusBarBackgroundGradientWhenStatusBarVisible:v3];
}

- (BOOL)canShowStatusBarBackgroundGradientWhenStatusBarVisible
{
  v2 = [(AVPlaybackContentZoomingView *)self activeContentView];
  v3 = [v2 canShowStatusBarBackgroundGradientWhenStatusBarVisible];

  return v3;
}

- (void)setLastKnownWindow:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_lastKnownWindow);

  if (WeakRetained != v4)
  {
    objc_storeWeak(&self->_lastKnownWindow, v4);
    if (v4)
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

- (AVPlaybackContentZoomingView)initWithFrame:(CGRect)a3 activeContentView:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10 = a4;
  v18.receiver = self;
  v18.super_class = AVPlaybackContentZoomingView;
  v11 = [(AVPlaybackContentZoomingView *)&v18 initWithFrame:x, y, width, height];
  v12 = v11;
  if (v11)
  {
    [(AVPlaybackContentZoomingView *)v11 setContentInsetAdjustmentBehavior:2];
    v13 = objc_opt_new();
    cacheLargestInscribedRect = v12->_cacheLargestInscribedRect;
    v12->_cacheLargestInscribedRect = v13;

    objc_storeStrong(&v12->_activeContentView, a4);
    v12->_contentAspectRatio = xmmword_18B6EC4D0;
    [(AVPlaybackContentZoomingView *)v12 setBouncesZoom:1];
    [(AVPlaybackContentZoomingView *)v12 setShowsVerticalScrollIndicator:0];
    [(AVPlaybackContentZoomingView *)v12 setShowsHorizontalScrollIndicator:0];
    [(AVPlaybackContentZoomingView *)v12 _updateMinMaxZoomScales];
    [(AVPlaybackContentZoomingView *)v12 _contentRectForScale:1.0];
    [v10 setFrame:?];
    [(AVPlaybackContentZoomingView *)v12 addSubview:v10];
    [(AVPlaybackContentZoomingView *)v12 setDelegate:v12];
    [(AVPlaybackContentZoomingView *)v12 setDecelerationRate:*MEMORY[0x1E69DE3A0]];
    [(AVPlaybackContentZoomingView *)v12 zoomScale];
    [(AVPlaybackContentZoomingView *)v12 setScrollEnabled:v15 != 1.0];
    v16 = [v10 backgroundColor];
    [(AVPlaybackContentZoomingView *)v12 setBackgroundColor:v16];
  }

  return v12;
}

@end