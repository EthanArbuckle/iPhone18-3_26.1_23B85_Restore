@interface BKAudiobookSkipController
+ (void)initialize;
- (BKAudiobookControls)audiobookControls;
- (BKAudiobookSkipController)initWithAudiobookControls:(id)a3;
- (BOOL)endSeek;
- (BOOL)endSkip;
- (BOOL)singleSkip:(unint64_t)a3 interval:(double)a4;
- (BOOL)startSeek:(unint64_t)a3;
- (BOOL)startSkip:(unint64_t)a3 actionSource:(unint64_t)a4;
- (BOOL)wasPlayingBeforeSkipSeek;
- (double)_pushTemporaryTimeInterval:(double)a3 skipDirection:(unint64_t)a4;
- (double)baseEventInterval;
- (double)deltaFromStartingPoint:(double)a3;
- (id)allObservers;
- (void)_cancelSeek;
- (void)_cancelSkip;
- (void)_popToStashedTimeInterval:(double)a3 skipDirection:(unint64_t)a4;
- (void)_processSeekEvent;
- (void)_processSkipEvent;
- (void)_scheduleSeekTimerWithInterval:(double)a3;
- (void)_scheduleSkipTimerWithInterval:(double)a3;
- (void)_sendDidEndSeekingObserverCallbacks;
- (void)_sendDidEndSkippingObserverCallbacks;
- (void)_sendSkipControllerSettingsDidChange;
- (void)_sendUpdatedCumulativeDeltaCallbacks:(double)a3;
- (void)_sendWillPauseObserverCallbacks;
- (void)_sendWillWillBeginSeekingObserverCallbacksWithDirection:(unint64_t)a3;
- (void)_sendWillWillBeginSkippingObserverCallbacksWithDirection:(unint64_t)a3;
- (void)accelerateToInterval:(double)a3 afterEventCount:(unint64_t)a4;
- (void)addObserver:(id)a3;
- (void)clearAccelerationStops;
- (void)dealloc;
- (void)endSeekIfSeeking;
- (void)endSkipIfSkipping;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)removeObserver:(id)a3;
- (void)reset;
- (void)setBaseEventInterval:(double)a3;
- (void)updateSkipInterval;
@end

@implementation BKAudiobookSkipController

+ (void)initialize
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v6[0] = @"BKAudioBookSkipForward";
  v3 = [NSNumber numberWithDouble:15.0];
  v6[1] = @"BKAudioBookSkipBackward";
  v7[0] = v3;
  v4 = [NSNumber numberWithDouble:15.0];
  v7[1] = v4;
  v5 = [NSDictionary dictionaryWithObjects:v7 forKeys:v6 count:2];
  [v2 registerDefaults:v5];
}

- (BKAudiobookSkipController)initWithAudiobookControls:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = BKAudiobookSkipController;
  v5 = [(BKAudiobookSkipController *)&v19 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_audiobookControls, v4);
    v7 = [AVAudioPlayer alloc];
    v8 = [NSBundle bundleForClass:objc_opt_class()];
    v9 = [v8 URLForResource:@"skipFX" withExtension:@"aiff"];
    v10 = [v7 initWithContentsOfURL:v9 error:0];
    fxPlayer = v6->_fxPlayer;
    v6->_fxPlayer = v10;

    *&v6->_seekDelta = xmmword_2B9A0;
    *&v6->_forwardSeekSpeedMultiplier = xmmword_2B9B0;
    v12 = objc_opt_new();
    accelerationMap = v6->_accelerationMap;
    v6->_accelerationMap = v12;

    v14 = [NSNumber numberWithDouble:0.4];
    [(NSMutableDictionary *)v6->_accelerationMap setObject:v14 forKeyedSubscript:&off_3E108];

    v15 = +[NSUserDefaults standardUserDefaults];
    [v15 addObserver:v6 forKeyPath:@"BKAudioBookSkipForward" options:5 context:off_474E0];
    [v15 addObserver:v6 forKeyPath:@"BKAudioBookSkipBackward" options:5 context:off_474E8];
    v6->_accessLock._os_unfair_lock_opaque = 0;
    v16 = +[NSHashTable weakObjectsHashTable];
    observers = v6->_observers;
    v6->_observers = v16;
  }

  return v6;
}

