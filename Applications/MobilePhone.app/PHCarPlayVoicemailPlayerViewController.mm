@interface PHCarPlayVoicemailPlayerViewController
+ (id)detailStringForVoicemail:(id)a3;
- (PHCarPlayVoicemailPlayerViewController)init;
- (double)labelStackViewBaselineConstraintConstant;
- (double)nameLabelBaselineConstraintConstant;
- (void)_handleApplicationDidEnterBackgroundNotification:(id)a3;
- (void)_handleVoicemailPlayerDidPlayToEnd:(id)a3;
- (void)_update;
- (void)callBackButtonTapped:(id)a3;
- (void)dealloc;
- (void)hardwareControlEventNotification:(id)a3;
- (void)loadView;
- (void)playPauseButtonTapped:(id)a3;
- (void)rewindButtonTapped:(id)a3;
- (void)setRepresentedVoicemail:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)updatePlayPauseButton;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation PHCarPlayVoicemailPlayerViewController

- (PHCarPlayVoicemailPlayerViewController)init
{
  v3.receiver = self;
  v3.super_class = PHCarPlayVoicemailPlayerViewController;
  result = [(PHCarPlayVoicemailPlayerViewController *)&v3 init];
  if (result)
  {
    *(&result->super._respondsToEventsWhileInCall + 1) = 1;
    *(&result->super._respondsToEventsWhileInCall + 3) = 0;
  }

  return result;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = PHCarPlayVoicemailPlayerViewController;
  [(PHCarPlayVoicemailPlayerViewController *)&v4 dealloc];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = PHCarPlayVoicemailPlayerViewController;
  [(PHCarPlayVoicemailPlayerViewController *)&v5 viewWillDisappear:a3];
  v3 = +[PHVoicemailPlayerController sharedPlayerController];
  [v3 pause];

  v4 = +[PHVoicemailPlayerController sharedPlayerController];
  [v4 endInterruption];
}

