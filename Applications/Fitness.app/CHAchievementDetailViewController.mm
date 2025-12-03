@interface CHAchievementDetailViewController
+ (id)resourceProvider;
- (CGRect)badgeFrame;
- (CHAchievementDetailViewController)initWithAchievement:(id)achievement locProvider:(id)provider formatsForFriend:(BOOL)friend forDayView:(BOOL)view forModalPresentation:(BOOL)presentation shouldShowCelebration:(BOOL)celebration;
- (id)activityViewControllerLinkPresentationMetadata:(id)metadata;
- (void)_willEnterForeground;
- (void)animateModalBadgeView;
- (void)animateModalBadgeViewIfNeeded;
- (void)appWillResignActive:(id)active;
- (void)configureBadgeView;
- (void)configurePlayer;
- (void)placeBadgeViewInContainer;
- (void)playerFinished:(id)finished;
- (void)setupCelebrationVideoIfNeeded;
- (void)shareTapped:(id)tapped;
- (void)teardownPlayer;
- (void)textSizeChanged:(id)changed;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillLayoutSubviews;
@end

@implementation CHAchievementDetailViewController

+ (id)resourceProvider
{
  if (qword_1008F99B8 != -1)
  {
    sub_10069BFE8();
  }

  v3 = qword_1008F99B0;

  return v3;
}

- (CHAchievementDetailViewController)initWithAchievement:(id)achievement locProvider:(id)provider formatsForFriend:(BOOL)friend forDayView:(BOOL)view forModalPresentation:(BOOL)presentation shouldShowCelebration:(BOOL)celebration
{
  friendCopy = friend;
  achievementCopy = achievement;
  providerCopy = provider;
  v30.receiver = self;
  v30.super_class = CHAchievementDetailViewController;
  v17 = [(CHAchievementDetailViewController *)&v30 initWithNibName:0 bundle:0];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_achievement, achievement);
    v18->_earned = [achievementCopy unearned] ^ 1;
    objc_storeStrong(&v18->_locProvider, provider);
    v19 = [[AAUIAchievementFormatter alloc] initWithStyle:1 achievement:achievementCopy achLocalizationProvider:v18->_locProvider];
    formatter = v18->_formatter;
    v18->_formatter = v19;

    [(AAUIAchievementFormatter *)v18->_formatter setFormatsForFriend:friendCopy];
    v18->_forDayView = view;
    v18->_forModalPresentation = presentation;
    v18->_shouldShowCelebration = celebration;
    v21 = [[AAUIBadgeView alloc] initUsingEarnedShader:v18->_earned];
    badgeView = v18->_badgeView;
    v18->_badgeView = v21;

    [(AAUIBadgeView *)v18->_badgeView setOpaque:0];
    [(AAUIBadgeView *)v18->_badgeView setAutoresizingMask:0];
    [(CHAchievementDetailViewController *)v18 configureBadgeView];
    v23 = +[NSNotificationCenter defaultCenter];
    [v23 addObserver:v18 selector:"textSizeChanged:" name:UIContentSizeCategoryDidChangeNotification object:0];

    if (!friendCopy)
    {
      v24 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:9 target:v18 action:"shareTapped:"];
      navigationItem = [(CHAchievementDetailViewController *)v18 navigationItem];
      [navigationItem setRightBarButtonItem:v24];
    }

    v26 = +[NSNotificationCenter defaultCenter];
    [v26 addObserver:v18 selector:"appWillResignActive:" name:UIApplicationWillResignActiveNotification object:0];

    v27 = +[NSNotificationCenter defaultCenter];
    [v27 addObserver:v18 selector:"_willEnterForeground" name:UIApplicationWillEnterForegroundNotification object:0];

    v28 = +[NSNotificationCenter defaultCenter];
    [v28 addObserver:v18 selector:"_didEnterBackground" name:UIApplicationDidEnterBackgroundNotification object:0];
  }

  return v18;
}

