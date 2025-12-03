@interface AVTSplashScreenViewController
- (AVTSplashScreenViewController)initWithConfiguration:(id)configuration;
- (AVTSplashScreenViewController)initWithDefaultConfiguration;
- (AVTSplashScreenViewControllerDelegate)delegate;
- (double)desiredHeightForVideoContent;
- (void)detachVideoController;
- (void)didTapContinueButton:(id)button;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)startPlayingVideos;
- (void)stopPlayingVideos;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
@end

@implementation AVTSplashScreenViewController

- (AVTSplashScreenViewController)initWithDefaultConfiguration
{
  v3 = objc_alloc_init(AVTSplashScreenConfiguration);
  v4 = AVTAvatarUIBundle();
  v5 = [v4 localizedStringForKey:@"MEMOJI_SPLASH_TITLE" value:&stru_1F39618F0 table:@"Localized"];
  [(AVTSplashScreenConfiguration *)v3 setTitleString:v5];

  LODWORD(v4) = AVTUIIsFacetrackingSupported();
  v6 = AVTAvatarUIBundle();
  v7 = v6;
  if (v4)
  {
    v8 = @"MEMOJI_SPLASH_SUBTITLE";
  }

  else
  {
    v8 = @"MEMOJI_SPLASH_SUBTITLE_NO_FACE_TRACKING";
  }

  v9 = [v6 localizedStringForKey:v8 value:&stru_1F39618F0 table:@"Localized"];
  [(AVTSplashScreenConfiguration *)v3 setSubTitleString:v9];

  v10 = AVTAvatarUIBundle();
  v11 = [v10 localizedStringForKey:@"MEMOJI_SPLASH_CREATE_YOURS" value:&stru_1F39618F0 table:@"Localized"];
  [(AVTSplashScreenConfiguration *)v3 setButtonString:v11];

  v12 = AVTAvatarEditorSplashVideo();
  [(AVTSplashScreenConfiguration *)v3 setPrimaryPlayerItem:v12];

  v13 = [(AVTSplashScreenViewController *)self initWithConfiguration:v3];
  return v13;
}

- (AVTSplashScreenViewController)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  titleString = [configurationCopy titleString];
  subTitleString = [configurationCopy subTitleString];
  v10.receiver = self;
  v10.super_class = AVTSplashScreenViewController;
  v8 = [(AVTSplashScreenViewController *)&v10 initWithTitle:titleString detailText:subTitleString symbolName:0];

  if (v8)
  {
    objc_storeStrong(&v8->_configuration, configuration);
  }

  return v8;
}

