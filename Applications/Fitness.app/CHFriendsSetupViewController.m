@interface CHFriendsSetupViewController
- (BOOL)_isManagedAppleId:(id *)a3;
- (CHFriendsSetupViewController)init;
- (CHFriendsSetupViewControllerDelegate)delegate;
- (void)_nextButtonTapped;
- (void)_willEnterForeground;
- (void)configurePlayer;
- (void)setPhase:(int64_t)a3 animated:(BOOL)a4;
- (void)teardownPlayer;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation CHFriendsSetupViewController

- (CHFriendsSetupViewController)init
{
  v3.receiver = self;
  v3.super_class = CHFriendsSetupViewController;
  result = [(CHFriendsSetupViewController *)&v3 init];
  if (result)
  {
    result->_phase = 0;
  }

  return result;
}

- (void)viewDidLoad
{
  v41.receiver = self;
  v41.super_class = CHFriendsSetupViewController;
  [(CHFriendsSetupViewController *)&v41 viewDidLoad];
  v3 = [(CHFriendsSetupViewController *)self navigationController];
  [v3 setNavigationBarHidden:1];

  v4 = [(CHFriendsSetupViewController *)self view];
  v5 = +[UIColor blackColor];
  [v4 setBackgroundColor:v5];

  v6 = +[UIScreen mainScreen];
  [v6 bounds];
  v8 = v7;

  v9 = &UIContentSizeCategoryExtraExtraExtraLarge;
  if (v8 <= 375.0)
  {
    v9 = &UIContentSizeCategoryLarge;
  }

  v10 = *v9;
  [(CHFriendsSetupViewController *)self configurePlayer];
  v11 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  titleLabel = self->_titleLabel;
  self->_titleLabel = v11;

  v13 = +[NSBundle mainBundle];
  v14 = [v13 localizedStringForKey:@"SHARING_SETUP_TITLE" value:&stru_1008680E8 table:@"Localizable"];
  [(UILabel *)self->_titleLabel setText:v14];

  v15 = +[UIColor whiteColor];
  [(UILabel *)self->_titleLabel setTextColor:v15];

  v16 = [UIFont defaultFontForTextStyle:UIFontTextStyleTitle0];
  [(UILabel *)self->_titleLabel setFont:v16];

  [(UILabel *)self->_titleLabel setAllowsDefaultTighteningForTruncation:1];
  [(UILabel *)self->_titleLabel setAdjustsFontSizeToFitWidth:1];
  [(UILabel *)self->_titleLabel setTextAlignment:1];
  [(UILabel *)self->_titleLabel setAccessibilityTraits:UIAccessibilityTraitHeader];
  [v4 addSubview:self->_titleLabel];
  v17 = sub_1001102A4();
  currentDescriptionLabel = self->_currentDescriptionLabel;
  self->_currentDescriptionLabel = v17;

  [v4 addSubview:self->_currentDescriptionLabel];
  v19 = sub_1001102A4();
  nextDescriptionLabel = self->_nextDescriptionLabel;
  self->_nextDescriptionLabel = v19;

  v21 = +[UIButtonConfiguration filledButtonConfiguration];
  [v21 setButtonSize:3];
  if (_UISolariumEnabled())
  {
    v22 = +[ARUIMetricColors keyColors];
    v23 = [v22 nonGradientTextColor];
    [v21 setBaseBackgroundColor:v23];

    [v21 setCornerStyle:4];
    v24 = +[UIColor blackColor];
    [v21 setBaseForegroundColor:v24];
  }

  else
  {
    v24 = +[UIColor quaternarySystemFillColor];
    [v21 setBaseBackgroundColor:v24];
  }

  objc_initWeak(&location, self);
  v35 = _NSConcreteStackBlock;
  v36 = 3221225472;
  v37 = sub_10011037C;
  v38 = &unk_10083AB00;
  objc_copyWeak(&v39, &location);
  v25 = [UIAction actionWithHandler:&v35];
  v26 = [UIButton buttonWithConfiguration:v21 primaryAction:v25, v35, v36, v37, v38];
  nextButton = self->_nextButton;
  self->_nextButton = v26;

  [(UIButton *)self->_nextButton setMaximumContentSizeCategory:v10];
  [v4 addSubview:self->_nextButton];
  v28 = [OBPrivacyLinkController linkWithBundleIdentifier:@"com.apple.onboarding.activity"];
  privacyLink = self->_privacyLink;
  self->_privacyLink = v28;

  [(OBPrivacyLinkController *)self->_privacyLink setPresentedViewControllerShouldUseDarkMode:1];
  v30 = [(OBPrivacyLinkController *)self->_privacyLink view];
  [v30 setMaximumContentSizeCategory:v10];

  [(CHFriendsSetupViewController *)self addChildViewController:self->_privacyLink];
  v31 = [(CHFriendsSetupViewController *)self view];
  v32 = [(OBPrivacyLinkController *)self->_privacyLink view];
  [v31 addSubview:v32];

  [(CHFriendsSetupViewController *)self setPhase:self->_phase animated:0];
  v33 = +[NSNotificationCenter defaultCenter];
  [v33 addObserver:self selector:"_willEnterForeground" name:UIApplicationWillEnterForegroundNotification object:0];

  v34 = +[NSNotificationCenter defaultCenter];
  [v34 addObserver:self selector:"_didEnterBackground" name:UIApplicationDidEnterBackgroundNotification object:0];

  objc_destroyWeak(&v39);
  objc_destroyWeak(&location);
}

