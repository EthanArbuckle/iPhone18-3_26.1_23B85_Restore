@interface MPMoviePlayerController
- (BOOL)allowsAirPlay;
- (BOOL)isAirPlayVideoActive;
- (BOOL)isPreparedToPlay;
- (CGSize)naturalSize;
- (MPMovieAccessLog)accessLog;
- (MPMovieErrorLog)errorLog;
- (MPMovieLoadState)loadState;
- (MPMoviePlaybackState)playbackState;
- (MPMoviePlayerController)initWithContentURL:(NSURL *)url;
- (MPMovieScalingMode)scalingMode;
- (NSArray)timedMetadata;
- (NSTimeInterval)duration;
- (NSTimeInterval)endPlaybackTime;
- (NSTimeInterval)initialPlaybackTime;
- (NSTimeInterval)playableDuration;
- (UIImage)thumbnailImageAtTime:(NSTimeInterval)playbackTime timeOption:(MPMovieTimeOption)option;
- (UIView)backgroundView;
- (UIView)view;
- (UIViewController)hostingViewController;
- (double)currentPlaybackTime;
- (float)currentPlaybackRate;
- (void)_avPlayerItemDidPlayToEndNotification:(id)notification;
- (void)beginSeekingBackward;
- (void)beginSeekingForward;
- (void)dealloc;
- (void)endSeeking;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)pause;
- (void)play;
- (void)playerViewController:(id)controller willBeginFullScreenPresentationWithAnimationCoordinator:(id)coordinator;
- (void)playerViewController:(id)controller willEndFullScreenPresentationWithAnimationCoordinator:(id)coordinator;
- (void)prepareToPlay;
- (void)requestThumbnailImagesAtTimes:(NSArray *)playbackTimes timeOption:(MPMovieTimeOption)option;
- (void)setAllowsAirPlay:(BOOL)allowsAirPlay;
- (void)setContentURL:(NSURL *)contentURL;
- (void)setControlStyle:(MPMovieControlStyle)controlStyle;
- (void)setCurrentPlaybackRate:(float)rate;
- (void)setCurrentPlaybackTime:(double)time;
- (void)setEndPlaybackTime:(NSTimeInterval)endPlaybackTime;
- (void)setFullscreen:(BOOL)fullscreen animated:(BOOL)animated;
- (void)setInitialPlaybackTime:(NSTimeInterval)initialPlaybackTime;
- (void)setRepeatMode:(MPMovieRepeatMode)repeatMode;
- (void)setScalingMode:(MPMovieScalingMode)scalingMode;
- (void)setShouldAutoplay:(BOOL)shouldAutoplay;
- (void)setUseApplicationAudioSession:(BOOL)useApplicationAudioSession;
@end

@implementation MPMoviePlayerController

