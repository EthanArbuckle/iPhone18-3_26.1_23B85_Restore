@interface AVMusicAppBehaviorContext
- (AVMusicAppBehavior)behavior;
- (AVMusicAppBehaviorContext)initWithAVKitOwner:(id)a3;
- (AVPlayerViewController)playerViewController;
- (void)_updatePlaybackControlsInclusion;
- (void)_updateSkipItemButtonsEnabled;
- (void)dealloc;
- (void)didAddBehavior:(id)a3;
- (void)didRemoveBehavior:(id)a3;
- (void)playerViewController:(id)a3 didCollectMetricsEvent:(int64_t)a4;
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
  v3 = [(AVMusicAppBehaviorContext *)self playerViewController];
  v4 = [v3 isPresentingFullScreenFromInline];
  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v6 = [(AVMusicAppBehaviorContext *)self playerViewController];
    v7 = [v6 isPresentedFullScreen];

    if (v7)
    {
      v5 = 1;
      v4 = 1;
      goto LABEL_7;
    }

    v3 = [(AVMusicAppBehaviorContext *)self playerViewController];
    v5 = [v3 isPictureInPictureActive] ^ 1;
  }

LABEL_7:
  v8 = [(AVMusicAppBehaviorContext *)self playerViewController];
  v9 = [v8 playbackControlsController];
  [v9 setPlaybackControlsIncludeVolumeControls:v4];

  v10 = [(AVMusicAppBehaviorContext *)self playerViewController];
  v11 = [v10 playbackControlsController];
  [v11 setPlaybackControlsIncludeTransportControls:v4];

  v13 = [(AVMusicAppBehaviorContext *)self playerViewController];
  v12 = [v13 playbackControlsController];
  [v12 setPlaybackControlsIncludeDisplayModeControls:v5];
}

