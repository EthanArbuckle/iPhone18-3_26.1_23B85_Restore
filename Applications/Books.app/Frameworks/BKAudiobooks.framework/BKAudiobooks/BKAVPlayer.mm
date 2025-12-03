@interface BKAVPlayer
- (AVPlayerItem)currentItem;
- (BKAVPlayer)initWithResourceLoader:(id)loader;
- (BKAVPlayerDelegate)delegate;
- (BOOL)_isStreamingAssetURL;
- (BOOL)isCurrentTimeValid;
- (NSDate)currentDate;
- (double)currentTime;
- (float)_actualRate;
- (id)assetNetworkError;
- (void)_activateSessionWithCompletion:(id)completion;
- (void)_addPeriodicTimeObserver;
- (void)_handleScrubPlayPreviewAtTime:(double)time completion:(id)completion;
- (void)_pause;
- (void)_playWithSeekTime:(double)time fadeIn:(float)in completion:(id)completion;
- (void)_playbackFailedWithError:(id)error;
- (void)_playbackStalledWithError:(id)error;
- (void)_processOutputContextVolumeNotification:(id)notification;
- (void)_recreateCurrentAssetWithRestoreTime:(id)time completion:(id)completion;
- (void)_reevaluateInternalVolumeWithContextCanSetVolume:(BOOL)volume volume:(float)a4;
- (void)_reevaluateVolumeFromPlayer;
- (void)_registerAssetForDRMGroupIDDelegation:(id)delegation completion:(id)completion;
- (void)_removeAllTimeObserversWithClearObservedTimes:(BOOL)times;
- (void)_removePeriodicTimeObserver;
- (void)_revalidatePlayerItem;
- (void)_seekToTime:(double)time completionHandler:(id)handler;
- (void)_setInternalVolumeAndNotify:(float)notify;
- (void)_unregisterAssetForDRMGroupIDDelegation:(id)delegation;
- (void)_updateAudioParameters;
- (void)_updatePlayer;
- (void)addTimeObserver:(double)observer;
- (void)audioSessionInterrupted:(id)interrupted;
- (void)contentKeySession:(id)session didProvideContentKeyRequest:(id)request;
- (void)dealloc;
- (void)fadeIn:(double)in;
- (void)fadeOut:(double)out;
- (void)handleNewAccessLogEntry:(id)entry;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)pause;
- (void)play;
- (void)playerItemDidReachEnd:(id)end;
- (void)playerItemDidStallPlayback:(id)playback;
- (void)playerItemFailedToReachEnd:(id)end;
- (void)playerPlaybackWasInterrupted:(id)interrupted;
- (void)removeTimeObserver:(double)observer;
- (void)reset;
- (void)routeChanged:(id)changed;
- (void)setAsset:(id)asset;
- (void)setAssetURL:(id)l audibleDRMGroupID:(int)d completion:(id)completion;
- (void)setCurrentTime:(double)time completion:(id)completion;
- (void)setIsLoadingResources:(BOOL)resources;
- (void)setIsStalling:(BOOL)stalling;
- (void)setPlaybackRate:(float)rate;
- (void)setPlayer:(id)player;
- (void)setScrubbing:(BOOL)scrubbing;
- (void)setState:(int64_t)state;
- (void)setVolume:(float)volume;
- (void)stop;
- (void)togglePlayPause;
- (void)updateTimeObservers;
@end

@implementation BKAVPlayer

- (BKAVPlayer)initWithResourceLoader:(id)loader
{
  loaderCopy = loader;
  v38.receiver = self;
  v38.super_class = BKAVPlayer;
  v6 = [(BKAVPlayer *)&v38 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_resourceLoader, loader);
    v8 = +[NSUserDefaults standardUserDefaults];
    v9 = [v8 objectForKey:@"BKAVPlayerRateUserDefaultsKey"];
    v10 = v9;
    v11 = 1.0;
    LODWORD(v12) = 1.0;
    if (v9)
    {
      [v9 floatValue];
    }

    v7->_playbackRate = *&v12;
    v13 = [v8 objectForKey:@"BKAVPlayerVolumeUserDefaultsKey"];
    v14 = v13;
    if (v13)
    {
      [v13 floatValue];
      v11 = v15;
    }

    v7->_volume = v11;
    v7->_state = 4;
    *&v7->_lastPosition = vdupq_n_s64(0x43E0000000000000uLL);
    v7->_pendingCurrentTime = 1.79769313e308;
    v7->_audibleDRMGroupID = -1;
    CMTimeMakeWithSeconds(&v37, 0.5, 1);
    v7->_seekTolerance = v37;
    v7->_needsToUpdateTimeObservers = 0;
    v16 = objc_opt_new();
    timeObservers = v7->_timeObservers;
    v7->_timeObservers = v16;

    v18 = objc_opt_new();
    observedTimes = v7->_observedTimes;
    v7->_observedTimes = v18;

    v7->_isAudibleDRMGroupAuthorized = 0;
    *&v7->_wasInterrupted = 0;
    *&v7->_isStalling = 0;
    v7->_lastBitrate = 0.0;
    lastError = v7->_lastError;
    v7->_lastError = 0;

    v21 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v22 = dispatch_queue_create("com.apple.BKAudiobooks.outputContextQueue", v21);
    outputContextQueue = v7->_outputContextQueue;
    v7->_outputContextQueue = v22;

    v24 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v25 = dispatch_queue_create("com.apple.BKAudiobooks.accessLogQueue", v24);
    accessLogQueue = v7->_accessLogQueue;
    v7->_accessLogQueue = v25;

    objc_initWeak(&v37, v7);
    v27 = [BUCoalescingCallBlock alloc];
    v32 = _NSConcreteStackBlock;
    v33 = 3221225472;
    v34 = sub_1828;
    v35 = &unk_3C6D8;
    objc_copyWeak(&v36, &v37);
    v28 = [v27 initWithNotifyBlock:&v32 blockDescription:@"_coalescedLoadedTimeRanges in BKAVPlayer"];
    coalescedLoadedTimeRanges = v7->_coalescedLoadedTimeRanges;
    v7->_coalescedLoadedTimeRanges = v28;

    [(BUCoalescingCallBlock *)v7->_coalescedLoadedTimeRanges setCoalescingDelay:1.0, v32, v33, v34, v35];
    v30 = +[NSNotificationCenter defaultCenter];
    [v30 addObserver:v7 selector:"playerItemDidReachEnd:" name:AVPlayerItemDidPlayToEndTimeNotification object:0];
    [v30 addObserver:v7 selector:"playerItemDidStallPlayback:" name:AVPlayerItemPlaybackStalledNotification object:0];
    [v30 addObserver:v7 selector:"playerItemFailedToReachEnd:" name:AVPlayerItemFailedToPlayToEndTimeNotification object:0];
    [v30 addObserver:v7 selector:"playerPlaybackWasInterrupted:" name:AVPlayerPlaybackWasInterruptedNotification object:0];
    [v30 addObserver:v7 selector:"routeChanged:" name:AVAudioSessionRouteChangeNotification object:0];
    [v30 addObserver:v7 selector:"audioSessionInterrupted:" name:AVAudioSessionInterruptionNotification object:0];
    [v30 addObserver:v7 selector:"handleNewAccessLogEntry:" name:AVPlayerItemNewAccessLogEntryNotification object:0];
    [v30 addObserver:v7 selector:"outputContextVolumeDidChange:" name:AVOutputContextVolumeDidChangeNotification object:0];
    [v30 addObserver:v7 selector:"outputContextDestinationChange:" name:AVOutputContextOutputDeviceDidChangeNotification object:0];

    objc_destroyWeak(&v36);
    objc_destroyWeak(&v37);
  }

  return v7;
}

- (void)dealloc
{
  [(BKAVPlayer *)self _unregisterAssetForDRMGroupIDDelegation:self->_asset];
  [(BKAVPlayer *)self stop];
  [(BKAVPlayer *)self setPlayer:0];
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = BKAVPlayer;
  [(BKAVPlayer *)&v4 dealloc];
}

