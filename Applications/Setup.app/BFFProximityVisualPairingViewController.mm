@interface BFFProximityVisualPairingViewController
- (BOOL)_isLightMode;
- (BOOL)_isPlaying;
- (id)_createAVPlayerItem;
- (void)_addCloudPlayerView;
- (void)_addMaskViewIfNeeded;
- (void)_addVisualPairingCodeView;
- (void)_cleanUpAllNotifications;
- (void)_cleanUpAppLifecycleNotifications;
- (void)_cleanUpPlayerItemNotifications;
- (void)_cleanUpVideoPlayerNotificationsIfNeeded;
- (void)_createAndAttachAVPlayer;
- (void)_hidePairingCode;
- (void)_observeAppLifecycleNotifications;
- (void)_pausePlayer;
- (void)_performPairingDidSucceedAnimation:(id)animation;
- (void)_resetPlayer;
- (void)_resumePlayer;
- (void)_setupAVPlayer;
- (void)_setupVideoPlayerObservationIfNeeded;
- (void)_setupViews;
- (void)_showPairingCode:(BOOL)code;
- (void)applicationWillEnterForeground:(id)foreground;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)pairingDidComplete:(id)complete;
- (void)setPairingCode:(id)code;
- (void)start;
- (void)stop;
- (void)videoReachedEnd:(id)end;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)willResignActive:(id)active;
@end

@implementation BFFProximityVisualPairingViewController

- (void)dealloc
{
  selfCopy = self;
  v3 = a2;
  [(BFFProximityVisualPairingViewController *)self _cleanUpAllNotifications];
  v2.receiver = selfCopy;
  v2.super_class = BFFProximityVisualPairingViewController;
  [(BFFProximityVisualPairingViewController *)&v2 dealloc];
}

- (void)viewDidLoad
{
  selfCopy = self;
  v8 = a2;
  v7.receiver = self;
  v7.super_class = BFFProximityVisualPairingViewController;
  [(BFFProximityVisualPairingViewController *)&v7 viewDidLoad];
  [(BFFProximityVisualPairingViewController *)selfCopy _setupViews];
  [(BFFProximityVisualPairingViewController *)selfCopy _setupAVPlayer];
  v2 = selfCopy;
  v3 = objc_opt_self();
  v10 = v3;
  v4 = [NSArray arrayWithObjects:&v10 count:1];
  v5 = [(BFFProximityVisualPairingViewController *)v2 registerForTraitChanges:v4 withTarget:selfCopy action:"_setupAVPlayer"];

  view = [(BFFProximityVisualPairingViewController *)selfCopy view];
  [view setClipsToBounds:0];

  if (![(BFFProximityVisualPairingViewController *)selfCopy _isPlaying])
  {
    [(BFFProximityVisualPairingViewController *)selfCopy _prepareForPresentation];
    [(BFFProximityVisualPairingViewController *)selfCopy _observeAppLifecycleNotifications];
    [(BFFProximityVisualPairingViewController *)selfCopy start];
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  v5 = a2;
  disappearCopy = disappear;
  [(BFFProximityVisualPairingViewController *)self stop];
  [(BFFProximityVisualPairingViewController *)selfCopy _hidePairingCode];
  v3.receiver = selfCopy;
  v3.super_class = BFFProximityVisualPairingViewController;
  [(BFFProximityVisualPairingViewController *)&v3 viewDidDisappear:disappearCopy];
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  v19 = a2;
  v18.receiver = self;
  v18.super_class = BFFProximityVisualPairingViewController;
  [(BFFProximityVisualPairingViewController *)&v18 viewDidLayoutSubviews];
  [(BFFProximityVisualPairingViewController *)selfCopy stop];
  [(BFFProximityVisualPairingViewController *)selfCopy start];
  _maskContainerView = [(BFFProximityVisualPairingViewController *)selfCopy _maskContainerView];
  maskView = [_maskContainerView maskView];
  v4 = *&CGAffineTransformIdentity.a;
  v5 = *&CGAffineTransformIdentity.c;
  v17[2] = *&CGAffineTransformIdentity.tx;
  v17[1] = v5;
  v17[0] = v4;
  [maskView setTransform:v17];

  _maskContainerView2 = [(BFFProximityVisualPairingViewController *)selfCopy _maskContainerView];
  [_maskContainerView2 frame];
  v14 = v7;
  v13 = v8;
  v16 = v9;
  v15 = v10;
  _maskContainerView3 = [(BFFProximityVisualPairingViewController *)selfCopy _maskContainerView];
  maskView2 = [_maskContainerView3 maskView];
  [maskView2 setFrame:{v13, v14, v15, v16, *&v13, *&v14, *&v15, *&v16}];
}

- (void)setPairingCode:(id)code
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, code);
  v3 = location[0];
  visualPairingView = [(BFFProximityVisualPairingViewController *)selfCopy visualPairingView];
  [(VPPresenterView *)visualPairingView setVerificationCode:v3];

  objc_storeStrong(location, 0);
}

