@interface COSInternalUserStudyViewController
+ (BOOL)controllerNeedsToRun;
+ (BOOL)hasVideoFile;
+ (BOOL)isBeamBridgeReachable;
+ (BOOL)isDeviceOfParticularInterest:(id)interest;
- (COSInternalUserStudyViewController)init;
- (double)noHWDetailOffset;
- (id)alternateButtonTitle;
- (id)detailString;
- (id)learnMoreButtonTitle;
- (id)suggestedButtonTitle;
- (id)titleString;
- (void)_disableButtons;
- (void)_playIfLoaded;
- (void)_teardownPlayback;
- (void)_uploadAssetAndComplete;
- (void)addItemWithURL:(id)l completion:(id)completion;
- (void)alternateButtonPressed:(id)pressed;
- (void)applyConfirmedOptin:(BOOL)optin;
- (void)completePane;
- (void)confirmDockUpload;
- (void)learnMoreButtonPressed:(id)pressed;
- (void)replayMovie:(id)movie;
- (void)suggestedButtonPressed:(id)pressed;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation COSInternalUserStudyViewController

+ (BOOL)isBeamBridgeReachable
{
  v2 = +[UIApplication sharedApplication];
  isBeamBridgeReachable = [v2 isBeamBridgeReachable];

  return isBeamBridgeReachable;
}

+ (BOOL)controllerNeedsToRun
{
  v2 = sub_100009A74();
  if (v2)
  {
    v3 = pbb_setup_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", +[COSInternalUserStudyViewController hasVideoFile]);
      v5 = +[COSInternalUserStudyAssetManager detailBundle];
      v6 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", +[COSMLCaptureDisclosureController disclosureEffectivelyAccepted]);
      v21 = 136315906;
      v22 = "+[COSInternalUserStudyViewController controllerNeedsToRun]";
      v23 = 2112;
      *v24 = v4;
      *&v24[8] = 2112;
      v25 = v5;
      v26 = 2112;
      v27 = v6;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s - hasVideoFile? %@ detailBundle? %@ disclosureEffectivelyAccepted? %@", &v21, 0x2Au);
    }

    v7 = +[COSInternalUserStudyDataManager sharedManager];
    detectedWristChoice = [v7 detectedWristChoice];

    v9 = +[COSInternalUserStudyDataManager sharedManager];
    wristChoice = [v9 wristChoice];

    v11 = pbb_setup_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [NSNumber numberWithInteger:detectedWristChoice];
      v21 = 138412290;
      v22 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Detected WristChoice: %@", &v21, 0xCu);
    }

    v13 = pbb_setup_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [NSNumber numberWithInteger:wristChoice];
      v21 = 138412290;
      v22 = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "WristChoice: %@", &v21, 0xCu);
    }

    if (+[COSInternalUserStudyViewController hasVideoFile])
    {
      v15 = +[COSInternalUserStudyAssetManager detailBundle];
      if (v15)
      {
        v16 = +[COSMLCaptureDisclosureController disclosureEffectivelyAccepted];
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      v16 = 0;
    }

    v17 = [COSTinkerHealthSharingSetupDelegate tinkerDevice]_0();
    v18 = [COSInternalUserStudyViewController isDeviceOfParticularInterest:v17];

    v19 = pbb_setup_log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 136315906;
      v22 = "+[COSInternalUserStudyViewController controllerNeedsToRun]";
      v23 = 1024;
      *v24 = v16;
      *&v24[4] = 1024;
      *&v24[6] = v18;
      LOWORD(v25) = 1024;
      *(&v25 + 2) = detectedWristChoice < 5;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%s: Base Criteria Met: %d / Interesting Device: %d / Valuable Sample: %d", &v21, 0x1Eu);
    }

    if (detectedWristChoice < 5)
    {
      LOBYTE(v2) = v16 & v18;
    }

    else
    {
      LOBYTE(v2) = 0;
    }
  }

  return v2;
}

