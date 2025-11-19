@interface RCRecordingDescriptionView
+ (RCRecordingDescriptionView)descriptionViewWithStyle:(int64_t)a3;
- (BOOL)_setupMoreButtonIfNeeded;
- (BOOL)isTitleAccessible;
- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5;
- (NSString)axCreationDateString;
- (NSString)axDurationString;
- (NSString)axMultiTrackIndicatorString;
- (NSString)axTranscriptAvailableString;
- (RCControlsActionDelegate)actionDelegate;
- (RCRecordingDescriptionView)initWithCoder:(id)a3;
- (RCRecordingDescriptionView)initWithFrame:(CGRect)a3;
- (RCRecordingDescriptionView)initWithStyle:(int64_t)a3;
- (RCRecordingDescriptionViewDelegate)recordingDescriptionViewDelegate;
- (id)accessibilityElements;
- (void)_applyLabelConfiguration;
- (void)_commonInitWithStyle:(int64_t)a3;
- (void)_endEditingTitleDueToNotification;
- (void)_maybeSelectAllTextFieldText;
- (void)_menuActionTriggeredByMoreButton:(id)a3;
- (void)_setArrangedSubviewsWithTitleDateDurationStack:(id)a3 moreButton:(id)a4;
- (void)_setupConfigurationForStyle:(int64_t)a3;
- (void)_setupStackForStyle:(int64_t)a3;
- (void)_setupTitleLabel;
- (void)_setupTitleTextField;
- (void)_styleTitle;
- (void)_styleView;
- (void)_switchToTitleTextField;
- (void)_syncDurationVisibility;
- (void)_traitCollectionDidChange:(id)a3 previousTraitCollection:(id)a4;
- (void)_updateCreationDateOrDownloadingLabel;
- (void)_updateForPresentedControlsOptions;
- (void)_updateMoreButtonMenu;
- (void)_updateMultitrackIndicatorViewVisibility;
- (void)_updateStackIfNeeded;
- (void)_updateTextFieldFocusabilityForStyle:(int64_t)a3;
- (void)_updateTranscriptAvailableViewVisibility;
- (void)addTitleAccessibilityTraits:(unint64_t)a3;
- (void)beginEditingTitle;
- (void)configureLineBreakMode:(BOOL)a3 force:(BOOL)a4;
- (void)deviceTranscriptionSupportDidChange:(BOOL)a3;
- (void)endEditingTitle;
- (void)removeTitleAccessibilityTraits:(unint64_t)a3;
- (void)restyle;
- (void)setCreationDate:(id)a3;
- (void)setDurationLabelAccessible:(BOOL)a3;
- (void)setHasMultipleTracks:(BOOL)a3;
- (void)setLabelConfiguration:(id)a3;
- (void)setPresentedControl:(int64_t)a3;
- (void)setRecordingDuration:(double)a3 withHiddenLabel:(BOOL)a4 isDurationLabelAX:(BOOL)a5;
- (void)setRecordingTitle:(id)a3;
- (void)setShowDownloading:(BOOL)a3;
- (void)setShowSaving:(BOOL)a3;
- (void)setStyle:(int64_t)a3;
- (void)setTitleAccessible:(BOOL)a3;
- (void)setTitleEditingAllowed:(BOOL)a3;
- (void)setUUID:(id)a3;
- (void)setWasManuallyRenamed:(BOOL)a3;
- (void)setupTitleTextFieldAlignment;
- (void)textFieldDidBeginEditing:(id)a3;
- (void)textFieldDidEndEditing:(id)a3;
- (void)updateForDisplayMode:(int64_t)a3;
@end

@implementation RCRecordingDescriptionView

- (void)_setupTitleTextField
{
  v3 = [(RCRecordingDescriptionView *)self titleTextField];
  if (!v3)
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
      v3 = v11;
      goto LABEL_13;
    }

    v7 = [(RCRecordingDescriptionView *)self titleTextField];
    v8 = [v7 text];
    if ([v8 isEqualToString:&stru_100295BB8])
    {
    }

    else
    {
      v9 = [(RCRecordingDescriptionView *)self titleTextField];
      v10 = [v9 text];

      if (v10)
      {
        goto LABEL_12;
      }
    }

    [(RCRecordingDescriptionView *)self setTitleAccessible:0];
    goto LABEL_12;
  }

LABEL_13:
  v12 = v3;
  [(RCRecordingDescriptionView *)self _styleTitle];
  [(RCRecordingDescriptionView *)self _applyLabelConfiguration];
}

