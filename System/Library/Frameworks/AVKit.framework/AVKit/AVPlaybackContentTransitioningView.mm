@interface AVPlaybackContentTransitioningView
- (AVPlaybackContentTransitioningView)initWithFrame:(CGRect)a3 activeContentView:(id)a4;
- (AVPlaybackContentTransitioningViewDelegate)contentTransitioningDelegate;
- (BOOL)_canTransitionFromState:(int64_t)a3 toState:(int64_t)a4;
- (BOOL)canShowStatusBarBackgroundGradientWhenStatusBarVisible;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (CGRect)_frameExcludingActiveContent;
- (CGRect)_frameExcludingTransitioningContent;
- (CGRect)frameForActiveContentView;
- (CGRect)frameForTransitioningContentView;
- (CGRect)videoContentFrame;
- (id)_descriptionForState:(int64_t)a3;
- (id)_makeStateDescription;
- (void)_ensureContentViews;
- (void)_performBoundsOrContentSizeAdjustment:(id)a3;
- (void)_setTransitionState:(id)a3 transitionDirection:(id)a4 transitionProgress:(id)a5;
- (void)_updateSizeAndContentFrame;
- (void)_updateTransitionStateIfPossible;
- (void)performTransition:(int64_t)a3;
- (void)scrollViewDidEndDecelerating:(id)a3;
- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4;
- (void)scrollViewWillBeginDragging:(id)a3;
- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5;
- (void)setCanShowStatusBarBackgroundGradientWhenStatusBarVisible:(BOOL)a3;
- (void)setDelegate:(id)a3;
- (void)setFrame:(CGRect)a3;
- (void)setPlayingOnSecondScreen:(BOOL)a3;
- (void)setStateDescription:(id)a3;
- (void)setVideoContentFrame:(CGRect)a3;
- (void)setVideoGravity:(int64_t)a3 removingAllSublayerTransformAnimations:(BOOL)a4;
@end

@implementation AVPlaybackContentTransitioningView

- (CGRect)frameForTransitioningContentView
{
  x = self->_frameForTransitioningContentView.origin.x;
  y = self->_frameForTransitioningContentView.origin.y;
  width = self->_frameForTransitioningContentView.size.width;
  height = self->_frameForTransitioningContentView.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)frameForActiveContentView
{
  x = self->_frameForActiveContentView.origin.x;
  y = self->_frameForActiveContentView.origin.y;
  width = self->_frameForActiveContentView.size.width;
  height = self->_frameForActiveContentView.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (AVPlaybackContentTransitioningViewDelegate)contentTransitioningDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_contentTransitioningDelegate);

  return WeakRetained;
}

- (id)_makeStateDescription
{
  v3 = [(AVPlaybackContentTransitioningView *)self _descriptionForState:[(AVPlaybackContentTransitioningView *)self transitionState]];
  v4 = [(AVPlaybackContentTransitioningView *)self transitionDirection];
  if (v4 > 3)
  {
    v5 = 0;
  }

  else
  {
    v5 = off_1E72085C0[v4];
  }

  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@", v3, v5];

  return v6;
}

- (id)_descriptionForState:(int64_t)a3
{
  if (a3 > 7)
  {
    return 0;
  }

  else
  {
    return off_1E7208580[a3];
  }
}

- (void)setStateDescription:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (![(NSString *)self->_stateDescription isEqualToString:v4])
  {
    v5 = [v4 copy];
    stateDescription = self->_stateDescription;
    self->_stateDescription = v5;

    v7 = _AVLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = self->_stateDescription;
      [(AVPlaybackContentTransitioningView *)self contentOffset];
      v9 = NSStringFromCGPoint(v23);
      [(AVPlaybackContentTransitioningView *)self frameForActiveContentView];
      v10 = NSStringFromCGPoint(v24);
      [(AVPlaybackContentTransitioningView *)self frameForTransitioningContentView];
      v11 = NSStringFromCGPoint(v25);
      v12 = 136316162;
      v13 = "[AVPlaybackContentTransitioningView setStateDescription:]";
      v14 = 2112;
      v15 = v8;
      v16 = 2112;
      v17 = v9;
      v18 = 2112;
      v19 = v10;
      v20 = 2112;
      v21 = v11;
      _os_log_impl(&dword_18B49C000, v7, OS_LOG_TYPE_DEFAULT, "%s %@ Offset: %@ ActiveOrigin: %@ TransitioningOrigin: %@", &v12, 0x34u);
    }
  }
}

