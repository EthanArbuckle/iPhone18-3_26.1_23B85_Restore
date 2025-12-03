@interface AVMusicAppBehaviorContext
- (AVMusicAppBehavior)behavior;
- (AVMusicAppBehaviorContext)initWithAVKitOwner:(id)owner;
- (AVPlayerViewController)playerViewController;
- (void)_updatePlaybackControlsInclusion;
- (void)_updateSkipItemButtonsEnabled;
- (void)dealloc;
- (void)didAddBehavior:(id)behavior;
- (void)didRemoveBehavior:(id)behavior;
- (void)playerViewController:(id)controller didCollectMetricsEvent:(int64_t)event;
- (void)viewDidLoad;
@end

@implementation AVMusicAppBehaviorContext

- (AVMusicAppBehavior)behavior
{
  WeakRetained = objc_loadWeakRetained(&self->_behavior);

  return WeakRetained;
}

- (AVPlayerViewController)playerViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_playerViewController);

  return WeakRetained;
}

- (void)_updatePlaybackControlsInclusion
{
  playerViewController = [(AVMusicAppBehaviorContext *)self playerViewController];
  isPresentingFullScreenFromInline = [playerViewController isPresentingFullScreenFromInline];
  if (isPresentingFullScreenFromInline)
  {
    v5 = 1;
  }

  else
  {
    playerViewController2 = [(AVMusicAppBehaviorContext *)self playerViewController];
    isPresentedFullScreen = [playerViewController2 isPresentedFullScreen];

    if (isPresentedFullScreen)
    {
      v5 = 1;
      isPresentingFullScreenFromInline = 1;
      goto LABEL_7;
    }

    playerViewController = [(AVMusicAppBehaviorContext *)self playerViewController];
    v5 = [playerViewController isPictureInPictureActive] ^ 1;
  }

LABEL_7:
  playerViewController3 = [(AVMusicAppBehaviorContext *)self playerViewController];
  playbackControlsController = [playerViewController3 playbackControlsController];
  [playbackControlsController setPlaybackControlsIncludeVolumeControls:isPresentingFullScreenFromInline];

  playerViewController4 = [(AVMusicAppBehaviorContext *)self playerViewController];
  playbackControlsController2 = [playerViewController4 playbackControlsController];
  [playbackControlsController2 setPlaybackControlsIncludeTransportControls:isPresentingFullScreenFromInline];

  playerViewController5 = [(AVMusicAppBehaviorContext *)self playerViewController];
  playbackControlsController3 = [playerViewController5 playbackControlsController];
  [playbackControlsController3 setPlaybackControlsIncludeDisplayModeControls:v5];
}

- (void)_updateSkipItemButtonsEnabled
{
  playerViewController = [(AVMusicAppBehaviorContext *)self playerViewController];
  playbackControlsController = [playerViewController playbackControlsController];
  view = [playerViewController view];
  effectiveUserInterfaceLayoutDirection = [view effectiveUserInterfaceLayoutDirection];

  if (effectiveUserInterfaceLayoutDirection)
  {
    isSkipToNextItemButtonEnabled = [(AVMusicAppBehaviorContext *)self isSkipToNextItemButtonEnabled];
    isSkipToPreviousItemButtonEnabled = [(AVMusicAppBehaviorContext *)self isSkipToPreviousItemButtonEnabled];
  }

  else
  {
    isSkipToNextItemButtonEnabled = [(AVMusicAppBehaviorContext *)self isSkipToPreviousItemButtonEnabled];
    isSkipToPreviousItemButtonEnabled = [(AVMusicAppBehaviorContext *)self isSkipToNextItemButtonEnabled];
  }

  v9 = isSkipToPreviousItemButtonEnabled;
  [playbackControlsController setStartLeftwardContentTransitionButtonEnabled:isSkipToNextItemButtonEnabled];
  [playbackControlsController setStartRightwardContentTransitionButtonEnabled:v9];
  [playbackControlsController setPlaybackControlsIncludeStartContentTransitionButtons:{-[AVMusicAppBehaviorContext showsSkipItemButtons](self, "showsSkipItemButtons")}];
  if ([(AVMusicAppBehaviorContext *)self showsSkipItemButtons]&& (isSkipToNextItemButtonEnabled || v9))
  {
    controlsViewController = [playerViewController controlsViewController];
    [controlsViewController setSecondaryPlaybackControlsType:1];
    WeakRetained = objc_loadWeakRetained(&self->_behavior);
    [controlsViewController addAction:sel_skipToNextItem withTarget:WeakRetained forEvent:@"AVControlsSkipForwardPressedEvent"];

    v12 = objc_loadWeakRetained(&self->_behavior);
    [controlsViewController addAction:sel_skipToPreviousItem withTarget:v12 forEvent:@"AVControlsSkipBackwardPressedEvent"];

    objc_initWeak(&location, self);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __58__AVMusicAppBehaviorContext__updateSkipItemButtonsEnabled__block_invoke;
    v13[3] = &unk_1E7209618;
    objc_copyWeak(&v14, &location);
    [playbackControlsController setContentTransitionAction:v13];
    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  else
  {
    [playbackControlsController setContentTransitionAction:0];
  }
}

void __58__AVMusicAppBehaviorContext__updateSkipItemButtonsEnabled__block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (a2 == 2)
    {
      v5 = WeakRetained;
      v4 = [WeakRetained behavior];
      [v4 skipToPreviousItem];
    }

    else
    {
      if (a2 != 1)
      {
        goto LABEL_7;
      }

      v5 = WeakRetained;
      v4 = [WeakRetained behavior];
      [v4 skipToNextItem];
    }

    WeakRetained = v5;
  }