- (void)loadView
{
  if (PHDeviceSupportsDualSim())
  {
    v3 = +[(PHApplicationServices *)MPApplicationServices];
    v4 = [v3 callProviderManager];

    [v4 addDelegate:self queue:0];
  }

  v5 = [[UIView alloc] initWithFrame:{0.0, 0.0, 400.0, 240.0}];
  if (_os_feature_enabled_impl())
  {
    +[UIColor clearColor];
  }

  else
  {
    +[UIColor tableBackgroundColor];
  }
  v6 = ;
  [v5 setBackgroundColor:v6];

  [v5 setAccessibilityIdentifier:@"PHCarPlayVoicemailPlayerView"];
  [(PHCarPlayVoicemailPlayerViewController *)self setView:v5];
  v7 = [[PHCarPlayProgressView alloc] initWithFrame:0.0, 0.0, 50.0, 20.0];
  v142 = v5;
  v8 = *(&self->_detailLabel + 1);
  *(&self->_detailLabel + 1) = v7;

  [*(&self->_detailLabel + 1) setTranslatesAutoresizingMaskIntoConstraints:0];
  [*(&self->_detailLabel + 1) setAccessibilityIdentifier:@"PHCarPlayVoicemailPlayerProgressView"];
  v9 = [(PHCarPlayVoicemailPlayerViewController *)self view];
  [v9 addSubview:*(&self->_detailLabel + 1)];

  v10 = [[PHCarPlayVoicemailButton alloc] initWithSymbolType:1];
  v11 = *(&self->_progressView + 1);
  *(&self->_progressView + 1) = v10;

  [*(&self->_progressView + 1) setTranslatesAutoresizingMaskIntoConstraints:0];
  [*(&self->_progressView + 1) addTarget:self action:"callBackButtonTapped:" forControlEvents:64];
  [*(&self->_progressView + 1) sizeToFit];
  [*(&self->_progressView + 1) setNeedsLayout];
  [*(&self->_progressView + 1) layoutIfNeeded];
  v12 = [NSBundle bundleForClass:objc_opt_class()];
  v13 = [v12 localizedStringForKey:@"PHONE" value:&stru_10028F310 table:@"PHCarPlay"];
  v146[0] = v13;
  v14 = [NSBundle bundleForClass:objc_opt_class()];
  v15 = [v14 localizedStringForKey:@"CALL_BACK" value:&stru_10028F310 table:@"PHCarPlay"];
  v146[1] = v15;
  v16 = [NSArray arrayWithObjects:v146 count:2];
  [*(&self->_progressView + 1) setAccessibilityUserInputLabels:v16];

  [*(&self->_progressView + 1) setAccessibilityIdentifier:@"PHCarPlayVoicemailPlayerCallBackButton"];
  v17 = [(PHCarPlayVoicemailPlayerViewController *)self view];
  v18 = [(PHCarPlayVoicemailPlayerViewController *)self callBackButton];
  [v17 addSubview:v18];

  v19 = [[PHCarPlayVoicemailButton alloc] initWithSymbolType:24];
  v20 = *(&self->_callBackButton + 1);
  *(&self->_callBackButton + 1) = &v19->super;

  [*(&self->_callBackButton + 1) setTranslatesAutoresizingMaskIntoConstraints:0];
  [*(&self->_callBackButton + 1) addTarget:self action:"rewindButtonTapped:" forControlEvents:64];
  [*(&self->_callBackButton + 1) sizeToFit];
  [*(&self->_callBackButton + 1) setNeedsLayout];
  [*(&self->_callBackButton + 1) layoutIfNeeded];
  v21 = [NSBundle bundleForClass:objc_opt_class()];
  v22 = [v21 localizedStringForKey:@"CARPLAY_VOICEMAIL_REWIND_BUTTON" value:&stru_10028F310 table:@"PHCarPlay"];
  v145[0] = v22;
  v23 = [NSBundle bundleForClass:objc_opt_class()];
  v24 = [v23 localizedStringForKey:@"CARPLAY_VOICEMAIL_JUMP_BACK_BUTTON" value:&stru_10028F310 table:@"PHCarPlay"];
  v145[1] = v24;
  v25 = [NSArray arrayWithObjects:v145 count:2];
  [*(&self->_callBackButton + 1) setAccessibilityUserInputLabels:v25];

  [*(&self->_callBackButton + 1) setAccessibilityIdentifier:@"PHCarPlayVoicemailPlayerRewindButton"];
  v26 = [(PHCarPlayVoicemailPlayerViewController *)self view];
  v27 = [(PHCarPlayVoicemailPlayerViewController *)self rewindButton];
  [v26 addSubview:v27];

  v28 = [[PHCarPlayVoicemailButton alloc] initWithSymbolType:25];
  v29 = *(&self->_rewindButton + 1);
  *(&self->_rewindButton + 1) = &v28->super;

  [*(&self->_rewindButton + 1) setTranslatesAutoresizingMaskIntoConstraints:0];
  [*(&self->_rewindButton + 1) addTarget:self action:"playPauseButtonTapped:" forControlEvents:64];
  [*(&self->_rewindButton + 1) setNeedsLayout];
  [*(&self->_rewindButton + 1) layoutIfNeeded];
  v30 = [NSBundle bundleForClass:objc_opt_class()];
  v31 = [v30 localizedStringForKey:@"CARPLAY_VOICEMAIL_PLAY_BUTTON" value:&stru_10028F310 table:@"PHCarPlay"];
  v144 = v31;
  v32 = [NSArray arrayWithObjects:&v144 count:1];
  [*(&self->_rewindButton + 1) setAccessibilityUserInputLabels:v32];

  [*(&self->_rewindButton + 1) setAccessibilityIdentifier:@"PHCarPlayVoicemailPlayerPlayPauseButton"];
  v33 = [(PHCarPlayVoicemailPlayerViewController *)self view];
  [v33 addSubview:*(&self->_rewindButton + 1)];

  v34 = objc_alloc_init(UILabel);
  v35 = *(&self->_representedVoicemail + 1);
  *(&self->_representedVoicemail + 1) = v34;

  [*(&self->_representedVoicemail + 1) setTranslatesAutoresizingMaskIntoConstraints:0];
  v36 = [UIFont preferredFontForTextStyle:UIFontTextStyleTitle2];
  [*(&self->_representedVoicemail + 1) setFont:v36];

  v37 = +[UIColor dynamicLabelColor];
  [*(&self->_representedVoicemail + 1) setTextColor:v37];

  [*(&self->_representedVoicemail + 1) setText:&stru_10028F310];
  [*(&self->_representedVoicemail + 1) setTextAlignment:1];
  [*(&self->_representedVoicemail + 1) setAccessibilityIdentifier:@"PHCarPlayVoicemailPlayerNameLabel"];
  v38 = [(PHCarPlayVoicemailPlayerViewController *)self view];
  [v38 addSubview:*(&self->_representedVoicemail + 1)];

  v39 = objc_alloc_init(UILabel);
  v40 = *(&self->_nameLabel + 1);
  *(&self->_nameLabel + 1) = v39;

  [*(&self->_nameLabel + 1) setTranslatesAutoresizingMaskIntoConstraints:0];
  v41 = [UIFont preferredFontForTextStyle:UIFontTextStyleCaption1];
  [*(&self->_nameLabel + 1) setFont:v41];

  v42 = +[UIColor dynamicLabelColor];
  [*(&self->_nameLabel + 1) setTextColor:v42];

  [*(&self->_nameLabel + 1) setText:&stru_10028F310];
  [*(&self->_nameLabel + 1) setTextAlignment:1];
  [*(&self->_nameLabel + 1) setAccessibilityIdentifier:@"PHCarPlayVoicemailPlayerDetailLabel"];
  v43 = objc_alloc_init(UIStackView);
  [(PHCarPlayVoicemailPlayerViewController *)self setLabelStackView:v43];

  v44 = [(PHCarPlayVoicemailPlayerViewController *)self labelStackView];
  [v44 setAxis:0];

  v45 = [(PHCarPlayVoicemailPlayerViewController *)self labelStackView];
  [v45 setDistribution:0];

  v46 = [(PHCarPlayVoicemailPlayerViewController *)self labelStackView];
  [v46 setAlignment:5];

  v47 = [(PHCarPlayVoicemailPlayerViewController *)self labelStackView];
  [v47 setTranslatesAutoresizingMaskIntoConstraints:0];

  v48 = [(PHCarPlayVoicemailPlayerViewController *)self labelStackView];
  [v48 setSpacing:4.0];

  v49 = [(PHCarPlayVoicemailPlayerViewController *)self view];
  v50 = [(PHCarPlayVoicemailPlayerViewController *)self labelStackView];
  [v49 addSubview:v50];

  v51 = [(PHCarPlayVoicemailPlayerViewController *)self labelStackView];
  [v51 addArrangedSubview:*(&self->_nameLabel + 1)];

  v52 = [(PHCarPlayVoicemailPlayerViewController *)self nameLabel];
  v53 = [v52 firstBaselineAnchor];
  v54 = [(PHCarPlayVoicemailPlayerViewController *)self view];
  v55 = [v54 safeAreaLayoutGuide];
  v56 = [v55 topAnchor];
  [(PHCarPlayVoicemailPlayerViewController *)self nameLabelBaselineConstraintConstant];
  v57 = [v53 constraintEqualToAnchor:v56 constant:?];
  v58 = *(&self->_playPauseButton + 1);
  *(&self->_playPauseButton + 1) = v57;

  v59 = [(PHCarPlayVoicemailPlayerViewController *)self labelStackView];
  v60 = [v59 firstBaselineAnchor];
  v61 = [(PHCarPlayVoicemailPlayerViewController *)self nameLabel];
  v62 = [v61 lastBaselineAnchor];
  [(PHCarPlayVoicemailPlayerViewController *)self labelStackViewBaselineConstraintConstant];
  v63 = [v60 constraintEqualToAnchor:v62 constant:?];
  v64 = *(&self->_nameLabelBaselineConstraint + 1);
  *(&self->_nameLabelBaselineConstraint + 1) = v63;

  v141 = [(PHCarPlayVoicemailPlayerViewController *)self nameLabelBaselineConstraint];
  v143[0] = v141;
  v140 = [(PHCarPlayVoicemailPlayerViewController *)self labelStackViewBaselineConstraint];
  v143[1] = v140;
  v139 = [(PHCarPlayVoicemailPlayerViewController *)self playPauseButton];
  v137 = [v139 topAnchor];
  v138 = [(PHCarPlayVoicemailPlayerViewController *)self labelStackView];
  v136 = [v138 lastBaselineAnchor];
  v135 = [v137 constraintEqualToAnchor:v136 constant:20.0];
  v143[2] = v135;
  v134 = [(PHCarPlayVoicemailPlayerViewController *)self progressView];
  v132 = [v134 topAnchor];
  v133 = [(PHCarPlayVoicemailPlayerViewController *)self playPauseButton];
  v131 = [v133 bottomAnchor];
  v130 = [v132 constraintEqualToAnchor:v131 constant:20.0];
  v143[3] = v130;
  v128 = [(PHCarPlayVoicemailPlayerViewController *)self nameLabel];
  v129 = [(PHCarPlayVoicemailPlayerViewController *)self view];
  v127 = [v129 safeAreaLayoutGuide];
  v126 = [NSLayoutConstraint constraintWithItem:v128 attribute:9 relatedBy:0 toItem:v127 attribute:9 multiplier:1.0 constant:0.0];
  v143[4] = v126;
  v124 = [(PHCarPlayVoicemailPlayerViewController *)self labelStackView];
  v125 = [(PHCarPlayVoicemailPlayerViewController *)self view];
  v123 = [v125 safeAreaLayoutGuide];
  v122 = [NSLayoutConstraint constraintWithItem:v124 attribute:9 relatedBy:0 toItem:v123 attribute:9 multiplier:1.0 constant:0.0];
  v143[5] = v122;
  v120 = [(PHCarPlayVoicemailPlayerViewController *)self playPauseButton];
  v121 = [(PHCarPlayVoicemailPlayerViewController *)self view];
  v119 = [v121 safeAreaLayoutGuide];
  v118 = [NSLayoutConstraint constraintWithItem:v120 attribute:9 relatedBy:0 toItem:v119 attribute:9 multiplier:1.0 constant:0.0];
  v143[6] = v118;
  v116 = [(PHCarPlayVoicemailPlayerViewController *)self progressView];
  v117 = [(PHCarPlayVoicemailPlayerViewController *)self view];
  v115 = [v117 safeAreaLayoutGuide];
  v114 = [NSLayoutConstraint constraintWithItem:v116 attribute:9 relatedBy:0 toItem:v115 attribute:9 multiplier:1.0 constant:0.0];
  v143[7] = v114;
  v113 = [(PHCarPlayVoicemailPlayerViewController *)self callBackButton];
  v112 = [(PHCarPlayVoicemailPlayerViewController *)self playPauseButton];
  v111 = [NSLayoutConstraint constraintWithItem:v113 attribute:10 relatedBy:0 toItem:v112 attribute:10 multiplier:1.0 constant:0.0];
  v143[8] = v111;
  v110 = [(PHCarPlayVoicemailPlayerViewController *)self rewindButton];
  v109 = [(PHCarPlayVoicemailPlayerViewController *)self playPauseButton];
  v108 = [NSLayoutConstraint constraintWithItem:v110 attribute:10 relatedBy:0 toItem:v109 attribute:10 multiplier:1.0 constant:0.0];
  v143[9] = v108;
  v107 = [(PHCarPlayVoicemailPlayerViewController *)self callBackButton];
  v106 = [(PHCarPlayVoicemailPlayerViewController *)self playPauseButton];
  v105 = [NSLayoutConstraint constraintWithItem:v107 attribute:1 relatedBy:0 toItem:v106 attribute:2 multiplier:1.0 constant:12.0];
  v143[10] = v105;
  v104 = [(PHCarPlayVoicemailPlayerViewController *)self rewindButton];
  v103 = [(PHCarPlayVoicemailPlayerViewController *)self playPauseButton];
  v102 = [NSLayoutConstraint constraintWithItem:v104 attribute:2 relatedBy:0 toItem:v103 attribute:1 multiplier:1.0 constant:-12.0];
  v143[11] = v102;
  v101 = [(PHCarPlayVoicemailPlayerViewController *)self rewindButton];
  v100 = [v101 widthAnchor];
  v99 = [v100 constraintEqualToConstant:84.0];
  v143[12] = v99;
  v98 = [(PHCarPlayVoicemailPlayerViewController *)self rewindButton];
  v97 = [v98 heightAnchor];
  v96 = [v97 constraintEqualToConstant:50.0];
  v143[13] = v96;
  v95 = [(PHCarPlayVoicemailPlayerViewController *)self playPauseButton];
  v93 = [v95 widthAnchor];
  v94 = [(PHCarPlayVoicemailPlayerViewController *)self rewindButton];
  v92 = [v94 widthAnchor];
  v91 = [v93 constraintEqualToAnchor:v92];
  v143[14] = v91;
  v90 = [(PHCarPlayVoicemailPlayerViewController *)self playPauseButton];
  v88 = [v90 heightAnchor];
  v89 = [(PHCarPlayVoicemailPlayerViewController *)self rewindButton];
  v87 = [v89 heightAnchor];
  v86 = [v88 constraintEqualToAnchor:v87];
  v143[15] = v86;
  v85 = [(PHCarPlayVoicemailPlayerViewController *)self callBackButton];
  v83 = [v85 widthAnchor];
  v84 = [(PHCarPlayVoicemailPlayerViewController *)self rewindButton];
  v82 = [v84 widthAnchor];
  v81 = [v83 constraintEqualToAnchor:v82];
  v143[16] = v81;
  v80 = [(PHCarPlayVoicemailPlayerViewController *)self callBackButton];
  v78 = [v80 heightAnchor];
  v79 = [(PHCarPlayVoicemailPlayerViewController *)self rewindButton];
  v77 = [v79 heightAnchor];
  v76 = [v78 constraintEqualToAnchor:v77];
  v143[17] = v76;
  v75 = [(PHCarPlayVoicemailPlayerViewController *)self progressView];
  v65 = [v75 leftAnchor];
  v66 = [(PHCarPlayVoicemailPlayerViewController *)self rewindButton];
  v67 = [v66 leftAnchor];
  v68 = [v65 constraintEqualToAnchor:v67];
  v143[18] = v68;
  v69 = [(PHCarPlayVoicemailPlayerViewController *)self progressView];
  v70 = [v69 rightAnchor];
  v71 = [(PHCarPlayVoicemailPlayerViewController *)self callBackButton];
  v72 = [v71 rightAnchor];
  v73 = [v70 constraintEqualToAnchor:v72];
  v143[19] = v73;
  v74 = [NSArray arrayWithObjects:v143 count:20];
  [NSLayoutConstraint activateConstraints:v74];
}

