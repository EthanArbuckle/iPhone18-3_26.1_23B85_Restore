@interface RCRecordingView
- ($F24F406B2B787EFB06265DBA3D28CBD5)currentTrackTimeRange;
- (BOOL)_touchIsInExcludedView:(id)a3;
- (BOOL)accessibilityPerformMagicTap;
- (BOOL)canSaveTrimChanges;
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (BOOL)hasCustomizedPlaybackSettings;
- (BOOL)shouldSelectFullTitleAtBeginEditing;
- (BOOL)textFieldIsBeingEdited;
- (NSDate)creationDate;
- (NSString)recordingTitle;
- (RCBottomControlsContainerView)bottomControlsContainerView;
- (RCCardPresentationDelegate)cardPresentationDelegate;
- (RCRecordingDescriptionView)descriptionView;
- (RCRecordingView)initWithRecordButtonRepository:(id)a3 interactionHandler:(id)a4;
- (RCRecordingViewDelegate)viewDelegate;
- (RCShuttleBar)shuttleBar;
- (RCTimeLabel)currentTimeLabel;
- (UIButton)cancelButton;
- (UIButton)deleteSelectionButton;
- (UIButton)moreActionsButton;
- (UIButton)playbackSettingsButton;
- (UIButton)transcriptionButton;
- (UIButton)trimToSelectionButton;
- (UIStackView)mainContainerStackView;
- (UITextField)textFieldBeingEdited;
- (UIView)bottomSpacerView;
- (UIView)buttonsAndDescriptionContainerView;
- (UIView)centerContentContainerView;
- (UIView)overviewWaveformContainerView;
- (UIView)recordButton;
- (UIView)topSpacerView;
- (UIView)transcriptView;
- (_TtC10VoiceMemos12RCDoneButton)doneButton;
- (double)bottomAccessoryDisplayStyleFixedHeight;
- (double)customDetentFixedHeight:(BOOL)a3 includeBottomSafeArea:(BOOL)a4;
- (float)editingProgress;
- (id)_bottomElementsToHide;
- (id)createTranscriptViewExpansionAnimator;
- (int64_t)_recordButtonStateForRecordingControlState:(int64_t)a3;
- (int64_t)_recordingControlStateForRecordButtonState:(int64_t)a3;
- (int64_t)playControlState;
- (int64_t)recordingControlState;
- (unint64_t)_displayOptionForView:(id)a3;
- (void)_addDoneAndCancelButtonsToBottomControlsContainerView;
- (void)_addLabelsToWaveformOverview:(id)a3 containerView:(id)a4;
- (void)_addPlaybackSettingsButtonToBottomControlsContainerView;
- (void)_addRecordButtonToBottomControlsContainerView;
- (void)_addShuttleBarToBottomControlsContainerView;
- (void)_addSubviewsOfView:(id)a3 includingTopLevelView:(BOOL)a4 toMutableArray:(id)a5;
- (void)_addTranscriptionButtonToBottomControlsContainerView;
- (void)_addTrimDeleteButtonsToBottomControlsContainerView;
- (void)_addTrimDeleteButtonsToLeadingAndTrailingEdge;
- (void)_addTrimDeleteButtonsToLeadingEdge;
- (void)_adjustBackgroundColorForDisplayStyle:(int64_t)a3;
- (void)_adjustCancelAndDoneButtonsWidth;
- (void)_adjustTraitOverridesForDisplayStyle:(int64_t)a3;
- (void)_adjustTrimAndDeleteSelectionButtonsSize;
- (void)_applyOverviewWaveformViewConstraints;
- (void)_classSpecificReset;
- (void)_classSpecificSetDisplayStyle:(int64_t)a3;
- (void)_dimRecordingDescriptionView:(BOOL)a3 animated:(BOOL)a4;
- (void)_displayPlaybackSettings;
- (void)_dropView:(id)a3;
- (void)_dropView:(id)a3 fromAncestor:(id)a4;
- (void)_handleDeleteSelection;
- (void)_handleTapToFullscreen:(id)a3;
- (void)_handleTrimToSelection;
- (void)_primeFramesOfHiddenItems;
- (void)_setupBottomControlsContainerViewConstraints;
- (void)_setupBottomSpacerViewConstraints;
- (void)_setupButtonsAndDescriptionContainerViewConstraints;
- (void)_setupCenterContentContainerViewConstraints;
- (void)_setupEditingToolbar;
- (void)_setupOverviewBeginEndTimeLabel;
- (void)_setupOverviewWaveformContainerViewConstraints;
- (void)_setupTapGestureRecognizer;
- (void)_setupTopSpacerViewConstraints;
- (void)_showHideViewsForDisplayOptions:(unint64_t)a3;
- (void)_showTrimDeleteSelectionButtonsIfNeeded:(BOOL)a3;
- (void)_styleCurrentTimeLabel;
- (void)_styleShuttleBar;
- (void)_styleView;
- (void)_swapCenterContentTimeIndices:(BOOL)a3;
- (void)_switchToCompact;
- (void)_switchToFullScreen;
- (void)_syncCenterContentContainerViewState;
- (void)_syncTapGestureRecognizerEnablement;
- (void)_syncTranscriptViewState;
- (void)_syncViewsToState;
- (void)_updateAccessibilityElements;
- (void)_updateArrangedSubviews;
- (void)_updateBottomControlsContainerViewSubviews;
- (void)_updateCenterContentContainerSubviewConstraints;
- (void)_updateCurrentTimeLabelForTime:(double)a3;
- (void)_updateDisplayStyleForHorizontalSizeClassChanges;
- (void)_updateDoneButtonState;
- (void)_updateMoreButtonMenu;
- (void)_updateRecordButtonStateForRecordingViewState:(int64_t)a3;
- (void)_updateRecordingDescriptionViewForDuration:(double)a3;
- (void)_updateShuttleBarEnablement;
- (void)_updateSpacingBetweenArrangedSubviews;
- (void)_updateSubviewVisibility;
- (void)_updateToolbarsActivityMode:(int64_t)a3;
- (void)_updateTranscriptionButtonVisibility;
- (void)_updateVerticalContentHuggingAndCompressionResistancePriorities;
- (void)applyDimmingColorToProgressOverlay;
- (void)assignActionOnDoneButton:(id)a3;
- (void)assignActionOnDoneButtonForModernToolbar;
- (void)cancelButtonTapped;
- (void)cancelTextEditing;
- (void)cleanupAfterDismiss;
- (void)completePresent;
- (void)deviceTranscriptionSupportDidChange:(BOOL)a3;
- (void)didBeginEditingInTextField:(id)a3;
- (void)handleUpdateTitle:(id)a3;
- (void)layoutSubviews;
- (void)performControlsAction:(int64_t)a3 position:(double)a4 source:(id)a5;
- (void)prepareForDismiss;
- (void)prepareForPresent:(BOOL)a3;
- (void)reset;
- (void)resetTopBottomSpacers;
- (void)restyle;
- (void)setBounds:(CGRect)a3;
- (void)setCenterContentViewState:(int64_t)a3;
- (void)setCreationDate:(id)a3;
- (void)setCurrentTime:(double)a3;
- (void)setDisplayStyle:(int64_t)a3;
- (void)setEditingInFlight:(BOOL)a3;
- (void)setEditingProgress:(float)a3;
- (void)setHasCustomizedPlaybackSettings:(BOOL)a3;
- (void)setHasMultipleTracks:(BOOL)a3;
- (void)setHasNoTranscribableContent:(BOOL)a3;
- (void)setHasSpatialRecording:(BOOL)a3;
- (void)setHasTranscription:(BOOL)a3;
- (void)setMoreActionsAndPlaybackSettingsButtonsHidden:(BOOL)a3;
- (void)setOverviewWaveformView:(id)a3;
- (void)setPlayControlState:(int64_t)a3;
- (void)setRecordingControlState:(int64_t)a3;
- (void)setRecordingDuration:(double)a3;
- (void)setRecordingTitle:(id)a3;
- (void)setRecordingViewState:(int64_t)a3;
- (void)setRecordingViewState:(int64_t)a3 animated:(BOOL)a4 force:(BOOL)a5;
- (void)setSaveRecordingAction:(id)a3;
- (void)setTranscriptView:(id)a3;
- (void)setTranscriptViewState:(int64_t)a3;
- (void)setTrimEnabled:(BOOL)a3;
- (void)setWaveformView:(id)a3;
- (void)setupSubviews;
- (void)showAlertForSaveAsNew:(id)a3;
- (void)toggleFullCompact;
- (void)toggleTranscriptView:(id)a3;
- (void)trimSaveStateChanged:(BOOL)a3;
- (void)undoStateChanged:(BOOL)a3 isNewRecording:(BOOL)a4;
- (void)updateAccessibilityForRecordingViewState:(int64_t)a3;
- (void)updateForEditingStart;
- (void)updateForRecordingEnd:(BOOL)a3;
- (void)updateForRecordingStart;
- (void)updateForSizeChange;
- (void)updateMoreActionsAndPlaybackSettingButtonVisibility;
- (void)updateRecordButtonViewStateWithCurrentTime:(double)a3;
- (void)updateTopBottomSpacersForDismiss;
- (void)updateTopBottomSpacersForPresent;
- (void)updateTrackState:(unint64_t)a3;
@end

@implementation RCRecordingView

- (UIButton)playbackSettingsButton
{
  playbackSettingsButton = self->_playbackSettingsButton;
  if (!playbackSettingsButton)
  {
    v4 = +[RCRecorderStyleProvider sharedStyleProvider];
    v5 = +[_TtC10VoiceMemos21RCToggleButtonFactory createPlaybackSettingsButton];
    [(UIButton *)v5 setAccessibilityIdentifier:@"RecordingView/PlaybackSettingsButton"];
    v6 = [v4 editingToolbarMaximumContentSizeCategory];
    [(UIButton *)v5 setMaximumContentSizeCategory:v6];

    [(UIButton *)v5 setSelected:[(RCRecordingView *)self hasCustomizedPlaybackSettings]];
    [(RCRecordingView *)self setClipsToBounds:0];
    [v4 playbackSettingsButtonExtraActivePoints];
    [(UIButton *)v5 _setTouchInsets:-v7, -v7, -v7, -v7];
    [(UIButton *)v5 addTarget:self action:"_displayPlaybackSettings" forControlEvents:64];
    v8 = self->_playbackSettingsButton;
    self->_playbackSettingsButton = v5;

    playbackSettingsButton = self->_playbackSettingsButton;
  }

  return playbackSettingsButton;
}

- (BOOL)hasCustomizedPlaybackSettings
{
  v2 = [(RCRecordingView *)self editingToolbarProvider];
  v3 = [v2 hasCustomizedPlaybackSettings];

  return v3;
}

- (UIButton)moreActionsButton
{
  moreActionsButton = self->_moreActionsButton;
  if (!moreActionsButton)
  {
    v4 = [UIButton buttonWithType:1];
    v5 = +[RCRecorderStyleProvider sharedStyleProvider];
    v6 = [v5 editingToolbarImageSymbolConfiguration];
    v7 = [v5 ellipsisCircleImage];
    v8 = [v7 imageWithConfiguration:v6];

    [(UIButton *)v4 setImage:v8 forState:0];
    v9 = [v5 editingToolbarMaximumContentSizeCategory];
    [(UIButton *)v4 setMaximumContentSizeCategory:v9];

    v10 = +[NSBundle mainBundle];
    v11 = [v10 localizedStringForKey:@"AX_MORE_ACTIONS" value:&stru_100295BB8 table:0];

    [(UIButton *)v4 setAccessibilityLabel:v11];
    [(UIButton *)v4 setLargeContentTitle:v11];
    v12 = self->_moreActionsButton;
    self->_moreActionsButton = v4;

    [(RCRecordingView *)self _updateMoreButtonMenu];
    moreActionsButton = self->_moreActionsButton;
  }

  return moreActionsButton;
}

- (void)_updateMoreButtonMenu
{
  v3 = [(RCRecordingView *)self editingToolbarProvider];

  if (v3)
  {
    v4 = +[_TtC10VoiceMemos33TranscriptionAvailabilityProvider shared];
    v5 = [v4 deviceIsSupported];

    if (v5)
    {
      v6 = [(RCRecordingView *)self hasTranscription];
    }

    else
    {
      v6 = 0;
    }

    v7 = [(RCRecordingView *)self centerContentViewState]== 1;
    v8 = [_TtC10VoiceMemos36RCRecordingCardMoreButtonMenuCreator alloc];
    v9 = [(RCRecordingView *)self descriptionView];
    v10 = [v9 UUID];
    v11 = [(RCRecordingCardMoreButtonMenuCreator *)v8 initWithRecordingUUID:v10 actionDelegate:self];
    [(RCRecordingView *)self setMoreButtonMenuCreator:v11];

    v12 = [(RCRecordingView *)self moreButtonMenuCreator];
    v13 = [(RCRecordingView *)self hasMultipleTracks];
    v14 = [(RCRecordingView *)self editingToolbarProvider];
    v16 = [v12 createMenuWithDisplayCopyTranscriptAction:v6 hideTrimItem:v7 hasMultipleTracks:v13 showUndoItem:objc_msgSend(v14 showShareItem:{"canUndo"), 0}];

    v15 = [(RCRecordingView *)self editingToolbarProvider];
    [v15 setMoreActionsMenu:v16];
  }
}

- (RCRecordingDescriptionView)descriptionView
{
  descriptionView = self->_descriptionView;
  if (!descriptionView)
  {
    v4 = [RCRecordingDescriptionView descriptionViewWithStyle:0];
    [(RCRecordingDescriptionView *)v4 setRecordingDescriptionViewDelegate:self];
    v5 = self->_descriptionView;
    self->_descriptionView = v4;

    descriptionView = self->_descriptionView;
  }

  return descriptionView;
}

- (void)_setupEditingToolbar
{
  v3 = [[_TtC10VoiceMemos34RCRecordingViewNavigationBarHelper alloc] initWithNavigationItem:0];
  [(RCRecordingView *)self _updateMoreButtonMenu];
  [(RCRecordingView *)self _updateDoneButtonActionForModernToolbar];
  [(RCRecordingView *)self setEditingToolbarProvider:v3];
  [(RCRecordingViewNavigationBarHelper *)v3 setControlsActionDelegate:self];
}

- (void)_updateTranscriptionButtonVisibility
{
  v3 = +[_TtC10VoiceMemos33TranscriptionAvailabilityProvider shared];
  v4 = [v3 deviceIsSupported];

  v5 = +[RCRecorderStyleProvider sharedStyleProvider];
  v6 = [v5 hostsTranscriptionButtonInToolbar];

  v7 = 1;
  if (v4 && (v6 & 1) == 0 && [(RCRecordingView *)self displayStyle]== 3)
  {
    v7 = [(RCRecordingView *)self recordingViewState]== 8;
  }

  v8 = [(RCRecordingView *)self transcriptionButton];
  [v8 setHidden:v7];
}

- (UIButton)transcriptionButton
{
  transcriptionButton = self->_transcriptionButton;
  if (!transcriptionButton)
  {
    v4 = +[RCRecorderStyleProvider sharedStyleProvider];
    v5 = +[_TtC10VoiceMemos21RCToggleButtonFactory createTranscriptionButton];
    [(UIButton *)v5 setAccessibilityIdentifier:@"RecordingView/TranscriptionButton"];
    [(UIButton *)v5 addTarget:self action:"toggleTranscriptView:" forControlEvents:64];
    v6 = [v4 editingToolbarMaximumContentSizeCategory];
    [(UIButton *)v5 setMaximumContentSizeCategory:v6];

    v7 = self->_transcriptionButton;
    self->_transcriptionButton = v5;

    [(RCRecordingView *)self _updateTranscriptionButtonVisibility];
    transcriptionButton = self->_transcriptionButton;
  }

  return transcriptionButton;
}

- (_TtC10VoiceMemos12RCDoneButton)doneButton
{
  doneButton = self->_doneButton;
  if (!doneButton)
  {
    v4 = [_TtC10VoiceMemos12RCDoneButton buttonWithType:1];
    [(RCDoneButton *)v4 setAccessibilityIdentifier:@"RecordingView/DoneButton"];
    [(RCDoneButton *)v4 setIsAccessibilityElement:1];
    v5 = self->_doneButton;
    self->_doneButton = v4;
    v6 = v4;

    [(RCRecordingView *)self assignActionOnDoneButton:v6];
    doneButton = self->_doneButton;
  }

  return doneButton;
}

