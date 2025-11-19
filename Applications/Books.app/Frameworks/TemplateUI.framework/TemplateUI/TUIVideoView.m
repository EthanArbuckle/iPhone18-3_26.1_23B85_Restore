@interface TUIVideoView
+ (id)renderModelWithIdentifier:(id)a3 url:(id)a4 posterFrameResource:(id)a5 videoId:(id)a6 loop:(BOOL)a7 muted:(BOOL)a8 allowFullScreen:(BOOL)a9 autoPlay:(BOOL)a10 showPlaybackControls:(BOOL)a11 gravity:(id)a12 cornerRadius:(double)a13 topTriggerName:(id)a14 bottomTriggerName:(id)a15 leftTriggerName:(id)a16 rightTriggerName:(id)a17 actionHandler:(id)a18;
- (BOOL)isPlaying;
- (TUIImageResource)posterFrameResource;
- (double)currentTime;
- (double)duration;
- (id)accessibilityElements;
- (id)viewStateSave;
- (void)_configureActivityIndicatorView;
- (void)_configureFullscreenTapGestureRecognizer;
- (void)_configurePlayButtonView;
- (void)_configurePosterFrameImageView;
- (void)_configureVideoViewController;
- (void)_configureWithModel:(id)a3;
- (void)_handleFullScreenTapGesture:(id)a3;
- (void)_handlePlayTapGesture:(id)a3;
- (void)_registerTriggers;
- (void)_reportAction:(unint64_t)a3 origin:(unint64_t)a4 videoId:(id)a5;
- (void)_reportEvent:(unint64_t)a3 mediaTimePlayed:(double)a4 videoId:(id)a5;
- (void)_setPlayButtonVisible:(BOOL)a3 animated:(BOOL)a4;
- (void)_setPosterFrameImageVisible:(BOOL)a3 animated:(BOOL)a4;
- (void)_unregisterTriggers;
- (void)_updateStateBasedSubviewsAnimated:(BOOL)a3;
- (void)_updateStateBasedTapGestureRecognizers;
- (void)applyLayoutAttributes:(id)a3;
- (void)dealloc;
- (void)didBecomeActiveHost;
- (void)handleTrigger:(id)a3 didChangeState:(unint64_t)a4 updateEvent:(unint64_t)a5;
- (void)imageResourceDidChangeImage:(id)a3;
- (void)layoutSubviews;
- (void)managerAttemptingActionWithOrigin:(unint64_t)a3 actionCase:(unint64_t)a4;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)playerViewController:(id)a3 metricsCollectionEventOccured:(int64_t)a4;
- (void)playerViewController:(id)a3 willBeginFullScreenPresentationWithAnimationCoordinator:(id)a4;
- (void)playerViewController:(id)a3 willEndFullScreenPresentationWithAnimationCoordinator:(id)a4;
- (void)playerViewController:(id)a3 willTransitionToVisibilityOfPlaybackControls:(BOOL)a4 withAnimationCoordinator:(id)a5;
- (void)playerWithVideoId:(id)a3 didChangeState:(unint64_t)a4;
- (void)playerWithVideoId:(id)a3 didSetMuted:(BOOL)a4 mediaTimePlayed:(double)a5;
- (void)setPlayerController:(id)a3;
- (void)viewStateRestore:(id)a3;
@end

@implementation TUIVideoView

+ (id)renderModelWithIdentifier:(id)a3 url:(id)a4 posterFrameResource:(id)a5 videoId:(id)a6 loop:(BOOL)a7 muted:(BOOL)a8 allowFullScreen:(BOOL)a9 autoPlay:(BOOL)a10 showPlaybackControls:(BOOL)a11 gravity:(id)a12 cornerRadius:(double)a13 topTriggerName:(id)a14 bottomTriggerName:(id)a15 leftTriggerName:(id)a16 rightTriggerName:(id)a17 actionHandler:(id)a18
{
  v37 = a7;
  v38 = a8;
  v22 = a18;
  v23 = a17;
  v24 = a16;
  v25 = a15;
  v26 = a14;
  v27 = a12;
  v28 = a6;
  v29 = a5;
  v30 = a4;
  v36 = a3;
  LOWORD(v34) = __PAIR16__(a11, a10);
  v31 = [[_TUIRenderModelVideo alloc] initWithUrl:v30 posterFrameResource:v29 videoId:v28 loop:v37 muted:v38 allowFullScreen:a9 autoPlay:a13 showPlaybackControls:v34 gravity:v27 cornerRadius:v26 topTriggerName:v25 bottomTriggerName:v24 leftTriggerName:v23 rightTriggerName:v22 actionHandler:?];

  v32 = [[TUIRenderModelView alloc] initWithReuseIdentifier:@"TUIReuseIdentifierVideoView" identifier:v36 submodel:v31];

  return v32;
}

