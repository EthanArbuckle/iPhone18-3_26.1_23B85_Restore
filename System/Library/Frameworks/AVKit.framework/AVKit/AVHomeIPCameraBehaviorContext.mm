@interface AVHomeIPCameraBehaviorContext
- (AVHomeIPCameraBehavior)behavior;
- (AVHomeIPCameraBehaviorContext)initWithAVKitOwner:(id)owner;
- (AVHomeIPCameraPlayerController)livePreviewPlayerController;
- (AVPlayerViewController)playerViewController;
- (CGSize)livePreviewAspectRatio;
- (void)_updatePictureInPictureController;
- (void)_updatePlaybackControlsControllerAndZoomingBehavior;
- (void)beginScrubbing;
- (void)dealloc;
- (void)didAddBehavior:(id)behavior;
- (void)didRemoveBehavior:(id)behavior;
- (void)didStopPictureInPicture;
- (void)endScrubbing;
- (void)scrubToTime:(double)time resolution:(double)resolution;
- (void)setBackgroundColor:(id)color forContainerOfControlItem:(id)item;
- (void)setCanStartPictureInPictureAutomaticallyWhenEnteringBackground:(BOOL)background;
- (void)setHasMicrophone:(BOOL)microphone;
- (void)setLivePreviewActive:(BOOL)active;
- (void)setLivePreviewAspectRatio:(CGSize)ratio;
- (void)setMicrophoneEnabled:(BOOL)enabled;
- (void)setPlaybackControlsIncludePictureInPictureButton:(BOOL)button;
- (void)setZoomingEnabled:(BOOL)enabled;
- (void)viewDidLoad;
- (void)willStartPictureInPictureWithViewController:(id)controller;
@end

@implementation AVHomeIPCameraBehaviorContext

- (AVHomeIPCameraPlayerController)livePreviewPlayerController
{
  WeakRetained = objc_loadWeakRetained(&self->_livePreviewPlayerController);

  return WeakRetained;
}

- (CGSize)livePreviewAspectRatio
{
  width = self->_livePreviewAspectRatio.width;
  height = self->_livePreviewAspectRatio.height;
  result.height = height;
  result.width = width;
  return result;
}

- (AVHomeIPCameraBehavior)behavior
{
  WeakRetained = objc_loadWeakRetained(&self->_behavior);

  return WeakRetained;
}

- (AVPlayerViewController)playerViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_playerViewController);

  return WeakRetained;
}

- (void)_updatePictureInPictureController
{
  playerViewController = [(AVHomeIPCameraBehaviorContext *)self playerViewController];
  playbackControlsController = [playerViewController playbackControlsController];
  pictureInPictureController = [playbackControlsController pictureInPictureController];
  [pictureInPictureController setControlsStyle:{-[AVHomeIPCameraBehaviorContext isLivePreviewActive](self, "isLivePreviewActive")}];

  playerViewController2 = [(AVHomeIPCameraBehaviorContext *)self playerViewController];
  playbackControlsController2 = [playerViewController2 playbackControlsController];
  pictureInPictureController2 = [playbackControlsController2 pictureInPictureController];
  pictureInPictureViewController = [pictureInPictureController2 pictureInPictureViewController];
  [pictureInPictureViewController setShouldShowAlternateActionButtonImage:{-[AVHomeIPCameraBehaviorContext hasMicrophone](self, "hasMicrophone")}];

  playerViewController3 = [(AVHomeIPCameraBehaviorContext *)self playerViewController];
  playbackControlsController3 = [playerViewController3 playbackControlsController];
  pictureInPictureController3 = [playbackControlsController3 pictureInPictureController];
  [pictureInPictureController3 setMicrophoneEnabled:{-[AVHomeIPCameraBehaviorContext isMicrophoneEnabled](self, "isMicrophoneEnabled")}];

  playerViewController4 = [(AVHomeIPCameraBehaviorContext *)self playerViewController];
  [playerViewController4 setCanStartPictureInPictureAutomaticallyWhenEnteringBackground:{-[AVHomeIPCameraBehaviorContext canStartPictureInPictureAutomaticallyWhenEnteringBackground](self, "canStartPictureInPictureAutomaticallyWhenEnteringBackground")}];
}

