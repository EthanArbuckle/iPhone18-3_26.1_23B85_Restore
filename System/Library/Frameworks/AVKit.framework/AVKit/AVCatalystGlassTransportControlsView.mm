@interface AVCatalystGlassTransportControlsView
- (AVCatalystGlassTransportControlsView)initWithFrame:(CGRect)frame styleSheet:(id)sheet;
- (AVCatalystTransportControlsViewDelegate)delegate;
- (BOOL)_subviewIsCustomMenuItemView:(id)view;
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
- (void)didMoveToWindow;
- (void)endScrubbing:(id)scrubbing;
- (void)layoutSubviews;
- (void)reevaluateHiddenStateOfAllItems;
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
- (void)setPrefersFlexibleWidthScrubber:(BOOL)scrubber;
- (void)setShowsLiveStreamingControls:(BOOL)controls;
- (void)setShowsLoadingIndicator:(BOOL)indicator;
- (void)setStyleSheet:(id)sheet;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation AVCatalystGlassTransportControlsView

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

- (AVCatalystTransportControlsViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BOOL)_subviewIsCustomMenuItemView:(id)view
{
  viewCopy = view;
  customMenuItemsViews = [(AVCatalystGlassTransportControlsView *)self customMenuItemsViews];

  if (customMenuItemsViews)
  {
    v6 = viewCopy;
    if (v6)
    {
      customMenuItemsViews2 = [(AVCatalystGlassTransportControlsView *)self customMenuItemsViews];
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

- (NSArray)doubleRowViews
{
  v15[14] = *MEMORY[0x1E69E9840];
  scrubber = self->_scrubber;
  v15[0] = self->_embeddedExtraContentContainer;
  v15[1] = scrubber;
  elapsedTimeLabel = self->_elapsedTimeLabel;
  v15[2] = self->_liveBroadcastLabel;
  v15[3] = elapsedTimeLabel;
  liveBroadcastScrubberLabel = self->_liveBroadcastScrubberLabel;
  v15[4] = self->_timeRemainingLabel;
  v15[5] = liveBroadcastScrubberLabel;
  startLeftwardContentTransitionButton = self->_startLeftwardContentTransitionButton;
  v15[6] = self->_skipBackButton;
  v15[7] = startLeftwardContentTransitionButton;
  startRightwardContentTransitionButton = self->_startRightwardContentTransitionButton;
  v15[8] = self->_standardPlayPauseButton;
  v15[9] = startRightwardContentTransitionButton;
  mediaSelectionButton = self->_mediaSelectionButton;
  v15[10] = self->_skipForwardButton;
  v15[11] = mediaSelectionButton;
  controlOverflowButton = self->_controlOverflowButton;
  v15[12] = self->_playbackSpeedButton;
  v15[13] = controlOverflowButton;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:14];
  customMenuItemsViews = [(AVCatalystGlassTransportControlsView *)self customMenuItemsViews];

  if (customMenuItemsViews)
  {
    customMenuItemsViews2 = [(AVCatalystGlassTransportControlsView *)self customMenuItemsViews];
    v13 = [v10 arrayByAddingObjectsFromArray:customMenuItemsViews2];

    v10 = v13;
  }

  return v10;
}

- (NSArray)singleRowViews
{
  v22[10] = *MEMORY[0x1E69E9840];
  startLeftwardContentTransitionButton = self->_startLeftwardContentTransitionButton;
  v22[0] = self->_skipBackButton;
  v22[1] = startLeftwardContentTransitionButton;
  skipForwardButton = self->_skipForwardButton;
  v22[2] = self->_standardPlayPauseButton;
  v22[3] = skipForwardButton;
  liveBroadcastLabel = self->_liveBroadcastLabel;
  v22[4] = self->_startRightwardContentTransitionButton;
  v22[5] = liveBroadcastLabel;
  scrubber = self->_scrubber;
  v22[6] = self->_elapsedTimeLabel;
  v22[7] = scrubber;
  liveBroadcastScrubberLabel = self->_liveBroadcastScrubberLabel;
  v22[8] = self->_timeRemainingLabel;
  v22[9] = liveBroadcastScrubberLabel;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:10];
  mediaSelectionButton = self->_mediaSelectionButton;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&mediaSelectionButton count:1];
  v10 = [v8 arrayByAddingObjectsFromArray:v9];

  customItems = [(AVCatalystGlassTransportControlsView *)self customItems];
  v12 = [v10 arrayByAddingObjectsFromArray:customItems];

  customMenuItemsViews = [(AVCatalystGlassTransportControlsView *)self customMenuItemsViews];

  if (customMenuItemsViews)
  {
    customMenuItemsViews2 = [(AVCatalystGlassTransportControlsView *)self customMenuItemsViews];
    v15 = [v12 arrayByAddingObjectsFromArray:customMenuItemsViews2];

    v12 = v15;
  }

  controlOverflowButton = self->_controlOverflowButton;
  v20[0] = self->_playbackSpeedButton;
  v20[1] = controlOverflowButton;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:2];
  v18 = [v12 arrayByAddingObjectsFromArray:v17];

  return v18;
}

- (void)_updateCustomContentTransitioningInfoPanelLayout
{
  customContentTransitioningInfoPanel = [(AVCatalystGlassTransportControlsView *)self customContentTransitioningInfoPanel];

  if (!customContentTransitioningInfoPanel)
  {
    return;
  }

  isDoubleRowLayoutEnabled = [(AVCatalystGlassTransportControlsView *)self isDoubleRowLayoutEnabled];
  customContentTransitioningInfoPanel2 = [(AVCatalystGlassTransportControlsView *)self customContentTransitioningInfoPanel];
  superview = [customContentTransitioningInfoPanel2 superview];
  if (isDoubleRowLayoutEnabled)
  {
    embeddedExtraContentContainer = [(AVCatalystGlassTransportControlsView *)self embeddedExtraContentContainer];

    if (superview != embeddedExtraContentContainer)
    {
      embeddedExtraContentContainer2 = [(AVCatalystGlassTransportControlsView *)self embeddedExtraContentContainer];
      customContentTransitioningInfoPanel3 = [(AVCatalystGlassTransportControlsView *)self customContentTransitioningInfoPanel];
      [embeddedExtraContentContainer2 addSubview:customContentTransitioningInfoPanel3];
    }

    customContentTransitioningInfoPanel4 = [(AVCatalystGlassTransportControlsView *)self customContentTransitioningInfoPanel];
    embeddedExtraContentContainer3 = [(AVCatalystGlassTransportControlsView *)self embeddedExtraContentContainer];
    [embeddedExtraContentContainer3 bounds];
    [customContentTransitioningInfoPanel4 setFrame:?];
    goto LABEL_9;
  }

  detachedExtraContentLayoutView = [(AVCatalystGlassTransportControlsView *)self detachedExtraContentLayoutView];

  if (superview != detachedExtraContentLayoutView)
  {
    customContentTransitioningInfoPanel4 = [(AVCatalystGlassTransportControlsView *)self detachedExtraContentLayoutView];
    embeddedExtraContentContainer3 = [(AVCatalystGlassTransportControlsView *)self customContentTransitioningInfoPanel];
    [customContentTransitioningInfoPanel4 addSubview:embeddedExtraContentContainer3];
LABEL_9:
  }

  detachedExtraContentLayoutView2 = [(AVCatalystGlassTransportControlsView *)self detachedExtraContentLayoutView];
  [detachedExtraContentLayoutView2 setHidden:{-[AVCatalystGlassTransportControlsView isDoubleRowLayoutEnabled](self, "isDoubleRowLayoutEnabled")}];

  detachedExtraContentLayoutView3 = [(AVCatalystGlassTransportControlsView *)self detachedExtraContentLayoutView];
  if ([(AVCatalystGlassTransportControlsView *)self isDoubleRowLayoutEnabled])
  {
    v15 = 0.0;
  }

  else
  {
    v15 = 1.0;
  }

  [detachedExtraContentLayoutView3 setAlpha:v15];

  embeddedExtraContentContainer4 = [(AVCatalystGlassTransportControlsView *)self embeddedExtraContentContainer];
  [embeddedExtraContentContainer4 setCollapsed:{-[AVCatalystGlassTransportControlsView isDoubleRowLayoutEnabled](self, "isDoubleRowLayoutEnabled") ^ 1}];

  embeddedExtraContentContainer5 = [(AVCatalystGlassTransportControlsView *)self embeddedExtraContentContainer];
  [embeddedExtraContentContainer5 setIncluded:{-[AVCatalystGlassTransportControlsView isDoubleRowLayoutEnabled](self, "isDoubleRowLayoutEnabled")}];

  embeddedExtraContentContainer6 = [(AVCatalystGlassTransportControlsView *)self embeddedExtraContentContainer];
  if ([(AVCatalystGlassTransportControlsView *)self isDoubleRowLayoutEnabled])
  {
    v18 = 1.0;
  }

  else
  {
    v18 = 0.0;
  }

  [embeddedExtraContentContainer6 setAlpha:v18];
}