- (UIButton)cancelButton
{
  cancelButton = self->_cancelButton;
  if (!cancelButton)
  {
    v4 = [UIButton buttonWithType:1];
    v5 = +[UIButtonConfiguration glassButtonConfiguration];
    v6 = +[NSBundle mainBundle];
    v7 = [v6 localizedStringForKey:@"CANCEL" value:&stru_100295BB8 table:0];
    [v5 setTitle:v7];

    v8 = +[UIColor labelColor];
    [v5 setBaseForegroundColor:v8];

    [(UIButton *)v4 setConfiguration:v5];
    [(UIButton *)v4 setPointerInteractionEnabled:1];
    [(UIButton *)v4 setAccessibilityIdentifier:@"RecordingView/CancelButton"];
    [(UIButton *)v4 setHidden:1];
    [(UIButton *)v4 addTarget:self action:"cancelButtonTapped" forControlEvents:64];
    v9 = +[RCRecorderStyleProvider sharedStyleProvider];
    v10 = [v9 buttonsMaximumContentSizeCategory];
    [(UIButton *)v4 setMaximumContentSizeCategory:v10];

    v11 = self->_cancelButton;
    self->_cancelButton = v4;

    cancelButton = self->_cancelButton;
  }

  return cancelButton;
}

- (UIButton)trimToSelectionButton
{
  trimToSelectionButton = self->_trimToSelectionButton;
  if (!trimToSelectionButton)
  {
    v4 = [[_TtC10VoiceMemos12RCTrimButton alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
    [(RCTrimButton *)v4 setAccessibilityIdentifier:@"RecordingView/TrimToSelectionButton"];
    [(RCTrimButton *)v4 addTarget:self action:"_handleTrimToSelection" forControlEvents:64];
    v5 = +[RCRecorderStyleProvider sharedStyleProvider];
    v6 = [v5 buttonsMaximumContentSizeCategory];
    [(RCTrimButton *)v4 setMaximumContentSizeCategory:v6];

    v7 = self->_trimToSelectionButton;
    self->_trimToSelectionButton = &v4->super.super;

    trimToSelectionButton = self->_trimToSelectionButton;
  }

  return trimToSelectionButton;
}

- (UIButton)deleteSelectionButton
{
  deleteSelectionButton = self->_deleteSelectionButton;
  if (!deleteSelectionButton)
  {
    v4 = [[_TtC10VoiceMemos14RCDeleteButton alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
    [(RCDeleteButton *)v4 setAccessibilityIdentifier:@"RecordingView/DeleteSelectionButton"];
    [(RCDeleteButton *)v4 addTarget:self action:"_handleDeleteSelection" forControlEvents:64];
    v5 = +[RCRecorderStyleProvider sharedStyleProvider];
    v6 = [v5 buttonsMaximumContentSizeCategory];
    [(RCDeleteButton *)v4 setMaximumContentSizeCategory:v6];

    v7 = self->_deleteSelectionButton;
    self->_deleteSelectionButton = &v4->super.super;

    deleteSelectionButton = self->_deleteSelectionButton;
  }

  return deleteSelectionButton;
}

- (RCShuttleBar)shuttleBar
{
  shuttleBar = self->_shuttleBar;
  if (!shuttleBar)
  {
    v4 = [[RCShuttleBar alloc] initWithShuttleBarStyle:1];
    v5 = self->_shuttleBar;
    self->_shuttleBar = v4;
    v6 = v4;

    v7 = +[RCRecorderStyleProvider sharedStyleProvider];
    [(RCShuttleBar *)v6 setPresentedControlsOptions:0];
    [(RCShuttleBar *)v6 setActionDelegate:self];
    v8 = [v7 transportControlsColorForRecordingCard];
    [(RCShuttleBar *)v6 setControlsColor:v8];

    v9 = [v7 transportButtonAnimationCircleColor];
    [(RCShuttleBar *)v6 setControlsAnimationColor:v9];

    [(RCRecordingView *)self _updateShuttleBarEnablement];
    [(RCRecordingView *)self _primeFramesOfHiddenItems];

    shuttleBar = self->_shuttleBar;
  }

  return shuttleBar;
}

- (void)_updateShuttleBarEnablement
{
  v3 = [(RCRecordingView *)self recordingViewState]!= 0;
  v4 = ![(RCRecordingView *)self _doingSomeKindOfCapture];
  v5 = [(RCRecordingView *)self shuttleBar];
  [v5 setEnabled:v3 & v4];
}

- (void)_primeFramesOfHiddenItems
{
  v3 = [(RCRecordingView *)self bottomControlsContainerView];
  [v3 frame];
  v5 = v4;
  [(RCRecordingView *)self frame];
  v7 = v6;

  v8 = [(RCRecordingView *)self shuttleBar];
  [v8 setFrame:{0.0, v5, v7, 1.0}];
  [v8 layoutSubviews];
}

- (RCBottomControlsContainerView)bottomControlsContainerView
{
  bottomControlsContainerView = self->_bottomControlsContainerView;
  if (!bottomControlsContainerView)
  {
    v4 = [[RCBottomControlsContainerView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
    v5 = objc_alloc_init(UILargeContentViewerInteraction);
    [(RCBottomControlsContainerView *)v4 addInteraction:v5];

    v6 = self->_bottomControlsContainerView;
    self->_bottomControlsContainerView = v4;

    bottomControlsContainerView = self->_bottomControlsContainerView;
  }

  return bottomControlsContainerView;
}

- (void)assignActionOnDoneButtonForModernToolbar
{
  v3 = [(RCRecordingView *)self shouldSaveAsNew];
  v4 = [(RCRecordingView *)self editingToolbarProvider];
  [v4 setDoneButtonItemShowsMenu:v3];
}

- (void)_updateBottomControlsContainerViewSubviews
{
  v20 = +[RCRecorderStyleProvider sharedStyleProvider];
  v3 = [(RCRecordingView *)self recordingViewState];
  if ([v20 hostsTransportAndDoneButtonInBottomSection])
  {
    [(RCRecordingView *)self _addShuttleBarToBottomControlsContainerView];
  }

  else
  {
    v4 = [(RCRecordingView *)self shuttleBar];
    v5 = [(RCRecordingView *)self bottomControlsContainerView];
    [(RCRecordingView *)self _dropView:v4 fromAncestor:v5];
  }

  if (![(RCRecordingView *)self _bottomControlsSupportRecording]|| v3 == 8)
  {
    v6 = [(RCRecordingView *)self recordButton];
    v7 = [(RCRecordingView *)self bottomControlsContainerView];
    [(RCRecordingView *)self _dropView:v6 fromAncestor:v7];
  }

  else
  {
    [(RCRecordingView *)self _addRecordButtonToBottomControlsContainerView];
  }

  if (-[RCRecordingView _bottomControlsSupportRecording](self, "_bottomControlsSupportRecording") && -[RCRecordingView displayStyle](self, "displayStyle") == 3 && [v20 hostsTransportAndDoneButtonInBottomSection])
  {
    [(RCRecordingView *)self _addDoneAndCancelButtonsToBottomControlsContainerView];
  }

  else
  {
    v8 = [(RCRecordingView *)self doneButton];
    v9 = [(RCRecordingView *)self bottomControlsContainerView];
    [(RCRecordingView *)self _dropView:v8 fromAncestor:v9];

    v10 = [(RCRecordingView *)self cancelButton];
    v11 = [(RCRecordingView *)self bottomControlsContainerView];
    [(RCRecordingView *)self _dropView:v10 fromAncestor:v11];
  }

  if (!-[RCRecordingView _bottomControlsSupportRecording](self, "_bottomControlsSupportRecording") || [v20 hostsTransportAndDoneButtonInBottomSection] || v3 == 8)
  {
    v12 = [(RCRecordingView *)self playbackSettingsButton];
    v13 = [(RCRecordingView *)self bottomControlsContainerView];
    [(RCRecordingView *)self _dropView:v12 fromAncestor:v13];

    if (v3 == 8)
    {
      [(RCRecordingView *)self _addTrimDeleteButtonsToBottomControlsContainerView];
      [v20 hostsTransportAndDoneButtonInBottomSection];
      goto LABEL_21;
    }
  }

  else
  {
    [(RCRecordingView *)self _addPlaybackSettingsButtonToBottomControlsContainerView];
  }

  v14 = [(RCRecordingView *)self deleteSelectionButton];
  v15 = [(RCRecordingView *)self bottomControlsContainerView];
  [(RCRecordingView *)self _dropView:v14 fromAncestor:v15];

  v16 = [(RCRecordingView *)self trimToSelectionButton];
  v17 = [(RCRecordingView *)self bottomControlsContainerView];
  [(RCRecordingView *)self _dropView:v16 fromAncestor:v17];

  if (([v20 hostsTransportAndDoneButtonInBottomSection] & 1) == 0)
  {
    [(RCRecordingView *)self _addTranscriptionButtonToBottomControlsContainerView];
    goto LABEL_22;
  }

LABEL_21:
  v18 = [(RCRecordingView *)self transcriptionButton];
  v19 = [(RCRecordingView *)self bottomControlsContainerView];
  [(RCRecordingView *)self _dropView:v18 fromAncestor:v19];

LABEL_22:
}

- (void)_addRecordButtonToBottomControlsContainerView
{
  v3 = +[RCRecorderStyleProvider sharedStyleProvider];
  if ([v3 hostsTransportAndDoneButtonInBottomSection] && -[RCRecordingView displayStyle](self, "displayStyle") == 3)
  {
    v4 = [(RCRecordingView *)self bottomControlsContainerView];
    v5 = [v4 leadingContainerView];
  }

  else
  {
    v4 = [(RCRecordingView *)self bottomControlsContainerView];
    v5 = [v4 centerContainerView];
  }

  v6 = v5;

  v7 = [(RCRecordingView *)self recordButton];
  v8 = [v7 superview];

  if (v8 != v6)
  {
    v9 = [(RCRecordingView *)self recordButton];
    [(RCRecordingView *)self _dropView:v9];

    v10 = [(RCRecordingView *)self recordButton];
    [v6 addSubview:v10];

    v11 = [(RCRecordingView *)self recordButton];
    [v11 setTranslatesAutoresizingMaskIntoConstraints:0];

    v24 = [(RCRecordingView *)self recordButton];
    v23 = [v24 leadingAnchor];
    v22 = [v6 leadingAnchor];
    v21 = [v23 constraintEqualToAnchor:v22];
    v25[0] = v21;
    v20 = [(RCRecordingView *)self recordButton];
    v12 = [v20 trailingAnchor];
    v13 = [v6 trailingAnchor];
    v14 = [v12 constraintEqualToAnchor:v13];
    v25[1] = v14;
    v15 = [(RCRecordingView *)self recordButton];
    v16 = [v15 centerYAnchor];
    v17 = [v6 centerYAnchor];
    v18 = [v16 constraintEqualToAnchor:v17];
    v25[2] = v18;
    v19 = [NSArray arrayWithObjects:v25 count:3];
    [NSLayoutConstraint activateConstraints:v19];
  }
}

- (UIView)recordButton
{
  recordButton = self->_recordButton;
  if (!recordButton)
  {
    v4 = [(RCRecordingView *)self recordButtonFactory];
    v5 = [v4 createRecordButtonContainer];
    v6 = [v5 view];
    v7 = self->_recordButton;
    self->_recordButton = v6;

    [(UIView *)self->_recordButton setAccessibilityIdentifier:@"RecordingView/RecordButton"];
    recordButton = self->_recordButton;
  }

  return recordButton;
}

- (void)_addPlaybackSettingsButtonToBottomControlsContainerView
{
  v3 = [(RCRecordingView *)self bottomControlsContainerView];
  v4 = [v3 trailingContainerView];

  v5 = [(RCRecordingView *)self playbackSettingsButton];
  v6 = [v5 superview];

  if (v6 != v4)
  {
    v7 = [(RCRecordingView *)self playbackSettingsButton];
    [(RCRecordingView *)self _dropView:v7];

    v8 = [(RCRecordingView *)self playbackSettingsButton];
    [v4 addSubview:v8];

    v9 = +[RCRecorderStyleProvider sharedStyleProvider];
    [v9 bottomControlsTranscriptionAndPlaybackSettingsButtonHeight];
    v11 = v10;

    v12 = [(RCRecordingView *)self playbackSettingsButton];
    [v12 setTranslatesAutoresizingMaskIntoConstraints:0];

    v31 = [(RCRecordingView *)self playbackSettingsButton];
    v30 = [v31 centerYAnchor];
    v29 = [v4 centerYAnchor];
    v28 = [v30 constraintEqualToAnchor:v29];
    v32[0] = v28;
    v27 = [(RCRecordingView *)self playbackSettingsButton];
    v26 = [v27 leadingAnchor];
    v25 = [v4 leadingAnchor];
    v24 = [v26 constraintEqualToAnchor:v25];
    v32[1] = v24;
    v23 = [(RCRecordingView *)self playbackSettingsButton];
    v22 = [v23 trailingAnchor];
    v13 = [v4 trailingAnchor];
    v14 = [v22 constraintEqualToAnchor:v13];
    v32[2] = v14;
    v15 = [(RCRecordingView *)self playbackSettingsButton];
    v16 = [v15 widthAnchor];
    v17 = [v16 constraintGreaterThanOrEqualToConstant:v11];
    v32[3] = v17;
    v18 = [(RCRecordingView *)self playbackSettingsButton];
    v19 = [v18 heightAnchor];
    v20 = [v19 constraintGreaterThanOrEqualToConstant:v11];
    v32[4] = v20;
    v21 = [NSArray arrayWithObjects:v32 count:5];
    [NSLayoutConstraint activateConstraints:v21];
  }
}

- (void)_addTranscriptionButtonToBottomControlsContainerView
{
  v3 = [(RCRecordingView *)self bottomControlsContainerView];
  v4 = [v3 leadingContainerView];

  v5 = [(RCRecordingView *)self transcriptionButton];
  v6 = [v5 superview];

  if (v6 != v4)
  {
    v7 = [(RCRecordingView *)self transcriptionButton];
    [(RCRecordingView *)self _dropView:v7];

    v8 = [(RCRecordingView *)self transcriptionButton];
    [v4 addSubview:v8];

    v9 = +[RCRecorderStyleProvider sharedStyleProvider];
    [v9 bottomControlsTranscriptionAndPlaybackSettingsButtonHeight];
    v11 = v10;

    v12 = [(RCRecordingView *)self transcriptionButton];
    [v12 setTranslatesAutoresizingMaskIntoConstraints:0];

    v31 = [(RCRecordingView *)self transcriptionButton];
    v30 = [v31 centerYAnchor];
    v29 = [v4 centerYAnchor];
    v28 = [v30 constraintEqualToAnchor:v29];
    v32[0] = v28;
    v27 = [(RCRecordingView *)self transcriptionButton];
    v26 = [v27 leadingAnchor];
    v25 = [v4 leadingAnchor];
    v24 = [v26 constraintEqualToAnchor:v25];
    v32[1] = v24;
    v23 = [(RCRecordingView *)self transcriptionButton];
    v22 = [v23 trailingAnchor];
    v13 = [v4 trailingAnchor];
    v14 = [v22 constraintEqualToAnchor:v13];
    v32[2] = v14;
    v15 = [(RCRecordingView *)self transcriptionButton];
    v16 = [v15 widthAnchor];
    v17 = [v16 constraintGreaterThanOrEqualToConstant:v11];
    v32[3] = v17;
    v18 = [(RCRecordingView *)self transcriptionButton];
    v19 = [v18 heightAnchor];
    v20 = [v19 constraintGreaterThanOrEqualToConstant:v11];
    v32[4] = v20;
    v21 = [NSArray arrayWithObjects:v32 count:5];
    [NSLayoutConstraint activateConstraints:v21];
  }
}

- (void)_updateVerticalContentHuggingAndCompressionResistancePriorities
{
  v3 = [(RCRecordingView *)self topSpacerView];
  v26[0] = v3;
  v4 = [(RCRecordingView *)self buttonsAndDescriptionContainerView];
  v26[1] = v4;
  v5 = [(RCRecordingView *)self overviewWaveformContainerView];
  v26[2] = v5;
  v6 = [(RCRecordingView *)self currentTimeLabel];
  v26[3] = v6;
  v7 = [(RCRecordingView *)self bottomControlsContainerView];
  v26[4] = v7;
  v8 = [(RCRecordingView *)self bottomSpacerView];
  v26[5] = v8;
  v9 = [NSArray arrayWithObjects:v26 count:6];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v10 = v9;
  v11 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v11)
  {
    v13 = v11;
    v14 = *v22;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v22 != v14)
        {
          objc_enumerationMutation(v10);
        }

        v16 = *(*(&v21 + 1) + 8 * i);
        LODWORD(v12) = 1148846080;
        [v16 setContentHuggingPriority:1 forAxis:{v12, v21}];
        LODWORD(v17) = 1148846080;
        [v16 setContentCompressionResistancePriority:1 forAxis:v17];
      }

      v13 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v13);
  }

  v18 = [(RCRecordingView *)self centerContentContainerView];
  [(RCRecordingView *)self centerContentVerticalHuggingPriority];
  [v18 setContentHuggingPriority:1 forAxis:?];

  v19 = [(RCRecordingView *)self centerContentContainerView];
  LODWORD(v20) = 1132068864;
  [v19 setContentCompressionResistancePriority:1 forAxis:v20];
}

- (UIView)topSpacerView
{
  topSpacerView = self->_topSpacerView;
  if (!topSpacerView)
  {
    v4 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    v5 = self->_topSpacerView;
    self->_topSpacerView = v4;

    topSpacerView = self->_topSpacerView;
  }

  return topSpacerView;
}

- (UIView)buttonsAndDescriptionContainerView
{
  buttonsAndDescriptionContainerView = self->_buttonsAndDescriptionContainerView;
  if (!buttonsAndDescriptionContainerView)
  {
    v4 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    v5 = self->_buttonsAndDescriptionContainerView;
    self->_buttonsAndDescriptionContainerView = v4;

    buttonsAndDescriptionContainerView = self->_buttonsAndDescriptionContainerView;
  }

  return buttonsAndDescriptionContainerView;
}

- (UIView)overviewWaveformContainerView
{
  overviewWaveformContainerView = self->_overviewWaveformContainerView;
  if (!overviewWaveformContainerView)
  {
    v4 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    v5 = self->_overviewWaveformContainerView;
    self->_overviewWaveformContainerView = v4;

    overviewWaveformContainerView = self->_overviewWaveformContainerView;
  }

  return overviewWaveformContainerView;
}

- (RCTimeLabel)currentTimeLabel
{
  currentTimeLabel = self->_currentTimeLabel;
  if (!currentTimeLabel)
  {
    v4 = objc_opt_new();
    [(RCTimeLabel *)v4 setTextAlignment:1];
    v5 = self->_currentTimeLabel;
    self->_currentTimeLabel = v4;

    currentTimeLabel = self->_currentTimeLabel;
  }

  return currentTimeLabel;
}

- (UIView)bottomSpacerView
{
  bottomSpacerView = self->_bottomSpacerView;
  if (!bottomSpacerView)
  {
    v4 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    v5 = self->_bottomSpacerView;
    self->_bottomSpacerView = v4;

    bottomSpacerView = self->_bottomSpacerView;
  }

  return bottomSpacerView;
}

- (UIView)centerContentContainerView
{
  centerContentContainerView = self->_centerContentContainerView;
  if (!centerContentContainerView)
  {
    v4 = objc_alloc_init(UIView);
    v5 = self->_centerContentContainerView;
    self->_centerContentContainerView = v4;

    centerContentContainerView = self->_centerContentContainerView;
  }

  return centerContentContainerView;
}

- (UIStackView)mainContainerStackView
{
  mainContainerStackView = self->_mainContainerStackView;
  if (!mainContainerStackView)
  {
    v4 = objc_opt_new();
    [(UIStackView *)v4 setAxis:1];
    [(UIStackView *)v4 setDistribution:0];
    [(UIStackView *)v4 setAlignment:0];
    v5 = self->_mainContainerStackView;
    self->_mainContainerStackView = v4;

    mainContainerStackView = self->_mainContainerStackView;
  }

  return mainContainerStackView;
}

- (void)_styleView
{
  [(RCRecordingView *)self _adjustTraitOverridesForDisplayStyle:[(RCRecordingView *)self displayStyle]];
  [(RCRecordingView *)self _adjustBackgroundColorForDisplayStyle:[(RCRecordingView *)self displayStyle]];
  [(RCRecordingView *)self _setupTapGestureRecognizer];
  [(RCRecordingView *)self _setupOverviewBeginEndTimeLabel];
  [(RCRecordingView *)self _styleCurrentTimeLabel];
  [(RCRecordingView *)self _styleShuttleBar];
  [(RCRecordingView *)self _updateBottomControlsContainerViewSubviews];
  [(RCRecordingView *)self _updateArrangedSubviews];
  v3 = +[RCRecorderStyleProvider sharedStyleProvider];
  v4 = [v3 hostsTransportAndDoneButtonInBottomSection];

  if (v4)
  {
    [(RCRecordingView *)self _updateAccessibilityElements];
  }

  [(RCRecordingView *)self _updateDisplayStyleForHorizontalSizeClassChanges];

  [(RCRecordingView *)self _updateSpacingBetweenArrangedSubviews];
}

- (void)_setupTapGestureRecognizer
{
  v5 = [(RCRecordingView *)self tapGestureRecognizer];
  v3 = +[RCRecorderStyleProvider sharedStyleProvider];
  v4 = [v3 allowsInteractiveCardSizing];

  if (v4)
  {
    if (!v5)
    {
      v5 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"_handleTapToFullscreen:"];
      [(RCRecordingView *)self setTapGestureRecognizer:v5];
      [(RCRecordingView *)self addGestureRecognizer:v5];
    }

    [v5 setEnabled:1];
    [v5 setDelegate:self];
  }

  else
  {
    [v5 setEnabled:0];
  }
}

- (void)_setupOverviewBeginEndTimeLabel
{
  v11 = +[RCRecorderStyleProvider sharedStyleProvider];
  v3 = [v11 hasBeginAndEndTimeLabelAtOverviewWaveform];
  v4 = [(RCRecordingView *)self overviewBeginTimeLabel];
  v5 = v4;
  if (v3)
  {
    if (!v4)
    {
      v5 = objc_opt_new();
      [(RCRecordingView *)self setOverviewBeginTimeLabel:v5];
    }

    v6 = [v11 beginEndLabelsColor];
    [v5 setTextColor:v6];

    [v5 setTextAlignment:4];
    [v5 setNumberOfLines:0];
    v7 = [v11 beginEndLabelsFont];
    [v5 setFont:v7];

    v8 = [(RCRecordingView *)self overviewEndTimeLabel];
    if (!v8)
    {
      v8 = objc_opt_new();
      [(RCRecordingView *)self setOverviewEndTimeLabel:v8];
    }

    v9 = [v11 beginEndLabelsColor];
    [v8 setTextColor:v9];

    [v8 setTextAlignment:4];
    [v8 setNumberOfLines:0];
    v10 = [v11 timeLineLabelFont];
    [v8 setFont:v10];
  }

  else
  {
    [v4 removeAllConstraints];

    v5 = [(RCRecordingView *)self overviewEndTimeLabel];
    [v5 removeAllConstraints];
  }
}

- (void)_styleCurrentTimeLabel
{
  v5 = [(RCRecordingView *)self currentTimeLabel];
  v2 = +[RCRecorderStyleProvider sharedStyleProvider];
  v3 = [v2 playbackCardTimeLabelFontColor];
  [v5 setTextColor:v3];

  v4 = [v2 playbackViewTimeLabelFont];
  [v5 setFont:v4];

  [v2 positionReadoutLabelYOffset];
  [v5 setLabelYOffset:?];
}

- (void)_styleShuttleBar
{
  v6 = +[RCRecorderStyleProvider sharedStyleProvider];
  v3 = [(RCRecordingView *)self shuttleBar];
  [v3 setStyle:1];
  v4 = [v6 transportControlsColorForRecordingCard];
  [v3 setControlsColor:v4];

  v5 = [v6 transportButtonAnimationCircleColor];
  [v3 setControlsAnimationColor:v5];
}

- (void)_updateArrangedSubviews
{
  v3 = objc_opt_new();
  v4 = +[RCRecorderStyleProvider sharedStyleProvider];
  v5 = [(RCRecordingView *)self topSpacerView];
  [v3 addObject:v5];

  v6 = [(RCRecordingView *)self buttonsAndDescriptionContainerView];
  [v3 addObject:v6];

  v7 = [(RCRecordingView *)self centerContentContainerView];
  [v3 addObject:v7];

  v8 = [(RCRecordingView *)self overviewWaveformContainerView];
  [v3 addObject:v8];

  v9 = [(RCRecordingView *)self currentTimeLabel];
  [v3 addObject:v9];

  v10 = [(RCRecordingView *)self shuttleBar];
  if (([v4 hostsTransportAndDoneButtonInBottomSection] & 1) == 0)
  {
    [v3 addObject:v10];
    [v10 setHidden:1];
  }

  v11 = [(RCRecordingView *)self bottomControlsContainerView];
  [v3 addObject:v11];

  v12 = [(RCRecordingView *)self bottomSpacerView];
  [v3 addObject:v12];

  v13 = [(RCRecordingView *)self mainContainerStackView];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v14 = [v13 arrangedSubviews];
  v15 = [v14 countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v29;
    do
    {
      v18 = 0;
      do
      {
        if (*v29 != v17)
        {
          objc_enumerationMutation(v14);
        }

        [v13 removeArrangedSubview:*(*(&v28 + 1) + 8 * v18)];
        v18 = v18 + 1;
      }

      while (v16 != v18);
      v16 = [v14 countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v16);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v19 = v3;
  v20 = [v19 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v25;
    do
    {
      v23 = 0;
      do
      {
        if (*v25 != v22)
        {
          objc_enumerationMutation(v19);
        }

        [v13 addArrangedSubview:{*(*(&v24 + 1) + 8 * v23), v24}];
        v23 = v23 + 1;
      }

      while (v21 != v23);
      v21 = [v19 countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v21);
  }
}

- (void)_updateDisplayStyleForHorizontalSizeClassChanges
{
  v4 = +[RCRecorderStyleProvider sharedStyleProvider];
  if ([v4 hostsTransportAndDoneButtonInBottomSection])
  {
    v3 = [(RCRecordingView *)self displayStyle];

    if (v3 == 2)
    {

      [(RCRecordingView *)self setDisplayStyle:3];
    }
  }

  else
  {
  }
}

- (void)_updateSpacingBetweenArrangedSubviews
{
  v33 = +[RCRecorderStyleProvider sharedStyleProvider];
  v3 = 0.0;
  if ([(RCRecordingView *)self displayStyle]== 2)
  {
    [v33 verticalSpaceAfterTopSpacerView];
    v3 = v4;
  }

  v5 = [(RCRecordingView *)self mainContainerStackView];
  v6 = [(RCRecordingView *)self topSpacerView];
  [v5 setCustomSpacing:v6 afterView:v3];

  v7 = [(RCRecordingView *)self displayStyle];
  v8 = [(RCRecordingView *)self centerContentViewState];
  v9 = v8 == 1 && [(RCRecordingView *)self transcriptViewState]== 1;
  v10 = v8 == 1;
  v11 = v7 == 2;
  v12 = [(RCRecordingView *)self recordingViewState]== 8;
  [v33 verticalSpaceBetweenTitleAndCenterContentContainer:v11 isDisplayingTranscriptView:v10];
  v14 = v13;
  v15 = [(RCRecordingView *)self mainContainerStackView];
  v16 = [(RCRecordingView *)self buttonsAndDescriptionContainerView];
  [v15 setCustomSpacing:v16 afterView:v14];

  [v33 verticalSpaceAfterCenterContentContainer:v11 isDisplayingTranscriptView:v10 isTranscriptViewExpanded:v9 isTrimMode:v12];
  v18 = v17;
  v19 = [(RCRecordingView *)self mainContainerStackView];
  v20 = [(RCRecordingView *)self centerContentContainerView];
  [v19 setCustomSpacing:v20 afterView:v18];

  if (v9)
  {
    [v33 verticalSpaceAfterOverviewWaveformWhenTranscriptViewIsExpanded];
  }

  else
  {
    [v33 verticalSpaceBetweenOverviewWaveformAndTimeLabel];
  }

  v22 = v21;
  v23 = [(RCRecordingView *)self mainContainerStackView];
  v24 = [(RCRecordingView *)self overviewWaveformContainerView];
  [v23 setCustomSpacing:v24 afterView:v22];

  if ([v33 hostsTransportAndDoneButtonInBottomSection])
  {
    [v33 verticalSpaceBetweenTimeLabelAndBottomControlsContainer];
  }

  else
  {
    [v33 verticalSpaceBetweenTimeLabelAndShuttleBar];
  }

  v26 = v25;
  v27 = [(RCRecordingView *)self mainContainerStackView];
  v28 = [(RCRecordingView *)self currentTimeLabel];
  [v27 setCustomSpacing:v28 afterView:v26];

  if (([v33 hostsTransportAndDoneButtonInBottomSection] & 1) == 0)
  {
    [v33 verticalSpaceBetweenShuttleBarAndBottomControlsContainerView];
    v30 = v29;
    v31 = [(RCRecordingView *)self mainContainerStackView];
    v32 = [(RCRecordingView *)self shuttleBar];
    [v31 setCustomSpacing:v32 afterView:v30];
  }
}

- (void)_syncTapGestureRecognizerEnablement
{
  if ([(RCRecordingView *)self recordingViewState]!= 8 && [(RCRecordingView *)self displayStyle]== 2 && [(RCRecordingView *)self didCompletePresent])
  {
    v6 = +[RCRecorderStyleProvider sharedStyleProvider];
    v3 = [v6 allowsInteractiveCardSizing];
    v4 = 1;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  v5 = [(RCRecordingView *)self tapGestureRecognizer];
  [v5 setEnabled:v3];

  if (v4)
  {
  }
}

- (void)_updateDoneButtonState
{
  v17 = +[RCRecorderStyleProvider sharedStyleProvider];
  if ([(RCRecordingView *)self displayStyle]&& [(RCRecordingView *)self displayStyle]!= 1)
  {
    v4 = [v17 hostsTransportAndDoneButtonInBottomSection];
    if (v4)
    {
      v5 = [(RCRecordingView *)self doneButton];
      [(RCRecordingView *)self assignActionOnDoneButton:v5];

      v6 = [(RCRecordingView *)self recordingViewState];
      v7 = +[NSBundle mainBundle];
      v8 = v7;
      if (v6 == 8)
      {
        v9 = @"APPLY";
      }

      else
      {
        v9 = @"DONE";
      }

      v10 = [v7 localizedStringForKey:v9 value:&stru_100295BB8 table:0];

      v11 = [(RCRecordingView *)self doneButton];
      [v11 setTitle:v10];

      if ([(RCRecordingView *)self recordingViewState]== 8)
      {
        v12 = [(RCRecordingView *)self editingToolbarProvider];
        v13 = [v12 canSave];
        v14 = [(RCRecordingView *)self doneButton];
        [v14 setEnabled:v13];

        [(RCRecordingView *)self setShouldSaveAsNew:0];
      }

      else
      {
        v15 = [(RCRecordingView *)self doneButton];
        [v15 setEnabled:1];
      }
    }

    v3 = v4 ^ 1;
  }

  else
  {
    v3 = 1;
  }

  v16 = [(RCRecordingView *)self doneButton];
  [v16 setHidden:v3];
}

- (RCRecordingViewDelegate)viewDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_viewDelegate);

  return WeakRetained;
}

- (void)_syncViewsToState
{
  v3 = 1;
  [(RCRecordingView *)self setIsSyncingViewsToState:1];
  [(RCRecordingView *)self _updateSubviewVisibility];
  v4 = [(RCRecordingView *)self displayStyle];
  if (v4 < 2)
  {
    v5 = 0;
    v3 = 0;
  }

  else
  {
    if (v4 == 3)
    {
      v5 = 2;
    }

    else
    {
      if (v4 != 2)
      {
        goto LABEL_9;
      }

      v3 = 0;
      v5 = 1;
    }

    [(RCRecordingView *)self _updateDoneButtonActionForModernToolbar];
  }

  v6 = [(RCRecordingView *)self editingToolbarProvider];
  [v6 setDisplayMode:v5];

  v7 = [(RCRecordingView *)self descriptionView];
  [v7 updateForDisplayMode:v3];

LABEL_9:
  [(RCRecordingView *)self _swapCenterContentTimeIndices:[(RCRecordingView *)self displayStyle]== 3];
  [(RCRecordingView *)self _updateTranscriptionButtonVisibility];
  [(RCRecordingView *)self _updateDoneButtonState];
  [(RCRecordingView *)self _updateCenterContentContainerSubviewConstraints];
  [(RCRecordingView *)self _updateSpacingBetweenArrangedSubviews];
  v8 = [(RCRecordingView *)self viewDelegate];
  [v8 visualStateChanged];

  [(RCRecordingView *)self setIsSyncingViewsToState:0];
}

- (void)_updateSubviewVisibility
{
  v3 = +[RCRecorderStyleProvider sharedStyleProvider];
  v4 = [(RCRecordingView *)self displayStyle];
  v5 = 192;
  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v7 = [(RCRecordingView *)self viewDelegate];
      v8 = [v7 shouldHideNavigationBar];

      if (v8)
      {
        v5 = 211;
      }

      else
      {
        v5 = 210;
      }
    }

    else if (v4 == 3)
    {
      v5 = [v3 supportsTopSpacerViewWhenFullscreen] ? 251 : 250;
      if (([v3 shouldAlwaysShowOverviewWaveform] & 1) != 0 || -[RCRecordingView recordingViewState](self, "recordingViewState") == 8)
      {
        v5 |= 4uLL;
      }
    }
  }

  else
  {
    v6 = 193;
    if (v4 != 1)
    {
      v6 = 192;
    }

    if (v4)
    {
      v5 = v6;
    }

    else
    {
      v5 = 0;
    }
  }

  if ([(RCRecordingView *)self shouldHideBottomElements])
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v9 = [(RCRecordingView *)self _bottomElementsToHide];
    v10 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v15;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v15 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v5 &= ~[(RCRecordingView *)self _displayOptionForView:*(*(&v14 + 1) + 8 * i)];
        }

        v11 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v11);
    }
  }

  [(RCRecordingView *)self _showHideViewsForDisplayOptions:v5];
}

