@interface AVTransportControlsView
- (AVTransportControlsView)initWithFrame:(CGRect)a3 styleSheet:(id)a4;
- (AVTransportControlsViewDelegate)delegate;
- (BOOL)_subviewIsCustomMenuItemView:(id)a3;
- (BOOL)canShowScrubInstructions;
- (BOOL)isCollapsedOrExcluded;
- (CGSize)extrinsicContentSize;
- (CGSize)intrinsicContentSize;
- (NSArray)doubleRowViews;
- (NSArray)singleRowViews;
- (NSTimer)scrubInstructionsTimer;
- (double)_doubleRowLayoutSpacingAfterSubview:(id)a3;
- (double)_rowSpacingForDoubleRowLayoutAfterRow:(unint64_t)a3;
- (double)_singeRowLayoutSpacingAfterSubview:(id)a3;
- (double)layoutHeightThatFitsRowsStartingWithRow:(unint64_t)a3;
- (id)_scrubInstructionsAttributedText;
- (unint64_t)_layoutItemDisplayPriorityForSubview:(id)a3;
- (void)_layoutDoubleRowViews;
- (void)_layoutSingleRowViews;
- (void)_showScrubInstructions;
- (void)_updateCustomContentTransitioningInfoPanelLayout;
- (void)_updateFontSizes;
- (void)_updateScrubInstructionsFrame;
- (void)_updateScrubInstructionsLabelsText;
- (void)avkit_reevaluateHiddenStateOfItem:(id)a3;
- (void)beginScrubbing:(id)a3;
- (void)endScrubbing:(id)a3;
- (void)layoutSubviews;
- (void)reevaluateHiddenStateOfAllItems;
- (void)scrubberSlowKnobMovementDetected:(id)a3;
- (void)scrubberValueChanged:(id)a3;
- (void)setCollapsed:(BOOL)a3;
- (void)setCustomContentTransitioningInfoPanel:(id)a3;
- (void)setCustomItems:(id)a3;
- (void)setCustomMenuItemsViews:(id)a3;
- (void)setDoubleRowLayoutEnabled:(BOOL)a3;
- (void)setExtrinsicContentSize:(CGSize)a3;
- (void)setHasFullScreenAppearance:(BOOL)a3;
- (void)setIncluded:(BOOL)a3;
- (void)setLiveStreamingControlsIncludeScrubber:(BOOL)a3;
- (void)setShowsLiveStreamingControls:(BOOL)a3;
- (void)setShowsLoadingIndicator:(BOOL)a3;
- (void)setStyleSheet:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation AVTransportControlsView

- (CGSize)extrinsicContentSize
{
  width = self->_extrinsicContentSize.width;
  height = self->_extrinsicContentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (NSTimer)scrubInstructionsTimer
{
  WeakRetained = objc_loadWeakRetained(&self->_scrubInstructionsTimer);

  return WeakRetained;
}

- (AVTransportControlsViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BOOL)_subviewIsCustomMenuItemView:(id)a3
{
  v4 = a3;
  v5 = [(AVTransportControlsView *)self customMenuItemsViews];

  if (v5)
  {
    v6 = v4;
    if (v6)
    {
      v7 = [(AVTransportControlsView *)self customMenuItemsViews];
      v8 = [v7 containsObject:v6];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)canShowScrubInstructions
{
  v2 = [(AVTransportControlsView *)self customContentTransitioningInfoPanel];
  v3 = v2 == 0;

  return v3;
}

- (NSArray)doubleRowViews
{
  v22[17] = *MEMORY[0x1E69E9840];
  scrubber = self->_scrubber;
  liveBroadcastLabel = self->_liveBroadcastLabel;
  elapsedTimeLabel = self->_elapsedTimeLabel;
  timeRemainingLabel = self->_timeRemainingLabel;
  liveBroadcastScrubberLabel = self->_liveBroadcastScrubberLabel;
  routePickerView = self->_routePickerView;
  flexibleViewAfterRoutePickerView = self->_flexibleViewAfterRoutePickerView;
  v22[0] = self->_embeddedExtraContentContainer;
  v22[1] = scrubber;
  skipBackButton = self->_skipBackButton;
  v22[2] = liveBroadcastLabel;
  v22[3] = elapsedTimeLabel;
  startLeftwardContentTransitionButton = self->_startLeftwardContentTransitionButton;
  v22[4] = timeRemainingLabel;
  v22[5] = liveBroadcastScrubberLabel;
  standardPlayPauseButton = self->_standardPlayPauseButton;
  v22[6] = routePickerView;
  v22[7] = flexibleViewAfterRoutePickerView;
  startRightwardContentTransitionButton = self->_startRightwardContentTransitionButton;
  v22[8] = skipBackButton;
  v22[9] = startLeftwardContentTransitionButton;
  skipForwardButton = self->_skipForwardButton;
  v22[10] = standardPlayPauseButton;
  v22[11] = startRightwardContentTransitionButton;
  flexibleViewAfterSkipForwardButtons = self->_flexibleViewAfterSkipForwardButtons;
  v22[12] = skipForwardButton;
  v22[13] = flexibleViewAfterSkipForwardButtons;
  playbackSpeedButton = self->_playbackSpeedButton;
  v22[14] = self->_mediaSelectionButton;
  v22[15] = playbackSpeedButton;
  v22[16] = self->_controlOverflowButton;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:17];
  v18 = [(AVTransportControlsView *)self customMenuItemsViews];

  if (v18)
  {
    v19 = [(AVTransportControlsView *)self customMenuItemsViews];
    v20 = [v17 arrayByAddingObjectsFromArray:v19];

    v17 = v20;
  }

  return v17;
}

- (NSArray)singleRowViews
{
  v23[10] = *MEMORY[0x1E69E9840];
  startLeftwardContentTransitionButton = self->_startLeftwardContentTransitionButton;
  v23[0] = self->_skipBackButton;
  v23[1] = startLeftwardContentTransitionButton;
  skipForwardButton = self->_skipForwardButton;
  v23[2] = self->_standardPlayPauseButton;
  v23[3] = skipForwardButton;
  liveBroadcastLabel = self->_liveBroadcastLabel;
  v23[4] = self->_startRightwardContentTransitionButton;
  v23[5] = liveBroadcastLabel;
  scrubber = self->_scrubber;
  v23[6] = self->_elapsedTimeLabel;
  v23[7] = scrubber;
  liveBroadcastScrubberLabel = self->_liveBroadcastScrubberLabel;
  v23[8] = self->_timeRemainingLabel;
  v23[9] = liveBroadcastScrubberLabel;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:10];
  mediaSelectionButton = self->_mediaSelectionButton;
  v22[0] = self->_routePickerView;
  v22[1] = mediaSelectionButton;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:2];
  v11 = [v8 arrayByAddingObjectsFromArray:v10];

  v12 = [(AVTransportControlsView *)self customItems];
  v13 = [v11 arrayByAddingObjectsFromArray:v12];

  v14 = [(AVTransportControlsView *)self customMenuItemsViews];

  if (v14)
  {
    v15 = [(AVTransportControlsView *)self customMenuItemsViews];
    v16 = [v13 arrayByAddingObjectsFromArray:v15];

    v13 = v16;
  }

  playbackSpeedButton = self->_playbackSpeedButton;
  v21[0] = self->_controlOverflowButton;
  v21[1] = playbackSpeedButton;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:2];
  v19 = [v13 arrayByAddingObjectsFromArray:v18];

  return v19;
}

- (void)_updateCustomContentTransitioningInfoPanelLayout
{
  v3 = [(AVTransportControlsView *)self customContentTransitioningInfoPanel];

  if (!v3)
  {
    return;
  }

  v4 = [(AVTransportControlsView *)self isDoubleRowLayoutEnabled];
  v5 = [(AVTransportControlsView *)self customContentTransitioningInfoPanel];
  v6 = [v5 superview];
  if (v4)
  {
    v7 = [(AVTransportControlsView *)self embeddedExtraContentContainer];

    if (v6 != v7)
    {
      v8 = [(AVTransportControlsView *)self embeddedExtraContentContainer];
      v9 = [(AVTransportControlsView *)self customContentTransitioningInfoPanel];
      [v8 addSubview:v9];
    }

    v10 = [(AVTransportControlsView *)self customContentTransitioningInfoPanel];
    v11 = [(AVTransportControlsView *)self embeddedExtraContentContainer];
    [v11 bounds];
    [v10 setFrame:?];
    goto LABEL_9;
  }

  v12 = [(AVTransportControlsView *)self detachedExtraContentLayoutView];

  if (v6 != v12)
  {
    v10 = [(AVTransportControlsView *)self detachedExtraContentLayoutView];
    v11 = [(AVTransportControlsView *)self customContentTransitioningInfoPanel];
    [v10 addSubview:v11];
LABEL_9:
  }

  v13 = [(AVTransportControlsView *)self detachedExtraContentLayoutView];
  [v13 setHidden:{-[AVTransportControlsView isDoubleRowLayoutEnabled](self, "isDoubleRowLayoutEnabled")}];

  v14 = [(AVTransportControlsView *)self detachedExtraContentLayoutView];
  if ([(AVTransportControlsView *)self isDoubleRowLayoutEnabled])
  {
    v15 = 0.0;
  }

  else
  {
    v15 = 1.0;
  }

  [v14 setAlpha:v15];

  v16 = [(AVTransportControlsView *)self embeddedExtraContentContainer];
  [v16 setCollapsed:{-[AVTransportControlsView isDoubleRowLayoutEnabled](self, "isDoubleRowLayoutEnabled") ^ 1}];

  v17 = [(AVTransportControlsView *)self embeddedExtraContentContainer];
  [v17 setIncluded:{-[AVTransportControlsView isDoubleRowLayoutEnabled](self, "isDoubleRowLayoutEnabled")}];

  v19 = [(AVTransportControlsView *)self embeddedExtraContentContainer];
  if ([(AVTransportControlsView *)self isDoubleRowLayoutEnabled])
  {
    v18 = 1.0;
  }

  else
  {
    v18 = 0.0;
  }

  [v19 setAlpha:v18];
}