- (void)_updateScrubInstructionsFrame
{
  [(AVCatalystGlassTransportControlsView *)self frame];
  v3 = CGRectGetMinY(v38) + -8.0;
  detachedScrubInstructionsBackdropLabel = [(AVCatalystGlassTransportControlsView *)self detachedScrubInstructionsBackdropLabel];
  [detachedScrubInstructionsBackdropLabel intrinsicContentSize];
  v6 = v3 - v5 + -20.0;

  detachedScrubInstructionsBackdropLabel2 = [(AVCatalystGlassTransportControlsView *)self detachedScrubInstructionsBackdropLabel];
  [detachedScrubInstructionsBackdropLabel2 intrinsicContentSize];
  v9 = v8 + 20.0;

  detachedScrubInstructionsBackdropLabel3 = [(AVCatalystGlassTransportControlsView *)self detachedScrubInstructionsBackdropLabel];
  [detachedScrubInstructionsBackdropLabel3 intrinsicContentSize];
  v12 = v11 + 20.0;

  detachedExtraContentLayoutView = [(AVCatalystGlassTransportControlsView *)self detachedExtraContentLayoutView];
  [detachedExtraContentLayoutView setFrame:{0.0, v6, v9, v12}];

  detachedScrubInstructionsBackdropLabel4 = [(AVCatalystGlassTransportControlsView *)self detachedScrubInstructionsBackdropLabel];
  detachedScrubInstructionsBackdropLabel5 = [(AVCatalystGlassTransportControlsView *)self detachedScrubInstructionsBackdropLabel];
  [detachedScrubInstructionsBackdropLabel5 intrinsicContentSize];
  v17 = v16;
  detachedScrubInstructionsBackdropLabel6 = [(AVCatalystGlassTransportControlsView *)self detachedScrubInstructionsBackdropLabel];
  [detachedScrubInstructionsBackdropLabel6 intrinsicContentSize];
  [detachedScrubInstructionsBackdropLabel4 setFrame:{10.0, 10.0, v17, v19}];

  detachedExtraContentLayoutView2 = [(AVCatalystGlassTransportControlsView *)self detachedExtraContentLayoutView];
  [(AVCatalystGlassTransportControlsView *)self center];
  v22 = v21;
  detachedExtraContentLayoutView3 = [(AVCatalystGlassTransportControlsView *)self detachedExtraContentLayoutView];
  [detachedExtraContentLayoutView3 center];
  [detachedExtraContentLayoutView2 setCenter:v22];

  scrubInstructionsLabel = [(AVCatalystGlassTransportControlsView *)self scrubInstructionsLabel];
  embeddedExtraContentContainer = [(AVCatalystGlassTransportControlsView *)self embeddedExtraContentContainer];
  [embeddedExtraContentContainer bounds];
  [scrubInstructionsLabel sizeThatFits:{v26, v27}];
  v29 = v28;
  v31 = v30;

  scrubInstructionsLabel2 = [(AVCatalystGlassTransportControlsView *)self scrubInstructionsLabel];
  [scrubInstructionsLabel2 setFrame:{0.0, 0.0, v29, v31}];

  scrubInstructionsLabel3 = [(AVCatalystGlassTransportControlsView *)self scrubInstructionsLabel];
  embeddedExtraContentContainer2 = [(AVCatalystGlassTransportControlsView *)self embeddedExtraContentContainer];
  [embeddedExtraContentContainer2 frame];
  v34 = CGRectGetWidth(v39) * 0.5;
  scrubInstructionsLabel4 = [(AVCatalystGlassTransportControlsView *)self scrubInstructionsLabel];
  [scrubInstructionsLabel4 center];
  [scrubInstructionsLabel3 setCenter:v34];
}

- (void)_updateScrubInstructionsLabelsText
{
  customContentTransitioningInfoPanel = [(AVCatalystGlassTransportControlsView *)self customContentTransitioningInfoPanel];

  if (customContentTransitioningInfoPanel)
  {
    detachedScrubInstructionsBackdropLabel = [(AVCatalystGlassTransportControlsView *)self detachedScrubInstructionsBackdropLabel];
    [detachedScrubInstructionsBackdropLabel setAttributedText:0];

    scrubInstructionsLabel = [(AVCatalystGlassTransportControlsView *)self scrubInstructionsLabel];
    [scrubInstructionsLabel setAttributedText:0];
  }
}

- (void)_showScrubInstructions
{
  if (![(AVCatalystGlassTransportControlsView *)self canShowScrubInstructions])
  {
    v3 = _AVLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_18B49C000, v3, OS_LOG_TYPE_ERROR, "Do not call this method when showing the content info panel.", buf, 2u);
    }
  }

  [(AVCatalystGlassTransportControlsView *)self bounds];
  Width = CGRectGetWidth(v12);
  styleSheet = [(AVCatalystGlassTransportControlsView *)self styleSheet];
  [styleSheet doubleRowLayoutMargins];
  if (Width <= v6)
  {
  }

  else
  {
    isShowingScrubInstructions = [(AVCatalystGlassTransportControlsView *)self isShowingScrubInstructions];

    if (!isShowingScrubInstructions)
    {
      [(AVCatalystGlassTransportControlsView *)self setShowingScrubInstructions:1];
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __62__AVCatalystGlassTransportControlsView__showScrubInstructions__block_invoke;
      v10[3] = &unk_1E720A090;
      v10[4] = self;
      [MEMORY[0x1E69DD250] performWithoutAnimation:v10];
      v8[4] = self;
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __62__AVCatalystGlassTransportControlsView__showScrubInstructions__block_invoke_2;
      v9[3] = &unk_1E720A090;
      v9[4] = self;
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __62__AVCatalystGlassTransportControlsView__showScrubInstructions__block_invoke_3;
      v8[3] = &unk_1E7208E90;
      [MEMORY[0x1E69DD250] animateWithDuration:133122 delay:v9 options:v8 animations:0.3 completion:0.0];
    }
  }
}

void __62__AVCatalystGlassTransportControlsView__showScrubInstructions__block_invoke(uint64_t a1)
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
}

void __62__AVCatalystGlassTransportControlsView__showScrubInstructions__block_invoke_2(uint64_t a1)
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
  elapsedTimeLabel = [(AVCatalystGlassTransportControlsView *)self elapsedTimeLabel];
  styleSheet = [(AVCatalystGlassTransportControlsView *)self styleSheet];
  scrubberTimeLabelFont = [styleSheet scrubberTimeLabelFont];
  [elapsedTimeLabel setFont:scrubberTimeLabelFont];

  timeRemainingLabel = [(AVCatalystGlassTransportControlsView *)self timeRemainingLabel];
  styleSheet2 = [(AVCatalystGlassTransportControlsView *)self styleSheet];
  scrubberTimeLabelFont2 = [styleSheet2 scrubberTimeLabelFont];
  [timeRemainingLabel setFont:scrubberTimeLabelFont2];

  liveBroadcastLabel = [(AVCatalystGlassTransportControlsView *)self liveBroadcastLabel];
  styleSheet3 = [(AVCatalystGlassTransportControlsView *)self styleSheet];
  infoLabelFont = [styleSheet3 infoLabelFont];
  [liveBroadcastLabel setFont:infoLabelFont];

  liveBroadcastScrubberLabel = [(AVCatalystGlassTransportControlsView *)self liveBroadcastScrubberLabel];
  styleSheet4 = [(AVCatalystGlassTransportControlsView *)self styleSheet];
  scrubberInfoLabelFont = [styleSheet4 scrubberInfoLabelFont];
  [liveBroadcastScrubberLabel setFont:scrubberInfoLabelFont];

  [(AVCatalystGlassTransportControlsView *)self invalidateIntrinsicContentSize];

  [(AVCatalystGlassTransportControlsView *)self setNeedsLayout];
}

- (unint64_t)_layoutItemDisplayPriorityForSubview:(id)subview
{
  subviewCopy = subview;
  [(AVCatalystGlassTransportControlsView *)self _subviewIsCustomMenuItemView:subviewCopy];
  standardPlayPauseButton = [(AVCatalystGlassTransportControlsView *)self standardPlayPauseButton];
  v6 = standardPlayPauseButton;
  if (standardPlayPauseButton == subviewCopy)
  {

    goto LABEL_15;
  }

  embeddedExtraContentContainer = [(AVCatalystGlassTransportControlsView *)self embeddedExtraContentContainer];

  if (embeddedExtraContentContainer == subviewCopy)
  {
LABEL_15:
    v21 = 4;
    goto LABEL_26;
  }

  scrubber = [(AVCatalystGlassTransportControlsView *)self scrubber];
  v9 = scrubber;
  if (scrubber == subviewCopy)
  {

    goto LABEL_17;
  }

  controlOverflowButton = [(AVCatalystGlassTransportControlsView *)self controlOverflowButton];

  if (controlOverflowButton == subviewCopy)
  {
LABEL_17:
    v21 = 3;
    goto LABEL_26;
  }

  elapsedTimeLabel = [(AVCatalystGlassTransportControlsView *)self elapsedTimeLabel];
  if (elapsedTimeLabel == subviewCopy)
  {
LABEL_19:

    goto LABEL_20;
  }

  timeRemainingLabel = [(AVCatalystGlassTransportControlsView *)self timeRemainingLabel];
  v13 = timeRemainingLabel;
  if (timeRemainingLabel == subviewCopy)
  {

    goto LABEL_19;
  }

  liveBroadcastLabel = [(AVCatalystGlassTransportControlsView *)self liveBroadcastLabel];

  if (liveBroadcastLabel == subviewCopy)
  {
LABEL_20:
    v21 = 2;
    goto LABEL_26;
  }

  skipBackButton = [(AVCatalystGlassTransportControlsView *)self skipBackButton];
  if (skipBackButton == subviewCopy)
  {
LABEL_24:

    goto LABEL_25;
  }

  skipForwardButton = [(AVCatalystGlassTransportControlsView *)self skipForwardButton];
  if (skipForwardButton == subviewCopy)
  {
LABEL_23:

    goto LABEL_24;
  }

  startLeftwardContentTransitionButton = [(AVCatalystGlassTransportControlsView *)self startLeftwardContentTransitionButton];
  if (startLeftwardContentTransitionButton == subviewCopy)
  {
LABEL_22:

    goto LABEL_23;
  }

  startRightwardContentTransitionButton = [(AVCatalystGlassTransportControlsView *)self startRightwardContentTransitionButton];
  v19 = startRightwardContentTransitionButton;
  if (startRightwardContentTransitionButton == subviewCopy)
  {

    goto LABEL_22;
  }

  mediaSelectionButton = [(AVCatalystGlassTransportControlsView *)self mediaSelectionButton];

  if (mediaSelectionButton == subviewCopy)
  {
LABEL_25:
    v21 = 1;
    goto LABEL_26;
  }

  v21 = 2 * (self->_playbackSpeedButton == subviewCopy);
LABEL_26:

  return v21;
}

