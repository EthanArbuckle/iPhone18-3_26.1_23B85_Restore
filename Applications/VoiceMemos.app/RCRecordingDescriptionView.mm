@interface RCRecordingDescriptionView
+ (RCRecordingDescriptionView)descriptionViewWithStyle:(int64_t)style;
- (BOOL)_setupMoreButtonIfNeeded;
- (BOOL)isTitleAccessible;
- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string;
- (NSString)axCreationDateString;
- (NSString)axDurationString;
- (NSString)axMultiTrackIndicatorString;
- (NSString)axTranscriptAvailableString;
- (RCControlsActionDelegate)actionDelegate;
- (RCRecordingDescriptionView)initWithCoder:(id)coder;
- (RCRecordingDescriptionView)initWithFrame:(CGRect)frame;
- (RCRecordingDescriptionView)initWithStyle:(int64_t)style;
- (RCRecordingDescriptionViewDelegate)recordingDescriptionViewDelegate;
- (id)accessibilityElements;
- (void)_applyLabelConfiguration;
- (void)_commonInitWithStyle:(int64_t)style;
- (void)_endEditingTitleDueToNotification;
- (void)_maybeSelectAllTextFieldText;
- (void)_menuActionTriggeredByMoreButton:(id)button;
- (void)_setArrangedSubviewsWithTitleDateDurationStack:(id)stack moreButton:(id)button;
- (void)_setupConfigurationForStyle:(int64_t)style;
- (void)_setupStackForStyle:(int64_t)style;
- (void)_setupTitleLabel;
- (void)_setupTitleTextField;
- (void)_styleTitle;
- (void)_styleView;
- (void)_switchToTitleTextField;
- (void)_syncDurationVisibility;
- (void)_traitCollectionDidChange:(id)change previousTraitCollection:(id)collection;
- (void)_updateCreationDateOrDownloadingLabel;
- (void)_updateForPresentedControlsOptions;
- (void)_updateMoreButtonMenu;
- (void)_updateMultitrackIndicatorViewVisibility;
- (void)_updateStackIfNeeded;
- (void)_updateTextFieldFocusabilityForStyle:(int64_t)style;
- (void)_updateTranscriptAvailableViewVisibility;
- (void)addTitleAccessibilityTraits:(unint64_t)traits;
- (void)beginEditingTitle;
- (void)configureLineBreakMode:(BOOL)mode force:(BOOL)force;
- (void)deviceTranscriptionSupportDidChange:(BOOL)change;
- (void)endEditingTitle;
- (void)removeTitleAccessibilityTraits:(unint64_t)traits;
- (void)restyle;
- (void)setCreationDate:(id)date;
- (void)setDurationLabelAccessible:(BOOL)accessible;
- (void)setHasMultipleTracks:(BOOL)tracks;
- (void)setLabelConfiguration:(id)configuration;
- (void)setPresentedControl:(int64_t)control;
- (void)setRecordingDuration:(double)duration withHiddenLabel:(BOOL)label isDurationLabelAX:(BOOL)x;
- (void)setRecordingTitle:(id)title;
- (void)setShowDownloading:(BOOL)downloading;
- (void)setShowSaving:(BOOL)saving;
- (void)setStyle:(int64_t)style;
- (void)setTitleAccessible:(BOOL)accessible;
- (void)setTitleEditingAllowed:(BOOL)allowed;
- (void)setUUID:(id)d;
- (void)setWasManuallyRenamed:(BOOL)renamed;
- (void)setupTitleTextFieldAlignment;
- (void)textFieldDidBeginEditing:(id)editing;
- (void)textFieldDidEndEditing:(id)editing;
- (void)updateForDisplayMode:(int64_t)mode;
@end

@implementation RCRecordingDescriptionView