- (void)_willEnterForeground
{
  [(CHAchievementDetailViewController *)self setupCelebrationVideoIfNeeded];
  [(CHAchievementDetailViewController *)self setDidAppear:1];
  avPlayer = [(CHAchievementDetailViewController *)self avPlayer];

  if (avPlayer)
  {
    v4 = ACHLogDefault();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Playing achievement celebration video", v6, 2u);
    }

    avPlayer2 = [(CHAchievementDetailViewController *)self avPlayer];
    [avPlayer2 play];
  }

  else if ([(CHAchievementDetailViewController *)self forModalPresentation])
  {

    [(CHAchievementDetailViewController *)self animateModalBadgeViewIfNeeded];
  }
}

- (void)configureBadgeView
{
  resourceProvider = [objc_opt_class() resourceProvider];
  achievement = [(CHAchievementDetailViewController *)self achievement];
  v5 = [resourceProvider badgeConfigurationForAchievement:achievement];

  formatter = [(CHAchievementDetailViewController *)self formatter];
  localizedAttributedBacksideString = [formatter localizedAttributedBacksideString];

  formatter2 = [(CHAchievementDetailViewController *)self formatter];
  localizedAttributedShortenedBacksideString = [formatter2 localizedAttributedShortenedBacksideString];

  badgeView = [(CHAchievementDetailViewController *)self badgeView];
  [badgeView setConfiguration:v5];

  badgeView2 = [(CHAchievementDetailViewController *)self badgeView];
  achievement2 = [(CHAchievementDetailViewController *)self achievement];
  v13 = [resourceProvider backSideIconImageForAchievement:achievement2];
  [badgeView2 setBadgeBacksideIcon:v13];

  if ([localizedAttributedBacksideString length])
  {
    badgeView3 = [(CHAchievementDetailViewController *)self badgeView];
    [badgeView3 setBadgeBacksideAttributedString:localizedAttributedBacksideString];

    badgeView4 = [(CHAchievementDetailViewController *)self badgeView];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1000DEBA8;
    v16[3] = &unk_10083BA50;
    v17 = localizedAttributedShortenedBacksideString;
    [badgeView4 setShortenedBadgeBacksideStringProvider:v16];
  }
}

- (void)placeBadgeViewInContainer
{
  badgeContainer = [(CHAchievementDetailViewController *)self badgeContainer];
  badgeView = [(CHAchievementDetailViewController *)self badgeView];
  [badgeContainer addSubview:badgeView];

  badgeContainer2 = [(CHAchievementDetailViewController *)self badgeContainer];
  [badgeContainer2 bounds];
  MidX = CGRectGetMidX(v11);
  badgeContainer3 = [(CHAchievementDetailViewController *)self badgeContainer];
  [badgeContainer3 bounds];
  MidY = CGRectGetMidY(v12);
  badgeView2 = [(CHAchievementDetailViewController *)self badgeView];
  [badgeView2 setCenter:{MidX, MidY}];
}