- (double)_rowSpacingForDoubleRowLayoutAfterRow:(unint64_t)row
{
  isDoubleRowLayoutEnabled = [(AVCatalystGlassTransportControlsView *)self isDoubleRowLayoutEnabled];
  v6 = 0.0;
  if (!row && isDoubleRowLayoutEnabled)
  {
    customContentTransitioningInfoPanel = [(AVCatalystGlassTransportControlsView *)self customContentTransitioningInfoPanel];
    if (customContentTransitioningInfoPanel)
    {
      v8 = customContentTransitioningInfoPanel;
      embeddedExtraContentContainer = [(AVCatalystGlassTransportControlsView *)self embeddedExtraContentContainer];
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

  if (((row == 1) & [(AVCatalystGlassTransportControlsView *)self isDoubleRowLayoutEnabled]) != 0)
  {
    v6 = 4.5;
  }

  isDoubleRowLayoutEnabled2 = [(AVCatalystGlassTransportControlsView *)self isDoubleRowLayoutEnabled];
  if (!row && isDoubleRowLayoutEnabled2)
  {
    styleSheet = [(AVCatalystGlassTransportControlsView *)self styleSheet];
    [styleSheet spacingBetweenScrubInstructionsAndScrubber];
    v6 = v13;
  }

  return v6;
}

- (void)_layoutSingleRowViews
{
  v37[1] = *MEMORY[0x1E69E9840];
  liveBroadcastLabel = [(AVCatalystGlassTransportControlsView *)self liveBroadcastLabel];
  [liveBroadcastLabel setLoadingIndicatorAlignment:1];

  controlsLayoutView = [(AVCatalystGlassTransportControlsView *)self controlsLayoutView];
  singleRowViews = [(AVCatalystGlassTransportControlsView *)self singleRowViews];
  v37[0] = singleRowViews;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:1];
  [controlsLayoutView setArrangedSubviews:v6];

  v7 = 0.0;
  if (![(AVCatalystGlassTransportControlsView *)self isCollapsedOrExcluded])
  {
    if ([(AVCatalystGlassTransportControlsView *)self hasFullScreenAppearance])
    {
      v7 = 18.0;
    }

    else
    {
      v7 = 14.0;
    }
  }

  controlsLayoutView2 = [(AVCatalystGlassTransportControlsView *)self controlsLayoutView];
  [controlsLayoutView2 setContentLayoutMargins:{0.0, v7, 0.0, v7}];

  elapsedTimeLabel = [(AVCatalystGlassTransportControlsView *)self elapsedTimeLabel];
  layoutAttributes = [elapsedTimeLabel layoutAttributes];
  timeRemainingLabel = [(AVCatalystGlassTransportControlsView *)self timeRemainingLabel];
  layoutAttributes2 = [timeRemainingLabel layoutAttributes];
  [layoutAttributes setDisplayPartnerAttributes:layoutAttributes2];

  timeRemainingLabel2 = [(AVCatalystGlassTransportControlsView *)self timeRemainingLabel];
  layoutAttributes3 = [timeRemainingLabel2 layoutAttributes];
  elapsedTimeLabel2 = [(AVCatalystGlassTransportControlsView *)self elapsedTimeLabel];
  layoutAttributes4 = [elapsedTimeLabel2 layoutAttributes];
  [layoutAttributes3 setDisplayPartnerAttributes:layoutAttributes4];

  skipBackButton = [(AVCatalystGlassTransportControlsView *)self skipBackButton];
  layoutAttributes5 = [skipBackButton layoutAttributes];
  skipForwardButton = [(AVCatalystGlassTransportControlsView *)self skipForwardButton];
  layoutAttributes6 = [skipForwardButton layoutAttributes];
  [layoutAttributes5 setDisplayPartnerAttributes:layoutAttributes6];

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  singleRowViews2 = [(AVCatalystGlassTransportControlsView *)self singleRowViews];
  v22 = [singleRowViews2 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v33;
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v33 != v24)
        {
          objc_enumerationMutation(singleRowViews2);
        }

        v26 = *(*(&v32 + 1) + 8 * i);
        layoutAttributes7 = [v26 layoutAttributes];
        [(AVCatalystGlassTransportControlsView *)self _singeRowLayoutSpacingAfterSubview:v26];
        [layoutAttributes7 setTrailingInterItemSpace:?];

        layoutAttributes8 = [v26 layoutAttributes];
        [layoutAttributes8 setDisplayPriority:{-[AVCatalystGlassTransportControlsView _layoutItemDisplayPriorityForSubview:](self, "_layoutItemDisplayPriorityForSubview:", v26)}];

        layoutAttributes9 = [v26 layoutAttributes];
        scrubber = [(AVCatalystGlassTransportControlsView *)self scrubber];
        if (v26 == scrubber)
        {
          [layoutAttributes9 setHasFlexibleContentSize:1];
        }

        else
        {
          liveBroadcastLabel2 = [(AVCatalystGlassTransportControlsView *)self liveBroadcastLabel];
          [layoutAttributes9 setHasFlexibleContentSize:v26 == liveBroadcastLabel2];
        }
      }

      v23 = [singleRowViews2 countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v23);
  }
}

- (void)_layoutDoubleRowViews
{
  v84[1] = *MEMORY[0x1E69E9840];
  controlsLayoutView = [(AVCatalystGlassTransportControlsView *)self controlsLayoutView];
  styleSheet = [(AVCatalystGlassTransportControlsView *)self styleSheet];
  [styleSheet doubleRowLayoutMargins];
  [controlsLayoutView setContentLayoutMargins:?];

  customContentTransitioningInfoPanel = [(AVCatalystGlassTransportControlsView *)self customContentTransitioningInfoPanel];
  if (customContentTransitioningInfoPanel)
  {
    v6 = customContentTransitioningInfoPanel;
    customContentTransitioningInfoPanel2 = [(AVCatalystGlassTransportControlsView *)self customContentTransitioningInfoPanel];
    isHidden = [customContentTransitioningInfoPanel2 isHidden];

    if ((isHidden & 1) == 0)
    {
      controlsLayoutView2 = [(AVCatalystGlassTransportControlsView *)self controlsLayoutView];
      styleSheet2 = [(AVCatalystGlassTransportControlsView *)self styleSheet];
      [styleSheet2 doublerowLayoutMarginsWhenShowingCustomContentInfo];
      [controlsLayoutView2 setContentLayoutMargins:?];
    }
  }

  liveBroadcastLabel = [(AVCatalystGlassTransportControlsView *)self liveBroadcastLabel];
  [liveBroadcastLabel setLoadingIndicatorAlignment:2];

  doubleRowViews = [(AVCatalystGlassTransportControlsView *)self doubleRowViews];
  embeddedExtraContentContainer = [(AVCatalystGlassTransportControlsView *)self embeddedExtraContentContainer];
  v84[0] = embeddedExtraContentContainer;
  v71 = [MEMORY[0x1E695DEC8] arrayWithObjects:v84 count:1];

  scrubber = [(AVCatalystGlassTransportControlsView *)self scrubber];
  v83[0] = scrubber;
  liveBroadcastLabel2 = [(AVCatalystGlassTransportControlsView *)self liveBroadcastLabel];
  v83[1] = liveBroadcastLabel2;
  v69 = [MEMORY[0x1E695DEC8] arrayWithObjects:v83 count:2];

  elapsedTimeLabel = [(AVCatalystGlassTransportControlsView *)self elapsedTimeLabel];
  v82[0] = elapsedTimeLabel;
  timeRemainingLabel = [(AVCatalystGlassTransportControlsView *)self timeRemainingLabel];
  v82[1] = timeRemainingLabel;
  liveBroadcastScrubberLabel = [(AVCatalystGlassTransportControlsView *)self liveBroadcastScrubberLabel];
  v82[2] = liveBroadcastScrubberLabel;
  v72 = [MEMORY[0x1E695DEC8] arrayWithObjects:v82 count:3];

  startLeftwardContentTransitionButton = [(AVCatalystGlassTransportControlsView *)self startLeftwardContentTransitionButton];
  v81[0] = startLeftwardContentTransitionButton;
  skipBackButton = [(AVCatalystGlassTransportControlsView *)self skipBackButton];
  v81[1] = skipBackButton;
  standardPlayPauseButton = [(AVCatalystGlassTransportControlsView *)self standardPlayPauseButton];
  v81[2] = standardPlayPauseButton;
  skipForwardButton = [(AVCatalystGlassTransportControlsView *)self skipForwardButton];
  v81[3] = skipForwardButton;
  startRightwardContentTransitionButton = [(AVCatalystGlassTransportControlsView *)self startRightwardContentTransitionButton];
  v81[4] = startRightwardContentTransitionButton;
  mediaSelectionButton = [(AVCatalystGlassTransportControlsView *)self mediaSelectionButton];
  v81[5] = mediaSelectionButton;
  playbackSpeedButton = [(AVCatalystGlassTransportControlsView *)self playbackSpeedButton];
  v81[6] = playbackSpeedButton;
  controlOverflowButton = [(AVCatalystGlassTransportControlsView *)self controlOverflowButton];
  v81[7] = controlOverflowButton;
  v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v81 count:8];

  customMenuItemsViews = [(AVCatalystGlassTransportControlsView *)self customMenuItemsViews];

  if (customMenuItemsViews)
  {
    customMenuItemsViews2 = [(AVCatalystGlassTransportControlsView *)self customMenuItemsViews];
    v29 = [v26 arrayByAddingObjectsFromArray:customMenuItemsViews2];

    v26 = v29;
  }

  controlsLayoutView3 = [(AVCatalystGlassTransportControlsView *)self controlsLayoutView];
  v80[0] = v71;
  v80[1] = v70;
  v80[2] = v72;
  v80[3] = v26;
  v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v80 count:4];
  [controlsLayoutView3 setArrangedSubviews:v31];

  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  v32 = doubleRowViews;
  v33 = [v32 countByEnumeratingWithState:&v75 objects:v79 count:16];
  if (v33)
  {
    v34 = v33;
    v35 = *v76;
    do
    {
      for (i = 0; i != v34; ++i)
      {
        if (*v76 != v35)
        {
          objc_enumerationMutation(v32);
        }

        v37 = *(*(&v75 + 1) + 8 * i);
        layoutAttributes = [v37 layoutAttributes];
        [(AVCatalystGlassTransportControlsView *)self _doubleRowLayoutSpacingAfterSubview:v37];
        [layoutAttributes setTrailingInterItemSpace:?];

        layoutAttributes2 = [v37 layoutAttributes];
        [layoutAttributes2 setDisplayPriority:{-[AVCatalystGlassTransportControlsView _layoutItemDisplayPriorityForSubview:](self, "_layoutItemDisplayPriorityForSubview:", v37)}];

        embeddedExtraContentContainer2 = [(AVCatalystGlassTransportControlsView *)self embeddedExtraContentContainer];

        if (v37 == embeddedExtraContentContainer2)
        {
          customContentTransitioningInfoPanel3 = [(AVCatalystGlassTransportControlsView *)self customContentTransitioningInfoPanel];
          [(AVCatalystGlassTransportControlsView *)self frame];
          [customContentTransitioningInfoPanel3 systemLayoutSizeFittingSize:{v42, v43}];
          v74 = v44;

          [(AVCatalystGlassTransportControlsView *)self bounds];
          v46 = v45;
          v48 = v47;
          v50 = v49;
          v52 = v51;
          controlsLayoutView4 = [(AVCatalystGlassTransportControlsView *)self controlsLayoutView];
          [controlsLayoutView4 contentLayoutMargins];
          v55 = v54;
          v57 = v56;
          v59 = v58;
          v61 = v60;
          if ([(AVCatalystGlassTransportControlsView *)self effectiveUserInterfaceLayoutDirection]== 1)
          {
            v62 = v61;
          }

          else
          {
            v62 = v57;
          }

          v85.origin.x = v46 + v62;
          v85.origin.y = v48 + v55;
          v85.size.width = v50 - (v61 + v57);
          v85.size.height = v52 - (v55 + v59);
          Width = CGRectGetWidth(v85);

          layoutAttributes3 = [v37 layoutAttributes];
          [layoutAttributes3 setMinimumSize:{Width, v74}];
        }
      }

      v34 = [v32 countByEnumeratingWithState:&v75 objects:v79 count:16];
    }

    while (v34);
  }

  for (j = 0; j != 4; ++j)
  {
    [(AVCatalystGlassTransportControlsView *)self _rowSpacingForDoubleRowLayoutAfterRow:j];
    v67 = v66;
    controlsLayoutView5 = [(AVCatalystGlassTransportControlsView *)self controlsLayoutView];
    [controlsLayoutView5 setRowSpacing:j afterRow:v67];
  }
}