- (void)viewWillAppear:(BOOL)a3
{
  v3.receiver = self;
  v3.super_class = PHCarPlayVoicemailPlayerViewController;
  [(PHCarPlayVoicemailPlayerViewController *)&v3 viewWillAppear:a3];
}

- (void)viewDidAppear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = PHCarPlayVoicemailPlayerViewController;
  [(PHCarPlayGenericViewController *)&v6 viewDidAppear:a3];
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 addObserver:self selector:"hardwareControlEventNotification:" name:TUCarPlayHardwareControlEventNotification object:0];

  if (*(&self->super._respondsToEventsWhileInCall + 1))
  {
    v5 = +[PHVoicemailPlayerController sharedPlayerController];
    [v5 play];

    *(&self->super._respondsToEventsWhileInCall + 1) = 0;
  }
}

- (void)viewDidDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = PHCarPlayVoicemailPlayerViewController;
  [(PHCarPlayGenericViewController *)&v5 viewDidDisappear:a3];
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self name:TUCarPlayHardwareControlEventNotification object:0];
}

- (double)nameLabelBaselineConstraintConstant
{
  v2 = [UIFont preferredFontForTextStyle:UIFontTextStyleTitle2];
  [v2 _scaledValueForValue:36.0];
  v4 = v3;

  return v4;
}