- (void)viewDidLoad
{
  v110.receiver = self;
  v110.super_class = CHAchievementDetailViewController;
  [(CHAchievementDetailViewController *)&v110 viewDidLoad];
  navigationItem = [(CHAchievementDetailViewController *)self navigationItem];
  [navigationItem setLargeTitleDisplayMode:2];

  v4 = +[UIColor systemBackgroundColor];
  view = [(CHAchievementDetailViewController *)self view];
  [view setBackgroundColor:v4];

  if ([(CHAchievementDetailViewController *)self forModalPresentation])
  {
    v6 = objc_alloc_init(UIView);
    [(CHAchievementDetailViewController *)self setCelebrationVideoContainer:v6];

    celebrationVideoContainer = [(CHAchievementDetailViewController *)self celebrationVideoContainer];
    [celebrationVideoContainer setTranslatesAutoresizingMaskIntoConstraints:0];

    view2 = [(CHAchievementDetailViewController *)self view];
    celebrationVideoContainer2 = [(CHAchievementDetailViewController *)self celebrationVideoContainer];
    [view2 addSubview:celebrationVideoContainer2];
  }

  v10 = objc_alloc_init(UIView);
  [(CHAchievementDetailViewController *)self setBadgeContainer:v10];

  badgeContainer = [(CHAchievementDetailViewController *)self badgeContainer];
  [badgeContainer setTranslatesAutoresizingMaskIntoConstraints:0];

  view3 = [(CHAchievementDetailViewController *)self view];
  badgeContainer2 = [(CHAchievementDetailViewController *)self badgeContainer];
  [view3 addSubview:badgeContainer2];

  v14 = objc_alloc_init(UILabel);
  [(CHAchievementDetailViewController *)self setLabel:v14];

  label = [(CHAchievementDetailViewController *)self label];
  [label setNumberOfLines:0];

  label2 = [(CHAchievementDetailViewController *)self label];
  LODWORD(v17) = 1148846080;
  [label2 setContentCompressionResistancePriority:1 forAxis:v17];

  label3 = [(CHAchievementDetailViewController *)self label];
  LODWORD(v19) = 1148846080;
  [label3 setContentHuggingPriority:1 forAxis:v19];

  label4 = [(CHAchievementDetailViewController *)self label];
  [label4 setTranslatesAutoresizingMaskIntoConstraints:0];

  view4 = [(CHAchievementDetailViewController *)self view];
  label5 = [(CHAchievementDetailViewController *)self label];
  [view4 addSubview:label5];

  LODWORD(label5) = [(CHAchievementDetailViewController *)self forDayView];
  formatter = [(CHAchievementDetailViewController *)self formatter];
  v24 = formatter;
  if (label5)
  {
    [formatter localizedAttributedCombinedStringWithoutProgress];
  }

  else
  {
    [formatter localizedAttributedCombinedString];
  }
  v25 = ;
  label6 = [(CHAchievementDetailViewController *)self label];
  [label6 setAttributedText:v25];

  label7 = [(CHAchievementDetailViewController *)self label];
  leadingAnchor = [label7 leadingAnchor];
  view5 = [(CHAchievementDetailViewController *)self view];
  leadingAnchor2 = [view5 leadingAnchor];
  v31 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:16.0];
  [v31 setActive:1];

  label8 = [(CHAchievementDetailViewController *)self label];
  trailingAnchor = [label8 trailingAnchor];
  view6 = [(CHAchievementDetailViewController *)self view];
  trailingAnchor2 = [view6 trailingAnchor];
  v36 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-16.0];
  [v36 setActive:1];

  label9 = [(CHAchievementDetailViewController *)self label];
  lastBaselineAnchor = [label9 lastBaselineAnchor];
  view7 = [(CHAchievementDetailViewController *)self view];
  safeAreaLayoutGuide = [view7 safeAreaLayoutGuide];
  bottomAnchor = [safeAreaLayoutGuide bottomAnchor];
  v42 = [UIFont preferredFontForTextStyle:UIFontTextStyleFootnote];
  [v42 _scaledValueForValue:-12.0];
  v43 = [lastBaselineAnchor constraintEqualToAnchor:bottomAnchor constant:?];
  [(CHAchievementDetailViewController *)self setTextBottomBaselineConstraint:v43];

  textBottomBaselineConstraint = [(CHAchievementDetailViewController *)self textBottomBaselineConstraint];
  [textBottomBaselineConstraint setActive:1];

  v45 = objc_alloc_init(UILayoutGuide);
  view8 = [(CHAchievementDetailViewController *)self view];
  [view8 addLayoutGuide:v45];

  leadingAnchor3 = [v45 leadingAnchor];
  view9 = [(CHAchievementDetailViewController *)self view];
  leadingAnchor4 = [view9 leadingAnchor];
  v50 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:16.0];
  [v50 setActive:1];

  trailingAnchor3 = [v45 trailingAnchor];
  view10 = [(CHAchievementDetailViewController *)self view];
  trailingAnchor4 = [view10 trailingAnchor];
  v54 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:-16.0];
  [v54 setActive:1];

  topAnchor = [v45 topAnchor];
  view11 = [(CHAchievementDetailViewController *)self view];
  safeAreaLayoutGuide2 = [view11 safeAreaLayoutGuide];
  topAnchor2 = [safeAreaLayoutGuide2 topAnchor];
  v59 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:24.0];
  [v59 setActive:1];

  bottomAnchor2 = [v45 bottomAnchor];
  label10 = [(CHAchievementDetailViewController *)self label];
  topAnchor3 = [label10 topAnchor];
  v63 = [bottomAnchor2 constraintEqualToAnchor:topAnchor3 constant:-24.0];
  [v63 setActive:1];

  badgeContainer3 = [(CHAchievementDetailViewController *)self badgeContainer];
  centerXAnchor = [badgeContainer3 centerXAnchor];
  centerXAnchor2 = [v45 centerXAnchor];
  v67 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  [v67 setActive:1];

  badgeContainer4 = [(CHAchievementDetailViewController *)self badgeContainer];
  centerYAnchor = [badgeContainer4 centerYAnchor];
  centerYAnchor2 = [v45 centerYAnchor];
  v71 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  [v71 setActive:1];

  badgeContainer5 = [(CHAchievementDetailViewController *)self badgeContainer];
  widthAnchor = [badgeContainer5 widthAnchor];
  widthAnchor2 = [v45 widthAnchor];
  v75 = [widthAnchor constraintEqualToAnchor:widthAnchor2];

  LODWORD(v76) = 1144750080;
  [v75 setPriority:v76];
  [v75 setActive:1];
  badgeContainer6 = [(CHAchievementDetailViewController *)self badgeContainer];
  heightAnchor = [badgeContainer6 heightAnchor];
  badgeContainer7 = [(CHAchievementDetailViewController *)self badgeContainer];
  widthAnchor3 = [badgeContainer7 widthAnchor];
  +[AAUIBadgeView badgeAspectRatio];
  v82 = [heightAnchor constraintEqualToAnchor:widthAnchor3 multiplier:1.0 / v81];
  [v82 setActive:1];

  badgeContainer8 = [(CHAchievementDetailViewController *)self badgeContainer];
  heightAnchor2 = [badgeContainer8 heightAnchor];
  heightAnchor3 = [v45 heightAnchor];
  v86 = [heightAnchor2 constraintLessThanOrEqualToAnchor:heightAnchor3 multiplier:1.0];
  [v86 setActive:1];

  if ([(CHAchievementDetailViewController *)self forModalPresentation])
  {
    celebrationVideoContainer3 = [(CHAchievementDetailViewController *)self celebrationVideoContainer];
    topAnchor4 = [celebrationVideoContainer3 topAnchor];
    view12 = [(CHAchievementDetailViewController *)self view];
    topAnchor5 = [view12 topAnchor];
    v91 = [topAnchor4 constraintEqualToAnchor:topAnchor5];
    [v91 setActive:1];

    celebrationVideoContainer4 = [(CHAchievementDetailViewController *)self celebrationVideoContainer];
    leadingAnchor5 = [celebrationVideoContainer4 leadingAnchor];
    view13 = [(CHAchievementDetailViewController *)self view];
    leadingAnchor6 = [view13 leadingAnchor];
    v96 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
    [v96 setActive:1];

    celebrationVideoContainer5 = [(CHAchievementDetailViewController *)self celebrationVideoContainer];
    trailingAnchor5 = [celebrationVideoContainer5 trailingAnchor];
    view14 = [(CHAchievementDetailViewController *)self view];
    trailingAnchor6 = [view14 trailingAnchor];
    v101 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
    [v101 setActive:1];

    celebrationVideoContainer6 = [(CHAchievementDetailViewController *)self celebrationVideoContainer];
    bottomAnchor3 = [celebrationVideoContainer6 bottomAnchor];
    view15 = [(CHAchievementDetailViewController *)self view];
    safeAreaLayoutGuide3 = [view15 safeAreaLayoutGuide];
    bottomAnchor4 = [safeAreaLayoutGuide3 bottomAnchor];
    v107 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
    [v107 setActive:1];

    v108 = +[UIColor systemBlackColor];
    view16 = [(CHAchievementDetailViewController *)self view];
    [view16 setBackgroundColor:v108];

    [(CHAchievementDetailViewController *)self placeBadgeViewInContainer];
    [(CHAchievementDetailViewController *)self setupCelebrationVideoIfNeeded];
  }
}