- (double)_doubleRowLayoutSpacingAfterSubview:(id)subview
{
  subviewCopy = subview;
  [(AVCatalystGlassTransportControlsView *)self bounds];
  Width = CGRectGetWidth(v34);
  controlsLayoutView = [(AVCatalystGlassTransportControlsView *)self controlsLayoutView];
  skipForwardButton = [(AVCatalystGlassTransportControlsView *)self skipForwardButton];
  if ([skipForwardButton isIncluded])
  {
    v8 = 0;
  }

  else
  {
    startRightwardContentTransitionButton = [(AVCatalystGlassTransportControlsView *)self startRightwardContentTransitionButton];
    isIncluded = [startRightwardContentTransitionButton isIncluded];

    v8 = isIncluded ^ 1;
  }

  skipBackButton = [(AVCatalystGlassTransportControlsView *)self skipBackButton];
  if (skipBackButton == subviewCopy)
  {
    goto LABEL_19;
  }

  startLeftwardContentTransitionButton = [(AVCatalystGlassTransportControlsView *)self startLeftwardContentTransitionButton];
  if (startLeftwardContentTransitionButton == subviewCopy)
  {
LABEL_18:

LABEL_19:
    v19 = 32.0;
    goto LABEL_20;
  }

  mediaSelectionButton = [(AVCatalystGlassTransportControlsView *)self mediaSelectionButton];
  if (mediaSelectionButton == subviewCopy)
  {
LABEL_17:

    goto LABEL_18;
  }

  standardPlayPauseButton = [(AVCatalystGlassTransportControlsView *)self standardPlayPauseButton];
  if (!((standardPlayPauseButton != subviewCopy) | v8 & 1))
  {
LABEL_16:

    goto LABEL_17;
  }

  playbackSpeedButton = [(AVCatalystGlassTransportControlsView *)self playbackSpeedButton];
  v16 = playbackSpeedButton;
  if (playbackSpeedButton == subviewCopy)
  {

    goto LABEL_16;
  }

  controlOverflowButton = [(AVCatalystGlassTransportControlsView *)self controlOverflowButton];

  if (controlOverflowButton == subviewCopy)
  {
    v19 = 32.0;
    goto LABEL_21;
  }

  elapsedTimeLabel = [(AVCatalystGlassTransportControlsView *)self elapsedTimeLabel];

  if (elapsedTimeLabel == subviewCopy)
  {
    elapsedTimeLabel2 = [(AVCatalystGlassTransportControlsView *)self elapsedTimeLabel];
    [elapsedTimeLabel2 intrinsicContentSize];
    v24 = Width - v23;
    [controlsLayoutView contentLayoutMargins];
    v26 = v24 - v25;
    [controlsLayoutView contentLayoutMargins];
    v19 = v26 - v27;

    timeRemainingLabel = [(AVCatalystGlassTransportControlsView *)self timeRemainingLabel];
    isIncluded2 = [timeRemainingLabel isIncluded];

    if (isIncluded2)
    {
      timeRemainingLabel2 = [(AVCatalystGlassTransportControlsView *)self timeRemainingLabel];
    }

    else
    {
      liveBroadcastScrubberLabel = [(AVCatalystGlassTransportControlsView *)self liveBroadcastScrubberLabel];
      isIncluded3 = [liveBroadcastScrubberLabel isIncluded];

      if (!isIncluded3)
      {
        goto LABEL_21;
      }

      timeRemainingLabel2 = [(AVCatalystGlassTransportControlsView *)self liveBroadcastScrubberLabel];
    }

    skipBackButton = timeRemainingLabel2;
    [timeRemainingLabel2 intrinsicContentSize];
    v19 = v19 - v33;
  }

  else
  {
    skipBackButton = [(AVCatalystGlassTransportControlsView *)self skipForwardButton];
    v19 = 0.0;
    if (skipBackButton != subviewCopy)
    {
      startRightwardContentTransitionButton2 = [(AVCatalystGlassTransportControlsView *)self startRightwardContentTransitionButton];
      if (startRightwardContentTransitionButton2 != subviewCopy)
      {
        [(AVCatalystGlassTransportControlsView *)self standardPlayPauseButton];
      }
    }
  }

LABEL_20:

LABEL_21:
  return v19;
}

- (double)_singeRowLayoutSpacingAfterSubview:(id)subview
{
  subviewCopy = subview;
  v5 = [(AVCatalystGlassTransportControlsView *)self _subviewIsCustomMenuItemView:subviewCopy];
  if (![(AVCatalystGlassTransportControlsView *)self hasFullScreenAppearance])
  {
    if (self->_skipBackButton != subviewCopy && self->_startLeftwardContentTransitionButton != subviewCopy && self->_standardPlayPauseButton != subviewCopy && self->_skipForwardButton != subviewCopy && self->_startRightwardContentTransitionButton != subviewCopy && self->_timeRemainingLabel != subviewCopy && self->_liveBroadcastScrubberLabel != subviewCopy && self->_mediaSelectionButton != subviewCopy && self->_controlOverflowButton != subviewCopy)
    {
      v7 = 0.0;
      if (self->_playbackSpeedButton != subviewCopy && !v5)
      {
        goto LABEL_59;
      }
    }

LABEL_58:
    [(AVCatalystGlassStyleSheet *)self->_styleSheet defaultInterItemSpacing];
    v7 = v18;
    goto LABEL_59;
  }

  if ([(AVCatalystGlassTransportControlsView *)self hasFullScreenAppearance])
  {
    [(AVCatalystGlassTransportControlsView *)self bounds];
    v6 = CGRectGetWidth(v21) < 568.0;
  }

  else
  {
    v6 = 0;
  }

  skipBackButton = [(AVCatalystGlassTransportControlsView *)self skipBackButton];
  if ([skipBackButton isIncluded])
  {
  }

  else
  {
    startLeftwardContentTransitionButton = [(AVCatalystGlassTransportControlsView *)self startLeftwardContentTransitionButton];
    isIncluded = [startLeftwardContentTransitionButton isIncluded];

    if ((isIncluded & 1) == 0)
    {
      v7 = 0.0;
      if (self->_skipBackButton == subviewCopy || self->_startLeftwardContentTransitionButton == subviewCopy || self->_skipForwardButton == subviewCopy || self->_startRightwardContentTransitionButton == subviewCopy)
      {
        goto LABEL_52;
      }

      if (self->_standardPlayPauseButton == subviewCopy || self->_timeRemainingLabel == subviewCopy || self->_liveBroadcastScrubberLabel == subviewCopy || self->_liveBroadcastLabel == subviewCopy || self->_controlOverflowButton == subviewCopy)
      {
        goto LABEL_51;
      }

      v11 = 616;
LABEL_50:
      if (*(&self->super.super.super.super.isa + v11) != subviewCopy && !v5)
      {
        goto LABEL_52;
      }

      goto LABEL_51;
    }
  }

  if (!v6)
  {
    v7 = 0.0;
    if (![(AVCatalystGlassTransportControlsView *)self hasFullScreenAppearance])
    {
      goto LABEL_52;
    }

    if (self->_skipForwardButton == subviewCopy || self->_startRightwardContentTransitionButton == subviewCopy || self->_timeRemainingLabel == subviewCopy || self->_liveBroadcastScrubberLabel == subviewCopy || self->_controlOverflowButton == subviewCopy || self->_playbackSpeedButton == subviewCopy || self->_skipBackButton == subviewCopy || self->_startLeftwardContentTransitionButton == subviewCopy)
    {
      goto LABEL_51;
    }

    v11 = 560;
    goto LABEL_50;
  }

  if (self->_skipBackButton == subviewCopy || self->_startLeftwardContentTransitionButton == subviewCopy || self->_standardPlayPauseButton == subviewCopy || self->_controlOverflowButton == subviewCopy || self->_playbackSpeedButton == subviewCopy || v5 || self->_skipForwardButton == subviewCopy || self->_startRightwardContentTransitionButton == subviewCopy || self->_timeRemainingLabel == subviewCopy || (v7 = 0.0, self->_liveBroadcastScrubberLabel == subviewCopy))
  {
LABEL_51:
    [(AVCatalystGlassStyleSheet *)self->_styleSheet defaultInterItemSpacing];
    v7 = v12;
  }

LABEL_52:
  customItems = [(AVCatalystGlassTransportControlsView *)self customItems];

  if (!customItems)
  {
    goto LABEL_59;
  }

  if (self->_mediaSelectionButton == subviewCopy)
  {
    goto LABEL_58;
  }

  if ([(AVControlOverflowButton *)subviewCopy conformsToProtocol:&unk_1EFF1F478])
  {
    v14 = subviewCopy;
    customItems2 = [(AVCatalystGlassTransportControlsView *)self customItems];
    v16 = [customItems2 containsObject:v14];

    if (v16)
    {
      [(AVCatalystGlassStyleSheet *)self->_styleSheet defaultInterItemSpacing];
      v7 = v17;
    }
  }

LABEL_59:
  if (self->_liveBroadcastLabel == subviewCopy)
  {
    v7 = 0.0;
  }

  else if (self->_elapsedTimeLabel == subviewCopy || self->_scrubber == subviewCopy)
  {
    [(AVCatalystGlassStyleSheet *)self->_styleSheet defaultInterItemSpacing];
    v7 = v19;
  }

  return v7;
}

