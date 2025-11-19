@interface AVPlaybackContentContainerView
- (AVPlaybackContentContainerView)initWithFrame:(CGRect)a3 activeContentView:(id)a4;
- (AVPlaybackContentContainerView)initWithFrame:(CGRect)a3 playerLayerView:(id)a4 contentOverlayView:(id)a5;
- (CGRect)videoContentFrame;
- (double)_frameForStatusBarBackgroundGradientView;
- (void)_updateStatusBarBackgroundGradientViewAlpha;
- (void)_updateVisualAnalysisViewFrameIfNeeded;
- (void)dealloc;
- (void)didMoveToSuperview;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)removeAllSublayerTransformAnimations;
- (void)setCanShowStatusBarBackgroundGradientWhenStatusBarVisible:(BOOL)a3;
- (void)setContentOverlayViewSubview:(id)a3;
- (void)setPlayerLayerView:(id)a3;
- (void)setVideoContentFrame:(CGRect)a3;
- (void)setVideoGravity:(int64_t)a3 removingAllSublayerTransformAnimations:(BOOL)a4;
- (void)setVisualAnalysisView:(id)a3;
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
  v4 = [MEMORY[0x1E69DCEB0] avkit_mainScreen];
  [v4 nativeBounds];
  v6 = v5;
  v8 = v7;
  [v4 bounds];
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

  v13 = [v4 traitCollection];
  [v13 displayScale];
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
    v19 = [(AVPlaybackContentContainerView *)self window];
    v20 = [v19 windowScene];
    v21 = [v20 statusBarManager];
    if (![v21 isStatusBarHidden])
    {
      v22 = v15 * v12;
      if (v17)
      {
        v2 = [(AVPlaybackContentContainerView *)self traitCollection];
        [v2 displayCornerRadius];
        if (v23 != 0.0 || v11 != v22)
        {
LABEL_28:

          goto LABEL_29;
        }

LABEL_19:
        v24 = [(AVPlaybackContentContainerView *)self window];
        v25 = [v24 screen];
        if (v25 == v4)
        {
          v35 = [(AVPlaybackContentContainerView *)self window];
          [v35 windowLevel];
          if (v26 < *MEMORY[0x1E69DE7E8])
          {
            v33 = [(AVPlaybackContentContainerView *)self window];
            v32 = [v33 windowScene];
            v31 = [v32 statusBarManager];
            v34 = [v31 statusBarStyle];

            if (v17)
            {
            }

            if (v34 == 1)
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
      v27 = [MEMORY[0x1E696AD88] defaultCenter];
      [v27 addObserver:self selector:sel__updateStatusBarBackgroundGradientViewAlpha name:*MEMORY[0x1E69DE850] object:*v16];
    }
  }

  v28 = [(AVPlaybackContentContainerView *)self statusBarBackgroundGradientView];
  [v28 setAlpha:v18];
}

void __77__AVPlaybackContentContainerView__updateStatusBarBackgroundGradientViewAlpha__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) statusBarBackgroundGradientView];
  [v2 setFrame:-[AVPlaybackContentContainerView _frameForStatusBarBackgroundGradientView](*(a1 + 32))];
}