LABEL_7:
}

- (void)playerViewController:(id)controller didCollectMetricsEvent:(int64_t)event
{
  controllerCopy = controller;
  if (event <= 3)
  {
    v7 = qword_18B6EC5B8[event];
    v9 = controllerCopy;
    behavior = [(AVMusicAppBehaviorContext *)self behavior];
    [behavior contextWillHandleUserAction:v7];

    controllerCopy = v9;
  }
}

- (void)viewDidLoad
{
  [(AVMusicAppBehaviorContext *)self _updateSkipItemButtonsEnabled];

  [(AVMusicAppBehaviorContext *)self _updatePlaybackControlsInclusion];
}

- (void)didRemoveBehavior:(id)behavior
{
  observationController = [(AVMusicAppBehaviorContext *)self observationController];
  [observationController stopAllObservation];
}

- (void)didAddBehavior:(id)behavior
{
  v27[2] = *MEMORY[0x1E69E9840];
  playerViewController = [(AVMusicAppBehaviorContext *)self playerViewController];
  playerController = [playerViewController playerController];
  [(AVMusicAppBehaviorContext *)self setPlayerController:playerController];

  playerViewController2 = [(AVMusicAppBehaviorContext *)self playerViewController];
  [playerViewController2 setCanPausePlaybackWhenClosingPictureInPicture:0];

  [(AVMusicAppBehaviorContext *)self _updatePlaybackControlsInclusion];
  observationController = [(AVMusicAppBehaviorContext *)self observationController];
  playerViewController3 = [(AVMusicAppBehaviorContext *)self playerViewController];
  [observationController startObservingNotificationForName:@"AVPlayerViewControllerDidChangePlayerControllerNotification" object:playerViewController3 notificationCenter:0 observationHandler:&__block_literal_global_6606];

  observationController2 = [(AVMusicAppBehaviorContext *)self observationController];
  v10 = [observationController2 startObserving:self keyPath:@"playerController.scrubbing" includeInitialValue:0 observationHandler:&__block_literal_global_20];

  observationController3 = [(AVMusicAppBehaviorContext *)self observationController];
  v12 = [observationController3 startObserving:self keyPath:@"playerController.player.currentItem" includeInitialValue:1 observationHandler:&__block_literal_global_25];

  observationController4 = [(AVMusicAppBehaviorContext *)self observationController];
  v27[0] = @"playerController.seekToTime";
  v27[1] = @"playerController.seeking";
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:2];
  v15 = [observationController4 startObserving:self keyPaths:v14 includeInitialValue:0 observationHandler:&__block_literal_global_34];

  observationController5 = [(AVMusicAppBehaviorContext *)self observationController];
  playerController2 = [(AVMusicAppBehaviorContext *)self playerController];
  [observationController5 startObservingNotificationForName:@"AVPlayerControllerDidBeginScanningNotification" object:playerController2 notificationCenter:0 observationHandler:&__block_literal_global_37_6612];

  observationController6 = [(AVMusicAppBehaviorContext *)self observationController];
  playerController3 = [(AVMusicAppBehaviorContext *)self playerController];
  [observationController6 startObservingNotificationForName:@"AVPlayerControllerDidEndScanningNotification" object:playerController3 notificationCenter:0 observationHandler:&__block_literal_global_39];

  observationController7 = [(AVMusicAppBehaviorContext *)self observationController];
  playerViewController4 = [(AVMusicAppBehaviorContext *)self playerViewController];
  [observationController7 startObservingNotificationForName:@"AVPlayerViewControllerDidEnterFullScreenFromInline" object:playerViewController4 notificationCenter:0 observationHandler:&__block_literal_global_41];

  observationController8 = [(AVMusicAppBehaviorContext *)self observationController];
  playerViewController5 = [(AVMusicAppBehaviorContext *)self playerViewController];
  [observationController8 startObservingNotificationForName:@"AVPlayerViewControllerDidExitFullScreenFromInline" object:playerViewController5 notificationCenter:0 observationHandler:&__block_literal_global_43];

  observationController9 = [(AVMusicAppBehaviorContext *)self observationController];
  [observationController9 startObservingNotificationForName:@"AVPictureInPictureControllerUserPlaybackStateDidChangeNotification" object:0 notificationCenter:0 observationHandler:&__block_literal_global_45];

  observationController10 = [(AVMusicAppBehaviorContext *)self observationController];
  [observationController10 startObservingNotificationForName:@"AVPictureInPictureControllerWillStartNotification" object:0 notificationCenter:0 observationHandler:&__block_literal_global_47];

  observationController11 = [(AVMusicAppBehaviorContext *)self observationController];
  [observationController11 startObservingNotificationForName:@"AVPictureInPictureControllerWillStopNotification" object:0 notificationCenter:0 observationHandler:&__block_literal_global_49_6613];
}