- (void)_switchToTitleTextField
{
  [(RCRecordingDescriptionView *)self _setupTitleTextField];
  v3 = [(RCRecordingDescriptionView *)self titleTextField];
  v4 = [(NUIContainerStackView *)self->_titleDateDurationStack arrangedSubviews];
  v5 = [v4 count];

  if (!v5)
  {
    goto LABEL_6;
  }

  v6 = [(NUIContainerStackView *)self->_titleDateDurationStack arrangedSubviews];
  v7 = [v6 objectAtIndexedSubscript:0];

  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v8 = [(RCRecordingDescriptionView *)self titleLabel];
    v9 = [v8 text];
    [v3 setText:v9];

    dateAndDurationStack = self->_dateAndDurationStack;
    v12[0] = v3;
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
  v3 = [(RCRecordingDescriptionView *)self titleLabel];
  v4 = [(RCRecordingDescriptionView *)self titleTextField];
  if ([(RCRecordingDescriptionView *)self style]== 1)
  {
    [v6 descriptionViewScalableTitleFontForRecordingCollectionViewCell];
  }

  else
  {
    [v6 descriptionViewScalableTitleFontForCardView];
  }
  v5 = ;
  [v4 setFont:v5];
  [v3 setFont:v5];
}

- (void)_applyLabelConfiguration
{
  v3 = [(RCRecordingDescriptionView *)self labelConfiguration];
  v4 = [v3 recordingTitleEditingTintColor];
  v5 = [(RCRecordingDescriptionView *)self titleTextField];
  [v5 setTintColor:v4];

  v6 = [(RCRecordingDescriptionView *)self labelConfiguration];
  v7 = [v6 recordingTitleTextColor];
  v8 = [(RCRecordingDescriptionView *)self titleTextField];
  [v8 setTextColor:v7];

  v9 = [(RCRecordingDescriptionView *)self labelConfiguration];
  v10 = [v9 recordingTitleTextColor];
  v11 = [(RCRecordingDescriptionView *)self titleLabel];
  [v11 setTextColor:v10];

  v12 = [(RCRecordingDescriptionView *)self labelConfiguration];
  v13 = [v12 subtitleTextColor];
  v14 = [(RCRecordingDescriptionView *)self durationLabel];
  [v14 setTextColor:v13];

  v15 = [(RCRecordingDescriptionView *)self labelConfiguration];
  v16 = [v15 subtitleTextColor];
  v17 = [(RCRecordingDescriptionView *)self creationDateOrDownloadingLabel];
  [v17 setTextColor:v16];

  v18 = [(RCRecordingDescriptionView *)self labelConfiguration];
  v19 = [v18 subtitleTextColor];
  v20 = [(RCRecordingDescriptionView *)self transcriptAvailableImageView];
  [v20 setTintColor:v19];

  v23 = [(RCRecordingDescriptionView *)self labelConfiguration];
  v21 = [v23 subtitleTextColor];
  v22 = [(RCRecordingDescriptionView *)self multiTrackIndicatorImageView];
  [v22 setTintColor:v21];
}

- (void)_updateStackIfNeeded
{
  v6 = +[RCRecorderStyleProvider sharedStyleProvider];
  v3 = [v6 isAccessibilityLargerTextSizeEnabled];
  v4 = ([(RCRecordingDescriptionView *)self style]== 1) & v3;
  if (v3)
  {
    v5 = 4.0;
  }

  else
  {
    v5 = 8.0;
  }

  [(NUIContainerStackView *)self->_dateAndDurationStack setAxis:v3];
  [(NUIContainerStackView *)self->_dateAndDurationStack setSpacing:v5];
  [(NUIContainerStackView *)self->_dateAndDurationStack setAlignment:v4];
  [(UIView *)self->_dateAndDurationEmptySpacerView setHidden:v4];
}

- (void)_styleView
{
  v9 = +[RCRecorderStyleProvider sharedStyleProvider];
  v3 = [(RCRecordingDescriptionView *)self style];
  v4 = [(RCRecordingDescriptionView *)self creationDateOrDownloadingLabel];
  if (v3 == 1)
  {
    v5 = [v9 creationDateLabelFontForRecordingCollectionViewCell];
    [v4 setFont:v5];

    [v9 durationLabelFontForRecordingCollectionViewCell];
  }

  else
  {
    v6 = [v9 creationDateLabelFontForCardView];
    [v4 setFont:v6];

    [v9 durationLabelFontForCardView];
  }
  v7 = ;
  v8 = [(RCRecordingDescriptionView *)self durationLabel];
  [v8 setFont:v7];

  [(RCRecordingDescriptionView *)self _styleTitle];
  [(RCRecordingDescriptionView *)self setStyle:v3];
}