- (void)setAsset:(id)asset
{
  assetCopy = asset;
  v6 = BKAudiobooksBKAVLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v11 = assetCopy;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "setAsset: asset=%@", buf, 0xCu);
  }

  if (([(AVAsset *)self->_asset isEqual:assetCopy]& 1) == 0)
  {
    objc_storeStrong(&self->_asset, asset);
    [(BKAVPlayer *)self setLastPosition:9.22337204e18];
    [(BKAVPlayer *)self setLastSeekPosition:9.22337204e18];
    [(BKAVPlayer *)self _updatePlayer];
    _isStreamingAssetURL = [(BKAVPlayer *)self _isStreamingAssetURL];
    if (assetCopy)
    {
      if ((_isStreamingAssetURL & 1) == 0)
      {
        v8[0] = _NSConcreteStackBlock;
        v8[1] = 3221225472;
        v8[2] = sub_1EF0;
        v8[3] = &unk_3C700;
        v9 = assetCopy;
        [v9 loadValuesAsynchronouslyForKeys:&off_3E090 completionHandler:v8];
      }
    }
  }
}

- (void)setAssetURL:(id)l audibleDRMGroupID:(int)d completion:(id)completion
{
  lCopy = l;
  completionCopy = completion;
  v11 = BKAudiobooksBKAVLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v19 = lCopy;
    _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "setAssetURL:audibleDRMGroupID: assetURL=%@", buf, 0xCu);
  }

  assetURL = [(BKAVPlayer *)self assetURL];
  if ([lCopy isEqual:assetURL])
  {
    audibleDRMGroupID = self->_audibleDRMGroupID;

    if (audibleDRMGroupID == d)
    {
      v14 = objc_retainBlock(completionCopy);
      v15 = v14;
      if (v14)
      {
        (*(v14 + 2))(v14);
      }

LABEL_12:

      goto LABEL_13;
    }
  }

  else
  {
  }

  if (lCopy)
  {
    objc_storeStrong(&self->_assetURL, l);
    self->_lastSeekPosition = 9.22337204e18;
    if (self->_audibleDRMGroupID != d)
    {
      self->_isAudibleDRMGroupAuthorized = 0;
      self->_audibleDRMGroupID = d;
    }

    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_210C;
    v16[3] = &unk_3C728;
    v17 = completionCopy;
    [(BKAVPlayer *)self _recreateCurrentAssetWithCompletion:v16];
    v15 = v17;
    goto LABEL_12;
  }

LABEL_13:
}

- (void)_recreateCurrentAssetWithRestoreTime:(id)time completion:(id)completion
{
  timeCopy = time;
  completionCopy = completion;
  objc_initWeak(&location, self);
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_2524;
  v27[3] = &unk_3C778;
  objc_copyWeak(&v30, &location);
  v8 = timeCopy;
  v28 = v8;
  v9 = completionCopy;
  v29 = v9;
  v10 = objc_retainBlock(v27);
  isStreaming = [(BKAVPlayer *)self isStreaming];
  v12 = BKAudiobooksBKAVLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "_recreateCurrentAssetWithCompletion:", buf, 2u);
  }

  if ([(AVAsset *)self->_asset bk_isAudible])
  {
    [(BKAVPlayer *)self _unregisterAssetForDRMGroupIDDelegation:self->_asset];
  }

  v13 = [AVURLAsset URLAssetWithURL:self->_assetURL options:0];
  if (isStreaming)
  {
    v14 = BKAudiobooksStreamingLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      assetURL = self->_assetURL;
      *buf = 138412546;
      v33 = assetURL;
      v34 = 2112;
      v35 = 0;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "Setting up streaming asset %@ with options %@", buf, 0x16u);
    }

    if (!self->_hlsQueue)
    {
      v16 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v17 = dispatch_queue_create("com.apple.BKAudiobooks.hlsQueue", v16);
      hlsQueue = self->_hlsQueue;
      self->_hlsQueue = v17;
    }

    resourceLoader = [v13 resourceLoader];
    [resourceLoader setPreloadsEligibleContentKeys:1];

    resourceLoader2 = [v13 resourceLoader];
    resourceLoader3 = [(BKAVPlayer *)self resourceLoader];
    [resourceLoader2 setDelegate:resourceLoader3 queue:self->_hlsQueue];

    [(BKAVPlayer *)self setLastBitrate:0.0];
    [(BKAVPlayer *)self setIsLoadingResources:1];
  }

  if ([v13 bk_isAudible])
  {
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_27AC;
    v24[3] = &unk_3C7A0;
    objc_copyWeak(&v26, &location);
    v25 = v10;
    [(BKAVPlayer *)self _registerAssetForDRMGroupIDDelegation:v13 completion:v24];

    objc_destroyWeak(&v26);
  }

  else
  {
    [(BKAVPlayer *)self setAsset:v13];
    v22 = objc_retainBlock(v10);
    v23 = v22;
    if (v22)
    {
      (v22[2])(v22);
    }
  }

  objc_destroyWeak(&v30);
  objc_destroyWeak(&location);
}

- (AVPlayerItem)currentItem
{
  player = [(BKAVPlayer *)self player];
  currentItem = [player currentItem];

  return currentItem;
}

- (NSDate)currentDate
{
  currentItem = [(BKAVPlayer *)self currentItem];
  currentDate = [currentItem currentDate];

  return currentDate;
}

- (void)play
{
  if (![(BKAVPlayer *)self isPlaying])
  {
    [(BKAVPlayer *)self pendingCurrentTime];

    [BKAVPlayer _playWithSeekTime:"_playWithSeekTime:fadeIn:" fadeIn:?];
  }
}

- (void)pause
{
  [(BKAVPlayer *)self setWasInterruptedEarly:0];
  [(BKAVPlayer *)self setWasInterrupted:0];
  if ([(BKAVPlayer *)self isPlaying]|| [(BKAVPlayer *)self isPlaybackPending])
  {

    [(BKAVPlayer *)self _pause];
  }
}

- (void)_pause
{
  player = [(BKAVPlayer *)self player];
  [player setRate:0.0];
}

- (void)stop
{
  player = [(BKAVPlayer *)self player];
  [player setRate:0.0];

  [(BKAVPlayer *)self setPendingCurrentTime:0.0];
  isStopping = [(BKAVPlayer *)self isStopping];
  [(BKAVPlayer *)self setIsStopping:1];
  [(BKAVPlayer *)self setState:4];

  [(BKAVPlayer *)self setIsStopping:isStopping];
}

- (void)togglePlayPause
{
  if ([(BKAVPlayer *)self isPlaying]|| [(BKAVPlayer *)self isPlaybackPending])
  {

    [(BKAVPlayer *)self pause];
  }

  else
  {

    [(BKAVPlayer *)self play];
  }
}

- (void)fadeIn:(double)in
{
  if (![(BKAVPlayer *)self isPlaying])
  {

    *&v5 = in;
    [(BKAVPlayer *)self _playWithSeekTime:1.79769313e308 fadeIn:v5];
  }
}

- (void)fadeOut:(double)out
{
  player = [(BKAVPlayer *)self player];
  CMTimeMakeWithSeconds(&v5, out, 1000000000);
  [player setRate:&v5 withVolumeRampDuration:0.0];
}

