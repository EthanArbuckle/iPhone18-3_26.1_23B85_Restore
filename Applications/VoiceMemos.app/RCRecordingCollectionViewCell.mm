@interface RCRecordingCollectionViewCell
- (BOOL)_hasCustomBackgroundColor;
- (BOOL)_shouldShowProgressOverlay;
- (BOOL)accessibilityPerformMagicTap;
- (BOOL)canBecomeFocused;
- (BOOL)isAccessibilityElement;
- (BOOL)isEditingTitle;
- (BOOL)wasManuallyRenamed;
- (CGRect)containerView:(id)a3 layoutFrameForArrangedSubview:(id)a4 withProposedFrame:(CGRect)result;
- (NSDate)creationDate;
- (NSString)recordingTitle;
- (RCRecordingCollectionViewCell)initWithFrame:(CGRect)a3;
- (RCRecordingsCollectionViewCellDelegate)cellDelegate;
- (UITextField)textFieldBeingEdited;
- (float)editingProgress;
- (id)_backgroundConfigurationForState:(id)a3;
- (id)_createCellAccessories;
- (id)_createProgressOverlay;
- (id)_customBackgroundColor;
- (id)_labelConfigurationForState:(id)a3;
- (id)_progressOverlayAccessory;
- (id)accessibilityCustomActions;
- (id)accessibilityElements;
- (id)accessibilityLabel;
- (id)accessibilityUserInputLabels;
- (id)accessibilityValue;
- (id)preferredLayoutAttributesFittingAttributes:(id)a3;
- (unint64_t)accessibilityTraits;
- (void)_collapseVertically;
- (void)_createShuttleBarIfNeeded;
- (void)_expandVertically;
- (void)_styleView;
- (void)_updateAfterSelectionChangeToSelected:(BOOL)a3;
- (void)_updateUIToVerticallyExpandedState:(BOOL)a3;
- (void)_verifyVerticallyExpandedState;
- (void)beginEditingTitle;
- (void)didBeginEditingInTextField:(id)a3;
- (void)didEndEditingInTextField;
- (void)handleUpdateTitle:(id)a3;
- (void)layoutSubviews;
- (void)performControlsAction:(int64_t)a3 position:(double)a4 source:(id)a5;
- (void)prepareForReuse;
- (void)resignFirstResponderForTitleEditing;
- (void)restyle;
- (void)setCreationDate:(id)a3;
- (void)setCurrentTime:(double)a3;
- (void)setDescriptionHeight:(double)a3;
- (void)setEditingInFlight:(BOOL)a3;
- (void)setEditingProgress:(float)a3;
- (void)setHasMultipleTracks:(BOOL)a3;
- (void)setHasTranscription:(BOOL)a3;
- (void)setIsSpatialRecording:(BOOL)a3;
- (void)setPlayControlState:(int64_t)a3;
- (void)setRecordingDuration:(double)a3;
- (void)setRecordingTitle:(id)a3;
- (void)setRepresentsDownloadingFile:(BOOL)a3;
- (void)setSelected:(BOOL)a3;
- (void)setShuttleBarHeight:(double)a3;
- (void)setUUID:(id)a3;
- (void)setVerticallyExpanded:(BOOL)a3;
- (void)setWasManuallyRenamed:(BOOL)a3;
- (void)updateAccessories;
- (void)updateConfigurationUsingState:(id)a3;
@end

@implementation RCRecordingCollectionViewCell

- (void)layoutSubviews
{
  v13.receiver = self;
  v13.super_class = RCRecordingCollectionViewCell;
  [(RCRecordingCollectionViewCell *)&v13 layoutSubviews];
  v3 = [(RCRecordingCollectionViewCell *)self contentView];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [(NUIContainerStackView *)self->_stackView setFrame:v5, v7, v9, v11];
  [(NUIContainerStackView *)self->_stackView effectiveLayoutSizeFittingSize:v9, 0.0];
  [(NUIContainerStackView *)self->_stackView setFrame:v5, v7, v9, v12];
}

