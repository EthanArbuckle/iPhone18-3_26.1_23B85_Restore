@interface PHCarPlayVoicemailPlayerViewController
+ (id)detailStringForVoicemail:(id)voicemail;
- (PHCarPlayVoicemailPlayerViewController)init;
- (double)labelStackViewBaselineConstraintConstant;
- (double)nameLabelBaselineConstraintConstant;
- (void)_handleApplicationDidEnterBackgroundNotification:(id)notification;
- (void)_handleVoicemailPlayerDidPlayToEnd:(id)end;
- (void)_update;
- (void)callBackButtonTapped:(id)tapped;
- (void)dealloc;
- (void)hardwareControlEventNotification:(id)notification;
- (void)loadView;
- (void)playPauseButtonTapped:(id)tapped;
- (void)rewindButtonTapped:(id)tapped;
- (void)setRepresentedVoicemail:(id)voicemail;
- (void)traitCollectionDidChange:(id)change;
- (void)updatePlayPauseButton;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
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

- (void)viewWillDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = PHCarPlayVoicemailPlayerViewController;
  [(PHCarPlayVoicemailPlayerViewController *)&v5 viewWillDisappear:disappear];
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
    callProviderManager = [v3 callProviderManager];

    [callProviderManager addDelegate:self queue:0];
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
  view = [(PHCarPlayVoicemailPlayerViewController *)self view];
  [view addSubview:*(&self->_detailLabel + 1)];

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
  view2 = [(PHCarPlayVoicemailPlayerViewController *)self view];
  callBackButton = [(PHCarPlayVoicemailPlayerViewController *)self callBackButton];
  [view2 addSubview:callBackButton];

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
  view3 = [(PHCarPlayVoicemailPlayerViewController *)self view];
  rewindButton = [(PHCarPlayVoicemailPlayerViewController *)self rewindButton];
  [view3 addSubview:rewindButton];

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
  view4 = [(PHCarPlayVoicemailPlayerViewController *)self view];
  [view4 addSubview:*(&self->_rewindButton + 1)];

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
  view5 = [(PHCarPlayVoicemailPlayerViewController *)self view];
  [view5 addSubview:*(&self->_representedVoicemail + 1)];

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

  labelStackView = [(PHCarPlayVoicemailPlayerViewController *)self labelStackView];
  [labelStackView setAxis:0];

  labelStackView2 = [(PHCarPlayVoicemailPlayerViewController *)self labelStackView];
  [labelStackView2 setDistribution:0];

  labelStackView3 = [(PHCarPlayVoicemailPlayerViewController *)self labelStackView];
  [labelStackView3 setAlignment:5];

  labelStackView4 = [(PHCarPlayVoicemailPlayerViewController *)self labelStackView];
  [labelStackView4 setTranslatesAutoresizingMaskIntoConstraints:0];

  labelStackView5 = [(PHCarPlayVoicemailPlayerViewController *)self labelStackView];
  [labelStackView5 setSpacing:4.0];

  view6 = [(PHCarPlayVoicemailPlayerViewController *)self view];
  labelStackView6 = [(PHCarPlayVoicemailPlayerViewController *)self labelStackView];
  [view6 addSubview:labelStackView6];

  labelStackView7 = [(PHCarPlayVoicemailPlayerViewController *)self labelStackView];
  [labelStackView7 addArrangedSubview:*(&self->_nameLabel + 1)];

  nameLabel = [(PHCarPlayVoicemailPlayerViewController *)self nameLabel];
  firstBaselineAnchor = [nameLabel firstBaselineAnchor];
  view7 = [(PHCarPlayVoicemailPlayerViewController *)self view];
  safeAreaLayoutGuide = [view7 safeAreaLayoutGuide];
  topAnchor = [safeAreaLayoutGuide topAnchor];
  [(PHCarPlayVoicemailPlayerViewController *)self nameLabelBaselineConstraintConstant];
  v57 = [firstBaselineAnchor constraintEqualToAnchor:topAnchor constant:?];
  v58 = *(&self->_playPauseButton + 1);
  *(&self->_playPauseButton + 1) = v57;

  labelStackView8 = [(PHCarPlayVoicemailPlayerViewController *)self labelStackView];
  firstBaselineAnchor2 = [labelStackView8 firstBaselineAnchor];
  nameLabel2 = [(PHCarPlayVoicemailPlayerViewController *)self nameLabel];
  lastBaselineAnchor = [nameLabel2 lastBaselineAnchor];
  [(PHCarPlayVoicemailPlayerViewController *)self labelStackViewBaselineConstraintConstant];
  v63 = [firstBaselineAnchor2 constraintEqualToAnchor:lastBaselineAnchor constant:?];
  v64 = *(&self->_nameLabelBaselineConstraint + 1);
  *(&self->_nameLabelBaselineConstraint + 1) = v63;

  nameLabelBaselineConstraint = [(PHCarPlayVoicemailPlayerViewController *)self nameLabelBaselineConstraint];
  v143[0] = nameLabelBaselineConstraint;
  labelStackViewBaselineConstraint = [(PHCarPlayVoicemailPlayerViewController *)self labelStackViewBaselineConstraint];
  v143[1] = labelStackViewBaselineConstraint;
  playPauseButton = [(PHCarPlayVoicemailPlayerViewController *)self playPauseButton];
  topAnchor2 = [playPauseButton topAnchor];
  labelStackView9 = [(PHCarPlayVoicemailPlayerViewController *)self labelStackView];
  lastBaselineAnchor2 = [labelStackView9 lastBaselineAnchor];
  v135 = [topAnchor2 constraintEqualToAnchor:lastBaselineAnchor2 constant:20.0];
  v143[2] = v135;
  progressView = [(PHCarPlayVoicemailPlayerViewController *)self progressView];
  topAnchor3 = [progressView topAnchor];
  playPauseButton2 = [(PHCarPlayVoicemailPlayerViewController *)self playPauseButton];
  bottomAnchor = [playPauseButton2 bottomAnchor];
  v130 = [topAnchor3 constraintEqualToAnchor:bottomAnchor constant:20.0];
  v143[3] = v130;
  nameLabel3 = [(PHCarPlayVoicemailPlayerViewController *)self nameLabel];
  view8 = [(PHCarPlayVoicemailPlayerViewController *)self view];
  safeAreaLayoutGuide2 = [view8 safeAreaLayoutGuide];
  v126 = [NSLayoutConstraint constraintWithItem:nameLabel3 attribute:9 relatedBy:0 toItem:safeAreaLayoutGuide2 attribute:9 multiplier:1.0 constant:0.0];
  v143[4] = v126;
  labelStackView10 = [(PHCarPlayVoicemailPlayerViewController *)self labelStackView];
  view9 = [(PHCarPlayVoicemailPlayerViewController *)self view];
  safeAreaLayoutGuide3 = [view9 safeAreaLayoutGuide];
  v122 = [NSLayoutConstraint constraintWithItem:labelStackView10 attribute:9 relatedBy:0 toItem:safeAreaLayoutGuide3 attribute:9 multiplier:1.0 constant:0.0];
  v143[5] = v122;
  playPauseButton3 = [(PHCarPlayVoicemailPlayerViewController *)self playPauseButton];
  view10 = [(PHCarPlayVoicemailPlayerViewController *)self view];
  safeAreaLayoutGuide4 = [view10 safeAreaLayoutGuide];
  v118 = [NSLayoutConstraint constraintWithItem:playPauseButton3 attribute:9 relatedBy:0 toItem:safeAreaLayoutGuide4 attribute:9 multiplier:1.0 constant:0.0];
  v143[6] = v118;
  progressView2 = [(PHCarPlayVoicemailPlayerViewController *)self progressView];
  view11 = [(PHCarPlayVoicemailPlayerViewController *)self view];
  safeAreaLayoutGuide5 = [view11 safeAreaLayoutGuide];
  v114 = [NSLayoutConstraint constraintWithItem:progressView2 attribute:9 relatedBy:0 toItem:safeAreaLayoutGuide5 attribute:9 multiplier:1.0 constant:0.0];
  v143[7] = v114;
  callBackButton2 = [(PHCarPlayVoicemailPlayerViewController *)self callBackButton];
  playPauseButton4 = [(PHCarPlayVoicemailPlayerViewController *)self playPauseButton];
  v111 = [NSLayoutConstraint constraintWithItem:callBackButton2 attribute:10 relatedBy:0 toItem:playPauseButton4 attribute:10 multiplier:1.0 constant:0.0];
  v143[8] = v111;
  rewindButton2 = [(PHCarPlayVoicemailPlayerViewController *)self rewindButton];
  playPauseButton5 = [(PHCarPlayVoicemailPlayerViewController *)self playPauseButton];
  v108 = [NSLayoutConstraint constraintWithItem:rewindButton2 attribute:10 relatedBy:0 toItem:playPauseButton5 attribute:10 multiplier:1.0 constant:0.0];
  v143[9] = v108;
  callBackButton3 = [(PHCarPlayVoicemailPlayerViewController *)self callBackButton];
  playPauseButton6 = [(PHCarPlayVoicemailPlayerViewController *)self playPauseButton];
  v105 = [NSLayoutConstraint constraintWithItem:callBackButton3 attribute:1 relatedBy:0 toItem:playPauseButton6 attribute:2 multiplier:1.0 constant:12.0];
  v143[10] = v105;
  rewindButton3 = [(PHCarPlayVoicemailPlayerViewController *)self rewindButton];
  playPauseButton7 = [(PHCarPlayVoicemailPlayerViewController *)self playPauseButton];
  v102 = [NSLayoutConstraint constraintWithItem:rewindButton3 attribute:2 relatedBy:0 toItem:playPauseButton7 attribute:1 multiplier:1.0 constant:-12.0];
  v143[11] = v102;
  rewindButton4 = [(PHCarPlayVoicemailPlayerViewController *)self rewindButton];
  widthAnchor = [rewindButton4 widthAnchor];
  v99 = [widthAnchor constraintEqualToConstant:84.0];
  v143[12] = v99;
  rewindButton5 = [(PHCarPlayVoicemailPlayerViewController *)self rewindButton];
  heightAnchor = [rewindButton5 heightAnchor];
  v96 = [heightAnchor constraintEqualToConstant:50.0];
  v143[13] = v96;
  playPauseButton8 = [(PHCarPlayVoicemailPlayerViewController *)self playPauseButton];
  widthAnchor2 = [playPauseButton8 widthAnchor];
  rewindButton6 = [(PHCarPlayVoicemailPlayerViewController *)self rewindButton];
  widthAnchor3 = [rewindButton6 widthAnchor];
  v91 = [widthAnchor2 constraintEqualToAnchor:widthAnchor3];
  v143[14] = v91;
  playPauseButton9 = [(PHCarPlayVoicemailPlayerViewController *)self playPauseButton];
  heightAnchor2 = [playPauseButton9 heightAnchor];
  rewindButton7 = [(PHCarPlayVoicemailPlayerViewController *)self rewindButton];
  heightAnchor3 = [rewindButton7 heightAnchor];
  v86 = [heightAnchor2 constraintEqualToAnchor:heightAnchor3];
  v143[15] = v86;
  callBackButton4 = [(PHCarPlayVoicemailPlayerViewController *)self callBackButton];
  widthAnchor4 = [callBackButton4 widthAnchor];
  rewindButton8 = [(PHCarPlayVoicemailPlayerViewController *)self rewindButton];
  widthAnchor5 = [rewindButton8 widthAnchor];
  v81 = [widthAnchor4 constraintEqualToAnchor:widthAnchor5];
  v143[16] = v81;
  callBackButton5 = [(PHCarPlayVoicemailPlayerViewController *)self callBackButton];
  heightAnchor4 = [callBackButton5 heightAnchor];
  rewindButton9 = [(PHCarPlayVoicemailPlayerViewController *)self rewindButton];
  heightAnchor5 = [rewindButton9 heightAnchor];
  v76 = [heightAnchor4 constraintEqualToAnchor:heightAnchor5];
  v143[17] = v76;
  progressView3 = [(PHCarPlayVoicemailPlayerViewController *)self progressView];
  leftAnchor = [progressView3 leftAnchor];
  rewindButton10 = [(PHCarPlayVoicemailPlayerViewController *)self rewindButton];
  leftAnchor2 = [rewindButton10 leftAnchor];
  v68 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
  v143[18] = v68;
  progressView4 = [(PHCarPlayVoicemailPlayerViewController *)self progressView];
  rightAnchor = [progressView4 rightAnchor];
  callBackButton6 = [(PHCarPlayVoicemailPlayerViewController *)self callBackButton];
  rightAnchor2 = [callBackButton6 rightAnchor];
  v73 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
  v143[19] = v73;
  v74 = [NSArray arrayWithObjects:v143 count:20];
  [NSLayoutConstraint activateConstraints:v74];
}