- (void)endScrubbing:(id)scrubbing
{
  scrubbingCopy = scrubbing;
  [(AVCatalystGlassTransportControlsView *)self setScrubberValueWhenScrubInstructionsTimerBegan:0.0];
  scrubInstructionsTimer = [(AVCatalystGlassTransportControlsView *)self scrubInstructionsTimer];
  [scrubInstructionsTimer invalidate];

  delegate = [(AVCatalystGlassTransportControlsView *)self delegate];
  [delegate transportControls:self scrubberDidEndScrubbing:scrubbingCopy];

  if ([(AVCatalystGlassTransportControlsView *)self canShowScrubInstructions])
  {
    if ([(AVCatalystGlassTransportControlsView *)self isShowingScrubInstructions])
    {
      [(AVCatalystGlassTransportControlsView *)self setShowingScrubInstructions:0];
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __53__AVCatalystGlassTransportControlsView_endScrubbing___block_invoke;
      v8[3] = &unk_1E720A090;
      v8[4] = self;
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __53__AVCatalystGlassTransportControlsView_endScrubbing___block_invoke_2;
      v7[3] = &unk_1E7208E90;
      v7[4] = self;
      [MEMORY[0x1E69DD250] animateWithDuration:133126 delay:v8 options:v7 animations:0.3 completion:0.0];
    }
  }
}

void __53__AVCatalystGlassTransportControlsView_endScrubbing___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setAnimatingScrubInstructions:1];
  v2 = [*(a1 + 32) detachedScrubInstructionsBackdropLabel];
  [v2 setAlpha:0.0];

  v3 = [*(a1 + 32) detachedExtraContentLayoutView];
  [v3 setAlpha:0.0];

  v4 = [*(a1 + 32) embeddedExtraContentContainer];
  [v4 setCollapsed:1];

  v5 = [*(a1 + 32) embeddedExtraContentContainer];
  [v5 setIncluded:0];

  v6 = [*(a1 + 32) delegate];
  [v6 transportControlsNeedsLayoutIfNeeded:*(a1 + 32)];
}

void __53__AVCatalystGlassTransportControlsView_endScrubbing___block_invoke_2(uint64_t a1, int a2)
{
  if (a2)
  {
    [*(a1 + 32) setAnimatingScrubInstructions:0];
    [*(a1 + 32) avkit_reevaluateHiddenStateOfItem:*(a1 + 32)];
    v3 = [*(a1 + 32) detachedScrubInstructionsBackdropLabel];
    [v3 setHidden:1];

    v4 = [*(a1 + 32) detachedExtraContentLayoutView];
    [v4 setHidden:1];
  }
}

- (void)scrubberValueChanged:(id)changed
{
  changedCopy = changed;
  delegate = [(AVCatalystGlassTransportControlsView *)self delegate];
  [delegate transportControls:self scrubberDidScrub:changedCopy];
}

- (void)beginScrubbing:(id)scrubbing
{
  scrubbingCopy = scrubbing;
  delegate = [(AVCatalystGlassTransportControlsView *)self delegate];
  [delegate transportControls:self scrubberDidBeginScrubbing:scrubbingCopy];

  detachedScrubInstructionsBackdropLabel = [(AVCatalystGlassTransportControlsView *)self detachedScrubInstructionsBackdropLabel];
  [detachedScrubInstructionsBackdropLabel setHidden:1];
}

- (void)setExtrinsicContentSize:(CGSize)size
{
  if (size.width != self->_extrinsicContentSize.width || size.height != self->_extrinsicContentSize.height)
  {
    self->_extrinsicContentSize = size;
    [(AVCatalystGlassTransportControlsView *)self invalidateIntrinsicContentSize];
  }
}

- (void)setHasFullScreenAppearance:(BOOL)appearance
{
  if (self->_hasFullScreenAppearance != appearance)
  {
    self->_hasFullScreenAppearance = appearance;
    [(AVGlassBackedView *)self->_controlsLayoutView setSubdued:!appearance];
    [(AVCatalystGlassTransportControlsView *)self invalidateIntrinsicContentSize];

    [(AVCatalystGlassTransportControlsView *)self setNeedsLayout];
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
    singleRowViews = [(AVCatalystGlassTransportControlsView *)self singleRowViews];
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

    [(AVCatalystGlassTransportControlsView *)self invalidateIntrinsicContentSize];
    [(AVCatalystGlassTransportControlsView *)self avkit_reevaluateHiddenStateOfItem:self];
  }
}

- (void)setIncluded:(BOOL)included
{
  if (self->_included != included)
  {
    self->_included = included;
    [(AVCatalystGlassTransportControlsView *)self invalidateIntrinsicContentSize];

    [(AVCatalystGlassTransportControlsView *)self avkit_reevaluateHiddenStateOfItem:self];
  }
}

- (BOOL)isCollapsedOrExcluded
{
  if ([(AVCatalystGlassTransportControlsView *)self isCollapsed]|| ![(AVCatalystGlassTransportControlsView *)self isIncluded])
  {
    return 1;
  }

  return [(AVCatalystGlassTransportControlsView *)self isRemoved];
}