- (id)_createCellAccessories
{
  v3 = objc_alloc_init(NSMutableArray);
  v4 = objc_alloc_init(UICellAccessoryMultiselect);
  [v4 setDisplayedState:1];
  [v3 addObject:v4];
  if ([(RCRecordingCollectionViewCell *)self _shouldShowProgressOverlay])
  {
    v5 = [(RCRecordingCollectionViewCell *)self _progressOverlayAccessory];
    [v3 addObject:v5];
  }

  else
  {
    [(RCRecordingCollectionViewCell *)self setProgressOverlay:0];
  }

  return v3;
}

- (BOOL)_shouldShowProgressOverlay
{
  v3 = +[RCRecorderStyleProvider sharedStyleProvider];
  if ([v3 showsProgressInRecordingCollectionViewCell])
  {
    editingInFlight = self->_editingInFlight;
  }

  else
  {
    editingInFlight = 0;
  }

  return editingInFlight;
}

- (void)_styleView
{
  v6 = +[RCRecorderStyleProvider sharedStyleProvider];
  [v6 libraryCellDescriptionHeight];
  self->_descriptionHeight = v3;
  [v6 libraryCellShuttleBarHeight];
  self->_shuttleBarHeight = v4;
  [v6 libraryCellDescriptionViewShuttleBarPadding];
  self->_descriptionViewShuttleBarPadding = v5;
}

- (BOOL)_hasCustomBackgroundColor
{
  v2 = [(RCRecordingCollectionViewCell *)self _customBackgroundColor];
  v3 = v2 != 0;

  return v3;
}

- (id)_customBackgroundColor
{
  v2 = +[RCRecorderStyleProvider sharedStyleProvider];
  v3 = [v2 recordingCollectionViewCellCustomBackgroundColor];

  return v3;
}

- (void)_verifyVerticallyExpandedState
{
  v5 = +[RCRecorderStyleProvider sharedStyleProvider];
  if (([v5 expandsRecordingsCollectionViewItemOnSelection] & 1) != 0 && -[RCRecordingCollectionViewCell isSelected](self, "isSelected"))
  {
    v3 = [(RCRecordingCollectionViewCell *)self configurationState];
    if ([v3 isEditing])
    {
      v4 = 0;
    }

    else
    {
      v4 = [(RCRecordingCollectionViewCell *)self _shouldShowProgressOverlay]^ 1;
    }

    [(RCRecordingCollectionViewCell *)self setVerticallyExpanded:v4];
  }

  else
  {
    [(RCRecordingCollectionViewCell *)self setVerticallyExpanded:0];
  }
}

- (void)setDescriptionHeight:(double)a3
{
  self->_descriptionHeight = a3;
  v4 = [(RCRecordingCollectionViewCell *)self recordingDescriptionView];
  [v4 setIntrinsicHeight:a3];
}

- (void)setShuttleBarHeight:(double)a3
{
  self->_shuttleBarHeight = a3;
  v4 = [(RCRecordingCollectionViewCell *)self shuttleBar];
  [v4 setIntrinsicHeight:a3];
}

- (void)setRecordingTitle:(id)a3
{
  v4 = a3;
  v6 = [(RCRecordingCollectionViewCell *)self recordingDescriptionView];
  [v6 setRecordingTitle:v4];

  v5 = [(RCRecordingCollectionViewCell *)self UUID];
  [v6 setUUID:v5];
}

- (NSString)recordingTitle
{
  v2 = [(RCRecordingCollectionViewCell *)self recordingDescriptionView];
  v3 = [v2 recordingTitle];

  return v3;
}

- (void)setUUID:(id)a3
{
  v4 = a3;
  v5 = [v4 copy];
  UUID = self->_UUID;
  self->_UUID = v5;

  v7 = [(RCRecordingCollectionViewCell *)self recordingDescriptionView];
  [v7 setUUID:v4];
}

- (void)setRecordingDuration:(double)a3
{
  self->_recordingDuration = a3;
  v5 = round(a3);
  v6 = [(RCRecordingCollectionViewCell *)self recordingDescriptionView];
  [v6 setRecordingDuration:0 withHiddenLabel:1 isDurationLabelAX:v5];

  v7 = [(RCRecordingCollectionViewCell *)self shuttleBar];
  [v7 setDuration:a3];
}