- (void)_updatePlaybackControlsControllerAndZoomingBehavior
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __84__AVHomeIPCameraBehaviorContext__updatePlaybackControlsControllerAndZoomingBehavior__block_invoke;
  block[3] = &unk_1E720A090;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __84__AVHomeIPCameraBehaviorContext__updatePlaybackControlsControllerAndZoomingBehavior__block_invoke(uint64_t a1)
{
  v35 = [*(a1 + 32) playerViewController];
  [v35 setPlaybackControlsIncludeDisplayModeControls:{objc_msgSend(*(a1 + 32), "playbackControlsIncludeDisplayModeControls")}];
  [v35 setPlaybackControlsIncludeVolumeControls:{objc_msgSend(*(a1 + 32), "playbackControlsIncludeVolumeControls")}];
  [v35 setPlaybackControlsIncludeTransportControls:{objc_msgSend(*(a1 + 32), "playbackControlsIncludeTransportControls")}];
  v2 = [v35 chromePlaybackControlsController];
  [v2 setShowsVideoGravityButton:0];

  v3 = [v35 catalystPlaybackControlsController];
  [v3 setShowsVideoZoomControl:0];

  [v35 setCanShowPictureInPictureButton:{objc_msgSend(*(a1 + 32), "playbackControlsIncludePictureInPictureButton")}];
  v4 = [*(a1 + 32) livePreviewContainerView];
  v5 = [v4 superview];
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = [*(a1 + 32) playerViewController];
    if (([v6 isPictureInPictureActive] & 1) == 0)
    {
      v7 = [*(a1 + 32) zoomingBehavior];
      v8 = [v7 behaviorContext];
      v9 = [v8 activeContentView];
      v10 = [v9 playerLayerView];

      if (!v10)
      {
        goto LABEL_7;
      }

      v11 = [*(a1 + 32) zoomingBehavior];
      v12 = [v11 behaviorContext];
      v13 = [v12 activeContentView];
      v14 = [v13 playerLayerView];
      v15 = [*(a1 + 32) livePreviewContainerView];
      [v14 addSubview:v15];

      v16 = MEMORY[0x1E696ACD8];
      v4 = [*(a1 + 32) livePreviewContainerView];
      v6 = [*(a1 + 32) zoomingBehavior];
      v17 = [v6 behaviorContext];
      v18 = [v17 activeContentView];
      v19 = [v18 playerLayerView];
      v20 = [v4 avkit_constraintsFromEdgeAnchorsToEdgeAnchorsOfItem:v19];
      [v16 activateConstraints:v20];
    }
  }

LABEL_7:
  v21 = [*(a1 + 32) isLivePreviewActive];
  v22 = *(a1 + 32);
  if (v21)
  {
    [v22 livePreviewAspectRatio];
    v24 = v23;
    v26 = v25;
  }

  else
  {
    v27 = [v22 playerViewController];
    v28 = [v27 playerController];
    [v28 contentDimensions];
    v24 = v29;
    v26 = v30;
  }

  if (v24 > 0.0 && v26 > 0.0)
  {
    v31 = [*(a1 + 32) zoomingBehavior];
    v32 = [v31 behaviorContext];
    [v32 setContentAspectRatio:{v24, v26}];
  }

  v33 = [*(a1 + 32) zoomingBehavior];
  v34 = [v33 behaviorContext];
  [v34 setZoomingEnabled:{objc_msgSend(*(a1 + 32), "isZoomingEnabled")}];
}

- (void)endScrubbing
{
  playerViewController = [(AVHomeIPCameraBehaviorContext *)self playerViewController];
  chromePlaybackControlsController = [playerViewController chromePlaybackControlsController];
  [chromePlaybackControlsController setForcePlaybackControlsHidden:0];

  playerViewController2 = [(AVHomeIPCameraBehaviorContext *)self playerViewController];
  chromePlaybackControlsController2 = [playerViewController2 chromePlaybackControlsController];
  [chromePlaybackControlsController2 endScrubbing];

  playerViewController3 = [(AVHomeIPCameraBehaviorContext *)self playerViewController];
  catalystPlaybackControlsController = [playerViewController3 catalystPlaybackControlsController];
  [catalystPlaybackControlsController setForcePlaybackControlsHidden:0];

  playerViewController4 = [(AVHomeIPCameraBehaviorContext *)self playerViewController];
  catalystPlaybackControlsController2 = [playerViewController4 catalystPlaybackControlsController];
  [catalystPlaybackControlsController2 endScrubbing];
}