- (void)pairingDidComplete:(id)complete
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, complete);
  [(BFFProximityVisualPairingViewController *)selfCopy _performPairingDidSucceedAnimation:location[0]];
  objc_storeStrong(location, 0);
}

- (void)start
{
  if ([(BFFProximityVisualPairingViewController *)self _isPlaying])
  {
    [(BFFProximityVisualPairingViewController *)self _showPairingCode:1];
  }

  else
  {
    videoPlayer = [(BFFProximityVisualPairingViewController *)self videoPlayer];
    v15 = 0;
    v13 = 0;
    v3 = 1;
    if (videoPlayer)
    {
      videoPlayer2 = [(BFFProximityVisualPairingViewController *)self videoPlayer];
      v15 = 1;
      error = [(AVPlayer *)videoPlayer2 error];
      v13 = 1;
      v3 = error != 0;
    }

    if (v13)
    {
    }

    if (v15)
    {
    }

    if (v3)
    {
      [(BFFProximityVisualPairingViewController *)self _createAndAttachAVPlayer];
    }

    else
    {
      [(BFFProximityVisualPairingViewController *)self _setupVideoPlayerObservationIfNeeded];
    }

    videoPlayer3 = [(BFFProximityVisualPairingViewController *)self videoPlayer];
    currentItem = [(AVPlayer *)videoPlayer3 currentItem];
    v11 = 0;
    v9 = 0;
    v7 = 0;
    v6 = 1;
    if (currentItem)
    {
      videoPlayer4 = [(BFFProximityVisualPairingViewController *)self videoPlayer];
      v11 = 1;
      currentItem2 = [(AVPlayer *)videoPlayer4 currentItem];
      v9 = 1;
      error2 = [(AVPlayerItem *)currentItem2 error];
      v7 = 1;
      v6 = error2 != 0;
    }

    if (v7)
    {
    }

    if (v9)
    {
    }

    if (v11)
    {
    }

    if (v6)
    {
      [(BFFProximityVisualPairingViewController *)self _setupAVPlayer];
    }

    [(BFFProximityVisualPairingViewController *)self _resumePlayer];
  }
}

- (void)stop
{
  [(BFFProximityVisualPairingViewController *)self _cleanUpVideoPlayerNotificationsIfNeeded];
  [(BFFProximityVisualPairingViewController *)self _cleanUpPlayerItemNotifications];
  videoPlayer = [(BFFProximityVisualPairingViewController *)self videoPlayer];
  [(AVPlayer *)videoPlayer replaceCurrentItemWithPlayerItem:0];

  [(BFFProximityVisualPairingViewController *)self _pausePlayer];
}

- (void)_resumePlayer
{
  visualPairingView = [(BFFProximityVisualPairingViewController *)self visualPairingView];
  [(VPPresenterView *)visualPairingView start];

  videoPlayer = [(BFFProximityVisualPairingViewController *)self videoPlayer];
  [(AVPlayer *)videoPlayer play];
}

- (void)_pausePlayer
{
  visualPairingView = [(BFFProximityVisualPairingViewController *)self visualPairingView];
  [(VPPresenterView *)visualPairingView stop];

  videoPlayer = [(BFFProximityVisualPairingViewController *)self videoPlayer];
  [(AVPlayer *)videoPlayer pause];
}

- (void)_resetPlayer
{
  selfCopy = self;
  location[1] = a2;
  [(BFFProximityVisualPairingViewController *)self _hidePairingCode];
  [(BFFProximityVisualPairingViewController *)selfCopy stop];
  objc_initWeak(location, selfCopy);
  v2 = dispatch_time(0, 250000000);
  v3 = &_dispatch_main_q;
  v4 = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_1001C4B6C;
  v8 = &unk_10032AF58;
  objc_copyWeak(&v9, location);
  dispatch_after(v2, v3, &v4);

  objc_destroyWeak(&v9);
  objc_destroyWeak(location);
}

