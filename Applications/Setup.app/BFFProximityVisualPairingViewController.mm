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
- (void)_performPairingDidSucceedAnimation:(id)a3;
- (void)_resetPlayer;
- (void)_resumePlayer;
- (void)_setupAVPlayer;
- (void)_setupVideoPlayerObservationIfNeeded;
- (void)_setupViews;
- (void)_showPairingCode:(BOOL)a3;
- (void)applicationWillEnterForeground:(id)a3;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)pairingDidComplete:(id)a3;
- (void)setPairingCode:(id)a3;
- (void)start;
- (void)stop;
- (void)videoReachedEnd:(id)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)willResignActive:(id)a3;
@end

@implementation BFFProximityVisualPairingViewController

- (void)dealloc
{
  v4 = self;
  v3 = a2;
  [(BFFProximityVisualPairingViewController *)self _cleanUpAllNotifications];
  v2.receiver = v4;
  v2.super_class = BFFProximityVisualPairingViewController;
  [(BFFProximityVisualPairingViewController *)&v2 dealloc];
}

- (void)viewDidLoad
{
  v9 = self;
  v8 = a2;
  v7.receiver = self;
  v7.super_class = BFFProximityVisualPairingViewController;
  [(BFFProximityVisualPairingViewController *)&v7 viewDidLoad];
  [(BFFProximityVisualPairingViewController *)v9 _setupViews];
  [(BFFProximityVisualPairingViewController *)v9 _setupAVPlayer];
  v2 = v9;
  v3 = objc_opt_self();
  v10 = v3;
  v4 = [NSArray arrayWithObjects:&v10 count:1];
  v5 = [(BFFProximityVisualPairingViewController *)v2 registerForTraitChanges:v4 withTarget:v9 action:"_setupAVPlayer"];

  v6 = [(BFFProximityVisualPairingViewController *)v9 view];
  [v6 setClipsToBounds:0];

  if (![(BFFProximityVisualPairingViewController *)v9 _isPlaying])
  {
    [(BFFProximityVisualPairingViewController *)v9 _prepareForPresentation];
    [(BFFProximityVisualPairingViewController *)v9 _observeAppLifecycleNotifications];
    [(BFFProximityVisualPairingViewController *)v9 start];
  }
}

- (void)viewDidDisappear:(BOOL)a3
{
  v6 = self;
  v5 = a2;
  v4 = a3;
  [(BFFProximityVisualPairingViewController *)self stop];
  [(BFFProximityVisualPairingViewController *)v6 _hidePairingCode];
  v3.receiver = v6;
  v3.super_class = BFFProximityVisualPairingViewController;
  [(BFFProximityVisualPairingViewController *)&v3 viewDidDisappear:v4];
}

- (void)viewDidLayoutSubviews
{
  v20 = self;
  v19 = a2;
  v18.receiver = self;
  v18.super_class = BFFProximityVisualPairingViewController;
  [(BFFProximityVisualPairingViewController *)&v18 viewDidLayoutSubviews];
  [(BFFProximityVisualPairingViewController *)v20 stop];
  [(BFFProximityVisualPairingViewController *)v20 start];
  v2 = [(BFFProximityVisualPairingViewController *)v20 _maskContainerView];
  v3 = [v2 maskView];
  v4 = *&CGAffineTransformIdentity.a;
  v5 = *&CGAffineTransformIdentity.c;
  v17[2] = *&CGAffineTransformIdentity.tx;
  v17[1] = v5;
  v17[0] = v4;
  [v3 setTransform:v17];

  v6 = [(BFFProximityVisualPairingViewController *)v20 _maskContainerView];
  [v6 frame];
  v14 = v7;
  v13 = v8;
  v16 = v9;
  v15 = v10;
  v11 = [(BFFProximityVisualPairingViewController *)v20 _maskContainerView];
  v12 = [v11 maskView];
  [v12 setFrame:{v13, v14, v15, v16, *&v13, *&v14, *&v15, *&v16}];
}

- (void)setPairingCode:(id)a3
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = location[0];
  v4 = [(BFFProximityVisualPairingViewController *)v6 visualPairingView];
  [(VPPresenterView *)v4 setVerificationCode:v3];

  objc_storeStrong(location, 0);
}