- (void)dealloc
{
  v3 = +[NSUserDefaults standardUserDefaults];
  [v3 removeObserver:self forKeyPath:@"BKAudioBookSkipForward" context:off_474E0];
  [v3 removeObserver:self forKeyPath:@"BKAudioBookSkipBackward" context:off_474E8];

  v4.receiver = self;
  v4.super_class = BKAudiobookSkipController;
  [(BKAudiobookSkipController *)&v4 dealloc];
}

- (BOOL)startSkip:(unint64_t)a3 actionSource:(unint64_t)a4
{
  v7 = BKAudiobooksSkipControllerLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v15[0] = 67109120;
    v15[1] = a3;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "startSkip: %d", v15, 8u);
  }

  v8 = [(BKAudiobookSkipController *)self _canStartSkip];
  if (v8)
  {
    [(BKAudiobookSkipController *)self _cancelSkip];
    v9 = [(BKAudiobookSkipController *)self audiobookControls];
    [v9 positionInCurrentAudiobook];
    [(BKAudiobookSkipController *)self setSkipStartAudiobookTime:?];

    [(BKAudiobookSkipController *)self setSkipping:1];
    [(BKAudiobookSkipController *)self setDirection:a3];
    [(BKAudiobookSkipController *)self setActionSource:a4];
    [(BKAudiobookSkipController *)self _sendWillWillBeginSkippingObserverCallbacksWithDirection:a3];
    [(BKAudiobookSkipController *)self _sendWillPauseObserverCallbacks];
    WeakRetained = objc_loadWeakRetained(&self->_audiobookControls);
    v11 = [WeakRetained isPlaying];

    if (v11)
    {
      [(BKAudiobookSkipController *)self setWasPlaying:1];
      v12 = objc_loadWeakRetained(&self->_audiobookControls);
      [v12 pause];
    }

    self->_skipStepCount = 0;
    [(BKAudiobookSkipController *)self baseEventInterval];
    [(BKAudiobookSkipController *)self _scheduleSkipTimerWithInterval:?];
  }

  else
  {
    v13 = BKAudiobooksSkipControllerLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_21568();
    }
  }

  return v8;
}

- (BOOL)endSkip
{
  v3 = BKAudiobooksSkipControllerLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "endSkip", v8, 2u);
  }

  v4 = [(BKAudiobookSkipController *)self _canEndSkip];
  if (v4)
  {
    [(BKAudiobookSkipController *)self _cancelSkip];
    if ([(BKAudiobookSkipController *)self wasPlaying])
    {
      WeakRetained = objc_loadWeakRetained(&self->_audiobookControls);
      [WeakRetained play];
    }

    if (!self->_skipStepCount)
    {
      [(BKAudiobookSkipController *)self _processSkipEvent];
      [(BKAudiobookSkipController *)self _cancelSkip];
    }

    [(BKAudiobookSkipController *)self setSkipping:0];
    [(BKAudiobookSkipController *)self _sendDidEndSkippingObserverCallbacks];
    [(BKAudiobookSkipController *)self setWasPlaying:0];
    [(BKAudiobookSkipController *)self setSkipStartAudiobookTime:0.0];
  }

  else
  {
    v6 = BKAudiobooksSkipControllerLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_2159C();
    }
  }

  return v4;
}

- (void)endSkipIfSkipping
{
  if ([(BKAudiobookSkipController *)self isSkipping])
  {

    [(BKAudiobookSkipController *)self endSkip];
  }
}