+ (BOOL)isDeviceOfParticularInterest:(id)interest
{
  interestCopy = interest;
  v4 = [interestCopy valueForProperty:NRDevicePropertyProductType];
  v5 = [v4 componentsSeparatedByString:{@", "}];
  firstObject = [v5 firstObject];
  v7 = [firstObject isEqualToString:@"Watch7"];

  if (v7)
  {
    lastObject = [v5 lastObject];
    integerValue = [lastObject integerValue];

    v10 = integerValue > 4;
  }

  else
  {
    v10 = 0;
  }

  v11 = [PBBridgeWatchAttributeController materialFromDevice:interestCopy];
  v12 = pbb_setup_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 136315906;
    v16 = "+[COSInternalUserStudyViewController isDeviceOfParticularInterest:]";
    v17 = 1024;
    v18 = v10;
    v19 = 1024;
    v20 = v11 == 28;
    v21 = 1024;
    v22 = (v11 < 0x27) & (0x4023000000uLL >> v11);
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%s: isNPIType: %d / isNPIMaterial: %d / isRareMaterial: %d", &v15, 0x1Eu);
  }

  if (v11 == 28)
  {
    v13 = 1;
  }

  else
  {
    v13 = (v11 < 0x27) & (0x4023000000uLL >> v11);
  }

  return v10 | v13;
}

+ (BOOL)hasVideoFile
{
  v2 = +[NSFileManager defaultManager];
  v3 = +[COSInternalUserStudyAssetManager filePath];
  v4 = [v2 fileExistsAtPath:v3];

  v5 = pbb_setup_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [NSNumber numberWithBool:v4];
    v8 = 136315394;
    v9 = "+[COSInternalUserStudyViewController hasVideoFile]";
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s - Had User Study Video? %@", &v8, 0x16u);
  }

  return v4;
}

- (COSInternalUserStudyViewController)init
{
  v11.receiver = self;
  v11.super_class = COSInternalUserStudyViewController;
  v2 = [(COSOptinViewController *)&v11 init];
  v3 = v2;
  if (v2)
  {
    [(COSInternalUserStudyViewController *)v2 setStyle:26];
    v4 = [AVQueuePlayer queuePlayerWithItems:&__NSArray0__struct];
    player = v3->_player;
    v3->_player = v4;

    [(AVQueuePlayer *)v3->_player setAllowsExternalPlayback:0];
    [(AVQueuePlayer *)v3->_player setMuted:1];
    v6 = v3->_player;
    v9 = *&kCMTimeZero.value;
    epoch = kCMTimeZero.epoch;
    [(AVQueuePlayer *)v6 seekToTime:&v9];
    [(AVQueuePlayer *)v3->_player setActionAtItemEnd:2];
    v7 = +[NSNotificationCenter defaultCenter];
    [v7 addObserver:v3 selector:"playerItemDidReachEnd:" name:AVPlayerItemDidPlayToEndTimeNotification object:0];
  }

  return v3;
}

