@interface RCShuttleBar
- (CGRect)containerView:(id)view layoutFrameForArrangedSubview:(id)subview withProposedFrame:(CGRect)frame;
- (RCControlsActionDelegate)actionDelegate;
- (RCShuttleBar)initWithShuttleBarStyle:(int64_t)style;
- (id)_imageForState:(int64_t)state inStyle:(int64_t)style;
- (id)_pauseImageForStyle:(int64_t)style;
- (id)_playImageForStyle:(int64_t)style;
- (void)_commonInit;
- (void)_handleDelete;
- (void)_handleEditRecording;
- (void)_handleErase;
- (void)_handleJumpBackward;
- (void)_handleJumpForward;
- (void)_handlePlayPause;
- (void)_handleUndelete;
- (void)_setupDeleteButton;
- (void)_setupEditRecordingButton;
- (void)_setupRecoverButton;
- (void)_syncCenterClusterSpacing;
- (void)_syncForStyleChanges;
- (void)_syncToStyleAndPlayControlState;
- (void)_updateButtonColors;
- (void)_updateForPresentedControlsOptions;
- (void)_updateGlassBackgroundStyling;
- (void)cancelScrubbing;
- (void)detailSlider:(id)slider didChangeTimeValue:(float)value;
- (void)detailSliderTrackingDidBegin:(id)begin;
- (void)detailSliderTrackingDidCancel:(id)cancel;
- (void)detailSliderTrackingDidEnd:(id)end;
- (void)layoutSubviews;
- (void)restyle;
- (void)setControlsAnimationColor:(id)color;
- (void)setControlsColor:(id)color;
- (void)setCurrentTime:(double)time;
- (void)setDuration:(double)duration;
- (void)setEnabled:(BOOL)enabled;
- (void)setRecentlyDeleted:(BOOL)deleted;
- (void)setSecondaryControlsColor:(id)color;
- (void)updateWidthOnSizeChange;
@end

@implementation RCShuttleBar

