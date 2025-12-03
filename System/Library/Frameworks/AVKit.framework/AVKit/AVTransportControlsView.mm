@interface AVTransportControlsView
- (AVTransportControlsView)initWithFrame:(CGRect)frame styleSheet:(id)sheet;
- (AVTransportControlsViewDelegate)delegate;
- (BOOL)_subviewIsCustomMenuItemView:(id)view;
- (BOOL)canShowScrubInstructions;
- (BOOL)isCollapsedOrExcluded;
- (CGSize)extrinsicContentSize;
- (CGSize)intrinsicContentSize;
- (NSArray)doubleRowViews;
- (NSArray)singleRowViews;
- (NSTimer)scrubInstructionsTimer;
- (double)_doubleRowLayoutSpacingAfterSubview:(id)subview;
- (double)_rowSpacingForDoubleRowLayoutAfterRow:(unint64_t)row;
- (double)_singeRowLayoutSpacingAfterSubview:(id)subview;
- (double)layoutHeightThatFitsRowsStartingWithRow:(unint64_t)row;
- (id)_scrubInstructionsAttributedText;
- (unint64_t)_layoutItemDisplayPriorityForSubview:(id)subview;
- (void)_layoutDoubleRowViews;
- (void)_layoutSingleRowViews;
- (void)_showScrubInstructions;
- (void)_updateCustomContentTransitioningInfoPanelLayout;
- (void)_updateFontSizes;
- (void)_updateScrubInstructionsFrame;
- (void)_updateScrubInstructionsLabelsText;
- (void)avkit_reevaluateHiddenStateOfItem:(id)item;
- (void)beginScrubbing:(id)scrubbing;
- (void)endScrubbing:(id)scrubbing;
- (void)layoutSubviews;
- (void)reevaluateHiddenStateOfAllItems;
- (void)scrubberSlowKnobMovementDetected:(id)detected;
- (void)scrubberValueChanged:(id)changed;
- (void)setCollapsed:(BOOL)collapsed;
- (void)setCustomContentTransitioningInfoPanel:(id)panel;
- (void)setCustomItems:(id)items;
- (void)setCustomMenuItemsViews:(id)views;
- (void)setDoubleRowLayoutEnabled:(BOOL)enabled;
- (void)setExtrinsicContentSize:(CGSize)size;
- (void)setHasFullScreenAppearance:(BOOL)appearance;
- (void)setIncluded:(BOOL)included;
- (void)setLiveStreamingControlsIncludeScrubber:(BOOL)scrubber;
- (void)setShowsLiveStreamingControls:(BOOL)controls;
- (void)setShowsLoadingIndicator:(BOOL)indicator;
- (void)setStyleSheet:(id)sheet;
- (void)traitCollectionDidChange:(id)change;
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