- (BOOL)_canTransitionFromState:(int64_t)a3 toState:(int64_t)a4
{
  if (a4 > 3)
  {
    v4 = 0x48u >> a3;
    if (a3 >= 8)
    {
      LOBYTE(v4) = 0;
    }

    v9 = 0x40u >> a3;
    if (a3 >= 8)
    {
      LOBYTE(v9) = 0;
    }

    if (a4 != 7)
    {
      LOBYTE(v9) = 0;
    }

    if (a4 != 6)
    {
      LOBYTE(v4) = v9;
    }

    v6 = 0x18u >> a3;
    if (a3 >= 8)
    {
      LOBYTE(v6) = 0;
    }

    v10 = 0x10u >> a3;
    if (a3 >= 8)
    {
      LOBYTE(v10) = 0;
    }

    if (a4 != 5)
    {
      LOBYTE(v10) = 0;
    }

    if (a4 != 4)
    {
      LOBYTE(v6) = v10;
    }

    v8 = a4 <= 5;
  }

  else
  {
    v4 = 6u >> a3;
    if (a3 >= 8)
    {
      LOBYTE(v4) = 0;
    }

    v5 = 0x5Au >> a3;
    if (a3 >= 8)
    {
      LOBYTE(v5) = 0;
    }

    if (a4 != 3)
    {
      LOBYTE(v5) = 0;
    }

    if (a4 != 2)
    {
      LOBYTE(v4) = v5;
    }

    v6 = 0xA5u >> a3;
    if (a3 >= 8)
    {
      LOBYTE(v6) = 0;
    }

    v7 = 1u >> a3;
    if (a3 >= 8)
    {
      LOBYTE(v7) = 0;
    }

    if (a4 != 1)
    {
      LOBYTE(v7) = 0;
    }

    if (a4)
    {
      LOBYTE(v6) = v7;
    }

    v8 = a4 <= 1;
  }

  if (v8)
  {
    LOBYTE(v4) = v6;
  }

  return v4 & 1;
}

- (CGRect)_frameExcludingTransitioningContent
{
  v3 = MEMORY[0x1E695EFF8];
  v4 = *(MEMORY[0x1E695EFF8] + 8);
  [(AVPlaybackContentTransitioningView *)self contentSize];
  v6 = v5;
  v8 = v7;
  [(AVPlaybackContentTransitioningView *)self frameForTransitioningContentView];
  Width = CGRectGetWidth(v14);
  [(AVPlaybackContentTransitioningView *)self frameForTransitioningContentView];
  if (CGRectGetMinX(v15) == 0.0)
  {
    [(AVPlaybackContentTransitioningView *)self frameForTransitioningContentView];
    MaxX = CGRectGetMaxX(v16);
  }

  else
  {
    MaxX = *v3;
  }

  v11 = v6 - Width;
  v12 = v4;
  v13 = v8;
  result.size.height = v13;
  result.size.width = v11;
  result.origin.y = v12;
  result.origin.x = MaxX;
  return result;
}

- (CGRect)_frameExcludingActiveContent
{
  v3 = MEMORY[0x1E695EFF8];
  v4 = *(MEMORY[0x1E695EFF8] + 8);
  [(AVPlaybackContentTransitioningView *)self contentSize];
  v6 = v5;
  v8 = v7;
  [(AVPlaybackContentTransitioningView *)self frameForActiveContentView];
  Width = CGRectGetWidth(v14);
  [(AVPlaybackContentTransitioningView *)self frameForActiveContentView];
  if (CGRectGetMinX(v15) == 0.0)
  {
    [(AVPlaybackContentTransitioningView *)self frameForActiveContentView];
    MaxX = CGRectGetMaxX(v16);
  }

  else
  {
    MaxX = *v3;
  }

  v11 = v6 - Width;
  v12 = v4;
  v13 = v8;
  result.size.height = v13;
  result.size.width = v11;
  result.origin.y = v12;
  result.origin.x = MaxX;
  return result;
}

- (void)_ensureContentViews
{
  v3 = [(AVPlaybackContentTransitioningView *)self activeContentView];
  [(AVPlaybackContentTransitioningView *)self frameForActiveContentView];
  [v3 setFrame:?];

  v4 = [(AVPlaybackContentTransitioningView *)self incomingContentView];
  [(AVPlaybackContentTransitioningView *)self frameForTransitioningContentView];
  [v4 setFrame:?];

  v5 = [(AVPlaybackContentTransitioningView *)self activeContentView];
  v6 = [v5 superview];

  if (v6 != self)
  {
    v7 = [(AVPlaybackContentTransitioningView *)self activeContentView];
    [(AVPlaybackContentTransitioningView *)self addSubview:v7];
  }

  v8 = [(AVPlaybackContentTransitioningView *)self incomingContentView];
  if (v8)
  {
    v9 = v8;
    v10 = [(AVPlaybackContentTransitioningView *)self incomingContentView];
    v11 = [v10 superview];

    if (v11 != self)
    {
      v12 = [(AVPlaybackContentTransitioningView *)self incomingContentView];
      [(AVPlaybackContentTransitioningView *)self addSubview:v12];
    }
  }
}