- (id)_scrubInstructionsAttributedText
{
  v25[1] = *MEMORY[0x1E69E9840];
  v3 = AVLocalizedString(@"PLAYBACK_CONTROLS_VIEW_CONTROLLER_SCRUB_INSTRUCTIONS_SLIDE_UP_TITLE_LABEL_TEXT");
  v4 = [(AVTransportControlsView *)self scrubber];
  v5 = [v4 localizedScrubbingSpeedName];

  v6 = MEMORY[0x1E69DB878];
  v7 = *MEMORY[0x1E69DDD28];
  v8 = [(AVTransportControlsView *)self traitCollection];
  v9 = [v6 preferredFontForTextStyle:v7 compatibleWithTraitCollection:v8];

  v10 = MEMORY[0x1E69DB878];
  [v9 pointSize];
  v11 = [v10 systemFontOfSize:? weight:?];
  v12 = objc_alloc(MEMORY[0x1E696AAB0]);
  v24 = *MEMORY[0x1E69DB648];
  v13 = v24;
  v25[0] = v9;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
  v15 = [v12 initWithString:v3 attributes:v14];

  v16 = objc_alloc(MEMORY[0x1E696AD40]);
  v17 = [v5 stringByAppendingString:@"\n"];
  v22 = v13;
  v23 = v11;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
  v19 = [v16 initWithString:v17 attributes:v18];

  [v19 appendAttributedString:v15];
  v20 = [v19 copy];

  return v20;
}

- (void)_updateScrubInstructionsFrame
{
  [(AVTransportControlsView *)self frame];
  v3 = CGRectGetMinY(v38) + -8.0;
  v4 = [(AVTransportControlsView *)self detachedScrubInstructionsBackdropLabel];
  [v4 intrinsicContentSize];
  v6 = v3 - v5 + -20.0;

  v7 = [(AVTransportControlsView *)self detachedScrubInstructionsBackdropLabel];
  [v7 intrinsicContentSize];
  v9 = v8 + 20.0;

  v10 = [(AVTransportControlsView *)self detachedScrubInstructionsBackdropLabel];
  [v10 intrinsicContentSize];
  v12 = v11 + 20.0;

  v13 = [(AVTransportControlsView *)self detachedExtraContentLayoutView];
  [v13 setFrame:{0.0, v6, v9, v12}];

  v14 = [(AVTransportControlsView *)self detachedScrubInstructionsBackdropLabel];
  v15 = [(AVTransportControlsView *)self detachedScrubInstructionsBackdropLabel];
  [v15 intrinsicContentSize];
  v17 = v16;
  v18 = [(AVTransportControlsView *)self detachedScrubInstructionsBackdropLabel];
  [v18 intrinsicContentSize];
  [v14 setFrame:{10.0, 10.0, v17, v19}];

  v20 = [(AVTransportControlsView *)self detachedExtraContentLayoutView];
  [(AVTransportControlsView *)self center];
  v22 = v21;
  v23 = [(AVTransportControlsView *)self detachedExtraContentLayoutView];
  [v23 center];
  [v20 setCenter:v22];

  v24 = [(AVTransportControlsView *)self scrubInstructionsLabel];
  v25 = [(AVTransportControlsView *)self embeddedExtraContentContainer];
  [v25 bounds];
  [v24 sizeThatFits:{v26, v27}];
  v29 = v28;
  v31 = v30;

  v32 = [(AVTransportControlsView *)self scrubInstructionsLabel];
  [v32 setFrame:{0.0, 0.0, v29, v31}];

  v36 = [(AVTransportControlsView *)self scrubInstructionsLabel];
  v33 = [(AVTransportControlsView *)self embeddedExtraContentContainer];
  [v33 frame];
  v34 = CGRectGetWidth(v39) * 0.5;
  v35 = [(AVTransportControlsView *)self scrubInstructionsLabel];
  [v35 center];
  [v36 setCenter:v34];
}

- (void)_updateScrubInstructionsLabelsText
{
  v3 = [(AVTransportControlsView *)self customContentTransitioningInfoPanel];

  if (v3)
  {
    v4 = [(AVTransportControlsView *)self detachedScrubInstructionsBackdropLabel];
    [v4 setAttributedText:0];

    v12 = [(AVTransportControlsView *)self scrubInstructionsLabel];
    [v12 setAttributedText:0];
  }

  else
  {
    v12 = [(AVTransportControlsView *)self _scrubInstructionsAttributedText];
    v5 = [(AVTransportControlsView *)self scrubInstructionsLabel];
    v6 = [v5 attributedText];
    v7 = [v12 isEqualToAttributedString:v6];

    if ((v7 & 1) == 0)
    {
      v8 = [(AVTransportControlsView *)self detachedScrubInstructionsBackdropLabel];
      v9 = [(AVTransportControlsView *)self _scrubInstructionsAttributedText];
      [v8 setAttributedText:v9];

      v10 = [(AVTransportControlsView *)self scrubInstructionsLabel];
      v11 = [(AVTransportControlsView *)self _scrubInstructionsAttributedText];
      [v10 setAttributedText:v11];
    }
  }
}

- (void)_showScrubInstructions
{
  if (![(AVTransportControlsView *)self canShowScrubInstructions])
  {
    v3 = _AVLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_18B49C000, v3, OS_LOG_TYPE_ERROR, "Do not call this method when showing the content info panel.", buf, 2u);
    }
  }

  [(AVTransportControlsView *)self bounds];
  Width = CGRectGetWidth(v12);
  v5 = [(AVTransportControlsView *)self styleSheet];
  [v5 doubleRowLayoutMargins];
  if (Width <= v6)
  {
  }

  else
  {
    v7 = [(AVTransportControlsView *)self isShowingScrubInstructions];

    if (!v7)
    {
      [(AVTransportControlsView *)self setShowingScrubInstructions:1];
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __49__AVTransportControlsView__showScrubInstructions__block_invoke;
      v10[3] = &unk_1E720A090;
      v10[4] = self;
      [MEMORY[0x1E69DD250] performWithoutAnimation:v10];
      v8[4] = self;
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __49__AVTransportControlsView__showScrubInstructions__block_invoke_2;
      v9[3] = &unk_1E720A090;
      v9[4] = self;
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __49__AVTransportControlsView__showScrubInstructions__block_invoke_3;
      v8[3] = &unk_1E7208E90;
      [MEMORY[0x1E69DD250] animateWithDuration:133122 delay:v9 options:v8 animations:0.3 completion:0.0];
    }
  }
}

void __49__AVTransportControlsView__showScrubInstructions__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _updateScrubInstructionsLabelsText];
  [*(a1 + 32) _updateScrubInstructionsFrame];
  v2 = [*(a1 + 32) scrubInstructionsLabel];
  [v2 setAlpha:0.0];

  v3 = [*(a1 + 32) scrubInstructionsLabel];
  [v3 setHidden:0];

  v4 = [*(a1 + 32) embeddedExtraContentContainer];
  [v4 setIncluded:{objc_msgSend(*(a1 + 32), "isDoubleRowLayoutEnabled")}];

  v5 = [*(a1 + 32) embeddedExtraContentContainer];
  [v5 setCollapsed:{objc_msgSend(*(a1 + 32), "isDoubleRowLayoutEnabled") ^ 1}];

  v6 = [*(a1 + 32) detachedExtraContentLayoutView];
  [v6 setAlpha:0.0];

  v7 = [*(a1 + 32) detachedExtraContentLayoutView];
  [v7 setHidden:{objc_msgSend(*(a1 + 32), "isDoubleRowLayoutEnabled")}];

  v8 = [*(a1 + 32) detachedScrubInstructionsBackdropLabel];
  [v8 setAlpha:0.0];

  v9 = [*(a1 + 32) detachedScrubInstructionsBackdropLabel];
  [v9 setHidden:0];

  v10 = [*(a1 + 32) scrubInstructionsLabel];
  [v10 layoutIfNeeded];

  v11 = [*(a1 + 32) detachedExtraContentLayoutView];
  [v11 layoutIfNeeded];

  v12 = [*(a1 + 32) scrubInstructionsLabel];
  [AVBackdropView applySecondaryGlyphTintToView:v12];

  v13 = [*(a1 + 32) detachedScrubInstructionsBackdropLabel];
  [AVBackdropView applySecondaryGlyphTintToView:v13];
}