- (BOOL)_subviewIsCustomMenuItemView:(id)view
{
  viewCopy = view;
  customMenuItemsViews = [(AVTransportControlsView *)self customMenuItemsViews];

  if (customMenuItemsViews)
  {
    v6 = viewCopy;
    if (v6)
    {
      customMenuItemsViews2 = [(AVTransportControlsView *)self customMenuItemsViews];
      v8 = [customMenuItemsViews2 containsObject:v6];
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
  customContentTransitioningInfoPanel = [(AVTransportControlsView *)self customContentTransitioningInfoPanel];
  v3 = customContentTransitioningInfoPanel == 0;

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
  customMenuItemsViews = [(AVTransportControlsView *)self customMenuItemsViews];

  if (customMenuItemsViews)
  {
    customMenuItemsViews2 = [(AVTransportControlsView *)self customMenuItemsViews];
    v20 = [v17 arrayByAddingObjectsFromArray:customMenuItemsViews2];

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

  customItems = [(AVTransportControlsView *)self customItems];
  v13 = [v11 arrayByAddingObjectsFromArray:customItems];

  customMenuItemsViews = [(AVTransportControlsView *)self customMenuItemsViews];

  if (customMenuItemsViews)
  {
    customMenuItemsViews2 = [(AVTransportControlsView *)self customMenuItemsViews];
    v16 = [v13 arrayByAddingObjectsFromArray:customMenuItemsViews2];

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
  customContentTransitioningInfoPanel = [(AVTransportControlsView *)self customContentTransitioningInfoPanel];

  if (!customContentTransitioningInfoPanel)
  {
    return;
  }

  isDoubleRowLayoutEnabled = [(AVTransportControlsView *)self isDoubleRowLayoutEnabled];
  customContentTransitioningInfoPanel2 = [(AVTransportControlsView *)self customContentTransitioningInfoPanel];
  superview = [customContentTransitioningInfoPanel2 superview];
  if (isDoubleRowLayoutEnabled)
  {
    embeddedExtraContentContainer = [(AVTransportControlsView *)self embeddedExtraContentContainer];

    if (superview != embeddedExtraContentContainer)
    {
      embeddedExtraContentContainer2 = [(AVTransportControlsView *)self embeddedExtraContentContainer];
      customContentTransitioningInfoPanel3 = [(AVTransportControlsView *)self customContentTransitioningInfoPanel];
      [embeddedExtraContentContainer2 addSubview:customContentTransitioningInfoPanel3];
    }

    customContentTransitioningInfoPanel4 = [(AVTransportControlsView *)self customContentTransitioningInfoPanel];
    embeddedExtraContentContainer3 = [(AVTransportControlsView *)self embeddedExtraContentContainer];
    [embeddedExtraContentContainer3 bounds];
    [customContentTransitioningInfoPanel4 setFrame:?];
    goto LABEL_9;
  }

  detachedExtraContentLayoutView = [(AVTransportControlsView *)self detachedExtraContentLayoutView];

  if (superview != detachedExtraContentLayoutView)
  {
    customContentTransitioningInfoPanel4 = [(AVTransportControlsView *)self detachedExtraContentLayoutView];
    embeddedExtraContentContainer3 = [(AVTransportControlsView *)self customContentTransitioningInfoPanel];
    [customContentTransitioningInfoPanel4 addSubview:embeddedExtraContentContainer3];
LABEL_9:
  }

  detachedExtraContentLayoutView2 = [(AVTransportControlsView *)self detachedExtraContentLayoutView];
  [detachedExtraContentLayoutView2 setHidden:{-[AVTransportControlsView isDoubleRowLayoutEnabled](self, "isDoubleRowLayoutEnabled")}];

  detachedExtraContentLayoutView3 = [(AVTransportControlsView *)self detachedExtraContentLayoutView];
  if ([(AVTransportControlsView *)self isDoubleRowLayoutEnabled])
  {
    v15 = 0.0;
  }

  else
  {
    v15 = 1.0;
  }

  [detachedExtraContentLayoutView3 setAlpha:v15];

  embeddedExtraContentContainer4 = [(AVTransportControlsView *)self embeddedExtraContentContainer];
  [embeddedExtraContentContainer4 setCollapsed:{-[AVTransportControlsView isDoubleRowLayoutEnabled](self, "isDoubleRowLayoutEnabled") ^ 1}];

  embeddedExtraContentContainer5 = [(AVTransportControlsView *)self embeddedExtraContentContainer];
  [embeddedExtraContentContainer5 setIncluded:{-[AVTransportControlsView isDoubleRowLayoutEnabled](self, "isDoubleRowLayoutEnabled")}];

  embeddedExtraContentContainer6 = [(AVTransportControlsView *)self embeddedExtraContentContainer];
  if ([(AVTransportControlsView *)self isDoubleRowLayoutEnabled])
  {
    v18 = 1.0;
  }

  else
  {
    v18 = 0.0;
  }

  [embeddedExtraContentContainer6 setAlpha:v18];
}

- (id)_scrubInstructionsAttributedText
{
  v25[1] = *MEMORY[0x1E69E9840];
  v3 = AVLocalizedString(@"PLAYBACK_CONTROLS_VIEW_CONTROLLER_SCRUB_INSTRUCTIONS_SLIDE_UP_TITLE_LABEL_TEXT");
  scrubber = [(AVTransportControlsView *)self scrubber];
  localizedScrubbingSpeedName = [scrubber localizedScrubbingSpeedName];

  v6 = MEMORY[0x1E69DB878];
  v7 = *MEMORY[0x1E69DDD28];
  traitCollection = [(AVTransportControlsView *)self traitCollection];
  v9 = [v6 preferredFontForTextStyle:v7 compatibleWithTraitCollection:traitCollection];

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
  v17 = [localizedScrubbingSpeedName stringByAppendingString:@"\n"];
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
  detachedScrubInstructionsBackdropLabel = [(AVTransportControlsView *)self detachedScrubInstructionsBackdropLabel];
  [detachedScrubInstructionsBackdropLabel intrinsicContentSize];
  v6 = v3 - v5 + -20.0;

  detachedScrubInstructionsBackdropLabel2 = [(AVTransportControlsView *)self detachedScrubInstructionsBackdropLabel];
  [detachedScrubInstructionsBackdropLabel2 intrinsicContentSize];
  v9 = v8 + 20.0;

  detachedScrubInstructionsBackdropLabel3 = [(AVTransportControlsView *)self detachedScrubInstructionsBackdropLabel];
  [detachedScrubInstructionsBackdropLabel3 intrinsicContentSize];
  v12 = v11 + 20.0;

  detachedExtraContentLayoutView = [(AVTransportControlsView *)self detachedExtraContentLayoutView];
  [detachedExtraContentLayoutView setFrame:{0.0, v6, v9, v12}];

  detachedScrubInstructionsBackdropLabel4 = [(AVTransportControlsView *)self detachedScrubInstructionsBackdropLabel];
  detachedScrubInstructionsBackdropLabel5 = [(AVTransportControlsView *)self detachedScrubInstructionsBackdropLabel];
  [detachedScrubInstructionsBackdropLabel5 intrinsicContentSize];
  v17 = v16;
  detachedScrubInstructionsBackdropLabel6 = [(AVTransportControlsView *)self detachedScrubInstructionsBackdropLabel];
  [detachedScrubInstructionsBackdropLabel6 intrinsicContentSize];
  [detachedScrubInstructionsBackdropLabel4 setFrame:{10.0, 10.0, v17, v19}];

  detachedExtraContentLayoutView2 = [(AVTransportControlsView *)self detachedExtraContentLayoutView];
  [(AVTransportControlsView *)self center];
  v22 = v21;
  detachedExtraContentLayoutView3 = [(AVTransportControlsView *)self detachedExtraContentLayoutView];
  [detachedExtraContentLayoutView3 center];
  [detachedExtraContentLayoutView2 setCenter:v22];

  scrubInstructionsLabel = [(AVTransportControlsView *)self scrubInstructionsLabel];
  embeddedExtraContentContainer = [(AVTransportControlsView *)self embeddedExtraContentContainer];
  [embeddedExtraContentContainer bounds];
  [scrubInstructionsLabel sizeThatFits:{v26, v27}];
  v29 = v28;
  v31 = v30;

  scrubInstructionsLabel2 = [(AVTransportControlsView *)self scrubInstructionsLabel];
  [scrubInstructionsLabel2 setFrame:{0.0, 0.0, v29, v31}];

  scrubInstructionsLabel3 = [(AVTransportControlsView *)self scrubInstructionsLabel];
  embeddedExtraContentContainer2 = [(AVTransportControlsView *)self embeddedExtraContentContainer];
  [embeddedExtraContentContainer2 frame];
  v34 = CGRectGetWidth(v39) * 0.5;
  scrubInstructionsLabel4 = [(AVTransportControlsView *)self scrubInstructionsLabel];
  [scrubInstructionsLabel4 center];
  [scrubInstructionsLabel3 setCenter:v34];
}

- (void)_updateScrubInstructionsLabelsText
{
  customContentTransitioningInfoPanel = [(AVTransportControlsView *)self customContentTransitioningInfoPanel];

  if (customContentTransitioningInfoPanel)
  {
    detachedScrubInstructionsBackdropLabel = [(AVTransportControlsView *)self detachedScrubInstructionsBackdropLabel];
    [detachedScrubInstructionsBackdropLabel setAttributedText:0];

    scrubInstructionsLabel = [(AVTransportControlsView *)self scrubInstructionsLabel];
    [scrubInstructionsLabel setAttributedText:0];
  }

  else
  {
    scrubInstructionsLabel = [(AVTransportControlsView *)self _scrubInstructionsAttributedText];
    scrubInstructionsLabel2 = [(AVTransportControlsView *)self scrubInstructionsLabel];
    attributedText = [scrubInstructionsLabel2 attributedText];
    v7 = [scrubInstructionsLabel isEqualToAttributedString:attributedText];

    if ((v7 & 1) == 0)
    {
      detachedScrubInstructionsBackdropLabel2 = [(AVTransportControlsView *)self detachedScrubInstructionsBackdropLabel];
      _scrubInstructionsAttributedText = [(AVTransportControlsView *)self _scrubInstructionsAttributedText];
      [detachedScrubInstructionsBackdropLabel2 setAttributedText:_scrubInstructionsAttributedText];

      scrubInstructionsLabel3 = [(AVTransportControlsView *)self scrubInstructionsLabel];
      _scrubInstructionsAttributedText2 = [(AVTransportControlsView *)self _scrubInstructionsAttributedText];
      [scrubInstructionsLabel3 setAttributedText:_scrubInstructionsAttributedText2];
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
  styleSheet = [(AVTransportControlsView *)self styleSheet];
  [styleSheet doubleRowLayoutMargins];
  if (Width <= v6)
  {
  }

  else
  {
    isShowingScrubInstructions = [(AVTransportControlsView *)self isShowingScrubInstructions];

    if (!isShowingScrubInstructions)
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
  elapsedTimeLabel = [(AVTransportControlsView *)self elapsedTimeLabel];
  styleSheet = [(AVTransportControlsView *)self styleSheet];
  scrubberTimeLabelFont = [styleSheet scrubberTimeLabelFont];
  [elapsedTimeLabel setFont:scrubberTimeLabelFont];

  timeRemainingLabel = [(AVTransportControlsView *)self timeRemainingLabel];
  styleSheet2 = [(AVTransportControlsView *)self styleSheet];
  scrubberTimeLabelFont2 = [styleSheet2 scrubberTimeLabelFont];
  [timeRemainingLabel setFont:scrubberTimeLabelFont2];

  liveBroadcastLabel = [(AVTransportControlsView *)self liveBroadcastLabel];
  styleSheet3 = [(AVTransportControlsView *)self styleSheet];
  infoLabelFont = [styleSheet3 infoLabelFont];
  [liveBroadcastLabel setFont:infoLabelFont];

  liveBroadcastScrubberLabel = [(AVTransportControlsView *)self liveBroadcastScrubberLabel];
  styleSheet4 = [(AVTransportControlsView *)self styleSheet];
  scrubberInfoLabelFont = [styleSheet4 scrubberInfoLabelFont];
  [liveBroadcastScrubberLabel setFont:scrubberInfoLabelFont];

  [(AVTransportControlsView *)self setNeedsLayout];
}

- (unint64_t)_layoutItemDisplayPriorityForSubview:(id)subview
{
  subviewCopy = subview;
  [(AVTransportControlsView *)self _subviewIsCustomMenuItemView:subviewCopy];
  standardPlayPauseButton = [(AVTransportControlsView *)self standardPlayPauseButton];
  v6 = standardPlayPauseButton;
  if (standardPlayPauseButton == subviewCopy)
  {

    goto LABEL_16;
  }

  embeddedExtraContentContainer = [(AVTransportControlsView *)self embeddedExtraContentContainer];

  if (embeddedExtraContentContainer == subviewCopy)
  {
LABEL_16:
    v22 = 4;
    goto LABEL_20;
  }

  scrubber = [(AVTransportControlsView *)self scrubber];
  if (scrubber == subviewCopy)
  {
LABEL_18:

    goto LABEL_19;
  }

  timeRemainingLabel = [(AVTransportControlsView *)self timeRemainingLabel];
  v10 = timeRemainingLabel;
  if (timeRemainingLabel == subviewCopy)
  {

    goto LABEL_18;
  }

  controlOverflowButton = [(AVTransportControlsView *)self controlOverflowButton];

  if (controlOverflowButton == subviewCopy)
  {
LABEL_19:
    v22 = 3;
    goto LABEL_20;
  }

  elapsedTimeLabel = [(AVTransportControlsView *)self elapsedTimeLabel];
  if (elapsedTimeLabel == subviewCopy)
  {
LABEL_22:

    goto LABEL_23;
  }

  liveBroadcastLabel = [(AVTransportControlsView *)self liveBroadcastLabel];
  v14 = liveBroadcastLabel;
  if (liveBroadcastLabel == subviewCopy)
  {

    goto LABEL_22;
  }

  routePickerView = [(AVTransportControlsView *)self routePickerView];

  if (routePickerView == subviewCopy)
  {
LABEL_23:
    v22 = 2;
    goto LABEL_20;
  }

  skipBackButton = [(AVTransportControlsView *)self skipBackButton];
  if (skipBackButton == subviewCopy)
  {
LABEL_27:

    goto LABEL_28;
  }

  skipForwardButton = [(AVTransportControlsView *)self skipForwardButton];
  if (skipForwardButton == subviewCopy)
  {
LABEL_26:

    goto LABEL_27;
  }

  startLeftwardContentTransitionButton = [(AVTransportControlsView *)self startLeftwardContentTransitionButton];
  if (startLeftwardContentTransitionButton == subviewCopy)
  {
LABEL_25:

    goto LABEL_26;
  }

  startRightwardContentTransitionButton = [(AVTransportControlsView *)self startRightwardContentTransitionButton];
  v20 = startRightwardContentTransitionButton;
  if (startRightwardContentTransitionButton == subviewCopy)
  {

    goto LABEL_25;
  }

  mediaSelectionButton = [(AVTransportControlsView *)self mediaSelectionButton];

  if (mediaSelectionButton == subviewCopy)
  {
LABEL_28:
    v22 = 1;
    goto LABEL_20;
  }

  v22 = 0;
LABEL_20:

  return v22;
}

- (double)_rowSpacingForDoubleRowLayoutAfterRow:(unint64_t)row
{
  isDoubleRowLayoutEnabled = [(AVTransportControlsView *)self isDoubleRowLayoutEnabled];
  v6 = 0.0;
  if (!row && isDoubleRowLayoutEnabled)
  {
    customContentTransitioningInfoPanel = [(AVTransportControlsView *)self customContentTransitioningInfoPanel];
    if (customContentTransitioningInfoPanel)
    {
      v8 = customContentTransitioningInfoPanel;
      embeddedExtraContentContainer = [(AVTransportControlsView *)self embeddedExtraContentContainer];
      isHiddenOrHasHiddenAncestor = [embeddedExtraContentContainer isHiddenOrHasHiddenAncestor];

      if (isHiddenOrHasHiddenAncestor)
      {
        v6 = 0.0;
      }

      else
      {
        v6 = 12.0;
      }
    }
  }

  if (((row == 1) & [(AVTransportControlsView *)self isDoubleRowLayoutEnabled]) != 0)
  {
    v6 = 4.5;
  }

  isDoubleRowLayoutEnabled2 = [(AVTransportControlsView *)self isDoubleRowLayoutEnabled];
  if (!row && isDoubleRowLayoutEnabled2)
  {
    scrubInstructionsLabel = [(AVTransportControlsView *)self scrubInstructionsLabel];
    [scrubInstructionsLabel alpha];
    v14 = v13;

    if (v14 == 1.0)
    {
      styleSheet = [(AVTransportControlsView *)self styleSheet];
      [styleSheet spacingBetweenScrubInstructionsAndScrubber];
      v6 = v16;
    }
  }

  return v6;
}

- (void)_layoutSingleRowViews
{
  v43[1] = *MEMORY[0x1E69E9840];
  liveBroadcastLabel = [(AVTransportControlsView *)self liveBroadcastLabel];
  [liveBroadcastLabel setLoadingIndicatorAlignment:1];

  controlsLayoutView = [(AVTransportControlsView *)self controlsLayoutView];
  singleRowViews = [(AVTransportControlsView *)self singleRowViews];
  v43[0] = singleRowViews;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:1];
  [controlsLayoutView setArrangedSubviews:v6];

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

  controlsLayoutView2 = [(AVTransportControlsView *)self controlsLayoutView];
  [controlsLayoutView2 setContentLayoutMargins:{0.0, v7, 0.0, v7}];

  [(AVTransportControlsView *)self bounds];
  if (CGRectGetWidth(v44) < 568.0)
  {
    v11 = 95.0;
  }

  else
  {
    styleSheet = [(AVTransportControlsView *)self styleSheet];
    [styleSheet minimumScrubberSize];
    v11 = v10;
  }

  scrubber = [(AVTransportControlsView *)self scrubber];
  layoutAttributes = [scrubber layoutAttributes];
  styleSheet2 = [(AVTransportControlsView *)self styleSheet];
  [styleSheet2 minimumScrubberSize];
  [layoutAttributes setMinimumSize:v11];

  scrubber2 = [(AVTransportControlsView *)self scrubber];
  layoutAttributes2 = [scrubber2 layoutAttributes];
  timeRemainingLabel = [(AVTransportControlsView *)self timeRemainingLabel];
  layoutAttributes3 = [timeRemainingLabel layoutAttributes];
  [layoutAttributes2 setDisplayPartnerAttributes:layoutAttributes3];

  timeRemainingLabel2 = [(AVTransportControlsView *)self timeRemainingLabel];
  layoutAttributes4 = [timeRemainingLabel2 layoutAttributes];
  scrubber3 = [(AVTransportControlsView *)self scrubber];
  layoutAttributes5 = [scrubber3 layoutAttributes];
  [layoutAttributes4 setDisplayPartnerAttributes:layoutAttributes5];

  skipBackButton = [(AVTransportControlsView *)self skipBackButton];
  layoutAttributes6 = [skipBackButton layoutAttributes];
  skipForwardButton = [(AVTransportControlsView *)self skipForwardButton];
  layoutAttributes7 = [skipForwardButton layoutAttributes];
  [layoutAttributes6 setDisplayPartnerAttributes:layoutAttributes7];

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  singleRowViews2 = [(AVTransportControlsView *)self singleRowViews];
  v28 = [singleRowViews2 countByEnumeratingWithState:&v38 objects:v42 count:16];
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
          objc_enumerationMutation(singleRowViews2);
        }

        v32 = *(*(&v38 + 1) + 8 * i);
        layoutAttributes8 = [v32 layoutAttributes];
        [(AVTransportControlsView *)self _singeRowLayoutSpacingAfterSubview:v32];
        [layoutAttributes8 setTrailingInterItemSpace:?];

        layoutAttributes9 = [v32 layoutAttributes];
        [layoutAttributes9 setDisplayPriority:{-[AVTransportControlsView _layoutItemDisplayPriorityForSubview:](self, "_layoutItemDisplayPriorityForSubview:", v32)}];

        layoutAttributes10 = [v32 layoutAttributes];
        scrubber4 = [(AVTransportControlsView *)self scrubber];
        if (v32 == scrubber4)
        {
          [layoutAttributes10 setHasFlexibleContentSize:1];
        }

        else
        {
          liveBroadcastLabel2 = [(AVTransportControlsView *)self liveBroadcastLabel];
          [layoutAttributes10 setHasFlexibleContentSize:v32 == liveBroadcastLabel2];
        }
      }

      v29 = [singleRowViews2 countByEnumeratingWithState:&v38 objects:v42 count:16];
    }

    while (v29);
  }
}

- (void)_layoutDoubleRowViews
{
  v104[1] = *MEMORY[0x1E69E9840];
  controlsLayoutView = [(AVTransportControlsView *)self controlsLayoutView];
  styleSheet = [(AVTransportControlsView *)self styleSheet];
  [styleSheet doubleRowLayoutMargins];
  [controlsLayoutView setContentLayoutMargins:?];

  scrubInstructionsLabel = [(AVTransportControlsView *)self scrubInstructionsLabel];
  [scrubInstructionsLabel alpha];
  v7 = v6;

  if (v7 == 1.0)
  {
    controlsLayoutView2 = [(AVTransportControlsView *)self controlsLayoutView];
    styleSheet2 = [(AVTransportControlsView *)self styleSheet];
    [styleSheet2 doubleRowLayoutMarginsWhenShowingScrubInstructions];
  }

  else
  {
    customContentTransitioningInfoPanel = [(AVTransportControlsView *)self customContentTransitioningInfoPanel];
    if (!customContentTransitioningInfoPanel)
    {
      goto LABEL_4;
    }

    v31 = customContentTransitioningInfoPanel;
    customContentTransitioningInfoPanel2 = [(AVTransportControlsView *)self customContentTransitioningInfoPanel];
    isHidden = [customContentTransitioningInfoPanel2 isHidden];

    if (isHidden)
    {
      goto LABEL_4;
    }

    controlsLayoutView2 = [(AVTransportControlsView *)self controlsLayoutView];
    styleSheet2 = [(AVTransportControlsView *)self styleSheet];
    [styleSheet2 doublerowLayoutMarginsWhenShowingCustomContentInfo];
  }

  [controlsLayoutView2 setContentLayoutMargins:?];

LABEL_4:
  liveBroadcastLabel = [(AVTransportControlsView *)self liveBroadcastLabel];
  [liveBroadcastLabel setLoadingIndicatorAlignment:2];

  doubleRowViews = [(AVTransportControlsView *)self doubleRowViews];
  embeddedExtraContentContainer = [(AVTransportControlsView *)self embeddedExtraContentContainer];
  v104[0] = embeddedExtraContentContainer;
  v91 = [MEMORY[0x1E695DEC8] arrayWithObjects:v104 count:1];

  scrubber = [(AVTransportControlsView *)self scrubber];
  v103[0] = scrubber;
  liveBroadcastLabel2 = [(AVTransportControlsView *)self liveBroadcastLabel];
  v103[1] = liveBroadcastLabel2;
  v90 = [MEMORY[0x1E695DEC8] arrayWithObjects:v103 count:2];

  elapsedTimeLabel = [(AVTransportControlsView *)self elapsedTimeLabel];
  v102[0] = elapsedTimeLabel;
  timeRemainingLabel = [(AVTransportControlsView *)self timeRemainingLabel];
  v102[1] = timeRemainingLabel;
  liveBroadcastScrubberLabel = [(AVTransportControlsView *)self liveBroadcastScrubberLabel];
  v102[2] = liveBroadcastScrubberLabel;
  v92 = [MEMORY[0x1E695DEC8] arrayWithObjects:v102 count:3];

  routePickerView = [(AVTransportControlsView *)self routePickerView];
  v101[0] = routePickerView;
  flexibleViewAfterRoutePickerView = [(AVTransportControlsView *)self flexibleViewAfterRoutePickerView];
  v101[1] = flexibleViewAfterRoutePickerView;
  startLeftwardContentTransitionButton = [(AVTransportControlsView *)self startLeftwardContentTransitionButton];
  v101[2] = startLeftwardContentTransitionButton;
  skipBackButton = [(AVTransportControlsView *)self skipBackButton];
  v101[3] = skipBackButton;
  standardPlayPauseButton = [(AVTransportControlsView *)self standardPlayPauseButton];
  v101[4] = standardPlayPauseButton;
  skipForwardButton = [(AVTransportControlsView *)self skipForwardButton];
  v101[5] = skipForwardButton;
  startRightwardContentTransitionButton = [(AVTransportControlsView *)self startRightwardContentTransitionButton];
  v101[6] = startRightwardContentTransitionButton;
  flexibleViewAfterSkipForwardButtons = [(AVTransportControlsView *)self flexibleViewAfterSkipForwardButtons];
  v101[7] = flexibleViewAfterSkipForwardButtons;
  mediaSelectionButton = [(AVTransportControlsView *)self mediaSelectionButton];
  v101[8] = mediaSelectionButton;
  playbackSpeedButton = [(AVTransportControlsView *)self playbackSpeedButton];
  v101[9] = playbackSpeedButton;
  controlOverflowButton = [(AVTransportControlsView *)self controlOverflowButton];
  v101[10] = controlOverflowButton;
  v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v101 count:11];

  customMenuItemsViews = [(AVTransportControlsView *)self customMenuItemsViews];

  if (customMenuItemsViews)
  {
    customMenuItemsViews2 = [(AVTransportControlsView *)self customMenuItemsViews];
    v28 = [v25 arrayByAddingObjectsFromArray:customMenuItemsViews2];

    v29 = v28;
  }

  else
  {
    v29 = v25;
  }

  flexibleViewAfterSkipForwardButtons2 = [(AVTransportControlsView *)self flexibleViewAfterSkipForwardButtons];
  layoutAttributes = [flexibleViewAfterSkipForwardButtons2 layoutAttributes];
  v36 = *MEMORY[0x1E695F060];
  v37 = *(MEMORY[0x1E695F060] + 8);
  [layoutAttributes setMinimumSize:{*MEMORY[0x1E695F060], v37}];

  flexibleViewAfterRoutePickerView2 = [(AVTransportControlsView *)self flexibleViewAfterRoutePickerView];
  layoutAttributes2 = [flexibleViewAfterRoutePickerView2 layoutAttributes];
  [layoutAttributes2 setMinimumSize:{v36, v37}];

  controlsLayoutView3 = [(AVTransportControlsView *)self controlsLayoutView];
  v100[0] = v91;
  v100[1] = v90;
  v100[2] = v92;
  v100[3] = v29;
  v89 = v29;
  v41 = [MEMORY[0x1E695DEC8] arrayWithObjects:v100 count:4];
  [controlsLayoutView3 setArrangedSubviews:v41];

  v97 = 0u;
  v98 = 0u;
  v95 = 0u;
  v96 = 0u;
  v42 = doubleRowViews;
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
        layoutAttributes3 = [v47 layoutAttributes];
        [(AVTransportControlsView *)self _doubleRowLayoutSpacingAfterSubview:v47];
        [layoutAttributes3 setTrailingInterItemSpace:?];

        layoutAttributes4 = [v47 layoutAttributes];
        [layoutAttributes4 setDisplayPriority:{-[AVTransportControlsView _layoutItemDisplayPriorityForSubview:](self, "_layoutItemDisplayPriorityForSubview:", v47)}];

        scrubber2 = [(AVTransportControlsView *)self scrubber];

        if (v47 == scrubber2)
        {
          layoutAttributes5 = [v47 layoutAttributes];
          styleSheet3 = [(AVTransportControlsView *)self styleSheet];
          [styleSheet3 minimumScrubberSize];
          [layoutAttributes5 setMinimumSize:?];
        }

        else
        {
          embeddedExtraContentContainer2 = [(AVTransportControlsView *)self embeddedExtraContentContainer];

          if (v47 != embeddedExtraContentContainer2)
          {
            continue;
          }

          customContentTransitioningInfoPanel3 = [(AVTransportControlsView *)self customContentTransitioningInfoPanel];

          if (customContentTransitioningInfoPanel3)
          {
            customContentTransitioningInfoPanel4 = [(AVTransportControlsView *)self customContentTransitioningInfoPanel];
            [(AVTransportControlsView *)self frame];
            [customContentTransitioningInfoPanel4 systemLayoutSizeFittingSize:{v54, v55}];
            v94 = v56;
          }

          else
          {
            customContentTransitioningInfoPanel4 = [(AVTransportControlsView *)self scrubInstructionsLabel];
            embeddedExtraContentContainer3 = [(AVTransportControlsView *)self embeddedExtraContentContainer];
            [embeddedExtraContentContainer3 bounds];
            [customContentTransitioningInfoPanel4 sizeThatFits:{v60, v61}];
            v94 = v62;
          }

          [(AVTransportControlsView *)self bounds];
          v64 = v63;
          v66 = v65;
          v68 = v67;
          v70 = v69;
          controlsLayoutView4 = [(AVTransportControlsView *)self controlsLayoutView];
          [controlsLayoutView4 contentLayoutMargins];
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

          layoutAttributes5 = [v47 layoutAttributes];
          [layoutAttributes5 setMinimumSize:{Width, v94}];
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
    controlsLayoutView5 = [(AVTransportControlsView *)self controlsLayoutView];
    [controlsLayoutView5 setRowSpacing:j afterRow:v84];
  }
}

- (double)_doubleRowLayoutSpacingAfterSubview:(id)subview
{
  subviewCopy = subview;
  [(AVTransportControlsView *)self bounds];
  Width = CGRectGetWidth(v35);
  controlsLayoutView = [(AVTransportControlsView *)self controlsLayoutView];
  skipForwardButton = [(AVTransportControlsView *)self skipForwardButton];
  if ([skipForwardButton isIncluded])
  {
    v8 = 0;
  }

  else
  {
    startRightwardContentTransitionButton = [(AVTransportControlsView *)self startRightwardContentTransitionButton];
    isIncluded = [startRightwardContentTransitionButton isIncluded];

    v8 = isIncluded ^ 1;
  }

  skipBackButton = [(AVTransportControlsView *)self skipBackButton];
  if (skipBackButton == subviewCopy)
  {
    goto LABEL_21;
  }

  startLeftwardContentTransitionButton = [(AVTransportControlsView *)self startLeftwardContentTransitionButton];
  if (startLeftwardContentTransitionButton == subviewCopy)
  {
LABEL_20:

LABEL_21:
    v19 = 32.0;
    goto LABEL_22;
  }

  mediaSelectionButton = [(AVTransportControlsView *)self mediaSelectionButton];
  if (mediaSelectionButton == subviewCopy)
  {
LABEL_19:

    goto LABEL_20;
  }

  standardPlayPauseButton = [(AVTransportControlsView *)self standardPlayPauseButton];
  if (!((standardPlayPauseButton != subviewCopy) | v8 & 1))
  {
LABEL_18:

    goto LABEL_19;
  }

  playbackSpeedButton = [(AVTransportControlsView *)self playbackSpeedButton];
  v16 = playbackSpeedButton;
  if (playbackSpeedButton == subviewCopy)
  {

    goto LABEL_18;
  }

  controlOverflowButton = [(AVTransportControlsView *)self controlOverflowButton];

  if (controlOverflowButton == subviewCopy)
  {
    v19 = 32.0;
    goto LABEL_23;
  }

  elapsedTimeLabel = [(AVTransportControlsView *)self elapsedTimeLabel];

  if (elapsedTimeLabel == subviewCopy)
  {
    elapsedTimeLabel2 = [(AVTransportControlsView *)self elapsedTimeLabel];
    [elapsedTimeLabel2 intrinsicContentSize];
    v25 = Width - v24;
    [controlsLayoutView contentLayoutMargins];
    v27 = v25 - v26;
    [controlsLayoutView contentLayoutMargins];
    v19 = v27 - v28;

    timeRemainingLabel = [(AVTransportControlsView *)self timeRemainingLabel];
    isIncluded2 = [timeRemainingLabel isIncluded];

    if (isIncluded2)
    {
      timeRemainingLabel2 = [(AVTransportControlsView *)self timeRemainingLabel];
    }

    else
    {
      liveBroadcastScrubberLabel = [(AVTransportControlsView *)self liveBroadcastScrubberLabel];
      isIncluded3 = [liveBroadcastScrubberLabel isIncluded];

      if (!isIncluded3)
      {
        goto LABEL_23;
      }

      timeRemainingLabel2 = [(AVTransportControlsView *)self liveBroadcastScrubberLabel];
    }

    skipBackButton = timeRemainingLabel2;
    [timeRemainingLabel2 intrinsicContentSize];
    v19 = v19 - v34;
  }

  else
  {
    skipBackButton = [(AVTransportControlsView *)self routePickerView];
    v19 = 0.0;
    if (skipBackButton != subviewCopy)
    {
      skipForwardButton2 = [(AVTransportControlsView *)self skipForwardButton];
      if (skipForwardButton2 != subviewCopy)
      {
        startRightwardContentTransitionButton2 = [(AVTransportControlsView *)self startRightwardContentTransitionButton];
        if (startRightwardContentTransitionButton2 != subviewCopy)
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

- (double)_singeRowLayoutSpacingAfterSubview:(id)subview
{
  subviewCopy = subview;
  [(AVTransportControlsView *)self _subviewIsCustomMenuItemView:subviewCopy];
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

  skipBackButton = [(AVTransportControlsView *)self skipBackButton];
  if ([skipBackButton isIncluded])
  {
  }

  else
  {
    startLeftwardContentTransitionButton = [(AVTransportControlsView *)self startLeftwardContentTransitionButton];
    isIncluded = [startLeftwardContentTransitionButton isIncluded];

    if ((isIncluded & 1) == 0)
    {
      v5 = 0.0;
      if (self->_skipBackButton != subviewCopy && self->_startLeftwardContentTransitionButton != subviewCopy && self->_skipForwardButton != subviewCopy)
      {
        if (self->_startRightwardContentTransitionButton == subviewCopy)
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
  customItems = [(AVTransportControlsView *)self customItems];

  if (customItems)
  {
    if (self->_mediaSelectionButton == subviewCopy)
    {
      skipBackButton2 = [(AVTransportControlsView *)self skipBackButton];
      if ([skipBackButton2 isIncluded])
      {
        v5 = 32.0;
      }

      else
      {
        startLeftwardContentTransitionButton2 = [(AVTransportControlsView *)self startLeftwardContentTransitionButton];
        if ([startLeftwardContentTransitionButton2 isIncluded])
        {
          v5 = 32.0;
        }

        else
        {
          v5 = 20.0;
        }
      }
    }

    else if ([(AVButton *)subviewCopy conformsToProtocol:&unk_1EFF1F478])
    {
      v11 = subviewCopy;
      customItems2 = [(AVTransportControlsView *)self customItems];
      v13 = [customItems2 containsObject:v11];

      if (v13)
      {
        v5 = 16.0;
      }
    }
  }

LABEL_32:
  if (self->_liveBroadcastLabel == subviewCopy)
  {
    v5 = 0.0;
  }

  else if (self->_elapsedTimeLabel == subviewCopy || self->_scrubber == subviewCopy)
  {
    v5 = 5.0;
  }

  avkit_mainScreen = [MEMORY[0x1E69DCEB0] avkit_mainScreen];
  traitCollection = [avkit_mainScreen traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  v19 = 0.77;
  if (userInterfaceIdiom != 5)
  {
    v19 = 1.0;
  }

  v20 = v5 * v19;

  return v20;
}

- (void)endScrubbing:(id)scrubbing
{
  scrubbingCopy = scrubbing;
  [(AVTransportControlsView *)self setScrubberValueWhenScrubInstructionsTimerBegan:0.0];
  scrubInstructionsTimer = [(AVTransportControlsView *)self scrubInstructionsTimer];
  [scrubInstructionsTimer invalidate];

  delegate = [(AVTransportControlsView *)self delegate];
  [delegate transportControls:self scrubberDidEndScrubbing:scrubbingCopy];

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

- (void)scrubberValueChanged:(id)changed
{
  changedCopy = changed;
  [(AVTransportControlsView *)self _updateScrubInstructionsLabelsText];
  [(AVTransportControlsView *)self _updateScrubInstructionsFrame];
  delegate = [(AVTransportControlsView *)self delegate];
  [delegate transportControls:self scrubberDidScrub:changedCopy];
}

- (void)beginScrubbing:(id)scrubbing
{
  scrubbingCopy = scrubbing;
  delegate = [(AVTransportControlsView *)self delegate];
  [delegate transportControls:self scrubberDidBeginScrubbing:scrubbingCopy];

  scrubInstructionsLabel = [(AVTransportControlsView *)self scrubInstructionsLabel];
  [scrubInstructionsLabel setHidden:1];

  detachedScrubInstructionsBackdropLabel = [(AVTransportControlsView *)self detachedScrubInstructionsBackdropLabel];
  [detachedScrubInstructionsBackdropLabel setHidden:1];
}

- (void)setExtrinsicContentSize:(CGSize)size
{
  if (size.width != self->_extrinsicContentSize.width || size.height != self->_extrinsicContentSize.height)
  {
    self->_extrinsicContentSize = size;
    [(AVTransportControlsView *)self invalidateIntrinsicContentSize];
  }
}

- (void)setHasFullScreenAppearance:(BOOL)appearance
{
  if (self->_hasFullScreenAppearance != appearance)
  {
    self->_hasFullScreenAppearance = appearance;
    [(AVTransportControlsView *)self setNeedsLayout];
  }
}

- (void)setCollapsed:(BOOL)collapsed
{
  v15 = *MEMORY[0x1E69E9840];
  if (self->_collapsed != collapsed)
  {
    collapsedCopy = collapsed;
    self->_collapsed = collapsed;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    singleRowViews = [(AVTransportControlsView *)self singleRowViews];
    v6 = [singleRowViews countByEnumeratingWithState:&v10 objects:v14 count:16];
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
            objc_enumerationMutation(singleRowViews);
          }

          [*(*(&v10 + 1) + 8 * i) setCollapsed:collapsedCopy];
        }

        v7 = [singleRowViews countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v7);
    }

    [(AVTransportControlsView *)self invalidateIntrinsicContentSize];
    [(AVTransportControlsView *)self avkit_reevaluateHiddenStateOfItem:self];
  }
}

- (void)setIncluded:(BOOL)included
{
  if (self->_included != included)
  {
    self->_included = included;
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

- (void)scrubberSlowKnobMovementDetected:(id)detected
{
  if ([(AVTransportControlsView *)self canShowScrubInstructions])
  {

    [(AVTransportControlsView *)self _showScrubInstructions];
  }
}

- (void)avkit_reevaluateHiddenStateOfItem:(id)item
{
  itemCopy = item;
  embeddedExtraContentContainer = [(AVTransportControlsView *)self embeddedExtraContentContainer];

  if (embeddedExtraContentContainer == itemCopy)
  {
    isCollapsedOrExcluded = [itemCopy isCollapsedOrExcluded];
    v7 = 1.0;
    if (isCollapsedOrExcluded)
    {
      v7 = 0.0;
    }

    [itemCopy setAlpha:v7];
    isAnimatingScrubInstructions = [(AVTransportControlsView *)self isAnimatingScrubInstructions];
    if ((isCollapsedOrExcluded & 1) != 0 || !isAnimatingScrubInstructions)
    {
      if (![(AVTransportControlsView *)self isAnimatingScrubInstructions])
      {
        [itemCopy setHidden:isCollapsedOrExcluded];
        [itemCopy setAlpha:1.0];
      }
    }

    else
    {
      [itemCopy setHidden:0];
    }
  }

  else
  {
    v9.receiver = self;
    v9.super_class = AVTransportControlsView;
    [(UIView *)&v9 avkit_reevaluateHiddenStateOfItem:itemCopy];
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
  liveBroadcastScrubberLabel = [(AVTransportControlsView *)self liveBroadcastScrubberLabel];
  [liveBroadcastScrubberLabel setIncluded:{-[AVTransportControlsView liveStreamingControlsIncludeScrubber](self, "liveStreamingControlsIncludeScrubber")}];

  liveBroadcastLabel = [(AVTransportControlsView *)self liveBroadcastLabel];
  if ([(AVTransportControlsView *)self showsLiveStreamingControls])
  {
    v5 = [(AVTransportControlsView *)self liveStreamingControlsIncludeScrubber]^ 1;
  }

  else
  {
    v5 = 0;
  }

  [liveBroadcastLabel setIncluded:v5];

  if ([(AVTransportControlsView *)self showsLiveStreamingControls])
  {
    liveStreamingControlsIncludeScrubber = [(AVTransportControlsView *)self liveStreamingControlsIncludeScrubber];
  }

  else
  {
    liveStreamingControlsIncludeScrubber = 1;
  }

  scrubber = [(AVTransportControlsView *)self scrubber];
  [scrubber setIncluded:liveStreamingControlsIncludeScrubber];

  elapsedTimeLabel = [(AVTransportControlsView *)self elapsedTimeLabel];
  [elapsedTimeLabel setIncluded:liveStreamingControlsIncludeScrubber];

  timeRemainingLabel = [(AVTransportControlsView *)self timeRemainingLabel];
  if (liveStreamingControlsIncludeScrubber)
  {
    v10 = [(AVTransportControlsView *)self liveStreamingControlsIncludeScrubber]^ 1;
  }

  else
  {
    v10 = 0;
  }

  [timeRemainingLabel setIncluded:v10];

  elapsedTimeLabel2 = [(AVTransportControlsView *)self elapsedTimeLabel];
  [elapsedTimeLabel2 setShowsLoadingIndicator:{-[AVTransportControlsView showsLoadingIndicator](self, "showsLoadingIndicator")}];

  liveBroadcastLabel2 = [(AVTransportControlsView *)self liveBroadcastLabel];
  [liveBroadcastLabel2 setShowsLoadingIndicator:{-[AVTransportControlsView showsLoadingIndicator](self, "showsLoadingIndicator")}];

  elapsedTimeLabel3 = [(AVTransportControlsView *)self elapsedTimeLabel];
  [elapsedTimeLabel3 setLoadingIndicatorAlignment:{-[AVTransportControlsView isDoubleRowLayoutEnabled](self, "isDoubleRowLayoutEnabled") ^ 1}];

  controlsLayoutView = [(AVTransportControlsView *)self controlsLayoutView];
  [(AVTransportControlsView *)self bounds];
  [controlsLayoutView setFrame:?];

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
    customItems = [(AVTransportControlsView *)self customItems];
    v16 = [customItems countByEnumeratingWithState:&v48 objects:v57 count:16];
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
            objc_enumerationMutation(customItems);
          }

          v20 = *(*(&v48 + 1) + 8 * i);
          isDoubleRowLayoutEnabled = [(AVTransportControlsView *)self isDoubleRowLayoutEnabled];
          if (isDoubleRowLayoutEnabled)
          {
            [v20 setCollapsed:1];
          }

          [v20 setIncluded:!isDoubleRowLayoutEnabled];
        }

        v17 = [customItems countByEnumeratingWithState:&v48 objects:v57 count:16];
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
    customItems = [(AVTransportControlsView *)self customItems];
    v22 = [customItems countByEnumeratingWithState:&v52 objects:v58 count:16];
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
            objc_enumerationMutation(customItems);
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

        v23 = [customItems countByEnumeratingWithState:&v52 objects:v58 count:16];
      }

      while (v23);
    }
  }

LABEL_37:
  elapsedTimeLabel4 = [(AVTransportControlsView *)self elapsedTimeLabel];
  isCollapsedOrExcluded = [elapsedTimeLabel4 isCollapsedOrExcluded];

  if (isCollapsedOrExcluded)
  {
    v32 = -16.0;
  }

  else
  {
    v32 = -22.0;
  }

  standardPlayPauseButton = [(AVTransportControlsView *)self standardPlayPauseButton];
  [standardPlayPauseButton setHitRectInsets:{-16.0, -22.0, -16.0, v32}];

  customContentTransitioningInfoPanel = [(AVTransportControlsView *)self customContentTransitioningInfoPanel];
  if (!customContentTransitioningInfoPanel || ![(AVTransportControlsView *)self isDoubleRowLayoutEnabled])
  {

    goto LABEL_45;
  }

  liveBroadcastLabel3 = [(AVTransportControlsView *)self liveBroadcastLabel];
  isCollapsedOrExcluded2 = [liveBroadcastLabel3 isCollapsedOrExcluded];

  if (isCollapsedOrExcluded2)
  {
LABEL_45:
    liveBroadcastLabel4 = [(AVTransportControlsView *)self liveBroadcastLabel];
    v46 = *(MEMORY[0x1E695EFD0] + 16);
    *&v47.a = *MEMORY[0x1E695EFD0];
    *&v47.c = v46;
    *&v47.tx = *(MEMORY[0x1E695EFD0] + 32);
    [liveBroadcastLabel4 setTransform:&v47];
    goto LABEL_46;
  }

  styleSheet = [(AVTransportControlsView *)self styleSheet];
  [styleSheet liveBroadcastLabelTopToBackdropTopDistance];
  v39 = v38;

  liveBroadcastLabel5 = [(AVTransportControlsView *)self liveBroadcastLabel];
  [liveBroadcastLabel5 intrinsicContentSize];
  v42 = v41;

  liveBroadcastLabel4 = [(AVTransportControlsView *)self liveBroadcastLabel];
  scrubber2 = [(AVTransportControlsView *)self scrubber];
  [scrubber2 frame];
  MaxY = CGRectGetMaxY(v61);
  CGAffineTransformMakeTranslation(&v47, 0.0, MaxY - (v39 + v42 * 0.5));
  [liveBroadcastLabel4 setTransform:&v47];

LABEL_46:
  kdebug_trace();
}

- (void)traitCollectionDidChange:(id)change
{
  v4.receiver = self;
  v4.super_class = AVTransportControlsView;
  [(AVTransportControlsView *)&v4 traitCollectionDidChange:change];
  [(AVTransportControlsView *)self _updateFontSizes];
}

- (CGSize)intrinsicContentSize
{
  v35.receiver = self;
  v35.super_class = AVTransportControlsView;
  [(AVTransportControlsView *)&v35 intrinsicContentSize];
  v4 = v3;
  v6 = v5;
  customContentTransitioningInfoPanel = [(AVTransportControlsView *)self customContentTransitioningInfoPanel];
  if (customContentTransitioningInfoPanel)
  {
    v8 = customContentTransitioningInfoPanel;
    customContentTransitioningInfoPanel2 = [(AVTransportControlsView *)self customContentTransitioningInfoPanel];
    isHidden = [customContentTransitioningInfoPanel2 isHidden];

    if ((isHidden & 1) == 0)
    {
      customContentTransitioningInfoPanel3 = [(AVTransportControlsView *)self customContentTransitioningInfoPanel];
      [(AVTransportControlsView *)self frame];
      [customContentTransitioningInfoPanel3 systemLayoutSizeFittingSize:{v27, v28}];
      v11 = v29;
LABEL_10:

      goto LABEL_11;
    }
  }

  v11 = 0.01;
  if ([(AVTransportControlsView *)self isShowingScrubInstructions]&& [(AVTransportControlsView *)self isDoubleRowLayoutEnabled])
  {
    styleSheet = [(AVTransportControlsView *)self styleSheet];
    [styleSheet doubleRowLayoutMargins];
    v14 = v13;
    styleSheet2 = [(AVTransportControlsView *)self styleSheet];
    [styleSheet2 doubleRowLayoutMarginsWhenShowingScrubInstructions];
    v17 = v14 - v16;

    if (v17 >= 0.0)
    {
      v18 = v17;
    }

    else
    {
      v18 = -v17;
    }

    styleSheet3 = [(AVTransportControlsView *)self styleSheet];
    [styleSheet3 spacingBetweenScrubInstructionsAndScrubber];
    v21 = v20;

    customContentTransitioningInfoPanel3 = [(AVTransportControlsView *)self scrubInstructionsLabel];
    embeddedExtraContentContainer = [(AVTransportControlsView *)self embeddedExtraContentContainer];
    [embeddedExtraContentContainer bounds];
    [customContentTransitioningInfoPanel3 sizeThatFits:{v24, v25}];
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

- (double)layoutHeightThatFitsRowsStartingWithRow:(unint64_t)row
{
  controlsLayoutView = [(AVTransportControlsView *)self controlsLayoutView];
  [controlsLayoutView layoutHeightThatFitsRowsStartingWithRow:row];
  v6 = v5;

  return v6;
}

- (void)reevaluateHiddenStateOfAllItems
{
  controlsLayoutView = [(AVTransportControlsView *)self controlsLayoutView];
  [controlsLayoutView reevaluateHiddenStateOfAllItems];
}

- (void)setStyleSheet:(id)sheet
{
  sheetCopy = sheet;
  styleSheet = [(AVTransportControlsView *)self styleSheet];
  v6 = [styleSheet isEqual:sheetCopy];

  if ((v6 & 1) == 0)
  {
    objc_storeStrong(&self->_styleSheet, sheet);
    [(AVTransportControlsView *)self _updateFontSizes];
    [(AVTransportControlsView *)self setNeedsLayout];
  }
}

- (void)setCustomContentTransitioningInfoPanel:(id)panel
{
  panelCopy = panel;
  customContentTransitioningInfoPanel = self->_customContentTransitioningInfoPanel;
  if (customContentTransitioningInfoPanel != panelCopy)
  {
    v7 = panelCopy;
    [customContentTransitioningInfoPanel removeFromSuperview];
    objc_storeStrong(&self->_customContentTransitioningInfoPanel, panel);
    [(AVTransportControlsView *)self setNeedsLayout];
    customContentTransitioningInfoPanel = [(AVTransportControlsView *)self isHiddenOrHasHiddenAncestor];
    panelCopy = v7;
    if ((customContentTransitioningInfoPanel & 1) == 0)
    {
      customContentTransitioningInfoPanel = [(AVTransportControlsView *)self layoutIfNeeded];
      panelCopy = v7;
    }
  }

  MEMORY[0x1EEE66BB8](customContentTransitioningInfoPanel, panelCopy);
}

- (void)setCustomItems:(id)items
{
  itemsCopy = items;
  if (![(NSArray *)self->_customItems isEqualToArray:?])
  {
    v4 = [itemsCopy copy];
    customItems = self->_customItems;
    self->_customItems = v4;

    [(AVTransportControlsView *)self setNeedsLayout];
  }
}

- (void)setLiveStreamingControlsIncludeScrubber:(BOOL)scrubber
{
  if (self->_liveStreamingControlsIncludeScrubber != scrubber)
  {
    self->_liveStreamingControlsIncludeScrubber = scrubber;
    [(AVTransportControlsView *)self setNeedsLayout];
  }
}

- (void)setShowsLiveStreamingControls:(BOOL)controls
{
  if (self->_showsLiveStreamingControls != controls)
  {
    self->_showsLiveStreamingControls = controls;
    [(AVTransportControlsView *)self setNeedsLayout];
  }
}

- (void)setShowsLoadingIndicator:(BOOL)indicator
{
  if (self->_showsLoadingIndicator != indicator)
  {
    self->_showsLoadingIndicator = indicator;
    [(AVTransportControlsView *)self setNeedsLayout];
  }
}

- (void)setDoubleRowLayoutEnabled:(BOOL)enabled
{
  if (self->_doubleRowLayoutEnabled != enabled)
  {
    self->_doubleRowLayoutEnabled = enabled;
    [(AVTransportControlsView *)self setNeedsLayout];
  }
}

- (void)setCustomMenuItemsViews:(id)views
{
  v19 = *MEMORY[0x1E69E9840];
  viewsCopy = views;
  if (self->_customMenuItemsViews != viewsCopy)
  {
    objc_storeStrong(&self->_customMenuItemsViews, views);
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
            layoutAttributes = [v11 layoutAttributes];
            [layoutAttributes setCanOverflowToAuxiliaryMenu:1];

            layoutAttributes2 = [v11 layoutAttributes];
            [layoutAttributes2 setCanOnlyAppearInControlOverflowMenu:1];

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

- (AVTransportControlsView)initWithFrame:(CGRect)frame styleSheet:(id)sheet
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v93 = *MEMORY[0x1E69E9840];
  sheetCopy = sheet;
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
  height = [(AVView *)&v86 initWithFrame:x, y, width, height];
  v13 = height;
  if (height)
  {
    height->_included = 1;
    objc_storeStrong(&height->_styleSheet, sheet);
    v14 = objc_alloc_init(AVScrubber);
    scrubber = v13->_scrubber;
    v13->_scrubber = v14;

    layoutAttributes = [(AVScrubber *)v13->_scrubber layoutAttributes];
    [layoutAttributes setAccessibilityIdentifier:@"Scrubber"];

    layoutAttributes2 = [(AVScrubber *)v13->_scrubber layoutAttributes];
    [layoutAttributes2 setHasFlexibleContentSize:1];

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
    layoutAttributes3 = [(AVChromedLabel *)v13->_liveBroadcastLabel layoutAttributes];
    [layoutAttributes3 setHasFlexibleContentSize:1];

    v25 = __52__AVTransportControlsView_initWithFrame_styleSheet___block_invoke(@"PLAYBACK_CONTROLS_VIEW_CONTROLLER_LIVE_LABEL_TEXT", @"Live");
    liveBroadcastScrubberLabel = v13->_liveBroadcastScrubberLabel;
    v13->_liveBroadcastScrubberLabel = v25;

    v27 = objc_alloc_init(AVTouchIgnoringView);
    embeddedExtraContentContainer = v13->_embeddedExtraContentContainer;
    v13->_embeddedExtraContentContainer = v27;

    [(AVTouchIgnoringView *)v13->_embeddedExtraContentContainer setClipsToBounds:1];
    [(AVTouchIgnoringView *)v13->_embeddedExtraContentContainer setCollapsed:1];
    [(AVTouchIgnoringView *)v13->_embeddedExtraContentContainer setIncluded:0];
    layoutAttributes4 = [(AVTouchIgnoringView *)v13->_embeddedExtraContentContainer layoutAttributes];
    [layoutAttributes4 setHasFlexibleContentSize:1];

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

    layoutAttributes5 = [(AVButton *)v13->_controlOverflowButton layoutAttributes];
    [layoutAttributes5 setCanSubstituteOtherAttributes:1];

    v49 = [AVButton buttonWithAccessibilityIdentifier:@"Media Selection" isFirstGeneration:1];
    mediaSelectionButton = v13->_mediaSelectionButton;
    v13->_mediaSelectionButton = v49;

    layoutAttributes6 = [(AVButton *)v13->_mediaSelectionButton layoutAttributes];
    [layoutAttributes6 setCanOverflowToAuxiliaryMenu:1];

    v52 = [AVButton buttonWithAccessibilityIdentifier:@"Playback Speed" isFirstGeneration:1];
    playbackSpeedButton = v13->_playbackSpeedButton;
    v13->_playbackSpeedButton = v52;

    layoutAttributes7 = [(AVButton *)v13->_playbackSpeedButton layoutAttributes];
    [layoutAttributes7 setCanOverflowToAuxiliaryMenu:1];

    layoutAttributes8 = [(AVButton *)v13->_playbackSpeedButton layoutAttributes];
    [layoutAttributes8 setCanOnlyAppearInControlOverflowMenu:1];

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
    layoutAttributes9 = [(AVTouchIgnoringView *)v13->_flexibleViewAfterRoutePickerView layoutAttributes];
    [layoutAttributes9 setHasFlexibleContentSize:1];

    layoutAttributes10 = [(AVTouchIgnoringView *)v13->_flexibleViewAfterSkipForwardButtons layoutAttributes];
    [layoutAttributes10 setHasFlexibleContentSize:1];

    v13->_transportViewIncludesVolumeController = 0;
    effectiveUserInterfaceLayoutDirection = [(AVTransportControlsView *)v13 effectiveUserInterfaceLayoutDirection];
    if (effectiveUserInterfaceLayoutDirection)
    {
      v71 = @"Skip To Next";
    }

    else
    {
      v71 = @"Skip To Previous";
    }

    if (effectiveUserInterfaceLayoutDirection)
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
    scrubInstructionsLabel = [(AVTransportControlsView *)v13 scrubInstructionsLabel];
    [scrubInstructionsLabel setHidden:1];

    detachedExtraContentLayoutView = [(AVTransportControlsView *)v13 detachedExtraContentLayoutView];
    [detachedExtraContentLayoutView setHidden:1];

    detachedScrubInstructionsBackdropLabel = [(AVTransportControlsView *)v13 detachedScrubInstructionsBackdropLabel];
    [detachedScrubInstructionsBackdropLabel setHidden:1];

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