- (void)_setupTitleTextField
{
  titleTextField = [(RCRecordingDescriptionView *)self titleTextField];
  if (!titleTextField)
  {
    v11 = [[RCTextField alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
    [(RCRecordingDescriptionView *)self setTitleTextField:v11];
    [(RCTextField *)v11 setAutocapitalizationType:2];
    [(RCTextField *)v11 setDelegate:self];
    [(RCTextField *)v11 setAdjustsFontForContentSizeCategory:1];
    if ([(RCRecordingDescriptionView *)self style]== 1)
    {
      LODWORD(v4) = 1132068864;
      [(RCTextField *)v11 setLayoutSize:10.0 withContentPriority:NUIContainerViewLengthUseDefault, v4];
    }

    if (![(RCRecordingDescriptionView *)self style])
    {
      v5 = +[RCRecorderStyleProvider sharedStyleProvider];
      [v5 recordingViewTitleTextInsets];
      [(RCTextField *)v11 setCustomAlignmentRectInsets:?];
    }

    [(RCRecordingDescriptionView *)self configureLineBreakMode:self->_wasManuallyRenamed force:1];
    v6 = +[RCRecorderStyleProvider sharedStyleProvider];
    if ([v6 expandsRecordingsCollectionViewItemOnSelection])
    {

LABEL_12:
      titleTextField = v11;
      goto LABEL_13;
    }

    titleTextField2 = [(RCRecordingDescriptionView *)self titleTextField];
    text = [titleTextField2 text];
    if ([text isEqualToString:&stru_100295BB8])
    {
    }

    else
    {
      titleTextField3 = [(RCRecordingDescriptionView *)self titleTextField];
      text2 = [titleTextField3 text];

      if (text2)
      {
        goto LABEL_12;
      }
    }

    [(RCRecordingDescriptionView *)self setTitleAccessible:0];
    goto LABEL_12;
  }

LABEL_13:
  v12 = titleTextField;
  [(RCRecordingDescriptionView *)self _styleTitle];
  [(RCRecordingDescriptionView *)self _applyLabelConfiguration];
}

- (void)_switchToTitleTextField
{
  [(RCRecordingDescriptionView *)self _setupTitleTextField];
  titleTextField = [(RCRecordingDescriptionView *)self titleTextField];
  arrangedSubviews = [(NUIContainerStackView *)self->_titleDateDurationStack arrangedSubviews];
  v5 = [arrangedSubviews count];

  if (!v5)
  {
    goto LABEL_6;
  }

  arrangedSubviews2 = [(NUIContainerStackView *)self->_titleDateDurationStack arrangedSubviews];
  v7 = [arrangedSubviews2 objectAtIndexedSubscript:0];

  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    titleLabel = [(RCRecordingDescriptionView *)self titleLabel];
    text = [titleLabel text];
    [titleTextField setText:text];

    dateAndDurationStack = self->_dateAndDurationStack;
    v12[0] = titleTextField;
    v12[1] = dateAndDurationStack;
    v11 = [NSArray arrayWithObjects:v12 count:2];
    [(NUIContainerStackView *)self->_titleDateDurationStack setArrangedSubviews:v11];

    [(RCRecordingDescriptionView *)self _setArrangedSubviewsWithTitleDateDurationStack:self->_titleDateDurationStack moreButton:self->_moreButton];
LABEL_6:
    [(RCRecordingDescriptionView *)self setTitleLabel:0];
    goto LABEL_7;
  }

LABEL_7:
}

- (void)_styleTitle
{
  v6 = +[RCRecorderStyleProvider sharedStyleProvider];
  titleLabel = [(RCRecordingDescriptionView *)self titleLabel];
  titleTextField = [(RCRecordingDescriptionView *)self titleTextField];
  if ([(RCRecordingDescriptionView *)self style]== 1)
  {
    [v6 descriptionViewScalableTitleFontForRecordingCollectionViewCell];
  }

  else
  {
    [v6 descriptionViewScalableTitleFontForCardView];
  }
  v5 = ;
  [titleTextField setFont:v5];
  [titleLabel setFont:v5];
}

- (void)_applyLabelConfiguration
{
  labelConfiguration = [(RCRecordingDescriptionView *)self labelConfiguration];
  recordingTitleEditingTintColor = [labelConfiguration recordingTitleEditingTintColor];
  titleTextField = [(RCRecordingDescriptionView *)self titleTextField];
  [titleTextField setTintColor:recordingTitleEditingTintColor];

  labelConfiguration2 = [(RCRecordingDescriptionView *)self labelConfiguration];
  recordingTitleTextColor = [labelConfiguration2 recordingTitleTextColor];
  titleTextField2 = [(RCRecordingDescriptionView *)self titleTextField];
  [titleTextField2 setTextColor:recordingTitleTextColor];

  labelConfiguration3 = [(RCRecordingDescriptionView *)self labelConfiguration];
  recordingTitleTextColor2 = [labelConfiguration3 recordingTitleTextColor];
  titleLabel = [(RCRecordingDescriptionView *)self titleLabel];
  [titleLabel setTextColor:recordingTitleTextColor2];

  labelConfiguration4 = [(RCRecordingDescriptionView *)self labelConfiguration];
  subtitleTextColor = [labelConfiguration4 subtitleTextColor];
  durationLabel = [(RCRecordingDescriptionView *)self durationLabel];
  [durationLabel setTextColor:subtitleTextColor];

  labelConfiguration5 = [(RCRecordingDescriptionView *)self labelConfiguration];
  subtitleTextColor2 = [labelConfiguration5 subtitleTextColor];
  creationDateOrDownloadingLabel = [(RCRecordingDescriptionView *)self creationDateOrDownloadingLabel];
  [creationDateOrDownloadingLabel setTextColor:subtitleTextColor2];

  labelConfiguration6 = [(RCRecordingDescriptionView *)self labelConfiguration];
  subtitleTextColor3 = [labelConfiguration6 subtitleTextColor];
  transcriptAvailableImageView = [(RCRecordingDescriptionView *)self transcriptAvailableImageView];
  [transcriptAvailableImageView setTintColor:subtitleTextColor3];

  labelConfiguration7 = [(RCRecordingDescriptionView *)self labelConfiguration];
  subtitleTextColor4 = [labelConfiguration7 subtitleTextColor];
  multiTrackIndicatorImageView = [(RCRecordingDescriptionView *)self multiTrackIndicatorImageView];
  [multiTrackIndicatorImageView setTintColor:subtitleTextColor4];
}

- (void)_updateStackIfNeeded
{
  v6 = +[RCRecorderStyleProvider sharedStyleProvider];
  isAccessibilityLargerTextSizeEnabled = [v6 isAccessibilityLargerTextSizeEnabled];
  v4 = ([(RCRecordingDescriptionView *)self style]== 1) & isAccessibilityLargerTextSizeEnabled;
  if (isAccessibilityLargerTextSizeEnabled)
  {
    v5 = 4.0;
  }

  else
  {
    v5 = 8.0;
  }

  [(NUIContainerStackView *)self->_dateAndDurationStack setAxis:isAccessibilityLargerTextSizeEnabled];
  [(NUIContainerStackView *)self->_dateAndDurationStack setSpacing:v5];
  [(NUIContainerStackView *)self->_dateAndDurationStack setAlignment:v4];
  [(UIView *)self->_dateAndDurationEmptySpacerView setHidden:v4];
}

- (void)_styleView
{
  v9 = +[RCRecorderStyleProvider sharedStyleProvider];
  style = [(RCRecordingDescriptionView *)self style];
  creationDateOrDownloadingLabel = [(RCRecordingDescriptionView *)self creationDateOrDownloadingLabel];
  if (style == 1)
  {
    creationDateLabelFontForRecordingCollectionViewCell = [v9 creationDateLabelFontForRecordingCollectionViewCell];
    [creationDateOrDownloadingLabel setFont:creationDateLabelFontForRecordingCollectionViewCell];

    [v9 durationLabelFontForRecordingCollectionViewCell];
  }

  else
  {
    creationDateLabelFontForCardView = [v9 creationDateLabelFontForCardView];
    [creationDateOrDownloadingLabel setFont:creationDateLabelFontForCardView];

    [v9 durationLabelFontForCardView];
  }
  v7 = ;
  durationLabel = [(RCRecordingDescriptionView *)self durationLabel];
  [durationLabel setFont:v7];

  [(RCRecordingDescriptionView *)self _styleTitle];
  [(RCRecordingDescriptionView *)self setStyle:style];
}

- (void)_updateTranscriptAvailableViewVisibility
{
  v3 = +[_TtC10VoiceMemos33TranscriptionAvailabilityProvider shared];
  deviceIsSupported = [v3 deviceIsSupported];

  transcriptAvailableImageView = self->_transcriptAvailableImageView;
  v6 = (self->_displayTranscriptAvailableIcon & deviceIsSupported & 1) == 0;

  [(UIImageView *)transcriptAvailableImageView setHidden:v6];
}

- (void)_updateMultitrackIndicatorViewVisibility
{
  v3 = [(RCRecordingDescriptionView *)self hasMultipleTracks]^ 1;
  multiTrackIndicatorImageView = self->_multiTrackIndicatorImageView;

  [(UIImageView *)multiTrackIndicatorImageView setHidden:v3];
}

- (void)_updateMoreButtonMenu
{
  moreButton = [(RCRecordingDescriptionView *)self moreButton];

  if (moreButton)
  {
    v4 = +[_TtC10VoiceMemos33TranscriptionAvailabilityProvider shared];
    deviceIsSupported = [v4 deviceIsSupported];

    if (deviceIsSupported)
    {
      displayTranscriptAvailableIcon = self->_displayTranscriptAvailableIcon;
    }

    else
    {
      displayTranscriptAvailableIcon = 0;
    }

    v7 = [_TtC10VoiceMemos36RCRecordingCellMoreButtonMenuCreator alloc];
    uUID = [(RCRecordingDescriptionView *)self UUID];
    WeakRetained = objc_loadWeakRetained(&self->_actionDelegate);
    v10 = [(RCRecordingCellMoreButtonMenuCreator *)v7 initWithRecordingUUID:uUID actionDelegate:WeakRetained source:self];
    [(RCRecordingDescriptionView *)self setMoreButtonMenuCreator:v10];

    moreButtonMenuCreator = [(RCRecordingDescriptionView *)self moreButtonMenuCreator];
    v12 = [moreButtonMenuCreator createMenuWithDisplayShowTranscriptAction:deviceIsSupported displayCopyTranscriptAction:displayTranscriptAvailableIcon hasMultipleTracks:-[RCRecordingDescriptionView hasMultipleTracks](self isSpatialRecording:{"hasMultipleTracks"), -[RCRecordingDescriptionView isSpatialRecording](self, "isSpatialRecording")}];
    moreButton2 = [(RCRecordingDescriptionView *)self moreButton];
    [moreButton2 setMenu:v12];

    moreButton3 = [(RCRecordingDescriptionView *)self moreButton];
    [moreButton3 setShowsMenuAsPrimaryAction:1];
  }
}

- (void)_setupTitleLabel
{
  titleLabel = [(RCRecordingDescriptionView *)self titleLabel];
  if (!titleLabel)
  {
    v6 = objc_opt_new();
    if (![(RCRecordingDescriptionView *)self style])
    {
      v4 = +[RCRecorderStyleProvider sharedStyleProvider];
      [v4 recordingViewTitleTextInsets];
      [v6 setCustomAlignmentRectInsets:?];
    }

    [(RCRecordingDescriptionView *)self setTitleLabel:v6];
    [v6 setAdjustsFontForContentSizeCategory:1];
    if ([(RCRecordingDescriptionView *)self style]== 1)
    {
      LODWORD(v5) = 1132068864;
      [v6 setLayoutSize:10.0 withContentPriority:{NUIContainerViewLengthUseDefault, v5}];
    }

    [(RCRecordingDescriptionView *)self configureLineBreakMode:self->_wasManuallyRenamed force:1];
    titleLabel = v6;
  }
}

- (void)_updateForPresentedControlsOptions
{
  v3 = [(RCRecordingDescriptionView *)self presentedControl]!= 2;
  moreButton = [(RCRecordingDescriptionView *)self moreButton];
  [moreButton setHidden:v3];

  v5 = [(RCRecordingDescriptionView *)self presentedControl]!= 1;
  durationLabel = [(RCRecordingDescriptionView *)self durationLabel];
  [durationLabel setHidden:v5];
}

- (void)_updateCreationDateOrDownloadingLabel
{
  creationDate = [(RCRecordingDescriptionView *)self creationDate];
  if ([(RCRecordingDescriptionView *)self showDownloading])
  {
    v3 = +[NSBundle mainBundle];
    v4 = v3;
    v5 = @"MEMO_IS_DOWNLOADING";
LABEL_5:
    creationDateOrDownloadingLabel9 = [v3 localizedStringForKey:v5 value:&stru_100295BB8 table:0];

    creationDateOrDownloadingLabel = [(RCRecordingDescriptionView *)self creationDateOrDownloadingLabel];
    text = [creationDateOrDownloadingLabel text];
    v9 = [creationDateOrDownloadingLabel9 isEqualToString:text];

    if ((v9 & 1) == 0)
    {
      creationDateOrDownloadingLabel2 = [(RCRecordingDescriptionView *)self creationDateOrDownloadingLabel];
      [creationDateOrDownloadingLabel2 setText:creationDateOrDownloadingLabel9];
    }

    creationDateOrDownloadingLabel3 = [(RCRecordingDescriptionView *)self creationDateOrDownloadingLabel];
    [creationDateOrDownloadingLabel3 setAccessibilityLabel:creationDateOrDownloadingLabel9];

    goto LABEL_8;
  }

  if ([(RCRecordingDescriptionView *)self showSaving])
  {
    v3 = +[NSBundle mainBundle];
    v4 = v3;
    v5 = @"SAVING_CHANGES";
    goto LABEL_5;
  }

  if (creationDate)
  {
    v12 = +[RCRecorderStyleProvider sharedStyleProvider];
    uUID = [(RCRecordingDescriptionView *)self UUID];
    creationDateOrDownloadingLabel9 = [v12 formattedDateStringFromDate:creationDate forUUID:uUID];

    creationDateOrDownloadingLabel4 = [(RCRecordingDescriptionView *)self creationDateOrDownloadingLabel];
    text2 = [creationDateOrDownloadingLabel4 text];
    v16 = [creationDateOrDownloadingLabel9 isEqualToString:text2];

    if ((v16 & 1) == 0)
    {
      creationDateOrDownloadingLabel5 = [(RCRecordingDescriptionView *)self creationDateOrDownloadingLabel];
      [creationDateOrDownloadingLabel5 setText:creationDateOrDownloadingLabel9];
    }

    creationDateOrDownloadingLabel6 = [(RCRecordingDescriptionView *)self creationDateOrDownloadingLabel];
    [creationDateOrDownloadingLabel6 setIsAccessibilityElement:1];

    creationDateOrDownloadingLabel7 = [(RCRecordingDescriptionView *)self creationDateOrDownloadingLabel];
    text3 = [creationDateOrDownloadingLabel7 text];
    creationDateOrDownloadingLabel8 = [(RCRecordingDescriptionView *)self creationDateOrDownloadingLabel];
    [creationDateOrDownloadingLabel8 setAccessibilityLabel:text3];
  }

  else
  {
    creationDateOrDownloadingLabel9 = [(RCRecordingDescriptionView *)self creationDateOrDownloadingLabel];
    [creationDateOrDownloadingLabel9 setIsAccessibilityElement:0];
  }

LABEL_8:
}

- (void)setRecordingTitle:(id)title
{
  titleCopy = title;
  v4 = [titleCopy copy];
  recordingTitle = self->_recordingTitle;
  self->_recordingTitle = v4;

  titleTextField = [(RCRecordingDescriptionView *)self titleTextField];
  text = [titleTextField text];
  v8 = text;
  if (titleTextField && (!text || ([text isEqualToString:titleCopy] & 1) == 0))
  {
    [titleTextField setText:titleCopy];
  }

  titleLabel = [(RCRecordingDescriptionView *)self titleLabel];
  [titleLabel setText:titleCopy];

  if (titleCopy)
  {
    if (![titleCopy isEqualToString:&stru_100295BB8])
    {
      v10 = 1;
      goto LABEL_10;
    }

    if (![titleCopy isEqualToString:&stru_100295BB8])
    {
      goto LABEL_11;
    }
  }

  v10 = 0;
LABEL_10:
  [(RCRecordingDescriptionView *)self setTitleAccessible:v10];
LABEL_11:
}

- (void)setUUID:(id)d
{
  objc_storeStrong(&self->_UUID, d);
  dCopy = d;
  moreButtonMenuCreator = [(RCRecordingDescriptionView *)self moreButtonMenuCreator];
  [moreButtonMenuCreator setRecordingUUID:dCopy];
}

- (void)setCreationDate:(id)date
{
  objc_storeStrong(&self->_creationDate, date);

  [(RCRecordingDescriptionView *)self _updateCreationDateOrDownloadingLabel];
}

- (void)setHasMultipleTracks:(BOOL)tracks
{
  self->_hasMultipleTracks = tracks;
  [(RCRecordingDescriptionView *)self _updateMultitrackIndicatorViewVisibility];

  [(RCRecordingDescriptionView *)self _updateMoreButtonMenu];
}

- (void)setShowDownloading:(BOOL)downloading
{
  if (self->_showDownloading != downloading)
  {
    self->_showDownloading = downloading;
    [(RCRecordingDescriptionView *)self _syncDurationVisibility];
    [(RCRecordingDescriptionView *)self _updateCreationDateOrDownloadingLabel];

    [(RCRecordingDescriptionView *)self layoutSubviews];
  }
}

- (void)setShowSaving:(BOOL)saving
{
  if (self->_showSaving != saving)
  {
    self->_showSaving = saving;
    [(RCRecordingDescriptionView *)self _syncDurationVisibility];

    [(RCRecordingDescriptionView *)self _updateCreationDateOrDownloadingLabel];
  }
}

- (void)setLabelConfiguration:(id)configuration
{
  objc_storeStrong(&self->_labelConfiguration, configuration);

  [(RCRecordingDescriptionView *)self _applyLabelConfiguration];
}

- (void)_syncDurationVisibility
{
  v3 = 0.0;
  if (![(RCRecordingDescriptionView *)self showDownloading])
  {
    if ([(RCRecordingDescriptionView *)self showSaving])
    {
      v3 = 0.0;
    }

    else
    {
      v3 = 1.0;
    }
  }

  durationLabel = [(RCRecordingDescriptionView *)self durationLabel];
  [durationLabel alpha];
  v6 = v5;

  if (v6 != v3)
  {
    if (v3 == 0.0)
    {
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_100050FD8;
      v8[3] = &unk_10028A3B8;
      v8[4] = self;
      [UIView performWithoutAnimation:v8];
    }

    else
    {
      durationLabel2 = [(RCRecordingDescriptionView *)self durationLabel];
      [durationLabel2 setAlpha:v3];
    }
  }
}

- (void)setWasManuallyRenamed:(BOOL)renamed
{
  if (self->_wasManuallyRenamed != renamed)
  {
    self->_wasManuallyRenamed = renamed;
    [RCRecordingDescriptionView configureLineBreakMode:"configureLineBreakMode:force:" force:?];
  }
}

- (void)configureLineBreakMode:(BOOL)mode force:(BOOL)force
{
  if (mode)
  {
    v4 = 4;
  }

  else
  {
    v4 = 5;
  }

  if (v4 != self->_lineBreakMode || force)
  {
    self->_lineBreakMode = v4;
    titleLabel = [(RCRecordingDescriptionView *)self titleLabel];
    [titleLabel setLineBreakMode:v4];

    titleTextField = [(RCRecordingDescriptionView *)self titleTextField];
    if (titleTextField)
    {
      v18 = titleTextField;
      defaultTextAttributes = [titleTextField defaultTextAttributes];
      v10 = defaultTextAttributes;
      if (defaultTextAttributes)
      {
        v11 = [defaultTextAttributes objectForKeyedSubscript:NSParagraphStyleAttributeName];
        v12 = v11;
        if (!v11 || [v11 lineBreakMode] != self->_lineBreakMode)
        {
          v13 = objc_alloc_init(NSMutableParagraphStyle);
          [v13 setLineBreakMode:self->_lineBreakMode];
          titleTextField2 = [(RCRecordingDescriptionView *)self titleTextField];
          defaultTextAttributes2 = [titleTextField2 defaultTextAttributes];
          v16 = [defaultTextAttributes2 mutableCopy];

          [v16 setObject:v13 forKeyedSubscript:NSParagraphStyleAttributeName];
          titleTextField3 = [(RCRecordingDescriptionView *)self titleTextField];
          [titleTextField3 setDefaultTextAttributes:v16];
        }
      }

      titleTextField = v18;
    }
  }
}

- (void)setRecordingDuration:(double)duration withHiddenLabel:(BOOL)label isDurationLabelAX:(BOOL)x
{
  labelCopy = label;
  self->_recordingDuration = duration;
  if (x)
  {
    v7 = round(duration);
    durationLabel = [(RCRecordingDescriptionView *)self durationLabel];
    [durationLabel setIsAccessibilityElement:1];

    v9 = +[NSBundle mainBundle];
    v10 = [v9 localizedStringForKey:@"DURATION" value:&stru_100295BB8 table:0];
    durationLabel2 = [(RCRecordingDescriptionView *)self durationLabel];
    [durationLabel2 setAccessibilityLabel:v10];

    durationLabel3 = [(RCRecordingDescriptionView *)self durationLabel];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1000513E0;
    v17[3] = &unk_10028ADB8;
    *&v17[4] = v7;
    [durationLabel3 _setAccessibilityValueBlock:v17];
  }

  else
  {
    durationLabel3 = [(RCRecordingDescriptionView *)self durationLabel];
    [durationLabel3 setIsAccessibilityElement:0];
  }

  durationLabel4 = [(RCRecordingDescriptionView *)self durationLabel];
  if (labelCopy)
  {
    [(RCRecordingDescriptionView *)self recordingDuration];
    RCLocalizedPlaybackTime();
  }

  else
  {
    RCLocalizedDurationWithHiddenComponents();
  }
  v14 = ;
  text = [durationLabel4 text];
  v16 = [v14 isEqualToString:text];

  if ((v16 & 1) == 0)
  {
    [durationLabel4 setText:v14];
  }

  if ([(UILabel *)self->_creationDateOrDownloadingLabel isHidden]!= labelCopy)
  {
    [(UILabel *)self->_creationDateOrDownloadingLabel setHidden:labelCopy];
  }
}

- (void)setStyle:(int64_t)style
{
  self->_style = style;
  [(RCRecordingDescriptionView *)self _setupConfigurationForStyle:?];

  [(RCRecordingDescriptionView *)self _updateTextFieldFocusabilityForStyle:style];
}

- (void)_updateTextFieldFocusabilityForStyle:(int64_t)style
{
  v6 = 0;
  if (!style)
  {
    v4 = +[RCRecorderStyleProvider sharedStyleProvider];
    disablesFocusInRecordingViewTitle = [v4 disablesFocusInRecordingViewTitle];

    if (disablesFocusInRecordingViewTitle)
    {
      v6 = 1;
    }
  }

  titleTextField = [(RCRecordingDescriptionView *)self titleTextField];
  [titleTextField setFocusDisabled:v6];
}

- (void)setPresentedControl:(int64_t)control
{
  self->_presentedControl = control;
  if (control == 2 && [(RCRecordingDescriptionView *)self _setupMoreButtonIfNeeded])
  {
    [(RCRecordingDescriptionView *)self _setArrangedSubviewsWithTitleDateDurationStack:self->_titleDateDurationStack moreButton:self->_moreButton];
  }

  [(RCRecordingDescriptionView *)self _updateForPresentedControlsOptions];
}

+ (RCRecordingDescriptionView)descriptionViewWithStyle:(int64_t)style
{
  v3 = [[RCRecordingDescriptionView alloc] initWithStyle:style];

  return v3;
}

- (void)setTitleEditingAllowed:(BOOL)allowed
{
  self->_titleEditingAllowed = allowed;
  if (allowed)
  {
    [(RCRecordingDescriptionView *)self _switchToTitleTextField];
    titleEditingAllowed = self->_titleEditingAllowed;
  }

  else
  {
    titleEditingAllowed = 0;
  }

  titleTextField = [(RCRecordingDescriptionView *)self titleTextField];
  [titleTextField setEnabled:titleEditingAllowed];

  [(RCRecordingDescriptionView *)self setupTitleTextFieldAlignment];
}

- (RCRecordingDescriptionView)initWithStyle:(int64_t)style
{
  v7.receiver = self;
  v7.super_class = RCRecordingDescriptionView;
  v4 = [(RCRecordingDescriptionView *)&v7 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  v5 = v4;
  if (v4)
  {
    [(RCRecordingDescriptionView *)v4 _commonInitWithStyle:style];
  }

  return v5;
}

- (RCRecordingDescriptionView)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = RCRecordingDescriptionView;
  v3 = [(RCRecordingDescriptionView *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(RCRecordingDescriptionView *)v3 _commonInitWithStyle:0];
  }

  return v4;
}

- (RCRecordingDescriptionView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = RCRecordingDescriptionView;
  v3 = [(RCRecordingDescriptionView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(RCRecordingDescriptionView *)v3 _commonInitWithStyle:0];
  }

  return v4;
}

- (void)_commonInitWithStyle:(int64_t)style
{
  [(RCRecordingDescriptionView *)self setArrangedSubviewRemovalPolicy:2];
  v5 = +[NSNotificationCenter defaultCenter];
  [v5 addObserver:self selector:"localeDidChange" name:NSCurrentLocaleDidChangeNotification object:0];

  v6 = +[_TtC10VoiceMemos33TranscriptionAvailabilityProvider shared];
  [v6 registerObserver:self];

  v7 = +[UIColor clearColor];
  [(RCRecordingDescriptionView *)self setBackgroundColor:v7];

  v8 = objc_opt_new();
  [(RCRecordingDescriptionView *)self setCreationDateOrDownloadingLabel:v8];
  [v8 setAdjustsFontForContentSizeCategory:1];
  if (style == 1)
  {
    LODWORD(v9) = 1148846080;
    [v8 setContentHuggingPriority:0 forAxis:v9];
  }

  v39 = v8;
  v10 = objc_opt_new();
  [(RCRecordingDescriptionView *)self setDurationLabel:v10];
  [v10 setAdjustsFontForContentSizeCategory:1];
  [v10 setNumberOfLines:0];
  if (style == 1)
  {
    LODWORD(v11) = 1144750080;
    [v10 setContentHuggingPriority:0 forAxis:v11];
  }

  v12 = +[RCRecorderStyleProvider sharedStyleProvider];
  transcriptionImage = [v12 transcriptionImage];

  v38 = transcriptionImage;
  v14 = [[UIImageView alloc] initWithImage:transcriptionImage];
  LODWORD(v15) = 1148846080;
  [v14 setContentHuggingPriority:0 forAxis:v15];
  [v14 setContentMode:1];
  [v14 setHidden:1];
  [v14 setIsAccessibilityElement:1];
  v16 = +[NSBundle mainBundle];
  v17 = [v16 localizedStringForKey:@"AX_TRANSCRIPTION_AVAILABLE" value:&stru_100295BB8 table:0];
  [v14 setAccessibilityLabel:v17];

  v18 = UIAccessibilityTraitNone;
  [v14 setAccessibilityTraits:UIAccessibilityTraitNone];
  [(RCRecordingDescriptionView *)self setTranscriptAvailableImageView:v14];
  v19 = +[RCRecorderStyleProvider sharedStyleProvider];
  multiTrackIndicatorImage = [v19 multiTrackIndicatorImage];

  v21 = [[UIImageView alloc] initWithImage:multiTrackIndicatorImage];
  LODWORD(v22) = 1148846080;
  [v21 setContentHuggingPriority:0 forAxis:v22];
  [v21 setContentMode:1];
  [v21 setHidden:1];
  [v21 setIsAccessibilityElement:1];
  v23 = +[NSBundle mainBundle];
  v24 = [v23 localizedStringForKey:@"AX_MULTIPLE_LAYERS_INDICATOR" value:&stru_100295BB8 table:0];
  [v21 setAccessibilityLabel:v24];

  [v21 setAccessibilityTraits:v18];
  [(RCRecordingDescriptionView *)self setMultiTrackIndicatorImageView:v21];
  v25 = [[UIView alloc] initWithFrame:{0.0, 0.0, 10.0, 10.0}];
  LODWORD(v26) = 1132068864;
  [v25 setContentHuggingPriority:0 forAxis:v26];
  LODWORD(v27) = 1144750080;
  [v25 setContentCompressionResistancePriority:0 forAxis:v27];
  [(RCRecordingDescriptionView *)self setDateAndDurationEmptySpacerView:v25];
  v28 = +[NSNotificationCenter defaultCenter];
  [v28 addObserver:self selector:"didChangePreferredContentSize" name:UIContentSizeCategoryDidChangeNotification object:0];

  titleTextField = [(RCRecordingDescriptionView *)self titleTextField];
  text = [titleTextField text];
  v31 = [text isEqualToString:&stru_100295BB8];

  if (v31)
  {
    [(RCRecordingDescriptionView *)self setTitleAccessible:0];
  }

  self->_style = v37;
  [(RCRecordingDescriptionView *)self _updateTextFieldFocusabilityForStyle:?];
  [(RCRecordingDescriptionView *)self _setupStackForStyle:self->_style];
  [(RCRecordingDescriptionView *)self _setupConfigurationForStyle:self->_style];
  [(RCRecordingDescriptionView *)self _styleView];
  v32 = +[NSNotificationCenter defaultCenter];
  [v32 addObserver:self selector:"_endEditingTitleDueToNotification" name:@"RecordingDescriptionViewShouldEndEditingNotificationName" object:0];

  v33 = objc_opt_self();
  v40[0] = v33;
  v34 = objc_opt_self();
  v40[1] = v34;
  v35 = [NSArray arrayWithObjects:v40 count:2];
  v36 = [(RCRecordingDescriptionView *)self registerForTraitChanges:v35 withAction:"_traitCollectionDidChange:previousTraitCollection:"];
}

- (void)_setupConfigurationForStyle:(int64_t)style
{
  if (style)
  {
    if (style != 1)
    {
      return;
    }

    v4 = +[RCRecordingDescriptionViewLabelConfiguration recordingCollectionViewCellConfiguration];
  }

  else
  {
    v4 = +[RCRecordingDescriptionViewLabelConfiguration recordingViewConfiguration];
  }

  v5 = v4;
  [(RCRecordingDescriptionView *)self setLabelConfiguration:v4];
}

- (void)setupTitleTextFieldAlignment
{
  v3 = +[UIApplication sharedApplication];
  userInterfaceLayoutDirection = [v3 userInterfaceLayoutDirection];

  titleTextField = [(RCRecordingDescriptionView *)self titleTextField];
  v7 = titleTextField;
  if (userInterfaceLayoutDirection == 1)
  {
    v6 = 2;
  }

  else
  {
    v6 = 4;
  }

  [titleTextField setTextAlignment:v6];
}

- (BOOL)_setupMoreButtonIfNeeded
{
  moreButton = [(RCRecordingDescriptionView *)self moreButton];

  if (!moreButton)
  {
    v4 = [UIButton buttonWithType:1];
    [(RCRecordingDescriptionView *)self setMoreButton:v4];
    v5 = +[RCRecorderStyleProvider sharedStyleProvider];
    ellipsisImage = [v5 ellipsisImage];
    shuttleBarImageSymbolConfiguration = [v5 shuttleBarImageSymbolConfiguration];
    v8 = [ellipsisImage imageWithConfiguration:shuttleBarImageSymbolConfiguration];
    [v4 setImage:v8 forState:0];

    [v4 setTitle:0 forState:0];
    [v4 setContentHorizontalAlignment:5];
    LODWORD(v9) = 1144750080;
    [v4 setContentHuggingPriority:0 forAxis:v9];
    v10 = +[NSBundle mainBundle];
    v11 = [v10 localizedStringForKey:@"AX_MORE_ACTIONS" value:&stru_100295BB8 table:0];
    [v4 setAccessibilityLabel:v11];

    [v4 setAccessibilityIdentifier:@"More Actions button"];
    v12 = objc_alloc_init(UILargeContentViewerInteraction);
    [v4 addInteraction:v12];

    accessibilityLabel = [v4 accessibilityLabel];
    [v4 setLargeContentTitle:accessibilityLabel];

    [v4 setShowsLargeContentViewer:1];
    [(RCRecordingDescriptionView *)self _updateMoreButtonMenu];
    [v4 addTarget:self action:"_menuActionTriggeredByMoreButton:" forControlEvents:0x4000];
  }

  return moreButton == 0;
}

- (void)_setArrangedSubviewsWithTitleDateDurationStack:(id)stack moreButton:(id)button
{
  stackCopy = stack;
  buttonCopy = button;
  v8 = buttonCopy;
  if (stackCopy && buttonCopy)
  {
    v13 = stackCopy;
    v14 = buttonCopy;
    v9 = &v13;
    v10 = 2;
LABEL_6:
    v11 = [NSArray arrayWithObjects:v9 count:v10, v12, v13, v14];
    [(RCRecordingDescriptionView *)self setArrangedSubviews:v11];

    goto LABEL_7;
  }

  if (stackCopy)
  {
    v12 = stackCopy;
    v9 = &v12;
    v10 = 1;
    goto LABEL_6;
  }

LABEL_7:
}

- (void)restyle
{
  [(RCRecordingDescriptionView *)self _styleView];

  [(RCRecordingDescriptionView *)self _applyLabelConfiguration];
}

- (void)_setupStackForStyle:(int64_t)style
{
  v5 = +[RCRecorderStyleProvider sharedStyleProvider];
  v6 = v5;
  if (style == 1 && [v5 usesTitleLabelPerfOptimization])
  {
    [(RCRecordingDescriptionView *)self _setupTitleLabel];
    titleLabel = [(RCRecordingDescriptionView *)self titleLabel];
  }

  else
  {
    [(RCRecordingDescriptionView *)self _setupTitleTextField];
    [(RCRecordingDescriptionView *)self setTitleEditingAllowed:1];
    titleLabel = [(RCRecordingDescriptionView *)self titleTextField];
  }

  v8 = titleLabel;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10005212C;
  v11[3] = &unk_10028ADE0;
  v11[4] = self;
  v12 = titleLabel;
  v13 = v6;
  styleCopy = style;
  v9 = v6;
  v10 = v8;
  [(RCRecordingDescriptionView *)self performBatchUpdates:v11];
}

- (void)updateForDisplayMode:(int64_t)mode
{
  self->_isInCompactDisplayMode = mode == 0;
  v7 = +[RCRecorderStyleProvider sharedStyleProvider];
  if ([(RCRecordingDescriptionView *)self style]== 1)
  {
    [v7 durationLabelFontForRecordingCollectionViewCell];
  }

  else
  {
    [v7 durationLabelFontForCardView];
  }
  v5 = ;
  [v7 descriptionViewTitleToSecondaryPadding];
  if (!mode)
  {
    [v7 descriptionCompactViewTitleToSecondaryPadding];
  }

  [(NUIContainerStackView *)self->_titleDateDurationStack setSpacing:?];
  [(UILabel *)self->_creationDateOrDownloadingLabel setHidden:mode == 0];
  durationLabel = [(RCRecordingDescriptionView *)self durationLabel];
  [durationLabel setFont:v5];

  [(RCRecordingDescriptionView *)self _updateTranscriptAvailableViewVisibility];
  [(RCRecordingDescriptionView *)self _updateMultitrackIndicatorViewVisibility];
  [(RCRecordingDescriptionView *)self _styleView];
}

- (void)_traitCollectionDidChange:(id)change previousTraitCollection:(id)collection
{
  collectionCopy = collection;
  if ([(RCRecordingDescriptionView *)self style]== 1)
  {
    traitCollection = [(RCRecordingDescriptionView *)self traitCollection];
    userInterfaceStyle = [traitCollection userInterfaceStyle];
    userInterfaceStyle2 = [collectionCopy userInterfaceStyle];

    if (userInterfaceStyle != userInterfaceStyle2)
    {
      [(RCRecordingDescriptionView *)self _applyLabelConfiguration];
    }
  }

  [(RCRecordingDescriptionView *)self _updateStackIfNeeded];
}

- (void)_menuActionTriggeredByMoreButton:(id)button
{
  titleTextField = [(RCRecordingDescriptionView *)self titleTextField];
  isEditing = [titleTextField isEditing];

  if (isEditing)
  {

    [(RCRecordingDescriptionView *)self endEditingTitle];
  }
}

- (void)deviceTranscriptionSupportDidChange:(BOOL)change
{
  [(RCRecordingDescriptionView *)self _updateMoreButtonMenu];

  [(RCRecordingDescriptionView *)self _updateTranscriptAvailableViewVisibility];
}

- (void)_maybeSelectAllTextFieldText
{
  WeakRetained = objc_loadWeakRetained(&self->_recordingDescriptionViewDelegate);
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = objc_loadWeakRetained(&self->_recordingDescriptionViewDelegate);
    shouldSelectFullTitleAtBeginEditing = [v5 shouldSelectFullTitleAtBeginEditing];

    if (shouldSelectFullTitleAtBeginEditing)
    {
      titleTextField = [(RCRecordingDescriptionView *)self titleTextField];
      [titleTextField selectAll:0];
    }
  }
}