- (void)reset
{
  [(RCRecordingView *)self _classSpecificReset];
  [(RCRecordingView *)self setRecordingViewState:0];
  [(RCRecordingView *)self setPlayControlState:0];
  [(RCRecordingView *)self setCenterContentViewState:0];
  [(RCRecordingView *)self setCurrentTime:0.0];
  v3 = [(RCRecordingView *)self currentTimeLabel];
  [v3 setText:&stru_100295BB8];

  v4 = [(RCRecordingView *)self editingToolbarProvider];
  [v4 setCanUndo:0];

  [(RCRecordingView *)self setShouldSaveAsNew:0];
  v5 = [(RCRecordingView *)self doneButton];
  [v5 setHidden:1];

  v6 = [(RCRecordingView *)self currentTimeLabel];
  [v6 setIsAccessibilityElement:0];

  [(RCRecordingView *)self setEditingInFlight:0];
  v7 = [(RCRecordingView *)self progressOverlay];
  [v7 setProgress:0.0];

  if ([(RCRecordingView *)self textFieldIsBeingEdited])
  {
    v8 = [(RCRecordingView *)self descriptionView];
    [v8 endEditingTitle];
  }
}

- (void)_classSpecificReset
{
  v3 = [(RCRecordingView *)self dismissalDisplayStyle];

  [(RCRecordingView *)self setDisplayStyle:v3];
}