- (void)dealloc
{
  [(AVPlayerController *)self->_playerController removeObserver:self forKeyPath:@"scrubbing" context:&off_261DE8];
  v3 = [(TUIVideoView *)self videoViewController];
  [v3 removeObserver:self forKeyPath:@"playerController" context:&off_261DE8];

  v4 = [(TUIVideoView *)self videoViewController];
  [v4 removeObserver:self forKeyPath:@"readyForDisplay" context:&off_261DE8];

  v5 = [(TUIVideoView *)self videoViewController];
  [v5 removeFromParentViewController];

  WeakRetained = objc_loadWeakRetained(&self->_posterFrameResource);
  [WeakRetained removeInterest];

  v7 = objc_loadWeakRetained(&self->_posterFrameResource);
  [v7 removeObserver:self];

  v8 = [(_TUIRenderModelVideo *)self->_renderModel videoId];

  if (v8)
  {
    v9 = [(TUIReusableBaseView *)self feedControllerHost];
    v10 = [v9 videoPlayerManager];
    v11 = [(_TUIRenderModelVideo *)self->_renderModel videoId];
    [v10 endHostingForVideoId:v11 forHost:self];
  }

  [(TUIVideoView *)self _unregisterTriggers];
  v12.receiver = self;
  v12.super_class = TUIVideoView;
  [(TUIVideoView *)&v12 dealloc];
}

- (void)applyLayoutAttributes:(id)a3
{
  v7.receiver = self;
  v7.super_class = TUIVideoView;
  v4 = a3;
  [(TUIReusableBaseView *)&v7 applyLayoutAttributes:v4];
  v5 = [v4 renderModel];

  v6 = [v5 submodel];
  [(TUIVideoView *)self _configureWithModel:v6];
}

- (void)_configureWithModel:(id)a3
{
  v25 = a3;
  if (([v25 isEqualToRenderModel:self->_renderModel] & 1) == 0)
  {
    renderModel = self->_renderModel;
    if (renderModel)
    {
      v6 = [(_TUIRenderModelVideo *)renderModel videoId];
      v7 = [v25 videoId];
      v8 = [v6 isEqual:v7];

      if ((v8 & 1) == 0)
      {
        v9 = [(TUIReusableBaseView *)self feedControllerHost];
        v10 = [v9 videoPlayerManager];
        [v10 endHostingForVideoId:v6 forHost:self];
      }

      [(TUIVideoView *)self _unregisterTriggers];
    }

    objc_storeStrong(&self->_renderModel, a3);
    [(TUIVideoView *)self _registerTriggers];
    [(TUIVideoView *)self _configureFullscreenTapGestureRecognizer];
    [(TUIVideoView *)self _configureVideoViewController];
    [(TUIVideoView *)self _updateStateBasedTapGestureRecognizers];
    WeakRetained = objc_loadWeakRetained(&self->_posterFrameResource);
    v12 = [(_TUIRenderModelVideo *)self->_renderModel posterFrameResource];

    if (WeakRetained != v12)
    {
      v13 = objc_loadWeakRetained(&self->_posterFrameResource);
      [v13 removeInterest];

      v14 = objc_loadWeakRetained(&self->_posterFrameResource);
      [v14 removeObserver:self];

      v15 = [(_TUIRenderModelVideo *)self->_renderModel posterFrameResource];
      objc_storeWeak(&self->_posterFrameResource, v15);

      v16 = objc_loadWeakRetained(&self->_posterFrameResource);
      [v16 addInterest];

      v17 = objc_loadWeakRetained(&self->_posterFrameResource);
      [v17 addObserver:self];
    }

    if ([(_TUIRenderModelVideo *)self->_renderModel autoPlay])
    {
      v18 = 2;
    }

    else
    {
      v18 = 0;
    }

    if ([(_TUIRenderModelVideo *)self->_renderModel muted])
    {
      v19 = v18 | 4;
    }

    else
    {
      v19 = v18;
    }

    v20 = [(_TUIRenderModelVideo *)self->_renderModel loop];
    v21 = [(TUIReusableBaseView *)self feedControllerHost];
    v22 = [v21 videoPlayerManager];
    v23 = [v25 url];
    v24 = [v25 videoId];
    [v22 configureHostWithPlayerForURL:v23 videoId:v24 host:self options:v19 | v20];
  }
}