- (double)_frameForStatusBarBackgroundGradientView
{
  if (!a1)
  {
    return 0.0;
  }

  if ([a1 isPlayingOnSecondScreen])
  {
    [a1 bounds];
  }

  else
  {
    [a1 videoContentFrame];
  }

  v6 = v2;
  v7 = v3;
  v8 = v4;
  v30 = v5;
  v9 = [a1 window];
  v10 = [v9 windowScene];
  v11 = [v10 statusBarManager];
  [v11 statusBarFrame];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  v20 = [a1 window];
  [v20 convertRect:a1 toView:{v13, v15, v17, v19}];
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;

  if (([a1 isPlayingOnSecondScreen] & 1) == 0)
  {
    if ([a1 canShowStatusBarBackgroundGradientWhenStatusBarVisible])
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
  v3 = [(AVPlaybackContentContainerView *)self playerLayerView];
  v4 = [v3 window];
  if (v4)
  {
    v5 = [(AVPlaybackContentContainerView *)self window];
    v6 = [(AVPlaybackContentContainerView *)self playerLayerView];
    v7 = [v6 window];
    v8 = v5 == v7;
  }

  else
  {
    v8 = 1;
  }

  v9 = self->_statusBarBackgroundGradientView;
  if (v8)
  {
    v10 = [(AVPlaybackContentContainerView *)self playerLayerView];
    [v10 setAutoresizingMask:0];

    v11 = [(AVPlaybackContentContainerView *)self playerLayerView];
    [v11 setTranslatesAutoresizingMaskIntoConstraints:1];

    v12 = [(AVPlaybackContentContainerView *)self playerLayerView];
    if ([(AVPlaybackContentContainerView *)self isPlayingOnSecondScreen])
    {
      [(AVPlaybackContentContainerView *)self bounds];
    }

    else
    {
      [(AVPlaybackContentContainerView *)self videoContentFrame];
    }

    [v12 setFrame:?];
  }

  v13 = [(AVPlaybackContentContainerView *)self contentOverlayView];
  [v13 setAutoresizingMask:0];

  v14 = [(AVPlaybackContentContainerView *)self contentOverlayView];
  [v14 setTranslatesAutoresizingMaskIntoConstraints:1];

  v15 = [(AVPlaybackContentContainerView *)self contentOverlayView];
  [(AVPlaybackContentContainerView *)self bounds];
  [v15 setFrame:?];

  v16 = [(AVPlaybackContentContainerView *)self contentOverlayViewSubview];
  [v16 setAutoresizingMask:0];

  v17 = [(AVPlaybackContentContainerView *)self contentOverlayViewSubview];
  [v17 setTranslatesAutoresizingMaskIntoConstraints:1];

  v18 = [(AVPlaybackContentContainerView *)self contentOverlayViewSubview];
  [(AVPlaybackContentContainerView *)self bounds];
  [v18 setFrame:?];

  if (v9)
  {
    [(AVStatusBarBackgroundGradientView *)v9 setAutoresizingMask:0];
    [(AVStatusBarBackgroundGradientView *)v9 setTranslatesAutoresizingMaskIntoConstraints:1];
    [(AVStatusBarBackgroundGradientView *)v9 setFrame:[(AVPlaybackContentContainerView *)self _frameForStatusBarBackgroundGradientView]];
  }

  if (v8)
  {
    v19 = [(AVPlaybackContentContainerView *)self playerLayerView];
    v20 = [v19 superview];

    if (v20 != self)
    {
      v21 = [(AVPlaybackContentContainerView *)self playerLayerView];
      [(AVPlaybackContentContainerView *)self insertSubview:v21 atIndex:0];
    }
  }

  v22 = [(AVPlaybackContentContainerView *)self contentOverlayView];
  v23 = [v22 superview];

  if (v23 != self)
  {
    v24 = [(AVPlaybackContentContainerView *)self contentOverlayView];
    v25 = [(AVPlaybackContentContainerView *)self subviews];
    -[AVPlaybackContentContainerView insertSubview:atIndex:](self, "insertSubview:atIndex:", v24, [v25 count]);
  }

  if (v9)
  {
    v26 = [(AVStatusBarBackgroundGradientView *)v9 superview];

    if (v26 != self)
    {
      v27 = [(AVPlaybackContentContainerView *)self subviews];
      -[AVPlaybackContentContainerView insertSubview:atIndex:](self, "insertSubview:atIndex:", v9, [v27 count]);
    }
  }

  [(AVPlaybackContentContainerView *)self _updateVisualAnalysisViewFrameIfNeeded];
}

- (void)_updateVisualAnalysisViewFrameIfNeeded
{
  if (a1)
  {
    v2 = a1[52];
    if (v2)
    {
      v25 = v2;
      v3 = [a1 playerLayerView];
      v4 = [v3 playerController];
      [v4 contentDimensions];
      v6 = v5;
      v8 = v7;

      [a1 bounds];
      v23 = v9;
      v24 = v10;
      v12 = v11;
      v14 = v13;
      v15 = [a1 playerLayerView];
      v16 = [v15 isVideoScaled];
      v17 = *MEMORY[0x1E695F058];
      v18 = *(MEMORY[0x1E695F058] + 8);
      v19 = *(MEMORY[0x1E695F058] + 16);
      v20 = *(MEMORY[0x1E695F058] + 24);
      if (v8 != 0.0 && v6 != 0.0)
      {
        v21 = v12 / v6;
        if (v16 == v12 / v6 < v14 / v8)
        {
          v21 = v14 / v8;
        }

        CGAffineTransformMakeScale(&v26, v21, v21);
        v19 = v8 * v26.c + v26.a * v6;
        v20 = v8 * v26.d + v26.b * v6;
        v17 = v23 - (v19 - v12) * 0.5;
        v18 = v24 - (v20 - v14) * 0.5;
      }

      v22 = [a1 subviews];
      [a1 insertSubview:v25 atIndex:{objc_msgSend(v22, "count")}];

      [v25 setFrame:{v17, v18, v19, v20}];
    }
  }
}

- (void)removeAllSublayerTransformAnimations
{
  v3 = [(AVPlaybackContentContainerView *)self playerLayerView];
  v2 = [v3 layer];
  [v2 avkit_removeAllSublayerTransformAnimations];
}

- (void)setVideoGravity:(int64_t)a3 removingAllSublayerTransformAnimations:(BOOL)a4
{
  v4 = a4;
  v7 = [(AVPlaybackContentContainerView *)self playerLayerView];
  [v7 setVideoGravity:a3];

  if (v4)
  {
    v8 = [(AVPlaybackContentContainerView *)self playerLayerView];
    v9 = [v8 layer];
    [v9 avkit_removeAllSublayerTransformAnimations];
  }

  [(AVPlaybackContentContainerView *)self _updateVisualAnalysisViewFrameIfNeeded];
}

- (void)setContentOverlayViewSubview:(id)a3
{
  v5 = a3;
  contentOverlayViewSubview = self->_contentOverlayViewSubview;
  if (contentOverlayViewSubview != v5)
  {
    v9 = v5;
    [(UIView *)contentOverlayViewSubview removeFromSuperview];
    objc_storeStrong(&self->_contentOverlayViewSubview, a3);
    v5 = v9;
    if (v9)
    {
      v7 = [(AVPlaybackContentContainerView *)self contentOverlayView];

      v5 = v9;
      if (v7 != v9)
      {
        v8 = [(AVPlaybackContentContainerView *)self contentOverlayView];
        [v8 addSubview:v9];

        [(AVPlaybackContentContainerView *)self setNeedsLayout];
        contentOverlayViewSubview = [(AVPlaybackContentContainerView *)self layoutIfNeeded];
        v5 = v9;
      }
    }
  }

  MEMORY[0x1EEE66BB8](contentOverlayViewSubview, v5);
}

- (void)setCanShowStatusBarBackgroundGradientWhenStatusBarVisible:(BOOL)a3
{
  if (self->_canShowStatusBarBackgroundGradientWhenStatusBarVisible != a3)
  {
    self->_canShowStatusBarBackgroundGradientWhenStatusBarVisible = a3;
    if (a3)
    {
      v5 = [(AVPlaybackContentContainerView *)self statusBarBackgroundGradientView];
      [v5 setFrame:-[AVPlaybackContentContainerView _frameForStatusBarBackgroundGradientView](self)];
    }

    [(AVPlaybackContentContainerView *)self _updateStatusBarBackgroundGradientViewAlpha];
  }
}

- (void)setVideoContentFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  p_videoContentFrame = &self->_videoContentFrame;
  if (!CGRectEqualToRect(self->_videoContentFrame, a3))
  {
    p_videoContentFrame->origin.x = x;
    p_videoContentFrame->origin.y = y;
    p_videoContentFrame->size.width = width;
    p_videoContentFrame->size.height = height;
    v9 = [(AVPlaybackContentContainerView *)self playerLayerView];
    v10 = [v9 window];
    if (v10)
    {
      v11 = v10;
      v12 = [(AVPlaybackContentContainerView *)self window];
      v13 = [(AVPlaybackContentContainerView *)self playerLayerView];
      v14 = [v13 window];

      if (v12 != v14)
      {
        return;
      }
    }

    else
    {
    }

    v15 = [(AVPlaybackContentContainerView *)self playerLayerView];
    [v15 setFrame:{x, y, width, height}];

    v16 = [(AVPlaybackContentContainerView *)self contentOverlayView];
    [(AVPlaybackContentContainerView *)self bounds];
    [v16 setFrame:?];

    if (self->_statusBarBackgroundGradientView)
    {
      v17 = [(AVPlaybackContentContainerView *)self _frameForStatusBarBackgroundGradientView];
      statusBarBackgroundGradientView = self->_statusBarBackgroundGradientView;

      [(AVStatusBarBackgroundGradientView *)statusBarBackgroundGradientView setFrame:v17];
    }
  }
}

