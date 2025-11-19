@interface AVPictureInPictureController
+ (UIImage)pictureInPictureButtonStartImageCompatibleWithTraitCollection:(UITraitCollection *)traitCollection;
+ (UIImage)pictureInPictureButtonStopImageCompatibleWithTraitCollection:(UITraitCollection *)traitCollection;
+ (id)_imageNamed:(id)a3 compatibileWithTraitCollection:(id)a4;
- (AVPictureInPictureContentSource)source;
- (AVPictureInPictureController)init;
- (AVPictureInPictureController)initWithContentSource:(AVPictureInPictureControllerContentSource *)contentSource;
- (AVPictureInPictureController)initWithPlayerLayer:(AVPlayerLayer *)playerLayer;
- (AVPictureInPictureController)initWithSource:(id)a3;
- (AVPictureInPictureControllerExtendedDelegate)_extendedDelegate;
- (AVPictureInPicturePrerollDelegate)prerollDelegate;
- (AVPictureInPictureViewController)pictureInPictureViewController;
- (AVPlayerLayer)playerLayer;
- (BOOL)_shouldPauseWhenExitingPictureInPicture;
- (id)_delegateIfRespondsToSelector:(SEL)a3;
- (id)_sbdlPlayerController;
- (id)activitySessionIdentifier;
- (id)delegate;
- (id)sampleBufferDisplayLayer;
- (int64_t)backgroundPlaybackPolicy;
- (void)_commonInitWithSource:(id)a3;
- (void)_configureContentSourceForGenericViewIfNeeded:(id)a3;
- (void)_configureContentSourceForVideoCallsIfNeeded:(id)a3;
- (void)_invalidateContentSourceForVideoCallsIfNeeded:(id)a3;
- (void)_logContentSourceType:(id)a3;
- (void)_startObservationsForContentSource:(id)a3;
- (void)_startObservingPlayerLayerContentSource:(id)a3;
- (void)_startObservingSampleBufferDisplayLayerContentSource:(id)a3;
- (void)_stopPictureInPictureAndRestoreUserInterface:(BOOL)a3;
- (void)_updateBackgroundPlaybackPolicyFromPlayerController;
- (void)_updateEnqueuedBufferDimensions;
- (void)contentSourceVideoRectInWindowChanged;
- (void)dealloc;
- (void)invalidate;
- (void)invalidatePlaybackState;
- (void)pictureInPicturePlatformAdapter:(id)a3 failedToStartError:(id)a4;
- (void)pictureInPicturePlatformAdapter:(id)a3 handlePlaybackCommand:(int64_t)a4;
- (void)pictureInPicturePlatformAdapter:(id)a3 prepareToStopForRestoringUserInterface:(id)a4;
- (void)pictureInPicturePlatformAdapter:(id)a3 statusDidChange:(int64_t)a4 fromStatus:(int64_t)a5;
- (void)pictureInPicturePlatformAdapterBeginReducingResourcesForEligibleOffScreenState;
- (void)pictureInPicturePlatformAdapterEndReducingResourcesForEligibleOffScreenState;
- (void)pictureInPicturePlatformAdapterPrepareToStopForDismissal:(id)a3;
- (void)reloadPrerollAttributes;
- (void)sampleBufferDisplayLayerDidAppear;
- (void)sampleBufferDisplayLayerDidDisappear;
- (void)sampleBufferDisplayLayerRenderSizeDidChangeToSize:(CGSize)a3;
- (void)setActivitySessionIdentifier:(id)a3;
- (void)setAllowsPictureInPictureFromInlineWhenEnteringBackground:(BOOL)a3;
- (void)setAllowsPictureInPicturePlayback:(BOOL)a3;
- (void)setBackgroundPlaybackPolicy:(int64_t)a3;
- (void)setCanPausePlaybackWhenClosingPictureInPicture:(BOOL)a3;
- (void)setCanStartAutomaticallyWhenEnteringBackground:(BOOL)a3;
- (void)setContentSource:(AVPictureInPictureControllerContentSource *)contentSource;
- (void)setControlsStyle:(int64_t)a3;
- (void)setMicrophoneEnabled:(BOOL)a3;
- (void)setOtherPictureInPictureActive:(BOOL)a3;
- (void)setPictureInPictureActive:(BOOL)a3;
- (void)setPictureInPicturePossible:(BOOL)a3;
- (void)setPlayerController:(id)a3;
- (void)setRequiresLinearPlayback:(BOOL)requiresLinearPlayback;
- (void)startObservingPlayerController:(id)a3;
- (void)startPictureInPicture;
- (void)stopObservingPlayerController:(id)a3;
- (void)stopPictureInPicture;
- (void)stopPictureInPictureEvenWhenInBackground;
@end

@implementation AVPictureInPictureController

- (AVPictureInPicturePrerollDelegate)prerollDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_prerollDelegate);

  return WeakRetained;
}

- (AVPictureInPictureContentSource)source
{
  WeakRetained = objc_loadWeakRetained(&self->_source);

  return WeakRetained;
}

- (AVPictureInPictureControllerExtendedDelegate)_extendedDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->__extendedDelegate);

  return WeakRetained;
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_updateEnqueuedBufferDimensions
{
  v3 = [(AVPictureInPictureController *)self contentSource];
  v10 = [v3 sampleBufferDisplayLayer];

  v4 = v10;
  if (v10)
  {
    [v10 videoRect];
    v6 = v5;
    v8 = v7;
    v9 = [(AVPictureInPictureController *)self _sbdlPlayerController];
    [v9 setEnqueuedBufferDimensions:{v6, v8}];

    [(AVPictureInPictureController *)self contentSourceVideoRectInWindowChanged];
    v4 = v10;
  }
}

- (void)_startObservingSampleBufferDisplayLayerContentSource:(id)a3
{
  v4 = a3;
  v5 = [(AVPictureInPictureController *)self observationController];
  [v5 startObservingNotificationForName:*MEMORY[0x1E6987AF8] object:v4 notificationCenter:0 observationHandler:&__block_literal_global_118_17761];

  v6 = [(AVPictureInPictureController *)self observationController];
  [v6 startObservingNotificationForName:*MEMORY[0x1E6987B00] object:v4 notificationCenter:0 observationHandler:&__block_literal_global_120_17762];

  [(AVPictureInPictureController *)self _updateEnqueuedBufferDimensions];
}

- (void)_updateBackgroundPlaybackPolicyFromPlayerController
{
  v4 = [(AVPictureInPictureController *)self playerController];
  v3 = [v4 player];
  -[AVPictureInPictureController setBackgroundPlaybackPolicy:](self, "setBackgroundPlaybackPolicy:", [v3 audiovisualBackgroundPlaybackPolicy]);
}

- (void)_startObservingPlayerLayerContentSource:(id)a3
{
  v10[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(AVPictureInPictureController *)self observationController];
  v6 = [v5 startObserving:v4 keyPath:@"player" includeInitialValue:0 observationHandler:&__block_literal_global_107_17766];

  v7 = [(AVPictureInPictureController *)self observationController];
  v10[0] = @"videoRect";
  v10[1] = @"readyForDisplay";
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:2];
  v9 = [v7 startObserving:v4 keyPaths:v8 includeInitialValue:1 observationHandler:&__block_literal_global_116_17768];
}

void __72__AVPictureInPictureController__startObservingPlayerLayerContentSource___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v5 = [v2 source];
  v3 = [v2 playerController];
  v4 = [v5 avkit_makePlayerControllerIfNeeded:v3];
  [v2 setPlayerController:v4];
}

- (void)_startObservationsForContentSource:(id)a3
{
  v5 = a3;
  v4 = [v5 source];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(AVPictureInPictureController *)self _startObservingPlayerLayerContentSource:v4];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && ([v5 hasInitialRenderSize] & 1) == 0)
    {
      [(AVPictureInPictureController *)self _startObservingSampleBufferDisplayLayerContentSource:v4];
    }
  }
}

