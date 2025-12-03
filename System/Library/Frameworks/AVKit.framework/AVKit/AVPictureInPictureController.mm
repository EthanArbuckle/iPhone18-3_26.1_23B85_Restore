@interface AVPictureInPictureController
+ (UIImage)pictureInPictureButtonStartImageCompatibleWithTraitCollection:(UITraitCollection *)traitCollection;
+ (UIImage)pictureInPictureButtonStopImageCompatibleWithTraitCollection:(UITraitCollection *)traitCollection;
+ (id)_imageNamed:(id)named compatibileWithTraitCollection:(id)collection;
- (AVPictureInPictureContentSource)source;
- (AVPictureInPictureController)init;
- (AVPictureInPictureController)initWithContentSource:(AVPictureInPictureControllerContentSource *)contentSource;
- (AVPictureInPictureController)initWithPlayerLayer:(AVPlayerLayer *)playerLayer;
- (AVPictureInPictureController)initWithSource:(id)source;
- (AVPictureInPictureControllerExtendedDelegate)_extendedDelegate;
- (AVPictureInPicturePrerollDelegate)prerollDelegate;
- (AVPictureInPictureViewController)pictureInPictureViewController;
- (AVPlayerLayer)playerLayer;
- (BOOL)_shouldPauseWhenExitingPictureInPicture;
- (id)_delegateIfRespondsToSelector:(SEL)selector;
- (id)_sbdlPlayerController;
- (id)activitySessionIdentifier;
- (id)delegate;
- (id)sampleBufferDisplayLayer;
- (int64_t)backgroundPlaybackPolicy;
- (void)_commonInitWithSource:(id)source;
- (void)_configureContentSourceForGenericViewIfNeeded:(id)needed;
- (void)_configureContentSourceForVideoCallsIfNeeded:(id)needed;
- (void)_invalidateContentSourceForVideoCallsIfNeeded:(id)needed;
- (void)_logContentSourceType:(id)type;
- (void)_startObservationsForContentSource:(id)source;
- (void)_startObservingPlayerLayerContentSource:(id)source;
- (void)_startObservingSampleBufferDisplayLayerContentSource:(id)source;
- (void)_stopPictureInPictureAndRestoreUserInterface:(BOOL)interface;
- (void)_updateBackgroundPlaybackPolicyFromPlayerController;
- (void)_updateEnqueuedBufferDimensions;
- (void)contentSourceVideoRectInWindowChanged;
- (void)dealloc;
- (void)invalidate;
- (void)invalidatePlaybackState;
- (void)pictureInPicturePlatformAdapter:(id)adapter failedToStartError:(id)error;
- (void)pictureInPicturePlatformAdapter:(id)adapter handlePlaybackCommand:(int64_t)command;
- (void)pictureInPicturePlatformAdapter:(id)adapter prepareToStopForRestoringUserInterface:(id)interface;
- (void)pictureInPicturePlatformAdapter:(id)adapter statusDidChange:(int64_t)change fromStatus:(int64_t)status;
- (void)pictureInPicturePlatformAdapterBeginReducingResourcesForEligibleOffScreenState;
- (void)pictureInPicturePlatformAdapterEndReducingResourcesForEligibleOffScreenState;
- (void)pictureInPicturePlatformAdapterPrepareToStopForDismissal:(id)dismissal;
- (void)reloadPrerollAttributes;
- (void)sampleBufferDisplayLayerDidAppear;
- (void)sampleBufferDisplayLayerDidDisappear;
- (void)sampleBufferDisplayLayerRenderSizeDidChangeToSize:(CGSize)size;
- (void)setActivitySessionIdentifier:(id)identifier;
- (void)setAllowsPictureInPictureFromInlineWhenEnteringBackground:(BOOL)background;
- (void)setAllowsPictureInPicturePlayback:(BOOL)playback;
- (void)setBackgroundPlaybackPolicy:(int64_t)policy;
- (void)setCanPausePlaybackWhenClosingPictureInPicture:(BOOL)picture;
- (void)setCanStartAutomaticallyWhenEnteringBackground:(BOOL)background;
- (void)setContentSource:(AVPictureInPictureControllerContentSource *)contentSource;
- (void)setControlsStyle:(int64_t)style;
- (void)setMicrophoneEnabled:(BOOL)enabled;
- (void)setOtherPictureInPictureActive:(BOOL)active;
- (void)setPictureInPictureActive:(BOOL)active;
- (void)setPictureInPicturePossible:(BOOL)possible;
- (void)setPlayerController:(id)controller;
- (void)setRequiresLinearPlayback:(BOOL)requiresLinearPlayback;
- (void)startObservingPlayerController:(id)controller;
- (void)startPictureInPicture;
- (void)stopObservingPlayerController:(id)controller;
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
  contentSource = [(AVPictureInPictureController *)self contentSource];
  sampleBufferDisplayLayer = [contentSource sampleBufferDisplayLayer];

  v4 = sampleBufferDisplayLayer;
  if (sampleBufferDisplayLayer)
  {
    [sampleBufferDisplayLayer videoRect];
    v6 = v5;
    v8 = v7;
    _sbdlPlayerController = [(AVPictureInPictureController *)self _sbdlPlayerController];
    [_sbdlPlayerController setEnqueuedBufferDimensions:{v6, v8}];

    [(AVPictureInPictureController *)self contentSourceVideoRectInWindowChanged];
    v4 = sampleBufferDisplayLayer;
  }
}

- (void)_startObservingSampleBufferDisplayLayerContentSource:(id)source
{
  sourceCopy = source;
  observationController = [(AVPictureInPictureController *)self observationController];
  [observationController startObservingNotificationForName:*MEMORY[0x1E6987AF8] object:sourceCopy notificationCenter:0 observationHandler:&__block_literal_global_118_17761];

  observationController2 = [(AVPictureInPictureController *)self observationController];
  [observationController2 startObservingNotificationForName:*MEMORY[0x1E6987B00] object:sourceCopy notificationCenter:0 observationHandler:&__block_literal_global_120_17762];

  [(AVPictureInPictureController *)self _updateEnqueuedBufferDimensions];
}

- (void)_updateBackgroundPlaybackPolicyFromPlayerController
{
  playerController = [(AVPictureInPictureController *)self playerController];
  player = [playerController player];
  -[AVPictureInPictureController setBackgroundPlaybackPolicy:](self, "setBackgroundPlaybackPolicy:", [player audiovisualBackgroundPlaybackPolicy]);
}

- (void)_startObservingPlayerLayerContentSource:(id)source
{
  v10[2] = *MEMORY[0x1E69E9840];
  sourceCopy = source;
  observationController = [(AVPictureInPictureController *)self observationController];
  v6 = [observationController startObserving:sourceCopy keyPath:@"player" includeInitialValue:0 observationHandler:&__block_literal_global_107_17766];

  observationController2 = [(AVPictureInPictureController *)self observationController];
  v10[0] = @"videoRect";
  v10[1] = @"readyForDisplay";
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:2];
  v9 = [observationController2 startObserving:sourceCopy keyPaths:v8 includeInitialValue:1 observationHandler:&__block_literal_global_116_17768];
}