- (void)setupCelebrationVideoIfNeeded
{
  if ([(CHAchievementDetailViewController *)self forModalPresentation])
  {
    if ([(CHAchievementDetailViewController *)self shouldShowCelebration])
    {
      achievement = [(CHAchievementDetailViewController *)self achievement];
      unearned = [achievement unearned];

      if ((unearned & 1) == 0)
      {

        [(CHAchievementDetailViewController *)self configurePlayer];
      }
    }
  }
}

- (void)viewWillLayoutSubviews
{
  v17.receiver = self;
  v17.super_class = CHAchievementDetailViewController;
  [(CHAchievementDetailViewController *)&v17 viewWillLayoutSubviews];
  badgeView = [(CHAchievementDetailViewController *)self badgeView];
  superview = [badgeView superview];
  badgeContainer = [(CHAchievementDetailViewController *)self badgeContainer];

  if (superview == badgeContainer)
  {
    badgeContainer2 = [(CHAchievementDetailViewController *)self badgeContainer];
    [badgeContainer2 bounds];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    badgeView2 = [(CHAchievementDetailViewController *)self badgeView];
    [badgeView2 setFrame:{v8, v10, v12, v14}];

    if ([(CHAchievementDetailViewController *)self forModalPresentation])
    {
      if (!self->_celebrationComplete)
      {
        self->_celebrationComplete = 1;
        badgeView3 = [(CHAchievementDetailViewController *)self badgeView];
        [badgeView3 setAlpha:0.0];
      }
    }
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  v7.receiver = self;
  v7.super_class = CHAchievementDetailViewController;
  [(CHAchievementDetailViewController *)&v7 viewWillAppear:appear];
  navigationController = [(CHAchievementDetailViewController *)self navigationController];
  v5 = [navigationController conformsToProtocol:&OBJC_PROTOCOL___CHActivityHistoryPaletteNavigationController];

  if (v5)
  {
    navigationController2 = [(CHAchievementDetailViewController *)self navigationController];
    [navigationController2 detachPalette];
  }
}

- (void)viewDidLayoutSubviews
{
  v34.receiver = self;
  v34.super_class = CHAchievementDetailViewController;
  [(CHAchievementDetailViewController *)&v34 viewDidLayoutSubviews];
  badgeView = [(CHAchievementDetailViewController *)self badgeView];
  superview = [badgeView superview];
  badgeContainer = [(CHAchievementDetailViewController *)self badgeContainer];

  if (superview == badgeContainer)
  {
    badgeContainer2 = [(CHAchievementDetailViewController *)self badgeContainer];
    [badgeContainer2 bounds];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    badgeView2 = [(CHAchievementDetailViewController *)self badgeView];
    [badgeView2 setFrame:{v8, v10, v12, v14}];

    badgeContainer3 = [(CHAchievementDetailViewController *)self badgeContainer];
    [badgeContainer3 bounds];
    MidX = CGRectGetMidX(v35);
    badgeContainer4 = [(CHAchievementDetailViewController *)self badgeContainer];
    [badgeContainer4 bounds];
    MidY = CGRectGetMidY(v36);
    badgeView3 = [(CHAchievementDetailViewController *)self badgeView];
    [badgeView3 setCenter:{MidX, MidY}];

    badgeView4 = [(CHAchievementDetailViewController *)self badgeView];
    [badgeView4 resizeBadgeForCurrentViewSize];

    badgeView5 = [(CHAchievementDetailViewController *)self badgeView];
    [badgeView5 setFixedBadgeAngle:0.0];

    [(CHAchievementDetailViewController *)self setDidSetupBadgeView:1];
    avPlayerLayer = [(CHAchievementDetailViewController *)self avPlayerLayer];

    if (avPlayerLayer)
    {
      celebrationVideoContainer = [(CHAchievementDetailViewController *)self celebrationVideoContainer];
      [celebrationVideoContainer bounds];
      v26 = v25;
      v28 = v27;
      v30 = v29;
      v32 = v31;
      avPlayerLayer2 = [(CHAchievementDetailViewController *)self avPlayerLayer];
      [avPlayerLayer2 setFrame:{v26, v28, v30, v32}];
    }

    else if ([(CHAchievementDetailViewController *)self forModalPresentation])
    {
      [(CHAchievementDetailViewController *)self animateModalBadgeViewIfNeeded];
    }
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  v8.receiver = self;
  v8.super_class = CHAchievementDetailViewController;
  [(CHAchievementDetailViewController *)&v8 viewDidAppear:appear];
  [(CHAchievementDetailViewController *)self setupCelebrationVideoIfNeeded];
  [(CHAchievementDetailViewController *)self setDidAppear:1];
  avPlayer = [(CHAchievementDetailViewController *)self avPlayer];

  if (avPlayer)
  {
    v5 = ACHLogDefault();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Playing achievement celebration video", v7, 2u);
    }

    avPlayer2 = [(CHAchievementDetailViewController *)self avPlayer];
    [avPlayer2 play];
  }

  else if ([(CHAchievementDetailViewController *)self forModalPresentation])
  {
    [(CHAchievementDetailViewController *)self animateModalBadgeViewIfNeeded];
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = CHAchievementDetailViewController;
  [(CHAchievementDetailViewController *)&v4 viewDidDisappear:disappear];
  [(CHAchievementDetailViewController *)self teardownPlayer];
}

- (void)textSizeChanged:(id)changed
{
  v4 = [UIFont preferredFontForTextStyle:UIFontTextStyleFootnote];
  [v4 _scaledValueForValue:-12.0];
  v6 = v5;
  textBottomBaselineConstraint = [(CHAchievementDetailViewController *)self textBottomBaselineConstraint];
  [textBottomBaselineConstraint setConstant:v6];

  LODWORD(textBottomBaselineConstraint) = [(CHAchievementDetailViewController *)self forDayView];
  formatter = [(CHAchievementDetailViewController *)self formatter];
  v9 = formatter;
  if (textBottomBaselineConstraint)
  {
    [formatter localizedAttributedCombinedStringWithoutProgress];
  }

  else
  {
    [formatter localizedAttributedCombinedString];
  }
  v10 = ;
  label = [(CHAchievementDetailViewController *)self label];
  [label setAttributedText:v10];

  view = [(CHAchievementDetailViewController *)self view];
  [view setNeedsLayout];

  view2 = [(CHAchievementDetailViewController *)self view];
  [view2 layoutIfNeeded];

  badgeContainer = [(CHAchievementDetailViewController *)self badgeContainer];
  [badgeContainer bounds];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  badgeView = [(CHAchievementDetailViewController *)self badgeView];
  [badgeView setFrame:{v16, v18, v20, v22}];

  badgeView2 = [(CHAchievementDetailViewController *)self badgeView];
  [badgeView2 resizeBadgeForCurrentViewSize];
}

- (CGRect)badgeFrame
{
  badgeContainer = [(CHAchievementDetailViewController *)self badgeContainer];
  [badgeContainer frame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (void)shareTapped:(id)tapped
{
  achievement = [(CHAchievementDetailViewController *)self achievement];
  v5 = sub_1000F021C(achievement);

  locProvider = [(CHAchievementDetailViewController *)self locProvider];
  achievement2 = [(CHAchievementDetailViewController *)self achievement];
  v8 = [locProvider shareDescriptionForAchievement:achievement2];

  if (v5 && v8)
  {
    [(CHAchievementDetailViewController *)self setSharingImage:v5];
    [(CHAchievementDetailViewController *)self setSharingText:v8];
    v9 = [UIActivityViewController alloc];
    v18[0] = v8;
    v18[1] = v5;
    v18[2] = self;
    v10 = [NSArray arrayWithObjects:v18 count:3];
    v11 = [v9 initWithActivityItems:v10 applicationActivities:0];

    v12 = sub_1000B882C();
    [v11 setExcludedActivityTypes:v12];

    navigationController = [(CHAchievementDetailViewController *)self navigationController];

    if (navigationController)
    {
      [(CHAchievementDetailViewController *)self presentViewController:v11 animated:1 completion:0];
    }

    else
    {
      v14 = +[UIApplication sharedApplication];
      windows = [v14 windows];
      firstObject = [windows firstObject];
      rootViewController = [firstObject rootViewController];

      [rootViewController presentViewController:v11 animated:1 completion:0];
    }
  }
}

- (void)appWillResignActive:(id)active
{
  avPlayer = [(CHAchievementDetailViewController *)self avPlayer];
  [avPlayer pause];

  avPlayerLayer = [(CHAchievementDetailViewController *)self avPlayerLayer];
  [avPlayerLayer removeFromSuperlayer];

  [(CHAchievementDetailViewController *)self setAvPlayer:0];
  celebrationVideoContainer = [(CHAchievementDetailViewController *)self celebrationVideoContainer];
  [celebrationVideoContainer removeFromSuperview];

  badgeView = [(CHAchievementDetailViewController *)self badgeView];
  [badgeView setAlpha:1.0];
}

- (id)activityViewControllerLinkPresentationMetadata:(id)metadata
{
  sharingImage = [(CHAchievementDetailViewController *)self sharingImage];
  if (sharingImage)
  {
    sharingText = [(CHAchievementDetailViewController *)self sharingText];

    if (sharingText)
    {
      sharingImage = objc_alloc_init(LPLinkMetadata);
      sharingText2 = [(CHAchievementDetailViewController *)self sharingText];
      [sharingImage setSummary:sharingText2];

      v7 = [LPImage alloc];
      sharingImage2 = [(CHAchievementDetailViewController *)self sharingImage];
      v9 = UIImagePNGRepresentation(sharingImage2);
      v10 = [v7 initWithData:v9 MIMEType:@"image/png"];
      [sharingImage setImage:v10];
    }

    else
    {
      sharingImage = 0;
    }
  }

  return sharingImage;
}

- (void)playerFinished:(id)finished
{
  avPlayerLayer = [(CHAchievementDetailViewController *)self avPlayerLayer];
  [avPlayerLayer removeFromSuperlayer];

  celebrationVideoContainer = [(CHAchievementDetailViewController *)self celebrationVideoContainer];
  [celebrationVideoContainer setAlpha:0.0];

  [(CHAchievementDetailViewController *)self animateModalBadgeViewIfNeeded];
}

- (void)animateModalBadgeViewIfNeeded
{
  if (![(CHAchievementDetailViewController *)self modalBadgeFlipStarted]&& [(CHAchievementDetailViewController *)self forModalPresentation]&& [(CHAchievementDetailViewController *)self didSetupBadgeView]&& [(CHAchievementDetailViewController *)self didAppear])
  {
    [(CHAchievementDetailViewController *)self animateModalBadgeView];

    [(CHAchievementDetailViewController *)self setModalBadgeFlipStarted:1];
  }
}

- (void)animateModalBadgeView
{
  v3 = ACHLogDefault();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf.a) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Animating modal badge view", &buf, 2u);
  }

  achievement = [(CHAchievementDetailViewController *)self achievement];
  unearned = [achievement unearned];

  if (unearned)
  {
    v6 = 0.75;
    v7 = 0.5;
  }

  else
  {
    v8 = ACHLogDefault();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf.a) = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Flipping in badge animation", &buf, 2u);
    }

    badgeView = [(CHAchievementDetailViewController *)self badgeView];
    [badgeView setPaused:0];

    badgeView2 = [(CHAchievementDetailViewController *)self badgeView];
    [badgeView2 playFlipInAnimation];

    v6 = 0.5;
    v7 = 1.0;
  }

  memset(&buf, 0, sizeof(buf));
  CGAffineTransformMakeScale(&buf, v6, v6);
  v15 = buf;
  badgeView3 = [(CHAchievementDetailViewController *)self badgeView];
  v14 = v15;
  [badgeView3 setTransform:&v14];

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000E0498;
  v13[3] = &unk_10083A8B0;
  v13[4] = self;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000E0510;
  v12[3] = &unk_10083B8E0;
  v12[4] = self;
  [UIView animateWithDuration:v13 animations:v12 completion:v7];
}