- (void)_stopPictureInPictureAndRestoreUserInterface:(BOOL)a3
{
  v3 = a3;
  v5 = [(AVPictureInPictureController *)self platformAdapter];
  if ([v5 status] == 3)
  {
  }

  else
  {
    v6 = [(AVPictureInPictureController *)self platformAdapter];
    v7 = [v6 status];

    if (v7 != 4)
    {
      return;
    }
  }

  v8 = [(AVPictureInPictureController *)self platformAdapter];
  [v8 stopPictureInPictureAndRestoreUserInterface:v3];
}

- (BOOL)_shouldPauseWhenExitingPictureInPicture
{
  v3 = [(AVPictureInPictureController *)self platformAdapter];
  v4 = [v3 playerController];
  v5 = ([v4 isExternalPlaybackActive] & 1) == 0 && -[AVPictureInPictureController canPausePlaybackWhenClosingPictureInPicture](self, "canPausePlaybackWhenClosingPictureInPicture");

  return v5;
}

- (id)_delegateIfRespondsToSelector:(SEL)a3
{
  v4 = [(AVPictureInPictureController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v5 = [(AVPictureInPictureController *)self delegate];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_configureContentSourceForGenericViewIfNeeded:(id)a3
{
  v7 = a3;
  v4 = [v7 activeContentViewController];

  if (v4)
  {
    v5 = [v7 activeContentViewController];
    [v5 setContentSource:v7];

    [(AVPictureInPictureController *)self setControlsStyle:0];
    v6 = [(AVPictureInPictureController *)self platformAdapter];
    [v6 _updateStatus];
  }
}

- (void)_configureContentSourceForVideoCallsIfNeeded:(id)a3
{
  v8 = a3;
  v4 = [v8 activeVideoCallContentViewController];

  if (v4)
  {
    v5 = [v8 activeVideoCallContentViewController];
    [v5 setPictureInPictureController:self];

    v6 = [v8 activeVideoCallContentViewController];
    [v6 setContentSource:v8];

    v7 = [v8 activeVideoCallContentViewController];
    [v7 startObservingSourceView];

    [(AVPictureInPictureController *)self setControlsStyle:2];
  }
}

- (void)_invalidateContentSourceForVideoCallsIfNeeded:(id)a3
{
  v5 = a3;
  v3 = [v5 activeVideoCallContentViewController];

  if (v3)
  {
    v4 = [v5 activeVideoCallContentViewController];
    [v4 stopObservingSourceView];
  }
}

- (id)_sbdlPlayerController
{
  v3 = [(AVPictureInPictureController *)self contentSource];
  v4 = [v3 sampleBufferDisplayLayer];
  v5 = [(AVPictureInPictureController *)self playerController];
  v6 = [v4 avkit_makePlayerControllerIfNeeded:v5];

  return v6;
}

- (void)sampleBufferDisplayLayerDidDisappear
{
  if ([MEMORY[0x1E696AF00] isMainThread])
  {

    [(AVPictureInPictureController *)self contentSourceVideoRectInWindowChanged];
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __68__AVPictureInPictureController_sampleBufferDisplayLayerDidDisappear__block_invoke;
    block[3] = &unk_1E720A090;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

- (void)sampleBufferDisplayLayerDidAppear
{
  if ([MEMORY[0x1E696AF00] isMainThread])
  {

    [(AVPictureInPictureController *)self contentSourceVideoRectInWindowChanged];
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __65__AVPictureInPictureController_sampleBufferDisplayLayerDidAppear__block_invoke;
    block[3] = &unk_1E720A090;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

- (void)sampleBufferDisplayLayerRenderSizeDidChangeToSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v14 = *MEMORY[0x1E69E9840];
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v6 = _AVLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v15.width = width;
      v15.height = height;
      v7 = NSStringFromCGSize(v15);
      *buf = 136315394;
      v11 = "[AVPictureInPictureController sampleBufferDisplayLayerRenderSizeDidChangeToSize:]";
      v12 = 2112;
      v13 = v7;
      _os_log_impl(&dword_18B49C000, v6, OS_LOG_TYPE_DEFAULT, "%s SampleBufferDisplayLayer Render Size changed: %@", buf, 0x16u);
    }

    v8 = [(AVPictureInPictureController *)self _sbdlPlayerController];
    [v8 setEnqueuedBufferDimensions:{width, height}];

    [(AVPictureInPictureController *)self contentSourceVideoRectInWindowChanged];
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __82__AVPictureInPictureController_sampleBufferDisplayLayerRenderSizeDidChangeToSize___block_invoke;
    block[3] = &unk_1E7208ED8;
    block[4] = self;
    *&block[5] = width;
    *&block[6] = height;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

- (void)invalidatePlaybackState
{
  v2 = [(AVPictureInPictureController *)self _sbdlPlayerController];
  [v2 invalidatePlaybackState];
}

- (void)setContentSource:(AVPictureInPictureControllerContentSource *)contentSource
{
  v5 = contentSource;
  if (self->_contentSource != v5)
  {
    v28 = v5;
    v6 = [(AVPictureInPictureController *)self observationController];
    [v6 stopAllObservation];

    v7 = [(AVPictureInPictureControllerContentSource *)self->_contentSource sampleBufferDisplayLayer];
    [v7 avkit_removePictureInPicturePlayerController];

    [(AVPictureInPictureController *)self _invalidateContentSourceForVideoCallsIfNeeded:self->_contentSource];
    [(AVPictureInPictureController *)self _configureContentSourceForVideoCallsIfNeeded:self->_contentSource];
    [(AVPictureInPictureController *)self _configureContentSourceForGenericViewIfNeeded:self->_contentSource];
    if ([(AVPictureInPictureController *)self wantsResourceReduction])
    {
      v8 = [(AVPictureInPictureController *)self source];
      v9 = [(AVPictureInPictureController *)self pictureInPictureViewController];
      v10 = [(AVPictureInPictureController *)self playerController];
      [v8 avkit_endReducingResourcesForPictureInPictureViewController:v9 playerController:v10];
    }

    objc_storeStrong(&self->_contentSource, contentSource);
    v11 = [(AVPictureInPictureControllerContentSource *)v28 source];
    objc_storeWeak(&self->_source, v11);

    WeakRetained = objc_loadWeakRetained(&self->_source);
    v13 = [(AVPictureInPictureController *)self platformAdapter];
    [v13 setSource:WeakRetained];

    v14 = [(AVPictureInPictureController *)self source];
    v15 = [(AVPictureInPictureController *)self playerController];
    v16 = [v14 avkit_makePlayerControllerIfNeeded:v15];

    if (objc_opt_respondsToSelector())
    {
      v17 = [(AVPictureInPictureController *)self contentSource];
      [v17 initialRenderSize];
      [v16 setEnqueuedBufferDimensions:?];
    }

    [(AVPictureInPictureController *)self setPlayerController:v16];
    if ([(AVPictureInPictureController *)self wantsResourceReduction])
    {
      v18 = [(AVPictureInPictureController *)self source];
      v19 = [(AVPictureInPictureController *)self pictureInPictureViewController];
      v20 = [(AVPictureInPictureController *)self playerController];
      [v18 avkit_beginReducingResourcesForPictureInPictureViewController:v19 playerController:v20];
    }

    v21 = [[AVObservationController alloc] initWithOwner:self];
    observationController = self->_observationController;
    self->_observationController = v21;

    v23 = [(AVPictureInPictureController *)self _sbdlPlayerController];
    [v23 setPictureInPictureController:self];

    [(AVPictureInPictureController *)self _startObservationsForContentSource:v28];
    v24 = [(AVPictureInPictureController *)self observationController];
    v25 = [(AVPictureInPictureController *)self platformAdapter];
    v26 = [v24 startObserving:v25 keyPath:@"anyPictureInPictureActive" includeInitialValue:1 observationHandler:&__block_literal_global_97];

    v27 = [(AVPictureInPictureController *)self observationController];
    [v27 startObservingNotificationForName:@"AVPlayerControllerPIPActivitySessionIdentifierDidChangeNotification" object:0 notificationCenter:0 observationHandler:&__block_literal_global_100];

    [(AVPictureInPictureController *)self contentSourceVideoRectInWindowChanged];
    [(AVPictureInPictureController *)self setAllowsPictureInPicturePlayback:1];

    v5 = v28;
  }
}

void __49__AVPictureInPictureController_setContentSource___block_invoke_98(uint64_t a1, void *a2)
{
  v2 = a2;
  v4 = [v2 playerController];
  v3 = [v4 pipActivitySessionIdentifier];
  [v2 setActivitySessionIdentifier:v3];
}

void __49__AVPictureInPictureController_setContentSource___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if ([v2 isPictureInPictureActive])
  {
    [v2 setOtherPictureInPictureActive:0];
  }

  else
  {
    v3 = [v2 platformAdapter];
    [v2 setOtherPictureInPictureActive:{objc_msgSend(v3, "isAnyPictureInPictureActive")}];
  }

  v4 = _AVLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v2 isOtherPictureInPictureActive];
    v6 = "NO";
    v7 = 136315650;
    v8 = "[AVPictureInPictureController setContentSource:]_block_invoke";
    v10 = "owner.isOtherPictureInPictureActive";
    v9 = 2080;
    if (v5)
    {
      v6 = "YES";
    }

    v11 = 2080;
    v12 = v6;
    _os_log_impl(&dword_18B49C000, v4, OS_LOG_TYPE_DEFAULT, "%s %s %s", &v7, 0x20u);
  }
}

- (void)pictureInPicturePlatformAdapterPrepareToStopForDismissal:(id)a3
{
  if ([(AVPictureInPictureController *)self _shouldPauseWhenExitingPictureInPicture])
  {
    v4 = [(AVPictureInPictureController *)self platformAdapter];
    v5 = [v4 playerController];
    v6 = objc_opt_respondsToSelector();

    v9 = [(AVPictureInPictureController *)self platformAdapter];
    v7 = [v9 playerController];
    v8 = v7;
    if (v6)
    {
      [v7 pauseForAllCoordinatedPlaybackParticipants:0];
    }

    else
    {
      [v7 setPlaying:0];
    }
  }
}

- (void)pictureInPicturePlatformAdapter:(id)a3 statusDidChange:(int64_t)a4 fromStatus:(int64_t)a5
{
  v48 = *MEMORY[0x1E69E9840];
  v8 = [(AVPictureInPictureController *)self sourceIfRetainedDuringPictureInPicturePlayback];
  v9 = _AVLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v43 = "[AVPictureInPictureController pictureInPicturePlatformAdapter:statusDidChange:fromStatus:]";
    v44 = 2048;
    v45 = a5;
    v46 = 2048;
    v47 = a4;
    _os_log_impl(&dword_18B49C000, v9, OS_LOG_TYPE_DEFAULT, "%s old: %ld --> new: %ld", buf, 0x20u);
  }

  v10 = a4 - 3;
  v11 = a4 == 4;
  if (a4 != 4 && v10 <= 3)
  {
    v11 = [(AVPictureInPictureController *)self pictureInPictureWasStartedWhenEnteringBackground];
    if ((((a4 > 0) ^ [(AVPictureInPictureController *)self isPictureInPicturePossible]) & 1) == 0)
    {
LABEL_9:
      if ((a4 == 5) == [(AVPictureInPictureController *)self isPictureInPictureSuspended])
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

LABEL_8:
    [(AVPictureInPictureController *)self setPictureInPicturePossible:a4 > 0];
    v12 = [(AVPictureInPictureController *)self playerController];
    [v12 setCanTogglePictureInPicture:a4 > 0];

    goto LABEL_9;
  }

  if (((a4 > 0) ^ [(AVPictureInPictureController *)self isPictureInPicturePossible]))
  {
    goto LABEL_8;
  }

  if (((a4 == 5) ^ [(AVPictureInPictureController *)self isPictureInPictureSuspended]))
  {
LABEL_10:
    [(AVPictureInPictureController *)self setPictureInPictureSuspended:a4 == 5];
  }

LABEL_11:
  if (v10 <= 3)
  {
    [(AVPictureInPictureController *)self setOtherPictureInPictureActive:0];
  }

  if (v10 < 4 != [(AVPictureInPictureController *)self isPictureInPictureActive])
  {
    [(AVPictureInPictureController *)self setPictureInPictureActive:v10 < 4];
    v13 = [(AVPictureInPictureController *)self playerController];
    [v13 setPictureInPictureActive:v10 < 4];
  }

  if (v10 >= 4)
  {
    v14 = [(AVPictureInPictureController *)self platformAdapter];
    -[AVPictureInPictureController setOtherPictureInPictureActive:](self, "setOtherPictureInPictureActive:", [v14 isAnyPictureInPictureActive]);
  }

  if (v11 != [(AVPictureInPictureController *)self pictureInPictureWasStartedWhenEnteringBackground])
  {
    [(AVPictureInPictureController *)self setPictureInPictureWasStartedWhenEnteringBackground:v11];
  }

  v15 = [(AVPictureInPictureController *)self retainsSourceDuringPictureInPicturePlayback];
  v16 = 0;
  v17 = 1;
  if (a4 <= 2)
  {
    if (a4 < 2)
    {
      v16 = 0;
      v19 = 0;
      v15 = 0;
    }

    else if (a4 == 2)
    {
      v20 = [(AVPictureInPictureController *)self _delegateIfRespondsToSelector:sel_pictureInPictureControllerWillStartPictureInPicture_];
      [v20 pictureInPictureControllerWillStartPictureInPicture:self];

      v40 = @"AVPictureInPictureControllerPlaybackStateIsPlayingKey";
      v21 = MEMORY[0x1E696AD98];
      v22 = [(AVPictureInPictureController *)self playerController];
      v23 = [v21 numberWithBool:{objc_msgSend(v22, "isPlaying")}];
      v41 = v23;
      v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v41 forKeys:&v40 count:1];

      v17 = 0;
      v19 = @"AVPictureInPictureControllerWillStartNotification";
    }

    else
    {
      v19 = 0;
    }
  }

  else if (a4 > 5)
  {
    if (a4 == 6)
    {
      v27 = [(AVPictureInPictureController *)self _delegateIfRespondsToSelector:sel_pictureInPictureControllerWillStopPictureInPicture_];
      [v27 pictureInPictureControllerWillStopPictureInPicture:self];

      v28 = [(AVPictureInPictureController *)self sourceIfRetainedDuringPictureInPicturePlayback];
      v15 = v28 != 0;

      v16 = 0;
      v17 = 0;
      v19 = @"AVPictureInPictureControllerWillStopNotification";
    }

    else
    {
      v19 = 0;
      if (a4 == 7)
      {
        v24 = [(AVPictureInPictureController *)self _delegateIfRespondsToSelector:sel_pictureInPictureControllerDidStopPictureInPicture_];
        [v24 pictureInPictureControllerDidStopPictureInPicture:self];

        v25 = [(AVPictureInPictureController *)self sourceIfRetainedDuringPictureInPicturePlayback];
        v15 = v25 != 0;

        v16 = 0;
        v17 = 0;
        v19 = @"AVPictureInPictureControllerDidStopNotification";
      }
    }
  }

  else if (v10 >= 2)
  {
    v19 = 0;
    if (a4 == 5)
    {
      v26 = [(AVPictureInPictureController *)self sourceIfRetainedDuringPictureInPicturePlayback];
      v15 = v26 != 0;

      v16 = 0;
      v19 = 0;
    }
  }

  else
  {
    if (a5 == 2)
    {
      v18 = [(AVPictureInPictureController *)self _delegateIfRespondsToSelector:sel_pictureInPictureControllerDidStartPictureInPicture_];
      [v18 pictureInPictureControllerDidStartPictureInPicture:self];
    }

    v16 = 0;
    v17 = 0;
    v19 = @"AVPictureInPictureControllerDidStartNotification";
  }

  v29 = _AVLog();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    if (v15)
    {
      v30 = "YES";
    }

    else
    {
      v30 = "NO";
    }

    *buf = 136315650;
    v43 = "[AVPictureInPictureController pictureInPicturePlatformAdapter:statusDidChange:fromStatus:]";
    v44 = 2080;
    v45 = "shouldRetainSource";
    v46 = 2080;
    v47 = v30;
    _os_log_impl(&dword_18B49C000, v29, OS_LOG_TYPE_DEFAULT, "%s %s %s", buf, 0x20u);
  }

  if (v15)
  {
    v31 = [(AVPictureInPictureController *)self source];
    [(AVPictureInPictureController *)self setSourceIfRetainedDuringPictureInPicturePlayback:v31];
  }

  else
  {
    [(AVPictureInPictureController *)self setSourceIfRetainedDuringPictureInPicturePlayback:0];
  }

  v32 = _AVLog();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    v33 = [(AVPictureInPictureController *)self sourceIfRetainedDuringPictureInPicturePlayback];
    if (v33)
    {
      v34 = "NO";
    }

    else
    {
      v34 = "YES";
    }

    *buf = 136315650;
    v43 = "[AVPictureInPictureController pictureInPicturePlatformAdapter:statusDidChange:fromStatus:]";
    v44 = 2080;
    v45 = "self.sourceIfRetainedDuringPictureInPicturePlayback == nil";
    v46 = 2080;
    v47 = v34;
    _os_log_impl(&dword_18B49C000, v32, OS_LOG_TYPE_DEFAULT, "%s %s %s", buf, 0x20u);
  }

  if ((v17 & 1) == 0)
  {
    v35 = [(AVPictureInPictureController *)self source];

    if (v35)
    {
      v36 = [(AVPictureInPictureController *)self source];
      v37 = [MEMORY[0x1E695DF90] dictionaryWithObject:v36 forKey:@"AVPictureInPictureControllerContentSourceKey"];
      v38 = v37;
      if (v16)
      {
        [v37 addEntriesFromDictionary:v16];
      }

      v39 = [MEMORY[0x1E696AD88] defaultCenter];
      [v39 postNotificationName:v19 object:self userInfo:v38];
    }
  }
}