- (BOOL)textFieldIsBeingEdited
{
  v2 = [(RCRecordingView *)self textFieldBeingEdited];
  v3 = v2 != 0;

  return v3;
}

- (UITextField)textFieldBeingEdited
{
  WeakRetained = objc_loadWeakRetained(&self->_textFieldBeingEdited);

  return WeakRetained;
}

- (void)updateForSizeChange
{
  v2 = [(RCRecordingView *)self shuttleBar];
  [v2 updateWidthOnSizeChange];
}

- (void)_syncCenterContentContainerViewState
{
  centerContentViewState = self->_centerContentViewState;
  if (centerContentViewState == 1)
  {
    WeakRetained = objc_loadWeakRetained(&self->_transcriptView);

    if (!WeakRetained)
    {
      goto LABEL_13;
    }

    WeakRetained = self->_waveformView;
    v5 = objc_loadWeakRetained(&self->_transcriptView);
  }

  else
  {
    if (centerContentViewState || !self->_waveformView)
    {
      WeakRetained = 0;
      goto LABEL_13;
    }

    WeakRetained = objc_loadWeakRetained(&self->_transcriptView);
    v5 = self->_waveformView;
  }

  v6 = v5;
  if (v5)
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10008FC78;
    v10[3] = &unk_10028B058;
    WeakRetained = WeakRetained;
    v11 = WeakRetained;
    v12 = self;
    v7 = v6;
    v13 = v7;
    v8 = objc_retainBlock(v10);
    if ([(RCRecordingView *)self displayStyle]== 3)
    {
      v9 = [(RCRecordingView *)self centerContentContainerView];
      [UIView transitionWithView:v9 duration:5242880 options:v8 animations:0 completion:0.4];
    }

    else
    {
      (v8[2])(v8);
    }

    [(RCRecordingView *)self _updateCenterContentContainerSubviewConstraints];
  }

LABEL_13:
}

- (void)setBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(RCRecordingView *)self bounds];
  v9 = v8;
  v11.receiver = self;
  v11.super_class = RCRecordingView;
  [(RCRecordingView *)&v11 setBounds:x, y, width, height];
  if (v9 != width)
  {
    v10 = [(RCRecordingView *)self viewDelegate];
    [v10 recordingViewWidthDidChange:width];
  }
}

- (void)setDisplayStyle:(int64_t)a3
{
  displayStyle = self->_displayStyle;
  if (displayStyle != a3)
  {
    if (a3 != 3 && displayStyle == 3)
    {
      [(RCRecordingView *)self cancelTextEditing];
    }

    self->_displayStyle = a3;
    [(RCRecordingView *)self _classSpecificSetDisplayStyle:a3];
    [(RCRecordingView *)self _adjustTraitOverridesForDisplayStyle:a3];
    [(RCRecordingView *)self _adjustBackgroundColorForDisplayStyle:a3];
    [(RCRecordingView *)self _updateBottomControlsContainerViewSubviews];
    [(RCRecordingView *)self _updateArrangedSubviews];
    [(RCRecordingView *)self _syncViewsToState];
    [(RCRecordingView *)self _syncTapGestureRecognizerEnablement];
    [(RCRecordingView *)self setAccessibilityViewIsModal:self->_displayStyle != 1];
    v6 = [(RCRecordingView *)self viewDelegate];
    [v6 didUpdateRecordingViewDisplayStyle];
  }
}

- (void)_classSpecificSetDisplayStyle:(int64_t)a3
{
  if (a3 == 3)
  {
    v7 = [(RCRecordingView *)self centerContentContainerView];
    v8 = [RCPassthroughViewsSpec passthroughViewsSpecWithTopLevelView:v7 includeTopLevelView:1];
    v9 = [(RCRecordingView *)self shuttleBar];
    v10 = [RCPassthroughViewsSpec passthroughViewsSpecWithTopLevelView:v9 includeTopLevelView:0];
    v14[1] = v10;
    v11 = [(RCRecordingView *)self bottomControlsContainerView];
    v12 = [RCPassthroughViewsSpec passthroughViewsSpecWithTopLevelView:v11 includeTopLevelView:1];
    v14[2] = v12;
    v13 = [NSArray arrayWithObjects:v14 count:3];
    [(RCRecordingView *)self setDragGesturePassthroughSpecs:v13];
  }

  else if (a3 == 2)
  {
    v4 = [(RCRecordingView *)self waveformView];
    if (v4)
    {
      v5 = v4;
      v6 = [(RCRecordingView *)self descriptionView];

      if (v6)
      {

        [(RCRecordingView *)self setDragGesturePassthroughSpecs:&__NSArray0__struct];
      }
    }
  }
}

- (void)_adjustBackgroundColorForDisplayStyle:(int64_t)a3
{
  v5 = +[RCRecorderStyleProvider sharedStyleProvider];
  v6 = v5;
  if (a3 > 2)
  {
    [v5 recordingCardDefaultBackgroundColor];
  }

  else
  {
    [v5 recordingCardBottomAccessoryBackgroundColor];
  }
  v7 = ;
  if (v7)
  {
    [(RCRecordingView *)self setBackgroundColor:v7];
  }
}

- (void)_adjustTraitOverridesForDisplayStyle:(int64_t)a3
{
  v5 = [(RCRecordingView *)self traitOverrides];
  v6 = objc_opt_self();
  v7 = [v5 containsTrait:v6];

  v8 = +[RCRecorderStyleProvider sharedStyleProvider];
  v9 = [v8 supportsRecordingViewElevatedUserInterfaceLevelOverride];

  if (v7)
  {
    v10 = 0;
  }

  else
  {
    v10 = a3 == 1;
  }

  if (!v10 || v9 == 0)
  {
    if (!v7)
    {
      return;
    }

    v13 = [(RCRecordingView *)self traitOverrides];
    v12 = objc_opt_self();
    [v13 removeTrait:v12];
  }

  else
  {
    v13 = [(RCRecordingView *)self traitOverrides];
    [v13 setUserInterfaceLevel:1];
  }
}

- (void)setRecordingControlState:(int64_t)a3
{
  v4 = [(RCRecordingView *)self _recordButtonStateForRecordingControlState:a3];
  v5 = [(RCRecordingView *)self recordButtonRepository];
  [v5 setState:v4];
}

- (int64_t)recordingControlState
{
  v3 = [(RCRecordingView *)self recordButtonRepository];
  v4 = -[RCRecordingView _recordingControlStateForRecordButtonState:](self, "_recordingControlStateForRecordButtonState:", [v3 state]);

  return v4;
}

- (int64_t)_recordButtonStateForRecordingControlState:(int64_t)a3
{
  if ((a3 - 1) >= 4)
  {
    return 0;
  }

  else
  {
    return a3;
  }
}

- (int64_t)_recordingControlStateForRecordButtonState:(int64_t)a3
{
  if ((a3 - 1) >= 4)
  {
    return 0;
  }

  else
  {
    return a3;
  }
}

- (void)setPlayControlState:(int64_t)a3
{
  v5 = a3 == 0;
  v6 = [(RCRecordingView *)self recordButtonRepository];
  [v6 setIsEnabled:{-[RCRecordingView _shouldEnableRecordingControlForState:](self, "_shouldEnableRecordingControlForState:", a3)}];

  v7 = [(RCRecordingView *)self cancelButton];
  [v7 setEnabled:v5];

  v8 = [(RCRecordingView *)self editingToolbarProvider];
  [v8 setCanCancel:v5];

  v9 = [(RCRecordingView *)self shuttleBar];
  [v9 setPlayControlState:a3];
}

- (int64_t)playControlState
{
  v2 = [(RCRecordingView *)self shuttleBar];
  v3 = [v2 playControlState];

  return v3;
}

- (void)_updateToolbarsActivityMode:(int64_t)a3
{
  v4 = [(RCRecordingView *)self editingToolbarProvider];
  [v4 setActivityMode:a3];
}

- (void)setRecordingViewState:(int64_t)a3
{
  v5 = +[RCRecorderStyleProvider sharedStyleProvider];
  v7 = v5;
  if (a3 == 1)
  {
    v6 = [v5 allowsInteractiveCardSizing];
  }

  else
  {
    v6 = 0;
  }

  [(RCRecordingView *)self setRecordingViewState:a3 animated:v6 force:0];
}

- (void)setRecordingViewState:(int64_t)a3 animated:(BOOL)a4 force:(BOOL)a5
{
  v5 = a4;
  recordingViewState = self->_recordingViewState;
  if (!a5 && recordingViewState == a3)
  {
    return;
  }

  v9 = +[CATransaction disableActions];
  +[CATransaction begin];
  [CATransaction setDisableActions:v9 | !v5];
  self->_recordingViewState = a3;
  v10 = [(RCRecordingView *)self recordButton];
  [v10 setHidden:0];

  [(RCRecordingView *)self _showTrimDeleteSelectionButtonsIfNeeded:0];
  [(RCRecordingView *)self _updateShuttleBarEnablement];
  [(RCRecordingView *)self _syncTapGestureRecognizerEnablement];
  [(RCRecordingView *)self _updateDoneButtonActionForModernToolbar];
  if (a3 <= 2)
  {
    if (!a3)
    {
LABEL_7:
      [(RCRecordingView *)self _updateToolbarsActivityMode:0];
      [(RCRecordingView *)self setMoreActionsAndPlaybackSettingsButtonsHidden:1];
      goto LABEL_17;
    }

    if (a3 != 1)
    {
      if (a3 != 2)
      {
        goto LABEL_17;
      }

      goto LABEL_7;
    }

    v14 = self;
    v15 = 1;
    goto LABEL_13;
  }

  if ((a3 - 3) < 3)
  {
    v14 = self;
    v15 = 2;
LABEL_13:
    [(RCRecordingView *)v14 _updateToolbarsActivityMode:v15];
    [(RCRecordingView *)self updateMoreActionsAndPlaybackSettingButtonVisibility];
    goto LABEL_17;
  }

  if ((a3 - 6) >= 2)
  {
    if (a3 != 8)
    {
      goto LABEL_17;
    }

    [(RCRecordingView *)self _updateToolbarsActivityMode:3];
    v16 = [(RCRecordingView *)self recordButton];
    [v16 setHidden:1];

    [(RCRecordingView *)self setMoreActionsAndPlaybackSettingsButtonsHidden:1];
    [(RCRecordingView *)self _showTrimDeleteSelectionButtonsIfNeeded:1];
    v13 = +[NSBundle mainBundle];
    v17 = [v13 localizedStringForKey:@"APPLY" value:&stru_100295BB8 table:0];
    v18 = [(RCRecordingView *)self doneButton];
    [v18 setTitle:v17];
  }

  else
  {
    v11 = [(RCRecordingView *)self editingToolbarProvider];
    [v11 setActivityMode:1];

    v12 = [(RCRecordingView *)self moreActionsButton];
    [v12 setEnabled:0];

    v13 = [(RCRecordingView *)self playbackSettingsButton];
    [v13 setEnabled:0];
  }

LABEL_17:
  v19 = [(RCRecordingView *)self cancelButton];
  [v19 setHidden:a3 != 8];

  [(RCRecordingView *)self _updateDoneButtonState];
  [(RCRecordingView *)self _updateRecordButtonStateForRecordingViewState:a3];
  [(RCRecordingView *)self updateAccessibilityForRecordingViewState:a3];
  [(RCRecordingView *)self _updateBottomControlsContainerViewSubviews];
  [(RCRecordingView *)self setNeedsLayout];
  [(RCRecordingView *)self _syncViewsToState];
  +[CATransaction commit];
  v20 = [(RCRecordingView *)self recordButton];
  LODWORD(v19) = [v20 isHidden];

  if (!v19)
  {
    v23 = UIAccessibilityScreenChangedNotification;
    v24 = [(RCRecordingView *)self recordButton];
    goto LABEL_22;
  }

  if (a3 == 8)
  {
    v21 = [(RCRecordingView *)self doneButton];
    v22 = [v21 isEnabled];

    if (v22)
    {
      v23 = UIAccessibilityScreenChangedNotification;
      v24 = [(RCRecordingView *)self doneButton];
LABEL_22:
      v25 = v24;
      UIAccessibilityPostNotification(v23, v24);

      goto LABEL_24;
    }
  }

  UIAccessibilityPostNotification(UIAccessibilityScreenChangedNotification, self);
LABEL_24:
  if (recordingViewState != a3)
  {
    v26 = [(RCRecordingView *)self viewDelegate];
    [v26 didUpdateRecordingViewState:recordingViewState newState:a3];
  }
}

- (void)updateAccessibilityForRecordingViewState:(int64_t)a3
{
  v5 = [(RCRecordingView *)self buttonsAndDescriptionContainerView];
  [v5 setAccessibilityElementsHidden:a3 == 0];

  v6 = [(RCRecordingView *)self centerContentContainerView];
  [v6 setAccessibilityElementsHidden:a3 == 0];

  v7 = [(RCRecordingView *)self shuttleBar];
  [v7 setAccessibilityElementsHidden:a3 == 0];

  v8 = [(RCRecordingView *)self doneButton];
  [v8 setIsAccessibilityElement:a3 != 0];

  v9 = [(RCRecordingView *)self cancelButton];
  v10 = [v9 isHidden];
  v11 = [(RCRecordingView *)self cancelButton];
  [v11 setIsAccessibilityElement:v10 ^ 1];

  v12 = +[RCRecorderStyleProvider sharedStyleProvider];
  LOBYTE(v10) = [v12 hostsTransportAndDoneButtonInBottomSection];

  [(RCRecordingView *)self setAccessibilityIgnoresInvertColors:(a3 != 2) | ((v10 & 1) == 0)];
  v13 = [(RCRecordingView *)self descriptionView];
  v14 = v13;
  if (a3 == 1)
  {
    [v13 addTitleAccessibilityTraits:UIAccessibilityTraitStaticText];
  }

  else
  {
    [v13 removeTitleAccessibilityTraits:UIAccessibilityTraitStaticText];
  }
}

- (void)setMoreActionsAndPlaybackSettingsButtonsHidden:(BOOL)a3
{
  v3 = a3;
  v5 = [(RCRecordingView *)self playbackSettingsButton];
  [v5 setHidden:v3];

  v6 = [(RCRecordingView *)self moreActionsButton];
  [v6 setHidden:v3];
}