- (void)setCurrentTime:(double)a3
{
  self->_currentTime = a3;
  v4 = [(RCRecordingCollectionViewCell *)self shuttleBar];
  [v4 setCurrentTime:a3];
}

- (void)setCreationDate:(id)a3
{
  v4 = a3;
  v5 = [(RCRecordingCollectionViewCell *)self recordingDescriptionView];
  [v5 setCreationDate:v4];
}

- (NSDate)creationDate
{
  v2 = [(RCRecordingCollectionViewCell *)self recordingDescriptionView];
  v3 = [v2 creationDate];

  return v3;
}

- (void)setRepresentsDownloadingFile:(BOOL)a3
{
  v3 = a3;
  self->_representsDownloadingFile = a3;
  v4 = [(RCRecordingCollectionViewCell *)self recordingDescriptionView];
  [v4 setShowDownloading:v3];
}

- (BOOL)wasManuallyRenamed
{
  v2 = [(RCRecordingCollectionViewCell *)self recordingDescriptionView];
  v3 = [v2 wasManuallyRenamed];

  return v3;
}

- (void)setWasManuallyRenamed:(BOOL)a3
{
  v3 = a3;
  v4 = [(RCRecordingCollectionViewCell *)self recordingDescriptionView];
  [v4 setWasManuallyRenamed:v3];
}

- (void)setHasTranscription:(BOOL)a3
{
  v3 = a3;
  self->_hasTranscription = a3;
  v4 = [(RCRecordingCollectionViewCell *)self recordingDescriptionView];
  [v4 setDisplayTranscriptAvailableIcon:v3];
}

- (void)setHasMultipleTracks:(BOOL)a3
{
  v3 = a3;
  self->_hasMultipleTracks = a3;
  v4 = [(RCRecordingCollectionViewCell *)self recordingDescriptionView];
  [v4 setHasMultipleTracks:v3];
}

- (void)setIsSpatialRecording:(BOOL)a3
{
  v3 = a3;
  self->_isSpatialRecording = a3;
  v4 = [(RCRecordingCollectionViewCell *)self recordingDescriptionView];
  [v4 setIsSpatialRecording:v3];
}

- (RCRecordingCollectionViewCell)initWithFrame:(CGRect)a3
{
  v17.receiver = self;
  v17.super_class = RCRecordingCollectionViewCell;
  v3 = [(RCRecordingCollectionViewCell *)&v17 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [RCRecordingDescriptionView descriptionViewWithStyle:1];
    recordingDescriptionView = v3->_recordingDescriptionView;
    v3->_recordingDescriptionView = v4;

    [(RCRecordingDescriptionView *)v3->_recordingDescriptionView setRecordingDescriptionViewDelegate:v3];
    [(RCRecordingDescriptionView *)v3->_recordingDescriptionView setPresentedControl:1];
    [(RCRecordingDescriptionView *)v3->_recordingDescriptionView setActionDelegate:v3];
    v6 = [NUIContainerStackView alloc];
    v18 = v3->_recordingDescriptionView;
    v7 = [NSArray arrayWithObjects:&v18 count:1];
    v8 = [v6 initWithArrangedSubviews:v7];
    stackView = v3->_stackView;
    v3->_stackView = v8;

    [(NUIContainerStackView *)v3->_stackView setLayoutMarginsRelativeArrangement:1];
    [(NUIContainerStackView *)v3->_stackView setPreservesSuperviewLayoutMargins:1];
    [(NUIContainerStackView *)v3->_stackView setAxis:1];
    [(NUIContainerStackView *)v3->_stackView setClipsToBounds:1];
    [(RCRecordingCollectionViewCell *)v3 descriptionViewShuttleBarPadding];
    [(NUIContainerStackView *)v3->_stackView setSpacing:?];
    v10 = +[RCRecorderStyleProvider sharedStyleProvider];
    [v10 recordingCellStackViewVerticalLayoutMargin];
    v12 = v11;

    [(NUIContainerStackView *)v3->_stackView setDirectionalLayoutMargins:v12, 0.0, v12, 0.0];
    v13 = [(RCRecordingCollectionViewCell *)v3 contentView];
    [v13 addSubview:v3->_stackView];

    v14 = [(RCRecordingCollectionViewCell *)v3 contentView];
    [v14 setClipsToBounds:1];

    v15 = [(RCRecordingCollectionViewCell *)v3 _createCellAccessories];
    [(RCRecordingCollectionViewCell *)v3 setAccessories:v15];

    [(RCRecordingCollectionViewCell *)v3 _styleView];
    v3->_playControlState = 0;
  }

  return v3;
}