- (void)textFieldDidBeginEditing:(id)editing
{
  editingCopy = editing;
  text = [editingCopy text];
  [(RCRecordingDescriptionView *)self setPreEditingName:text];

  [(RCRecordingDescriptionView *)self _maybeSelectAllTextFieldText];
  WeakRetained = objc_loadWeakRetained(&self->_recordingDescriptionViewDelegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_recordingDescriptionViewDelegate);
    [v7 didBeginEditingInTextField:editingCopy];
  }
}

- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string
{
  length = range.length;
  location = range.location;
  stringCopy = string;
  fieldCopy = field;
  if ([stringCopy isEqualToString:@"\n"])
  {
    [fieldCopy resignFirstResponder];

    v10 = 0;
  }

  else
  {
    text = [fieldCopy text];

    v12 = [text length];
    v13 = [stringCopy length];
    v14 = v13 + v12 - length;
    v16 = (v13 - length) < 0 || v14 < 0x65;
    if (v14 < 0)
    {
      v16 = 0;
    }

    v10 = location + length <= v12 && v16;
  }

  return v10;
}

- (void)textFieldDidEndEditing:(id)editing
{
  editingCopy = editing;
  WeakRetained = objc_loadWeakRetained(&self->_recordingDescriptionViewDelegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_recordingDescriptionViewDelegate);
    [v6 didEndEditingInTextField];
  }

  text = [editingCopy text];
  if ([text length] && (objc_msgSend(editingCopy, "text"), v8 = objc_claimAutoreleasedReturnValue(), -[RCRecordingDescriptionView preEditingName](self, "preEditingName"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v8, "isEqualToString:", v9), v9, v8, (v10 & 1) == 0))
  {
    preEditingName = objc_loadWeakRetained(&self->_recordingDescriptionViewDelegate);
    [preEditingName handleUpdateTitle:text];
  }

  else
  {
    preEditingName = [(RCRecordingDescriptionView *)self preEditingName];
    [editingCopy setText:preEditingName];
  }
}