- (void)viewWillAppear:(BOOL)appear
{
  v3.receiver = self;
  v3.super_class = PHCarPlayVoicemailPlayerViewController;
  [(PHCarPlayVoicemailPlayerViewController *)&v3 viewWillAppear:appear];
}

- (void)viewDidAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = PHCarPlayVoicemailPlayerViewController;
  [(PHCarPlayGenericViewController *)&v6 viewDidAppear:appear];
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 addObserver:self selector:"hardwareControlEventNotification:" name:TUCarPlayHardwareControlEventNotification object:0];

  if (*(&self->super._respondsToEventsWhileInCall + 1))
  {
    v5 = +[PHVoicemailPlayerController sharedPlayerController];
    [v5 play];

    *(&self->super._respondsToEventsWhileInCall + 1) = 0;
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = PHCarPlayVoicemailPlayerViewController;
  [(PHCarPlayGenericViewController *)&v5 viewDidDisappear:disappear];
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

- (void)traitCollectionDidChange:(id)change
{
  v14.receiver = self;
  v14.super_class = PHCarPlayVoicemailPlayerViewController;
  changeCopy = change;
  [(PHCarPlayVoicemailPlayerViewController *)&v14 traitCollectionDidChange:changeCopy];
  v5 = [(PHCarPlayVoicemailPlayerViewController *)self traitCollection:v14.receiver];
  preferredContentSizeCategory = [v5 preferredContentSizeCategory];
  preferredContentSizeCategory2 = [changeCopy preferredContentSizeCategory];

  if (preferredContentSizeCategory != preferredContentSizeCategory2)
  {
    [(PHCarPlayVoicemailPlayerViewController *)self nameLabelBaselineConstraintConstant];
    v9 = v8;
    nameLabelBaselineConstraint = [(PHCarPlayVoicemailPlayerViewController *)self nameLabelBaselineConstraint];
    [nameLabelBaselineConstraint setConstant:v9];

    [(PHCarPlayVoicemailPlayerViewController *)self labelStackViewBaselineConstraintConstant];
    v12 = v11;
    labelStackViewBaselineConstraint = [(PHCarPlayVoicemailPlayerViewController *)self labelStackViewBaselineConstraint];
    [labelStackViewBaselineConstraint setConstant:v12];
  }
}

- (void)playPauseButtonTapped:(id)tapped
{
  v4 = +[PHVoicemailPlayerController sharedPlayerController];
  isPlaying = [v4 isPlaying];

  v6 = +[PHVoicemailPlayerController sharedPlayerController];
  v7 = v6;
  if (isPlaying)
  {
    [v6 pause];
  }

  else
  {
    [v6 play];
  }

  [(PHCarPlayVoicemailPlayerViewController *)self updatePlayPauseButton];
}

- (void)callBackButtonTapped:(id)tapped
{
  v4 = +[PHVoicemailPlayerController sharedPlayerController];
  [v4 pause];

  v5 = PHDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    representedVoicemail = [(PHCarPlayVoicemailPlayerViewController *)self representedVoicemail];
    v41 = 138412290;
    v42 = representedVoicemail;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Call back button tapped in CarPlay for voicemail %@", &v41, 0xCu);
  }

  representedVoicemail2 = [(PHCarPlayVoicemailPlayerViewController *)self representedVoicemail];
  senderDestinationID = [representedVoicemail2 senderDestinationID];

  representedVoicemail3 = [(PHCarPlayVoicemailPlayerViewController *)self representedVoicemail];
  callbackDestinationID = [representedVoicemail3 callbackDestinationID];
  v11 = [callbackDestinationID length];

  if (v11)
  {
    representedVoicemail4 = [(PHCarPlayVoicemailPlayerViewController *)self representedVoicemail];
    callbackDestinationID2 = [representedVoicemail4 callbackDestinationID];

    senderDestinationID = callbackDestinationID2;
  }

  v14 = +[(PHApplicationServices *)MPApplicationServices];
  callProviderManager = [v14 callProviderManager];

  telephonyProvider = [callProviderManager telephonyProvider];
  if (telephonyProvider)
  {
    v17 = [[TUDialRequest alloc] initWithProvider:telephonyProvider];
    v18 = [[TUHandle alloc] initWithType:2 value:senderDestinationID];
    [v17 setHandle:v18];

    [v17 setOriginatingUIType:48];
    v19 = PHDefaultLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v41 = 138412802;
      v42 = v17;
      v43 = 2112;
      v44 = senderDestinationID;
      v45 = 2112;
      v46 = telephonyProvider;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Created a dial request %@ to callback from voicemail in CarPlay to destinationID %@ with telephonyCallProvider %@", &v41, 0x20u);
    }

    representedVoicemail5 = [(PHCarPlayVoicemailPlayerViewController *)self representedVoicemail];
    receiverDestinationID = [representedVoicemail5 receiverDestinationID];
    if (!receiverDestinationID)
    {
      goto LABEL_19;
    }

    v22 = receiverDestinationID;
    representedVoicemail6 = [(PHCarPlayVoicemailPlayerViewController *)self representedVoicemail];
    receiverDestinationID2 = [representedVoicemail6 receiverDestinationID];
    v25 = [receiverDestinationID2 length];

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
          [(PHCarPlayVoicemailPlayerViewController *)senderDestinationID callBackButtonTapped:v17, v39];
        }
      }

      goto LABEL_25;
    }

    representedVoicemail7 = [(PHCarPlayVoicemailPlayerViewController *)self representedVoicemail];
    receiverDestinationID3 = [representedVoicemail7 receiverDestinationID];
    representedVoicemail5 = [TUHandle handleWithDestinationID:receiverDestinationID3];

    representedVoicemail8 = [(PHCarPlayVoicemailPlayerViewController *)self representedVoicemail];
    receiverISOCountryCode = [representedVoicemail8 receiverISOCountryCode];
    v30 = [representedVoicemail5 canonicalHandleForISOCountryCode:receiverISOCountryCode];

    v31 = [telephonyProvider senderIdentityForHandle:v30];
    accountUUID = [v31 accountUUID];
    [v17 setLocalSenderIdentityAccountUUID:accountUUID];

    localSenderIdentityAccountUUID = [v17 localSenderIdentityAccountUUID];

    v34 = PHDefaultLog();
    v35 = os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT);
    if (localSenderIdentityAccountUUID)
    {
      if (v35)
      {
        localSenderIdentityAccountUUID2 = [v17 localSenderIdentityAccountUUID];
        v41 = 138412290;
        v42 = localSenderIdentityAccountUUID2;
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "To ensure the correct line is used, setting the dial request's local sender identity UUID to: %@", &v41, 0xCu);
LABEL_17:
      }
    }

    else if (v35)
    {
      localSenderIdentityAccountUUID2 = [(PHCarPlayVoicemailPlayerViewController *)self representedVoicemail];
      receiverDestinationID4 = [localSenderIdentityAccountUUID2 receiverDestinationID];
      prioritizedSenderIdentities = [telephonyProvider prioritizedSenderIdentities];
      v41 = 138412546;
      v42 = receiverDestinationID4;
      v43 = 2112;
      v44 = prioritizedSenderIdentities;
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

- (void)rewindButtonTapped:(id)tapped
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

- (void)hardwareControlEventNotification:(id)notification
{
  notificationCopy = notification;
  v5 = PHDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = notificationCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "PHCarPlaykVoicemailPlayerController received hardware control event notification: %@", &v11, 0xCu);
  }

  if ([(PHCarPlayVoicemailPlayerViewController *)self isViewLoaded])
  {
    v6 = +[UIApplication sharedApplication];
    isSuspended = [v6 isSuspended];

    if ((isSuspended & 1) == 0)
    {
      userInfo = [notificationCopy userInfo];
      v9 = [userInfo valueForKey:kTUCarPlayHardwareControlButtonKey];

      if (v9 == kTUCarPlayHardwareControlButtonGreenTelephone || v9 == kTUCarPlayHardwareControlButtonWhiteTelephone)
      {
        [(PHCarPlayVoicemailPlayerViewController *)self callBackButtonTapped:0];
      }
    }
  }
}

