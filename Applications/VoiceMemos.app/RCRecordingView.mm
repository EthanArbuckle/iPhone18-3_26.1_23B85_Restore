@interface RCRecordingView
- ($F24F406B2B787EFB06265DBA3D28CBD5)currentTrackTimeRange;
- (BOOL)_touchIsInExcludedView:(id)view;
- (BOOL)accessibilityPerformMagicTap;
- (BOOL)canSaveTrimChanges;
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (BOOL)hasCustomizedPlaybackSettings;
- (BOOL)shouldSelectFullTitleAtBeginEditing;
- (BOOL)textFieldIsBeingEdited;
- (NSDate)creationDate;
- (NSString)recordingTitle;
- (RCBottomControlsContainerView)bottomControlsContainerView;
- (RCCardPresentationDelegate)cardPresentationDelegate;
- (RCRecordingDescriptionView)descriptionView;
- (RCRecordingView)initWithRecordButtonRepository:(id)repository interactionHandler:(id)handler;
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
- (double)customDetentFixedHeight:(BOOL)height includeBottomSafeArea:(BOOL)area;
- (float)editingProgress;
- (id)_bottomElementsToHide;
- (id)createTranscriptViewExpansionAnimator;
- (int64_t)_recordButtonStateForRecordingControlState:(int64_t)state;
- (int64_t)_recordingControlStateForRecordButtonState:(int64_t)state;
- (int64_t)playControlState;
- (int64_t)recordingControlState;
- (unint64_t)_displayOptionForView:(id)view;
- (void)_addDoneAndCancelButtonsToBottomControlsContainerView;
- (void)_addLabelsToWaveformOverview:(id)overview containerView:(id)view;
- (void)_addPlaybackSettingsButtonToBottomControlsContainerView;
- (void)_addRecordButtonToBottomControlsContainerView;
- (void)_addShuttleBarToBottomControlsContainerView;
- (void)_addSubviewsOfView:(id)view includingTopLevelView:(BOOL)levelView toMutableArray:(id)array;
- (void)_addTranscriptionButtonToBottomControlsContainerView;
- (void)_addTrimDeleteButtonsToBottomControlsContainerView;
- (void)_addTrimDeleteButtonsToLeadingAndTrailingEdge;
- (void)_addTrimDeleteButtonsToLeadingEdge;
- (void)_adjustBackgroundColorForDisplayStyle:(int64_t)style;
- (void)_adjustCancelAndDoneButtonsWidth;
- (void)_adjustTraitOverridesForDisplayStyle:(int64_t)style;
- (void)_adjustTrimAndDeleteSelectionButtonsSize;
- (void)_applyOverviewWaveformViewConstraints;
- (void)_classSpecificReset;
- (void)_classSpecificSetDisplayStyle:(int64_t)style;
- (void)_dimRecordingDescriptionView:(BOOL)view animated:(BOOL)animated;
- (void)_displayPlaybackSettings;
- (void)_dropView:(id)view;
- (void)_dropView:(id)view fromAncestor:(id)ancestor;
- (void)_handleDeleteSelection;
- (void)_handleTapToFullscreen:(id)fullscreen;
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
- (void)_showHideViewsForDisplayOptions:(unint64_t)options;
- (void)_showTrimDeleteSelectionButtonsIfNeeded:(BOOL)needed;
- (void)_styleCurrentTimeLabel;
- (void)_styleShuttleBar;
- (void)_styleView;
- (void)_swapCenterContentTimeIndices:(BOOL)indices;
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
- (void)_updateCurrentTimeLabelForTime:(double)time;
- (void)_updateDisplayStyleForHorizontalSizeClassChanges;
- (void)_updateDoneButtonState;
- (void)_updateMoreButtonMenu;
- (void)_updateRecordButtonStateForRecordingViewState:(int64_t)state;
- (void)_updateRecordingDescriptionViewForDuration:(double)duration;
- (void)_updateShuttleBarEnablement;
- (void)_updateSpacingBetweenArrangedSubviews;
- (void)_updateSubviewVisibility;
- (void)_updateToolbarsActivityMode:(int64_t)mode;
- (void)_updateTranscriptionButtonVisibility;
- (void)_updateVerticalContentHuggingAndCompressionResistancePriorities;
- (void)applyDimmingColorToProgressOverlay;
- (void)assignActionOnDoneButton:(id)button;
- (void)assignActionOnDoneButtonForModernToolbar;
- (void)cancelButtonTapped;
- (void)cancelTextEditing;
- (void)cleanupAfterDismiss;
- (void)completePresent;
- (void)deviceTranscriptionSupportDidChange:(BOOL)change;
- (void)didBeginEditingInTextField:(id)field;
- (void)handleUpdateTitle:(id)title;
- (void)layoutSubviews;
- (void)performControlsAction:(int64_t)action position:(double)position source:(id)source;
- (void)prepareForDismiss;
- (void)prepareForPresent:(BOOL)present;
- (void)reset;
- (void)resetTopBottomSpacers;
- (void)restyle;
- (void)setBounds:(CGRect)bounds;
- (void)setCenterContentViewState:(int64_t)state;
- (void)setCreationDate:(id)date;
- (void)setCurrentTime:(double)time;
- (void)setDisplayStyle:(int64_t)style;
- (void)setEditingInFlight:(BOOL)flight;
- (void)setEditingProgress:(float)progress;
- (void)setHasCustomizedPlaybackSettings:(BOOL)settings;
- (void)setHasMultipleTracks:(BOOL)tracks;
- (void)setHasNoTranscribableContent:(BOOL)content;
- (void)setHasSpatialRecording:(BOOL)recording;
- (void)setHasTranscription:(BOOL)transcription;
- (void)setMoreActionsAndPlaybackSettingsButtonsHidden:(BOOL)hidden;
- (void)setOverviewWaveformView:(id)view;
- (void)setPlayControlState:(int64_t)state;
- (void)setRecordingControlState:(int64_t)state;
- (void)setRecordingDuration:(double)duration;
- (void)setRecordingTitle:(id)title;
- (void)setRecordingViewState:(int64_t)state;
- (void)setRecordingViewState:(int64_t)state animated:(BOOL)animated force:(BOOL)force;
- (void)setSaveRecordingAction:(id)action;
- (void)setTranscriptView:(id)view;
- (void)setTranscriptViewState:(int64_t)state;
- (void)setTrimEnabled:(BOOL)enabled;
- (void)setWaveformView:(id)view;
- (void)setupSubviews;
- (void)showAlertForSaveAsNew:(id)new;
- (void)toggleFullCompact;
- (void)toggleTranscriptView:(id)view;
- (void)trimSaveStateChanged:(BOOL)changed;
- (void)undoStateChanged:(BOOL)changed isNewRecording:(BOOL)recording;
- (void)updateAccessibilityForRecordingViewState:(int64_t)state;
- (void)updateForEditingStart;
- (void)updateForRecordingEnd:(BOOL)end;
- (void)updateForRecordingStart;
- (void)updateForSizeChange;
- (void)updateMoreActionsAndPlaybackSettingButtonVisibility;
- (void)updateRecordButtonViewStateWithCurrentTime:(double)time;
- (void)updateTopBottomSpacersForDismiss;
- (void)updateTopBottomSpacersForPresent;
- (void)updateTrackState:(unint64_t)state;
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
    editingToolbarMaximumContentSizeCategory = [v4 editingToolbarMaximumContentSizeCategory];
    [(UIButton *)v5 setMaximumContentSizeCategory:editingToolbarMaximumContentSizeCategory];

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
  editingToolbarProvider = [(RCRecordingView *)self editingToolbarProvider];
  hasCustomizedPlaybackSettings = [editingToolbarProvider hasCustomizedPlaybackSettings];

  return hasCustomizedPlaybackSettings;
}