- (void)_updateTranscriptAvailableViewVisibility
{
  v3 = +[_TtC10VoiceMemos33TranscriptionAvailabilityProvider shared];
  v4 = [v3 deviceIsSupported];

  transcriptAvailableImageView = self->_transcriptAvailableImageView;
  v6 = (self->_displayTranscriptAvailableIcon & v4 & 1) == 0;

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
  v3 = [(RCRecordingDescriptionView *)self moreButton];

  if (v3)
  {
    v4 = +[_TtC10VoiceMemos33TranscriptionAvailabilityProvider shared];
    v5 = [v4 deviceIsSupported];

    if (v5)
    {
      displayTranscriptAvailableIcon = self->_displayTranscriptAvailableIcon;
    }

    else
    {
      displayTranscriptAvailableIcon = 0;
    }

    v7 = [_TtC10VoiceMemos36RCRecordingCellMoreButtonMenuCreator alloc];
    v8 = [(RCRecordingDescriptionView *)self UUID];
    WeakRetained = objc_loadWeakRetained(&self->_actionDelegate);
    v10 = [(RCRecordingCellMoreButtonMenuCreator *)v7 initWithRecordingUUID:v8 actionDelegate:WeakRetained source:self];
    [(RCRecordingDescriptionView *)self setMoreButtonMenuCreator:v10];

    v11 = [(RCRecordingDescriptionView *)self moreButtonMenuCreator];
    v12 = [v11 createMenuWithDisplayShowTranscriptAction:v5 displayCopyTranscriptAction:displayTranscriptAvailableIcon hasMultipleTracks:-[RCRecordingDescriptionView hasMultipleTracks](self isSpatialRecording:{"hasMultipleTracks"), -[RCRecordingDescriptionView isSpatialRecording](self, "isSpatialRecording")}];
    v13 = [(RCRecordingDescriptionView *)self moreButton];
    [v13 setMenu:v12];

    v14 = [(RCRecordingDescriptionView *)self moreButton];
    [v14 setShowsMenuAsPrimaryAction:1];
  }
}

- (void)_setupTitleLabel
{
  v3 = [(RCRecordingDescriptionView *)self titleLabel];
  if (!v3)
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
    v3 = v6;
  }
}

- (void)_updateForPresentedControlsOptions
{
  v3 = [(RCRecordingDescriptionView *)self presentedControl]!= 2;
  v4 = [(RCRecordingDescriptionView *)self moreButton];
  [v4 setHidden:v3];

  v5 = [(RCRecordingDescriptionView *)self presentedControl]!= 1;
  v6 = [(RCRecordingDescriptionView *)self durationLabel];
  [v6 setHidden:v5];
}

- (void)_updateCreationDateOrDownloadingLabel
{
  v22 = [(RCRecordingDescriptionView *)self creationDate];
  if ([(RCRecordingDescriptionView *)self showDownloading])
  {
    v3 = +[NSBundle mainBundle];
    v4 = v3;
    v5 = @"MEMO_IS_DOWNLOADING";
LABEL_5:
    v6 = [v3 localizedStringForKey:v5 value:&stru_100295BB8 table:0];

    v7 = [(RCRecordingDescriptionView *)self creationDateOrDownloadingLabel];
    v8 = [v7 text];
    v9 = [v6 isEqualToString:v8];

    if ((v9 & 1) == 0)
    {
      v10 = [(RCRecordingDescriptionView *)self creationDateOrDownloadingLabel];
      [v10 setText:v6];
    }

    v11 = [(RCRecordingDescriptionView *)self creationDateOrDownloadingLabel];
    [v11 setAccessibilityLabel:v6];

    goto LABEL_8;
  }

  if ([(RCRecordingDescriptionView *)self showSaving])
  {
    v3 = +[NSBundle mainBundle];
    v4 = v3;
    v5 = @"SAVING_CHANGES";
    goto LABEL_5;
  }

  if (v22)
  {
    v12 = +[RCRecorderStyleProvider sharedStyleProvider];
    v13 = [(RCRecordingDescriptionView *)self UUID];
    v6 = [v12 formattedDateStringFromDate:v22 forUUID:v13];

    v14 = [(RCRecordingDescriptionView *)self creationDateOrDownloadingLabel];
    v15 = [v14 text];
    v16 = [v6 isEqualToString:v15];

    if ((v16 & 1) == 0)
    {
      v17 = [(RCRecordingDescriptionView *)self creationDateOrDownloadingLabel];
      [v17 setText:v6];
    }

    v18 = [(RCRecordingDescriptionView *)self creationDateOrDownloadingLabel];
    [v18 setIsAccessibilityElement:1];

    v19 = [(RCRecordingDescriptionView *)self creationDateOrDownloadingLabel];
    v20 = [v19 text];
    v21 = [(RCRecordingDescriptionView *)self creationDateOrDownloadingLabel];
    [v21 setAccessibilityLabel:v20];
  }

  else
  {
    v6 = [(RCRecordingDescriptionView *)self creationDateOrDownloadingLabel];
    [v6 setIsAccessibilityElement:0];
  }

LABEL_8:
}

