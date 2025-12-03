@interface RCRecordingCollectionViewCell
- (BOOL)_hasCustomBackgroundColor;
- (BOOL)_shouldShowProgressOverlay;
- (BOOL)accessibilityPerformMagicTap;
- (BOOL)canBecomeFocused;
- (BOOL)isAccessibilityElement;
- (BOOL)isEditingTitle;
- (BOOL)wasManuallyRenamed;
- (CGRect)containerView:(id)view layoutFrameForArrangedSubview:(id)subview withProposedFrame:(CGRect)result;
- (NSDate)creationDate;
- (NSString)recordingTitle;
- (RCRecordingCollectionViewCell)initWithFrame:(CGRect)frame;
- (RCRecordingsCollectionViewCellDelegate)cellDelegate;
- (UITextField)textFieldBeingEdited;
- (float)editingProgress;
- (id)_backgroundConfigurationForState:(id)state;
- (id)_createCellAccessories;
- (id)_createProgressOverlay;
- (id)_customBackgroundColor;
- (id)_labelConfigurationForState:(id)state;
- (id)_progressOverlayAccessory;
- (id)accessibilityCustomActions;
- (id)accessibilityElements;
- (id)accessibilityLabel;
- (id)accessibilityUserInputLabels;
- (id)accessibilityValue;
- (id)preferredLayoutAttributesFittingAttributes:(id)attributes;
- (unint64_t)accessibilityTraits;
- (void)_collapseVertically;
- (void)_createShuttleBarIfNeeded;
- (void)_expandVertically;
- (void)_styleView;
- (void)_updateAfterSelectionChangeToSelected:(BOOL)selected;
- (void)_updateUIToVerticallyExpandedState:(BOOL)state;
- (void)_verifyVerticallyExpandedState;
- (void)beginEditingTitle;
- (void)didBeginEditingInTextField:(id)field;
- (void)didEndEditingInTextField;
- (void)handleUpdateTitle:(id)title;
- (void)layoutSubviews;
- (void)performControlsAction:(int64_t)action position:(double)position source:(id)source;
- (void)prepareForReuse;
- (void)resignFirstResponderForTitleEditing;
- (void)restyle;
- (void)setCreationDate:(id)date;
- (void)setCurrentTime:(double)time;
- (void)setDescriptionHeight:(double)height;
- (void)setEditingInFlight:(BOOL)flight;
- (void)setEditingProgress:(float)progress;
- (void)setHasMultipleTracks:(BOOL)tracks;
- (void)setHasTranscription:(BOOL)transcription;
- (void)setIsSpatialRecording:(BOOL)recording;
- (void)setPlayControlState:(int64_t)state;
- (void)setRecordingDuration:(double)duration;
- (void)setRecordingTitle:(id)title;
- (void)setRepresentsDownloadingFile:(BOOL)file;
- (void)setSelected:(BOOL)selected;
- (void)setShuttleBarHeight:(double)height;
- (void)setUUID:(id)d;
- (void)setVerticallyExpanded:(BOOL)expanded;
- (void)setWasManuallyRenamed:(BOOL)renamed;
- (void)updateAccessories;
- (void)updateConfigurationUsingState:(id)state;
@end

@implementation RCRecordingCollectionViewCell

- (void)layoutSubviews
{
  v13.receiver = self;
  v13.super_class = RCRecordingCollectionViewCell;
  [(RCRecordingCollectionViewCell *)&v13 layoutSubviews];
  contentView = [(RCRecordingCollectionViewCell *)self contentView];
  [contentView bounds];
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
    _progressOverlayAccessory = [(RCRecordingCollectionViewCell *)self _progressOverlayAccessory];
    [v3 addObject:_progressOverlayAccessory];
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
  _customBackgroundColor = [(RCRecordingCollectionViewCell *)self _customBackgroundColor];
  v3 = _customBackgroundColor != 0;

  return v3;
}

- (id)_customBackgroundColor
{
  v2 = +[RCRecorderStyleProvider sharedStyleProvider];
  recordingCollectionViewCellCustomBackgroundColor = [v2 recordingCollectionViewCellCustomBackgroundColor];

  return recordingCollectionViewCellCustomBackgroundColor;
}