- (void)viewDidLoad
{
  v138[4] = *MEMORY[0x1E69E9840];
  v3 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{0.0, 0.0, 200.0, 200.0}];
  [(AVTSplashScreenViewController *)self setVideoContentView:v3];

  videoContentView = [(AVTSplashScreenViewController *)self videoContentView];
  [videoContentView setTranslatesAutoresizingMaskIntoConstraints:0];

  videoContentView2 = [(AVTSplashScreenViewController *)self videoContentView];
  [(OBWelcomeFullCenterContentController *)self setCenteredContentView:videoContentView2];

  v135.receiver = self;
  v135.super_class = AVTSplashScreenViewController;
  [(OBWelcomeFullCenterContentController *)&v135 viewDidLoad];
  boldButton = [MEMORY[0x1E69B7CF8] boldButton];
  [(AVTSplashScreenViewController *)self setContinueButton:boldButton];

  continueButton = [(AVTSplashScreenViewController *)self continueButton];
  configuration = [(AVTSplashScreenViewController *)self configuration];
  buttonString = [configuration buttonString];
  [continueButton setTitle:buttonString forState:0];

  continueButton2 = [(AVTSplashScreenViewController *)self continueButton];
  [continueButton2 addTarget:self action:sel_didTapContinueButton_ forControlEvents:64];

  buttonTray = [(AVTSplashScreenViewController *)self buttonTray];
  continueButton3 = [(AVTSplashScreenViewController *)self continueButton];
  [buttonTray addButton:continueButton3];

  v13 = MEMORY[0x1E6988100];
  configuration2 = [(AVTSplashScreenViewController *)self configuration];
  primaryPlayerItem = [configuration2 primaryPlayerItem];
  v16 = [v13 playerWithPlayerItem:primaryPlayerItem];
  [(AVTSplashScreenViewController *)self setQueuePlayer:v16];

  queuePlayer = [(AVTSplashScreenViewController *)self queuePlayer];
  [queuePlayer setPreventsDisplaySleepDuringVideoPlayback:0];

  queuePlayer2 = [(AVTSplashScreenViewController *)self queuePlayer];
  [queuePlayer2 setAllowsExternalPlayback:0];

  v19 = objc_alloc_init(MEMORY[0x1E6958608]);
  [(AVTSplashScreenViewController *)self setPlayerViewController:v19];

  playerViewController = [(AVTSplashScreenViewController *)self playerViewController];
  view = [playerViewController view];
  [view setTranslatesAutoresizingMaskIntoConstraints:0];

  clearColor = [MEMORY[0x1E69DC888] clearColor];
  playerViewController2 = [(AVTSplashScreenViewController *)self playerViewController];
  view2 = [playerViewController2 view];
  [view2 setBackgroundColor:clearColor];

  playerViewController3 = [(AVTSplashScreenViewController *)self playerViewController];
  [playerViewController3 setShowsPlaybackControls:0];

  playerViewController4 = [(AVTSplashScreenViewController *)self playerViewController];
  [playerViewController4 setUpdatesNowPlayingInfoCenter:0];

  queuePlayer3 = [(AVTSplashScreenViewController *)self queuePlayer];
  playerViewController5 = [(AVTSplashScreenViewController *)self playerViewController];
  [playerViewController5 setPlayer:queuePlayer3];

  playerViewController6 = [(AVTSplashScreenViewController *)self playerViewController];
  [(AVTSplashScreenViewController *)self addChildViewController:playerViewController6];

  videoContentView3 = [(AVTSplashScreenViewController *)self videoContentView];
  playerViewController7 = [(AVTSplashScreenViewController *)self playerViewController];
  view3 = [playerViewController7 view];
  [videoContentView3 addSubview:view3];

  configuration3 = [(AVTSplashScreenViewController *)self configuration];
  secondaryPlayerItem = [configuration3 secondaryPlayerItem];

  if (secondaryPlayerItem)
  {
    v35 = MEMORY[0x1E6988100];
    configuration4 = [(AVTSplashScreenViewController *)self configuration];
    secondaryPlayerItem2 = [configuration4 secondaryPlayerItem];
    v38 = [v35 playerWithPlayerItem:secondaryPlayerItem2];
    [(AVTSplashScreenViewController *)self setSecondaryQueuePlayer:v38];

    secondaryQueuePlayer = [(AVTSplashScreenViewController *)self secondaryQueuePlayer];
    [secondaryQueuePlayer setPreventsDisplaySleepDuringVideoPlayback:0];

    secondaryQueuePlayer2 = [(AVTSplashScreenViewController *)self secondaryQueuePlayer];
    [secondaryQueuePlayer2 setAllowsExternalPlayback:0];

    v41 = objc_alloc_init(MEMORY[0x1E6958608]);
    [(AVTSplashScreenViewController *)self setSecondaryPlayerViewController:v41];

    secondaryPlayerViewController = [(AVTSplashScreenViewController *)self secondaryPlayerViewController];
    view4 = [secondaryPlayerViewController view];
    [view4 setTranslatesAutoresizingMaskIntoConstraints:0];

    clearColor2 = [MEMORY[0x1E69DC888] clearColor];
    secondaryPlayerViewController2 = [(AVTSplashScreenViewController *)self secondaryPlayerViewController];
    view5 = [secondaryPlayerViewController2 view];
    [view5 setBackgroundColor:clearColor2];

    secondaryPlayerViewController3 = [(AVTSplashScreenViewController *)self secondaryPlayerViewController];
    [secondaryPlayerViewController3 setShowsPlaybackControls:0];

    secondaryPlayerViewController4 = [(AVTSplashScreenViewController *)self secondaryPlayerViewController];
    [secondaryPlayerViewController4 setUpdatesNowPlayingInfoCenter:0];

    secondaryQueuePlayer3 = [(AVTSplashScreenViewController *)self secondaryQueuePlayer];
    secondaryPlayerViewController5 = [(AVTSplashScreenViewController *)self secondaryPlayerViewController];
    [secondaryPlayerViewController5 setPlayer:secondaryQueuePlayer3];

    secondaryPlayerViewController6 = [(AVTSplashScreenViewController *)self secondaryPlayerViewController];
    [(AVTSplashScreenViewController *)self addChildViewController:secondaryPlayerViewController6];

    videoContentView4 = [(AVTSplashScreenViewController *)self videoContentView];
    secondaryPlayerViewController7 = [(AVTSplashScreenViewController *)self secondaryPlayerViewController];
    view6 = [secondaryPlayerViewController7 view];
    [videoContentView4 addSubview:view6];
  }

  playerViewController8 = [(AVTSplashScreenViewController *)self playerViewController];
  view7 = [playerViewController8 view];
  leadingAnchor = [view7 leadingAnchor];
  videoContentView5 = [(AVTSplashScreenViewController *)self videoContentView];
  leadingAnchor2 = [videoContentView5 leadingAnchor];
  v122 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:40.0];
  v138[0] = v122;
  playerViewController9 = [(AVTSplashScreenViewController *)self playerViewController];
  view8 = [playerViewController9 view];
  trailingAnchor = [view8 trailingAnchor];
  videoContentView6 = [(AVTSplashScreenViewController *)self videoContentView];
  trailingAnchor2 = [videoContentView6 trailingAnchor];
  v110 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-40.0];
  v138[1] = v110;
  playerViewController10 = [(AVTSplashScreenViewController *)self playerViewController];
  view9 = [playerViewController10 view];
  topAnchor = [view9 topAnchor];
  videoContentView7 = [(AVTSplashScreenViewController *)self videoContentView];
  topAnchor2 = [videoContentView7 topAnchor];
  v57 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v138[2] = v57;
  playerViewController11 = [(AVTSplashScreenViewController *)self playerViewController];
  view10 = [playerViewController11 view];
  heightAnchor = [view10 heightAnchor];
  videoContentView8 = [(AVTSplashScreenViewController *)self videoContentView];
  widthAnchor = [videoContentView8 widthAnchor];
  v63 = [heightAnchor constraintEqualToAnchor:widthAnchor multiplier:0.7];
  v138[3] = v63;
  v134 = [MEMORY[0x1E695DEC8] arrayWithObjects:v138 count:4];

  secondaryPlayerViewController8 = [(AVTSplashScreenViewController *)self secondaryPlayerViewController];

  playerViewController12 = [(AVTSplashScreenViewController *)self playerViewController];
  view11 = [playerViewController12 view];
  bottomAnchor = [view11 bottomAnchor];
  if (secondaryPlayerViewController8)
  {
    secondaryPlayerViewController9 = [(AVTSplashScreenViewController *)self secondaryPlayerViewController];
    view12 = [secondaryPlayerViewController9 view];
    topAnchor3 = [view12 topAnchor];
    v127 = [bottomAnchor constraintEqualToAnchor:topAnchor3];
    v137[0] = v127;
    secondaryPlayerViewController10 = [(AVTSplashScreenViewController *)self secondaryPlayerViewController];
    view13 = [secondaryPlayerViewController10 view];
    leadingAnchor3 = [view13 leadingAnchor];
    videoContentView9 = [(AVTSplashScreenViewController *)self videoContentView];
    leadingAnchor4 = [videoContentView9 leadingAnchor];
    v111 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    v137[1] = v111;
    secondaryPlayerViewController11 = [(AVTSplashScreenViewController *)self secondaryPlayerViewController];
    view14 = [secondaryPlayerViewController11 view];
    trailingAnchor3 = [view14 trailingAnchor];
    videoContentView10 = [(AVTSplashScreenViewController *)self videoContentView];
    trailingAnchor4 = [videoContentView10 trailingAnchor];
    v100 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    v137[2] = v100;
    secondaryPlayerViewController12 = [(AVTSplashScreenViewController *)self secondaryPlayerViewController];
    [secondaryPlayerViewController12 view];
    v69 = v129 = bottomAnchor;
    heightAnchor2 = [v69 heightAnchor];
    [(AVTSplashScreenViewController *)self videoContentView];
    v71 = v131 = playerViewController12;
    widthAnchor2 = [v71 widthAnchor];
    v73 = [heightAnchor2 constraintEqualToAnchor:widthAnchor2 multiplier:0.265];
    v137[3] = v73;
    v74 = [MEMORY[0x1E695DEC8] arrayWithObjects:v137 count:4];
    v133 = [v134 arrayByAddingObjectsFromArray:v74];

    bottomAnchor2 = view12;
    videoContentView11 = secondaryPlayerViewController9;

    playerViewController12 = v131;
    bottomAnchor = v129;

    v77 = topAnchor3;
    v78 = v127;
  }

  else
  {
    videoContentView11 = [(AVTSplashScreenViewController *)self videoContentView];
    bottomAnchor2 = [videoContentView11 bottomAnchor];
    v77 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v78 = v134;
    v133 = [v134 arrayByAddingObject:v77];
  }

  [(AVTSplashScreenViewController *)self desiredHeightForVideoContent];
  v80 = v79;
  viewIfLoaded = [(AVTSplashScreenViewController *)self viewIfLoaded];
  if (viewIfLoaded)
  {
    view15 = [(AVTSplashScreenViewController *)self view];
    [view15 bounds];
    Width = CGRectGetWidth(v139);
    view16 = [(AVTSplashScreenViewController *)self view];
    [view16 layoutMargins];
    v86 = v85;
    view17 = [(AVTSplashScreenViewController *)self view];
    [view17 layoutMargins];
    v89 = Width - (v86 + v88);
  }

  else
  {
    v89 = 300.0;
  }

  videoContentView12 = [(AVTSplashScreenViewController *)self videoContentView];
  widthAnchor3 = [videoContentView12 widthAnchor];
  v92 = [widthAnchor3 constraintEqualToConstant:v89];
  [(AVTSplashScreenViewController *)self setVideoContentWidthConstraint:v92];

  videoContentView13 = [(AVTSplashScreenViewController *)self videoContentView];
  heightAnchor3 = [videoContentView13 heightAnchor];
  v95 = [heightAnchor3 constraintEqualToConstant:v80];
  [(AVTSplashScreenViewController *)self setVideoContentHeightConstraint:v95];

  videoContentWidthConstraint = [(AVTSplashScreenViewController *)self videoContentWidthConstraint];
  v136[0] = videoContentWidthConstraint;
  videoContentHeightConstraint = [(AVTSplashScreenViewController *)self videoContentHeightConstraint];
  v136[1] = videoContentHeightConstraint;
  v98 = [MEMORY[0x1E695DEC8] arrayWithObjects:v136 count:2];
  v99 = [v133 arrayByAddingObjectsFromArray:v98];

  [MEMORY[0x1E696ACD8] activateConstraints:v99];
}