void __72__AVPictureInPictureController__startObservingPlayerLayerContentSource___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v5 = [v2 source];
  v3 = [v2 playerController];
  v4 = [v5 avkit_makePlayerControllerIfNeeded:v3];
  [v2 setPlayerController:v4];
}

- (void)_startObservationsForContentSource:(id)source
{
  sourceCopy = source;
  source = [sourceCopy source];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(AVPictureInPictureController *)self _startObservingPlayerLayerContentSource:source];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && ([sourceCopy hasInitialRenderSize] & 1) == 0)
    {
      [(AVPictureInPictureController *)self _startObservingSampleBufferDisplayLayerContentSource:source];
    }
  }
}

- (void)_stopPictureInPictureAndRestoreUserInterface:(BOOL)interface
{
  interfaceCopy = interface;
  platformAdapter = [(AVPictureInPictureController *)self platformAdapter];
  if ([platformAdapter status] == 3)
  {
  }

  else
  {
    platformAdapter2 = [(AVPictureInPictureController *)self platformAdapter];
    status = [platformAdapter2 status];

    if (status != 4)
    {
      return;
    }
  }

  platformAdapter3 = [(AVPictureInPictureController *)self platformAdapter];
  [platformAdapter3 stopPictureInPictureAndRestoreUserInterface:interfaceCopy];
}

- (BOOL)_shouldPauseWhenExitingPictureInPicture
{
  platformAdapter = [(AVPictureInPictureController *)self platformAdapter];
  playerController = [platformAdapter playerController];
  v5 = ([playerController isExternalPlaybackActive] & 1) == 0 && -[AVPictureInPictureController canPausePlaybackWhenClosingPictureInPicture](self, "canPausePlaybackWhenClosingPictureInPicture");

  return v5;
}