- (void)reset
{
  v3 = BKAudiobooksBKAVLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v13) = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "player reset", &v13, 2u);
  }

  [(BKAVPlayer *)self lastPosition];
  v5 = v4;
  [(BKAVPlayer *)self lastSeekPosition];
  v7 = v6;
  if (v5 == 9.22337204e18)
  {
    if (v6 == 9.22337204e18)
    {
      goto LABEL_15;
    }

    v10 = BKAudiobooksBKAVLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 134217984;
      v14 = v7;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "lastSeekPosition is %lf, using that position to reset", &v13, 0xCu);
    }
  }

  else
  {
    v8 = BKAudiobooksBKAVLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 134217984;
      v14 = v5;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "lastPosition is %lf, using that position to reset", &v13, 0xCu);
    }

    [(BKAVPlayer *)self lastPosition];
    v7 = v9;
  }

  if (v7 != 9.22337204e18)
  {
    v11 = BKAudiobooksBKAVLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "resetting player", &v13, 2u);
    }

    [(BKAVPlayer *)self setPlayer:0];
    [(BKAVPlayer *)self setContentKeySession:0];
    v12 = [NSNumber numberWithDouble:v7];
    [(BKAVPlayer *)self _recreateCurrentAssetWithRestoreTime:v12 completion:0];
    goto LABEL_17;
  }

LABEL_15:
  v12 = BKAudiobooksBKAVLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    sub_20D74();
  }

LABEL_17:
}

- (void)setScrubbing:(BOOL)scrubbing
{
  if (self->_scrubbing != scrubbing)
  {
    v10[5] = v3;
    v10[6] = v4;
    self->_scrubbing = scrubbing;
    if (scrubbing)
    {
      self->_wasPlayingBeforeScrubbing = [(BKAVPlayer *)self isPlaying];
      [(AVPlayer *)self->_player setActionAtItemEnd:2];
      v6 = (self->_scrubPausableDispatchAfterGeneration + 1);
      self->_scrubPausableDispatchAfterGeneration = v6;
      objc_initWeak(v10, self);
      v7 = dispatch_time(0, 400000000);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_2F30;
      block[3] = &unk_3C7C8;
      objc_copyWeak(v9, v10);
      v9[1] = v6;
      dispatch_after(v7, &_dispatch_main_q, block);
      objc_destroyWeak(v9);
      objc_destroyWeak(v10);
    }

    else
    {
      [(AVPlayer *)self->_player setActionAtItemEnd:1];
      ++self->_scrubDispatchAfterGeneration;
      if (self->_wasPlayingBeforeScrubbing && self->_state == 3)
      {
        [(BKAVPlayer *)self play];
      }

      self->_wasPlayingBeforeScrubbing = 0;
      ++self->_scrubPausableDispatchAfterGeneration;
      self->_scrubPausable = 0;
    }
  }
}

- (void)setIsStalling:(BOOL)stalling
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_309C;
  v6[3] = &unk_3C7F0;
  stallingCopy = stalling;
  v6[4] = self;
  v3 = objc_retainBlock(v6);
  if (v3)
  {
    if (+[NSThread isMainThread])
    {
      (v3[2])(v3);
    }

    else
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_3198;
      block[3] = &unk_3C6B0;
      v5 = v3;
      dispatch_async(&_dispatch_main_q, block);
    }
  }
}

- (void)setIsLoadingResources:(BOOL)resources
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_32B4;
  v6[3] = &unk_3C7F0;
  resourcesCopy = resources;
  v6[4] = self;
  v3 = objc_retainBlock(v6);
  if (v3)
  {
    if (+[NSThread isMainThread])
    {
      (v3[2])(v3);
    }

    else
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_33B0;
      block[3] = &unk_3C6B0;
      v5 = v3;
      dispatch_async(&_dispatch_main_q, block);
    }
  }
}

- (void)setPlaybackRate:(float)rate
{
  self->_playbackRate = rate;
  v5 = +[NSUserDefaults standardUserDefaults];
  *&v6 = rate;
  v7 = [NSNumber numberWithFloat:v6];
  [v5 setObject:v7 forKey:@"BKAVPlayerRateUserDefaultsKey"];

  if ([(BKAVPlayer *)self wasInterrupted])
  {

    [(BKAVPlayer *)self play];
  }

  else if ([(BKAVPlayer *)self isPlaying])
  {
    playbackRate = self->_playbackRate;
    player = [(BKAVPlayer *)self player];
    *&v9 = playbackRate;
    [player setRate:v9];
  }
}

- (float)_actualRate
{
  player = [(BKAVPlayer *)self player];
  v4 = 0.0;
  if ([player timeControlStatus] == &dword_0 + 2)
  {
    player2 = [(BKAVPlayer *)self player];
    [player2 rate];
    v4 = v6;
  }

  return v4;
}