- (void)setRecordingTitle:(id)a3
{
  v11 = a3;
  v4 = [v11 copy];
  recordingTitle = self->_recordingTitle;
  self->_recordingTitle = v4;

  v6 = [(RCRecordingDescriptionView *)self titleTextField];
  v7 = [v6 text];
  v8 = v7;
  if (v6 && (!v7 || ([v7 isEqualToString:v11] & 1) == 0))
  {
    [v6 setText:v11];
  }

  v9 = [(RCRecordingDescriptionView *)self titleLabel];
  [v9 setText:v11];

  if (v11)
  {
    if (![v11 isEqualToString:&stru_100295BB8])
    {
      v10 = 1;
      goto LABEL_10;
    }

    if (![v11 isEqualToString:&stru_100295BB8])
    {
      goto LABEL_11;
    }
  }

  v10 = 0;
LABEL_10:
  [(RCRecordingDescriptionView *)self setTitleAccessible:v10];
LABEL_11:
}

- (void)setUUID:(id)a3
{
  objc_storeStrong(&self->_UUID, a3);
  v5 = a3;
  v6 = [(RCRecordingDescriptionView *)self moreButtonMenuCreator];
  [v6 setRecordingUUID:v5];
}

- (void)setCreationDate:(id)a3
{
  objc_storeStrong(&self->_creationDate, a3);

  [(RCRecordingDescriptionView *)self _updateCreationDateOrDownloadingLabel];
}

- (void)setHasMultipleTracks:(BOOL)a3
{
  self->_hasMultipleTracks = a3;
  [(RCRecordingDescriptionView *)self _updateMultitrackIndicatorViewVisibility];

  [(RCRecordingDescriptionView *)self _updateMoreButtonMenu];
}

- (void)setShowDownloading:(BOOL)a3
{
  if (self->_showDownloading != a3)
  {
    self->_showDownloading = a3;
    [(RCRecordingDescriptionView *)self _syncDurationVisibility];
    [(RCRecordingDescriptionView *)self _updateCreationDateOrDownloadingLabel];

    [(RCRecordingDescriptionView *)self layoutSubviews];
  }
}

- (void)setShowSaving:(BOOL)a3
{
  if (self->_showSaving != a3)
  {
    self->_showSaving = a3;
    [(RCRecordingDescriptionView *)self _syncDurationVisibility];

    [(RCRecordingDescriptionView *)self _updateCreationDateOrDownloadingLabel];
  }
}

- (void)setLabelConfiguration:(id)a3
{
  objc_storeStrong(&self->_labelConfiguration, a3);

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

  v4 = [(RCRecordingDescriptionView *)self durationLabel];
  [v4 alpha];
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
      v7 = [(RCRecordingDescriptionView *)self durationLabel];
      [v7 setAlpha:v3];
    }
  }
}

- (void)setWasManuallyRenamed:(BOOL)a3
{
  if (self->_wasManuallyRenamed != a3)
  {
    self->_wasManuallyRenamed = a3;
    [RCRecordingDescriptionView configureLineBreakMode:"configureLineBreakMode:force:" force:?];
  }
}

- (void)configureLineBreakMode:(BOOL)a3 force:(BOOL)a4
{
  if (a3)
  {
    v4 = 4;
  }

  else
  {
    v4 = 5;
  }

  if (v4 != self->_lineBreakMode || a4)
  {
    self->_lineBreakMode = v4;
    v7 = [(RCRecordingDescriptionView *)self titleLabel];
    [v7 setLineBreakMode:v4];

    v8 = [(RCRecordingDescriptionView *)self titleTextField];
    if (v8)
    {
      v18 = v8;
      v9 = [v8 defaultTextAttributes];
      v10 = v9;
      if (v9)
      {
        v11 = [v9 objectForKeyedSubscript:NSParagraphStyleAttributeName];
        v12 = v11;
        if (!v11 || [v11 lineBreakMode] != self->_lineBreakMode)
        {
          v13 = objc_alloc_init(NSMutableParagraphStyle);
          [v13 setLineBreakMode:self->_lineBreakMode];
          v14 = [(RCRecordingDescriptionView *)self titleTextField];
          v15 = [v14 defaultTextAttributes];
          v16 = [v15 mutableCopy];

          [v16 setObject:v13 forKeyedSubscript:NSParagraphStyleAttributeName];
          v17 = [(RCRecordingDescriptionView *)self titleTextField];
          [v17 setDefaultTextAttributes:v16];
        }
      }

      v8 = v18;
    }
  }
}