void __49__AVTransportControlsView__showScrubInstructions__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setAnimatingScrubInstructions:1];
  v2 = [*(a1 + 32) isDoubleRowLayoutEnabled];
  v3 = *(a1 + 32);
  if (v2)
  {
    if (![v3 isDoubleRowLayoutEnabled])
    {
      goto LABEL_6;
    }

    v4 = [*(a1 + 32) scrubInstructionsLabel];
  }

  else
  {
    v5 = [v3 detachedScrubInstructionsBackdropLabel];
    [v5 setAlpha:1.0];

    v4 = [*(a1 + 32) detachedExtraContentLayoutView];
  }

  v6 = v4;
  [v4 setAlpha:1.0];

LABEL_6:
  if ([*(a1 + 32) isDoubleRowLayoutEnabled])
  {
    v7 = [*(a1 + 32) delegate];
    [v7 transportControlsNeedsLayoutIfNeeded:*(a1 + 32)];
  }
}

- (void)_updateFontSizes
{
  v3 = [(AVTransportControlsView *)self elapsedTimeLabel];
  v4 = [(AVTransportControlsView *)self styleSheet];
  v5 = [v4 scrubberTimeLabelFont];
  [v3 setFont:v5];

  v6 = [(AVTransportControlsView *)self timeRemainingLabel];
  v7 = [(AVTransportControlsView *)self styleSheet];
  v8 = [v7 scrubberTimeLabelFont];
  [v6 setFont:v8];

  v9 = [(AVTransportControlsView *)self liveBroadcastLabel];
  v10 = [(AVTransportControlsView *)self styleSheet];
  v11 = [v10 infoLabelFont];
  [v9 setFont:v11];

  v12 = [(AVTransportControlsView *)self liveBroadcastScrubberLabel];
  v13 = [(AVTransportControlsView *)self styleSheet];
  v14 = [v13 scrubberInfoLabelFont];
  [v12 setFont:v14];

  [(AVTransportControlsView *)self setNeedsLayout];
}

- (unint64_t)_layoutItemDisplayPriorityForSubview:(id)a3
{
  v4 = a3;
  [(AVTransportControlsView *)self _subviewIsCustomMenuItemView:v4];
  v5 = [(AVTransportControlsView *)self standardPlayPauseButton];
  v6 = v5;
  if (v5 == v4)
  {

    goto LABEL_16;
  }

  v7 = [(AVTransportControlsView *)self embeddedExtraContentContainer];

  if (v7 == v4)
  {
LABEL_16:
    v22 = 4;
    goto LABEL_20;
  }

  v8 = [(AVTransportControlsView *)self scrubber];
  if (v8 == v4)
  {
LABEL_18:

    goto LABEL_19;
  }

  v9 = [(AVTransportControlsView *)self timeRemainingLabel];
  v10 = v9;
  if (v9 == v4)
  {

    goto LABEL_18;
  }

  v11 = [(AVTransportControlsView *)self controlOverflowButton];

  if (v11 == v4)
  {
LABEL_19:
    v22 = 3;
    goto LABEL_20;
  }

  v12 = [(AVTransportControlsView *)self elapsedTimeLabel];
  if (v12 == v4)
  {
LABEL_22:

    goto LABEL_23;
  }

  v13 = [(AVTransportControlsView *)self liveBroadcastLabel];
  v14 = v13;
  if (v13 == v4)
  {

    goto LABEL_22;
  }

  v15 = [(AVTransportControlsView *)self routePickerView];

  if (v15 == v4)
  {
LABEL_23:
    v22 = 2;
    goto LABEL_20;
  }

  v16 = [(AVTransportControlsView *)self skipBackButton];
  if (v16 == v4)
  {
LABEL_27:

    goto LABEL_28;
  }

  v17 = [(AVTransportControlsView *)self skipForwardButton];
  if (v17 == v4)
  {
LABEL_26:

    goto LABEL_27;
  }

  v18 = [(AVTransportControlsView *)self startLeftwardContentTransitionButton];
  if (v18 == v4)
  {
LABEL_25:

    goto LABEL_26;
  }

  v19 = [(AVTransportControlsView *)self startRightwardContentTransitionButton];
  v20 = v19;
  if (v19 == v4)
  {

    goto LABEL_25;
  }

  v21 = [(AVTransportControlsView *)self mediaSelectionButton];

  if (v21 == v4)
  {
LABEL_28:
    v22 = 1;
    goto LABEL_20;
  }

  v22 = 0;
LABEL_20:

  return v22;
}

- (double)_rowSpacingForDoubleRowLayoutAfterRow:(unint64_t)a3
{
  v5 = [(AVTransportControlsView *)self isDoubleRowLayoutEnabled];
  v6 = 0.0;
  if (!a3 && v5)
  {
    v7 = [(AVTransportControlsView *)self customContentTransitioningInfoPanel];
    if (v7)
    {
      v8 = v7;
      v9 = [(AVTransportControlsView *)self embeddedExtraContentContainer];
      v10 = [v9 isHiddenOrHasHiddenAncestor];

      if (v10)
      {
        v6 = 0.0;
      }

      else
      {
        v6 = 12.0;
      }
    }
  }

  if (((a3 == 1) & [(AVTransportControlsView *)self isDoubleRowLayoutEnabled]) != 0)
  {
    v6 = 4.5;
  }

  v11 = [(AVTransportControlsView *)self isDoubleRowLayoutEnabled];
  if (!a3 && v11)
  {
    v12 = [(AVTransportControlsView *)self scrubInstructionsLabel];
    [v12 alpha];
    v14 = v13;

    if (v14 == 1.0)
    {
      v15 = [(AVTransportControlsView *)self styleSheet];
      [v15 spacingBetweenScrubInstructionsAndScrubber];
      v6 = v16;
    }
  }

  return v6;
}

- (void)_layoutSingleRowViews
{
  v43[1] = *MEMORY[0x1E69E9840];
  v3 = [(AVTransportControlsView *)self liveBroadcastLabel];
  [v3 setLoadingIndicatorAlignment:1];

  v4 = [(AVTransportControlsView *)self controlsLayoutView];
  v5 = [(AVTransportControlsView *)self singleRowViews];
  v43[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:1];
  [v4 setArrangedSubviews:v6];

  v7 = 0.0;
  if (![(AVTransportControlsView *)self isCollapsedOrExcluded])
  {
    if ([(AVTransportControlsView *)self hasFullScreenAppearance])
    {
      v7 = 18.0;
    }

    else
    {
      v7 = 14.0;
    }
  }

  v8 = [(AVTransportControlsView *)self controlsLayoutView];
  [v8 setContentLayoutMargins:{0.0, v7, 0.0, v7}];

  [(AVTransportControlsView *)self bounds];
  if (CGRectGetWidth(v44) < 568.0)
  {
    v11 = 95.0;
  }

  else
  {
    v9 = [(AVTransportControlsView *)self styleSheet];
    [v9 minimumScrubberSize];
    v11 = v10;
  }

  v12 = [(AVTransportControlsView *)self scrubber];
  v13 = [v12 layoutAttributes];
  v14 = [(AVTransportControlsView *)self styleSheet];
  [v14 minimumScrubberSize];
  [v13 setMinimumSize:v11];

  v15 = [(AVTransportControlsView *)self scrubber];
  v16 = [v15 layoutAttributes];
  v17 = [(AVTransportControlsView *)self timeRemainingLabel];
  v18 = [v17 layoutAttributes];
  [v16 setDisplayPartnerAttributes:v18];

  v19 = [(AVTransportControlsView *)self timeRemainingLabel];
  v20 = [v19 layoutAttributes];
  v21 = [(AVTransportControlsView *)self scrubber];
  v22 = [v21 layoutAttributes];
  [v20 setDisplayPartnerAttributes:v22];

  v23 = [(AVTransportControlsView *)self skipBackButton];
  v24 = [v23 layoutAttributes];
  v25 = [(AVTransportControlsView *)self skipForwardButton];
  v26 = [v25 layoutAttributes];
  [v24 setDisplayPartnerAttributes:v26];

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v27 = [(AVTransportControlsView *)self singleRowViews];
  v28 = [v27 countByEnumeratingWithState:&v38 objects:v42 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v39;
    do
    {
      for (i = 0; i != v29; ++i)
      {
        if (*v39 != v30)
        {
          objc_enumerationMutation(v27);
        }

        v32 = *(*(&v38 + 1) + 8 * i);
        v33 = [v32 layoutAttributes];
        [(AVTransportControlsView *)self _singeRowLayoutSpacingAfterSubview:v32];
        [v33 setTrailingInterItemSpace:?];

        v34 = [v32 layoutAttributes];
        [v34 setDisplayPriority:{-[AVTransportControlsView _layoutItemDisplayPriorityForSubview:](self, "_layoutItemDisplayPriorityForSubview:", v32)}];

        v35 = [v32 layoutAttributes];
        v36 = [(AVTransportControlsView *)self scrubber];
        if (v32 == v36)
        {
          [v35 setHasFlexibleContentSize:1];
        }

        else
        {
          v37 = [(AVTransportControlsView *)self liveBroadcastLabel];
          [v35 setHasFlexibleContentSize:v32 == v37];
        }
      }

      v29 = [v27 countByEnumeratingWithState:&v38 objects:v42 count:16];
    }

    while (v29);
  }
}

