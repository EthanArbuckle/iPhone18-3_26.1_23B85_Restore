@interface AVHomeIPCameraBehaviorContext
- (AVHomeIPCameraBehavior)behavior;
- (AVHomeIPCameraBehaviorContext)initWithAVKitOwner:(id)a3;
- (AVHomeIPCameraPlayerController)livePreviewPlayerController;
- (AVPlayerViewController)playerViewController;
- (CGSize)livePreviewAspectRatio;
- (void)_updatePictureInPictureController;
- (void)_updatePlaybackControlsControllerAndZoomingBehavior;
- (void)beginScrubbing;
- (void)dealloc;
- (void)didAddBehavior:(id)a3;
- (void)didRemoveBehavior:(id)a3;
- (void)didStopPictureInPicture;
- (void)endScrubbing;
- (void)scrubToTime:(double)a3 resolution:(double)a4;
- (void)setBackgroundColor:(id)a3 forContainerOfControlItem:(id)a4;
- (void)setCanStartPictureInPictureAutomaticallyWhenEnteringBackground:(BOOL)a3;
- (void)setHasMicrophone:(BOOL)a3;
- (void)setLivePreviewActive:(BOOL)a3;
- (void)setLivePreviewAspectRatio:(CGSize)a3;
- (void)setMicrophoneEnabled:(BOOL)a3;
- (void)setPlaybackControlsIncludePictureInPictureButton:(BOOL)a3;
- (void)setZoomingEnabled:(BOOL)a3;
- (void)viewDidLoad;
- (void)willStartPictureInPictureWithViewController:(id)a3;
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
  v3 = [(AVHomeIPCameraBehaviorContext *)self playerViewController];
  v4 = [v3 playbackControlsController];
  v5 = [v4 pictureInPictureController];
  [v5 setControlsStyle:{-[AVHomeIPCameraBehaviorContext isLivePreviewActive](self, "isLivePreviewActive")}];

  v6 = [(AVHomeIPCameraBehaviorContext *)self playerViewController];
  v7 = [v6 playbackControlsController];
  v8 = [v7 pictureInPictureController];
  v9 = [v8 pictureInPictureViewController];
  [v9 setShouldShowAlternateActionButtonImage:{-[AVHomeIPCameraBehaviorContext hasMicrophone](self, "hasMicrophone")}];

  v10 = [(AVHomeIPCameraBehaviorContext *)self playerViewController];
  v11 = [v10 playbackControlsController];
  v12 = [v11 pictureInPictureController];
  [v12 setMicrophoneEnabled:{-[AVHomeIPCameraBehaviorContext isMicrophoneEnabled](self, "isMicrophoneEnabled")}];

  v13 = [(AVHomeIPCameraBehaviorContext *)self playerViewController];
  [v13 setCanStartPictureInPictureAutomaticallyWhenEnteringBackground:{-[AVHomeIPCameraBehaviorContext canStartPictureInPictureAutomaticallyWhenEnteringBackground](self, "canStartPictureInPictureAutomaticallyWhenEnteringBackground")}];
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
  v3 = [(AVHomeIPCameraBehaviorContext *)self playerViewController];
  v4 = [v3 chromePlaybackControlsController];
  [v4 setForcePlaybackControlsHidden:0];

  v5 = [(AVHomeIPCameraBehaviorContext *)self playerViewController];
  v6 = [v5 chromePlaybackControlsController];
  [v6 endScrubbing];

  v7 = [(AVHomeIPCameraBehaviorContext *)self playerViewController];
  v8 = [v7 catalystPlaybackControlsController];
  [v8 setForcePlaybackControlsHidden:0];

  v10 = [(AVHomeIPCameraBehaviorContext *)self playerViewController];
  v9 = [v10 catalystPlaybackControlsController];
  [v9 endScrubbing];
}

- (void)scrubToTime:(double)a3 resolution:(double)a4
{
  v7 = [(AVHomeIPCameraBehaviorContext *)self playerViewController];
  v8 = [v7 chromePlaybackControlsController];
  [v8 scrubToTime:a3 resolution:a4];

  v10 = [(AVHomeIPCameraBehaviorContext *)self playerViewController];
  v9 = [v10 catalystPlaybackControlsController];
  [v9 scrubToTime:a3 resolution:a4];
}

- (void)beginScrubbing
{
  v3 = [(AVHomeIPCameraBehaviorContext *)self playerViewController];
  v4 = [v3 chromePlaybackControlsController];
  [v4 beginScrubbing];

  v5 = [(AVHomeIPCameraBehaviorContext *)self playerViewController];
  v6 = [v5 chromePlaybackControlsController];
  [v6 setForcePlaybackControlsHidden:1];

  v7 = [(AVHomeIPCameraBehaviorContext *)self playerViewController];
  v8 = [v7 catalystPlaybackControlsController];
  [v8 beginScrubbing];

  v10 = [(AVHomeIPCameraBehaviorContext *)self playerViewController];
  v9 = [v10 catalystPlaybackControlsController];
  [v9 setForcePlaybackControlsHidden:1];
}