- (void)setVisualAnalysisView:(id)a3
{
  v5 = a3;
  visualAnalysisView = self->_visualAnalysisView;
  if (visualAnalysisView != v5)
  {
    v7 = v5;
    [(AVVisualAnalysisView *)visualAnalysisView removeFromSuperview];
    objc_storeStrong(&self->_visualAnalysisView, a3);
    [(AVPlaybackContentContainerView *)self _updateVisualAnalysisViewFrameIfNeeded];
    v5 = v7;
  }

  MEMORY[0x1EEE66BB8](visualAnalysisView, v5);
}

- (void)setPlayerLayerView:(id)a3
{
  v5 = a3;
  playerLayerView = self->_playerLayerView;
  if (playerLayerView != v5)
  {
    v8 = v5;
    if (playerLayerView)
    {
      v7 = [(__AVPlayerLayerView *)playerLayerView superview];

      if (v7)
      {
        [(__AVPlayerLayerView *)self->_playerLayerView removeFromSuperview];
      }
    }

    objc_storeStrong(&self->_playerLayerView, a3);
    playerLayerView = [(AVPlaybackContentContainerView *)self setNeedsLayout];
    v5 = v8;
  }

  MEMORY[0x1EEE66BB8](playerLayerView, v5);
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x1E69DE850] object:*MEMORY[0x1E69DDA98]];

  v4.receiver = self;
  v4.super_class = AVPlaybackContentContainerView;
  [(AVPlaybackContentContainerView *)&v4 dealloc];
}