- (void)configurePlayer
{
  if (!self->_avPlayer && !self->_avPlayerLayer)
  {
    achievement = [(CHAchievementDetailViewController *)self achievement];
    template = [achievement template];
    uniqueName = [template uniqueName];
    v6 = [FICelebrationAssetURLProvider celebrationMovieURLForAchievementIdentifer:uniqueName];

    if (v6)
    {
      v7 = [AVAsset assetWithURL:v6];
      v8 = [AVPlayerItem playerItemWithAsset:v7];
      v9 = objc_alloc_init(AVPlayer);
      avPlayer = self->_avPlayer;
      self->_avPlayer = v9;

      [(AVPlayer *)self->_avPlayer _setParticipatesInAudioSession:0];
      [(AVPlayer *)self->_avPlayer setActionAtItemEnd:1];
      [(AVPlayer *)self->_avPlayer replaceCurrentItemWithPlayerItem:v8];
      v11 = [AVPlayerLayer playerLayerWithPlayer:self->_avPlayer];
      avPlayerLayer = self->_avPlayerLayer;
      self->_avPlayerLayer = v11;

      [(AVPlayerLayer *)self->_avPlayerLayer setVideoGravity:AVLayerVideoGravityResizeAspectFill];
      layer = [(UIView *)self->_celebrationVideoContainer layer];
      [layer addSublayer:self->_avPlayerLayer];

      v14 = +[NSNotificationCenter defaultCenter];
      avPlayer = [(CHAchievementDetailViewController *)self avPlayer];
      currentItem = [avPlayer currentItem];
      [v14 addObserver:self selector:"playerFinished:" name:AVPlayerItemDidPlayToEndTimeNotification object:currentItem];
    }

    else
    {
      v7 = ACHLogDefault();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        achievement2 = [(CHAchievementDetailViewController *)self achievement];
        template2 = [achievement2 template];
        uniqueName2 = [template2 uniqueName];
        v20 = 138412290;
        v21 = uniqueName2;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "No celebration asset for achievement: %@", &v20, 0xCu);
      }
    }
  }
}

- (void)teardownPlayer
{
  [(AVPlayer *)self->_avPlayer replaceCurrentItemWithPlayerItem:0];
  [(AVPlayerLayer *)self->_avPlayerLayer setPlayer:0];
  [(AVPlayerLayer *)self->_avPlayerLayer removeFromSuperlayer];
  avPlayer = self->_avPlayer;
  self->_avPlayer = 0;

  avPlayerLayer = self->_avPlayerLayer;
  self->_avPlayerLayer = 0;
}

@end