- (void)pictureInPicturePlatformAdapter:(id)a3 prepareToStopForRestoringUserInterface:(id)a4
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = _AVLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315394;
    v11 = "[AVPictureInPictureController pictureInPicturePlatformAdapter:prepareToStopForRestoringUserInterface:]";
    v12 = 1024;
    v13 = 690;
    _os_log_impl(&dword_18B49C000, v6, OS_LOG_TYPE_DEFAULT, "%s %d", &v10, 0x12u);
  }

  v7 = [(AVPictureInPictureController *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(AVPictureInPictureController *)self delegate];
    [v9 pictureInPictureController:self restoreUserInterfaceForPictureInPictureStopWithCompletionHandler:v5];
  }

  else
  {
    v5[2](v5, 1);
  }
}

- (void)pictureInPicturePlatformAdapterEndReducingResourcesForEligibleOffScreenState
{
  self->_wantsResourceReduction = 0;
  v5 = [(AVPictureInPictureController *)self source];
  v3 = [(AVPictureInPictureController *)self pictureInPictureViewController];
  v4 = [(AVPictureInPictureController *)self playerController];
  [v5 avkit_endReducingResourcesForPictureInPictureViewController:v3 playerController:v4];
}

- (void)pictureInPicturePlatformAdapterBeginReducingResourcesForEligibleOffScreenState
{
  self->_wantsResourceReduction = 1;
  v5 = [(AVPictureInPictureController *)self source];
  v3 = [(AVPictureInPictureController *)self pictureInPictureViewController];
  v4 = [(AVPictureInPictureController *)self playerController];
  [v5 avkit_beginReducingResourcesForPictureInPictureViewController:v3 playerController:v4];
}