- (BOOL)singleSkip:(unint64_t)a3 interval:(double)a4
{
  v7 = BKAudiobooksSkipControllerLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v14[0] = 67109376;
    v14[1] = a3;
    v15 = 2048;
    v16 = a4;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "singleSkip: %d interval:%lf", v14, 0x12u);
  }

  v8 = [(BKAudiobookSkipController *)self _canStartSkip];
  if (v8)
  {
    [(BKAudiobookSkipController *)self _cancelSkip];
    [(BKAudiobookSkipController *)self setSkipStepCount:0];
    [(BKAudiobookSkipController *)self setDirection:a3];
    v9 = [(BKAudiobookSkipController *)self audiobookControls];
    [v9 positionInCurrentAudiobook];
    [(BKAudiobookSkipController *)self setSkipStartAudiobookTime:?];

    [(BKAudiobookSkipController *)self _sendWillWillBeginSkippingObserverCallbacksWithDirection:a3];
    [(BKAudiobookSkipController *)self _pushTemporaryTimeInterval:[(BKAudiobookSkipController *)self direction] skipDirection:a4];
    v11 = v10;
    [(BKAudiobookSkipController *)self _processSkipEvent];
    [(BKAudiobookSkipController *)self _popToStashedTimeInterval:[(BKAudiobookSkipController *)self direction] skipDirection:v11];
    [(BKAudiobookSkipController *)self _sendDidEndSkippingObserverCallbacks];
    [(BKAudiobookSkipController *)self _cancelSkip];
  }

  else
  {
    v12 = BKAudiobooksSkipControllerLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_215D0();
    }
  }

  return v8;
}

- (BOOL)startSeek:(unint64_t)a3
{
  v5 = BKAudiobooksSkipControllerLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v19[0] = 67109120;
    v19[1] = a3;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "startSeek: %d", v19, 8u);
  }

  v6 = [(BKAudiobookSkipController *)self _canStartSeek];
  if (v6)
  {
    [(BKAudiobookSkipController *)self _cancelSeek];
    v7 = [(BKAudiobookSkipController *)self audiobookControls];
    [v7 positionInCurrentAudiobook];
    [(BKAudiobookSkipController *)self setSkipStartAudiobookTime:?];

    [(BKAudiobookSkipController *)self setSeeking:1];
    [(BKAudiobookSkipController *)self setDirection:a3];
    [(BKAudiobookSkipController *)self _sendWillWillBeginSeekingObserverCallbacksWithDirection:a3];
    WeakRetained = objc_loadWeakRetained(&self->_audiobookControls);
    -[BKAudiobookSkipController setWasPlaying:](self, "setWasPlaying:", [WeakRetained isPlaying]);

    v9 = objc_loadWeakRetained(&self->_audiobookControls);
    [v9 playbackRate];
    self->_playbackRateBeforeSeek = v10;

    playbackRateBeforeSeek = self->_playbackRateBeforeSeek;
    if (playbackRateBeforeSeek == 0.0)
    {
      playbackRateBeforeSeek = 1.0;
    }

    v12 = playbackRateBeforeSeek;
    if (a3 == 1)
    {
      [(BKAudiobookSkipController *)self forwardSeekSpeedMultiplier];
    }

    else
    {
      [(BKAudiobookSkipController *)self backwardSeekSpeedMultiplier];
    }

    v15 = v13 * v12;
    v16 = objc_loadWeakRetained(&self->_audiobookControls);
    *&v17 = v15;
    [v16 setPlaybackRate:v17];

    [(BKAudiobookSkipController *)self seekSampleTime];
    [(BKAudiobookSkipController *)self _scheduleSeekTimerWithInterval:?];
  }

  else
  {
    v14 = BKAudiobooksSkipControllerLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_21604();
    }
  }

  return v6;
}

- (BOOL)endSeek
{
  v3 = BKAudiobooksSkipControllerLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "endSeek", v11, 2u);
  }

  v4 = [(BKAudiobookSkipController *)self _canEndSeek];
  if (v4)
  {
    [(BKAudiobookSkipController *)self _cancelSeek];
    playbackRateBeforeSeek = self->_playbackRateBeforeSeek;
    WeakRetained = objc_loadWeakRetained(&self->_audiobookControls);
    *&v7 = playbackRateBeforeSeek;
    [WeakRetained setPlaybackRate:v7];

    if ([(BKAudiobookSkipController *)self wasPlaying])
    {
      v8 = objc_loadWeakRetained(&self->_audiobookControls);
      [v8 play];
    }

    [(BKAudiobookSkipController *)self _sendDidEndSeekingObserverCallbacks];
    [(BKAudiobookSkipController *)self setWasPlaying:0];
    [(BKAudiobookSkipController *)self setSeeking:0];
  }

  else
  {
    v9 = BKAudiobooksSkipControllerLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_21638();
    }
  }

  return v4;
}