- (void)_updateSizeAndContentFrame
{
  [(AVPlaybackContentTransitioningView *)self frameForActiveContentView];
  *v58 = v3;
  *&v58[8] = v4;
  *&v58[16] = v5;
  *&v58[24] = v6;
  [(AVPlaybackContentTransitioningView *)self frameForTransitioningContentView];
  v8 = v7;
  v55 = v10;
  v56 = v9;
  v54 = v11;
  v12 = *(MEMORY[0x1E695EFF8] + 8);
  v57 = *MEMORY[0x1E695EFF8];
  [(AVPlaybackContentTransitioningView *)self bounds];
  v14 = v13;
  v16 = v15;
  v18 = *MEMORY[0x1E695F058];
  v17 = *(MEMORY[0x1E695F058] + 8);
  v19 = *(MEMORY[0x1E695F058] + 16);
  v20 = *(MEMORY[0x1E695F058] + 24);
  v21 = [(AVPlaybackContentTransitioningView *)self transitionState];
  if (v21 <= 6 && ((1 << v21) & 0x58) != 0)
  {
    v22 = [(AVPlaybackContentTransitioningView *)self transitionDirection];
    if (v22 == 3)
    {
      [(AVPlaybackContentTransitioningView *)self _interpageSpacing];
      v28 = v27;
      v61.origin.x = v57;
      v61.origin.y = v12;
      v61.size.width = v14;
      v61.size.height = v16;
      v18 = v28 + CGRectGetWidth(v61);
      v20 = v16;
      v19 = v14;
      v23 = v12;
      v24 = v57;
    }

    else if (v22 == 2)
    {
      [(AVPlaybackContentTransitioningView *)self _interpageSpacing];
      v26 = v25;
      v60.origin.x = v18;
      v60.origin.y = v17;
      v60.size.width = v14;
      v60.size.height = v16;
      v24 = v26 + CGRectGetWidth(v60);
      v20 = v16;
      v19 = v14;
      v23 = v12;
    }

    else
    {
      if (v22 == 1)
      {
        v20 = v54;
        v19 = v55;
        v17 = v56;
        v18 = v8;
        v16 = *&v58[24];
        v14 = *&v58[16];
        v23 = *&v58[8];
      }

      else
      {
        v23 = v12;
      }

      v24 = v57;
      if (v22 == 1)
      {
        v24 = *v58;
      }
    }
  }

  else
  {
    v23 = v12;
    v24 = v57;
  }

  [(AVPlaybackContentTransitioningView *)self setFrameForActiveContentView:v24, v23, v14, v16];
  [(AVPlaybackContentTransitioningView *)self setFrameForTransitioningContentView:v18, v17, v19, v20];
  [(AVPlaybackContentTransitioningView *)self bounds];
  v30 = v29;
  v32 = v31;
  v33 = [(AVPlaybackContentTransitioningView *)self transitionState];
  if ((v33 - 3) < 2)
  {
LABEL_16:
    [(AVPlaybackContentTransitioningView *)self bounds];
    Width = CGRectGetWidth(v62);
    [(AVPlaybackContentTransitioningView *)self _interpageSpacing];
    v30 = v35 + Width * 2.0;
    goto LABEL_18;
  }

  if (v33 != 7)
  {
    if (v33 != 6)
    {
      goto LABEL_18;
    }

    goto LABEL_16;
  }

  *&v58[16] = v55;
  *&v58[24] = v54;
  *v58 = v8;
  *&v58[8] = v56;
LABEL_18:
  [(AVPlaybackContentTransitioningView *)self contentSize];
  if (v30 != v37 || v32 != v36)
  {
    [(AVPlaybackContentTransitioningView *)self contentOffset];
    v40 = v39;
    [(AVPlaybackContentTransitioningView *)self setContentSize:v30, v32];
    [(AVPlaybackContentTransitioningView *)self bounds];
    if (v30 > CGRectGetWidth(v63))
    {
      [(AVPlaybackContentTransitioningView *)self bounds];
      *&v58[16] = v41;
      *&v58[24] = v42;
      *v58 = v57;
      *&v58[8] = v12;
    }

    v43 = CGRectGetMinX(*v58) - v40;
    [(AVPlaybackContentTransitioningView *)self frameForActiveContentView];
    MinX = CGRectGetMinX(v64);
    [(AVPlaybackContentTransitioningView *)self contentOffset];
    v46 = MinX - v45;
    [(AVPlaybackContentTransitioningView *)self contentOffset];
    v48 = v47;
    v50 = v49 + v46 - v43;
    [(AVPlaybackContentTransitioningView *)self contentOffset];
    if (v50 != v52 || v48 != v51)
    {
      [(AVPlaybackContentTransitioningView *)self setContentOffset:v50, v48];
    }
  }

  [(AVPlaybackContentTransitioningView *)self _ensureContentViews];
}

- (void)_performBoundsOrContentSizeAdjustment:(id)a3
{
  v4 = a3;
  [(AVPlaybackContentTransitioningView *)self setBoundsOrContentSizeAdjustmentCount:[(AVPlaybackContentTransitioningView *)self boundsOrContentSizeAdjustmentCount]+ 1];
  v4[2](v4);

  v5 = [(AVPlaybackContentTransitioningView *)self boundsOrContentSizeAdjustmentCount]- 1;

  [(AVPlaybackContentTransitioningView *)self setBoundsOrContentSizeAdjustmentCount:v5];
}

