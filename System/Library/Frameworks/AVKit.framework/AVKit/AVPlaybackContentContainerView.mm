@interface AVPlaybackContentContainerView
- (AVPlaybackContentContainerView)initWithFrame:(CGRect)frame activeContentView:(id)view;
- (AVPlaybackContentContainerView)initWithFrame:(CGRect)frame playerLayerView:(id)view contentOverlayView:(id)overlayView;
- (CGRect)videoContentFrame;
- (double)_frameForStatusBarBackgroundGradientView;
- (void)_updateStatusBarBackgroundGradientViewAlpha;
- (void)_updateVisualAnalysisViewFrameIfNeeded;
- (void)dealloc;
- (void)didMoveToSuperview;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)removeAllSublayerTransformAnimations;
- (void)setCanShowStatusBarBackgroundGradientWhenStatusBarVisible:(BOOL)visible;
- (void)setContentOverlayViewSubview:(id)subview;
- (void)setPlayerLayerView:(id)view;
- (void)setVideoContentFrame:(CGRect)frame;
- (void)setVideoGravity:(int64_t)gravity removingAllSublayerTransformAnimations:(BOOL)animations;
- (void)setVisualAnalysisView:(id)view;
@end

@implementation AVPlaybackContentContainerView

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

- (void)_updateStatusBarBackgroundGradientViewAlpha
{
  if (![(AVPlaybackContentContainerView *)self canShowStatusBarBackgroundGradientWhenStatusBarVisible]&& !self->_statusBarBackgroundGradientView)
  {
    return;
  }

  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __77__AVPlaybackContentContainerView__updateStatusBarBackgroundGradientViewAlpha__block_invoke;
  v36[3] = &unk_1E720A090;
  v36[4] = self;
  [MEMORY[0x1E69DD250] performWithoutAnimation:v36];
  avkit_mainScreen = [MEMORY[0x1E69DCEB0] avkit_mainScreen];
  [avkit_mainScreen nativeBounds];
  v6 = v5;
  v8 = v7;
  [avkit_mainScreen bounds];
  if (v6 >= v8)
  {
    v11 = v6;
  }

  else
  {
    v11 = v8;
  }

  if (v9 >= v10)
  {
    v12 = v9;
  }

  else
  {
    v12 = v10;
  }

  traitCollection = [avkit_mainScreen traitCollection];
  [traitCollection displayScale];
  v15 = v14;

  v16 = MEMORY[0x1E69DDA98];
  if ([*MEMORY[0x1E69DDA98] _isClassic])
  {
    v17 = [*v16 _classicMode] != 5;
  }

  else
  {
    v17 = 0;
  }

  v18 = 0.0;
  if ([(AVPlaybackContentContainerView *)self canShowStatusBarBackgroundGradientWhenStatusBarVisible])
  {
    window = [(AVPlaybackContentContainerView *)self window];
    windowScene = [window windowScene];
    statusBarManager = [windowScene statusBarManager];
    if (![statusBarManager isStatusBarHidden])
    {
      v22 = v15 * v12;
      if (v17)
      {
        traitCollection2 = [(AVPlaybackContentContainerView *)self traitCollection];
        [traitCollection2 displayCornerRadius];
        if (v23 != 0.0 || v11 != v22)
        {
LABEL_28:

          goto LABEL_29;
        }

LABEL_19:
        window2 = [(AVPlaybackContentContainerView *)self window];
        screen = [window2 screen];
        if (screen == avkit_mainScreen)
        {
          window3 = [(AVPlaybackContentContainerView *)self window];
          [window3 windowLevel];
          if (v26 < *MEMORY[0x1E69DE7E8])
          {
            window4 = [(AVPlaybackContentContainerView *)self window];
            windowScene2 = [window4 windowScene];
            statusBarManager2 = [windowScene2 statusBarManager];
            statusBarStyle = [statusBarManager2 statusBarStyle];

            if (v17)
            {
            }

            if (statusBarStyle == 1)
            {
              if (self->_statusBarBackgroundGradientView)
              {
                v18 = 0.4;
              }

              else
              {
                v29 = [[AVStatusBarBackgroundGradientView alloc] initWithFrame:[(AVPlaybackContentContainerView *)self _frameForStatusBarBackgroundGradientView]];
                statusBarBackgroundGradientView = self->_statusBarBackgroundGradientView;
                self->_statusBarBackgroundGradientView = v29;

                v18 = 0.4;
                [(AVStatusBarBackgroundGradientView *)self->_statusBarBackgroundGradientView setAlpha:0.4];
                [(AVStatusBarBackgroundGradientView *)self->_statusBarBackgroundGradientView setUserInteractionEnabled:0];
              }
            }

            goto LABEL_30;
          }
        }

        if (!v17)
        {
          goto LABEL_29;
        }

        goto LABEL_28;
      }

      if (v11 == v22)
      {
        goto LABEL_19;
      }
    }

LABEL_29:
  }

LABEL_30:
  if ([(AVPlaybackContentContainerView *)self canShowStatusBarBackgroundGradientWhenStatusBarVisible])
  {
    if (![(AVPlaybackContentContainerView *)self isObservingStatusBarHidden])
    {
      [(AVPlaybackContentContainerView *)self setObservingStatusBarHidden:1];
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter addObserver:self selector:sel__updateStatusBarBackgroundGradientViewAlpha name:*MEMORY[0x1E69DE850] object:*v16];
    }
  }

  statusBarBackgroundGradientView = [(AVPlaybackContentContainerView *)self statusBarBackgroundGradientView];
  [statusBarBackgroundGradientView setAlpha:v18];
}