- (double)labelStackViewBaselineConstraintConstant
{
  v2 = [UIFont preferredFontForTextStyle:UIFontTextStyleCaption1];
  [v2 _scaledValueForValue:18.0];
  v4 = v3;

  return v4;
}

- (void)traitCollectionDidChange:(id)a3
{
  v14.receiver = self;
  v14.super_class = PHCarPlayVoicemailPlayerViewController;
  v4 = a3;
  [(PHCarPlayVoicemailPlayerViewController *)&v14 traitCollectionDidChange:v4];
  v5 = [(PHCarPlayVoicemailPlayerViewController *)self traitCollection:v14.receiver];
  v6 = [v5 preferredContentSizeCategory];
  v7 = [v4 preferredContentSizeCategory];

  if (v6 != v7)
  {
    [(PHCarPlayVoicemailPlayerViewController *)self nameLabelBaselineConstraintConstant];
    v9 = v8;
    v10 = [(PHCarPlayVoicemailPlayerViewController *)self nameLabelBaselineConstraint];
    [v10 setConstant:v9];

    [(PHCarPlayVoicemailPlayerViewController *)self labelStackViewBaselineConstraintConstant];
    v12 = v11;
    v13 = [(PHCarPlayVoicemailPlayerViewController *)self labelStackViewBaselineConstraint];
    [v13 setConstant:v12];
  }
}