- (void)setPlayControlState:(int64_t)a3
{
  self->_playControlState = a3;
  v4 = [(RCRecordingCollectionViewCell *)self shuttleBar];
  [v4 setPlayControlState:a3];
}

- (void)_createShuttleBarIfNeeded
{
  if (!self->_shuttleBar)
  {
    v3 = [[RCShuttleBar alloc] initWithShuttleBarStyle:0];
    shuttleBar = self->_shuttleBar;
    self->_shuttleBar = v3;

    [(RCShuttleBar *)self->_shuttleBar setActionDelegate:self];
    [(RCShuttleBar *)self->_shuttleBar setPresentedControlsOptions:3];
    v7 = objc_opt_new();
    v5 = [v7 transportControlsColorForLibrary];
    [(RCShuttleBar *)self->_shuttleBar setControlsColor:v5];

    v6 = [v7 secondaryTransportControlsColorForLibrary];
    [(RCShuttleBar *)self->_shuttleBar setSecondaryControlsColor:v6];

    [(RCShuttleBar *)self->_shuttleBar setIntrinsicHeight:self->_shuttleBarHeight];
    [(RCShuttleBar *)self->_shuttleBar setHidden:1];
    [(NUIContainerStackView *)self->_stackView addArrangedSubview:self->_shuttleBar];
    [(RCRecordingCollectionViewCell *)self recordingDuration];
    [(RCShuttleBar *)self->_shuttleBar setDuration:?];
    [(RCRecordingCollectionViewCell *)self currentTime];
    [(RCShuttleBar *)self->_shuttleBar setCurrentTime:?];
    [(NUIContainerStackView *)self->_stackView setDelegate:self];
    [(RCShuttleBar *)self->_shuttleBar setPlayControlState:[(RCRecordingCollectionViewCell *)self playControlState]];
  }
}

- (CGRect)containerView:(id)a3 layoutFrameForArrangedSubview:(id)a4 withProposedFrame:(CGRect)result
{
  if (self->_shuttleBar == a4)
  {
    result.origin.y = result.origin.y + 8.0;
  }

  return result;
}

- (void)updateAccessories
{
  v3 = [(RCRecordingCollectionViewCell *)self _createCellAccessories];
  [(RCRecordingCollectionViewCell *)self setAccessories:v3];
}

- (id)_progressOverlayAccessory
{
  v3 = [(RCRecordingCollectionViewCell *)self _createProgressOverlay];
  [(RCRecordingCollectionViewCell *)self setProgressOverlay:v3];
  v4 = [[UICellAccessoryCustomView alloc] initWithCustomView:v3 placement:1];
  [v4 setDisplayedState:0];

  return v4;
}

- (id)_createProgressOverlay
{
  v2 = +[RCRecorderStyleProvider sharedStyleProvider];
  v3 = objc_opt_new();
  v4 = [v2 progressViewBackgroundColorEditingCard];
  [v3 setDimmingBackgroundColor:v4];

  [v3 setStyle:0];
  [v2 editingProgressIndicatorDiameterCell];
  [v3 setFrame:{0.0, 0.0, v5, v5}];

  return v3;
}