- (void)setVolume:(float)volume
{
  if (self->_volume != volume)
  {
    player = [(BKAVPlayer *)self player];
    outputContext = [player outputContext];
    v6 = [outputContext canSetVolume] == 0;
    v8 = player;
    if (!v6)
    {
      v8 = outputContext;
    }

    *&v7 = volume;
    [v8 setVolume:v7];
    *&v9 = volume;
    [(BKAVPlayer *)self _setInternalVolumeAndNotify:v9];
    v10 = +[NSUserDefaults standardUserDefaults];
    *&v11 = volume;
    v12 = [NSNumber numberWithFloat:v11];
    [v10 setObject:v12 forKey:@"BKAVPlayerVolumeUserDefaultsKey"];
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if (off_47238 == context)
  {
    if ([pathCopy isEqualToString:@"currentItem"])
    {
      v13 = [changeCopy objectForKey:NSKeyValueChangeOldKey];
      if (v13)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          [v13 removeObserver:self forKeyPath:@"status" context:off_47238];
          [v13 removeObserver:self forKeyPath:@"loadedTimeRanges" context:off_47238];
        }
      }

      currentItem = [(BKAVPlayer *)self currentItem];

      if (currentItem)
      {
        currentItem2 = [(BKAVPlayer *)self currentItem];
        [currentItem2 addObserver:self forKeyPath:@"status" options:4 context:off_47238];

        currentItem3 = [(BKAVPlayer *)self currentItem];
        [currentItem3 addObserver:self forKeyPath:@"loadedTimeRanges" options:4 context:off_47238];

        objc_initWeak(location, self);
        currentItem4 = [(BKAVPlayer *)self currentItem];
        asset = [currentItem4 asset];
        v19 = [NSArray arrayWithObjects:@"tracks", @"duration", 0];
        v52[0] = _NSConcreteStackBlock;
        v52[1] = 3221225472;
        v52[2] = sub_3E44;
        v52[3] = &unk_3C818;
        objc_copyWeak(&v53, location);
        [asset loadValuesAsynchronouslyForKeys:v19 completionHandler:v52];

        objc_destroyWeak(&v53);
        objc_destroyWeak(location);
      }
    }

    else if ([pathCopy isEqualToString:@"status"])
    {
      currentItem5 = [(BKAVPlayer *)self currentItem];

      if (currentItem5)
      {
        currentItem6 = [(BKAVPlayer *)self currentItem];
        status = [currentItem6 status];

        if (status == &dword_0 + 2)
        {
          currentItem7 = [(BKAVPlayer *)self currentItem];
          error = [currentItem7 error];
          lastError = self->_lastError;
          self->_lastError = error;

          v42 = BKAudiobooksBKAVLog();
          if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
          {
            sub_20DB0(&self->_lastError, self, v42);
          }

          [(BKAVPlayer *)self pause];
          [(BKAVPlayer *)self _playbackFailedWithError:self->_lastError];
          [(BKAVPlayer *)self setIsLoadingResources:0];
        }

        else if (status == &dword_0 + 1)
        {
          if ([(BKAVPlayer *)self isPlaybackPending])
          {
            objc_initWeak(location, self);
            [(BKAVPlayer *)self pendingCurrentTime];
            v24 = v23;
            [(BKAVPlayer *)self playFadeInTime];
            v26 = v25;
            v50[0] = _NSConcreteStackBlock;
            v50[1] = 3221225472;
            v50[2] = sub_3F30;
            v50[3] = &unk_3C818;
            objc_copyWeak(&v51, location);
            LODWORD(v27) = v26;
            [(BKAVPlayer *)self _playWithSeekTime:v50 fadeIn:v24 completion:v27];
            objc_destroyWeak(&v51);
            objc_destroyWeak(location);
          }

          else
          {
            [(BKAVPlayer *)self setIsLoadingResources:0];
            if ([(BKAVPlayer *)self needsToUpdateTimeObservers])
            {
              [(BKAVPlayer *)self updateTimeObservers];
            }
          }
        }
      }
    }

    else if ([pathCopy isEqualToString:@"loadedTimeRanges"])
    {
      currentItem8 = [(BKAVPlayer *)self currentItem];

      if (currentItem8 == objectCopy)
      {
        currentItem9 = [(BKAVPlayer *)self currentItem];
        loadedTimeRanges = [currentItem9 loadedTimeRanges];
        [(BKAVPlayer *)self setCurrentLoadedTimeRanges:loadedTimeRanges];

        coalescedLoadedTimeRanges = [(BKAVPlayer *)self coalescedLoadedTimeRanges];
        [coalescedLoadedTimeRanges signalWithCompletion:&stru_3C858];
      }
    }

    else if (([pathCopy isEqualToString:@"rate"] & 1) == 0 && objc_msgSend(pathCopy, "isEqualToString:", @"timeControlStatus"))
    {
      player = [(BKAVPlayer *)self player];
      timeControlStatus = [player timeControlStatus];

      if (timeControlStatus)
      {
        if (timeControlStatus == &dword_0 + 1)
        {
          v43 = BKAudiobooksBKAVLog();
          if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(location[0]) = 0;
            _os_log_impl(&dword_0, v43, OS_LOG_TYPE_DEFAULT, "AVPlayerState -> AVPlayerTimeControlStatusWaitingToPlayAtSpecifiedRate", location, 2u);
          }

          [(BKAVPlayer *)self setIsStalling:1];
        }

        else if (timeControlStatus == &dword_0 + 2)
        {
          v34 = BKAudiobooksBKAVLog();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(location[0]) = 0;
            _os_log_impl(&dword_0, v34, OS_LOG_TYPE_DEFAULT, "AVPlayerState -> AVPlayerTimeControlStatusPlaying", location, 2u);
          }

          [(BKAVPlayer *)self setIsStalling:0];
          [(BKAVPlayer *)self setState:2];
          [(BKAVPlayer *)self pendingCurrentTime];
          if (v35 != 1.79769313e308)
          {
            v36 = BKAudiobooksBKAVLog();
            if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
            {
              [(BKAVPlayer *)self pendingCurrentTime];
              LODWORD(location[0]) = 134217984;
              *(location + 4) = v37;
              _os_log_impl(&dword_0, v36, OS_LOG_TYPE_DEFAULT, "handing remaining pendingCurrentTime %f", location, 0xCu);
            }

            [(BKAVPlayer *)self pendingCurrentTime];
            [(BKAVPlayer *)self _seekToTime:0 completionHandler:?];
          }

          objc_initWeak(location, self);
          outputContextQueue = [(BKAVPlayer *)self outputContextQueue];
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_3F78;
          block[3] = &unk_3C818;
          objc_copyWeak(&v49, location);
          dispatch_async(outputContextQueue, block);

          objc_destroyWeak(&v49);
          objc_destroyWeak(location);
        }
      }

      else
      {
        v44 = BKAudiobooksBKAVLog();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
        {
          isStopping = [(BKAVPlayer *)self isStopping];
          v46 = &stru_3D458;
          if (isStopping)
          {
            v46 = @" (Ignoring because BKAVPlayer is in the process of stopping)";
          }

          LODWORD(location[0]) = 138543362;
          *(location + 4) = v46;
          _os_log_impl(&dword_0, v44, OS_LOG_TYPE_DEFAULT, "AVPlayerState -> AVPlayerTimeControlStatusPaused%{public}@", location, 0xCu);
        }

        [(BKAVPlayer *)self setIsStalling:0];
        if (![(BKAVPlayer *)self isStopping])
        {
          [(BKAVPlayer *)self setState:3];
        }
      }
    }
  }

  else
  {
    v47.receiver = self;
    v47.super_class = BKAVPlayer;
    [(BKAVPlayer *)&v47 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
  }
}

- (void)_playbackFailedWithError:(id)error
{
  errorCopy = error;
  delegate = [(BKAVPlayer *)self delegate];
  [delegate player:self failedWithError:errorCopy];
}

- (void)_playbackStalledWithError:(id)error
{
  errorCopy = error;
  delegate = [(BKAVPlayer *)self delegate];
  [delegate player:self playbackStalledWithError:errorCopy];
}

- (void)playerItemDidReachEnd:(id)end
{
  endCopy = end;
  player = [(BKAVPlayer *)self player];
  currentItem = [player currentItem];
  object = [endCopy object];

  if (currentItem == object)
  {
    [(BKAVPlayer *)self pause];
    if (![(BKAVPlayer *)self isScrubbing])
    {
      delegate = [(BKAVPlayer *)self delegate];
      [delegate playerCurrentItemEnded:self];
    }
  }
}

- (void)playerItemDidStallPlayback:(id)playback
{
  playbackCopy = playback;
  player = [(BKAVPlayer *)self player];
  currentItem = [player currentItem];
  object = [playbackCopy object];

  if (currentItem == object)
  {
    v8 = BKAudiobooksBKAVLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_20E78();
    }

    currentItem2 = [(BKAVPlayer *)self currentItem];
    error = [currentItem2 error];
    lastError = self->_lastError;
    self->_lastError = error;

    [(BKAVPlayer *)self pause];
    [(BKAVPlayer *)self _playbackStalledWithError:self->_lastError];
  }
}

- (void)playerItemFailedToReachEnd:(id)end
{
  endCopy = end;
  player = [(BKAVPlayer *)self player];
  currentItem = [player currentItem];
  object = [endCopy object];

  if (currentItem == object)
  {
    userInfo = [endCopy userInfo];
    v9 = [userInfo objectForKey:AVPlayerItemFailedToPlayToEndTimeErrorKey];
    lastError = self->_lastError;
    self->_lastError = v9;

    v11 = BKAudiobooksBKAVLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_20EB4(&self->_lastError);
    }

    [(BKAVPlayer *)self _playbackFailedWithError:self->_lastError];
  }
}

- (void)playerPlaybackWasInterrupted:(id)interrupted
{
  [(BKAVPlayer *)self setWasInterruptedEarly:[(BKAVPlayer *)self isPlaying]];
  v4 = BKAudiobooksBKAVLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 67109120;
    v5[1] = [(BKAVPlayer *)self wasInterruptedEarly];
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "player playback was interrupted (was interrupted early? %d)", v5, 8u);
  }
}

- (void)routeChanged:(id)changed
{
  userInfo = [changed userInfo];
  v5 = [userInfo objectForKey:AVAudioSessionRouteChangeReasonKey];

  if ([v5 integerValue] == &dword_0 + 2)
  {
    if ([(BKAVPlayer *)self wasInterrupted])
    {
      v6 = BKAudiobooksBKAVLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "onRouteChange: already interrupted", buf, 2u);
      }
    }

    else
    {
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_4638;
      v9[3] = &unk_3C700;
      v9[4] = self;
      v6 = objc_retainBlock(v9);
      if (v6)
      {
        if (+[NSThread isMainThread])
        {
          (*(v6 + 16))(v6);
        }

        else
        {
          v7[0] = _NSConcreteStackBlock;
          v7[1] = 3221225472;
          v7[2] = sub_46AC;
          v7[3] = &unk_3C6B0;
          v8 = v6;
          dispatch_async(&_dispatch_main_q, v7);
        }
      }
    }
  }
}