- (void)didStopPictureInPicture
{
  v3 = [(AVHomeIPCameraBehaviorContext *)self zoomingBehavior];
  v4 = [v3 behaviorContext];
  v5 = [v4 activeContentView];
  v6 = [v5 playerLayerView];
  v7 = [(AVHomeIPCameraBehaviorContext *)self livePreviewContainerView];
  [v6 addSubview:v7];

  v8 = MEMORY[0x1E696ACD8];
  v9 = [(AVHomeIPCameraBehaviorContext *)self livePreviewContainerView];
  v10 = [(AVHomeIPCameraBehaviorContext *)self zoomingBehavior];
  v11 = [v10 behaviorContext];
  v12 = [v11 activeContentView];
  v13 = [v12 playerLayerView];
  v14 = [v9 avkit_constraintsFromEdgeAnchorsToEdgeAnchorsOfItem:v13];
  [v8 activateConstraints:v14];

  [(AVHomeIPCameraBehaviorContext *)self _updatePlaybackControlsControllerAndZoomingBehavior];
}

- (void)willStartPictureInPictureWithViewController:(id)a3
{
  v4 = a3;
  v5 = [v4 view];
  v6 = [(AVHomeIPCameraBehaviorContext *)self livePreviewContainerView];
  [v5 addSubview:v6];

  v7 = MEMORY[0x1E696ACD8];
  v8 = [(AVHomeIPCameraBehaviorContext *)self livePreviewContainerView];
  v9 = [v4 view];

  v10 = [v8 avkit_constraintsFromEdgeAnchorsToEdgeAnchorsOfItem:v9];
  [v7 activateConstraints:v10];

  [(AVHomeIPCameraBehaviorContext *)self _updatePictureInPictureController];
}

- (void)viewDidLoad
{
  [(AVHomeIPCameraBehaviorContext *)self _updatePlaybackControlsControllerAndZoomingBehavior];
  [(AVHomeIPCameraBehaviorContext *)self _updatePictureInPictureController];
  v3 = [(AVHomeIPCameraBehaviorContext *)self playerViewController];
  v4 = [v3 chromePlaybackControlsController];
  [v4 setShowsVideoGravityButton:0];

  v5 = [(AVHomeIPCameraBehaviorContext *)self playerViewController];
  v6 = [v5 catalystPlaybackControlsController];
  [v6 setShowsVideoZoomControl:0];

  v7 = [(AVHomeIPCameraBehaviorContext *)self playerViewController];
  v8 = [v7 chromePlaybackControlsController];
  [v8 setShowsVolumeControlsForContentWithNoAudio:1];

  v9 = [(AVHomeIPCameraBehaviorContext *)self playerViewController];
  v10 = [v9 catalystPlaybackControlsController];
  [v10 setShowsVolumeControlsForContentWithNoAudio:1];

  v12 = [(AVHomeIPCameraBehaviorContext *)self playerViewController];
  v11 = [v12 contentView];
  [v11 setContentOverlayViewPlacement:1];
}

- (void)didRemoveBehavior:(id)a3
{
  v4 = [(AVHomeIPCameraBehaviorContext *)self playerViewController];
  v5 = [v4 chromePlaybackControlsController];
  [v5 setShowsVolumeControlsForContentWithNoAudio:0];

  v7 = [(AVHomeIPCameraBehaviorContext *)self playerViewController];
  v6 = [v7 catalystPlaybackControlsController];
  [v6 setShowsVolumeControlsForContentWithNoAudio:0];
}