- (void)scrubToTime:(double)time resolution:(double)resolution
{
  playerViewController = [(AVHomeIPCameraBehaviorContext *)self playerViewController];
  chromePlaybackControlsController = [playerViewController chromePlaybackControlsController];
  [chromePlaybackControlsController scrubToTime:time resolution:resolution];

  playerViewController2 = [(AVHomeIPCameraBehaviorContext *)self playerViewController];
  catalystPlaybackControlsController = [playerViewController2 catalystPlaybackControlsController];
  [catalystPlaybackControlsController scrubToTime:time resolution:resolution];
}

- (void)beginScrubbing
{
  playerViewController = [(AVHomeIPCameraBehaviorContext *)self playerViewController];
  chromePlaybackControlsController = [playerViewController chromePlaybackControlsController];
  [chromePlaybackControlsController beginScrubbing];

  playerViewController2 = [(AVHomeIPCameraBehaviorContext *)self playerViewController];
  chromePlaybackControlsController2 = [playerViewController2 chromePlaybackControlsController];
  [chromePlaybackControlsController2 setForcePlaybackControlsHidden:1];

  playerViewController3 = [(AVHomeIPCameraBehaviorContext *)self playerViewController];
  catalystPlaybackControlsController = [playerViewController3 catalystPlaybackControlsController];
  [catalystPlaybackControlsController beginScrubbing];

  playerViewController4 = [(AVHomeIPCameraBehaviorContext *)self playerViewController];
  catalystPlaybackControlsController2 = [playerViewController4 catalystPlaybackControlsController];
  [catalystPlaybackControlsController2 setForcePlaybackControlsHidden:1];
}

- (void)didStopPictureInPicture
{
  zoomingBehavior = [(AVHomeIPCameraBehaviorContext *)self zoomingBehavior];
  behaviorContext = [zoomingBehavior behaviorContext];
  activeContentView = [behaviorContext activeContentView];
  playerLayerView = [activeContentView playerLayerView];
  livePreviewContainerView = [(AVHomeIPCameraBehaviorContext *)self livePreviewContainerView];
  [playerLayerView addSubview:livePreviewContainerView];

  v8 = MEMORY[0x1E696ACD8];
  livePreviewContainerView2 = [(AVHomeIPCameraBehaviorContext *)self livePreviewContainerView];
  zoomingBehavior2 = [(AVHomeIPCameraBehaviorContext *)self zoomingBehavior];
  behaviorContext2 = [zoomingBehavior2 behaviorContext];
  activeContentView2 = [behaviorContext2 activeContentView];
  playerLayerView2 = [activeContentView2 playerLayerView];
  v14 = [livePreviewContainerView2 avkit_constraintsFromEdgeAnchorsToEdgeAnchorsOfItem:playerLayerView2];
  [v8 activateConstraints:v14];

  [(AVHomeIPCameraBehaviorContext *)self _updatePlaybackControlsControllerAndZoomingBehavior];
}

- (void)willStartPictureInPictureWithViewController:(id)controller
{
  controllerCopy = controller;
  view = [controllerCopy view];
  livePreviewContainerView = [(AVHomeIPCameraBehaviorContext *)self livePreviewContainerView];
  [view addSubview:livePreviewContainerView];

  v7 = MEMORY[0x1E696ACD8];
  livePreviewContainerView2 = [(AVHomeIPCameraBehaviorContext *)self livePreviewContainerView];
  view2 = [controllerCopy view];

  v10 = [livePreviewContainerView2 avkit_constraintsFromEdgeAnchorsToEdgeAnchorsOfItem:view2];
  [v7 activateConstraints:v10];

  [(AVHomeIPCameraBehaviorContext *)self _updatePictureInPictureController];
}