- (id)_delegateIfRespondsToSelector:(SEL)selector
{
  delegate = [(AVPictureInPictureController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    delegate2 = [(AVPictureInPictureController *)self delegate];
  }

  else
  {
    delegate2 = 0;
  }

  return delegate2;
}

- (void)_configureContentSourceForGenericViewIfNeeded:(id)needed
{
  neededCopy = needed;
  activeContentViewController = [neededCopy activeContentViewController];

  if (activeContentViewController)
  {
    activeContentViewController2 = [neededCopy activeContentViewController];
    [activeContentViewController2 setContentSource:neededCopy];

    [(AVPictureInPictureController *)self setControlsStyle:0];
    platformAdapter = [(AVPictureInPictureController *)self platformAdapter];
    [platformAdapter _updateStatus];
  }
}

- (void)_configureContentSourceForVideoCallsIfNeeded:(id)needed
{
  neededCopy = needed;
  activeVideoCallContentViewController = [neededCopy activeVideoCallContentViewController];

  if (activeVideoCallContentViewController)
  {
    activeVideoCallContentViewController2 = [neededCopy activeVideoCallContentViewController];
    [activeVideoCallContentViewController2 setPictureInPictureController:self];

    activeVideoCallContentViewController3 = [neededCopy activeVideoCallContentViewController];
    [activeVideoCallContentViewController3 setContentSource:neededCopy];

    activeVideoCallContentViewController4 = [neededCopy activeVideoCallContentViewController];
    [activeVideoCallContentViewController4 startObservingSourceView];

    [(AVPictureInPictureController *)self setControlsStyle:2];
  }
}

- (void)_invalidateContentSourceForVideoCallsIfNeeded:(id)needed
{
  neededCopy = needed;
  activeVideoCallContentViewController = [neededCopy activeVideoCallContentViewController];

  if (activeVideoCallContentViewController)
  {
    activeVideoCallContentViewController2 = [neededCopy activeVideoCallContentViewController];
    [activeVideoCallContentViewController2 stopObservingSourceView];
  }
}

- (id)_sbdlPlayerController
{
  contentSource = [(AVPictureInPictureController *)self contentSource];
  sampleBufferDisplayLayer = [contentSource sampleBufferDisplayLayer];
  playerController = [(AVPictureInPictureController *)self playerController];
  v6 = [sampleBufferDisplayLayer avkit_makePlayerControllerIfNeeded:playerController];

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

- (void)sampleBufferDisplayLayerRenderSizeDidChangeToSize:(CGSize)size
{
  height = size.height;
  width = size.width;
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

    _sbdlPlayerController = [(AVPictureInPictureController *)self _sbdlPlayerController];
    [_sbdlPlayerController setEnqueuedBufferDimensions:{width, height}];

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
  _sbdlPlayerController = [(AVPictureInPictureController *)self _sbdlPlayerController];
  [_sbdlPlayerController invalidatePlaybackState];
}

- (void)setContentSource:(AVPictureInPictureControllerContentSource *)contentSource
{
  v5 = contentSource;
  if (self->_contentSource != v5)
  {
    v28 = v5;
    observationController = [(AVPictureInPictureController *)self observationController];
    [observationController stopAllObservation];

    sampleBufferDisplayLayer = [(AVPictureInPictureControllerContentSource *)self->_contentSource sampleBufferDisplayLayer];
    [sampleBufferDisplayLayer avkit_removePictureInPicturePlayerController];

    [(AVPictureInPictureController *)self _invalidateContentSourceForVideoCallsIfNeeded:self->_contentSource];
    [(AVPictureInPictureController *)self _configureContentSourceForVideoCallsIfNeeded:self->_contentSource];
    [(AVPictureInPictureController *)self _configureContentSourceForGenericViewIfNeeded:self->_contentSource];
    if ([(AVPictureInPictureController *)self wantsResourceReduction])
    {
      source = [(AVPictureInPictureController *)self source];
      pictureInPictureViewController = [(AVPictureInPictureController *)self pictureInPictureViewController];
      playerController = [(AVPictureInPictureController *)self playerController];
      [source avkit_endReducingResourcesForPictureInPictureViewController:pictureInPictureViewController playerController:playerController];
    }

    objc_storeStrong(&self->_contentSource, contentSource);
    source2 = [(AVPictureInPictureControllerContentSource *)v28 source];
    objc_storeWeak(&self->_source, source2);

    WeakRetained = objc_loadWeakRetained(&self->_source);
    platformAdapter = [(AVPictureInPictureController *)self platformAdapter];
    [platformAdapter setSource:WeakRetained];

    source3 = [(AVPictureInPictureController *)self source];
    playerController2 = [(AVPictureInPictureController *)self playerController];
    v16 = [source3 avkit_makePlayerControllerIfNeeded:playerController2];

    if (objc_opt_respondsToSelector())
    {
      contentSource = [(AVPictureInPictureController *)self contentSource];
      [contentSource initialRenderSize];
      [v16 setEnqueuedBufferDimensions:?];
    }

    [(AVPictureInPictureController *)self setPlayerController:v16];
    if ([(AVPictureInPictureController *)self wantsResourceReduction])
    {
      source4 = [(AVPictureInPictureController *)self source];
      pictureInPictureViewController2 = [(AVPictureInPictureController *)self pictureInPictureViewController];
      playerController3 = [(AVPictureInPictureController *)self playerController];
      [source4 avkit_beginReducingResourcesForPictureInPictureViewController:pictureInPictureViewController2 playerController:playerController3];
    }

    v21 = [[AVObservationController alloc] initWithOwner:self];
    observationController = self->_observationController;
    self->_observationController = v21;

    _sbdlPlayerController = [(AVPictureInPictureController *)self _sbdlPlayerController];
    [_sbdlPlayerController setPictureInPictureController:self];

    [(AVPictureInPictureController *)self _startObservationsForContentSource:v28];
    observationController2 = [(AVPictureInPictureController *)self observationController];
    platformAdapter2 = [(AVPictureInPictureController *)self platformAdapter];
    v26 = [observationController2 startObserving:platformAdapter2 keyPath:@"anyPictureInPictureActive" includeInitialValue:1 observationHandler:&__block_literal_global_97];

    observationController3 = [(AVPictureInPictureController *)self observationController];
    [observationController3 startObservingNotificationForName:@"AVPlayerControllerPIPActivitySessionIdentifierDidChangeNotification" object:0 notificationCenter:0 observationHandler:&__block_literal_global_100];

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

- (void)pictureInPicturePlatformAdapterPrepareToStopForDismissal:(id)dismissal
{
  if ([(AVPictureInPictureController *)self _shouldPauseWhenExitingPictureInPicture])
  {
    platformAdapter = [(AVPictureInPictureController *)self platformAdapter];
    playerController = [platformAdapter playerController];
    v6 = objc_opt_respondsToSelector();

    platformAdapter2 = [(AVPictureInPictureController *)self platformAdapter];
    playerController2 = [platformAdapter2 playerController];
    v8 = playerController2;
    if (v6)
    {
      [playerController2 pauseForAllCoordinatedPlaybackParticipants:0];
    }

    else
    {
      [playerController2 setPlaying:0];
    }
  }
}

- (void)pictureInPicturePlatformAdapter:(id)adapter statusDidChange:(int64_t)change fromStatus:(int64_t)status
{
  v48 = *MEMORY[0x1E69E9840];
  sourceIfRetainedDuringPictureInPicturePlayback = [(AVPictureInPictureController *)self sourceIfRetainedDuringPictureInPicturePlayback];
  v9 = _AVLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v43 = "[AVPictureInPictureController pictureInPicturePlatformAdapter:statusDidChange:fromStatus:]";
    v44 = 2048;
    statusCopy = status;
    v46 = 2048;
    changeCopy = change;
    _os_log_impl(&dword_18B49C000, v9, OS_LOG_TYPE_DEFAULT, "%s old: %ld --> new: %ld", buf, 0x20u);
  }

  v10 = change - 3;
  pictureInPictureWasStartedWhenEnteringBackground = change == 4;
  if (change != 4 && v10 <= 3)
  {
    pictureInPictureWasStartedWhenEnteringBackground = [(AVPictureInPictureController *)self pictureInPictureWasStartedWhenEnteringBackground];
    if ((((change > 0) ^ [(AVPictureInPictureController *)self isPictureInPicturePossible]) & 1) == 0)
    {
LABEL_9:
      if ((change == 5) == [(AVPictureInPictureController *)self isPictureInPictureSuspended])
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

LABEL_8:
    [(AVPictureInPictureController *)self setPictureInPicturePossible:change > 0];
    playerController = [(AVPictureInPictureController *)self playerController];
    [playerController setCanTogglePictureInPicture:change > 0];

    goto LABEL_9;
  }

  if (((change > 0) ^ [(AVPictureInPictureController *)self isPictureInPicturePossible]))
  {
    goto LABEL_8;
  }

  if (((change == 5) ^ [(AVPictureInPictureController *)self isPictureInPictureSuspended]))
  {
LABEL_10:
    [(AVPictureInPictureController *)self setPictureInPictureSuspended:change == 5];
  }

LABEL_11:
  if (v10 <= 3)
  {
    [(AVPictureInPictureController *)self setOtherPictureInPictureActive:0];
  }

  if (v10 < 4 != [(AVPictureInPictureController *)self isPictureInPictureActive])
  {
    [(AVPictureInPictureController *)self setPictureInPictureActive:v10 < 4];
    playerController2 = [(AVPictureInPictureController *)self playerController];
    [playerController2 setPictureInPictureActive:v10 < 4];
  }

  if (v10 >= 4)
  {
    platformAdapter = [(AVPictureInPictureController *)self platformAdapter];
    -[AVPictureInPictureController setOtherPictureInPictureActive:](self, "setOtherPictureInPictureActive:", [platformAdapter isAnyPictureInPictureActive]);
  }

  if (pictureInPictureWasStartedWhenEnteringBackground != [(AVPictureInPictureController *)self pictureInPictureWasStartedWhenEnteringBackground])
  {
    [(AVPictureInPictureController *)self setPictureInPictureWasStartedWhenEnteringBackground:pictureInPictureWasStartedWhenEnteringBackground];
  }

  retainsSourceDuringPictureInPicturePlayback = [(AVPictureInPictureController *)self retainsSourceDuringPictureInPicturePlayback];
  v16 = 0;
  v17 = 1;
  if (change <= 2)
  {
    if (change < 2)
    {
      v16 = 0;
      v19 = 0;
      retainsSourceDuringPictureInPicturePlayback = 0;
    }

    else if (change == 2)
    {
      v20 = [(AVPictureInPictureController *)self _delegateIfRespondsToSelector:sel_pictureInPictureControllerWillStartPictureInPicture_];
      [v20 pictureInPictureControllerWillStartPictureInPicture:self];

      v40 = @"AVPictureInPictureControllerPlaybackStateIsPlayingKey";
      v21 = MEMORY[0x1E696AD98];
      playerController3 = [(AVPictureInPictureController *)self playerController];
      v23 = [v21 numberWithBool:{objc_msgSend(playerController3, "isPlaying")}];
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

  else if (change > 5)
  {
    if (change == 6)
    {
      v27 = [(AVPictureInPictureController *)self _delegateIfRespondsToSelector:sel_pictureInPictureControllerWillStopPictureInPicture_];
      [v27 pictureInPictureControllerWillStopPictureInPicture:self];

      sourceIfRetainedDuringPictureInPicturePlayback2 = [(AVPictureInPictureController *)self sourceIfRetainedDuringPictureInPicturePlayback];
      retainsSourceDuringPictureInPicturePlayback = sourceIfRetainedDuringPictureInPicturePlayback2 != 0;

      v16 = 0;
      v17 = 0;
      v19 = @"AVPictureInPictureControllerWillStopNotification";
    }

    else
    {
      v19 = 0;
      if (change == 7)
      {
        v24 = [(AVPictureInPictureController *)self _delegateIfRespondsToSelector:sel_pictureInPictureControllerDidStopPictureInPicture_];
        [v24 pictureInPictureControllerDidStopPictureInPicture:self];

        sourceIfRetainedDuringPictureInPicturePlayback3 = [(AVPictureInPictureController *)self sourceIfRetainedDuringPictureInPicturePlayback];
        retainsSourceDuringPictureInPicturePlayback = sourceIfRetainedDuringPictureInPicturePlayback3 != 0;

        v16 = 0;
        v17 = 0;
        v19 = @"AVPictureInPictureControllerDidStopNotification";
      }
    }
  }

  else if (v10 >= 2)
  {
    v19 = 0;
    if (change == 5)
    {
      sourceIfRetainedDuringPictureInPicturePlayback4 = [(AVPictureInPictureController *)self sourceIfRetainedDuringPictureInPicturePlayback];
      retainsSourceDuringPictureInPicturePlayback = sourceIfRetainedDuringPictureInPicturePlayback4 != 0;

      v16 = 0;
      v19 = 0;
    }
  }

  else
  {
    if (status == 2)
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
    if (retainsSourceDuringPictureInPicturePlayback)
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
    statusCopy = "shouldRetainSource";
    v46 = 2080;
    changeCopy = v30;
    _os_log_impl(&dword_18B49C000, v29, OS_LOG_TYPE_DEFAULT, "%s %s %s", buf, 0x20u);
  }

  if (retainsSourceDuringPictureInPicturePlayback)
  {
    source = [(AVPictureInPictureController *)self source];
    [(AVPictureInPictureController *)self setSourceIfRetainedDuringPictureInPicturePlayback:source];
  }

  else
  {
    [(AVPictureInPictureController *)self setSourceIfRetainedDuringPictureInPicturePlayback:0];
  }

  v32 = _AVLog();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    sourceIfRetainedDuringPictureInPicturePlayback5 = [(AVPictureInPictureController *)self sourceIfRetainedDuringPictureInPicturePlayback];
    if (sourceIfRetainedDuringPictureInPicturePlayback5)
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
    statusCopy = "self.sourceIfRetainedDuringPictureInPicturePlayback == nil";
    v46 = 2080;
    changeCopy = v34;
    _os_log_impl(&dword_18B49C000, v32, OS_LOG_TYPE_DEFAULT, "%s %s %s", buf, 0x20u);
  }

  if ((v17 & 1) == 0)
  {
    source2 = [(AVPictureInPictureController *)self source];

    if (source2)
    {
      source3 = [(AVPictureInPictureController *)self source];
      v37 = [MEMORY[0x1E695DF90] dictionaryWithObject:source3 forKey:@"AVPictureInPictureControllerContentSourceKey"];
      v38 = v37;
      if (v16)
      {
        [v37 addEntriesFromDictionary:v16];
      }

      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter postNotificationName:v19 object:self userInfo:v38];
    }
  }
}

- (void)pictureInPicturePlatformAdapter:(id)adapter prepareToStopForRestoringUserInterface:(id)interface
{
  v14 = *MEMORY[0x1E69E9840];
  interfaceCopy = interface;
  v6 = _AVLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315394;
    v11 = "[AVPictureInPictureController pictureInPicturePlatformAdapter:prepareToStopForRestoringUserInterface:]";
    v12 = 1024;
    v13 = 690;
    _os_log_impl(&dword_18B49C000, v6, OS_LOG_TYPE_DEFAULT, "%s %d", &v10, 0x12u);
  }

  delegate = [(AVPictureInPictureController *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    delegate2 = [(AVPictureInPictureController *)self delegate];
    [delegate2 pictureInPictureController:self restoreUserInterfaceForPictureInPictureStopWithCompletionHandler:interfaceCopy];
  }

  else
  {
    interfaceCopy[2](interfaceCopy, 1);
  }
}

- (void)pictureInPicturePlatformAdapterEndReducingResourcesForEligibleOffScreenState
{
  self->_wantsResourceReduction = 0;
  source = [(AVPictureInPictureController *)self source];
  pictureInPictureViewController = [(AVPictureInPictureController *)self pictureInPictureViewController];
  playerController = [(AVPictureInPictureController *)self playerController];
  [source avkit_endReducingResourcesForPictureInPictureViewController:pictureInPictureViewController playerController:playerController];
}

- (void)pictureInPicturePlatformAdapterBeginReducingResourcesForEligibleOffScreenState
{
  self->_wantsResourceReduction = 1;
  source = [(AVPictureInPictureController *)self source];
  pictureInPictureViewController = [(AVPictureInPictureController *)self pictureInPictureViewController];
  playerController = [(AVPictureInPictureController *)self playerController];
  [source avkit_beginReducingResourcesForPictureInPictureViewController:pictureInPictureViewController playerController:playerController];
}

- (void)pictureInPicturePlatformAdapter:(id)adapter handlePlaybackCommand:(int64_t)command
{
  v40[1] = *MEMORY[0x1E69E9840];
  adapterCopy = adapter;
  if (command <= 5)
  {
    if (command <= 2)
    {
      if (command == 1)
      {
        playerController = [(AVPictureInPictureController *)self playerController];
        isPlaying = [playerController isPlaying];

        if (isPlaying)
        {
          goto LABEL_34;
        }

        playerController2 = [(AVPictureInPictureController *)self playerController];
        [playerController2 togglePlaybackEvenWhenInBackground:self];

        v25 = MEMORY[0x1E696AD98];
        playerController3 = [(AVPictureInPictureController *)self playerController];
        playerController12 = [v25 numberWithBool:{objc_msgSend(playerController3, "isPlaying")}];

        defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
        v39 = @"AVPictureInPictureControllerPlaybackStateIsPlayingKey";
        v40[0] = playerController12;
        v19 = MEMORY[0x1E695DF20];
        v20 = v40;
        v21 = &v39;
      }

      else
      {
        if (command != 2)
        {
          goto LABEL_34;
        }

        playerController4 = [(AVPictureInPictureController *)self playerController];
        isPlaying2 = [playerController4 isPlaying];

        if (!isPlaying2)
        {
          goto LABEL_34;
        }

        playerController5 = [(AVPictureInPictureController *)self playerController];
        [playerController5 togglePlaybackEvenWhenInBackground:self];

        v16 = MEMORY[0x1E696AD98];
        playerController6 = [(AVPictureInPictureController *)self playerController];
        playerController12 = [v16 numberWithBool:{objc_msgSend(playerController6, "isPlaying")}];

        defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
        v37 = @"AVPictureInPictureControllerPlaybackStateIsPlayingKey";
        v38 = playerController12;
        v19 = MEMORY[0x1E695DF20];
        v20 = &v38;
        v21 = &v37;
      }

      v27 = [v19 dictionaryWithObjects:v20 forKeys:v21 count:1];
      [defaultCenter postNotificationName:@"AVPictureInPictureControllerUserPlaybackStateDidChangeNotification" object:self userInfo:v27];

      goto LABEL_33;
    }

    if (command == 3)
    {
      playerController7 = [(AVPictureInPictureController *)self playerController];
      -[AVPictureInPictureController setWasPlayingWhenPictureInPictureInterruptionBegan:](self, "setWasPlayingWhenPictureInPictureInterruptionBegan:", [playerController7 isPlaying]);

      playerController8 = [(AVPictureInPictureController *)self playerController];
      v29 = playerController8;
      v30 = 1;
    }

    else
    {
      if (command != 4)
      {
        playerController9 = [(AVPictureInPictureController *)self playerController];
        [playerController9 setPictureInPictureInterrupted:0];

        if ([(AVPictureInPictureController *)self wasPlayingWhenPictureInPictureInterruptionBegan])
        {
          playerController10 = [(AVPictureInPictureController *)self playerController];
          [playerController10 setPlaying:1];

          [(AVPictureInPictureController *)self setWasPlayingWhenPictureInPictureInterruptionBegan:0];
        }

        goto LABEL_34;
      }

      playerController8 = [(AVPictureInPictureController *)self playerController];
      v29 = playerController8;
      v30 = 0;
    }

    [playerController8 setPictureInPictureInterrupted:v30];
LABEL_31:

    goto LABEL_34;
  }

  if (command <= 8)
  {
    if (command == 6)
    {
      playerController11 = [(AVPictureInPictureController *)self playerController];
      v29 = playerController11;
      v32 = 1;
    }

    else
    {
      if (command != 7)
      {
        playerController12 = [(AVPictureInPictureController *)self playerController];
        [playerController12 togglePlaybackEvenWhenInBackground:self];
LABEL_33:

        goto LABEL_34;
      }

      playerController11 = [(AVPictureInPictureController *)self playerController];
      v29 = playerController11;
      v32 = 0;
    }

    [playerController11 setMuted:v32];
    goto LABEL_31;
  }

  switch(command)
  {
    case 9:
      playerController12 = [(AVPictureInPictureController *)self prerollDelegate];
      [playerController12 pictureInPictureControllerSkipPreroll:self];
      goto LABEL_33;
    case 10:
      delegate = [(AVPictureInPictureController *)self delegate];
      objc_storeWeak(&self->__extendedDelegate, delegate);

      _extendedDelegate = [(AVPictureInPictureController *)self _extendedDelegate];
      v35 = objc_opt_respondsToSelector();

      if (v35)
      {
        playerController12 = [(AVPictureInPictureController *)self _extendedDelegate];
        [playerController12 pictureInPictureControllerDidSkipBackwardInPictureInPicture:self];
        goto LABEL_33;
      }

      break;
    case 11:
      delegate2 = [(AVPictureInPictureController *)self delegate];
      objc_storeWeak(&self->__extendedDelegate, delegate2);

      _extendedDelegate2 = [(AVPictureInPictureController *)self _extendedDelegate];
      v12 = objc_opt_respondsToSelector();

      if (v12)
      {
        playerController12 = [(AVPictureInPictureController *)self _extendedDelegate];
        [playerController12 pictureInPictureControllerDidSkipForwardInPictureInPicture:self];
        goto LABEL_33;
      }

      break;
  }

LABEL_34:
}

- (void)pictureInPicturePlatformAdapter:(id)adapter failedToStartError:(id)error
{
  errorCopy = error;
  v6 = [(AVPictureInPictureController *)self _delegateIfRespondsToSelector:sel_pictureInPictureController_failedToStartPictureInPictureWithError_];
  [v6 pictureInPictureController:self failedToStartPictureInPictureWithError:errorCopy];
}

- (void)setBackgroundPlaybackPolicy:(int64_t)policy
{
  if (policy <= 1)
  {
    policyCopy = 1;
  }

  else
  {
    policyCopy = policy;
  }

  platformAdapter = [(AVPictureInPictureController *)self platformAdapter];
  [platformAdapter setBackgroundPlaybackPolicy:policyCopy];
}

- (int64_t)backgroundPlaybackPolicy
{
  platformAdapter = [(AVPictureInPictureController *)self platformAdapter];
  backgroundPlaybackPolicy = [platformAdapter backgroundPlaybackPolicy];

  return backgroundPlaybackPolicy;
}

- (void)setActivitySessionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  platformAdapter = [(AVPictureInPictureController *)self platformAdapter];
  [platformAdapter setActivitySessionIdentifier:identifierCopy];
}

- (id)activitySessionIdentifier
{
  platformAdapter = [(AVPictureInPictureController *)self platformAdapter];
  activitySessionIdentifier = [platformAdapter activitySessionIdentifier];

  return activitySessionIdentifier;
}

- (void)reloadPrerollAttributes
{
  prerollDelegate = [(AVPictureInPictureController *)self prerollDelegate];
  v3 = [prerollDelegate pictureInPictureControllerPrerollAttributes:self];
  platformAdapter = [(AVPictureInPictureController *)self platformAdapter];
  [platformAdapter setPrerollAttributes:v3];
}

- (id)sampleBufferDisplayLayer
{
  source = [(AVPictureInPictureController *)self source];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    source2 = [(AVPictureInPictureController *)self source];
  }

  else
  {
    source2 = 0;
  }

  return source2;
}

- (void)stopObservingPlayerController:(id)controller
{
  playerControllerIsPlayingObservationToken = [(AVPictureInPictureController *)self playerControllerIsPlayingObservationToken];

  if (playerControllerIsPlayingObservationToken)
  {
    observationController = [(AVPictureInPictureController *)self observationController];
    playerControllerIsPlayingObservationToken2 = [(AVPictureInPictureController *)self playerControllerIsPlayingObservationToken];
    [observationController stopObserving:playerControllerIsPlayingObservationToken2];

    [(AVPictureInPictureController *)self setPlayerControllerIsPlayingObservationToken:0];
  }
}

- (void)startObservingPlayerController:(id)controller
{
  controllerCopy = controller;
  if (controllerCopy)
  {
    observationController = [(AVPictureInPictureController *)self observationController];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __63__AVPictureInPictureController_startObservingPlayerController___block_invoke;
    v7[3] = &unk_1E72087E0;
    v8 = controllerCopy;
    v6 = [observationController startObserving:self keyPath:@"playerController.playing" includeInitialValue:1 observationHandler:v7];
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

- (void)setPlayerController:(id)controller
{
  controllerCopy = controller;
  playerController = self->_playerController;
  v12 = controllerCopy;
  if (playerController != controllerCopy)
  {
    v7 = playerController;
    isPictureInPictureInterrupted = [(AVPlayerController *)v7 isPictureInPictureInterrupted];
    [(AVPictureInPictureController *)self stopObservingPlayerController:v7];
    objc_storeStrong(&self->_playerController, controller);
    [(AVPictureInPictureController *)self startObservingPlayerController:v12];
    if ([(AVPictureInPictureController *)self wantsImmediateAssetInspection])
    {
      [(AVPlayerController *)v12 setInspectionSuspended:0];
    }

    [(AVPlayerController *)v12 setAllowsPictureInPicturePlayback:[(AVPictureInPictureController *)self allowsPictureInPicturePlayback]];
    [(AVPlayerController *)v12 setPictureInPictureActive:[(AVPictureInPictureController *)self isPictureInPictureActive]];
    [(AVPlayerController *)v12 setPictureInPictureInterrupted:isPictureInPictureInterrupted];
    [(AVPlayerController *)v12 setCanTogglePictureInPicture:[(AVPictureInPictureController *)self isPictureInPicturePossible]];
    platformAdapter = [(AVPictureInPictureController *)self platformAdapter];
    [platformAdapter setPlayerController:v12];

    platformAdapter2 = [(AVPictureInPictureController *)self platformAdapter];
    pictureInPictureViewController = [platformAdapter2 pictureInPictureViewController];
    [pictureInPictureViewController setPlayerController:v12];

    [(AVPictureInPictureController *)self _updateBackgroundPlaybackPolicyFromPlayerController];
  }
}

- (void)setPictureInPicturePossible:(BOOL)possible
{
  possibleCopy = possible;
  v14 = *MEMORY[0x1E69E9840];
  v5 = _AVLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = "NO";
    v8 = 136315650;
    v9 = "[AVPictureInPictureController setPictureInPicturePossible:]";
    v11 = "pictureInPicturePossible";
    v10 = 2080;
    if (possibleCopy)
    {
      v6 = "YES";
    }

    v12 = 2080;
    v13 = v6;
    _os_log_impl(&dword_18B49C000, v5, OS_LOG_TYPE_DEFAULT, "%s %s %s", &v8, 0x20u);
  }

  self->_pictureInPicturePossible = possibleCopy;
  playerController = [(AVPictureInPictureController *)self playerController];
  [playerController setCanTogglePictureInPicture:possibleCopy];

  if (!possibleCopy)
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

    platformAdapter = [(AVPictureInPictureController *)self platformAdapter];
    [platformAdapter setRequiresLinearPlayback:v3];
  }
}

- (void)setCanPausePlaybackWhenClosingPictureInPicture:(BOOL)picture
{
  v14 = *MEMORY[0x1E69E9840];
  if (self->_canPausePlaybackWhenClosingPictureInPicture != picture)
  {
    pictureCopy = picture;
    v5 = _AVLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = "NO";
      v8 = 136315650;
      v9 = "[AVPictureInPictureController setCanPausePlaybackWhenClosingPictureInPicture:]";
      v11 = "canPausePlaybackWhenClosingPictureInPicture";
      v10 = 2080;
      if (pictureCopy)
      {
        v6 = "YES";
      }

      v12 = 2080;
      v13 = v6;
      _os_log_impl(&dword_18B49C000, v5, OS_LOG_TYPE_DEFAULT, "%s %s %s", &v8, 0x20u);
    }

    self->_canPausePlaybackWhenClosingPictureInPicture = pictureCopy;
    platformAdapter = [(AVPictureInPictureController *)self platformAdapter];
    [platformAdapter setCanPausePlaybackWhenClosingPictureInPicture:pictureCopy];
  }
}

- (void)setCanStartAutomaticallyWhenEnteringBackground:(BOOL)background
{
  v14 = *MEMORY[0x1E69E9840];
  if (self->_canStartAutomaticallyWhenEnteringBackground != background)
  {
    backgroundCopy = background;
    self->_canStartAutomaticallyWhenEnteringBackground = background;
    v5 = _AVLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = "NO";
      v8 = 136315650;
      v9 = "[AVPictureInPictureController setCanStartAutomaticallyWhenEnteringBackground:]";
      v11 = "canStartAutomaticallyWhenEnteringBackground";
      v10 = 2080;
      if (backgroundCopy)
      {
        v6 = "YES";
      }

      v12 = 2080;
      v13 = v6;
      _os_log_impl(&dword_18B49C000, v5, OS_LOG_TYPE_DEFAULT, "%s %s %s", &v8, 0x20u);
    }

    platformAdapter = [(AVPictureInPictureController *)self platformAdapter];
    [platformAdapter setCanStartAutomaticallyWhenEnteringBackground:backgroundCopy];
  }
}