- (id)accessibilityElements
{
  v3 = +[NSMutableArray array];
  titleTextField = [(RCRecordingDescriptionView *)self titleTextField];

  if (titleTextField)
  {
    titleTextField2 = [(RCRecordingDescriptionView *)self titleTextField];
    [v3 addObject:titleTextField2];
  }

  creationDateOrDownloadingLabel = [(RCRecordingDescriptionView *)self creationDateOrDownloadingLabel];

  if (creationDateOrDownloadingLabel)
  {
    creationDateOrDownloadingLabel2 = [(RCRecordingDescriptionView *)self creationDateOrDownloadingLabel];
    isHidden = [creationDateOrDownloadingLabel2 isHidden];

    if ((isHidden & 1) == 0)
    {
      creationDateOrDownloadingLabel3 = [(RCRecordingDescriptionView *)self creationDateOrDownloadingLabel];
      [v3 addObject:creationDateOrDownloadingLabel3];
    }
  }

  transcriptAvailableImageView = [(RCRecordingDescriptionView *)self transcriptAvailableImageView];
  if (transcriptAvailableImageView)
  {
    v11 = transcriptAvailableImageView;
    transcriptAvailableImageView2 = [(RCRecordingDescriptionView *)self transcriptAvailableImageView];
    isHidden2 = [transcriptAvailableImageView2 isHidden];

    if ((isHidden2 & 1) == 0)
    {
      transcriptAvailableImageView3 = [(RCRecordingDescriptionView *)self transcriptAvailableImageView];
      [v3 addObject:transcriptAvailableImageView3];
    }
  }

  multiTrackIndicatorImageView = [(RCRecordingDescriptionView *)self multiTrackIndicatorImageView];
  if (multiTrackIndicatorImageView)
  {
    v16 = multiTrackIndicatorImageView;
    multiTrackIndicatorImageView2 = [(RCRecordingDescriptionView *)self multiTrackIndicatorImageView];
    isHidden3 = [multiTrackIndicatorImageView2 isHidden];

    if ((isHidden3 & 1) == 0)
    {
      multiTrackIndicatorImageView3 = [(RCRecordingDescriptionView *)self multiTrackIndicatorImageView];
      [v3 addObject:multiTrackIndicatorImageView3];
    }
  }

  durationLabel = [(RCRecordingDescriptionView *)self durationLabel];
  if (durationLabel)
  {
    v21 = durationLabel;
    durationLabel2 = [(RCRecordingDescriptionView *)self durationLabel];
    isHidden4 = [durationLabel2 isHidden];

    if ((isHidden4 & 1) == 0)
    {
      durationLabel3 = [(RCRecordingDescriptionView *)self durationLabel];
      [v3 addObject:durationLabel3];
    }
  }

  moreButton = [(RCRecordingDescriptionView *)self moreButton];
  if (moreButton)
  {
    v26 = moreButton;
    moreButton2 = [(RCRecordingDescriptionView *)self moreButton];
    isHidden5 = [moreButton2 isHidden];

    if ((isHidden5 & 1) == 0)
    {
      moreButton3 = [(RCRecordingDescriptionView *)self moreButton];
      [v3 addObject:moreButton3];
    }
  }

  return v3;
}