- (void)layoutSubviews
{
  v18.receiver = self;
  v18.super_class = TUIVideoView;
  [(TUIVideoView *)&v18 layoutSubviews];
  [(TUIVideoView *)self _configurePosterFrameImageView];
  [(TUIVideoView *)self _configurePlayButtonView];
  [(TUIVideoView *)self _configureActivityIndicatorView];
  [(TUIVideoView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(TUIVideoView *)self videoViewController];
  v12 = [v11 view];
  [v12 setFrame:{v4, v6, v8, v10}];

  [(UIImageView *)self->_posterFrameImageView setFrame:v4, v6, v8, v10];
  [(TUIVideoView *)self center];
  [(UIActivityIndicatorView *)self->_activityIndicatorView setCenter:?];
  [_TUIVideoPlayButton computeSizeFittingVideoSize:v8, v10];
  v14 = v13;
  v16 = v15;
  v19.origin.x = v4;
  v19.origin.y = v6;
  v19.size.width = v8;
  v19.size.height = v10;
  v17 = CGRectGetWidth(v19) * 0.5 - v14 * 0.5;
  v20.origin.x = v4;
  v20.origin.y = v6;
  v20.size.width = v8;
  v20.size.height = v10;
  [(_TUIVideoPlayButton *)self->_playButton setFrame:v17, CGRectGetHeight(v20) * 0.5 - v16 * 0.5, v14, v16];
}

- (double)currentTime
{
  v2 = [(TUIVideoView *)self videoViewController];
  v3 = [v2 player];
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

  return Seconds;
}

- (double)duration
{
  v2 = [(TUIVideoView *)self videoViewController];
  v3 = [v2 player];
  v4 = [v3 currentItem];
  v5 = v4;
  if (v4)
  {
    [v4 duration];
  }

  else
  {
    memset(&time, 0, sizeof(time));
  }

  Seconds = CMTimeGetSeconds(&time);

  return Seconds;
}

- (BOOL)isPlaying
{
  v3 = [(TUIReusableBaseView *)self feedControllerHost];
  v4 = [v3 videoPlayerManager];
  v5 = [(_TUIRenderModelVideo *)self->_renderModel videoId];
  v6 = [v4 playerWithVideoIdIsPlaying:v5];

  return v6;
}

- (void)setPlayerController:(id)a3
{
  v5 = a3;
  playerController = self->_playerController;
  if (playerController != v5)
  {
    v7 = v5;
    if (playerController)
    {
      [(AVPlayerController *)playerController removeObserver:self forKeyPath:@"scrubbing" context:&off_261DE8];
    }

    objc_storeStrong(&self->_playerController, a3);
    [(AVPlayerController *)self->_playerController addObserver:self forKeyPath:@"scrubbing" options:1 context:&off_261DE8];
    v5 = v7;
  }
}

- (id)viewStateSave
{
  v2 = [[_TUIVideoViewState alloc] initWithMuteState:[(TUIVideoView *)self shouldMuteOnNextDisplay]];

  return v2;
}

- (void)viewStateRestore:(id)a3
{
  if (a3)
  {
    v4 = [a3 muted];

    [(TUIVideoView *)self setShouldMuteOnNextDisplay:v4];
  }
}

- (void)_registerTriggers
{
  v3 = [(_TUIRenderModelVideo *)self->_renderModel topTriggerName];
  if ([v3 length])
  {
    v4 = [(_TUIRenderModelVideo *)self->_renderModel bottomTriggerName];
    v5 = [v4 length];

    if (!v5)
    {
      goto LABEL_5;
    }

    v6 = [(TUIReusableBaseView *)self feedControllerHost];
    v7 = [v6 triggerStateManager];
    v8 = [(_TUIRenderModelVideo *)self->_renderModel topTriggerName];
    [v7 addObserver:self forTrigger:v8];

    v3 = [(TUIReusableBaseView *)self feedControllerHost];
    v9 = [v3 triggerStateManager];
    v10 = [(_TUIRenderModelVideo *)self->_renderModel bottomTriggerName];
    [v9 addObserver:self forTrigger:v10];
  }

LABEL_5:
  v18 = [(_TUIRenderModelVideo *)self->_renderModel leftTriggerName];
  if ([v18 length])
  {
    v11 = [(_TUIRenderModelVideo *)self->_renderModel rightTriggerName];
    v12 = [v11 length];

    if (!v12)
    {
      return;
    }

    v13 = [(TUIReusableBaseView *)self feedControllerHost];
    v14 = [v13 triggerStateManager];
    v15 = [(_TUIRenderModelVideo *)self->_renderModel leftTriggerName];
    [v14 addObserver:self forTrigger:v15];

    v18 = [(TUIReusableBaseView *)self feedControllerHost];
    v16 = [v18 triggerStateManager];
    v17 = [(_TUIRenderModelVideo *)self->_renderModel rightTriggerName];
    [v16 addObserver:self forTrigger:v17];
  }
}

- (void)_unregisterTriggers
{
  v3 = [(_TUIRenderModelVideo *)self->_renderModel topTriggerName];
  if ([v3 length])
  {
    v4 = [(_TUIRenderModelVideo *)self->_renderModel bottomTriggerName];
    v5 = [v4 length];

    if (!v5)
    {
      goto LABEL_5;
    }

    v6 = [(TUIReusableBaseView *)self feedControllerHost];
    v7 = [v6 triggerStateManager];
    v8 = [(_TUIRenderModelVideo *)self->_renderModel topTriggerName];
    [v7 removeObserver:self forTrigger:v8];

    v3 = [(TUIReusableBaseView *)self feedControllerHost];
    v9 = [v3 triggerStateManager];
    v10 = [(_TUIRenderModelVideo *)self->_renderModel bottomTriggerName];
    [v9 removeObserver:self forTrigger:v10];
  }

LABEL_5:
  v18 = [(_TUIRenderModelVideo *)self->_renderModel leftTriggerName];
  if ([v18 length])
  {
    v11 = [(_TUIRenderModelVideo *)self->_renderModel rightTriggerName];
    v12 = [v11 length];

    if (!v12)
    {
      return;
    }

    v13 = [(TUIReusableBaseView *)self feedControllerHost];
    v14 = [v13 triggerStateManager];
    v15 = [(_TUIRenderModelVideo *)self->_renderModel leftTriggerName];
    [v14 removeObserver:self forTrigger:v15];

    v18 = [(TUIReusableBaseView *)self feedControllerHost];
    v16 = [v18 triggerStateManager];
    v17 = [(_TUIRenderModelVideo *)self->_renderModel rightTriggerName];
    [v16 removeObserver:self forTrigger:v17];
  }
}

- (void)_setPosterFrameImageVisible:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v7 = [(TUIVideoView *)self posterFrameImageView];
  [v7 alpha];
  v9 = v8;

  if ((((v9 != 1.0) ^ v5) & 1) == 0)
  {
    if (v4)
    {
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_11113C;
      v12[3] = &unk_25EF60;
      v12[4] = self;
      v13 = v5;
      [UIView animateWithDuration:v12 animations:0 completion:0.2];
    }

    else
    {
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_111194;
      v10[3] = &unk_25EF60;
      v10[4] = self;
      v11 = v5;
      [UIView performWithoutAnimation:v10];
    }
  }
}