- (void)_layoutDoubleRowViews
{
  v104[1] = *MEMORY[0x1E69E9840];
  v3 = [(AVTransportControlsView *)self controlsLayoutView];
  v4 = [(AVTransportControlsView *)self styleSheet];
  [v4 doubleRowLayoutMargins];
  [v3 setContentLayoutMargins:?];

  v5 = [(AVTransportControlsView *)self scrubInstructionsLabel];
  [v5 alpha];
  v7 = v6;

  if (v7 == 1.0)
  {
    v8 = [(AVTransportControlsView *)self controlsLayoutView];
    v9 = [(AVTransportControlsView *)self styleSheet];
    [v9 doubleRowLayoutMarginsWhenShowingScrubInstructions];
  }

  else
  {
    v30 = [(AVTransportControlsView *)self customContentTransitioningInfoPanel];
    if (!v30)
    {
      goto LABEL_4;
    }

    v31 = v30;
    v32 = [(AVTransportControlsView *)self customContentTransitioningInfoPanel];
    v33 = [v32 isHidden];

    if (v33)
    {
      goto LABEL_4;
    }

    v8 = [(AVTransportControlsView *)self controlsLayoutView];
    v9 = [(AVTransportControlsView *)self styleSheet];
    [v9 doublerowLayoutMarginsWhenShowingCustomContentInfo];
  }

  [v8 setContentLayoutMargins:?];

LABEL_4:
  v10 = [(AVTransportControlsView *)self liveBroadcastLabel];
  [v10 setLoadingIndicatorAlignment:2];

  v93 = [(AVTransportControlsView *)self doubleRowViews];
  v11 = [(AVTransportControlsView *)self embeddedExtraContentContainer];
  v104[0] = v11;
  v91 = [MEMORY[0x1E695DEC8] arrayWithObjects:v104 count:1];

  v12 = [(AVTransportControlsView *)self scrubber];
  v103[0] = v12;
  v13 = [(AVTransportControlsView *)self liveBroadcastLabel];
  v103[1] = v13;
  v90 = [MEMORY[0x1E695DEC8] arrayWithObjects:v103 count:2];

  v14 = [(AVTransportControlsView *)self elapsedTimeLabel];
  v102[0] = v14;
  v15 = [(AVTransportControlsView *)self timeRemainingLabel];
  v102[1] = v15;
  v16 = [(AVTransportControlsView *)self liveBroadcastScrubberLabel];
  v102[2] = v16;
  v92 = [MEMORY[0x1E695DEC8] arrayWithObjects:v102 count:3];

  v88 = [(AVTransportControlsView *)self routePickerView];
  v101[0] = v88;
  v87 = [(AVTransportControlsView *)self flexibleViewAfterRoutePickerView];
  v101[1] = v87;
  v86 = [(AVTransportControlsView *)self startLeftwardContentTransitionButton];
  v101[2] = v86;
  v17 = [(AVTransportControlsView *)self skipBackButton];
  v101[3] = v17;
  v18 = [(AVTransportControlsView *)self standardPlayPauseButton];
  v101[4] = v18;
  v19 = [(AVTransportControlsView *)self skipForwardButton];
  v101[5] = v19;
  v20 = [(AVTransportControlsView *)self startRightwardContentTransitionButton];
  v101[6] = v20;
  v21 = [(AVTransportControlsView *)self flexibleViewAfterSkipForwardButtons];
  v101[7] = v21;
  v22 = [(AVTransportControlsView *)self mediaSelectionButton];
  v101[8] = v22;
  v23 = [(AVTransportControlsView *)self playbackSpeedButton];
  v101[9] = v23;
  v24 = [(AVTransportControlsView *)self controlOverflowButton];
  v101[10] = v24;
  v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v101 count:11];

  v26 = [(AVTransportControlsView *)self customMenuItemsViews];

  if (v26)
  {
    v27 = [(AVTransportControlsView *)self customMenuItemsViews];
    v28 = [v25 arrayByAddingObjectsFromArray:v27];

    v29 = v28;
  }

  else
  {
    v29 = v25;
  }

  v34 = [(AVTransportControlsView *)self flexibleViewAfterSkipForwardButtons];
  v35 = [v34 layoutAttributes];
  v36 = *MEMORY[0x1E695F060];
  v37 = *(MEMORY[0x1E695F060] + 8);
  [v35 setMinimumSize:{*MEMORY[0x1E695F060], v37}];

  v38 = [(AVTransportControlsView *)self flexibleViewAfterRoutePickerView];
  v39 = [v38 layoutAttributes];
  [v39 setMinimumSize:{v36, v37}];

  v40 = [(AVTransportControlsView *)self controlsLayoutView];
  v100[0] = v91;
  v100[1] = v90;
  v100[2] = v92;
  v100[3] = v29;
  v89 = v29;
  v41 = [MEMORY[0x1E695DEC8] arrayWithObjects:v100 count:4];
  [v40 setArrangedSubviews:v41];

  v97 = 0u;
  v98 = 0u;
  v95 = 0u;
  v96 = 0u;
  v42 = v93;
  v43 = [v42 countByEnumeratingWithState:&v95 objects:v99 count:16];
  if (v43)
  {
    v44 = v43;
    v45 = *v96;
    do
    {
      for (i = 0; i != v44; ++i)
      {
        if (*v96 != v45)
        {
          objc_enumerationMutation(v42);
        }

        v47 = *(*(&v95 + 1) + 8 * i);
        v48 = [v47 layoutAttributes];
        [(AVTransportControlsView *)self _doubleRowLayoutSpacingAfterSubview:v47];
        [v48 setTrailingInterItemSpace:?];

        v49 = [v47 layoutAttributes];
        [v49 setDisplayPriority:{-[AVTransportControlsView _layoutItemDisplayPriorityForSubview:](self, "_layoutItemDisplayPriorityForSubview:", v47)}];

        v50 = [(AVTransportControlsView *)self scrubber];

        if (v47 == v50)
        {
          v57 = [v47 layoutAttributes];
          v58 = [(AVTransportControlsView *)self styleSheet];
          [v58 minimumScrubberSize];
          [v57 setMinimumSize:?];
        }

        else
        {
          v51 = [(AVTransportControlsView *)self embeddedExtraContentContainer];

          if (v47 != v51)
          {
            continue;
          }

          v52 = [(AVTransportControlsView *)self customContentTransitioningInfoPanel];

          if (v52)
          {
            v53 = [(AVTransportControlsView *)self customContentTransitioningInfoPanel];
            [(AVTransportControlsView *)self frame];
            [v53 systemLayoutSizeFittingSize:{v54, v55}];
            v94 = v56;
          }

          else
          {
            v53 = [(AVTransportControlsView *)self scrubInstructionsLabel];
            v59 = [(AVTransportControlsView *)self embeddedExtraContentContainer];
            [v59 bounds];
            [v53 sizeThatFits:{v60, v61}];
            v94 = v62;
          }

          [(AVTransportControlsView *)self bounds];
          v64 = v63;
          v66 = v65;
          v68 = v67;
          v70 = v69;
          v71 = [(AVTransportControlsView *)self controlsLayoutView];
          [v71 contentLayoutMargins];
          v73 = v72;
          v75 = v74;
          v77 = v76;
          v79 = v78;
          if ([(AVTransportControlsView *)self effectiveUserInterfaceLayoutDirection]== 1)
          {
            v80 = v79;
          }

          else
          {
            v80 = v75;
          }

          v105.origin.x = v64 + v80;
          v105.origin.y = v66 + v73;
          v105.size.width = v68 - (v79 + v75);
          v105.size.height = v70 - (v73 + v77);
          Width = CGRectGetWidth(v105);

          v57 = [v47 layoutAttributes];
          [v57 setMinimumSize:{Width, v94}];
        }
      }

      v44 = [v42 countByEnumeratingWithState:&v95 objects:v99 count:16];
    }

    while (v44);
  }

  for (j = 0; j != 4; ++j)
  {
    [(AVTransportControlsView *)self _rowSpacingForDoubleRowLayoutAfterRow:j];
    v84 = v83;
    v85 = [(AVTransportControlsView *)self controlsLayoutView];
    [v85 setRowSpacing:j afterRow:v84];
  }
}