- (void)_showPairingCode:(BOOL)code
{
  selfCopy = self;
  v21 = a2;
  codeCopy = code;
  visualPairingView = [(BFFProximityVisualPairingViewController *)self visualPairingView];
  [(VPPresenterView *)visualPairingView alpha];
  v5 = v4;

  if (v5 == 0.0)
  {
    visualPairingView2 = [(BFFProximityVisualPairingViewController *)selfCopy visualPairingView];
    CGAffineTransformMakeScale(&v19, 0.5, 0.5);
    [(VPPresenterView *)visualPairingView2 setTransform:&v19];

    v13 = _NSConcreteStackBlock;
    v14 = -1073741824;
    v15 = 0;
    v16 = sub_1001C4E78;
    v17 = &unk_10032B0D0;
    v18 = selfCopy;
    [UIView animateWithDuration:0x20000 delay:&v13 usingSpringWithDamping:0 initialSpringVelocity:0.66 options:0.2 animations:0.8 completion:10.0];
    v7 = _NSConcreteStackBlock;
    v8 = -1073741824;
    v9 = 0;
    v10 = sub_1001C4F0C;
    v11 = &unk_10032B0D0;
    v12 = selfCopy;
    [UIView animateWithDuration:24 delay:&v7 options:0 animations:2.85 completion:0.0];
    objc_storeStrong(&v12, 0);
    objc_storeStrong(&v18, 0);
  }
}

- (void)_hidePairingCode
{
  v2 = [(BFFProximityVisualPairingViewController *)self visualPairingView:a2];
  [(VPPresenterView *)v2 setAlpha:0.0];
}

- (void)_performPairingDidSucceedAnimation:(id)animation
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, animation);
  videoPlayer = [(BFFProximityVisualPairingViewController *)selfCopy videoPlayer];
  LODWORD(v4) = 0.75;
  [(AVPlayer *)videoPlayer setRate:v4];

  v11 = _NSConcreteStackBlock;
  v12 = -1073741824;
  v13 = 0;
  v14 = sub_1001C5168;
  v15 = &unk_10032B0D0;
  v16 = selfCopy;
  v5 = _NSConcreteStackBlock;
  v6 = -1073741824;
  v7 = 0;
  v8 = sub_1001C525C;
  v9 = &unk_10032C630;
  v10 = location[0];
  [UIView animateWithDuration:&v11 animations:&v5 completion:1.25];
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
}

- (void)_setupViews
{
  [(BFFProximityVisualPairingViewController *)self _addVisualPairingCodeView];
  [(BFFProximityVisualPairingViewController *)self _addMaskViewIfNeeded];
  [(BFFProximityVisualPairingViewController *)self _addCloudPlayerView];
}

- (void)_addVisualPairingCodeView
{
  v2 = objc_alloc_init(VPPresenterView);
  [(BFFProximityVisualPairingViewController *)self setVisualPairingView:v2, a2];

  visualPairingView = [(BFFProximityVisualPairingViewController *)self visualPairingView];
  [(VPPresenterView *)visualPairingView setTranslatesAutoresizingMaskIntoConstraints:0];

  v4 = +[UIColor _systemBackgroundColor];
  visualPairingView2 = [(BFFProximityVisualPairingViewController *)self visualPairingView];
  [(VPPresenterView *)visualPairingView2 setBackgroundColor:v4];

  view = [(BFFProximityVisualPairingViewController *)self view];
  visualPairingView3 = [(BFFProximityVisualPairingViewController *)self visualPairingView];
  [view addSubview:visualPairingView3];

  visualPairingView4 = [(BFFProximityVisualPairingViewController *)self visualPairingView];
  view2 = [(BFFProximityVisualPairingViewController *)self view];
  [(VPPresenterView *)visualPairingView4 pinToEdges:view2];
}

- (void)_addMaskViewIfNeeded
{
  selfCopy = self;
  location[1] = a2;
  _maskContainerView = [(BFFProximityVisualPairingViewController *)self _maskContainerView];
  maskView = [_maskContainerView maskView];

  if (!maskView)
  {
    v4 = [UIImageView alloc];
    v5 = [UIImage imageNamed:@"ProximityPairingMask"];
    location[0] = [v4 initWithImage:v5];

    [location[0] setContentMode:1];
    _maskContainerView2 = [(BFFProximityVisualPairingViewController *)selfCopy _maskContainerView];
    [_maskContainerView2 setMaskView:location[0]];

    view = [(BFFProximityVisualPairingViewController *)selfCopy view];
    [view setNeedsLayout];

    objc_storeStrong(location, 0);
  }
}