- (void)updateConfigurationUsingState:(id)a3
{
  v11 = a3;
  v4 = [(RCRecordingCollectionViewCell *)self _backgroundConfigurationForState:v11];
  [(RCRecordingCollectionViewCell *)self setBackgroundConfiguration:v4];

  v5 = [(RCRecordingCollectionViewCell *)self _labelConfigurationForState:v11];
  v6 = [(RCRecordingCollectionViewCell *)self recordingDescriptionView];
  [v6 setLabelConfiguration:v5];

  if ([v11 isEditing])
  {
    v7 = 0;
  }

  else
  {
    v7 = [v11 isSelected];
  }

  v8 = [(RCRecordingCollectionViewCell *)self recordingDescriptionView];
  v9 = [v8 titleEditingAllowed];

  if (v7 != v9)
  {
    v10 = [(RCRecordingCollectionViewCell *)self recordingDescriptionView];
    [v10 setTitleEditingAllowed:v7];
  }

  [(RCRecordingCollectionViewCell *)self _verifyVerticallyExpandedState];
}

- (id)_backgroundConfigurationForState:(id)a3
{
  v4 = a3;
  v5 = [(RCRecordingCollectionViewCell *)self defaultBackgroundConfiguration];
  v6 = [v5 updatedConfigurationForState:v4];

  if ([(RCRecordingCollectionViewCell *)self _hasCustomBackgroundColor])
  {
    v7 = [(RCRecordingCollectionViewCell *)self _customBackgroundColor];
    [v6 setBackgroundColor:v7];
  }

  return v6;
}

- (id)_labelConfigurationForState:(id)a3
{
  v4 = a3;
  if ([(RCRecordingCollectionViewCell *)self _hasCustomBackgroundColor])
  {
    v5 = +[RCRecordingDescriptionViewLabelConfiguration recordingCollectionViewCellConfiguration];
  }

  else
  {
    v6 = [(RCRecordingCollectionViewCell *)self defaultContentConfiguration];
    v7 = [v6 updatedConfigurationForState:v4];

    v8 = [v7 textProperties];
    v5 = +[RCRecordingDescriptionViewLabelConfiguration emptyConfiguration];
    v9 = [v8 color];
    [v5 setRecordingTitleTextColor:v9];

    v10 = [v8 color];
    [v5 setRecordingTitleEditingTintColor:v10];

    v11 = [v8 color];
    v12 = +[RCRecorderStyleProvider sharedStyleProvider];
    [v12 descriptionViewSecondaryLabelAlpha];
    v13 = [v11 colorWithAlphaComponent:?];
    [v5 setSubtitleTextColor:v13];
  }

  return v5;
}

- (void)restyle
{
  [(RCRecordingCollectionViewCell *)self _styleView];
  v3 = [(RCRecordingCollectionViewCell *)self recordingDescriptionView];
  [v3 restyle];

  v4 = [(RCRecordingCollectionViewCell *)self progressOverlay];
  [v4 restyle];

  if ([(RCRecordingCollectionViewCell *)self isSelected])
  {
    [(RCRecordingCollectionViewCell *)self _updateAfterSelectionChangeToSelected:1];
  }

  [(RCRecordingCollectionViewCell *)self setEditingInFlight:[(RCRecordingCollectionViewCell *)self editingInFlight]];
  [(RCRecordingCollectionViewCell *)self _verifyVerticallyExpandedState];

  [(RCRecordingCollectionViewCell *)self setNeedsUpdateConfiguration];
}

- (void)prepareForReuse
{
  [(RCRecordingCollectionViewCell *)self setUUID:0];
  [(RCRecordingCollectionViewCell *)self setVerticallyExpanded:0];
  v3.receiver = self;
  v3.super_class = RCRecordingCollectionViewCell;
  [(RCRecordingCollectionViewCell *)&v3 prepareForReuse];
}

- (void)setSelected:(BOOL)a3
{
  v3 = a3;
  if (!a3)
  {
    v5 = [(RCRecordingCollectionViewCell *)self shuttleBar];
    [v5 cancelScrubbing];
  }

  v9.receiver = self;
  v9.super_class = RCRecordingCollectionViewCell;
  [(RCRecordingCollectionViewCell *)&v9 setSelected:v3];
  v6 = [(RCRecordingCollectionViewCell *)self recordingDescriptionView];
  if (v3)
  {
    v7 = [(RCRecordingCollectionViewCell *)self configurationState];
    v8 = [v7 isEditing] ^ 1;
  }

  else
  {
    v8 = 0;
  }

  [v6 setTitleEditingAllowed:v8];
  [v6 setUserInteractionEnabled:v3];
  [(RCRecordingCollectionViewCell *)self _updateAfterSelectionChangeToSelected:v3];
}

