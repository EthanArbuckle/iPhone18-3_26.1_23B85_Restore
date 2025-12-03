@interface TUIVideoView
+ (id)renderModelWithIdentifier:(id)identifier url:(id)url posterFrameResource:(id)resource videoId:(id)id loop:(BOOL)loop muted:(BOOL)muted allowFullScreen:(BOOL)screen autoPlay:(BOOL)self0 showPlaybackControls:(BOOL)self1 gravity:(id)self2 cornerRadius:(double)self3 topTriggerName:(id)self4 bottomTriggerName:(id)self5 leftTriggerName:(id)self6 rightTriggerName:(id)self7 actionHandler:(id)self8;
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
- (void)_configureWithModel:(id)model;
- (void)_handleFullScreenTapGesture:(id)gesture;
- (void)_handlePlayTapGesture:(id)gesture;
- (void)_registerTriggers;
- (void)_reportAction:(unint64_t)action origin:(unint64_t)origin videoId:(id)id;
- (void)_reportEvent:(unint64_t)event mediaTimePlayed:(double)played videoId:(id)id;
- (void)_setPlayButtonVisible:(BOOL)visible animated:(BOOL)animated;
- (void)_setPosterFrameImageVisible:(BOOL)visible animated:(BOOL)animated;
- (void)_unregisterTriggers;
- (void)_updateStateBasedSubviewsAnimated:(BOOL)animated;
- (void)_updateStateBasedTapGestureRecognizers;
- (void)applyLayoutAttributes:(id)attributes;
- (void)dealloc;
- (void)didBecomeActiveHost;
- (void)handleTrigger:(id)trigger didChangeState:(unint64_t)state updateEvent:(unint64_t)event;
- (void)imageResourceDidChangeImage:(id)image;
- (void)layoutSubviews;
- (void)managerAttemptingActionWithOrigin:(unint64_t)origin actionCase:(unint64_t)case;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)playerViewController:(id)controller metricsCollectionEventOccured:(int64_t)occured;
- (void)playerViewController:(id)controller willBeginFullScreenPresentationWithAnimationCoordinator:(id)coordinator;
- (void)playerViewController:(id)controller willEndFullScreenPresentationWithAnimationCoordinator:(id)coordinator;
- (void)playerViewController:(id)controller willTransitionToVisibilityOfPlaybackControls:(BOOL)controls withAnimationCoordinator:(id)coordinator;
- (void)playerWithVideoId:(id)id didChangeState:(unint64_t)state;
- (void)playerWithVideoId:(id)id didSetMuted:(BOOL)muted mediaTimePlayed:(double)played;
- (void)setPlayerController:(id)controller;
- (void)viewStateRestore:(id)restore;
@end

@implementation TUIVideoView

+ (id)renderModelWithIdentifier:(id)identifier url:(id)url posterFrameResource:(id)resource videoId:(id)id loop:(BOOL)loop muted:(BOOL)muted allowFullScreen:(BOOL)screen autoPlay:(BOOL)self0 showPlaybackControls:(BOOL)self1 gravity:(id)self2 cornerRadius:(double)self3 topTriggerName:(id)self4 bottomTriggerName:(id)self5 leftTriggerName:(id)self6 rightTriggerName:(id)self7 actionHandler:(id)self8
{
  loopCopy = loop;
  mutedCopy = muted;
  handlerCopy = handler;
  rightTriggerNameCopy = rightTriggerName;
  leftTriggerNameCopy = leftTriggerName;
  triggerNameCopy = triggerName;
  nameCopy = name;
  gravityCopy = gravity;
  idCopy = id;
  resourceCopy = resource;
  urlCopy = url;
  identifierCopy = identifier;
  LOWORD(v34) = __PAIR16__(controls, play);
  v31 = [[_TUIRenderModelVideo alloc] initWithUrl:urlCopy posterFrameResource:resourceCopy videoId:idCopy loop:loopCopy muted:mutedCopy allowFullScreen:screen autoPlay:radius showPlaybackControls:v34 gravity:gravityCopy cornerRadius:nameCopy topTriggerName:triggerNameCopy bottomTriggerName:leftTriggerNameCopy leftTriggerName:rightTriggerNameCopy rightTriggerName:handlerCopy actionHandler:?];

  v32 = [[TUIRenderModelView alloc] initWithReuseIdentifier:@"TUIReuseIdentifierVideoView" identifier:identifierCopy submodel:v31];

  return v32;
}