void __77__AVPlaybackContentContainerView__updateStatusBarBackgroundGradientViewAlpha__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) statusBarBackgroundGradientView];
  [v2 setFrame:-[AVPlaybackContentContainerView _frameForStatusBarBackgroundGradientView](*(a1 + 32))];
}

- (double)_frameForStatusBarBackgroundGradientView
{
  if (!self)
  {
    return 0.0;
  }

  if ([self isPlayingOnSecondScreen])
  {
    [self bounds];
  }

  else
  {
    [self videoContentFrame];
  }

  v6 = v2;
  v7 = v3;
  v8 = v4;
  v30 = v5;
  window = [self window];
  windowScene = [window windowScene];
  statusBarManager = [windowScene statusBarManager];
  [statusBarManager statusBarFrame];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  window2 = [self window];
  [window2 convertRect:self toView:{v13, v15, v17, v19}];
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;

  if (([self isPlayingOnSecondScreen] & 1) == 0)
  {
    if ([self canShowStatusBarBackgroundGradientWhenStatusBarVisible])
    {
      v31.origin.x = v22;
      v31.origin.y = v24;
      v31.size.width = v26;
      v31.size.height = v28;
      v33.origin.x = v6;
      v33.origin.y = v7;
      v33.size.width = v8;
      v33.size.height = v30;
      if (CGRectIntersectsRect(v31, v33))
      {
        v32.origin.x = v6;
        v32.origin.y = v7;
        v32.size.width = v8;
        v32.size.height = v30;
        CGRectGetHeight(v32);
      }
    }
  }

  return v6;
}

- (void)didMoveToSuperview
{
  v3.receiver = self;
  v3.super_class = AVPlaybackContentContainerView;
  [(AVPlaybackContentContainerView *)&v3 didMoveToSuperview];
  [(AVPlaybackContentContainerView *)self _updateStatusBarBackgroundGradientViewAlpha];
}

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = AVPlaybackContentContainerView;
  [(AVPlaybackContentContainerView *)&v3 didMoveToWindow];
  [(AVPlaybackContentContainerView *)self _updateStatusBarBackgroundGradientViewAlpha];
}