- (void)setRecordingDuration:(double)a3 withHiddenLabel:(BOOL)a4 isDurationLabelAX:(BOOL)a5
{
  v5 = a4;
  self->_recordingDuration = a3;
  if (a5)
  {
    v7 = round(a3);
    v8 = [(RCRecordingDescriptionView *)self durationLabel];
    [v8 setIsAccessibilityElement:1];

    v9 = +[NSBundle mainBundle];
    v10 = [v9 localizedStringForKey:@"DURATION" value:&stru_100295BB8 table:0];
    v11 = [(RCRecordingDescriptionView *)self durationLabel];
    [v11 setAccessibilityLabel:v10];

    v12 = [(RCRecordingDescriptionView *)self durationLabel];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1000513E0;
    v17[3] = &unk_10028ADB8;
    *&v17[4] = v7;
    [v12 _setAccessibilityValueBlock:v17];
  }

  else
  {
    v12 = [(RCRecordingDescriptionView *)self durationLabel];
    [v12 setIsAccessibilityElement:0];
  }

  v13 = [(RCRecordingDescriptionView *)self durationLabel];
  if (v5)
  {
    [(RCRecordingDescriptionView *)self recordingDuration];
    RCLocalizedPlaybackTime();
  }

  else
  {
    RCLocalizedDurationWithHiddenComponents();
  }
  v14 = ;
  v15 = [v13 text];
  v16 = [v14 isEqualToString:v15];

  if ((v16 & 1) == 0)
  {
    [v13 setText:v14];
  }

  if ([(UILabel *)self->_creationDateOrDownloadingLabel isHidden]!= v5)
  {
    [(UILabel *)self->_creationDateOrDownloadingLabel setHidden:v5];
  }
}

- (void)setStyle:(int64_t)a3
{
  self->_style = a3;
  [(RCRecordingDescriptionView *)self _setupConfigurationForStyle:?];

  [(RCRecordingDescriptionView *)self _updateTextFieldFocusabilityForStyle:a3];
}

- (void)_updateTextFieldFocusabilityForStyle:(int64_t)a3
{
  v6 = 0;
  if (!a3)
  {
    v4 = +[RCRecorderStyleProvider sharedStyleProvider];
    v5 = [v4 disablesFocusInRecordingViewTitle];

    if (v5)
    {
      v6 = 1;
    }
  }

  v7 = [(RCRecordingDescriptionView *)self titleTextField];
  [v7 setFocusDisabled:v6];
}

- (void)setPresentedControl:(int64_t)a3
{
  self->_presentedControl = a3;
  if (a3 == 2 && [(RCRecordingDescriptionView *)self _setupMoreButtonIfNeeded])
  {
    [(RCRecordingDescriptionView *)self _setArrangedSubviewsWithTitleDateDurationStack:self->_titleDateDurationStack moreButton:self->_moreButton];
  }

  [(RCRecordingDescriptionView *)self _updateForPresentedControlsOptions];
}

+ (RCRecordingDescriptionView)descriptionViewWithStyle:(int64_t)a3
{
  v3 = [[RCRecordingDescriptionView alloc] initWithStyle:a3];

  return v3;
}

- (void)setTitleEditingAllowed:(BOOL)a3
{
  self->_titleEditingAllowed = a3;
  if (a3)
  {
    [(RCRecordingDescriptionView *)self _switchToTitleTextField];
    titleEditingAllowed = self->_titleEditingAllowed;
  }

  else
  {
    titleEditingAllowed = 0;
  }

  v5 = [(RCRecordingDescriptionView *)self titleTextField];
  [v5 setEnabled:titleEditingAllowed];

  [(RCRecordingDescriptionView *)self setupTitleTextFieldAlignment];
}

- (RCRecordingDescriptionView)initWithStyle:(int64_t)a3
{
  v7.receiver = self;
  v7.super_class = RCRecordingDescriptionView;
  v4 = [(RCRecordingDescriptionView *)&v7 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  v5 = v4;
  if (v4)
  {
    [(RCRecordingDescriptionView *)v4 _commonInitWithStyle:a3];
  }

  return v5;
}

- (RCRecordingDescriptionView)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = RCRecordingDescriptionView;
  v3 = [(RCRecordingDescriptionView *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(RCRecordingDescriptionView *)v3 _commonInitWithStyle:0];
  }

  return v4;
}

