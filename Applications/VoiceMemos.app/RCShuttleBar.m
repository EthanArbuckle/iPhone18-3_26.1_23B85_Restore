@interface RCShuttleBar
- (CGRect)containerView:(id)a3 layoutFrameForArrangedSubview:(id)a4 withProposedFrame:(CGRect)a5;
- (RCControlsActionDelegate)actionDelegate;
- (RCShuttleBar)initWithShuttleBarStyle:(int64_t)a3;
- (id)_imageForState:(int64_t)a3 inStyle:(int64_t)a4;
- (id)_pauseImageForStyle:(int64_t)a3;
- (id)_playImageForStyle:(int64_t)a3;
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
- (void)detailSlider:(id)a3 didChangeTimeValue:(float)a4;
- (void)detailSliderTrackingDidBegin:(id)a3;
- (void)detailSliderTrackingDidCancel:(id)a3;
- (void)detailSliderTrackingDidEnd:(id)a3;
- (void)layoutSubviews;
- (void)restyle;
- (void)setControlsAnimationColor:(id)a3;
- (void)setControlsColor:(id)a3;
- (void)setCurrentTime:(double)a3;
- (void)setDuration:(double)a3;
- (void)setEnabled:(BOOL)a3;
- (void)setRecentlyDeleted:(BOOL)a3;
- (void)setSecondaryControlsColor:(id)a3;
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
  v16 = [v15 libraryGoBackwardImage];
  [(RCTouchInsetsButton *)v14 setImage:v16 forState:0];

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
  v25 = [v24 libraryGoForwardImage];
  [(RCTouchInsetsButton *)v23 setImage:v25 forState:0];

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
  v32 = [(RCTouchInsetsButton *)v31 accessibilityTraits];
  [(RCTouchInsetsButton *)v31 setAccessibilityTraits:UIAccessibilityTraitStartsMediaSession | v32];
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
    v51 = [(RCShuttleBar *)self centerClusterStackView];
    [v51 setSpacing:v50];

    [v3 shuttleBarCenterClusterHorizontalEdgeInsets];
    v53 = v52;
    v54 = [(RCShuttleBar *)self centerClusterStackView];
    [v54 setCustomAlignmentRectInsets:{0.0, v53, 0.0, v53}];
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
    v57 = [(RCShuttleBar *)self recentlyDeleted];
    v58 = &OBJC_IVAR___RCShuttleBar__editRecordingButton;
    if (v57)
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
  v63 = [(RCShuttleBar *)self style];
  v64 = [(RCShuttleBar *)self timelineSlider];
  v65 = v64;
  if (v63)
  {
    v84[0] = v64;
    v66 = [(RCShuttleBar *)self jumpBackwardButton];
    v84[1] = v66;
    v67 = [(RCShuttleBar *)self playPauseButton];
    v84[2] = v67;
    v68 = [(RCShuttleBar *)self jumpForwardButton];
    v84[3] = v68;
    v69 = [NSArray arrayWithObjects:v84 count:4];
    [(RCShuttleBar *)self setAccessibilityElements:v69];
  }

  else
  {
    v85[0] = v64;
    v66 = [(RCShuttleBar *)self recoverButton];
    v85[1] = v66;
    v67 = [(RCShuttleBar *)self editRecordingButton];
    v85[2] = v67;
    v68 = [(RCShuttleBar *)self jumpBackwardButton];
    v85[3] = v68;
    v69 = [(RCShuttleBar *)self playPauseButton];
    v85[4] = v69;
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
  v13 = [(RCShuttleBar *)self editRecordingButton];
  if (!v13)
  {
    v13 = +[RCTouchInsetsButton touchInsetsButton];
    v3 = +[RCRecorderStyleProvider sharedStyleProvider];
    v4 = [v3 shuttleBarImageSymbolConfiguration];
    v5 = [v3 editButtonImage];
    v6 = [v5 imageWithConfiguration:v4];

    [v13 setImage:v6 forState:0];
    v7 = +[NSBundle mainBundle];
    v8 = [v7 localizedStringForKey:@"AX_EDIT_RECORDING" value:&stru_100295BB8 table:0];

    [v13 setAccessibilityLabel:v8];
    [v13 setLargeContentTitle:v8];
    [v13 setAccessibilityIdentifier:@"ShuttleBar/EditRecordingButton"];
    [v13 intrinsicContentSize];
    v10 = v9;
    v12 = v11;
    [v13 setMinimumLayoutSize:?];
    [v13 setMaximumLayoutSize:{v10, v12}];
    [(RCShuttleBar *)self setEditRecordingButton:v13];
  }

  [(RCShuttleBar *)self setClipsToBounds:0];
  [v13 addTarget:self action:"_handleEditRecording" forControlEvents:64];
}