- (UIButton)moreActionsButton
{
  moreActionsButton = self->_moreActionsButton;
  if (!moreActionsButton)
  {
    v4 = [UIButton buttonWithType:1];
    v5 = +[RCRecorderStyleProvider sharedStyleProvider];
    editingToolbarImageSymbolConfiguration = [v5 editingToolbarImageSymbolConfiguration];
    ellipsisCircleImage = [v5 ellipsisCircleImage];
    v8 = [ellipsisCircleImage imageWithConfiguration:editingToolbarImageSymbolConfiguration];

    [(UIButton *)v4 setImage:v8 forState:0];
    editingToolbarMaximumContentSizeCategory = [v5 editingToolbarMaximumContentSizeCategory];
    [(UIButton *)v4 setMaximumContentSizeCategory:editingToolbarMaximumContentSizeCategory];

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
  editingToolbarProvider = [(RCRecordingView *)self editingToolbarProvider];

  if (editingToolbarProvider)
  {
    v4 = +[_TtC10VoiceMemos33TranscriptionAvailabilityProvider shared];
    deviceIsSupported = [v4 deviceIsSupported];

    if (deviceIsSupported)
    {
      hasTranscription = [(RCRecordingView *)self hasTranscription];
    }

    else
    {
      hasTranscription = 0;
    }

    v7 = [(RCRecordingView *)self centerContentViewState]== 1;
    v8 = [_TtC10VoiceMemos36RCRecordingCardMoreButtonMenuCreator alloc];
    descriptionView = [(RCRecordingView *)self descriptionView];
    uUID = [descriptionView UUID];
    v11 = [(RCRecordingCardMoreButtonMenuCreator *)v8 initWithRecordingUUID:uUID actionDelegate:self];
    [(RCRecordingView *)self setMoreButtonMenuCreator:v11];

    moreButtonMenuCreator = [(RCRecordingView *)self moreButtonMenuCreator];
    hasMultipleTracks = [(RCRecordingView *)self hasMultipleTracks];
    editingToolbarProvider2 = [(RCRecordingView *)self editingToolbarProvider];
    v16 = [moreButtonMenuCreator createMenuWithDisplayCopyTranscriptAction:hasTranscription hideTrimItem:v7 hasMultipleTracks:hasMultipleTracks showUndoItem:objc_msgSend(editingToolbarProvider2 showShareItem:{"canUndo"), 0}];

    editingToolbarProvider3 = [(RCRecordingView *)self editingToolbarProvider];
    [editingToolbarProvider3 setMoreActionsMenu:v16];
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
  deviceIsSupported = [v3 deviceIsSupported];

  v5 = +[RCRecorderStyleProvider sharedStyleProvider];
  hostsTranscriptionButtonInToolbar = [v5 hostsTranscriptionButtonInToolbar];

  v7 = 1;
  if (deviceIsSupported && (hostsTranscriptionButtonInToolbar & 1) == 0 && [(RCRecordingView *)self displayStyle]== 3)
  {
    v7 = [(RCRecordingView *)self recordingViewState]== 8;
  }

  transcriptionButton = [(RCRecordingView *)self transcriptionButton];
  [transcriptionButton setHidden:v7];
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
    editingToolbarMaximumContentSizeCategory = [v4 editingToolbarMaximumContentSizeCategory];
    [(UIButton *)v5 setMaximumContentSizeCategory:editingToolbarMaximumContentSizeCategory];

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
    buttonsMaximumContentSizeCategory = [v9 buttonsMaximumContentSizeCategory];
    [(UIButton *)v4 setMaximumContentSizeCategory:buttonsMaximumContentSizeCategory];

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
    buttonsMaximumContentSizeCategory = [v5 buttonsMaximumContentSizeCategory];
    [(RCTrimButton *)v4 setMaximumContentSizeCategory:buttonsMaximumContentSizeCategory];

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
    buttonsMaximumContentSizeCategory = [v5 buttonsMaximumContentSizeCategory];
    [(RCDeleteButton *)v4 setMaximumContentSizeCategory:buttonsMaximumContentSizeCategory];

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
    transportControlsColorForRecordingCard = [v7 transportControlsColorForRecordingCard];
    [(RCShuttleBar *)v6 setControlsColor:transportControlsColorForRecordingCard];

    transportButtonAnimationCircleColor = [v7 transportButtonAnimationCircleColor];
    [(RCShuttleBar *)v6 setControlsAnimationColor:transportButtonAnimationCircleColor];

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
  shuttleBar = [(RCRecordingView *)self shuttleBar];
  [shuttleBar setEnabled:v3 & v4];
}

- (void)_primeFramesOfHiddenItems
{
  bottomControlsContainerView = [(RCRecordingView *)self bottomControlsContainerView];
  [bottomControlsContainerView frame];
  v5 = v4;
  [(RCRecordingView *)self frame];
  v7 = v6;

  shuttleBar = [(RCRecordingView *)self shuttleBar];
  [shuttleBar setFrame:{0.0, v5, v7, 1.0}];
  [shuttleBar layoutSubviews];
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
  shouldSaveAsNew = [(RCRecordingView *)self shouldSaveAsNew];
  editingToolbarProvider = [(RCRecordingView *)self editingToolbarProvider];
  [editingToolbarProvider setDoneButtonItemShowsMenu:shouldSaveAsNew];
}

- (void)_updateBottomControlsContainerViewSubviews
{
  v20 = +[RCRecorderStyleProvider sharedStyleProvider];
  recordingViewState = [(RCRecordingView *)self recordingViewState];
  if ([v20 hostsTransportAndDoneButtonInBottomSection])
  {
    [(RCRecordingView *)self _addShuttleBarToBottomControlsContainerView];
  }

  else
  {
    shuttleBar = [(RCRecordingView *)self shuttleBar];
    bottomControlsContainerView = [(RCRecordingView *)self bottomControlsContainerView];
    [(RCRecordingView *)self _dropView:shuttleBar fromAncestor:bottomControlsContainerView];
  }

  if (![(RCRecordingView *)self _bottomControlsSupportRecording]|| recordingViewState == 8)
  {
    recordButton = [(RCRecordingView *)self recordButton];
    bottomControlsContainerView2 = [(RCRecordingView *)self bottomControlsContainerView];
    [(RCRecordingView *)self _dropView:recordButton fromAncestor:bottomControlsContainerView2];
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
    doneButton = [(RCRecordingView *)self doneButton];
    bottomControlsContainerView3 = [(RCRecordingView *)self bottomControlsContainerView];
    [(RCRecordingView *)self _dropView:doneButton fromAncestor:bottomControlsContainerView3];

    cancelButton = [(RCRecordingView *)self cancelButton];
    bottomControlsContainerView4 = [(RCRecordingView *)self bottomControlsContainerView];
    [(RCRecordingView *)self _dropView:cancelButton fromAncestor:bottomControlsContainerView4];
  }

  if (!-[RCRecordingView _bottomControlsSupportRecording](self, "_bottomControlsSupportRecording") || [v20 hostsTransportAndDoneButtonInBottomSection] || recordingViewState == 8)
  {
    playbackSettingsButton = [(RCRecordingView *)self playbackSettingsButton];
    bottomControlsContainerView5 = [(RCRecordingView *)self bottomControlsContainerView];
    [(RCRecordingView *)self _dropView:playbackSettingsButton fromAncestor:bottomControlsContainerView5];

    if (recordingViewState == 8)
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

  deleteSelectionButton = [(RCRecordingView *)self deleteSelectionButton];
  bottomControlsContainerView6 = [(RCRecordingView *)self bottomControlsContainerView];
  [(RCRecordingView *)self _dropView:deleteSelectionButton fromAncestor:bottomControlsContainerView6];

  trimToSelectionButton = [(RCRecordingView *)self trimToSelectionButton];
  bottomControlsContainerView7 = [(RCRecordingView *)self bottomControlsContainerView];
  [(RCRecordingView *)self _dropView:trimToSelectionButton fromAncestor:bottomControlsContainerView7];

  if (([v20 hostsTransportAndDoneButtonInBottomSection] & 1) == 0)
  {
    [(RCRecordingView *)self _addTranscriptionButtonToBottomControlsContainerView];
    goto LABEL_22;
  }

LABEL_21:
  transcriptionButton = [(RCRecordingView *)self transcriptionButton];
  bottomControlsContainerView8 = [(RCRecordingView *)self bottomControlsContainerView];
  [(RCRecordingView *)self _dropView:transcriptionButton fromAncestor:bottomControlsContainerView8];

LABEL_22:
}

- (void)_addRecordButtonToBottomControlsContainerView
{
  v3 = +[RCRecorderStyleProvider sharedStyleProvider];
  if ([v3 hostsTransportAndDoneButtonInBottomSection] && -[RCRecordingView displayStyle](self, "displayStyle") == 3)
  {
    bottomControlsContainerView = [(RCRecordingView *)self bottomControlsContainerView];
    leadingContainerView = [bottomControlsContainerView leadingContainerView];
  }

  else
  {
    bottomControlsContainerView = [(RCRecordingView *)self bottomControlsContainerView];
    leadingContainerView = [bottomControlsContainerView centerContainerView];
  }

  v6 = leadingContainerView;

  recordButton = [(RCRecordingView *)self recordButton];
  superview = [recordButton superview];

  if (superview != v6)
  {
    recordButton2 = [(RCRecordingView *)self recordButton];
    [(RCRecordingView *)self _dropView:recordButton2];

    recordButton3 = [(RCRecordingView *)self recordButton];
    [v6 addSubview:recordButton3];

    recordButton4 = [(RCRecordingView *)self recordButton];
    [recordButton4 setTranslatesAutoresizingMaskIntoConstraints:0];

    recordButton5 = [(RCRecordingView *)self recordButton];
    leadingAnchor = [recordButton5 leadingAnchor];
    leadingAnchor2 = [v6 leadingAnchor];
    v21 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v25[0] = v21;
    recordButton6 = [(RCRecordingView *)self recordButton];
    trailingAnchor = [recordButton6 trailingAnchor];
    trailingAnchor2 = [v6 trailingAnchor];
    v14 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v25[1] = v14;
    recordButton7 = [(RCRecordingView *)self recordButton];
    centerYAnchor = [recordButton7 centerYAnchor];
    centerYAnchor2 = [v6 centerYAnchor];
    v18 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
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
    recordButtonFactory = [(RCRecordingView *)self recordButtonFactory];
    createRecordButtonContainer = [recordButtonFactory createRecordButtonContainer];
    view = [createRecordButtonContainer view];
    v7 = self->_recordButton;
    self->_recordButton = view;

    [(UIView *)self->_recordButton setAccessibilityIdentifier:@"RecordingView/RecordButton"];
    recordButton = self->_recordButton;
  }

  return recordButton;
}

- (void)_addPlaybackSettingsButtonToBottomControlsContainerView
{
  bottomControlsContainerView = [(RCRecordingView *)self bottomControlsContainerView];
  trailingContainerView = [bottomControlsContainerView trailingContainerView];

  playbackSettingsButton = [(RCRecordingView *)self playbackSettingsButton];
  superview = [playbackSettingsButton superview];

  if (superview != trailingContainerView)
  {
    playbackSettingsButton2 = [(RCRecordingView *)self playbackSettingsButton];
    [(RCRecordingView *)self _dropView:playbackSettingsButton2];

    playbackSettingsButton3 = [(RCRecordingView *)self playbackSettingsButton];
    [trailingContainerView addSubview:playbackSettingsButton3];

    v9 = +[RCRecorderStyleProvider sharedStyleProvider];
    [v9 bottomControlsTranscriptionAndPlaybackSettingsButtonHeight];
    v11 = v10;

    playbackSettingsButton4 = [(RCRecordingView *)self playbackSettingsButton];
    [playbackSettingsButton4 setTranslatesAutoresizingMaskIntoConstraints:0];

    playbackSettingsButton5 = [(RCRecordingView *)self playbackSettingsButton];
    centerYAnchor = [playbackSettingsButton5 centerYAnchor];
    centerYAnchor2 = [trailingContainerView centerYAnchor];
    v28 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v32[0] = v28;
    playbackSettingsButton6 = [(RCRecordingView *)self playbackSettingsButton];
    leadingAnchor = [playbackSettingsButton6 leadingAnchor];
    leadingAnchor2 = [trailingContainerView leadingAnchor];
    v24 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v32[1] = v24;
    playbackSettingsButton7 = [(RCRecordingView *)self playbackSettingsButton];
    trailingAnchor = [playbackSettingsButton7 trailingAnchor];
    trailingAnchor2 = [trailingContainerView trailingAnchor];
    v14 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v32[2] = v14;
    playbackSettingsButton8 = [(RCRecordingView *)self playbackSettingsButton];
    widthAnchor = [playbackSettingsButton8 widthAnchor];
    v17 = [widthAnchor constraintGreaterThanOrEqualToConstant:v11];
    v32[3] = v17;
    playbackSettingsButton9 = [(RCRecordingView *)self playbackSettingsButton];
    heightAnchor = [playbackSettingsButton9 heightAnchor];
    v20 = [heightAnchor constraintGreaterThanOrEqualToConstant:v11];
    v32[4] = v20;
    v21 = [NSArray arrayWithObjects:v32 count:5];
    [NSLayoutConstraint activateConstraints:v21];
  }
}

- (void)_addTranscriptionButtonToBottomControlsContainerView
{
  bottomControlsContainerView = [(RCRecordingView *)self bottomControlsContainerView];
  leadingContainerView = [bottomControlsContainerView leadingContainerView];

  transcriptionButton = [(RCRecordingView *)self transcriptionButton];
  superview = [transcriptionButton superview];

  if (superview != leadingContainerView)
  {
    transcriptionButton2 = [(RCRecordingView *)self transcriptionButton];
    [(RCRecordingView *)self _dropView:transcriptionButton2];

    transcriptionButton3 = [(RCRecordingView *)self transcriptionButton];
    [leadingContainerView addSubview:transcriptionButton3];

    v9 = +[RCRecorderStyleProvider sharedStyleProvider];
    [v9 bottomControlsTranscriptionAndPlaybackSettingsButtonHeight];
    v11 = v10;

    transcriptionButton4 = [(RCRecordingView *)self transcriptionButton];
    [transcriptionButton4 setTranslatesAutoresizingMaskIntoConstraints:0];

    transcriptionButton5 = [(RCRecordingView *)self transcriptionButton];
    centerYAnchor = [transcriptionButton5 centerYAnchor];
    centerYAnchor2 = [leadingContainerView centerYAnchor];
    v28 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v32[0] = v28;
    transcriptionButton6 = [(RCRecordingView *)self transcriptionButton];
    leadingAnchor = [transcriptionButton6 leadingAnchor];
    leadingAnchor2 = [leadingContainerView leadingAnchor];
    v24 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v32[1] = v24;
    transcriptionButton7 = [(RCRecordingView *)self transcriptionButton];
    trailingAnchor = [transcriptionButton7 trailingAnchor];
    trailingAnchor2 = [leadingContainerView trailingAnchor];
    v14 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v32[2] = v14;
    transcriptionButton8 = [(RCRecordingView *)self transcriptionButton];
    widthAnchor = [transcriptionButton8 widthAnchor];
    v17 = [widthAnchor constraintGreaterThanOrEqualToConstant:v11];
    v32[3] = v17;
    transcriptionButton9 = [(RCRecordingView *)self transcriptionButton];
    heightAnchor = [transcriptionButton9 heightAnchor];
    v20 = [heightAnchor constraintGreaterThanOrEqualToConstant:v11];
    v32[4] = v20;
    v21 = [NSArray arrayWithObjects:v32 count:5];
    [NSLayoutConstraint activateConstraints:v21];
  }
}

- (void)_updateVerticalContentHuggingAndCompressionResistancePriorities
{
  topSpacerView = [(RCRecordingView *)self topSpacerView];
  v26[0] = topSpacerView;
  buttonsAndDescriptionContainerView = [(RCRecordingView *)self buttonsAndDescriptionContainerView];
  v26[1] = buttonsAndDescriptionContainerView;
  overviewWaveformContainerView = [(RCRecordingView *)self overviewWaveformContainerView];
  v26[2] = overviewWaveformContainerView;
  currentTimeLabel = [(RCRecordingView *)self currentTimeLabel];
  v26[3] = currentTimeLabel;
  bottomControlsContainerView = [(RCRecordingView *)self bottomControlsContainerView];
  v26[4] = bottomControlsContainerView;
  bottomSpacerView = [(RCRecordingView *)self bottomSpacerView];
  v26[5] = bottomSpacerView;
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

  centerContentContainerView = [(RCRecordingView *)self centerContentContainerView];
  [(RCRecordingView *)self centerContentVerticalHuggingPriority];
  [centerContentContainerView setContentHuggingPriority:1 forAxis:?];

  centerContentContainerView2 = [(RCRecordingView *)self centerContentContainerView];
  LODWORD(v20) = 1132068864;
  [centerContentContainerView2 setContentCompressionResistancePriority:1 forAxis:v20];
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
  hostsTransportAndDoneButtonInBottomSection = [v3 hostsTransportAndDoneButtonInBottomSection];

  if (hostsTransportAndDoneButtonInBottomSection)
  {
    [(RCRecordingView *)self _updateAccessibilityElements];
  }

  [(RCRecordingView *)self _updateDisplayStyleForHorizontalSizeClassChanges];

  [(RCRecordingView *)self _updateSpacingBetweenArrangedSubviews];
}

- (void)_setupTapGestureRecognizer
{
  tapGestureRecognizer = [(RCRecordingView *)self tapGestureRecognizer];
  v3 = +[RCRecorderStyleProvider sharedStyleProvider];
  allowsInteractiveCardSizing = [v3 allowsInteractiveCardSizing];

  if (allowsInteractiveCardSizing)
  {
    if (!tapGestureRecognizer)
    {
      tapGestureRecognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:"_handleTapToFullscreen:"];
      [(RCRecordingView *)self setTapGestureRecognizer:tapGestureRecognizer];
      [(RCRecordingView *)self addGestureRecognizer:tapGestureRecognizer];
    }

    [tapGestureRecognizer setEnabled:1];
    [tapGestureRecognizer setDelegate:self];
  }

  else
  {
    [tapGestureRecognizer setEnabled:0];
  }
}

- (void)_setupOverviewBeginEndTimeLabel
{
  v11 = +[RCRecorderStyleProvider sharedStyleProvider];
  hasBeginAndEndTimeLabelAtOverviewWaveform = [v11 hasBeginAndEndTimeLabelAtOverviewWaveform];
  overviewBeginTimeLabel = [(RCRecordingView *)self overviewBeginTimeLabel];
  overviewEndTimeLabel2 = overviewBeginTimeLabel;
  if (hasBeginAndEndTimeLabelAtOverviewWaveform)
  {
    if (!overviewBeginTimeLabel)
    {
      overviewEndTimeLabel2 = objc_opt_new();
      [(RCRecordingView *)self setOverviewBeginTimeLabel:overviewEndTimeLabel2];
    }

    beginEndLabelsColor = [v11 beginEndLabelsColor];
    [overviewEndTimeLabel2 setTextColor:beginEndLabelsColor];

    [overviewEndTimeLabel2 setTextAlignment:4];
    [overviewEndTimeLabel2 setNumberOfLines:0];
    beginEndLabelsFont = [v11 beginEndLabelsFont];
    [overviewEndTimeLabel2 setFont:beginEndLabelsFont];

    overviewEndTimeLabel = [(RCRecordingView *)self overviewEndTimeLabel];
    if (!overviewEndTimeLabel)
    {
      overviewEndTimeLabel = objc_opt_new();
      [(RCRecordingView *)self setOverviewEndTimeLabel:overviewEndTimeLabel];
    }

    beginEndLabelsColor2 = [v11 beginEndLabelsColor];
    [overviewEndTimeLabel setTextColor:beginEndLabelsColor2];

    [overviewEndTimeLabel setTextAlignment:4];
    [overviewEndTimeLabel setNumberOfLines:0];
    timeLineLabelFont = [v11 timeLineLabelFont];
    [overviewEndTimeLabel setFont:timeLineLabelFont];
  }

  else
  {
    [overviewBeginTimeLabel removeAllConstraints];

    overviewEndTimeLabel2 = [(RCRecordingView *)self overviewEndTimeLabel];
    [overviewEndTimeLabel2 removeAllConstraints];
  }
}

- (void)_styleCurrentTimeLabel
{
  currentTimeLabel = [(RCRecordingView *)self currentTimeLabel];
  v2 = +[RCRecorderStyleProvider sharedStyleProvider];
  playbackCardTimeLabelFontColor = [v2 playbackCardTimeLabelFontColor];
  [currentTimeLabel setTextColor:playbackCardTimeLabelFontColor];

  playbackViewTimeLabelFont = [v2 playbackViewTimeLabelFont];
  [currentTimeLabel setFont:playbackViewTimeLabelFont];

  [v2 positionReadoutLabelYOffset];
  [currentTimeLabel setLabelYOffset:?];
}

- (void)_styleShuttleBar
{
  v6 = +[RCRecorderStyleProvider sharedStyleProvider];
  shuttleBar = [(RCRecordingView *)self shuttleBar];
  [shuttleBar setStyle:1];
  transportControlsColorForRecordingCard = [v6 transportControlsColorForRecordingCard];
  [shuttleBar setControlsColor:transportControlsColorForRecordingCard];

  transportButtonAnimationCircleColor = [v6 transportButtonAnimationCircleColor];
  [shuttleBar setControlsAnimationColor:transportButtonAnimationCircleColor];
}

- (void)_updateArrangedSubviews
{
  v3 = objc_opt_new();
  v4 = +[RCRecorderStyleProvider sharedStyleProvider];
  topSpacerView = [(RCRecordingView *)self topSpacerView];
  [v3 addObject:topSpacerView];

  buttonsAndDescriptionContainerView = [(RCRecordingView *)self buttonsAndDescriptionContainerView];
  [v3 addObject:buttonsAndDescriptionContainerView];

  centerContentContainerView = [(RCRecordingView *)self centerContentContainerView];
  [v3 addObject:centerContentContainerView];

  overviewWaveformContainerView = [(RCRecordingView *)self overviewWaveformContainerView];
  [v3 addObject:overviewWaveformContainerView];

  currentTimeLabel = [(RCRecordingView *)self currentTimeLabel];
  [v3 addObject:currentTimeLabel];

  shuttleBar = [(RCRecordingView *)self shuttleBar];
  if (([v4 hostsTransportAndDoneButtonInBottomSection] & 1) == 0)
  {
    [v3 addObject:shuttleBar];
    [shuttleBar setHidden:1];
  }

  bottomControlsContainerView = [(RCRecordingView *)self bottomControlsContainerView];
  [v3 addObject:bottomControlsContainerView];

  bottomSpacerView = [(RCRecordingView *)self bottomSpacerView];
  [v3 addObject:bottomSpacerView];

  mainContainerStackView = [(RCRecordingView *)self mainContainerStackView];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  arrangedSubviews = [mainContainerStackView arrangedSubviews];
  v15 = [arrangedSubviews countByEnumeratingWithState:&v28 objects:v33 count:16];
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
          objc_enumerationMutation(arrangedSubviews);
        }

        [mainContainerStackView removeArrangedSubview:*(*(&v28 + 1) + 8 * v18)];
        v18 = v18 + 1;
      }

      while (v16 != v18);
      v16 = [arrangedSubviews countByEnumeratingWithState:&v28 objects:v33 count:16];
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

        [mainContainerStackView addArrangedSubview:{*(*(&v24 + 1) + 8 * v23), v24}];
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
    displayStyle = [(RCRecordingView *)self displayStyle];

    if (displayStyle == 2)
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

  mainContainerStackView = [(RCRecordingView *)self mainContainerStackView];
  topSpacerView = [(RCRecordingView *)self topSpacerView];
  [mainContainerStackView setCustomSpacing:topSpacerView afterView:v3];

  displayStyle = [(RCRecordingView *)self displayStyle];
  centerContentViewState = [(RCRecordingView *)self centerContentViewState];
  v9 = centerContentViewState == 1 && [(RCRecordingView *)self transcriptViewState]== 1;
  v10 = centerContentViewState == 1;
  v11 = displayStyle == 2;
  v12 = [(RCRecordingView *)self recordingViewState]== 8;
  [v33 verticalSpaceBetweenTitleAndCenterContentContainer:v11 isDisplayingTranscriptView:v10];
  v14 = v13;
  mainContainerStackView2 = [(RCRecordingView *)self mainContainerStackView];
  buttonsAndDescriptionContainerView = [(RCRecordingView *)self buttonsAndDescriptionContainerView];
  [mainContainerStackView2 setCustomSpacing:buttonsAndDescriptionContainerView afterView:v14];

  [v33 verticalSpaceAfterCenterContentContainer:v11 isDisplayingTranscriptView:v10 isTranscriptViewExpanded:v9 isTrimMode:v12];
  v18 = v17;
  mainContainerStackView3 = [(RCRecordingView *)self mainContainerStackView];
  centerContentContainerView = [(RCRecordingView *)self centerContentContainerView];
  [mainContainerStackView3 setCustomSpacing:centerContentContainerView afterView:v18];

  if (v9)
  {
    [v33 verticalSpaceAfterOverviewWaveformWhenTranscriptViewIsExpanded];
  }

  else
  {
    [v33 verticalSpaceBetweenOverviewWaveformAndTimeLabel];
  }

  v22 = v21;
  mainContainerStackView4 = [(RCRecordingView *)self mainContainerStackView];
  overviewWaveformContainerView = [(RCRecordingView *)self overviewWaveformContainerView];
  [mainContainerStackView4 setCustomSpacing:overviewWaveformContainerView afterView:v22];

  if ([v33 hostsTransportAndDoneButtonInBottomSection])
  {
    [v33 verticalSpaceBetweenTimeLabelAndBottomControlsContainer];
  }

  else
  {
    [v33 verticalSpaceBetweenTimeLabelAndShuttleBar];
  }

  v26 = v25;
  mainContainerStackView5 = [(RCRecordingView *)self mainContainerStackView];
  currentTimeLabel = [(RCRecordingView *)self currentTimeLabel];
  [mainContainerStackView5 setCustomSpacing:currentTimeLabel afterView:v26];

  if (([v33 hostsTransportAndDoneButtonInBottomSection] & 1) == 0)
  {
    [v33 verticalSpaceBetweenShuttleBarAndBottomControlsContainerView];
    v30 = v29;
    mainContainerStackView6 = [(RCRecordingView *)self mainContainerStackView];
    shuttleBar = [(RCRecordingView *)self shuttleBar];
    [mainContainerStackView6 setCustomSpacing:shuttleBar afterView:v30];
  }
}