- (void)updateMoreActionsAndPlaybackSettingButtonVisibility
{
  v3 = +[RCRecorderStyleProvider sharedStyleProvider];
  if ([v3 showsDescriptionViewInLineWithTrimAndPlaybackSettingsButtons])
  {
    v4 = [(RCRecordingView *)self displayStyle];

    if (v4 == 3)
    {
      [(RCRecordingView *)self setMoreActionsAndPlaybackSettingsButtonsHidden:0];
      if ([(RCRecordingView *)self recordingControlState]== 1)
      {
        v5 = [(RCRecordingView *)self playbackSettingsButton];
        [v5 setEnabled:0];

        v10 = [(RCRecordingView *)self moreActionsButton];
        [v10 setEnabled:0];
      }

      else
      {
        v6 = [(RCRecordingView *)self recordingControlState];
        v7 = v6 != 2;
        v8 = [(RCRecordingView *)self playbackSettingsButton];
        [v8 setEnabled:v7];

        v9 = [(RCRecordingView *)self moreActionsButton];
        [v9 setEnabled:v7];

        if (v6 != 2)
        {

          [(RCRecordingView *)self _updateMoreButtonMenu];
        }
      }

      return;
    }
  }

  else
  {
  }

  [(RCRecordingView *)self setMoreActionsAndPlaybackSettingsButtonsHidden:1];
}

- (void)setHasNoTranscribableContent:(BOOL)a3
{
  v3 = a3;
  self->_hasNoTranscribableContent = a3;
  v4 = [(RCRecordingView *)self editingToolbarProvider];
  [v4 setHasNoTranscribableContent:v3];
}

- (void)restyle
{
  [(RCRecordingView *)self _styleView];
  [(RCRecordingView *)self setDisplayStyle:[(RCRecordingView *)self displayStyle]];
  [(RCRecordingView *)self setTrimEnabled:[(RCRecordingView *)self trimEnabled]];
  [(RCRecordingView *)self setRecordingViewState:[(RCRecordingView *)self recordingViewState] animated:1 force:1];
  [(RCRecordingView *)self _syncViewsToState];
  v3 = [(RCRecordingView *)self progressOverlay];
  [v3 restyle];

  v4 = [(RCRecordingView *)self shuttleBar];
  [v4 restyle];

  [(RCRecordingView *)self setNeedsLayout];
}

- (void)applyDimmingColorToProgressOverlay
{
  v5 = +[RCRecorderStyleProvider sharedStyleProvider];
  v3 = [v5 progressViewBackgroundColorEditingCard];
  v4 = [(RCRecordingView *)self progressOverlay];
  [v4 setDimmingBackgroundColor:v3];
}

- (void)_adjustCancelAndDoneButtonsWidth
{
  v3 = [(RCRecordingView *)self doneButton];
  v4 = [v3 widthAnchor];
  v5 = [(RCRecordingView *)self cancelButton];
  v6 = [v5 widthAnchor];
  v7 = [v4 constraintEqualToAnchor:v6];

  [v7 setActive:1];
}

- (void)_adjustTrimAndDeleteSelectionButtonsSize
{
  v3 = [(RCRecordingView *)self trimToSelectionButton];
  v4 = [v3 widthAnchor];
  v5 = [(RCRecordingView *)self deleteSelectionButton];
  v6 = [v5 widthAnchor];
  v16 = [v4 constraintEqualToAnchor:v6];

  [v16 setActive:1];
  v7 = [(RCRecordingView *)self trimToSelectionButton];
  v8 = [v7 heightAnchor];
  v9 = +[RCRecorderStyleProvider sharedStyleProvider];
  [v9 trimDeleteButtonHeight];
  v10 = [v8 constraintEqualToConstant:?];

  [v10 setActive:1];
  v11 = [(RCRecordingView *)self deleteSelectionButton];
  v12 = [v11 heightAnchor];
  v13 = [(RCRecordingView *)self trimToSelectionButton];
  v14 = [v13 heightAnchor];
  v15 = [v12 constraintEqualToAnchor:v14];

  [v15 setActive:1];
}

- (void)_setupButtonsAndDescriptionContainerViewConstraints
{
  v3 = [(RCRecordingView *)self buttonsAndDescriptionContainerView];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];

  v4 = [(RCRecordingView *)self descriptionView];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];

  v5 = [(RCRecordingView *)self buttonsAndDescriptionContainerView];
  v6 = [(RCRecordingView *)self descriptionView];
  [v5 addSubview:v6];

  v7 = [(RCRecordingView *)self descriptionView];
  v8 = [v7 topAnchor];
  v9 = [(RCRecordingView *)self buttonsAndDescriptionContainerView];
  v10 = [v9 topAnchor];
  v11 = [v8 constraintEqualToAnchor:v10];
  [v11 setActive:1];

  v12 = [(RCRecordingView *)self descriptionView];
  v13 = [v12 bottomAnchor];
  v14 = [(RCRecordingView *)self buttonsAndDescriptionContainerView];
  v15 = [v14 bottomAnchor];
  v16 = [v13 constraintEqualToAnchor:v15];
  [v16 setActive:1];

  v17 = [(RCRecordingView *)self descriptionView];
  v18 = [v17 centerXAnchor];
  v19 = [(RCRecordingView *)self buttonsAndDescriptionContainerView];
  v20 = [v19 centerXAnchor];
  v21 = [v18 constraintEqualToAnchor:v20];
  [v21 setActive:1];

  v23 = [(RCRecordingView *)self descriptionView];
  v22 = [(RCRecordingView *)self buttonsAndDescriptionContainerView];
  [v23 addLeadingToLeadingConstraintWithView:v22 padding:0.0];
}

- (void)_displayPlaybackSettings
{
  v3 = [(RCRecordingView *)self playbackSettingsButton];
  [(RCRecordingView *)self performControlsAction:41 position:v3 source:0.0];
}

- (void)setHasMultipleTracks:(BOOL)a3
{
  v3 = a3;
  self->_hasMultipleTracks = a3;
  [(RCRecordingView *)self _updateMoreButtonMenu];
  v5 = [(RCRecordingView *)self descriptionView];
  [v5 setHasMultipleTracks:v3];
}

- (void)setHasSpatialRecording:(BOOL)a3
{
  v3 = a3;
  self->_hasSpatialRecording = a3;
  [(RCRecordingView *)self _updateMoreButtonMenu];
  v5 = [(RCRecordingView *)self descriptionView];
  [v5 setIsSpatialRecording:v3];
}

- (void)_dropView:(id)a3
{
  v3 = a3;
  [v3 removeAllConstraints];
  [v3 removeFromSuperview];
}

- (void)_dropView:(id)a3 fromAncestor:(id)a4
{
  v6 = a3;
  if ([v6 isDescendantOfView:a4])
  {
    [(RCRecordingView *)self _dropView:v6];
  }
}

- (void)_showTrimDeleteSelectionButtonsIfNeeded:(BOOL)a3
{
  v3 = a3;
  v5 = [(RCRecordingView *)self deleteSelectionButton];
  [v5 setHidden:!v3];

  v6 = [(RCRecordingView *)self trimToSelectionButton];
  [v6 setHidden:!v3];
}

- (void)_swapCenterContentTimeIndices:(BOOL)a3
{
  v3 = a3;
  v5 = [(RCRecordingView *)self mainContainerStackView];
  v6 = [v5 subviews];
  v7 = [(RCRecordingView *)self centerContentContainerView];
  v8 = [v6 indexOfObject:v7];

  v9 = [(RCRecordingView *)self mainContainerStackView];
  v10 = [v9 subviews];
  v11 = [(RCRecordingView *)self currentTimeLabel];
  v12 = [v10 indexOfObject:v11];

  v13 = [(RCRecordingView *)self mainContainerStackView];
  v14 = [v13 subviews];
  v15 = [v14 count];

  if (v8 >= v15 || v12 >= v15)
  {
    v17 = OSLogForCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      sub_1001BA2FC(v17, v18, v19, v20, v21, v22, v23, v24);
    }
  }

  else
  {
    v16 = v8 >= v12;
    if (!v3)
    {
      v16 = v8 <= v12;
    }

    if (!v16)
    {
      v25 = [(RCRecordingView *)self mainContainerStackView];
      [v25 exchangeSubviewAtIndex:v8 withSubviewAtIndex:v12];
    }
  }
}

- (unint64_t)_displayOptionForView:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(RCRecordingView *)self topSpacerView];

    if (v5 == v4)
    {
      v21 = 1;
      goto LABEL_22;
    }

    v6 = [(RCRecordingView *)self centerContentContainerView];

    if (v6 == v4)
    {
      v21 = 2;
      goto LABEL_22;
    }

    v7 = [(RCRecordingView *)self overviewWaveformContainerView];

    if (v7 == v4)
    {
      v21 = 4;
      goto LABEL_22;
    }

    v8 = [(RCRecordingView *)self currentTimeLabel];

    if (v8 == v4)
    {
      v21 = 8;
      goto LABEL_22;
    }

    v9 = [(RCRecordingView *)self buttonsAndDescriptionContainerView];

    if (v9 == v4)
    {
      v21 = 16;
      goto LABEL_22;
    }

    v10 = [(RCRecordingView *)self shuttleBar];

    if (v10 == v4)
    {
      v21 = 32;
      goto LABEL_22;
    }

    v11 = [(RCRecordingView *)self bottomControlsContainerView];

    if (v11 == v4)
    {
      v21 = 64;
      goto LABEL_22;
    }

    v12 = [(RCRecordingView *)self bottomSpacerView];

    if (v12 == v4)
    {
      v21 = 128;
      goto LABEL_22;
    }

    v13 = OSLogForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      sub_1001BA374(v13, v14, v15, v16, v17, v18, v19, v20);
    }
  }

  v21 = 0;
LABEL_22:

  return v21;
}

- (void)undoStateChanged:(BOOL)a3 isNewRecording:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v7 = [(RCRecordingView *)self editingToolbarProvider];
  [v7 setCanUndo:v5];

  [(RCRecordingView *)self _updateMoreButtonMenu];
  [(RCRecordingView *)self setShouldSaveAsNew:v5 & ~v4];
  v8 = [(RCRecordingView *)self doneButton];
  [(RCRecordingView *)self assignActionOnDoneButton:v8];

  [(RCRecordingView *)self _updateDoneButtonActionForModernToolbar];
}

- (void)trimSaveStateChanged:(BOOL)a3
{
  v3 = a3;
  v5 = [(RCRecordingView *)self editingToolbarProvider];
  [v5 setCanSave:v3];

  v6 = [(RCRecordingView *)self recordingViewState];

  [(RCRecordingView *)self setRecordingViewState:v6 animated:0 force:1];
}

- (void)setTrimEnabled:(BOOL)a3
{
  v3 = a3;
  self->_trimEnabled = a3;
  v5 = [(RCRecordingView *)self trimToSelectionButton];
  [v5 setEnabled:v3];

  v6 = [(RCRecordingView *)self deleteSelectionButton];
  [v6 setEnabled:v3];
}

- (BOOL)canSaveTrimChanges
{
  v2 = [(RCRecordingView *)self editingToolbarProvider];
  v3 = [v2 canSave];

  return v3;
}

- (void)setHasCustomizedPlaybackSettings:(BOOL)a3
{
  v3 = a3;
  v5 = [(RCRecordingView *)self editingToolbarProvider];
  [v5 setHasCustomizedPlaybackSettings:v3];

  v6 = [(RCRecordingView *)self playbackSettingsButton];
  [v6 setSelected:v3];
}

- (void)setHasTranscription:(BOOL)a3
{
  v3 = a3;
  self->_hasTranscription = a3;
  v5 = [(RCRecordingView *)self descriptionView];
  [v5 setDisplayTranscriptAvailableIcon:v3];

  [(RCRecordingView *)self _updateMoreButtonMenu];
}

- (void)setEditingInFlight:(BOOL)a3
{
  v3 = a3;
  self->_editingInFlight = a3;
  v5 = [(RCRecordingView *)self displayStyle];
  v6 = [(RCRecordingView *)self progressOverlay];
  if (!v3 || v5 == 1)
  {
    v9 = v6;
    [v6 dismiss];
  }

  else
  {
    if (!v6)
    {
      v8 = objc_opt_new();
      v7 = +[UIColor secondaryLabelColor];
      [v8 setProgressIndicatorColor:v7];

      [(RCRecordingView *)self setProgressOverlay:v8];
      [(RCRecordingView *)self applyDimmingColorToProgressOverlay];
      [v8 setStyle:1];
      v6 = v8;
    }

    v9 = v6;
    [v6 presentInView:self];
  }
}

- (void)setEditingProgress:(float)a3
{
  v5 = [(RCRecordingView *)self progressOverlay];
  *&v4 = a3;
  [v5 setProgress:v4];
}

- (float)editingProgress
{
  v2 = [(RCRecordingView *)self progressOverlay];
  [v2 progress];
  v4 = v3;

  return v4;
}

- (void)_showHideViewsForDisplayOptions:(unint64_t)a3
{
  v3 = a3;
  v5 = (a3 & 1) == 0;
  v6 = [(RCRecordingView *)self topSpacerView];
  [v6 setHidden:v5];

  v7 = [(RCRecordingView *)self centerContentContainerView];
  [v7 setHidden:(v3 & 2) == 0];

  v8 = [(RCRecordingView *)self overviewWaveformContainerView];
  [v8 setHidden:(v3 & 4) == 0];

  v9 = [(RCRecordingView *)self currentTimeLabel];
  [v9 setHidden:(v3 & 8) == 0];

  v10 = [(RCRecordingView *)self buttonsAndDescriptionContainerView];
  [v10 setHidden:(v3 & 0x10) == 0];

  v11 = [(RCRecordingView *)self shuttleBar];
  [v11 setHidden:(v3 & 0x20) == 0];

  v12 = [(RCRecordingView *)self bottomControlsContainerView];
  [v12 setHidden:(v3 & 0x40) == 0];

  v13 = [(RCRecordingView *)self bottomSpacerView];
  [v13 setHidden:(v3 & 0x80) == 0];
}

- (void)setRecordingTitle:(id)a3
{
  v4 = a3;
  v5 = [(RCRecordingView *)self descriptionView];
  [v5 setRecordingTitle:v4];
}

- (NSString)recordingTitle
{
  v2 = [(RCRecordingView *)self descriptionView];
  v3 = [v2 recordingTitle];

  return v3;
}

- (void)setCreationDate:(id)a3
{
  v4 = a3;
  v5 = [(RCRecordingView *)self descriptionView];
  [v5 setCreationDate:v4];
}

- (NSDate)creationDate
{
  v2 = [(RCRecordingView *)self descriptionView];
  v3 = [v2 creationDate];

  return v3;
}

- (void)setRecordingDuration:(double)a3
{
  if (self->_recordingDuration != a3)
  {
    self->_recordingDuration = a3;
    [(RCRecordingView *)self _updateRecordingDescriptionViewForDuration:a3];
    v5 = RCLocalizedDuration();
    v6 = [(RCRecordingView *)self overviewEndTimeLabel];
    [v6 setText:v5];

    v7 = [(RCRecordingView *)self overviewEndTimeLabel];
    [v7 sizeToFit];
  }

  if (a3 == 0.0)
  {
    v8 = [(RCRecordingView *)self descriptionView];
    [v8 setDurationLabelAccessible:0];
  }
}

- (void)_updateRecordingDescriptionViewForDuration:(double)a3
{
  v5 = [(RCRecordingView *)self displayStyle];
  if ([(RCRecordingView *)self recordingViewState])
  {
    v6 = 1;
  }

  else
  {
    v6 = self->_recordingDuration != 0.0;
  }

  v7 = [(RCRecordingView *)self descriptionView];
  [v7 setRecordingDuration:v5 == 2 withHiddenLabel:v6 isDurationLabelAX:a3];
}

- (void)setCurrentTime:(double)a3
{
  self->_currentTime = a3;
  [(RCRecordingView *)self _updateCurrentTimeLabelForTime:?];
  v5 = [(RCRecordingView *)self recordingViewState]!= 0;
  v6 = [(RCRecordingView *)self currentTimeLabel];
  [v6 setIsAccessibilityElement:v5];

  v7 = +[NSBundle mainBundle];
  v8 = [v7 localizedStringForKey:@"CURRENT_POSITION" value:&stru_100295BB8 table:0];
  v9 = [(RCRecordingView *)self currentTimeLabel];
  [v9 setAccessibilityLabel:v8];

  v10 = UIAXTimeStringForDuration();
  v11 = [(RCRecordingView *)self currentTimeLabel];
  [v11 setAccessibilityValue:v10];

  [(RCRecordingView *)self updateRecordButtonViewStateWithCurrentTime:a3];
}