- (void)_commonInit
{
  [(RCShuttleBar *)self setArrangedSubviewRemovalPolicy:2];
  v3 = +[RCRecorderStyleProvider sharedStyleProvider];
  [(RCShuttleBar *)self _updateGlassBackgroundStyling];
  v4 = objc_opt_new();
  v5 = NUIContainerViewLengthUseDefault;
  [v4 setMaximumLayoutSize:{50.0, NUIContainerViewLengthUseDefault}];
  [v4 setMinimumLayoutSize:{v5, 20.0}];
  [(RCShuttleBar *)self setTimelineSlider:v4];
  [v4 setDelegate:self];
  LODWORD(v6) = 1148846080;
  [v4 setContentHuggingPriority:1 forAxis:v6];
  [v4 setClipsToBounds:0];
  [v3 centerClusterWidthLibrary];
  self->_centerClusterWidthLibrary = v7;
  v8 = +[RCTouchInsetsButton touchInsetsButton];
  jumpBackwardButton = self->_jumpBackwardButton;
  self->_jumpBackwardButton = v8;

  [(RCTouchInsetsButton *)self->_jumpBackwardButton addTarget:self action:"_handleJumpBackward" forControlEvents:64];
  v10 = +[NSBundle mainBundle];
  v11 = [v10 localizedStringForKey:@"REWIND_BUTTON" value:&stru_100295BB8 table:0];
  [(RCTouchInsetsButton *)self->_jumpBackwardButton setAccessibilityLabel:v11];

  [(RCTouchInsetsButton *)self->_jumpBackwardButton setAccessibilityIdentifier:@"ShuttleBar/RewindButton"];
  v12 = +[NSBundle mainBundle];
  v13 = [v12 localizedStringForKey:@"REWIND_BUTTON" value:&stru_100295BB8 table:0];
  [(RCTouchInsetsButton *)self->_jumpBackwardButton setLargeContentTitle:v13];

  v14 = self->_jumpBackwardButton;
  v15 = +[RCRecorderStyleProvider sharedStyleProvider];
  libraryGoBackwardImage = [v15 libraryGoBackwardImage];
  [(RCTouchInsetsButton *)v14 setImage:libraryGoBackwardImage forState:0];

  v17 = +[RCTouchInsetsButton touchInsetsButton];
  jumpForwardButton = self->_jumpForwardButton;
  self->_jumpForwardButton = v17;

  [(RCTouchInsetsButton *)self->_jumpForwardButton addTarget:self action:"_handleJumpForward" forControlEvents:64];
  v19 = +[NSBundle mainBundle];
  v20 = [v19 localizedStringForKey:@"FASTFORWARD_BUTTON" value:&stru_100295BB8 table:0];
  [(RCTouchInsetsButton *)self->_jumpForwardButton setAccessibilityLabel:v20];

  [(RCTouchInsetsButton *)self->_jumpForwardButton setAccessibilityIdentifier:@"ShuttleBar/FastForwardButton"];
  v21 = +[NSBundle mainBundle];
  v22 = [v21 localizedStringForKey:@"FASTFORWARD_BUTTON" value:&stru_100295BB8 table:0];
  [(RCTouchInsetsButton *)self->_jumpForwardButton setLargeContentTitle:v22];

  v23 = self->_jumpForwardButton;
  v24 = +[RCRecorderStyleProvider sharedStyleProvider];
  libraryGoForwardImage = [v24 libraryGoForwardImage];
  [(RCTouchInsetsButton *)v23 setImage:libraryGoForwardImage forState:0];

  if ([(RCShuttleBar *)self style])
  {
    [v3 cardCenterClusterMaximumControlSize];
    [(RCTouchInsetsButton *)self->_jumpForwardButton setMaximumLayoutSize:?];
    [v3 cardCenterClusterMaximumControlSize];
    [(RCTouchInsetsButton *)self->_jumpBackwardButton setMaximumLayoutSize:?];
  }

  v26 = +[RCTouchInsetsButton touchInsetsButton];
  playPauseButton = self->_playPauseButton;
  self->_playPauseButton = v26;

  [(RCTouchInsetsButton *)self->_playPauseButton addTarget:self action:"_handlePlayPause" forControlEvents:64];
  LODWORD(v28) = 1148846080;
  [(RCTouchInsetsButton *)self->_playPauseButton setContentCompressionResistancePriority:0 forAxis:v28];
  v29 = +[NSBundle mainBundle];
  v30 = [v29 localizedStringForKey:@"AX_PLAY" value:&stru_100295BB8 table:0];
  [(RCTouchInsetsButton *)self->_playPauseButton setAccessibilityLabel:v30];

  v31 = self->_playPauseButton;
  accessibilityTraits = [(RCTouchInsetsButton *)v31 accessibilityTraits];
  [(RCTouchInsetsButton *)v31 setAccessibilityTraits:UIAccessibilityTraitStartsMediaSession | accessibilityTraits];
  v33 = [NUIContainerBoxView alloc];
  v90 = self->_playPauseButton;
  v34 = [NSArray arrayWithObjects:&v90 count:1];
  v35 = [v33 initWithArrangedSubviews:v34];

  if ([(RCShuttleBar *)self style])
  {
    [v3 cardCenterClusterMinimumControlSize];
    v37 = v36;
    v39 = v38;
    [v3 cardCenterClusterMaximumControlSize];
    v41 = v40;
    v43 = v42;
  }

  else
  {
    [v3 libraryCenterClusterControlSize];
    v41 = v44;
    v43 = v45;
    v39 = v45;
    v37 = v44;
  }

  [v35 setMinimumLayoutSize:{v37, v39}];
  [v35 setMaximumLayoutSize:{v41, v43}];
  [(RCShuttleBar *)self setPlayPauseBusyContainerView:v35];
  v46 = [NUIContainerStackView alloc];
  v89[0] = self->_jumpBackwardButton;
  v89[1] = v35;
  v78 = v35;
  v89[2] = self->_jumpForwardButton;
  v47 = [NSArray arrayWithObjects:v89 count:3];
  v48 = [v46 initWithArrangedSubviews:v47];

  [v48 setDelegate:self];
  [v48 setArrangedSubviewRemovalPolicy:2];
  [(RCShuttleBar *)self setCenterClusterStackView:v48];
  [v48 setAxis:0];
  [v48 setDistribution:2];
  [v48 setAlignment:3];
  [v48 setSemanticContentAttribute:1];
  if ([(RCShuttleBar *)self style]== 1)
  {
    [v3 shuttleBarCenterClusterSpacing];
    v50 = v49;
    centerClusterStackView = [(RCShuttleBar *)self centerClusterStackView];
    [centerClusterStackView setSpacing:v50];

    [v3 shuttleBarCenterClusterHorizontalEdgeInsets];
    v53 = v52;
    centerClusterStackView2 = [(RCShuttleBar *)self centerClusterStackView];
    [centerClusterStackView2 setCustomAlignmentRectInsets:{0.0, v53, 0.0, v53}];
  }

  v79 = v3;
  [(RCShuttleBar *)self _setupEditRecordingButton];
  [(RCShuttleBar *)self _setupRecoverButton];
  [(RCShuttleBar *)self _setupDeleteButton];
  v88[0] = v4;
  v88[1] = v4;
  v88[2] = v4;
  v55 = [NSArray arrayWithObjects:v88 count:3];
  v87 = v48;
  v56 = [NSArray arrayWithObjects:&v87 count:1];
  if (![(RCShuttleBar *)self style])
  {
    recentlyDeleted = [(RCShuttleBar *)self recentlyDeleted];
    v58 = &OBJC_IVAR___RCShuttleBar__editRecordingButton;
    if (recentlyDeleted)
    {
      v58 = &OBJC_IVAR___RCShuttleBar__recoverButton;
    }

    v86[0] = *&self->NUIContainerGridView_opaque[*v58];
    v86[1] = v48;
    v86[2] = self->_deleteButton;
    v59 = v86[0];
    v60 = [NSArray arrayWithObjects:v86 count:3];

    v56 = v60;
  }

  v80[0] = _NSConcreteStackBlock;
  v80[1] = 3221225472;
  v80[2] = sub_10000D1B4;
  v80[3] = &unk_10028A9B0;
  v80[4] = self;
  v61 = v55;
  v81 = v61;
  v62 = v4;
  v82 = v62;
  v77 = v56;
  v83 = v77;
  [(RCShuttleBar *)self performBatchUpdates:v80];
  [(RCShuttleBar *)self _syncToStyleAndPlayControlState];
  style = [(RCShuttleBar *)self style];
  timelineSlider = [(RCShuttleBar *)self timelineSlider];
  v65 = timelineSlider;
  if (style)
  {
    v84[0] = timelineSlider;
    jumpBackwardButton = [(RCShuttleBar *)self jumpBackwardButton];
    v84[1] = jumpBackwardButton;
    playPauseButton = [(RCShuttleBar *)self playPauseButton];
    v84[2] = playPauseButton;
    jumpForwardButton = [(RCShuttleBar *)self jumpForwardButton];
    v84[3] = jumpForwardButton;
    playPauseButton2 = [NSArray arrayWithObjects:v84 count:4];
    [(RCShuttleBar *)self setAccessibilityElements:playPauseButton2];
  }

  else
  {
    v85[0] = timelineSlider;
    jumpBackwardButton = [(RCShuttleBar *)self recoverButton];
    v85[1] = jumpBackwardButton;
    playPauseButton = [(RCShuttleBar *)self editRecordingButton];
    v85[2] = playPauseButton;
    jumpForwardButton = [(RCShuttleBar *)self jumpBackwardButton];
    v85[3] = jumpForwardButton;
    playPauseButton2 = [(RCShuttleBar *)self playPauseButton];
    v85[4] = playPauseButton2;
    [(RCShuttleBar *)self jumpForwardButton];
    v70 = v76 = v62;
    v85[5] = v70;
    [(RCShuttleBar *)self deleteButton];
    v71 = v75 = v61;
    v85[6] = v71;
    v72 = [NSArray arrayWithObjects:v85 count:7];
    [(RCShuttleBar *)self setAccessibilityElements:v72];

    v61 = v75;
    v62 = v76;
  }

  v73 = objc_alloc_init(UILargeContentViewerInteraction);
  [(RCShuttleBar *)self addInteraction:v73];

  v74 = +[NSNotificationCenter defaultCenter];
  [v74 addObserver:self selector:"didChangePreferredContentSize" name:UIContentSizeCategoryDidChangeNotification object:0];
}