- (void)_updateTransitionStateIfPossible
{
  if ([(AVPlaybackContentTransitioningView *)self _isAdjustingBoundsOrContentSize])
  {
    return;
  }

  v3 = [(AVPlaybackContentTransitioningView *)self transitionState];
  if (v3 <= 7 && ((1 << v3) & 0xA7) != 0)
  {
    if (([(AVPlaybackContentTransitioningView *)self _isHorizontalBouncing]& 1) != 0)
    {
      v4 = &unk_1EFF12AA0;
      goto LABEL_14;
    }

    [(AVPlaybackContentTransitioningView *)self contentOffset];
    v6 = v5;
    v8 = v7;
    [(AVPlaybackContentTransitioningView *)self frameForActiveContentView];
    if (v6 == v10 && v8 == v9)
    {
      v4 = &unk_1EFF12AE8;
      goto LABEL_14;
    }

    v11 = MEMORY[0x1E696AD98];
    [(AVPlaybackContentTransitioningView *)self contentOffset];
    v13 = v12;
    [(AVPlaybackContentTransitioningView *)self frameForActiveContentView];
    if (v13 <= CGRectGetMinX(v25))
    {
      v14 = 2;
    }

    else
    {
      v14 = 3;
    }
  }

  else
  {
    v11 = MEMORY[0x1E696AD98];
    v14 = [(AVPlaybackContentTransitioningView *)self transitionDirection];
  }

  v4 = [v11 numberWithInteger:v14];
LABEL_14:
  v23 = v4;
  [(AVPlaybackContentTransitioningView *)self contentSize];
  v16 = v15;
  [(AVPlaybackContentTransitioningView *)self frameForActiveContentView];
  v17 = v16 - CGRectGetWidth(v26);
  if (v17 > 0.0)
  {
    v18 = [v23 integerValue];
    if (v18 == 3)
    {
      v19 = MEMORY[0x1E696AD98];
      [(AVPlaybackContentTransitioningView *)self contentOffset];
      goto LABEL_20;
    }

    if (v18 == 2)
    {
      v19 = MEMORY[0x1E696AD98];
      [(AVPlaybackContentTransitioningView *)self contentOffset];
      v21 = v17 - v20;
LABEL_20:
      v22 = [v19 numberWithDouble:v21 / v17];
      goto LABEL_21;
    }
  }

  v22 = 0;
LABEL_21:
  [(AVPlaybackContentTransitioningView *)self _setTransitionState:0 transitionDirection:v23 transitionProgress:v22];
}

- (void)performTransition:(int64_t)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = [(AVPlaybackContentTransitioningView *)self transitionState];
  if ((v5 - 1) >= 7)
  {
    if (!v5)
    {
      v7 = *(MEMORY[0x1E695EFF8] + 8);
      if (a3 == 2)
      {
        [(AVPlaybackContentTransitioningView *)self bounds];
        Width = CGRectGetWidth(v21);
        [(AVPlaybackContentTransitioningView *)self _interpageSpacing];
        v10 = Width + v9;
      }

      else if (a3 == 3)
      {
        [(AVPlaybackContentTransitioningView *)self bounds];
        v11 = CGRectGetWidth(v22);
        [(AVPlaybackContentTransitioningView *)self _interpageSpacing];
        v10 = -(v11 + v12);
      }

      else
      {
        v10 = *MEMORY[0x1E695EFF8];
      }

      v14 = [MEMORY[0x1E696B098] valueWithCGPoint:{v10, v7}];
      [(AVPlaybackContentTransitioningView *)self setTargetContentOffset:v14];

      [(AVPlaybackContentTransitioningView *)self setContentOffset:1 animated:v10, v7];
    }
  }

  else
  {
    v6 = _AVLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v13 = [(AVPlaybackContentTransitioningView *)self stateDescription];
      v15 = 138412546;
      v16 = self;
      v17 = 2112;
      v18 = v13;
      _os_log_error_impl(&dword_18B49C000, v6, OS_LOG_TYPE_ERROR, "Instance %@ attempted content transition while one was already active. Ignoring. %@", &v15, 0x16u);
    }
  }
}