- (double)desiredHeightForVideoContent
{
  playerViewController = [(AVTSplashScreenViewController *)self playerViewController];
  view = [playerViewController view];
  superview = [view superview];

  if (!superview)
  {
    return 200.0;
  }

  videoContentView = [(AVTSplashScreenViewController *)self videoContentView];
  superview2 = [videoContentView superview];

  [superview2 bounds];
  v8 = CGRectGetWidth(v11) * 0.7 + 0.0;
  secondaryPlayerViewController = [(AVTSplashScreenViewController *)self secondaryPlayerViewController];

  if (secondaryPlayerViewController)
  {
    [superview2 bounds];
    v8 = v8 + CGRectGetWidth(v12) * 0.265;
  }

  return v8;
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = AVTSplashScreenViewController;
  [(AVTSplashScreenViewController *)&v4 viewWillAppear:appear];
  [(AVTSplashScreenViewController *)self startPlayingVideos];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  [(AVTSplashScreenViewController *)self stopPlayingVideos];
  v5.receiver = self;
  v5.super_class = AVTSplashScreenViewController;
  [(OBBaseWelcomeController *)&v5 viewWillDisappear:disappearCopy];
}

- (void)viewWillLayoutSubviews
{
  v16.receiver = self;
  v16.super_class = AVTSplashScreenViewController;
  [(AVTSplashScreenViewController *)&v16 viewWillLayoutSubviews];
  [(AVTSplashScreenViewController *)self desiredHeightForVideoContent];
  v4 = v3;
  viewIfLoaded = [(AVTSplashScreenViewController *)self viewIfLoaded];
  if (viewIfLoaded)
  {
    view = [(AVTSplashScreenViewController *)self view];
    [view bounds];
    Width = CGRectGetWidth(v17);
    view2 = [(AVTSplashScreenViewController *)self view];
    [view2 layoutMargins];
    v10 = v9;
    view3 = [(AVTSplashScreenViewController *)self view];
    [view3 layoutMargins];
    v13 = Width - (v10 + v12);
  }

  else
  {
    v13 = 300.0;
  }

  videoContentWidthConstraint = [(AVTSplashScreenViewController *)self videoContentWidthConstraint];
  [videoContentWidthConstraint setConstant:v13];

  videoContentHeightConstraint = [(AVTSplashScreenViewController *)self videoContentHeightConstraint];
  [videoContentHeightConstraint setConstant:v4];
}