- (void)dealloc
{
  [(AVPlayerController *)self->_playerController removeObserver:self forKeyPath:@"scrubbing" context:&off_261DE8];
  videoViewController = [(TUIVideoView *)self videoViewController];
  [videoViewController removeObserver:self forKeyPath:@"playerController" context:&off_261DE8];

  videoViewController2 = [(TUIVideoView *)self videoViewController];
  [videoViewController2 removeObserver:self forKeyPath:@"readyForDisplay" context:&off_261DE8];

  videoViewController3 = [(TUIVideoView *)self videoViewController];
  [videoViewController3 removeFromParentViewController];

  WeakRetained = objc_loadWeakRetained(&self->_posterFrameResource);
  [WeakRetained removeInterest];

  v7 = objc_loadWeakRetained(&self->_posterFrameResource);
  [v7 removeObserver:self];

  videoId = [(_TUIRenderModelVideo *)self->_renderModel videoId];

  if (videoId)
  {
    feedControllerHost = [(TUIReusableBaseView *)self feedControllerHost];
    videoPlayerManager = [feedControllerHost videoPlayerManager];
    videoId2 = [(_TUIRenderModelVideo *)self->_renderModel videoId];
    [videoPlayerManager endHostingForVideoId:videoId2 forHost:self];
  }

  [(TUIVideoView *)self _unregisterTriggers];
  v12.receiver = self;
  v12.super_class = TUIVideoView;
  [(TUIVideoView *)&v12 dealloc];
}

- (void)applyLayoutAttributes:(id)attributes
{
  v7.receiver = self;
  v7.super_class = TUIVideoView;
  attributesCopy = attributes;
  [(TUIReusableBaseView *)&v7 applyLayoutAttributes:attributesCopy];
  renderModel = [attributesCopy renderModel];

  submodel = [renderModel submodel];
  [(TUIVideoView *)self _configureWithModel:submodel];
}