- (void)_setTransitionState:(id)a3 transitionDirection:(id)a4 transitionProgress:(id)a5
{
  v167 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v161 = v8;
  if ([(AVPlaybackContentTransitioningView *)self _isAdjustingBoundsOrContentSize])
  {
    v11 = _AVLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_18B49C000, v11, OS_LOG_TYPE_ERROR, "Attempt to transition while adjusting bounds.", buf, 2u);
    }

    v8 = v161;
  }

  transitionState = self->_transitionState;
  transitionDirection = self->_transitionDirection;
  transitionProgress = self->_transitionProgress;
  v15 = transitionState;
  if (v8)
  {
    v15 = [v8 integerValue];
  }

  v16 = transitionDirection;
  if (v9)
  {
    v16 = [v9 integerValue];
  }

  v17 = transitionProgress;
  if (v10)
  {
    [v10 doubleValue];
    v17 = v18;
  }

  v160 = v10;
  v19 = v9;
  if (![(AVPlaybackContentTransitioningView *)self _canTransitionFromState:transitionState toState:v15])
  {
    v20 = _AVLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v159 = [(AVPlaybackContentTransitioningView *)self _descriptionForState:transitionState];
      v158 = [(AVPlaybackContentTransitioningView *)self _descriptionForState:v15];
      *buf = 138412546;
      v164 = v159;
      v165 = 2112;
      v166 = v158;
      _os_log_error_impl(&dword_18B49C000, v20, OS_LOG_TYPE_ERROR, "Invalid state transition from %@ to %@.", buf, 0x16u);
    }
  }

  if (v15 <= 7)
  {
    if (((1 << v15) & 0x27) != 0)
    {
      v17 = 0.0;
    }

    else if (((1 << v15) & 0x58) != 0)
    {
      v17 = fmin(fmax(v17, 0.0), 1.0);
    }

    else
    {
      v17 = 1.0;
    }
  }

  self->_transitionDirection = v16;
  self->_transitionProgress = v17;
  self->_transitionState = v15;
  v162[0] = MEMORY[0x1E69E9820];
  v162[1] = 3221225472;
  v162[2] = __97__AVPlaybackContentTransitioningView__setTransitionState_transitionDirection_transitionProgress___block_invoke;
  v162[3] = &unk_1E7208ED8;
  v162[5] = v15;
  v162[6] = transitionState;
  v162[4] = self;
  [(AVPlaybackContentTransitioningView *)self _performBoundsOrContentSizeAdjustment:v162];
  v21 = [(AVPlaybackContentTransitioningView *)self _makeStateDescription];
  [(AVPlaybackContentTransitioningView *)self setStateDescription:v21];

  v22 = [(AVPlaybackContentTransitioningView *)self contentTransitioningDelegate];
  [v22 contentTransitioningViewDidChangeTransitionStatus:self oldState:transitionState oldTransitionDirection:transitionDirection oldProgress:transitionProgress];

  if (v15 != self->_transitionState)
  {
    v23 = _AVLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_18B49C000, v23, OS_LOG_TYPE_ERROR, "This is where the problem is.", buf, 2u);
    }
  }

  if (v15 <= 3)
  {
    v24 = v19;
    if (v15 <= 1)
    {
      if (v15)
      {
        if (v15 == 1)
        {
          if (!v16)
          {
            v25 = _AVLog();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&dword_18B49C000, v25, OS_LOG_TYPE_ERROR, "Invalid state transition", buf, 2u);
            }
          }

          v26 = [(AVPlaybackContentTransitioningView *)self contentTransitioningDelegate];
          v27 = [v26 contentTransitioningView:self shouldBeginTransitionWithDirection:v16];

          if (v27)
          {
            v28 = [(AVPlaybackContentTransitioningView *)self contentTransitioningDelegate];
            v29 = [v28 contentTransitioningPlayerContentViewForTransition:self];
            incomingContentView = self->_incomingContentView;
            self->_incomingContentView = v29;

            v31 = [(AVPlaybackContentTransitioningView *)self incomingContentView];
            [v31 setPlayingOnSecondScreen:{-[AVPlaybackContentTransitioningView isPlayingOnSecondScreen](self, "isPlayingOnSecondScreen")}];

            v32 = [(AVPlaybackContentTransitioningView *)self incomingContentView];
            v33 = [(AVPlaybackContentTransitioningView *)self activeContentView];
            [v32 setCanShowStatusBarBackgroundGradientWhenStatusBarVisible:{objc_msgSend(v33, "canShowStatusBarBackgroundGradientWhenStatusBarVisible")}];

            v34 = [(AVPlaybackContentTransitioningView *)self incomingContentView];
            v35 = [v34 playerLayerView];
            v36 = [(AVPlaybackContentTransitioningView *)self activeContentView];
            v37 = [v36 playerLayerView];
            [v35 setVideoGravity:{objc_msgSend(v37, "videoGravity")}];

LABEL_108:
            v38 = &unk_1EFF12AB8;
            goto LABEL_118;
          }

          v38 = &unk_1EFF12AD0;
          goto LABEL_73;
        }

        goto LABEL_120;
      }

      if (!v16)
      {
        goto LABEL_120;
      }

      v38 = &unk_1EFF12AA0;