- (void)_setPlayButtonVisible:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v7 = [(TUIVideoView *)self playButton];
  [v7 alpha];
  v9 = v8;

  if ((((v9 != 1.0) ^ v5) & 1) == 0)
  {
    if (v4)
    {
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_111360;
      v14[3] = &unk_25EF60;
      v14[4] = self;
      v15 = v5;
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_1113B8;
      v12[3] = &unk_261DF8;
      v12[4] = self;
      v13 = v5;
      [UIView animateWithDuration:v14 animations:v12 completion:0.3];
    }

    else
    {
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_111438;
      v10[3] = &unk_25EF60;
      v10[4] = self;
      v11 = v5;
      [UIView performWithoutAnimation:v10];
    }
  }
}

- (void)_configureVideoViewController
{
  v3 = [(TUIVideoView *)self videoViewController];

  if (!v3)
  {
    v4 = objc_alloc_init(AVPlayerViewController);
    [(TUIVideoView *)self setVideoViewController:v4];

    v5 = [(TUIVideoView *)self videoViewController];
    [v5 setDelegate:self];

    v6 = [(TUIVideoView *)self videoViewController];
    [v6 setCanPausePlaybackWhenExitingFullScreen:0];

    v7 = [(TUIVideoView *)self videoViewController];
    [v7 setCanToggleVideoGravityWhenEmbeddedInline:0];

    v8 = [(TUIVideoView *)self videoViewController];
    [v8 setModalPresentationStyle:5];

    v9 = [(TUIVideoView *)self videoViewController];
    [v9 setUpdatesNowPlayingInfoCenter:0];

    v10 = [(TUIVideoView *)self videoViewController];
    [v10 setAllowsPictureInPicturePlayback:0];

    v11 = [(TUIVideoView *)self videoViewController];
    [v11 setExitsFullScreenWhenPlaybackEnds:1];

    v12 = [(TUIVideoView *)self videoViewController];
    v13 = [v12 view];
    [v13 setClipsToBounds:1];

    v14 = [(TUIVideoView *)self videoViewController];
    v15 = [v14 view];
    v16 = [v15 layer];
    [v16 setMasksToBounds:1];

    v17 = [(TUIReusableBaseView *)self feedControllerHost];
    v18 = [(TUIVideoView *)self videoViewController];
    [v17 addChildViewController:v18];

    v19 = [(TUIVideoView *)self videoViewController];
    v20 = [v19 view];
    [(TUIVideoView *)self addSubview:v20];

    v21 = [(TUIReusableBaseView *)self feedControllerHost];
    v22 = [(TUIVideoView *)self videoViewController];
    [v21 didAddChildViewController:v22];

    v23 = [(TUIVideoView *)self videoViewController];
    [v23 addObserver:self forKeyPath:@"readyForDisplay" options:5 context:&off_261DE8];

    v24 = [(TUIVideoView *)self videoViewController];
    [v24 addObserver:self forKeyPath:@"playerController" options:1 context:&off_261DE8];
  }

  isInFullScreen = self->_isInFullScreen;
  v26 = [(TUIVideoView *)self videoViewController];
  v27 = v26;
  if (isInFullScreen)
  {
    [v26 setShowsPlaybackControls:1];

    v28 = [(TUIVideoView *)self videoViewController];
    [v28 setCanHidePlaybackControls:1];
    v29 = 0;
  }

  else
  {
    [v26 setCanHidePlaybackControls:0];

    v30 = [(_TUIRenderModelVideo *)self->_renderModel gravity];
    v31 = [(TUIVideoView *)self videoViewController];
    [v31 setVideoGravity:v30];

    [(_TUIRenderModelVideo *)self->_renderModel cornerRadius];
    v33 = v32;
    v34 = [(TUIVideoView *)self videoViewController];
    v35 = [v34 view];
    v36 = [v35 layer];
    [v36 setCornerRadius:v33];

    v37 = [(_TUIRenderModelVideo *)self->_renderModel allowFullScreen];
    v38 = [(TUIVideoView *)self videoViewController];
    [v38 setAllowsEnteringFullScreen:v37];

    v39 = [(_TUIRenderModelVideo *)self->_renderModel showPlaybackControls];
    v28 = [(TUIVideoView *)self videoViewController];
    [v28 setShowsPlaybackControls:v39];
    v29 = 1;
  }

  v40 = [(TUIVideoView *)self videoViewController];
  [v40 setPreferredUnobscuredArea:v29];
}

