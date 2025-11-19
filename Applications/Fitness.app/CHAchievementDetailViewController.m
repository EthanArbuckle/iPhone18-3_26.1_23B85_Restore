@interface CHAchievementDetailViewController
+ (id)resourceProvider;
- (CGRect)badgeFrame;
- (CHAchievementDetailViewController)initWithAchievement:(id)a3 locProvider:(id)a4 formatsForFriend:(BOOL)a5 forDayView:(BOOL)a6 forModalPresentation:(BOOL)a7 shouldShowCelebration:(BOOL)a8;
- (id)activityViewControllerLinkPresentationMetadata:(id)a3;
- (void)_willEnterForeground;
- (void)animateModalBadgeView;
- (void)animateModalBadgeViewIfNeeded;
- (void)appWillResignActive:(id)a3;
- (void)configureBadgeView;
- (void)configurePlayer;
- (void)placeBadgeViewInContainer;
- (void)playerFinished:(id)a3;
- (void)setupCelebrationVideoIfNeeded;
- (void)shareTapped:(id)a3;
- (void)teardownPlayer;
- (void)textSizeChanged:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
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

- (CHAchievementDetailViewController)initWithAchievement:(id)a3 locProvider:(id)a4 formatsForFriend:(BOOL)a5 forDayView:(BOOL)a6 forModalPresentation:(BOOL)a7 shouldShowCelebration:(BOOL)a8
{
  v11 = a5;
  v15 = a3;
  v16 = a4;
  v30.receiver = self;
  v30.super_class = CHAchievementDetailViewController;
  v17 = [(CHAchievementDetailViewController *)&v30 initWithNibName:0 bundle:0];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_achievement, a3);
    v18->_earned = [v15 unearned] ^ 1;
    objc_storeStrong(&v18->_locProvider, a4);
    v19 = [[AAUIAchievementFormatter alloc] initWithStyle:1 achievement:v15 achLocalizationProvider:v18->_locProvider];
    formatter = v18->_formatter;
    v18->_formatter = v19;

    [(AAUIAchievementFormatter *)v18->_formatter setFormatsForFriend:v11];
    v18->_forDayView = a6;
    v18->_forModalPresentation = a7;
    v18->_shouldShowCelebration = a8;
    v21 = [[AAUIBadgeView alloc] initUsingEarnedShader:v18->_earned];
    badgeView = v18->_badgeView;
    v18->_badgeView = v21;

    [(AAUIBadgeView *)v18->_badgeView setOpaque:0];
    [(AAUIBadgeView *)v18->_badgeView setAutoresizingMask:0];
    [(CHAchievementDetailViewController *)v18 configureBadgeView];
    v23 = +[NSNotificationCenter defaultCenter];
    [v23 addObserver:v18 selector:"textSizeChanged:" name:UIContentSizeCategoryDidChangeNotification object:0];

    if (!v11)
    {
      v24 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:9 target:v18 action:"shareTapped:"];
      v25 = [(CHAchievementDetailViewController *)v18 navigationItem];
      [v25 setRightBarButtonItem:v24];
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
  v3 = [(CHAchievementDetailViewController *)self avPlayer];

  if (v3)
  {
    v4 = ACHLogDefault();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Playing achievement celebration video", v6, 2u);
    }

    v5 = [(CHAchievementDetailViewController *)self avPlayer];
    [v5 play];
  }

  else if ([(CHAchievementDetailViewController *)self forModalPresentation])
  {

    [(CHAchievementDetailViewController *)self animateModalBadgeViewIfNeeded];
  }
}