- (void)_verifyVerticallyExpandedState
{
  v5 = +[RCRecorderStyleProvider sharedStyleProvider];
  if (([v5 expandsRecordingsCollectionViewItemOnSelection] & 1) != 0 && -[RCRecordingCollectionViewCell isSelected](self, "isSelected"))
  {
    configurationState = [(RCRecordingCollectionViewCell *)self configurationState];
    if ([configurationState isEditing])
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

- (void)setDescriptionHeight:(double)height
{
  self->_descriptionHeight = height;
  recordingDescriptionView = [(RCRecordingCollectionViewCell *)self recordingDescriptionView];
  [recordingDescriptionView setIntrinsicHeight:height];
}

- (void)setShuttleBarHeight:(double)height
{
  self->_shuttleBarHeight = height;
  shuttleBar = [(RCRecordingCollectionViewCell *)self shuttleBar];
  [shuttleBar setIntrinsicHeight:height];
}

- (void)setRecordingTitle:(id)title
{
  titleCopy = title;
  recordingDescriptionView = [(RCRecordingCollectionViewCell *)self recordingDescriptionView];
  [recordingDescriptionView setRecordingTitle:titleCopy];

  uUID = [(RCRecordingCollectionViewCell *)self UUID];
  [recordingDescriptionView setUUID:uUID];
}

- (NSString)recordingTitle
{
  recordingDescriptionView = [(RCRecordingCollectionViewCell *)self recordingDescriptionView];
  recordingTitle = [recordingDescriptionView recordingTitle];

  return recordingTitle;
}

- (void)setUUID:(id)d
{
  dCopy = d;
  v5 = [dCopy copy];
  UUID = self->_UUID;
  self->_UUID = v5;

  recordingDescriptionView = [(RCRecordingCollectionViewCell *)self recordingDescriptionView];
  [recordingDescriptionView setUUID:dCopy];
}

- (void)setRecordingDuration:(double)duration
{
  self->_recordingDuration = duration;
  v5 = round(duration);
  recordingDescriptionView = [(RCRecordingCollectionViewCell *)self recordingDescriptionView];
  [recordingDescriptionView setRecordingDuration:0 withHiddenLabel:1 isDurationLabelAX:v5];

  shuttleBar = [(RCRecordingCollectionViewCell *)self shuttleBar];
  [shuttleBar setDuration:duration];
}

- (void)setCurrentTime:(double)time
{
  self->_currentTime = time;
  shuttleBar = [(RCRecordingCollectionViewCell *)self shuttleBar];
  [shuttleBar setCurrentTime:time];
}

- (void)setCreationDate:(id)date
{
  dateCopy = date;
  recordingDescriptionView = [(RCRecordingCollectionViewCell *)self recordingDescriptionView];
  [recordingDescriptionView setCreationDate:dateCopy];
}

- (NSDate)creationDate
{
  recordingDescriptionView = [(RCRecordingCollectionViewCell *)self recordingDescriptionView];
  creationDate = [recordingDescriptionView creationDate];

  return creationDate;
}

- (void)setRepresentsDownloadingFile:(BOOL)file
{
  fileCopy = file;
  self->_representsDownloadingFile = file;
  recordingDescriptionView = [(RCRecordingCollectionViewCell *)self recordingDescriptionView];
  [recordingDescriptionView setShowDownloading:fileCopy];
}

- (BOOL)wasManuallyRenamed
{
  recordingDescriptionView = [(RCRecordingCollectionViewCell *)self recordingDescriptionView];
  wasManuallyRenamed = [recordingDescriptionView wasManuallyRenamed];

  return wasManuallyRenamed;
}

- (void)setWasManuallyRenamed:(BOOL)renamed
{
  renamedCopy = renamed;
  recordingDescriptionView = [(RCRecordingCollectionViewCell *)self recordingDescriptionView];
  [recordingDescriptionView setWasManuallyRenamed:renamedCopy];
}

- (void)setHasTranscription:(BOOL)transcription
{
  transcriptionCopy = transcription;
  self->_hasTranscription = transcription;
  recordingDescriptionView = [(RCRecordingCollectionViewCell *)self recordingDescriptionView];
  [recordingDescriptionView setDisplayTranscriptAvailableIcon:transcriptionCopy];
}

- (void)setHasMultipleTracks:(BOOL)tracks
{
  tracksCopy = tracks;
  self->_hasMultipleTracks = tracks;
  recordingDescriptionView = [(RCRecordingCollectionViewCell *)self recordingDescriptionView];
  [recordingDescriptionView setHasMultipleTracks:tracksCopy];
}

- (void)setIsSpatialRecording:(BOOL)recording
{
  recordingCopy = recording;
  self->_isSpatialRecording = recording;
  recordingDescriptionView = [(RCRecordingCollectionViewCell *)self recordingDescriptionView];
  [recordingDescriptionView setIsSpatialRecording:recordingCopy];
}

- (RCRecordingCollectionViewCell)initWithFrame:(CGRect)frame
{
  v17.receiver = self;
  v17.super_class = RCRecordingCollectionViewCell;
  v3 = [(RCRecordingCollectionViewCell *)&v17 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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
    contentView = [(RCRecordingCollectionViewCell *)v3 contentView];
    [contentView addSubview:v3->_stackView];

    contentView2 = [(RCRecordingCollectionViewCell *)v3 contentView];
    [contentView2 setClipsToBounds:1];

    _createCellAccessories = [(RCRecordingCollectionViewCell *)v3 _createCellAccessories];
    [(RCRecordingCollectionViewCell *)v3 setAccessories:_createCellAccessories];

    [(RCRecordingCollectionViewCell *)v3 _styleView];
    v3->_playControlState = 0;
  }

  return v3;
}

- (void)setPlayControlState:(int64_t)state
{
  self->_playControlState = state;
  shuttleBar = [(RCRecordingCollectionViewCell *)self shuttleBar];
  [shuttleBar setPlayControlState:state];
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
    transportControlsColorForLibrary = [v7 transportControlsColorForLibrary];
    [(RCShuttleBar *)self->_shuttleBar setControlsColor:transportControlsColorForLibrary];

    secondaryTransportControlsColorForLibrary = [v7 secondaryTransportControlsColorForLibrary];
    [(RCShuttleBar *)self->_shuttleBar setSecondaryControlsColor:secondaryTransportControlsColorForLibrary];

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

- (CGRect)containerView:(id)view layoutFrameForArrangedSubview:(id)subview withProposedFrame:(CGRect)result
{
  if (self->_shuttleBar == subview)
  {
    result.origin.y = result.origin.y + 8.0;
  }

  return result;
}

- (void)updateAccessories
{
  _createCellAccessories = [(RCRecordingCollectionViewCell *)self _createCellAccessories];
  [(RCRecordingCollectionViewCell *)self setAccessories:_createCellAccessories];
}

- (id)_progressOverlayAccessory
{
  _createProgressOverlay = [(RCRecordingCollectionViewCell *)self _createProgressOverlay];
  [(RCRecordingCollectionViewCell *)self setProgressOverlay:_createProgressOverlay];
  v4 = [[UICellAccessoryCustomView alloc] initWithCustomView:_createProgressOverlay placement:1];
  [v4 setDisplayedState:0];

  return v4;
}

- (id)_createProgressOverlay
{
  v2 = +[RCRecorderStyleProvider sharedStyleProvider];
  v3 = objc_opt_new();
  progressViewBackgroundColorEditingCard = [v2 progressViewBackgroundColorEditingCard];
  [v3 setDimmingBackgroundColor:progressViewBackgroundColorEditingCard];

  [v3 setStyle:0];
  [v2 editingProgressIndicatorDiameterCell];
  [v3 setFrame:{0.0, 0.0, v5, v5}];

  return v3;
}

- (void)updateConfigurationUsingState:(id)state
{
  stateCopy = state;
  v4 = [(RCRecordingCollectionViewCell *)self _backgroundConfigurationForState:stateCopy];
  [(RCRecordingCollectionViewCell *)self setBackgroundConfiguration:v4];

  v5 = [(RCRecordingCollectionViewCell *)self _labelConfigurationForState:stateCopy];
  recordingDescriptionView = [(RCRecordingCollectionViewCell *)self recordingDescriptionView];
  [recordingDescriptionView setLabelConfiguration:v5];

  if ([stateCopy isEditing])
  {
    isSelected = 0;
  }

  else
  {
    isSelected = [stateCopy isSelected];
  }

  recordingDescriptionView2 = [(RCRecordingCollectionViewCell *)self recordingDescriptionView];
  titleEditingAllowed = [recordingDescriptionView2 titleEditingAllowed];

  if (isSelected != titleEditingAllowed)
  {
    recordingDescriptionView3 = [(RCRecordingCollectionViewCell *)self recordingDescriptionView];
    [recordingDescriptionView3 setTitleEditingAllowed:isSelected];
  }

  [(RCRecordingCollectionViewCell *)self _verifyVerticallyExpandedState];
}

- (id)_backgroundConfigurationForState:(id)state
{
  stateCopy = state;
  defaultBackgroundConfiguration = [(RCRecordingCollectionViewCell *)self defaultBackgroundConfiguration];
  v6 = [defaultBackgroundConfiguration updatedConfigurationForState:stateCopy];

  if ([(RCRecordingCollectionViewCell *)self _hasCustomBackgroundColor])
  {
    _customBackgroundColor = [(RCRecordingCollectionViewCell *)self _customBackgroundColor];
    [v6 setBackgroundColor:_customBackgroundColor];
  }

  return v6;
}

- (id)_labelConfigurationForState:(id)state
{
  stateCopy = state;
  if ([(RCRecordingCollectionViewCell *)self _hasCustomBackgroundColor])
  {
    v5 = +[RCRecordingDescriptionViewLabelConfiguration recordingCollectionViewCellConfiguration];
  }

  else
  {
    defaultContentConfiguration = [(RCRecordingCollectionViewCell *)self defaultContentConfiguration];
    v7 = [defaultContentConfiguration updatedConfigurationForState:stateCopy];

    textProperties = [v7 textProperties];
    v5 = +[RCRecordingDescriptionViewLabelConfiguration emptyConfiguration];
    color = [textProperties color];
    [v5 setRecordingTitleTextColor:color];

    color2 = [textProperties color];
    [v5 setRecordingTitleEditingTintColor:color2];

    color3 = [textProperties color];
    v12 = +[RCRecorderStyleProvider sharedStyleProvider];
    [v12 descriptionViewSecondaryLabelAlpha];
    v13 = [color3 colorWithAlphaComponent:?];
    [v5 setSubtitleTextColor:v13];
  }

  return v5;
}

- (void)restyle
{
  [(RCRecordingCollectionViewCell *)self _styleView];
  recordingDescriptionView = [(RCRecordingCollectionViewCell *)self recordingDescriptionView];
  [recordingDescriptionView restyle];

  progressOverlay = [(RCRecordingCollectionViewCell *)self progressOverlay];
  [progressOverlay restyle];

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

- (void)setSelected:(BOOL)selected
{
  selectedCopy = selected;
  if (!selected)
  {
    shuttleBar = [(RCRecordingCollectionViewCell *)self shuttleBar];
    [shuttleBar cancelScrubbing];
  }

  v9.receiver = self;
  v9.super_class = RCRecordingCollectionViewCell;
  [(RCRecordingCollectionViewCell *)&v9 setSelected:selectedCopy];
  recordingDescriptionView = [(RCRecordingCollectionViewCell *)self recordingDescriptionView];
  if (selectedCopy)
  {
    configurationState = [(RCRecordingCollectionViewCell *)self configurationState];
    v8 = [configurationState isEditing] ^ 1;
  }

  else
  {
    v8 = 0;
  }

  [recordingDescriptionView setTitleEditingAllowed:v8];
  [recordingDescriptionView setUserInteractionEnabled:selectedCopy];
  [(RCRecordingCollectionViewCell *)self _updateAfterSelectionChangeToSelected:selectedCopy];
}

- (void)_updateAfterSelectionChangeToSelected:(BOOL)selected
{
  progressOverlay = [(RCRecordingCollectionViewCell *)self progressOverlay];
  if (progressOverlay)
  {
    v4 = +[RCRecorderStyleProvider sharedStyleProvider];
    expandsRecordingsCollectionViewItemOnSelection = [v4 expandsRecordingsCollectionViewItemOnSelection];

    if ((expandsRecordingsCollectionViewItemOnSelection & 1) == 0)
    {
      v6 = +[RCRecorderStyleProvider sharedStyleProvider];
      v7 = v6;
      if (selected)
      {
        +[UIColor secondaryLabelColor];
      }

      else
      {
        [v6 recordingCollectionViewCellTextColor];
      }
      v8 = ;
      [progressOverlay setProgressIndicatorColor:v8];
    }
  }
}

- (void)setVerticallyExpanded:(BOOL)expanded
{
  if (self->_verticallyExpanded != expanded)
  {
    self->_verticallyExpanded = expanded;
    [(RCRecordingCollectionViewCell *)self _updateUIToVerticallyExpandedState:?];
  }
}

- (void)_updateUIToVerticallyExpandedState:(BOOL)state
{
  if (state)
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
  recordingDescriptionView = [(RCRecordingCollectionViewCell *)self recordingDescriptionView];
  [recordingDescriptionView setTitleFieldAccessible:1];

  LODWORD(recordingDescriptionView) = [(RCRecordingCollectionViewCell *)self isRecentlyDeleted];
  recordingDescriptionView2 = [(RCRecordingCollectionViewCell *)self recordingDescriptionView];
  v5 = recordingDescriptionView2;
  if (recordingDescriptionView)
  {
    v6 = 0;
  }

  else
  {
    v6 = 2;
  }

  [recordingDescriptionView2 setPresentedControl:v6];
}

- (void)_collapseVertically
{
  [(RCShuttleBar *)self->_shuttleBar setHidden:1];
  recordingDescriptionView = [(RCRecordingCollectionViewCell *)self recordingDescriptionView];
  [recordingDescriptionView setTitleFieldAccessible:0];

  recordingDescriptionView2 = [(RCRecordingCollectionViewCell *)self recordingDescriptionView];
  [recordingDescriptionView2 setPresentedControl:1];
}

- (void)setEditingInFlight:(BOOL)flight
{
  if (self->_editingInFlight != flight)
  {
    flightCopy = flight;
    self->_editingInFlight = flight;
    recordingDescriptionView = [(RCRecordingCollectionViewCell *)self recordingDescriptionView];
    [recordingDescriptionView setShowSaving:flightCopy];

    [(RCRecordingCollectionViewCell *)self updateAccessories];

    [(RCRecordingCollectionViewCell *)self _verifyVerticallyExpandedState];
  }
}

- (void)setEditingProgress:(float)progress
{
  progressOverlay = [(RCRecordingCollectionViewCell *)self progressOverlay];
  *&v4 = progress;
  [progressOverlay setProgress:v4];
}

- (float)editingProgress
{
  progressOverlay = [(RCRecordingCollectionViewCell *)self progressOverlay];
  [progressOverlay progress];
  v4 = v3;

  return v4;
}

- (void)performControlsAction:(int64_t)action position:(double)position source:(id)source
{
  sourceCopy = source;
  cellDelegate = [(RCRecordingCollectionViewCell *)self cellDelegate];
  uUID = [(RCRecordingCollectionViewCell *)self UUID];
  [cellDelegate performAction:action atPosition:uUID forCellWithUUID:sourceCopy source:position];
}

- (void)handleUpdateTitle:(id)title
{
  titleCopy = title;
  cellDelegate = [(RCRecordingCollectionViewCell *)self cellDelegate];
  uUID = [(RCRecordingCollectionViewCell *)self UUID];
  [cellDelegate performRenameWithNewTitle:titleCopy forCellWithUUID:uUID];
}

- (void)didBeginEditingInTextField:(id)field
{
  fieldCopy = field;
  cellDelegate = [(RCRecordingCollectionViewCell *)self cellDelegate];
  [cellDelegate didBeginEditingTitle:self];

  [(RCRecordingCollectionViewCell *)self setTextFieldBeingEdited:fieldCopy];
}

- (void)didEndEditingInTextField
{
  cellDelegate = [(RCRecordingCollectionViewCell *)self cellDelegate];
  [cellDelegate didEndEditingTitle:self];

  [(RCRecordingCollectionViewCell *)self setTextFieldBeingEdited:0];
}

- (id)preferredLayoutAttributesFittingAttributes:(id)attributes
{
  attributesCopy = attributes;
  [(RCRecordingCollectionViewCell *)self bounds];
  [(NUIContainerStackView *)self->_stackView effectiveLayoutSizeFittingSize:v5, 0.0];
  v7 = v6;
  v9 = v8;
  [attributesCopy size];
  if (v7 != v11 || v9 != v10)
  {
    v13 = [attributesCopy copy];

    [v13 setSize:{v7, v9}];
    attributesCopy = v13;
  }

  return attributesCopy;
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

  textFieldBeingEdited = [(RCRecordingCollectionViewCell *)self textFieldBeingEdited];
  v4 = textFieldBeingEdited == 0;

  return v4;
}

- (id)accessibilityLabel
{
  recordingTitle = [(RCRecordingCollectionViewCell *)self recordingTitle];

  if (!recordingTitle)
  {
    [(RCRecordingCollectionViewCell *)self setRecordingTitle:&stru_100295BB8];
  }

  recordingTitle2 = [(RCRecordingCollectionViewCell *)self recordingTitle];
  recordingDescriptionView = [(RCRecordingCollectionViewCell *)self recordingDescriptionView];
  axCreationDateString = [recordingDescriptionView axCreationDateString];
  v7 = [NSString stringWithFormat:@"%@, %@", recordingTitle2, axCreationDateString];

  if (self->_hasTranscription)
  {
    recordingDescriptionView2 = [(RCRecordingCollectionViewCell *)self recordingDescriptionView];
    axTranscriptAvailableString = [recordingDescriptionView2 axTranscriptAvailableString];
    v10 = [NSString stringWithFormat:@", %@", axTranscriptAvailableString];
    v11 = [v7 stringByAppendingString:v10];

    v7 = v11;
  }

  if (self->_hasMultipleTracks)
  {
    recordingDescriptionView3 = [(RCRecordingCollectionViewCell *)self recordingDescriptionView];
    axMultiTrackIndicatorString = [recordingDescriptionView3 axMultiTrackIndicatorString];
    v14 = [NSString stringWithFormat:@", %@", axMultiTrackIndicatorString];
    v15 = [v7 stringByAppendingString:v14];

    v7 = v15;
  }

  recordingDescriptionView4 = [(RCRecordingCollectionViewCell *)self recordingDescriptionView];
  axDurationString = [recordingDescriptionView4 axDurationString];
  v18 = [NSString stringWithFormat:@", %@", axDurationString];
  v19 = [v7 stringByAppendingString:v18];

  return v7;
}

- (id)accessibilityUserInputLabels
{
  recordingTitle = [(RCRecordingCollectionViewCell *)self recordingTitle];

  if (!recordingTitle)
  {
    [(RCRecordingCollectionViewCell *)self setRecordingTitle:&stru_100295BB8];
  }

  recordingTitle2 = [(RCRecordingCollectionViewCell *)self recordingTitle];
  v7 = recordingTitle2;
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
    configurationState = [(RCRecordingCollectionViewCell *)self configurationState];
    isEditing = [configurationState isEditing];

    if ((isEditing & 1) == 0)
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
    recordingDescriptionView = [(RCRecordingCollectionViewCell *)self recordingDescriptionView];
    accessibilityElements = [recordingDescriptionView accessibilityElements];
    [v3 addObjectsFromArray:accessibilityElements];

    shuttleBar = [(RCRecordingCollectionViewCell *)self shuttleBar];
    accessibilityElements2 = [shuttleBar accessibilityElements];
    [v3 addObjectsFromArray:accessibilityElements2];
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
  accessibilityCustomActions = [(RCRecordingCollectionViewCell *)&v10 accessibilityCustomActions];
  v4 = [NSMutableArray arrayWithArray:accessibilityCustomActions];

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
  textFieldBeingEdited = [(RCRecordingCollectionViewCell *)self textFieldBeingEdited];
  v3 = textFieldBeingEdited != 0;

  return v3;
}

- (void)beginEditingTitle
{
  recordingDescriptionView = [(RCRecordingCollectionViewCell *)self recordingDescriptionView];
  [recordingDescriptionView beginEditingTitle];
}

- (void)resignFirstResponderForTitleEditing
{
  textFieldBeingEdited = [(RCRecordingCollectionViewCell *)self textFieldBeingEdited];

  if (textFieldBeingEdited)
  {
    textFieldBeingEdited2 = [(RCRecordingCollectionViewCell *)self textFieldBeingEdited];
    [textFieldBeingEdited2 resignFirstResponder];
  }
}

- (BOOL)accessibilityPerformMagicTap
{
  if (![(RCRecordingCollectionViewCell *)self isSelected])
  {
    return 0;
  }

  shuttleBar = [(RCRecordingCollectionViewCell *)self shuttleBar];
  playControlState = [shuttleBar playControlState];

  if (playControlState != 1)
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