- (void)_setupEditRecordingButton
{
  editRecordingButton = [(RCShuttleBar *)self editRecordingButton];
  if (!editRecordingButton)
  {
    editRecordingButton = +[RCTouchInsetsButton touchInsetsButton];
    v3 = +[RCRecorderStyleProvider sharedStyleProvider];
    shuttleBarImageSymbolConfiguration = [v3 shuttleBarImageSymbolConfiguration];
    editButtonImage = [v3 editButtonImage];
    v6 = [editButtonImage imageWithConfiguration:shuttleBarImageSymbolConfiguration];

    [editRecordingButton setImage:v6 forState:0];
    v7 = +[NSBundle mainBundle];
    v8 = [v7 localizedStringForKey:@"AX_EDIT_RECORDING" value:&stru_100295BB8 table:0];

    [editRecordingButton setAccessibilityLabel:v8];
    [editRecordingButton setLargeContentTitle:v8];
    [editRecordingButton setAccessibilityIdentifier:@"ShuttleBar/EditRecordingButton"];
    [editRecordingButton intrinsicContentSize];
    v10 = v9;
    v12 = v11;
    [editRecordingButton setMinimumLayoutSize:?];
    [editRecordingButton setMaximumLayoutSize:{v10, v12}];
    [(RCShuttleBar *)self setEditRecordingButton:editRecordingButton];
  }

  [(RCShuttleBar *)self setClipsToBounds:0];
  [editRecordingButton addTarget:self action:"_handleEditRecording" forControlEvents:64];
}