- (UIViewController)hostingViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_hostingViewController);

  return WeakRetained;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  v26[1] = *MEMORY[0x1E69E9840];
  pathCopy = path;
  v11 = pathCopy;
  if (context != &_MPMoviePlayerControllerObservationContext)
  {
    v24.receiver = self;
    v24.super_class = MPMoviePlayerController;
    [(MPMoviePlayerController *)&v24 observeValueForKeyPath:pathCopy ofObject:object change:change context:context];
    goto LABEL_7;
  }

  if ([pathCopy isEqualToString:@"videoGravity"])
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    defaultCenter5 = defaultCenter;
    v14 = @"MPMoviePlayerScalingModeDidChangeNotification";
    goto LABEL_5;
  }

  if (![v11 isEqualToString:@"playerController.status"])
  {
    if ([v11 isEqualToString:@"isReadyForDisplay"])
    {
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      defaultCenter5 = defaultCenter;
      v14 = @"MPMoviePlayerReadyForDisplayDidChangeNotification";
    }

    else
    {
      if ([v11 isEqualToString:@"player.currentItem"])
      {
        defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
        [defaultCenter2 postNotificationName:@"MPMoviePlayerNowPlayingMovieDidChangeNotification" object:self];

        v23 = MEMORY[0x1E696AD88];
      }

      else
      {
        if ([v11 isEqualToString:@"player.isExternalPlaybackActive"])
        {
          defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
          defaultCenter5 = defaultCenter;
          v14 = @"MPMoviePlayerIsAirPlayVideoActiveDidChangeNotification";
          goto LABEL_5;
        }

        if (![v11 isEqualToString:@"playerController.isPlaying"])
        {
          if ([v11 isEqualToString:@"playerController.contentDimensions"])
          {
            defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
            defaultCenter5 = defaultCenter;
            v14 = @"MPMovieNaturalSizeAvailableNotification";
          }

          else
          {
            if (![v11 isEqualToString:@"playerController.contentDuration"])
            {
              goto LABEL_7;
            }

            defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
            defaultCenter5 = defaultCenter;
            v14 = @"MPMovieDurationAvailableNotification";
          }

          goto LABEL_5;
        }

        v23 = MEMORY[0x1E696AD88];
      }

      defaultCenter = [v23 defaultCenter];
      defaultCenter5 = defaultCenter;
      v14 = @"MPMoviePlayerPlaybackStateDidChangeNotification";
    }

LABEL_5:
    [defaultCenter postNotificationName:v14 object:self];
LABEL_6:

    goto LABEL_7;
  }

  defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter3 postNotificationName:@"MPMoviePlayerLoadStateDidChangeNotification" object:self];

  playerController = [(AVPlayerViewController *)self->_playerViewController playerController];
  status = [playerController status];

  if (status == 2)
  {
    defaultCenter4 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter4 postNotificationName:@"MPMediaPlaybackIsPreparedToPlayDidChangeNotification" object:self];
  }

  playerController2 = [(AVPlayerViewController *)self->_playerViewController playerController];
  status2 = [playerController2 status];

  if (status2 == 3)
  {
    defaultCenter5 = [MEMORY[0x1E696AD88] defaultCenter];
    v25 = @"MPMoviePlayerPlaybackDidFinishReasonUserInfoKey";
    v26[0] = &unk_1F1509CE8;
    v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v25 count:1];
    [defaultCenter5 postNotificationName:@"MPMoviePlayerPlaybackDidFinishNotification" object:self userInfo:v21];

    goto LABEL_6;
  }

LABEL_7:
}

- (void)_avPlayerItemDidPlayToEndNotification:(id)notification
{
  v10[1] = *MEMORY[0x1E69E9840];
  object = [notification object];
  player = [(AVPlayerViewController *)self->_playerViewController player];
  currentItem = [player currentItem];

  if (object == currentItem)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v9 = @"MPMoviePlayerPlaybackDidFinishReasonUserInfoKey";
    v10[0] = &unk_1F1509CD0;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    [defaultCenter postNotificationName:@"MPMoviePlayerPlaybackDidFinishNotification" object:self userInfo:v8];
  }
}

- (void)playerViewController:(id)controller willEndFullScreenPresentationWithAnimationCoordinator:(id)coordinator
{
  v5 = MEMORY[0x1E696AD88];
  coordinatorCopy = coordinator;
  defaultCenter = [v5 defaultCenter];
  [defaultCenter postNotificationName:@"MPMoviePlayerWillExitFullscreenNotification" object:self];

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __102__MPMoviePlayerController_playerViewController_willEndFullScreenPresentationWithAnimationCoordinator___block_invoke_2;
  v8[3] = &unk_1E7680318;
  v8[4] = self;
  [coordinatorCopy animateAlongsideTransition:&__block_literal_global_42 completion:v8];
}

void __102__MPMoviePlayerController_playerViewController_willEndFullScreenPresentationWithAnimationCoordinator___block_invoke_2(uint64_t a1, void *a2)
{
  if (([a2 isCancelled] & 1) == 0)
  {
    *(*(a1 + 32) + 33) = 0;
    v3 = [MEMORY[0x1E696AD88] defaultCenter];
    [v3 postNotificationName:@"MPMoviePlayerDidExitFullscreenNotification" object:*(a1 + 32)];
  }
}

- (void)playerViewController:(id)controller willBeginFullScreenPresentationWithAnimationCoordinator:(id)coordinator
{
  v5 = MEMORY[0x1E696AD88];
  coordinatorCopy = coordinator;
  defaultCenter = [v5 defaultCenter];
  [defaultCenter postNotificationName:@"MPMoviePlayerWillEnterFullscreenNotification" object:self];

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __104__MPMoviePlayerController_playerViewController_willBeginFullScreenPresentationWithAnimationCoordinator___block_invoke_2;
  v8[3] = &unk_1E7680318;
  v8[4] = self;
  [coordinatorCopy animateAlongsideTransition:&__block_literal_global_50701 completion:v8];
}