- (void)_updateAfterSelectionChangeToSelected:(BOOL)a3
{
  v9 = [(RCRecordingCollectionViewCell *)self progressOverlay];
  if (v9)
  {
    v4 = +[RCRecorderStyleProvider sharedStyleProvider];
    v5 = [v4 expandsRecordingsCollectionViewItemOnSelection];

    if ((v5 & 1) == 0)
    {
      v6 = +[RCRecorderStyleProvider sharedStyleProvider];
      v7 = v6;
      if (a3)
      {
        +[UIColor secondaryLabelColor];
      }

      else
      {
        [v6 recordingCollectionViewCellTextColor];
      }
      v8 = ;
      [v9 setProgressIndicatorColor:v8];
    }
  }
}

- (void)setVerticallyExpanded:(BOOL)a3
{
  if (self->_verticallyExpanded != a3)
  {
    self->_verticallyExpanded = a3;
    [(RCRecordingCollectionViewCell *)self _updateUIToVerticallyExpandedState:?];
  }
}

- (void)_updateUIToVerticallyExpandedState:(BOOL)a3
{
  if (a3)
  {
    [(RCRecordingCollectionViewCell *)self _expandVertically];
  }

  else
  {
    [(RCRecordingCollectionViewCell *)self _collapseVertically];
  }

  [(RCRecordingCollectionViewCell *)self invalidateIntrinsicContentSize];
}

- (void)_expandVertically
{
  [(RCRecordingCollectionViewCell *)self _createShuttleBarIfNeeded];
  [(RCShuttleBar *)self->_shuttleBar setAlpha:0.0];
  [(RCShuttleBar *)self->_shuttleBar setHidden:0];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10004732C;
  v7[3] = &unk_10028A3B8;
  v7[4] = self;
  [UIView animateWithDuration:v7 animations:0.5];
  v3 = [(RCRecordingCollectionViewCell *)self recordingDescriptionView];
  [v3 setTitleFieldAccessible:1];

  LODWORD(v3) = [(RCRecordingCollectionViewCell *)self isRecentlyDeleted];
  v4 = [(RCRecordingCollectionViewCell *)self recordingDescriptionView];
  v5 = v4;
  if (v3)
  {
    v6 = 0;
  }

  else
  {
    v6 = 2;
  }

  [v4 setPresentedControl:v6];
}

- (void)_collapseVertically
{
  [(RCShuttleBar *)self->_shuttleBar setHidden:1];
  v3 = [(RCRecordingCollectionViewCell *)self recordingDescriptionView];
  [v3 setTitleFieldAccessible:0];

  v4 = [(RCRecordingCollectionViewCell *)self recordingDescriptionView];
  [v4 setPresentedControl:1];
}

- (void)setEditingInFlight:(BOOL)a3
{
  if (self->_editingInFlight != a3)
  {
    v4 = a3;
    self->_editingInFlight = a3;
    v6 = [(RCRecordingCollectionViewCell *)self recordingDescriptionView];
    [v6 setShowSaving:v4];

    [(RCRecordingCollectionViewCell *)self updateAccessories];

    [(RCRecordingCollectionViewCell *)self _verifyVerticallyExpandedState];
  }
}

- (void)setEditingProgress:(float)a3
{
  v5 = [(RCRecordingCollectionViewCell *)self progressOverlay];
  *&v4 = a3;
  [v5 setProgress:v4];
}

- (float)editingProgress
{
  v2 = [(RCRecordingCollectionViewCell *)self progressOverlay];
  [v2 progress];
  v4 = v3;

  return v4;
}