- (void)_setupRecoverButton
{
  recoverButton = [(RCShuttleBar *)self recoverButton];
  v3 = +[RCRecorderStyleProvider sharedStyleProvider];
  if (!recoverButton)
  {
    recoverButton = +[RCTouchInsetsButton touchInsetsButton];
    [(RCShuttleBar *)self setRecoverButton:?];
  }

  [(RCShuttleBar *)self setClipsToBounds:0];
  [v3 centerClusterControlSizeRecentlyDeleted];
  v5 = v4;
  v7 = v6;
  [recoverButton setMinimumLayoutSize:?];
  [recoverButton setMaximumLayoutSize:{v5, v7}];
  v8 = +[NSBundle mainBundle];
  v9 = [v8 localizedStringForKey:@"RECOVER" value:&stru_100295BB8 table:0];
  [recoverButton setTitle:v9 forState:0];

  [recoverButton addTarget:self action:"_handleUndelete" forControlEvents:64];
  v10 = +[NSBundle mainBundle];
  v11 = [v10 localizedStringForKey:@"RECOVER" value:&stru_100295BB8 table:0];
  [recoverButton setAccessibilityLabel:v11];

  [recoverButton setAccessibilityIdentifier:@"ShuttleBar/RecoverButton"];
  [recoverButton setContentHorizontalAlignment:4];
  accessibilityLabel = [recoverButton accessibilityLabel];
  [recoverButton setLargeContentTitle:accessibilityLabel];
}

- (void)_setupDeleteButton
{
  deleteButton = [(RCShuttleBar *)self deleteButton];
  v3 = +[RCRecorderStyleProvider sharedStyleProvider];
  if (!deleteButton)
  {
    deleteButton = +[RCTouchInsetsButton touchInsetsButton];
    [deleteButton setContentHorizontalAlignment:5];
    [(RCShuttleBar *)self setDeleteButton:deleteButton];
  }

  [(RCShuttleBar *)self setClipsToBounds:0];
  if ([(RCShuttleBar *)self recentlyDeleted])
  {
    [deleteButton setImage:0 forState:0];
    v4 = +[NSBundle mainBundle];
    v5 = [v4 localizedStringForKey:@"DELETE" value:&stru_100295BB8 table:0];
    [deleteButton setTitle:v5 forState:0];

    [deleteButton removeTarget:self action:"_handleDelete" forControlEvents:64];
    [deleteButton addTarget:self action:"_handleErase" forControlEvents:64];
    v6 = +[NSBundle mainBundle];
    v7 = [v6 localizedStringForKey:@"AX_DELETE" value:&stru_100295BB8 table:0];
    [deleteButton setAccessibilityLabel:v7];

    [deleteButton setAccessibilityIdentifier:@"ShuttleBar/EraseButton"];
    [v3 centerClusterControlSizeRecentlyDeleted];
    v9 = v8;
    v11 = v10;
  }

  else
  {
    trashImage = [v3 trashImage];
    shuttleBarImageSymbolConfiguration = [v3 shuttleBarImageSymbolConfiguration];
    v14 = [trashImage imageWithConfiguration:shuttleBarImageSymbolConfiguration];
    [deleteButton setImage:v14 forState:0];
    [deleteButton setTitle:0 forState:0];
    [deleteButton removeTarget:self action:"_handleUndelete" forControlEvents:64];
    [deleteButton addTarget:self action:"_handleDelete" forControlEvents:64];
    v15 = +[NSBundle mainBundle];
    v16 = [v15 localizedStringForKey:@"AX_DELETE" value:&stru_100295BB8 table:0];
    [deleteButton setAccessibilityLabel:v16];

    [deleteButton setAccessibilityIdentifier:@"ShuttleBar/DeleteButton"];
    [deleteButton intrinsicContentSize];
    v9 = v17;
    v11 = v18;
  }

  [deleteButton setMinimumLayoutSize:{v9, v11}];
  [deleteButton setMaximumLayoutSize:{v9, v11}];
  accessibilityLabel = [deleteButton accessibilityLabel];
  [deleteButton setLargeContentTitle:accessibilityLabel];
}