- (RCRecordingDescriptionView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = RCRecordingDescriptionView;
  v3 = [(RCRecordingDescriptionView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(RCRecordingDescriptionView *)v3 _commonInitWithStyle:0];
  }

  return v4;
}

- (void)_commonInitWithStyle:(int64_t)a3
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
  if (a3 == 1)
  {
    LODWORD(v9) = 1148846080;
    [v8 setContentHuggingPriority:0 forAxis:v9];
  }

  v39 = v8;
  v10 = objc_opt_new();
  [(RCRecordingDescriptionView *)self setDurationLabel:v10];
  [v10 setAdjustsFontForContentSizeCategory:1];
  [v10 setNumberOfLines:0];
  if (a3 == 1)
  {
    LODWORD(v11) = 1144750080;
    [v10 setContentHuggingPriority:0 forAxis:v11];
  }

  v12 = +[RCRecorderStyleProvider sharedStyleProvider];
  v13 = [v12 transcriptionImage];

  v38 = v13;
  v14 = [[UIImageView alloc] initWithImage:v13];
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
  v20 = [v19 multiTrackIndicatorImage];

  v21 = [[UIImageView alloc] initWithImage:v20];
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

  v29 = [(RCRecordingDescriptionView *)self titleTextField];
  v30 = [v29 text];
  v31 = [v30 isEqualToString:&stru_100295BB8];

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

- (void)_setupConfigurationForStyle:(int64_t)a3
{
  if (a3)
  {
    if (a3 != 1)
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
  v4 = [v3 userInterfaceLayoutDirection];

  v5 = [(RCRecordingDescriptionView *)self titleTextField];
  v7 = v5;
  if (v4 == 1)
  {
    v6 = 2;
  }

  else
  {
    v6 = 4;
  }

  [v5 setTextAlignment:v6];
}

- (BOOL)_setupMoreButtonIfNeeded
{
  v3 = [(RCRecordingDescriptionView *)self moreButton];

  if (!v3)
  {
    v4 = [UIButton buttonWithType:1];
    [(RCRecordingDescriptionView *)self setMoreButton:v4];
    v5 = +[RCRecorderStyleProvider sharedStyleProvider];
    v6 = [v5 ellipsisImage];
    v7 = [v5 shuttleBarImageSymbolConfiguration];
    v8 = [v6 imageWithConfiguration:v7];
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

    v13 = [v4 accessibilityLabel];
    [v4 setLargeContentTitle:v13];

    [v4 setShowsLargeContentViewer:1];
    [(RCRecordingDescriptionView *)self _updateMoreButtonMenu];
    [v4 addTarget:self action:"_menuActionTriggeredByMoreButton:" forControlEvents:0x4000];
  }

  return v3 == 0;
}

- (void)_setArrangedSubviewsWithTitleDateDurationStack:(id)a3 moreButton:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6 && v7)
  {
    v13 = v6;
    v14 = v7;
    v9 = &v13;
    v10 = 2;
LABEL_6:
    v11 = [NSArray arrayWithObjects:v9 count:v10, v12, v13, v14];
    [(RCRecordingDescriptionView *)self setArrangedSubviews:v11];

    goto LABEL_7;
  }

  if (v6)
  {
    v12 = v6;
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

- (void)_setupStackForStyle:(int64_t)a3
{
  v5 = +[RCRecorderStyleProvider sharedStyleProvider];
  v6 = v5;
  if (a3 == 1 && [v5 usesTitleLabelPerfOptimization])
  {
    [(RCRecordingDescriptionView *)self _setupTitleLabel];
    v7 = [(RCRecordingDescriptionView *)self titleLabel];
  }

  else
  {
    [(RCRecordingDescriptionView *)self _setupTitleTextField];
    [(RCRecordingDescriptionView *)self setTitleEditingAllowed:1];
    v7 = [(RCRecordingDescriptionView *)self titleTextField];
  }

  v8 = v7;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10005212C;
  v11[3] = &unk_10028ADE0;
  v11[4] = self;
  v12 = v7;
  v13 = v6;
  v14 = a3;
  v9 = v6;
  v10 = v8;
  [(RCRecordingDescriptionView *)self performBatchUpdates:v11];
}

- (void)updateForDisplayMode:(int64_t)a3
{
  self->_isInCompactDisplayMode = a3 == 0;
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
  if (!a3)
  {
    [v7 descriptionCompactViewTitleToSecondaryPadding];
  }

  [(NUIContainerStackView *)self->_titleDateDurationStack setSpacing:?];
  [(UILabel *)self->_creationDateOrDownloadingLabel setHidden:a3 == 0];
  v6 = [(RCRecordingDescriptionView *)self durationLabel];
  [v6 setFont:v5];

  [(RCRecordingDescriptionView *)self _updateTranscriptAvailableViewVisibility];
  [(RCRecordingDescriptionView *)self _updateMultitrackIndicatorViewVisibility];
  [(RCRecordingDescriptionView *)self _styleView];
}

- (void)_traitCollectionDidChange:(id)a3 previousTraitCollection:(id)a4
{
  v8 = a4;
  if ([(RCRecordingDescriptionView *)self style]== 1)
  {
    v5 = [(RCRecordingDescriptionView *)self traitCollection];
    v6 = [v5 userInterfaceStyle];
    v7 = [v8 userInterfaceStyle];

    if (v6 != v7)
    {
      [(RCRecordingDescriptionView *)self _applyLabelConfiguration];
    }
  }

  [(RCRecordingDescriptionView *)self _updateStackIfNeeded];
}

- (void)_menuActionTriggeredByMoreButton:(id)a3
{
  v4 = [(RCRecordingDescriptionView *)self titleTextField];
  v5 = [v4 isEditing];

  if (v5)
  {

    [(RCRecordingDescriptionView *)self endEditingTitle];
  }
}

- (void)deviceTranscriptionSupportDidChange:(BOOL)a3
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
    v6 = [v5 shouldSelectFullTitleAtBeginEditing];

    if (v6)
    {
      v7 = [(RCRecordingDescriptionView *)self titleTextField];
      [v7 selectAll:0];
    }
  }
}