- (void)_updateSkipItemButtonsEnabled
{
  v3 = [(AVMusicAppBehaviorContext *)self playerViewController];
  v4 = [v3 playbackControlsController];
  v5 = [v3 view];
  v6 = [v5 effectiveUserInterfaceLayoutDirection];

  if (v6)
  {
    v7 = [(AVMusicAppBehaviorContext *)self isSkipToNextItemButtonEnabled];
    v8 = [(AVMusicAppBehaviorContext *)self isSkipToPreviousItemButtonEnabled];
  }

  else
  {
    v7 = [(AVMusicAppBehaviorContext *)self isSkipToPreviousItemButtonEnabled];
    v8 = [(AVMusicAppBehaviorContext *)self isSkipToNextItemButtonEnabled];
  }

  v9 = v8;
  [v4 setStartLeftwardContentTransitionButtonEnabled:v7];
  [v4 setStartRightwardContentTransitionButtonEnabled:v9];
  [v4 setPlaybackControlsIncludeStartContentTransitionButtons:{-[AVMusicAppBehaviorContext showsSkipItemButtons](self, "showsSkipItemButtons")}];
  if ([(AVMusicAppBehaviorContext *)self showsSkipItemButtons]&& (v7 || v9))
  {
    v10 = [v3 controlsViewController];
    [v10 setSecondaryPlaybackControlsType:1];
    WeakRetained = objc_loadWeakRetained(&self->_behavior);
    [v10 addAction:sel_skipToNextItem withTarget:WeakRetained forEvent:@"AVControlsSkipForwardPressedEvent"];

    v12 = objc_loadWeakRetained(&self->_behavior);
    [v10 addAction:sel_skipToPreviousItem withTarget:v12 forEvent:@"AVControlsSkipBackwardPressedEvent"];

    objc_initWeak(&location, self);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __58__AVMusicAppBehaviorContext__updateSkipItemButtonsEnabled__block_invoke;
    v13[3] = &unk_1E7209618;
    objc_copyWeak(&v14, &location);
    [v4 setContentTransitionAction:v13];
    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  else
  {
    [v4 setContentTransitionAction:0];
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

- (void)playerViewController:(id)a3 didCollectMetricsEvent:(int64_t)a4
{
  v6 = a3;
  if (a4 <= 3)
  {
    v7 = qword_18B6EC5B8[a4];
    v9 = v6;
    v8 = [(AVMusicAppBehaviorContext *)self behavior];
    [v8 contextWillHandleUserAction:v7];

    v6 = v9;
  }
}

- (void)viewDidLoad
{
  [(AVMusicAppBehaviorContext *)self _updateSkipItemButtonsEnabled];

  [(AVMusicAppBehaviorContext *)self _updatePlaybackControlsInclusion];
}

- (void)didRemoveBehavior:(id)a3
{
  v3 = [(AVMusicAppBehaviorContext *)self observationController];
  [v3 stopAllObservation];
}

- (void)didAddBehavior:(id)a3
{
  v27[2] = *MEMORY[0x1E69E9840];
  v4 = [(AVMusicAppBehaviorContext *)self playerViewController];
  v5 = [v4 playerController];
  [(AVMusicAppBehaviorContext *)self setPlayerController:v5];

  v6 = [(AVMusicAppBehaviorContext *)self playerViewController];
  [v6 setCanPausePlaybackWhenClosingPictureInPicture:0];

  [(AVMusicAppBehaviorContext *)self _updatePlaybackControlsInclusion];
  v7 = [(AVMusicAppBehaviorContext *)self observationController];
  v8 = [(AVMusicAppBehaviorContext *)self playerViewController];
  [v7 startObservingNotificationForName:@"AVPlayerViewControllerDidChangePlayerControllerNotification" object:v8 notificationCenter:0 observationHandler:&__block_literal_global_6606];

  v9 = [(AVMusicAppBehaviorContext *)self observationController];
  v10 = [v9 startObserving:self keyPath:@"playerController.scrubbing" includeInitialValue:0 observationHandler:&__block_literal_global_20];

  v11 = [(AVMusicAppBehaviorContext *)self observationController];
  v12 = [v11 startObserving:self keyPath:@"playerController.player.currentItem" includeInitialValue:1 observationHandler:&__block_literal_global_25];

  v13 = [(AVMusicAppBehaviorContext *)self observationController];
  v27[0] = @"playerController.seekToTime";
  v27[1] = @"playerController.seeking";
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:2];
  v15 = [v13 startObserving:self keyPaths:v14 includeInitialValue:0 observationHandler:&__block_literal_global_34];

  v16 = [(AVMusicAppBehaviorContext *)self observationController];
  v17 = [(AVMusicAppBehaviorContext *)self playerController];
  [v16 startObservingNotificationForName:@"AVPlayerControllerDidBeginScanningNotification" object:v17 notificationCenter:0 observationHandler:&__block_literal_global_37_6612];

  v18 = [(AVMusicAppBehaviorContext *)self observationController];
  v19 = [(AVMusicAppBehaviorContext *)self playerController];
  [v18 startObservingNotificationForName:@"AVPlayerControllerDidEndScanningNotification" object:v19 notificationCenter:0 observationHandler:&__block_literal_global_39];

  v20 = [(AVMusicAppBehaviorContext *)self observationController];
  v21 = [(AVMusicAppBehaviorContext *)self playerViewController];
  [v20 startObservingNotificationForName:@"AVPlayerViewControllerDidEnterFullScreenFromInline" object:v21 notificationCenter:0 observationHandler:&__block_literal_global_41];

  v22 = [(AVMusicAppBehaviorContext *)self observationController];
  v23 = [(AVMusicAppBehaviorContext *)self playerViewController];
  [v22 startObservingNotificationForName:@"AVPlayerViewControllerDidExitFullScreenFromInline" object:v23 notificationCenter:0 observationHandler:&__block_literal_global_43];

  v24 = [(AVMusicAppBehaviorContext *)self observationController];
  [v24 startObservingNotificationForName:@"AVPictureInPictureControllerUserPlaybackStateDidChangeNotification" object:0 notificationCenter:0 observationHandler:&__block_literal_global_45];

  v25 = [(AVMusicAppBehaviorContext *)self observationController];
  [v25 startObservingNotificationForName:@"AVPictureInPictureControllerWillStartNotification" object:0 notificationCenter:0 observationHandler:&__block_literal_global_47];

  v26 = [(AVMusicAppBehaviorContext *)self observationController];
  [v26 startObservingNotificationForName:@"AVPictureInPictureControllerWillStopNotification" object:0 notificationCenter:0 observationHandler:&__block_literal_global_49_6613];
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
  v3 = [(AVMusicAppBehaviorContext *)self observationController];
  [v3 stopAllObservation];

  v4.receiver = self;
  v4.super_class = AVMusicAppBehaviorContext;
  [(AVMusicAppBehaviorContext *)&v4 dealloc];
}

- (AVMusicAppBehaviorContext)initWithAVKitOwner:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = AVMusicAppBehaviorContext;
  v5 = [(AVMusicAppBehaviorContext *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_playerViewController, v4);
    v7 = [[AVObservationController alloc] initWithOwner:v6];
    observationController = v6->_observationController;
    v6->_observationController = v7;

    v6->_showsSkipItemButtons = 1;
  }

  return v6;
}

@end