- (void)playPauseButtonTapped:(id)a3
{
  v4 = +[PHVoicemailPlayerController sharedPlayerController];
  v5 = [v4 isPlaying];

  v6 = +[PHVoicemailPlayerController sharedPlayerController];
  v7 = v6;
  if (v5)
  {
    [v6 pause];
  }

  else
  {
    [v6 play];
  }

  [(PHCarPlayVoicemailPlayerViewController *)self updatePlayPauseButton];
}

- (void)callBackButtonTapped:(id)a3
{
  v4 = +[PHVoicemailPlayerController sharedPlayerController];
  [v4 pause];

  v5 = PHDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(PHCarPlayVoicemailPlayerViewController *)self representedVoicemail];
    v41 = 138412290;
    v42 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Call back button tapped in CarPlay for voicemail %@", &v41, 0xCu);
  }

  v7 = [(PHCarPlayVoicemailPlayerViewController *)self representedVoicemail];
  v8 = [v7 senderDestinationID];

  v9 = [(PHCarPlayVoicemailPlayerViewController *)self representedVoicemail];
  v10 = [v9 callbackDestinationID];
  v11 = [v10 length];

  if (v11)
  {
    v12 = [(PHCarPlayVoicemailPlayerViewController *)self representedVoicemail];
    v13 = [v12 callbackDestinationID];

    v8 = v13;
  }

  v14 = +[(PHApplicationServices *)MPApplicationServices];
  v15 = [v14 callProviderManager];

  v16 = [v15 telephonyProvider];
  if (v16)
  {
    v17 = [[TUDialRequest alloc] initWithProvider:v16];
    v18 = [[TUHandle alloc] initWithType:2 value:v8];
    [v17 setHandle:v18];

    [v17 setOriginatingUIType:48];
    v19 = PHDefaultLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v41 = 138412802;
      v42 = v17;
      v43 = 2112;
      v44 = v8;
      v45 = 2112;
      v46 = v16;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Created a dial request %@ to callback from voicemail in CarPlay to destinationID %@ with telephonyCallProvider %@", &v41, 0x20u);
    }

    v20 = [(PHCarPlayVoicemailPlayerViewController *)self representedVoicemail];
    v21 = [v20 receiverDestinationID];
    if (!v21)
    {
      goto LABEL_19;
    }

    v22 = v21;
    v23 = [(PHCarPlayVoicemailPlayerViewController *)self representedVoicemail];
    v24 = [v23 receiverDestinationID];
    v25 = [v24 length];

    if (!v25)
    {
LABEL_20:
      if ([v17 isValid])
      {
        v39 = +[UIApplication sharedApplication];
        v40 = [v17 URL];
        [v39 openURL:v40 withCompletionHandler:0];
      }

      else
      {
        v39 = PHDefaultLog();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          [(PHCarPlayVoicemailPlayerViewController *)v8 callBackButtonTapped:v17, v39];
        }
      }

      goto LABEL_25;
    }

    v26 = [(PHCarPlayVoicemailPlayerViewController *)self representedVoicemail];
    v27 = [v26 receiverDestinationID];
    v20 = [TUHandle handleWithDestinationID:v27];

    v28 = [(PHCarPlayVoicemailPlayerViewController *)self representedVoicemail];
    v29 = [v28 receiverISOCountryCode];
    v30 = [v20 canonicalHandleForISOCountryCode:v29];

    v31 = [v16 senderIdentityForHandle:v30];
    v32 = [v31 accountUUID];
    [v17 setLocalSenderIdentityAccountUUID:v32];

    v33 = [v17 localSenderIdentityAccountUUID];

    v34 = PHDefaultLog();
    v35 = os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT);
    if (v33)
    {
      if (v35)
      {
        v36 = [v17 localSenderIdentityAccountUUID];
        v41 = 138412290;
        v42 = v36;
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "To ensure the correct line is used, setting the dial request's local sender identity UUID to: %@", &v41, 0xCu);
LABEL_17:
      }
    }

    else if (v35)
    {
      v36 = [(PHCarPlayVoicemailPlayerViewController *)self representedVoicemail];
      v37 = [v36 receiverDestinationID];
      v38 = [v16 prioritizedSenderIdentities];
      v41 = 138412546;
      v42 = v37;
      v43 = 2112;
      v44 = v38;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "None of the prioritized sender identities matched the voicemail's receiver destination ID: %@. Prioritized sender identities are: %@", &v41, 0x16u);

      goto LABEL_17;
    }