- (void)_syncForStyleChanges
{
  [(RCShuttleBar *)self _syncToStyleAndPlayControlState];

  [(RCShuttleBar *)self _syncCenterClusterSpacing];
}

- (void)_updateForPresentedControlsOptions
{
  presentedControlsOptions = [(RCShuttleBar *)self presentedControlsOptions];
  v4 = [(RCShuttleBar *)self rowAtIndex:0];
  [v4 setHidden:(presentedControlsOptions & 1) == 0];

  v5 = (presentedControlsOptions & 2) == 0;
  deleteButton = [(RCShuttleBar *)self deleteButton];
  [deleteButton setHidden:v5];

  editRecordingButton = [(RCShuttleBar *)self editRecordingButton];
  [editRecordingButton setHidden:v5];

  recoverButton = [(RCShuttleBar *)self recoverButton];
  [recoverButton setHidden:v5];
}

- (void)_syncCenterClusterSpacing
{
  v3 = +[RCRecorderStyleProvider sharedStyleProvider];
  [v3 shuttleBarShouldForceProportionalDistribution];
  v5 = v4;

  if (v5 == 0.0 && ([(RCShuttleBar *)self style]|| [(RCShuttleBar *)self recentlyDeleted]))
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  centerClusterStackView = [(RCShuttleBar *)self centerClusterStackView];
  [centerClusterStackView setDistribution:v6];
}

- (void)_syncToStyleAndPlayControlState
{
  playPauseButton = [(RCShuttleBar *)self playPauseButton];
  style = [(RCShuttleBar *)self style];
  playControlState = [(RCShuttleBar *)self playControlState];
  v5 = playControlState;
  if (playControlState)
  {
    if (playControlState != 1)
    {
      goto LABEL_6;
    }

    v6 = @"PAUSE";
    v7 = @"AX_PAUSE";
  }

  else
  {
    v6 = @"PLAY";
    v7 = @"AX_PLAY";
  }

  [playPauseButton setHidden:0];
  v8 = [(RCShuttleBar *)self _imageForState:v5 inStyle:style];
  [playPauseButton setImage:v8 forState:0];
  v9 = +[NSBundle mainBundle];
  v10 = [v9 localizedStringForKey:v7 value:&stru_100295BB8 table:0];
  [playPauseButton setAccessibilityLabel:v10];

  v11 = +[NSBundle mainBundle];
  v12 = [v11 localizedStringForKey:v6 value:&stru_100295BB8 table:0];
  [playPauseButton setLargeContentTitle:v12];

LABEL_6:
  style2 = [(RCShuttleBar *)self style];
  v14 = +[RCRecorderStyleProvider sharedStyleProvider];
  v15 = v14;
  if (style2 == 1)
  {
    cardGoForwardImage = [v14 cardGoForwardImage];
    cardGoBackwardImage = [v15 cardGoBackwardImage];
  }

  else
  {
    [v14 shuttleBarButtonContainerHeightLibrary];
    v19 = v18;
    [(RCShuttleBar *)self centerClusterWidthLibrary];
    v21 = v20;
    if ([(RCShuttleBar *)self recentlyDeleted])
    {
      [v15 libraryCenterClusterControlSize];
      v21 = v22;
    }

    centerClusterStackView = [(RCShuttleBar *)self centerClusterStackView];
    [centerClusterStackView setSpacing:0.0];

    [v15 shuttleBarAdditionalSliderSpacingLibrary];
    v25 = -v24;
    timelineSlider = [(RCShuttleBar *)self timelineSlider];
    [timelineSlider setCustomAlignmentRectInsets:{v25, 0.0, 0.0, 0.0}];

    [(NUIContainerStackView *)self->_centerClusterStackView setMinimumLayoutSize:v21, v19];
    [(NUIContainerStackView *)self->_centerClusterStackView setMaximumLayoutSize:v21, v19];
    cardGoForwardImage = [v15 libraryGoForwardImage];
    cardGoBackwardImage = [v15 libraryGoBackwardImage];
  }

  v27 = cardGoBackwardImage;
  jumpForwardButton = [(RCShuttleBar *)self jumpForwardButton];
  [jumpForwardButton setImage:cardGoForwardImage forState:0];

  jumpBackwardButton = [(RCShuttleBar *)self jumpBackwardButton];
  [jumpBackwardButton setImage:v27 forState:0];

  if ([v15 transportButtonsAnimateWithCircle])
  {
    v30 = style2 == 1;
    playPauseButton2 = [(RCShuttleBar *)self playPauseButton];
    [playPauseButton2 setShouldAnimateOnTap:v30];

    [v15 transportButtonAnimationPlayCircleRadius];
    v33 = v32;
    playPauseButton3 = [(RCShuttleBar *)self playPauseButton];
    [playPauseButton3 setAnimationCircleRadius:v33];

    jumpForwardButton2 = [(RCShuttleBar *)self jumpForwardButton];
    [jumpForwardButton2 setShouldAnimateOnTap:v30];

    [v15 transportButtonAnimationJumpCircleRadius];
    v37 = v36;
    jumpForwardButton3 = [(RCShuttleBar *)self jumpForwardButton];
    [jumpForwardButton3 setAnimationCircleRadius:v37];

    jumpBackwardButton2 = [(RCShuttleBar *)self jumpBackwardButton];
    [jumpBackwardButton2 setShouldAnimateOnTap:v30];

    [v15 transportButtonAnimationJumpCircleRadius];
    v41 = v40;
    jumpBackwardButton3 = [(RCShuttleBar *)self jumpBackwardButton];
    [jumpBackwardButton3 setAnimationCircleRadius:v41];
  }
}