- (void)configureBadgeView
{
  v3 = [objc_opt_class() resourceProvider];
  v4 = [(CHAchievementDetailViewController *)self achievement];
  v5 = [v3 badgeConfigurationForAchievement:v4];

  v6 = [(CHAchievementDetailViewController *)self formatter];
  v7 = [v6 localizedAttributedBacksideString];

  v8 = [(CHAchievementDetailViewController *)self formatter];
  v9 = [v8 localizedAttributedShortenedBacksideString];

  v10 = [(CHAchievementDetailViewController *)self badgeView];
  [v10 setConfiguration:v5];

  v11 = [(CHAchievementDetailViewController *)self badgeView];
  v12 = [(CHAchievementDetailViewController *)self achievement];
  v13 = [v3 backSideIconImageForAchievement:v12];
  [v11 setBadgeBacksideIcon:v13];

  if ([v7 length])
  {
    v14 = [(CHAchievementDetailViewController *)self badgeView];
    [v14 setBadgeBacksideAttributedString:v7];

    v15 = [(CHAchievementDetailViewController *)self badgeView];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1000DEBA8;
    v16[3] = &unk_10083BA50;
    v17 = v9;
    [v15 setShortenedBadgeBacksideStringProvider:v16];
  }
}

- (void)placeBadgeViewInContainer
{
  v3 = [(CHAchievementDetailViewController *)self badgeContainer];
  v4 = [(CHAchievementDetailViewController *)self badgeView];
  [v3 addSubview:v4];

  v9 = [(CHAchievementDetailViewController *)self badgeContainer];
  [v9 bounds];
  MidX = CGRectGetMidX(v11);
  v6 = [(CHAchievementDetailViewController *)self badgeContainer];
  [v6 bounds];
  MidY = CGRectGetMidY(v12);
  v8 = [(CHAchievementDetailViewController *)self badgeView];
  [v8 setCenter:{MidX, MidY}];
}