- (void)setMicrophoneEnabled:(BOOL)enabled
{
  v14 = *MEMORY[0x1E69E9840];
  if (self->_microphoneEnabled != enabled)
  {
    enabledCopy = enabled;
    self->_microphoneEnabled = enabled;
    v5 = _AVLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = "NO";
      v8 = 136315650;
      v9 = "[AVPictureInPictureController setMicrophoneEnabled:]";
      v11 = "microphoneEnabled";
      v10 = 2080;
      if (enabledCopy)
      {
        v6 = "YES";
      }

      v12 = 2080;
      v13 = v6;
      _os_log_impl(&dword_18B49C000, v5, OS_LOG_TYPE_DEFAULT, "%s %s %s", &v8, 0x20u);
    }

    platformAdapter = [(AVPictureInPictureController *)self platformAdapter];
    [platformAdapter setMicrophoneEnabled:enabledCopy];
  }
}

- (void)setControlsStyle:(int64_t)style
{
  self->_controlsStyle = style;
  platformAdapter = [(AVPictureInPictureController *)self platformAdapter];
  [platformAdapter setControlsStyle:style];
}

- (void)setOtherPictureInPictureActive:(BOOL)active
{
  activeCopy = active;
  v10 = *MEMORY[0x1E69E9840];
  v5 = _AVLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = "NO";
    *v8 = 136315650;
    *&v8[4] = "[AVPictureInPictureController setOtherPictureInPictureActive:]";
    *&v8[14] = "otherPictureInPictureActive";
    *&v8[12] = 2080;
    if (activeCopy)
    {
      v6 = "YES";
    }

    *&v8[22] = 2080;
    v9 = v6;
    _os_log_impl(&dword_18B49C000, v5, OS_LOG_TYPE_DEFAULT, "%s %s %s", v8, 0x20u);
  }

  self->_otherPictureInPictureActive = activeCopy;
  v7 = activeCopy || [(AVPictureInPictureController *)self isPictureInPictureActive];
  [(AVPictureInPictureController *)self _setCanStopPictureInPicture:v7, *v8, *&v8[16]];
}