- (void)_syncTapGestureRecognizerEnablement
{
  if ([(RCRecordingView *)self recordingViewState]!= 8 && [(RCRecordingView *)self displayStyle]== 2 && [(RCRecordingView *)self didCompletePresent])
  {
    v6 = +[RCRecorderStyleProvider sharedStyleProvider];
    allowsInteractiveCardSizing = [v6 allowsInteractiveCardSizing];
    v4 = 1;
  }

  else
  {
    v4 = 0;
    allowsInteractiveCardSizing = 0;
  }

  tapGestureRecognizer = [(RCRecordingView *)self tapGestureRecognizer];
  [tapGestureRecognizer setEnabled:allowsInteractiveCardSizing];

  if (v4)
  {
  }
}

- (void)_updateDoneButtonState
{
  v17 = +[RCRecorderStyleProvider sharedStyleProvider];
  if ([(RCRecordingView *)self displayStyle]&& [(RCRecordingView *)self displayStyle]!= 1)
  {
    hostsTransportAndDoneButtonInBottomSection = [v17 hostsTransportAndDoneButtonInBottomSection];
    if (hostsTransportAndDoneButtonInBottomSection)
    {
      doneButton = [(RCRecordingView *)self doneButton];
      [(RCRecordingView *)self assignActionOnDoneButton:doneButton];

      recordingViewState = [(RCRecordingView *)self recordingViewState];
      v7 = +[NSBundle mainBundle];
      v8 = v7;
      if (recordingViewState == 8)
      {
        v9 = @"APPLY";
      }

      else
      {
        v9 = @"DONE";
      }

      v10 = [v7 localizedStringForKey:v9 value:&stru_100295BB8 table:0];

      doneButton2 = [(RCRecordingView *)self doneButton];
      [doneButton2 setTitle:v10];

      if ([(RCRecordingView *)self recordingViewState]== 8)
      {
        editingToolbarProvider = [(RCRecordingView *)self editingToolbarProvider];
        canSave = [editingToolbarProvider canSave];
        doneButton3 = [(RCRecordingView *)self doneButton];
        [doneButton3 setEnabled:canSave];

        [(RCRecordingView *)self setShouldSaveAsNew:0];
      }

      else
      {
        doneButton4 = [(RCRecordingView *)self doneButton];
        [doneButton4 setEnabled:1];
      }
    }

    v3 = hostsTransportAndDoneButtonInBottomSection ^ 1;
  }

  else
  {
    v3 = 1;
  }

  doneButton5 = [(RCRecordingView *)self doneButton];
  [doneButton5 setHidden:v3];
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
  displayStyle = [(RCRecordingView *)self displayStyle];
  if (displayStyle < 2)
  {
    v5 = 0;
    v3 = 0;
  }

  else
  {
    if (displayStyle == 3)
    {
      v5 = 2;
    }

    else
    {
      if (displayStyle != 2)
      {
        goto LABEL_9;
      }

      v3 = 0;
      v5 = 1;
    }

    [(RCRecordingView *)self _updateDoneButtonActionForModernToolbar];
  }

  editingToolbarProvider = [(RCRecordingView *)self editingToolbarProvider];
  [editingToolbarProvider setDisplayMode:v5];

  descriptionView = [(RCRecordingView *)self descriptionView];
  [descriptionView updateForDisplayMode:v3];

LABEL_9:
  [(RCRecordingView *)self _swapCenterContentTimeIndices:[(RCRecordingView *)self displayStyle]== 3];
  [(RCRecordingView *)self _updateTranscriptionButtonVisibility];
  [(RCRecordingView *)self _updateDoneButtonState];
  [(RCRecordingView *)self _updateCenterContentContainerSubviewConstraints];
  [(RCRecordingView *)self _updateSpacingBetweenArrangedSubviews];
  viewDelegate = [(RCRecordingView *)self viewDelegate];
  [viewDelegate visualStateChanged];

  [(RCRecordingView *)self setIsSyncingViewsToState:0];
}

- (void)_updateSubviewVisibility
{
  v3 = +[RCRecorderStyleProvider sharedStyleProvider];
  displayStyle = [(RCRecordingView *)self displayStyle];
  v5 = 192;
  if (displayStyle > 1)
  {
    if (displayStyle == 2)
    {
      viewDelegate = [(RCRecordingView *)self viewDelegate];
      shouldHideNavigationBar = [viewDelegate shouldHideNavigationBar];

      if (shouldHideNavigationBar)
      {
        v5 = 211;
      }

      else
      {
        v5 = 210;
      }
    }

    else if (displayStyle == 3)
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
    if (displayStyle != 1)
    {
      v6 = 192;
    }

    if (displayStyle)
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
    _bottomElementsToHide = [(RCRecordingView *)self _bottomElementsToHide];
    v10 = [_bottomElementsToHide countByEnumeratingWithState:&v14 objects:v18 count:16];
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
            objc_enumerationMutation(_bottomElementsToHide);
          }

          v5 &= ~[(RCRecordingView *)self _displayOptionForView:*(*(&v14 + 1) + 8 * i)];
        }

        v11 = [_bottomElementsToHide countByEnumeratingWithState:&v14 objects:v18 count:16];
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
  currentTimeLabel = [(RCRecordingView *)self currentTimeLabel];
  [currentTimeLabel setText:&stru_100295BB8];

  editingToolbarProvider = [(RCRecordingView *)self editingToolbarProvider];
  [editingToolbarProvider setCanUndo:0];

  [(RCRecordingView *)self setShouldSaveAsNew:0];
  doneButton = [(RCRecordingView *)self doneButton];
  [doneButton setHidden:1];

  currentTimeLabel2 = [(RCRecordingView *)self currentTimeLabel];
  [currentTimeLabel2 setIsAccessibilityElement:0];

  [(RCRecordingView *)self setEditingInFlight:0];
  progressOverlay = [(RCRecordingView *)self progressOverlay];
  [progressOverlay setProgress:0.0];

  if ([(RCRecordingView *)self textFieldIsBeingEdited])
  {
    descriptionView = [(RCRecordingView *)self descriptionView];
    [descriptionView endEditingTitle];
  }
}

- (void)_classSpecificReset
{
  dismissalDisplayStyle = [(RCRecordingView *)self dismissalDisplayStyle];

  [(RCRecordingView *)self setDisplayStyle:dismissalDisplayStyle];
}

- (BOOL)textFieldIsBeingEdited
{
  textFieldBeingEdited = [(RCRecordingView *)self textFieldBeingEdited];
  v3 = textFieldBeingEdited != 0;

  return v3;
}

- (UITextField)textFieldBeingEdited
{
  WeakRetained = objc_loadWeakRetained(&self->_textFieldBeingEdited);

  return WeakRetained;
}

- (void)updateForSizeChange
{
  shuttleBar = [(RCRecordingView *)self shuttleBar];
  [shuttleBar updateWidthOnSizeChange];
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
    selfCopy = self;
    v7 = v6;
    v13 = v7;
    v8 = objc_retainBlock(v10);
    if ([(RCRecordingView *)self displayStyle]== 3)
    {
      centerContentContainerView = [(RCRecordingView *)self centerContentContainerView];
      [UIView transitionWithView:centerContentContainerView duration:5242880 options:v8 animations:0 completion:0.4];
    }

    else
    {
      (v8[2])(v8);
    }

    [(RCRecordingView *)self _updateCenterContentContainerSubviewConstraints];
  }

LABEL_13:
}

- (void)setBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  [(RCRecordingView *)self bounds];
  v9 = v8;
  v11.receiver = self;
  v11.super_class = RCRecordingView;
  [(RCRecordingView *)&v11 setBounds:x, y, width, height];
  if (v9 != width)
  {
    viewDelegate = [(RCRecordingView *)self viewDelegate];
    [viewDelegate recordingViewWidthDidChange:width];
  }
}

- (void)setDisplayStyle:(int64_t)style
{
  displayStyle = self->_displayStyle;
  if (displayStyle != style)
  {
    if (style != 3 && displayStyle == 3)
    {
      [(RCRecordingView *)self cancelTextEditing];
    }

    self->_displayStyle = style;
    [(RCRecordingView *)self _classSpecificSetDisplayStyle:style];
    [(RCRecordingView *)self _adjustTraitOverridesForDisplayStyle:style];
    [(RCRecordingView *)self _adjustBackgroundColorForDisplayStyle:style];
    [(RCRecordingView *)self _updateBottomControlsContainerViewSubviews];
    [(RCRecordingView *)self _updateArrangedSubviews];
    [(RCRecordingView *)self _syncViewsToState];
    [(RCRecordingView *)self _syncTapGestureRecognizerEnablement];
    [(RCRecordingView *)self setAccessibilityViewIsModal:self->_displayStyle != 1];
    viewDelegate = [(RCRecordingView *)self viewDelegate];
    [viewDelegate didUpdateRecordingViewDisplayStyle];
  }
}

- (void)_classSpecificSetDisplayStyle:(int64_t)style
{
  if (style == 3)
  {
    centerContentContainerView = [(RCRecordingView *)self centerContentContainerView];
    v8 = [RCPassthroughViewsSpec passthroughViewsSpecWithTopLevelView:centerContentContainerView includeTopLevelView:1];
    shuttleBar = [(RCRecordingView *)self shuttleBar];
    v10 = [RCPassthroughViewsSpec passthroughViewsSpecWithTopLevelView:shuttleBar includeTopLevelView:0];
    v14[1] = v10;
    bottomControlsContainerView = [(RCRecordingView *)self bottomControlsContainerView];
    v12 = [RCPassthroughViewsSpec passthroughViewsSpecWithTopLevelView:bottomControlsContainerView includeTopLevelView:1];
    v14[2] = v12;
    v13 = [NSArray arrayWithObjects:v14 count:3];
    [(RCRecordingView *)self setDragGesturePassthroughSpecs:v13];
  }

  else if (style == 2)
  {
    waveformView = [(RCRecordingView *)self waveformView];
    if (waveformView)
    {
      v5 = waveformView;
      descriptionView = [(RCRecordingView *)self descriptionView];

      if (descriptionView)
      {

        [(RCRecordingView *)self setDragGesturePassthroughSpecs:&__NSArray0__struct];
      }
    }
  }
}