void __44__AVMusicAppBehaviorContext_didAddBehavior___block_invoke_9(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a2;
  v9 = [a4 userInfo];
  v6 = [v9 objectForKeyedSubscript:@"AVPictureInPictureControllerPlaybackStateIsPlayingKey"];
  v7 = [v6 BOOLValue];

  v8 = [v5 behavior];

  [v8 contextWillHandleUserAction:v7];
}

void __44__AVMusicAppBehaviorContext_didAddBehavior___block_invoke_6(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a2;
  v6 = [a4 userInfo];
  v7 = [v6 objectForKeyedSubscript:@"AVPlayerControllerScanningDirectionKey"];
  v8 = [v7 integerValue];

  if (v8 <= 0)
  {
    v9 = 13;
  }

  else
  {
    v9 = 11;
  }

  v10 = [v5 behavior];

  [v10 contextWillHandleUserAction:v9];
}

void __44__AVMusicAppBehaviorContext_didAddBehavior___block_invoke_5(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a2;
  v6 = [a4 userInfo];
  v7 = [v6 objectForKeyedSubscript:@"AVPlayerControllerScanningDirectionKey"];
  v8 = [v7 integerValue];

  if (v8 <= 0)
  {
    v9 = 12;
  }

  else
  {
    v9 = 10;
  }

  v10 = [v5 behavior];

  [v10 contextWillHandleUserAction:v9];
}

void __44__AVMusicAppBehaviorContext_didAddBehavior___block_invoke_4(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v19 = a2;
  v5 = a4;
  v6 = [v19 playerController];
  v7 = [v6 isSeeking];

  if (v7)
  {
    v8 = MEMORY[0x1E696AD98];
    v9 = [v19 playerController];
    [v9 seekToTime];
    v10 = [v8 numberWithDouble:?];
    [v19 setSeekTargetTime:v10];
  }

  v11 = [v5 keyPath];
  if ([v11 isEqualToString:@"playerController.seeking"])
  {
    v12 = [v19 playerController];
    v13 = [v12 player];
    v14 = [v13 currentItem];

    if (!v14)
    {
      goto LABEL_10;
    }

    v11 = [v19 behavior];
    v15 = [v19 playerController];
    if ([v15 isSeeking])
    {
      v16 = 6;
    }

    else
    {
      v16 = 7;
    }

    [v11 contextWillHandleUserAction:v16];
  }

LABEL_10:
  v17 = [v19 playerController];
  v18 = [v17 isSeeking];

  if ((v18 & 1) == 0)
  {
    [v19 setSeekTargetTime:0];
  }
}

void __44__AVMusicAppBehaviorContext_didAddBehavior___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v4 = a3;
  v5 = [v9 playerViewController];

  if (v5 == v4)
  {
    v6 = [v9 playerController];
    v7 = [v6 player];
    v8 = [v7 currentItem];
    [v8 avkit_setMusicBehaviorData:v9];
  }
}

void __44__AVMusicAppBehaviorContext_didAddBehavior___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 behavior];
  v4 = [v2 playerViewController];
  v5 = [v4 playerController];
  if ([v5 isScrubbing])
  {
    v6 = 4;
  }

  else
  {
    v6 = 5;
  }

  [v3 contextWillHandleUserAction:v6];

  v7 = [v2 playerController];
  [v2 setScrubbing:{objc_msgSend(v7, "isScrubbing")}];
}

void __44__AVMusicAppBehaviorContext_didAddBehavior___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v4 = a3;
  v5 = [v8 playerViewController];

  if (v5 == v4)
  {
    v6 = [v8 playerViewController];
    v7 = [v6 playerController];
    [v8 setPlayerController:v7];
  }
}

- (void)dealloc
{
  observationController = [(AVMusicAppBehaviorContext *)self observationController];
  [observationController stopAllObservation];

  v4.receiver = self;
  v4.super_class = AVMusicAppBehaviorContext;
  [(AVMusicAppBehaviorContext *)&v4 dealloc];
}

- (AVMusicAppBehaviorContext)initWithAVKitOwner:(id)owner
{
  ownerCopy = owner;
  v10.receiver = self;
  v10.super_class = AVMusicAppBehaviorContext;
  v5 = [(AVMusicAppBehaviorContext *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_playerViewController, ownerCopy);
    v7 = [[AVObservationController alloc] initWithOwner:v6];
    observationController = v6->_observationController;
    v6->_observationController = v7;

    v6->_showsSkipItemButtons = 1;
  }

  return v6;
}

@end