- (void)_configureWithModel:(id)model
{
  modelCopy = model;
  if (([modelCopy isEqualToRenderModel:self->_renderModel] & 1) == 0)
  {
    renderModel = self->_renderModel;
    if (renderModel)
    {
      videoId = [(_TUIRenderModelVideo *)renderModel videoId];
      videoId2 = [modelCopy videoId];
      v8 = [videoId isEqual:videoId2];

      if ((v8 & 1) == 0)
      {
        feedControllerHost = [(TUIReusableBaseView *)self feedControllerHost];
        videoPlayerManager = [feedControllerHost videoPlayerManager];
        [videoPlayerManager endHostingForVideoId:videoId forHost:self];
      }

      [(TUIVideoView *)self _unregisterTriggers];
    }

    objc_storeStrong(&self->_renderModel, model);
    [(TUIVideoView *)self _registerTriggers];
    [(TUIVideoView *)self _configureFullscreenTapGestureRecognizer];
    [(TUIVideoView *)self _configureVideoViewController];
    [(TUIVideoView *)self _updateStateBasedTapGestureRecognizers];
    WeakRetained = objc_loadWeakRetained(&self->_posterFrameResource);
    posterFrameResource = [(_TUIRenderModelVideo *)self->_renderModel posterFrameResource];

    if (WeakRetained != posterFrameResource)
    {
      v13 = objc_loadWeakRetained(&self->_posterFrameResource);
      [v13 removeInterest];

      v14 = objc_loadWeakRetained(&self->_posterFrameResource);
      [v14 removeObserver:self];

      posterFrameResource2 = [(_TUIRenderModelVideo *)self->_renderModel posterFrameResource];
      objc_storeWeak(&self->_posterFrameResource, posterFrameResource2);

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

    loop = [(_TUIRenderModelVideo *)self->_renderModel loop];
    feedControllerHost2 = [(TUIReusableBaseView *)self feedControllerHost];
    videoPlayerManager2 = [feedControllerHost2 videoPlayerManager];
    v23 = [modelCopy url];
    videoId3 = [modelCopy videoId];
    [videoPlayerManager2 configureHostWithPlayerForURL:v23 videoId:videoId3 host:self options:v19 | loop];
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
  videoViewController = [(TUIVideoView *)self videoViewController];
  view = [videoViewController view];
  [view setFrame:{v4, v6, v8, v10}];

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
  videoViewController = [(TUIVideoView *)self videoViewController];
  player = [videoViewController player];
  v4 = player;
  if (player)
  {
    [player currentTime];
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
  videoViewController = [(TUIVideoView *)self videoViewController];
  player = [videoViewController player];
  currentItem = [player currentItem];
  v5 = currentItem;
  if (currentItem)
  {
    [currentItem duration];
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
  feedControllerHost = [(TUIReusableBaseView *)self feedControllerHost];
  videoPlayerManager = [feedControllerHost videoPlayerManager];
  videoId = [(_TUIRenderModelVideo *)self->_renderModel videoId];
  v6 = [videoPlayerManager playerWithVideoIdIsPlaying:videoId];

  return v6;
}

- (void)setPlayerController:(id)controller
{
  controllerCopy = controller;
  playerController = self->_playerController;
  if (playerController != controllerCopy)
  {
    v7 = controllerCopy;
    if (playerController)
    {
      [(AVPlayerController *)playerController removeObserver:self forKeyPath:@"scrubbing" context:&off_261DE8];
    }

    objc_storeStrong(&self->_playerController, controller);
    [(AVPlayerController *)self->_playerController addObserver:self forKeyPath:@"scrubbing" options:1 context:&off_261DE8];
    controllerCopy = v7;
  }
}

- (id)viewStateSave
{
  v2 = [[_TUIVideoViewState alloc] initWithMuteState:[(TUIVideoView *)self shouldMuteOnNextDisplay]];

  return v2;
}

- (void)viewStateRestore:(id)restore
{
  if (restore)
  {
    muted = [restore muted];

    [(TUIVideoView *)self setShouldMuteOnNextDisplay:muted];
  }
}

- (void)_registerTriggers
{
  topTriggerName = [(_TUIRenderModelVideo *)self->_renderModel topTriggerName];
  if ([topTriggerName length])
  {
    bottomTriggerName = [(_TUIRenderModelVideo *)self->_renderModel bottomTriggerName];
    v5 = [bottomTriggerName length];

    if (!v5)
    {
      goto LABEL_5;
    }

    feedControllerHost = [(TUIReusableBaseView *)self feedControllerHost];
    triggerStateManager = [feedControllerHost triggerStateManager];
    topTriggerName2 = [(_TUIRenderModelVideo *)self->_renderModel topTriggerName];
    [triggerStateManager addObserver:self forTrigger:topTriggerName2];

    topTriggerName = [(TUIReusableBaseView *)self feedControllerHost];
    triggerStateManager2 = [topTriggerName triggerStateManager];
    bottomTriggerName2 = [(_TUIRenderModelVideo *)self->_renderModel bottomTriggerName];
    [triggerStateManager2 addObserver:self forTrigger:bottomTriggerName2];
  }

LABEL_5:
  leftTriggerName = [(_TUIRenderModelVideo *)self->_renderModel leftTriggerName];
  if ([leftTriggerName length])
  {
    rightTriggerName = [(_TUIRenderModelVideo *)self->_renderModel rightTriggerName];
    v12 = [rightTriggerName length];

    if (!v12)
    {
      return;
    }

    feedControllerHost2 = [(TUIReusableBaseView *)self feedControllerHost];
    triggerStateManager3 = [feedControllerHost2 triggerStateManager];
    leftTriggerName2 = [(_TUIRenderModelVideo *)self->_renderModel leftTriggerName];
    [triggerStateManager3 addObserver:self forTrigger:leftTriggerName2];

    leftTriggerName = [(TUIReusableBaseView *)self feedControllerHost];
    triggerStateManager4 = [leftTriggerName triggerStateManager];
    rightTriggerName2 = [(_TUIRenderModelVideo *)self->_renderModel rightTriggerName];
    [triggerStateManager4 addObserver:self forTrigger:rightTriggerName2];
  }
}

- (void)_unregisterTriggers
{
  topTriggerName = [(_TUIRenderModelVideo *)self->_renderModel topTriggerName];
  if ([topTriggerName length])
  {
    bottomTriggerName = [(_TUIRenderModelVideo *)self->_renderModel bottomTriggerName];
    v5 = [bottomTriggerName length];

    if (!v5)
    {
      goto LABEL_5;
    }

    feedControllerHost = [(TUIReusableBaseView *)self feedControllerHost];
    triggerStateManager = [feedControllerHost triggerStateManager];
    topTriggerName2 = [(_TUIRenderModelVideo *)self->_renderModel topTriggerName];
    [triggerStateManager removeObserver:self forTrigger:topTriggerName2];

    topTriggerName = [(TUIReusableBaseView *)self feedControllerHost];
    triggerStateManager2 = [topTriggerName triggerStateManager];
    bottomTriggerName2 = [(_TUIRenderModelVideo *)self->_renderModel bottomTriggerName];
    [triggerStateManager2 removeObserver:self forTrigger:bottomTriggerName2];
  }

LABEL_5:
  leftTriggerName = [(_TUIRenderModelVideo *)self->_renderModel leftTriggerName];
  if ([leftTriggerName length])
  {
    rightTriggerName = [(_TUIRenderModelVideo *)self->_renderModel rightTriggerName];
    v12 = [rightTriggerName length];

    if (!v12)
    {
      return;
    }

    feedControllerHost2 = [(TUIReusableBaseView *)self feedControllerHost];
    triggerStateManager3 = [feedControllerHost2 triggerStateManager];
    leftTriggerName2 = [(_TUIRenderModelVideo *)self->_renderModel leftTriggerName];
    [triggerStateManager3 removeObserver:self forTrigger:leftTriggerName2];

    leftTriggerName = [(TUIReusableBaseView *)self feedControllerHost];
    triggerStateManager4 = [leftTriggerName triggerStateManager];
    rightTriggerName2 = [(_TUIRenderModelVideo *)self->_renderModel rightTriggerName];
    [triggerStateManager4 removeObserver:self forTrigger:rightTriggerName2];
  }
}

- (void)_setPosterFrameImageVisible:(BOOL)visible animated:(BOOL)animated
{
  animatedCopy = animated;
  visibleCopy = visible;
  posterFrameImageView = [(TUIVideoView *)self posterFrameImageView];
  [posterFrameImageView alpha];
  v9 = v8;

  if ((((v9 != 1.0) ^ visibleCopy) & 1) == 0)
  {
    if (animatedCopy)
    {
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_11113C;
      v12[3] = &unk_25EF60;
      v12[4] = self;
      v13 = visibleCopy;
      [UIView animateWithDuration:v12 animations:0 completion:0.2];
    }

    else
    {
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_111194;
      v10[3] = &unk_25EF60;
      v10[4] = self;
      v11 = visibleCopy;
      [UIView performWithoutAnimation:v10];
    }
  }
}

- (void)_setPlayButtonVisible:(BOOL)visible animated:(BOOL)animated
{
  animatedCopy = animated;
  visibleCopy = visible;
  playButton = [(TUIVideoView *)self playButton];
  [playButton alpha];
  v9 = v8;

  if ((((v9 != 1.0) ^ visibleCopy) & 1) == 0)
  {
    if (animatedCopy)
    {
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_111360;
      v14[3] = &unk_25EF60;
      v14[4] = self;
      v15 = visibleCopy;
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_1113B8;
      v12[3] = &unk_261DF8;
      v12[4] = self;
      v13 = visibleCopy;
      [UIView animateWithDuration:v14 animations:v12 completion:0.3];
    }

    else
    {
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_111438;
      v10[3] = &unk_25EF60;
      v10[4] = self;
      v11 = visibleCopy;
      [UIView performWithoutAnimation:v10];
    }
  }
}

- (void)_configureVideoViewController
{
  videoViewController = [(TUIVideoView *)self videoViewController];

  if (!videoViewController)
  {
    v4 = objc_alloc_init(AVPlayerViewController);
    [(TUIVideoView *)self setVideoViewController:v4];

    videoViewController2 = [(TUIVideoView *)self videoViewController];
    [videoViewController2 setDelegate:self];

    videoViewController3 = [(TUIVideoView *)self videoViewController];
    [videoViewController3 setCanPausePlaybackWhenExitingFullScreen:0];

    videoViewController4 = [(TUIVideoView *)self videoViewController];
    [videoViewController4 setCanToggleVideoGravityWhenEmbeddedInline:0];

    videoViewController5 = [(TUIVideoView *)self videoViewController];
    [videoViewController5 setModalPresentationStyle:5];

    videoViewController6 = [(TUIVideoView *)self videoViewController];
    [videoViewController6 setUpdatesNowPlayingInfoCenter:0];

    videoViewController7 = [(TUIVideoView *)self videoViewController];
    [videoViewController7 setAllowsPictureInPicturePlayback:0];

    videoViewController8 = [(TUIVideoView *)self videoViewController];
    [videoViewController8 setExitsFullScreenWhenPlaybackEnds:1];

    videoViewController9 = [(TUIVideoView *)self videoViewController];
    view = [videoViewController9 view];
    [view setClipsToBounds:1];

    videoViewController10 = [(TUIVideoView *)self videoViewController];
    view2 = [videoViewController10 view];
    layer = [view2 layer];
    [layer setMasksToBounds:1];

    feedControllerHost = [(TUIReusableBaseView *)self feedControllerHost];
    videoViewController11 = [(TUIVideoView *)self videoViewController];
    [feedControllerHost addChildViewController:videoViewController11];

    videoViewController12 = [(TUIVideoView *)self videoViewController];
    view3 = [videoViewController12 view];
    [(TUIVideoView *)self addSubview:view3];

    feedControllerHost2 = [(TUIReusableBaseView *)self feedControllerHost];
    videoViewController13 = [(TUIVideoView *)self videoViewController];
    [feedControllerHost2 didAddChildViewController:videoViewController13];

    videoViewController14 = [(TUIVideoView *)self videoViewController];
    [videoViewController14 addObserver:self forKeyPath:@"readyForDisplay" options:5 context:&off_261DE8];

    videoViewController15 = [(TUIVideoView *)self videoViewController];
    [videoViewController15 addObserver:self forKeyPath:@"playerController" options:1 context:&off_261DE8];
  }

  isInFullScreen = self->_isInFullScreen;
  videoViewController16 = [(TUIVideoView *)self videoViewController];
  v27 = videoViewController16;
  if (isInFullScreen)
  {
    [videoViewController16 setShowsPlaybackControls:1];

    videoViewController17 = [(TUIVideoView *)self videoViewController];
    [videoViewController17 setCanHidePlaybackControls:1];
    v29 = 0;
  }

  else
  {
    [videoViewController16 setCanHidePlaybackControls:0];

    gravity = [(_TUIRenderModelVideo *)self->_renderModel gravity];
    videoViewController18 = [(TUIVideoView *)self videoViewController];
    [videoViewController18 setVideoGravity:gravity];

    [(_TUIRenderModelVideo *)self->_renderModel cornerRadius];
    v33 = v32;
    videoViewController19 = [(TUIVideoView *)self videoViewController];
    view4 = [videoViewController19 view];
    layer2 = [view4 layer];
    [layer2 setCornerRadius:v33];

    allowFullScreen = [(_TUIRenderModelVideo *)self->_renderModel allowFullScreen];
    videoViewController20 = [(TUIVideoView *)self videoViewController];
    [videoViewController20 setAllowsEnteringFullScreen:allowFullScreen];

    showPlaybackControls = [(_TUIRenderModelVideo *)self->_renderModel showPlaybackControls];
    videoViewController17 = [(TUIVideoView *)self videoViewController];
    [videoViewController17 setShowsPlaybackControls:showPlaybackControls];
    v29 = 1;
  }

  videoViewController21 = [(TUIVideoView *)self videoViewController];
  [videoViewController21 setPreferredUnobscuredArea:v29];
}

- (void)_handleFullScreenTapGesture:(id)gesture
{
  videoViewController = [(TUIVideoView *)self videoViewController];
  [videoViewController enterFullScreenWithCompletion:0];
}

- (void)_handlePlayTapGesture:(id)gesture
{
  feedControllerHost = [(TUIReusableBaseView *)self feedControllerHost];
  videoPlayerManager = [feedControllerHost videoPlayerManager];
  videoId = [(_TUIRenderModelVideo *)self->_renderModel videoId];
  [videoPlayerManager hostWantsToPlayVideoWithVideoId:videoId requestingHost:self isTriggerInitiated:0];
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

    layer = [(UIImageView *)self->_posterFrameImageView layer];
    [layer setMasksToBounds:1];

    [(TUIVideoView *)self addSubview:self->_posterFrameImageView];
  }

  gravity = [(_TUIRenderModelVideo *)self->_renderModel gravity];
  if ([gravity isEqualToString:AVLayerVideoGravityResizeAspect])
  {
    v6 = self->_posterFrameImageView;
    v7 = 1;
  }

  else
  {
    v8 = [gravity isEqualToString:AVLayerVideoGravityResizeAspectFill];
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
  layer2 = [(UIImageView *)self->_posterFrameImageView layer];
  [layer2 setCornerRadius:v10];
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

- (void)_updateStateBasedSubviewsAnimated:(BOOL)animated
{
  animatedCopy = animated;
  feedControllerHost = [(TUIReusableBaseView *)self feedControllerHost];
  videoPlayerManager = [feedControllerHost videoPlayerManager];
  videoId = [(_TUIRenderModelVideo *)self->_renderModel videoId];
  v8 = [videoPlayerManager stateForPlayerWithVideoId:videoId];

  videoViewController = [(TUIVideoView *)self videoViewController];
  isReadyForDisplay = [videoViewController isReadyForDisplay];

  [(TUIVideoView *)self _setPosterFrameImageVisible:isReadyForDisplay ^ 1 animated:animatedCopy];
  if (v8 == &dword_4 + 1 || v8 == &dword_0 + 3)
  {
    v12 = ![(_TUIRenderModelVideo *)self->_renderModel showPlaybackControls]&& ((self->_isInFullScreen | isReadyForDisplay ^ 1) & 1) == 0;
    [(TUIVideoView *)self _setPlayButtonVisible:v12 animated:animatedCopy];
  }

  else
  {
    [(TUIVideoView *)self _setPlayButtonVisible:0 animated:animatedCopy];
    if (((v8 == &dword_8 + 1) & isReadyForDisplay) == 1)
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
  feedControllerHost = [(TUIReusableBaseView *)self feedControllerHost];
  videoPlayerManager = [feedControllerHost videoPlayerManager];
  videoId = [(_TUIRenderModelVideo *)self->_renderModel videoId];
  v6 = [videoPlayerManager stateForPlayerWithVideoId:videoId];

  if (self->_isInFullScreen || [(_TUIRenderModelVideo *)self->_renderModel showPlaybackControls]|| ([(_TUIRenderModelVideo *)self->_renderModel allowFullScreen]? (v7 = v6 == &dword_4) : (v7 = 0), !v7))
  {
    v8 = TUIVideoLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *v12 = 0;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, "Removing fullscreen tap gesture recognizer", v12, 2u);
    }

    videoViewController = [(TUIVideoView *)self videoViewController];
    view = [videoViewController view];
    [view removeGestureRecognizer:self->_fullScreenTapGesture];
  }

  else
  {
    v11 = TUIVideoLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_INFO, "Adding fullscreen tap gesture recognizer", buf, 2u);
    }

    videoViewController = [(TUIVideoView *)self videoViewController];
    view = [videoViewController view];
    [view addGestureRecognizer:self->_fullScreenTapGesture];
  }
}

- (void)_reportEvent:(unint64_t)event mediaTimePlayed:(double)played videoId:(id)id
{
  idCopy = id;
  v9 = [TUIVideoEventMetadata alloc];
  videoMode = [(TUIVideoView *)self videoMode];
  videoViewController = [(TUIVideoView *)self videoViewController];
  player = [videoViewController player];
  isMuted = [player isMuted];
  isPlaying = [(TUIVideoView *)self isPlaying];
  [(TUIVideoView *)self duration];
  v16 = [(TUIVideoEventMetadata *)v9 initWithEventCase:event mode:videoMode isMuted:isMuted isPlaying:isPlaying mediaTimePlayed:idCopy mediaDuration:played mediaId:v15];

  if (v16)
  {
    actionHandler = [(_TUIRenderModelVideo *)self->_renderModel actionHandler];

    if (actionHandler)
    {
      serialize = [(TUIVideoEventMetadata *)v16 serialize];
      v19 = [(TUIVideoEventMetadata *)v16 triggerForEvent:event];
      actionHandler2 = [(_TUIRenderModelVideo *)self->_renderModel actionHandler];
      v22 = @"eventData";
      v23 = serialize;
      v21 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
      [actionHandler2 invoke:v19 arguments:v21];
    }
  }
}

- (void)_reportAction:(unint64_t)action origin:(unint64_t)origin videoId:(id)id
{
  idCopy = id;
  v9 = [TUIVideoActionMetadata alloc];
  videoMode = [(TUIVideoView *)self videoMode];
  videoViewController = [(TUIVideoView *)self videoViewController];
  player = [videoViewController player];
  isMuted = [player isMuted];
  isPlaying = [(TUIVideoView *)self isPlaying];
  [(TUIVideoView *)self currentTime];
  v16 = v15;
  [(TUIVideoView *)self duration];
  v18 = [(TUIVideoActionMetadata *)v9 initWithActionCase:action origin:origin mode:videoMode isMuted:isMuted isPlaying:isPlaying mediaTimePlayed:idCopy mediaDuration:v16 mediaId:v17];

  if (v18)
  {
    actionHandler = [(_TUIRenderModelVideo *)self->_renderModel actionHandler];

    if (actionHandler)
    {
      serialize = [(TUIVideoActionMetadata *)v18 serialize];
      v21 = [(TUIVideoActionMetadata *)v18 triggerForAction:action];
      actionHandler2 = [(_TUIRenderModelVideo *)self->_renderModel actionHandler];
      v24 = @"actionData";
      v25 = serialize;
      v23 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];
      [actionHandler2 invoke:v21 arguments:v23];
    }
  }
}

- (void)imageResourceDidChangeImage:(id)image
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1123B4;
  v5[3] = &unk_25DCA0;
  imageCopy = image;
  selfCopy = self;
  v4 = imageCopy;
  dispatch_async(&_dispatch_main_q, v5);
}