- (void)_addCloudPlayerView
{
  v2 = objc_alloc_init(AVPlayerViewController);
  [(BFFProximityVisualPairingViewController *)self setVideoViewController:v2, a2];

  videoViewController = [(BFFProximityVisualPairingViewController *)self videoViewController];
  view = [(AVPlayerViewController *)videoViewController view];
  [view setTranslatesAutoresizingMaskIntoConstraints:0];

  videoViewController2 = [(BFFProximityVisualPairingViewController *)self videoViewController];
  [(AVPlayerViewController *)videoViewController2 setUpdatesNowPlayingInfoCenter:0];

  v6 = +[UIColor _systemBackgroundColor];
  videoViewController3 = [(BFFProximityVisualPairingViewController *)self videoViewController];
  view2 = [(AVPlayerViewController *)videoViewController3 view];
  [view2 setBackgroundColor:v6];

  videoViewController4 = [(BFFProximityVisualPairingViewController *)self videoViewController];
  [(AVPlayerViewController *)videoViewController4 setShowsPlaybackControls:0];

  videoViewController5 = [(BFFProximityVisualPairingViewController *)self videoViewController];
  [(AVPlayerViewController *)videoViewController5 setAllowsPictureInPicturePlayback:0];

  videoViewController6 = [(BFFProximityVisualPairingViewController *)self videoViewController];
  view3 = [(AVPlayerViewController *)videoViewController6 view];
  [view3 setContentMode:1];

  [(BFFProximityVisualPairingViewController *)self _createAndAttachAVPlayer];
  visualPairingView = [(BFFProximityVisualPairingViewController *)self visualPairingView];
  videoViewController7 = [(BFFProximityVisualPairingViewController *)self videoViewController];
  view4 = [(AVPlayerViewController *)videoViewController7 view];
  [(VPPresenterView *)visualPairingView addSubview:view4];

  videoViewController8 = [(BFFProximityVisualPairingViewController *)self videoViewController];
  view5 = [(AVPlayerViewController *)videoViewController8 view];
  visualPairingView2 = [(BFFProximityVisualPairingViewController *)self visualPairingView];
  [view5 pinToEdges:visualPairingView2];
}

- (void)_createAndAttachAVPlayer
{
  videoPlayer = [(BFFProximityVisualPairingViewController *)self videoPlayer];

  if (videoPlayer)
  {
    [(BFFProximityVisualPairingViewController *)self _cleanUpVideoPlayerNotificationsIfNeeded];
    [(BFFProximityVisualPairingViewController *)self setVideoPlayer:0];
  }

  v3 = [[AVPlayer alloc] initWithPlayerItem:0];
  [(BFFProximityVisualPairingViewController *)self setVideoPlayer:v3];

  videoPlayer2 = [(BFFProximityVisualPairingViewController *)self videoPlayer];
  [(AVPlayer *)videoPlayer2 setMuted:1];

  [(BFFProximityVisualPairingViewController *)self _setupVideoPlayerObservationIfNeeded];
  videoPlayer3 = [(BFFProximityVisualPairingViewController *)self videoPlayer];
  videoViewController = [(BFFProximityVisualPairingViewController *)self videoViewController];
  [(AVPlayerViewController *)videoViewController setPlayer:videoPlayer3];
}

- (void)_setupAVPlayer
{
  [(BFFProximityVisualPairingViewController *)self _cleanUpPlayerItemNotifications];
  videoPlayer = [(BFFProximityVisualPairingViewController *)self videoPlayer];
  _createAVPlayerItem = [(BFFProximityVisualPairingViewController *)self _createAVPlayerItem];
  [(AVPlayer *)videoPlayer replaceCurrentItemWithPlayerItem:_createAVPlayerItem];
}

- (id)_createAVPlayerItem
{
  selfCopy = self;
  location[1] = a2;
  location[0] = [SASUIProximityCloudPlayerItem configuredPlayerForLightMode:[(BFFProximityVisualPairingViewController *)self _isLightMode]];
  [location[0] addObserver:selfCopy forKeyPath:@"status" options:0 context:0];
  v2 = +[NSNotificationCenter defaultCenter];
  [(NSNotificationCenter *)v2 addObserver:selfCopy selector:"videoReachedEnd:" name:AVPlayerItemDidPlayToEndTimeNotification object:location[0]];

  v3 = location[0];
  objc_storeStrong(location, 0);
  return v3;
}