- (void)_willEnterForeground
{
  [(CHFriendsSetupViewController *)self configurePlayer];
  v3 = [(AVPlayerLayer *)self->_onboardingPlayerLayer player];
  [v3 play];
}

- (void)viewDidLayoutSubviews
{
  v82.receiver = self;
  v82.super_class = CHFriendsSetupViewController;
  [(CHFriendsSetupViewController *)&v82 viewDidLayoutSubviews];
  v3 = [(CHFriendsSetupViewController *)self view];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v85.origin.x = v5;
  v85.origin.y = v7;
  v85.size.width = v9;
  v85.size.height = v11;
  MidX = CGRectGetMidX(v85);
  v86.origin.x = v5;
  v86.origin.y = v7;
  v86.size.width = v9;
  v86.size.height = v11;
  Width = CGRectGetWidth(v86);
  v87.origin.x = v5;
  v87.origin.y = v7;
  v87.size.width = v9;
  v14 = v9;
  v87.size.height = v11;
  Height = CGRectGetHeight(v87);
  v15 = MidX;
  v16 = sub_1000E0C74(MidX, Width + -32.0);
  +[CATransaction begin];
  [CATransaction setDisableActions:1];
  y = CGPointZero.y;
  [(AVPlayerLayer *)self->_onboardingPlayerLayer setBounds:?];
  [(AVPlayerLayer *)self->_onboardingPlayerLayer setPosition:v16, 183.0];
  +[CATransaction commit];
  v17 = [(UILabel *)self->_titleLabel font];
  [v17 _scaledValueForValue:24.0];
  v19 = v18;

  [(AVPlayerLayer *)self->_onboardingPlayerLayer frame];
  v20 = v19 + CGRectGetMaxY(v88);
  [(UILabel *)self->_titleLabel sizeToFit];
  v75 = v20;
  [(UILabel *)self->_titleLabel _setFirstLineBaselineFrameOriginY:v20];
  v21 = v15;
  v22 = sub_1000E0C74(v15, Width);
  [(UILabel *)self->_titleLabel frame];
  MidY = CGRectGetMidY(v89);
  [(UILabel *)self->_titleLabel frame];
  v24 = CGRectGetHeight(v90);
  v25 = sub_1000E0C74(MidY, v24);
  [(UILabel *)self->_titleLabel bounds];
  v74 = Width;
  [(UILabel *)self->_titleLabel setBounds:0.0, 0.0, Width, CGRectGetHeight(v91)];
  [(UILabel *)self->_titleLabel setPosition:v22, v25];
  v26 = [(CHFriendsSetupViewController *)self view];
  [v26 directionalLayoutMargins];
  v28 = v14 - v27;
  v29 = [(CHFriendsSetupViewController *)self view];
  [v29 directionalLayoutMargins];
  v31 = v28 - v30;

  [(UIButton *)self->_nextButton systemLayoutSizeFittingSize:v14, v11];
  v33 = v32;
  v34 = sub_1000E0C74(Height + -44.0 - v32 * 0.5, v32);
  v35 = sub_1000E0C74(v15, v31);
  [(UIButton *)self->_nextButton setBounds:0.0, 0.0, v31, v33];
  [(UIButton *)self->_nextButton setCenter:v35, v34];
  v36 = [(CHFriendsSetupViewController *)self view];
  [v36 directionalLayoutMargins];
  v38 = v14 - v37;
  v39 = [(CHFriendsSetupViewController *)self view];
  [v39 directionalLayoutMargins];
  v41 = v38 - v40;

  v42 = [(OBPrivacyLinkController *)self->_privacyLink view];
  LODWORD(v43) = 1148846080;
  LODWORD(v44) = 1112014848;
  [v42 systemLayoutSizeFittingSize:v41 withHorizontalFittingPriority:0.0 verticalFittingPriority:{v43, v44}];
  v46 = v45;

  v47 = [(OBPrivacyLinkController *)self->_privacyLink view];
  [v47 setBounds:{0.0, 0.0, v41, v46}];

  v48 = [(OBPrivacyLinkController *)self->_privacyLink view];
  [v48 setPosition:{v21, Height + -44.0 - v33 + -30.0 - v46 * 0.5}];

  v49 = [(OBPrivacyLinkController *)self->_privacyLink view];
  [v49 frameOrigin];
  v51 = v50;

  currentDescriptionLabel = self->_currentDescriptionLabel;
  nextDescriptionLabel = self->_nextDescriptionLabel;
  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  v83[0] = currentDescriptionLabel;
  v83[1] = nextDescriptionLabel;
  v54 = [NSArray arrayWithObjects:v83 count:2];
  v55 = [v54 countByEnumeratingWithState:&v78 objects:v84 count:16];
  if (v55)
  {
    v56 = v55;
    v57 = *v79;
    do
    {
      for (i = 0; i != v56; i = i + 1)
      {
        if (*v79 != v57)
        {
          objc_enumerationMutation(v54);
        }

        v59 = *(*(&v78 + 1) + 8 * i);
        v60 = [v59 font];
        [v60 _scaledValueForValue:32.0];
        v62 = v61;

        v63 = v75 + v62;
        [v59 sizeThatFits:{v74 + -54.0, 1.79769313e308}];
        v65 = v64;
        *&v64 = v66;
        *&v66 = v51 - v63;
        [v59 setBounds:{CGPointZero.x, y, v65, fminf(*&v64, *&v66)}];
        [v59 frame];
        v68 = v67;
        v70 = v69;
        sub_1000E0CA8();
        v72 = v71;
        [v59 _firstBaselineOffsetFromTop];
        UIRoundToViewScale();
        [v59 setFrame:{v72, v73, v68, v70}];
      }

      v56 = [v54 countByEnumeratingWithState:&v78 objects:v84 count:16];
    }

    while (v56);
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = CHFriendsSetupViewController;
  [(CHFriendsSetupViewController *)&v4 viewWillAppear:a3];
  [(CHFriendsSetupViewController *)self configurePlayer];
}

- (void)viewDidAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = CHFriendsSetupViewController;
  [(CHFriendsSetupViewController *)&v5 viewDidAppear:a3];
  v4 = [(AVPlayerLayer *)self->_onboardingPlayerLayer player];
  [v4 play];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = CHFriendsSetupViewController;
  [(CHFriendsSetupViewController *)&v4 viewDidDisappear:a3];
  [(CHFriendsSetupViewController *)self teardownPlayer];
}