- (void)performControlsAction:(int64_t)a3 position:(double)a4 source:(id)a5
{
  v8 = a5;
  v10 = [(RCRecordingCollectionViewCell *)self cellDelegate];
  v9 = [(RCRecordingCollectionViewCell *)self UUID];
  [v10 performAction:a3 atPosition:v9 forCellWithUUID:v8 source:a4];
}

- (void)handleUpdateTitle:(id)a3
{
  v4 = a3;
  v6 = [(RCRecordingCollectionViewCell *)self cellDelegate];
  v5 = [(RCRecordingCollectionViewCell *)self UUID];
  [v6 performRenameWithNewTitle:v4 forCellWithUUID:v5];
}

- (void)didBeginEditingInTextField:(id)a3
{
  v5 = a3;
  v4 = [(RCRecordingCollectionViewCell *)self cellDelegate];
  [v4 didBeginEditingTitle:self];

  [(RCRecordingCollectionViewCell *)self setTextFieldBeingEdited:v5];
}

- (void)didEndEditingInTextField
{
  v3 = [(RCRecordingCollectionViewCell *)self cellDelegate];
  [v3 didEndEditingTitle:self];

  [(RCRecordingCollectionViewCell *)self setTextFieldBeingEdited:0];
}

- (id)preferredLayoutAttributesFittingAttributes:(id)a3
{
  v4 = a3;
  [(RCRecordingCollectionViewCell *)self bounds];
  [(NUIContainerStackView *)self->_stackView effectiveLayoutSizeFittingSize:v5, 0.0];
  v7 = v6;
  v9 = v8;
  [v4 size];
  if (v7 != v11 || v9 != v10)
  {
    v13 = [v4 copy];

    [v13 setSize:{v7, v9}];
    v4 = v13;
  }

  return v4;
}

- (BOOL)canBecomeFocused
{
  if ([(RCRecordingCollectionViewCell *)self representsDownloadingFile])
  {
    return 0;
  }

  v6.receiver = self;
  v6.super_class = RCRecordingCollectionViewCell;
  if (![(RCRecordingCollectionViewCell *)&v6 canBecomeFocused])
  {
    return 0;
  }

  v3 = [(RCRecordingCollectionViewCell *)self textFieldBeingEdited];
  v4 = v3 == 0;

  return v4;
}

- (id)accessibilityLabel
{
  v3 = [(RCRecordingCollectionViewCell *)self recordingTitle];

  if (!v3)
  {
    [(RCRecordingCollectionViewCell *)self setRecordingTitle:&stru_100295BB8];
  }

  v4 = [(RCRecordingCollectionViewCell *)self recordingTitle];
  v5 = [(RCRecordingCollectionViewCell *)self recordingDescriptionView];
  v6 = [v5 axCreationDateString];
  v7 = [NSString stringWithFormat:@"%@, %@", v4, v6];

  if (self->_hasTranscription)
  {
    v8 = [(RCRecordingCollectionViewCell *)self recordingDescriptionView];
    v9 = [v8 axTranscriptAvailableString];
    v10 = [NSString stringWithFormat:@", %@", v9];
    v11 = [v7 stringByAppendingString:v10];

    v7 = v11;
  }

  if (self->_hasMultipleTracks)
  {
    v12 = [(RCRecordingCollectionViewCell *)self recordingDescriptionView];
    v13 = [v12 axMultiTrackIndicatorString];
    v14 = [NSString stringWithFormat:@", %@", v13];
    v15 = [v7 stringByAppendingString:v14];

    v7 = v15;
  }

  v16 = [(RCRecordingCollectionViewCell *)self recordingDescriptionView];
  v17 = [v16 axDurationString];
  v18 = [NSString stringWithFormat:@", %@", v17];
  v19 = [v7 stringByAppendingString:v18];

  return v7;
}

- (id)accessibilityUserInputLabels
{
  v3 = [(RCRecordingCollectionViewCell *)self recordingTitle];

  if (!v3)
  {
    [(RCRecordingCollectionViewCell *)self setRecordingTitle:&stru_100295BB8];
  }

  v4 = [(RCRecordingCollectionViewCell *)self recordingTitle];
  v7 = v4;
  v5 = [NSArray arrayWithObjects:&v7 count:1];

  return v5;
}