- (BOOL)_isPlaying
{
  videoPlayer = [(BFFProximityVisualPairingViewController *)self videoPlayer];
  v24 = 0;
  v22 = 0;
  v20 = 0;
  v18 = 0;
  v16 = 0;
  v14 = 0;
  v12 = 0;
  v10 = 0;
  v8 = 0;
  v6 = 0;
  v3 = 0;
  if (videoPlayer)
  {
    videoPlayer2 = [(BFFProximityVisualPairingViewController *)self videoPlayer];
    v24 = 1;
    error = [(AVPlayer *)videoPlayer2 error];
    v22 = 1;
    v3 = 0;
    if (!error)
    {
      videoPlayer3 = [(BFFProximityVisualPairingViewController *)self videoPlayer];
      v20 = 1;
      currentItem = [(AVPlayer *)videoPlayer3 currentItem];
      v18 = 1;
      v3 = 0;
      if (currentItem)
      {
        videoPlayer4 = [(BFFProximityVisualPairingViewController *)self videoPlayer];
        v16 = 1;
        currentItem2 = [(AVPlayer *)videoPlayer4 currentItem];
        v14 = 1;
        error2 = [(AVPlayerItem *)currentItem2 error];
        v12 = 1;
        v3 = 0;
        if (!error2)
        {
          videoPlayer5 = [(BFFProximityVisualPairingViewController *)self videoPlayer];
          v10 = 1;
          currentItem3 = [(AVPlayer *)videoPlayer5 currentItem];
          v8 = 1;
          status = [(AVPlayerItem *)currentItem3 status];
          v3 = 0;
          if (status == 1)
          {
            videoPlayer6 = [(BFFProximityVisualPairingViewController *)self videoPlayer];
            v6 = 1;
            v3 = [(AVPlayer *)videoPlayer6 timeControlStatus]!= AVPlayerTimeControlStatusPaused;
          }
        }
      }
    }
  }

  v27 = v3;
  if (v6)
  {
  }

  if (v8)
  {
  }

  if (v10)
  {
  }

  if (v12)
  {
  }

  if (v14)
  {
  }

  if (v16)
  {
  }

  if (v18)
  {
  }

  if (v20)
  {
  }

  if (v22)
  {
  }

  if (v24)
  {
  }

  return v27;
}