LABEL_19:
    goto LABEL_20;
  }

  v17 = PHDefaultLog();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    [PHCarPlayVoicemailPlayerViewController callBackButtonTapped:v17];
  }

LABEL_25:
}

- (void)rewindButtonTapped:(id)a3
{
  v3 = +[PHVoicemailPlayerController sharedPlayerController];
  v4 = v3;
  if (v3)
  {
    [v3 currentTime];
  }

  else
  {
    memset(&time, 0, sizeof(time));
  }

  Seconds = CMTimeGetSeconds(&time);

  v6 = +[PHVoicemailPlayerController sharedPlayerController];
  v7 = Seconds + -15.0;
  if ((Seconds + -15.0) < 0.0)
  {
    v7 = 0.0;
  }

  CMTimeMake(&time, v7, 1);
  [v6 seekToTime:&time];
}

- (void)hardwareControlEventNotification:(id)a3
{
  v4 = a3;
  v5 = PHDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "PHCarPlaykVoicemailPlayerController received hardware control event notification: %@", &v11, 0xCu);
  }

  if ([(PHCarPlayVoicemailPlayerViewController *)self isViewLoaded])
  {
    v6 = +[UIApplication sharedApplication];
    v7 = [v6 isSuspended];

    if ((v7 & 1) == 0)
    {
      v8 = [v4 userInfo];
      v9 = [v8 valueForKey:kTUCarPlayHardwareControlButtonKey];

      if (v9 == kTUCarPlayHardwareControlButtonGreenTelephone || v9 == kTUCarPlayHardwareControlButtonWhiteTelephone)
      {
        [(PHCarPlayVoicemailPlayerViewController *)self callBackButtonTapped:0];
      }
    }
  }
}

- (void)setRepresentedVoicemail:(id)a3
{
  v4 = a3;
  if (([(PHCarPlayVoicemailPlayerViewController *)self isViewLoaded]& 1) == 0)
  {
    [(PHCarPlayVoicemailPlayerViewController *)self loadView];
  }

  v5 = *&self->_isPlaying;
  *&self->_isPlaying = v4;
  v6 = v4;

  [(PHCarPlayVoicemailPlayerViewController *)self _update];
  v7 = +[NSNotificationCenter defaultCenter];
  [v7 addObserver:self selector:"_handleVoicemailPlayerDidStartPlaying:" name:@"kPHVoicemailPlayerControllerDidStartPlayingNotification" object:0];

  v8 = +[NSNotificationCenter defaultCenter];
  [v8 addObserver:self selector:"_handleVoicemailPlayerRateChanged:" name:@"kPHVoicemailPlayerControllerRateChangedNotification" object:0];

  v9 = +[NSNotificationCenter defaultCenter];
  [v9 addObserver:self selector:"_handleVoicemailPlayerDidPlayToEnd:" name:@"kPHVoicemailPlayerControllerDidPlayToEndNotification" object:0];

  v10 = +[NSNotificationCenter defaultCenter];
  [v10 addObserver:self selector:"_handleApplicationDidEnterBackgroundNotification:" name:UIApplicationDidEnterBackgroundNotification object:0];
}