- (void)viewDidLoad
{
  [(AVHomeIPCameraBehaviorContext *)self _updatePlaybackControlsControllerAndZoomingBehavior];
  [(AVHomeIPCameraBehaviorContext *)self _updatePictureInPictureController];
  playerViewController = [(AVHomeIPCameraBehaviorContext *)self playerViewController];
  chromePlaybackControlsController = [playerViewController chromePlaybackControlsController];
  [chromePlaybackControlsController setShowsVideoGravityButton:0];

  playerViewController2 = [(AVHomeIPCameraBehaviorContext *)self playerViewController];
  catalystPlaybackControlsController = [playerViewController2 catalystPlaybackControlsController];
  [catalystPlaybackControlsController setShowsVideoZoomControl:0];

  playerViewController3 = [(AVHomeIPCameraBehaviorContext *)self playerViewController];
  chromePlaybackControlsController2 = [playerViewController3 chromePlaybackControlsController];
  [chromePlaybackControlsController2 setShowsVolumeControlsForContentWithNoAudio:1];

  playerViewController4 = [(AVHomeIPCameraBehaviorContext *)self playerViewController];
  catalystPlaybackControlsController2 = [playerViewController4 catalystPlaybackControlsController];
  [catalystPlaybackControlsController2 setShowsVolumeControlsForContentWithNoAudio:1];

  playerViewController5 = [(AVHomeIPCameraBehaviorContext *)self playerViewController];
  contentView = [playerViewController5 contentView];
  [contentView setContentOverlayViewPlacement:1];
}

- (void)didRemoveBehavior:(id)behavior
{
  playerViewController = [(AVHomeIPCameraBehaviorContext *)self playerViewController];
  chromePlaybackControlsController = [playerViewController chromePlaybackControlsController];
  [chromePlaybackControlsController setShowsVolumeControlsForContentWithNoAudio:0];

  playerViewController2 = [(AVHomeIPCameraBehaviorContext *)self playerViewController];
  catalystPlaybackControlsController = [playerViewController2 catalystPlaybackControlsController];
  [catalystPlaybackControlsController setShowsVolumeControlsForContentWithNoAudio:0];
}

- (void)didAddBehavior:(id)behavior
{
  behaviorCopy = behavior;
  playerViewController = [(AVHomeIPCameraBehaviorContext *)self playerViewController];
  zoomingBehavior = [(AVHomeIPCameraBehaviorContext *)self zoomingBehavior];
  [playerViewController addBehavior:zoomingBehavior];

  [(AVHomeIPCameraBehaviorContext *)self _updatePlaybackControlsControllerAndZoomingBehavior];
  observationController = [(AVHomeIPCameraBehaviorContext *)self observationController];
  playerViewController2 = [(AVHomeIPCameraBehaviorContext *)self playerViewController];
  [observationController startObservingNotificationForName:@"AVPlayerViewControllerDidChangePlayerControllerNotification" object:playerViewController2 notificationCenter:0 observationHandler:&__block_literal_global_14537];

  observationController2 = [(AVHomeIPCameraBehaviorContext *)self observationController];
  [observationController2 startObservingNotificationForName:@"AVPlaybackControlsControllsShowsLoadingIndicatorNotification" object:0 notificationCenter:0 observationHandler:&__block_literal_global_15];

  livePreviewPlayerController = [(AVHomeIPCameraBehaviorContext *)self livePreviewPlayerController];
  [livePreviewPlayerController setDelegate:behaviorCopy];
}

void __48__AVHomeIPCameraBehaviorContext_didAddBehavior___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v18 = a2;
  v5 = a4;
  v6 = [v5 userInfo];
  v7 = [v6 objectForKeyedSubscript:@"AVPlaybackControlsControllerShowsLoadingIndicatorValueKey"];
  v8 = [v7 BOOLValue];

  v9 = [v5 object];
  v10 = [v18 playerViewController];
  v11 = [v10 chromePlaybackControlsController];
  if (v9 != v11)
  {
    v12 = [v5 object];
    v13 = [v18 playerViewController];
    v14 = [v13 catalystPlaybackControlsController];
    v15 = v14;
    if (v12 != v14)
    {

LABEL_8:
      goto LABEL_9;
    }

    v17 = [v18 playbackControlsShowsLoadingIndicator];

    if (v8 == v17)
    {
      goto LABEL_9;
    }

LABEL_7:
    [v18 setPlaybackControlsShowsLoadingIndicator:v8];
    v9 = [v18 behavior];
    [v9 playbackControlsDidUpdateVisibilityOfLoadingIndicator:v8];
    goto LABEL_8;
  }

  v16 = [v18 playbackControlsShowsLoadingIndicator];

  if (v8 != v16)
  {
    goto LABEL_7;
  }