- (void)didAddBehavior:(id)a3
{
  v4 = a3;
  v5 = [(AVHomeIPCameraBehaviorContext *)self playerViewController];
  v6 = [(AVHomeIPCameraBehaviorContext *)self zoomingBehavior];
  [v5 addBehavior:v6];

  [(AVHomeIPCameraBehaviorContext *)self _updatePlaybackControlsControllerAndZoomingBehavior];
  v7 = [(AVHomeIPCameraBehaviorContext *)self observationController];
  v8 = [(AVHomeIPCameraBehaviorContext *)self playerViewController];
  [v7 startObservingNotificationForName:@"AVPlayerViewControllerDidChangePlayerControllerNotification" object:v8 notificationCenter:0 observationHandler:&__block_literal_global_14537];

  v9 = [(AVHomeIPCameraBehaviorContext *)self observationController];
  [v9 startObservingNotificationForName:@"AVPlaybackControlsControllsShowsLoadingIndicatorNotification" object:0 notificationCenter:0 observationHandler:&__block_literal_global_15];

  v10 = [(AVHomeIPCameraBehaviorContext *)self livePreviewPlayerController];
  [v10 setDelegate:v4];
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

- (void)setBackgroundColor:(id)a3 forContainerOfControlItem:(id)a4
{
  v25 = a3;
  v6 = a4;
  v7 = [(AVHomeIPCameraBehaviorContext *)self playerViewController];
  [v7 loadViewIfNeeded];

  v8 = [(AVHomeIPCameraBehaviorContext *)self playerViewController];
  v9 = [v8 contentView];
  [v9 loadPlaybackControlsViewIfNeeded];

  v10 = [v6 type];
  if (v10)
  {
    if (v10 != 1)
    {
      goto LABEL_6;
    }

    v11 = [(AVHomeIPCameraBehaviorContext *)self playerViewController];
    v12 = [v11 contentView];
    v13 = [v12 chromePlaybackControlsView];
    v14 = [v13 volumeControls];
    [v14 setBackgroundColor:v25];

    v15 = [(AVHomeIPCameraBehaviorContext *)self playerViewController];
    v16 = [v15 controlsViewController];
    v17 = [v16 controlsViewControllerIfCatalystGlass];
    v18 = [v17 playbackControlsView];
    v19 = [v18 volumeControls];
  }

  else
  {
    v20 = [(AVHomeIPCameraBehaviorContext *)self playerViewController];
    v21 = [v20 contentView];
    v22 = [v21 chromePlaybackControlsView];
    v23 = [v22 screenModeControls];
    [v23 setBackgroundColor:v25];

    v15 = [(AVHomeIPCameraBehaviorContext *)self playerViewController];
    v16 = [v15 controlsViewController];
    v17 = [v16 controlsViewControllerIfCatalystGlass];
    v18 = [v17 playbackControlsView];
    v19 = [v18 screenModeControls];
  }

  v24 = v19;
  [v19 setBackgroundColor:v25];

LABEL_6:
}

- (void)setLivePreviewAspectRatio:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  self->_livePreviewAspectRatio = a3;
  v6 = [(AVHomeIPCameraBehaviorContext *)self livePreviewPlayerController];
  [v6 setPresentationSize:{width, height}];

  [(AVHomeIPCameraBehaviorContext *)self _updatePlaybackControlsControllerAndZoomingBehavior];
}