- (void)pictureInPicturePlatformAdapter:(id)a3 handlePlaybackCommand:(int64_t)a4
{
  v40[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (a4 <= 5)
  {
    if (a4 <= 2)
    {
      if (a4 == 1)
      {
        v22 = [(AVPictureInPictureController *)self playerController];
        v23 = [v22 isPlaying];

        if (v23)
        {
          goto LABEL_34;
        }

        v24 = [(AVPictureInPictureController *)self playerController];
        [v24 togglePlaybackEvenWhenInBackground:self];

        v25 = MEMORY[0x1E696AD98];
        v26 = [(AVPictureInPictureController *)self playerController];
        v7 = [v25 numberWithBool:{objc_msgSend(v26, "isPlaying")}];

        v18 = [MEMORY[0x1E696AD88] defaultCenter];
        v39 = @"AVPictureInPictureControllerPlaybackStateIsPlayingKey";
        v40[0] = v7;
        v19 = MEMORY[0x1E695DF20];
        v20 = v40;
        v21 = &v39;
      }

      else
      {
        if (a4 != 2)
        {
          goto LABEL_34;
        }

        v13 = [(AVPictureInPictureController *)self playerController];
        v14 = [v13 isPlaying];

        if (!v14)
        {
          goto LABEL_34;
        }

        v15 = [(AVPictureInPictureController *)self playerController];
        [v15 togglePlaybackEvenWhenInBackground:self];

        v16 = MEMORY[0x1E696AD98];
        v17 = [(AVPictureInPictureController *)self playerController];
        v7 = [v16 numberWithBool:{objc_msgSend(v17, "isPlaying")}];

        v18 = [MEMORY[0x1E696AD88] defaultCenter];
        v37 = @"AVPictureInPictureControllerPlaybackStateIsPlayingKey";
        v38 = v7;
        v19 = MEMORY[0x1E695DF20];
        v20 = &v38;
        v21 = &v37;
      }

      v27 = [v19 dictionaryWithObjects:v20 forKeys:v21 count:1];
      [v18 postNotificationName:@"AVPictureInPictureControllerUserPlaybackStateDidChangeNotification" object:self userInfo:v27];

      goto LABEL_33;
    }

    if (a4 == 3)
    {
      v36 = [(AVPictureInPictureController *)self playerController];
      -[AVPictureInPictureController setWasPlayingWhenPictureInPictureInterruptionBegan:](self, "setWasPlayingWhenPictureInPictureInterruptionBegan:", [v36 isPlaying]);

      v28 = [(AVPictureInPictureController *)self playerController];
      v29 = v28;
      v30 = 1;
    }

    else
    {
      if (a4 != 4)
      {
        v8 = [(AVPictureInPictureController *)self playerController];
        [v8 setPictureInPictureInterrupted:0];

        if ([(AVPictureInPictureController *)self wasPlayingWhenPictureInPictureInterruptionBegan])
        {
          v9 = [(AVPictureInPictureController *)self playerController];
          [v9 setPlaying:1];

          [(AVPictureInPictureController *)self setWasPlayingWhenPictureInPictureInterruptionBegan:0];
        }

        goto LABEL_34;
      }

      v28 = [(AVPictureInPictureController *)self playerController];
      v29 = v28;
      v30 = 0;
    }

    [v28 setPictureInPictureInterrupted:v30];
LABEL_31:

    goto LABEL_34;
  }

  if (a4 <= 8)
  {
    if (a4 == 6)
    {
      v31 = [(AVPictureInPictureController *)self playerController];
      v29 = v31;
      v32 = 1;
    }

    else
    {
      if (a4 != 7)
      {
        v7 = [(AVPictureInPictureController *)self playerController];
        [v7 togglePlaybackEvenWhenInBackground:self];
LABEL_33:

        goto LABEL_34;
      }

      v31 = [(AVPictureInPictureController *)self playerController];
      v29 = v31;
      v32 = 0;
    }

    [v31 setMuted:v32];
    goto LABEL_31;
  }

  switch(a4)
  {
    case 9:
      v7 = [(AVPictureInPictureController *)self prerollDelegate];
      [v7 pictureInPictureControllerSkipPreroll:self];
      goto LABEL_33;
    case 10:
      v33 = [(AVPictureInPictureController *)self delegate];
      objc_storeWeak(&self->__extendedDelegate, v33);

      v34 = [(AVPictureInPictureController *)self _extendedDelegate];
      v35 = objc_opt_respondsToSelector();

      if (v35)
      {
        v7 = [(AVPictureInPictureController *)self _extendedDelegate];
        [v7 pictureInPictureControllerDidSkipBackwardInPictureInPicture:self];
        goto LABEL_33;
      }

      break;
    case 11:
      v10 = [(AVPictureInPictureController *)self delegate];
      objc_storeWeak(&self->__extendedDelegate, v10);

      v11 = [(AVPictureInPictureController *)self _extendedDelegate];
      v12 = objc_opt_respondsToSelector();

      if (v12)
      {
        v7 = [(AVPictureInPictureController *)self _extendedDelegate];
        [v7 pictureInPictureControllerDidSkipForwardInPictureInPicture:self];
        goto LABEL_33;
      }

      break;
  }

LABEL_34:
}

- (void)pictureInPicturePlatformAdapter:(id)a3 failedToStartError:(id)a4
{
  v5 = a4;
  v6 = [(AVPictureInPictureController *)self _delegateIfRespondsToSelector:sel_pictureInPictureController_failedToStartPictureInPictureWithError_];
  [v6 pictureInPictureController:self failedToStartPictureInPictureWithError:v5];
}

- (void)setBackgroundPlaybackPolicy:(int64_t)a3
{
  if (a3 <= 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = a3;
  }

  v4 = [(AVPictureInPictureController *)self platformAdapter];
  [v4 setBackgroundPlaybackPolicy:v3];
}

- (int64_t)backgroundPlaybackPolicy
{
  v2 = [(AVPictureInPictureController *)self platformAdapter];
  v3 = [v2 backgroundPlaybackPolicy];

  return v3;
}

- (void)setActivitySessionIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(AVPictureInPictureController *)self platformAdapter];
  [v5 setActivitySessionIdentifier:v4];
}