- (void)avkit_reevaluateHiddenStateOfItem:(id)item
{
  itemCopy = item;
  embeddedExtraContentContainer = [(AVCatalystGlassTransportControlsView *)self embeddedExtraContentContainer];

  if (embeddedExtraContentContainer == itemCopy)
  {
    isCollapsedOrExcluded = [itemCopy isCollapsedOrExcluded];
    v7 = 1.0;
    if (isCollapsedOrExcluded)
    {
      v7 = 0.0;
    }

    [itemCopy setAlpha:v7];
    isAnimatingScrubInstructions = [(AVCatalystGlassTransportControlsView *)self isAnimatingScrubInstructions];
    if ((isCollapsedOrExcluded & 1) != 0 || !isAnimatingScrubInstructions)
    {
      if (![(AVCatalystGlassTransportControlsView *)self isAnimatingScrubInstructions])
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
    v9.super_class = AVCatalystGlassTransportControlsView;
    [(UIView *)&v9 avkit_reevaluateHiddenStateOfItem:itemCopy];
  }
}

- (void)layoutSubviews
{
  v61 = *MEMORY[0x1E69E9840];
  kdebug_trace();
  v58.receiver = self;
  v58.super_class = AVCatalystGlassTransportControlsView;
  [(AVView *)&v58 layoutSubviews];
  liveBroadcastScrubberLabel = [(AVCatalystGlassTransportControlsView *)self liveBroadcastScrubberLabel];
  [liveBroadcastScrubberLabel setIncluded:{-[AVCatalystGlassTransportControlsView liveStreamingControlsIncludeScrubber](self, "liveStreamingControlsIncludeScrubber")}];

  liveBroadcastLabel = [(AVCatalystGlassTransportControlsView *)self liveBroadcastLabel];
  if ([(AVCatalystGlassTransportControlsView *)self showsLiveStreamingControls])
  {
    v5 = [(AVCatalystGlassTransportControlsView *)self liveStreamingControlsIncludeScrubber]^ 1;
  }

  else
  {
    v5 = 0;
  }

  [liveBroadcastLabel setIncluded:v5];

  if ([(AVCatalystGlassTransportControlsView *)self showsLiveStreamingControls])
  {
    liveStreamingControlsIncludeScrubber = [(AVCatalystGlassTransportControlsView *)self liveStreamingControlsIncludeScrubber];
  }

  else
  {
    liveStreamingControlsIncludeScrubber = 1;
  }

  scrubber = [(AVCatalystGlassTransportControlsView *)self scrubber];
  [scrubber setIncluded:liveStreamingControlsIncludeScrubber];

  elapsedTimeLabel = [(AVCatalystGlassTransportControlsView *)self elapsedTimeLabel];
  [elapsedTimeLabel setIncluded:liveStreamingControlsIncludeScrubber];

  timeRemainingLabel = [(AVCatalystGlassTransportControlsView *)self timeRemainingLabel];
  if (liveStreamingControlsIncludeScrubber)
  {
    v10 = [(AVCatalystGlassTransportControlsView *)self liveStreamingControlsIncludeScrubber]^ 1;
  }

  else
  {
    v10 = 0;
  }

  [timeRemainingLabel setIncluded:v10];

  elapsedTimeLabel2 = [(AVCatalystGlassTransportControlsView *)self elapsedTimeLabel];
  [elapsedTimeLabel2 setShowsLoadingIndicator:{-[AVCatalystGlassTransportControlsView showsLoadingIndicator](self, "showsLoadingIndicator")}];

  liveBroadcastLabel2 = [(AVCatalystGlassTransportControlsView *)self liveBroadcastLabel];
  [liveBroadcastLabel2 setShowsLoadingIndicator:{-[AVCatalystGlassTransportControlsView showsLoadingIndicator](self, "showsLoadingIndicator")}];

  elapsedTimeLabel3 = [(AVCatalystGlassTransportControlsView *)self elapsedTimeLabel];
  [elapsedTimeLabel3 setLoadingIndicatorAlignment:{-[AVCatalystGlassTransportControlsView isDoubleRowLayoutEnabled](self, "isDoubleRowLayoutEnabled") ^ 1}];

  controlsLayoutView = [(AVCatalystGlassTransportControlsView *)self controlsLayoutView];
  [(AVCatalystGlassTransportControlsView *)self bounds];
  [controlsLayoutView setFrame:?];

  [(AVCatalystGlassTransportControlsView *)self _updateCustomContentTransitioningInfoPanelLayout];
  if ([(AVCatalystGlassTransportControlsView *)self isDoubleRowLayoutEnabled])
  {
    [(AVCatalystGlassTransportControlsView *)self _layoutDoubleRowViews];
  }

  else
  {
    [(AVCatalystGlassTransportControlsView *)self _layoutSingleRowViews];
  }

  if ([(AVCatalystGlassTransportControlsView *)self hasFullScreenAppearance]|| [(AVCatalystGlassTransportControlsView *)self isCollapsedOrExcluded])
  {
    if (![(AVCatalystGlassTransportControlsView *)self hasFullScreenAppearance])
    {
      goto LABEL_37;
    }

    [(AVCatalystGlassTransportControlsView *)self setCollapsed:0];
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    customItems = [(AVCatalystGlassTransportControlsView *)self customItems];
    v16 = [customItems countByEnumeratingWithState:&v50 objects:v59 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v51;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v51 != v18)
          {
            objc_enumerationMutation(customItems);
          }

          v20 = *(*(&v50 + 1) + 8 * i);
          isDoubleRowLayoutEnabled = [(AVCatalystGlassTransportControlsView *)self isDoubleRowLayoutEnabled];
          if (isDoubleRowLayoutEnabled)
          {
            [v20 setCollapsed:1];
          }

          [v20 setIncluded:!isDoubleRowLayoutEnabled];
        }

        v17 = [customItems countByEnumeratingWithState:&v50 objects:v59 count:16];
      }

      while (v17);
    }
  }

  else
  {
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    customItems = [(AVCatalystGlassTransportControlsView *)self customItems];
    v22 = [customItems countByEnumeratingWithState:&v54 objects:v60 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v55;
      do
      {
        for (j = 0; j != v23; ++j)
        {
          if (*v55 != v24)
          {
            objc_enumerationMutation(customItems);
          }

          v26 = *(*(&v54 + 1) + 8 * j);
          if ([(AVCatalystGlassTransportControlsView *)self isDoubleRowLayoutEnabled])
          {
            v27 = 1;
          }

          else
          {
            [v26 intrinsicContentSize];
            v29 = v28;
            [(AVCatalystGlassTransportControlsView *)self bounds];
            v27 = v29 >= CGRectGetWidth(v62) * 0.3;
          }

          [v26 setCollapsed:v27];
        }

        v23 = [customItems countByEnumeratingWithState:&v54 objects:v60 count:16];
      }

      while (v23);
    }
  }

LABEL_37:
  elapsedTimeLabel4 = [(AVCatalystGlassTransportControlsView *)self elapsedTimeLabel];
  isCollapsedOrExcluded = [elapsedTimeLabel4 isCollapsedOrExcluded];

  if (isCollapsedOrExcluded)
  {
    v32 = -16.0;
  }

  else
  {
    v32 = -22.0;
  }

  standardPlayPauseButton = [(AVCatalystGlassTransportControlsView *)self standardPlayPauseButton];
  [standardPlayPauseButton setHitRectInsets:{-16.0, -22.0, -16.0, v32}];

  customContentTransitioningInfoPanel = [(AVCatalystGlassTransportControlsView *)self customContentTransitioningInfoPanel];
  if (!customContentTransitioningInfoPanel || ![(AVCatalystGlassTransportControlsView *)self isDoubleRowLayoutEnabled])
  {

    goto LABEL_45;
  }

  liveBroadcastLabel3 = [(AVCatalystGlassTransportControlsView *)self liveBroadcastLabel];
  isCollapsedOrExcluded2 = [liveBroadcastLabel3 isCollapsedOrExcluded];

  if (isCollapsedOrExcluded2)
  {
LABEL_45:
    liveBroadcastLabel4 = [(AVCatalystGlassTransportControlsView *)self liveBroadcastLabel];
    v46 = *(MEMORY[0x1E695EFD0] + 16);
    *&v49.a = *MEMORY[0x1E695EFD0];
    *&v49.c = v46;
    *&v49.tx = *(MEMORY[0x1E695EFD0] + 32);
    [liveBroadcastLabel4 setTransform:&v49];
    goto LABEL_46;
  }

  styleSheet = [(AVCatalystGlassTransportControlsView *)self styleSheet];
  [styleSheet liveBroadcastLabelTopToBackdropTopDistance];
  v39 = v38;

  liveBroadcastLabel5 = [(AVCatalystGlassTransportControlsView *)self liveBroadcastLabel];
  [liveBroadcastLabel5 intrinsicContentSize];
  v42 = v41;

  liveBroadcastLabel4 = [(AVCatalystGlassTransportControlsView *)self liveBroadcastLabel];
  scrubber2 = [(AVCatalystGlassTransportControlsView *)self scrubber];
  [scrubber2 frame];
  MaxY = CGRectGetMaxY(v63);
  CGAffineTransformMakeTranslation(&v49, 0.0, MaxY - (v39 + v42 * 0.5));
  [liveBroadcastLabel4 setTransform:&v49];

LABEL_46:
  scrubber3 = [(AVCatalystGlassTransportControlsView *)self scrubber];
  [(AVCatalystGlassTransportControlsView *)self extrinsicContentSize];
  [scrubber3 setScrubberParentHeight:v48];

  kdebug_trace();
}

- (void)traitCollectionDidChange:(id)change
{
  v4.receiver = self;
  v4.super_class = AVCatalystGlassTransportControlsView;
  [(AVCatalystGlassTransportControlsView *)&v4 traitCollectionDidChange:change];
  [(AVCatalystGlassTransportControlsView *)self _updateFontSizes];
}

- (CGSize)intrinsicContentSize
{
  [(AVCatalystGlassTransportControlsView *)self extrinsicContentSize];
  v5 = v4;
  v6 = v3;
  if (v4 == *MEMORY[0x1E695F060] && v3 == *(MEMORY[0x1E695F060] + 8))
  {
    v48.receiver = self;
    v48.super_class = AVCatalystGlassTransportControlsView;
    [(AVCatalystGlassTransportControlsView *)&v48 intrinsicContentSize];
    v5 = v8;
    v6 = v9;
  }

  controlsLayoutView = [(AVCatalystGlassTransportControlsView *)self controlsLayoutView];
  v11 = [controlsLayoutView prioritizedSizeThatFitsSize:{v5, v6}];

  [v11 currentTotalSize];
  v13 = v12;
  controlsLayoutView2 = [(AVCatalystGlassTransportControlsView *)self controlsLayoutView];
  [controlsLayoutView2 contentLayoutMargins];
  v16 = v15;
  v18 = v17;

  customContentTransitioningInfoPanel = [(AVCatalystGlassTransportControlsView *)self customContentTransitioningInfoPanel];
  if (customContentTransitioningInfoPanel)
  {
    v20 = customContentTransitioningInfoPanel;
    customContentTransitioningInfoPanel2 = [(AVCatalystGlassTransportControlsView *)self customContentTransitioningInfoPanel];
    isHidden = [customContentTransitioningInfoPanel2 isHidden];

    if ((isHidden & 1) == 0)
    {
      customContentTransitioningInfoPanel3 = [(AVCatalystGlassTransportControlsView *)self customContentTransitioningInfoPanel];
      [(AVCatalystGlassTransportControlsView *)self frame];
      [customContentTransitioningInfoPanel3 systemLayoutSizeFittingSize:{v39, v40}];
      v23 = v41;
LABEL_16:

      goto LABEL_17;
    }
  }

  v23 = 0.01;
  if ([(AVCatalystGlassTransportControlsView *)self isShowingScrubInstructions]&& [(AVCatalystGlassTransportControlsView *)self isDoubleRowLayoutEnabled])
  {
    styleSheet = [(AVCatalystGlassTransportControlsView *)self styleSheet];
    [styleSheet doubleRowLayoutMargins];
    v26 = v25;
    styleSheet2 = [(AVCatalystGlassTransportControlsView *)self styleSheet];
    [styleSheet2 doubleRowLayoutMarginsWhenShowingScrubInstructions];
    v29 = v26 - v28;

    if (v29 >= 0.0)
    {
      v30 = v29;
    }

    else
    {
      v30 = -v29;
    }

    styleSheet3 = [(AVCatalystGlassTransportControlsView *)self styleSheet];
    [styleSheet3 spacingBetweenScrubInstructionsAndScrubber];
    v33 = v32;

    customContentTransitioningInfoPanel3 = [(AVCatalystGlassTransportControlsView *)self scrubInstructionsLabel];
    embeddedExtraContentContainer = [(AVCatalystGlassTransportControlsView *)self embeddedExtraContentContainer];
    [embeddedExtraContentContainer bounds];
    [customContentTransitioningInfoPanel3 sizeThatFits:{v36, v37}];
    v23 = v38 - (v30 + v33);

    goto LABEL_16;
  }

LABEL_17:
  v42 = v13 + v16 + v18;
  styleSheet4 = [(AVCatalystGlassTransportControlsView *)self styleSheet];
  [styleSheet4 defaultPlatterHeight];
  v45 = v23 + v44;

  v46 = v42;
  v47 = v45;
  result.height = v47;
  result.width = v46;
  return result;
}