- (void)configurePlayer
{
  if (!self->_onboardingVideoPlayer && !self->_onboardingPlayerLayer)
  {
    v3 = +[NSBundle mainBundle];
    v13 = [v3 pathForResource:@"ActivitySharingOnboarding" ofType:@"mov"];

    v4 = [NSURL fileURLWithPath:v13];
    v5 = [AVAsset assetWithURL:v4];
    v6 = [AVPlayerItem playerItemWithAsset:v5];
    v7 = objc_alloc_init(AVPlayer);
    onboardingVideoPlayer = self->_onboardingVideoPlayer;
    self->_onboardingVideoPlayer = v7;

    [(AVPlayer *)self->_onboardingVideoPlayer _setParticipatesInAudioSession:0];
    [(AVPlayer *)self->_onboardingVideoPlayer setPreventsDisplaySleepDuringVideoPlayback:0];
    [(AVPlayer *)self->_onboardingVideoPlayer replaceCurrentItemWithPlayerItem:v6];
    v9 = [AVPlayerLayer playerLayerWithPlayer:self->_onboardingVideoPlayer];
    onboardingPlayerLayer = self->_onboardingPlayerLayer;
    self->_onboardingPlayerLayer = v9;

    v11 = [(CHFriendsSetupViewController *)self view];
    v12 = [v11 layer];
    [v12 addSublayer:self->_onboardingPlayerLayer];
  }
}

