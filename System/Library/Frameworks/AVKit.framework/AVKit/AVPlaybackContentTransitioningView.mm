@interface AVPlaybackContentTransitioningView
- (AVPlaybackContentTransitioningView)initWithFrame:(CGRect)frame activeContentView:(id)view;
- (AVPlaybackContentTransitioningViewDelegate)contentTransitioningDelegate;
- (BOOL)_canTransitionFromState:(int64_t)state toState:(int64_t)toState;
- (BOOL)canShowStatusBarBackgroundGradientWhenStatusBarVisible;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (CGRect)_frameExcludingActiveContent;
- (CGRect)_frameExcludingTransitioningContent;
- (CGRect)frameForActiveContentView;
- (CGRect)frameForTransitioningContentView;
- (CGRect)videoContentFrame;
- (id)_descriptionForState:(int64_t)state;
- (id)_makeStateDescription;
- (void)_ensureContentViews;
- (void)_performBoundsOrContentSizeAdjustment:(id)adjustment;
- (void)_setTransitionState:(id)state transitionDirection:(id)direction transitionProgress:(id)progress;
- (void)_updateSizeAndContentFrame;
- (void)_updateTransitionStateIfPossible;
- (void)performTransition:(int64_t)transition;
- (void)scrollViewDidEndDecelerating:(id)decelerating;
- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate;
- (void)scrollViewWillBeginDragging:(id)dragging;
- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset;
- (void)setCanShowStatusBarBackgroundGradientWhenStatusBarVisible:(BOOL)visible;
- (void)setDelegate:(id)delegate;
- (void)setFrame:(CGRect)frame;
- (void)setPlayingOnSecondScreen:(BOOL)screen;
- (void)setStateDescription:(id)description;
- (void)setVideoContentFrame:(CGRect)frame;
- (void)setVideoGravity:(int64_t)gravity removingAllSublayerTransformAnimations:(BOOL)animations;
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
  transitionDirection = [(AVPlaybackContentTransitioningView *)self transitionDirection];
  if (transitionDirection > 3)
  {
    v5 = 0;
  }

  else
  {
    v5 = off_1E72085C0[transitionDirection];
  }

  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@", v3, v5];

  return v6;
}

- (id)_descriptionForState:(int64_t)state
{
  if (state > 7)
  {
    return 0;
  }

  else
  {
    return off_1E7208580[state];
  }
}