- (NSString)axCreationDateString
{
  creationDateOrDownloadingLabel = [(RCRecordingDescriptionView *)self creationDateOrDownloadingLabel];
  accessibilityLabel = [creationDateOrDownloadingLabel accessibilityLabel];

  return accessibilityLabel;
}

- (NSString)axTranscriptAvailableString
{
  transcriptAvailableImageView = [(RCRecordingDescriptionView *)self transcriptAvailableImageView];
  accessibilityLabel = [transcriptAvailableImageView accessibilityLabel];

  return accessibilityLabel;
}

- (NSString)axMultiTrackIndicatorString
{
  multiTrackIndicatorImageView = [(RCRecordingDescriptionView *)self multiTrackIndicatorImageView];
  accessibilityLabel = [multiTrackIndicatorImageView accessibilityLabel];

  return accessibilityLabel;
}

- (NSString)axDurationString
{
  durationLabel = [(RCRecordingDescriptionView *)self durationLabel];
  accessibilityLabel = [durationLabel accessibilityLabel];

  return accessibilityLabel;
}

- (void)setDurationLabelAccessible:(BOOL)accessible
{
  accessibleCopy = accessible;
  durationLabel = [(RCRecordingDescriptionView *)self durationLabel];
  [durationLabel setIsAccessibilityElement:accessibleCopy];
}