- (void)setPictureInPictureActive:(BOOL)active
{
  activeCopy = active;
  v11 = *MEMORY[0x1E69E9840];
  v5 = _AVLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = "NO";
    *v9 = 136315650;
    *&v9[4] = "[AVPictureInPictureController setPictureInPictureActive:]";
    *&v9[14] = "pictureInPictureActive";
    *&v9[12] = 2080;
    if (activeCopy)
    {
      v6 = "YES";
    }

    *&v9[22] = 2080;
    v10 = v6;
    _os_log_impl(&dword_18B49C000, v5, OS_LOG_TYPE_DEFAULT, "%s %s %s", v9, 0x20u);
  }

  self->_pictureInPictureActive = activeCopy;
  playerController = [(AVPictureInPictureController *)self playerController];
  [playerController setPictureInPictureActive:activeCopy];

  v8 = activeCopy || [(AVPictureInPictureController *)self isOtherPictureInPictureActive];
  [(AVPictureInPictureController *)self _setCanStopPictureInPicture:v8, *v9, *&v9[16]];
}

- (void)setAllowsPictureInPictureFromInlineWhenEnteringBackground:(BOOL)background
{
  if (self->_allowsPictureInPictureFromInlineWhenEnteringBackground != background)
  {
    backgroundCopy = background;
    self->_allowsPictureInPictureFromInlineWhenEnteringBackground = background;
    platformAdapter = [(AVPictureInPictureController *)self platformAdapter];
    [platformAdapter setAlwaysStartsAutomaticallyWhenEnteringBackground:backgroundCopy];
  }
}