- (id)activitySessionIdentifier
{
  v2 = [(AVPictureInPictureController *)self platformAdapter];
  v3 = [v2 activitySessionIdentifier];

  return v3;
}

- (void)reloadPrerollAttributes
{
  v5 = [(AVPictureInPictureController *)self prerollDelegate];
  v3 = [v5 pictureInPictureControllerPrerollAttributes:self];
  v4 = [(AVPictureInPictureController *)self platformAdapter];
  [v4 setPrerollAttributes:v3];
}

- (id)sampleBufferDisplayLayer
{
  v3 = [(AVPictureInPictureController *)self source];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [(AVPictureInPictureController *)self source];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)stopObservingPlayerController:(id)a3
{
  v4 = [(AVPictureInPictureController *)self playerControllerIsPlayingObservationToken];

  if (v4)
  {
    v5 = [(AVPictureInPictureController *)self observationController];
    v6 = [(AVPictureInPictureController *)self playerControllerIsPlayingObservationToken];
    [v5 stopObserving:v6];

    [(AVPictureInPictureController *)self setPlayerControllerIsPlayingObservationToken:0];
  }
}

- (void)startObservingPlayerController:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(AVPictureInPictureController *)self observationController];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __63__AVPictureInPictureController_startObservingPlayerController___block_invoke;
    v7[3] = &unk_1E72087E0;
    v8 = v4;
    v6 = [v5 startObserving:self keyPath:@"playerController.playing" includeInitialValue:1 observationHandler:v7];
    [(AVPictureInPictureController *)self setPlayerControllerIsPlayingObservationToken:v6];
  }
}

void __63__AVPictureInPictureController_startObservingPlayerController___block_invoke(uint64_t a1, void *a2)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 playerController];
  if (v4 != *(a1 + 32))
  {
    goto LABEL_4;
  }

  v5 = [v3 isPictureInPictureActive];

  if (v5)
  {
    v6 = MEMORY[0x1E696AD98];
    v7 = [v3 playerController];
    v4 = [v6 numberWithBool:{objc_msgSend(v7, "isPlaying")}];

    v8 = [MEMORY[0x1E696AD88] defaultCenter];
    v10 = @"AVPictureInPictureControllerPlaybackStateIsPlayingKey";
    v11[0] = v4;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    [v8 postNotificationName:@"AVPictureInPictureControllerPlaybackStateDidChangeNotification" object:v3 userInfo:v9];

LABEL_4:
  }
}

- (void)setPlayerController:(id)a3
{
  v5 = a3;
  playerController = self->_playerController;
  v12 = v5;
  if (playerController != v5)
  {
    v7 = playerController;
    v8 = [(AVPlayerController *)v7 isPictureInPictureInterrupted];
    [(AVPictureInPictureController *)self stopObservingPlayerController:v7];
    objc_storeStrong(&self->_playerController, a3);
    [(AVPictureInPictureController *)self startObservingPlayerController:v12];
    if ([(AVPictureInPictureController *)self wantsImmediateAssetInspection])
    {
      [(AVPlayerController *)v12 setInspectionSuspended:0];
    }

    [(AVPlayerController *)v12 setAllowsPictureInPicturePlayback:[(AVPictureInPictureController *)self allowsPictureInPicturePlayback]];
    [(AVPlayerController *)v12 setPictureInPictureActive:[(AVPictureInPictureController *)self isPictureInPictureActive]];
    [(AVPlayerController *)v12 setPictureInPictureInterrupted:v8];
    [(AVPlayerController *)v12 setCanTogglePictureInPicture:[(AVPictureInPictureController *)self isPictureInPicturePossible]];
    v9 = [(AVPictureInPictureController *)self platformAdapter];
    [v9 setPlayerController:v12];

    v10 = [(AVPictureInPictureController *)self platformAdapter];
    v11 = [v10 pictureInPictureViewController];
    [v11 setPlayerController:v12];

    [(AVPictureInPictureController *)self _updateBackgroundPlaybackPolicyFromPlayerController];
  }
}

- (void)setPictureInPicturePossible:(BOOL)a3
{
  v3 = a3;
  v14 = *MEMORY[0x1E69E9840];
  v5 = _AVLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = "NO";
    v8 = 136315650;
    v9 = "[AVPictureInPictureController setPictureInPicturePossible:]";
    v11 = "pictureInPicturePossible";
    v10 = 2080;
    if (v3)
    {
      v6 = "YES";
    }

    v12 = 2080;
    v13 = v6;
    _os_log_impl(&dword_18B49C000, v5, OS_LOG_TYPE_DEFAULT, "%s %s %s", &v8, 0x20u);
  }

  self->_pictureInPicturePossible = v3;
  v7 = [(AVPictureInPictureController *)self playerController];
  [v7 setCanTogglePictureInPicture:v3];

  if (!v3)
  {
    if ([(AVPictureInPictureController *)self isPictureInPictureActive])
    {
      [(AVPictureInPictureController *)self stopPictureInPicture];
    }
  }
}