- (void)endSeekIfSeeking
{
  if ([(BKAudiobookSkipController *)self isSeeking])
  {

    [(BKAudiobookSkipController *)self endSeek];
  }
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  objc_opt_class();
  v13 = [v12 objectForKeyedSubscript:NSKeyValueChangeNewKey];
  v14 = BUDynamicCast();

  if (off_474E0 == a6)
  {
    if (v14)
    {
      [v14 doubleValue];
      [(BKAudiobookSkipController *)self setForwardSkipTime:?];
    }
  }

  else if (off_474E8 == a6)
  {
    if (v14)
    {
      [v14 doubleValue];
      [(BKAudiobookSkipController *)self setBackwardSkipTime:?];
    }
  }

  else
  {
    v15.receiver = self;
    v15.super_class = BKAudiobookSkipController;
    [(BKAudiobookSkipController *)&v15 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
  }
}

- (void)updateSkipInterval
{
  v3 = +[NSUserDefaults standardUserDefaults];
  [v3 doubleForKey:@"BKAudioBookSkipForward"];
  [(BKAudiobookSkipController *)self setForwardSkipTime:?];

  v4 = +[NSUserDefaults standardUserDefaults];
  [v4 doubleForKey:@"BKAudioBookSkipBackward"];
  [(BKAudiobookSkipController *)self setBackwardSkipTime:?];
}

- (void)reset
{
  v3 = BKAudiobooksSkipControllerLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "reset", v4, 2u);
  }

  if ([(BKAudiobookSkipController *)self isSkipping])
  {
    [(BKAudiobookSkipController *)self _cancelSkip];
    [(BKAudiobookSkipController *)self _sendDidEndSkippingObserverCallbacks];
    [(BKAudiobookSkipController *)self setWasPlaying:0];
    [(BKAudiobookSkipController *)self setSkipping:0];
  }

  else if ([(BKAudiobookSkipController *)self isSeeking])
  {
    [(BKAudiobookSkipController *)self endSeek];
  }

  [(BKAudiobookSkipController *)self setSkipStartAudiobookTime:0.0];
}

- (BOOL)wasPlayingBeforeSkipSeek
{
  v3 = [(BKAudiobookSkipController *)self isSkipping];
  if (v3)
  {

    LOBYTE(v3) = [(BKAudiobookSkipController *)self wasPlaying];
  }

  return v3;
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_accessLock);
  v5 = [(BKAudiobookSkipController *)self observers];
  [v5 addObject:v4];

  os_unfair_lock_unlock(&self->_accessLock);
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_accessLock);
  v5 = [(BKAudiobookSkipController *)self observers];
  [v5 removeObject:v4];

  os_unfair_lock_unlock(&self->_accessLock);
}

- (id)allObservers
{
  os_unfair_lock_lock(&self->_accessLock);
  v3 = [(BKAudiobookSkipController *)self observers];
  v4 = [v3 allObjects];

  os_unfair_lock_unlock(&self->_accessLock);

  return v4;
}

- (double)baseEventInterval
{
  v2 = [(NSMutableDictionary *)self->_accelerationMap objectForKeyedSubscript:&off_3E108];
  [v2 doubleValue];
  v4 = v3;

  return v4;
}

- (void)setBaseEventInterval:(double)a3
{
  v5 = [NSNumber numberWithDouble:?];
  v6 = [(NSMutableDictionary *)self->_accelerationMap objectForKeyedSubscript:&off_3E108];
  v7 = [v5 isEqual:v6];

  if ((v7 & 1) == 0)
  {
    v8 = [NSNumber numberWithDouble:a3];
    [(NSMutableDictionary *)self->_accelerationMap setObject:v8 forKeyedSubscript:&off_3E108];
  }
}