- (void)_setupRecoverButton
{
  v13 = [(RCShuttleBar *)self recoverButton];
  v3 = +[RCRecorderStyleProvider sharedStyleProvider];
  if (!v13)
  {
    v13 = +[RCTouchInsetsButton touchInsetsButton];
    [(RCShuttleBar *)self setRecoverButton:?];
  }

  [(RCShuttleBar *)self setClipsToBounds:0];
  [v3 centerClusterControlSizeRecentlyDeleted];
  v5 = v4;
  v7 = v6;
  [v13 setMinimumLayoutSize:?];
  [v13 setMaximumLayoutSize:{v5, v7}];
  v8 = +[NSBundle mainBundle];
  v9 = [v8 localizedStringForKey:@"RECOVER" value:&stru_100295BB8 table:0];
  [v13 setTitle:v9 forState:0];

  [v13 addTarget:self action:"_handleUndelete" forControlEvents:64];
  v10 = +[NSBundle mainBundle];
  v11 = [v10 localizedStringForKey:@"RECOVER" value:&stru_100295BB8 table:0];
  [v13 setAccessibilityLabel:v11];

  [v13 setAccessibilityIdentifier:@"ShuttleBar/RecoverButton"];
  [v13 setContentHorizontalAlignment:4];
  v12 = [v13 accessibilityLabel];
  [v13 setLargeContentTitle:v12];
}

- (void)_setupDeleteButton
{
  v20 = [(RCShuttleBar *)self deleteButton];
  v3 = +[RCRecorderStyleProvider sharedStyleProvider];
  if (!v20)
  {
    v20 = +[RCTouchInsetsButton touchInsetsButton];
    [v20 setContentHorizontalAlignment:5];
    [(RCShuttleBar *)self setDeleteButton:v20];
  }

  [(RCShuttleBar *)self setClipsToBounds:0];
  if ([(RCShuttleBar *)self recentlyDeleted])
  {
    [v20 setImage:0 forState:0];
    v4 = +[NSBundle mainBundle];
    v5 = [v4 localizedStringForKey:@"DELETE" value:&stru_100295BB8 table:0];
    [v20 setTitle:v5 forState:0];

    [v20 removeTarget:self action:"_handleDelete" forControlEvents:64];
    [v20 addTarget:self action:"_handleErase" forControlEvents:64];
    v6 = +[NSBundle mainBundle];
    v7 = [v6 localizedStringForKey:@"AX_DELETE" value:&stru_100295BB8 table:0];
    [v20 setAccessibilityLabel:v7];

    [v20 setAccessibilityIdentifier:@"ShuttleBar/EraseButton"];
    [v3 centerClusterControlSizeRecentlyDeleted];
    v9 = v8;
    v11 = v10;
  }

  else
  {
    v12 = [v3 trashImage];
    v13 = [v3 shuttleBarImageSymbolConfiguration];
    v14 = [v12 imageWithConfiguration:v13];
    [v20 setImage:v14 forState:0];
    [v20 setTitle:0 forState:0];
    [v20 removeTarget:self action:"_handleUndelete" forControlEvents:64];
    [v20 addTarget:self action:"_handleDelete" forControlEvents:64];
    v15 = +[NSBundle mainBundle];
    v16 = [v15 localizedStringForKey:@"AX_DELETE" value:&stru_100295BB8 table:0];
    [v20 setAccessibilityLabel:v16];

    [v20 setAccessibilityIdentifier:@"ShuttleBar/DeleteButton"];
    [v20 intrinsicContentSize];
    v9 = v17;
    v11 = v18;
  }

  [v20 setMinimumLayoutSize:{v9, v11}];
  [v20 setMaximumLayoutSize:{v9, v11}];
  v19 = [v20 accessibilityLabel];
  [v20 setLargeContentTitle:v19];
}