- (BOOL)isTitleAccessible
{
  titleTextField = [(RCRecordingDescriptionView *)self titleTextField];
  if ([titleTextField isAccessibilityElement])
  {
    isAccessibilityElement = 1;
  }

  else
  {
    titleLabel = [(RCRecordingDescriptionView *)self titleLabel];
    isAccessibilityElement = [titleLabel isAccessibilityElement];
  }

  return isAccessibilityElement;
}

- (void)setTitleAccessible:(BOOL)accessible
{
  accessibleCopy = accessible;
  titleTextField = [(RCRecordingDescriptionView *)self titleTextField];
  [titleTextField setIsAccessibilityElement:accessibleCopy];

  titleLabel = [(RCRecordingDescriptionView *)self titleLabel];
  [titleLabel setIsAccessibilityElement:accessibleCopy];
}

- (void)addTitleAccessibilityTraits:(unint64_t)traits
{
  titleTextField = [(RCRecordingDescriptionView *)self titleTextField];
  [titleTextField setAccessibilityTraits:{objc_msgSend(titleTextField, "accessibilityTraits") | traits}];

  titleLabel = [(RCRecordingDescriptionView *)self titleLabel];
  [titleLabel setAccessibilityTraits:{objc_msgSend(titleLabel, "accessibilityTraits") | traits}];
}