LABEL_118:
      v130 = self;
      v131 = 0;
      v52 = 0;
      goto LABEL_119;
    }

    if (v15 == 2)
    {
      v91 = [(AVPlaybackContentTransitioningView *)self targetContentOffset];

      if (v91)
      {
        [(AVPlaybackContentTransitioningView *)self setTargetContentOffset:0];
        [(AVPlaybackContentTransitioningView *)self setContentOffset:0 animated:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)];
        goto LABEL_120;
      }

      if (transitionDirection == v16)
      {
        goto LABEL_120;
      }

      v38 = &unk_1EFF12AE8;
      goto LABEL_118;
    }

    if (!v16 && transitionState != 3)
    {
      v39 = _AVLog();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_18B49C000, v39, OS_LOG_TYPE_ERROR, "Invalid state transition", buf, 2u);
      }
    }

    v40 = [(AVPlaybackContentTransitioningView *)self targetContentOffset];
    if (v40)
    {
      v41 = [(AVPlaybackContentTransitioningView *)self targetContentOffset];
      [v41 CGPointValue];
      [(AVPlaybackContentTransitioningView *)self frameForActiveContentView];
      v42 = self;
      UIPointRoundToViewScale();
      v44 = v43;
      v46 = v45;
      UIPointRoundToViewScale();
      v48 = v47;
      v50 = v49;

      v51 = v46 == v50 && v44 == v48;
    }

    else
    {
      v51 = 0;
    }

    v132 = [(AVPlaybackContentTransitioningView *)self targetContentOffset];
    if (v132)
    {
      v133 = [(AVPlaybackContentTransitioningView *)self targetContentOffset];
      [v133 CGPointValue];
      [(AVPlaybackContentTransitioningView *)self frameForTransitioningContentView];
      v134 = self;
      UIPointRoundToViewScale();
      v136 = v135;
      v138 = v137;
      UIPointRoundToViewScale();
      v140 = v139;
      v142 = v141;

      v143 = v138 == v142 && v136 == v140;
    }

    else
    {
      v143 = 0;
    }

    v24 = v19;

    [(AVPlaybackContentTransitioningView *)self frameForActiveContentView];
    MinX = CGRectGetMinX(v172);
    [(AVPlaybackContentTransitioningView *)self frameForTransitioningContentView];
    v145 = CGRectGetMinX(v173);
    [(AVPlaybackContentTransitioningView *)self contentOffset];
    if (v16 == 3)
    {
      if (transitionDirection != 3)
      {
LABEL_110:
        v147 = v146 >= MinX;
        v148 = v146 <= v145;
LABEL_114:
        if (v51 || v147)
        {
          v38 = &unk_1EFF12B00;
          goto LABEL_118;
        }

        if (v143 || v148)
        {
          v38 = &unk_1EFF12B18;
          goto LABEL_118;
        }

        goto LABEL_120;
      }
    }

    else
    {
      if (v16 != 2)
      {
        if (v16)
        {
          v148 = 0;
          v147 = 0;
        }

        else
        {
          v147 = v146 == MinX;
          v148 = v146 == v145;
        }

        goto LABEL_114;
      }

      if (transitionDirection == 2)
      {
        goto LABEL_110;
      }
    }

    v147 = v146 <= MinX;
    v148 = v146 >= v145;
    goto LABEL_114;
  }

  v24 = v19;
  if (v15 > 5)
  {
    if (v15 != 6)
    {
      if (v15 == 7)
      {
        v38 = &unk_1EFF12AE8;
        v52 = &unk_1EFF13250;
LABEL_74:
        v130 = self;
        v131 = 0;
LABEL_119:
        [(AVPlaybackContentTransitioningView *)v130 _setTransitionState:v38 transitionDirection:v131 transitionProgress:v52];
        goto LABEL_120;
      }

      goto LABEL_120;
    }

    if (transitionDirection != v16 && v16)
    {
      v92 = _AVLog();
      if (os_log_type_enabled(v92, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_18B49C000, v92, OS_LOG_TYPE_ERROR, "Invalid state transition", buf, 2u);
      }
    }

    if (([(AVPlaybackContentTransitioningView *)self _isHorizontalBouncing]& 1) != 0)
    {
      goto LABEL_120;
    }

    [(AVPlaybackContentTransitioningView *)self bounds];
    [(AVPlaybackContentTransitioningView *)self _frameExcludingTransitioningContent];
    v93 = self;
    UIPointRoundToViewScale();
    v95 = v94;
    v97 = v96;
    UISizeRoundToViewScale();
    v99 = v98;
    v101 = v100;
    self = v93;
    UIPointRoundToViewScale();
    v103 = v102;
    v105 = v104;
    UISizeRoundToViewScale();
    v107 = v106;
    v109 = v108;

    v170.origin.x = v95;
    v170.origin.y = v97;
    v170.size.width = v99;
    v170.size.height = v101;
    v176.origin.x = v103;
    v176.origin.y = v105;
    v176.size.width = v107;
    v176.size.height = v109;
    v110 = CGRectIntersectsRect(v170, v176);

    if (v110)
    {
      [(AVPlaybackContentTransitioningView *)self frameForTransitioningContentView];
      [(AVPlaybackContentTransitioningView *)self bounds];
      v111 = self;
      UIPointRoundToViewScale();
      v113 = v112;
      v115 = v114;
      UISizeRoundToViewScale();
      v117 = v116;
      v119 = v118;
      v120 = v111;
      UIPointRoundToViewScale();
      v122 = v121;
      v124 = v123;
      UISizeRoundToViewScale();
      v126 = v125;
      v128 = v127;

      v171.origin.x = v113;
      v171.origin.y = v115;
      v171.size.width = v117;
      v171.size.height = v119;
      v177.origin.x = v122;
      v177.origin.y = v124;
      v177.size.width = v126;
      v177.size.height = v128;
      v129 = CGRectEqualToRect(v171, v177);
    }

    else
    {
      v129 = 1;
    }

    v153 = [(AVPlaybackContentTransitioningView *)self targetContentOffset];
    v150 = (!v153 || [(AVPlaybackContentTransitioningView *)self isDragging]&& ([(AVPlaybackContentTransitioningView *)self isDecelerating]& 1) == 0 && [(AVPlaybackContentTransitioningView *)self isTracking]) && !v129;

    if (v129)
    {
      v154 = [(AVPlaybackContentTransitioningView *)self activeContentView];
      [v154 removeFromSuperview];

      v155 = [(AVPlaybackContentTransitioningView *)self incomingContentView];
      activeContentView = self->_activeContentView;
      self->_activeContentView = v155;

      [(AVPlaybackContentContainerView *)self->_activeContentView setPlayingOnSecondScreen:[(AVPlaybackContentTransitioningView *)self isPlayingOnSecondScreen]];
      v157 = self->_incomingContentView;
      self->_incomingContentView = 0;

      v38 = &unk_1EFF12B30;
      v131 = &unk_1EFF12AE8;
      v52 = &unk_1EFF13250;
      goto LABEL_106;
    }

LABEL_107:
    if (v150)
    {
      goto LABEL_108;
    }

    goto LABEL_120;
  }

  if (v15 != 4)
  {
    v38 = &unk_1EFF12AE8;
LABEL_73:
    v52 = &unk_1EFF13240;
    goto LABEL_74;
  }

  if (transitionDirection != v16 && v16)
  {
    v53 = _AVLog();
    if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_18B49C000, v53, OS_LOG_TYPE_ERROR, "Invalid state transition", buf, 2u);
    }
  }

  if (([(AVPlaybackContentTransitioningView *)self _isHorizontalBouncing]& 1) == 0)
  {
    [(AVPlaybackContentTransitioningView *)self bounds];
    [(AVPlaybackContentTransitioningView *)self _frameExcludingActiveContent];
    v54 = self;
    UIPointRoundToViewScale();
    v56 = v55;
    v58 = v57;
    UISizeRoundToViewScale();
    v60 = v59;
    v62 = v61;
    self = v54;
    UIPointRoundToViewScale();
    v64 = v63;
    v66 = v65;
    UISizeRoundToViewScale();
    v68 = v67;
    v70 = v69;

    v168.origin.x = v56;
    v168.origin.y = v58;
    v168.size.width = v60;
    v168.size.height = v62;
    v174.origin.x = v64;
    v174.origin.y = v66;
    v174.size.width = v68;
    v174.size.height = v70;
    v71 = CGRectIntersectsRect(v168, v174);

    if (v71)
    {
      [(AVPlaybackContentTransitioningView *)self frameForActiveContentView];
      [(AVPlaybackContentTransitioningView *)self bounds];
      v72 = self;
      UIPointRoundToViewScale();
      v74 = v73;
      v76 = v75;
      UISizeRoundToViewScale();
      v78 = v77;
      v80 = v79;
      v81 = v72;
      UIPointRoundToViewScale();
      v83 = v82;
      v85 = v84;
      UISizeRoundToViewScale();
      v87 = v86;
      v89 = v88;

      v169.origin.x = v74;
      v169.origin.y = v76;
      v169.size.width = v78;
      v169.size.height = v80;
      v175.origin.x = v83;
      v175.origin.y = v85;
      v175.size.width = v87;
      v175.size.height = v89;
      v90 = CGRectEqualToRect(v169, v175);
    }

    else
    {
      v90 = 1;
    }

    v149 = [(AVPlaybackContentTransitioningView *)self targetContentOffset];
    v150 = (!v149 || [(AVPlaybackContentTransitioningView *)self isDragging]&& ([(AVPlaybackContentTransitioningView *)self isDecelerating]& 1) == 0 && [(AVPlaybackContentTransitioningView *)self isTracking]) && !v90;

    if (v90)
    {
      v151 = [(AVPlaybackContentTransitioningView *)self incomingContentView];
      [v151 removeFromSuperview];

      v152 = self->_incomingContentView;
      self->_incomingContentView = 0;

      v38 = &unk_1EFF12B48;
      v131 = &unk_1EFF12AE8;
      v52 = &unk_1EFF13240;
LABEL_106:
      v130 = self;
      goto LABEL_119;
    }

    goto LABEL_107;
  }