- (void)didTapContinueButton:(id)button
{
  delegate = [(AVTSplashScreenViewController *)self delegate];
  [delegate splashScreenViewControllerDidConfirm:self];
}

- (void)detachVideoController
{
  primaryVideoController = [(AVTSplashScreenViewController *)self primaryVideoController];
  player = [primaryVideoController player];
  [player removeObserver:self forKeyPath:@"status"];

  [(AVTSplashScreenViewController *)self setPlayerViewController:0];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  objectCopy = object;
  if ([path isEqualToString:@"status"] && objc_msgSend(objectCopy, "status") == 2)
  {
    [(AVTSplashScreenViewController *)self stopPlayingVideos];
    [(AVTSplashScreenViewController *)self startPlayingVideos];
  }
}

- (void)startPlayingVideos
{
  if (![(AVTSplashScreenViewController *)self isPlayingVideos])
  {
    playerViewController = [(AVTSplashScreenViewController *)self playerViewController];
    player = [playerViewController player];
    [player addObserver:self forKeyPath:@"status" options:1 context:0];

    playerViewController2 = [(AVTSplashScreenViewController *)self playerViewController];
    player2 = [playerViewController2 player];
    [player2 play];

    secondaryPlayerViewController = [(AVTSplashScreenViewController *)self secondaryPlayerViewController];

    if (secondaryPlayerViewController)
    {
      secondaryPlayerViewController2 = [(AVTSplashScreenViewController *)self secondaryPlayerViewController];
      player3 = [secondaryPlayerViewController2 player];
      [player3 addObserver:self forKeyPath:@"status" options:1 context:0];

      secondaryPlayerViewController3 = [(AVTSplashScreenViewController *)self secondaryPlayerViewController];
      player4 = [secondaryPlayerViewController3 player];
      [player4 play];
    }

    [(AVTSplashScreenViewController *)self setIsPlayingVideos:1];
  }
}

- (void)stopPlayingVideos
{
  if ([(AVTSplashScreenViewController *)self isPlayingVideos])
  {
    playerViewController = [(AVTSplashScreenViewController *)self playerViewController];
    player = [playerViewController player];
    [player removeObserver:self forKeyPath:@"status"];

    playerViewController2 = [(AVTSplashScreenViewController *)self playerViewController];
    player2 = [playerViewController2 player];
    [player2 pause];

    secondaryPlayerViewController = [(AVTSplashScreenViewController *)self secondaryPlayerViewController];
    player3 = [secondaryPlayerViewController player];
    [player3 removeObserver:self forKeyPath:@"status"];

    secondaryPlayerViewController2 = [(AVTSplashScreenViewController *)self secondaryPlayerViewController];
    player4 = [secondaryPlayerViewController2 player];
    [player4 pause];

    [(AVTSplashScreenViewController *)self setIsPlayingVideos:0];
  }
}

- (AVTSplashScreenViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end