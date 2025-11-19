@interface AVCatalystGlassTransportControlsView
- (AVCatalystGlassTransportControlsView)initWithFrame:(CGRect)a3 styleSheet:(id)a4;
- (AVCatalystTransportControlsViewDelegate)delegate;
- (BOOL)_subviewIsCustomMenuItemView:(id)a3;
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
- (void)didMoveToWindow;
- (void)endScrubbing:(id)a3;
- (void)layoutSubviews;
- (void)reevaluateHiddenStateOfAllItems;
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
- (void)setPrefersFlexibleWidthScrubber:(BOOL)a3;
- (void)setShowsLiveStreamingControls:(BOOL)a3;
- (void)setShowsLoadingIndicator:(BOOL)a3;
- (void)setStyleSheet:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
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

- (BOOL)_subviewIsCustomMenuItemView:(id)a3
{
  v4 = a3;
  v5 = [(AVCatalystGlassTransportControlsView *)self customMenuItemsViews];

  if (v5)
  {
    v6 = v4;
    if (v6)
    {
      v7 = [(AVCatalystGlassTransportControlsView *)self customMenuItemsViews];
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
  v11 = [(AVCatalystGlassTransportControlsView *)self customMenuItemsViews];

  if (v11)
  {
    v12 = [(AVCatalystGlassTransportControlsView *)self customMenuItemsViews];
    v13 = [v10 arrayByAddingObjectsFromArray:v12];

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

  v11 = [(AVCatalystGlassTransportControlsView *)self customItems];
  v12 = [v10 arrayByAddingObjectsFromArray:v11];

  v13 = [(AVCatalystGlassTransportControlsView *)self customMenuItemsViews];

  if (v13)
  {
    v14 = [(AVCatalystGlassTransportControlsView *)self customMenuItemsViews];
    v15 = [v12 arrayByAddingObjectsFromArray:v14];

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
  v3 = [(AVCatalystGlassTransportControlsView *)self customContentTransitioningInfoPanel];

  if (!v3)
  {
    return;
  }

  v4 = [(AVCatalystGlassTransportControlsView *)self isDoubleRowLayoutEnabled];
  v5 = [(AVCatalystGlassTransportControlsView *)self customContentTransitioningInfoPanel];
  v6 = [v5 superview];
  if (v4)
  {
    v7 = [(AVCatalystGlassTransportControlsView *)self embeddedExtraContentContainer];

    if (v6 != v7)
    {
      v8 = [(AVCatalystGlassTransportControlsView *)self embeddedExtraContentContainer];
      v9 = [(AVCatalystGlassTransportControlsView *)self customContentTransitioningInfoPanel];
      [v8 addSubview:v9];
    }

    v10 = [(AVCatalystGlassTransportControlsView *)self customContentTransitioningInfoPanel];
    v11 = [(AVCatalystGlassTransportControlsView *)self embeddedExtraContentContainer];
    [v11 bounds];
    [v10 setFrame:?];
    goto LABEL_9;
  }

  v12 = [(AVCatalystGlassTransportControlsView *)self detachedExtraContentLayoutView];

  if (v6 != v12)
  {
    v10 = [(AVCatalystGlassTransportControlsView *)self detachedExtraContentLayoutView];
    v11 = [(AVCatalystGlassTransportControlsView *)self customContentTransitioningInfoPanel];
    [v10 addSubview:v11];
LABEL_9:
  }

  v13 = [(AVCatalystGlassTransportControlsView *)self detachedExtraContentLayoutView];
  [v13 setHidden:{-[AVCatalystGlassTransportControlsView isDoubleRowLayoutEnabled](self, "isDoubleRowLayoutEnabled")}];

  v14 = [(AVCatalystGlassTransportControlsView *)self detachedExtraContentLayoutView];
  if ([(AVCatalystGlassTransportControlsView *)self isDoubleRowLayoutEnabled])
  {
    v15 = 0.0;
  }

  else
  {
    v15 = 1.0;
  }

  [v14 setAlpha:v15];

  v16 = [(AVCatalystGlassTransportControlsView *)self embeddedExtraContentContainer];
  [v16 setCollapsed:{-[AVCatalystGlassTransportControlsView isDoubleRowLayoutEnabled](self, "isDoubleRowLayoutEnabled") ^ 1}];

  v17 = [(AVCatalystGlassTransportControlsView *)self embeddedExtraContentContainer];
  [v17 setIncluded:{-[AVCatalystGlassTransportControlsView isDoubleRowLayoutEnabled](self, "isDoubleRowLayoutEnabled")}];

  v19 = [(AVCatalystGlassTransportControlsView *)self embeddedExtraContentContainer];
  if ([(AVCatalystGlassTransportControlsView *)self isDoubleRowLayoutEnabled])
  {
    v18 = 1.0;
  }

  else
  {
    v18 = 0.0;
  }

  [v19 setAlpha:v18];
}

- (void)_updateScrubInstructionsFrame
{
  [(AVCatalystGlassTransportControlsView *)self frame];
  v3 = CGRectGetMinY(v38) + -8.0;
  v4 = [(AVCatalystGlassTransportControlsView *)self detachedScrubInstructionsBackdropLabel];
  [v4 intrinsicContentSize];
  v6 = v3 - v5 + -20.0;

  v7 = [(AVCatalystGlassTransportControlsView *)self detachedScrubInstructionsBackdropLabel];
  [v7 intrinsicContentSize];
  v9 = v8 + 20.0;

  v10 = [(AVCatalystGlassTransportControlsView *)self detachedScrubInstructionsBackdropLabel];
  [v10 intrinsicContentSize];
  v12 = v11 + 20.0;

  v13 = [(AVCatalystGlassTransportControlsView *)self detachedExtraContentLayoutView];
  [v13 setFrame:{0.0, v6, v9, v12}];

  v14 = [(AVCatalystGlassTransportControlsView *)self detachedScrubInstructionsBackdropLabel];
  v15 = [(AVCatalystGlassTransportControlsView *)self detachedScrubInstructionsBackdropLabel];
  [v15 intrinsicContentSize];
  v17 = v16;
  v18 = [(AVCatalystGlassTransportControlsView *)self detachedScrubInstructionsBackdropLabel];
  [v18 intrinsicContentSize];
  [v14 setFrame:{10.0, 10.0, v17, v19}];

  v20 = [(AVCatalystGlassTransportControlsView *)self detachedExtraContentLayoutView];
  [(AVCatalystGlassTransportControlsView *)self center];
  v22 = v21;
  v23 = [(AVCatalystGlassTransportControlsView *)self detachedExtraContentLayoutView];
  [v23 center];
  [v20 setCenter:v22];

  v24 = [(AVCatalystGlassTransportControlsView *)self scrubInstructionsLabel];
  v25 = [(AVCatalystGlassTransportControlsView *)self embeddedExtraContentContainer];
  [v25 bounds];
  [v24 sizeThatFits:{v26, v27}];
  v29 = v28;
  v31 = v30;

  v32 = [(AVCatalystGlassTransportControlsView *)self scrubInstructionsLabel];
  [v32 setFrame:{0.0, 0.0, v29, v31}];

  v36 = [(AVCatalystGlassTransportControlsView *)self scrubInstructionsLabel];
  v33 = [(AVCatalystGlassTransportControlsView *)self embeddedExtraContentContainer];
  [v33 frame];
  v34 = CGRectGetWidth(v39) * 0.5;
  v35 = [(AVCatalystGlassTransportControlsView *)self scrubInstructionsLabel];
  [v35 center];
  [v36 setCenter:v34];
}

- (void)_updateScrubInstructionsLabelsText
{
  v3 = [(AVCatalystGlassTransportControlsView *)self customContentTransitioningInfoPanel];

  if (v3)
  {
    v4 = [(AVCatalystGlassTransportControlsView *)self detachedScrubInstructionsBackdropLabel];
    [v4 setAttributedText:0];

    v5 = [(AVCatalystGlassTransportControlsView *)self scrubInstructionsLabel];
    [v5 setAttributedText:0];
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
  v5 = [(AVCatalystGlassTransportControlsView *)self styleSheet];
  [v5 doubleRowLayoutMargins];
  if (Width <= v6)
  {
  }

  else
  {
    v7 = [(AVCatalystGlassTransportControlsView *)self isShowingScrubInstructions];

    if (!v7)
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
  v3 = [(AVCatalystGlassTransportControlsView *)self elapsedTimeLabel];
  v4 = [(AVCatalystGlassTransportControlsView *)self styleSheet];
  v5 = [v4 scrubberTimeLabelFont];
  [v3 setFont:v5];

  v6 = [(AVCatalystGlassTransportControlsView *)self timeRemainingLabel];
  v7 = [(AVCatalystGlassTransportControlsView *)self styleSheet];
  v8 = [v7 scrubberTimeLabelFont];
  [v6 setFont:v8];

  v9 = [(AVCatalystGlassTransportControlsView *)self liveBroadcastLabel];
  v10 = [(AVCatalystGlassTransportControlsView *)self styleSheet];
  v11 = [v10 infoLabelFont];
  [v9 setFont:v11];

  v12 = [(AVCatalystGlassTransportControlsView *)self liveBroadcastScrubberLabel];
  v13 = [(AVCatalystGlassTransportControlsView *)self styleSheet];
  v14 = [v13 scrubberInfoLabelFont];
  [v12 setFont:v14];

  [(AVCatalystGlassTransportControlsView *)self invalidateIntrinsicContentSize];

  [(AVCatalystGlassTransportControlsView *)self setNeedsLayout];
}

- (unint64_t)_layoutItemDisplayPriorityForSubview:(id)a3
{
  v4 = a3;
  [(AVCatalystGlassTransportControlsView *)self _subviewIsCustomMenuItemView:v4];
  v5 = [(AVCatalystGlassTransportControlsView *)self standardPlayPauseButton];
  v6 = v5;
  if (v5 == v4)
  {

    goto LABEL_15;
  }

  v7 = [(AVCatalystGlassTransportControlsView *)self embeddedExtraContentContainer];

  if (v7 == v4)
  {
LABEL_15:
    v21 = 4;
    goto LABEL_26;
  }

  v8 = [(AVCatalystGlassTransportControlsView *)self scrubber];
  v9 = v8;
  if (v8 == v4)
  {

    goto LABEL_17;
  }

  v10 = [(AVCatalystGlassTransportControlsView *)self controlOverflowButton];

  if (v10 == v4)
  {
LABEL_17:
    v21 = 3;
    goto LABEL_26;
  }

  v11 = [(AVCatalystGlassTransportControlsView *)self elapsedTimeLabel];
  if (v11 == v4)
  {
LABEL_19:

    goto LABEL_20;
  }

  v12 = [(AVCatalystGlassTransportControlsView *)self timeRemainingLabel];
  v13 = v12;
  if (v12 == v4)
  {

    goto LABEL_19;
  }

  v14 = [(AVCatalystGlassTransportControlsView *)self liveBroadcastLabel];

  if (v14 == v4)
  {
LABEL_20:
    v21 = 2;
    goto LABEL_26;
  }

  v15 = [(AVCatalystGlassTransportControlsView *)self skipBackButton];
  if (v15 == v4)
  {
LABEL_24:

    goto LABEL_25;
  }

  v16 = [(AVCatalystGlassTransportControlsView *)self skipForwardButton];
  if (v16 == v4)
  {
LABEL_23:

    goto LABEL_24;
  }

  v17 = [(AVCatalystGlassTransportControlsView *)self startLeftwardContentTransitionButton];
  if (v17 == v4)
  {
LABEL_22:

    goto LABEL_23;
  }

  v18 = [(AVCatalystGlassTransportControlsView *)self startRightwardContentTransitionButton];
  v19 = v18;
  if (v18 == v4)
  {

    goto LABEL_22;
  }

  v20 = [(AVCatalystGlassTransportControlsView *)self mediaSelectionButton];

  if (v20 == v4)
  {
LABEL_25:
    v21 = 1;
    goto LABEL_26;
  }

  v21 = 2 * (self->_playbackSpeedButton == v4);
LABEL_26:

  return v21;
}

- (double)_rowSpacingForDoubleRowLayoutAfterRow:(unint64_t)a3
{
  v5 = [(AVCatalystGlassTransportControlsView *)self isDoubleRowLayoutEnabled];
  v6 = 0.0;
  if (!a3 && v5)
  {
    v7 = [(AVCatalystGlassTransportControlsView *)self customContentTransitioningInfoPanel];
    if (v7)
    {
      v8 = v7;
      v9 = [(AVCatalystGlassTransportControlsView *)self embeddedExtraContentContainer];
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

  if (((a3 == 1) & [(AVCatalystGlassTransportControlsView *)self isDoubleRowLayoutEnabled]) != 0)
  {
    v6 = 4.5;
  }

  v11 = [(AVCatalystGlassTransportControlsView *)self isDoubleRowLayoutEnabled];
  if (!a3 && v11)
  {
    v12 = [(AVCatalystGlassTransportControlsView *)self styleSheet];
    [v12 spacingBetweenScrubInstructionsAndScrubber];
    v6 = v13;
  }

  return v6;
}

- (void)_layoutSingleRowViews
{
  v37[1] = *MEMORY[0x1E69E9840];
  v3 = [(AVCatalystGlassTransportControlsView *)self liveBroadcastLabel];
  [v3 setLoadingIndicatorAlignment:1];

  v4 = [(AVCatalystGlassTransportControlsView *)self controlsLayoutView];
  v5 = [(AVCatalystGlassTransportControlsView *)self singleRowViews];
  v37[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:1];
  [v4 setArrangedSubviews:v6];

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

  v8 = [(AVCatalystGlassTransportControlsView *)self controlsLayoutView];
  [v8 setContentLayoutMargins:{0.0, v7, 0.0, v7}];

  v9 = [(AVCatalystGlassTransportControlsView *)self elapsedTimeLabel];
  v10 = [v9 layoutAttributes];
  v11 = [(AVCatalystGlassTransportControlsView *)self timeRemainingLabel];
  v12 = [v11 layoutAttributes];
  [v10 setDisplayPartnerAttributes:v12];

  v13 = [(AVCatalystGlassTransportControlsView *)self timeRemainingLabel];
  v14 = [v13 layoutAttributes];
  v15 = [(AVCatalystGlassTransportControlsView *)self elapsedTimeLabel];
  v16 = [v15 layoutAttributes];
  [v14 setDisplayPartnerAttributes:v16];

  v17 = [(AVCatalystGlassTransportControlsView *)self skipBackButton];
  v18 = [v17 layoutAttributes];
  v19 = [(AVCatalystGlassTransportControlsView *)self skipForwardButton];
  v20 = [v19 layoutAttributes];
  [v18 setDisplayPartnerAttributes:v20];

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v21 = [(AVCatalystGlassTransportControlsView *)self singleRowViews];
  v22 = [v21 countByEnumeratingWithState:&v32 objects:v36 count:16];
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
          objc_enumerationMutation(v21);
        }

        v26 = *(*(&v32 + 1) + 8 * i);
        v27 = [v26 layoutAttributes];
        [(AVCatalystGlassTransportControlsView *)self _singeRowLayoutSpacingAfterSubview:v26];
        [v27 setTrailingInterItemSpace:?];

        v28 = [v26 layoutAttributes];
        [v28 setDisplayPriority:{-[AVCatalystGlassTransportControlsView _layoutItemDisplayPriorityForSubview:](self, "_layoutItemDisplayPriorityForSubview:", v26)}];

        v29 = [v26 layoutAttributes];
        v30 = [(AVCatalystGlassTransportControlsView *)self scrubber];
        if (v26 == v30)
        {
          [v29 setHasFlexibleContentSize:1];
        }

        else
        {
          v31 = [(AVCatalystGlassTransportControlsView *)self liveBroadcastLabel];
          [v29 setHasFlexibleContentSize:v26 == v31];
        }
      }

      v23 = [v21 countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v23);
  }
}

- (void)_layoutDoubleRowViews
{
  v84[1] = *MEMORY[0x1E69E9840];
  v3 = [(AVCatalystGlassTransportControlsView *)self controlsLayoutView];
  v4 = [(AVCatalystGlassTransportControlsView *)self styleSheet];
  [v4 doubleRowLayoutMargins];
  [v3 setContentLayoutMargins:?];

  v5 = [(AVCatalystGlassTransportControlsView *)self customContentTransitioningInfoPanel];
  if (v5)
  {
    v6 = v5;
    v7 = [(AVCatalystGlassTransportControlsView *)self customContentTransitioningInfoPanel];
    v8 = [v7 isHidden];

    if ((v8 & 1) == 0)
    {
      v9 = [(AVCatalystGlassTransportControlsView *)self controlsLayoutView];
      v10 = [(AVCatalystGlassTransportControlsView *)self styleSheet];
      [v10 doublerowLayoutMarginsWhenShowingCustomContentInfo];
      [v9 setContentLayoutMargins:?];
    }
  }

  v11 = [(AVCatalystGlassTransportControlsView *)self liveBroadcastLabel];
  [v11 setLoadingIndicatorAlignment:2];

  v73 = [(AVCatalystGlassTransportControlsView *)self doubleRowViews];
  v12 = [(AVCatalystGlassTransportControlsView *)self embeddedExtraContentContainer];
  v84[0] = v12;
  v71 = [MEMORY[0x1E695DEC8] arrayWithObjects:v84 count:1];

  v13 = [(AVCatalystGlassTransportControlsView *)self scrubber];
  v83[0] = v13;
  v14 = [(AVCatalystGlassTransportControlsView *)self liveBroadcastLabel];
  v83[1] = v14;
  v69 = [MEMORY[0x1E695DEC8] arrayWithObjects:v83 count:2];

  v15 = [(AVCatalystGlassTransportControlsView *)self elapsedTimeLabel];
  v82[0] = v15;
  v16 = [(AVCatalystGlassTransportControlsView *)self timeRemainingLabel];
  v82[1] = v16;
  v17 = [(AVCatalystGlassTransportControlsView *)self liveBroadcastScrubberLabel];
  v82[2] = v17;
  v72 = [MEMORY[0x1E695DEC8] arrayWithObjects:v82 count:3];

  v18 = [(AVCatalystGlassTransportControlsView *)self startLeftwardContentTransitionButton];
  v81[0] = v18;
  v19 = [(AVCatalystGlassTransportControlsView *)self skipBackButton];
  v81[1] = v19;
  v20 = [(AVCatalystGlassTransportControlsView *)self standardPlayPauseButton];
  v81[2] = v20;
  v21 = [(AVCatalystGlassTransportControlsView *)self skipForwardButton];
  v81[3] = v21;
  v22 = [(AVCatalystGlassTransportControlsView *)self startRightwardContentTransitionButton];
  v81[4] = v22;
  v23 = [(AVCatalystGlassTransportControlsView *)self mediaSelectionButton];
  v81[5] = v23;
  v24 = [(AVCatalystGlassTransportControlsView *)self playbackSpeedButton];
  v81[6] = v24;
  v25 = [(AVCatalystGlassTransportControlsView *)self controlOverflowButton];
  v81[7] = v25;
  v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v81 count:8];

  v27 = [(AVCatalystGlassTransportControlsView *)self customMenuItemsViews];

  if (v27)
  {
    v28 = [(AVCatalystGlassTransportControlsView *)self customMenuItemsViews];
    v29 = [v26 arrayByAddingObjectsFromArray:v28];

    v26 = v29;
  }

  v30 = [(AVCatalystGlassTransportControlsView *)self controlsLayoutView];
  v80[0] = v71;
  v80[1] = v70;
  v80[2] = v72;
  v80[3] = v26;
  v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v80 count:4];
  [v30 setArrangedSubviews:v31];

  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  v32 = v73;
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
        v38 = [v37 layoutAttributes];
        [(AVCatalystGlassTransportControlsView *)self _doubleRowLayoutSpacingAfterSubview:v37];
        [v38 setTrailingInterItemSpace:?];

        v39 = [v37 layoutAttributes];
        [v39 setDisplayPriority:{-[AVCatalystGlassTransportControlsView _layoutItemDisplayPriorityForSubview:](self, "_layoutItemDisplayPriorityForSubview:", v37)}];

        v40 = [(AVCatalystGlassTransportControlsView *)self embeddedExtraContentContainer];

        if (v37 == v40)
        {
          v41 = [(AVCatalystGlassTransportControlsView *)self customContentTransitioningInfoPanel];
          [(AVCatalystGlassTransportControlsView *)self frame];
          [v41 systemLayoutSizeFittingSize:{v42, v43}];
          v74 = v44;

          [(AVCatalystGlassTransportControlsView *)self bounds];
          v46 = v45;
          v48 = v47;
          v50 = v49;
          v52 = v51;
          v53 = [(AVCatalystGlassTransportControlsView *)self controlsLayoutView];
          [v53 contentLayoutMargins];
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

          v64 = [v37 layoutAttributes];
          [v64 setMinimumSize:{Width, v74}];
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
    v68 = [(AVCatalystGlassTransportControlsView *)self controlsLayoutView];
    [v68 setRowSpacing:j afterRow:v67];
  }
}

- (double)_doubleRowLayoutSpacingAfterSubview:(id)a3
{
  v4 = a3;
  [(AVCatalystGlassTransportControlsView *)self bounds];
  Width = CGRectGetWidth(v34);
  v6 = [(AVCatalystGlassTransportControlsView *)self controlsLayoutView];
  v7 = [(AVCatalystGlassTransportControlsView *)self skipForwardButton];
  if ([v7 isIncluded])
  {
    v8 = 0;
  }

  else
  {
    v9 = [(AVCatalystGlassTransportControlsView *)self startRightwardContentTransitionButton];
    v10 = [v9 isIncluded];

    v8 = v10 ^ 1;
  }

  v11 = [(AVCatalystGlassTransportControlsView *)self skipBackButton];
  if (v11 == v4)
  {
    goto LABEL_19;
  }

  v12 = [(AVCatalystGlassTransportControlsView *)self startLeftwardContentTransitionButton];
  if (v12 == v4)
  {
LABEL_18:

LABEL_19:
    v19 = 32.0;
    goto LABEL_20;
  }

  v13 = [(AVCatalystGlassTransportControlsView *)self mediaSelectionButton];
  if (v13 == v4)
  {
LABEL_17:

    goto LABEL_18;
  }

  v14 = [(AVCatalystGlassTransportControlsView *)self standardPlayPauseButton];
  if (!((v14 != v4) | v8 & 1))
  {
LABEL_16:

    goto LABEL_17;
  }

  v15 = [(AVCatalystGlassTransportControlsView *)self playbackSpeedButton];
  v16 = v15;
  if (v15 == v4)
  {

    goto LABEL_16;
  }

  v17 = [(AVCatalystGlassTransportControlsView *)self controlOverflowButton];

  if (v17 == v4)
  {
    v19 = 32.0;
    goto LABEL_21;
  }

  v18 = [(AVCatalystGlassTransportControlsView *)self elapsedTimeLabel];

  if (v18 == v4)
  {
    v22 = [(AVCatalystGlassTransportControlsView *)self elapsedTimeLabel];
    [v22 intrinsicContentSize];
    v24 = Width - v23;
    [v6 contentLayoutMargins];
    v26 = v24 - v25;
    [v6 contentLayoutMargins];
    v19 = v26 - v27;

    v28 = [(AVCatalystGlassTransportControlsView *)self timeRemainingLabel];
    v29 = [v28 isIncluded];

    if (v29)
    {
      v30 = [(AVCatalystGlassTransportControlsView *)self timeRemainingLabel];
    }

    else
    {
      v31 = [(AVCatalystGlassTransportControlsView *)self liveBroadcastScrubberLabel];
      v32 = [v31 isIncluded];

      if (!v32)
      {
        goto LABEL_21;
      }

      v30 = [(AVCatalystGlassTransportControlsView *)self liveBroadcastScrubberLabel];
    }

    v11 = v30;
    [v30 intrinsicContentSize];
    v19 = v19 - v33;
  }

  else
  {
    v11 = [(AVCatalystGlassTransportControlsView *)self skipForwardButton];
    v19 = 0.0;
    if (v11 != v4)
    {
      v20 = [(AVCatalystGlassTransportControlsView *)self startRightwardContentTransitionButton];
      if (v20 != v4)
      {
        [(AVCatalystGlassTransportControlsView *)self standardPlayPauseButton];
      }
    }
  }

LABEL_20:

LABEL_21:
  return v19;
}

- (double)_singeRowLayoutSpacingAfterSubview:(id)a3
{
  v4 = a3;
  v5 = [(AVCatalystGlassTransportControlsView *)self _subviewIsCustomMenuItemView:v4];
  if (![(AVCatalystGlassTransportControlsView *)self hasFullScreenAppearance])
  {
    if (self->_skipBackButton != v4 && self->_startLeftwardContentTransitionButton != v4 && self->_standardPlayPauseButton != v4 && self->_skipForwardButton != v4 && self->_startRightwardContentTransitionButton != v4 && self->_timeRemainingLabel != v4 && self->_liveBroadcastScrubberLabel != v4 && self->_mediaSelectionButton != v4 && self->_controlOverflowButton != v4)
    {
      v7 = 0.0;
      if (self->_playbackSpeedButton != v4 && !v5)
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

  v8 = [(AVCatalystGlassTransportControlsView *)self skipBackButton];
  if ([v8 isIncluded])
  {
  }

  else
  {
    v9 = [(AVCatalystGlassTransportControlsView *)self startLeftwardContentTransitionButton];
    v10 = [v9 isIncluded];

    if ((v10 & 1) == 0)
    {
      v7 = 0.0;
      if (self->_skipBackButton == v4 || self->_startLeftwardContentTransitionButton == v4 || self->_skipForwardButton == v4 || self->_startRightwardContentTransitionButton == v4)
      {
        goto LABEL_52;
      }

      if (self->_standardPlayPauseButton == v4 || self->_timeRemainingLabel == v4 || self->_liveBroadcastScrubberLabel == v4 || self->_liveBroadcastLabel == v4 || self->_controlOverflowButton == v4)
      {
        goto LABEL_51;
      }

      v11 = 616;
LABEL_50:
      if (*(&self->super.super.super.super.isa + v11) != v4 && !v5)
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

    if (self->_skipForwardButton == v4 || self->_startRightwardContentTransitionButton == v4 || self->_timeRemainingLabel == v4 || self->_liveBroadcastScrubberLabel == v4 || self->_controlOverflowButton == v4 || self->_playbackSpeedButton == v4 || self->_skipBackButton == v4 || self->_startLeftwardContentTransitionButton == v4)
    {
      goto LABEL_51;
    }

    v11 = 560;
    goto LABEL_50;
  }

  if (self->_skipBackButton == v4 || self->_startLeftwardContentTransitionButton == v4 || self->_standardPlayPauseButton == v4 || self->_controlOverflowButton == v4 || self->_playbackSpeedButton == v4 || v5 || self->_skipForwardButton == v4 || self->_startRightwardContentTransitionButton == v4 || self->_timeRemainingLabel == v4 || (v7 = 0.0, self->_liveBroadcastScrubberLabel == v4))
  {
LABEL_51:
    [(AVCatalystGlassStyleSheet *)self->_styleSheet defaultInterItemSpacing];
    v7 = v12;
  }

LABEL_52:
  v13 = [(AVCatalystGlassTransportControlsView *)self customItems];

  if (!v13)
  {
    goto LABEL_59;
  }

  if (self->_mediaSelectionButton == v4)
  {
    goto LABEL_58;
  }

  if ([(AVControlOverflowButton *)v4 conformsToProtocol:&unk_1EFF1F478])
  {
    v14 = v4;
    v15 = [(AVCatalystGlassTransportControlsView *)self customItems];
    v16 = [v15 containsObject:v14];

    if (v16)
    {
      [(AVCatalystGlassStyleSheet *)self->_styleSheet defaultInterItemSpacing];
      v7 = v17;
    }
  }

LABEL_59:
  if (self->_liveBroadcastLabel == v4)
  {
    v7 = 0.0;
  }

  else if (self->_elapsedTimeLabel == v4 || self->_scrubber == v4)
  {
    [(AVCatalystGlassStyleSheet *)self->_styleSheet defaultInterItemSpacing];
    v7 = v19;
  }

  return v7;
}

- (void)endScrubbing:(id)a3
{
  v4 = a3;
  [(AVCatalystGlassTransportControlsView *)self setScrubberValueWhenScrubInstructionsTimerBegan:0.0];
  v5 = [(AVCatalystGlassTransportControlsView *)self scrubInstructionsTimer];
  [v5 invalidate];

  v6 = [(AVCatalystGlassTransportControlsView *)self delegate];
  [v6 transportControls:self scrubberDidEndScrubbing:v4];

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

- (void)scrubberValueChanged:(id)a3
{
  v4 = a3;
  v5 = [(AVCatalystGlassTransportControlsView *)self delegate];
  [v5 transportControls:self scrubberDidScrub:v4];
}

- (void)beginScrubbing:(id)a3
{
  v4 = a3;
  v5 = [(AVCatalystGlassTransportControlsView *)self delegate];
  [v5 transportControls:self scrubberDidBeginScrubbing:v4];

  v6 = [(AVCatalystGlassTransportControlsView *)self detachedScrubInstructionsBackdropLabel];
  [v6 setHidden:1];
}

- (void)setExtrinsicContentSize:(CGSize)a3
{
  if (a3.width != self->_extrinsicContentSize.width || a3.height != self->_extrinsicContentSize.height)
  {
    self->_extrinsicContentSize = a3;
    [(AVCatalystGlassTransportControlsView *)self invalidateIntrinsicContentSize];
  }
}

- (void)setHasFullScreenAppearance:(BOOL)a3
{
  if (self->_hasFullScreenAppearance != a3)
  {
    self->_hasFullScreenAppearance = a3;
    [(AVGlassBackedView *)self->_controlsLayoutView setSubdued:!a3];
    [(AVCatalystGlassTransportControlsView *)self invalidateIntrinsicContentSize];

    [(AVCatalystGlassTransportControlsView *)self setNeedsLayout];
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
    v5 = [(AVCatalystGlassTransportControlsView *)self singleRowViews];
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

    [(AVCatalystGlassTransportControlsView *)self invalidateIntrinsicContentSize];
    [(AVCatalystGlassTransportControlsView *)self avkit_reevaluateHiddenStateOfItem:self];
  }
}

- (void)setIncluded:(BOOL)a3
{
  if (self->_included != a3)
  {
    self->_included = a3;
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

- (void)avkit_reevaluateHiddenStateOfItem:(id)a3
{
  v4 = a3;
  v5 = [(AVCatalystGlassTransportControlsView *)self embeddedExtraContentContainer];

  if (v5 == v4)
  {
    v6 = [v4 isCollapsedOrExcluded];
    v7 = 1.0;
    if (v6)
    {
      v7 = 0.0;
    }

    [v4 setAlpha:v7];
    v8 = [(AVCatalystGlassTransportControlsView *)self isAnimatingScrubInstructions];
    if ((v6 & 1) != 0 || !v8)
    {
      if (![(AVCatalystGlassTransportControlsView *)self isAnimatingScrubInstructions])
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
    v9.super_class = AVCatalystGlassTransportControlsView;
    [(UIView *)&v9 avkit_reevaluateHiddenStateOfItem:v4];
  }
}

- (void)layoutSubviews
{
  v61 = *MEMORY[0x1E69E9840];
  kdebug_trace();
  v58.receiver = self;
  v58.super_class = AVCatalystGlassTransportControlsView;
  [(AVView *)&v58 layoutSubviews];
  v3 = [(AVCatalystGlassTransportControlsView *)self liveBroadcastScrubberLabel];
  [v3 setIncluded:{-[AVCatalystGlassTransportControlsView liveStreamingControlsIncludeScrubber](self, "liveStreamingControlsIncludeScrubber")}];

  v4 = [(AVCatalystGlassTransportControlsView *)self liveBroadcastLabel];
  if ([(AVCatalystGlassTransportControlsView *)self showsLiveStreamingControls])
  {
    v5 = [(AVCatalystGlassTransportControlsView *)self liveStreamingControlsIncludeScrubber]^ 1;
  }

  else
  {
    v5 = 0;
  }

  [v4 setIncluded:v5];

  if ([(AVCatalystGlassTransportControlsView *)self showsLiveStreamingControls])
  {
    v6 = [(AVCatalystGlassTransportControlsView *)self liveStreamingControlsIncludeScrubber];
  }

  else
  {
    v6 = 1;
  }

  v7 = [(AVCatalystGlassTransportControlsView *)self scrubber];
  [v7 setIncluded:v6];

  v8 = [(AVCatalystGlassTransportControlsView *)self elapsedTimeLabel];
  [v8 setIncluded:v6];

  v9 = [(AVCatalystGlassTransportControlsView *)self timeRemainingLabel];
  if (v6)
  {
    v10 = [(AVCatalystGlassTransportControlsView *)self liveStreamingControlsIncludeScrubber]^ 1;
  }

  else
  {
    v10 = 0;
  }

  [v9 setIncluded:v10];

  v11 = [(AVCatalystGlassTransportControlsView *)self elapsedTimeLabel];
  [v11 setShowsLoadingIndicator:{-[AVCatalystGlassTransportControlsView showsLoadingIndicator](self, "showsLoadingIndicator")}];

  v12 = [(AVCatalystGlassTransportControlsView *)self liveBroadcastLabel];
  [v12 setShowsLoadingIndicator:{-[AVCatalystGlassTransportControlsView showsLoadingIndicator](self, "showsLoadingIndicator")}];

  v13 = [(AVCatalystGlassTransportControlsView *)self elapsedTimeLabel];
  [v13 setLoadingIndicatorAlignment:{-[AVCatalystGlassTransportControlsView isDoubleRowLayoutEnabled](self, "isDoubleRowLayoutEnabled") ^ 1}];

  v14 = [(AVCatalystGlassTransportControlsView *)self controlsLayoutView];
  [(AVCatalystGlassTransportControlsView *)self bounds];
  [v14 setFrame:?];

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
    v15 = [(AVCatalystGlassTransportControlsView *)self customItems];
    v16 = [v15 countByEnumeratingWithState:&v50 objects:v59 count:16];
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
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v50 + 1) + 8 * i);
          v21 = [(AVCatalystGlassTransportControlsView *)self isDoubleRowLayoutEnabled];
          if (v21)
          {
            [v20 setCollapsed:1];
          }

          [v20 setIncluded:!v21];
        }

        v17 = [v15 countByEnumeratingWithState:&v50 objects:v59 count:16];
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
    v15 = [(AVCatalystGlassTransportControlsView *)self customItems];
    v22 = [v15 countByEnumeratingWithState:&v54 objects:v60 count:16];
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
            objc_enumerationMutation(v15);
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

        v23 = [v15 countByEnumeratingWithState:&v54 objects:v60 count:16];
      }

      while (v23);
    }
  }

LABEL_37:
  v30 = [(AVCatalystGlassTransportControlsView *)self elapsedTimeLabel];
  v31 = [v30 isCollapsedOrExcluded];

  if (v31)
  {
    v32 = -16.0;
  }

  else
  {
    v32 = -22.0;
  }

  v33 = [(AVCatalystGlassTransportControlsView *)self standardPlayPauseButton];
  [v33 setHitRectInsets:{-16.0, -22.0, -16.0, v32}];

  v34 = [(AVCatalystGlassTransportControlsView *)self customContentTransitioningInfoPanel];
  if (!v34 || ![(AVCatalystGlassTransportControlsView *)self isDoubleRowLayoutEnabled])
  {

    goto LABEL_45;
  }

  v35 = [(AVCatalystGlassTransportControlsView *)self liveBroadcastLabel];
  v36 = [v35 isCollapsedOrExcluded];

  if (v36)
  {
LABEL_45:
    v43 = [(AVCatalystGlassTransportControlsView *)self liveBroadcastLabel];
    v46 = *(MEMORY[0x1E695EFD0] + 16);
    *&v49.a = *MEMORY[0x1E695EFD0];
    *&v49.c = v46;
    *&v49.tx = *(MEMORY[0x1E695EFD0] + 32);
    [v43 setTransform:&v49];
    goto LABEL_46;
  }

  v37 = [(AVCatalystGlassTransportControlsView *)self styleSheet];
  [v37 liveBroadcastLabelTopToBackdropTopDistance];
  v39 = v38;

  v40 = [(AVCatalystGlassTransportControlsView *)self liveBroadcastLabel];
  [v40 intrinsicContentSize];
  v42 = v41;

  v43 = [(AVCatalystGlassTransportControlsView *)self liveBroadcastLabel];
  v44 = [(AVCatalystGlassTransportControlsView *)self scrubber];
  [v44 frame];
  MaxY = CGRectGetMaxY(v63);
  CGAffineTransformMakeTranslation(&v49, 0.0, MaxY - (v39 + v42 * 0.5));
  [v43 setTransform:&v49];

LABEL_46:
  v47 = [(AVCatalystGlassTransportControlsView *)self scrubber];
  [(AVCatalystGlassTransportControlsView *)self extrinsicContentSize];
  [v47 setScrubberParentHeight:v48];

  kdebug_trace();
}

- (void)traitCollectionDidChange:(id)a3
{
  v4.receiver = self;
  v4.super_class = AVCatalystGlassTransportControlsView;
  [(AVCatalystGlassTransportControlsView *)&v4 traitCollectionDidChange:a3];
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

  v10 = [(AVCatalystGlassTransportControlsView *)self controlsLayoutView];
  v11 = [v10 prioritizedSizeThatFitsSize:{v5, v6}];

  [v11 currentTotalSize];
  v13 = v12;
  v14 = [(AVCatalystGlassTransportControlsView *)self controlsLayoutView];
  [v14 contentLayoutMargins];
  v16 = v15;
  v18 = v17;

  v19 = [(AVCatalystGlassTransportControlsView *)self customContentTransitioningInfoPanel];
  if (v19)
  {
    v20 = v19;
    v21 = [(AVCatalystGlassTransportControlsView *)self customContentTransitioningInfoPanel];
    v22 = [v21 isHidden];

    if ((v22 & 1) == 0)
    {
      v34 = [(AVCatalystGlassTransportControlsView *)self customContentTransitioningInfoPanel];
      [(AVCatalystGlassTransportControlsView *)self frame];
      [v34 systemLayoutSizeFittingSize:{v39, v40}];
      v23 = v41;
LABEL_16:

      goto LABEL_17;
    }
  }

  v23 = 0.01;
  if ([(AVCatalystGlassTransportControlsView *)self isShowingScrubInstructions]&& [(AVCatalystGlassTransportControlsView *)self isDoubleRowLayoutEnabled])
  {
    v24 = [(AVCatalystGlassTransportControlsView *)self styleSheet];
    [v24 doubleRowLayoutMargins];
    v26 = v25;
    v27 = [(AVCatalystGlassTransportControlsView *)self styleSheet];
    [v27 doubleRowLayoutMarginsWhenShowingScrubInstructions];
    v29 = v26 - v28;

    if (v29 >= 0.0)
    {
      v30 = v29;
    }

    else
    {
      v30 = -v29;
    }

    v31 = [(AVCatalystGlassTransportControlsView *)self styleSheet];
    [v31 spacingBetweenScrubInstructionsAndScrubber];
    v33 = v32;

    v34 = [(AVCatalystGlassTransportControlsView *)self scrubInstructionsLabel];
    v35 = [(AVCatalystGlassTransportControlsView *)self embeddedExtraContentContainer];
    [v35 bounds];
    [v34 sizeThatFits:{v36, v37}];
    v23 = v38 - (v30 + v33);

    goto LABEL_16;
  }

LABEL_17:
  v42 = v13 + v16 + v18;
  v43 = [(AVCatalystGlassTransportControlsView *)self styleSheet];
  [v43 defaultPlatterHeight];
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
  v3 = [MEMORY[0x1E69DC888] clearColor];
  [(AVCatalystGlassTransportControlsView *)self setBackgroundColor:v3];
}

- (void)setPrefersFlexibleWidthScrubber:(BOOL)a3
{
  if (self->_prefersFlexibleWidthScrubber != a3)
  {
    self->_prefersFlexibleWidthScrubber = a3;
    if (self->_scrubber)
    {
      v4 = [(AVCatalystGlassTransportControlsView *)self prefersFlexibleWidthScrubber];
      v5 = [(AVCatalystScrubber *)self->_scrubber layoutAttributes];
      [v5 setHasFlexibleContentSize:v4];

      if (v4)
      {
        v6 = *(MEMORY[0x1E695F060] + 8);
      }

      else
      {
        v6 = 0.0;
      }

      if (v4)
      {
        v7 = *MEMORY[0x1E695F060];
      }

      else
      {
        v7 = 168.0;
      }

      if (v4)
      {
        v8 = *MEMORY[0x1E695F060];
      }

      else
      {
        v8 = 336.0;
      }

      v9 = [(AVCatalystScrubber *)self->_scrubber layoutAttributes];
      [v9 setMaximumSize:{v8, v6}];

      v10 = [(AVCatalystScrubber *)self->_scrubber layoutAttributes];
      [v10 setMinimumSize:{v7, v6}];

      [(AVCatalystGlassTransportControlsView *)self invalidateIntrinsicContentSize];
      v11 = [(AVCatalystGlassTransportControlsView *)self superview];
      [v11 avkit_intrinsicContentSizeOfSubviewWasInvalidated:self];
    }
  }
}

- (double)layoutHeightThatFitsRowsStartingWithRow:(unint64_t)a3
{
  v4 = [(AVCatalystGlassTransportControlsView *)self controlsLayoutView];
  [v4 layoutHeightThatFitsRowsStartingWithRow:a3];
  v6 = v5;

  return v6;
}

- (void)reevaluateHiddenStateOfAllItems
{
  v2 = [(AVCatalystGlassTransportControlsView *)self controlsLayoutView];
  [v2 reevaluateHiddenStateOfAllItems];
}

- (void)setStyleSheet:(id)a3
{
  v7 = a3;
  v5 = [(AVCatalystGlassTransportControlsView *)self styleSheet];
  v6 = [v5 isEqual:v7];

  if ((v6 & 1) == 0)
  {
    objc_storeStrong(&self->_styleSheet, a3);
    [(AVCatalystGlassTransportControlsView *)self _updateFontSizes];
    [(AVCatalystGlassTransportControlsView *)self setNeedsLayout];
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
    [(AVCatalystGlassTransportControlsView *)self setNeedsLayout];
    customContentTransitioningInfoPanel = [(AVCatalystGlassTransportControlsView *)self isHiddenOrHasHiddenAncestor];
    v5 = v7;
    if ((customContentTransitioningInfoPanel & 1) == 0)
    {
      customContentTransitioningInfoPanel = [(AVCatalystGlassTransportControlsView *)self layoutIfNeeded];
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

    [(AVCatalystGlassTransportControlsView *)self invalidateIntrinsicContentSize];
    [(AVCatalystGlassTransportControlsView *)self setNeedsLayout];
  }
}

- (void)setLiveStreamingControlsIncludeScrubber:(BOOL)a3
{
  if (self->_liveStreamingControlsIncludeScrubber != a3)
  {
    self->_liveStreamingControlsIncludeScrubber = a3;
    [(AVCatalystGlassTransportControlsView *)self setNeedsLayout];
  }
}

- (void)setShowsLiveStreamingControls:(BOOL)a3
{
  if (self->_showsLiveStreamingControls != a3)
  {
    self->_showsLiveStreamingControls = a3;
    [(AVCatalystGlassTransportControlsView *)self invalidateIntrinsicContentSize];

    [(AVCatalystGlassTransportControlsView *)self setNeedsLayout];
  }
}

- (void)setShowsLoadingIndicator:(BOOL)a3
{
  if (self->_showsLoadingIndicator != a3)
  {
    self->_showsLoadingIndicator = a3;
    [(AVCatalystGlassTransportControlsView *)self setNeedsLayout];
  }
}

- (void)setDoubleRowLayoutEnabled:(BOOL)a3
{
  if (self->_doubleRowLayoutEnabled != a3)
  {
    self->_doubleRowLayoutEnabled = a3;
    [(AVCatalystGlassTransportControlsView *)self invalidateIntrinsicContentSize];

    [(AVCatalystGlassTransportControlsView *)self setNeedsLayout];
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

    [(AVCatalystGlassTransportControlsView *)self setNeedsLayout];
  }
}

- (AVCatalystGlassTransportControlsView)initWithFrame:(CGRect)a3 styleSheet:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v90 = *MEMORY[0x1E69E9840];
  v10 = a4;
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
  v12 = [(AVView *)&v83 initWithFrame:x, y, width, height];
  v13 = v12;
  if (v12)
  {
    v12->_included = 1;
    objc_storeStrong(&v12->_styleSheet, a4);
    v14 = objc_alloc_init(AVCatalystScrubber);
    scrubber = v13->_scrubber;
    v13->_scrubber = v14;

    v16 = [(AVCatalystScrubber *)v13->_scrubber layoutAttributes];
    [v16 setAccessibilityIdentifier:@"Scrubber"];

    v17 = [(AVCatalystScrubber *)v13->_scrubber layoutAttributes];
    [v17 setHasFlexibleContentSize:1];

    v18 = [(AVCatalystScrubber *)v13->_scrubber layoutAttributes];
    [v18 setMaximumSize:{336.0, 30.0}];

    v19 = [(AVCatalystScrubber *)v13->_scrubber layoutAttributes];
    [v19 setMinimumSize:{168.0, 30.0}];

    [(AVCatalystScrubber *)v13->_scrubber setDelegate:v13];
    v20 = v13->_scrubber;
    v21 = [(AVCatalystGlassStyleSheet *)v13->_styleSheet sliderMinValueTrackColor];
    [(AVCatalystScrubber *)v20 setTintColor:v21];

    [(AVCatalystScrubber *)v13->_scrubber addTarget:v13 action:sel_beginScrubbing_ forControlEvents:1];
    [(AVCatalystScrubber *)v13->_scrubber addTarget:v13 action:sel_endScrubbing_ forControlEvents:448];
    [(AVCatalystScrubber *)v13->_scrubber addTarget:v13 action:sel_scrubberValueChanged_ forControlEvents:4096];
    v22 = __65__AVCatalystGlassTransportControlsView_initWithFrame_styleSheet___block_invoke(0, @"Time Elapsed");
    elapsedTimeLabel = v13->_elapsedTimeLabel;
    v13->_elapsedTimeLabel = v22;

    v24 = v13->_elapsedTimeLabel;
    v25 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(AVCatalystGlassLabel *)v24 setTintColor:v25];

    [(AVCatalystGlassLabel *)v13->_elapsedTimeLabel setPreferredVibrancy:1];
    v26 = __65__AVCatalystGlassTransportControlsView_initWithFrame_styleSheet___block_invoke(0, @"Time Remaining");
    timeRemainingLabel = v13->_timeRemainingLabel;
    v13->_timeRemainingLabel = v26;

    v28 = v13->_timeRemainingLabel;
    v29 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(AVCatalystGlassLabel *)v28 setTintColor:v29];

    [(AVCatalystGlassLabel *)v13->_timeRemainingLabel setPreferredVibrancy:1];
    v30 = __65__AVCatalystGlassTransportControlsView_initWithFrame_styleSheet___block_invoke(@"PLAYBACK_CONTROLS_VIEW_CONTROLLER_LIVE_BROADCAST_LABEL_TEXT", @"Live Broadcast");
    liveBroadcastLabel = v13->_liveBroadcastLabel;
    v13->_liveBroadcastLabel = v30;

    [(AVCatalystGlassLabel *)v13->_liveBroadcastLabel setLoadingIndicatorAlignment:1];
    v32 = [(AVCatalystGlassLabel *)v13->_liveBroadcastLabel layoutAttributes];
    [v32 setHasFlexibleContentSize:1];

    v33 = __65__AVCatalystGlassTransportControlsView_initWithFrame_styleSheet___block_invoke(@"PLAYBACK_CONTROLS_VIEW_CONTROLLER_LIVE_LABEL_TEXT", @"Live");
    liveBroadcastScrubberLabel = v13->_liveBroadcastScrubberLabel;
    v13->_liveBroadcastScrubberLabel = v33;

    v35 = objc_alloc_init(AVTouchIgnoringView);
    embeddedExtraContentContainer = v13->_embeddedExtraContentContainer;
    v13->_embeddedExtraContentContainer = v35;

    [(AVTouchIgnoringView *)v13->_embeddedExtraContentContainer setClipsToBounds:1];
    [(AVTouchIgnoringView *)v13->_embeddedExtraContentContainer setCollapsed:1];
    [(AVTouchIgnoringView *)v13->_embeddedExtraContentContainer setIncluded:0];
    v37 = [(AVTouchIgnoringView *)v13->_embeddedExtraContentContainer layoutAttributes];
    [v37 setHasFlexibleContentSize:1];

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

    v54 = [(AVButton *)v13->_controlOverflowButton layoutAttributes];
    [v54 setCanSubstituteOtherAttributes:1];

    v55 = [AVButton buttonWithAccessibilityIdentifier:@"Media Selection" isFirstGeneration:1];
    mediaSelectionButton = v13->_mediaSelectionButton;
    v13->_mediaSelectionButton = v55;

    v57 = [(AVButton *)v13->_mediaSelectionButton layoutAttributes];
    [v57 setCanOverflowToAuxiliaryMenu:1];

    v58 = [AVButton buttonWithAccessibilityIdentifier:@"Playback Speed" isFirstGeneration:1];
    playbackSpeedButton = v13->_playbackSpeedButton;
    v13->_playbackSpeedButton = v58;

    v60 = [(AVButton *)v13->_playbackSpeedButton layoutAttributes];
    [v60 setCanOverflowToAuxiliaryMenu:1];

    v61 = [(AVButton *)v13->_playbackSpeedButton layoutAttributes];
    [v61 setCanOnlyAppearInControlOverflowMenu:1];

    v62 = [AVButton buttonWithAccessibilityIdentifier:@"Play/Pause" isFirstGeneration:1];
    standardPlayPauseButton = v13->_standardPlayPauseButton;
    v13->_standardPlayPauseButton = v62;

    v64 = [AVButton buttonWithAccessibilityIdentifier:@"Skip Forward" isFirstGeneration:1];
    skipForwardButton = v13->_skipForwardButton;
    v13->_skipForwardButton = v64;

    v66 = [AVButton buttonWithAccessibilityIdentifier:@"Skip Backward" isFirstGeneration:1];
    skipBackButton = v13->_skipBackButton;
    v13->_skipBackButton = v66;

    v68 = [(AVCatalystGlassTransportControlsView *)v13 effectiveUserInterfaceLayoutDirection];
    if (v68)
    {
      v69 = @"Skip To Next";
    }

    else
    {
      v69 = @"Skip To Previous";
    }

    if (v68)
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
    v80 = [(AVCatalystGlassTransportControlsView *)v13 detachedExtraContentLayoutView];
    [v80 setHidden:1];

    v81 = [(AVCatalystGlassTransportControlsView *)v13 detachedScrubInstructionsBackdropLabel];
    [v81 setHidden:1];

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