- (id)accessibilityValue
{
  [(RCRecordingCollectionViewCell *)self recordingDuration];

  return UIAXTimeStringForDuration();
}

- (BOOL)isAccessibilityElement
{
  v3 = +[RCRecorderStyleProvider sharedStyleProvider];
  if ([v3 expandsRecordingsCollectionViewItemOnSelection])
  {
    v4 = [(RCRecordingCollectionViewCell *)self configurationState];
    v5 = [v4 isEditing];

    if ((v5 & 1) == 0)
    {
      return [(RCRecordingCollectionViewCell *)self isSelected]^ 1;
    }
  }

  else
  {
  }

  return 1;
}

- (id)accessibilityElements
{
  if ([(RCRecordingCollectionViewCell *)self isAccessibilityElement])
  {
    v3 = 0;
  }

  else
  {
    v3 = +[NSMutableArray array];
    v4 = [(RCRecordingCollectionViewCell *)self recordingDescriptionView];
    v5 = [v4 accessibilityElements];
    [v3 addObjectsFromArray:v5];

    v6 = [(RCRecordingCollectionViewCell *)self shuttleBar];
    v7 = [v6 accessibilityElements];
    [v3 addObjectsFromArray:v7];
  }

  v8 = [v3 copy];

  return v8;
}

- (unint64_t)accessibilityTraits
{
  v5.receiver = self;
  v5.super_class = RCRecordingCollectionViewCell;
  v3 = UIAccessibilityTraitButton | [(RCRecordingCollectionViewCell *)&v5 accessibilityTraits];
  if ([(RCRecordingCollectionViewCell *)self isSelected])
  {
    return UIAccessibilityTraitSelected | v3;
  }

  else
  {
    return v3 & ~UIAccessibilityTraitSelected;
  }
}

- (id)accessibilityCustomActions
{
  v10.receiver = self;
  v10.super_class = RCRecordingCollectionViewCell;
  v3 = [(RCRecordingCollectionViewCell *)&v10 accessibilityCustomActions];
  v4 = [NSMutableArray arrayWithArray:v3];

  if ([(RCRecordingCollectionViewCell *)self isSelected])
  {
    v5 = [UIAccessibilityCustomAction alloc];
    v6 = +[NSBundle mainBundle];
    v7 = [v6 localizedStringForKey:@"AX_ACTION_EDIT_TITLE" value:&stru_100295BB8 table:0];
    v8 = [v5 initWithName:v7 target:self selector:"performEditTitleAXAction"];

    [v4 addObject:v8];
  }

  return v4;
}

- (BOOL)isEditingTitle
{
  v2 = [(RCRecordingCollectionViewCell *)self textFieldBeingEdited];
  v3 = v2 != 0;

  return v3;
}

- (void)beginEditingTitle
{
  v2 = [(RCRecordingCollectionViewCell *)self recordingDescriptionView];
  [v2 beginEditingTitle];
}

- (void)resignFirstResponderForTitleEditing
{
  v3 = [(RCRecordingCollectionViewCell *)self textFieldBeingEdited];

  if (v3)
  {
    v4 = [(RCRecordingCollectionViewCell *)self textFieldBeingEdited];
    [v4 resignFirstResponder];
  }
}

- (BOOL)accessibilityPerformMagicTap
{
  if (![(RCRecordingCollectionViewCell *)self isSelected])
  {
    return 0;
  }

  v3 = [(RCRecordingCollectionViewCell *)self shuttleBar];
  v4 = [v3 playControlState];

  if (v4 != 1)
  {
    return 0;
  }

  v5 = 1;
  [(RCRecordingCollectionViewCell *)self performControlsAction:1 position:self source:0.0];
  return v5;
}

- (RCRecordingsCollectionViewCellDelegate)cellDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_cellDelegate);

  return WeakRetained;
}

- (UITextField)textFieldBeingEdited
{
  WeakRetained = objc_loadWeakRetained(&self->_textFieldBeingEdited);

  return WeakRetained;
}

@end