- (void)setRepresentedVoicemail:(id)voicemail
{
  voicemailCopy = voicemail;
  if (([(PHCarPlayVoicemailPlayerViewController *)self isViewLoaded]& 1) == 0)
  {
    [(PHCarPlayVoicemailPlayerViewController *)self loadView];
  }

  v5 = *&self->_isPlaying;
  *&self->_isPlaying = voicemailCopy;
  v6 = voicemailCopy;

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
  suggestedContactStore = [v3 suggestedContactStore];

  if (suggestedContactStore)
  {
    representedVoicemail = [(PHCarPlayVoicemailPlayerViewController *)self representedVoicemail];
    v6 = [representedVoicemail displayNameUsingContactStore:suggestedContactStore];
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

  nameLabel = [(PHCarPlayVoicemailPlayerViewController *)self nameLabel];
  [nameLabel setText:v6];

  representedVoicemail2 = [(PHCarPlayVoicemailPlayerViewController *)self representedVoicemail];
  v11 = [PHCarPlayVoicemailPlayerViewController detailStringForVoicemail:representedVoicemail2];
  detailLabel = [(PHCarPlayVoicemailPlayerViewController *)self detailLabel];
  [detailLabel setText:v11];

  if (PHDeviceSupportsDualSim())
  {
    v13 = +[(PHApplicationServices *)MPApplicationServices];
    callProviderManager = [v13 callProviderManager];

    telephonyProvider = [callProviderManager telephonyProvider];
    prioritizedSenderIdentities = [telephonyProvider prioritizedSenderIdentities];
    if ([prioritizedSenderIdentities count] > 1)
    {
      representedVoicemail3 = [(PHCarPlayVoicemailPlayerViewController *)self representedVoicemail];
      receiverDestinationID = [representedVoicemail3 receiverDestinationID];
      v19 = [receiverDestinationID length];

      if (!v19)
      {
LABEL_17:

        goto LABEL_18;
      }

      telephonyProvider2 = [callProviderManager telephonyProvider];
      representedVoicemail4 = [(PHCarPlayVoicemailPlayerViewController *)self representedVoicemail];
      receiverDestinationID2 = [representedVoicemail4 receiverDestinationID];
      v23 = [TUHandle handleWithDestinationID:receiverDestinationID2];
      v24 = [telephonyProvider2 senderIdentityForHandle:v23];
      telephonyProvider = [v24 localizedShortName];

      if (![telephonyProvider length])
      {
        representedVoicemail5 = [(PHCarPlayVoicemailPlayerViewController *)self representedVoicemail];
        receiverDestinationID3 = [representedVoicemail5 receiverDestinationID];

        telephonyProvider = receiverDestinationID3;
      }

      badgeView = [(PHCarPlayVoicemailPlayerViewController *)self badgeView];
      v28 = badgeView;
      if (!telephonyProvider)
      {
        [badgeView removeFromSuperview];

        [(PHCarPlayVoicemailPlayerViewController *)self setBadgeView:0];
        goto LABEL_16;
      }

      if (!v28)
      {
        v29 = [[TPBadgeView alloc] initWithTitle:telephonyProvider theme:5];
        [v29 setSizeCategory:4];
        labelStackView = [(PHCarPlayVoicemailPlayerViewController *)self labelStackView];
        [labelStackView insertArrangedSubview:v29 atIndex:0];

        [(PHCarPlayVoicemailPlayerViewController *)self setBadgeView:v29];
      }

      prioritizedSenderIdentities = [(PHCarPlayVoicemailPlayerViewController *)self badgeView];
      [prioritizedSenderIdentities setTitle:telephonyProvider];
    }

LABEL_16:
    goto LABEL_17;
  }

LABEL_18:
  dataURL = [*&self->_isPlaying dataURL];
  v32 = [AVAsset assetWithURL:dataURL];

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
  isPlaying = [v3 isPlaying];

  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = v5;
  if (isPlaying)
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

- (void)_handleVoicemailPlayerDidPlayToEnd:(id)end
{
  v4 = +[PHVoicemailPlayerController sharedPlayerController];
  [v4 pause];

  v5 = +[PHVoicemailPlayerController sharedPlayerController];
  v6 = *&kCMTimeZero.value;
  epoch = kCMTimeZero.epoch;
  [v5 seekToTime:&v6];

  [(PHCarPlayVoicemailPlayerViewController *)self updatePlayPauseButton];
}

- (void)_handleApplicationDidEnterBackgroundNotification:(id)notification
{
  notificationCopy = notification;
  v5 = PHDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412546;
    v12 = objc_opt_class();
    v13 = 2112;
    v14 = notificationCopy;
    v6 = v12;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ is handling <%@>", &v11, 0x16u);
  }

  if ([(PHCarPlayVoicemailPlayerViewController *)self isViewLoaded])
  {
    view = [(PHCarPlayVoicemailPlayerViewController *)self view];
    window = [view window];

    if (window)
    {
      v9 = +[PHVoicemailPlayerController sharedPlayerController];
      [v9 pause];

      v10 = +[PHVoicemailPlayerController sharedPlayerController];
      [v10 endInterruption];
    }
  }
}

+ (id)detailStringForVoicemail:(id)voicemail
{
  voicemailCopy = voicemail;
  v4 = +[(PHApplicationServices *)MPApplicationServices];
  suggestedContactStore = [v4 suggestedContactStore];

  if (suggestedContactStore)
  {
    v6 = [voicemailCopy displayNameUsingContactStore:suggestedContactStore];
  }

  else
  {
    v6 = 0;
  }

  v7 = objc_alloc_init(NSDateFormatter);
  [v7 setTimeStyle:0];
  [v7 setDateStyle:1];
  [v7 setDoesRelativeDateFormatting:1];
  date = [voicemailCopy date];
  v9 = [v7 stringFromDate:date];

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