- (void)_adjustBackgroundColorForDisplayStyle:(int64_t)style
{
  v5 = +[RCRecorderStyleProvider sharedStyleProvider];
  v6 = v5;
  if (style > 2)
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

- (void)_adjustTraitOverridesForDisplayStyle:(int64_t)style
{
  traitOverrides = [(RCRecordingView *)self traitOverrides];
  v6 = objc_opt_self();
  v7 = [traitOverrides containsTrait:v6];

  v8 = +[RCRecorderStyleProvider sharedStyleProvider];
  supportsRecordingViewElevatedUserInterfaceLevelOverride = [v8 supportsRecordingViewElevatedUserInterfaceLevelOverride];

  if (v7)
  {
    v10 = 0;
  }

  else
  {
    v10 = style == 1;
  }

  if (!v10 || supportsRecordingViewElevatedUserInterfaceLevelOverride == 0)
  {
    if (!v7)
    {
      return;
    }

    traitOverrides2 = [(RCRecordingView *)self traitOverrides];
    v12 = objc_opt_self();
    [traitOverrides2 removeTrait:v12];
  }

  else
  {
    traitOverrides2 = [(RCRecordingView *)self traitOverrides];
    [traitOverrides2 setUserInterfaceLevel:1];
  }
}

- (void)setRecordingControlState:(int64_t)state
{
  v4 = [(RCRecordingView *)self _recordButtonStateForRecordingControlState:state];
  recordButtonRepository = [(RCRecordingView *)self recordButtonRepository];
  [recordButtonRepository setState:v4];
}

- (int64_t)recordingControlState
{
  recordButtonRepository = [(RCRecordingView *)self recordButtonRepository];
  v4 = -[RCRecordingView _recordingControlStateForRecordButtonState:](self, "_recordingControlStateForRecordButtonState:", [recordButtonRepository state]);

  return v4;
}

- (int64_t)_recordButtonStateForRecordingControlState:(int64_t)state
{
  if ((state - 1) >= 4)
  {
    return 0;
  }

  else
  {
    return state;
  }
}

- (int64_t)_recordingControlStateForRecordButtonState:(int64_t)state
{
  if ((state - 1) >= 4)
  {
    return 0;
  }

  else
  {
    return state;
  }
}

- (void)setPlayControlState:(int64_t)state
{
  v5 = state == 0;
  recordButtonRepository = [(RCRecordingView *)self recordButtonRepository];
  [recordButtonRepository setIsEnabled:{-[RCRecordingView _shouldEnableRecordingControlForState:](self, "_shouldEnableRecordingControlForState:", state)}];

  cancelButton = [(RCRecordingView *)self cancelButton];
  [cancelButton setEnabled:v5];

  editingToolbarProvider = [(RCRecordingView *)self editingToolbarProvider];
  [editingToolbarProvider setCanCancel:v5];

  shuttleBar = [(RCRecordingView *)self shuttleBar];
  [shuttleBar setPlayControlState:state];
}

- (int64_t)playControlState
{
  shuttleBar = [(RCRecordingView *)self shuttleBar];
  playControlState = [shuttleBar playControlState];

  return playControlState;
}

- (void)_updateToolbarsActivityMode:(int64_t)mode
{
  editingToolbarProvider = [(RCRecordingView *)self editingToolbarProvider];
  [editingToolbarProvider setActivityMode:mode];
}

- (void)setRecordingViewState:(int64_t)state
{
  v5 = +[RCRecorderStyleProvider sharedStyleProvider];
  v7 = v5;
  if (state == 1)
  {
    allowsInteractiveCardSizing = [v5 allowsInteractiveCardSizing];
  }

  else
  {
    allowsInteractiveCardSizing = 0;
  }

  [(RCRecordingView *)self setRecordingViewState:state animated:allowsInteractiveCardSizing force:0];
}

- (void)setRecordingViewState:(int64_t)state animated:(BOOL)animated force:(BOOL)force
{
  animatedCopy = animated;
  recordingViewState = self->_recordingViewState;
  if (!force && recordingViewState == state)
  {
    return;
  }

  v9 = +[CATransaction disableActions];
  +[CATransaction begin];
  [CATransaction setDisableActions:v9 | !animatedCopy];
  self->_recordingViewState = state;
  recordButton = [(RCRecordingView *)self recordButton];
  [recordButton setHidden:0];

  [(RCRecordingView *)self _showTrimDeleteSelectionButtonsIfNeeded:0];
  [(RCRecordingView *)self _updateShuttleBarEnablement];
  [(RCRecordingView *)self _syncTapGestureRecognizerEnablement];
  [(RCRecordingView *)self _updateDoneButtonActionForModernToolbar];
  if (state <= 2)
  {
    if (!state)
    {
LABEL_7:
      [(RCRecordingView *)self _updateToolbarsActivityMode:0];
      [(RCRecordingView *)self setMoreActionsAndPlaybackSettingsButtonsHidden:1];
      goto LABEL_17;
    }

    if (state != 1)
    {
      if (state != 2)
      {
        goto LABEL_17;
      }

      goto LABEL_7;
    }

    selfCopy2 = self;
    v15 = 1;
    goto LABEL_13;
  }

  if ((state - 3) < 3)
  {
    selfCopy2 = self;
    v15 = 2;
LABEL_13:
    [(RCRecordingView *)selfCopy2 _updateToolbarsActivityMode:v15];
    [(RCRecordingView *)self updateMoreActionsAndPlaybackSettingButtonVisibility];
    goto LABEL_17;
  }

  if ((state - 6) >= 2)
  {
    if (state != 8)
    {
      goto LABEL_17;
    }

    [(RCRecordingView *)self _updateToolbarsActivityMode:3];
    recordButton2 = [(RCRecordingView *)self recordButton];
    [recordButton2 setHidden:1];

    [(RCRecordingView *)self setMoreActionsAndPlaybackSettingsButtonsHidden:1];
    [(RCRecordingView *)self _showTrimDeleteSelectionButtonsIfNeeded:1];
    playbackSettingsButton = +[NSBundle mainBundle];
    v17 = [playbackSettingsButton localizedStringForKey:@"APPLY" value:&stru_100295BB8 table:0];
    doneButton = [(RCRecordingView *)self doneButton];
    [doneButton setTitle:v17];
  }

  else
  {
    editingToolbarProvider = [(RCRecordingView *)self editingToolbarProvider];
    [editingToolbarProvider setActivityMode:1];

    moreActionsButton = [(RCRecordingView *)self moreActionsButton];
    [moreActionsButton setEnabled:0];

    playbackSettingsButton = [(RCRecordingView *)self playbackSettingsButton];
    [playbackSettingsButton setEnabled:0];
  }

LABEL_17:
  cancelButton = [(RCRecordingView *)self cancelButton];
  [cancelButton setHidden:state != 8];

  [(RCRecordingView *)self _updateDoneButtonState];
  [(RCRecordingView *)self _updateRecordButtonStateForRecordingViewState:state];
  [(RCRecordingView *)self updateAccessibilityForRecordingViewState:state];
  [(RCRecordingView *)self _updateBottomControlsContainerViewSubviews];
  [(RCRecordingView *)self setNeedsLayout];
  [(RCRecordingView *)self _syncViewsToState];
  +[CATransaction commit];
  recordButton3 = [(RCRecordingView *)self recordButton];
  LODWORD(cancelButton) = [recordButton3 isHidden];

  if (!cancelButton)
  {
    v23 = UIAccessibilityScreenChangedNotification;
    recordButton4 = [(RCRecordingView *)self recordButton];
    goto LABEL_22;
  }

  if (state == 8)
  {
    doneButton2 = [(RCRecordingView *)self doneButton];
    isEnabled = [doneButton2 isEnabled];

    if (isEnabled)
    {
      v23 = UIAccessibilityScreenChangedNotification;
      recordButton4 = [(RCRecordingView *)self doneButton];
LABEL_22:
      v25 = recordButton4;
      UIAccessibilityPostNotification(v23, recordButton4);

      goto LABEL_24;
    }
  }

  UIAccessibilityPostNotification(UIAccessibilityScreenChangedNotification, self);
LABEL_24:
  if (recordingViewState != state)
  {
    viewDelegate = [(RCRecordingView *)self viewDelegate];
    [viewDelegate didUpdateRecordingViewState:recordingViewState newState:state];
  }
}

- (void)updateAccessibilityForRecordingViewState:(int64_t)state
{
  buttonsAndDescriptionContainerView = [(RCRecordingView *)self buttonsAndDescriptionContainerView];
  [buttonsAndDescriptionContainerView setAccessibilityElementsHidden:state == 0];

  centerContentContainerView = [(RCRecordingView *)self centerContentContainerView];
  [centerContentContainerView setAccessibilityElementsHidden:state == 0];

  shuttleBar = [(RCRecordingView *)self shuttleBar];
  [shuttleBar setAccessibilityElementsHidden:state == 0];

  doneButton = [(RCRecordingView *)self doneButton];
  [doneButton setIsAccessibilityElement:state != 0];

  cancelButton = [(RCRecordingView *)self cancelButton];
  isHidden = [cancelButton isHidden];
  cancelButton2 = [(RCRecordingView *)self cancelButton];
  [cancelButton2 setIsAccessibilityElement:isHidden ^ 1];

  v12 = +[RCRecorderStyleProvider sharedStyleProvider];
  LOBYTE(isHidden) = [v12 hostsTransportAndDoneButtonInBottomSection];

  [(RCRecordingView *)self setAccessibilityIgnoresInvertColors:(state != 2) | ((isHidden & 1) == 0)];
  descriptionView = [(RCRecordingView *)self descriptionView];
  v14 = descriptionView;
  if (state == 1)
  {
    [descriptionView addTitleAccessibilityTraits:UIAccessibilityTraitStaticText];
  }

  else
  {
    [descriptionView removeTitleAccessibilityTraits:UIAccessibilityTraitStaticText];
  }
}

- (void)setMoreActionsAndPlaybackSettingsButtonsHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  playbackSettingsButton = [(RCRecordingView *)self playbackSettingsButton];
  [playbackSettingsButton setHidden:hiddenCopy];

  moreActionsButton = [(RCRecordingView *)self moreActionsButton];
  [moreActionsButton setHidden:hiddenCopy];
}