- (double)_doubleRowLayoutSpacingAfterSubview:(id)a3
{
  v4 = a3;
  [(AVTransportControlsView *)self bounds];
  Width = CGRectGetWidth(v35);
  v6 = [(AVTransportControlsView *)self controlsLayoutView];
  v7 = [(AVTransportControlsView *)self skipForwardButton];
  if ([v7 isIncluded])
  {
    v8 = 0;
  }

  else
  {
    v9 = [(AVTransportControlsView *)self startRightwardContentTransitionButton];
    v10 = [v9 isIncluded];

    v8 = v10 ^ 1;
  }

  v11 = [(AVTransportControlsView *)self skipBackButton];
  if (v11 == v4)
  {
    goto LABEL_21;
  }

  v12 = [(AVTransportControlsView *)self startLeftwardContentTransitionButton];
  if (v12 == v4)
  {
LABEL_20:

LABEL_21:
    v19 = 32.0;
    goto LABEL_22;
  }

  v13 = [(AVTransportControlsView *)self mediaSelectionButton];
  if (v13 == v4)
  {
LABEL_19:

    goto LABEL_20;
  }

  v14 = [(AVTransportControlsView *)self standardPlayPauseButton];
  if (!((v14 != v4) | v8 & 1))
  {
LABEL_18:

    goto LABEL_19;
  }

  v15 = [(AVTransportControlsView *)self playbackSpeedButton];
  v16 = v15;
  if (v15 == v4)
  {

    goto LABEL_18;
  }

  v17 = [(AVTransportControlsView *)self controlOverflowButton];

  if (v17 == v4)
  {
    v19 = 32.0;
    goto LABEL_23;
  }

  v18 = [(AVTransportControlsView *)self elapsedTimeLabel];

  if (v18 == v4)
  {
    v23 = [(AVTransportControlsView *)self elapsedTimeLabel];
    [v23 intrinsicContentSize];
    v25 = Width - v24;
    [v6 contentLayoutMargins];
    v27 = v25 - v26;
    [v6 contentLayoutMargins];
    v19 = v27 - v28;

    v29 = [(AVTransportControlsView *)self timeRemainingLabel];
    v30 = [v29 isIncluded];

    if (v30)
    {
      v31 = [(AVTransportControlsView *)self timeRemainingLabel];
    }

    else
    {
      v32 = [(AVTransportControlsView *)self liveBroadcastScrubberLabel];
      v33 = [v32 isIncluded];

      if (!v33)
      {
        goto LABEL_23;
      }

      v31 = [(AVTransportControlsView *)self liveBroadcastScrubberLabel];
    }

    v11 = v31;
    [v31 intrinsicContentSize];
    v19 = v19 - v34;
  }

  else
  {
    v11 = [(AVTransportControlsView *)self routePickerView];
    v19 = 0.0;
    if (v11 != v4)
    {
      v20 = [(AVTransportControlsView *)self skipForwardButton];
      if (v20 != v4)
      {
        v21 = [(AVTransportControlsView *)self startRightwardContentTransitionButton];
        if (v21 != v4)
        {
          [(AVTransportControlsView *)self standardPlayPauseButton];
        }
      }
    }
  }

LABEL_22:

LABEL_23:
  return v19;
}

- (double)_singeRowLayoutSpacingAfterSubview:(id)a3
{
  v4 = a3;
  [(AVTransportControlsView *)self _subviewIsCustomMenuItemView:v4];
  v5 = 16.0;
  if (![(AVTransportControlsView *)self hasFullScreenAppearance])
  {
    goto LABEL_32;
  }

  if ([(AVTransportControlsView *)self hasFullScreenAppearance])
  {
    [(AVTransportControlsView *)self bounds];
    v6 = CGRectGetWidth(v22) < 568.0;
  }

  else
  {
    v6 = 0;
  }

  v7 = [(AVTransportControlsView *)self skipBackButton];
  if ([v7 isIncluded])
  {
  }

  else
  {
    v8 = [(AVTransportControlsView *)self startLeftwardContentTransitionButton];
    v9 = [v8 isIncluded];

    if ((v9 & 1) == 0)
    {
      v5 = 0.0;
      if (self->_skipBackButton != v4 && self->_startLeftwardContentTransitionButton != v4 && self->_skipForwardButton != v4)
      {
        if (self->_startRightwardContentTransitionButton == v4)
        {
          v5 = 0.0;
        }

        else
        {
          v5 = 20.0;
        }
      }

      goto LABEL_13;
    }
  }

  if (v6)
  {
    v5 = 32.0;
  }

  else if ([(AVTransportControlsView *)self hasFullScreenAppearance])
  {
    v5 = 32.0;
  }

  else
  {
    v5 = 0.0;
  }

LABEL_13:
  v10 = [(AVTransportControlsView *)self customItems];

  if (v10)
  {
    if (self->_mediaSelectionButton == v4)
    {
      v14 = [(AVTransportControlsView *)self skipBackButton];
      if ([v14 isIncluded])
      {
        v5 = 32.0;
      }

      else
      {
        v15 = [(AVTransportControlsView *)self startLeftwardContentTransitionButton];
        if ([v15 isIncluded])
        {
          v5 = 32.0;
        }

        else
        {
          v5 = 20.0;
        }
      }
    }

    else if ([(AVButton *)v4 conformsToProtocol:&unk_1EFF1F478])
    {
      v11 = v4;
      v12 = [(AVTransportControlsView *)self customItems];
      v13 = [v12 containsObject:v11];

      if (v13)
      {
        v5 = 16.0;
      }
    }
  }

LABEL_32:
  if (self->_liveBroadcastLabel == v4)
  {
    v5 = 0.0;
  }

  else if (self->_elapsedTimeLabel == v4 || self->_scrubber == v4)
  {
    v5 = 5.0;
  }

  v16 = [MEMORY[0x1E69DCEB0] avkit_mainScreen];
  v17 = [v16 traitCollection];
  v18 = [v17 userInterfaceIdiom];

  v19 = 0.77;
  if (v18 != 5)
  {
    v19 = 1.0;
  }

  v20 = v5 * v19;

  return v20;
}

- (void)endScrubbing:(id)a3
{
  v4 = a3;
  [(AVTransportControlsView *)self setScrubberValueWhenScrubInstructionsTimerBegan:0.0];
  v5 = [(AVTransportControlsView *)self scrubInstructionsTimer];
  [v5 invalidate];

  v6 = [(AVTransportControlsView *)self delegate];
  [v6 transportControls:self scrubberDidEndScrubbing:v4];

  if ([(AVTransportControlsView *)self canShowScrubInstructions])
  {
    if ([(AVTransportControlsView *)self isShowingScrubInstructions])
    {
      [(AVTransportControlsView *)self setShowingScrubInstructions:0];
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __40__AVTransportControlsView_endScrubbing___block_invoke;
      v8[3] = &unk_1E720A090;
      v8[4] = self;
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __40__AVTransportControlsView_endScrubbing___block_invoke_2;
      v7[3] = &unk_1E7208E90;
      v7[4] = self;
      [MEMORY[0x1E69DD250] animateWithDuration:133126 delay:v8 options:v7 animations:0.3 completion:0.0];
    }
  }
}

void __40__AVTransportControlsView_endScrubbing___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setAnimatingScrubInstructions:1];
  v2 = [*(a1 + 32) scrubInstructionsLabel];
  [v2 setAlpha:0.0];

  v3 = [*(a1 + 32) detachedScrubInstructionsBackdropLabel];
  [v3 setAlpha:0.0];

  v4 = [*(a1 + 32) detachedExtraContentLayoutView];
  [v4 setAlpha:0.0];

  v5 = [*(a1 + 32) embeddedExtraContentContainer];
  [v5 setCollapsed:1];

  v6 = [*(a1 + 32) embeddedExtraContentContainer];
  [v6 setIncluded:0];

  v7 = [*(a1 + 32) delegate];
  [v7 transportControlsNeedsLayoutIfNeeded:*(a1 + 32)];
}

void __40__AVTransportControlsView_endScrubbing___block_invoke_2(uint64_t a1, int a2)
{
  if (a2)
  {
    [*(a1 + 32) setAnimatingScrubInstructions:0];
    [*(a1 + 32) avkit_reevaluateHiddenStateOfItem:*(a1 + 32)];
    v3 = [*(a1 + 32) scrubInstructionsLabel];
    [v3 setHidden:1];

    v4 = [*(a1 + 32) detachedScrubInstructionsBackdropLabel];
    [v4 setHidden:1];

    v5 = [*(a1 + 32) detachedExtraContentLayoutView];
    [v5 setHidden:1];
  }
}

- (void)scrubberValueChanged:(id)a3
{
  v4 = a3;
  [(AVTransportControlsView *)self _updateScrubInstructionsLabelsText];
  [(AVTransportControlsView *)self _updateScrubInstructionsFrame];
  v5 = [(AVTransportControlsView *)self delegate];
  [v5 transportControls:self scrubberDidScrub:v4];
}

- (void)beginScrubbing:(id)a3
{
  v4 = a3;
  v5 = [(AVTransportControlsView *)self delegate];
  [v5 transportControls:self scrubberDidBeginScrubbing:v4];

  v6 = [(AVTransportControlsView *)self scrubInstructionsLabel];
  [v6 setHidden:1];

  v7 = [(AVTransportControlsView *)self detachedScrubInstructionsBackdropLabel];
  [v7 setHidden:1];
}

- (void)setExtrinsicContentSize:(CGSize)a3
{
  if (a3.width != self->_extrinsicContentSize.width || a3.height != self->_extrinsicContentSize.height)
  {
    self->_extrinsicContentSize = a3;
    [(AVTransportControlsView *)self invalidateIntrinsicContentSize];
  }
}

- (void)setHasFullScreenAppearance:(BOOL)a3
{
  if (self->_hasFullScreenAppearance != a3)
  {
    self->_hasFullScreenAppearance = a3;
    [(AVTransportControlsView *)self setNeedsLayout];
  }
}

- (void)setCollapsed:(BOOL)a3
{
  v15 = *MEMORY[0x1E69E9840];
  if (self->_collapsed != a3)
  {
    v3 = a3;
    self->_collapsed = a3;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = [(AVTransportControlsView *)self singleRowViews];
    v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v11;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v11 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [*(*(&v10 + 1) + 8 * i) setCollapsed:v3];
        }

        v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v7);
    }

    [(AVTransportControlsView *)self invalidateIntrinsicContentSize];
    [(AVTransportControlsView *)self avkit_reevaluateHiddenStateOfItem:self];
  }
}

- (void)setIncluded:(BOOL)a3
{
  if (self->_included != a3)
  {
    self->_included = a3;
    [(AVTransportControlsView *)self invalidateIntrinsicContentSize];

    [(AVTransportControlsView *)self avkit_reevaluateHiddenStateOfItem:self];
  }
}