void __104__MPMoviePlayerController_playerViewController_willBeginFullScreenPresentationWithAnimationCoordinator___block_invoke_2(uint64_t a1, void *a2)
{
  if (([a2 isCancelled] & 1) == 0)
  {
    *(*(a1 + 32) + 33) = 1;
    v3 = [MEMORY[0x1E696AD88] defaultCenter];
    [v3 postNotificationName:@"MPMoviePlayerDidEnterFullscreenNotification" object:*(a1 + 32)];
  }
}

- (void)setUseApplicationAudioSession:(BOOL)useApplicationAudioSession
{
  if (self->_useApplicationAudioSession != useApplicationAudioSession)
  {
    self->_useApplicationAudioSession = useApplicationAudioSession;
    auxiliarySession = [MEMORY[0x1E6958460] auxiliarySession];
    player = [(AVPlayerViewController *)self->_playerViewController player];
    [player setAudioSession:auxiliarySession];
  }
}

- (MPMovieErrorLog)errorLog
{
  v3 = [MPMovieErrorLog alloc];
  player = [(AVPlayerViewController *)self->_playerViewController player];
  currentItem = [player currentItem];
  errorLog = [currentItem errorLog];
  v7 = [(MPMovieErrorLog *)v3 _initWithAVItemErrorLog:errorLog];

  return v7;
}

- (MPMovieAccessLog)accessLog
{
  v3 = [MPMovieAccessLog alloc];
  player = [(AVPlayerViewController *)self->_playerViewController player];
  currentItem = [player currentItem];
  accessLog = [currentItem accessLog];
  v7 = [(MPMovieAccessLog *)v3 _initWithAVItemAccessLog:accessLog];

  return v7;
}

- (NSArray)timedMetadata
{
  v20 = *MEMORY[0x1E69E9840];
  player = [(AVPlayerViewController *)self->_playerViewController player];
  currentItem = [player currentItem];
  timedMetadata = [currentItem timedMetadata];

  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(timedMetadata, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = timedMetadata;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v12 = [MPTimedMetadata alloc];
        v13 = [(MPTimedMetadata *)v12 _initWithMetadataItem:v11, v15];
        if (v13)
        {
          [v5 addObject:v13];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  return v5;
}

- (void)requestThumbnailImagesAtTimes:(NSArray *)playbackTimes timeOption:(MPMovieTimeOption)option
{
  v36 = *MEMORY[0x1E69E9840];
  v6 = playbackTimes;
  generator = self->_generator;
  if (!generator)
  {
    v8 = MEMORY[0x1E6987E68];
    player = [(AVPlayerViewController *)self->_playerViewController player];
    currentItem = [player currentItem];
    asset = [currentItem asset];
    v12 = [v8 assetImageGeneratorWithAsset:asset];
    v13 = self->_generator;
    self->_generator = v12;

    generator = self->_generator;
  }

  [(AVAssetImageGenerator *)generator setAppliesPreferredTrackTransform:1];
  v14 = self->_generator;
  if (option == MPMovieTimeOptionExact)
  {
    v15 = MEMORY[0x1E6960CC0];
  }

  else
  {
    v15 = MEMORY[0x1E6960C88];
  }

  v34 = *v15;
  epoch = v34.epoch;
  [(AVAssetImageGenerator *)v14 setRequestedTimeToleranceBefore:&v34, v34.value, *&v34.timescale];
  v17 = self->_generator;
  *&v34.value = v28;
  v34.epoch = epoch;
  [(AVAssetImageGenerator *)v17 setRequestedTimeToleranceAfter:&v34];
  v18 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSArray count](v6, "count")}];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v19 = v6;
  v20 = [(NSArray *)v19 countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v31;
    do
    {
      v23 = 0;
      do
      {
        if (*v31 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = MEMORY[0x1E696B098];
        [*(*(&v30 + 1) + 8 * v23) doubleValue];
        CMTimeMake(&v34, (v25 * 1000.0), 1000);
        v26 = [v24 valueWithCMTime:&v34];
        [v18 addObject:v26];

        ++v23;
      }

      while (v21 != v23);
      v21 = [(NSArray *)v19 countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v21);
  }

  v27 = self->_generator;
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __68__MPMoviePlayerController_requestThumbnailImagesAtTimes_timeOption___block_invoke;
  v29[3] = &unk_1E76802C0;
  v29[4] = self;
  [(AVAssetImageGenerator *)v27 generateCGImagesAsynchronouslyForTimes:v18 completionHandler:v29];
}

void __68__MPMoviePlayerController_requestThumbnailImagesAtTimes_timeOption___block_invoke(uint64_t a1, CMTime *a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v17[2] = *MEMORY[0x1E69E9840];
  v9 = a6;
  if (a3)
  {
    if (CGImageGetWidth(a3))
    {
      if (CGImageGetHeight(a3))
      {
        v10 = [MEMORY[0x1E69DCAB8] imageWithCGImage:a3];
        CFRelease(a3);
        if (v10)
        {
          v11 = [MEMORY[0x1E696AD88] defaultCenter];
          v12 = *(a1 + 32);
          v16[1] = @"MPMoviePlayerThumbnailTimeKey";
          v17[0] = v10;
          v15 = *a2;
          v16[0] = @"MPMoviePlayerThumbnailImageKey";
          v13 = [MEMORY[0x1E696AD98] numberWithDouble:CMTimeGetSeconds(&v15)];
          v17[1] = v13;
          v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:2];
          [v11 postNotificationName:@"MPMoviePlayerThumbnailImageRequestDidFinishNotification" object:v12 userInfo:v14];
        }
      }
    }
  }
}

