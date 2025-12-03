@interface AVPlayerTimeController
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)forwardPlaybackEndTime;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)reversePlaybackEndTime;
- (AVPlayerTimeController)initWithPlayer:(id)player useIntegratedTimeline:(BOOL)timeline;
- (NSArray)seekableTimeRanges;
- (double)contentDuration;
- (double)contentDurationWithinEndTimes;
- (double)maxTime;
- (id)initForIFramesWithPlayerItem:(id)item useIntegratedTimeline:(BOOL)timeline;
- (void)_actuallySeekToTime;
- (void)_commonInit;
- (void)_updateMinAndMaxTiming;
- (void)_updateTiming;
- (void)dealloc;
- (void)seekToTime:(double)time toleranceBefore:(double)before toleranceAfter:(double)after;
- (void)setSeekToTimeInternal:(id *)internal;
- (void)startTimingObservation;
- (void)stopTimingObservation;
@end

@implementation AVPlayerTimeController

- (void)setSeekToTimeInternal:(id *)internal
{
  v3 = *&internal->var0;
  *&self->_seekToTimeInternal.timescale = internal->var3;
  *&self->_observationController = v3;
}

- (void)_updateMinAndMaxTiming
{
  [(AVPlayerTimeController *)self minTime];
  v4 = [AVValueTiming valueTimingWithAnchorValue:"valueTimingWithAnchorValue:anchorTimeStamp:rate:" anchorTimeStamp:? rate:?];
  [(AVPlayerTimeController *)self maxTime];
  v3 = [AVValueTiming valueTimingWithAnchorValue:"valueTimingWithAnchorValue:anchorTimeStamp:rate:" anchorTimeStamp:? rate:?];
  [(AVPlayerTimeController *)self setMinTiming:v4];
  [(AVPlayerTimeController *)self setMaxTiming:v3];
}

- (void)_updateTiming
{
  if ([*&self->_useIntegratedTimeline status] == 1 && (objc_msgSend(*&self->_useIntegratedTimeline, "currentItem"), v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_msgSend(v3, "timebase"), v3, v4))
  {
    memset(&v17, 0, sizeof(v17));
    CMTimebaseGetTime(&v17, v4);
    EffectiveRate = CMTimebaseGetEffectiveRate(v4);
    if (EffectiveRate == 0.0)
    {
      v16 = v17;
      Seconds = CMTimeGetSeconds(&v16);
      v7 = NAN;
      v8 = 0.0;
    }

    else
    {
      v10 = EffectiveRate;
      +[AVValueTiming currentTimeStamp];
      v12 = v11;
      currentItem = [*&self->_useIntegratedTimeline currentItem];
      v14 = currentItem;
      if (currentItem)
      {
        [currentItem currentTime];
      }

      else
      {
        memset(&v16, 0, sizeof(v16));
      }

      v15 = CMTimeGetSeconds(&v16);

      v16 = v17;
      v7 = v12 + fabs((v15 - CMTimeGetSeconds(&v16)) / v10);
      Seconds = v15;
      v8 = v10;
    }
  }

  else
  {
    Seconds = NAN;
    v7 = NAN;
    v8 = NAN;
  }

  v9 = [AVValueTiming valueTimingWithAnchorValue:Seconds anchorTimeStamp:v7 rate:v8];
  [(AVPlayerTimeController *)self setTiming:v9];
}

- (void)seekToTime:(double)time toleranceBefore:(double)before toleranceAfter:(double)after
{
  if ([*&self->_useIntegratedTimeline _isInterstitialPlayer])
  {
    v9 = _AVLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      LOWORD(location[0]) = 0;
      _os_log_error_impl(&dword_18B49C000, v9, OS_LOG_TYPE_ERROR, "seekToTime:toleranceBefore:toleranceAfter is not supported on interstitial players", location, 2u);
    }
  }

  objc_initWeak(location, self);
  seekQueue = self->_seekQueue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __68__AVPlayerTimeController_seekToTime_toleranceBefore_toleranceAfter___block_invoke;
  v11[3] = &unk_1E7208538;
  objc_copyWeak(v12, location);
  v12[1] = *&time;
  v12[2] = *&before;
  v12[3] = *&after;
  dispatch_async(seekQueue, v11);
  objc_destroyWeak(v12);
  objc_destroyWeak(location);
}

