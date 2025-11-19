@interface AVMobileGlassPlaybackControlsView
- (AVMobileGlassPlaybackControlsView)initWithStyleSheet:(id)a3;
- (AVMobileGlassPlaybackControlsViewDelegate)delegate;
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
- (void)setFullscreen:(BOOL)a3;
- (void)setPlayPauseButtonShowsPlayIcon:(BOOL)a3;
- (void)setShowsBackwardSecondaryPlaybackButton:(BOOL)a3;
- (void)setShowsForwardSecondaryPlaybackButton:(BOOL)a3;
- (void)setShowsPlayPauseButton:(BOOL)a3;
- (void)setStyleSheet:(id)a3;
- (void)triggerBackwardSecondaryControlIconAnimation;
- (void)triggerForwardSecondaryControlIconAnimation;
- (void)updateBackgroundMaterial;
- (void)viewIsOverVideoDidChange:(id)a3;
@end

@implementation AVMobileGlassPlaybackControlsView

- (AVMobileGlassPlaybackControlsViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)viewIsOverVideoDidChange:(id)a3
{
  v4 = a3;
  if ([v4 isOverVideo])
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  [v4 setOverrideUserInterfaceStyle:v3];
}

- (void)_updateForwardSecondaryControlIcon
{
  forwardSecondaryControlIcon = self->_forwardSecondaryControlIcon;
  if (forwardSecondaryControlIcon <= 2)
  {
    v4 = off_1E7208AD8[forwardSecondaryControlIcon];
    [(AVMobileGlassPlaybackControlButton *)self->_forwardSecondaryButton setImageName:*off_1E7208AC0[forwardSecondaryControlIcon]];
    [(AVMobileGlassPlaybackControlButton *)self->_forwardSecondaryButton setAccessibilityIdentifier:v4];
  }

  [(AVMobileGlassPlaybackControlsView *)self setNeedsLayout];
}

- (void)_updateBackwardSecondaryControlIcon
{
  backwardSecondaryControlIcon = self->_backwardSecondaryControlIcon;
  if (backwardSecondaryControlIcon == 2)
  {
    [(AVMobileGlassPlaybackControlButton *)self->_backwardSecondaryButton setImageName:@"forward.end.alt.fill"];
    backwardSecondaryButton = self->_backwardSecondaryButton;
    v5 = 0;
  }

  else if (backwardSecondaryControlIcon == 1)
  {
    [(AVMobileGlassPlaybackControlButton *)self->_backwardSecondaryButton setImageName:@"backward.end.fill"];
    backwardSecondaryButton = self->_backwardSecondaryButton;
    v5 = @"Skip To Previous";
  }

  else
  {
    if (backwardSecondaryControlIcon)
    {
      goto LABEL_8;
    }

    [(AVMobileGlassPlaybackControlButton *)self->_backwardSecondaryButton setImageName:@"gobackward.10"];
    backwardSecondaryButton = self->_backwardSecondaryButton;
    v5 = @"Skip Backward";
  }

  [(AVMobileGlassPlaybackControlButton *)backwardSecondaryButton setAccessibilityIdentifier:v5];
LABEL_8:

  [(AVMobileGlassPlaybackControlsView *)self setNeedsLayout];
}

- (void)_setUpShadowAppearance
{
  v5 = [(AVMobileGlassPlaybackControlButton *)self->_playPauseButton layer];
  v3 = [(AVMobileGlassPlaybackControlButton *)self->_backwardSecondaryButton layer];
  v4 = [(AVMobileGlassPlaybackControlButton *)self->_forwardSecondaryButton layer];
  [v5 setShadowOffset:{0.0, 2.0}];
  [v5 setShadowRadius:8.0];
  [v3 setShadowOffset:{0.0, 2.0}];
  [v3 setShadowRadius:8.0];
  [v4 setShadowOffset:{0.0, 2.0}];
  [v4 setShadowRadius:8.0];
  [(AVMobileGlassPlaybackControlsView *)&self->super.super.super.super.super.isa _updateShadowAppearanceState];
}