- (void)setPlaybackControlsIncludePictureInPictureButton:(BOOL)a3
{
  v13 = *MEMORY[0x1E69E9840];
  if (self->_playbackControlsIncludePictureInPictureButton != a3)
  {
    v3 = a3;
    self->_playbackControlsIncludePictureInPictureButton = a3;
    v5 = _AVLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = "NO";
      v7 = 136315650;
      v8 = "[AVHomeIPCameraBehaviorContext setPlaybackControlsIncludePictureInPictureButton:]";
      v10 = "playbackControlsIncludePictureInPictureButton";
      v9 = 2080;
      if (v3)
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

- (void)setCanStartPictureInPictureAutomaticallyWhenEnteringBackground:(BOOL)a3
{
  v13 = *MEMORY[0x1E69E9840];
  if (self->_canStartPictureInPictureAutomaticallyWhenEnteringBackground != a3)
  {
    v3 = a3;
    self->_canStartPictureInPictureAutomaticallyWhenEnteringBackground = a3;
    v5 = _AVLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = "NO";
      v7 = 136315650;
      v8 = "[AVHomeIPCameraBehaviorContext setCanStartPictureInPictureAutomaticallyWhenEnteringBackground:]";
      v10 = "canStartPictureInPictureAutomaticallyWhenEnteringBackground";
      v9 = 2080;
      if (v3)
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

- (void)setMicrophoneEnabled:(BOOL)a3
{
  if (self->_microphoneEnabled != a3)
  {
    self->_microphoneEnabled = a3;
    [(AVHomeIPCameraBehaviorContext *)self _updatePictureInPictureController];
  }
}

- (void)setHasMicrophone:(BOOL)a3
{
  if (self->_hasMicrophone != a3)
  {
    self->_hasMicrophone = a3;
    [(AVHomeIPCameraBehaviorContext *)self _updatePictureInPictureController];
  }
}

- (void)setLivePreviewActive:(BOOL)a3
{
  v30 = *MEMORY[0x1E69E9840];
  if (self->_livePreviewActive != a3)
  {
    v3 = a3;
    v5 = _AVLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = "NO";
      v24 = 136315650;
      v25 = "[AVHomeIPCameraBehaviorContext setLivePreviewActive:]";
      v27 = "livePreviewActive";
      v26 = 2080;
      if (v3)
      {
        v6 = "YES";
      }

      v28 = 2080;
      v29 = v6;
      _os_log_impl(&dword_18B49C000, v5, OS_LOG_TYPE_DEFAULT, "%s %s %s", &v24, 0x20u);
    }

    self->_livePreviewActive = v3;
    if (v3)
    {
      v7 = [(AVHomeIPCameraBehaviorContext *)self playerViewController];
      v8 = [v7 playerController];
      [(AVHomeIPCameraBehaviorContext *)self setPlayerControllerToRestore:v8];

      v9 = objc_alloc_init(AVHomeIPCameraPlayerController);
      v10 = [(AVHomeIPCameraBehaviorContext *)self behavior];
      [(AVHomeIPCameraPlayerController *)v9 setDelegate:v10];

      [(AVHomeIPCameraBehaviorContext *)self livePreviewAspectRatio];
      [(AVHomeIPCameraPlayerController *)v9 setPresentationSize:?];
      v11 = [(AVHomeIPCameraBehaviorContext *)self playerControllerToRestore];
      -[AVHomeIPCameraPlayerController setMuted:](v9, "setMuted:", [v11 isMuted]);

      [(AVHomeIPCameraBehaviorContext *)self setLivePreviewPlayerController:v9];
      v12 = [(AVHomeIPCameraBehaviorContext *)self playerViewController];
      [v12 setPlayerController:v9];

      [(AVHomeIPCameraBehaviorContext *)self _updatePictureInPictureController];
    }

    else
    {
      v13 = [(AVHomeIPCameraBehaviorContext *)self playerControllerToRestore];
      v14 = [(AVHomeIPCameraBehaviorContext *)self playerViewController];
      v15 = [v14 playerController];
      [v13 setMuted:{objc_msgSend(v15, "isMuted")}];

      v16 = [(AVHomeIPCameraBehaviorContext *)self playerViewController];
      v17 = [(AVHomeIPCameraBehaviorContext *)self playerControllerToRestore];
      [v16 setPlayerController:v17];

      [(AVHomeIPCameraBehaviorContext *)self setPlayerControllerToRestore:0];
      [(AVHomeIPCameraBehaviorContext *)self setLivePreviewPlayerController:0];
      v18 = [(AVHomeIPCameraBehaviorContext *)self playerViewController];
      v19 = [v18 chromePlaybackControlsController];
      v20 = [v19 pictureInPictureController];
      [v20 setControlsStyle:0];

      v9 = [(AVHomeIPCameraBehaviorContext *)self playerViewController];
      v21 = [(AVHomeIPCameraPlayerController *)v9 catalystPlaybackControlsController];
      v22 = [v21 pictureInPictureController];
      [v22 setControlsStyle:0];
    }

    [(AVHomeIPCameraBehaviorContext *)self _updatePlaybackControlsControllerAndZoomingBehavior];
    v23 = [(AVHomeIPCameraBehaviorContext *)self livePreviewContainerView];
    [v23 setHidden:{-[AVHomeIPCameraBehaviorContext isLivePreviewActive](self, "isLivePreviewActive") ^ 1}];
  }
}

- (void)setZoomingEnabled:(BOOL)a3
{
  v3 = a3;
  v13 = *MEMORY[0x1E69E9840];
  v5 = _AVLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = "NO";
    v7 = 136315650;
    v8 = "[AVHomeIPCameraBehaviorContext setZoomingEnabled:]";
    v10 = "zoomingEnabled";
    v9 = 2080;
    if (v3)
    {
      v6 = "YES";
    }

    v11 = 2080;
    v12 = v6;
    _os_log_impl(&dword_18B49C000, v5, OS_LOG_TYPE_DEFAULT, "%s %s %s", &v7, 0x20u);
  }

  self->_zoomingEnabled = v3;
  [(AVHomeIPCameraBehaviorContext *)self _updatePlaybackControlsControllerAndZoomingBehavior];
}

- (void)dealloc
{
  v3 = [(AVHomeIPCameraBehaviorContext *)self observationController];
  [v3 stopAllObservation];

  v4.receiver = self;
  v4.super_class = AVHomeIPCameraBehaviorContext;
  [(AVHomeIPCameraBehaviorContext *)&v4 dealloc];
}

- (AVHomeIPCameraBehaviorContext)initWithAVKitOwner:(id)a3
{
  v4 = a3;
  if (self)
  {
    *&self->_playbackControlsIncludeTransportControls = 16843008;
    self->_playbackControlsShowsLoadingIndicator = 0;
    v5 = objc_storeWeak(&self->_playerViewController, v4);
    *&self->_canStartPictureInPictureAutomaticallyWhenEnteringBackground = 1;
    v6 = v5;
    [v4 setRequiresImmediateAssetInspection:1];

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