- (UIImage)thumbnailImageAtTime:(NSTimeInterval)playbackTime timeOption:(MPMovieTimeOption)option
{
  v6 = MEMORY[0x1E6987E68];
  player = [(AVPlayerViewController *)self->_playerViewController player];
  currentItem = [player currentItem];
  asset = [currentItem asset];
  v10 = [v6 assetImageGeneratorWithAsset:asset];

  [v10 setAppliesPreferredTrackTransform:1];
  if (option == MPMovieTimeOptionExact)
  {
    v11 = MEMORY[0x1E6960CC0];
  }

  else
  {
    v11 = MEMORY[0x1E6960C88];
  }

  v18 = *v11;
  epoch = v18.epoch;
  [v10 setRequestedTimeToleranceBefore:{&v18, v18.value, *&v18.timescale}];
  *&v18.value = v17;
  v18.epoch = epoch;
  [v10 setRequestedTimeToleranceAfter:&v18];
  CMTimeMake(&v18, (playbackTime * 1000.0), 1000);
  v13 = [v10 copyCGImageAtTime:&v18 actualTime:0 error:0];
  if (v13)
  {
    v14 = v13;
    if (CGImageGetWidth(v13) && CGImageGetHeight(v14))
    {
      v15 = [MEMORY[0x1E69DCAB8] imageWithCGImage:v14];
    }

    else
    {
      v15 = 0;
    }

    CFRelease(v14);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (void)endSeeking
{
  playerController = [(AVPlayerViewController *)self->_playerViewController playerController];
  [playerController endScanningBackward:self];

  playerController2 = [(AVPlayerViewController *)self->_playerViewController playerController];
  [playerController2 endScanningForward:self];
}

- (void)beginSeekingBackward
{
  playerController = [(AVPlayerViewController *)self->_playerViewController playerController];
  [playerController beginScanningBackward:self];
}

- (void)beginSeekingForward
{
  playerController = [(AVPlayerViewController *)self->_playerViewController playerController];
  [playerController beginScanningForward:self];
}

- (void)setCurrentPlaybackRate:(float)rate
{
  playerController = [(AVPlayerViewController *)self->_playerViewController playerController];
  [playerController setRate:rate];
}

- (float)currentPlaybackRate
{
  playerController = [(AVPlayerViewController *)self->_playerViewController playerController];
  [playerController rate];
  v4 = v3;

  return v4;
}

- (void)setCurrentPlaybackTime:(double)time
{
  playerController = [(AVPlayerViewController *)self->_playerViewController playerController];
  [playerController seekToTime:time];
}

- (double)currentPlaybackTime
{
  playerController = [(AVPlayerViewController *)self->_playerViewController playerController];
  [playerController currentTime];
  v4 = v3;

  return v4;
}

- (void)pause
{
  playerController = [(AVPlayerViewController *)self->_playerViewController playerController];
  [playerController pause:self];
}

- (void)play
{
  [(MPMoviePlayerController *)self prepareToPlay];
  playerController = [(AVPlayerViewController *)self->_playerViewController playerController];
  [playerController play:self];
}

- (BOOL)isPreparedToPlay
{
  player = [(AVPlayerViewController *)self->_playerViewController player];
  v3 = player != 0;

  return v3;
}

- (void)prepareToPlay
{
  player = [(AVPlayerViewController *)self->_playerViewController player];
  currentItem = [player currentItem];

  if (!currentItem)
  {
    v5 = [MEMORY[0x1E6988098] playerWithURL:self->_contentURL];
    [(AVPlayerViewController *)self->_playerViewController setPlayer:v5];

    shouldAutoplay = self->_shouldAutoplay;
    player2 = [(AVPlayerViewController *)self->_playerViewController player];
    [player2 setAutomaticallyWaitsToMinimizeStalling:shouldAutoplay];

    if (self->_useApplicationAudioSession)
    {
      auxiliarySession = [MEMORY[0x1E6958460] auxiliarySession];
      player3 = [(AVPlayerViewController *)self->_playerViewController player];
      [player3 setAudioSession:auxiliarySession];
    }
  }
}

- (BOOL)isAirPlayVideoActive
{
  playerController = [(AVPlayerViewController *)self->_playerViewController playerController];
  isExternalPlaybackActive = [playerController isExternalPlaybackActive];

  return isExternalPlaybackActive;
}

- (void)setAllowsAirPlay:(BOOL)allowsAirPlay
{
  v3 = allowsAirPlay;
  playerController = [(AVPlayerViewController *)self->_playerViewController playerController];
  [playerController setAllowsExternalPlayback:v3];
}

- (BOOL)allowsAirPlay
{
  playerController = [(AVPlayerViewController *)self->_playerViewController playerController];
  allowsExternalPlayback = [playerController allowsExternalPlayback];

  return allowsExternalPlayback;
}

- (void)setEndPlaybackTime:(NSTimeInterval)endPlaybackTime
{
  playerController = [(AVPlayerViewController *)self->_playerViewController playerController];
  [playerController setMaxTime:endPlaybackTime];
}

- (NSTimeInterval)endPlaybackTime
{
  playerController = [(AVPlayerViewController *)self->_playerViewController playerController];
  [playerController maxTime];
  v4 = v3;

  return v4;
}

- (void)setInitialPlaybackTime:(NSTimeInterval)initialPlaybackTime
{
  playerController = [(AVPlayerViewController *)self->_playerViewController playerController];
  [playerController setMinTime:initialPlaybackTime];
}

- (NSTimeInterval)initialPlaybackTime
{
  playerController = [(AVPlayerViewController *)self->_playerViewController playerController];
  [playerController minTime];
  v4 = v3;

  return v4;
}

- (CGSize)naturalSize
{
  playerController = [(AVPlayerViewController *)self->_playerViewController playerController];
  [playerController contentDimensions];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (NSTimeInterval)playableDuration
{
  playerController = [(AVPlayerViewController *)self->_playerViewController playerController];
  [playerController contentDurationWithinEndTimes];
  v4 = v3;

  return v4;
}

- (NSTimeInterval)duration
{
  playerController = [(AVPlayerViewController *)self->_playerViewController playerController];
  [playerController contentDuration];
  v4 = v3;

  return v4;
}

- (void)setScalingMode:(MPMovieScalingMode)scalingMode
{
  v5 = *MEMORY[0x1E69874E0];
  v6 = v5;
  if (scalingMode == MPMovieScalingModeAspectFit)
  {
    v9 = v5;
    v7 = MEMORY[0x1E69874E8];
  }

  else
  {
    if (scalingMode != MPMovieScalingModeAspectFill)
    {
      goto LABEL_6;
    }

    v9 = v5;
    v7 = MEMORY[0x1E69874F0];
  }

  v8 = *v7;

  v6 = v8;
LABEL_6:
  v10 = v6;
  [(AVPlayerViewController *)self->_playerViewController setVideoGravity:v6];
}

- (MPMovieScalingMode)scalingMode
{
  videoGravity = [(AVPlayerViewController *)self->_playerViewController videoGravity];
  if (videoGravity == *MEMORY[0x1E69874E0])
  {
    v3 = MPMovieScalingModeFill;
  }

  else if (videoGravity == *MEMORY[0x1E69874E8])
  {
    v3 = MPMovieScalingModeAspectFit;
  }

  else
  {
    v3 = 2 * (videoGravity == *MEMORY[0x1E69874F0]);
  }

  return v3;
}

- (void)setFullscreen:(BOOL)fullscreen animated:(BOOL)animated
{
  playerViewController = self->_playerViewController;
  if (fullscreen)
  {
    [(AVPlayerViewController *)playerViewController enterFullScreenWithCompletion:0, animated];
  }

  else
  {
    [(AVPlayerViewController *)playerViewController exitFullScreenWithCompletion:0, animated];
  }
}

- (void)setShouldAutoplay:(BOOL)shouldAutoplay
{
  if (self->_shouldAutoplay != shouldAutoplay)
  {
    v4 = shouldAutoplay;
    self->_shouldAutoplay = shouldAutoplay;
    player = [(AVPlayerViewController *)self->_playerViewController player];
    [player setAutomaticallyWaitsToMinimizeStalling:v4];
  }
}

- (void)setRepeatMode:(MPMovieRepeatMode)repeatMode
{
  if (self->_repeatMode != repeatMode)
  {
    self->_repeatMode = repeatMode;
    v4 = repeatMode == MPMovieRepeatModeOne;
    playerController = [(AVPlayerViewController *)self->_playerViewController playerController];
    [playerController setLooping:v4];
  }
}

- (void)setControlStyle:(MPMovieControlStyle)controlStyle
{
  if (self->_controlStyle != controlStyle)
  {
    self->_controlStyle = controlStyle;
    if (controlStyle <= MPMovieControlStyleFullscreen)
    {
      v4 = 4u >> (controlStyle & 7);
      [(AVPlayerViewController *)self->_playerViewController setShowsPlaybackControls:(6u >> (controlStyle & 7)) & 1];
      playerViewController = self->_playerViewController;

      [(AVPlayerViewController *)playerViewController setAllowsEnteringFullScreen:v4 & 1];
    }
  }
}

- (MPMovieLoadState)loadState
{
  playerController = [(AVPlayerViewController *)self->_playerViewController playerController];
  status = [playerController status];

  if (status == 2)
  {
    return 1;
  }

  else
  {
    return 4 * (status == 1);
  }
}

- (MPMoviePlaybackState)playbackState
{
  player = [(AVPlayerViewController *)self->_playerViewController player];
  currentItem = [player currentItem];

  if (!currentItem)
  {
    return 0;
  }

  playerController = [(AVPlayerViewController *)self->_playerViewController playerController];
  isPlaying = [playerController isPlaying];

  if (isPlaying)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

- (UIView)backgroundView
{
  backgroundView = self->_backgroundView;
  if (!backgroundView)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DD250]);
    v5 = self->_backgroundView;
    self->_backgroundView = v4;

    backgroundView = self->_backgroundView;
  }

  return backgroundView;
}

- (UIView)view
{
  proxyView = self->_proxyView;
  if (!proxyView)
  {
    v4 = [[_MPMoviePlayerProxyView alloc] initWithMoviePlayerController:self];
    v5 = self->_proxyView;
    self->_proxyView = v4;

    proxyView = self->_proxyView;
  }

  return proxyView;
}

- (void)setContentURL:(NSURL *)contentURL
{
  v4 = contentURL;
  v5 = self->_contentURL;
  if (v5 != v4)
  {
    v9 = v4;
    v6 = [(NSURL *)v5 isEqual:v4];
    v4 = v9;
    if ((v6 & 1) == 0)
    {
      v7 = [(NSURL *)v9 copy];
      v8 = self->_contentURL;
      self->_contentURL = v7;

      v4 = v9;
    }
  }
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  [(AVPlayerViewController *)self->_playerViewController removeObserver:self forKeyPath:@"videoGravity" context:_MPMoviePlayerControllerObservationContext];
  [(AVPlayerViewController *)self->_playerViewController removeObserver:self forKeyPath:@"playerController.status" context:_MPMoviePlayerControllerObservationContext];
  [(AVPlayerViewController *)self->_playerViewController removeObserver:self forKeyPath:@"isReadyForDisplay" context:_MPMoviePlayerControllerObservationContext];
  [(AVPlayerViewController *)self->_playerViewController removeObserver:self forKeyPath:@"player.currentItem" context:_MPMoviePlayerControllerObservationContext];
  [(AVPlayerViewController *)self->_playerViewController removeObserver:self forKeyPath:@"player.isExternalPlaybackActive" context:_MPMoviePlayerControllerObservationContext];
  [(AVPlayerViewController *)self->_playerViewController removeObserver:self forKeyPath:@"playerController.isPlaying" context:_MPMoviePlayerControllerObservationContext];
  [(AVPlayerViewController *)self->_playerViewController removeObserver:self forKeyPath:@"playerController.contentDuration" context:_MPMoviePlayerControllerObservationContext];
  [(AVPlayerViewController *)self->_playerViewController removeObserver:self forKeyPath:@"playerController.contentDimensions" context:_MPMoviePlayerControllerObservationContext];
  v4.receiver = self;
  v4.super_class = MPMoviePlayerController;
  [(MPMoviePlayerController *)&v4 dealloc];
}

- (MPMoviePlayerController)initWithContentURL:(NSURL *)url
{
  v4 = url;
  v12.receiver = self;
  v12.super_class = MPMoviePlayerController;
  v5 = [(MPMoviePlayerController *)&v12 init];
  if (v5)
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x2050000000;
    v6 = getAVPlayerViewControllerClass_softClass;
    v17 = getAVPlayerViewControllerClass_softClass;
    if (!getAVPlayerViewControllerClass_softClass)
    {
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __getAVPlayerViewControllerClass_block_invoke;
      v13[3] = &unk_1E7680410;
      v13[4] = &v14;
      __getAVPlayerViewControllerClass_block_invoke(v13);
      v6 = v15[3];
    }

    v7 = v6;
    _Block_object_dispose(&v14, 8);
    v8 = objc_alloc_init(v6);
    playerViewController = v5->_playerViewController;
    v5->_playerViewController = v8;

    [(AVPlayerViewController *)v5->_playerViewController setDelegate:v5];
    [(AVPlayerViewController *)v5->_playerViewController setAllowsPictureInPicturePlayback:0];
    [(AVPlayerViewController *)v5->_playerViewController setUpdatesNowPlayingInfoCenter:0];
    [(AVPlayerViewController *)v5->_playerViewController addObserver:v5 forKeyPath:@"videoGravity" options:1 context:_MPMoviePlayerControllerObservationContext];
    [(AVPlayerViewController *)v5->_playerViewController addObserver:v5 forKeyPath:@"playerController.status" options:1 context:_MPMoviePlayerControllerObservationContext];
    [(AVPlayerViewController *)v5->_playerViewController addObserver:v5 forKeyPath:@"isReadyForDisplay" options:1 context:_MPMoviePlayerControllerObservationContext];
    [(AVPlayerViewController *)v5->_playerViewController addObserver:v5 forKeyPath:@"player.currentItem" options:1 context:_MPMoviePlayerControllerObservationContext];
    [(AVPlayerViewController *)v5->_playerViewController addObserver:v5 forKeyPath:@"player.isExternalPlaybackActive" options:1 context:_MPMoviePlayerControllerObservationContext];
    [(AVPlayerViewController *)v5->_playerViewController addObserver:v5 forKeyPath:@"playerController.isPlaying" options:1 context:_MPMoviePlayerControllerObservationContext];
    [(AVPlayerViewController *)v5->_playerViewController addObserver:v5 forKeyPath:@"playerController.contentDuration" options:1 context:_MPMoviePlayerControllerObservationContext];
    [(AVPlayerViewController *)v5->_playerViewController addObserver:v5 forKeyPath:@"playerController.contentDimensions" options:1 context:_MPMoviePlayerControllerObservationContext];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v5 selector:sel__avPlayerItemDidPlayToEndNotification_ name:*MEMORY[0x1E6987A10] object:0];

    [(MPMoviePlayerController *)v5 setContentURL:v4];
    [(MPMoviePlayerController *)v5 setControlStyle:1];
  }

  return v5;
}

@end