- (void)_handleFullScreenTapGesture:(id)a3
{
  v3 = [(TUIVideoView *)self videoViewController];
  [v3 enterFullScreenWithCompletion:0];
}

- (void)_handlePlayTapGesture:(id)a3
{
  v6 = [(TUIReusableBaseView *)self feedControllerHost];
  v4 = [v6 videoPlayerManager];
  v5 = [(_TUIRenderModelVideo *)self->_renderModel videoId];
  [v4 hostWantsToPlayVideoWithVideoId:v5 requestingHost:self isTriggerInitiated:0];
}

- (void)_configureFullscreenTapGestureRecognizer
{
  if (!self->_fullScreenTapGesture)
  {
    v3 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"_handleFullScreenTapGesture:"];
    fullScreenTapGesture = self->_fullScreenTapGesture;
    self->_fullScreenTapGesture = v3;
  }
}

- (void)_configurePosterFrameImageView
{
  if (!self->_posterFrameImageView)
  {
    v3 = objc_alloc_init(UIImageView);
    posterFrameImageView = self->_posterFrameImageView;
    self->_posterFrameImageView = v3;

    v5 = [(UIImageView *)self->_posterFrameImageView layer];
    [v5 setMasksToBounds:1];

    [(TUIVideoView *)self addSubview:self->_posterFrameImageView];
  }

  v12 = [(_TUIRenderModelVideo *)self->_renderModel gravity];
  if ([v12 isEqualToString:AVLayerVideoGravityResizeAspect])
  {
    v6 = self->_posterFrameImageView;
    v7 = 1;
  }

  else
  {
    v8 = [v12 isEqualToString:AVLayerVideoGravityResizeAspectFill];
    v6 = self->_posterFrameImageView;
    if (v8)
    {
      v7 = 2;
    }

    else
    {
      v7 = 0;
    }
  }

  [(UIImageView *)v6 setContentMode:v7];
  [(_TUIRenderModelVideo *)self->_renderModel cornerRadius];
  v10 = v9;
  v11 = [(UIImageView *)self->_posterFrameImageView layer];
  [v11 setCornerRadius:v10];
}

- (void)_configurePlayButtonView
{
  if (!self->_playButton)
  {
    v3 = objc_alloc_init(_TUIVideoPlayButton);
    playButton = self->_playButton;
    self->_playButton = v3;

    [(_TUIVideoPlayButton *)self->_playButton addTarget:self action:"_handlePlayTapGesture:" forControlEvents:64];
    v5 = self->_playButton;

    [(TUIVideoView *)self addSubview:v5];
  }
}

- (void)_configureActivityIndicatorView
{
  if (!self->_activityIndicatorView)
  {
    v3 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:100];
    activityIndicatorView = self->_activityIndicatorView;
    self->_activityIndicatorView = v3;

    [(UIActivityIndicatorView *)self->_activityIndicatorView setHidesWhenStopped:1];
    v5 = +[UIColor whiteColor];
    [(UIActivityIndicatorView *)self->_activityIndicatorView setColor:v5];

    v6 = self->_activityIndicatorView;

    [(TUIVideoView *)self addSubview:v6];
  }
}

- (void)_updateStateBasedSubviewsAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(TUIReusableBaseView *)self feedControllerHost];
  v6 = [v5 videoPlayerManager];
  v7 = [(_TUIRenderModelVideo *)self->_renderModel videoId];
  v8 = [v6 stateForPlayerWithVideoId:v7];

  v9 = [(TUIVideoView *)self videoViewController];
  v10 = [v9 isReadyForDisplay];

  [(TUIVideoView *)self _setPosterFrameImageVisible:v10 ^ 1 animated:v3];
  if (v8 == &dword_4 + 1 || v8 == &dword_0 + 3)
  {
    v12 = ![(_TUIRenderModelVideo *)self->_renderModel showPlaybackControls]&& ((self->_isInFullScreen | v10 ^ 1) & 1) == 0;
    [(TUIVideoView *)self _setPlayButtonVisible:v12 animated:v3];
  }

  else
  {
    [(TUIVideoView *)self _setPlayButtonVisible:0 animated:v3];
    if (((v8 == &dword_8 + 1) & v10) == 1)
    {
      activityIndicatorView = self->_activityIndicatorView;

      [(UIActivityIndicatorView *)activityIndicatorView startAnimating];
      return;
    }
  }

  v14 = self->_activityIndicatorView;

  [(UIActivityIndicatorView *)v14 stopAnimating];
}

- (void)_updateStateBasedTapGestureRecognizers
{
  v3 = [(TUIReusableBaseView *)self feedControllerHost];
  v4 = [v3 videoPlayerManager];
  v5 = [(_TUIRenderModelVideo *)self->_renderModel videoId];
  v6 = [v4 stateForPlayerWithVideoId:v5];

  if (self->_isInFullScreen || [(_TUIRenderModelVideo *)self->_renderModel showPlaybackControls]|| ([(_TUIRenderModelVideo *)self->_renderModel allowFullScreen]? (v7 = v6 == &dword_4) : (v7 = 0), !v7))
  {
    v8 = TUIVideoLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *v12 = 0;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, "Removing fullscreen tap gesture recognizer", v12, 2u);
    }

    v9 = [(TUIVideoView *)self videoViewController];
    v10 = [v9 view];
    [v10 removeGestureRecognizer:self->_fullScreenTapGesture];
  }

  else
  {
    v11 = TUIVideoLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_INFO, "Adding fullscreen tap gesture recognizer", buf, 2u);
    }

    v9 = [(TUIVideoView *)self videoViewController];
    v10 = [v9 view];
    [v10 addGestureRecognizer:self->_fullScreenTapGesture];
  }
}

- (void)_reportEvent:(unint64_t)a3 mediaTimePlayed:(double)a4 videoId:(id)a5
{
  v8 = a5;
  v9 = [TUIVideoEventMetadata alloc];
  v10 = [(TUIVideoView *)self videoMode];
  v11 = [(TUIVideoView *)self videoViewController];
  v12 = [v11 player];
  v13 = [v12 isMuted];
  v14 = [(TUIVideoView *)self isPlaying];
  [(TUIVideoView *)self duration];
  v16 = [(TUIVideoEventMetadata *)v9 initWithEventCase:a3 mode:v10 isMuted:v13 isPlaying:v14 mediaTimePlayed:v8 mediaDuration:a4 mediaId:v15];

  if (v16)
  {
    v17 = [(_TUIRenderModelVideo *)self->_renderModel actionHandler];

    if (v17)
    {
      v18 = [(TUIVideoEventMetadata *)v16 serialize];
      v19 = [(TUIVideoEventMetadata *)v16 triggerForEvent:a3];
      v20 = [(_TUIRenderModelVideo *)self->_renderModel actionHandler];
      v22 = @"eventData";
      v23 = v18;
      v21 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
      [v20 invoke:v19 arguments:v21];
    }
  }
}

- (void)_reportAction:(unint64_t)a3 origin:(unint64_t)a4 videoId:(id)a5
{
  v8 = a5;
  v9 = [TUIVideoActionMetadata alloc];
  v10 = [(TUIVideoView *)self videoMode];
  v11 = [(TUIVideoView *)self videoViewController];
  v12 = [v11 player];
  v13 = [v12 isMuted];
  v14 = [(TUIVideoView *)self isPlaying];
  [(TUIVideoView *)self currentTime];
  v16 = v15;
  [(TUIVideoView *)self duration];
  v18 = [(TUIVideoActionMetadata *)v9 initWithActionCase:a3 origin:a4 mode:v10 isMuted:v13 isPlaying:v14 mediaTimePlayed:v8 mediaDuration:v16 mediaId:v17];

  if (v18)
  {
    v19 = [(_TUIRenderModelVideo *)self->_renderModel actionHandler];

    if (v19)
    {
      v20 = [(TUIVideoActionMetadata *)v18 serialize];
      v21 = [(TUIVideoActionMetadata *)v18 triggerForAction:a3];
      v22 = [(_TUIRenderModelVideo *)self->_renderModel actionHandler];
      v24 = @"actionData";
      v25 = v20;
      v23 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];
      [v22 invoke:v21 arguments:v23];
    }
  }
}