- (void)playerWithVideoId:(id)id didChangeState:(unint64_t)state
{
  [(TUIVideoView *)self _updateStateBasedSubviewsAnimated:1, state];

  [(TUIVideoView *)self _updateStateBasedTapGestureRecognizers];
}

- (void)playerWithVideoId:(id)id didSetMuted:(BOOL)muted mediaTimePlayed:(double)played
{
  if (muted)
  {
    v6 = 3;
  }

  else
  {
    v6 = 4;
  }

  [(TUIVideoView *)self _reportEvent:v6 mediaTimePlayed:id videoId:played];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  changeCopy = change;
  if (context == &off_261DE8)
  {
    if ([pathCopy isEqualToString:@"scrubbing"])
    {
      v12 = objc_opt_class();
      v13 = [changeCopy objectForKey:NSKeyValueChangeNewKey];
      v14 = TUIDynamicCast(v12, v13);
      bOOLValue = [v14 BOOLValue];

      [(TUIVideoView *)self currentTime];
      v17 = v16;
      videoId = [(_TUIRenderModelVideo *)self->_renderModel videoId];
      if (bOOLValue)
      {
        v19 = 10;
      }

      else
      {
        v19 = 11;
      }

      [(TUIVideoView *)self _reportEvent:v19 mediaTimePlayed:videoId videoId:v17];
    }

    else
    {
      if ([pathCopy isEqualToString:@"readyForDisplay"])
      {
        [(TUIVideoView *)self _updateStateBasedSubviewsAnimated:1];
        goto LABEL_11;
      }

      if (![pathCopy isEqualToString:@"playerController"])
      {
        goto LABEL_11;
      }

      videoId = [(TUIVideoView *)self videoViewController];
      playerController = [videoId playerController];
      [(TUIVideoView *)self setPlayerController:playerController];
    }

    goto LABEL_11;
  }

  v21.receiver = self;
  v21.super_class = TUIVideoView;
  [(TUIVideoView *)&v21 observeValueForKeyPath:pathCopy ofObject:object change:changeCopy context:context];
LABEL_11:
}