- (void)layoutSubviews
{
  v28.receiver = self;
  v28.super_class = AVPlaybackContentContainerView;
  [(AVPlaybackContentContainerView *)&v28 layoutSubviews];
  playerLayerView = [(AVPlaybackContentContainerView *)self playerLayerView];
  window = [playerLayerView window];
  if (window)
  {
    window2 = [(AVPlaybackContentContainerView *)self window];
    playerLayerView2 = [(AVPlaybackContentContainerView *)self playerLayerView];
    window3 = [playerLayerView2 window];
    v8 = window2 == window3;
  }

  else
  {
    v8 = 1;
  }

  v9 = self->_statusBarBackgroundGradientView;
  if (v8)
  {
    playerLayerView3 = [(AVPlaybackContentContainerView *)self playerLayerView];
    [playerLayerView3 setAutoresizingMask:0];

    playerLayerView4 = [(AVPlaybackContentContainerView *)self playerLayerView];
    [playerLayerView4 setTranslatesAutoresizingMaskIntoConstraints:1];

    playerLayerView5 = [(AVPlaybackContentContainerView *)self playerLayerView];
    if ([(AVPlaybackContentContainerView *)self isPlayingOnSecondScreen])
    {
      [(AVPlaybackContentContainerView *)self bounds];
    }

    else
    {
      [(AVPlaybackContentContainerView *)self videoContentFrame];
    }

    [playerLayerView5 setFrame:?];
  }

  contentOverlayView = [(AVPlaybackContentContainerView *)self contentOverlayView];
  [contentOverlayView setAutoresizingMask:0];

  contentOverlayView2 = [(AVPlaybackContentContainerView *)self contentOverlayView];
  [contentOverlayView2 setTranslatesAutoresizingMaskIntoConstraints:1];

  contentOverlayView3 = [(AVPlaybackContentContainerView *)self contentOverlayView];
  [(AVPlaybackContentContainerView *)self bounds];
  [contentOverlayView3 setFrame:?];

  contentOverlayViewSubview = [(AVPlaybackContentContainerView *)self contentOverlayViewSubview];
  [contentOverlayViewSubview setAutoresizingMask:0];

  contentOverlayViewSubview2 = [(AVPlaybackContentContainerView *)self contentOverlayViewSubview];
  [contentOverlayViewSubview2 setTranslatesAutoresizingMaskIntoConstraints:1];

  contentOverlayViewSubview3 = [(AVPlaybackContentContainerView *)self contentOverlayViewSubview];
  [(AVPlaybackContentContainerView *)self bounds];
  [contentOverlayViewSubview3 setFrame:?];

  if (v9)
  {
    [(AVStatusBarBackgroundGradientView *)v9 setAutoresizingMask:0];
    [(AVStatusBarBackgroundGradientView *)v9 setTranslatesAutoresizingMaskIntoConstraints:1];
    [(AVStatusBarBackgroundGradientView *)v9 setFrame:[(AVPlaybackContentContainerView *)self _frameForStatusBarBackgroundGradientView]];
  }

  if (v8)
  {
    playerLayerView6 = [(AVPlaybackContentContainerView *)self playerLayerView];
    superview = [playerLayerView6 superview];

    if (superview != self)
    {
      playerLayerView7 = [(AVPlaybackContentContainerView *)self playerLayerView];
      [(AVPlaybackContentContainerView *)self insertSubview:playerLayerView7 atIndex:0];
    }
  }

  contentOverlayView4 = [(AVPlaybackContentContainerView *)self contentOverlayView];
  superview2 = [contentOverlayView4 superview];

  if (superview2 != self)
  {
    contentOverlayView5 = [(AVPlaybackContentContainerView *)self contentOverlayView];
    subviews = [(AVPlaybackContentContainerView *)self subviews];
    -[AVPlaybackContentContainerView insertSubview:atIndex:](self, "insertSubview:atIndex:", contentOverlayView5, [subviews count]);
  }

  if (v9)
  {
    superview3 = [(AVStatusBarBackgroundGradientView *)v9 superview];

    if (superview3 != self)
    {
      subviews2 = [(AVPlaybackContentContainerView *)self subviews];
      -[AVPlaybackContentContainerView insertSubview:atIndex:](self, "insertSubview:atIndex:", v9, [subviews2 count]);
    }
  }

  [(AVPlaybackContentContainerView *)self _updateVisualAnalysisViewFrameIfNeeded];
}

- (void)_updateVisualAnalysisViewFrameIfNeeded
{
  if (self)
  {
    v2 = self[52];
    if (v2)
    {
      v25 = v2;
      playerLayerView = [self playerLayerView];
      playerController = [playerLayerView playerController];
      [playerController contentDimensions];
      v6 = v5;
      v8 = v7;

      [self bounds];
      v23 = v9;
      v24 = v10;
      v12 = v11;
      v14 = v13;
      playerLayerView2 = [self playerLayerView];
      isVideoScaled = [playerLayerView2 isVideoScaled];
      v17 = *MEMORY[0x1E695F058];
      v18 = *(MEMORY[0x1E695F058] + 8);
      v19 = *(MEMORY[0x1E695F058] + 16);
      v20 = *(MEMORY[0x1E695F058] + 24);
      if (v8 != 0.0 && v6 != 0.0)
      {
        v21 = v12 / v6;
        if (isVideoScaled == v12 / v6 < v14 / v8)
        {
          v21 = v14 / v8;
        }

        CGAffineTransformMakeScale(&v26, v21, v21);
        v19 = v8 * v26.c + v26.a * v6;
        v20 = v8 * v26.d + v26.b * v6;
        v17 = v23 - (v19 - v12) * 0.5;
        v18 = v24 - (v20 - v14) * 0.5;
      }

      subviews = [self subviews];
      [self insertSubview:v25 atIndex:{objc_msgSend(subviews, "count")}];

      [v25 setFrame:{v17, v18, v19, v20}];
    }
  }
}