- (void)removeTitleAccessibilityTraits:(unint64_t)traits
{
  titleTextField = [(RCRecordingDescriptionView *)self titleTextField];
  [titleTextField setAccessibilityTraits:{objc_msgSend(titleTextField, "accessibilityTraits") & ~traits}];

  titleLabel = [(RCRecordingDescriptionView *)self titleLabel];
  [titleLabel setAccessibilityTraits:{objc_msgSend(titleLabel, "accessibilityTraits") & ~traits}];
}

- (void)beginEditingTitle
{
  titleTextField = [(RCRecordingDescriptionView *)self titleTextField];
  [titleTextField becomeFirstResponder];
}

- (void)_endEditingTitleDueToNotification
{
  titleTextField = [(RCRecordingDescriptionView *)self titleTextField];
  isEditing = [titleTextField isEditing];

  if (isEditing)
  {
    titleTextField2 = [(RCRecordingDescriptionView *)self titleTextField];
    [titleTextField2 endEditing:0];
  }
}

- (void)endEditingTitle
{
  titleTextField = [(RCRecordingDescriptionView *)self titleTextField];
  [titleTextField endEditing:1];
}

- (RCRecordingDescriptionViewDelegate)recordingDescriptionViewDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_recordingDescriptionViewDelegate);

  return WeakRetained;
}

- (RCControlsActionDelegate)actionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_actionDelegate);

  return WeakRetained;
}

@end