- (BOOL)isCollapsedOrExcluded
{
  if ([(AVTransportControlsView *)self isCollapsed]|| ![(AVTransportControlsView *)self isIncluded])
  {
    return 1;
  }

  return [(AVTransportControlsView *)self isRemoved];
}

- (void)scrubberSlowKnobMovementDetected:(id)a3
{
  if ([(AVTransportControlsView *)self canShowScrubInstructions])
  {

    [(AVTransportControlsView *)self _showScrubInstructions];
  }
}

- (void)avkit_reevaluateHiddenStateOfItem:(id)a3
{
  v4 = a3;
  v5 = [(AVTransportControlsView *)self embeddedExtraContentContainer];

  if (v5 == v4)
  {
    v6 = [v4 isCollapsedOrExcluded];
    v7 = 1.0;
    if (v6)
    {
      v7 = 0.0;
    }

    [v4 setAlpha:v7];
    v8 = [(AVTransportControlsView *)self isAnimatingScrubInstructions];
    if ((v6 & 1) != 0 || !v8)
    {
      if (![(AVTransportControlsView *)self isAnimatingScrubInstructions])
      {
        [v4 setHidden:v6];
        [v4 setAlpha:1.0];
      }
    }

    else
    {
      [v4 setHidden:0];
    }
  }

  else
  {
    v9.receiver = self;
    v9.super_class = AVTransportControlsView;
    [(UIView *)&v9 avkit_reevaluateHiddenStateOfItem:v4];
  }
}

- (void)layoutSubviews
{
  v59 = *MEMORY[0x1E69E9840];
  kdebug_trace();
  v56.receiver = self;
  v56.super_class = AVTransportControlsView;
  [(AVView *)&v56 layoutSubviews];
  [(UIView *)self avkit_makeSubtreeDisallowGroupBlending];
  v3 = [(AVTransportControlsView *)self liveBroadcastScrubberLabel];
  [v3 setIncluded:{-[AVTransportControlsView liveStreamingControlsIncludeScrubber](self, "liveStreamingControlsIncludeScrubber")}];

  v4 = [(AVTransportControlsView *)self liveBroadcastLabel];
  if ([(AVTransportControlsView *)self showsLiveStreamingControls])
  {
    v5 = [(AVTransportControlsView *)self liveStreamingControlsIncludeScrubber]^ 1;
  }

  else
  {
    v5 = 0;
  }

  [v4 setIncluded:v5];

  if ([(AVTransportControlsView *)self showsLiveStreamingControls])
  {
    v6 = [(AVTransportControlsView *)self liveStreamingControlsIncludeScrubber];
  }

  else
  {
    v6 = 1;
  }

  v7 = [(AVTransportControlsView *)self scrubber];
  [v7 setIncluded:v6];

  v8 = [(AVTransportControlsView *)self elapsedTimeLabel];
  [v8 setIncluded:v6];

  v9 = [(AVTransportControlsView *)self timeRemainingLabel];
  if (v6)
  {
    v10 = [(AVTransportControlsView *)self liveStreamingControlsIncludeScrubber]^ 1;
  }

  else
  {
    v10 = 0;
  }

  [v9 setIncluded:v10];

  v11 = [(AVTransportControlsView *)self elapsedTimeLabel];
  [v11 setShowsLoadingIndicator:{-[AVTransportControlsView showsLoadingIndicator](self, "showsLoadingIndicator")}];

  v12 = [(AVTransportControlsView *)self liveBroadcastLabel];
  [v12 setShowsLoadingIndicator:{-[AVTransportControlsView showsLoadingIndicator](self, "showsLoadingIndicator")}];

  v13 = [(AVTransportControlsView *)self elapsedTimeLabel];
  [v13 setLoadingIndicatorAlignment:{-[AVTransportControlsView isDoubleRowLayoutEnabled](self, "isDoubleRowLayoutEnabled") ^ 1}];

  v14 = [(AVTransportControlsView *)self controlsLayoutView];
  [(AVTransportControlsView *)self bounds];
  [v14 setFrame:?];

  [(AVTransportControlsView *)self _updateCustomContentTransitioningInfoPanelLayout];
  if ([(AVTransportControlsView *)self isDoubleRowLayoutEnabled])
  {
    [(AVTransportControlsView *)self _layoutDoubleRowViews];
  }

  else
  {
    [(AVTransportControlsView *)self _layoutSingleRowViews];
  }

  if ([(AVTransportControlsView *)self hasFullScreenAppearance]|| [(AVTransportControlsView *)self isCollapsedOrExcluded])
  {
    if (![(AVTransportControlsView *)self hasFullScreenAppearance])
    {
      goto LABEL_37;
    }

    [(AVTransportControlsView *)self setCollapsed:0];
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v15 = [(AVTransportControlsView *)self customItems];
    v16 = [v15 countByEnumeratingWithState:&v48 objects:v57 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v49;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v49 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v48 + 1) + 8 * i);
          v21 = [(AVTransportControlsView *)self isDoubleRowLayoutEnabled];
          if (v21)
          {
            [v20 setCollapsed:1];
          }

          [v20 setIncluded:!v21];
        }

        v17 = [v15 countByEnumeratingWithState:&v48 objects:v57 count:16];
      }

      while (v17);
    }
  }

  else
  {
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v15 = [(AVTransportControlsView *)self customItems];
    v22 = [v15 countByEnumeratingWithState:&v52 objects:v58 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v53;
      do
      {
        for (j = 0; j != v23; ++j)
        {
          if (*v53 != v24)
          {
            objc_enumerationMutation(v15);
          }

          v26 = *(*(&v52 + 1) + 8 * j);
          if ([(AVTransportControlsView *)self isDoubleRowLayoutEnabled])
          {
            v27 = 1;
          }

          else
          {
            [v26 intrinsicContentSize];
            v29 = v28;
            [(AVTransportControlsView *)self bounds];
            v27 = v29 >= CGRectGetWidth(v60) * 0.3;
          }

          [v26 setCollapsed:v27];
        }

        v23 = [v15 countByEnumeratingWithState:&v52 objects:v58 count:16];
      }

      while (v23);
    }
  }

LABEL_37:
  v30 = [(AVTransportControlsView *)self elapsedTimeLabel];
  v31 = [v30 isCollapsedOrExcluded];

  if (v31)
  {
    v32 = -16.0;
  }

  else
  {
    v32 = -22.0;
  }

  v33 = [(AVTransportControlsView *)self standardPlayPauseButton];
  [v33 setHitRectInsets:{-16.0, -22.0, -16.0, v32}];

  v34 = [(AVTransportControlsView *)self customContentTransitioningInfoPanel];
  if (!v34 || ![(AVTransportControlsView *)self isDoubleRowLayoutEnabled])
  {

    goto LABEL_45;
  }

  v35 = [(AVTransportControlsView *)self liveBroadcastLabel];
  v36 = [v35 isCollapsedOrExcluded];

  if (v36)
  {
LABEL_45:
    v43 = [(AVTransportControlsView *)self liveBroadcastLabel];
    v46 = *(MEMORY[0x1E695EFD0] + 16);
    *&v47.a = *MEMORY[0x1E695EFD0];
    *&v47.c = v46;
    *&v47.tx = *(MEMORY[0x1E695EFD0] + 32);
    [v43 setTransform:&v47];
    goto LABEL_46;
  }

  v37 = [(AVTransportControlsView *)self styleSheet];
  [v37 liveBroadcastLabelTopToBackdropTopDistance];
  v39 = v38;

  v40 = [(AVTransportControlsView *)self liveBroadcastLabel];
  [v40 intrinsicContentSize];
  v42 = v41;

  v43 = [(AVTransportControlsView *)self liveBroadcastLabel];
  v44 = [(AVTransportControlsView *)self scrubber];
  [v44 frame];
  MaxY = CGRectGetMaxY(v61);
  CGAffineTransformMakeTranslation(&v47, 0.0, MaxY - (v39 + v42 * 0.5));
  [v43 setTransform:&v47];

LABEL_46:
  kdebug_trace();
}

- (void)traitCollectionDidChange:(id)a3
{
  v4.receiver = self;
  v4.super_class = AVTransportControlsView;
  [(AVTransportControlsView *)&v4 traitCollectionDidChange:a3];
  [(AVTransportControlsView *)self _updateFontSizes];
}