- (id)accessibilityElements
{
  videoViewController = [(TUIVideoView *)self videoViewController];
  view = [videoViewController view];
  playButton = self->_playButton;
  v8[0] = view;
  v8[1] = playButton;
  v6 = [NSArray arrayWithObjects:v8 count:2];

  return v6;
}

- (void)handleTrigger:(id)trigger didChangeState:(unint64_t)state updateEvent:(unint64_t)event
{
  v6 = [(TUIReusableBaseView *)self feedControllerHost:trigger];
  triggerStateManager = [v6 triggerStateManager];
  topTriggerName = [(_TUIRenderModelVideo *)self->_renderModel topTriggerName];
  v9 = [triggerStateManager stateForTriggerWithName:topTriggerName];

  feedControllerHost = [(TUIReusableBaseView *)self feedControllerHost];
  triggerStateManager2 = [feedControllerHost triggerStateManager];
  bottomTriggerName = [(_TUIRenderModelVideo *)self->_renderModel bottomTriggerName];
  v13 = [triggerStateManager2 stateForTriggerWithName:bottomTriggerName];

  feedControllerHost2 = [(TUIReusableBaseView *)self feedControllerHost];
  triggerStateManager3 = [feedControllerHost2 triggerStateManager];
  leftTriggerName = [(_TUIRenderModelVideo *)self->_renderModel leftTriggerName];
  v17 = [triggerStateManager3 stateForTriggerWithName:leftTriggerName];

  feedControllerHost3 = [(TUIReusableBaseView *)self feedControllerHost];
  triggerStateManager4 = [feedControllerHost3 triggerStateManager];
  rightTriggerName = [(_TUIRenderModelVideo *)self->_renderModel rightTriggerName];
  v21 = [triggerStateManager4 stateForTriggerWithName:rightTriggerName];

  v22 = (v21 & 0xFFFFFFFFFFFFFFFDLL) != 0 && (v17 & 0xFFFFFFFFFFFFFFFDLL) != 0;
  v24 = v9 == (&dword_0 + 2) || v13 == (&dword_0 + 2);
  feedControllerHost4 = [(TUIReusableBaseView *)self feedControllerHost];
  videoPlayerManager = [feedControllerHost4 videoPlayerManager];
  isInForeground = [videoPlayerManager isInForeground];

  v30 = v9 == &dword_4 || v13 == &dword_4 || v17 == 4 || v21 == 4;
  v31 = v22;
  v32 = v30;
  v33 = v30 || v31;
  v34 = v24;
  v35 = v24 & ~v33;
  feedControllerHost5 = [(TUIReusableBaseView *)self feedControllerHost];
  videoPlayerManager2 = [feedControllerHost5 videoPlayerManager];
  videoId = [(_TUIRenderModelVideo *)self->_renderModel videoId];
  [videoPlayerManager2 hostWantsToSetPlayerIsWithinVisibleBoundsForPlayerWithVideoId:videoId requestingHost:self isWithinVisibleBounds:v35 & isInForeground];

  if (state != 4)
  {
    [(TUIReusableBaseView *)self feedControllerHost];
    v40 = v39 = v32;
    videoPlayerManager3 = [v40 videoPlayerManager];
    videoId2 = [(_TUIRenderModelVideo *)self->_renderModel videoId];
    v43 = [(_TUIRenderModelVideo *)self->_renderModel url];
    [videoPlayerManager3 setActiveHostOfPlayerForVideoId:videoId2 videoUrl:v43 host:self];

    v32 = v39;
  }

  if (!self->_fullScreenTransitionInFlight && !self->_isInFullScreen)
  {
    [(TUIVideoView *)self _updateStateBasedSubviewsAnimated:1];
    if (v32 & 1 | (v31 || !v34))
    {
      feedControllerHost6 = [(TUIReusableBaseView *)self feedControllerHost];
      videoPlayerManager4 = [feedControllerHost6 videoPlayerManager];
      videoId3 = [(_TUIRenderModelVideo *)self->_renderModel videoId];
      [videoPlayerManager4 hostWantsToPausePlayerWithVideoId:videoId3 requestingHost:self isTriggerInitiated:1];
    }

    else
    {
      if (![(_TUIRenderModelVideo *)self->_renderModel autoPlay])
      {
        return;
      }

      feedControllerHost6 = [(TUIReusableBaseView *)self feedControllerHost];
      videoPlayerManager4 = [feedControllerHost6 videoPlayerManager];
      videoId3 = [(_TUIRenderModelVideo *)self->_renderModel videoId];
      [videoPlayerManager4 hostWantsToPlayVideoWithVideoId:videoId3 requestingHost:self isTriggerInitiated:1];
    }
  }
}

