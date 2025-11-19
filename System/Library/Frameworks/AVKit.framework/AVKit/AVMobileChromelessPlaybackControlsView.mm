@interface AVMobileChromelessPlaybackControlsView
- (AVMobileChromelessPlaybackControlsView)initWithStyleSheet:(id)a3;
- (AVMobileChromelessPlaybackControlsViewDelegate)delegate;
- (CGSize)intrinsicContentSize;
- (uint64_t)_updateExtendedDynamicRangeGain;
- (void)_addPlaybackControlViews:(id)a3;
- (void)_setUpShadowAppearance;
- (void)_setupPointerInteractionForButton:(void *)a1;
- (void)_updateBackwardSecondaryControlIcon;
- (void)_updateForwardSecondaryControlIcon;
- (void)_updateShadowAppearanceState;
- (void)avkit_intrinsicContentSizeOfSubviewWasInvalidated:(id)a3;
- (void)backwardsSecondaryControlWasPressed;
- (void)didMoveToWindow;
- (void)forwardSecondaryControlWasPressed;
- (void)layoutSubviews;
- (void)playPauseButtonWasPressed;
- (void)setAvkit_extendedDynamicRangeGain:(double)a3;
- (void)setBackwardSecondaryControlEnabled:(BOOL)a3;
- (void)setBackwardSecondaryControlIcon:(unint64_t)a3;
- (void)setBackwardSecondaryControlSkipInterval:(id *)a3;
- (void)setForwardSecondaryControlEnabled:(BOOL)a3;
- (void)setForwardSecondaryControlIcon:(unint64_t)a3;
- (void)setForwardSecondaryControlSkipInterval:(id *)a3;
- (void)setPlayPauseButtonShowsPlayIcon:(BOOL)a3;
- (void)setShowsBackwardSecondaryPlaybackButton:(BOOL)a3;
- (void)setShowsForwardSecondaryPlaybackButton:(BOOL)a3;
- (void)setShowsPlayPauseButton:(BOOL)a3;
- (void)setStyleSheet:(id)a3;
- (void)triggerBackwardSecondaryControlIconAnimation;
- (void)triggerForwardSecondaryControlIconAnimation;
@end

@implementation AVMobileChromelessPlaybackControlsView

- (AVMobileChromelessPlaybackControlsViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_updateForwardSecondaryControlIcon
{
  forwardSecondaryControlIcon = self->_forwardSecondaryControlIcon;
  if (forwardSecondaryControlIcon <= 2)
  {
    v4 = off_1E7207C68[forwardSecondaryControlIcon];
    [(AVMobileChromelessPlaybackControlButton *)self->_forwardSecondaryButton setImageName:*off_1E7208AC0[forwardSecondaryControlIcon]];
    [(AVMobileChromelessPlaybackControlButton *)self->_forwardSecondaryButton setAccessibilityIdentifier:v4];
  }

  [(AVMobileChromelessPlaybackControlsView *)self setNeedsLayout];
}

- (void)_updateBackwardSecondaryControlIcon
{
  backwardSecondaryControlIcon = self->_backwardSecondaryControlIcon;
  if (backwardSecondaryControlIcon == 2)
  {
    [(AVMobileChromelessPlaybackControlButton *)self->_backwardSecondaryButton setImageName:@"forward.end.alt.fill"];
    backwardSecondaryButton = self->_backwardSecondaryButton;
    v5 = 0;
  }

  else if (backwardSecondaryControlIcon == 1)
  {
    [(AVMobileChromelessPlaybackControlButton *)self->_backwardSecondaryButton setImageName:@"backward.end.fill"];
    backwardSecondaryButton = self->_backwardSecondaryButton;
    v5 = @"Skip To Previous";
  }

  else
  {
    if (backwardSecondaryControlIcon)
    {
      goto LABEL_8;
    }

    [(AVMobileChromelessPlaybackControlButton *)self->_backwardSecondaryButton setImageName:@"gobackward.10"];
    backwardSecondaryButton = self->_backwardSecondaryButton;
    v5 = @"Skip Backward";
  }

  [(AVMobileChromelessPlaybackControlButton *)backwardSecondaryButton setAccessibilityIdentifier:v5];
LABEL_8:

  [(AVMobileChromelessPlaybackControlsView *)self setNeedsLayout];
}

- (void)_setUpShadowAppearance
{
  v5 = [(AVMobileChromelessPlaybackControlButton *)self->_playPauseButton layer];
  v3 = [(AVMobileChromelessPlaybackControlButton *)self->_backwardSecondaryButton layer];
  v4 = [(AVMobileChromelessPlaybackControlButton *)self->_forwardSecondaryButton layer];
  [v5 setShadowOffset:{0.0, 2.0}];
  [v5 setShadowRadius:8.0];
  [v3 setShadowOffset:{0.0, 2.0}];
  [v3 setShadowRadius:8.0];
  [v4 setShadowOffset:{0.0, 2.0}];
  [v4 setShadowRadius:8.0];
  [(AVMobileChromelessPlaybackControlsView *)&self->super.super.super.super.isa _updateShadowAppearanceState];
}

- (void)_updateShadowAppearanceState
{
  if (a1)
  {
    v13 = [a1[60] layer];
    v2 = [a1[69] layer];
    v3 = [a1[70] layer];
    v4 = [a1 traitCollection];
    v5 = [v4 userInterfaceStyle];

    if (v5 == 1)
    {
      v6 = [MEMORY[0x1E69DC888] blackColor];
      v7 = [v6 CGColor];

      v8 = 1050253722;
      v9 = 1041865114;
    }

    else
    {
      v7 = 0;
      v9 = 0;
      v8 = 0;
    }

    [v13 setShadowColor:v7];
    LODWORD(v10) = v9;
    [v13 setShadowOpacity:v10];
    [v2 setShadowColor:v7];
    LODWORD(v11) = v8;
    [v2 setShadowOpacity:v11];
    [v3 setShadowColor:v7];
    LODWORD(v12) = v8;
    [v3 setShadowOpacity:v12];
  }
}

- (void)_addPlaybackControlViews:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [(AVMobileChromelessPlaybackControlsView *)self addSubview:*(*(&v9 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)forwardSecondaryControlWasPressed
{
  v3 = [(AVMobileChromelessPlaybackControlsView *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(AVMobileChromelessPlaybackControlsView *)self delegate];
    [v5 playbackControlsViewForwardSecondaryControlWasPressed:self];

    [(AVMobileChromelessPlaybackControlsView *)self triggerForwardSecondaryControlIconAnimation];
  }
}

- (void)backwardsSecondaryControlWasPressed
{
  v3 = [(AVMobileChromelessPlaybackControlsView *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(AVMobileChromelessPlaybackControlsView *)self delegate];
    [v5 playbackControlsViewBackwardSecondaryControlWasPressed:self];

    [(AVMobileChromelessPlaybackControlsView *)self triggerBackwardSecondaryControlIconAnimation];
  }
}

- (void)playPauseButtonWasPressed
{
  v3 = [(AVMobileChromelessPlaybackControlsView *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(AVMobileChromelessPlaybackControlsView *)self delegate];
    [v5 playbackControlsViewPlayPauseButtonWasPressed:self];
  }
}

- (void)layoutSubviews
{
  v41.receiver = self;
  v41.super_class = AVMobileChromelessPlaybackControlsView;
  [(AVView *)&v41 layoutSubviews];
  [(AVMobileChromelessPlaybackControlsView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v40 = v9;
  [(AVMobileChromelessPlaybackControlButton *)self->_forwardSecondaryButton intrinsicContentSize];
  v11 = v10;
  v39 = v12;
  [(AVMobileChromelessPlaybackControlButton *)self->_backwardSecondaryButton intrinsicContentSize];
  v14 = v13;
  v38 = v15;
  [(AVMobileChromelessPlaybackControlButton *)self->_playPauseButton intrinsicContentSize];
  v17 = v16;
  v19 = v18;
  [(AVMobileChromelessPlaybackControlsView *)self frame];
  v21 = v20 - (v11 + v14 + v17);
  v22 = v21 <= 112.0;
  v23 = fmax(v21 * 0.5, 42.0);
  v24 = fmax(v21 + -200.0, 56.0);
  if (v22)
  {
    v24 = v23;
  }

  if (v24 <= 100.0)
  {
    v25 = v24;
  }

  else
  {
    v25 = 100.0;
  }

  v26 = v8 + v25 * -2.0;
  v27 = v26 - v17;
  if (v26 < v17)
  {
    v27 = v8 + v25 * -2.0;
  }

  v28 = v27 < v11 + v14;
  if (v26 >= v17)
  {
    if (self->_showsPlayPauseButton)
    {
      [(AVMobileChromelessPlaybackControlButton *)self->_playPauseButton setFrame:0.0, 0.0, v17, v19];
      playPauseButton = self->_playPauseButton;
      v42.origin.x = v4;
      v42.origin.y = v6;
      v42.size.width = v8;
      v42.size.height = v40;
      MidX = CGRectGetMidX(v42);
      v43.origin.x = v4;
      v43.origin.y = v6;
      v43.size.width = v8;
      v43.size.height = v40;
      [(AVMobileChromelessPlaybackControlButton *)playPauseButton setCenter:MidX, CGRectGetMidY(v43)];
      v31 = 0;
      goto LABEL_13;
    }
  }

  else
  {
    v28 = 1;
  }

  v31 = 1;
LABEL_13:
  [(AVMobileChromelessPlaybackControlButton *)self->_playPauseButton setHidden:v31];
  [(AVMobileChromelessPlaybackControlButton *)self->_playPauseButton frame];
  if (v28)
  {
    v34 = 1;
    [(AVMobileChromelessPlaybackControlButton *)self->_backwardSecondaryButton setHidden:1];
  }

  else
  {
    v35 = v32;
    v36 = v33;
    showsBackwardSecondaryPlaybackButton = self->_showsBackwardSecondaryPlaybackButton;
    if (showsBackwardSecondaryPlaybackButton)
    {
      [(AVMobileChromelessPlaybackControlButton *)self->_backwardSecondaryButton setFrame:v32 - v25 - v14, (v40 - v38) * 0.5, v14];
    }

    [(AVMobileChromelessPlaybackControlButton *)self->_backwardSecondaryButton setHidden:!showsBackwardSecondaryPlaybackButton];
    if (self->_showsForwardSecondaryPlaybackButton)
    {
      [(AVMobileChromelessPlaybackControlButton *)self->_forwardSecondaryButton setFrame:v25 + v35 + v36, (v40 - v39) * 0.5, v11];
      v34 = 0;
    }

    else
    {
      v34 = 1;
    }
  }

  [(AVMobileChromelessPlaybackControlButton *)self->_forwardSecondaryButton setHidden:v34];
}

- (CGSize)intrinsicContentSize
{
  [(AVMobileChromelessPlaybackControlButton *)self->_playPauseButton intrinsicContentSize];
  v3 = *MEMORY[0x1E69DE788];
  result.height = v2;
  result.width = v3;
  return result;
}

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = AVMobileChromelessPlaybackControlsView;
  [(AVMobileChromelessPlaybackControlsView *)&v3 didMoveToWindow];
  [(AVMobileChromelessPlaybackControlsView *)self _setupPointerInteractionForButton:?];
  [(AVMobileChromelessPlaybackControlsView *)self _setupPointerInteractionForButton:?];
  [(AVMobileChromelessPlaybackControlsView *)self _setupPointerInteractionForButton:?];
  [(AVMobileChromelessPlaybackControlsView *)self _setUpShadowAppearance];
}

- (void)_setupPointerInteractionForButton:(void *)a1
{
  v3 = a2;
  if (a1)
  {
    objc_initWeak(&location, a1);
    v5 = MEMORY[0x1E69E9820];
    v6 = 3221225472;
    v7 = __76__AVMobileChromelessPlaybackControlsView__setupPointerInteractionForButton___block_invoke;
    v8 = &unk_1E7208AA0;
    objc_copyWeak(&v9, &location);
    v4 = _Block_copy(&v5);
    [v3 setPointerStyleProvider:{v4, v5, v6, v7, v8}];

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

id __76__AVMobileChromelessPlaybackControlsView__setupPointerInteractionForButton___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = [v3 pointerTargetView];
    [v5 frame];
    x = v25.origin.x;
    y = v25.origin.y;
    width = v25.size.width;
    height = v25.size.height;
    v10 = CGRectGetWidth(v25);
    v11 = width;
    v12 = v10 + 10.0 - fmodf(v11, 10.0) + 20.0;
    v26.origin.x = x;
    v26.origin.y = y;
    v26.size.width = width;
    v26.size.height = height;
    v13 = CGRectGetHeight(v26);
    v14 = height;
    v15 = v13 + 10.0 - fmodf(v14, 10.0) + 20.0;
    if (v12 >= v15)
    {
      v16 = v12;
    }

    else
    {
      v16 = v15;
    }

    v27.origin.x = x;
    v27.origin.y = y;
    v27.size.width = width;
    v27.size.height = height;
    v17 = CGRectGetMidX(v27) - v16 * 0.5;
    v28.origin.x = x;
    v28.origin.y = y;
    v28.size.width = width;
    v28.size.height = height;
    v18 = CGRectGetMidY(v28) - v16 * 0.5;
    v19 = [objc_alloc(MEMORY[0x1E69DD070]) initWithView:v5];
    v29.origin.x = v17;
    v29.origin.y = v18;
    v29.size.width = v16;
    v29.size.height = v16;
    v20 = [MEMORY[0x1E69DCDC8] shapeWithRoundedRect:v17 cornerRadius:{v18, v16, v16, CGRectGetHeight(v29) * 0.5}];
    v21 = [MEMORY[0x1E69DCDA0] effectWithPreview:v19];
    v22 = [MEMORY[0x1E69DCDD0] styleWithEffect:v21 shape:v20];
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (void)avkit_intrinsicContentSizeOfSubviewWasInvalidated:(id)a3
{
  v4 = a3;
  [(AVMobileChromelessPlaybackControlsView *)self invalidateIntrinsicContentSize];
  v5 = [(AVMobileChromelessPlaybackControlsView *)self superview];
  [v5 avkit_intrinsicContentSizeOfSubviewWasInvalidated:v4];

  [(AVMobileChromelessPlaybackControlsView *)self setNeedsLayout];
}

- (void)setAvkit_extendedDynamicRangeGain:(double)a3
{
  if (self->_extendedDynamicRangeGain != a3)
  {
    self->_extendedDynamicRangeGain = a3;
    [(AVMobileChromelessPlaybackControlsView *)self _updateExtendedDynamicRangeGain];
  }
}

- (uint64_t)_updateExtendedDynamicRangeGain
{
  if (result)
  {
    v1 = result;
    [*(result + 552) setAvkit_extendedDynamicRangeGain:*(result + 488)];
    [*(v1 + 560) setAvkit_extendedDynamicRangeGain:*(v1 + 488)];
    v2 = *(v1 + 480);
    v3 = *(v1 + 488);

    return [v2 setAvkit_extendedDynamicRangeGain:v3];
  }

  return result;
}

- (void)triggerForwardSecondaryControlIconAnimation
{
  if (self->_forwardIntervalSkipGlyphState == @"State 1")
  {
    v3 = @"State 2";
  }

  else
  {
    v3 = @"State 1";
  }

  objc_storeStrong(&self->_forwardIntervalSkipGlyphState, v3);
  forwardSecondaryButton = self->_forwardSecondaryButton;
  forwardIntervalSkipGlyphState = self->_forwardIntervalSkipGlyphState;

  [(AVMobileChromelessPlaybackControlButton *)forwardSecondaryButton setPlaybackControlButtonIconState:forwardIntervalSkipGlyphState];
}

- (void)triggerBackwardSecondaryControlIconAnimation
{
  if (self->_backwardIntervalSkipGlyphState == @"State 1")
  {
    v3 = @"State 2";
  }

  else
  {
    v3 = @"State 1";
  }

  objc_storeStrong(&self->_backwardIntervalSkipGlyphState, v3);
  backwardSecondaryButton = self->_backwardSecondaryButton;
  backwardIntervalSkipGlyphState = self->_backwardIntervalSkipGlyphState;

  [(AVMobileChromelessPlaybackControlButton *)backwardSecondaryButton setPlaybackControlButtonIconState:backwardIntervalSkipGlyphState];
}

- (void)setStyleSheet:(id)a3
{
  v5 = a3;
  if (self->_styleSheet != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_styleSheet, a3);
    [(AVMobileChromelessPlaybackControlButton *)self->_playPauseButton setStyleSheet:self->_styleSheet];
    [(AVMobileChromelessPlaybackControlButton *)self->_forwardSecondaryButton setStyleSheet:self->_styleSheet];
    [(AVMobileChromelessPlaybackControlButton *)self->_backwardSecondaryButton setStyleSheet:self->_styleSheet];
    [(AVMobileChromelessPlaybackControlsView *)self setNeedsLayout];
    v5 = v6;
  }
}

- (void)setForwardSecondaryControlSkipInterval:(id *)a3
{
  p_forwardSecondaryControlSkipInterval = &self->_forwardSecondaryControlSkipInterval;
  time1 = self->_forwardSecondaryControlSkipInterval;
  v8 = *a3;
  if (CMTimeCompare(&time1, &v8))
  {
    v6 = *&a3->var0;
    p_forwardSecondaryControlSkipInterval->epoch = a3->var3;
    *&p_forwardSecondaryControlSkipInterval->value = v6;
    forwardSecondaryButton = self->_forwardSecondaryButton;
    time1 = *a3;
    [(AVMobileChromelessPlaybackControlButton *)forwardSecondaryButton setSkipInterval:&time1];
  }
}

- (void)setBackwardSecondaryControlSkipInterval:(id *)a3
{
  p_backwardSecondaryControlSkipInterval = &self->_backwardSecondaryControlSkipInterval;
  time1 = self->_backwardSecondaryControlSkipInterval;
  v8 = *a3;
  if (CMTimeCompare(&time1, &v8))
  {
    v6 = *&a3->var0;
    p_backwardSecondaryControlSkipInterval->epoch = a3->var3;
    *&p_backwardSecondaryControlSkipInterval->value = v6;
    backwardSecondaryButton = self->_backwardSecondaryButton;
    time1 = *a3;
    [(AVMobileChromelessPlaybackControlButton *)backwardSecondaryButton setSkipInterval:&time1];
  }
}

- (void)setBackwardSecondaryControlEnabled:(BOOL)a3
{
  if (self->_backwardSecondaryControlEnabled != a3)
  {
    self->_backwardSecondaryControlEnabled = a3;
    [(AVMobileChromelessPlaybackControlButton *)self->_backwardSecondaryButton setEnabled:?];
  }
}

- (void)setForwardSecondaryControlEnabled:(BOOL)a3
{
  if (self->_forwardSecondaryControlEnabled != a3)
  {
    self->_forwardSecondaryControlEnabled = a3;
    [(AVMobileChromelessPlaybackControlButton *)self->_forwardSecondaryButton setEnabled:?];
  }
}

- (void)setBackwardSecondaryControlIcon:(unint64_t)a3
{
  if (self->_backwardSecondaryControlIcon != a3)
  {
    self->_backwardSecondaryControlIcon = a3;
    [(AVMobileChromelessPlaybackControlsView *)self _updateBackwardSecondaryControlIcon];
  }
}

- (void)setForwardSecondaryControlIcon:(unint64_t)a3
{
  if (self->_forwardSecondaryControlIcon != a3)
  {
    self->_forwardSecondaryControlIcon = a3;
    [(AVMobileChromelessPlaybackControlsView *)self _updateForwardSecondaryControlIcon];
  }
}

- (void)setShowsForwardSecondaryPlaybackButton:(BOOL)a3
{
  if (self->_showsForwardSecondaryPlaybackButton != a3)
  {
    self->_showsForwardSecondaryPlaybackButton = a3;
    [(AVMobileChromelessPlaybackControlsView *)self setNeedsLayout];
  }
}

- (void)setShowsBackwardSecondaryPlaybackButton:(BOOL)a3
{
  if (self->_showsBackwardSecondaryPlaybackButton != a3)
  {
    self->_showsBackwardSecondaryPlaybackButton = a3;
    [(AVMobileChromelessPlaybackControlsView *)self setNeedsLayout];
  }
}

- (void)setShowsPlayPauseButton:(BOOL)a3
{
  if (self->_showsPlayPauseButton != a3)
  {
    self->_showsPlayPauseButton = a3;
    [(AVMobileChromelessPlaybackControlsView *)self setNeedsLayout];
  }
}

- (void)setPlayPauseButtonShowsPlayIcon:(BOOL)a3
{
  if (self->_playPauseButtonShowsPlayIcon != a3)
  {
    self->_playPauseButtonShowsPlayIcon = a3;
    if (a3)
    {
      v4 = @"play";
    }

    else
    {
      v4 = @"pause";
    }

    [(AVMobileChromelessPlaybackControlButton *)self->_playPauseButton setPlaybackControlButtonIconState:v4];
    playPauseButton = self->_playPauseButton;
    if (self->_playPauseButtonShowsPlayIcon)
    {
      v6 = @"Play";
    }

    else
    {
      v6 = @"Pause";
    }

    v7 = AVLocalizedString(v6);
    [(AVMobileChromelessPlaybackControlButton *)playPauseButton setAccessibilityLabel:v7];

    [(AVMobileChromelessPlaybackControlsView *)self setNeedsLayout];
  }
}

- (AVMobileChromelessPlaybackControlsView)initWithStyleSheet:(id)a3
{
  v29[3] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v25.receiver = self;
  v25.super_class = AVMobileChromelessPlaybackControlsView;
  v6 = [(AVView *)&v25 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_styleSheet, a3);
    memset(&v24, 0, sizeof(v24));
    CMTimeMakeWithSeconds(&v24, 10.0, 600);
    v8 = *&v24.value;
    *(v7 + 584) = v24.epoch;
    *(v7 + 568) = v8;
    v9 = *&v24.value;
    *(v7 + 608) = v24.epoch;
    *(v7 + 592) = v9;
    *(v7 + 528) = 0;
    *(v7 + 536) = 0;
    v10 = [AVMobileChromelessPlaybackControlButton playPauseButtonWithStyleSheet:v5];
    v11 = *(v7 + 480);
    *(v7 + 480) = v10;

    [*(v7 + 480) addTarget:v7 action:sel_playPauseButtonWasPressed forControlEvents:0x2000];
    v12 = [AVMobileChromelessPlaybackControlButton forwardSecondaryButtonWithStyleSheet:v5];
    v13 = *(v7 + 560);
    *(v7 + 560) = v12;

    [*(v7 + 560) addTarget:v7 action:sel_forwardSecondaryControlWasPressed forControlEvents:0x2000];
    v14 = [AVMobileChromelessPlaybackControlButton backwardSecondaryButtonWithStyleSheet:v5];
    v15 = *(v7 + 552);
    *(v7 + 552) = v14;

    [*(v7 + 552) addTarget:v7 action:sel_backwardsSecondaryControlWasPressed forControlEvents:0x2000];
    [v7 setIgnoresTouches:1];
    v29[0] = *(v7 + 480);
    v29[1] = *(v7 + 560);
    v29[2] = *(v7 + 552);
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:3];
    [v7 _addPlaybackControlViews:v16];

    v17 = *(v7 + 552);
    v18 = *(v7 + 568);
    v27 = *(v7 + 584);
    v26 = v18;
    [v17 setSkipInterval:&v26];
    v19 = *(v7 + 560);
    v20 = *(v7 + 592);
    v27 = *(v7 + 608);
    v26 = v20;
    [v19 setSkipInterval:&v26];
    [v7 _updateBackwardSecondaryControlIcon];
    [v7 _updateForwardSecondaryControlIcon];
    [(AVMobileChromelessPlaybackControlsView *)v7 _updateExtendedDynamicRangeGain];
    *(v7 + 516) = 1;
    *(v7 + 517) = 1;
    *(v7 + 513) = 1;
    *(v7 + 514) = 1;
    *(v7 + 515) = 1;
    objc_storeStrong((v7 + 496), @"State 1");
    objc_storeStrong((v7 + 504), @"State 1");
    v28 = objc_opt_class();
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v28 count:1];
    v22 = [v7 registerForTraitChanges:v21 withHandler:&__block_literal_global_8061];
  }

  return v7;
}

@end