- (void)setRequiresLinearPlayback:(BOOL)requiresLinearPlayback
{
  v14 = *MEMORY[0x1E69E9840];
  if (self->_requiresLinearPlayback != requiresLinearPlayback)
  {
    v3 = requiresLinearPlayback;
    self->_requiresLinearPlayback = requiresLinearPlayback;
    v5 = _AVLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = "NO";
      v8 = 136315650;
      v9 = "[AVPictureInPictureController setRequiresLinearPlayback:]";
      v11 = "requiresLinearPlayback";
      v10 = 2080;
      if (v3)
      {
        v6 = "YES";
      }

      v12 = 2080;
      v13 = v6;
      _os_log_impl(&dword_18B49C000, v5, OS_LOG_TYPE_DEFAULT, "%s %s %s", &v8, 0x20u);
    }

    v7 = [(AVPictureInPictureController *)self platformAdapter];
    [v7 setRequiresLinearPlayback:v3];
  }
}

- (void)setCanPausePlaybackWhenClosingPictureInPicture:(BOOL)a3
{
  v14 = *MEMORY[0x1E69E9840];
  if (self->_canPausePlaybackWhenClosingPictureInPicture != a3)
  {
    v3 = a3;
    v5 = _AVLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = "NO";
      v8 = 136315650;
      v9 = "[AVPictureInPictureController setCanPausePlaybackWhenClosingPictureInPicture:]";
      v11 = "canPausePlaybackWhenClosingPictureInPicture";
      v10 = 2080;
      if (v3)
      {
        v6 = "YES";
      }

      v12 = 2080;
      v13 = v6;
      _os_log_impl(&dword_18B49C000, v5, OS_LOG_TYPE_DEFAULT, "%s %s %s", &v8, 0x20u);
    }

    self->_canPausePlaybackWhenClosingPictureInPicture = v3;
    v7 = [(AVPictureInPictureController *)self platformAdapter];
    [v7 setCanPausePlaybackWhenClosingPictureInPicture:v3];
  }
}

- (void)setCanStartAutomaticallyWhenEnteringBackground:(BOOL)a3
{
  v14 = *MEMORY[0x1E69E9840];
  if (self->_canStartAutomaticallyWhenEnteringBackground != a3)
  {
    v3 = a3;
    self->_canStartAutomaticallyWhenEnteringBackground = a3;
    v5 = _AVLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = "NO";
      v8 = 136315650;
      v9 = "[AVPictureInPictureController setCanStartAutomaticallyWhenEnteringBackground:]";
      v11 = "canStartAutomaticallyWhenEnteringBackground";
      v10 = 2080;
      if (v3)
      {
        v6 = "YES";
      }

      v12 = 2080;
      v13 = v6;
      _os_log_impl(&dword_18B49C000, v5, OS_LOG_TYPE_DEFAULT, "%s %s %s", &v8, 0x20u);
    }

    v7 = [(AVPictureInPictureController *)self platformAdapter];
    [v7 setCanStartAutomaticallyWhenEnteringBackground:v3];
  }
}

- (void)setMicrophoneEnabled:(BOOL)a3
{
  v14 = *MEMORY[0x1E69E9840];
  if (self->_microphoneEnabled != a3)
  {
    v3 = a3;
    self->_microphoneEnabled = a3;
    v5 = _AVLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = "NO";
      v8 = 136315650;
      v9 = "[AVPictureInPictureController setMicrophoneEnabled:]";
      v11 = "microphoneEnabled";
      v10 = 2080;
      if (v3)
      {
        v6 = "YES";
      }

      v12 = 2080;
      v13 = v6;
      _os_log_impl(&dword_18B49C000, v5, OS_LOG_TYPE_DEFAULT, "%s %s %s", &v8, 0x20u);
    }

    v7 = [(AVPictureInPictureController *)self platformAdapter];
    [v7 setMicrophoneEnabled:v3];
  }
}

- (void)setControlsStyle:(int64_t)a3
{
  self->_controlsStyle = a3;
  v4 = [(AVPictureInPictureController *)self platformAdapter];
  [v4 setControlsStyle:a3];
}

- (void)setOtherPictureInPictureActive:(BOOL)a3
{
  v3 = a3;
  v10 = *MEMORY[0x1E69E9840];
  v5 = _AVLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = "NO";
    *v8 = 136315650;
    *&v8[4] = "[AVPictureInPictureController setOtherPictureInPictureActive:]";
    *&v8[14] = "otherPictureInPictureActive";
    *&v8[12] = 2080;
    if (v3)
    {
      v6 = "YES";
    }

    *&v8[22] = 2080;
    v9 = v6;
    _os_log_impl(&dword_18B49C000, v5, OS_LOG_TYPE_DEFAULT, "%s %s %s", v8, 0x20u);
  }

  self->_otherPictureInPictureActive = v3;
  v7 = v3 || [(AVPictureInPictureController *)self isPictureInPictureActive];
  [(AVPictureInPictureController *)self _setCanStopPictureInPicture:v7, *v8, *&v8[16]];
}

- (void)setPictureInPictureActive:(BOOL)a3
{
  v3 = a3;
  v11 = *MEMORY[0x1E69E9840];
  v5 = _AVLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = "NO";
    *v9 = 136315650;
    *&v9[4] = "[AVPictureInPictureController setPictureInPictureActive:]";
    *&v9[14] = "pictureInPictureActive";
    *&v9[12] = 2080;
    if (v3)
    {
      v6 = "YES";
    }

    *&v9[22] = 2080;
    v10 = v6;
    _os_log_impl(&dword_18B49C000, v5, OS_LOG_TYPE_DEFAULT, "%s %s %s", v9, 0x20u);
  }

  self->_pictureInPictureActive = v3;
  v7 = [(AVPictureInPictureController *)self playerController];
  [v7 setPictureInPictureActive:v3];

  v8 = v3 || [(AVPictureInPictureController *)self isOtherPictureInPictureActive];
  [(AVPictureInPictureController *)self _setCanStopPictureInPicture:v8, *v9, *&v9[16]];
}

- (void)setAllowsPictureInPictureFromInlineWhenEnteringBackground:(BOOL)a3
{
  if (self->_allowsPictureInPictureFromInlineWhenEnteringBackground != a3)
  {
    v4 = a3;
    self->_allowsPictureInPictureFromInlineWhenEnteringBackground = a3;
    v5 = [(AVPictureInPictureController *)self platformAdapter];
    [v5 setAlwaysStartsAutomaticallyWhenEnteringBackground:v4];
  }
}

- (void)setAllowsPictureInPicturePlayback:(BOOL)a3
{
  v3 = a3;
  v15 = *MEMORY[0x1E69E9840];
  v5 = _AVLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = "NO";
    v9 = 136315650;
    v10 = "[AVPictureInPictureController setAllowsPictureInPicturePlayback:]";
    v12 = "allowsPictureInPicturePlayback";
    v11 = 2080;
    if (v3)
    {
      v6 = "YES";
    }

    v13 = 2080;
    v14 = v6;
    _os_log_impl(&dword_18B49C000, v5, OS_LOG_TYPE_DEFAULT, "%s %s %s", &v9, 0x20u);
  }

  self->_allowsPictureInPicturePlayback = v3;
  v7 = [(AVPictureInPictureController *)self platformAdapter];
  [v7 setAllowsPictureInPicturePlayback:v3];

  v8 = [(AVPictureInPictureController *)self playerController];
  [v8 setAllowsPictureInPicturePlayback:v3];
}

- (AVPictureInPictureViewController)pictureInPictureViewController
{
  v2 = [(AVPictureInPictureController *)self platformAdapter];
  v3 = [v2 pictureInPictureViewController];

  return v3;
}

- (AVPlayerLayer)playerLayer
{
  playerLayer = self->_playerLayer;
  if (playerLayer)
  {
    v3 = playerLayer;
  }

  else
  {
    v3 = [MEMORY[0x1E69880E0] layer];
  }

  return v3;
}