- (BOOL)_isLightMode
{
  location[2] = self;
  location[1] = a2;
  location[0] = [[UISUserInterfaceStyleMode alloc] initWithDelegate:0];
  v3 = 1;
  if (_AXSInvertColorsEnabled() || [location[0] modeValue] == 2)
  {
    v3 = 0;
  }

  objc_storeStrong(location, 0);
  return v3 & 1;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, path);
  v132 = 0;
  objc_storeStrong(&v132, object);
  v131 = 0;
  objc_storeStrong(&v131, change);
  v130[1] = context;
  v9 = v132;
  videoPlayer = [(BFFProximityVisualPairingViewController *)selfCopy videoPlayer];
  currentItem = [(AVPlayer *)videoPlayer currentItem];
  v12 = v9 == currentItem;
  v13 = 0;
  if (v12)
  {
    v14 = currentItem;
    v13 = [location[0] isEqualToString:@"status"];
    currentItem = v14;
  }

  if (v13)
  {
    videoPlayer2 = [(BFFProximityVisualPairingViewController *)selfCopy videoPlayer];
    v130[0] = [(AVPlayer *)videoPlayer2 currentItem];

    error = [v130[0] error];
    v17 = 0;
    if (error)
    {
      v18 = error;
      status = [v130[0] status];
      error = v18;
      v17 = status == 2;
    }

    if (v17)
    {
      if ([(BFFProximityVisualPairingViewController *)selfCopy retryAttempts]>= 3)
      {
        v109 = _BYLoggingFacility();
        v108 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(v109, OS_LOG_TYPE_ERROR))
        {
          v106 = 0;
          v104 = 0;
          v102 = 0;
          v100 = 0;
          v98 = 0;
          v96 = 0;
          if (_BYIsInternalInstall())
          {
            error2 = [v130[0] error];
            v107 = error2;
            v106 = 1;
          }

          else
          {
            error3 = [v130[0] error];
            v104 = 1;
            if (error3)
            {
              error4 = [v130[0] error];
              v102 = 1;
              domain = [error4 domain];
              v100 = 1;
              error5 = [v130[0] error];
              v98 = 1;
              error2 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<Error domain: %@, code %ld>", domain, [error5 code]);
              v97 = error2;
              v96 = 1;
            }

            else
            {
              error2 = 0;
            }
          }

          sub_100071CBC(v137, error2);
          _os_log_error_impl(&_mh_execute_header, v109, v108, "Abort proximity animation. Player Item error: %{public}@", v137, 0xCu);
          if (v96)
          {
          }

          if (v98)
          {
          }

          if (v100)
          {
          }

          if (v102)
          {
          }

          if (v104)
          {
          }

          if (v106)
          {
          }
        }

        objc_storeStrong(&v109, 0);
      }

      else
      {
        v129 = _BYLoggingFacility();
        v128 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(v129, OS_LOG_TYPE_ERROR))
        {
          v126 = 0;
          v124 = 0;
          v122 = 0;
          v120 = 0;
          v118 = 0;
          v116 = 0;
          if (_BYIsInternalInstall())
          {
            error6 = [v130[0] error];
            v127 = error6;
            v126 = 1;
          }

          else
          {
            error7 = [v130[0] error];
            v124 = 1;
            if (error7)
            {
              error8 = [v130[0] error];
              v122 = 1;
              domain2 = [error8 domain];
              v120 = 1;
              error9 = [v130[0] error];
              v118 = 1;
              error6 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<Error domain: %@, code %ld>", domain2, [error9 code]);
              v117 = error6;
              v116 = 1;
            }

            else
            {
              error6 = 0;
            }
          }

          sub_100071CBC(buf, error6);
          _os_log_error_impl(&_mh_execute_header, v129, v128, "PlayerItem failed to play proximity animation. Error: %{public}@", buf, 0xCu);
          if (v116)
          {
          }

          if (v118)
          {
          }

          if (v120)
          {
          }

          if (v122)
          {
          }

          if (v124)
          {
          }

          if (v126)
          {
          }
        }

        objc_storeStrong(&v129, 0);
        v21 = &_dispatch_main_q;
        block = _NSConcreteStackBlock;
        v111 = -1073741824;
        v112 = 0;
        v113 = sub_1001C6C64;
        v114 = &unk_10032B0D0;
        v115 = selfCopy;
        dispatch_async(v21, &block);

        objc_storeStrong(&v115, 0);
      }
    }

    else if ([v130[0] status] == 1)
    {
      v95 = _BYLoggingFacility();
      v94 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v95, OS_LOG_TYPE_DEFAULT))
      {
        v23 = v95;
        v24 = v94;
        sub_10006AA68(v93);
        _os_log_impl(&_mh_execute_header, v23, v24, "Playing proximity animation", v93, 2u);
      }

      objc_storeStrong(&v95, 0);
      v25 = &_dispatch_main_q;
      v87 = _NSConcreteStackBlock;
      v88 = -1073741824;
      v89 = 0;
      v90 = sub_1001C6CB4;
      v91 = &unk_10032B0D0;
      v92 = selfCopy;
      dispatch_async(v25, &v87);

      objc_storeStrong(&v92, 0);
    }

    objc_storeStrong(v130, 0);
  }

  else
  {
    v26 = v132;
    videoPlayer3 = [(BFFProximityVisualPairingViewController *)selfCopy videoPlayer];
    v12 = v26 == videoPlayer3;
    v28 = 0;
    if (v12)
    {
      v29 = videoPlayer3;
      v28 = [location[0] isEqualToString:@"status"];
      videoPlayer3 = v29;
    }

    if (v28)
    {
      videoPlayer4 = [(BFFProximityVisualPairingViewController *)selfCopy videoPlayer];
      error10 = [(AVPlayer *)videoPlayer4 error];
      v85 = 0;
      v32 = 1;
      if (!error10)
      {
        videoPlayer5 = [(BFFProximityVisualPairingViewController *)selfCopy videoPlayer];
        v85 = 1;
        v32 = [(AVPlayer *)videoPlayer5 status]== 2;
      }

      if (v85)
      {
      }

      if (v32)
      {
        if ([(BFFProximityVisualPairingViewController *)selfCopy retryAttempts]>= 3)
        {
          v56 = _BYLoggingFacility();
          if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
          {
            v54 = 0;
            v52 = 0;
            v50 = 0;
            v48 = 0;
            v46 = 0;
            v44 = 0;
            v42 = 0;
            v40 = 0;
            v38 = 0;
            v36 = 0;
            if (_BYIsInternalInstall())
            {
              videoPlayer6 = [(BFFProximityVisualPairingViewController *)selfCopy videoPlayer];
              v54 = 1;
              error11 = [(AVPlayer *)videoPlayer6 error];
              v53 = error11;
              v52 = 1;
            }

            else
            {
              videoPlayer7 = [(BFFProximityVisualPairingViewController *)selfCopy videoPlayer];
              v50 = 1;
              error12 = [(AVPlayer *)videoPlayer7 error];
              v48 = 1;
              if (error12)
              {
                videoPlayer8 = [(BFFProximityVisualPairingViewController *)selfCopy videoPlayer];
                v46 = 1;
                error13 = [(AVPlayer *)videoPlayer8 error];
                v44 = 1;
                domain3 = [(NSError *)error13 domain];
                v42 = 1;
                videoPlayer9 = [(BFFProximityVisualPairingViewController *)selfCopy videoPlayer];
                v40 = 1;
                error14 = [(AVPlayer *)videoPlayer9 error];
                v38 = 1;
                error11 = [NSString stringWithFormat:@"<Error domain: %@, code %ld>", domain3, [(NSError *)error14 code]];
                v37 = error11;
                v36 = 1;
              }

              else
              {
                error11 = 0;
              }
            }

            sub_100071CBC(v135, error11);
            _os_log_error_impl(&_mh_execute_header, v56, OS_LOG_TYPE_ERROR, "Abort proximity animation. Video player error: %{public}@", v135, 0xCu);
            if (v36)
            {
            }

            if (v38)
            {
            }

            if (v40)
            {
            }

            if (v42)
            {
            }

            if (v44)
            {
            }

            if (v46)
            {
            }

            if (v48)
            {
            }

            if (v50)
            {
            }

            if (v52)
            {
            }

            if (v54)
            {
            }
          }

          objc_storeStrong(&v56, 0);
        }

        else
        {
          v84 = _BYLoggingFacility();
          v83 = OS_LOG_TYPE_ERROR;
          if (os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
          {
            v81 = 0;
            v79 = 0;
            v77 = 0;
            v75 = 0;
            v73 = 0;
            v71 = 0;
            v69 = 0;
            v67 = 0;
            v65 = 0;
            v63 = 0;
            if (_BYIsInternalInstall())
            {
              videoPlayer10 = [(BFFProximityVisualPairingViewController *)selfCopy videoPlayer];
              v81 = 1;
              error15 = [(AVPlayer *)videoPlayer10 error];
              v80 = error15;
              v79 = 1;
            }

            else
            {
              videoPlayer11 = [(BFFProximityVisualPairingViewController *)selfCopy videoPlayer];
              v77 = 1;
              error16 = [(AVPlayer *)videoPlayer11 error];
              v75 = 1;
              if (error16)
              {
                videoPlayer12 = [(BFFProximityVisualPairingViewController *)selfCopy videoPlayer];
                v73 = 1;
                error17 = [(AVPlayer *)videoPlayer12 error];
                v71 = 1;
                domain4 = [(NSError *)error17 domain];
                v69 = 1;
                videoPlayer13 = [(BFFProximityVisualPairingViewController *)selfCopy videoPlayer];
                v67 = 1;
                error18 = [(AVPlayer *)videoPlayer13 error];
                v65 = 1;
                error15 = [NSString stringWithFormat:@"<Error domain: %@, code %ld>", domain4, [(NSError *)error18 code]];
                v64 = error15;
                v63 = 1;
              }

              else
              {
                error15 = 0;
              }
            }

            sub_100071CBC(v136, error15);
            _os_log_error_impl(&_mh_execute_header, v84, v83, "VideoPlayer failed to play proximity animation. Error: %{public}@", v136, 0xCu);
            if (v63)
            {
            }

            if (v65)
            {
            }

            if (v67)
            {
            }

            if (v69)
            {
            }

            if (v71)
            {
            }

            if (v73)
            {
            }

            if (v75)
            {
            }

            if (v77)
            {
            }

            if (v79)
            {
            }

            if (v81)
            {
            }
          }

          objc_storeStrong(&v84, 0);
          v34 = &_dispatch_main_q;
          v57 = _NSConcreteStackBlock;
          v58 = -1073741824;
          v59 = 0;
          v60 = sub_1001C6D00;
          v61 = &unk_10032B0D0;
          v62 = selfCopy;
          dispatch_async(v34, &v57);

          objc_storeStrong(&v62, 0);
        }
      }
    }
  }

  objc_storeStrong(&v131, 0);
  objc_storeStrong(&v132, 0);
  objc_storeStrong(location, 0);
}