- (void)_syncForStyleChanges
{
  [(RCShuttleBar *)self _syncToStyleAndPlayControlState];

  [(RCShuttleBar *)self _syncCenterClusterSpacing];
}

- (void)_updateForPresentedControlsOptions
{
  v3 = [(RCShuttleBar *)self presentedControlsOptions];
  v4 = [(RCShuttleBar *)self rowAtIndex:0];
  [v4 setHidden:(v3 & 1) == 0];

  v5 = (v3 & 2) == 0;
  v6 = [(RCShuttleBar *)self deleteButton];
  [v6 setHidden:v5];

  v7 = [(RCShuttleBar *)self editRecordingButton];
  [v7 setHidden:v5];

  v8 = [(RCShuttleBar *)self recoverButton];
  [v8 setHidden:v5];
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

  v7 = [(RCShuttleBar *)self centerClusterStackView];
  [v7 setDistribution:v6];
}

- (void)_syncToStyleAndPlayControlState
{
  v43 = [(RCShuttleBar *)self playPauseButton];
  v3 = [(RCShuttleBar *)self style];
  v4 = [(RCShuttleBar *)self playControlState];
  v5 = v4;
  if (v4)
  {
    if (v4 != 1)
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

  [v43 setHidden:0];
  v8 = [(RCShuttleBar *)self _imageForState:v5 inStyle:v3];
  [v43 setImage:v8 forState:0];
  v9 = +[NSBundle mainBundle];
  v10 = [v9 localizedStringForKey:v7 value:&stru_100295BB8 table:0];
  [v43 setAccessibilityLabel:v10];

  v11 = +[NSBundle mainBundle];
  v12 = [v11 localizedStringForKey:v6 value:&stru_100295BB8 table:0];
  [v43 setLargeContentTitle:v12];

LABEL_6:
  v13 = [(RCShuttleBar *)self style];
  v14 = +[RCRecorderStyleProvider sharedStyleProvider];
  v15 = v14;
  if (v13 == 1)
  {
    v16 = [v14 cardGoForwardImage];
    v17 = [v15 cardGoBackwardImage];
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

    v23 = [(RCShuttleBar *)self centerClusterStackView];
    [v23 setSpacing:0.0];

    [v15 shuttleBarAdditionalSliderSpacingLibrary];
    v25 = -v24;
    v26 = [(RCShuttleBar *)self timelineSlider];
    [v26 setCustomAlignmentRectInsets:{v25, 0.0, 0.0, 0.0}];

    [(NUIContainerStackView *)self->_centerClusterStackView setMinimumLayoutSize:v21, v19];
    [(NUIContainerStackView *)self->_centerClusterStackView setMaximumLayoutSize:v21, v19];
    v16 = [v15 libraryGoForwardImage];
    v17 = [v15 libraryGoBackwardImage];
  }

  v27 = v17;
  v28 = [(RCShuttleBar *)self jumpForwardButton];
  [v28 setImage:v16 forState:0];

  v29 = [(RCShuttleBar *)self jumpBackwardButton];
  [v29 setImage:v27 forState:0];

  if ([v15 transportButtonsAnimateWithCircle])
  {
    v30 = v13 == 1;
    v31 = [(RCShuttleBar *)self playPauseButton];
    [v31 setShouldAnimateOnTap:v30];

    [v15 transportButtonAnimationPlayCircleRadius];
    v33 = v32;
    v34 = [(RCShuttleBar *)self playPauseButton];
    [v34 setAnimationCircleRadius:v33];

    v35 = [(RCShuttleBar *)self jumpForwardButton];
    [v35 setShouldAnimateOnTap:v30];

    [v15 transportButtonAnimationJumpCircleRadius];
    v37 = v36;
    v38 = [(RCShuttleBar *)self jumpForwardButton];
    [v38 setAnimationCircleRadius:v37];

    v39 = [(RCShuttleBar *)self jumpBackwardButton];
    [v39 setShouldAnimateOnTap:v30];

    [v15 transportButtonAnimationJumpCircleRadius];
    v41 = v40;
    v42 = [(RCShuttleBar *)self jumpBackwardButton];
    [v42 setAnimationCircleRadius:v41];
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
    v3 = [(RCShuttleBar *)self jumpBackwardButton];
    v18[0] = v3;
    v4 = [(RCShuttleBar *)self jumpForwardButton];
    v18[1] = v4;
    v5 = [(RCShuttleBar *)self playPauseButton];
    v18[2] = v5;
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
    v13 = [(RCShuttleBar *)self deleteButton];
    [v13 setTintColor:secondaryControlsColor];
  }
}

- (void)updateWidthOnSizeChange
{
  if ([(RCShuttleBar *)self style]== 1)
  {
    v6 = +[RCRecorderStyleProvider sharedStyleProvider];
    [v6 shuttleBarCenterClusterSpacing];
    v4 = v3;
    v5 = [(RCShuttleBar *)self centerClusterStackView];
    [v5 setSpacing:v4];
  }
}

- (RCShuttleBar)initWithShuttleBarStyle:(int64_t)a3
{
  v7.receiver = self;
  v7.super_class = RCShuttleBar;
  v4 = [(RCShuttleBar *)&v7 initWithArrangedSubviewRows:0];
  v5 = v4;
  if (v4)
  {
    v4->_style = a3;
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
  v4 = [v3 shuttleBarHasBackground];
  [(RCShuttleBar *)self bounds];
  if (v4)
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
  v2 = [(RCShuttleBar *)self timelineSlider];
  [v2 cancelTracking];
}

- (id)_imageForState:(int64_t)a3 inStyle:(int64_t)a4
{
  if (a3)
  {
    if (a3 == 1)
    {
      v4 = [(RCShuttleBar *)self _pauseImageForStyle:a4];
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = [(RCShuttleBar *)self _playImageForStyle:a4];
  }

  return v4;
}

- (id)_playImageForStyle:(int64_t)a3
{
  if (a3 == 1)
  {
    v3 = +[RCRecorderStyleProvider sharedStyleProvider];
    v4 = [v3 cardPlayImage];
    goto LABEL_5;
  }

  if (!a3)
  {
    v3 = +[RCRecorderStyleProvider sharedStyleProvider];
    v4 = [v3 libraryPlayImage];
LABEL_5:
    v5 = v4;

    goto LABEL_7;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

- (id)_pauseImageForStyle:(int64_t)a3
{
  if (a3 == 1)
  {
    v3 = +[RCRecorderStyleProvider sharedStyleProvider];
    v4 = [v3 cardPauseImage];
    goto LABEL_5;
  }

  if (!a3)
  {
    v3 = +[RCRecorderStyleProvider sharedStyleProvider];
    v4 = [v3 libraryPauseImage];
LABEL_5:
    v5 = v4;

    goto LABEL_7;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

- (void)setEnabled:(BOOL)a3
{
  self->_enabled = a3;
  [(RCShuttleBar *)self setUserInteractionEnabled:?];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10003E77C;
  v5[3] = &unk_10028A988;
  v5[4] = self;
  v6 = a3;
  [UIView animateWithDuration:v5 animations:0.2];
}

- (void)setDuration:(double)a3
{
  self->_duration = a3;
  v4 = [(RCShuttleBar *)self timelineSlider];
  [v4 setDuration:a3];
}

- (void)setCurrentTime:(double)a3
{
  v4 = self->_currentTime != self->_duration && a3 != 0.0;
  self->_currentTime = a3;
  v6 = [(RCShuttleBar *)self timelineSlider];
  *&v5 = a3;
  [v6 setSliderPositionForTime:v4 animated:v5];
}

- (void)setControlsColor:(id)a3
{
  objc_storeStrong(&self->_controlsColor, a3);

  [(RCShuttleBar *)self _updateButtonColors];
}

- (void)setSecondaryControlsColor:(id)a3
{
  objc_storeStrong(&self->_secondaryControlsColor, a3);

  [(RCShuttleBar *)self _updateButtonColors];
}

- (void)setControlsAnimationColor:(id)a3
{
  objc_storeStrong(&self->_controlsAnimationColor, a3);

  [(RCShuttleBar *)self _updateButtonColors];
}

- (void)setRecentlyDeleted:(BOOL)a3
{
  if (self->_recentlyDeleted != a3)
  {
    v3 = a3;
    self->_recentlyDeleted = a3;
    if ([(RCShuttleBar *)self numberOfRows]== 2 && [(RCShuttleBar *)self numberOfColumns]== 3)
    {
      if (v3)
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

    v6 = [(RCShuttleBar *)self jumpBackwardButton];
    [v6 setHidden:v3];

    v7 = [(RCShuttleBar *)self jumpForwardButton];
    [v7 setHidden:v3];

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
  v3 = [(RCShuttleBar *)self actionDelegate];
  [v3 performControlsAction:12 position:self source:0.0];

  LODWORD(v3) = UIAccessibilityLayoutChangedNotification;
  v4 = [(RCShuttleBar *)self jumpBackwardButton];
  UIAccessibilityPostNotification(v3, v4);
}

- (void)_handleJumpForward
{
  v3 = [(RCShuttleBar *)self actionDelegate];
  [v3 performControlsAction:11 position:self source:0.0];

  LODWORD(v3) = UIAccessibilityLayoutChangedNotification;
  v4 = [(RCShuttleBar *)self jumpForwardButton];
  UIAccessibilityPostNotification(v3, v4);
}

- (void)_handlePlayPause
{
  v3 = [(RCShuttleBar *)self playControlState];
  if (v3 == 1)
  {
    v4 = [(RCShuttleBar *)self actionDelegate];
    [v4 performControlsAction:1 position:self source:0.0];
  }

  else
  {
    if (v3)
    {
      goto LABEL_6;
    }

    v4 = [(RCShuttleBar *)self actionDelegate];
    v5 = [(RCShuttleBar *)self timelineSlider];
    [v5 currentPosition];
    [v4 performControlsAction:0 position:self source:?];
  }

LABEL_6:
  v6 = UIAccessibilityLayoutChangedNotification;
  v7 = [(RCShuttleBar *)self playPauseButton];
  UIAccessibilityPostNotification(v6, v7);
}

- (void)_handleEditRecording
{
  v4 = [(RCShuttleBar *)self actionDelegate];
  v3 = [(RCShuttleBar *)self editRecordingButton];
  [v4 performControlsAction:22 position:v3 source:0.0];
}

- (void)_handleErase
{
  v4 = [(RCShuttleBar *)self actionDelegate];
  v3 = [(RCShuttleBar *)self deleteButton];
  [v4 performControlsAction:16 position:v3 source:0.0];
}

- (void)_handleDelete
{
  v4 = [(RCShuttleBar *)self actionDelegate];
  v3 = [(RCShuttleBar *)self deleteButton];
  [v4 performControlsAction:15 position:v3 source:0.0];
}

- (void)_handleUndelete
{
  v4 = [(RCShuttleBar *)self actionDelegate];
  v3 = [(RCShuttleBar *)self deleteButton];
  [v4 performControlsAction:19 position:v3 source:0.0];
}

- (void)restyle
{
  [(RCShuttleBar *)self _syncToStyleAndPlayControlState];

  [(RCShuttleBar *)self _updateGlassBackgroundStyling];
}

- (void)detailSliderTrackingDidBegin:(id)a3
{
  v4 = a3;
  v7 = [(RCShuttleBar *)self actionDelegate];
  [v4 currentPosition];
  v6 = v5;

  [v7 performControlsAction:8 position:0 source:v6];
}

- (void)detailSliderTrackingDidEnd:(id)a3
{
  v4 = a3;
  v7 = [(RCShuttleBar *)self actionDelegate];
  [v4 currentPosition];
  v6 = v5;

  [v7 performControlsAction:10 position:0 source:v6];
}

- (void)detailSliderTrackingDidCancel:(id)a3
{
  v4 = a3;
  v7 = [(RCShuttleBar *)self actionDelegate];
  [v4 currentPosition];
  v6 = v5;

  [v7 performControlsAction:10 position:0 source:v6];
}

- (void)detailSlider:(id)a3 didChangeTimeValue:(float)a4
{
  v5 = [(RCShuttleBar *)self actionDelegate];
  [v5 performControlsAction:9 position:0 source:a4];
}

- (CGRect)containerView:(id)a3 layoutFrameForArrangedSubview:(id)a4 withProposedFrame:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v11 = a3;
  if ([a4 isEqual:self->_centerClusterStackView])
  {
    width = floor(width);
    [v11 frame];
    MidX = CGRectGetMidX(v18);
    [v11 frame];
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