- (void)_update
{
  v3 = +[(PHApplicationServices *)MPApplicationServices];
  v4 = [v3 suggestedContactStore];

  if (v4)
  {
    v5 = [(PHCarPlayVoicemailPlayerViewController *)self representedVoicemail];
    v6 = [v5 displayNameUsingContactStore:v4];
  }

  else
  {
    v6 = 0;
  }

  if (![v6 length])
  {
    v7 = [NSBundle bundleForClass:objc_opt_class()];
    v8 = [v7 localizedStringForKey:@"UNKNOWN" value:&stru_10028F310 table:@"PHCarPlay"];

    v6 = v8;
  }

  v9 = [(PHCarPlayVoicemailPlayerViewController *)self nameLabel];
  [v9 setText:v6];

  v10 = [(PHCarPlayVoicemailPlayerViewController *)self representedVoicemail];
  v11 = [PHCarPlayVoicemailPlayerViewController detailStringForVoicemail:v10];
  v12 = [(PHCarPlayVoicemailPlayerViewController *)self detailLabel];
  [v12 setText:v11];

  if (PHDeviceSupportsDualSim())
  {
    v13 = +[(PHApplicationServices *)MPApplicationServices];
    v14 = [v13 callProviderManager];

    v15 = [v14 telephonyProvider];
    v16 = [v15 prioritizedSenderIdentities];
    if ([v16 count] > 1)
    {
      v17 = [(PHCarPlayVoicemailPlayerViewController *)self representedVoicemail];
      v18 = [v17 receiverDestinationID];
      v19 = [v18 length];

      if (!v19)
      {
LABEL_17:

        goto LABEL_18;
      }

      v20 = [v14 telephonyProvider];
      v21 = [(PHCarPlayVoicemailPlayerViewController *)self representedVoicemail];
      v22 = [v21 receiverDestinationID];
      v23 = [TUHandle handleWithDestinationID:v22];
      v24 = [v20 senderIdentityForHandle:v23];
      v15 = [v24 localizedShortName];

      if (![v15 length])
      {
        v25 = [(PHCarPlayVoicemailPlayerViewController *)self representedVoicemail];
        v26 = [v25 receiverDestinationID];

        v15 = v26;
      }

      v27 = [(PHCarPlayVoicemailPlayerViewController *)self badgeView];
      v28 = v27;
      if (!v15)
      {
        [v27 removeFromSuperview];

        [(PHCarPlayVoicemailPlayerViewController *)self setBadgeView:0];
        goto LABEL_16;
      }

      if (!v28)
      {
        v29 = [[TPBadgeView alloc] initWithTitle:v15 theme:5];
        [v29 setSizeCategory:4];
        v30 = [(PHCarPlayVoicemailPlayerViewController *)self labelStackView];
        [v30 insertArrangedSubview:v29 atIndex:0];

        [(PHCarPlayVoicemailPlayerViewController *)self setBadgeView:v29];
      }

      v16 = [(PHCarPlayVoicemailPlayerViewController *)self badgeView];
      [v16 setTitle:v15];
    }

LABEL_16:
    goto LABEL_17;
  }

LABEL_18:
  v31 = [*&self->_isPlaying dataURL];
  v32 = [AVAsset assetWithURL:v31];

  v33 = +[PHVoicemailPlayerController sharedPlayerController];
  CMTimeMake(&v35, 1, 100);
  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = __49__PHCarPlayVoicemailPlayerViewController__update__block_invoke;
  v34[3] = &unk_1002868F8;
  v34[4] = self;
  [v33 loadAudio:v32 withObserverForInterval:&v35 usingBlock:v34];
}

void __49__PHCarPlayVoicemailPlayerViewController__update__block_invoke(uint64_t a1, __int128 *a2)
{
  v4 = +[PHVoicemailPlayerController sharedPlayerController];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = __49__PHCarPlayVoicemailPlayerViewController__update__block_invoke_2;
  v5[3] = &unk_100286DB0;
  v6 = *a2;
  v7 = *(a2 + 2);
  v5[4] = *(a1 + 32);
  [v4 currentAssetDurationWithBlock:v5];
}

void __49__PHCarPlayVoicemailPlayerViewController__update__block_invoke_2(uint64_t a1, __int128 *a2)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __49__PHCarPlayVoicemailPlayerViewController__update__block_invoke_3;
  block[3] = &unk_100286D88;
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  v5 = *a2;
  v6 = *(a2 + 2);
  block[4] = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, block);
}