- (void)didMoveToWindow
{
  v4.receiver = self;
  v4.super_class = AVCatalystGlassTransportControlsView;
  [(AVCatalystGlassTransportControlsView *)&v4 didMoveToWindow];
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [(AVCatalystGlassTransportControlsView *)self setBackgroundColor:clearColor];
}

- (void)setPrefersFlexibleWidthScrubber:(BOOL)scrubber
{
  if (self->_prefersFlexibleWidthScrubber != scrubber)
  {
    self->_prefersFlexibleWidthScrubber = scrubber;
    if (self->_scrubber)
    {
      prefersFlexibleWidthScrubber = [(AVCatalystGlassTransportControlsView *)self prefersFlexibleWidthScrubber];
      layoutAttributes = [(AVCatalystScrubber *)self->_scrubber layoutAttributes];
      [layoutAttributes setHasFlexibleContentSize:prefersFlexibleWidthScrubber];

      if (prefersFlexibleWidthScrubber)
      {
        v6 = *(MEMORY[0x1E695F060] + 8);
      }

      else
      {
        v6 = 0.0;
      }

      if (prefersFlexibleWidthScrubber)
      {
        v7 = *MEMORY[0x1E695F060];
      }

      else
      {
        v7 = 168.0;
      }

      if (prefersFlexibleWidthScrubber)
      {
        v8 = *MEMORY[0x1E695F060];
      }

      else
      {
        v8 = 336.0;
      }

      layoutAttributes2 = [(AVCatalystScrubber *)self->_scrubber layoutAttributes];
      [layoutAttributes2 setMaximumSize:{v8, v6}];

      layoutAttributes3 = [(AVCatalystScrubber *)self->_scrubber layoutAttributes];
      [layoutAttributes3 setMinimumSize:{v7, v6}];

      [(AVCatalystGlassTransportControlsView *)self invalidateIntrinsicContentSize];
      superview = [(AVCatalystGlassTransportControlsView *)self superview];
      [superview avkit_intrinsicContentSizeOfSubviewWasInvalidated:self];
    }
  }
}

- (double)layoutHeightThatFitsRowsStartingWithRow:(unint64_t)row
{
  controlsLayoutView = [(AVCatalystGlassTransportControlsView *)self controlsLayoutView];
  [controlsLayoutView layoutHeightThatFitsRowsStartingWithRow:row];
  v6 = v5;

  return v6;
}

- (void)reevaluateHiddenStateOfAllItems
{
  controlsLayoutView = [(AVCatalystGlassTransportControlsView *)self controlsLayoutView];
  [controlsLayoutView reevaluateHiddenStateOfAllItems];
}