- (void)viewDidLoad
{
  v37.receiver = self;
  v37.super_class = COSInternalUserStudyViewController;
  [(COSInternalUserStudyViewController *)&v37 viewDidLoad];
  v3 = +[COSInternalUserStudyAssetManager fileURLPath];
  v4 = [NSURL URLWithString:v3];
  objc_initWeak(&location, self);
  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_10004D1CC;
  v34[3] = &unk_1002692E0;
  objc_copyWeak(&v35, &location);
  [(COSInternalUserStudyViewController *)self addItemWithURL:v4 completion:v34];
  v5 = objc_alloc_init(UIView);
  movieView = self->_movieView;
  self->_movieView = v5;

  v7 = self->_movieView;
  v8 = +[UIColor clearColor];
  [(UIView *)v7 setBackgroundColor:v8];

  [(UIView *)self->_movieView setTranslatesAutoresizingMaskIntoConstraints:0];
  contentView = [(COSInternalUserStudyViewController *)self contentView];
  [contentView addSubview:self->_movieView];

  contentView2 = [(COSInternalUserStudyViewController *)self contentView];
  topAnchor = [contentView2 topAnchor];
  topAnchor2 = [(UIView *)self->_movieView topAnchor];
  v13 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v13 setActive:1];

  contentView3 = [(COSInternalUserStudyViewController *)self contentView];
  bottomAnchor = [contentView3 bottomAnchor];
  bottomAnchor2 = [(UIView *)self->_movieView bottomAnchor];
  v17 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [v17 setActive:1];

  *&v33.m11 = vdupq_n_s64(0x4064000000000000uLL);
  *&v33.m13 = vdupq_n_s64(0x406F400000000000uLL);
  *&v33.m21 = *&v33.m13;
  *&v33.m23 = *&v33.m13;
  BPSScreenValueGetRelevantValue();
  v19 = v18;
  heightAnchor = [(UIView *)self->_movieView heightAnchor];
  v21 = [heightAnchor constraintEqualToConstant:v19];
  [v21 setActive:1];

  widthAnchor = [(UIView *)self->_movieView widthAnchor];
  heightAnchor2 = [(UIView *)self->_movieView heightAnchor];
  v24 = [widthAnchor constraintEqualToAnchor:heightAnchor2 multiplier:0.5625];
  [v24 setActive:1];

  centerXAnchor = [(UIView *)self->_movieView centerXAnchor];
  contentView4 = [(COSInternalUserStudyViewController *)self contentView];
  centerXAnchor2 = [contentView4 centerXAnchor];
  v28 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  [v28 setActive:1];

  v29 = [AVPlayerLayer playerLayerWithPlayer:self->_player];
  playerLayer = self->_playerLayer;
  self->_playerLayer = v29;

  v31 = self->_playerLayer;
  CATransform3DMakeRotation(&v33, 1.57079633, 0.0, 0.0, 1.0);
  [(AVPlayerLayer *)v31 setTransform:&v33];
  layer = [(UIView *)self->_movieView layer];
  [layer addSublayer:self->_playerLayer];

  objc_destroyWeak(&v35);
  objc_destroyWeak(&location);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = COSInternalUserStudyViewController;
  [(COSInternalUserStudyViewController *)&v4 viewDidDisappear:disappear];
  [(COSInternalUserStudyViewController *)self _teardownPlayback];
}

- (void)viewDidLayoutSubviews
{
  v4.receiver = self;
  v4.super_class = COSInternalUserStudyViewController;
  [(COSInternalUserStudyViewController *)&v4 viewDidLayoutSubviews];
  playerLayer = self->_playerLayer;
  [(UIView *)self->_movieView bounds];
  [(AVPlayerLayer *)playerLayer setFrame:?];
}

- (void)addItemWithURL:(id)l completion:(id)completion
{
  completionCopy = completion;
  [AVURLAsset assetWithURL:l];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10004D3DC;
  v9[3] = &unk_100269308;
  selfCopy = self;
  v10 = v12 = completionCopy;
  v7 = completionCopy;
  v8 = v10;
  [v8 loadValuesAsynchronouslyForKeys:&off_100281780 completionHandler:v9];
}

- (void)replayMovie:(id)movie
{
  player = self->_player;
  v5 = *&kCMTimeZero.value;
  epoch = kCMTimeZero.epoch;
  [(AVQueuePlayer *)player seekToTime:&v5];
  [(AVQueuePlayer *)self->_player play];
}

- (void)_teardownPlayback
{
  [(AVQueuePlayer *)self->_player pause];
  [(AVQueuePlayer *)self->_player removeAllItems];
  [(AVPlayerLayer *)self->_playerLayer removeFromSuperlayer];
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4 = pbb_setupflow_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[COSInternalUserStudyViewController _teardownPlayback]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s finished tearing down internal user study video playback", &v5, 0xCu);
  }
}

- (void)_playIfLoaded
{
  if (self->_assetsLoaded)
  {
    playerLayer = self->_playerLayer;
    [(UIView *)self->_movieView bounds];
    [(AVPlayerLayer *)playerLayer setFrame:?];
    [(AVQueuePlayer *)self->_player insertItem:self->_userCaptureSequence afterItem:0];
    player = self->_player;

    [(AVQueuePlayer *)player play];
  }
}

- (id)titleString
{
  v2 = +[COSInternalUserStudyAssetManager detailBundle];
  v3 = [v2 localizedStringForKey:@"USER_STUDY_TITLE" value:&stru_10026E598 table:@"User_Study"];

  return v3;
}