- (void)pairingDidComplete:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(BFFProximityVisualPairingViewController *)v4 _performPairingDidSucceedAnimation:location[0]];
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
    v2 = [(BFFProximityVisualPairingViewController *)self videoPlayer];
    v15 = 0;
    v13 = 0;
    v3 = 1;
    if (v2)
    {
      v16 = [(BFFProximityVisualPairingViewController *)self videoPlayer];
      v15 = 1;
      v14 = [(AVPlayer *)v16 error];
      v13 = 1;
      v3 = v14 != 0;
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

    v4 = [(BFFProximityVisualPairingViewController *)self videoPlayer];
    v5 = [(AVPlayer *)v4 currentItem];
    v11 = 0;
    v9 = 0;
    v7 = 0;
    v6 = 1;
    if (v5)
    {
      v12 = [(BFFProximityVisualPairingViewController *)self videoPlayer];
      v11 = 1;
      v10 = [(AVPlayer *)v12 currentItem];
      v9 = 1;
      v8 = [(AVPlayerItem *)v10 error];
      v7 = 1;
      v6 = v8 != 0;
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
  v2 = [(BFFProximityVisualPairingViewController *)self videoPlayer];
  [(AVPlayer *)v2 replaceCurrentItemWithPlayerItem:0];

  [(BFFProximityVisualPairingViewController *)self _pausePlayer];
}

- (void)_resumePlayer
{
  v2 = [(BFFProximityVisualPairingViewController *)self visualPairingView];
  [(VPPresenterView *)v2 start];

  v3 = [(BFFProximityVisualPairingViewController *)self videoPlayer];
  [(AVPlayer *)v3 play];
}

- (void)_pausePlayer
{
  v2 = [(BFFProximityVisualPairingViewController *)self visualPairingView];
  [(VPPresenterView *)v2 stop];

  v3 = [(BFFProximityVisualPairingViewController *)self videoPlayer];
  [(AVPlayer *)v3 pause];
}

- (void)_resetPlayer
{
  v11 = self;
  location[1] = a2;
  [(BFFProximityVisualPairingViewController *)self _hidePairingCode];
  [(BFFProximityVisualPairingViewController *)v11 stop];
  objc_initWeak(location, v11);
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

- (void)_showPairingCode:(BOOL)a3
{
  v22 = self;
  v21 = a2;
  v20 = a3;
  v3 = [(BFFProximityVisualPairingViewController *)self visualPairingView];
  [(VPPresenterView *)v3 alpha];
  v5 = v4;

  if (v5 == 0.0)
  {
    v6 = [(BFFProximityVisualPairingViewController *)v22 visualPairingView];
    CGAffineTransformMakeScale(&v19, 0.5, 0.5);
    [(VPPresenterView *)v6 setTransform:&v19];

    v13 = _NSConcreteStackBlock;
    v14 = -1073741824;
    v15 = 0;
    v16 = sub_1001C4E78;
    v17 = &unk_10032B0D0;
    v18 = v22;
    [UIView animateWithDuration:0x20000 delay:&v13 usingSpringWithDamping:0 initialSpringVelocity:0.66 options:0.2 animations:0.8 completion:10.0];
    v7 = _NSConcreteStackBlock;
    v8 = -1073741824;
    v9 = 0;
    v10 = sub_1001C4F0C;
    v11 = &unk_10032B0D0;
    v12 = v22;
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

- (void)_performPairingDidSucceedAnimation:(id)a3
{
  v18 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(BFFProximityVisualPairingViewController *)v18 videoPlayer];
  LODWORD(v4) = 0.75;
  [(AVPlayer *)v3 setRate:v4];

  v11 = _NSConcreteStackBlock;
  v12 = -1073741824;
  v13 = 0;
  v14 = sub_1001C5168;
  v15 = &unk_10032B0D0;
  v16 = v18;
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

  v3 = [(BFFProximityVisualPairingViewController *)self visualPairingView];
  [(VPPresenterView *)v3 setTranslatesAutoresizingMaskIntoConstraints:0];

  v4 = +[UIColor _systemBackgroundColor];
  v5 = [(BFFProximityVisualPairingViewController *)self visualPairingView];
  [(VPPresenterView *)v5 setBackgroundColor:v4];

  v6 = [(BFFProximityVisualPairingViewController *)self view];
  v7 = [(BFFProximityVisualPairingViewController *)self visualPairingView];
  [v6 addSubview:v7];

  v8 = [(BFFProximityVisualPairingViewController *)self visualPairingView];
  v9 = [(BFFProximityVisualPairingViewController *)self view];
  [(VPPresenterView *)v8 pinToEdges:v9];
}

- (void)_addMaskViewIfNeeded
{
  v9 = self;
  location[1] = a2;
  v2 = [(BFFProximityVisualPairingViewController *)self _maskContainerView];
  v3 = [v2 maskView];

  if (!v3)
  {
    v4 = [UIImageView alloc];
    v5 = [UIImage imageNamed:@"ProximityPairingMask"];
    location[0] = [v4 initWithImage:v5];

    [location[0] setContentMode:1];
    v6 = [(BFFProximityVisualPairingViewController *)v9 _maskContainerView];
    [v6 setMaskView:location[0]];

    v7 = [(BFFProximityVisualPairingViewController *)v9 view];
    [v7 setNeedsLayout];

    objc_storeStrong(location, 0);
  }
}

- (void)_addCloudPlayerView
{
  v2 = objc_alloc_init(AVPlayerViewController);
  [(BFFProximityVisualPairingViewController *)self setVideoViewController:v2, a2];

  v3 = [(BFFProximityVisualPairingViewController *)self videoViewController];
  v4 = [(AVPlayerViewController *)v3 view];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];

  v5 = [(BFFProximityVisualPairingViewController *)self videoViewController];
  [(AVPlayerViewController *)v5 setUpdatesNowPlayingInfoCenter:0];

  v6 = +[UIColor _systemBackgroundColor];
  v7 = [(BFFProximityVisualPairingViewController *)self videoViewController];
  v8 = [(AVPlayerViewController *)v7 view];
  [v8 setBackgroundColor:v6];

  v9 = [(BFFProximityVisualPairingViewController *)self videoViewController];
  [(AVPlayerViewController *)v9 setShowsPlaybackControls:0];

  v10 = [(BFFProximityVisualPairingViewController *)self videoViewController];
  [(AVPlayerViewController *)v10 setAllowsPictureInPicturePlayback:0];

  v11 = [(BFFProximityVisualPairingViewController *)self videoViewController];
  v12 = [(AVPlayerViewController *)v11 view];
  [v12 setContentMode:1];

  [(BFFProximityVisualPairingViewController *)self _createAndAttachAVPlayer];
  v13 = [(BFFProximityVisualPairingViewController *)self visualPairingView];
  v14 = [(BFFProximityVisualPairingViewController *)self videoViewController];
  v15 = [(AVPlayerViewController *)v14 view];
  [(VPPresenterView *)v13 addSubview:v15];

  v16 = [(BFFProximityVisualPairingViewController *)self videoViewController];
  v17 = [(AVPlayerViewController *)v16 view];
  v18 = [(BFFProximityVisualPairingViewController *)self visualPairingView];
  [v17 pinToEdges:v18];
}

- (void)_createAndAttachAVPlayer
{
  v2 = [(BFFProximityVisualPairingViewController *)self videoPlayer];

  if (v2)
  {
    [(BFFProximityVisualPairingViewController *)self _cleanUpVideoPlayerNotificationsIfNeeded];
    [(BFFProximityVisualPairingViewController *)self setVideoPlayer:0];
  }

  v3 = [[AVPlayer alloc] initWithPlayerItem:0];
  [(BFFProximityVisualPairingViewController *)self setVideoPlayer:v3];

  v4 = [(BFFProximityVisualPairingViewController *)self videoPlayer];
  [(AVPlayer *)v4 setMuted:1];

  [(BFFProximityVisualPairingViewController *)self _setupVideoPlayerObservationIfNeeded];
  v5 = [(BFFProximityVisualPairingViewController *)self videoPlayer];
  v6 = [(BFFProximityVisualPairingViewController *)self videoViewController];
  [(AVPlayerViewController *)v6 setPlayer:v5];
}

- (void)_setupAVPlayer
{
  [(BFFProximityVisualPairingViewController *)self _cleanUpPlayerItemNotifications];
  v2 = [(BFFProximityVisualPairingViewController *)self videoPlayer];
  v3 = [(BFFProximityVisualPairingViewController *)self _createAVPlayerItem];
  [(AVPlayer *)v2 replaceCurrentItemWithPlayerItem:v3];
}

- (id)_createAVPlayerItem
{
  v6 = self;
  location[1] = a2;
  location[0] = [SASUIProximityCloudPlayerItem configuredPlayerForLightMode:[(BFFProximityVisualPairingViewController *)self _isLightMode]];
  [location[0] addObserver:v6 forKeyPath:@"status" options:0 context:0];
  v2 = +[NSNotificationCenter defaultCenter];
  [(NSNotificationCenter *)v2 addObserver:v6 selector:"videoReachedEnd:" name:AVPlayerItemDidPlayToEndTimeNotification object:location[0]];

  v3 = location[0];
  objc_storeStrong(location, 0);
  return v3;
}

- (BOOL)_isPlaying
{
  v2 = [(BFFProximityVisualPairingViewController *)self videoPlayer];
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
  if (v2)
  {
    v25 = [(BFFProximityVisualPairingViewController *)self videoPlayer];
    v24 = 1;
    v23 = [(AVPlayer *)v25 error];
    v22 = 1;
    v3 = 0;
    if (!v23)
    {
      v21 = [(BFFProximityVisualPairingViewController *)self videoPlayer];
      v20 = 1;
      v19 = [(AVPlayer *)v21 currentItem];
      v18 = 1;
      v3 = 0;
      if (v19)
      {
        v17 = [(BFFProximityVisualPairingViewController *)self videoPlayer];
        v16 = 1;
        v15 = [(AVPlayer *)v17 currentItem];
        v14 = 1;
        v13 = [(AVPlayerItem *)v15 error];
        v12 = 1;
        v3 = 0;
        if (!v13)
        {
          v11 = [(BFFProximityVisualPairingViewController *)self videoPlayer];
          v10 = 1;
          v9 = [(AVPlayer *)v11 currentItem];
          v8 = 1;
          v4 = [(AVPlayerItem *)v9 status];
          v3 = 0;
          if (v4 == 1)
          {
            v7 = [(BFFProximityVisualPairingViewController *)self videoPlayer];
            v6 = 1;
            v3 = [(AVPlayer *)v7 timeControlStatus]!= AVPlayerTimeControlStatusPaused;
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

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v134 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v132 = 0;
  objc_storeStrong(&v132, a4);
  v131 = 0;
  objc_storeStrong(&v131, a5);
  v130[1] = a6;
  v9 = v132;
  v10 = [(BFFProximityVisualPairingViewController *)v134 videoPlayer];
  v11 = [(AVPlayer *)v10 currentItem];
  v12 = v9 == v11;
  v13 = 0;
  if (v12)
  {
    v14 = v11;
    v13 = [location[0] isEqualToString:@"status"];
    v11 = v14;
  }

  if (v13)
  {
    v15 = [(BFFProximityVisualPairingViewController *)v134 videoPlayer];
    v130[0] = [(AVPlayer *)v15 currentItem];

    v16 = [v130[0] error];
    v17 = 0;
    if (v16)
    {
      v18 = v16;
      v19 = [v130[0] status];
      v16 = v18;
      v17 = v19 == 2;
    }

    if (v17)
    {
      if ([(BFFProximityVisualPairingViewController *)v134 retryAttempts]>= 3)
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
            v22 = [v130[0] error];
            v107 = v22;
            v106 = 1;
          }

          else
          {
            v105 = [v130[0] error];
            v104 = 1;
            if (v105)
            {
              v103 = [v130[0] error];
              v102 = 1;
              v101 = [v103 domain];
              v100 = 1;
              v99 = [v130[0] error];
              v98 = 1;
              v22 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<Error domain: %@, code %ld>", v101, [v99 code]);
              v97 = v22;
              v96 = 1;
            }

            else
            {
              v22 = 0;
            }
          }

          sub_100071CBC(v137, v22);
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
            v20 = [v130[0] error];
            v127 = v20;
            v126 = 1;
          }

          else
          {
            v125 = [v130[0] error];
            v124 = 1;
            if (v125)
            {
              v123 = [v130[0] error];
              v122 = 1;
              v121 = [v123 domain];
              v120 = 1;
              v119 = [v130[0] error];
              v118 = 1;
              v20 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<Error domain: %@, code %ld>", v121, [v119 code]);
              v117 = v20;
              v116 = 1;
            }

            else
            {
              v20 = 0;
            }
          }

          sub_100071CBC(buf, v20);
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
        v115 = v134;
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
      v92 = v134;
      dispatch_async(v25, &v87);

      objc_storeStrong(&v92, 0);
    }

    objc_storeStrong(v130, 0);
  }

  else
  {
    v26 = v132;
    v27 = [(BFFProximityVisualPairingViewController *)v134 videoPlayer];
    v12 = v26 == v27;
    v28 = 0;
    if (v12)
    {
      v29 = v27;
      v28 = [location[0] isEqualToString:@"status"];
      v27 = v29;
    }

    if (v28)
    {
      v30 = [(BFFProximityVisualPairingViewController *)v134 videoPlayer];
      v31 = [(AVPlayer *)v30 error];
      v85 = 0;
      v32 = 1;
      if (!v31)
      {
        v86 = [(BFFProximityVisualPairingViewController *)v134 videoPlayer];
        v85 = 1;
        v32 = [(AVPlayer *)v86 status]== 2;
      }

      if (v85)
      {
      }

      if (v32)
      {
        if ([(BFFProximityVisualPairingViewController *)v134 retryAttempts]>= 3)
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
              v55 = [(BFFProximityVisualPairingViewController *)v134 videoPlayer];
              v54 = 1;
              v35 = [(AVPlayer *)v55 error];
              v53 = v35;
              v52 = 1;
            }

            else
            {
              v51 = [(BFFProximityVisualPairingViewController *)v134 videoPlayer];
              v50 = 1;
              v49 = [(AVPlayer *)v51 error];
              v48 = 1;
              if (v49)
              {
                v47 = [(BFFProximityVisualPairingViewController *)v134 videoPlayer];
                v46 = 1;
                v45 = [(AVPlayer *)v47 error];
                v44 = 1;
                v43 = [(NSError *)v45 domain];
                v42 = 1;
                v41 = [(BFFProximityVisualPairingViewController *)v134 videoPlayer];
                v40 = 1;
                v39 = [(AVPlayer *)v41 error];
                v38 = 1;
                v35 = [NSString stringWithFormat:@"<Error domain: %@, code %ld>", v43, [(NSError *)v39 code]];
                v37 = v35;
                v36 = 1;
              }

              else
              {
                v35 = 0;
              }
            }

            sub_100071CBC(v135, v35);
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
              v82 = [(BFFProximityVisualPairingViewController *)v134 videoPlayer];
              v81 = 1;
              v33 = [(AVPlayer *)v82 error];
              v80 = v33;
              v79 = 1;
            }

            else
            {
              v78 = [(BFFProximityVisualPairingViewController *)v134 videoPlayer];
              v77 = 1;
              v76 = [(AVPlayer *)v78 error];
              v75 = 1;
              if (v76)
              {
                v74 = [(BFFProximityVisualPairingViewController *)v134 videoPlayer];
                v73 = 1;
                v72 = [(AVPlayer *)v74 error];
                v71 = 1;
                v70 = [(NSError *)v72 domain];
                v69 = 1;
                v68 = [(BFFProximityVisualPairingViewController *)v134 videoPlayer];
                v67 = 1;
                v66 = [(AVPlayer *)v68 error];
                v65 = 1;
                v33 = [NSString stringWithFormat:@"<Error domain: %@, code %ld>", v70, [(NSError *)v66 code]];
                v64 = v33;
                v63 = 1;
              }

              else
              {
                v33 = 0;
              }
            }

            sub_100071CBC(v136, v33);
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
          v62 = v134;
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

- (void)videoReachedEnd:(id)a3
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(BFFProximityVisualPairingViewController *)v7 videoPlayer];
  memcpy(v5, &kCMTimeZero, sizeof(v5));
  [(AVPlayer *)v3 seekToTime:v5];

  v4 = [(BFFProximityVisualPairingViewController *)v7 videoPlayer];
  [(AVPlayer *)v4 play];

  objc_storeStrong(location, 0);
}

- (void)applicationWillEnterForeground:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(BFFProximityVisualPairingViewController *)v4 _resumePlayer];
  objc_storeStrong(location, 0);
}

- (void)willResignActive:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(BFFProximityVisualPairingViewController *)v4 _pausePlayer];
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
  v6 = self;
  location[1] = a2;
  v2 = [(BFFProximityVisualPairingViewController *)self videoPlayer];
  v3 = v2;
  location[0] = [NSString stringWithFormat:@"%@", [(AVPlayer *)v2 observationInfo]];

  if ([location[0] rangeOfString:@"status"] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = [(BFFProximityVisualPairingViewController *)v6 videoPlayer];
    [(AVPlayer *)v4 addObserver:v6 forKeyPath:@"status" options:0 context:0];
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
  v2 = [(BFFProximityVisualPairingViewController *)self videoPlayer];

  if (v2)
  {
    v3 = [(BFFProximityVisualPairingViewController *)self videoPlayer];
    [(AVPlayer *)v3 removeObserver:self forKeyPath:@"status"];
  }
}

- (void)_cleanUpPlayerItemNotifications
{
  v2 = [(BFFProximityVisualPairingViewController *)self videoPlayer];
  v3 = [(AVPlayer *)v2 currentItem];

  if (v3)
  {
    v4 = [(BFFProximityVisualPairingViewController *)self videoPlayer];
    v5 = [(AVPlayer *)v4 currentItem];
    [(AVPlayerItem *)v5 removeObserver:self forKeyPath:@"status"];

    v6 = +[NSNotificationCenter defaultCenter];
    v7 = [(BFFProximityVisualPairingViewController *)self videoPlayer];
    v8 = [(AVPlayer *)v7 currentItem];
    [(NSNotificationCenter *)v6 removeObserver:self name:AVPlayerItemDidPlayToEndTimeNotification object:v8];
  }
}

@end