- (void)setAllowsPictureInPicturePlayback:(BOOL)playback
{
  playbackCopy = playback;
  v15 = *MEMORY[0x1E69E9840];
  v5 = _AVLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = "NO";
    v9 = 136315650;
    v10 = "[AVPictureInPictureController setAllowsPictureInPicturePlayback:]";
    v12 = "allowsPictureInPicturePlayback";
    v11 = 2080;
    if (playbackCopy)
    {
      v6 = "YES";
    }

    v13 = 2080;
    v14 = v6;
    _os_log_impl(&dword_18B49C000, v5, OS_LOG_TYPE_DEFAULT, "%s %s %s", &v9, 0x20u);
  }

  self->_allowsPictureInPicturePlayback = playbackCopy;
  platformAdapter = [(AVPictureInPictureController *)self platformAdapter];
  [platformAdapter setAllowsPictureInPicturePlayback:playbackCopy];

  playerController = [(AVPictureInPictureController *)self playerController];
  [playerController setAllowsPictureInPicturePlayback:playbackCopy];
}

- (AVPictureInPictureViewController)pictureInPictureViewController
{
  platformAdapter = [(AVPictureInPictureController *)self platformAdapter];
  pictureInPictureViewController = [platformAdapter pictureInPictureViewController];

  return pictureInPictureViewController;
}