- (void)removeAllSublayerTransformAnimations
{
  playerLayerView = [(AVPlaybackContentContainerView *)self playerLayerView];
  layer = [playerLayerView layer];
  [layer avkit_removeAllSublayerTransformAnimations];
}

- (void)setVideoGravity:(int64_t)gravity removingAllSublayerTransformAnimations:(BOOL)animations
{
  animationsCopy = animations;
  playerLayerView = [(AVPlaybackContentContainerView *)self playerLayerView];
  [playerLayerView setVideoGravity:gravity];

  if (animationsCopy)
  {
    playerLayerView2 = [(AVPlaybackContentContainerView *)self playerLayerView];
    layer = [playerLayerView2 layer];
    [layer avkit_removeAllSublayerTransformAnimations];
  }

  [(AVPlaybackContentContainerView *)self _updateVisualAnalysisViewFrameIfNeeded];
}

- (void)setContentOverlayViewSubview:(id)subview
{
  subviewCopy = subview;
  contentOverlayViewSubview = self->_contentOverlayViewSubview;
  if (contentOverlayViewSubview != subviewCopy)
  {
    v9 = subviewCopy;
    [(UIView *)contentOverlayViewSubview removeFromSuperview];
    objc_storeStrong(&self->_contentOverlayViewSubview, subview);
    subviewCopy = v9;
    if (v9)
    {
      contentOverlayView = [(AVPlaybackContentContainerView *)self contentOverlayView];

      subviewCopy = v9;
      if (contentOverlayView != v9)
      {
        contentOverlayView2 = [(AVPlaybackContentContainerView *)self contentOverlayView];
        [contentOverlayView2 addSubview:v9];

        [(AVPlaybackContentContainerView *)self setNeedsLayout];
        contentOverlayViewSubview = [(AVPlaybackContentContainerView *)self layoutIfNeeded];
        subviewCopy = v9;
      }
    }
  }

  MEMORY[0x1EEE66BB8](contentOverlayViewSubview, subviewCopy);
}

- (void)setCanShowStatusBarBackgroundGradientWhenStatusBarVisible:(BOOL)visible
{
  if (self->_canShowStatusBarBackgroundGradientWhenStatusBarVisible != visible)
  {
    self->_canShowStatusBarBackgroundGradientWhenStatusBarVisible = visible;
    if (visible)
    {
      statusBarBackgroundGradientView = [(AVPlaybackContentContainerView *)self statusBarBackgroundGradientView];
      [statusBarBackgroundGradientView setFrame:-[AVPlaybackContentContainerView _frameForStatusBarBackgroundGradientView](self)];
    }

    [(AVPlaybackContentContainerView *)self _updateStatusBarBackgroundGradientViewAlpha];
  }
}

- (void)setVideoContentFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  p_videoContentFrame = &self->_videoContentFrame;
  if (!CGRectEqualToRect(self->_videoContentFrame, frame))
  {
    p_videoContentFrame->origin.x = x;
    p_videoContentFrame->origin.y = y;
    p_videoContentFrame->size.width = width;
    p_videoContentFrame->size.height = height;
    playerLayerView = [(AVPlaybackContentContainerView *)self playerLayerView];
    window = [playerLayerView window];
    if (window)
    {
      v11 = window;
      window2 = [(AVPlaybackContentContainerView *)self window];
      playerLayerView2 = [(AVPlaybackContentContainerView *)self playerLayerView];
      window3 = [playerLayerView2 window];

      if (window2 != window3)
      {
        return;
      }
    }

    else
    {
    }

    playerLayerView3 = [(AVPlaybackContentContainerView *)self playerLayerView];
    [playerLayerView3 setFrame:{x, y, width, height}];

    contentOverlayView = [(AVPlaybackContentContainerView *)self contentOverlayView];
    [(AVPlaybackContentContainerView *)self bounds];
    [contentOverlayView setFrame:?];

    if (self->_statusBarBackgroundGradientView)
    {
      _frameForStatusBarBackgroundGradientView = [(AVPlaybackContentContainerView *)self _frameForStatusBarBackgroundGradientView];
      statusBarBackgroundGradientView = self->_statusBarBackgroundGradientView;

      [(AVStatusBarBackgroundGradientView *)statusBarBackgroundGradientView setFrame:_frameForStatusBarBackgroundGradientView];
    }
  }
}