- (void)_updateButtonColors
{
  if (self->_controlsColor)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    jumpBackwardButton = [(RCShuttleBar *)self jumpBackwardButton];
    v18[0] = jumpBackwardButton;
    jumpForwardButton = [(RCShuttleBar *)self jumpForwardButton];
    v18[1] = jumpForwardButton;
    playPauseButton = [(RCShuttleBar *)self playPauseButton];
    v18[2] = playPauseButton;
    v6 = [NSArray arrayWithObjects:v18 count:3];

    v7 = [v6 countByEnumeratingWithState:&v14 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v14 + 1) + 8 * i);
          [v11 setTintColor:self->_controlsColor];
          [v11 setAnimationCircleColor:self->_controlsAnimationColor];
        }

        v8 = [v6 countByEnumeratingWithState:&v14 objects:v19 count:16];
      }

      while (v8);
    }
  }

  secondaryControlsColor = self->_secondaryControlsColor;
  if (secondaryControlsColor)
  {
    deleteButton = [(RCShuttleBar *)self deleteButton];
    [deleteButton setTintColor:secondaryControlsColor];
  }
}

- (void)updateWidthOnSizeChange
{
  if ([(RCShuttleBar *)self style]== 1)
  {
    v6 = +[RCRecorderStyleProvider sharedStyleProvider];
    [v6 shuttleBarCenterClusterSpacing];
    v4 = v3;
    centerClusterStackView = [(RCShuttleBar *)self centerClusterStackView];
    [centerClusterStackView setSpacing:v4];
  }
}

- (RCShuttleBar)initWithShuttleBarStyle:(int64_t)style
{
  v7.receiver = self;
  v7.super_class = RCShuttleBar;
  v4 = [(RCShuttleBar *)&v7 initWithArrangedSubviewRows:0];
  v5 = v4;
  if (v4)
  {
    v4->_style = style;
    [(RCShuttleBar *)v4 _commonInit];
    [(RCShuttleBar *)v5 _syncForStyleChanges];
    [(RCShuttleBar *)v5 setDelegate:v5];
  }

  return v5;
}

- (void)layoutSubviews
{
  v8.receiver = self;
  v8.super_class = RCShuttleBar;
  [(RCShuttleBar *)&v8 layoutSubviews];
  v3 = +[RCRecorderStyleProvider sharedStyleProvider];
  shuttleBarHasBackground = [v3 shuttleBarHasBackground];
  [(RCShuttleBar *)self bounds];
  if (shuttleBarHasBackground)
  {
    v6 = v5 * 0.5;
    [(RCShuttleBar *)self _cornerRadius];
    if (v7 != v6)
    {
      [(RCShuttleBar *)self _setCornerRadius:v6];
    }
  }
}

- (void)cancelScrubbing
{
  timelineSlider = [(RCShuttleBar *)self timelineSlider];
  [timelineSlider cancelTracking];
}