- (void)audioSessionInterrupted:(id)interrupted
{
  userInfo = [interrupted userInfo];
  v5 = [userInfo objectForKey:AVAudioSessionInterruptionTypeKey];
  unsignedIntegerValue = [v5 unsignedIntegerValue];

  v7 = [userInfo objectForKey:AVAudioSessionInterruptionOptionKey];
  unsignedIntegerValue2 = [v7 unsignedIntegerValue];

  v9 = [userInfo objectForKey:AVAudioSessionInterruptionReasonKey];
  unsignedIntegerValue3 = [v9 unsignedIntegerValue];

  isPlaying = [(BKAVPlayer *)self isPlaying];
  if (unsignedIntegerValue3 == &dword_0 + 1)
  {
    v12 = BKAudiobooksBKAVLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 67109632;
      *v18 = isPlaying;
      *&v18[4] = 1024;
      *&v18[6] = [(BKAVPlayer *)self wasInterrupted];
      *v19 = 1024;
      *&v19[2] = [(BKAVPlayer *)self wasInterruptedEarly];
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "ignoring wasSuspended interruption, wasPlaying: %d, wasInterrupted: %d, wasInterruptedEarly: %d", &v17, 0x14u);
    }
  }

  else if (unsignedIntegerValue)
  {
    if (unsignedIntegerValue == &dword_0 + 1)
    {
      v13 = BKAudiobooksBKAVLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 67109376;
        *v18 = isPlaying;
        *&v18[4] = 1024;
        *&v18[6] = [(BKAVPlayer *)self wasInterruptedEarly];
        _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "handleInterruption began, wasPlaying %d, wasInterruptedEarly %d", &v17, 0xEu);
      }

      [(BKAVPlayer *)self _pause];
      v14 = (isPlaying & 1) != 0 || [(BKAVPlayer *)self wasInterruptedEarly];
      [(BKAVPlayer *)self setWasInterrupted:v14];
      if ([(BKAVPlayer *)self wasInterrupted])
      {
        delegate = [(BKAVPlayer *)self delegate];
        [delegate playerWasInterrupted:self];
      }

      [(BKAVPlayer *)self setWasInterruptedEarly:0];
    }
  }

  else
  {
    v15 = BKAudiobooksBKAVLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 134218496;
      *v18 = unsignedIntegerValue2;
      *&v18[8] = 1024;
      *v19 = [(BKAVPlayer *)self wasInterrupted];
      *&v19[4] = 1024;
      v20 = unsignedIntegerValue2 & 1;
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "handleInterruption ended: %lu wasInterrupted: %d resumable: %d", &v17, 0x18u);
    }

    if ((unsignedIntegerValue2 & 1) != 0 && [(BKAVPlayer *)self wasInterrupted])
    {
      [(BKAVPlayer *)self play];
    }

    [(BKAVPlayer *)self setWasInterrupted:0];
  }
}

- (void)handleNewAccessLogEntry:(id)entry
{
  entryCopy = entry;
  objc_opt_class();
  object = [entryCopy object];

  v6 = BUDynamicCast();

  objc_initWeak(&location, self);
  accessLogQueue = self->_accessLogQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_4AA8;
  block[3] = &unk_3C8D0;
  objc_copyWeak(&v11, &location);
  v10 = v6;
  v8 = v6;
  dispatch_async(accessLogQueue, block);

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

- (void)_seekToTime:(double)time completionHandler:(id)handler
{
  handlerCopy = handler;
  player = [(BKAVPlayer *)self player];
  currentItem = [player currentItem];
  [currentItem cancelPendingSeeks];

  [(BKAVPlayer *)self setLastPosition:9.22337204e18];
  [(BKAVPlayer *)self setPendingCurrentTime:time];
  [(BKAVPlayer *)self setLastSeekPosition:time];
  player2 = [(BKAVPlayer *)self player];
  CMTimeMakeWithSeconds(&v16, time, 1000000000);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_4DDC;
  v13[3] = &unk_3C8F8;
  timeCopy = time;
  v13[4] = self;
  v14 = handlerCopy;
  seekTolerance = self->_seekTolerance;
  v11 = self->_seekTolerance;
  v10 = handlerCopy;
  [player2 seekToTime:&v16 toleranceBefore:&seekTolerance toleranceAfter:&v11 completionHandler:v13];
}

- (double)currentTime
{
  player = [(BKAVPlayer *)self player];
  currentItem = [player currentItem];

  [(BKAVPlayer *)self pendingCurrentTime];
  if (v5 == 1.79769313e308)
  {
    Seconds = 0.0;
    if (currentItem)
    {
      player2 = [(BKAVPlayer *)self player];
      v9 = player2;
      if (player2)
      {
        [player2 currentTime];
      }

      else
      {
        memset(&time, 0, sizeof(time));
      }

      Seconds = CMTimeGetSeconds(&time);
    }
  }

  else
  {
    [(BKAVPlayer *)self pendingCurrentTime];
    Seconds = v6;
  }

  return Seconds;
}

- (void)setCurrentTime:(double)time completion:(id)completion
{
  completionCopy = completion;
  v7 = completionCopy;
  if (time >= 0.0)
  {
    if (self->_scrubbing && self->_wasPlayingBeforeScrubbing)
    {
      [(BKAVPlayer *)self _handleScrubPlayPreviewAtTime:completionCopy completion:time];
    }

    else
    {
      v11 = BKAudiobooksBKAVLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        timeCopy = time;
        _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "_seekToTime: %lf (setCurrentTime)", buf, 0xCu);
      }

      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_5168;
      v12[3] = &unk_3C920;
      timeCopy2 = time;
      v13 = v7;
      [(BKAVPlayer *)self _seekToTime:v12 completionHandler:time];
    }
  }

  else
  {
    v8 = objc_retainBlock(completionCopy);
    v9 = v8;
    if (v8)
    {
      (*(v8 + 2))(v8, 0);
    }

    v10 = BKAudiobooksBKAVLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_20F68();
    }
  }
}

- (BOOL)isCurrentTimeValid
{
  [(BKAVPlayer *)self pendingCurrentTime];
  if (v3 != 1.79769313e308)
  {
    return 1;
  }

  player = [(BKAVPlayer *)self player];
  currentItem = [player currentItem];

  if (currentItem)
  {
    v4 = [currentItem status] == &dword_0 + 1;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_handleScrubPlayPreviewAtTime:(double)time completion:(id)completion
{
  completionCopy = completion;
  if (self->_state == 2 && self->_scrubPausable)
  {
    [(BKAVPlayer *)self _pause];
    *&self->_playingPreview = 0;
    v7 = (self->_scrubDispatchAfterGeneration + 1);
    self->_scrubDispatchAfterGeneration = v7;
    objc_initWeak(location, self);
    v8 = dispatch_time(0, 400000000);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_550C;
    block[3] = &unk_3C7C8;
    objc_copyWeak(v16, location);
    v16[1] = v7;
    dispatch_after(v8, &_dispatch_main_q, block);
    v9 = objc_retainBlock(completionCopy);
    v10 = v9;
    if (v9)
    {
      (*(v9 + 2))(v9, 1);
    }

    objc_destroyWeak(v16);
    objc_destroyWeak(location);
  }

  else
  {
    v11 = BKAudiobooksBKAVLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(location[0]) = 134217984;
      *(location + 4) = *&time;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "_seekToTime: %lf (_handleScrubPlayPreviewAtTime:completion:)", location, 0xCu);
    }

    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_5660;
    v12[3] = &unk_3C920;
    timeCopy = time;
    v13 = completionCopy;
    [(BKAVPlayer *)self _seekToTime:v12 completionHandler:time];
  }
}