- (void)setVisualAnalysisView:(id)view
{
  viewCopy = view;
  visualAnalysisView = self->_visualAnalysisView;
  if (visualAnalysisView != viewCopy)
  {
    v7 = viewCopy;
    [(AVVisualAnalysisView *)visualAnalysisView removeFromSuperview];
    objc_storeStrong(&self->_visualAnalysisView, view);
    [(AVPlaybackContentContainerView *)self _updateVisualAnalysisViewFrameIfNeeded];
    viewCopy = v7;
  }

  MEMORY[0x1EEE66BB8](visualAnalysisView, viewCopy);
}

- (void)setPlayerLayerView:(id)view
{
  viewCopy = view;
  playerLayerView = self->_playerLayerView;
  if (playerLayerView != viewCopy)
  {
    v8 = viewCopy;
    if (playerLayerView)
    {
      superview = [(__AVPlayerLayerView *)playerLayerView superview];

      if (superview)
      {
        [(__AVPlayerLayerView *)self->_playerLayerView removeFromSuperview];
      }
    }

    objc_storeStrong(&self->_playerLayerView, view);
    playerLayerView = [(AVPlaybackContentContainerView *)self setNeedsLayout];
    viewCopy = v8;
  }

  MEMORY[0x1EEE66BB8](playerLayerView, viewCopy);
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69DE850] object:*MEMORY[0x1E69DDA98]];

  v4.receiver = self;
  v4.super_class = AVPlaybackContentContainerView;
  [(AVPlaybackContentContainerView *)&v4 dealloc];
}

- (AVPlaybackContentContainerView)initWithFrame:(CGRect)frame playerLayerView:(id)view contentOverlayView:(id)overlayView
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  viewCopy = view;
  overlayViewCopy = overlayView;
  v19.receiver = self;
  v19.super_class = AVPlaybackContentContainerView;
  height = [(AVPlaybackContentContainerView *)&v19 initWithFrame:x, y, width, height];
  v15 = height;
  if (height)
  {
    [(AVPlaybackContentContainerView *)height setInsetsLayoutMarginsFromSafeArea:0];
    v15->_videoContentFrame.origin = *MEMORY[0x1E695EFF8];
    v15->_videoContentFrame.size.width = width;
    v15->_videoContentFrame.size.height = height;
    objc_storeStrong(&v15->_playerLayerView, view);
    if ([(AVPlaybackContentContainerView *)v15 isPlayingOnSecondScreen])
    {
      [(AVPlaybackContentContainerView *)v15 bounds];
    }

    else
    {
      [(AVPlaybackContentContainerView *)v15 videoContentFrame];
    }

    [viewCopy setFrame:?];
    v16 = overlayViewCopy;
    if (!overlayViewCopy)
    {
      v17 = objc_alloc(MEMORY[0x1E69DD250]);
      if ([(AVPlaybackContentContainerView *)v15 isPlayingOnSecondScreen])
      {
        [(AVPlaybackContentContainerView *)v15 bounds];
      }

      else
      {
        [(AVPlaybackContentContainerView *)v15 videoContentFrame];
      }

      v16 = [v17 initWithFrame:?];
    }

    objc_storeStrong(&v15->_contentOverlayView, v16);
    if (!overlayViewCopy)
    {
    }
  }

  return v15;
}

- (AVPlaybackContentContainerView)initWithFrame:(CGRect)frame activeContentView:(id)view
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  viewCopy = view;
  playerLayerView = [viewCopy playerLayerView];
  contentOverlayView = [viewCopy contentOverlayView];

  height = [(AVPlaybackContentContainerView *)self initWithFrame:playerLayerView playerLayerView:contentOverlayView contentOverlayView:x, y, width, height];
  return height;
}

@end