void __68__AVPlayerTimeController_seekToTime_toleranceBefore_toleranceAfter___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    CMTimeMakeWithSeconds(&v4, *(a1 + 40), 600);
    [WeakRetained setSeekToTimeInternal:&v4];
    CMTimeMakeWithSeconds(&v4, *(a1 + 48), 600);
    epoch = v4.epoch;
    *(WeakRetained + 20) = *&v4.value;
    *(WeakRetained + 36) = epoch;
    CMTimeMakeWithSeconds(&v4, *(a1 + 56), 600);
    *(WeakRetained + 44) = v4;
    if ([WeakRetained isSeekingInternal])
    {
      WeakRetained[16] = 1;
    }

    else
    {
      [(AVPlayerTimeController *)WeakRetained _actuallySeekToTime];
    }
  }
}

- (void)_actuallySeekToTime
{
  if (self)
  {
    [self setSeekingInternal:1];
    objc_initWeak(&location, self);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __45__AVPlayerTimeController__actuallySeekToTime__block_invoke;
    aBlock[3] = &unk_1E7209A88;
    objc_copyWeak(&v12, &location);
    v2 = _Block_copy(aBlock);
    if (*(self + 68) == 1)
    {
      player = [self player];
      currentItem = [player currentItem];
      integratedTimeline = [currentItem integratedTimeline];
      [self seekToTimeInternal];
      v8 = *(self + 20);
      v9 = *(self + 36);
      v6 = *(self + 44);
      v7 = *(self + 60);
      [integratedTimeline seekToTime:v10 toleranceBefore:&v8 toleranceAfter:&v6 completionHandler:v2];
    }

    else
    {
      player = [self player];
      [self seekToTimeInternal];
      v8 = *(self + 20);
      v9 = *(self + 36);
      v6 = *(self + 44);
      v7 = *(self + 60);
      [player seekToTime:v10 toleranceBefore:&v8 toleranceAfter:&v6 completionHandler:v2];
    }

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }
}

void __45__AVPlayerTimeController__actuallySeekToTime__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained[1];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __45__AVPlayerTimeController__actuallySeekToTime__block_invoke_2;
    block[3] = &unk_1E7209EA8;
    objc_copyWeak(&v6, (a1 + 32));
    dispatch_async(v4, block);
    objc_destroyWeak(&v6);
  }
}

void __45__AVPlayerTimeController__actuallySeekToTime__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained[16] == 1)
  {
    WeakRetained[16] = 0;
    [(AVPlayerTimeController *)WeakRetained _actuallySeekToTime];
  }

  else
  {
    [WeakRetained setSeekingInternal:0];
    v5 = *MEMORY[0x1E6960C70];
    v4 = v5;
    v6 = *(MEMORY[0x1E6960C70] + 16);
    v3 = v6;
    [v2 setSeekToTimeInternal:&v5];
    *(v2 + 20) = v4;
    *(v2 + 36) = v3;
    *(v2 + 44) = v4;
    *(v2 + 60) = v3;
  }
}

- (NSArray)seekableTimeRanges
{
  currentItem = [*&self->_useIntegratedTimeline currentItem];
  seekableTimeRanges = [currentItem seekableTimeRanges];

  return seekableTimeRanges;
}

- (double)contentDurationWithinEndTimes
{
  [(AVPlayerTimeController *)self maxTime];
  v4 = v3;
  [(AVPlayerTimeController *)self minTime];
  return v4 - v5;
}

- (double)contentDuration
{
  currentItem = [*&self->_useIntegratedTimeline currentItem];
  v3 = currentItem;
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

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)forwardPlaybackEndTime
{
  player = [(AVPlayerTimeController *)self player];
  currentItem = [player currentItem];
  v5 = currentItem;
  if (currentItem)
  {
    [currentItem forwardPlaybackEndTime];
  }

  else
  {
    retstr->var0 = 0;
    *&retstr->var1 = 0;
    retstr->var3 = 0;
  }

  return result;
}