- (void)_logContentSourceType:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = [a3 avkit_contentSourceType];
  v4 = _AVLog();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3 <= 1)
  {
    if (!v3)
    {
      if (v5)
      {
        v7 = 136315138;
        v8 = "[AVPictureInPictureController _logContentSourceType:]";
        v6 = "%s AVPictureInPictureContentSourceTypePlayerLayer";
        goto LABEL_16;
      }

      goto LABEL_17;
    }

    if (v3 == 1)
    {
      if (v5)
      {
        v7 = 136315138;
        v8 = "[AVPictureInPictureController _logContentSourceType:]";
        v6 = "%s AVPictureInPictureContentSourceTypeSampleBufferDisplayLayer";
LABEL_16:
        _os_log_impl(&dword_18B49C000, v4, OS_LOG_TYPE_DEFAULT, v6, &v7, 0xCu);
        goto LABEL_17;
      }

      goto LABEL_17;
    }

LABEL_10:
    if (v5)
    {
      v7 = 136315138;
      v8 = "[AVPictureInPictureController _logContentSourceType:]";
      v6 = "%s AVPictureInPictureContentSourceTypeUnknown";
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  if (v3 == 2)
  {
    if (v5)
    {
      v7 = 136315138;
      v8 = "[AVPictureInPictureController _logContentSourceType:]";
      v6 = "%s AVPictureInPictureContentSourceTypeVideoCall";
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  if (v3 != 3)
  {
    goto LABEL_10;
  }

  if (v5)
  {
    v7 = 136315138;
    v8 = "[AVPictureInPictureController _logContentSourceType:]";
    v6 = "%s AVPictureInPictureContentSourceTypeGenericView";
    goto LABEL_16;
  }

LABEL_17:
}

- (void)contentSourceVideoRectInWindowChanged
{
  v2 = [(AVPictureInPictureController *)self platformAdapter];
  [v2 updateLayoutDependentBehaviors];
}

- (void)invalidate
{
  if ([(AVPictureInPictureController *)self isPictureInPictureActive])
  {
    v3 = [(AVPictureInPictureController *)self platformAdapter];
    [v3 stopPictureInPictureAndRestoreUserInterface:0];
  }

  v4 = [(AVPictureInPictureController *)self observationController];
  [v4 stopAllObservation];

  [(AVPictureInPictureController *)self setPlayerController:0];
  playerLayer = self->_playerLayer;
  self->_playerLayer = 0;

  objc_storeWeak(&self->_source, 0);
  observationController = self->_observationController;
  self->_observationController = 0;

  platformAdapter = self->_platformAdapter;
  self->_platformAdapter = 0;
}

- (void)stopPictureInPictureEvenWhenInBackground
{
  v3 = [(AVPictureInPictureController *)self platformAdapter];
  -[AVPictureInPictureController _stopPictureInPictureAndRestoreUserInterface:](self, "_stopPictureInPictureAndRestoreUserInterface:", [v3 canAnimatePictureInPictureTransition]);
}

- (void)stopPictureInPicture
{
  if (-[AVPictureInPictureController isPictureInPictureActive](self, "isPictureInPictureActive") && (-[AVPictureInPictureController platformAdapter](self, "platformAdapter"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 canAnimatePictureInPictureTransition], v3, v4))
  {
    v6 = [(AVPictureInPictureController *)self platformAdapter];
    -[AVPictureInPictureController _stopPictureInPictureAndRestoreUserInterface:](self, "_stopPictureInPictureAndRestoreUserInterface:", [v6 canAnimatePictureInPictureTransition]);
  }

  else
  {
    v6 = [(AVPictureInPictureController *)self platformAdapter];
    if ([v6 isAnyPictureInPictureActive])
    {
      v5 = [(AVPictureInPictureController *)self isPictureInPictureActive];

      if (v5)
      {
        return;
      }

      v6 = [(AVPictureInPictureController *)self platformAdapter];
      [v6 stopPictureInPictureAndRestoreUserInterface:0];
    }
  }
}

- (void)startPictureInPicture
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = [(AVPictureInPictureController *)self platformAdapter];
  v4 = [v3 status];

  v5 = _AVLog();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4 == 1)
  {
    if (v6)
    {
      v7 = [(AVPictureInPictureController *)self playerController];
      v9 = 136315394;
      v10 = "[AVPictureInPictureController startPictureInPicture]";
      v11 = 2114;
      v12 = v7;
      _os_log_impl(&dword_18B49C000, v5, OS_LOG_TYPE_DEFAULT, "%s starting for playerController %{public}@", &v9, 0x16u);
    }

    v5 = [(AVPictureInPictureController *)self platformAdapter];
    [v5 startPictureInPicture];
  }

  else if (v6)
  {
    v8 = [(AVPictureInPictureController *)self platformAdapter];
    v9 = 136315394;
    v10 = "[AVPictureInPictureController startPictureInPicture]";
    v11 = 1024;
    LODWORD(v12) = [v8 status];
    _os_log_impl(&dword_18B49C000, v5, OS_LOG_TYPE_DEFAULT, "%s failed; status = %d", &v9, 0x12u);
  }
}

- (void)dealloc
{
  v3 = [(AVPictureInPictureController *)self source];
  v4 = [(AVPictureInPictureController *)self platformAdapter];
  v5 = [v4 pictureInPictureViewController];

  [(AVPictureInPictureController *)self invalidate];
  [v3 avkit_stopRoutingVideoToPictureInPictureViewController:v5];

  v6.receiver = self;
  v6.super_class = AVPictureInPictureController;
  [(AVPictureInPictureController *)&v6 dealloc];
}

- (void)_commonInitWithSource:(id)a3
{
  v33 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v4 = a3;
    objc_storeWeak(&self->_source, v4);
    [(AVPictureInPictureController *)self _logContentSourceType:v4];
    v5 = [[AVObservationController alloc] initWithOwner:self];
    observationController = self->_observationController;
    self->_observationController = v5;

    v7 = [[AVPictureInPicturePlatformAdapter alloc] initWithSource:v4];
    platformAdapter = self->_platformAdapter;
    self->_platformAdapter = v7;

    [(AVPictureInPicturePlatformAdapter *)self->_platformAdapter setBackgroundPlaybackPolicy:1];
    [(AVPictureInPicturePlatformAdapter *)self->_platformAdapter setCanStartAutomaticallyWhenEnteringBackground:1];
    self->_canStartAutomaticallyWhenEnteringBackground = 1;
    self->_canPausePlaybackWhenClosingPictureInPicture = 1;
    -[AVPictureInPicturePlatformAdapter setManagesWiredSecondScreenPlayback:](self->_platformAdapter, "setManagesWiredSecondScreenPlayback:", [v4 avkit_wantsManagedSecondScreenPlayback]);
    self->_requiresLinearPlayback = [(AVPictureInPicturePlatformAdapter *)self->_platformAdapter requiresLinearPlayback];
    self->_pictureInPictureActive = 0;
    v9 = [(AVPictureInPictureController *)self platformAdapter];
    self->_pictureInPicturePossible = [v9 status] > 0;

    v10 = [(AVPictureInPictureController *)self platformAdapter];
    [v10 setDelegate:self];

    v11 = [(AVPictureInPictureController *)self playerController];
    v12 = [v4 avkit_makePlayerControllerIfNeeded:v11];

    [(AVPictureInPictureController *)self setPlayerController:v12];
    v13 = [(AVPictureInPictureController *)self playerController];
    LOBYTE(v11) = objc_opt_respondsToSelector();

    if (v11)
    {
      v14 = [(AVPictureInPictureController *)self playerController];
      [v14 setPictureInPictureController:self];
    }

    v15 = [(AVPictureInPictureController *)self playerController];
    v16 = objc_opt_respondsToSelector();

    if (v16)
    {
      v17 = _AVLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = [(AVPictureInPictureController *)self contentSource];
        [v18 initialRenderSize];
        v19 = NSStringFromCGSize(v34);
        v29 = 136315394;
        v30 = "[AVPictureInPictureController _commonInitWithSource:]";
        v31 = 2112;
        v32 = v19;
        _os_log_impl(&dword_18B49C000, v17, OS_LOG_TYPE_DEFAULT, "%s Has initial render size: %@", &v29, 0x16u);
      }

      v20 = [(AVPictureInPictureController *)self _sbdlPlayerController];
      v21 = [(AVPictureInPictureController *)self contentSource];
      [v21 initialRenderSize];
      [v20 setEnqueuedBufferDimensions:?];
    }

    v22 = [(AVPictureInPictureController *)self observationController];
    v23 = [(AVPictureInPictureController *)self platformAdapter];
    v24 = [v22 startObserving:v23 keyPath:@"anyPictureInPictureActive" includeInitialValue:1 observationHandler:&__block_literal_global_17839];

    v25 = [(AVPictureInPictureController *)self observationController];
    v26 = [v25 startObserving:self keyPath:@"playerController.contentDimensions" includeInitialValue:0 observationHandler:&__block_literal_global_52];

    v27 = [(AVPictureInPictureController *)self observationController];
    [v27 startObservingNotificationForName:@"AVPlayerControllerPIPActivitySessionIdentifierDidChangeNotification" object:0 notificationCenter:0 observationHandler:&__block_literal_global_55];

    v28 = [(AVPictureInPictureController *)self observationController];
    [v28 startObservingNotificationForName:*MEMORY[0x1E69879C8] object:0 notificationCenter:0 observationHandler:&__block_literal_global_57];
  }
}