- (void)textFieldDidBeginEditing:(id)a3
{
  v8 = a3;
  v4 = [v8 text];
  [(RCRecordingDescriptionView *)self setPreEditingName:v4];

  [(RCRecordingDescriptionView *)self _maybeSelectAllTextFieldText];
  WeakRetained = objc_loadWeakRetained(&self->_recordingDescriptionViewDelegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_recordingDescriptionViewDelegate);
    [v7 didBeginEditingInTextField:v8];
  }
}

- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5
{
  length = a4.length;
  location = a4.location;
  v8 = a5;
  v9 = a3;
  if ([v8 isEqualToString:@"\n"])
  {
    [v9 resignFirstResponder];

    v10 = 0;
  }

  else
  {
    v11 = [v9 text];

    v12 = [v11 length];
    v13 = [v8 length];
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

- (void)textFieldDidEndEditing:(id)a3
{
  v12 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_recordingDescriptionViewDelegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_recordingDescriptionViewDelegate);
    [v6 didEndEditingInTextField];
  }

  v7 = [v12 text];
  if ([v7 length] && (objc_msgSend(v12, "text"), v8 = objc_claimAutoreleasedReturnValue(), -[RCRecordingDescriptionView preEditingName](self, "preEditingName"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v8, "isEqualToString:", v9), v9, v8, (v10 & 1) == 0))
  {
    v11 = objc_loadWeakRetained(&self->_recordingDescriptionViewDelegate);
    [v11 handleUpdateTitle:v7];
  }

  else
  {
    v11 = [(RCRecordingDescriptionView *)self preEditingName];
    [v12 setText:v11];
  }
}