- (void)setStyleSheet:(id)sheet
{
  sheetCopy = sheet;
  styleSheet = [(AVCatalystGlassTransportControlsView *)self styleSheet];
  v6 = [styleSheet isEqual:sheetCopy];

  if ((v6 & 1) == 0)
  {
    objc_storeStrong(&self->_styleSheet, sheet);
    [(AVCatalystGlassTransportControlsView *)self _updateFontSizes];
    [(AVCatalystGlassTransportControlsView *)self setNeedsLayout];
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
    [(AVCatalystGlassTransportControlsView *)self setNeedsLayout];
    customContentTransitioningInfoPanel = [(AVCatalystGlassTransportControlsView *)self isHiddenOrHasHiddenAncestor];
    panelCopy = v7;
    if ((customContentTransitioningInfoPanel & 1) == 0)
    {
      customContentTransitioningInfoPanel = [(AVCatalystGlassTransportControlsView *)self layoutIfNeeded];
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

    [(AVCatalystGlassTransportControlsView *)self invalidateIntrinsicContentSize];
    [(AVCatalystGlassTransportControlsView *)self setNeedsLayout];
  }
}

- (void)setLiveStreamingControlsIncludeScrubber:(BOOL)scrubber
{
  if (self->_liveStreamingControlsIncludeScrubber != scrubber)
  {
    self->_liveStreamingControlsIncludeScrubber = scrubber;
    [(AVCatalystGlassTransportControlsView *)self setNeedsLayout];
  }
}

- (void)setShowsLiveStreamingControls:(BOOL)controls
{
  if (self->_showsLiveStreamingControls != controls)
  {
    self->_showsLiveStreamingControls = controls;
    [(AVCatalystGlassTransportControlsView *)self invalidateIntrinsicContentSize];

    [(AVCatalystGlassTransportControlsView *)self setNeedsLayout];
  }
}

- (void)setShowsLoadingIndicator:(BOOL)indicator
{
  if (self->_showsLoadingIndicator != indicator)
  {
    self->_showsLoadingIndicator = indicator;
    [(AVCatalystGlassTransportControlsView *)self setNeedsLayout];
  }
}

- (void)setDoubleRowLayoutEnabled:(BOOL)enabled
{
  if (self->_doubleRowLayoutEnabled != enabled)
  {
    self->_doubleRowLayoutEnabled = enabled;
    [(AVCatalystGlassTransportControlsView *)self invalidateIntrinsicContentSize];

    [(AVCatalystGlassTransportControlsView *)self setNeedsLayout];
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

    [(AVCatalystGlassTransportControlsView *)self setNeedsLayout];
  }
}

- (AVCatalystGlassTransportControlsView)initWithFrame:(CGRect)frame styleSheet:(id)sheet
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v90 = *MEMORY[0x1E69E9840];
  sheetCopy = sheet;
  v11 = _AVLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v87 = "[AVCatalystGlassTransportControlsView initWithFrame:styleSheet:]";
    v88 = 1024;
    v89 = 87;
    _os_log_impl(&dword_18B49C000, v11, OS_LOG_TYPE_DEFAULT, "%s %d", buf, 0x12u);
  }

  v83.receiver = self;
  v83.super_class = AVCatalystGlassTransportControlsView;
  height = [(AVView *)&v83 initWithFrame:x, y, width, height];
  v13 = height;
  if (height)
  {
    height->_included = 1;
    objc_storeStrong(&height->_styleSheet, sheet);
    v14 = objc_alloc_init(AVCatalystScrubber);
    scrubber = v13->_scrubber;
    v13->_scrubber = v14;

    layoutAttributes = [(AVCatalystScrubber *)v13->_scrubber layoutAttributes];
    [layoutAttributes setAccessibilityIdentifier:@"Scrubber"];

    layoutAttributes2 = [(AVCatalystScrubber *)v13->_scrubber layoutAttributes];
    [layoutAttributes2 setHasFlexibleContentSize:1];

    layoutAttributes3 = [(AVCatalystScrubber *)v13->_scrubber layoutAttributes];
    [layoutAttributes3 setMaximumSize:{336.0, 30.0}];

    layoutAttributes4 = [(AVCatalystScrubber *)v13->_scrubber layoutAttributes];
    [layoutAttributes4 setMinimumSize:{168.0, 30.0}];

    [(AVCatalystScrubber *)v13->_scrubber setDelegate:v13];
    v20 = v13->_scrubber;
    sliderMinValueTrackColor = [(AVCatalystGlassStyleSheet *)v13->_styleSheet sliderMinValueTrackColor];
    [(AVCatalystScrubber *)v20 setTintColor:sliderMinValueTrackColor];

    [(AVCatalystScrubber *)v13->_scrubber addTarget:v13 action:sel_beginScrubbing_ forControlEvents:1];
    [(AVCatalystScrubber *)v13->_scrubber addTarget:v13 action:sel_endScrubbing_ forControlEvents:448];
    [(AVCatalystScrubber *)v13->_scrubber addTarget:v13 action:sel_scrubberValueChanged_ forControlEvents:4096];
    v22 = __65__AVCatalystGlassTransportControlsView_initWithFrame_styleSheet___block_invoke(0, @"Time Elapsed");
    elapsedTimeLabel = v13->_elapsedTimeLabel;
    v13->_elapsedTimeLabel = v22;

    v24 = v13->_elapsedTimeLabel;
    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(AVCatalystGlassLabel *)v24 setTintColor:secondaryLabelColor];

    [(AVCatalystGlassLabel *)v13->_elapsedTimeLabel setPreferredVibrancy:1];
    v26 = __65__AVCatalystGlassTransportControlsView_initWithFrame_styleSheet___block_invoke(0, @"Time Remaining");
    timeRemainingLabel = v13->_timeRemainingLabel;
    v13->_timeRemainingLabel = v26;

    v28 = v13->_timeRemainingLabel;
    secondaryLabelColor2 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(AVCatalystGlassLabel *)v28 setTintColor:secondaryLabelColor2];

    [(AVCatalystGlassLabel *)v13->_timeRemainingLabel setPreferredVibrancy:1];
    v30 = __65__AVCatalystGlassTransportControlsView_initWithFrame_styleSheet___block_invoke(@"PLAYBACK_CONTROLS_VIEW_CONTROLLER_LIVE_BROADCAST_LABEL_TEXT", @"Live Broadcast");
    liveBroadcastLabel = v13->_liveBroadcastLabel;
    v13->_liveBroadcastLabel = v30;

    [(AVCatalystGlassLabel *)v13->_liveBroadcastLabel setLoadingIndicatorAlignment:1];
    layoutAttributes5 = [(AVCatalystGlassLabel *)v13->_liveBroadcastLabel layoutAttributes];
    [layoutAttributes5 setHasFlexibleContentSize:1];

    v33 = __65__AVCatalystGlassTransportControlsView_initWithFrame_styleSheet___block_invoke(@"PLAYBACK_CONTROLS_VIEW_CONTROLLER_LIVE_LABEL_TEXT", @"Live");
    liveBroadcastScrubberLabel = v13->_liveBroadcastScrubberLabel;
    v13->_liveBroadcastScrubberLabel = v33;

    v35 = objc_alloc_init(AVTouchIgnoringView);
    embeddedExtraContentContainer = v13->_embeddedExtraContentContainer;
    v13->_embeddedExtraContentContainer = v35;

    [(AVTouchIgnoringView *)v13->_embeddedExtraContentContainer setClipsToBounds:1];
    [(AVTouchIgnoringView *)v13->_embeddedExtraContentContainer setCollapsed:1];
    [(AVTouchIgnoringView *)v13->_embeddedExtraContentContainer setIncluded:0];
    layoutAttributes6 = [(AVTouchIgnoringView *)v13->_embeddedExtraContentContainer layoutAttributes];
    [layoutAttributes6 setHasFlexibleContentSize:1];

    v38 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    scrubInstructionsLabel = v13->_scrubInstructionsLabel;
    v13->_scrubInstructionsLabel = v38;

    [(UILabel *)v13->_scrubInstructionsLabel setNumberOfLines:0];
    [(UILabel *)v13->_scrubInstructionsLabel setTextAlignment:1];
    [(UILabel *)v13->_scrubInstructionsLabel setHidden:1];
    v40 = objc_alloc_init(AVCatalystGlassLabel);
    detachedScrubInstructionsBackdropLabel = v13->_detachedScrubInstructionsBackdropLabel;
    v13->_detachedScrubInstructionsBackdropLabel = v40;

    [(AVCatalystGlassLabel *)v13->_detachedScrubInstructionsBackdropLabel setNumberOfLines:0];
    [(AVCatalystGlassLabel *)v13->_detachedScrubInstructionsBackdropLabel setLoadingIndicatorAlignment:2];
    [(AVCatalystGlassLabel *)v13->_detachedScrubInstructionsBackdropLabel setHidden:1];
    v42 = [AVGlassLayoutView alloc];
    v43 = *MEMORY[0x1E695F058];
    v44 = *(MEMORY[0x1E695F058] + 8);
    v45 = *(MEMORY[0x1E695F058] + 16);
    v46 = *(MEMORY[0x1E695F058] + 24);
    v47 = [(AVGlassLayoutView *)v42 initWithFrame:*MEMORY[0x1E695F058], v44, v45, v46];
    detachedExtraContentLayoutView = v13->_detachedExtraContentLayoutView;
    v13->_detachedExtraContentLayoutView = v47;

    v49 = v13->_detachedExtraContentLayoutView;
    v84 = v13->_detachedScrubInstructionsBackdropLabel;
    v50 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v84 count:1];
    v85 = v50;
    v51 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v85 count:1];
    [(AVGlassLayoutView *)v49 setArrangedSubviews:v51];

    [(AVGlassLayoutView *)v13->_detachedExtraContentLayoutView setDebugIdentifier:@"detatchedExtraContentStackView"];
    v52 = +[AVControlOverflowButton legacyOverflowButton];
    controlOverflowButton = v13->_controlOverflowButton;
    v13->_controlOverflowButton = v52;

    layoutAttributes7 = [(AVButton *)v13->_controlOverflowButton layoutAttributes];
    [layoutAttributes7 setCanSubstituteOtherAttributes:1];

    v55 = [AVButton buttonWithAccessibilityIdentifier:@"Media Selection" isFirstGeneration:1];
    mediaSelectionButton = v13->_mediaSelectionButton;
    v13->_mediaSelectionButton = v55;

    layoutAttributes8 = [(AVButton *)v13->_mediaSelectionButton layoutAttributes];
    [layoutAttributes8 setCanOverflowToAuxiliaryMenu:1];

    v58 = [AVButton buttonWithAccessibilityIdentifier:@"Playback Speed" isFirstGeneration:1];
    playbackSpeedButton = v13->_playbackSpeedButton;
    v13->_playbackSpeedButton = v58;

    layoutAttributes9 = [(AVButton *)v13->_playbackSpeedButton layoutAttributes];
    [layoutAttributes9 setCanOverflowToAuxiliaryMenu:1];

    layoutAttributes10 = [(AVButton *)v13->_playbackSpeedButton layoutAttributes];
    [layoutAttributes10 setCanOnlyAppearInControlOverflowMenu:1];

    v62 = [AVButton buttonWithAccessibilityIdentifier:@"Play/Pause" isFirstGeneration:1];
    standardPlayPauseButton = v13->_standardPlayPauseButton;
    v13->_standardPlayPauseButton = v62;

    v64 = [AVButton buttonWithAccessibilityIdentifier:@"Skip Forward" isFirstGeneration:1];
    skipForwardButton = v13->_skipForwardButton;
    v13->_skipForwardButton = v64;

    v66 = [AVButton buttonWithAccessibilityIdentifier:@"Skip Backward" isFirstGeneration:1];
    skipBackButton = v13->_skipBackButton;
    v13->_skipBackButton = v66;

    effectiveUserInterfaceLayoutDirection = [(AVCatalystGlassTransportControlsView *)v13 effectiveUserInterfaceLayoutDirection];
    if (effectiveUserInterfaceLayoutDirection)
    {
      v69 = @"Skip To Next";
    }

    else
    {
      v69 = @"Skip To Previous";
    }

    if (effectiveUserInterfaceLayoutDirection)
    {
      v70 = @"Skip To Previous";
    }

    else
    {
      v70 = @"Skip To Next";
    }

    v71 = [AVButton buttonWithAccessibilityIdentifier:v69 isFirstGeneration:1];
    startRightwardContentTransitionButton = v13->_startRightwardContentTransitionButton;
    v13->_startRightwardContentTransitionButton = v71;

    v73 = [AVButton buttonWithAccessibilityIdentifier:v70 isFirstGeneration:1];
    startLeftwardContentTransitionButton = v13->_startLeftwardContentTransitionButton;
    v13->_startLeftwardContentTransitionButton = v73;

    [(AVCatalystGlassTransportControlsView *)v13 addSubview:v13->_detachedExtraContentLayoutView];
    [(AVGlassLayoutView *)v13->_detachedExtraContentLayoutView setAlpha:0.0];
    v75 = [[AVGlassLayoutView alloc] initWithFrame:v43, v44, v45, v46];
    controlsLayoutView = v13->_controlsLayoutView;
    v13->_controlsLayoutView = v75;

    [(AVGlassLayoutView *)v13->_controlsLayoutView setDebugIdentifier:@"transportControlsView"];
    [(AVGlassLayoutView *)v13->_controlsLayoutView setShapeStyle:3];
    [(AVGlassLayoutView *)v13->_controlsLayoutView setSemanticContentAttribute:1];
    [(AVCatalystGlassTransportControlsView *)v13 addSubview:v13->_controlsLayoutView];
    LODWORD(v77) = 1148846080;
    [(AVCatalystGlassTransportControlsView *)v13 setContentCompressionResistancePriority:0 forAxis:v77];
    LODWORD(v78) = 1148846080;
    [(AVCatalystGlassTransportControlsView *)v13 setContentCompressionResistancePriority:1 forAxis:v78];
    LODWORD(v79) = 1148846080;
    [(AVCatalystGlassTransportControlsView *)v13 setContentHuggingPriority:0 forAxis:v79];
    detachedExtraContentLayoutView = [(AVCatalystGlassTransportControlsView *)v13 detachedExtraContentLayoutView];
    [detachedExtraContentLayoutView setHidden:1];

    detachedScrubInstructionsBackdropLabel = [(AVCatalystGlassTransportControlsView *)v13 detachedScrubInstructionsBackdropLabel];
    [detachedScrubInstructionsBackdropLabel setHidden:1];

    [(AVCatalystGlassTransportControlsView *)v13 _updateFontSizes];
  }

  return v13;
}

AVCatalystGlassLabel *__65__AVCatalystGlassTransportControlsView_initWithFrame_styleSheet___block_invoke(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = objc_alloc_init(AVCatalystGlassLabel);
  if (v3)
  {
    objc_initWeak(&location, v5);
    v10 = MEMORY[0x1E69E9820];
    v11 = 3221225472;
    v12 = __65__AVCatalystGlassTransportControlsView_initWithFrame_styleSheet___block_invoke_2;
    v13 = &unk_1E7208E68;
    objc_copyWeak(&v14, &location);
    AVAsynchronousLocalizedString(v3, v4, &v10);
    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  LODWORD(v6) = 1148846080;
  [(AVCatalystGlassLabel *)v5 setContentCompressionResistancePriority:0 forAxis:v6, v10, v11, v12, v13];
  [(AVCatalystGlassLabel *)v5 setAccessibilityIdentifier:v4];
  v7 = [(AVCatalystGlassLabel *)v5 layoutAttributes];
  [v7 setAccessibilityIdentifier:v4];

  v8 = [MEMORY[0x1E69DC888] tertiaryLabelColor];
  [(AVCatalystGlassLabel *)v5 setTintColor:v8];

  return v5;
}

void __65__AVCatalystGlassTransportControlsView_initWithFrame_styleSheet___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setText:v3];
}

@end