- (void)setPlayer:(id)player
{
  p_player = &self->_player;
  playerCopy = player;
  if (*p_player != playerCopy)
  {
    [(BKAVPlayer *)self _removePeriodicTimeObserver];
    [(BKAVPlayer *)self _removeAllTimeObserversWithClearObservedTimes:0];
    [(BKAVPlayer *)self setCurrentLoadedTimeRanges:0];
    [(AVPlayer *)self->_player removeObserver:self forKeyPath:@"currentItem" context:off_47238];
    [(AVPlayer *)self->_player removeObserver:self forKeyPath:@"rate" context:off_47238];
    [(AVPlayer *)self->_player removeObserver:self forKeyPath:@"timeControlStatus" context:off_47238];
    if (!playerCopy)
    {
      currentItem = [(AVPlayer *)self->_player currentItem];
      [currentItem removeObserver:self forKeyPath:@"status" context:off_47238];

      currentItem2 = [(AVPlayer *)self->_player currentItem];
      [currentItem2 removeObserver:self forKeyPath:@"loadedTimeRanges" context:off_47238];
    }

    objc_storeStrong(&self->_player, player);
    if (*p_player)
    {
      [(AVPlayer *)*p_player addObserver:self forKeyPath:@"currentItem" options:6 context:off_47238];
      [(AVPlayer *)self->_player addObserver:self forKeyPath:@"rate" options:0 context:off_47238];
      [(AVPlayer *)self->_player addObserver:self forKeyPath:@"timeControlStatus" options:0 context:off_47238];
    }
  }
}

- (void)_updatePlayer
{
  [(BKAVPlayer *)self _removePeriodicTimeObserver];
  [(BKAVPlayer *)self _removeAllTimeObserversWithClearObservedTimes:0];
  [(BKAVPlayer *)self setCurrentLoadedTimeRanges:0];
  asset = [(BKAVPlayer *)self asset];

  v4 = BKAudiobooksBKAVLog();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (asset)
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "_updatePlayer, we have asset, about to create playerItem", buf, 2u);
    }

    [(BKAVPlayer *)self _revalidatePlayerItem];
    [(BKAVPlayer *)self _addPeriodicTimeObserver];
  }

  else
  {
    if (v5)
    {
      *v7 = 0;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "_updatePlayer, no asset, about to call replaceCurrentItemWithPlayerItem nil", v7, 2u);
    }

    player = [(BKAVPlayer *)self player];
    [player replaceCurrentItemWithPlayerItem:0];
  }
}

- (void)_revalidatePlayerItem
{
  asset = [(BKAVPlayer *)self asset];
  v4 = [AVPlayerItem playerItemWithAsset:asset];

  _isStreamingAssetURL = [(BKAVPlayer *)self _isStreamingAssetURL];
  if (_isStreamingAssetURL)
  {
    [v4 setPreferredForwardBufferDuration:3600.0];
    [v4 setCanUseNetworkResourcesForLiveStreamingWhilePaused:1];
  }

  player = [(BKAVPlayer *)self player];

  v7 = BKAudiobooksBKAVLog();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (player)
  {
    if (v8)
    {
      *v13 = 0;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "_updatePlayer, we have asset and player, about to call replaceCurrentItemWithPlayerItem", v13, 2u);
    }

    player2 = [(BKAVPlayer *)self player];
    [player2 replaceCurrentItemWithPlayerItem:v4];
  }

  else
  {
    if (v8)
    {
      *buf = 0;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "_updatePlayer, we have asset, no existing player, we created a player with playerItem", buf, 2u);
    }

    v10 = [AVPlayer playerWithPlayerItem:v4];
    [(BKAVPlayer *)self setPlayer:v10];

    player3 = [(BKAVPlayer *)self player];
    [player3 setActionAtItemEnd:1];

    player2 = [(BKAVPlayer *)self player];
    [player2 setAllowsExternalPlayback:0];
  }

  if (_isStreamingAssetURL)
  {
    player4 = [(BKAVPlayer *)self player];
    [player4 setAutomaticallyWaitsToMinimizeStalling:1];
  }
}

- (void)_updateAudioParameters
{
  player = [(BKAVPlayer *)self player];
  currentItem = [player currentItem];
  [currentItem setAudioTimePitchAlgorithm:AVAudioTimePitchAlgorithmTimeDomain];
}

- (void)_playWithSeekTime:(double)time fadeIn:(float)in completion:(id)completion
{
  completionCopy = completion;
  playbackRate = self->_playbackRate;
  if (playbackRate < 0.0 || fabsf(playbackRate) < 0.01)
  {
    v10 = BKAudiobooksBKAVLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_20FA4(&self->_playbackRate);
    }

    self->_playbackRate = 1.0;
  }

  v11 = BKAudiobooksBKAVLog();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (time == 1.79769313e308)
  {
    if (!v12)
    {
      goto LABEL_12;
    }

    [(BKAVPlayer *)self playbackRate];
    v14 = v13;
    player = [(BKAVPlayer *)self player];
    [player rate];
    LODWORD(buf.value) = 134218496;
    *(&buf.value + 4) = in;
    LOWORD(buf.flags) = 2048;
    *(&buf.flags + 2) = v14;
    HIWORD(buf.epoch) = 2048;
    v51 = v16;
    v17 = "_playWithSeekTime: BKNoPendingCurrentTime fadeInTime:%.1f playbackRate:%.1f rateBeforeCall:%.2f";
    v18 = v11;
    v19 = 32;
  }

  else
  {
    if (!v12)
    {
      goto LABEL_12;
    }

    [(BKAVPlayer *)self playbackRate];
    v21 = v20;
    player = [(BKAVPlayer *)self player];
    [player rate];
    LODWORD(buf.value) = 134218752;
    *(&buf.value + 4) = time;
    LOWORD(buf.flags) = 2048;
    *(&buf.flags + 2) = in;
    HIWORD(buf.epoch) = 2048;
    v51 = v21;
    v52 = 2048;
    v53 = v22;
    v17 = "_playWithSeekTime: %.1f fadeInTime:%.1f playbackRate:%.1f rateBeforeCall:%.2f";
    v18 = v11;
    v19 = 42;
  }

  _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, v17, &buf, v19);

LABEL_12:
  v49[0] = _NSConcreteStackBlock;
  v49[1] = 3221225472;
  v49[2] = sub_6160;
  v49[3] = &unk_3C998;
  v49[4] = self;
  v23 = objc_retainBlock(v49);
  v48[0] = _NSConcreteStackBlock;
  v48[1] = 3221225472;
  v48[2] = sub_6460;
  v48[3] = &unk_3C998;
  v48[4] = self;
  v24 = objc_retainBlock(v48);
  lastError = self->_lastError;
  self->_lastError = 0;

  currentItem = [(BKAVPlayer *)self currentItem];
  status = [currentItem status];

  if (status)
  {
    if (status == &dword_0 + 2)
    {
      v29 = BKAudiobooksBKAVLog();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf.value) = 0;
        v30 = "recover player (AVPlayerItemStatusFailed)";
LABEL_25:
        _os_log_impl(&dword_0, v29, OS_LOG_TYPE_DEFAULT, v30, &buf, 2u);
      }
    }

    else
    {
      if (status != &dword_0 + 1)
      {
        goto LABEL_36;
      }

      currentItem2 = [(BKAVPlayer *)self currentItem];
      if ([currentItem2 isPlaybackLikelyToKeepUp])
      {

LABEL_27:
        [(BKAVPlayer *)self pendingCurrentTime];
        if (v35 == 1.79769313e308)
        {
          goto LABEL_35;
        }

        [(BKAVPlayer *)self pendingCurrentTime];
        v37 = v36;
        player2 = [(BKAVPlayer *)self player];
        v39 = player2;
        if (player2)
        {
          [player2 currentTime];
        }

        else
        {
          memset(&buf, 0, sizeof(buf));
        }

        v40 = vabdd_f64(v37, CMTimeGetSeconds(&buf));

        if (v40 < 0.00999999978)
        {
LABEL_35:
          [(BKAVPlayer *)self setPendingCurrentTime:1.79769313e308];
          (v24[2])(v24, completionCopy);
        }

        else
        {
          v41 = BKAudiobooksBKAVLog();
          if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
          {
            [(BKAVPlayer *)self pendingCurrentTime];
            LODWORD(buf.value) = 134217984;
            *(&buf.value + 4) = v42;
            _os_log_impl(&dword_0, v41, OS_LOG_TYPE_DEFAULT, "_seekToTime: %lf (_playWithSeekTime)", &buf, 0xCu);
          }

          [(BKAVPlayer *)self pendingCurrentTime];
          v44 = v43;
          v45[0] = _NSConcreteStackBlock;
          v45[1] = 3221225472;
          v45[2] = sub_6754;
          v45[3] = &unk_3C9E8;
          v45[4] = self;
          v46 = v24;
          v47 = completionCopy;
          [(BKAVPlayer *)self _seekToTime:v45 completionHandler:v44];
        }

        goto LABEL_36;
      }

      assetNetworkError = [(BKAVPlayer *)self assetNetworkError];

      if (!assetNetworkError)
      {
        goto LABEL_27;
      }

      v29 = BKAudiobooksBKAVLog();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf.value) = 0;
        v30 = "recover player (hasUnderlyingError)";
        goto LABEL_25;
      }
    }

    (v23[2])(v23, completionCopy);
    goto LABEL_36;
  }

  [(BKAVPlayer *)self setPendingCurrentTime:time];
  *&v31 = in;
  [(BKAVPlayer *)self setPlayFadeInTime:v31];
  [(BKAVPlayer *)self setState:1];
  v32 = objc_retainBlock(completionCopy);
  v33 = v32;
  if (v32)
  {
    (*(v32 + 2))(v32);
  }