- (void)_updateCurrentTimeLabelForTime:(double)a3
{
  [(RCRecordingView *)self recordingDuration];
  v5 = RCLocalizedPlaybackTime();
  v4 = [(RCRecordingView *)self currentTimeLabel];
  [v4 setText:v5];
}

- (void)updateRecordButtonViewStateWithCurrentTime:(double)a3
{
  v5 = [(RCRecordingView *)self recordingViewState];
  if (v5 > 8 || ((1 << v5) & 0x1C3) == 0)
  {
    [(RCRecordingView *)self recordingDuration];
    v8 = v7;
    [(RCRecordingView *)self currentTrackTimeRange];
    if ((RCTimeRangeEqualToTimeRange() & 1) == 0)
    {
      [(RCRecordingView *)self currentTrackTimeRange];
      v8 = v9;
      [(RCRecordingView *)self recordingDuration];
      if (v8 >= v10)
      {
        v8 = v10;
      }
    }

    if (v8 + -0.06 <= a3)
    {
      v11 = 5;
    }

    else
    {
      v11 = 4;
    }

    if (v11 == [(RCRecordingView *)self recordingViewState])
    {

      [(RCRecordingView *)self _updateRecordButtonStateForRecordingViewState:v11];
    }

    else
    {

      [(RCRecordingView *)self setRecordingViewState:v11];
    }
  }
}

- (void)_updateRecordButtonStateForRecordingViewState:(int64_t)a3
{
  v3 = a3;
  if (a3 <= 8)
  {
    if (((1 << a3) & 0x38) != 0)
    {
      v7 = [(RCRecordingView *)self viewDelegate];
      v8 = [v7 willRecordIntoTrackTwo];

      v9 = 3;
      if (v3 == 5)
      {
        v9 = 4;
      }

      if (v8)
      {
        v3 = 0;
      }

      else
      {
        v3 = v9;
      }

      goto LABEL_20;
    }

    if (((1 << a3) & 0xC0) != 0)
    {
      goto LABEL_19;
    }

    if (((1 << a3) & 0x104) != 0)
    {
      return;
    }
  }

  if (a3)
  {
    if (a3 != 1)
    {
      v10 = OSLogForCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        sub_1001BA3EC(v10, v11, v12, v13, v14, v15, v16, v17);
      }

      v3 = 0;
      goto LABEL_20;
    }

    v5 = +[RCRecorderStyleProvider sharedStyleProvider];
    if ([v5 supportsCompactRecordingCard])
    {
      v6 = [(RCRecordingView *)self displayStyle];

      if (v6 != 3)
      {
        v3 = 2;
        goto LABEL_20;
      }
    }

    else
    {
    }

LABEL_19:
    v3 = 1;
  }

LABEL_20:
  v18 = [(RCRecordingView *)self recordButtonRepository];
  [v18 setState:v3];

  v19 = [(RCRecordingView *)self viewDelegate];
  [v19 didUpdateRecordButtonState];
}

- (double)customDetentFixedHeight:(BOOL)a3 includeBottomSafeArea:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v7 = +[RCRecorderStyleProvider sharedStyleProvider];
  [v7 customDetentMainContainerStackViewHeight];
  v9 = v8;

  v10 = 0.0;
  if (v5)
  {
    [(RCRecordingView *)self safeAreaInsets];
    v10 = v11 + 0.0;
  }

  if (v4)
  {
    [(RCRecordingView *)self safeAreaInsets];
    v10 = v10 + v12;
  }

  return v9 + v10;
}

- (double)bottomAccessoryDisplayStyleFixedHeight
{
  v3 = +[RCRecorderStyleProvider sharedStyleProvider];
  [v3 bottomAccessoryMainContainerStackViewHeight];
  v5 = v4;

  [(RCRecordingView *)self safeAreaInsets];
  v7 = v6;
  [(RCRecordingView *)self safeAreaInsets];
  return v5 + v7 + v8;
}

- (void)setWaveformView:(id)a3
{
  self->_waveformView = a3;
  [a3 setAccessibilityIgnoresInvertColors:0];

  [(RCRecordingView *)self _syncCenterContentContainerViewState];
}

- (void)setTranscriptView:(id)a3
{
  objc_storeWeak(&self->_transcriptView, a3);

  [(RCRecordingView *)self _syncCenterContentContainerViewState];
}

- (void)setCenterContentViewState:(int64_t)a3
{
  if (self->_centerContentViewState != a3)
  {
    v5 = [(RCRecordingView *)self viewDelegate];
    [v5 willUpdateRecordingCenterContentViewState:a3];

    self->_centerContentViewState = a3;
    v6 = [(RCRecordingView *)self transcriptionButton];
    [v6 setSelected:a3 == 1];

    v7 = [(RCRecordingView *)self editingToolbarProvider];
    [v7 setIsTranscriptViewDisplayed:a3 == 1];

    [(RCRecordingView *)self updateMoreActionsAndPlaybackSettingButtonVisibility];
    [(RCRecordingView *)self _syncCenterContentContainerViewState];
    [(RCRecordingView *)self setTranscriptViewState:0];
    [(RCRecordingView *)self _updateSpacingBetweenArrangedSubviews];
    v8 = [(RCRecordingView *)self viewDelegate];
    [v8 didUpdateRecordingCenterContentViewState];

    if (a3 == 1)
    {
      v9 = UIAccessibilityScreenChangedNotification;
      v10 = [(RCRecordingView *)self transcriptView];
      UIAccessibilityPostNotification(v9, v10);
    }
  }
}

- (void)_updateCenterContentContainerSubviewConstraints
{
  if ([(RCRecordingView *)self centerContentViewState]== 1)
  {
    WeakRetained = objc_loadWeakRetained(&self->_transcriptView);
    if (!WeakRetained)
    {
      goto LABEL_7;
    }
  }

  else
  {
    WeakRetained = self->_waveformView;
    if (!WeakRetained)
    {
      goto LABEL_7;
    }
  }

  v11 = WeakRetained;
  v4 = [(RCRecordingView *)self centerContentContainerView];
  v5 = [v4 subviews];
  v6 = [v5 containsObject:v11];

  WeakRetained = v11;
  if (v6)
  {
    v7 = [(RCRecordingView *)self centerContentContainerView];
    [(UIView *)v11 addTopToTopConstraintWithView:v7 padding:0.0];

    v8 = [(RCRecordingView *)self centerContentContainerView];
    [(UIView *)v11 addBottomToBottomConstraintWithView:v8 padding:0.0];

    v9 = [(RCRecordingView *)self centerContentContainerView];
    [(UIView *)v11 addLeadingToLeadingConstraintWithView:v9 padding:0.0];

    v10 = [(RCRecordingView *)self centerContentContainerView];
    [(UIView *)v11 addTrailingToTrailingConstraintWithView:v10 padding:0.0];

    WeakRetained = v11;
  }

LABEL_7:
}

- (void)setTranscriptViewState:(int64_t)a3
{
  if (self->_transcriptViewState != a3)
  {
    self->_transcriptViewState = a3;
    v6 = [(RCRecordingView *)self viewDelegate];
    [v6 willUpdateRecordingViewTranscriptState:a3];

    [(RCRecordingView *)self _syncTranscriptViewState];

    [(RCRecordingView *)self _updateSpacingBetweenArrangedSubviews];
  }
}

- (void)_syncTranscriptViewState
{
  v3 = [(RCRecordingView *)self shouldHideBottomElements];
  v4 = v3;
  if (v3)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = 1.0;
  }

  v6 = [(RCRecordingView *)self createTranscriptViewExpansionAnimator];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10008FF5C;
  v7[3] = &unk_10028BE10;
  v7[4] = self;
  v8 = v4;
  *&v7[5] = v5;
  [v6 addAnimations:v7];
  [v6 startAnimation];
}

- (id)_bottomElementsToHide
{
  v3 = [(RCRecordingView *)self currentTimeLabel];
  v4 = [(RCRecordingView *)self shuttleBar];
  v8[1] = v4;
  v5 = [(RCRecordingView *)self bottomControlsContainerView];
  v8[2] = v5;
  v6 = [NSArray arrayWithObjects:v8 count:3];

  return v6;
}

- (id)createTranscriptViewExpansionAnimator
{
  v2 = [[UISpringTimingParameters alloc] initWithMass:1.0 stiffness:450.0 damping:45.0 initialVelocity:{0.0, 0.0}];
  v3 = [[UIViewPropertyAnimator alloc] initWithDuration:v2 timingParameters:0.0];

  return v3;
}

- (void)setOverviewWaveformView:(id)a3
{
  v7 = a3;
  self->_overviewWaveformView = v7;
  v4 = [(RCRecordingView *)self overviewWaveformContainerView];
  if (v4)
  {
    [(UIView *)self->_overviewWaveformView removeFromSuperview];
    [v4 addSubview:v7];
    [(RCRecordingView *)self _applyOverviewWaveformViewConstraints];
    [(UIView *)v7 setAccessibilityIgnoresInvertColors:0];
    v5 = +[RCRecorderStyleProvider sharedStyleProvider];
    v6 = [v5 hasBeginAndEndTimeLabelAtOverviewWaveform];

    if (v6)
    {
      [(RCRecordingView *)self _addLabelsToWaveformOverview:v7 containerView:v4];
    }
  }
}

- (void)_applyOverviewWaveformViewConstraints
{
  v7 = [(RCRecordingView *)self overviewWaveformView];
  [v7 removeAllConstraints];
  v3 = [(RCRecordingView *)self overviewWaveformContainerView];
  v4 = +[RCRecorderStyleProvider sharedStyleProvider];
  [v4 recordingViewOverviewWaveformSidePadding];
  v6 = v5;
  [v7 alignCenterTopToCenterTopOfView:v3 padding:0.0];
  [v7 alignCenterBottomToCenterBottomOfView:v3 padding:0.0];
  [v7 constrainWidthWithView:v3 padding:v6 * -2.0];
}

- (void)_addLabelsToWaveformOverview:(id)a3 containerView:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(RCRecordingView *)self overviewBeginTimeLabel];
  [v8 removeFromSuperview];

  v9 = [(RCRecordingView *)self overviewEndTimeLabel];
  [v9 removeFromSuperview];

  v10 = [(RCRecordingView *)self overviewBeginTimeLabel];
  [v10 removeAllConstraints];

  v11 = [(RCRecordingView *)self overviewEndTimeLabel];
  [v11 removeAllConstraints];

  v12 = [(RCRecordingView *)self overviewBeginTimeLabel];
  [v6 addSubview:v12];

  v13 = [(RCRecordingView *)self overviewEndTimeLabel];
  [v6 addSubview:v13];

  v14 = +[RCRecorderStyleProvider sharedStyleProvider];
  [v14 beginEndLabelsTopPadding];
  v16 = v15;

  v17 = [(RCRecordingView *)self overviewBeginTimeLabel];
  [v17 addTopToBottomConstraintWithView:v7 padding:v16];

  v18 = [(RCRecordingView *)self overviewBeginTimeLabel];
  [v18 addLeftToLeftConstraintWithView:v7 padding:0.0];

  v19 = [(RCRecordingView *)self overviewEndTimeLabel];
  [v19 addTopToBottomConstraintWithView:v7 padding:v16];

  v20 = [(RCRecordingView *)self overviewEndTimeLabel];
  [v20 addRightToRightConstraintWithView:v7 padding:0.0];

  v21 = RCLocalizedDuration();
  v22 = [(RCRecordingView *)self overviewBeginTimeLabel];
  [v22 setText:v21];

  v23 = [(RCRecordingView *)self overviewBeginTimeLabel];
  [v23 sizeToFit];

  v24 = RCLocalizedDuration();
  v25 = [(RCRecordingView *)self overviewEndTimeLabel];
  [v25 setText:v24];

  v26 = [(RCRecordingView *)self overviewEndTimeLabel];
  [v26 sizeToFit];

  v27 = [(RCRecordingView *)self overviewBeginTimeLabel];
  [v27 setIsAccessibilityElement:0];

  v28 = [(RCRecordingView *)self overviewEndTimeLabel];
  [v28 setIsAccessibilityElement:0];
}

- (RCRecordingView)initWithRecordButtonRepository:(id)a3 interactionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = RCRecordingView;
  v8 = [(RCRecordingView *)&v14 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  v9 = v8;
  if (v8)
  {
    [(RCRecordingView *)v8 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(RCRecordingView *)v9 setRecordButtonRepository:v6];
    v10 = [(RCRecordingView *)v9 recordButtonRepository];

    if (v10)
    {
      v11 = [[_TtC10VoiceMemos24RCRecordButtonAppFactory alloc] initWithRecordButtonRepository:v6 interactionHandler:v7];
      [(RCRecordingView *)v9 setRecordButtonFactory:v11];
    }

    v9->_displayStyle = 1;
    [(RCRecordingView *)v9 setAllowsNewRecordings:1];
    v12 = +[_TtC10VoiceMemos33TranscriptionAvailabilityProvider shared];
    [v12 registerObserver:v9];

    [(RCRecordingView *)v9 _accessibilitySetInterfaceStyleIntent:2];
  }

  return v9;
}

- (void)_setupOverviewWaveformContainerViewConstraints
{
  v3 = +[RCRecorderStyleProvider sharedStyleProvider];
  [v3 overviewWaveformHeight];
  v5 = v4;

  v8 = [(RCRecordingView *)self overviewWaveformContainerView];
  v6 = [v8 heightAnchor];
  v7 = [v6 constraintEqualToConstant:v5];
  [v7 setActive:1];
}

- (void)_setupCenterContentContainerViewConstraints
{
  v10 = +[RCRecorderStyleProvider sharedStyleProvider];
  [v10 overviewWaveformHeight];
  v4 = v3;
  [v10 annotationViewHeight];
  v6 = v4 + v5;
  v7 = [(RCRecordingView *)self centerContentContainerView];
  v8 = [v7 heightAnchor];
  v9 = [v8 constraintGreaterThanOrEqualToConstant:v6];
  [v9 setActive:1];
}

- (void)_addDoneAndCancelButtonsToBottomControlsContainerView
{
  v3 = [(RCRecordingView *)self bottomControlsContainerView];
  v4 = [v3 trailingContainerView];

  v5 = [(RCRecordingView *)self doneButton];
  v6 = [v5 superview];
  v7 = v6;
  if (v6 != v4)
  {

LABEL_4:
    v10 = [(RCRecordingView *)self doneButton];
    [(RCRecordingView *)self _dropView:v10];

    v11 = [(RCRecordingView *)self cancelButton];
    [(RCRecordingView *)self _dropView:v11];

    v12 = [(RCRecordingView *)self doneButton];
    [v4 addSubview:v12];

    v13 = [(RCRecordingView *)self cancelButton];
    [v4 addSubview:v13];

    v14 = [(RCRecordingView *)self doneButton];
    [v14 setTranslatesAutoresizingMaskIntoConstraints:0];

    v15 = [(RCRecordingView *)self cancelButton];
    [v15 setTranslatesAutoresizingMaskIntoConstraints:0];

    v16 = +[RCRecorderStyleProvider sharedStyleProvider];
    [v16 bottomControlsContainerInterElementPadding];
    v18 = v17;

    v45 = [(RCRecordingView *)self doneButton];
    v44 = [v45 centerYAnchor];
    v43 = [v4 centerYAnchor];
    v42 = [v44 constraintEqualToAnchor:v43];
    v47[0] = v42;
    v41 = [(RCRecordingView *)self cancelButton];
    v40 = [v41 centerYAnchor];
    v39 = [v4 centerYAnchor];
    v38 = [v40 constraintEqualToAnchor:v39];
    v47[1] = v38;
    v37 = [(RCRecordingView *)self cancelButton];
    v36 = [v37 leadingAnchor];
    v35 = [v4 leadingAnchor];
    v34 = [v36 constraintEqualToAnchor:v35];
    v47[2] = v34;
    v33 = [(RCRecordingView *)self cancelButton];
    v19 = [v33 trailingAnchor];
    v20 = [(RCRecordingView *)self doneButton];
    v21 = [v20 leadingAnchor];
    v22 = [v19 constraintEqualToAnchor:v21 constant:-v18];
    v47[3] = v22;
    v23 = [(RCRecordingView *)self doneButton];
    v24 = [v23 trailingAnchor];
    [v4 trailingAnchor];
    v25 = v46 = v4;
    v26 = [v24 constraintEqualToAnchor:v25];
    v47[4] = v26;
    v27 = [NSArray arrayWithObjects:v47 count:5];
    [NSLayoutConstraint activateConstraints:v27];

    v28 = +[RCRecorderStyleProvider sharedStyleProvider];
    [v28 doneButtonHeight];
    v30 = v29;

    [(RCRecordingView *)self _adjustCancelAndDoneButtonsWidth];
    v31 = [(RCRecordingView *)self doneButton];
    [v31 constrainHeight:v30];

    v32 = [(RCRecordingView *)self cancelButton];
    [v32 constrainHeight:v30];

    v4 = v46;
    goto LABEL_5;
  }

  v8 = [(RCRecordingView *)self cancelButton];
  v9 = [v8 superview];

  if (v9 != v4)
  {
    goto LABEL_4;
  }

LABEL_5:
}