LABEL_9:
}

void __48__AVHomeIPCameraBehaviorContext_didAddBehavior___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v2 = [v5 playerViewController];
  v3 = [v2 playerController];
  v4 = [v3 player];

  if (v4)
  {
    [v5 setLivePreviewActive:0];
  }
}

- (void)setBackgroundColor:(id)color forContainerOfControlItem:(id)item
{
  colorCopy = color;
  itemCopy = item;
  playerViewController = [(AVHomeIPCameraBehaviorContext *)self playerViewController];
  [playerViewController loadViewIfNeeded];

  playerViewController2 = [(AVHomeIPCameraBehaviorContext *)self playerViewController];
  contentView = [playerViewController2 contentView];
  [contentView loadPlaybackControlsViewIfNeeded];

  type = [itemCopy type];
  if (type)
  {
    if (type != 1)
    {
      goto LABEL_6;
    }

    playerViewController3 = [(AVHomeIPCameraBehaviorContext *)self playerViewController];
    contentView2 = [playerViewController3 contentView];
    chromePlaybackControlsView = [contentView2 chromePlaybackControlsView];
    volumeControls = [chromePlaybackControlsView volumeControls];
    [volumeControls setBackgroundColor:colorCopy];

    playerViewController4 = [(AVHomeIPCameraBehaviorContext *)self playerViewController];
    controlsViewController = [playerViewController4 controlsViewController];
    controlsViewControllerIfCatalystGlass = [controlsViewController controlsViewControllerIfCatalystGlass];
    playbackControlsView = [controlsViewControllerIfCatalystGlass playbackControlsView];
    volumeControls2 = [playbackControlsView volumeControls];
  }

  else
  {
    playerViewController5 = [(AVHomeIPCameraBehaviorContext *)self playerViewController];
    contentView3 = [playerViewController5 contentView];
    chromePlaybackControlsView2 = [contentView3 chromePlaybackControlsView];
    screenModeControls = [chromePlaybackControlsView2 screenModeControls];
    [screenModeControls setBackgroundColor:colorCopy];

    playerViewController4 = [(AVHomeIPCameraBehaviorContext *)self playerViewController];
    controlsViewController = [playerViewController4 controlsViewController];
    controlsViewControllerIfCatalystGlass = [controlsViewController controlsViewControllerIfCatalystGlass];
    playbackControlsView = [controlsViewControllerIfCatalystGlass playbackControlsView];
    volumeControls2 = [playbackControlsView screenModeControls];
  }

  v24 = volumeControls2;
  [volumeControls2 setBackgroundColor:colorCopy];

LABEL_6:
}

- (void)setLivePreviewAspectRatio:(CGSize)ratio
{
  height = ratio.height;
  width = ratio.width;
  self->_livePreviewAspectRatio = ratio;
  livePreviewPlayerController = [(AVHomeIPCameraBehaviorContext *)self livePreviewPlayerController];
  [livePreviewPlayerController setPresentationSize:{width, height}];

  [(AVHomeIPCameraBehaviorContext *)self _updatePlaybackControlsControllerAndZoomingBehavior];
}

- (void)setPlaybackControlsIncludePictureInPictureButton:(BOOL)button
{
  v13 = *MEMORY[0x1E69E9840];
  if (self->_playbackControlsIncludePictureInPictureButton != button)
  {
    buttonCopy = button;
    self->_playbackControlsIncludePictureInPictureButton = button;
    v5 = _AVLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = "NO";
      v7 = 136315650;
      v8 = "[AVHomeIPCameraBehaviorContext setPlaybackControlsIncludePictureInPictureButton:]";
      v10 = "playbackControlsIncludePictureInPictureButton";
      v9 = 2080;
      if (buttonCopy)
      {
        v6 = "YES";
      }

      v11 = 2080;
      v12 = v6;
      _os_log_impl(&dword_18B49C000, v5, OS_LOG_TYPE_DEFAULT, "%s %s %s", &v7, 0x20u);
    }

    [(AVHomeIPCameraBehaviorContext *)self _updatePlaybackControlsControllerAndZoomingBehavior];
  }
}