- (void)setStateDescription:(id)description
{
  v22 = *MEMORY[0x1E69E9840];
  descriptionCopy = description;
  if (![(NSString *)self->_stateDescription isEqualToString:descriptionCopy])
  {
    v5 = [descriptionCopy copy];
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

- (BOOL)_canTransitionFromState:(int64_t)state toState:(int64_t)toState
{
  if (toState > 3)
  {
    v4 = 0x48u >> state;
    if (state >= 8)
    {
      LOBYTE(v4) = 0;
    }

    v9 = 0x40u >> state;
    if (state >= 8)
    {
      LOBYTE(v9) = 0;
    }

    if (toState != 7)
    {
      LOBYTE(v9) = 0;
    }

    if (toState != 6)
    {
      LOBYTE(v4) = v9;
    }

    v6 = 0x18u >> state;
    if (state >= 8)
    {
      LOBYTE(v6) = 0;
    }

    v10 = 0x10u >> state;
    if (state >= 8)
    {
      LOBYTE(v10) = 0;
    }

    if (toState != 5)
    {
      LOBYTE(v10) = 0;
    }

    if (toState != 4)
    {
      LOBYTE(v6) = v10;
    }

    v8 = toState <= 5;
  }

  else
  {
    v4 = 6u >> state;
    if (state >= 8)
    {
      LOBYTE(v4) = 0;
    }

    v5 = 0x5Au >> state;
    if (state >= 8)
    {
      LOBYTE(v5) = 0;
    }

    if (toState != 3)
    {
      LOBYTE(v5) = 0;
    }

    if (toState != 2)
    {
      LOBYTE(v4) = v5;
    }

    v6 = 0xA5u >> state;
    if (state >= 8)
    {
      LOBYTE(v6) = 0;
    }

    v7 = 1u >> state;
    if (state >= 8)
    {
      LOBYTE(v7) = 0;
    }

    if (toState != 1)
    {
      LOBYTE(v7) = 0;
    }

    if (toState)
    {
      LOBYTE(v6) = v7;
    }

    v8 = toState <= 1;
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
  activeContentView = [(AVPlaybackContentTransitioningView *)self activeContentView];
  [(AVPlaybackContentTransitioningView *)self frameForActiveContentView];
  [activeContentView setFrame:?];

  incomingContentView = [(AVPlaybackContentTransitioningView *)self incomingContentView];
  [(AVPlaybackContentTransitioningView *)self frameForTransitioningContentView];
  [incomingContentView setFrame:?];

  activeContentView2 = [(AVPlaybackContentTransitioningView *)self activeContentView];
  superview = [activeContentView2 superview];

  if (superview != self)
  {
    activeContentView3 = [(AVPlaybackContentTransitioningView *)self activeContentView];
    [(AVPlaybackContentTransitioningView *)self addSubview:activeContentView3];
  }

  incomingContentView2 = [(AVPlaybackContentTransitioningView *)self incomingContentView];
  if (incomingContentView2)
  {
    v9 = incomingContentView2;
    incomingContentView3 = [(AVPlaybackContentTransitioningView *)self incomingContentView];
    superview2 = [incomingContentView3 superview];

    if (superview2 != self)
    {
      incomingContentView4 = [(AVPlaybackContentTransitioningView *)self incomingContentView];
      [(AVPlaybackContentTransitioningView *)self addSubview:incomingContentView4];
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
  transitionState = [(AVPlaybackContentTransitioningView *)self transitionState];
  if (transitionState <= 6 && ((1 << transitionState) & 0x58) != 0)
  {
    transitionDirection = [(AVPlaybackContentTransitioningView *)self transitionDirection];
    if (transitionDirection == 3)
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

    else if (transitionDirection == 2)
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
      if (transitionDirection == 1)
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
      if (transitionDirection == 1)
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
  transitionState2 = [(AVPlaybackContentTransitioningView *)self transitionState];
  if ((transitionState2 - 3) < 2)
  {
LABEL_16:
    [(AVPlaybackContentTransitioningView *)self bounds];
    Width = CGRectGetWidth(v62);
    [(AVPlaybackContentTransitioningView *)self _interpageSpacing];
    v30 = v35 + Width * 2.0;
    goto LABEL_18;
  }

  if (transitionState2 != 7)
  {
    if (transitionState2 != 6)
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

- (void)_performBoundsOrContentSizeAdjustment:(id)adjustment
{
  adjustmentCopy = adjustment;
  [(AVPlaybackContentTransitioningView *)self setBoundsOrContentSizeAdjustmentCount:[(AVPlaybackContentTransitioningView *)self boundsOrContentSizeAdjustmentCount]+ 1];
  adjustmentCopy[2](adjustmentCopy);

  v5 = [(AVPlaybackContentTransitioningView *)self boundsOrContentSizeAdjustmentCount]- 1;

  [(AVPlaybackContentTransitioningView *)self setBoundsOrContentSizeAdjustmentCount:v5];
}

- (void)_updateTransitionStateIfPossible
{
  if ([(AVPlaybackContentTransitioningView *)self _isAdjustingBoundsOrContentSize])
  {
    return;
  }

  transitionState = [(AVPlaybackContentTransitioningView *)self transitionState];
  if (transitionState <= 7 && ((1 << transitionState) & 0xA7) != 0)
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
      transitionDirection = 2;
    }

    else
    {
      transitionDirection = 3;
    }
  }

  else
  {
    v11 = MEMORY[0x1E696AD98];
    transitionDirection = [(AVPlaybackContentTransitioningView *)self transitionDirection];
  }

  v4 = [v11 numberWithInteger:transitionDirection];
LABEL_14:
  v23 = v4;
  [(AVPlaybackContentTransitioningView *)self contentSize];
  v16 = v15;
  [(AVPlaybackContentTransitioningView *)self frameForActiveContentView];
  v17 = v16 - CGRectGetWidth(v26);
  if (v17 > 0.0)
  {
    integerValue = [v23 integerValue];
    if (integerValue == 3)
    {
      v19 = MEMORY[0x1E696AD98];
      [(AVPlaybackContentTransitioningView *)self contentOffset];
      goto LABEL_20;
    }

    if (integerValue == 2)
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

- (void)performTransition:(int64_t)transition
{
  v19 = *MEMORY[0x1E69E9840];
  transitionState = [(AVPlaybackContentTransitioningView *)self transitionState];
  if ((transitionState - 1) >= 7)
  {
    if (!transitionState)
    {
      v7 = *(MEMORY[0x1E695EFF8] + 8);
      if (transition == 2)
      {
        [(AVPlaybackContentTransitioningView *)self bounds];
        Width = CGRectGetWidth(v21);
        [(AVPlaybackContentTransitioningView *)self _interpageSpacing];
        v10 = Width + v9;
      }

      else if (transition == 3)
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
      stateDescription = [(AVPlaybackContentTransitioningView *)self stateDescription];
      v15 = 138412546;
      selfCopy = self;
      v17 = 2112;
      v18 = stateDescription;
      _os_log_error_impl(&dword_18B49C000, v6, OS_LOG_TYPE_ERROR, "Instance %@ attempted content transition while one was already active. Ignoring. %@", &v15, 0x16u);
    }
  }
}

- (void)_setTransitionState:(id)state transitionDirection:(id)direction transitionProgress:(id)progress
{
  v167 = *MEMORY[0x1E69E9840];
  stateCopy = state;
  directionCopy = direction;
  progressCopy = progress;
  v161 = stateCopy;
  if ([(AVPlaybackContentTransitioningView *)self _isAdjustingBoundsOrContentSize])
  {
    v11 = _AVLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_18B49C000, v11, OS_LOG_TYPE_ERROR, "Attempt to transition while adjusting bounds.", buf, 2u);
    }

    stateCopy = v161;
  }

  transitionState = self->_transitionState;
  transitionDirection = self->_transitionDirection;
  transitionProgress = self->_transitionProgress;
  integerValue = transitionState;
  if (stateCopy)
  {
    integerValue = [stateCopy integerValue];
  }

  integerValue2 = transitionDirection;
  if (directionCopy)
  {
    integerValue2 = [directionCopy integerValue];
  }

  v17 = transitionProgress;
  if (progressCopy)
  {
    [progressCopy doubleValue];
    v17 = v18;
  }

  v160 = progressCopy;
  v19 = directionCopy;
  if (![(AVPlaybackContentTransitioningView *)self _canTransitionFromState:transitionState toState:integerValue])
  {
    v20 = _AVLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v159 = [(AVPlaybackContentTransitioningView *)self _descriptionForState:transitionState];
      v158 = [(AVPlaybackContentTransitioningView *)self _descriptionForState:integerValue];
      *buf = 138412546;
      v164 = v159;
      v165 = 2112;
      v166 = v158;
      _os_log_error_impl(&dword_18B49C000, v20, OS_LOG_TYPE_ERROR, "Invalid state transition from %@ to %@.", buf, 0x16u);
    }
  }

  if (integerValue <= 7)
  {
    if (((1 << integerValue) & 0x27) != 0)
    {
      v17 = 0.0;
    }

    else if (((1 << integerValue) & 0x58) != 0)
    {
      v17 = fmin(fmax(v17, 0.0), 1.0);
    }

    else
    {
      v17 = 1.0;
    }
  }

  self->_transitionDirection = integerValue2;
  self->_transitionProgress = v17;
  self->_transitionState = integerValue;
  v162[0] = MEMORY[0x1E69E9820];
  v162[1] = 3221225472;
  v162[2] = __97__AVPlaybackContentTransitioningView__setTransitionState_transitionDirection_transitionProgress___block_invoke;
  v162[3] = &unk_1E7208ED8;
  v162[5] = integerValue;
  v162[6] = transitionState;
  v162[4] = self;
  [(AVPlaybackContentTransitioningView *)self _performBoundsOrContentSizeAdjustment:v162];
  _makeStateDescription = [(AVPlaybackContentTransitioningView *)self _makeStateDescription];
  [(AVPlaybackContentTransitioningView *)self setStateDescription:_makeStateDescription];

  contentTransitioningDelegate = [(AVPlaybackContentTransitioningView *)self contentTransitioningDelegate];
  [contentTransitioningDelegate contentTransitioningViewDidChangeTransitionStatus:self oldState:transitionState oldTransitionDirection:transitionDirection oldProgress:transitionProgress];

  if (integerValue != self->_transitionState)
  {
    v23 = _AVLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_18B49C000, v23, OS_LOG_TYPE_ERROR, "This is where the problem is.", buf, 2u);
    }
  }

  if (integerValue <= 3)
  {
    v24 = v19;
    if (integerValue <= 1)
    {
      if (integerValue)
      {
        if (integerValue == 1)
        {
          if (!integerValue2)
          {
            v25 = _AVLog();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&dword_18B49C000, v25, OS_LOG_TYPE_ERROR, "Invalid state transition", buf, 2u);
            }
          }

          contentTransitioningDelegate2 = [(AVPlaybackContentTransitioningView *)self contentTransitioningDelegate];
          v27 = [contentTransitioningDelegate2 contentTransitioningView:self shouldBeginTransitionWithDirection:integerValue2];

          if (v27)
          {
            contentTransitioningDelegate3 = [(AVPlaybackContentTransitioningView *)self contentTransitioningDelegate];
            v29 = [contentTransitioningDelegate3 contentTransitioningPlayerContentViewForTransition:self];
            incomingContentView = self->_incomingContentView;
            self->_incomingContentView = v29;

            incomingContentView = [(AVPlaybackContentTransitioningView *)self incomingContentView];
            [incomingContentView setPlayingOnSecondScreen:{-[AVPlaybackContentTransitioningView isPlayingOnSecondScreen](self, "isPlayingOnSecondScreen")}];

            incomingContentView2 = [(AVPlaybackContentTransitioningView *)self incomingContentView];
            activeContentView = [(AVPlaybackContentTransitioningView *)self activeContentView];
            [incomingContentView2 setCanShowStatusBarBackgroundGradientWhenStatusBarVisible:{objc_msgSend(activeContentView, "canShowStatusBarBackgroundGradientWhenStatusBarVisible")}];

            incomingContentView3 = [(AVPlaybackContentTransitioningView *)self incomingContentView];
            playerLayerView = [incomingContentView3 playerLayerView];
            activeContentView2 = [(AVPlaybackContentTransitioningView *)self activeContentView];
            playerLayerView2 = [activeContentView2 playerLayerView];
            [playerLayerView setVideoGravity:{objc_msgSend(playerLayerView2, "videoGravity")}];

LABEL_108:
            v38 = &unk_1EFF12AB8;
            goto LABEL_118;
          }

          v38 = &unk_1EFF12AD0;
          goto LABEL_73;
        }

        goto LABEL_120;
      }

      if (!integerValue2)
      {
        goto LABEL_120;
      }

      v38 = &unk_1EFF12AA0;
LABEL_118:
      selfCopy9 = self;
      v131 = 0;
      v52 = 0;
      goto LABEL_119;
    }

    if (integerValue == 2)
    {
      targetContentOffset = [(AVPlaybackContentTransitioningView *)self targetContentOffset];

      if (targetContentOffset)
      {
        [(AVPlaybackContentTransitioningView *)self setTargetContentOffset:0];
        [(AVPlaybackContentTransitioningView *)self setContentOffset:0 animated:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)];
        goto LABEL_120;
      }

      if (transitionDirection == integerValue2)
      {
        goto LABEL_120;
      }

      v38 = &unk_1EFF12AE8;
      goto LABEL_118;
    }

    if (!integerValue2 && transitionState != 3)
    {
      v39 = _AVLog();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_18B49C000, v39, OS_LOG_TYPE_ERROR, "Invalid state transition", buf, 2u);
      }
    }

    targetContentOffset2 = [(AVPlaybackContentTransitioningView *)self targetContentOffset];
    if (targetContentOffset2)
    {
      targetContentOffset3 = [(AVPlaybackContentTransitioningView *)self targetContentOffset];
      [targetContentOffset3 CGPointValue];
      [(AVPlaybackContentTransitioningView *)self frameForActiveContentView];
      selfCopy2 = self;
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

    targetContentOffset4 = [(AVPlaybackContentTransitioningView *)self targetContentOffset];
    if (targetContentOffset4)
    {
      targetContentOffset5 = [(AVPlaybackContentTransitioningView *)self targetContentOffset];
      [targetContentOffset5 CGPointValue];
      [(AVPlaybackContentTransitioningView *)self frameForTransitioningContentView];
      selfCopy3 = self;
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
    if (integerValue2 == 3)
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
      if (integerValue2 != 2)
      {
        if (integerValue2)
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
  if (integerValue > 5)
  {
    if (integerValue != 6)
    {
      if (integerValue == 7)
      {
        v38 = &unk_1EFF12AE8;
        v52 = &unk_1EFF13250;
LABEL_74:
        selfCopy9 = self;
        v131 = 0;
LABEL_119:
        [(AVPlaybackContentTransitioningView *)selfCopy9 _setTransitionState:v38 transitionDirection:v131 transitionProgress:v52];
        goto LABEL_120;
      }

      goto LABEL_120;
    }

    if (transitionDirection != integerValue2 && integerValue2)
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
    selfCopy5 = self;
    UIPointRoundToViewScale();
    v95 = v94;
    v97 = v96;
    UISizeRoundToViewScale();
    v99 = v98;
    v101 = v100;
    self = selfCopy5;
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
      selfCopy6 = self;
      UIPointRoundToViewScale();
      v113 = v112;
      v115 = v114;
      UISizeRoundToViewScale();
      v117 = v116;
      v119 = v118;
      v120 = selfCopy6;
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

    targetContentOffset6 = [(AVPlaybackContentTransitioningView *)self targetContentOffset];
    v150 = (!targetContentOffset6 || [(AVPlaybackContentTransitioningView *)self isDragging]&& ([(AVPlaybackContentTransitioningView *)self isDecelerating]& 1) == 0 && [(AVPlaybackContentTransitioningView *)self isTracking]) && !v129;

    if (v129)
    {
      activeContentView3 = [(AVPlaybackContentTransitioningView *)self activeContentView];
      [activeContentView3 removeFromSuperview];

      incomingContentView4 = [(AVPlaybackContentTransitioningView *)self incomingContentView];
      activeContentView = self->_activeContentView;
      self->_activeContentView = incomingContentView4;

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

  if (integerValue != 4)
  {
    v38 = &unk_1EFF12AE8;
LABEL_73:
    v52 = &unk_1EFF13240;
    goto LABEL_74;
  }

  if (transitionDirection != integerValue2 && integerValue2)
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
    selfCopy7 = self;
    UIPointRoundToViewScale();
    v56 = v55;
    v58 = v57;
    UISizeRoundToViewScale();
    v60 = v59;
    v62 = v61;
    self = selfCopy7;
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
      selfCopy8 = self;
      UIPointRoundToViewScale();
      v74 = v73;
      v76 = v75;
      UISizeRoundToViewScale();
      v78 = v77;
      v80 = v79;
      v81 = selfCopy8;
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

    targetContentOffset7 = [(AVPlaybackContentTransitioningView *)self targetContentOffset];
    v150 = (!targetContentOffset7 || [(AVPlaybackContentTransitioningView *)self isDragging]&& ([(AVPlaybackContentTransitioningView *)self isDecelerating]& 1) == 0 && [(AVPlaybackContentTransitioningView *)self isTracking]) && !v90;

    if (v90)
    {
      incomingContentView5 = [(AVPlaybackContentTransitioningView *)self incomingContentView];
      [incomingContentView5 removeFromSuperview];

      v152 = self->_incomingContentView;
      self->_incomingContentView = 0;

      v38 = &unk_1EFF12B48;
      v131 = &unk_1EFF12AE8;
      v52 = &unk_1EFF13240;
LABEL_106:
      selfCopy9 = self;
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

- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate
{
  if (!decelerate)
  {
    [(AVPlaybackContentTransitioningView *)self setTransitionInteractive:0];
  }
}

- (void)scrollViewDidEndDecelerating:(id)decelerating
{
  [(AVPlaybackContentTransitioningView *)self setTargetContentOffset:0];

  [(AVPlaybackContentTransitioningView *)self setTransitionInteractive:0];
}

- (void)scrollViewWillBeginDragging:(id)dragging
{
  [(AVPlaybackContentTransitioningView *)self setTransitionInteractive:1];

  [(AVPlaybackContentTransitioningView *)self setTargetContentOffset:0];
}

- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset
{
  x = offset->x;
  y = offset->y;
  [(AVPlaybackContentTransitioningView *)self contentSize:dragging];
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

  offset->x = v14;
  offset->y = y;
}

- (BOOL)canShowStatusBarBackgroundGradientWhenStatusBarVisible
{
  activeContentView = [(AVPlaybackContentTransitioningView *)self activeContentView];
  canShowStatusBarBackgroundGradientWhenStatusBarVisible = [activeContentView canShowStatusBarBackgroundGradientWhenStatusBarVisible];

  return canShowStatusBarBackgroundGradientWhenStatusBarVisible;
}

- (void)setCanShowStatusBarBackgroundGradientWhenStatusBarVisible:(BOOL)visible
{
  visibleCopy = visible;
  activeContentView = [(AVPlaybackContentTransitioningView *)self activeContentView];
  [activeContentView setCanShowStatusBarBackgroundGradientWhenStatusBarVisible:visibleCopy];

  incomingContentView = [(AVPlaybackContentTransitioningView *)self incomingContentView];
  [incomingContentView setCanShowStatusBarBackgroundGradientWhenStatusBarVisible:visibleCopy];
}

- (void)setVideoGravity:(int64_t)gravity removingAllSublayerTransformAnimations:(BOOL)animations
{
  animationsCopy = animations;
  activeContentView = [(AVPlaybackContentTransitioningView *)self activeContentView];
  [activeContentView setVideoGravity:gravity removingAllSublayerTransformAnimations:animationsCopy];

  incomingContentView = [(AVPlaybackContentTransitioningView *)self incomingContentView];
  [incomingContentView setVideoGravity:gravity removingAllSublayerTransformAnimations:animationsCopy];
}

- (void)setVideoContentFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  activeContentView = [(AVPlaybackContentTransitioningView *)self activeContentView];
  [activeContentView setVideoContentFrame:{x, y, width, height}];

  incomingContentView = [(AVPlaybackContentTransitioningView *)self incomingContentView];
  [incomingContentView setVideoContentFrame:{x, y, width, height}];
}

- (CGRect)videoContentFrame
{
  activeContentView = [(AVPlaybackContentTransitioningView *)self activeContentView];
  [activeContentView videoContentFrame];
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

- (void)setFrame:(CGRect)frame
{
  v4.receiver = self;
  v4.super_class = AVPlaybackContentTransitioningView;
  [(AVPlaybackContentTransitioningView *)&v4 setFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  [(AVPlaybackContentTransitioningView *)self _updateTransitionStateIfPossible];
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  v9.receiver = self;
  v9.super_class = AVPlaybackContentTransitioningView;
  if ([(AVPlaybackContentTransitioningView *)&v9 gestureRecognizerShouldBegin:beginCopy])
  {
    panGestureRecognizer = [(AVPlaybackContentTransitioningView *)self panGestureRecognizer];

    if (panGestureRecognizer == beginCopy)
    {
      contentTransitioningDelegate = [(AVPlaybackContentTransitioningView *)self contentTransitioningDelegate];
      [beginCopy locationInView:self];
      v6 = [contentTransitioningDelegate contentTransitioningViewShouldBeginDragging:self locationInView:?];
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

- (void)setDelegate:(id)delegate
{
  v3.receiver = self;
  v3.super_class = AVPlaybackContentTransitioningView;
  [(AVPlaybackContentTransitioningView *)&v3 setDelegate:delegate];
}

- (void)setPlayingOnSecondScreen:(BOOL)screen
{
  screenCopy = screen;
  self->_playingOnSecondScreen = screen;
  activeContentView = [(AVPlaybackContentTransitioningView *)self activeContentView];
  [activeContentView setPlayingOnSecondScreen:screenCopy];

  incomingContentView = [(AVPlaybackContentTransitioningView *)self incomingContentView];
  [incomingContentView setPlayingOnSecondScreen:screenCopy];
}

- (AVPlaybackContentTransitioningView)initWithFrame:(CGRect)frame activeContentView:(id)view
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  viewCopy = view;
  v15.receiver = self;
  v15.super_class = AVPlaybackContentTransitioningView;
  height = [(AVPlaybackContentTransitioningView *)&v15 initWithFrame:x, y, width, height];
  if (height)
  {
    v11 = *MEMORY[0x1E695EFF8];
    v12 = *(MEMORY[0x1E695EFF8] + 8);
    height2 = viewCopy;
    if (!viewCopy)
    {
      height2 = [[AVPlaybackContentContainerView alloc] initWithFrame:0 activeContentView:v11, v12, width, height];
    }

    objc_storeStrong(&height->_activeContentView, height2);
    if (!viewCopy)
    {
    }

    [(AVPlaybackContentContainerView *)height->_activeContentView setFrame:v11, v12, width, height];
    [(AVPlaybackContentTransitioningView *)height setContentInsetAdjustmentBehavior:2];
    [(AVPlaybackContentTransitioningView *)height setPagingEnabled:1];
    [(AVPlaybackContentTransitioningView *)height setDelegate:height];
    [(AVPlaybackContentTransitioningView *)height setShowsHorizontalScrollIndicator:0];
    [(AVPlaybackContentTransitioningView *)height setShowsVerticalScrollIndicator:0];
    [(AVPlaybackContentTransitioningView *)height _setInterpageSpacing:24.0, 0.0];
    [(AVPlaybackContentTransitioningView *)height setAlwaysBounceHorizontal:1];
    [(AVPlaybackContentTransitioningView *)height setDirectionalLockEnabled:1];
  }

  return height;
}

@end