- (void)teardownPlayer
{
  [(AVPlayer *)self->_onboardingVideoPlayer replaceCurrentItemWithPlayerItem:0];
  [(AVPlayerLayer *)self->_onboardingPlayerLayer setPlayer:0];
  [(AVPlayerLayer *)self->_onboardingPlayerLayer removeFromSuperlayer];
  onboardingVideoPlayer = self->_onboardingVideoPlayer;
  self->_onboardingVideoPlayer = 0;

  onboardingPlayerLayer = self->_onboardingPlayerLayer;
  self->_onboardingPlayerLayer = 0;
}

- (void)setPhase:(int64_t)a3 animated:(BOOL)a4
{
  v4 = a4;
  self->_phase = a3;
  if (![(CHFriendsSetupViewController *)self isViewLoaded])
  {
    return;
  }

  switch(a3)
  {
    case 0:
      v17 = +[NSBundle mainBundle];
      v18 = [v17 localizedStringForKey:@"SHARING_SETUP_PRIMARY_DESCRIPTION" value:&stru_1008680E8 table:@"Localizable"];
      [(UILabel *)self->_nextDescriptionLabel setText:v18];

      v19 = +[NSBundle mainBundle];
      v10 = [v19 localizedStringForKey:@"SHARING_SETUP_PRIMARY_BUTTON_TITLE" value:&stru_1008680E8 table:@"Localizable"];

      break;
    case 1:
      v32 = 0;
      v11 = [(CHFriendsSetupViewController *)self _isManagedAppleId:&v32];
      v12 = v32;
      v13 = v12;
      if (v11)
      {
        if (v12)
        {
          v14 = +[NSBundle mainBundle];
          v15 = [v14 localizedStringForKey:@"SHARING_SETUP_CLOUDKIT_DESCRIPTION_RESTRICTED" value:&stru_1008680E8 table:@"Localizable"];
          v16 = [NSString localizedStringWithFormat:v15, v13];
          [(UILabel *)self->_nextDescriptionLabel setText:v16];

LABEL_14:
          v22 = +[NSBundle mainBundle];
          v10 = [v22 localizedStringForKey:@"SHARING_SETUP_CLOUDKIT_BUTTON_TITLE" value:&stru_1008680E8 table:@"Localizable"];

          break;
        }

        v20 = +[NSBundle mainBundle];
        v14 = v20;
        v21 = @"SHARING_SETUP_CLOUDKIT_DESCRIPTION_RESTRICTED_NO_USERNAME";
      }

      else
      {
        v20 = +[NSBundle mainBundle];
        v14 = v20;
        v21 = @"SHARING_SETUP_CLOUDKIT_DESCRIPTION";
      }

      v15 = [v20 localizedStringForKey:v21 value:&stru_1008680E8 table:@"Localizable"];
      [(UILabel *)self->_nextDescriptionLabel setText:v15];
      goto LABEL_14;
    case 2:
      v7 = +[NSBundle mainBundle];
      v8 = [v7 localizedStringForKey:@"SHARING_SETUP_UPGRADE_WATCH_DESCRIPTION" value:&stru_1008680E8 table:@"Localizable"];
      [(UILabel *)self->_nextDescriptionLabel setText:v8];

      v9 = +[NSBundle mainBundle];
      v10 = [v9 localizedStringForKey:@"SHARING_SETUP_UPGRADE_WATCH_BUTTON_TITLE" value:&stru_1008680E8 table:@"Localizable"];

      break;
    default:
      v10 = 0;
      break;
  }

  [(UILabel *)self->_nextDescriptionLabel setAlpha:0.0];
  v23 = [(CHFriendsSetupViewController *)self view];
  [v23 insertSubview:self->_nextDescriptionLabel below:self->_currentDescriptionLabel];

  if (_UISolariumEnabled())
  {
    v24 = [NSAttributedString alloc];
    v33 = NSFontAttributeName;
    v25 = [UIFont _preferredFontForTextStyle:UIFontTextStyleBody variant:1024];
    v34 = v25;
    v26 = [NSDictionary dictionaryWithObjects:&v34 forKeys:&v33 count:1];
    v27 = [v24 initWithString:v10 attributes:v26];

    [(UIButton *)self->_nextButton setAttributedTitle:v27 forState:0];
  }

  else
  {
    [(UIButton *)self->_nextButton setTitle:v10 forState:0];
  }

  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_1001111D8;
  v31[3] = &unk_10083A8B0;
  v31[4] = self;
  v28 = objc_retainBlock(v31);
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_100111234;
  v30[3] = &unk_10083B8E0;
  v30[4] = self;
  v29 = objc_retainBlock(v30);
  if (v4)
  {
    [UIView animateWithDuration:v28 animations:v29 completion:0.35];
  }

  else
  {
    (v28[2])(v28);
    (v29[2])(v29, 1);
  }
}

- (BOOL)_isManagedAppleId:(id *)a3
{
  v4 = objc_alloc_init(ACAccountStore);
  v5 = [v4 aa_primaryAppleAccount];
  v6 = v5;
  if (v5 && [v5 aa_isManagedAppleID])
  {
    ASLoggingInitialize();
    v7 = ASLogDefault;
    if (os_log_type_enabled(ASLogDefault, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Apple ID is a managed account, reverting to unsigned-in behavior", v10, 2u);
    }

    if (a3)
    {
      *a3 = [v6 username];
    }

    v8 = 1;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_nextButtonTapped
{
  v3 = [(CHFriendsSetupViewController *)self delegate];
  [v3 friendsSetupViewController:self didCompletePhase:self->_phase];

  if (!self->_phase)
  {
    v4 = [(CHFriendsSetupViewController *)self delegate];
    v5 = [v4 friendsSetupViewControllerShouldTransitionToCloudKitSignInPhase:self];

    if (v5)
    {

      [(CHFriendsSetupViewController *)self setPhase:1 animated:1];
    }

    else
    {
      v6 = [(CHFriendsSetupViewController *)self delegate];
      [v6 friendsSetupViewControllerDidCompleteSetup:self];
    }
  }
}

- (CHFriendsSetupViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end