- (void)setCanStartPictureInPictureAutomaticallyWhenEnteringBackground:(BOOL)background
{
  v13 = *MEMORY[0x1E69E9840];
  if (self->_canStartPictureInPictureAutomaticallyWhenEnteringBackground != background)
  {
    backgroundCopy = background;
    self->_canStartPictureInPictureAutomaticallyWhenEnteringBackground = background;
    v5 = _AVLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = "NO";
      v7 = 136315650;
      v8 = "[AVHomeIPCameraBehaviorContext setCanStartPictureInPictureAutomaticallyWhenEnteringBackground:]";
      v10 = "canStartPictureInPictureAutomaticallyWhenEnteringBackground";
      v9 = 2080;
      if (backgroundCopy)
      {
        v6 = "YES";
      }

      v11 = 2080;
      v12 = v6;
      _os_log_impl(&dword_18B49C000, v5, OS_LOG_TYPE_DEFAULT, "%s %s %s", &v7, 0x20u);
    }

    [(AVHomeIPCameraBehaviorContext *)self _updatePictureInPictureController];
  }
}

- (void)setMicrophoneEnabled:(BOOL)enabled
{
  if (self->_microphoneEnabled != enabled)
  {
    self->_microphoneEnabled = enabled;
    [(AVHomeIPCameraBehaviorContext *)self _updatePictureInPictureController];
  }
}

- (void)setHasMicrophone:(BOOL)microphone
{
  if (self->_hasMicrophone != microphone)
  {
    self->_hasMicrophone = microphone;
    [(AVHomeIPCameraBehaviorContext *)self _updatePictureInPictureController];
  }
}

- (void)setLivePreviewActive:(BOOL)active
{
  v30 = *MEMORY[0x1E69E9840];
  if (self->_livePreviewActive != active)
  {
    activeCopy = active;
    v5 = _AVLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = "NO";
      v24 = 136315650;
      v25 = "[AVHomeIPCameraBehaviorContext setLivePreviewActive:]";
      v27 = "livePreviewActive";
      v26 = 2080;
      if (activeCopy)
      {
        v6 = "YES";
      }

      v28 = 2080;
      v29 = v6;
      _os_log_impl(&dword_18B49C000, v5, OS_LOG_TYPE_DEFAULT, "%s %s %s", &v24, 0x20u);
    }

    self->_livePreviewActive = activeCopy;
    if (activeCopy)
    {
      playerViewController = [(AVHomeIPCameraBehaviorContext *)self playerViewController];
      playerController = [playerViewController playerController];
      [(AVHomeIPCameraBehaviorContext *)self setPlayerControllerToRestore:playerController];

      playerViewController6 = objc_alloc_init(AVHomeIPCameraPlayerController);
      behavior = [(AVHomeIPCameraBehaviorContext *)self behavior];
      [(AVHomeIPCameraPlayerController *)playerViewController6 setDelegate:behavior];

      [(AVHomeIPCameraBehaviorContext *)self livePreviewAspectRatio];
      [(AVHomeIPCameraPlayerController *)playerViewController6 setPresentationSize:?];
      playerControllerToRestore = [(AVHomeIPCameraBehaviorContext *)self playerControllerToRestore];
      -[AVHomeIPCameraPlayerController setMuted:](playerViewController6, "setMuted:", [playerControllerToRestore isMuted]);

      [(AVHomeIPCameraBehaviorContext *)self setLivePreviewPlayerController:playerViewController6];
      playerViewController2 = [(AVHomeIPCameraBehaviorContext *)self playerViewController];
      [playerViewController2 setPlayerController:playerViewController6];

      [(AVHomeIPCameraBehaviorContext *)self _updatePictureInPictureController];
    }

    else
    {
      playerControllerToRestore2 = [(AVHomeIPCameraBehaviorContext *)self playerControllerToRestore];
      playerViewController3 = [(AVHomeIPCameraBehaviorContext *)self playerViewController];
      playerController2 = [playerViewController3 playerController];
      [playerControllerToRestore2 setMuted:{objc_msgSend(playerController2, "isMuted")}];

      playerViewController4 = [(AVHomeIPCameraBehaviorContext *)self playerViewController];
      playerControllerToRestore3 = [(AVHomeIPCameraBehaviorContext *)self playerControllerToRestore];
      [playerViewController4 setPlayerController:playerControllerToRestore3];

      [(AVHomeIPCameraBehaviorContext *)self setPlayerControllerToRestore:0];
      [(AVHomeIPCameraBehaviorContext *)self setLivePreviewPlayerController:0];
      playerViewController5 = [(AVHomeIPCameraBehaviorContext *)self playerViewController];
      chromePlaybackControlsController = [playerViewController5 chromePlaybackControlsController];
      pictureInPictureController = [chromePlaybackControlsController pictureInPictureController];
      [pictureInPictureController setControlsStyle:0];

      playerViewController6 = [(AVHomeIPCameraBehaviorContext *)self playerViewController];
      catalystPlaybackControlsController = [(AVHomeIPCameraPlayerController *)playerViewController6 catalystPlaybackControlsController];
      pictureInPictureController2 = [catalystPlaybackControlsController pictureInPictureController];
      [pictureInPictureController2 setControlsStyle:0];
    }

    [(AVHomeIPCameraBehaviorContext *)self _updatePlaybackControlsControllerAndZoomingBehavior];
    livePreviewContainerView = [(AVHomeIPCameraBehaviorContext *)self livePreviewContainerView];
    [livePreviewContainerView setHidden:{-[AVHomeIPCameraBehaviorContext isLivePreviewActive](self, "isLivePreviewActive") ^ 1}];
  }
}