- (AVPlayerLayer)playerLayer
{
  playerLayer = self->_playerLayer;
  if (playerLayer)
  {
    layer = playerLayer;
  }

  else
  {
    layer = [MEMORY[0x1E69880E0] layer];
  }

  return layer;
}

- (void)_logContentSourceType:(id)type
{
  v9 = *MEMORY[0x1E69E9840];
  avkit_contentSourceType = [type avkit_contentSourceType];
  v4 = _AVLog();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (avkit_contentSourceType <= 1)
  {
    if (!avkit_contentSourceType)
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

    if (avkit_contentSourceType == 1)
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

  if (avkit_contentSourceType == 2)
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

  if (avkit_contentSourceType != 3)
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
  platformAdapter = [(AVPictureInPictureController *)self platformAdapter];
  [platformAdapter updateLayoutDependentBehaviors];
}

- (void)invalidate
{
  if ([(AVPictureInPictureController *)self isPictureInPictureActive])
  {
    platformAdapter = [(AVPictureInPictureController *)self platformAdapter];
    [platformAdapter stopPictureInPictureAndRestoreUserInterface:0];
  }

  observationController = [(AVPictureInPictureController *)self observationController];
  [observationController stopAllObservation];

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
  platformAdapter = [(AVPictureInPictureController *)self platformAdapter];
  -[AVPictureInPictureController _stopPictureInPictureAndRestoreUserInterface:](self, "_stopPictureInPictureAndRestoreUserInterface:", [platformAdapter canAnimatePictureInPictureTransition]);
}

- (void)stopPictureInPicture
{
  if (-[AVPictureInPictureController isPictureInPictureActive](self, "isPictureInPictureActive") && (-[AVPictureInPictureController platformAdapter](self, "platformAdapter"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 canAnimatePictureInPictureTransition], v3, v4))
  {
    platformAdapter = [(AVPictureInPictureController *)self platformAdapter];
    -[AVPictureInPictureController _stopPictureInPictureAndRestoreUserInterface:](self, "_stopPictureInPictureAndRestoreUserInterface:", [platformAdapter canAnimatePictureInPictureTransition]);
  }

  else
  {
    platformAdapter = [(AVPictureInPictureController *)self platformAdapter];
    if ([platformAdapter isAnyPictureInPictureActive])
    {
      isPictureInPictureActive = [(AVPictureInPictureController *)self isPictureInPictureActive];

      if (isPictureInPictureActive)
      {
        return;
      }

      platformAdapter = [(AVPictureInPictureController *)self platformAdapter];
      [platformAdapter stopPictureInPictureAndRestoreUserInterface:0];
    }
  }
}

- (void)startPictureInPicture
{
  v13 = *MEMORY[0x1E69E9840];
  platformAdapter = [(AVPictureInPictureController *)self platformAdapter];
  status = [platformAdapter status];

  platformAdapter2 = _AVLog();
  v6 = os_log_type_enabled(platformAdapter2, OS_LOG_TYPE_DEFAULT);
  if (status == 1)
  {
    if (v6)
    {
      playerController = [(AVPictureInPictureController *)self playerController];
      v9 = 136315394;
      v10 = "[AVPictureInPictureController startPictureInPicture]";
      v11 = 2114;
      v12 = playerController;
      _os_log_impl(&dword_18B49C000, platformAdapter2, OS_LOG_TYPE_DEFAULT, "%s starting for playerController %{public}@", &v9, 0x16u);
    }

    platformAdapter2 = [(AVPictureInPictureController *)self platformAdapter];
    [platformAdapter2 startPictureInPicture];
  }

  else if (v6)
  {
    platformAdapter3 = [(AVPictureInPictureController *)self platformAdapter];
    v9 = 136315394;
    v10 = "[AVPictureInPictureController startPictureInPicture]";
    v11 = 1024;
    LODWORD(v12) = [platformAdapter3 status];
    _os_log_impl(&dword_18B49C000, platformAdapter2, OS_LOG_TYPE_DEFAULT, "%s failed; status = %d", &v9, 0x12u);
  }
}

- (void)dealloc
{
  source = [(AVPictureInPictureController *)self source];
  platformAdapter = [(AVPictureInPictureController *)self platformAdapter];
  pictureInPictureViewController = [platformAdapter pictureInPictureViewController];

  [(AVPictureInPictureController *)self invalidate];
  [source avkit_stopRoutingVideoToPictureInPictureViewController:pictureInPictureViewController];

  v6.receiver = self;
  v6.super_class = AVPictureInPictureController;
  [(AVPictureInPictureController *)&v6 dealloc];
}

- (void)_commonInitWithSource:(id)source
{
  v33 = *MEMORY[0x1E69E9840];
  if (self)
  {
    sourceCopy = source;
    objc_storeWeak(&self->_source, sourceCopy);
    [(AVPictureInPictureController *)self _logContentSourceType:sourceCopy];
    v5 = [[AVObservationController alloc] initWithOwner:self];
    observationController = self->_observationController;
    self->_observationController = v5;

    v7 = [[AVPictureInPicturePlatformAdapter alloc] initWithSource:sourceCopy];
    platformAdapter = self->_platformAdapter;
    self->_platformAdapter = v7;

    [(AVPictureInPicturePlatformAdapter *)self->_platformAdapter setBackgroundPlaybackPolicy:1];
    [(AVPictureInPicturePlatformAdapter *)self->_platformAdapter setCanStartAutomaticallyWhenEnteringBackground:1];
    self->_canStartAutomaticallyWhenEnteringBackground = 1;
    self->_canPausePlaybackWhenClosingPictureInPicture = 1;
    -[AVPictureInPicturePlatformAdapter setManagesWiredSecondScreenPlayback:](self->_platformAdapter, "setManagesWiredSecondScreenPlayback:", [sourceCopy avkit_wantsManagedSecondScreenPlayback]);
    self->_requiresLinearPlayback = [(AVPictureInPicturePlatformAdapter *)self->_platformAdapter requiresLinearPlayback];
    self->_pictureInPictureActive = 0;
    platformAdapter = [(AVPictureInPictureController *)self platformAdapter];
    self->_pictureInPicturePossible = [platformAdapter status] > 0;

    platformAdapter2 = [(AVPictureInPictureController *)self platformAdapter];
    [platformAdapter2 setDelegate:self];

    playerController = [(AVPictureInPictureController *)self playerController];
    v12 = [sourceCopy avkit_makePlayerControllerIfNeeded:playerController];

    [(AVPictureInPictureController *)self setPlayerController:v12];
    playerController2 = [(AVPictureInPictureController *)self playerController];
    LOBYTE(playerController) = objc_opt_respondsToSelector();

    if (playerController)
    {
      playerController3 = [(AVPictureInPictureController *)self playerController];
      [playerController3 setPictureInPictureController:self];
    }

    playerController4 = [(AVPictureInPictureController *)self playerController];
    v16 = objc_opt_respondsToSelector();

    if (v16)
    {
      v17 = _AVLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        contentSource = [(AVPictureInPictureController *)self contentSource];
        [contentSource initialRenderSize];
        v19 = NSStringFromCGSize(v34);
        v29 = 136315394;
        v30 = "[AVPictureInPictureController _commonInitWithSource:]";
        v31 = 2112;
        v32 = v19;
        _os_log_impl(&dword_18B49C000, v17, OS_LOG_TYPE_DEFAULT, "%s Has initial render size: %@", &v29, 0x16u);
      }

      _sbdlPlayerController = [(AVPictureInPictureController *)self _sbdlPlayerController];
      contentSource2 = [(AVPictureInPictureController *)self contentSource];
      [contentSource2 initialRenderSize];
      [_sbdlPlayerController setEnqueuedBufferDimensions:?];
    }

    observationController = [(AVPictureInPictureController *)self observationController];
    platformAdapter3 = [(AVPictureInPictureController *)self platformAdapter];
    v24 = [observationController startObserving:platformAdapter3 keyPath:@"anyPictureInPictureActive" includeInitialValue:1 observationHandler:&__block_literal_global_17839];

    observationController2 = [(AVPictureInPictureController *)self observationController];
    v26 = [observationController2 startObserving:self keyPath:@"playerController.contentDimensions" includeInitialValue:0 observationHandler:&__block_literal_global_52];

    observationController3 = [(AVPictureInPictureController *)self observationController];
    [observationController3 startObservingNotificationForName:@"AVPlayerControllerPIPActivitySessionIdentifierDidChangeNotification" object:0 notificationCenter:0 observationHandler:&__block_literal_global_55];

    observationController4 = [(AVPictureInPictureController *)self observationController];
    [observationController4 startObservingNotificationForName:*MEMORY[0x1E69879C8] object:0 notificationCenter:0 observationHandler:&__block_literal_global_57];
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
      source = [(AVPictureInPictureControllerContentSource *)v5 source];
      v9 = objc_opt_respondsToSelector();

      if (v9)
      {
        source2 = [(AVPictureInPictureControllerContentSource *)v5 source];
        [(AVPictureInPictureController *)v7 _commonInitWithSource:source2];

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

- (AVPictureInPictureController)initWithSource:(id)source
{
  sourceCopy = source;
  if ([objc_opt_class() isPictureInPictureSupported])
  {
    v8.receiver = self;
    v8.super_class = AVPictureInPictureController;
    v5 = [(AVPictureInPictureController *)&v8 init];
    v6 = v5;
    if (v5)
    {
      [(AVPictureInPictureController *)v5 _commonInitWithSource:sourceCopy];
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

  layer = [MEMORY[0x1E69880E0] layer];
  v9 = [(AVPictureInPictureController *)self initWithPlayerLayer:layer];

  return v9;
}

+ (UIImage)pictureInPictureButtonStopImageCompatibleWithTraitCollection:(UITraitCollection *)traitCollection
{
  v4 = traitCollection;
  v5 = +[AVPictureInPicturePlatformAdapter stopPictureInPictureButtonImageName];
  v6 = [self _imageNamed:v5 compatibileWithTraitCollection:v4];

  return v6;
}

+ (UIImage)pictureInPictureButtonStartImageCompatibleWithTraitCollection:(UITraitCollection *)traitCollection
{
  v4 = traitCollection;
  v5 = +[AVPictureInPicturePlatformAdapter startPictureInPictureButtonImageName];
  v6 = [self _imageNamed:v5 compatibileWithTraitCollection:v4];

  return v6;
}

+ (id)_imageNamed:(id)named compatibileWithTraitCollection:(id)collection
{
  namedCopy = named;
  collectionCopy = collection;
  v7 = +[AVPictureInPicturePlatformAdapter imageSymbolConfiguration];
  v8 = [v7 configurationByApplyingConfiguration:v7];
  v9 = MEMORY[0x1E69DCAB8];
  if (v7)
  {
    v10 = [MEMORY[0x1E69DCAB8] systemImageNamed:namedCopy withConfiguration:v8];
  }

  else
  {
    v11 = AVBundle();
    v10 = [v9 imageNamed:namedCopy inBundle:v11 compatibleWithTraitCollection:collectionCopy];
  }

  return v10;
}

@end