- (void)imageResourceDidChangeImage:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1123B4;
  v5[3] = &unk_25DCA0;
  v6 = a3;
  v7 = self;
  v4 = v6;
  dispatch_async(&_dispatch_main_q, v5);
}

- (void)playerWithVideoId:(id)a3 didChangeState:(unint64_t)a4
{
  [(TUIVideoView *)self _updateStateBasedSubviewsAnimated:1, a4];

  [(TUIVideoView *)self _updateStateBasedTapGestureRecognizers];
}

- (void)playerWithVideoId:(id)a3 didSetMuted:(BOOL)a4 mediaTimePlayed:(double)a5
{
  if (a4)
  {
    v6 = 3;
  }

  else
  {
    v6 = 4;
  }

  [(TUIVideoView *)self _reportEvent:v6 mediaTimePlayed:a3 videoId:a5];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a5;
  if (a6 == &off_261DE8)
  {
    if ([v10 isEqualToString:@"scrubbing"])
    {
      v12 = objc_opt_class();
      v13 = [v11 objectForKey:NSKeyValueChangeNewKey];
      v14 = TUIDynamicCast(v12, v13);
      v15 = [v14 BOOLValue];

      [(TUIVideoView *)self currentTime];
      v17 = v16;
      v18 = [(_TUIRenderModelVideo *)self->_renderModel videoId];
      if (v15)
      {
        v19 = 10;
      }

      else
      {
        v19 = 11;
      }

      [(TUIVideoView *)self _reportEvent:v19 mediaTimePlayed:v18 videoId:v17];
    }

    else
    {
      if ([v10 isEqualToString:@"readyForDisplay"])
      {
        [(TUIVideoView *)self _updateStateBasedSubviewsAnimated:1];
        goto LABEL_11;
      }

      if (![v10 isEqualToString:@"playerController"])
      {
        goto LABEL_11;
      }

      v18 = [(TUIVideoView *)self videoViewController];
      v20 = [v18 playerController];
      [(TUIVideoView *)self setPlayerController:v20];
    }

    goto LABEL_11;
  }

  v21.receiver = self;
  v21.super_class = TUIVideoView;
  [(TUIVideoView *)&v21 observeValueForKeyPath:v10 ofObject:a4 change:v11 context:a6];
LABEL_11:
}

- (id)accessibilityElements
{
  v3 = [(TUIVideoView *)self videoViewController];
  v4 = [v3 view];
  playButton = self->_playButton;
  v8[0] = v4;
  v8[1] = playButton;
  v6 = [NSArray arrayWithObjects:v8 count:2];

  return v6;
}