- (void)_addTrimDeleteButtonsToBottomControlsContainerView
{
  v3 = +[RCRecorderStyleProvider sharedStyleProvider];
  if ([v3 hostsTrimDeleteButtonsOnLeadingEdgeOfBottomControls])
  {
    [(RCRecordingView *)self _addTrimDeleteButtonsToLeadingEdge];
  }

  else
  {
    [(RCRecordingView *)self _addTrimDeleteButtonsToLeadingAndTrailingEdge];
  }
}

- (void)_addTrimDeleteButtonsToLeadingEdge
{
  v3 = [(RCRecordingView *)self bottomControlsContainerView];
  v4 = [v3 leadingContainerView];

  v5 = [(RCRecordingView *)self trimToSelectionButton];
  v6 = [v5 superview];
  v7 = v6;
  if (v6 != v4)
  {

LABEL_4:
    v10 = [(RCRecordingView *)self trimToSelectionButton];
    [(RCRecordingView *)self _dropView:v10];

    v11 = [(RCRecordingView *)self deleteSelectionButton];
    [(RCRecordingView *)self _dropView:v11];

    v12 = [(RCRecordingView *)self trimToSelectionButton];
    [v4 addSubview:v12];

    v13 = [(RCRecordingView *)self deleteSelectionButton];
    [v4 addSubview:v13];

    v14 = [(RCRecordingView *)self trimToSelectionButton];
    [v14 setTranslatesAutoresizingMaskIntoConstraints:0];

    v15 = [(RCRecordingView *)self deleteSelectionButton];
    [v15 setTranslatesAutoresizingMaskIntoConstraints:0];

    v16 = +[RCRecorderStyleProvider sharedStyleProvider];
    [v16 bottomControlsContainerInterElementPadding];
    v18 = v17;

    v40 = [(RCRecordingView *)self trimToSelectionButton];
    v39 = [v40 centerYAnchor];
    v38 = [v4 centerYAnchor];
    v37 = [v39 constraintEqualToAnchor:v38];
    v41[0] = v37;
    v36 = [(RCRecordingView *)self deleteSelectionButton];
    v35 = [v36 centerYAnchor];
    v34 = [v4 centerYAnchor];
    v33 = [v35 constraintEqualToAnchor:v34];
    v41[1] = v33;
    v32 = [(RCRecordingView *)self trimToSelectionButton];
    v31 = [v32 leadingAnchor];
    v30 = [v4 leadingAnchor];
    v29 = [v31 constraintEqualToAnchor:v30];
    v41[2] = v29;
    v28 = [(RCRecordingView *)self trimToSelectionButton];
    v27 = [v28 trailingAnchor];
    v19 = [(RCRecordingView *)self deleteSelectionButton];
    v20 = [v19 leadingAnchor];
    v21 = [v27 constraintEqualToAnchor:v20 constant:-v18];
    v41[3] = v21;
    v22 = [(RCRecordingView *)self deleteSelectionButton];
    v23 = [v22 trailingAnchor];
    v24 = [v4 trailingAnchor];
    v25 = [v23 constraintEqualToAnchor:v24];
    v41[4] = v25;
    v26 = [NSArray arrayWithObjects:v41 count:5];
    [NSLayoutConstraint activateConstraints:v26];

    [(RCRecordingView *)self _adjustTrimAndDeleteSelectionButtonsSize];
    goto LABEL_5;
  }

  v8 = [(RCRecordingView *)self deleteSelectionButton];
  v9 = [v8 superview];

  if (v9 != v4)
  {
    goto LABEL_4;
  }

LABEL_5:
}

- (void)_addTrimDeleteButtonsToLeadingAndTrailingEdge
{
  v3 = [(RCRecordingView *)self bottomControlsContainerView];
  v4 = [v3 leadingContainerView];

  v5 = [(RCRecordingView *)self bottomControlsContainerView];
  v6 = [v5 trailingContainerView];

  v7 = [(RCRecordingView *)self trimToSelectionButton];
  v8 = [v7 superview];
  v9 = v8;
  if (v8 != v4)
  {

LABEL_4:
    v12 = [(RCRecordingView *)self trimToSelectionButton];
    [(RCRecordingView *)self _dropView:v12];

    v13 = [(RCRecordingView *)self deleteSelectionButton];
    [(RCRecordingView *)self _dropView:v13];

    v14 = +[RCRecorderStyleProvider sharedStyleProvider];
    [v14 bottomControlsContainerInterElementPadding];
    v16 = v15;

    v17 = [(RCRecordingView *)self trimToSelectionButton];
    [v17 setTranslatesAutoresizingMaskIntoConstraints:0];

    v18 = [(RCRecordingView *)self trimToSelectionButton];
    [v4 addSubview:v18];

    v45 = [(RCRecordingView *)self trimToSelectionButton];
    v43 = [v45 centerYAnchor];
    v41 = [v4 centerYAnchor];
    v39 = [v43 constraintEqualToAnchor:v41];
    v49[0] = v39;
    v37 = [(RCRecordingView *)self trimToSelectionButton];
    v19 = [v37 leadingAnchor];
    v20 = [v4 leadingAnchor];
    v21 = [v19 constraintEqualToAnchor:v20];
    v49[1] = v21;
    v22 = [(RCRecordingView *)self trimToSelectionButton];
    v23 = [v22 trailingAnchor];
    v24 = [v4 trailingAnchor];
    [v23 constraintEqualToAnchor:v24 constant:v16 * -0.5];
    v25 = v47 = v4;
    v49[2] = v25;
    v26 = [NSArray arrayWithObjects:v49 count:3];
    [NSLayoutConstraint activateConstraints:v26];

    v27 = [(RCRecordingView *)self deleteSelectionButton];
    [v27 setTranslatesAutoresizingMaskIntoConstraints:0];

    v28 = [(RCRecordingView *)self deleteSelectionButton];
    [v6 addSubview:v28];

    v46 = [(RCRecordingView *)self deleteSelectionButton];
    v44 = [v46 centerYAnchor];
    v42 = [v6 centerYAnchor];
    v40 = [v44 constraintEqualToAnchor:v42];
    v48[0] = v40;
    v38 = [(RCRecordingView *)self deleteSelectionButton];
    v29 = [v38 leadingAnchor];
    v30 = [v6 leadingAnchor];
    v31 = [v29 constraintEqualToAnchor:v30 constant:v16 * 0.5];
    v48[1] = v31;
    v32 = [(RCRecordingView *)self deleteSelectionButton];
    v33 = [v32 trailingAnchor];
    v34 = [v6 trailingAnchor];
    v35 = [v33 constraintEqualToAnchor:v34];
    v48[2] = v35;
    v36 = [NSArray arrayWithObjects:v48 count:3];
    [NSLayoutConstraint activateConstraints:v36];

    v4 = v47;
    [(RCRecordingView *)self _adjustTrimAndDeleteSelectionButtonsSize];
    goto LABEL_5;
  }

  v10 = [(RCRecordingView *)self deleteSelectionButton];
  v11 = [v10 superview];

  if (v11 != v6)
  {
    goto LABEL_4;
  }

LABEL_5:
}

- (void)_setupBottomControlsContainerViewConstraints
{
  v3 = [(RCRecordingView *)self bottomControlsContainerView];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];

  v4 = +[RCRecorderStyleProvider sharedStyleProvider];
  [v4 bottomControlsContainerHeight];
  v6 = v5;

  v7 = [(RCRecordingView *)self bottomControlsContainerView];
  v8 = [v7 heightAnchor];
  v9 = [v8 constraintEqualToConstant:v6];
  [v9 setActive:1];

  [(RCRecordingView *)self _updateBottomControlsContainerViewSubviews];
}

- (void)_setupTopSpacerViewConstraints
{
  v3 = +[RCRecorderStyleProvider sharedStyleProvider];
  [v3 topSpacerViewHeight];
  v5 = v4;

  v6 = [(RCRecordingView *)self topSpacerView];
  v7 = [v6 heightAnchor];
  v8 = [v7 constraintEqualToConstant:v5];
  [(RCRecordingView *)self setTopSpacerViewHeightConstraint:v8];

  v9 = [(RCRecordingView *)self topSpacerViewHeightConstraint];
  [v9 setActive:1];
}

- (void)_setupBottomSpacerViewConstraints
{
  v3 = +[RCRecorderStyleProvider sharedStyleProvider];
  [v3 bottomSpacerViewHeight];
  v5 = v4;

  v6 = [(RCRecordingView *)self bottomSpacerView];
  v7 = [v6 heightAnchor];
  v8 = [v7 constraintEqualToConstant:v5];
  [(RCRecordingView *)self setBottomSpacerViewHeightConstraint:v8];

  v9 = [(RCRecordingView *)self bottomSpacerViewHeightConstraint];
  [v9 setActive:1];
}

- (void)setupSubviews
{
  if (![(RCRecordingView *)self didSetupSubviews])
  {
    [(RCRecordingView *)self _setupTopSpacerViewConstraints];
    [(RCRecordingView *)self _setupBottomSpacerViewConstraints];
    [(RCRecordingView *)self _setupButtonsAndDescriptionContainerViewConstraints];
    [(RCRecordingView *)self _setupEditingToolbar];
    [(RCRecordingView *)self _setupOverviewWaveformContainerViewConstraints];
    [(RCRecordingView *)self _setupCenterContentContainerViewConstraints];
    [(RCRecordingView *)self _setupBottomControlsContainerViewConstraints];
    [(RCRecordingView *)self _updateVerticalContentHuggingAndCompressionResistancePriorities];
    v3 = [(RCRecordingView *)self mainContainerStackView];
    [(RCRecordingView *)self addSubview:v3];

    v4 = [(RCRecordingView *)self mainContainerStackView];
    [v4 setTranslatesAutoresizingMaskIntoConstraints:0];

    v25 = [(RCRecordingView *)self mainContainerStackView];
    v23 = [v25 topAnchor];
    v24 = [(RCRecordingView *)self safeAreaLayoutGuide];
    v22 = [v24 topAnchor];
    v21 = [v23 constraintEqualToAnchor:v22];
    v26[0] = v21;
    v20 = [(RCRecordingView *)self mainContainerStackView];
    v18 = [v20 bottomAnchor];
    v19 = [(RCRecordingView *)self safeAreaLayoutGuide];
    v17 = [v19 bottomAnchor];
    v16 = [v18 constraintEqualToAnchor:v17];
    v26[1] = v16;
    v15 = [(RCRecordingView *)self mainContainerStackView];
    v14 = [v15 leadingAnchor];
    v5 = [(RCRecordingView *)self safeAreaLayoutGuide];
    v6 = [v5 leadingAnchor];
    v7 = [v14 constraintEqualToAnchor:v6];
    v26[2] = v7;
    v8 = [(RCRecordingView *)self mainContainerStackView];
    v9 = [v8 trailingAnchor];
    v10 = [(RCRecordingView *)self safeAreaLayoutGuide];
    v11 = [v10 trailingAnchor];
    v12 = [v9 constraintEqualToAnchor:v11];
    v26[3] = v12;
    v13 = [NSArray arrayWithObjects:v26 count:4];
    [NSLayoutConstraint activateConstraints:v13];

    [(RCRecordingView *)self _styleView];
    [(RCRecordingView *)self setRecordingViewState:0 animated:0 force:1];
    [(RCRecordingView *)self setDidSetupSubviews:1];
  }
}

- (void)_addShuttleBarToBottomControlsContainerView
{
  v3 = [(RCRecordingView *)self shuttleBar];
  v4 = [v3 superview];
  v5 = [(RCRecordingView *)self bottomControlsContainerView];
  v6 = [v4 isEqual:v5];

  if ((v6 & 1) == 0)
  {
    v7 = [(RCRecordingView *)self shuttleBar];
    [(RCRecordingView *)self _dropView:v7];

    v28 = [(RCRecordingView *)self shuttleBar];
    v8 = [(RCRecordingView *)self bottomControlsContainerView];
    v9 = [v8 centerContainerView];

    [v9 addSubview:v28];
    v10 = [(RCRecordingView *)self shuttleBar];
    [v10 setTranslatesAutoresizingMaskIntoConstraints:0];

    v27 = [(RCRecordingView *)self shuttleBar];
    v26 = [v27 topAnchor];
    v25 = [v9 topAnchor];
    v24 = [v26 constraintEqualToAnchor:v25];
    v29[0] = v24;
    v23 = [(RCRecordingView *)self shuttleBar];
    v22 = [v23 bottomAnchor];
    v21 = [v9 bottomAnchor];
    v20 = [v22 constraintEqualToAnchor:v21];
    v29[1] = v20;
    v11 = [(RCRecordingView *)self shuttleBar];
    v12 = [v11 leadingAnchor];
    v13 = [v9 leadingAnchor];
    v14 = [v12 constraintEqualToAnchor:v13];
    v29[2] = v14;
    v15 = [(RCRecordingView *)self shuttleBar];
    v16 = [v15 trailingAnchor];
    v17 = [v9 trailingAnchor];
    v18 = [v16 constraintEqualToAnchor:v17];
    v29[3] = v18;
    v19 = [NSArray arrayWithObjects:v29 count:4];
    [NSLayoutConstraint activateConstraints:v19];

    [v28 setHidden:0];
  }
}

- (void)prepareForPresent:(BOOL)a3
{
  [(RCRecordingView *)self setDidCompletePresent:0];
  v9 = +[RCRecorderStyleProvider sharedStyleProvider];
  if ([v9 animatesRecordingCardPresentation])
  {
    [(RCRecordingView *)self updateTopBottomSpacersForPresent];
    if (!a3)
    {
      [(RCRecordingView *)self _dimRecordingDescriptionView:1 animated:0];
    }
  }

  v5 = [(RCRecordingView *)self viewDelegate];
  v6 = [v5 recordingCardNavigationItem];
  v7 = [(RCRecordingView *)self editingToolbarProvider];
  [v7 setNavigationItem:v6];

  [(RCRecordingView *)self _updateMoreButtonMenu];
  v8 = [(RCRecordingView *)self recordButtonRepository];
  [v8 setAnimationsAreDisabled:1];
}

- (void)completePresent
{
  [(RCRecordingView *)self setDidCompletePresent:1];
  v6 = +[RCRecorderStyleProvider sharedStyleProvider];
  if ([v6 animatesRecordingCardPresentation])
  {
    [(RCRecordingView *)self resetTopBottomSpacers];
    [(RCRecordingView *)self _dimRecordingDescriptionView:0 animated:1];
  }

  [(RCRecordingView *)self _syncTapGestureRecognizerEnablement];
  v3 = UIAccessibilityLayoutChangedNotification;
  v4 = [(RCRecordingView *)self recordButton];
  UIAccessibilityPostNotification(v3, v4);

  v5 = [(RCRecordingView *)self recordButtonRepository];
  [v5 setAnimationsAreDisabled:0];
}

- (void)prepareForDismiss
{
  [(RCRecordingView *)self setDidCompletePresent:0];
  v4 = +[RCRecorderStyleProvider sharedStyleProvider];
  if ([v4 animatesRecordingCardPresentation])
  {
    [(RCRecordingView *)self updateTopBottomSpacersForDismiss];
  }

  v3 = [(RCRecordingView *)self recordButtonRepository];
  [v3 setAnimationsAreDisabled:1];
}

- (void)cleanupAfterDismiss
{
  [(RCRecordingView *)self setDidCompletePresent:0];
  [(RCRecordingView *)self setRecordingViewState:0];
  v3 = +[RCRecorderStyleProvider sharedStyleProvider];
  v4 = [v3 animatesRecordingCardPresentation];

  if (v4)
  {
    [(RCRecordingView *)self resetTopBottomSpacers];
  }

  v5 = [(RCRecordingView *)self recordButtonRepository];
  [v5 setAnimationsAreDisabled:0];

  LODWORD(v5) = UIAccessibilityLayoutChangedNotification;
  v6 = [(RCRecordingView *)self recordButton];
  UIAccessibilityPostNotification(v5, v6);
}

- (void)updateForRecordingStart
{
  v3 = [(RCRecordingView *)self recordingViewState]- 4;
  if (v3 > 3)
  {
    v4 = 1;
  }

  else
  {
    v4 = qword_100240488[v3];
  }

  [(RCRecordingView *)self setRecordingViewState:v4];
}