void __54__AVPictureInPictureController__commonInitWithSource___block_invoke_3(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v9 = a2;
  v5 = a4;
  v6 = [v9 playerController];
  v7 = [v6 player];
  v8 = [v5 object];

  if (v7 == v8)
  {
    [v9 _updateBackgroundPlaybackPolicyFromPlayerController];
  }
}

void __54__AVPictureInPictureController__commonInitWithSource___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v4 = [v2 playerController];
  v3 = [v4 pipActivitySessionIdentifier];
  [v2 setActivitySessionIdentifier:v3];
}

void __54__AVPictureInPictureController__commonInitWithSource___block_invoke_50(uint64_t a1, void *a2)
{
  v5 = a2;
  v2 = [v5 platformAdapter];
  v3 = [v2 status];

  if (!v3)
  {
    v4 = [v5 platformAdapter];
    [v4 _updateStatus];
  }
}

void __54__AVPictureInPictureController__commonInitWithSource___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if ([v2 isPictureInPictureActive])
  {
    [v2 setOtherPictureInPictureActive:0];
  }

  else
  {
    v3 = [v2 platformAdapter];
    [v2 setOtherPictureInPictureActive:{objc_msgSend(v3, "isAnyPictureInPictureActive")}];
  }

  v4 = [v2 platformAdapter];
  [v2 _setCanStopPictureInPicture:{objc_msgSend(v4, "isAnyPictureInPictureActive")}];

  v5 = _AVLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v2 isOtherPictureInPictureActive];
    v7 = "NO";
    v8 = 136315650;
    v9 = "[AVPictureInPictureController _commonInitWithSource:]_block_invoke";
    v11 = "owner.isOtherPictureInPictureActive";
    v10 = 2080;
    if (v6)
    {
      v7 = "YES";
    }

    v12 = 2080;
    v13 = v7;
    _os_log_impl(&dword_18B49C000, v5, OS_LOG_TYPE_DEFAULT, "%s %s %s", &v8, 0x20u);
  }
}

- (AVPictureInPictureController)initWithContentSource:(AVPictureInPictureControllerContentSource *)contentSource
{
  v5 = contentSource;
  if ([objc_opt_class() isPictureInPictureSupported])
  {
    v13.receiver = self;
    v13.super_class = AVPictureInPictureController;
    v6 = [(AVPictureInPictureController *)&v13 init];
    v7 = v6;
    if (v6)
    {
      v6->_wantsImmediateAssetInspection = 1;
      objc_storeStrong(&v6->_contentSource, contentSource);
      v7->_allowsPictureInPicturePlayback = 1;
      v8 = [(AVPictureInPictureControllerContentSource *)v5 source];
      v9 = objc_opt_respondsToSelector();

      if (v9)
      {
        v10 = [(AVPictureInPictureControllerContentSource *)v5 source];
        [(AVPictureInPictureController *)v7 _commonInitWithSource:v10];

        [(AVPictureInPictureController *)v7 _startObservationsForContentSource:v5];
        [(AVPictureInPictureController *)v7 setAllowsPictureInPicturePlayback:1];
        [(AVPictureInPictureController *)v7 _configureContentSourceForVideoCallsIfNeeded:v5];
        [(AVPictureInPictureController *)v7 _configureContentSourceForGenericViewIfNeeded:v5];
      }

      else
      {
        v7->_pictureInPicturePossible = 0;
      }
    }
  }

  else
  {

    v7 = 0;
  }

  v11 = v7;

  return v11;
}

- (AVPictureInPictureController)initWithSource:(id)a3
{
  v4 = a3;
  if ([objc_opt_class() isPictureInPictureSupported])
  {
    v8.receiver = self;
    v8.super_class = AVPictureInPictureController;
    v5 = [(AVPictureInPictureController *)&v8 init];
    v6 = v5;
    if (v5)
    {
      [(AVPictureInPictureController *)v5 _commonInitWithSource:v4];
    }
  }

  else
  {

    v6 = 0;
  }

  return v6;
}

- (AVPictureInPictureController)initWithPlayerLayer:(AVPlayerLayer *)playerLayer
{
  v4 = playerLayer;
  v5 = [[AVPictureInPictureControllerContentSource alloc] initWithPlayerLayer:v4];
  if (![objc_opt_class() isPictureInPictureSupported])
  {
    v6 = 0;
    goto LABEL_5;
  }

  v6 = [(AVPictureInPictureController *)self initWithContentSource:v5];
  if (v6)
  {
    v7 = v4;
    self = v6->_playerLayer;
    v6->_playerLayer = v7;
LABEL_5:
  }

  return v6;
}

- (AVPictureInPictureController)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D920];
  v5 = _AVMethodProem(self);
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [v3 raise:v4 format:{@"%@ is not a valid initializer. You must call -[%@ initWithPlayerLayer:].", v5, v7}];

  v8 = [MEMORY[0x1E69880E0] layer];
  v9 = [(AVPictureInPictureController *)self initWithPlayerLayer:v8];

  return v9;
}

+ (UIImage)pictureInPictureButtonStopImageCompatibleWithTraitCollection:(UITraitCollection *)traitCollection
{
  v4 = traitCollection;
  v5 = +[AVPictureInPicturePlatformAdapter stopPictureInPictureButtonImageName];
  v6 = [a1 _imageNamed:v5 compatibileWithTraitCollection:v4];

  return v6;
}

+ (UIImage)pictureInPictureButtonStartImageCompatibleWithTraitCollection:(UITraitCollection *)traitCollection
{
  v4 = traitCollection;
  v5 = +[AVPictureInPicturePlatformAdapter startPictureInPictureButtonImageName];
  v6 = [a1 _imageNamed:v5 compatibileWithTraitCollection:v4];

  return v6;
}

+ (id)_imageNamed:(id)a3 compatibileWithTraitCollection:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[AVPictureInPicturePlatformAdapter imageSymbolConfiguration];
  v8 = [v7 configurationByApplyingConfiguration:v7];
  v9 = MEMORY[0x1E69DCAB8];
  if (v7)
  {
    v10 = [MEMORY[0x1E69DCAB8] systemImageNamed:v5 withConfiguration:v8];
  }

  else
  {
    v11 = AVBundle();
    v10 = [v9 imageNamed:v5 inBundle:v11 compatibleWithTraitCollection:v6];
  }

  return v10;
}

@end