- (id)detailString
{
  v2 = +[COSInternalUserStudyAssetManager detailBundle];
  v3 = [v2 localizedStringForKey:@"USER_STUDY_DETAIL" value:&stru_10026E598 table:@"User_Study"];

  setupController = [UIApp setupController];
  visualDetector = [setupController visualDetector];

  confidenceSummary = [visualDetector confidenceSummary];
  [confidenceSummary confidence];
  v8 = (v7 * 100.0);
  attribute = [confidenceSummary attribute];
  v10 = (attribute - 5);
  if (attribute < 5)
  {
    if ((attribute - 1) > 2)
    {
      v13 = @"no Watch visible";
    }

    else
    {
      v13 = *(&off_100269420 + (attribute - 1));
    }

    [v3 stringByAppendingFormat:@"\n\n[ML Classifier says: %ld%% Confident this is %@]", v8, v13, v16];
  }

  else
  {
    if (v10 > 3)
    {
      v11 = &stru_10026E598;
      v12 = &stru_10026E598;
    }

    else
    {
      v11 = *(&off_1002693E0 + v10);
      v12 = *(&off_100269400 + v10);
    }

    if (![(__CFString *)v11 length]|| ![(__CFString *)v12 length])
    {
      goto LABEL_13;
    }

    [v3 stringByAppendingFormat:@"\n\n[ML Classifier says: %ld%% Confident this is %@ Wrist + %@ Crown]", v8, v11, v12];
  }
  v14 = ;

  v3 = v14;
LABEL_13:

  return v3;
}

- (void)_disableButtons
{
  v3 = pbb_setup_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Buttons Disabled while upload proceeds...", v6, 2u);
  }

  suggestedChoiceButton = [(COSInternalUserStudyViewController *)self suggestedChoiceButton];
  [suggestedChoiceButton setEnabled:0];

  alternateChoiceButton = [(COSInternalUserStudyViewController *)self alternateChoiceButton];
  [alternateChoiceButton setEnabled:0];
}

- (void)confirmDockUpload
{
  v3 = +[COSInternalUserStudyAssetManager detailBundle];
  v4 = [v3 localizedStringForKey:@"DOCK_TITLE" value:&stru_10026E598 table:@"User_Study"];
  v5 = +[COSInternalUserStudyAssetManager detailBundle];
  v6 = [v5 localizedStringForKey:@"DOCK_MESSAGE" value:&stru_10026E598 table:@"User_Study"];
  v7 = [UIAlertController alertControllerWithTitle:v4 message:v6 preferredStyle:1];

  v8 = +[COSInternalUserStudyAssetManager detailBundle];
  v9 = [v8 localizedStringForKey:@"USER_STUDY_ENABLE_ALERT_OK" value:&stru_10026E598 table:@"User_Study"];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10004DE24;
  v20[3] = &unk_100268580;
  v20[4] = self;
  v10 = [UIAlertAction actionWithTitle:v9 style:0 handler:v20];

  v11 = +[COSInternalUserStudyAssetManager detailBundle];
  v12 = [v11 localizedStringForKey:@"USER_STUDY_DECLINE" value:&stru_10026E598 table:@"User_Study"];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10004DE2C;
  v19[3] = &unk_100268580;
  v19[4] = self;
  v13 = [UIAlertAction actionWithTitle:v12 style:2 handler:v19];

  [v10 setEnabled:0];
  [v13 setEnabled:0];
  [v7 addAction:v10];
  [v7 addAction:v13];
  [v7 setPreferredAction:v13];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10004DE6C;
  v16[3] = &unk_100268358;
  v17 = v10;
  v18 = v13;
  v14 = v13;
  v15 = v10;
  [(COSInternalUserStudyViewController *)self presentViewController:v7 animated:1 completion:v16];
}

- (void)suggestedButtonPressed:(id)pressed
{
  v4 = pbb_setup_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[COSInternalUserStudyViewController suggestedButtonPressed:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s", &v5, 0xCu);
  }

  if (sub_10002D088() < 1)
  {
    [(COSInternalUserStudyViewController *)self showOptinConfirmationAlert:@"USER_STUDY" optinChoice:1];
  }

  else
  {
    [(COSInternalUserStudyViewController *)self _disableButtons];
    [(COSInternalUserStudyViewController *)self _uploadAssetAndComplete];
  }
}

- (void)alternateButtonPressed:(id)pressed
{
  v4 = pbb_setup_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[COSInternalUserStudyViewController alternateButtonPressed:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s", &v5, 0xCu);
  }

  [(COSInternalUserStudyViewController *)self _disableButtons];
  [(COSInternalUserStudyViewController *)self applyConfirmedOptin:0];
}