- (void)_updateShadowAppearanceState
{
  if (a1)
  {
    v13 = [a1[71] layer];
    v2 = [a1[72] layer];
    v3 = [a1[73] layer];
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

        [(AVMobileGlassPlaybackControlsView *)self addSubview:*(*(&v9 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)forwardSecondaryControlWasPressed
{
  v3 = [(AVMobileGlassPlaybackControlsView *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(AVMobileGlassPlaybackControlsView *)self delegate];
    [v5 playbackControlsViewForwardSecondaryControlWasPressed:self];

    [(AVMobileGlassPlaybackControlsView *)self triggerForwardSecondaryControlIconAnimation];
  }
}

- (void)backwardsSecondaryControlWasPressed
{
  v3 = [(AVMobileGlassPlaybackControlsView *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(AVMobileGlassPlaybackControlsView *)self delegate];
    [v5 playbackControlsViewBackwardSecondaryControlWasPressed:self];

    [(AVMobileGlassPlaybackControlsView *)self triggerBackwardSecondaryControlIconAnimation];
  }
}

- (void)playPauseButtonWasPressed
{
  v3 = [(AVMobileGlassPlaybackControlsView *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(AVMobileGlassPlaybackControlsView *)self delegate];
    [v5 playbackControlsViewPlayPauseButtonWasPressed:self];
  }
}

- (void)layoutSubviews
{
  v49.receiver = self;
  v49.super_class = AVMobileGlassPlaybackControlsView;
  [(AVView *)&v49 layoutSubviews];
  [(AVMobileGlassPlaybackControlsView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(AVMobileGlassPlaybackControlButton *)self->_forwardSecondaryButton intrinsicContentSize];
  v12 = v11;
  v47 = v13;
  [(AVMobileGlassPlaybackControlButton *)self->_backwardSecondaryButton intrinsicContentSize];
  v15 = v14;
  v48 = v16;
  [(AVMobileGlassPlaybackControlButton *)self->_playPauseButton intrinsicContentSize];
  v18 = v17;
  v20 = v19;
  v21 = 392.0;
  if (v8 <= 392.0)
  {
    v25 = 343.0;
    if (v8 >= 343.0)
    {
      v25 = v8;
    }

    v22 = (fmin(v25, 392.0) + -343.0) / 49.0;
    v23 = 20.0;
    v24 = 18.0;
  }

  else
  {
    if (v8 >= 392.0)
    {
      v21 = v8;
    }

    v22 = (fmin(v21, 600.0) + -392.0) / 208.0;
    v23 = 38.0;
    v24 = 30.0;
  }

  v26 = v23 + v22 * v24;
  v27 = v8 + v26 * -2.0;
  v28 = v27 - v18;
  if (v27 < v18)
  {
    v28 = v8 + v26 * -2.0;
  }

  v29 = v28 < v12 + v15;
  if (v27 >= v18)
  {
    if (self->_showsPlayPauseButton)
    {
      v50.origin.x = v4;
      v50.origin.y = v6;
      v50.size.width = v8;
      v46 = v15;
      v30 = v20;
      v50.size.height = v10;
      MidX = CGRectGetMidX(v50);
      v32 = v4;
      v33 = v12;
      v34 = MidX;
      v51.origin.x = v32;
      v51.origin.y = v6;
      v51.size.width = v8;
      v51.size.height = v10;
      MidY = CGRectGetMidY(v51);
      v36 = v34 - v18 * 0.5;
      v12 = v33;
      v37 = MidY - v30 * 0.5;
      v38 = v30;
      v15 = v46;
      [(AVMobileGlassPlaybackControlButton *)self->_playPauseButton setFrame:v36, v37, v18, v38];
      v39 = 0;
      goto LABEL_15;
    }
  }

  else
  {
    v29 = 1;
  }

  v39 = 1;
LABEL_15:
  [(AVMobileGlassPlaybackControlButton *)self->_playPauseButton setHidden:v39];
  [(AVMobileGlassPlaybackControlButton *)self->_playPauseButton frame];
  if (v29)
  {
    v42 = 1;
    [(AVMobileGlassPlaybackControlButton *)self->_backwardSecondaryButton setHidden:1];
  }

  else
  {
    v43 = v40;
    v44 = v41;
    showsBackwardSecondaryPlaybackButton = self->_showsBackwardSecondaryPlaybackButton;
    if (showsBackwardSecondaryPlaybackButton)
    {
      [(AVMobileGlassPlaybackControlButton *)self->_backwardSecondaryButton setFrame:v40 - v26 - v15, (v10 - v48) * 0.5, v15];
    }

    [(AVMobileGlassPlaybackControlButton *)self->_backwardSecondaryButton setHidden:!showsBackwardSecondaryPlaybackButton];
    if (self->_showsForwardSecondaryPlaybackButton)
    {
      [(AVMobileGlassPlaybackControlButton *)self->_forwardSecondaryButton setFrame:v26 + v43 + v44, (v10 - v47) * 0.5, v12];
      v42 = 0;
    }

    else
    {
      v42 = 1;
    }
  }

  [(AVMobileGlassPlaybackControlButton *)self->_forwardSecondaryButton setHidden:v42];
}

- (CGSize)intrinsicContentSize
{
  [(AVMobileGlassPlaybackControlButton *)self->_playPauseButton intrinsicContentSize];
  v3 = *MEMORY[0x1E69DE788];
  result.height = v2;
  result.width = v3;
  return result;
}

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = AVMobileGlassPlaybackControlsView;
  [(AVGlassBackedView *)&v3 didMoveToWindow];
  [(AVMobileGlassPlaybackControlsView *)self _setupPointerInteractionForButton:?];
  [(AVMobileGlassPlaybackControlsView *)self _setupPointerInteractionForButton:?];
  [(AVMobileGlassPlaybackControlsView *)self _setupPointerInteractionForButton:?];
  [(AVMobileGlassPlaybackControlsView *)self _setUpShadowAppearance];
}

- (void)_setupPointerInteractionForButton:(void *)a1
{
  v3 = a2;
  if (a1)
  {
    objc_initWeak(&location, a1);
    v5 = MEMORY[0x1E69E9820];
    v6 = 3221225472;
    v7 = __71__AVMobileGlassPlaybackControlsView__setupPointerInteractionForButton___block_invoke;
    v8 = &unk_1E7208AA0;
    objc_copyWeak(&v9, &location);
    v4 = _Block_copy(&v5);
    [v3 setPointerStyleProvider:{v4, v5, v6, v7, v8}];

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

id __71__AVMobileGlassPlaybackControlsView__setupPointerInteractionForButton___block_invoke(uint64_t a1, void *a2)
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
  [(AVMobileGlassPlaybackControlsView *)self invalidateIntrinsicContentSize];
  v5 = [(AVMobileGlassPlaybackControlsView *)self superview];
  [v5 avkit_intrinsicContentSizeOfSubviewWasInvalidated:v4];

  [(AVMobileGlassPlaybackControlsView *)self setNeedsLayout];
}

- (void)setAvkit_extendedDynamicRangeGain:(double)a3
{
  if (self->_extendedDynamicRangeGain != a3)
  {
    self->_extendedDynamicRangeGain = a3;
    [(AVMobileGlassPlaybackControlsView *)self _updateExtendedDynamicRangeGain];
  }
}

- (uint64_t)_updateExtendedDynamicRangeGain
{
  if (result)
  {
    v1 = result;
    [*(result + 576) setAvkit_extendedDynamicRangeGain:*(result + 504)];
    [*(v1 + 584) setAvkit_extendedDynamicRangeGain:*(v1 + 504)];
    v2 = *(v1 + 568);
    v3 = *(v1 + 504);

    return [v2 setAvkit_extendedDynamicRangeGain:v3];
  }

  return result;
}

- (void)updateBackgroundMaterial
{
  v3 = [(AVGlassBackedView *)self backgroundMaterialStyle];
  v4 = [(AVGlassBackedView *)self backgroundMaterialized];
  [(AVGlassBackedButton *)self->_playPauseButton setBackgroundMaterialStyle:v3];
  [(AVGlassBackedButton *)self->_backwardSecondaryButton setBackgroundMaterialStyle:v3];
  [(AVGlassBackedButton *)self->_forwardSecondaryButton setBackgroundMaterialStyle:v3];
  [(AVGlassBackedButton *)self->_playPauseButton setBackgroundMaterialized:v4];
  [(AVGlassBackedButton *)self->_backwardSecondaryButton setBackgroundMaterialized:v4];
  forwardSecondaryButton = self->_forwardSecondaryButton;

  [(AVGlassBackedButton *)forwardSecondaryButton setBackgroundMaterialized:v4];
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

  [(AVMobileGlassPlaybackControlButton *)forwardSecondaryButton setPlaybackControlButtonIconState:forwardIntervalSkipGlyphState];
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

  [(AVMobileGlassPlaybackControlButton *)backwardSecondaryButton setPlaybackControlButtonIconState:backwardIntervalSkipGlyphState];
}

- (void)setFullscreen:(BOOL)a3
{
  if (self->_fullscreen != a3)
  {
    v4 = a3;
    self->_fullscreen = a3;
    [(AVMobileGlassPlaybackControlButton *)self->_playPauseButton setFullscreen:?];
    [(AVMobileGlassPlaybackControlButton *)self->_backwardSecondaryButton setFullscreen:v4];
    forwardSecondaryButton = self->_forwardSecondaryButton;

    [(AVMobileGlassPlaybackControlButton *)forwardSecondaryButton setFullscreen:v4];
  }
}

- (void)setStyleSheet:(id)a3
{
  v5 = a3;
  if (self->_styleSheet != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_styleSheet, a3);
    [(AVMobileGlassPlaybackControlButton *)self->_playPauseButton setStyleSheet:self->_styleSheet];
    [(AVMobileGlassPlaybackControlButton *)self->_forwardSecondaryButton setStyleSheet:self->_styleSheet];
    [(AVMobileGlassPlaybackControlButton *)self->_backwardSecondaryButton setStyleSheet:self->_styleSheet];
    [(AVMobileGlassPlaybackControlsView *)self setNeedsLayout];
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
    [(AVMobileGlassPlaybackControlButton *)forwardSecondaryButton setSkipInterval:&time1];
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
    [(AVMobileGlassPlaybackControlButton *)backwardSecondaryButton setSkipInterval:&time1];
  }
}

- (void)setBackwardSecondaryControlEnabled:(BOOL)a3
{
  if (self->_backwardSecondaryControlEnabled != a3)
  {
    self->_backwardSecondaryControlEnabled = a3;
    [(AVMobileGlassPlaybackControlButton *)self->_backwardSecondaryButton setEnabled:?];
  }
}

- (void)setForwardSecondaryControlEnabled:(BOOL)a3
{
  if (self->_forwardSecondaryControlEnabled != a3)
  {
    self->_forwardSecondaryControlEnabled = a3;
    [(AVMobileGlassPlaybackControlButton *)self->_forwardSecondaryButton setEnabled:?];
  }
}

- (void)setBackwardSecondaryControlIcon:(unint64_t)a3
{
  if (self->_backwardSecondaryControlIcon != a3)
  {
    self->_backwardSecondaryControlIcon = a3;
    [(AVMobileGlassPlaybackControlsView *)self _updateBackwardSecondaryControlIcon];
  }
}

- (void)setForwardSecondaryControlIcon:(unint64_t)a3
{
  if (self->_forwardSecondaryControlIcon != a3)
  {
    self->_forwardSecondaryControlIcon = a3;
    [(AVMobileGlassPlaybackControlsView *)self _updateForwardSecondaryControlIcon];
  }
}

- (void)setShowsForwardSecondaryPlaybackButton:(BOOL)a3
{
  if (self->_showsForwardSecondaryPlaybackButton != a3)
  {
    self->_showsForwardSecondaryPlaybackButton = a3;
    [(AVMobileGlassPlaybackControlsView *)self setNeedsLayout];
  }
}

- (void)setShowsBackwardSecondaryPlaybackButton:(BOOL)a3
{
  if (self->_showsBackwardSecondaryPlaybackButton != a3)
  {
    self->_showsBackwardSecondaryPlaybackButton = a3;
    [(AVMobileGlassPlaybackControlsView *)self setNeedsLayout];
  }
}

- (void)setShowsPlayPauseButton:(BOOL)a3
{
  if (self->_showsPlayPauseButton != a3)
  {
    self->_showsPlayPauseButton = a3;
    [(AVMobileGlassPlaybackControlsView *)self setNeedsLayout];
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

    [(AVMobileGlassPlaybackControlButton *)self->_playPauseButton setPlaybackControlButtonIconState:v4];
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
    [(AVMobileGlassPlaybackControlButton *)playPauseButton setAccessibilityLabel:v7];

    [(AVMobileGlassPlaybackControlsView *)self setNeedsLayout];
  }
}

- (AVMobileGlassPlaybackControlsView)initWithStyleSheet:(id)a3
{
  v29[3] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v25.receiver = self;
  v25.super_class = AVMobileGlassPlaybackControlsView;
  v6 = [(AVGlassBackedView *)&v25 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_styleSheet, a3);
    memset(&v24, 0, sizeof(v24));
    CMTimeMakeWithSeconds(&v24, 10.0, 600);
    v8 = *&v24.value;
    *(v7 + 608) = v24.epoch;
    *(v7 + 592) = v8;
    v9 = *&v24.value;
    *(v7 + 632) = v24.epoch;
    *(v7 + 616) = v9;
    *(v7 + 544) = 0;
    *(v7 + 552) = 0;
    v10 = [AVMobileGlassPlaybackControlButton playPauseButtonWithStyleSheet:v5];
    v11 = *(v7 + 568);
    *(v7 + 568) = v10;

    [*(v7 + 568) addTarget:v7 action:sel_playPauseButtonWasPressed forControlEvents:0x2000];
    [*(v7 + 568) setContentIntersectingDelegate:v7];
    v12 = [AVMobileGlassPlaybackControlButton forwardSecondaryButtonWithStyleSheet:v5];
    v13 = *(v7 + 584);
    *(v7 + 584) = v12;

    [*(v7 + 584) addTarget:v7 action:sel_forwardSecondaryControlWasPressed forControlEvents:0x2000];
    [*(v7 + 584) setContentIntersectingDelegate:v7];
    v14 = [AVMobileGlassPlaybackControlButton backwardSecondaryButtonWithStyleSheet:v5];
    v15 = *(v7 + 576);
    *(v7 + 576) = v14;

    [*(v7 + 576) addTarget:v7 action:sel_backwardsSecondaryControlWasPressed forControlEvents:0x2000];
    [*(v7 + 576) setContentIntersectingDelegate:v7];
    [v7 setIgnoresTouches:1];
    v29[0] = *(v7 + 568);
    v29[1] = *(v7 + 584);
    v29[2] = *(v7 + 576);
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:3];
    [v7 _addPlaybackControlViews:v16];

    v17 = *(v7 + 576);
    v18 = *(v7 + 592);
    v27 = *(v7 + 608);
    v26 = v18;
    [v17 setSkipInterval:&v26];
    v19 = *(v7 + 584);
    v20 = *(v7 + 616);
    v27 = *(v7 + 632);
    v26 = v20;
    [v19 setSkipInterval:&v26];
    [v7 _updateBackwardSecondaryControlIcon];
    [v7 _updateForwardSecondaryControlIcon];
    [(AVMobileGlassPlaybackControlsView *)v7 _updateExtendedDynamicRangeGain];
    *(v7 + 532) = 1;
    *(v7 + 533) = 1;
    *(v7 + 529) = 1;
    *(v7 + 530) = 1;
    *(v7 + 531) = 1;
    objc_storeStrong((v7 + 512), @"State 1");
    objc_storeStrong((v7 + 520), @"State 1");
    v28 = objc_opt_class();
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v28 count:1];
    v22 = [v7 registerForTraitChanges:v21 withHandler:&__block_literal_global_20870];
  }

  return v7;
}

@end