- (id)accessibilityElements
{
  v3 = +[NSMutableArray array];
  v4 = [(RCRecordingDescriptionView *)self titleTextField];

  if (v4)
  {
    v5 = [(RCRecordingDescriptionView *)self titleTextField];
    [v3 addObject:v5];
  }

  v6 = [(RCRecordingDescriptionView *)self creationDateOrDownloadingLabel];

  if (v6)
  {
    v7 = [(RCRecordingDescriptionView *)self creationDateOrDownloadingLabel];
    v8 = [v7 isHidden];

    if ((v8 & 1) == 0)
    {
      v9 = [(RCRecordingDescriptionView *)self creationDateOrDownloadingLabel];
      [v3 addObject:v9];
    }
  }

  v10 = [(RCRecordingDescriptionView *)self transcriptAvailableImageView];
  if (v10)
  {
    v11 = v10;
    v12 = [(RCRecordingDescriptionView *)self transcriptAvailableImageView];
    v13 = [v12 isHidden];

    if ((v13 & 1) == 0)
    {
      v14 = [(RCRecordingDescriptionView *)self transcriptAvailableImageView];
      [v3 addObject:v14];
    }
  }

  v15 = [(RCRecordingDescriptionView *)self multiTrackIndicatorImageView];
  if (v15)
  {
    v16 = v15;
    v17 = [(RCRecordingDescriptionView *)self multiTrackIndicatorImageView];
    v18 = [v17 isHidden];

    if ((v18 & 1) == 0)
    {
      v19 = [(RCRecordingDescriptionView *)self multiTrackIndicatorImageView];
      [v3 addObject:v19];
    }
  }

  v20 = [(RCRecordingDescriptionView *)self durationLabel];
  if (v20)
  {
    v21 = v20;
    v22 = [(RCRecordingDescriptionView *)self durationLabel];
    v23 = [v22 isHidden];

    if ((v23 & 1) == 0)
    {
      v24 = [(RCRecordingDescriptionView *)self durationLabel];
      [v3 addObject:v24];
    }
  }

  v25 = [(RCRecordingDescriptionView *)self moreButton];
  if (v25)
  {
    v26 = v25;
    v27 = [(RCRecordingDescriptionView *)self moreButton];
    v28 = [v27 isHidden];

    if ((v28 & 1) == 0)
    {
      v29 = [(RCRecordingDescriptionView *)self moreButton];
      [v3 addObject:v29];
    }
  }

  return v3;
}

- (NSString)axCreationDateString
{
  v2 = [(RCRecordingDescriptionView *)self creationDateOrDownloadingLabel];
  v3 = [v2 accessibilityLabel];

  return v3;
}

- (NSString)axTranscriptAvailableString
{
  v2 = [(RCRecordingDescriptionView *)self transcriptAvailableImageView];
  v3 = [v2 accessibilityLabel];

  return v3;
}

- (NSString)axMultiTrackIndicatorString
{
  v2 = [(RCRecordingDescriptionView *)self multiTrackIndicatorImageView];
  v3 = [v2 accessibilityLabel];

  return v3;
}

- (NSString)axDurationString
{
  v2 = [(RCRecordingDescriptionView *)self durationLabel];
  v3 = [v2 accessibilityLabel];

  return v3;
}

- (void)setDurationLabelAccessible:(BOOL)a3
{
  v3 = a3;
  v4 = [(RCRecordingDescriptionView *)self durationLabel];
  [v4 setIsAccessibilityElement:v3];
}

- (BOOL)isTitleAccessible
{
  v3 = [(RCRecordingDescriptionView *)self titleTextField];
  if ([v3 isAccessibilityElement])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(RCRecordingDescriptionView *)self titleLabel];
    v4 = [v5 isAccessibilityElement];
  }

  return v4;
}

- (void)setTitleAccessible:(BOOL)a3
{
  v3 = a3;
  v5 = [(RCRecordingDescriptionView *)self titleTextField];
  [v5 setIsAccessibilityElement:v3];

  v6 = [(RCRecordingDescriptionView *)self titleLabel];
  [v6 setIsAccessibilityElement:v3];
}

- (void)addTitleAccessibilityTraits:(unint64_t)a3
{
  v5 = [(RCRecordingDescriptionView *)self titleTextField];
  [v5 setAccessibilityTraits:{objc_msgSend(v5, "accessibilityTraits") | a3}];

  v6 = [(RCRecordingDescriptionView *)self titleLabel];
  [v6 setAccessibilityTraits:{objc_msgSend(v6, "accessibilityTraits") | a3}];
}

- (void)removeTitleAccessibilityTraits:(unint64_t)a3
{
  v5 = [(RCRecordingDescriptionView *)self titleTextField];
  [v5 setAccessibilityTraits:{objc_msgSend(v5, "accessibilityTraits") & ~a3}];

  v6 = [(RCRecordingDescriptionView *)self titleLabel];
  [v6 setAccessibilityTraits:{objc_msgSend(v6, "accessibilityTraits") & ~a3}];
}

- (void)beginEditingTitle
{
  v2 = [(RCRecordingDescriptionView *)self titleTextField];
  [v2 becomeFirstResponder];
}

- (void)_endEditingTitleDueToNotification
{
  v3 = [(RCRecordingDescriptionView *)self titleTextField];
  v4 = [v3 isEditing];

  if (v4)
  {
    v5 = [(RCRecordingDescriptionView *)self titleTextField];
    [v5 endEditing:0];
  }
}

- (void)endEditingTitle
{
  v2 = [(RCRecordingDescriptionView *)self titleTextField];
  [v2 endEditing:1];
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