LABEL_120:
}

uint64_t __97__AVPlaybackContentTransitioningView__setTransitionState_transitionDirection_transitionProgress___block_invoke(uint64_t result)
{
  v1 = *(result + 40);
  v2 = v1 == 6 || v1 == 4;
  if (!v2 && (v1 != 3 || *(result + 48) == 1))
  {
    return [*(result + 32) _updateSizeAndContentFrame];
  }

  return result;
}

- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4
{
  if (!a4)
  {
    [(AVPlaybackContentTransitioningView *)self setTransitionInteractive:0];
  }
}

- (void)scrollViewDidEndDecelerating:(id)a3
{
  [(AVPlaybackContentTransitioningView *)self setTargetContentOffset:0];

  [(AVPlaybackContentTransitioningView *)self setTransitionInteractive:0];
}

- (void)scrollViewWillBeginDragging:(id)a3
{
  [(AVPlaybackContentTransitioningView *)self setTransitionInteractive:1];

  [(AVPlaybackContentTransitioningView *)self setTargetContentOffset:0];
}

- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5
{
  x = a5->x;
  y = a5->y;
  [(AVPlaybackContentTransitioningView *)self contentSize:a3];
  v10 = v9;
  [(AVPlaybackContentTransitioningView *)self bounds];
  if (v10 == CGRectGetWidth(v16) || ([(AVPlaybackContentTransitioningView *)self contentSize], x <= v11 * 0.5))
  {
    v14 = *MEMORY[0x1E695EFF8];
    y = *(MEMORY[0x1E695EFF8] + 8);
  }

  else
  {
    [(AVPlaybackContentTransitioningView *)self contentSize];
    v13 = v12;
    [(AVPlaybackContentTransitioningView *)self bounds];
    v14 = v13 - CGRectGetWidth(v17);
  }

  v15 = [MEMORY[0x1E696B098] valueWithCGPoint:{v14, y}];
  [(AVPlaybackContentTransitioningView *)self setTargetContentOffset:v15];

  a5->x = v14;
  a5->y = y;
}