- (void)clearAccelerationStops
{
  [(BKAudiobookSkipController *)self baseEventInterval];
  v4 = v3;
  [(NSMutableDictionary *)self->_accelerationMap removeAllObjects];

  [(BKAudiobookSkipController *)self setBaseEventInterval:v4];
}

- (void)accelerateToInterval:(double)a3 afterEventCount:(unint64_t)a4
{
  v7 = [(NSMutableDictionary *)self->_accelerationMap allKeys];
  v13 = [v7 sortedArrayUsingSelector:"compare:"];

  v8 = [v13 lastObject];
  v9 = [v8 unsignedIntegerValue];

  v10 = [NSNumber numberWithDouble:a3];
  accelerationMap = self->_accelerationMap;
  v12 = [NSNumber numberWithUnsignedInteger:&v9[a4]];
  [(NSMutableDictionary *)accelerationMap setObject:v10 forKeyedSubscript:v12];
}

- (double)deltaFromStartingPoint:(double)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_audiobookControls);
  [WeakRetained positionInCurrentAudiobook];
  v6 = v5 - a3;

  return v6;
}

- (void)_cancelSkip
{
  v3 = [(BKAudiobookSkipController *)self skipDispatchSource];

  if (v3)
  {
    v4 = [(BKAudiobookSkipController *)self skipDispatchSource];
    dispatch_source_cancel(v4);

    [(BKAudiobookSkipController *)self setSkipDispatchSource:0];
  }
}

- (void)_cancelSeek
{
  v3 = [(BKAudiobookSkipController *)self seekDispatchSource];

  if (v3)
  {
    v4 = [(BKAudiobookSkipController *)self seekDispatchSource];
    dispatch_source_cancel(v4);

    [(BKAudiobookSkipController *)self setSeekDispatchSource:0];
  }
}

- (void)_scheduleSkipTimerWithInterval:(double)a3
{
  v5 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, &_dispatch_main_q);
  [(BKAudiobookSkipController *)self setSkipDispatchSource:v5];
  objc_initWeak(&location, self);
  dispatch_source_set_timer(v5, 0, (a3 * 1000000000.0), (a3 / 10.0 * 1000000000.0));
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_FA60;
  v6[3] = &unk_3C818;
  objc_copyWeak(&v7, &location);
  dispatch_source_set_event_handler(v5, v6);
  dispatch_resume(v5);
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

- (void)_processSkipEvent
{
  ++self->_skipStepCount;
  v21 = [(BKAudiobookSkipController *)self audiobookControls];
  [v21 positionInCurrentAudiobook];
  v4 = v3;
  if ([(BKAudiobookSkipController *)self direction]== &dword_0 + 1)
  {
    forwardSkipTime = self->_forwardSkipTime;
    WeakRetained = objc_loadWeakRetained(&self->_audiobookControls);
    [WeakRetained playbackRate];
    v8 = v4 + forwardSkipTime * v7;
  }

  else
  {
    backwardSkipTime = self->_backwardSkipTime;
    WeakRetained = objc_loadWeakRetained(&self->_audiobookControls);
    [WeakRetained playbackRate];
    v8 = v4 - backwardSkipTime * v10;
  }

  [v21 durationOfCurrentAudiobook];
  v12 = v11 + -0.01;
  if (v12 >= v8)
  {
    v12 = v8;
  }

  [v21 movePositionInCurrentAudiobook:0 completion:{fmax(v12, 0.0)}];
  [(BKAudiobookSkipController *)self skipStartAudiobookTime];
  [(BKAudiobookSkipController *)self deltaFromStartingPoint:?];
  [(BKAudiobookSkipController *)self _sendUpdatedCumulativeDeltaCallbacks:?];
  if ([(BKAudiobookSkipController *)self playSkipSoundEffect]&& self->_skipStepCount >= 2)
  {
    [(AVAudioPlayer *)self->_fxPlayer setCurrentTime:0.0];
    [(AVAudioPlayer *)self->_fxPlayer play];
  }

  v13 = [(BKAudiobookSkipController *)self accelerationMap];
  v14 = [NSNumber numberWithUnsignedInteger:self->_skipStepCount];
  v15 = [v13 objectForKeyedSubscript:v14];

  if (v15)
  {
    [(BKAudiobookSkipController *)self _cancelSkip];
    v16 = [(BKAudiobookSkipController *)self accelerationMap];
    v17 = [NSNumber numberWithUnsignedInteger:self->_skipStepCount];
    v18 = [v16 objectForKeyedSubscript:v17];
    [v18 doubleValue];
    v20 = v19;

    [(BKAudiobookSkipController *)self _scheduleSkipTimerWithInterval:v20];
  }
}