- (void)setZoomingEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v13 = *MEMORY[0x1E69E9840];
  v5 = _AVLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = "NO";
    v7 = 136315650;
    v8 = "[AVHomeIPCameraBehaviorContext setZoomingEnabled:]";
    v10 = "zoomingEnabled";
    v9 = 2080;
    if (enabledCopy)
    {
      v6 = "YES";
    }

    v11 = 2080;
    v12 = v6;
    _os_log_impl(&dword_18B49C000, v5, OS_LOG_TYPE_DEFAULT, "%s %s %s", &v7, 0x20u);
  }

  self->_zoomingEnabled = enabledCopy;
  [(AVHomeIPCameraBehaviorContext *)self _updatePlaybackControlsControllerAndZoomingBehavior];
}

- (void)dealloc
{
  observationController = [(AVHomeIPCameraBehaviorContext *)self observationController];
  [observationController stopAllObservation];

  v4.receiver = self;
  v4.super_class = AVHomeIPCameraBehaviorContext;
  [(AVHomeIPCameraBehaviorContext *)&v4 dealloc];
}

- (AVHomeIPCameraBehaviorContext)initWithAVKitOwner:(id)owner
{
  ownerCopy = owner;
  if (self)
  {
    *&self->_playbackControlsIncludeTransportControls = 16843008;
    self->_playbackControlsShowsLoadingIndicator = 0;
    v5 = objc_storeWeak(&self->_playerViewController, ownerCopy);
    *&self->_canStartPictureInPictureAutomaticallyWhenEnteringBackground = 1;
    v6 = v5;
    [ownerCopy setRequiresImmediateAssetInspection:1];

    WeakRetained = objc_loadWeakRetained(&self->_playerViewController);
    [WeakRetained setCanDisplayContentInDetachedWindow:0];

    v8 = [[AVObservationController alloc] initWithOwner:self];
    observationController = self->_observationController;
    self->_observationController = v8;

    self->_livePreviewAspectRatio = xmmword_18B6EC4D0;
    v10 = objc_alloc_init(MEMORY[0x1E69DD250]);
    livePreviewContainerView = self->_livePreviewContainerView;
    self->_livePreviewContainerView = v10;

    [(UIView *)self->_livePreviewContainerView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)self->_livePreviewContainerView setHidden:1];
    [(UIView *)self->_livePreviewContainerView setUserInteractionEnabled:0];
    LODWORD(v12) = 1132068864;
    [(UIView *)self->_livePreviewContainerView setContentCompressionResistancePriority:0 forAxis:v12];
    LODWORD(v13) = 1132068864;
    [(UIView *)self->_livePreviewContainerView setContentCompressionResistancePriority:1 forAxis:v13];
    v14 = objc_alloc_init(AVZoomingBehavior);
    zoomingBehavior = self->_zoomingBehavior;
    self->_zoomingBehavior = v14;

    self->_hasMicrophone = 1;
  }

  return self;
}

@end