- (BOOL)canShowStatusBarBackgroundGradientWhenStatusBarVisible
{
  v2 = [(AVPlaybackContentTransitioningView *)self activeContentView];
  v3 = [v2 canShowStatusBarBackgroundGradientWhenStatusBarVisible];

  return v3;
}

- (void)setCanShowStatusBarBackgroundGradientWhenStatusBarVisible:(BOOL)a3
{
  v3 = a3;
  v5 = [(AVPlaybackContentTransitioningView *)self activeContentView];
  [v5 setCanShowStatusBarBackgroundGradientWhenStatusBarVisible:v3];

  v6 = [(AVPlaybackContentTransitioningView *)self incomingContentView];
  [v6 setCanShowStatusBarBackgroundGradientWhenStatusBarVisible:v3];
}

- (void)setVideoGravity:(int64_t)a3 removingAllSublayerTransformAnimations:(BOOL)a4
{
  v4 = a4;
  v7 = [(AVPlaybackContentTransitioningView *)self activeContentView];
  [v7 setVideoGravity:a3 removingAllSublayerTransformAnimations:v4];

  v8 = [(AVPlaybackContentTransitioningView *)self incomingContentView];
  [v8 setVideoGravity:a3 removingAllSublayerTransformAnimations:v4];
}

- (void)setVideoContentFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [(AVPlaybackContentTransitioningView *)self activeContentView];
  [v8 setVideoContentFrame:{x, y, width, height}];

  v9 = [(AVPlaybackContentTransitioningView *)self incomingContentView];
  [v9 setVideoContentFrame:{x, y, width, height}];
}

- (CGRect)videoContentFrame
{
  v2 = [(AVPlaybackContentTransitioningView *)self activeContentView];
  [v2 videoContentFrame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (void)setFrame:(CGRect)a3
{
  v4.receiver = self;
  v4.super_class = AVPlaybackContentTransitioningView;
  [(AVPlaybackContentTransitioningView *)&v4 setFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [(AVPlaybackContentTransitioningView *)self _updateTransitionStateIfPossible];
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = AVPlaybackContentTransitioningView;
  if ([(AVPlaybackContentTransitioningView *)&v9 gestureRecognizerShouldBegin:v4])
  {
    v5 = [(AVPlaybackContentTransitioningView *)self panGestureRecognizer];

    if (v5 == v4)
    {
      v7 = [(AVPlaybackContentTransitioningView *)self contentTransitioningDelegate];
      [v4 locationInView:self];
      v6 = [v7 contentTransitioningViewShouldBeginDragging:self locationInView:?];
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setDelegate:(id)a3
{
  v3.receiver = self;
  v3.super_class = AVPlaybackContentTransitioningView;
  [(AVPlaybackContentTransitioningView *)&v3 setDelegate:a3];
}

- (void)setPlayingOnSecondScreen:(BOOL)a3
{
  v3 = a3;
  self->_playingOnSecondScreen = a3;
  v5 = [(AVPlaybackContentTransitioningView *)self activeContentView];
  [v5 setPlayingOnSecondScreen:v3];

  v6 = [(AVPlaybackContentTransitioningView *)self incomingContentView];
  [v6 setPlayingOnSecondScreen:v3];
}

- (AVPlaybackContentTransitioningView)initWithFrame:(CGRect)a3 activeContentView:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  v15.receiver = self;
  v15.super_class = AVPlaybackContentTransitioningView;
  v10 = [(AVPlaybackContentTransitioningView *)&v15 initWithFrame:x, y, width, height];
  if (v10)
  {
    v11 = *MEMORY[0x1E695EFF8];
    v12 = *(MEMORY[0x1E695EFF8] + 8);
    v13 = v9;
    if (!v9)
    {
      v13 = [[AVPlaybackContentContainerView alloc] initWithFrame:0 activeContentView:v11, v12, width, height];
    }

    objc_storeStrong(&v10->_activeContentView, v13);
    if (!v9)
    {
    }

    [(AVPlaybackContentContainerView *)v10->_activeContentView setFrame:v11, v12, width, height];
    [(AVPlaybackContentTransitioningView *)v10 setContentInsetAdjustmentBehavior:2];
    [(AVPlaybackContentTransitioningView *)v10 setPagingEnabled:1];
    [(AVPlaybackContentTransitioningView *)v10 setDelegate:v10];
    [(AVPlaybackContentTransitioningView *)v10 setShowsHorizontalScrollIndicator:0];
    [(AVPlaybackContentTransitioningView *)v10 setShowsVerticalScrollIndicator:0];
    [(AVPlaybackContentTransitioningView *)v10 _setInterpageSpacing:24.0, 0.0];
    [(AVPlaybackContentTransitioningView *)v10 setAlwaysBounceHorizontal:1];
    [(AVPlaybackContentTransitioningView *)v10 setDirectionalLockEnabled:1];
  }

  return v10;
}

@end