- (double)_pushTemporaryTimeInterval:(double)a3 skipDirection:(unint64_t)a4
{
  if (a4 == 1)
  {
    v5 = 24;
  }

  else
  {
    v4 = 0.0;
    if (a4)
    {
      return v4;
    }

    v5 = 32;
  }

  v4 = *(&self->super.isa + v5);
  if (a3 == 0.0)
  {
    a3 = *(&self->super.isa + v5);
  }

  *(&self->super.isa + v5) = a3;
  return v4;
}

- (void)_popToStashedTimeInterval:(double)a3 skipDirection:(unint64_t)a4
{
  if (a4 == 1)
  {
    v4 = 24;
  }

  else
  {
    if (a4)
    {
      return;
    }

    v4 = 32;
  }

  *(&self->super.isa + v4) = a3;
}

- (void)_scheduleSeekTimerWithInterval:(double)a3
{
  v5 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, &_dispatch_main_q);
  [(BKAudiobookSkipController *)self setSeekDispatchSource:v5];
  objc_initWeak(&location, self);
  dispatch_source_set_timer(v5, 0, (a3 * 1000000000.0), (a3 / 10.0 * 1000000000.0));
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_FDF0;
  v6[3] = &unk_3C818;
  objc_copyWeak(&v7, &location);
  dispatch_source_set_event_handler(v5, v6);
  dispatch_resume(v5);
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

- (void)_processSeekEvent
{
  v10 = [(BKAudiobookSkipController *)self audiobookControls];
  [v10 positionInCurrentAudiobook];
  v4 = v3;
  v5 = [(BKAudiobookSkipController *)self direction];
  seekDelta = self->_seekDelta;
  if (v5 != 1)
  {
    seekDelta = -seekDelta;
  }

  v7 = v4 + seekDelta;
  [v10 durationOfCurrentAudiobook];
  v9 = v8 + -0.01;
  if (v9 >= v7)
  {
    v9 = v7;
  }

  [v10 movePositionInCurrentAudiobook:0 completion:{fmax(v9, 0.0)}];
}

- (void)_sendWillWillBeginSkippingObserverCallbacksWithDirection:(unint64_t)a3
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(BKAudiobookSkipController *)self allObservers];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 skipController:self willBeginSkippingInDirection:a3];
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)_sendDidEndSkippingObserverCallbacks
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [(BKAudiobookSkipController *)self allObservers];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v9 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          [v8 skipControllerDidEndSkipping:self actionSource:{-[BKAudiobookSkipController actionSource](self, "actionSource")}];
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (void)_sendWillPauseObserverCallbacks
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [(BKAudiobookSkipController *)self allObservers];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v9 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          [v8 skipControllerWillPausePlayback:self];
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (void)_sendUpdatedCumulativeDeltaCallbacks:(double)a3
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(BKAudiobookSkipController *)self allObservers];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 skipController:self updatedCumulativeDelta:a3];
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)_sendWillWillBeginSeekingObserverCallbacksWithDirection:(unint64_t)a3
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(BKAudiobookSkipController *)self allObservers];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 skipController:self willBeginSeekingInDirection:a3];
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)_sendDidEndSeekingObserverCallbacks
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [(BKAudiobookSkipController *)self allObservers];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v9 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          [v8 skipControllerDidEndSeeking:self];
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (void)_sendSkipControllerSettingsDidChange
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [(BKAudiobookSkipController *)self allObservers];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v9 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          [v8 skipControllerSettingsDidChange:self];
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (BKAudiobookControls)audiobookControls
{
  WeakRetained = objc_loadWeakRetained(&self->_audiobookControls);

  return WeakRetained;
}

@end