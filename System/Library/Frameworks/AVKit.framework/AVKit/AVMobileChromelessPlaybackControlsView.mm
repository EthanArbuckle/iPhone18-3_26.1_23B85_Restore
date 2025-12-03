@interface AVMobileChromelessPlaybackControlsView
- (AVMobileChromelessPlaybackControlsView)initWithStyleSheet:(id)sheet;
- (AVMobileChromelessPlaybackControlsViewDelegate)delegate;
- (CGSize)intrinsicContentSize;
- (uint64_t)_updateExtendedDynamicRangeGain;
- (void)_addPlaybackControlViews:(id)views;
- (void)_setUpShadowAppearance;
- (void)_setupPointerInteractionForButton:(void *)button;
- (void)_updateBackwardSecondaryControlIcon;
- (void)_updateForwardSecondaryControlIcon;
- (void)_updateShadowAppearanceState;
- (void)avkit_intrinsicContentSizeOfSubviewWasInvalidated:(id)invalidated;
- (void)backwardsSecondaryControlWasPressed;
- (void)didMoveToWindow;
- (void)forwardSecondaryControlWasPressed;
- (void)layoutSubviews;
- (void)playPauseButtonWasPressed;
- (void)setAvkit_extendedDynamicRangeGain:(double)gain;
- (void)setBackwardSecondaryControlEnabled:(BOOL)enabled;
- (void)setBackwardSecondaryControlIcon:(unint64_t)icon;
- (void)setBackwardSecondaryControlSkipInterval:(id *)interval;
- (void)setForwardSecondaryControlEnabled:(BOOL)enabled;
- (void)setForwardSecondaryControlIcon:(unint64_t)icon;
- (void)setForwardSecondaryControlSkipInterval:(id *)interval;
- (void)setPlayPauseButtonShowsPlayIcon:(BOOL)icon;
- (void)setShowsBackwardSecondaryPlaybackButton:(BOOL)button;
- (void)setShowsForwardSecondaryPlaybackButton:(BOOL)button;
- (void)setShowsPlayPauseButton:(BOOL)button;
- (void)setStyleSheet:(id)sheet;
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
  layer = [(AVMobileChromelessPlaybackControlButton *)self->_playPauseButton layer];
  layer2 = [(AVMobileChromelessPlaybackControlButton *)self->_backwardSecondaryButton layer];
  layer3 = [(AVMobileChromelessPlaybackControlButton *)self->_forwardSecondaryButton layer];
  [layer setShadowOffset:{0.0, 2.0}];
  [layer setShadowRadius:8.0];
  [layer2 setShadowOffset:{0.0, 2.0}];
  [layer2 setShadowRadius:8.0];
  [layer3 setShadowOffset:{0.0, 2.0}];
  [layer3 setShadowRadius:8.0];
  [(AVMobileChromelessPlaybackControlsView *)&self->super.super.super.super.isa _updateShadowAppearanceState];
}

- (void)_updateShadowAppearanceState
{
  if (self)
  {
    layer = [self[60] layer];
    layer2 = [self[69] layer];
    layer3 = [self[70] layer];
    traitCollection = [self traitCollection];
    userInterfaceStyle = [traitCollection userInterfaceStyle];

    if (userInterfaceStyle == 1)
    {
      blackColor = [MEMORY[0x1E69DC888] blackColor];
      cGColor = [blackColor CGColor];

      v8 = 1050253722;
      v9 = 1041865114;
    }

    else
    {
      cGColor = 0;
      v9 = 0;
      v8 = 0;
    }

    [layer setShadowColor:cGColor];
    LODWORD(v10) = v9;
    [layer setShadowOpacity:v10];
    [layer2 setShadowColor:cGColor];
    LODWORD(v11) = v8;
    [layer2 setShadowOpacity:v11];
    [layer3 setShadowColor:cGColor];
    LODWORD(v12) = v8;
    [layer3 setShadowOpacity:v12];
  }
}