- (void)viewDidLoad
{
  v110.receiver = self;
  v110.super_class = CHAchievementDetailViewController;
  [(CHAchievementDetailViewController *)&v110 viewDidLoad];
  v3 = [(CHAchievementDetailViewController *)self navigationItem];
  [v3 setLargeTitleDisplayMode:2];

  v4 = +[UIColor systemBackgroundColor];
  v5 = [(CHAchievementDetailViewController *)self view];
  [v5 setBackgroundColor:v4];

  if ([(CHAchievementDetailViewController *)self forModalPresentation])
  {
    v6 = objc_alloc_init(UIView);
    [(CHAchievementDetailViewController *)self setCelebrationVideoContainer:v6];

    v7 = [(CHAchievementDetailViewController *)self celebrationVideoContainer];
    [v7 setTranslatesAutoresizingMaskIntoConstraints:0];

    v8 = [(CHAchievementDetailViewController *)self view];
    v9 = [(CHAchievementDetailViewController *)self celebrationVideoContainer];
    [v8 addSubview:v9];
  }

  v10 = objc_alloc_init(UIView);
  [(CHAchievementDetailViewController *)self setBadgeContainer:v10];

  v11 = [(CHAchievementDetailViewController *)self badgeContainer];
  [v11 setTranslatesAutoresizingMaskIntoConstraints:0];

  v12 = [(CHAchievementDetailViewController *)self view];
  v13 = [(CHAchievementDetailViewController *)self badgeContainer];
  [v12 addSubview:v13];

  v14 = objc_alloc_init(UILabel);
  [(CHAchievementDetailViewController *)self setLabel:v14];

  v15 = [(CHAchievementDetailViewController *)self label];
  [v15 setNumberOfLines:0];

  v16 = [(CHAchievementDetailViewController *)self label];
  LODWORD(v17) = 1148846080;
  [v16 setContentCompressionResistancePriority:1 forAxis:v17];

  v18 = [(CHAchievementDetailViewController *)self label];
  LODWORD(v19) = 1148846080;
  [v18 setContentHuggingPriority:1 forAxis:v19];

  v20 = [(CHAchievementDetailViewController *)self label];
  [v20 setTranslatesAutoresizingMaskIntoConstraints:0];

  v21 = [(CHAchievementDetailViewController *)self view];
  v22 = [(CHAchievementDetailViewController *)self label];
  [v21 addSubview:v22];

  LODWORD(v22) = [(CHAchievementDetailViewController *)self forDayView];
  v23 = [(CHAchievementDetailViewController *)self formatter];
  v24 = v23;
  if (v22)
  {
    [v23 localizedAttributedCombinedStringWithoutProgress];
  }

  else
  {
    [v23 localizedAttributedCombinedString];
  }
  v25 = ;
  v26 = [(CHAchievementDetailViewController *)self label];
  [v26 setAttributedText:v25];

  v27 = [(CHAchievementDetailViewController *)self label];
  v28 = [v27 leadingAnchor];
  v29 = [(CHAchievementDetailViewController *)self view];
  v30 = [v29 leadingAnchor];
  v31 = [v28 constraintEqualToAnchor:v30 constant:16.0];
  [v31 setActive:1];

  v32 = [(CHAchievementDetailViewController *)self label];
  v33 = [v32 trailingAnchor];
  v34 = [(CHAchievementDetailViewController *)self view];
  v35 = [v34 trailingAnchor];
  v36 = [v33 constraintEqualToAnchor:v35 constant:-16.0];
  [v36 setActive:1];

  v37 = [(CHAchievementDetailViewController *)self label];
  v38 = [v37 lastBaselineAnchor];
  v39 = [(CHAchievementDetailViewController *)self view];
  v40 = [v39 safeAreaLayoutGuide];
  v41 = [v40 bottomAnchor];
  v42 = [UIFont preferredFontForTextStyle:UIFontTextStyleFootnote];
  [v42 _scaledValueForValue:-12.0];
  v43 = [v38 constraintEqualToAnchor:v41 constant:?];
  [(CHAchievementDetailViewController *)self setTextBottomBaselineConstraint:v43];

  v44 = [(CHAchievementDetailViewController *)self textBottomBaselineConstraint];
  [v44 setActive:1];

  v45 = objc_alloc_init(UILayoutGuide);
  v46 = [(CHAchievementDetailViewController *)self view];
  [v46 addLayoutGuide:v45];

  v47 = [v45 leadingAnchor];
  v48 = [(CHAchievementDetailViewController *)self view];
  v49 = [v48 leadingAnchor];
  v50 = [v47 constraintEqualToAnchor:v49 constant:16.0];
  [v50 setActive:1];

  v51 = [v45 trailingAnchor];
  v52 = [(CHAchievementDetailViewController *)self view];
  v53 = [v52 trailingAnchor];
  v54 = [v51 constraintEqualToAnchor:v53 constant:-16.0];
  [v54 setActive:1];

  v55 = [v45 topAnchor];
  v56 = [(CHAchievementDetailViewController *)self view];
  v57 = [v56 safeAreaLayoutGuide];
  v58 = [v57 topAnchor];
  v59 = [v55 constraintEqualToAnchor:v58 constant:24.0];
  [v59 setActive:1];

  v60 = [v45 bottomAnchor];
  v61 = [(CHAchievementDetailViewController *)self label];
  v62 = [v61 topAnchor];
  v63 = [v60 constraintEqualToAnchor:v62 constant:-24.0];
  [v63 setActive:1];

  v64 = [(CHAchievementDetailViewController *)self badgeContainer];
  v65 = [v64 centerXAnchor];
  v66 = [v45 centerXAnchor];
  v67 = [v65 constraintEqualToAnchor:v66];
  [v67 setActive:1];

  v68 = [(CHAchievementDetailViewController *)self badgeContainer];
  v69 = [v68 centerYAnchor];
  v70 = [v45 centerYAnchor];
  v71 = [v69 constraintEqualToAnchor:v70];
  [v71 setActive:1];

  v72 = [(CHAchievementDetailViewController *)self badgeContainer];
  v73 = [v72 widthAnchor];
  v74 = [v45 widthAnchor];
  v75 = [v73 constraintEqualToAnchor:v74];

  LODWORD(v76) = 1144750080;
  [v75 setPriority:v76];
  [v75 setActive:1];
  v77 = [(CHAchievementDetailViewController *)self badgeContainer];
  v78 = [v77 heightAnchor];
  v79 = [(CHAchievementDetailViewController *)self badgeContainer];
  v80 = [v79 widthAnchor];
  +[AAUIBadgeView badgeAspectRatio];
  v82 = [v78 constraintEqualToAnchor:v80 multiplier:1.0 / v81];
  [v82 setActive:1];

  v83 = [(CHAchievementDetailViewController *)self badgeContainer];
  v84 = [v83 heightAnchor];
  v85 = [v45 heightAnchor];
  v86 = [v84 constraintLessThanOrEqualToAnchor:v85 multiplier:1.0];
  [v86 setActive:1];

  if ([(CHAchievementDetailViewController *)self forModalPresentation])
  {
    v87 = [(CHAchievementDetailViewController *)self celebrationVideoContainer];
    v88 = [v87 topAnchor];
    v89 = [(CHAchievementDetailViewController *)self view];
    v90 = [v89 topAnchor];
    v91 = [v88 constraintEqualToAnchor:v90];
    [v91 setActive:1];

    v92 = [(CHAchievementDetailViewController *)self celebrationVideoContainer];
    v93 = [v92 leadingAnchor];
    v94 = [(CHAchievementDetailViewController *)self view];
    v95 = [v94 leadingAnchor];
    v96 = [v93 constraintEqualToAnchor:v95];
    [v96 setActive:1];

    v97 = [(CHAchievementDetailViewController *)self celebrationVideoContainer];
    v98 = [v97 trailingAnchor];
    v99 = [(CHAchievementDetailViewController *)self view];
    v100 = [v99 trailingAnchor];
    v101 = [v98 constraintEqualToAnchor:v100];
    [v101 setActive:1];

    v102 = [(CHAchievementDetailViewController *)self celebrationVideoContainer];
    v103 = [v102 bottomAnchor];
    v104 = [(CHAchievementDetailViewController *)self view];
    v105 = [v104 safeAreaLayoutGuide];
    v106 = [v105 bottomAnchor];
    v107 = [v103 constraintEqualToAnchor:v106];
    [v107 setActive:1];

    v108 = +[UIColor systemBlackColor];
    v109 = [(CHAchievementDetailViewController *)self view];
    [v109 setBackgroundColor:v108];

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
      v3 = [(CHAchievementDetailViewController *)self achievement];
      v4 = [v3 unearned];

      if ((v4 & 1) == 0)
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
  v3 = [(CHAchievementDetailViewController *)self badgeView];
  v4 = [v3 superview];
  v5 = [(CHAchievementDetailViewController *)self badgeContainer];

  if (v4 == v5)
  {
    v6 = [(CHAchievementDetailViewController *)self badgeContainer];
    [v6 bounds];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v15 = [(CHAchievementDetailViewController *)self badgeView];
    [v15 setFrame:{v8, v10, v12, v14}];

    if ([(CHAchievementDetailViewController *)self forModalPresentation])
    {
      if (!self->_celebrationComplete)
      {
        self->_celebrationComplete = 1;
        v16 = [(CHAchievementDetailViewController *)self badgeView];
        [v16 setAlpha:0.0];
      }
    }
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = CHAchievementDetailViewController;
  [(CHAchievementDetailViewController *)&v7 viewWillAppear:a3];
  v4 = [(CHAchievementDetailViewController *)self navigationController];
  v5 = [v4 conformsToProtocol:&OBJC_PROTOCOL___CHActivityHistoryPaletteNavigationController];

  if (v5)
  {
    v6 = [(CHAchievementDetailViewController *)self navigationController];
    [v6 detachPalette];
  }
}

- (void)viewDidLayoutSubviews
{
  v34.receiver = self;
  v34.super_class = CHAchievementDetailViewController;
  [(CHAchievementDetailViewController *)&v34 viewDidLayoutSubviews];
  v3 = [(CHAchievementDetailViewController *)self badgeView];
  v4 = [v3 superview];
  v5 = [(CHAchievementDetailViewController *)self badgeContainer];

  if (v4 == v5)
  {
    v6 = [(CHAchievementDetailViewController *)self badgeContainer];
    [v6 bounds];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v15 = [(CHAchievementDetailViewController *)self badgeView];
    [v15 setFrame:{v8, v10, v12, v14}];

    v16 = [(CHAchievementDetailViewController *)self badgeContainer];
    [v16 bounds];
    MidX = CGRectGetMidX(v35);
    v18 = [(CHAchievementDetailViewController *)self badgeContainer];
    [v18 bounds];
    MidY = CGRectGetMidY(v36);
    v20 = [(CHAchievementDetailViewController *)self badgeView];
    [v20 setCenter:{MidX, MidY}];

    v21 = [(CHAchievementDetailViewController *)self badgeView];
    [v21 resizeBadgeForCurrentViewSize];

    v22 = [(CHAchievementDetailViewController *)self badgeView];
    [v22 setFixedBadgeAngle:0.0];

    [(CHAchievementDetailViewController *)self setDidSetupBadgeView:1];
    v23 = [(CHAchievementDetailViewController *)self avPlayerLayer];

    if (v23)
    {
      v24 = [(CHAchievementDetailViewController *)self celebrationVideoContainer];
      [v24 bounds];
      v26 = v25;
      v28 = v27;
      v30 = v29;
      v32 = v31;
      v33 = [(CHAchievementDetailViewController *)self avPlayerLayer];
      [v33 setFrame:{v26, v28, v30, v32}];
    }

    else if ([(CHAchievementDetailViewController *)self forModalPresentation])
    {
      [(CHAchievementDetailViewController *)self animateModalBadgeViewIfNeeded];
    }
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v8.receiver = self;
  v8.super_class = CHAchievementDetailViewController;
  [(CHAchievementDetailViewController *)&v8 viewDidAppear:a3];
  [(CHAchievementDetailViewController *)self setupCelebrationVideoIfNeeded];
  [(CHAchievementDetailViewController *)self setDidAppear:1];
  v4 = [(CHAchievementDetailViewController *)self avPlayer];

  if (v4)
  {
    v5 = ACHLogDefault();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Playing achievement celebration video", v7, 2u);
    }

    v6 = [(CHAchievementDetailViewController *)self avPlayer];
    [v6 play];
  }

  else if ([(CHAchievementDetailViewController *)self forModalPresentation])
  {
    [(CHAchievementDetailViewController *)self animateModalBadgeViewIfNeeded];
  }
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = CHAchievementDetailViewController;
  [(CHAchievementDetailViewController *)&v4 viewDidDisappear:a3];
  [(CHAchievementDetailViewController *)self teardownPlayer];
}

- (void)textSizeChanged:(id)a3
{
  v4 = [UIFont preferredFontForTextStyle:UIFontTextStyleFootnote];
  [v4 _scaledValueForValue:-12.0];
  v6 = v5;
  v7 = [(CHAchievementDetailViewController *)self textBottomBaselineConstraint];
  [v7 setConstant:v6];

  LODWORD(v7) = [(CHAchievementDetailViewController *)self forDayView];
  v8 = [(CHAchievementDetailViewController *)self formatter];
  v9 = v8;
  if (v7)
  {
    [v8 localizedAttributedCombinedStringWithoutProgress];
  }

  else
  {
    [v8 localizedAttributedCombinedString];
  }
  v10 = ;
  v11 = [(CHAchievementDetailViewController *)self label];
  [v11 setAttributedText:v10];

  v12 = [(CHAchievementDetailViewController *)self view];
  [v12 setNeedsLayout];

  v13 = [(CHAchievementDetailViewController *)self view];
  [v13 layoutIfNeeded];

  v14 = [(CHAchievementDetailViewController *)self badgeContainer];
  [v14 bounds];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v23 = [(CHAchievementDetailViewController *)self badgeView];
  [v23 setFrame:{v16, v18, v20, v22}];

  v24 = [(CHAchievementDetailViewController *)self badgeView];
  [v24 resizeBadgeForCurrentViewSize];
}

- (CGRect)badgeFrame
{
  v2 = [(CHAchievementDetailViewController *)self badgeContainer];
  [v2 frame];
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

- (void)shareTapped:(id)a3
{
  v4 = [(CHAchievementDetailViewController *)self achievement];
  v5 = sub_1000F021C(v4);

  v6 = [(CHAchievementDetailViewController *)self locProvider];
  v7 = [(CHAchievementDetailViewController *)self achievement];
  v8 = [v6 shareDescriptionForAchievement:v7];

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

    v13 = [(CHAchievementDetailViewController *)self navigationController];

    if (v13)
    {
      [(CHAchievementDetailViewController *)self presentViewController:v11 animated:1 completion:0];
    }

    else
    {
      v14 = +[UIApplication sharedApplication];
      v15 = [v14 windows];
      v16 = [v15 firstObject];
      v17 = [v16 rootViewController];

      [v17 presentViewController:v11 animated:1 completion:0];
    }
  }
}

- (void)appWillResignActive:(id)a3
{
  v4 = [(CHAchievementDetailViewController *)self avPlayer];
  [v4 pause];

  v5 = [(CHAchievementDetailViewController *)self avPlayerLayer];
  [v5 removeFromSuperlayer];

  [(CHAchievementDetailViewController *)self setAvPlayer:0];
  v6 = [(CHAchievementDetailViewController *)self celebrationVideoContainer];
  [v6 removeFromSuperview];

  v7 = [(CHAchievementDetailViewController *)self badgeView];
  [v7 setAlpha:1.0];
}

- (id)activityViewControllerLinkPresentationMetadata:(id)a3
{
  v4 = [(CHAchievementDetailViewController *)self sharingImage];
  if (v4)
  {
    v5 = [(CHAchievementDetailViewController *)self sharingText];

    if (v5)
    {
      v4 = objc_alloc_init(LPLinkMetadata);
      v6 = [(CHAchievementDetailViewController *)self sharingText];
      [v4 setSummary:v6];

      v7 = [LPImage alloc];
      v8 = [(CHAchievementDetailViewController *)self sharingImage];
      v9 = UIImagePNGRepresentation(v8);
      v10 = [v7 initWithData:v9 MIMEType:@"image/png"];
      [v4 setImage:v10];
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

- (void)playerFinished:(id)a3
{
  v4 = [(CHAchievementDetailViewController *)self avPlayerLayer];
  [v4 removeFromSuperlayer];

  v5 = [(CHAchievementDetailViewController *)self celebrationVideoContainer];
  [v5 setAlpha:0.0];

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

  v4 = [(CHAchievementDetailViewController *)self achievement];
  v5 = [v4 unearned];

  if (v5)
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

    v9 = [(CHAchievementDetailViewController *)self badgeView];
    [v9 setPaused:0];

    v10 = [(CHAchievementDetailViewController *)self badgeView];
    [v10 playFlipInAnimation];

    v6 = 0.5;
    v7 = 1.0;
  }

  memset(&buf, 0, sizeof(buf));
  CGAffineTransformMakeScale(&buf, v6, v6);
  v15 = buf;
  v11 = [(CHAchievementDetailViewController *)self badgeView];
  v14 = v15;
  [v11 setTransform:&v14];

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
    v3 = [(CHAchievementDetailViewController *)self achievement];
    v4 = [v3 template];
    v5 = [v4 uniqueName];
    v6 = [FICelebrationAssetURLProvider celebrationMovieURLForAchievementIdentifer:v5];

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
      v13 = [(UIView *)self->_celebrationVideoContainer layer];
      [v13 addSublayer:self->_avPlayerLayer];

      v14 = +[NSNotificationCenter defaultCenter];
      v15 = [(CHAchievementDetailViewController *)self avPlayer];
      v16 = [v15 currentItem];
      [v14 addObserver:self selector:"playerFinished:" name:AVPlayerItemDidPlayToEndTimeNotification object:v16];
    }

    else
    {
      v7 = ACHLogDefault();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v17 = [(CHAchievementDetailViewController *)self achievement];
        v18 = [v17 template];
        v19 = [v18 uniqueName];
        v20 = 138412290;
        v21 = v19;
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