LABEL_36:
}

- (void)_activateSessionWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = +[AVAudioSession sharedInstance];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_68C4;
  v6[3] = &unk_3CA38;
  v7 = completionCopy;
  v5 = completionCopy;
  [v4 activateWithOptions:0 completionHandler:v6];
}

- (void)setState:(int64_t)state
{
  state = self->_state;
  if (state != state)
  {
    self->_state = state;
    v6 = BKAudiobooksBKAVLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = NSStringFromBKAudiobookPlayerState(self->_state);
      v9 = 138543362;
      v10 = v7;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "state = %{public}@", &v9, 0xCu);
    }

    delegate = [(BKAVPlayer *)self delegate];
    [delegate player:self stateChangedFrom:state to:self->_state];
  }

  if (state == 2)
  {
    [(BKAVPlayer *)self setWasInterrupted:0];
  }
}

- (void)_registerAssetForDRMGroupIDDelegation:(id)delegation completion:(id)completion
{
  completionCopy = completion;
  delegationCopy = delegation;
  objc_opt_class();
  v7 = BUDynamicCast();

  contentKeyRecipients = [(AVContentKeySession *)self->_contentKeySession contentKeyRecipients];
  v9 = [contentKeyRecipients containsObject:v7];

  pendingAssetAuth = [(BKAVPlayer *)self pendingAssetAuth];
  asset = [pendingAssetAuth asset];
  v12 = [asset isEqual:v7];

  if (v7 && !((self->_audibleDRMGroupID == -1) | v9 & 1 | v12 & 1))
  {
    if (!self->_contentKeySession)
    {
      self->_isAudibleDRMGroupAuthorized = 0;
      v13 = [AVContentKeySession contentKeySessionWithKeySystem:AVContentKeySystemAuthorizationToken];
      contentKeySession = self->_contentKeySession;
      self->_contentKeySession = v13;

      [(AVContentKeySession *)self->_contentKeySession setDelegate:self queue:&_dispatch_main_q];
    }

    v15 = self->_contentKeySession;
    if (!self->_isAudibleDRMGroupAuthorized)
    {
      [(AVContentKeySession *)v15 processContentKeyRequestWithIdentifier:@"AudibleGroupID" initializationData:0 options:0];
      v17 = [[BKPendingAssetAuthorization alloc] initWithAsset:v7 completion:completionCopy];
      [(BKAVPlayer *)self setPendingAssetAuth:v17];
      goto LABEL_10;
    }

    [(AVContentKeySession *)v15 addContentKeyRecipient:v7];
  }

  v16 = objc_retainBlock(completionCopy);
  v17 = v16;
  if (v16)
  {
    (v16->_completion)(v16, v7);
  }

LABEL_10:
}

- (void)_unregisterAssetForDRMGroupIDDelegation:(id)delegation
{
  delegationCopy = delegation;
  objc_opt_class();
  v6 = BUDynamicCast();

  if (v6)
  {
    [(AVContentKeySession *)self->_contentKeySession removeContentKeyRecipient:v6];
  }

  contentKeySession = self->_contentKeySession;
  self->_contentKeySession = 0;
}

- (BOOL)_isStreamingAssetURL
{
  assetURL = [(BKAVPlayer *)self assetURL];
  bk_isStreamingAssetURL = [assetURL bk_isStreamingAssetURL];

  return bk_isStreamingAssetURL;
}

- (id)assetNetworkError
{
  currentItem = [(BKAVPlayer *)self currentItem];
  errorLog = [currentItem errorLog];
  events = [errorLog events];

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v5 = events;
  v6 = [v5 countByEnumeratingWithState:&v27 objects:v33 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v28;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v28 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v27 + 1) + 8 * i);
        errorDomain = [v10 errorDomain];
        v12 = [errorDomain isEqualToString:@"CoreMediaErrorDomain"];

        errorDomain2 = [v10 errorDomain];
        v14 = [errorDomain2 isEqualToString:NSURLErrorDomain];

        if (!v14 || ((v15 = [v10 errorStatusCode], v15 + 1009 <= 6) ? (v16 = ((1 << (v15 - 15)) & 0x71) == 0) : (v16 = 1), v16))
        {
          if ((v12 & 1) == 0)
          {
            errorDomain3 = [v10 errorDomain];
            v18 = [errorDomain3 isEqualToString:kCFErrorDomainCFNetwork];

            if (!v18)
            {
              continue;
            }
          }
        }

        errorComment = [v10 errorComment];
        v21 = [errorComment length];

        if (v21)
        {
          v31 = NSDebugDescriptionErrorKey;
          errorComment2 = [v10 errorComment];
          v32 = errorComment2;
          v23 = [NSDictionary dictionaryWithObjects:&v32 forKeys:&v31 count:1];
        }

        else
        {
          v23 = 0;
        }

        errorDomain4 = [v10 errorDomain];
        v19 = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", errorDomain4, [v10 errorStatusCode], v23);

        v25 = BKAudiobooksBKAVLog();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          sub_21098(v10, v25);
        }

        goto LABEL_24;
      }

      v7 = [v5 countByEnumeratingWithState:&v27 objects:v33 count:16];
      v19 = 0;
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v19 = 0;
  }

LABEL_24:

  return v19;
}

- (void)_setInternalVolumeAndNotify:(float)notify
{
  if (vabdd_f64(self->_volume, notify) >= 0.00999999978)
  {
    self->_volume = notify;
    delegate = [(BKAVPlayer *)self delegate];
    *&v5 = notify;
    [delegate player:self volumeDidChange:v5];
  }
}

- (void)_reevaluateVolumeFromPlayer
{
  player = [(BKAVPlayer *)self player];
  outputContext = [player outputContext];
  v4 = outputContext;
  if (outputContext)
  {
    canSetVolume = [outputContext canSetVolume];
    [v4 volume];
    [(BKAVPlayer *)self _reevaluateInternalVolumeWithContextCanSetVolume:canSetVolume volume:?];
  }
}

- (void)_reevaluateInternalVolumeWithContextCanSetVolume:(BOOL)volume volume:(float)a4
{
  if (volume)
  {

    [(BKAVPlayer *)self _setInternalVolumeAndNotify:?];
  }

  else
  {
    player = [(BKAVPlayer *)self player];
    [player volume];
    [(BKAVPlayer *)self _setInternalVolumeAndNotify:?];
  }
}