- (CGSize)intrinsicContentSize
{
  v35.receiver = self;
  v35.super_class = AVTransportControlsView;
  [(AVTransportControlsView *)&v35 intrinsicContentSize];
  v4 = v3;
  v6 = v5;
  v7 = [(AVTransportControlsView *)self customContentTransitioningInfoPanel];
  if (v7)
  {
    v8 = v7;
    v9 = [(AVTransportControlsView *)self customContentTransitioningInfoPanel];
    v10 = [v9 isHidden];

    if ((v10 & 1) == 0)
    {
      v22 = [(AVTransportControlsView *)self customContentTransitioningInfoPanel];
      [(AVTransportControlsView *)self frame];
      [v22 systemLayoutSizeFittingSize:{v27, v28}];
      v11 = v29;
LABEL_10:

      goto LABEL_11;
    }
  }

  v11 = 0.01;
  if ([(AVTransportControlsView *)self isShowingScrubInstructions]&& [(AVTransportControlsView *)self isDoubleRowLayoutEnabled])
  {
    v12 = [(AVTransportControlsView *)self styleSheet];
    [v12 doubleRowLayoutMargins];
    v14 = v13;
    v15 = [(AVTransportControlsView *)self styleSheet];
    [v15 doubleRowLayoutMarginsWhenShowingScrubInstructions];
    v17 = v14 - v16;

    if (v17 >= 0.0)
    {
      v18 = v17;
    }

    else
    {
      v18 = -v17;
    }

    v19 = [(AVTransportControlsView *)self styleSheet];
    [v19 spacingBetweenScrubInstructionsAndScrubber];
    v21 = v20;

    v22 = [(AVTransportControlsView *)self scrubInstructionsLabel];
    v23 = [(AVTransportControlsView *)self embeddedExtraContentContainer];
    [v23 bounds];
    [v22 sizeThatFits:{v24, v25}];
    v11 = v26 - (v18 + v21);

    goto LABEL_10;
  }

LABEL_11:
  [(AVTransportControlsView *)self extrinsicContentSize];
  if (v4 < v30)
  {
    v4 = v30;
  }

  [(AVTransportControlsView *)self extrinsicContentSize];
  if (v6 >= v31)
  {
    v32 = v6;
  }

  else
  {
    v32 = v31;
  }

  v33 = v11 + v32;
  v34 = v4;
  result.height = v33;
  result.width = v34;
  return result;
}

- (double)layoutHeightThatFitsRowsStartingWithRow:(unint64_t)a3
{
  v4 = [(AVTransportControlsView *)self controlsLayoutView];
  [v4 layoutHeightThatFitsRowsStartingWithRow:a3];
  v6 = v5;

  return v6;
}

- (void)reevaluateHiddenStateOfAllItems
{
  v2 = [(AVTransportControlsView *)self controlsLayoutView];
  [v2 reevaluateHiddenStateOfAllItems];
}

- (void)setStyleSheet:(id)a3
{
  v7 = a3;
  v5 = [(AVTransportControlsView *)self styleSheet];
  v6 = [v5 isEqual:v7];

  if ((v6 & 1) == 0)
  {
    objc_storeStrong(&self->_styleSheet, a3);
    [(AVTransportControlsView *)self _updateFontSizes];
    [(AVTransportControlsView *)self setNeedsLayout];
  }
}

- (void)setCustomContentTransitioningInfoPanel:(id)a3
{
  v5 = a3;
  customContentTransitioningInfoPanel = self->_customContentTransitioningInfoPanel;
  if (customContentTransitioningInfoPanel != v5)
  {
    v7 = v5;
    [customContentTransitioningInfoPanel removeFromSuperview];
    objc_storeStrong(&self->_customContentTransitioningInfoPanel, a3);
    [(AVTransportControlsView *)self setNeedsLayout];
    customContentTransitioningInfoPanel = [(AVTransportControlsView *)self isHiddenOrHasHiddenAncestor];
    v5 = v7;
    if ((customContentTransitioningInfoPanel & 1) == 0)
    {
      customContentTransitioningInfoPanel = [(AVTransportControlsView *)self layoutIfNeeded];
      v5 = v7;
    }
  }

  MEMORY[0x1EEE66BB8](customContentTransitioningInfoPanel, v5);
}

- (void)setCustomItems:(id)a3
{
  v6 = a3;
  if (![(NSArray *)self->_customItems isEqualToArray:?])
  {
    v4 = [v6 copy];
    customItems = self->_customItems;
    self->_customItems = v4;

    [(AVTransportControlsView *)self setNeedsLayout];
  }
}

- (void)setLiveStreamingControlsIncludeScrubber:(BOOL)a3
{
  if (self->_liveStreamingControlsIncludeScrubber != a3)
  {
    self->_liveStreamingControlsIncludeScrubber = a3;
    [(AVTransportControlsView *)self setNeedsLayout];
  }
}

- (void)setShowsLiveStreamingControls:(BOOL)a3
{
  if (self->_showsLiveStreamingControls != a3)
  {
    self->_showsLiveStreamingControls = a3;
    [(AVTransportControlsView *)self setNeedsLayout];
  }
}

- (void)setShowsLoadingIndicator:(BOOL)a3
{
  if (self->_showsLoadingIndicator != a3)
  {
    self->_showsLoadingIndicator = a3;
    [(AVTransportControlsView *)self setNeedsLayout];
  }
}

- (void)setDoubleRowLayoutEnabled:(BOOL)a3
{
  if (self->_doubleRowLayoutEnabled != a3)
  {
    self->_doubleRowLayoutEnabled = a3;
    [(AVTransportControlsView *)self setNeedsLayout];
  }
}

- (void)setCustomMenuItemsViews:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (self->_customMenuItemsViews != v5)
  {
    objc_storeStrong(&self->_customMenuItemsViews, a3);
    if ([(NSArray *)self->_customMenuItemsViews count])
    {
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v6 = self->_customMenuItemsViews;
      v7 = [(NSArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v15;
        do
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v15 != v9)
            {
              objc_enumerationMutation(v6);
            }

            v11 = *(*(&v14 + 1) + 8 * i);
            v12 = [v11 layoutAttributes];
            [v12 setCanOverflowToAuxiliaryMenu:1];

            v13 = [v11 layoutAttributes];
            [v13 setCanOnlyAppearInControlOverflowMenu:1];

            [v11 setNeedsLayout];
          }

          v8 = [(NSArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
        }

        while (v8);
      }
    }

    [(AVTransportControlsView *)self setNeedsLayout];
  }
}