- (AVPlaybackContentContainerView)initWithFrame:(CGRect)a3 playerLayerView:(id)a4 contentOverlayView:(id)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v12 = a4;
  v13 = a5;
  v19.receiver = self;
  v19.super_class = AVPlaybackContentContainerView;
  v14 = [(AVPlaybackContentContainerView *)&v19 initWithFrame:x, y, width, height];
  v15 = v14;
  if (v14)
  {
    [(AVPlaybackContentContainerView *)v14 setInsetsLayoutMarginsFromSafeArea:0];
    v15->_videoContentFrame.origin = *MEMORY[0x1E695EFF8];
    v15->_videoContentFrame.size.width = width;
    v15->_videoContentFrame.size.height = height;
    objc_storeStrong(&v15->_playerLayerView, a4);
    if ([(AVPlaybackContentContainerView *)v15 isPlayingOnSecondScreen])
    {
      [(AVPlaybackContentContainerView *)v15 bounds];
    }

    else
    {
      [(AVPlaybackContentContainerView *)v15 videoContentFrame];
    }

    [v12 setFrame:?];
    v16 = v13;
    if (!v13)
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
    if (!v13)
    {
    }
  }

  return v15;
}

- (AVPlaybackContentContainerView)initWithFrame:(CGRect)a3 activeContentView:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  v10 = [v9 playerLayerView];
  v11 = [v9 contentOverlayView];

  v12 = [(AVPlaybackContentContainerView *)self initWithFrame:v10 playerLayerView:v11 contentOverlayView:x, y, width, height];
  return v12;
}

@end