- (void)didBecomeActiveHost
{
  if (self->_shouldMuteOnNextDisplay)
  {
    feedControllerHost = [(TUIReusableBaseView *)self feedControllerHost];
    videoPlayerManager = [feedControllerHost videoPlayerManager];
    videoId = [(_TUIRenderModelVideo *)self->_renderModel videoId];
    [videoPlayerManager setMuteStateForPlayerWithVideoId:videoId muted:1 requestingHost:self isTriggerInitiated:1];

    self->_shouldMuteOnNextDisplay = 0;
  }

  [(TUIVideoView *)self _updateStateBasedSubviewsAnimated:1];
  feedControllerHost2 = [(TUIReusableBaseView *)self feedControllerHost];
  videoPlayerManager2 = [feedControllerHost2 videoPlayerManager];
  videoId2 = [(_TUIRenderModelVideo *)self->_renderModel videoId];
  [videoPlayerManager2 setLoopingStateForPlayerWithVideoId:videoId2 loop:-[_TUIRenderModelVideo loop](self->_renderModel requestingHost:{"loop"), self}];
}

- (void)managerAttemptingActionWithOrigin:(unint64_t)origin actionCase:(unint64_t)case
{
  videoId = [(_TUIRenderModelVideo *)self->_renderModel videoId];
  [(TUIVideoView *)self _reportAction:case origin:origin videoId:videoId];
}