- (void)videoReachedEnd:(id)end
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, end);
  videoPlayer = [(BFFProximityVisualPairingViewController *)selfCopy videoPlayer];
  memcpy(v5, &kCMTimeZero, sizeof(v5));
  [(AVPlayer *)videoPlayer seekToTime:v5];

  videoPlayer2 = [(BFFProximityVisualPairingViewController *)selfCopy videoPlayer];
  [(AVPlayer *)videoPlayer2 play];

  objc_storeStrong(location, 0);
}

- (void)applicationWillEnterForeground:(id)foreground
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, foreground);
  [(BFFProximityVisualPairingViewController *)selfCopy _resumePlayer];
  objc_storeStrong(location, 0);
}

- (void)willResignActive:(id)active
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, active);
  [(BFFProximityVisualPairingViewController *)selfCopy _pausePlayer];
  objc_storeStrong(location, 0);
}

- (void)_observeAppLifecycleNotifications
{
  v2 = +[NSNotificationCenter defaultCenter];
  [(NSNotificationCenter *)v2 addObserver:self selector:"applicationWillEnterForeground:" name:UIApplicationWillEnterForegroundNotification object:0];

  v3 = +[NSNotificationCenter defaultCenter];
  [(NSNotificationCenter *)v3 addObserver:self selector:"willResignActive:" name:UIApplicationWillResignActiveNotification object:0];
}