- (void)updateMoreActionsAndPlaybackSettingButtonVisibility
{
  v3 = +[RCRecorderStyleProvider sharedStyleProvider];
  if ([v3 showsDescriptionViewInLineWithTrimAndPlaybackSettingsButtons])
  {
    displayStyle = [(RCRecordingView *)self displayStyle];

    if (displayStyle == 3)
    {
      [(RCRecordingView *)self setMoreActionsAndPlaybackSettingsButtonsHidden:0];
      if ([(RCRecordingView *)self recordingControlState]== 1)
      {
        playbackSettingsButton = [(RCRecordingView *)self playbackSettingsButton];
        [playbackSettingsButton setEnabled:0];

        moreActionsButton = [(RCRecordingView *)self moreActionsButton];
        [moreActionsButton setEnabled:0];
      }

      else
      {
        recordingControlState = [(RCRecordingView *)self recordingControlState];
        v7 = recordingControlState != 2;
        playbackSettingsButton2 = [(RCRecordingView *)self playbackSettingsButton];
        [playbackSettingsButton2 setEnabled:v7];

        moreActionsButton2 = [(RCRecordingView *)self moreActionsButton];
        [moreActionsButton2 setEnabled:v7];

        if (recordingControlState != 2)
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

- (void)setHasNoTranscribableContent:(BOOL)content
{
  contentCopy = content;
  self->_hasNoTranscribableContent = content;
  editingToolbarProvider = [(RCRecordingView *)self editingToolbarProvider];
  [editingToolbarProvider setHasNoTranscribableContent:contentCopy];
}

- (void)restyle
{
  [(RCRecordingView *)self _styleView];
  [(RCRecordingView *)self setDisplayStyle:[(RCRecordingView *)self displayStyle]];
  [(RCRecordingView *)self setTrimEnabled:[(RCRecordingView *)self trimEnabled]];
  [(RCRecordingView *)self setRecordingViewState:[(RCRecordingView *)self recordingViewState] animated:1 force:1];
  [(RCRecordingView *)self _syncViewsToState];
  progressOverlay = [(RCRecordingView *)self progressOverlay];
  [progressOverlay restyle];

  shuttleBar = [(RCRecordingView *)self shuttleBar];
  [shuttleBar restyle];

  [(RCRecordingView *)self setNeedsLayout];
}

- (void)applyDimmingColorToProgressOverlay
{
  v5 = +[RCRecorderStyleProvider sharedStyleProvider];
  progressViewBackgroundColorEditingCard = [v5 progressViewBackgroundColorEditingCard];
  progressOverlay = [(RCRecordingView *)self progressOverlay];
  [progressOverlay setDimmingBackgroundColor:progressViewBackgroundColorEditingCard];
}

- (void)_adjustCancelAndDoneButtonsWidth
{
  doneButton = [(RCRecordingView *)self doneButton];
  widthAnchor = [doneButton widthAnchor];
  cancelButton = [(RCRecordingView *)self cancelButton];
  widthAnchor2 = [cancelButton widthAnchor];
  v7 = [widthAnchor constraintEqualToAnchor:widthAnchor2];

  [v7 setActive:1];
}

- (void)_adjustTrimAndDeleteSelectionButtonsSize
{
  trimToSelectionButton = [(RCRecordingView *)self trimToSelectionButton];
  widthAnchor = [trimToSelectionButton widthAnchor];
  deleteSelectionButton = [(RCRecordingView *)self deleteSelectionButton];
  widthAnchor2 = [deleteSelectionButton widthAnchor];
  v16 = [widthAnchor constraintEqualToAnchor:widthAnchor2];

  [v16 setActive:1];
  trimToSelectionButton2 = [(RCRecordingView *)self trimToSelectionButton];
  heightAnchor = [trimToSelectionButton2 heightAnchor];
  v9 = +[RCRecorderStyleProvider sharedStyleProvider];
  [v9 trimDeleteButtonHeight];
  v10 = [heightAnchor constraintEqualToConstant:?];

  [v10 setActive:1];
  deleteSelectionButton2 = [(RCRecordingView *)self deleteSelectionButton];
  heightAnchor2 = [deleteSelectionButton2 heightAnchor];
  trimToSelectionButton3 = [(RCRecordingView *)self trimToSelectionButton];
  heightAnchor3 = [trimToSelectionButton3 heightAnchor];
  v15 = [heightAnchor2 constraintEqualToAnchor:heightAnchor3];

  [v15 setActive:1];
}

- (void)_setupButtonsAndDescriptionContainerViewConstraints
{
  buttonsAndDescriptionContainerView = [(RCRecordingView *)self buttonsAndDescriptionContainerView];
  [buttonsAndDescriptionContainerView setTranslatesAutoresizingMaskIntoConstraints:0];

  descriptionView = [(RCRecordingView *)self descriptionView];
  [descriptionView setTranslatesAutoresizingMaskIntoConstraints:0];

  buttonsAndDescriptionContainerView2 = [(RCRecordingView *)self buttonsAndDescriptionContainerView];
  descriptionView2 = [(RCRecordingView *)self descriptionView];
  [buttonsAndDescriptionContainerView2 addSubview:descriptionView2];

  descriptionView3 = [(RCRecordingView *)self descriptionView];
  topAnchor = [descriptionView3 topAnchor];
  buttonsAndDescriptionContainerView3 = [(RCRecordingView *)self buttonsAndDescriptionContainerView];
  topAnchor2 = [buttonsAndDescriptionContainerView3 topAnchor];
  v11 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v11 setActive:1];

  descriptionView4 = [(RCRecordingView *)self descriptionView];
  bottomAnchor = [descriptionView4 bottomAnchor];
  buttonsAndDescriptionContainerView4 = [(RCRecordingView *)self buttonsAndDescriptionContainerView];
  bottomAnchor2 = [buttonsAndDescriptionContainerView4 bottomAnchor];
  v16 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [v16 setActive:1];

  descriptionView5 = [(RCRecordingView *)self descriptionView];
  centerXAnchor = [descriptionView5 centerXAnchor];
  buttonsAndDescriptionContainerView5 = [(RCRecordingView *)self buttonsAndDescriptionContainerView];
  centerXAnchor2 = [buttonsAndDescriptionContainerView5 centerXAnchor];
  v21 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  [v21 setActive:1];

  descriptionView6 = [(RCRecordingView *)self descriptionView];
  buttonsAndDescriptionContainerView6 = [(RCRecordingView *)self buttonsAndDescriptionContainerView];
  [descriptionView6 addLeadingToLeadingConstraintWithView:buttonsAndDescriptionContainerView6 padding:0.0];
}

- (void)_displayPlaybackSettings
{
  playbackSettingsButton = [(RCRecordingView *)self playbackSettingsButton];
  [(RCRecordingView *)self performControlsAction:41 position:playbackSettingsButton source:0.0];
}

- (void)setHasMultipleTracks:(BOOL)tracks
{
  tracksCopy = tracks;
  self->_hasMultipleTracks = tracks;
  [(RCRecordingView *)self _updateMoreButtonMenu];
  descriptionView = [(RCRecordingView *)self descriptionView];
  [descriptionView setHasMultipleTracks:tracksCopy];
}

- (void)setHasSpatialRecording:(BOOL)recording
{
  recordingCopy = recording;
  self->_hasSpatialRecording = recording;
  [(RCRecordingView *)self _updateMoreButtonMenu];
  descriptionView = [(RCRecordingView *)self descriptionView];
  [descriptionView setIsSpatialRecording:recordingCopy];
}

- (void)_dropView:(id)view
{
  viewCopy = view;
  [viewCopy removeAllConstraints];
  [viewCopy removeFromSuperview];
}

- (void)_dropView:(id)view fromAncestor:(id)ancestor
{
  viewCopy = view;
  if ([viewCopy isDescendantOfView:ancestor])
  {
    [(RCRecordingView *)self _dropView:viewCopy];
  }
}

- (void)_showTrimDeleteSelectionButtonsIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  deleteSelectionButton = [(RCRecordingView *)self deleteSelectionButton];
  [deleteSelectionButton setHidden:!neededCopy];

  trimToSelectionButton = [(RCRecordingView *)self trimToSelectionButton];
  [trimToSelectionButton setHidden:!neededCopy];
}

- (void)_swapCenterContentTimeIndices:(BOOL)indices
{
  indicesCopy = indices;
  mainContainerStackView = [(RCRecordingView *)self mainContainerStackView];
  subviews = [mainContainerStackView subviews];
  centerContentContainerView = [(RCRecordingView *)self centerContentContainerView];
  v8 = [subviews indexOfObject:centerContentContainerView];

  mainContainerStackView2 = [(RCRecordingView *)self mainContainerStackView];
  subviews2 = [mainContainerStackView2 subviews];
  currentTimeLabel = [(RCRecordingView *)self currentTimeLabel];
  v12 = [subviews2 indexOfObject:currentTimeLabel];

  mainContainerStackView3 = [(RCRecordingView *)self mainContainerStackView];
  subviews3 = [mainContainerStackView3 subviews];
  v15 = [subviews3 count];

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
    if (!indicesCopy)
    {
      v16 = v8 <= v12;
    }

    if (!v16)
    {
      mainContainerStackView4 = [(RCRecordingView *)self mainContainerStackView];
      [mainContainerStackView4 exchangeSubviewAtIndex:v8 withSubviewAtIndex:v12];
    }
  }
}

- (unint64_t)_displayOptionForView:(id)view
{
  viewCopy = view;
  if (viewCopy)
  {
    topSpacerView = [(RCRecordingView *)self topSpacerView];

    if (topSpacerView == viewCopy)
    {
      v21 = 1;
      goto LABEL_22;
    }

    centerContentContainerView = [(RCRecordingView *)self centerContentContainerView];

    if (centerContentContainerView == viewCopy)
    {
      v21 = 2;
      goto LABEL_22;
    }

    overviewWaveformContainerView = [(RCRecordingView *)self overviewWaveformContainerView];

    if (overviewWaveformContainerView == viewCopy)
    {
      v21 = 4;
      goto LABEL_22;
    }

    currentTimeLabel = [(RCRecordingView *)self currentTimeLabel];

    if (currentTimeLabel == viewCopy)
    {
      v21 = 8;
      goto LABEL_22;
    }

    buttonsAndDescriptionContainerView = [(RCRecordingView *)self buttonsAndDescriptionContainerView];

    if (buttonsAndDescriptionContainerView == viewCopy)
    {
      v21 = 16;
      goto LABEL_22;
    }

    shuttleBar = [(RCRecordingView *)self shuttleBar];

    if (shuttleBar == viewCopy)
    {
      v21 = 32;
      goto LABEL_22;
    }

    bottomControlsContainerView = [(RCRecordingView *)self bottomControlsContainerView];

    if (bottomControlsContainerView == viewCopy)
    {
      v21 = 64;
      goto LABEL_22;
    }

    bottomSpacerView = [(RCRecordingView *)self bottomSpacerView];

    if (bottomSpacerView == viewCopy)
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

- (void)undoStateChanged:(BOOL)changed isNewRecording:(BOOL)recording
{
  recordingCopy = recording;
  changedCopy = changed;
  editingToolbarProvider = [(RCRecordingView *)self editingToolbarProvider];
  [editingToolbarProvider setCanUndo:changedCopy];

  [(RCRecordingView *)self _updateMoreButtonMenu];
  [(RCRecordingView *)self setShouldSaveAsNew:changedCopy & ~recordingCopy];
  doneButton = [(RCRecordingView *)self doneButton];
  [(RCRecordingView *)self assignActionOnDoneButton:doneButton];

  [(RCRecordingView *)self _updateDoneButtonActionForModernToolbar];
}

- (void)trimSaveStateChanged:(BOOL)changed
{
  changedCopy = changed;
  editingToolbarProvider = [(RCRecordingView *)self editingToolbarProvider];
  [editingToolbarProvider setCanSave:changedCopy];

  recordingViewState = [(RCRecordingView *)self recordingViewState];

  [(RCRecordingView *)self setRecordingViewState:recordingViewState animated:0 force:1];
}

- (void)setTrimEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  self->_trimEnabled = enabled;
  trimToSelectionButton = [(RCRecordingView *)self trimToSelectionButton];
  [trimToSelectionButton setEnabled:enabledCopy];

  deleteSelectionButton = [(RCRecordingView *)self deleteSelectionButton];
  [deleteSelectionButton setEnabled:enabledCopy];
}

- (BOOL)canSaveTrimChanges
{
  editingToolbarProvider = [(RCRecordingView *)self editingToolbarProvider];
  canSave = [editingToolbarProvider canSave];

  return canSave;
}

- (void)setHasCustomizedPlaybackSettings:(BOOL)settings
{
  settingsCopy = settings;
  editingToolbarProvider = [(RCRecordingView *)self editingToolbarProvider];
  [editingToolbarProvider setHasCustomizedPlaybackSettings:settingsCopy];

  playbackSettingsButton = [(RCRecordingView *)self playbackSettingsButton];
  [playbackSettingsButton setSelected:settingsCopy];
}

- (void)setHasTranscription:(BOOL)transcription
{
  transcriptionCopy = transcription;
  self->_hasTranscription = transcription;
  descriptionView = [(RCRecordingView *)self descriptionView];
  [descriptionView setDisplayTranscriptAvailableIcon:transcriptionCopy];

  [(RCRecordingView *)self _updateMoreButtonMenu];
}

- (void)setEditingInFlight:(BOOL)flight
{
  flightCopy = flight;
  self->_editingInFlight = flight;
  displayStyle = [(RCRecordingView *)self displayStyle];
  progressOverlay = [(RCRecordingView *)self progressOverlay];
  if (!flightCopy || displayStyle == 1)
  {
    v9 = progressOverlay;
    [progressOverlay dismiss];
  }

  else
  {
    if (!progressOverlay)
    {
      v8 = objc_opt_new();
      v7 = +[UIColor secondaryLabelColor];
      [v8 setProgressIndicatorColor:v7];

      [(RCRecordingView *)self setProgressOverlay:v8];
      [(RCRecordingView *)self applyDimmingColorToProgressOverlay];
      [v8 setStyle:1];
      progressOverlay = v8;
    }

    v9 = progressOverlay;
    [progressOverlay presentInView:self];
  }
}

- (void)setEditingProgress:(float)progress
{
  progressOverlay = [(RCRecordingView *)self progressOverlay];
  *&v4 = progress;
  [progressOverlay setProgress:v4];
}

- (float)editingProgress
{
  progressOverlay = [(RCRecordingView *)self progressOverlay];
  [progressOverlay progress];
  v4 = v3;

  return v4;
}

- (void)_showHideViewsForDisplayOptions:(unint64_t)options
{
  optionsCopy = options;
  v5 = (options & 1) == 0;
  topSpacerView = [(RCRecordingView *)self topSpacerView];
  [topSpacerView setHidden:v5];

  centerContentContainerView = [(RCRecordingView *)self centerContentContainerView];
  [centerContentContainerView setHidden:(optionsCopy & 2) == 0];

  overviewWaveformContainerView = [(RCRecordingView *)self overviewWaveformContainerView];
  [overviewWaveformContainerView setHidden:(optionsCopy & 4) == 0];

  currentTimeLabel = [(RCRecordingView *)self currentTimeLabel];
  [currentTimeLabel setHidden:(optionsCopy & 8) == 0];

  buttonsAndDescriptionContainerView = [(RCRecordingView *)self buttonsAndDescriptionContainerView];
  [buttonsAndDescriptionContainerView setHidden:(optionsCopy & 0x10) == 0];

  shuttleBar = [(RCRecordingView *)self shuttleBar];
  [shuttleBar setHidden:(optionsCopy & 0x20) == 0];

  bottomControlsContainerView = [(RCRecordingView *)self bottomControlsContainerView];
  [bottomControlsContainerView setHidden:(optionsCopy & 0x40) == 0];

  bottomSpacerView = [(RCRecordingView *)self bottomSpacerView];
  [bottomSpacerView setHidden:(optionsCopy & 0x80) == 0];
}

- (void)setRecordingTitle:(id)title
{
  titleCopy = title;
  descriptionView = [(RCRecordingView *)self descriptionView];
  [descriptionView setRecordingTitle:titleCopy];
}

- (NSString)recordingTitle
{
  descriptionView = [(RCRecordingView *)self descriptionView];
  recordingTitle = [descriptionView recordingTitle];

  return recordingTitle;
}

- (void)setCreationDate:(id)date
{
  dateCopy = date;
  descriptionView = [(RCRecordingView *)self descriptionView];
  [descriptionView setCreationDate:dateCopy];
}

- (NSDate)creationDate
{
  descriptionView = [(RCRecordingView *)self descriptionView];
  creationDate = [descriptionView creationDate];

  return creationDate;
}

- (void)setRecordingDuration:(double)duration
{
  if (self->_recordingDuration != duration)
  {
    self->_recordingDuration = duration;
    [(RCRecordingView *)self _updateRecordingDescriptionViewForDuration:duration];
    v5 = RCLocalizedDuration();
    overviewEndTimeLabel = [(RCRecordingView *)self overviewEndTimeLabel];
    [overviewEndTimeLabel setText:v5];

    overviewEndTimeLabel2 = [(RCRecordingView *)self overviewEndTimeLabel];
    [overviewEndTimeLabel2 sizeToFit];
  }

  if (duration == 0.0)
  {
    descriptionView = [(RCRecordingView *)self descriptionView];
    [descriptionView setDurationLabelAccessible:0];
  }
}

- (void)_updateRecordingDescriptionViewForDuration:(double)duration
{
  displayStyle = [(RCRecordingView *)self displayStyle];
  if ([(RCRecordingView *)self recordingViewState])
  {
    v6 = 1;
  }

  else
  {
    v6 = self->_recordingDuration != 0.0;
  }

  descriptionView = [(RCRecordingView *)self descriptionView];
  [descriptionView setRecordingDuration:displayStyle == 2 withHiddenLabel:v6 isDurationLabelAX:duration];
}

- (void)setCurrentTime:(double)time
{
  self->_currentTime = time;
  [(RCRecordingView *)self _updateCurrentTimeLabelForTime:?];
  v5 = [(RCRecordingView *)self recordingViewState]!= 0;
  currentTimeLabel = [(RCRecordingView *)self currentTimeLabel];
  [currentTimeLabel setIsAccessibilityElement:v5];

  v7 = +[NSBundle mainBundle];
  v8 = [v7 localizedStringForKey:@"CURRENT_POSITION" value:&stru_100295BB8 table:0];
  currentTimeLabel2 = [(RCRecordingView *)self currentTimeLabel];
  [currentTimeLabel2 setAccessibilityLabel:v8];

  v10 = UIAXTimeStringForDuration();
  currentTimeLabel3 = [(RCRecordingView *)self currentTimeLabel];
  [currentTimeLabel3 setAccessibilityValue:v10];

  [(RCRecordingView *)self updateRecordButtonViewStateWithCurrentTime:time];
}

- (void)_updateCurrentTimeLabelForTime:(double)time
{
  [(RCRecordingView *)self recordingDuration];
  v5 = RCLocalizedPlaybackTime();
  currentTimeLabel = [(RCRecordingView *)self currentTimeLabel];
  [currentTimeLabel setText:v5];
}

- (void)updateRecordButtonViewStateWithCurrentTime:(double)time
{
  recordingViewState = [(RCRecordingView *)self recordingViewState];
  if (recordingViewState > 8 || ((1 << recordingViewState) & 0x1C3) == 0)
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

    if (v8 + -0.06 <= time)
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

- (void)_updateRecordButtonStateForRecordingViewState:(int64_t)state
{
  stateCopy = state;
  if (state <= 8)
  {
    if (((1 << state) & 0x38) != 0)
    {
      viewDelegate = [(RCRecordingView *)self viewDelegate];
      willRecordIntoTrackTwo = [viewDelegate willRecordIntoTrackTwo];

      v9 = 3;
      if (stateCopy == 5)
      {
        v9 = 4;
      }

      if (willRecordIntoTrackTwo)
      {
        stateCopy = 0;
      }

      else
      {
        stateCopy = v9;
      }

      goto LABEL_20;
    }

    if (((1 << state) & 0xC0) != 0)
    {
      goto LABEL_19;
    }

    if (((1 << state) & 0x104) != 0)
    {
      return;
    }
  }

  if (state)
  {
    if (state != 1)
    {
      v10 = OSLogForCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        sub_1001BA3EC(v10, v11, v12, v13, v14, v15, v16, v17);
      }

      stateCopy = 0;
      goto LABEL_20;
    }

    v5 = +[RCRecorderStyleProvider sharedStyleProvider];
    if ([v5 supportsCompactRecordingCard])
    {
      displayStyle = [(RCRecordingView *)self displayStyle];

      if (displayStyle != 3)
      {
        stateCopy = 2;
        goto LABEL_20;
      }
    }

    else
    {
    }

LABEL_19:
    stateCopy = 1;
  }

LABEL_20:
  recordButtonRepository = [(RCRecordingView *)self recordButtonRepository];
  [recordButtonRepository setState:stateCopy];

  viewDelegate2 = [(RCRecordingView *)self viewDelegate];
  [viewDelegate2 didUpdateRecordButtonState];
}

- (double)customDetentFixedHeight:(BOOL)height includeBottomSafeArea:(BOOL)area
{
  areaCopy = area;
  heightCopy = height;
  v7 = +[RCRecorderStyleProvider sharedStyleProvider];
  [v7 customDetentMainContainerStackViewHeight];
  v9 = v8;

  v10 = 0.0;
  if (heightCopy)
  {
    [(RCRecordingView *)self safeAreaInsets];
    v10 = v11 + 0.0;
  }

  if (areaCopy)
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

- (void)setWaveformView:(id)view
{
  self->_waveformView = view;
  [view setAccessibilityIgnoresInvertColors:0];

  [(RCRecordingView *)self _syncCenterContentContainerViewState];
}

- (void)setTranscriptView:(id)view
{
  objc_storeWeak(&self->_transcriptView, view);

  [(RCRecordingView *)self _syncCenterContentContainerViewState];
}

- (void)setCenterContentViewState:(int64_t)state
{
  if (self->_centerContentViewState != state)
  {
    viewDelegate = [(RCRecordingView *)self viewDelegate];
    [viewDelegate willUpdateRecordingCenterContentViewState:state];

    self->_centerContentViewState = state;
    transcriptionButton = [(RCRecordingView *)self transcriptionButton];
    [transcriptionButton setSelected:state == 1];

    editingToolbarProvider = [(RCRecordingView *)self editingToolbarProvider];
    [editingToolbarProvider setIsTranscriptViewDisplayed:state == 1];

    [(RCRecordingView *)self updateMoreActionsAndPlaybackSettingButtonVisibility];
    [(RCRecordingView *)self _syncCenterContentContainerViewState];
    [(RCRecordingView *)self setTranscriptViewState:0];
    [(RCRecordingView *)self _updateSpacingBetweenArrangedSubviews];
    viewDelegate2 = [(RCRecordingView *)self viewDelegate];
    [viewDelegate2 didUpdateRecordingCenterContentViewState];

    if (state == 1)
    {
      v9 = UIAccessibilityScreenChangedNotification;
      transcriptView = [(RCRecordingView *)self transcriptView];
      UIAccessibilityPostNotification(v9, transcriptView);
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
  centerContentContainerView = [(RCRecordingView *)self centerContentContainerView];
  subviews = [centerContentContainerView subviews];
  v6 = [subviews containsObject:v11];

  WeakRetained = v11;
  if (v6)
  {
    centerContentContainerView2 = [(RCRecordingView *)self centerContentContainerView];
    [(UIView *)v11 addTopToTopConstraintWithView:centerContentContainerView2 padding:0.0];

    centerContentContainerView3 = [(RCRecordingView *)self centerContentContainerView];
    [(UIView *)v11 addBottomToBottomConstraintWithView:centerContentContainerView3 padding:0.0];

    centerContentContainerView4 = [(RCRecordingView *)self centerContentContainerView];
    [(UIView *)v11 addLeadingToLeadingConstraintWithView:centerContentContainerView4 padding:0.0];

    centerContentContainerView5 = [(RCRecordingView *)self centerContentContainerView];
    [(UIView *)v11 addTrailingToTrailingConstraintWithView:centerContentContainerView5 padding:0.0];

    WeakRetained = v11;
  }

LABEL_7:
}

- (void)setTranscriptViewState:(int64_t)state
{
  if (self->_transcriptViewState != state)
  {
    self->_transcriptViewState = state;
    viewDelegate = [(RCRecordingView *)self viewDelegate];
    [viewDelegate willUpdateRecordingViewTranscriptState:state];

    [(RCRecordingView *)self _syncTranscriptViewState];

    [(RCRecordingView *)self _updateSpacingBetweenArrangedSubviews];
  }
}

- (void)_syncTranscriptViewState
{
  shouldHideBottomElements = [(RCRecordingView *)self shouldHideBottomElements];
  v4 = shouldHideBottomElements;
  if (shouldHideBottomElements)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = 1.0;
  }

  createTranscriptViewExpansionAnimator = [(RCRecordingView *)self createTranscriptViewExpansionAnimator];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10008FF5C;
  v7[3] = &unk_10028BE10;
  v7[4] = self;
  v8 = v4;
  *&v7[5] = v5;
  [createTranscriptViewExpansionAnimator addAnimations:v7];
  [createTranscriptViewExpansionAnimator startAnimation];
}

- (id)_bottomElementsToHide
{
  currentTimeLabel = [(RCRecordingView *)self currentTimeLabel];
  shuttleBar = [(RCRecordingView *)self shuttleBar];
  v8[1] = shuttleBar;
  bottomControlsContainerView = [(RCRecordingView *)self bottomControlsContainerView];
  v8[2] = bottomControlsContainerView;
  v6 = [NSArray arrayWithObjects:v8 count:3];

  return v6;
}

- (id)createTranscriptViewExpansionAnimator
{
  v2 = [[UISpringTimingParameters alloc] initWithMass:1.0 stiffness:450.0 damping:45.0 initialVelocity:{0.0, 0.0}];
  v3 = [[UIViewPropertyAnimator alloc] initWithDuration:v2 timingParameters:0.0];

  return v3;
}

- (void)setOverviewWaveformView:(id)view
{
  viewCopy = view;
  self->_overviewWaveformView = viewCopy;
  overviewWaveformContainerView = [(RCRecordingView *)self overviewWaveformContainerView];
  if (overviewWaveformContainerView)
  {
    [(UIView *)self->_overviewWaveformView removeFromSuperview];
    [overviewWaveformContainerView addSubview:viewCopy];
    [(RCRecordingView *)self _applyOverviewWaveformViewConstraints];
    [(UIView *)viewCopy setAccessibilityIgnoresInvertColors:0];
    v5 = +[RCRecorderStyleProvider sharedStyleProvider];
    hasBeginAndEndTimeLabelAtOverviewWaveform = [v5 hasBeginAndEndTimeLabelAtOverviewWaveform];

    if (hasBeginAndEndTimeLabelAtOverviewWaveform)
    {
      [(RCRecordingView *)self _addLabelsToWaveformOverview:viewCopy containerView:overviewWaveformContainerView];
    }
  }
}

- (void)_applyOverviewWaveformViewConstraints
{
  overviewWaveformView = [(RCRecordingView *)self overviewWaveformView];
  [overviewWaveformView removeAllConstraints];
  overviewWaveformContainerView = [(RCRecordingView *)self overviewWaveformContainerView];
  v4 = +[RCRecorderStyleProvider sharedStyleProvider];
  [v4 recordingViewOverviewWaveformSidePadding];
  v6 = v5;
  [overviewWaveformView alignCenterTopToCenterTopOfView:overviewWaveformContainerView padding:0.0];
  [overviewWaveformView alignCenterBottomToCenterBottomOfView:overviewWaveformContainerView padding:0.0];
  [overviewWaveformView constrainWidthWithView:overviewWaveformContainerView padding:v6 * -2.0];
}

- (void)_addLabelsToWaveformOverview:(id)overview containerView:(id)view
{
  viewCopy = view;
  overviewCopy = overview;
  overviewBeginTimeLabel = [(RCRecordingView *)self overviewBeginTimeLabel];
  [overviewBeginTimeLabel removeFromSuperview];

  overviewEndTimeLabel = [(RCRecordingView *)self overviewEndTimeLabel];
  [overviewEndTimeLabel removeFromSuperview];

  overviewBeginTimeLabel2 = [(RCRecordingView *)self overviewBeginTimeLabel];
  [overviewBeginTimeLabel2 removeAllConstraints];

  overviewEndTimeLabel2 = [(RCRecordingView *)self overviewEndTimeLabel];
  [overviewEndTimeLabel2 removeAllConstraints];

  overviewBeginTimeLabel3 = [(RCRecordingView *)self overviewBeginTimeLabel];
  [viewCopy addSubview:overviewBeginTimeLabel3];

  overviewEndTimeLabel3 = [(RCRecordingView *)self overviewEndTimeLabel];
  [viewCopy addSubview:overviewEndTimeLabel3];

  v14 = +[RCRecorderStyleProvider sharedStyleProvider];
  [v14 beginEndLabelsTopPadding];
  v16 = v15;

  overviewBeginTimeLabel4 = [(RCRecordingView *)self overviewBeginTimeLabel];
  [overviewBeginTimeLabel4 addTopToBottomConstraintWithView:overviewCopy padding:v16];

  overviewBeginTimeLabel5 = [(RCRecordingView *)self overviewBeginTimeLabel];
  [overviewBeginTimeLabel5 addLeftToLeftConstraintWithView:overviewCopy padding:0.0];

  overviewEndTimeLabel4 = [(RCRecordingView *)self overviewEndTimeLabel];
  [overviewEndTimeLabel4 addTopToBottomConstraintWithView:overviewCopy padding:v16];

  overviewEndTimeLabel5 = [(RCRecordingView *)self overviewEndTimeLabel];
  [overviewEndTimeLabel5 addRightToRightConstraintWithView:overviewCopy padding:0.0];

  v21 = RCLocalizedDuration();
  overviewBeginTimeLabel6 = [(RCRecordingView *)self overviewBeginTimeLabel];
  [overviewBeginTimeLabel6 setText:v21];

  overviewBeginTimeLabel7 = [(RCRecordingView *)self overviewBeginTimeLabel];
  [overviewBeginTimeLabel7 sizeToFit];

  v24 = RCLocalizedDuration();
  overviewEndTimeLabel6 = [(RCRecordingView *)self overviewEndTimeLabel];
  [overviewEndTimeLabel6 setText:v24];

  overviewEndTimeLabel7 = [(RCRecordingView *)self overviewEndTimeLabel];
  [overviewEndTimeLabel7 sizeToFit];

  overviewBeginTimeLabel8 = [(RCRecordingView *)self overviewBeginTimeLabel];
  [overviewBeginTimeLabel8 setIsAccessibilityElement:0];

  overviewEndTimeLabel8 = [(RCRecordingView *)self overviewEndTimeLabel];
  [overviewEndTimeLabel8 setIsAccessibilityElement:0];
}

- (RCRecordingView)initWithRecordButtonRepository:(id)repository interactionHandler:(id)handler
{
  repositoryCopy = repository;
  handlerCopy = handler;
  v14.receiver = self;
  v14.super_class = RCRecordingView;
  v8 = [(RCRecordingView *)&v14 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  v9 = v8;
  if (v8)
  {
    [(RCRecordingView *)v8 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(RCRecordingView *)v9 setRecordButtonRepository:repositoryCopy];
    recordButtonRepository = [(RCRecordingView *)v9 recordButtonRepository];

    if (recordButtonRepository)
    {
      v11 = [[_TtC10VoiceMemos24RCRecordButtonAppFactory alloc] initWithRecordButtonRepository:repositoryCopy interactionHandler:handlerCopy];
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

  overviewWaveformContainerView = [(RCRecordingView *)self overviewWaveformContainerView];
  heightAnchor = [overviewWaveformContainerView heightAnchor];
  v7 = [heightAnchor constraintEqualToConstant:v5];
  [v7 setActive:1];
}

- (void)_setupCenterContentContainerViewConstraints
{
  v10 = +[RCRecorderStyleProvider sharedStyleProvider];
  [v10 overviewWaveformHeight];
  v4 = v3;
  [v10 annotationViewHeight];
  v6 = v4 + v5;
  centerContentContainerView = [(RCRecordingView *)self centerContentContainerView];
  heightAnchor = [centerContentContainerView heightAnchor];
  v9 = [heightAnchor constraintGreaterThanOrEqualToConstant:v6];
  [v9 setActive:1];
}

- (void)_addDoneAndCancelButtonsToBottomControlsContainerView
{
  bottomControlsContainerView = [(RCRecordingView *)self bottomControlsContainerView];
  trailingContainerView = [bottomControlsContainerView trailingContainerView];

  doneButton = [(RCRecordingView *)self doneButton];
  superview = [doneButton superview];
  v7 = superview;
  if (superview != trailingContainerView)
  {

LABEL_4:
    doneButton2 = [(RCRecordingView *)self doneButton];
    [(RCRecordingView *)self _dropView:doneButton2];

    cancelButton = [(RCRecordingView *)self cancelButton];
    [(RCRecordingView *)self _dropView:cancelButton];

    doneButton3 = [(RCRecordingView *)self doneButton];
    [trailingContainerView addSubview:doneButton3];

    cancelButton2 = [(RCRecordingView *)self cancelButton];
    [trailingContainerView addSubview:cancelButton2];

    doneButton4 = [(RCRecordingView *)self doneButton];
    [doneButton4 setTranslatesAutoresizingMaskIntoConstraints:0];

    cancelButton3 = [(RCRecordingView *)self cancelButton];
    [cancelButton3 setTranslatesAutoresizingMaskIntoConstraints:0];

    v16 = +[RCRecorderStyleProvider sharedStyleProvider];
    [v16 bottomControlsContainerInterElementPadding];
    v18 = v17;

    doneButton5 = [(RCRecordingView *)self doneButton];
    centerYAnchor = [doneButton5 centerYAnchor];
    centerYAnchor2 = [trailingContainerView centerYAnchor];
    v42 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v47[0] = v42;
    cancelButton4 = [(RCRecordingView *)self cancelButton];
    centerYAnchor3 = [cancelButton4 centerYAnchor];
    centerYAnchor4 = [trailingContainerView centerYAnchor];
    v38 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
    v47[1] = v38;
    cancelButton5 = [(RCRecordingView *)self cancelButton];
    leadingAnchor = [cancelButton5 leadingAnchor];
    leadingAnchor2 = [trailingContainerView leadingAnchor];
    v34 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v47[2] = v34;
    cancelButton6 = [(RCRecordingView *)self cancelButton];
    trailingAnchor = [cancelButton6 trailingAnchor];
    doneButton6 = [(RCRecordingView *)self doneButton];
    leadingAnchor3 = [doneButton6 leadingAnchor];
    v22 = [trailingAnchor constraintEqualToAnchor:leadingAnchor3 constant:-v18];
    v47[3] = v22;
    doneButton7 = [(RCRecordingView *)self doneButton];
    trailingAnchor2 = [doneButton7 trailingAnchor];
    [trailingContainerView trailingAnchor];
    v25 = v46 = trailingContainerView;
    v26 = [trailingAnchor2 constraintEqualToAnchor:v25];
    v47[4] = v26;
    v27 = [NSArray arrayWithObjects:v47 count:5];
    [NSLayoutConstraint activateConstraints:v27];

    v28 = +[RCRecorderStyleProvider sharedStyleProvider];
    [v28 doneButtonHeight];
    v30 = v29;

    [(RCRecordingView *)self _adjustCancelAndDoneButtonsWidth];
    doneButton8 = [(RCRecordingView *)self doneButton];
    [doneButton8 constrainHeight:v30];

    cancelButton7 = [(RCRecordingView *)self cancelButton];
    [cancelButton7 constrainHeight:v30];

    trailingContainerView = v46;
    goto LABEL_5;
  }

  cancelButton8 = [(RCRecordingView *)self cancelButton];
  superview2 = [cancelButton8 superview];

  if (superview2 != trailingContainerView)
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
  bottomControlsContainerView = [(RCRecordingView *)self bottomControlsContainerView];
  leadingContainerView = [bottomControlsContainerView leadingContainerView];

  trimToSelectionButton = [(RCRecordingView *)self trimToSelectionButton];
  superview = [trimToSelectionButton superview];
  v7 = superview;
  if (superview != leadingContainerView)
  {

LABEL_4:
    trimToSelectionButton2 = [(RCRecordingView *)self trimToSelectionButton];
    [(RCRecordingView *)self _dropView:trimToSelectionButton2];

    deleteSelectionButton = [(RCRecordingView *)self deleteSelectionButton];
    [(RCRecordingView *)self _dropView:deleteSelectionButton];

    trimToSelectionButton3 = [(RCRecordingView *)self trimToSelectionButton];
    [leadingContainerView addSubview:trimToSelectionButton3];

    deleteSelectionButton2 = [(RCRecordingView *)self deleteSelectionButton];
    [leadingContainerView addSubview:deleteSelectionButton2];

    trimToSelectionButton4 = [(RCRecordingView *)self trimToSelectionButton];
    [trimToSelectionButton4 setTranslatesAutoresizingMaskIntoConstraints:0];

    deleteSelectionButton3 = [(RCRecordingView *)self deleteSelectionButton];
    [deleteSelectionButton3 setTranslatesAutoresizingMaskIntoConstraints:0];

    v16 = +[RCRecorderStyleProvider sharedStyleProvider];
    [v16 bottomControlsContainerInterElementPadding];
    v18 = v17;

    trimToSelectionButton5 = [(RCRecordingView *)self trimToSelectionButton];
    centerYAnchor = [trimToSelectionButton5 centerYAnchor];
    centerYAnchor2 = [leadingContainerView centerYAnchor];
    v37 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v41[0] = v37;
    deleteSelectionButton4 = [(RCRecordingView *)self deleteSelectionButton];
    centerYAnchor3 = [deleteSelectionButton4 centerYAnchor];
    centerYAnchor4 = [leadingContainerView centerYAnchor];
    v33 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
    v41[1] = v33;
    trimToSelectionButton6 = [(RCRecordingView *)self trimToSelectionButton];
    leadingAnchor = [trimToSelectionButton6 leadingAnchor];
    leadingAnchor2 = [leadingContainerView leadingAnchor];
    v29 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v41[2] = v29;
    trimToSelectionButton7 = [(RCRecordingView *)self trimToSelectionButton];
    trailingAnchor = [trimToSelectionButton7 trailingAnchor];
    deleteSelectionButton5 = [(RCRecordingView *)self deleteSelectionButton];
    leadingAnchor3 = [deleteSelectionButton5 leadingAnchor];
    v21 = [trailingAnchor constraintEqualToAnchor:leadingAnchor3 constant:-v18];
    v41[3] = v21;
    deleteSelectionButton6 = [(RCRecordingView *)self deleteSelectionButton];
    trailingAnchor2 = [deleteSelectionButton6 trailingAnchor];
    trailingAnchor3 = [leadingContainerView trailingAnchor];
    v25 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3];
    v41[4] = v25;
    v26 = [NSArray arrayWithObjects:v41 count:5];
    [NSLayoutConstraint activateConstraints:v26];

    [(RCRecordingView *)self _adjustTrimAndDeleteSelectionButtonsSize];
    goto LABEL_5;
  }

  deleteSelectionButton7 = [(RCRecordingView *)self deleteSelectionButton];
  superview2 = [deleteSelectionButton7 superview];

  if (superview2 != leadingContainerView)
  {
    goto LABEL_4;
  }

LABEL_5:
}

- (void)_addTrimDeleteButtonsToLeadingAndTrailingEdge
{
  bottomControlsContainerView = [(RCRecordingView *)self bottomControlsContainerView];
  leadingContainerView = [bottomControlsContainerView leadingContainerView];

  bottomControlsContainerView2 = [(RCRecordingView *)self bottomControlsContainerView];
  trailingContainerView = [bottomControlsContainerView2 trailingContainerView];

  trimToSelectionButton = [(RCRecordingView *)self trimToSelectionButton];
  superview = [trimToSelectionButton superview];
  v9 = superview;
  if (superview != leadingContainerView)
  {

LABEL_4:
    trimToSelectionButton2 = [(RCRecordingView *)self trimToSelectionButton];
    [(RCRecordingView *)self _dropView:trimToSelectionButton2];

    deleteSelectionButton = [(RCRecordingView *)self deleteSelectionButton];
    [(RCRecordingView *)self _dropView:deleteSelectionButton];

    v14 = +[RCRecorderStyleProvider sharedStyleProvider];
    [v14 bottomControlsContainerInterElementPadding];
    v16 = v15;

    trimToSelectionButton3 = [(RCRecordingView *)self trimToSelectionButton];
    [trimToSelectionButton3 setTranslatesAutoresizingMaskIntoConstraints:0];

    trimToSelectionButton4 = [(RCRecordingView *)self trimToSelectionButton];
    [leadingContainerView addSubview:trimToSelectionButton4];

    trimToSelectionButton5 = [(RCRecordingView *)self trimToSelectionButton];
    centerYAnchor = [trimToSelectionButton5 centerYAnchor];
    centerYAnchor2 = [leadingContainerView centerYAnchor];
    v39 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v49[0] = v39;
    trimToSelectionButton6 = [(RCRecordingView *)self trimToSelectionButton];
    leadingAnchor = [trimToSelectionButton6 leadingAnchor];
    leadingAnchor2 = [leadingContainerView leadingAnchor];
    v21 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v49[1] = v21;
    trimToSelectionButton7 = [(RCRecordingView *)self trimToSelectionButton];
    trailingAnchor = [trimToSelectionButton7 trailingAnchor];
    trailingAnchor2 = [leadingContainerView trailingAnchor];
    [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:v16 * -0.5];
    v25 = v47 = leadingContainerView;
    v49[2] = v25;
    v26 = [NSArray arrayWithObjects:v49 count:3];
    [NSLayoutConstraint activateConstraints:v26];

    deleteSelectionButton2 = [(RCRecordingView *)self deleteSelectionButton];
    [deleteSelectionButton2 setTranslatesAutoresizingMaskIntoConstraints:0];

    deleteSelectionButton3 = [(RCRecordingView *)self deleteSelectionButton];
    [trailingContainerView addSubview:deleteSelectionButton3];

    deleteSelectionButton4 = [(RCRecordingView *)self deleteSelectionButton];
    centerYAnchor3 = [deleteSelectionButton4 centerYAnchor];
    centerYAnchor4 = [trailingContainerView centerYAnchor];
    v40 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
    v48[0] = v40;
    deleteSelectionButton5 = [(RCRecordingView *)self deleteSelectionButton];
    leadingAnchor3 = [deleteSelectionButton5 leadingAnchor];
    leadingAnchor4 = [trailingContainerView leadingAnchor];
    v31 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:v16 * 0.5];
    v48[1] = v31;
    deleteSelectionButton6 = [(RCRecordingView *)self deleteSelectionButton];
    trailingAnchor3 = [deleteSelectionButton6 trailingAnchor];
    trailingAnchor4 = [trailingContainerView trailingAnchor];
    v35 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    v48[2] = v35;
    v36 = [NSArray arrayWithObjects:v48 count:3];
    [NSLayoutConstraint activateConstraints:v36];

    leadingContainerView = v47;
    [(RCRecordingView *)self _adjustTrimAndDeleteSelectionButtonsSize];
    goto LABEL_5;
  }

  deleteSelectionButton7 = [(RCRecordingView *)self deleteSelectionButton];
  superview2 = [deleteSelectionButton7 superview];

  if (superview2 != trailingContainerView)
  {
    goto LABEL_4;
  }

LABEL_5:
}

- (void)_setupBottomControlsContainerViewConstraints
{
  bottomControlsContainerView = [(RCRecordingView *)self bottomControlsContainerView];
  [bottomControlsContainerView setTranslatesAutoresizingMaskIntoConstraints:0];

  v4 = +[RCRecorderStyleProvider sharedStyleProvider];
  [v4 bottomControlsContainerHeight];
  v6 = v5;

  bottomControlsContainerView2 = [(RCRecordingView *)self bottomControlsContainerView];
  heightAnchor = [bottomControlsContainerView2 heightAnchor];
  v9 = [heightAnchor constraintEqualToConstant:v6];
  [v9 setActive:1];

  [(RCRecordingView *)self _updateBottomControlsContainerViewSubviews];
}

- (void)_setupTopSpacerViewConstraints
{
  v3 = +[RCRecorderStyleProvider sharedStyleProvider];
  [v3 topSpacerViewHeight];
  v5 = v4;

  topSpacerView = [(RCRecordingView *)self topSpacerView];
  heightAnchor = [topSpacerView heightAnchor];
  v8 = [heightAnchor constraintEqualToConstant:v5];
  [(RCRecordingView *)self setTopSpacerViewHeightConstraint:v8];

  topSpacerViewHeightConstraint = [(RCRecordingView *)self topSpacerViewHeightConstraint];
  [topSpacerViewHeightConstraint setActive:1];
}

- (void)_setupBottomSpacerViewConstraints
{
  v3 = +[RCRecorderStyleProvider sharedStyleProvider];
  [v3 bottomSpacerViewHeight];
  v5 = v4;

  bottomSpacerView = [(RCRecordingView *)self bottomSpacerView];
  heightAnchor = [bottomSpacerView heightAnchor];
  v8 = [heightAnchor constraintEqualToConstant:v5];
  [(RCRecordingView *)self setBottomSpacerViewHeightConstraint:v8];

  bottomSpacerViewHeightConstraint = [(RCRecordingView *)self bottomSpacerViewHeightConstraint];
  [bottomSpacerViewHeightConstraint setActive:1];
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
    mainContainerStackView = [(RCRecordingView *)self mainContainerStackView];
    [(RCRecordingView *)self addSubview:mainContainerStackView];

    mainContainerStackView2 = [(RCRecordingView *)self mainContainerStackView];
    [mainContainerStackView2 setTranslatesAutoresizingMaskIntoConstraints:0];

    mainContainerStackView3 = [(RCRecordingView *)self mainContainerStackView];
    topAnchor = [mainContainerStackView3 topAnchor];
    safeAreaLayoutGuide = [(RCRecordingView *)self safeAreaLayoutGuide];
    topAnchor2 = [safeAreaLayoutGuide topAnchor];
    v21 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v26[0] = v21;
    mainContainerStackView4 = [(RCRecordingView *)self mainContainerStackView];
    bottomAnchor = [mainContainerStackView4 bottomAnchor];
    safeAreaLayoutGuide2 = [(RCRecordingView *)self safeAreaLayoutGuide];
    bottomAnchor2 = [safeAreaLayoutGuide2 bottomAnchor];
    v16 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v26[1] = v16;
    mainContainerStackView5 = [(RCRecordingView *)self mainContainerStackView];
    leadingAnchor = [mainContainerStackView5 leadingAnchor];
    safeAreaLayoutGuide3 = [(RCRecordingView *)self safeAreaLayoutGuide];
    leadingAnchor2 = [safeAreaLayoutGuide3 leadingAnchor];
    v7 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v26[2] = v7;
    mainContainerStackView6 = [(RCRecordingView *)self mainContainerStackView];
    trailingAnchor = [mainContainerStackView6 trailingAnchor];
    safeAreaLayoutGuide4 = [(RCRecordingView *)self safeAreaLayoutGuide];
    trailingAnchor2 = [safeAreaLayoutGuide4 trailingAnchor];
    v12 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
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
  shuttleBar = [(RCRecordingView *)self shuttleBar];
  superview = [shuttleBar superview];
  bottomControlsContainerView = [(RCRecordingView *)self bottomControlsContainerView];
  v6 = [superview isEqual:bottomControlsContainerView];

  if ((v6 & 1) == 0)
  {
    shuttleBar2 = [(RCRecordingView *)self shuttleBar];
    [(RCRecordingView *)self _dropView:shuttleBar2];

    shuttleBar3 = [(RCRecordingView *)self shuttleBar];
    bottomControlsContainerView2 = [(RCRecordingView *)self bottomControlsContainerView];
    centerContainerView = [bottomControlsContainerView2 centerContainerView];

    [centerContainerView addSubview:shuttleBar3];
    shuttleBar4 = [(RCRecordingView *)self shuttleBar];
    [shuttleBar4 setTranslatesAutoresizingMaskIntoConstraints:0];

    shuttleBar5 = [(RCRecordingView *)self shuttleBar];
    topAnchor = [shuttleBar5 topAnchor];
    topAnchor2 = [centerContainerView topAnchor];
    v24 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v29[0] = v24;
    shuttleBar6 = [(RCRecordingView *)self shuttleBar];
    bottomAnchor = [shuttleBar6 bottomAnchor];
    bottomAnchor2 = [centerContainerView bottomAnchor];
    v20 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v29[1] = v20;
    shuttleBar7 = [(RCRecordingView *)self shuttleBar];
    leadingAnchor = [shuttleBar7 leadingAnchor];
    leadingAnchor2 = [centerContainerView leadingAnchor];
    v14 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v29[2] = v14;
    shuttleBar8 = [(RCRecordingView *)self shuttleBar];
    trailingAnchor = [shuttleBar8 trailingAnchor];
    trailingAnchor2 = [centerContainerView trailingAnchor];
    v18 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v29[3] = v18;
    v19 = [NSArray arrayWithObjects:v29 count:4];
    [NSLayoutConstraint activateConstraints:v19];

    [shuttleBar3 setHidden:0];
  }
}

- (void)prepareForPresent:(BOOL)present
{
  [(RCRecordingView *)self setDidCompletePresent:0];
  v9 = +[RCRecorderStyleProvider sharedStyleProvider];
  if ([v9 animatesRecordingCardPresentation])
  {
    [(RCRecordingView *)self updateTopBottomSpacersForPresent];
    if (!present)
    {
      [(RCRecordingView *)self _dimRecordingDescriptionView:1 animated:0];
    }
  }

  viewDelegate = [(RCRecordingView *)self viewDelegate];
  recordingCardNavigationItem = [viewDelegate recordingCardNavigationItem];
  editingToolbarProvider = [(RCRecordingView *)self editingToolbarProvider];
  [editingToolbarProvider setNavigationItem:recordingCardNavigationItem];

  [(RCRecordingView *)self _updateMoreButtonMenu];
  recordButtonRepository = [(RCRecordingView *)self recordButtonRepository];
  [recordButtonRepository setAnimationsAreDisabled:1];
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
  recordButton = [(RCRecordingView *)self recordButton];
  UIAccessibilityPostNotification(v3, recordButton);

  recordButtonRepository = [(RCRecordingView *)self recordButtonRepository];
  [recordButtonRepository setAnimationsAreDisabled:0];
}

- (void)prepareForDismiss
{
  [(RCRecordingView *)self setDidCompletePresent:0];
  v4 = +[RCRecorderStyleProvider sharedStyleProvider];
  if ([v4 animatesRecordingCardPresentation])
  {
    [(RCRecordingView *)self updateTopBottomSpacersForDismiss];
  }

  recordButtonRepository = [(RCRecordingView *)self recordButtonRepository];
  [recordButtonRepository setAnimationsAreDisabled:1];
}

- (void)cleanupAfterDismiss
{
  [(RCRecordingView *)self setDidCompletePresent:0];
  [(RCRecordingView *)self setRecordingViewState:0];
  v3 = +[RCRecorderStyleProvider sharedStyleProvider];
  animatesRecordingCardPresentation = [v3 animatesRecordingCardPresentation];

  if (animatesRecordingCardPresentation)
  {
    [(RCRecordingView *)self resetTopBottomSpacers];
  }

  recordButtonRepository = [(RCRecordingView *)self recordButtonRepository];
  [recordButtonRepository setAnimationsAreDisabled:0];

  LODWORD(recordButtonRepository) = UIAccessibilityLayoutChangedNotification;
  recordButton = [(RCRecordingView *)self recordButton];
  UIAccessibilityPostNotification(recordButtonRepository, recordButton);
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

- (void)updateForRecordingEnd:(BOOL)end
{
  displayStyle = [(RCRecordingView *)self displayStyle];
  dismissalDisplayStyle = [(RCRecordingView *)self dismissalDisplayStyle];
  if (displayStyle == 3 || end)
  {
    if (displayStyle != dismissalDisplayStyle)
    {

      [(RCRecordingView *)self setRecordingViewState:5];
    }
  }

  else
  {
    [(RCRecordingView *)self setDisplayStyle:dismissalDisplayStyle];
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
  window = [(RCRecordingView *)self window];
  if (!window || [(RCRecordingView *)self isSyncingViewsToState])
  {
    goto LABEL_5;
  }

  [(RCRecordingView *)self previousViewHeight];
  v7 = v6;

  if (v7 != v4)
  {
    window = [(RCRecordingView *)self cardPresentationDelegate];
    [window recordingView:self didUpdateViewHeight:v4];
LABEL_5:
  }

  [(RCRecordingView *)self _classSpecificLayout];
  [(RCRecordingView *)self setPreviousViewHeight:v4];
}

- (void)cancelTextEditing
{
  textFieldBeingEdited = [(RCRecordingView *)self textFieldBeingEdited];
  [textFieldBeingEdited resignFirstResponder];
}

- (void)updateTrackState:(unint64_t)state
{
  recordButtonRepository = [(RCRecordingView *)self recordButtonRepository];
  [recordButtonRepository setTrackState:state];

  transcriptionButton = [(RCRecordingView *)self transcriptionButton];
  [transcriptionButton setEnabled:state != 2];
}

- (void)toggleTranscriptView:(id)view
{
  viewCopy = view;
  viewDelegate = [(RCRecordingView *)self viewDelegate];
  [viewDelegate performControlsAction:42 position:viewCopy source:0.0];
}

- (void)deviceTranscriptionSupportDidChange:(BOOL)change
{
  if ([(RCRecordingView *)self didSetupSubviews])
  {
    [(RCRecordingView *)self _updateMoreButtonMenu];

    [(RCRecordingView *)self _updateTranscriptionButtonVisibility];
  }
}

- (void)setSaveRecordingAction:(id)action
{
  actionCopy = action;
  v5 = [_TtC10VoiceMemos22RCSaveAsNewMenuFactory saveRecordingActionWithActionHandler:self];
  [actionCopy addAction:v5 forControlEvents:64];
}

- (void)showAlertForSaveAsNew:(id)new
{
  newCopy = new;
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
  v15 = newCopy;
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

- (void)assignActionOnDoneButton:(id)button
{
  buttonCopy = button;
  [(RCRecordingView *)self resetDoneButtonSaveAction:buttonCopy];
  if ([(RCRecordingView *)self shouldSaveAsNew])
  {
    v5 = +[RCRecorderStyleProvider sharedStyleProvider];
    presentsSaveAsNewAlert = [v5 presentsSaveAsNewAlert];

    if (presentsSaveAsNewAlert)
    {
      v11 = _NSConcreteStackBlock;
      v12 = 3221225472;
      v13 = sub_100092BC0;
      v14 = &unk_10028BE88;
      selfCopy = self;
      v7 = buttonCopy;
      v16 = v7;
      v8 = [UIAction actionWithHandler:&v11];
      [v7 addAction:v8 forControlEvents:{64, v11, v12, v13, v14, selfCopy}];
    }

    else
    {
      menu = [buttonCopy menu];

      if (!menu)
      {
        v10 = [_TtC10VoiceMemos22RCSaveAsNewMenuFactory createMenuWithAutomaticallyPause:1 actionHandler:self];
        [buttonCopy setMenu:v10];
        [buttonCopy setShowsMenuAsPrimaryAction:1];
      }
    }
  }

  else
  {
    [buttonCopy setMenu:0];
    [buttonCopy setShowsMenuAsPrimaryAction:0];
    [(RCRecordingView *)self setSaveRecordingAction:buttonCopy];
  }
}

- (void)cancelButtonTapped
{
  viewDelegate = [(RCRecordingView *)self viewDelegate];
  cancelButton = [(RCRecordingView *)self cancelButton];
  [viewDelegate performControlsAction:26 position:cancelButton source:0.0];
}

- (void)_handleTrimToSelection
{
  viewDelegate = [(RCRecordingView *)self viewDelegate];
  deleteSelectionButton = [(RCRecordingView *)self deleteSelectionButton];
  [viewDelegate performControlsAction:31 position:deleteSelectionButton source:0.0];
}

- (void)_handleDeleteSelection
{
  viewDelegate = [(RCRecordingView *)self viewDelegate];
  deleteSelectionButton = [(RCRecordingView *)self deleteSelectionButton];
  [viewDelegate performControlsAction:32 position:deleteSelectionButton source:0.0];
}

- (void)_handleTapToFullscreen:(id)fullscreen
{
  fullscreenCopy = fullscreen;
  if (-[RCRecordingView displayStyle](self, "displayStyle") == 2 && [fullscreenCopy state] == 3)
  {
    [(RCRecordingView *)self _switchToFullScreen];
  }
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  touchCopy = touch;
  if ([(RCRecordingView *)self _stateSupportsDragGesture])
  {
    v6 = ![(RCRecordingView *)self _touchIsInExcludedView:touchCopy];
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (BOOL)_touchIsInExcludedView:(id)view
{
  viewCopy = view;
  v5 = objc_opt_new();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  dragGesturePassthroughSpecs = [(RCRecordingView *)self dragGesturePassthroughSpecs];
  v7 = [dragGesturePassthroughSpecs countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(dragGesturePassthroughSpecs);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        topLevelView = [v11 topLevelView];
        -[RCRecordingView _addSubviewsOfView:includingTopLevelView:toMutableArray:](self, "_addSubviewsOfView:includingTopLevelView:toMutableArray:", topLevelView, [v11 includeTopLevelView], v5);
      }

      v8 = [dragGesturePassthroughSpecs countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  [viewCopy locationInView:self];
  v13 = [(RCRecordingView *)self hitTest:0 withEvent:?];
  v14 = [v5 containsObject:v13];

  return v14;
}

- (void)_addSubviewsOfView:(id)view includingTopLevelView:(BOOL)levelView toMutableArray:(id)array
{
  levelViewCopy = levelView;
  viewCopy = view;
  arrayCopy = array;
  v10 = arrayCopy;
  if (levelViewCopy)
  {
    [arrayCopy addObject:viewCopy];
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  subviews = [viewCopy subviews];
  v12 = [subviews countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(subviews);
        }

        v16 = *(*(&v17 + 1) + 8 * i);
        [v10 addObject:v16];
        [(RCRecordingView *)self _addSubviewsOfView:v16 includingTopLevelView:0 toMutableArray:v10];
      }

      v13 = [subviews countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v13);
  }
}

- (void)toggleFullCompact
{
  v3 = +[RCRecorderStyleProvider sharedStyleProvider];
  supportsCompactRecordingCard = [v3 supportsCompactRecordingCard];

  if (supportsCompactRecordingCard)
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

- (void)_dimRecordingDescriptionView:(BOOL)view animated:(BOOL)animated
{
  v6 = 0.0;
  if (animated)
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
  viewCopy = view;
  [UIView animateWithDuration:v9 animations:v6];
}

- (void)updateTopBottomSpacersForDismiss
{
  topSpacerViewHeightConstraint = [(RCRecordingView *)self topSpacerViewHeightConstraint];
  LODWORD(v4) = 1132003328;
  [topSpacerViewHeightConstraint setPriority:v4];

  topSpacerView = [(RCRecordingView *)self topSpacerView];
  LODWORD(v6) = 1132068864;
  [topSpacerView setContentHuggingPriority:1 forAxis:v6];

  topSpacerView2 = [(RCRecordingView *)self topSpacerView];
  LODWORD(v8) = 1132068864;
  [topSpacerView2 setContentCompressionResistancePriority:1 forAxis:v8];

  bottomSpacerViewHeightConstraint = [(RCRecordingView *)self bottomSpacerViewHeightConstraint];
  LODWORD(v9) = 1148846080;
  [bottomSpacerViewHeightConstraint setPriority:v9];
}

- (void)updateTopBottomSpacersForPresent
{
  bottomSpacerViewHeightConstraint = [(RCRecordingView *)self bottomSpacerViewHeightConstraint];
  LODWORD(v4) = 1132003328;
  [bottomSpacerViewHeightConstraint setPriority:v4];

  bottomSpacerView = [(RCRecordingView *)self bottomSpacerView];
  LODWORD(v6) = 1132068864;
  [bottomSpacerView setContentHuggingPriority:1 forAxis:v6];

  bottomSpacerView2 = [(RCRecordingView *)self bottomSpacerView];
  LODWORD(v8) = 1132068864;
  [bottomSpacerView2 setContentCompressionResistancePriority:1 forAxis:v8];

  topSpacerViewHeightConstraint = [(RCRecordingView *)self topSpacerViewHeightConstraint];
  LODWORD(v9) = 1148846080;
  [topSpacerViewHeightConstraint setPriority:v9];
}

- (void)resetTopBottomSpacers
{
  bottomSpacerViewHeightConstraint = [(RCRecordingView *)self bottomSpacerViewHeightConstraint];
  LODWORD(v4) = 1148846080;
  [bottomSpacerViewHeightConstraint setPriority:v4];

  topSpacerViewHeightConstraint = [(RCRecordingView *)self topSpacerViewHeightConstraint];
  LODWORD(v6) = 1148846080;
  [topSpacerViewHeightConstraint setPriority:v6];

  [(RCRecordingView *)self _updateVerticalContentHuggingAndCompressionResistancePriorities];
}

- (void)performControlsAction:(int64_t)action position:(double)position source:(id)source
{
  sourceCopy = source;
  viewDelegate = [(RCRecordingView *)self viewDelegate];
  [(RCRecordingView *)self currentTime];
  [viewDelegate performControlsAction:action position:sourceCopy source:?];
}

- (void)handleUpdateTitle:(id)title
{
  titleCopy = title;
  viewDelegate = [(RCRecordingView *)self viewDelegate];
  [viewDelegate performRenameWithNewTitle:titleCopy];
}

- (void)didBeginEditingInTextField:(id)field
{
  fieldCopy = field;
  if ([(RCRecordingView *)self displayStyle]== 2)
  {
    [(RCRecordingView *)self toggleFullCompact];
  }

  [(RCRecordingView *)self setTextFieldBeingEdited:fieldCopy];
}

- (BOOL)shouldSelectFullTitleAtBeginEditing
{
  viewDelegate = [(RCRecordingView *)self viewDelegate];
  recordingTitleHasBeenEdited = [viewDelegate recordingTitleHasBeenEdited];

  return recordingTitleHasBeenEdited ^ 1;
}

- (void)_updateAccessibilityElements
{
  descriptionView = [(RCRecordingView *)self descriptionView];
  v19[0] = descriptionView;
  centerContentContainerView = [(RCRecordingView *)self centerContentContainerView];
  v19[1] = centerContentContainerView;
  overviewWaveformContainerView = [(RCRecordingView *)self overviewWaveformContainerView];
  v19[2] = overviewWaveformContainerView;
  currentTimeLabel = [(RCRecordingView *)self currentTimeLabel];
  v19[3] = currentTimeLabel;
  trimToSelectionButton = [(RCRecordingView *)self trimToSelectionButton];
  v19[4] = trimToSelectionButton;
  deleteSelectionButton = [(RCRecordingView *)self deleteSelectionButton];
  v19[5] = deleteSelectionButton;
  v9 = [NSArray arrayWithObjects:v19 count:6];
  v10 = [NSMutableArray arrayWithArray:v9];

  recordButton = [(RCRecordingView *)self recordButton];

  if (recordButton)
  {
    recordButton2 = [(RCRecordingView *)self recordButton];
    [v10 addObject:recordButton2];
  }

  shuttleBar = [(RCRecordingView *)self shuttleBar];

  if (shuttleBar)
  {
    shuttleBar2 = [(RCRecordingView *)self shuttleBar];
    [v10 addObject:shuttleBar2];
  }

  v15 = +[RCRecorderStyleProvider sharedStyleProvider];
  hostsCancelButtonInBottomSection = [v15 hostsCancelButtonInBottomSection];

  if (hostsCancelButtonInBottomSection)
  {
    cancelButton = [(RCRecordingView *)self cancelButton];
    [v10 addObject:cancelButton];
  }

  doneButton = [(RCRecordingView *)self doneButton];
  [v10 addObject:doneButton];

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
  shuttleBar = [(RCRecordingView *)self shuttleBar];
  [(RCRecordingView *)self performControlsAction:v3 position:shuttleBar source:0.0];

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