- (void)_addPlaybackControlViews:(id)views
{
  v14 = *MEMORY[0x1E69E9840];
  viewsCopy = views;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [viewsCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(viewsCopy);
        }

        [(AVMobileChromelessPlaybackControlsView *)self addSubview:*(*(&v9 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [viewsCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)forwardSecondaryControlWasPressed
{
  delegate = [(AVMobileChromelessPlaybackControlsView *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(AVMobileChromelessPlaybackControlsView *)self delegate];
    [delegate2 playbackControlsViewForwardSecondaryControlWasPressed:self];

    [(AVMobileChromelessPlaybackControlsView *)self triggerForwardSecondaryControlIconAnimation];
  }
}

- (void)backwardsSecondaryControlWasPressed
{
  delegate = [(AVMobileChromelessPlaybackControlsView *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(AVMobileChromelessPlaybackControlsView *)self delegate];
    [delegate2 playbackControlsViewBackwardSecondaryControlWasPressed:self];

    [(AVMobileChromelessPlaybackControlsView *)self triggerBackwardSecondaryControlIconAnimation];
  }
}

- (void)playPauseButtonWasPressed
{
  delegate = [(AVMobileChromelessPlaybackControlsView *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(AVMobileChromelessPlaybackControlsView *)self delegate];
    [delegate2 playbackControlsViewPlayPauseButtonWasPressed:self];
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

- (void)_setupPointerInteractionForButton:(void *)button
{
  v3 = a2;
  if (button)
  {
    objc_initWeak(&location, button);
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

- (void)avkit_intrinsicContentSizeOfSubviewWasInvalidated:(id)invalidated
{
  invalidatedCopy = invalidated;
  [(AVMobileChromelessPlaybackControlsView *)self invalidateIntrinsicContentSize];
  superview = [(AVMobileChromelessPlaybackControlsView *)self superview];
  [superview avkit_intrinsicContentSizeOfSubviewWasInvalidated:invalidatedCopy];

  [(AVMobileChromelessPlaybackControlsView *)self setNeedsLayout];
}

- (void)setAvkit_extendedDynamicRangeGain:(double)gain
{
  if (self->_extendedDynamicRangeGain != gain)
  {
    self->_extendedDynamicRangeGain = gain;
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

- (void)setStyleSheet:(id)sheet
{
  sheetCopy = sheet;
  if (self->_styleSheet != sheetCopy)
  {
    v6 = sheetCopy;
    objc_storeStrong(&self->_styleSheet, sheet);
    [(AVMobileChromelessPlaybackControlButton *)self->_playPauseButton setStyleSheet:self->_styleSheet];
    [(AVMobileChromelessPlaybackControlButton *)self->_forwardSecondaryButton setStyleSheet:self->_styleSheet];
    [(AVMobileChromelessPlaybackControlButton *)self->_backwardSecondaryButton setStyleSheet:self->_styleSheet];
    [(AVMobileChromelessPlaybackControlsView *)self setNeedsLayout];
    sheetCopy = v6;
  }
}

- (void)setForwardSecondaryControlSkipInterval:(id *)interval
{
  p_forwardSecondaryControlSkipInterval = &self->_forwardSecondaryControlSkipInterval;
  time1 = self->_forwardSecondaryControlSkipInterval;
  v8 = *interval;
  if (CMTimeCompare(&time1, &v8))
  {
    v6 = *&interval->var0;
    p_forwardSecondaryControlSkipInterval->epoch = interval->var3;
    *&p_forwardSecondaryControlSkipInterval->value = v6;
    forwardSecondaryButton = self->_forwardSecondaryButton;
    time1 = *interval;
    [(AVMobileChromelessPlaybackControlButton *)forwardSecondaryButton setSkipInterval:&time1];
  }
}

- (void)setBackwardSecondaryControlSkipInterval:(id *)interval
{
  p_backwardSecondaryControlSkipInterval = &self->_backwardSecondaryControlSkipInterval;
  time1 = self->_backwardSecondaryControlSkipInterval;
  v8 = *interval;
  if (CMTimeCompare(&time1, &v8))
  {
    v6 = *&interval->var0;
    p_backwardSecondaryControlSkipInterval->epoch = interval->var3;
    *&p_backwardSecondaryControlSkipInterval->value = v6;
    backwardSecondaryButton = self->_backwardSecondaryButton;
    time1 = *interval;
    [(AVMobileChromelessPlaybackControlButton *)backwardSecondaryButton setSkipInterval:&time1];
  }
}

- (void)setBackwardSecondaryControlEnabled:(BOOL)enabled
{
  if (self->_backwardSecondaryControlEnabled != enabled)
  {
    self->_backwardSecondaryControlEnabled = enabled;
    [(AVMobileChromelessPlaybackControlButton *)self->_backwardSecondaryButton setEnabled:?];
  }
}

- (void)setForwardSecondaryControlEnabled:(BOOL)enabled
{
  if (self->_forwardSecondaryControlEnabled != enabled)
  {
    self->_forwardSecondaryControlEnabled = enabled;
    [(AVMobileChromelessPlaybackControlButton *)self->_forwardSecondaryButton setEnabled:?];
  }
}

- (void)setBackwardSecondaryControlIcon:(unint64_t)icon
{
  if (self->_backwardSecondaryControlIcon != icon)
  {
    self->_backwardSecondaryControlIcon = icon;
    [(AVMobileChromelessPlaybackControlsView *)self _updateBackwardSecondaryControlIcon];
  }
}

- (void)setForwardSecondaryControlIcon:(unint64_t)icon
{
  if (self->_forwardSecondaryControlIcon != icon)
  {
    self->_forwardSecondaryControlIcon = icon;
    [(AVMobileChromelessPlaybackControlsView *)self _updateForwardSecondaryControlIcon];
  }
}

- (void)setShowsForwardSecondaryPlaybackButton:(BOOL)button
{
  if (self->_showsForwardSecondaryPlaybackButton != button)
  {
    self->_showsForwardSecondaryPlaybackButton = button;
    [(AVMobileChromelessPlaybackControlsView *)self setNeedsLayout];
  }
}

- (void)setShowsBackwardSecondaryPlaybackButton:(BOOL)button
{
  if (self->_showsBackwardSecondaryPlaybackButton != button)
  {
    self->_showsBackwardSecondaryPlaybackButton = button;
    [(AVMobileChromelessPlaybackControlsView *)self setNeedsLayout];
  }
}

- (void)setShowsPlayPauseButton:(BOOL)button
{
  if (self->_showsPlayPauseButton != button)
  {
    self->_showsPlayPauseButton = button;
    [(AVMobileChromelessPlaybackControlsView *)self setNeedsLayout];
  }
}

- (void)setPlayPauseButtonShowsPlayIcon:(BOOL)icon
{
  if (self->_playPauseButtonShowsPlayIcon != icon)
  {
    self->_playPauseButtonShowsPlayIcon = icon;
    if (icon)
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

- (AVMobileChromelessPlaybackControlsView)initWithStyleSheet:(id)sheet
{
  v29[3] = *MEMORY[0x1E69E9840];
  sheetCopy = sheet;
  v25.receiver = self;
  v25.super_class = AVMobileChromelessPlaybackControlsView;
  v6 = [(AVView *)&v25 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_styleSheet, sheet);
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
    v10 = [AVMobileChromelessPlaybackControlButton playPauseButtonWithStyleSheet:sheetCopy];
    v11 = *(v7 + 480);
    *(v7 + 480) = v10;

    [*(v7 + 480) addTarget:v7 action:sel_playPauseButtonWasPressed forControlEvents:0x2000];
    v12 = [AVMobileChromelessPlaybackControlButton forwardSecondaryButtonWithStyleSheet:sheetCopy];
    v13 = *(v7 + 560);
    *(v7 + 560) = v12;

    [*(v7 + 560) addTarget:v7 action:sel_forwardSecondaryControlWasPressed forControlEvents:0x2000];
    v14 = [AVMobileChromelessPlaybackControlButton backwardSecondaryButtonWithStyleSheet:sheetCopy];
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