- (void)_setupVideoPlayerObservationIfNeeded
{
  selfCopy = self;
  location[1] = a2;
  videoPlayer = [(BFFProximityVisualPairingViewController *)self videoPlayer];
  v3 = videoPlayer;
  location[0] = [NSString stringWithFormat:@"%@", [(AVPlayer *)videoPlayer observationInfo]];

  if ([location[0] rangeOfString:@"status"] == 0x7FFFFFFFFFFFFFFFLL)
  {
    videoPlayer2 = [(BFFProximityVisualPairingViewController *)selfCopy videoPlayer];
    [(AVPlayer *)videoPlayer2 addObserver:selfCopy forKeyPath:@"status" options:0 context:0];
  }

  objc_storeStrong(location, 0);
}

- (void)_cleanUpAllNotifications
{
  [(BFFProximityVisualPairingViewController *)self _cleanUpAppLifecycleNotifications];
  [(BFFProximityVisualPairingViewController *)self _cleanUpPlayerItemNotifications];
  [(BFFProximityVisualPairingViewController *)self _cleanUpVideoPlayerNotificationsIfNeeded];
}

- (void)_cleanUpAppLifecycleNotifications
{
  v2 = +[NSNotificationCenter defaultCenter];
  [(NSNotificationCenter *)v2 removeObserver:self name:UIApplicationWillEnterForegroundNotification object:0];

  v3 = +[NSNotificationCenter defaultCenter];
  [(NSNotificationCenter *)v3 removeObserver:self name:UIApplicationWillResignActiveNotification object:0];
}

- (void)_cleanUpVideoPlayerNotificationsIfNeeded
{
  videoPlayer = [(BFFProximityVisualPairingViewController *)self videoPlayer];

  if (videoPlayer)
  {
    videoPlayer2 = [(BFFProximityVisualPairingViewController *)self videoPlayer];
    [(AVPlayer *)videoPlayer2 removeObserver:self forKeyPath:@"status"];
  }
}

- (void)_cleanUpPlayerItemNotifications
{
  videoPlayer = [(BFFProximityVisualPairingViewController *)self videoPlayer];
  currentItem = [(AVPlayer *)videoPlayer currentItem];

  if (currentItem)
  {
    videoPlayer2 = [(BFFProximityVisualPairingViewController *)self videoPlayer];
    currentItem2 = [(AVPlayer *)videoPlayer2 currentItem];
    [(AVPlayerItem *)currentItem2 removeObserver:self forKeyPath:@"status"];

    v6 = +[NSNotificationCenter defaultCenter];
    videoPlayer3 = [(BFFProximityVisualPairingViewController *)self videoPlayer];
    currentItem3 = [(AVPlayer *)videoPlayer3 currentItem];
    [(NSNotificationCenter *)v6 removeObserver:self name:AVPlayerItemDidPlayToEndTimeNotification object:currentItem3];
  }
}

@end