- (id)_imageForState:(int64_t)state inStyle:(int64_t)style
{
  if (state)
  {
    if (state == 1)
    {
      v4 = [(RCShuttleBar *)self _pauseImageForStyle:style];
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = [(RCShuttleBar *)self _playImageForStyle:style];
  }

  return v4;
}

- (id)_playImageForStyle:(int64_t)style
{
  if (style == 1)
  {
    v3 = +[RCRecorderStyleProvider sharedStyleProvider];
    cardPlayImage = [v3 cardPlayImage];
    goto LABEL_5;
  }

  if (!style)
  {
    v3 = +[RCRecorderStyleProvider sharedStyleProvider];
    cardPlayImage = [v3 libraryPlayImage];
LABEL_5:
    v5 = cardPlayImage;

    goto LABEL_7;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

- (id)_pauseImageForStyle:(int64_t)style
{
  if (style == 1)
  {
    v3 = +[RCRecorderStyleProvider sharedStyleProvider];
    cardPauseImage = [v3 cardPauseImage];
    goto LABEL_5;
  }

  if (!style)
  {
    v3 = +[RCRecorderStyleProvider sharedStyleProvider];
    cardPauseImage = [v3 libraryPauseImage];
LABEL_5:
    v5 = cardPauseImage;

    goto LABEL_7;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

- (void)setEnabled:(BOOL)enabled
{
  self->_enabled = enabled;
  [(RCShuttleBar *)self setUserInteractionEnabled:?];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10003E77C;
  v5[3] = &unk_10028A988;
  v5[4] = self;
  enabledCopy = enabled;
  [UIView animateWithDuration:v5 animations:0.2];
}

- (void)setDuration:(double)duration
{
  self->_duration = duration;
  timelineSlider = [(RCShuttleBar *)self timelineSlider];
  [timelineSlider setDuration:duration];
}

- (void)setCurrentTime:(double)time
{
  v4 = self->_currentTime != self->_duration && time != 0.0;
  self->_currentTime = time;
  timelineSlider = [(RCShuttleBar *)self timelineSlider];
  *&v5 = time;
  [timelineSlider setSliderPositionForTime:v4 animated:v5];
}

- (void)setControlsColor:(id)color
{
  objc_storeStrong(&self->_controlsColor, color);

  [(RCShuttleBar *)self _updateButtonColors];
}

- (void)setSecondaryControlsColor:(id)color
{
  objc_storeStrong(&self->_secondaryControlsColor, color);

  [(RCShuttleBar *)self _updateButtonColors];
}

- (void)setControlsAnimationColor:(id)color
{
  objc_storeStrong(&self->_controlsAnimationColor, color);

  [(RCShuttleBar *)self _updateButtonColors];
}

- (void)setRecentlyDeleted:(BOOL)deleted
{
  if (self->_recentlyDeleted != deleted)
  {
    deletedCopy = deleted;
    self->_recentlyDeleted = deleted;
    if ([(RCShuttleBar *)self numberOfRows]== 2 && [(RCShuttleBar *)self numberOfColumns]== 3)
    {
      if (deletedCopy)
      {
        [(RCShuttleBar *)self _setupRecoverButton];
        [(RCShuttleBar *)self recoverButton];
      }

      else
      {
        [(RCShuttleBar *)self _setupEditRecordingButton];
        [(RCShuttleBar *)self editRecordingButton];
      }
      v5 = ;
      [(RCShuttleBar *)self replaceArrangedSubview:v5 inColumnAtIndex:0 rowAtIndex:1];
    }

    else
    {
      v5 = OSLogForCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        sub_1001B6D68(v5);
      }
    }

    jumpBackwardButton = [(RCShuttleBar *)self jumpBackwardButton];
    [jumpBackwardButton setHidden:deletedCopy];

    jumpForwardButton = [(RCShuttleBar *)self jumpForwardButton];
    [jumpForwardButton setHidden:deletedCopy];

    [(RCShuttleBar *)self _setupDeleteButton];
    [(RCShuttleBar *)self _updateButtonColors];
    [(RCShuttleBar *)self _syncCenterClusterSpacing];
    [(RCShuttleBar *)self _syncToStyleAndPlayControlState];
  }
}

- (void)_updateGlassBackgroundStyling
{
  v3 = +[RCRecorderStyleProvider sharedStyleProvider];
  if ([v3 shuttleBarHasBackground])
  {
    [(RCShuttleBar *)self rc_setGlassBackground];
  }

  else
  {
    [(RCShuttleBar *)self rc_removeGlassBackground];
  }
}

- (void)_handleJumpBackward
{
  actionDelegate = [(RCShuttleBar *)self actionDelegate];
  [actionDelegate performControlsAction:12 position:self source:0.0];

  LODWORD(actionDelegate) = UIAccessibilityLayoutChangedNotification;
  jumpBackwardButton = [(RCShuttleBar *)self jumpBackwardButton];
  UIAccessibilityPostNotification(actionDelegate, jumpBackwardButton);
}

- (void)_handleJumpForward
{
  actionDelegate = [(RCShuttleBar *)self actionDelegate];
  [actionDelegate performControlsAction:11 position:self source:0.0];

  LODWORD(actionDelegate) = UIAccessibilityLayoutChangedNotification;
  jumpForwardButton = [(RCShuttleBar *)self jumpForwardButton];
  UIAccessibilityPostNotification(actionDelegate, jumpForwardButton);
}

- (void)_handlePlayPause
{
  playControlState = [(RCShuttleBar *)self playControlState];
  if (playControlState == 1)
  {
    actionDelegate = [(RCShuttleBar *)self actionDelegate];
    [actionDelegate performControlsAction:1 position:self source:0.0];
  }

  else
  {
    if (playControlState)
    {
      goto LABEL_6;
    }

    actionDelegate = [(RCShuttleBar *)self actionDelegate];
    timelineSlider = [(RCShuttleBar *)self timelineSlider];
    [timelineSlider currentPosition];
    [actionDelegate performControlsAction:0 position:self source:?];
  }

LABEL_6:
  v6 = UIAccessibilityLayoutChangedNotification;
  playPauseButton = [(RCShuttleBar *)self playPauseButton];
  UIAccessibilityPostNotification(v6, playPauseButton);
}

- (void)_handleEditRecording
{
  actionDelegate = [(RCShuttleBar *)self actionDelegate];
  editRecordingButton = [(RCShuttleBar *)self editRecordingButton];
  [actionDelegate performControlsAction:22 position:editRecordingButton source:0.0];
}

- (void)_handleErase
{
  actionDelegate = [(RCShuttleBar *)self actionDelegate];
  deleteButton = [(RCShuttleBar *)self deleteButton];
  [actionDelegate performControlsAction:16 position:deleteButton source:0.0];
}

- (void)_handleDelete
{
  actionDelegate = [(RCShuttleBar *)self actionDelegate];
  deleteButton = [(RCShuttleBar *)self deleteButton];
  [actionDelegate performControlsAction:15 position:deleteButton source:0.0];
}

- (void)_handleUndelete
{
  actionDelegate = [(RCShuttleBar *)self actionDelegate];
  deleteButton = [(RCShuttleBar *)self deleteButton];
  [actionDelegate performControlsAction:19 position:deleteButton source:0.0];
}

- (void)restyle
{
  [(RCShuttleBar *)self _syncToStyleAndPlayControlState];

  [(RCShuttleBar *)self _updateGlassBackgroundStyling];
}

- (void)detailSliderTrackingDidBegin:(id)begin
{
  beginCopy = begin;
  actionDelegate = [(RCShuttleBar *)self actionDelegate];
  [beginCopy currentPosition];
  v6 = v5;

  [actionDelegate performControlsAction:8 position:0 source:v6];
}

- (void)detailSliderTrackingDidEnd:(id)end
{
  endCopy = end;
  actionDelegate = [(RCShuttleBar *)self actionDelegate];
  [endCopy currentPosition];
  v6 = v5;

  [actionDelegate performControlsAction:10 position:0 source:v6];
}

- (void)detailSliderTrackingDidCancel:(id)cancel
{
  cancelCopy = cancel;
  actionDelegate = [(RCShuttleBar *)self actionDelegate];
  [cancelCopy currentPosition];
  v6 = v5;

  [actionDelegate performControlsAction:10 position:0 source:v6];
}

- (void)detailSlider:(id)slider didChangeTimeValue:(float)value
{
  actionDelegate = [(RCShuttleBar *)self actionDelegate];
  [actionDelegate performControlsAction:9 position:0 source:value];
}

- (CGRect)containerView:(id)view layoutFrameForArrangedSubview:(id)subview withProposedFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  viewCopy = view;
  if ([subview isEqual:self->_centerClusterStackView])
  {
    width = floor(width);
    [viewCopy frame];
    MidX = CGRectGetMidX(v18);
    [viewCopy frame];
    x = MidX - v13 + width * -0.5;
  }

  v14 = x;
  v15 = y;
  v16 = width;
  v17 = height;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (RCControlsActionDelegate)actionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_actionDelegate);

  return WeakRetained;
}

@end