- (void)playerViewController:(id)controller willBeginFullScreenPresentationWithAnimationCoordinator:(id)coordinator
{
  self->_fullScreenTransitionInFlight = 1;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_112D3C;
  v4[3] = &unk_261E20;
  v4[4] = self;
  [coordinator animateAlongsideTransition:0 completion:v4];
}

- (void)playerViewController:(id)controller willEndFullScreenPresentationWithAnimationCoordinator:(id)coordinator
{
  self->_fullScreenTransitionInFlight = 1;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_112EFC;
  v4[3] = &unk_261E20;
  v4[4] = self;
  [coordinator animateAlongsideTransition:0 completion:v4];
}

- (void)playerViewController:(id)controller willTransitionToVisibilityOfPlaybackControls:(BOOL)controls withAnimationCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  v8 = coordinatorCopy;
  if (!controls && !self->_isInFullScreen)
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1130C0;
    v9[3] = &unk_25DE30;
    v9[4] = self;
    [coordinatorCopy addCoordinatedAnimations:v9 completion:0];
  }
}

- (void)playerViewController:(id)controller metricsCollectionEventOccured:(int64_t)occured
{
  controllerCopy = controller;
  if (occured <= 5)
  {
    v8 = controllerCopy;
    videoId = [(_TUIRenderModelVideo *)self->_renderModel videoId];
    [(TUIVideoView *)self _reportAction:occured origin:0 videoId:videoId];

    controllerCopy = v8;
  }
}

- (TUIImageResource)posterFrameResource
{
  WeakRetained = objc_loadWeakRetained(&self->_posterFrameResource);

  return WeakRetained;
}

@end