- (void)handleTrigger:(id)a3 didChangeState:(unint64_t)a4 updateEvent:(unint64_t)a5
{
  v6 = [(TUIReusableBaseView *)self feedControllerHost:a3];
  v7 = [v6 triggerStateManager];
  v8 = [(_TUIRenderModelVideo *)self->_renderModel topTriggerName];
  v9 = [v7 stateForTriggerWithName:v8];

  v10 = [(TUIReusableBaseView *)self feedControllerHost];
  v11 = [v10 triggerStateManager];
  v12 = [(_TUIRenderModelVideo *)self->_renderModel bottomTriggerName];
  v13 = [v11 stateForTriggerWithName:v12];

  v14 = [(TUIReusableBaseView *)self feedControllerHost];
  v15 = [v14 triggerStateManager];
  v16 = [(_TUIRenderModelVideo *)self->_renderModel leftTriggerName];
  v17 = [v15 stateForTriggerWithName:v16];

  v18 = [(TUIReusableBaseView *)self feedControllerHost];
  v19 = [v18 triggerStateManager];
  v20 = [(_TUIRenderModelVideo *)self->_renderModel rightTriggerName];
  v21 = [v19 stateForTriggerWithName:v20];

  v22 = (v21 & 0xFFFFFFFFFFFFFFFDLL) != 0 && (v17 & 0xFFFFFFFFFFFFFFFDLL) != 0;
  v24 = v9 == (&dword_0 + 2) || v13 == (&dword_0 + 2);
  v25 = [(TUIReusableBaseView *)self feedControllerHost];
  v26 = [v25 videoPlayerManager];
  v27 = [v26 isInForeground];

  v30 = v9 == &dword_4 || v13 == &dword_4 || v17 == 4 || v21 == 4;
  v31 = v22;
  v32 = v30;
  v33 = v30 || v31;
  v34 = v24;
  v35 = v24 & ~v33;
  v36 = [(TUIReusableBaseView *)self feedControllerHost];
  v37 = [v36 videoPlayerManager];
  v38 = [(_TUIRenderModelVideo *)self->_renderModel videoId];
  [v37 hostWantsToSetPlayerIsWithinVisibleBoundsForPlayerWithVideoId:v38 requestingHost:self isWithinVisibleBounds:v35 & v27];

  if (a4 != 4)
  {
    [(TUIReusableBaseView *)self feedControllerHost];
    v40 = v39 = v32;
    v41 = [v40 videoPlayerManager];
    v42 = [(_TUIRenderModelVideo *)self->_renderModel videoId];
    v43 = [(_TUIRenderModelVideo *)self->_renderModel url];
    [v41 setActiveHostOfPlayerForVideoId:v42 videoUrl:v43 host:self];

    v32 = v39;
  }

  if (!self->_fullScreenTransitionInFlight && !self->_isInFullScreen)
  {
    [(TUIVideoView *)self _updateStateBasedSubviewsAnimated:1];
    if (v32 & 1 | (v31 || !v34))
    {
      v47 = [(TUIReusableBaseView *)self feedControllerHost];
      v44 = [v47 videoPlayerManager];
      v45 = [(_TUIRenderModelVideo *)self->_renderModel videoId];
      [v44 hostWantsToPausePlayerWithVideoId:v45 requestingHost:self isTriggerInitiated:1];
    }

    else
    {
      if (![(_TUIRenderModelVideo *)self->_renderModel autoPlay])
      {
        return;
      }

      v47 = [(TUIReusableBaseView *)self feedControllerHost];
      v44 = [v47 videoPlayerManager];
      v45 = [(_TUIRenderModelVideo *)self->_renderModel videoId];
      [v44 hostWantsToPlayVideoWithVideoId:v45 requestingHost:self isTriggerInitiated:1];
    }
  }
}

- (void)didBecomeActiveHost
{
  if (self->_shouldMuteOnNextDisplay)
  {
    v3 = [(TUIReusableBaseView *)self feedControllerHost];
    v4 = [v3 videoPlayerManager];
    v5 = [(_TUIRenderModelVideo *)self->_renderModel videoId];
    [v4 setMuteStateForPlayerWithVideoId:v5 muted:1 requestingHost:self isTriggerInitiated:1];

    self->_shouldMuteOnNextDisplay = 0;
  }

  [(TUIVideoView *)self _updateStateBasedSubviewsAnimated:1];
  v8 = [(TUIReusableBaseView *)self feedControllerHost];
  v6 = [v8 videoPlayerManager];
  v7 = [(_TUIRenderModelVideo *)self->_renderModel videoId];
  [v6 setLoopingStateForPlayerWithVideoId:v7 loop:-[_TUIRenderModelVideo loop](self->_renderModel requestingHost:{"loop"), self}];
}

- (void)managerAttemptingActionWithOrigin:(unint64_t)a3 actionCase:(unint64_t)a4
{
  v7 = [(_TUIRenderModelVideo *)self->_renderModel videoId];
  [(TUIVideoView *)self _reportAction:a4 origin:a3 videoId:v7];
}

- (void)playerViewController:(id)a3 willBeginFullScreenPresentationWithAnimationCoordinator:(id)a4
{
  self->_fullScreenTransitionInFlight = 1;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_112D3C;
  v4[3] = &unk_261E20;
  v4[4] = self;
  [a4 animateAlongsideTransition:0 completion:v4];
}

- (void)playerViewController:(id)a3 willEndFullScreenPresentationWithAnimationCoordinator:(id)a4
{
  self->_fullScreenTransitionInFlight = 1;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_112EFC;
  v4[3] = &unk_261E20;
  v4[4] = self;
  [a4 animateAlongsideTransition:0 completion:v4];
}

- (void)playerViewController:(id)a3 willTransitionToVisibilityOfPlaybackControls:(BOOL)a4 withAnimationCoordinator:(id)a5
{
  v7 = a5;
  v8 = v7;
  if (!a4 && !self->_isInFullScreen)
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1130C0;
    v9[3] = &unk_25DE30;
    v9[4] = self;
    [v7 addCoordinatedAnimations:v9 completion:0];
  }
}

- (void)playerViewController:(id)a3 metricsCollectionEventOccured:(int64_t)a4
{
  v6 = a3;
  if (a4 <= 5)
  {
    v8 = v6;
    v7 = [(_TUIRenderModelVideo *)self->_renderModel videoId];
    [(TUIVideoView *)self _reportAction:a4 origin:0 videoId:v7];

    v6 = v8;
  }
}

- (TUIImageResource)posterFrameResource
{
  WeakRetained = objc_loadWeakRetained(&self->_posterFrameResource);

  return WeakRetained;
}

@end