- (void)learnMoreButtonPressed:(id)pressed
{
  v8 = objc_alloc_init(COSAboutTextViewController);
  v4 = +[COSInternalUserStudyAssetManager detailBundle];
  v5 = [v4 localizedStringForKey:@"ABOUT_USER_STUDY" value:&stru_10026E598 table:@"User_Study"];
  [(COSAboutTextViewController *)v8 setTitleString:v5];

  v6 = +[COSInternalUserStudyAssetManager detailBundle];
  v7 = [v6 localizedStringForKey:@"WHAT_IS_USER_STUDY_DESCRIPTION" value:&stru_10026E598 table:@"User_Study"];
  [(COSAboutTextViewController *)v8 setHeaderString:v7];

  [(COSAboutTextViewController *)v8 presentWithController:self];
}

- (void)_uploadAssetAndComplete
{
  v3 = objc_alloc_init(COSInternalUserStudyAssetManager);
  assetManager = self->_assetManager;
  self->_assetManager = v3;

  v5 = pbb_setup_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Request User Study Data", buf, 2u);
  }

  isBeamBridgeReachable = [objc_opt_class() isBeamBridgeReachable];
  v7 = pbb_setup_log();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (isBeamBridgeReachable)
  {
    if (v8)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Upload via Blobby", buf, 2u);
    }

    v9 = self->_assetManager;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10004E3D4;
    v12[3] = &unk_100269378;
    v12[4] = self;
    [(COSInternalUserStudyAssetManager *)v9 requestDataForVideoAssetWithCompletion:v12];
  }

  else
  {
    if (v8)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Sideload via TTR", buf, 2u);
    }

    v10 = self->_assetManager;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10004EA54;
    v11[3] = &unk_1002682C8;
    v11[4] = self;
    [(COSInternalUserStudyAssetManager *)v10 createRadarForData:v11];
  }
}

- (void)applyConfirmedOptin:(BOOL)optin
{
  optinCopy = optin;
  [(COSInternalUserStudyViewController *)self _disableButtons];
  if (optinCopy)
  {
    v5 = +[COSInternalUserStudyDataManager sharedManager];
    detectedWristChoice = [v5 detectedWristChoice];

    if (detectedWristChoice == 5)
    {
      v7 = dispatch_time(0, 10000000000);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10004ED34;
      block[3] = &unk_1002682F0;
      block[4] = self;
      dispatch_after(v7, &_dispatch_main_q, block);
    }

    else
    {

      [(COSInternalUserStudyViewController *)self _uploadAssetAndComplete];
    }
  }

  else
  {
    +[COSInternalUserStudyAssetManager clearVideoFile];

    [(COSInternalUserStudyViewController *)self completePane];
  }
}

- (id)suggestedButtonTitle
{
  isBeamBridgeReachable = [objc_opt_class() isBeamBridgeReachable];
  v3 = +[COSInternalUserStudyAssetManager detailBundle];
  v4 = v3;
  if (isBeamBridgeReachable)
  {
    v5 = @"USER_STUDY_ACCEPT";
  }

  else
  {
    v5 = @"USER_STUDY_ACCEPT_WITH_RADAR";
  }

  v6 = [v3 localizedStringForKey:v5 value:&stru_10026E598 table:@"User_Study"];

  return v6;
}

- (id)alternateButtonTitle
{
  v2 = +[COSInternalUserStudyAssetManager detailBundle];
  v3 = [v2 localizedStringForKey:@"USER_STUDY_DECLINE" value:&stru_10026E598 table:@"User_Study"];

  return v3;
}

- (id)learnMoreButtonTitle
{
  v2 = +[COSInternalUserStudyAssetManager detailBundle];
  v3 = [v2 localizedStringForKey:@"ABOUT_USER_STUDY" value:&stru_10026E598 table:@"User_Study"];

  return v3;
}

- (double)noHWDetailOffset
{
  __asm { FMOV            V0.2D, #15.0 }

  BPSScreenValueGetRelevantValue();
  return result;
}

- (void)completePane
{
  v3 = pbb_setup_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v6 = "[COSInternalUserStudyViewController completePane]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10004F028;
  block[3] = &unk_1002682F0;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

@end