id __49__PHCarPlayVoicemailPlayerViewController__update__block_invoke_3(uint64_t a1)
{
  time = *(a1 + 40);
  Seconds = CMTimeGetSeconds(&time);
  time = *(a1 + 64);
  v3 = CMTimeGetSeconds(&time);
  v4 = [*(a1 + 32) progressView];
  [v4 setProgress:(Seconds / v3)];

  v5 = [NSString stringWithFormat:@"%02d:%02d", (Seconds / 60), (Seconds % 60)];
  v6 = [*(a1 + 32) progressView];
  v7 = [v6 elapsedLabel];
  [v7 setText:v5];

  v8 = [NSString stringWithFormat:@"-%02d:%02d", ((v3 - Seconds) / 60), ((v3 - Seconds) % 60)];
  v9 = [*(a1 + 32) progressView];
  v10 = [v9 remainingLabel];
  [v10 setText:v8];

  result = [*(a1 + 32) hasMarkedAsRead];
  if ((result & 1) == 0 && (Seconds / v3) > 0.75)
  {
    v12 = +[(PHApplicationServices *)MPApplicationServices];
    v13 = [v12 voicemailManager];
    v14 = [*(a1 + 32) representedVoicemail];
    v17 = v14;
    v15 = [NSArray arrayWithObjects:&v17 count:1];
    [v13 markVoicemailsAsRead:v15];

    return [*(a1 + 32) setHasMarkedAsRead:1];
  }

  return result;
}

- (void)updatePlayPauseButton
{
  v3 = +[PHVoicemailPlayerController sharedPlayerController];
  v4 = [v3 isPlaying];

  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = v5;
  if (v4)
  {
    v7 = [v5 localizedStringForKey:@"CARPLAY_VOICEMAIL_PAUSE_BUTTON" value:&stru_10028F310 table:@"PHCarPlay"];
    v14 = v7;
    v8 = &v14;
    v9 = 26;
  }

  else
  {
    v7 = [v5 localizedStringForKey:@"CARPLAY_VOICEMAIL_PLAY_BUTTON" value:&stru_10028F310 table:@"PHCarPlay"];
    v13 = v7;
    v8 = &v13;
    v9 = 25;
  }

  v10 = [NSArray arrayWithObjects:v8 count:1];
  [*(&self->_rewindButton + 1) setAccessibilityUserInputLabels:v10];

  v11 = *(&self->_rewindButton + 1);
  v12 = [UIImage tpImageForSymbolType:v9 textStyle:UIFontTextStyleTitle1 scale:2 isStaticSize:1];
  [v11 setImage:v12 forState:0];
}

- (void)_handleVoicemailPlayerDidPlayToEnd:(id)a3
{
  v4 = +[PHVoicemailPlayerController sharedPlayerController];
  [v4 pause];

  v5 = +[PHVoicemailPlayerController sharedPlayerController];
  v6 = *&kCMTimeZero.value;
  epoch = kCMTimeZero.epoch;
  [v5 seekToTime:&v6];

  [(PHCarPlayVoicemailPlayerViewController *)self updatePlayPauseButton];
}

- (void)_handleApplicationDidEnterBackgroundNotification:(id)a3
{
  v4 = a3;
  v5 = PHDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412546;
    v12 = objc_opt_class();
    v13 = 2112;
    v14 = v4;
    v6 = v12;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ is handling <%@>", &v11, 0x16u);
  }

  if ([(PHCarPlayVoicemailPlayerViewController *)self isViewLoaded])
  {
    v7 = [(PHCarPlayVoicemailPlayerViewController *)self view];
    v8 = [v7 window];

    if (v8)
    {
      v9 = +[PHVoicemailPlayerController sharedPlayerController];
      [v9 pause];

      v10 = +[PHVoicemailPlayerController sharedPlayerController];
      [v10 endInterruption];
    }
  }
}

+ (id)detailStringForVoicemail:(id)a3
{
  v3 = a3;
  v4 = +[(PHApplicationServices *)MPApplicationServices];
  v5 = [v4 suggestedContactStore];

  if (v5)
  {
    v6 = [v3 displayNameUsingContactStore:v5];
  }

  else
  {
    v6 = 0;
  }

  v7 = objc_alloc_init(NSDateFormatter);
  [v7 setTimeStyle:0];
  [v7 setDateStyle:1];
  [v7 setDoesRelativeDateFormatting:1];
  v8 = [v3 date];
  v9 = [v7 stringFromDate:v8];

  if ([v6 length])
  {
    v10 = [NSString stringWithFormat:@"%@%@", v6, @" — "];

    v6 = v10;
  }

  else
  {
    v10 = &stru_10028F310;
  }

  v11 = [NSString stringWithFormat:@"%@%@", v10, v9];

  return v11;
}

- (void)callBackButtonTapped:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Could not dial the specified telephone number (%@), invalid dial request (%@)", &v3, 0x16u);
}

@end