- (double)maxTime
{
  currentItem = [*&self->_useIntegratedTimeline currentItem];
  v3 = currentItem;
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

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)reversePlaybackEndTime
{
  player = [(AVPlayerTimeController *)self player];
  currentItem = [player currentItem];
  v5 = currentItem;
  if (currentItem)
  {
    [currentItem reversePlaybackEndTime];
  }

  else
  {
    retstr->var0 = 0;
    *&retstr->var1 = 0;
    retstr->var3 = 0;
  }

  return result;
}

- (void)stopTimingObservation
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = _AVLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315394;
    v5 = "[AVPlayerTimeController stopTimingObservation]";
    v6 = 1024;
    v7 = 117;
    _os_log_impl(&dword_18B49C000, v3, OS_LOG_TYPE_DEFAULT, "%s %d", &v4, 0x12u);
  }

  [(AVValueTiming *)self->_maxTiming stopAllObservation];
}

- (void)startTimingObservation
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = _AVLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v10 = "[AVPlayerTimeController startTimingObservation]";
    v11 = 1024;
    v12 = 95;
    _os_log_impl(&dword_18B49C000, v3, OS_LOG_TYPE_DEFAULT, "%s %d", buf, 0x12u);
  }

  v4 = [(AVValueTiming *)self->_maxTiming startObserving:self keyPath:@"player.currentItem.seekableTimeRanges" observationHandler:&__block_literal_global_15391];
  maxTiming = self->_maxTiming;
  v8[0] = @"player.currentItem";
  v8[1] = @"player.currentItem.duration";
  v8[2] = @"readyToPlay";
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:3];
  v7 = [(AVValueTiming *)maxTiming startObserving:self keyPaths:v6 observationHandler:&__block_literal_global_18];

  [(AVValueTiming *)self->_maxTiming startObservingNotificationForName:*MEMORY[0x1E6960CD0] object:0 notificationCenter:0 observationHandler:&__block_literal_global_21_15396];
  [(AVPlayerTimeController *)self _updateTiming];
}

void __48__AVPlayerTimeController_startTimingObservation__block_invoke_3(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v9 = a2;
  v5 = [a4 object];
  v6 = [v9 player];
  v7 = [v6 currentItem];
  v8 = [v7 timebase];

  if (v5 == v8)
  {
    [v9 _updateTiming];
  }
}

- (void)dealloc
{
  [(AVValueTiming *)self->_maxTiming stopAllObservation];
  v3.receiver = self;
  v3.super_class = AVPlayerTimeController;
  [(AVPlayerTimeController *)&v3 dealloc];
}

- (void)_commonInit
{
  v5 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  v3 = dispatch_queue_create("com.apple.avkit.AVPlayerTimeController.SeekQueue", v5);
  seekQueue = self->_seekQueue;
  self->_seekQueue = v3;
}

- (id)initForIFramesWithPlayerItem:(id)item useIntegratedTimeline:(BOOL)timeline
{
  itemCopy = item;
  v12.receiver = self;
  v12.super_class = AVPlayerTimeController;
  v7 = [(AVPlayerTimeController *)&v12 init];
  v8 = v7;
  if (v7)
  {
    [(AVPlayerTimeController *)v7 _commonInit];
    v9 = objc_alloc_init(MEMORY[0x1E6988098]);
    v10 = *&v8->_useIntegratedTimeline;
    *&v8->_useIntegratedTimeline = v9;

    [*&v8->_useIntegratedTimeline setPlayerRole:*MEMORY[0x1E6987AB8]];
    [*&v8->_useIntegratedTimeline replaceCurrentItemWithPlayerItem:itemCopy];
    BYTE4(v8->_toleranceAfter.epoch) = timeline;
  }

  return v8;
}

- (AVPlayerTimeController)initWithPlayer:(id)player useIntegratedTimeline:(BOOL)timeline
{
  playerCopy = player;
  v13.receiver = self;
  v13.super_class = AVPlayerTimeController;
  v8 = [(AVPlayerTimeController *)&v13 init];
  v9 = v8;
  if (v8)
  {
    [(AVPlayerTimeController *)v8 _commonInit];
    objc_storeStrong(&v9->_useIntegratedTimeline, player);
    v10 = [[AVObservationController alloc] initWithOwner:v9];
    maxTiming = v9->_maxTiming;
    v9->_maxTiming = v10;

    BYTE4(v9->_toleranceAfter.epoch) = timeline;
  }

  return v9;
}

@end