- (void)updateForRecordingEnd:(BOOL)a3
{
  v5 = [(RCRecordingView *)self displayStyle];
  v6 = [(RCRecordingView *)self dismissalDisplayStyle];
  if (v5 == 3 || a3)
  {
    if (v5 != v6)
    {

      [(RCRecordingView *)self setRecordingViewState:5];
    }
  }

  else
  {
    [(RCRecordingView *)self setDisplayStyle:v6];
    [(RCRecordingView *)self setRecordingViewState:0];

    [(RCRecordingView *)self setCurrentTime:0.0];
  }
}

- (void)updateForEditingStart
{
  [(RCRecordingView *)self setDisplayStyle:3];
  [(RCRecordingView *)self setRecordingViewState:3];
  [(RCRecordingView *)self currentTime];

  [(RCRecordingView *)self updateRecordButtonViewStateWithCurrentTime:?];
}

- (void)layoutSubviews
{
  v8.receiver = self;
  v8.super_class = RCRecordingView;
  [(RCRecordingView *)&v8 layoutSubviews];
  [(RCRecordingView *)self bounds];
  v4 = v3;
  v5 = [(RCRecordingView *)self window];
  if (!v5 || [(RCRecordingView *)self isSyncingViewsToState])
  {
    goto LABEL_5;
  }

  [(RCRecordingView *)self previousViewHeight];
  v7 = v6;

  if (v7 != v4)
  {
    v5 = [(RCRecordingView *)self cardPresentationDelegate];
    [v5 recordingView:self didUpdateViewHeight:v4];
LABEL_5:
  }

  [(RCRecordingView *)self _classSpecificLayout];
  [(RCRecordingView *)self setPreviousViewHeight:v4];
}

- (void)cancelTextEditing
{
  v2 = [(RCRecordingView *)self textFieldBeingEdited];
  [v2 resignFirstResponder];
}

- (void)updateTrackState:(unint64_t)a3
{
  v5 = [(RCRecordingView *)self recordButtonRepository];
  [v5 setTrackState:a3];

  v6 = [(RCRecordingView *)self transcriptionButton];
  [v6 setEnabled:a3 != 2];
}

- (void)toggleTranscriptView:(id)a3
{
  v4 = a3;
  v5 = [(RCRecordingView *)self viewDelegate];
  [v5 performControlsAction:42 position:v4 source:0.0];
}

- (void)deviceTranscriptionSupportDidChange:(BOOL)a3
{
  if ([(RCRecordingView *)self didSetupSubviews])
  {
    [(RCRecordingView *)self _updateMoreButtonMenu];

    [(RCRecordingView *)self _updateTranscriptionButtonVisibility];
  }
}

- (void)setSaveRecordingAction:(id)a3
{
  v4 = a3;
  v5 = [_TtC10VoiceMemos22RCSaveAsNewMenuFactory saveRecordingActionWithActionHandler:self];
  [v4 addAction:v5 forControlEvents:64];
}

- (void)showAlertForSaveAsNew:(id)a3
{
  v4 = a3;
  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"SAVE_RECORDING" value:&stru_100295BB8 table:0];
  v7 = +[NSBundle mainBundle];
  v8 = [v7 localizedStringForKey:@"SAVE_AS_NEW_RECORDING_ALERT_MESSAGE" value:&stru_100295BB8 table:0];
  v9 = [UIAlertController alertControllerWithTitle:v6 message:v8 preferredStyle:1];

  v10 = +[NSBundle mainBundle];
  v11 = [v10 localizedStringForKey:@"SAVE_AS_NEW_RECORDING" value:&stru_100295BB8 table:0];
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_1000929D8;
  v33[3] = &unk_10028B378;
  v33[4] = self;
  v12 = [UIAlertAction actionWithTitle:v11 style:0 handler:v33];

  v13 = +[NSBundle mainBundle];
  v14 = [v13 localizedStringForKey:@"SAVE_RECORDING" value:&stru_100295BB8 table:0];
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_1000929EC;
  v31[3] = &unk_10028BE38;
  v31[4] = self;
  v15 = v4;
  v32 = v15;
  v16 = [UIAlertAction actionWithTitle:v14 style:2 handler:v31];

  objc_initWeak(&location, v9);
  v17 = +[NSBundle mainBundle];
  v18 = [v17 localizedStringForKey:@"CANCEL" value:&stru_100295BB8 table:0];
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_100092A00;
  v28[3] = &unk_10028BE60;
  objc_copyWeak(&v29, &location);
  v19 = [UIAlertAction actionWithTitle:v18 style:1 handler:v28];

  v35[0] = v19;
  v35[1] = v12;
  v35[2] = v16;
  [NSArray arrayWithObjects:v35 count:3];
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v20 = v25 = 0u;
  v21 = [v20 countByEnumeratingWithState:&v24 objects:v34 count:16];
  if (v21)
  {
    v22 = *v25;
    do
    {
      v23 = 0;
      do
      {
        if (*v25 != v22)
        {
          objc_enumerationMutation(v20);
        }

        [v9 addAction:{*(*(&v24 + 1) + 8 * v23), v24}];
        v23 = v23 + 1;
      }

      while (v21 != v23);
      v21 = [v20 countByEnumeratingWithState:&v24 objects:v34 count:16];
    }

    while (v21);
  }

  [v9 rc_showInMainWindow];
  objc_destroyWeak(&v29);
  objc_destroyWeak(&location);
}

- (void)assignActionOnDoneButton:(id)a3
{
  v4 = a3;
  [(RCRecordingView *)self resetDoneButtonSaveAction:v4];
  if ([(RCRecordingView *)self shouldSaveAsNew])
  {
    v5 = +[RCRecorderStyleProvider sharedStyleProvider];
    v6 = [v5 presentsSaveAsNewAlert];

    if (v6)
    {
      v11 = _NSConcreteStackBlock;
      v12 = 3221225472;
      v13 = sub_100092BC0;
      v14 = &unk_10028BE88;
      v15 = self;
      v7 = v4;
      v16 = v7;
      v8 = [UIAction actionWithHandler:&v11];
      [v7 addAction:v8 forControlEvents:{64, v11, v12, v13, v14, v15}];
    }

    else
    {
      v9 = [v4 menu];

      if (!v9)
      {
        v10 = [_TtC10VoiceMemos22RCSaveAsNewMenuFactory createMenuWithAutomaticallyPause:1 actionHandler:self];
        [v4 setMenu:v10];
        [v4 setShowsMenuAsPrimaryAction:1];
      }
    }
  }

  else
  {
    [v4 setMenu:0];
    [v4 setShowsMenuAsPrimaryAction:0];
    [(RCRecordingView *)self setSaveRecordingAction:v4];
  }
}

- (void)cancelButtonTapped
{
  v4 = [(RCRecordingView *)self viewDelegate];
  v3 = [(RCRecordingView *)self cancelButton];
  [v4 performControlsAction:26 position:v3 source:0.0];
}

- (void)_handleTrimToSelection
{
  v4 = [(RCRecordingView *)self viewDelegate];
  v3 = [(RCRecordingView *)self deleteSelectionButton];
  [v4 performControlsAction:31 position:v3 source:0.0];
}

- (void)_handleDeleteSelection
{
  v4 = [(RCRecordingView *)self viewDelegate];
  v3 = [(RCRecordingView *)self deleteSelectionButton];
  [v4 performControlsAction:32 position:v3 source:0.0];
}

- (void)_handleTapToFullscreen:(id)a3
{
  v4 = a3;
  if (-[RCRecordingView displayStyle](self, "displayStyle") == 2 && [v4 state] == 3)
  {
    [(RCRecordingView *)self _switchToFullScreen];
  }
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v5 = a4;
  if ([(RCRecordingView *)self _stateSupportsDragGesture])
  {
    v6 = ![(RCRecordingView *)self _touchIsInExcludedView:v5];
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (BOOL)_touchIsInExcludedView:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = [(RCRecordingView *)self dragGesturePassthroughSpecs];
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = [v11 topLevelView];
        -[RCRecordingView _addSubviewsOfView:includingTopLevelView:toMutableArray:](self, "_addSubviewsOfView:includingTopLevelView:toMutableArray:", v12, [v11 includeTopLevelView], v5);
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  [v4 locationInView:self];
  v13 = [(RCRecordingView *)self hitTest:0 withEvent:?];
  v14 = [v5 containsObject:v13];

  return v14;
}

- (void)_addSubviewsOfView:(id)a3 includingTopLevelView:(BOOL)a4 toMutableArray:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  v10 = v9;
  if (v6)
  {
    [v9 addObject:v8];
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v11 = [v8 subviews];
  v12 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v18;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v18 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v17 + 1) + 8 * i);
        [v10 addObject:v16];
        [(RCRecordingView *)self _addSubviewsOfView:v16 includingTopLevelView:0 toMutableArray:v10];
      }

      v13 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v13);
  }
}

- (void)toggleFullCompact
{
  v3 = +[RCRecorderStyleProvider sharedStyleProvider];
  v4 = [v3 supportsCompactRecordingCard];

  if (v4)
  {
    if ([(RCRecordingView *)self displayStyle]== 2)
    {

      [(RCRecordingView *)self _switchToFullScreen];
    }

    else if ([(RCRecordingView *)self displayStyle]== 3)
    {

      [(RCRecordingView *)self _switchToCompact];
    }
  }
}

- (void)_switchToFullScreen
{
  if ([(RCRecordingView *)self displayStyle]!= 3)
  {
    [(RCRecordingView *)self setDisplayStyle:3];
    [(RCRecordingView *)self setRecordingViewState:[(RCRecordingView *)self recordingViewState] animated:1 force:1];
    [(RCRecordingView *)self _updateRecordingDescriptionViewForDuration:self->_recordingDuration];
    [(RCRecordingView *)self updateMoreActionsAndPlaybackSettingButtonVisibility];
    v3 = UIAccessibilityScreenChangedNotification;

    UIAccessibilityPostNotification(v3, 0);
  }
}

- (void)_switchToCompact
{
  if ([(RCRecordingView *)self displayStyle]!= 2)
  {
    [(RCRecordingView *)self setDisplayStyle:2];
    [(RCRecordingView *)self setRecordingViewState:[(RCRecordingView *)self recordingViewState] animated:1 force:1];
    [(RCRecordingView *)self _updateRecordingDescriptionViewForDuration:self->_recordingDuration];
    [(RCRecordingView *)self setMoreActionsAndPlaybackSettingsButtonsHidden:1];
    v3 = UIAccessibilityScreenChangedNotification;

    UIAccessibilityPostNotification(v3, 0);
  }
}

- (void)_dimRecordingDescriptionView:(BOOL)a3 animated:(BOOL)a4
{
  v6 = 0.0;
  if (a4)
  {
    v7 = +[RCRecorderStyleProvider sharedStyleProvider];
    [v7 dimDescriptionViewAnimationDuration];
    v6 = v8;
  }

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000933CC;
  v9[3] = &unk_10028A988;
  v9[4] = self;
  v10 = a3;
  [UIView animateWithDuration:v9 animations:v6];
}

- (void)updateTopBottomSpacersForDismiss
{
  v3 = [(RCRecordingView *)self topSpacerViewHeightConstraint];
  LODWORD(v4) = 1132003328;
  [v3 setPriority:v4];

  v5 = [(RCRecordingView *)self topSpacerView];
  LODWORD(v6) = 1132068864;
  [v5 setContentHuggingPriority:1 forAxis:v6];

  v7 = [(RCRecordingView *)self topSpacerView];
  LODWORD(v8) = 1132068864;
  [v7 setContentCompressionResistancePriority:1 forAxis:v8];

  v10 = [(RCRecordingView *)self bottomSpacerViewHeightConstraint];
  LODWORD(v9) = 1148846080;
  [v10 setPriority:v9];
}

- (void)updateTopBottomSpacersForPresent
{
  v3 = [(RCRecordingView *)self bottomSpacerViewHeightConstraint];
  LODWORD(v4) = 1132003328;
  [v3 setPriority:v4];

  v5 = [(RCRecordingView *)self bottomSpacerView];
  LODWORD(v6) = 1132068864;
  [v5 setContentHuggingPriority:1 forAxis:v6];

  v7 = [(RCRecordingView *)self bottomSpacerView];
  LODWORD(v8) = 1132068864;
  [v7 setContentCompressionResistancePriority:1 forAxis:v8];

  v10 = [(RCRecordingView *)self topSpacerViewHeightConstraint];
  LODWORD(v9) = 1148846080;
  [v10 setPriority:v9];
}

- (void)resetTopBottomSpacers
{
  v3 = [(RCRecordingView *)self bottomSpacerViewHeightConstraint];
  LODWORD(v4) = 1148846080;
  [v3 setPriority:v4];

  v5 = [(RCRecordingView *)self topSpacerViewHeightConstraint];
  LODWORD(v6) = 1148846080;
  [v5 setPriority:v6];

  [(RCRecordingView *)self _updateVerticalContentHuggingAndCompressionResistancePriorities];
}

- (void)performControlsAction:(int64_t)a3 position:(double)a4 source:(id)a5
{
  v7 = a5;
  v8 = [(RCRecordingView *)self viewDelegate];
  [(RCRecordingView *)self currentTime];
  [v8 performControlsAction:a3 position:v7 source:?];
}

- (void)handleUpdateTitle:(id)a3
{
  v4 = a3;
  v5 = [(RCRecordingView *)self viewDelegate];
  [v5 performRenameWithNewTitle:v4];
}

- (void)didBeginEditingInTextField:(id)a3
{
  v4 = a3;
  if ([(RCRecordingView *)self displayStyle]== 2)
  {
    [(RCRecordingView *)self toggleFullCompact];
  }

  [(RCRecordingView *)self setTextFieldBeingEdited:v4];
}

- (BOOL)shouldSelectFullTitleAtBeginEditing
{
  v2 = [(RCRecordingView *)self viewDelegate];
  v3 = [v2 recordingTitleHasBeenEdited];

  return v3 ^ 1;
}

- (void)_updateAccessibilityElements
{
  v3 = [(RCRecordingView *)self descriptionView];
  v19[0] = v3;
  v4 = [(RCRecordingView *)self centerContentContainerView];
  v19[1] = v4;
  v5 = [(RCRecordingView *)self overviewWaveformContainerView];
  v19[2] = v5;
  v6 = [(RCRecordingView *)self currentTimeLabel];
  v19[3] = v6;
  v7 = [(RCRecordingView *)self trimToSelectionButton];
  v19[4] = v7;
  v8 = [(RCRecordingView *)self deleteSelectionButton];
  v19[5] = v8;
  v9 = [NSArray arrayWithObjects:v19 count:6];
  v10 = [NSMutableArray arrayWithArray:v9];

  v11 = [(RCRecordingView *)self recordButton];

  if (v11)
  {
    v12 = [(RCRecordingView *)self recordButton];
    [v10 addObject:v12];
  }

  v13 = [(RCRecordingView *)self shuttleBar];

  if (v13)
  {
    v14 = [(RCRecordingView *)self shuttleBar];
    [v10 addObject:v14];
  }

  v15 = +[RCRecorderStyleProvider sharedStyleProvider];
  v16 = [v15 hostsCancelButtonInBottomSection];

  if (v16)
  {
    v17 = [(RCRecordingView *)self cancelButton];
    [v10 addObject:v17];
  }

  v18 = [(RCRecordingView *)self doneButton];
  [v10 addObject:v18];

  [(RCRecordingView *)self setAccessibilityElements:v10];
}

- (BOOL)accessibilityPerformMagicTap
{
  if ([(RCRecordingView *)self recordingControlState]== 1 || [(RCRecordingView *)self recordingControlState]== 2)
  {
    return 0;
  }

  if ([(RCRecordingView *)self displayStyle]!= 3 || [(RCRecordingView *)self playControlState]!= 1)
  {
    if ([(RCRecordingView *)self displayStyle]== 3 && ![(RCRecordingView *)self playControlState])
    {
      v3 = 0;
      goto LABEL_10;
    }

    return 0;
  }

  v3 = 1;
LABEL_10:
  v5 = [(RCRecordingView *)self shuttleBar];
  [(RCRecordingView *)self performControlsAction:v3 position:v5 source:0.0];

  return 1;
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)currentTrackTimeRange
{
  beginTime = self->_currentTrackTimeRange.beginTime;
  endTime = self->_currentTrackTimeRange.endTime;
  result.var1 = endTime;
  result.var0 = beginTime;
  return result;
}

- (UIView)transcriptView
{
  WeakRetained = objc_loadWeakRetained(&self->_transcriptView);

  return WeakRetained;
}

- (RCCardPresentationDelegate)cardPresentationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_cardPresentationDelegate);

  return WeakRetained;
}

@end