- (AVTransportControlsView)initWithFrame:(CGRect)a3 styleSheet:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v93 = *MEMORY[0x1E69E9840];
  v10 = a4;
  v11 = _AVLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v90 = "[AVTransportControlsView initWithFrame:styleSheet:]";
    v91 = 1024;
    v92 = 73;
    _os_log_impl(&dword_18B49C000, v11, OS_LOG_TYPE_DEFAULT, "%s %d", buf, 0x12u);
  }

  v86.receiver = self;
  v86.super_class = AVTransportControlsView;
  v12 = [(AVView *)&v86 initWithFrame:x, y, width, height];
  v13 = v12;
  if (v12)
  {
    v12->_included = 1;
    objc_storeStrong(&v12->_styleSheet, a4);
    v14 = objc_alloc_init(AVScrubber);
    scrubber = v13->_scrubber;
    v13->_scrubber = v14;

    v16 = [(AVScrubber *)v13->_scrubber layoutAttributes];
    [v16 setAccessibilityIdentifier:@"Scrubber"];

    v17 = [(AVScrubber *)v13->_scrubber layoutAttributes];
    [v17 setHasFlexibleContentSize:1];

    [(AVScrubber *)v13->_scrubber setDelegate:v13];
    [(AVScrubber *)v13->_scrubber addTarget:v13 action:sel_beginScrubbing_ forControlEvents:1];
    [(AVScrubber *)v13->_scrubber addTarget:v13 action:sel_endScrubbing_ forControlEvents:448];
    [(AVScrubber *)v13->_scrubber addTarget:v13 action:sel_scrubberValueChanged_ forControlEvents:4096];
    v18 = __52__AVTransportControlsView_initWithFrame_styleSheet___block_invoke(0, @"Time Elapsed");
    elapsedTimeLabel = v13->_elapsedTimeLabel;
    v13->_elapsedTimeLabel = v18;

    v20 = __52__AVTransportControlsView_initWithFrame_styleSheet___block_invoke(0, @"Time Remaining");
    timeRemainingLabel = v13->_timeRemainingLabel;
    v13->_timeRemainingLabel = v20;

    v22 = __52__AVTransportControlsView_initWithFrame_styleSheet___block_invoke(@"PLAYBACK_CONTROLS_VIEW_CONTROLLER_LIVE_BROADCAST_LABEL_TEXT", @"Live Broadcast");
    liveBroadcastLabel = v13->_liveBroadcastLabel;
    v13->_liveBroadcastLabel = v22;

    [(AVChromedLabel *)v13->_liveBroadcastLabel setLoadingIndicatorAlignment:1];
    v24 = [(AVChromedLabel *)v13->_liveBroadcastLabel layoutAttributes];
    [v24 setHasFlexibleContentSize:1];

    v25 = __52__AVTransportControlsView_initWithFrame_styleSheet___block_invoke(@"PLAYBACK_CONTROLS_VIEW_CONTROLLER_LIVE_LABEL_TEXT", @"Live");
    liveBroadcastScrubberLabel = v13->_liveBroadcastScrubberLabel;
    v13->_liveBroadcastScrubberLabel = v25;

    v27 = objc_alloc_init(AVTouchIgnoringView);
    embeddedExtraContentContainer = v13->_embeddedExtraContentContainer;
    v13->_embeddedExtraContentContainer = v27;

    [(AVTouchIgnoringView *)v13->_embeddedExtraContentContainer setClipsToBounds:1];
    [(AVTouchIgnoringView *)v13->_embeddedExtraContentContainer setCollapsed:1];
    [(AVTouchIgnoringView *)v13->_embeddedExtraContentContainer setIncluded:0];
    v29 = [(AVTouchIgnoringView *)v13->_embeddedExtraContentContainer layoutAttributes];
    [v29 setHasFlexibleContentSize:1];

    v30 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    scrubInstructionsLabel = v13->_scrubInstructionsLabel;
    v13->_scrubInstructionsLabel = v30;

    [(UILabel *)v13->_scrubInstructionsLabel setNumberOfLines:0];
    [(UILabel *)v13->_scrubInstructionsLabel setTextAlignment:1];
    [(UILabel *)v13->_scrubInstructionsLabel setHidden:1];
    v32 = objc_alloc_init(AVChromedLabel);
    detachedScrubInstructionsBackdropLabel = v13->_detachedScrubInstructionsBackdropLabel;
    v13->_detachedScrubInstructionsBackdropLabel = v32;

    [(AVChromedLabel *)v13->_detachedScrubInstructionsBackdropLabel setNumberOfLines:0];
    [(AVChromedLabel *)v13->_detachedScrubInstructionsBackdropLabel setLoadingIndicatorAlignment:2];
    [(AVChromedLabel *)v13->_detachedScrubInstructionsBackdropLabel setHidden:1];
    [AVBackdropView applySecondaryGlyphTintToView:v13->_scrubInstructionsLabel];
    [AVBackdropView applySecondaryGlyphTintToView:v13->_detachedScrubInstructionsBackdropLabel];
    v34 = [AVLayoutView alloc];
    v35 = *MEMORY[0x1E695F058];
    v36 = *(MEMORY[0x1E695F058] + 8);
    v37 = *(MEMORY[0x1E695F058] + 16);
    v38 = *(MEMORY[0x1E695F058] + 24);
    v39 = [(AVLayoutView *)v34 initWithFrame:*MEMORY[0x1E695F058], v36, v37, v38];
    detachedExtraContentLayoutView = v13->_detachedExtraContentLayoutView;
    v13->_detachedExtraContentLayoutView = v39;

    v41 = v13->_detachedExtraContentLayoutView;
    v87 = v13->_detachedScrubInstructionsBackdropLabel;
    v42 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v87 count:1];
    v88 = v42;
    v43 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v88 count:1];
    [(AVLayoutView *)v41 setArrangedSubviews:v43];

    [(AVLayoutView *)v13->_detachedExtraContentLayoutView setDebugIdentifier:@"detatchedExtraContentStackView"];
    v44 = [[AVPlaybackControlsRoutePickerView alloc] initWithSecondGenerationButton:0];
    routePickerView = v13->_routePickerView;
    v13->_routePickerView = v44;

    [(AVPlaybackControlsRoutePickerView *)v13->_routePickerView setPrioritizesVideoDevices:1];
    v46 = +[AVControlOverflowButton legacyOverflowButton];
    controlOverflowButton = v13->_controlOverflowButton;
    v13->_controlOverflowButton = v46;

    v48 = [(AVButton *)v13->_controlOverflowButton layoutAttributes];
    [v48 setCanSubstituteOtherAttributes:1];

    v49 = [AVButton buttonWithAccessibilityIdentifier:@"Media Selection" isFirstGeneration:1];
    mediaSelectionButton = v13->_mediaSelectionButton;
    v13->_mediaSelectionButton = v49;

    v51 = [(AVButton *)v13->_mediaSelectionButton layoutAttributes];
    [v51 setCanOverflowToAuxiliaryMenu:1];

    v52 = [AVButton buttonWithAccessibilityIdentifier:@"Playback Speed" isFirstGeneration:1];
    playbackSpeedButton = v13->_playbackSpeedButton;
    v13->_playbackSpeedButton = v52;

    v54 = [(AVButton *)v13->_playbackSpeedButton layoutAttributes];
    [v54 setCanOverflowToAuxiliaryMenu:1];

    v55 = [(AVButton *)v13->_playbackSpeedButton layoutAttributes];
    [v55 setCanOnlyAppearInControlOverflowMenu:1];

    v56 = [AVButton buttonWithAccessibilityIdentifier:@"Play/Pause" isFirstGeneration:1];
    standardPlayPauseButton = v13->_standardPlayPauseButton;
    v13->_standardPlayPauseButton = v56;

    v58 = v13->_standardPlayPauseButton;
    v59 = [MEMORY[0x1E69DB878] avkit_nonScalingFontWithTextStyle:*MEMORY[0x1E69DDDB8] weight:*MEMORY[0x1E69DB970]];
    [(AVButton *)v58 setFullScreenFont:v59];

    v60 = [AVButton buttonWithAccessibilityIdentifier:@"Skip Forward" isFirstGeneration:1];
    skipForwardButton = v13->_skipForwardButton;
    v13->_skipForwardButton = v60;

    v62 = [AVButton buttonWithAccessibilityIdentifier:@"Skip Backward" isFirstGeneration:1];
    skipBackButton = v13->_skipBackButton;
    v13->_skipBackButton = v62;

    v64 = [[AVTouchIgnoringView alloc] initWithFrame:v35, v36, v37, v38];
    flexibleViewAfterRoutePickerView = v13->_flexibleViewAfterRoutePickerView;
    v13->_flexibleViewAfterRoutePickerView = v64;

    v66 = [[AVTouchIgnoringView alloc] initWithFrame:v35, v36, v37, v38];
    flexibleViewAfterSkipForwardButtons = v13->_flexibleViewAfterSkipForwardButtons;
    v13->_flexibleViewAfterSkipForwardButtons = v66;

    [(AVTouchIgnoringView *)v13->_flexibleViewAfterRoutePickerView setIncluded:1];
    [(AVTouchIgnoringView *)v13->_flexibleViewAfterSkipForwardButtons setIncluded:1];
    v68 = [(AVTouchIgnoringView *)v13->_flexibleViewAfterRoutePickerView layoutAttributes];
    [v68 setHasFlexibleContentSize:1];

    v69 = [(AVTouchIgnoringView *)v13->_flexibleViewAfterSkipForwardButtons layoutAttributes];
    [v69 setHasFlexibleContentSize:1];

    v13->_transportViewIncludesVolumeController = 0;
    v70 = [(AVTransportControlsView *)v13 effectiveUserInterfaceLayoutDirection];
    if (v70)
    {
      v71 = @"Skip To Next";
    }

    else
    {
      v71 = @"Skip To Previous";
    }

    if (v70)
    {
      v72 = @"Skip To Previous";
    }

    else
    {
      v72 = @"Skip To Next";
    }

    v73 = [AVButton buttonWithAccessibilityIdentifier:v71 isFirstGeneration:1];
    startRightwardContentTransitionButton = v13->_startRightwardContentTransitionButton;
    v13->_startRightwardContentTransitionButton = v73;

    v75 = [AVButton buttonWithAccessibilityIdentifier:v72 isFirstGeneration:1];
    startLeftwardContentTransitionButton = v13->_startLeftwardContentTransitionButton;
    v13->_startLeftwardContentTransitionButton = v75;

    [(AVTransportControlsView *)v13 addSubview:v13->_detachedExtraContentLayoutView];
    [(AVLayoutView *)v13->_detachedExtraContentLayoutView setAlpha:0.0];
    [(UILabel *)v13->_scrubInstructionsLabel setAlpha:0.0];
    v77 = [[AVLayoutView alloc] initWithFrame:v35, v36, v37, v38];
    controlsLayoutView = v13->_controlsLayoutView;
    v13->_controlsLayoutView = v77;

    [(AVLayoutView *)v13->_controlsLayoutView setDebugIdentifier:@"transportControlsView"];
    [(AVLayoutView *)v13->_controlsLayoutView setSemanticContentAttribute:1];
    [(AVTransportControlsView *)v13 addSubview:v13->_controlsLayoutView];
    [(AVTouchIgnoringView *)v13->_embeddedExtraContentContainer addSubview:v13->_scrubInstructionsLabel];
    LODWORD(v79) = 1148846080;
    [(AVTransportControlsView *)v13 setContentCompressionResistancePriority:0 forAxis:v79];
    LODWORD(v80) = 1148846080;
    [(AVTransportControlsView *)v13 setContentCompressionResistancePriority:1 forAxis:v80];
    LODWORD(v81) = 1148846080;
    [(AVTransportControlsView *)v13 setContentHuggingPriority:0 forAxis:v81];
    v82 = [(AVTransportControlsView *)v13 scrubInstructionsLabel];
    [v82 setHidden:1];

    v83 = [(AVTransportControlsView *)v13 detachedExtraContentLayoutView];
    [v83 setHidden:1];

    v84 = [(AVTransportControlsView *)v13 detachedScrubInstructionsBackdropLabel];
    [v84 setHidden:1];

    [(AVTransportControlsView *)v13 _updateFontSizes];
  }

  return v13;
}

AVChromedLabel *__52__AVTransportControlsView_initWithFrame_styleSheet___block_invoke(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = objc_alloc_init(AVChromedLabel);
  if (v3)
  {
    objc_initWeak(&location, v5);
    v9 = MEMORY[0x1E69E9820];
    v10 = 3221225472;
    v11 = __52__AVTransportControlsView_initWithFrame_styleSheet___block_invoke_2;
    v12 = &unk_1E7208E68;
    objc_copyWeak(&v13, &location);
    AVAsynchronousLocalizedString(v3, v4, &v9);
    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }

  LODWORD(v6) = 1148846080;
  [(AVChromedLabel *)v5 setContentCompressionResistancePriority:0 forAxis:v6, v9, v10, v11, v12];
  [(AVChromedLabel *)v5 setAccessibilityIdentifier:v4];
  v7 = [(AVChromedLabel *)v5 layoutAttributes];
  [v7 setAccessibilityIdentifier:v4];

  return v5;
}

void __52__AVTransportControlsView_initWithFrame_styleSheet___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setText:v3];
}

@end