- (void)_processOutputContextVolumeNotification:(id)notification
{
  notificationCopy = notification;
  objc_opt_class();
  object = [notificationCopy object];
  v6 = BUDynamicCast();

  if (v6)
  {
    contextID = [v6 contextID];
    v8 = [contextID copy];

    objc_initWeak(&location, self);
    LOBYTE(contextID) = [v6 canSetVolume];
    [v6 volume];
    v10 = v9;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_7418;
    v15[3] = &unk_3CA60;
    objc_copyWeak(&v18, &location);
    v11 = v8;
    v16 = v11;
    selfCopy = self;
    v20 = contextID;
    v19 = v10;
    v12 = objc_retainBlock(v15);
    if (v12)
    {
      if (+[NSThread isMainThread])
      {
        (v12[2])(v12);
      }

      else
      {
        v13[0] = _NSConcreteStackBlock;
        v13[1] = 3221225472;
        v13[2] = sub_74A8;
        v13[3] = &unk_3C6B0;
        v14 = v12;
        dispatch_async(&_dispatch_main_q, v13);
      }
    }

    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }
}

- (void)contentKeySession:(id)session didProvideContentKeyRequest:(id)request
{
  requestCopy = request;
  v14 = [NSData dataWithBytes:&self->_audibleDRMGroupID length:4];
  v6 = [AVContentKeyResponse contentKeyResponseWithAuthorizationTokenData:?];
  [requestCopy processContentKeyResponse:v6];

  self->_isAudibleDRMGroupAuthorized = 1;
  pendingAssetAuth = [(BKAVPlayer *)self pendingAssetAuth];

  if (pendingAssetAuth)
  {
    pendingAssetAuth2 = [(BKAVPlayer *)self pendingAssetAuth];
    asset = [pendingAssetAuth2 asset];

    contentKeyRecipients = [(AVContentKeySession *)self->_contentKeySession contentKeyRecipients];
    v11 = [contentKeyRecipients containsObject:asset];

    if ((v11 & 1) == 0)
    {
      [(AVContentKeySession *)self->_contentKeySession addContentKeyRecipient:asset];
    }

    pendingAssetAuth3 = [(BKAVPlayer *)self pendingAssetAuth];
    completion = [pendingAssetAuth3 completion];

    if (completion)
    {
      (completion)[2](completion, asset);
    }

    [(BKAVPlayer *)self setPendingAssetAuth:0];
  }
}

- (void)updateTimeObservers
{
  if ([(BKAVPlayer *)self needsToUpdateTimeObservers])
  {
    [(BKAVPlayer *)self _removeAllTimeObserversWithClearObservedTimes:0];
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    obj = [(BKAVPlayer *)self observedTimes];
    v3 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v3)
    {
      v4 = 0;
      v19 = *v23;
      v5 = 9.22337204e18;
      do
      {
        for (i = 0; i != v3; i = i + 1)
        {
          if (*v23 != v19)
          {
            objc_enumerationMutation(obj);
          }

          v7 = *(*(&v22 + 1) + 8 * i);
          if (v7)
          {
            [*(*(&v22 + 1) + 8 * i) CMTimeValue];
          }

          else
          {
            memset(&time, 0, sizeof(time));
          }

          Seconds = CMTimeGetSeconds(&time);
          v9 = BKAudiobooksBKAVLog();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(time.value) = 134217984;
            *(&time.value + 4) = Seconds;
            _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "adding time observer: %.1f", &time, 0xCu);
          }

          objc_initWeak(&time, self);
          player = [(BKAVPlayer *)self player];
          v11 = [NSArray arrayWithObject:v7];
          v20[0] = _NSConcreteStackBlock;
          v20[1] = 3221225472;
          v20[2] = sub_79EC;
          v20[3] = &unk_3C7C8;
          v21[1] = *&Seconds;
          objc_copyWeak(v21, &time);
          v12 = [player addBoundaryTimeObserverForTimes:v11 queue:0 usingBlock:v20];

          timeObservers = [(BKAVPlayer *)self timeObservers];
          [timeObservers setObject:v12 forKeyedSubscript:v7];

          if ((v4 & 1) != 0 || ![(BKAVPlayer *)self isCurrentTimeValid])
          {
            v4 = 1;
          }

          else
          {
            [(BKAVPlayer *)self currentTime];
            v4 = 0;
            if (Seconds <= v14)
            {
              v5 = Seconds;
            }
          }

          objc_destroyWeak(v21);
          objc_destroyWeak(&time);
        }

        v3 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
      }

      while (v3);

      [(BKAVPlayer *)self setNeedsToUpdateTimeObservers:0];
      if (v4)
      {
        v15 = BKAudiobooksBKAVLog();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          sub_21150();
        }
      }

      else if (v5 != 9.22337204e18)
      {
        v16 = BKAudiobooksBKAVLog();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(time.value) = 134217984;
          *(&time.value + 4) = v5;
          _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "recently passed time: %.1f", &time, 0xCu);
        }

        delegate = [(BKAVPlayer *)self delegate];
        [delegate player:self didReachPosition:v5];
      }
    }

    else
    {

      [(BKAVPlayer *)self setNeedsToUpdateTimeObservers:0];
    }
  }
}

- (void)addTimeObserver:(double)observer
{
  if (observer >= 0.0)
  {
    CMTimeMakeWithSeconds(&v6, observer, 1000000000);
    v3 = [NSValue valueWithCMTime:&v6];
    observedTimes = [(BKAVPlayer *)self observedTimes];
    [observedTimes addObject:v3];

    [(BKAVPlayer *)self setNeedsToUpdateTimeObservers:1];
  }

  else
  {
    v3 = BKAudiobooksBKAVLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_2118C(v3);
    }
  }
}

- (void)removeTimeObserver:(double)observer
{
  CMTimeMakeWithSeconds(&v6, observer, 1000000000);
  v4 = [NSValue valueWithCMTime:&v6];
  observedTimes = [(BKAVPlayer *)self observedTimes];
  [observedTimes removeObject:v4];

  [(BKAVPlayer *)self setNeedsToUpdateTimeObservers:1];
}

- (void)_removeAllTimeObserversWithClearObservedTimes:(BOOL)times
{
  timesCopy = times;
  v5 = BKAudiobooksBKAVLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "remove time observers on player", buf, 2u);
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  timeObservers = [(BKAVPlayer *)self timeObservers];
  v7 = [timeObservers countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      v10 = 0;
      do
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(timeObservers);
        }

        v11 = *(*(&v18 + 1) + 8 * v10);
        timeObservers2 = [(BKAVPlayer *)self timeObservers];
        v13 = [timeObservers2 objectForKeyedSubscript:v11];

        if (v13)
        {
          player = [(BKAVPlayer *)self player];
          [player removeTimeObserver:v13];
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [timeObservers countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v8);
  }

  timeObservers3 = [(BKAVPlayer *)self timeObservers];
  [timeObservers3 removeAllObjects];

  if (timesCopy)
  {
    v16 = BKAudiobooksBKAVLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "clear observed times", buf, 2u);
    }

    observedTimes = [(BKAVPlayer *)self observedTimes];
    [observedTimes removeAllObjects];
  }
}

- (void)_addPeriodicTimeObserver
{
  periodicTimeObserver = [(BKAVPlayer *)self periodicTimeObserver];

  if (!periodicTimeObserver)
  {
    objc_initWeak(&location, self);
    player = [(BKAVPlayer *)self player];
    CMTimeMakeWithSeconds(&v8, 1.0, 1000000000);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_7F68;
    v6[3] = &unk_3CA88;
    objc_copyWeak(&v7, &location);
    v5 = [player addPeriodicTimeObserverForInterval:&v8 queue:0 usingBlock:v6];

    [(BKAVPlayer *)self setPeriodicTimeObserver:v5];
    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }
}

- (void)_removePeriodicTimeObserver
{
  periodicTimeObserver = [(BKAVPlayer *)self periodicTimeObserver];

  if (periodicTimeObserver)
  {
    player = [(BKAVPlayer *)self player];
    periodicTimeObserver2 = [(BKAVPlayer *)self periodicTimeObserver];
    [player removeTimeObserver:periodicTimeObserver2];

    [(BKAVPlayer *)self setPeriodicTimeObserver:0];
  }
}

- (BKAVPlayerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end