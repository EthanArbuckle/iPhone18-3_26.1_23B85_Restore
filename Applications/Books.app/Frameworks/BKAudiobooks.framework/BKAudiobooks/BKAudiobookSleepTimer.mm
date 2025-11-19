@interface BKAudiobookSleepTimer
+ (double)sleepTimerDurationFrom:(int64_t)a3;
+ (id)defaultTimer;
- (BKAudiobookSleepTimer)init;
- (id)allObservers;
- (int64_t)sleepTimerOption;
- (void)_expired;
- (void)_invalidateAllowingCancelNotification:(BOOL)a3;
- (void)_notifyObserversRemainingTimeUpdated:(double)a3;
- (void)_notifyObserversTimerCanceled;
- (void)_notifyObserversTimerEnabled;
- (void)_notifyObserversTimerExpired;
- (void)_setTimer;
- (void)_sleepTimer:(id)a3;
- (void)addObserver:(id)a3;
- (void)dealloc;
- (void)player:(id)a3 chapterDidChange:(id)a4;
- (void)player:(id)a3 stateDidChangeFrom:(int64_t)a4 to:(int64_t)a5;
- (void)removeObserver:(id)a3;
- (void)setChapterFinishedTimer;
- (void)setFixedTimerWithDuration:(double)a3;
- (void)setSleepTimerOption:(int64_t)a3;
- (void)setUpdateInterval:(double)a3;
@end

@implementation BKAudiobookSleepTimer

+ (id)defaultTimer
{
  if (qword_47A38 != -1)
  {
    sub_218F8();
  }

  v3 = qword_47A30;

  return v3;
}

- (void)setUpdateInterval:(double)a3
{
  if (self->_updateInterval != a3)
  {
    self->_updateInterval = a3;
    sleepTimer = self->_sleepTimer;
    if (sleepTimer)
    {
      [(NSTimer *)sleepTimer invalidate];
      v6 = [NSTimer scheduledTimerWithTimeInterval:self target:"_sleepTimer:" selector:0 userInfo:1 repeats:a3];
      v7 = self->_sleepTimer;
      self->_sleepTimer = v6;

      _objc_release_x1();
    }
  }
}

- (void)setFixedTimerWithDuration:(double)a3
{
  [(BKAudiobookSleepTimer *)self invalidate];
  self->_initialDuration = a3;
  v5 = [(BKAudiobookSleepTimer *)self audiobookControls];
  v6 = [v5 state];

  if (v6 == &dword_0 + 2)
  {
    [(BKAudiobookSleepTimer *)self _setTimer];
  }

  else
  {
    [(BKAudiobookSleepTimer *)self setWaitingForPlayerStatePlaying:1];
  }

  [(BKAudiobookSleepTimer *)self _notifyObserversTimerEnabled];
}

- (void)setChapterFinishedTimer
{
  [(BKAudiobookSleepTimer *)self invalidate];
  self->_initialDuration = -1000.0;
  v3 = +[NSDate date];
  sleepStartDate = self->_sleepStartDate;
  self->_sleepStartDate = v3;

  self->_lastSentRemainingTime = 2.22507386e-308;

  [(BKAudiobookSleepTimer *)self _notifyObserversTimerEnabled];
}

- (BKAudiobookSleepTimer)init
{
  v12.receiver = self;
  v12.super_class = BKAudiobookSleepTimer;
  v2 = [(BKAudiobookSleepTimer *)&v12 init];
  v3 = v2;
  if (v2)
  {
    v2->_lastSentRemainingTime = 2.22507386e-308;
    v4 = +[NSDate distantFuture];
    sleepStartDate = v3->_sleepStartDate;
    v3->_sleepStartDate = v4;

    *&v3->_updateInterval = xmmword_2BA10;
    v3->_accessLock._os_unfair_lock_opaque = 0;
    v6 = +[NSHashTable weakObjectsHashTable];
    observers = v3->_observers;
    v3->_observers = v6;

    v8 = +[BKAudiobookPlayer sharedInstance];
    audiobookControls = v3->_audiobookControls;
    v3->_audiobookControls = v8;
    v10 = v8;

    [(BKAudiobookControls *)v10 addObserver:v3];
  }

  return v3;
}

- (void)dealloc
{
  v3 = +[BKAudiobookPlayer sharedInstance];
  [v3 removeObserver:self];

  [(BKAudiobookSleepTimer *)self invalidate];
  v4.receiver = self;
  v4.super_class = BKAudiobookSleepTimer;
  [(BKAudiobookSleepTimer *)&v4 dealloc];
}

- (void)player:(id)a3 chapterDidChange:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(BKAudiobookSleepTimer *)self _expiresAtChapterEnd])
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_15598;
    block[3] = &unk_3D050;
    v9 = v7;
    v10 = self;
    v11 = v6;
    dispatch_async(&_dispatch_main_q, block);
    [(BKAudiobookSleepTimer *)self _expired];
  }
}

- (void)player:(id)a3 stateDidChangeFrom:(int64_t)a4 to:(int64_t)a5
{
  v7 = a3;
  if (a5 == 4)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_15810;
    block[3] = &unk_3C700;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
  }

  else if (a5 == 2)
  {
    if ([(BKAudiobookSleepTimer *)self waitingForPlayerStatePlaying])
    {
      [(BKAudiobookSleepTimer *)self setWaitingForPlayerStatePlaying:0];
      [(BKAudiobookSleepTimer *)self _setTimer];
    }

    else if ([(BKAudiobookSleepTimer *)self waitingForPlayerStatePlayingThenPause])
    {
      v8 = BKAudiobooksSleepTimerLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Player state has just returned to Playing; pausing to respect a chapter-end expired timer", buf, 2u);
      }

      [(BKAudiobookSleepTimer *)self setWaitingForPlayerStatePlayingThenPause:0];
      [v7 pause];
    }
  }
}

- (int64_t)sleepTimerOption
{
  if (![(BKAudiobookSleepTimer *)self isActive])
  {
    return 0;
  }

  if ([(BKAudiobookSleepTimer *)self expiresAtChapterEnd])
  {
    return 1;
  }

  [(BKAudiobookSleepTimer *)self initialDuration];
  v6 = v5;
  v3 = 2;
  [BKAudiobookSleepTimer sleepTimerDurationFrom:2];
  if (vabdd_f64(v6, v7) >= 0.00999999978)
  {
    v8 = 2;
    v3 = 8;
    do
    {
      [BKAudiobookSleepTimer sleepTimerDurationFrom:v8];
      v10 = v9;
      [(BKAudiobookSleepTimer *)self initialDuration];
      if (vabdd_f64(v11, v10) < 0.00999999978)
      {
        v3 = v8;
      }

      ++v8;
    }

    while (v8 != 8);
  }

  return v3;
}

- (void)setSleepTimerOption:(int64_t)a3
{
  if (a3 != 8)
  {
    if (a3 == 1)
    {

      [(BKAudiobookSleepTimer *)self setChapterFinishedTimer];
    }

    else if (a3)
    {
      [BKAudiobookSleepTimer sleepTimerDurationFrom:?];

      [(BKAudiobookSleepTimer *)self setFixedTimerWithDuration:?];
    }

    else
    {

      [(BKAudiobookSleepTimer *)self invalidate];
    }
  }
}

+ (double)sleepTimerDurationFrom:(int64_t)a3
{
  result = 0.0;
  if ((a3 - 2) <= 5)
  {
    return dbl_2BA20[a3 - 2];
  }

  return result;
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_accessLock);
  v5 = [(BKAudiobookSleepTimer *)self observers];
  [v5 addObject:v4];

  os_unfair_lock_unlock(&self->_accessLock);
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_accessLock);
  v5 = [(BKAudiobookSleepTimer *)self observers];
  [v5 removeObject:v4];

  os_unfair_lock_unlock(&self->_accessLock);
}

- (id)allObservers
{
  os_unfair_lock_lock(&self->_accessLock);
  v3 = [(BKAudiobookSleepTimer *)self observers];
  v4 = [v3 allObjects];

  os_unfair_lock_unlock(&self->_accessLock);

  return v4;
}

- (void)_sleepTimer:(id)a3
{
  if ([(BKAudiobookSleepTimer *)self _expiresAtChapterEnd])
  {
    v4 = 0.0;
LABEL_5:

    [(BKAudiobookSleepTimer *)self _notifyObserversRemainingTimeUpdated:v4];
    return;
  }

  v5 = +[NSDate date];
  [v5 timeIntervalSinceDate:self->_sleepStartDate];
  v7 = v6;

  [(BKAudiobookSleepTimer *)self initialDuration];
  v9 = v8;
  if (v7 < v8)
  {
    v4 = v8 - v7;
    goto LABEL_5;
  }

  v10 = BKAudiobooksSleepTimerLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 134217984;
    v13 = v9;
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "Sleep timer expired after %lfs.  Pausing playback", &v12, 0xCu);
  }

  v11 = [(BKAudiobookSleepTimer *)self audiobookControls];
  [v11 pause];

  [(BKAudiobookSleepTimer *)self _expired];
}

- (void)_expired
{
  [(BKAudiobookSleepTimer *)self _invalidateAllowingCancelNotification:0];

  [(BKAudiobookSleepTimer *)self _notifyObserversTimerExpired];
}

- (void)_notifyObserversTimerEnabled
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [(BKAudiobookSleepTimer *)self allObservers];
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
          [v8 sleepTimerEnabled:self];
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (void)_notifyObserversTimerExpired
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [(BKAudiobookSleepTimer *)self allObservers];
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
          [v8 sleepTimerDidExpire:self];
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (void)_notifyObserversTimerCanceled
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [(BKAudiobookSleepTimer *)self allObservers];
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
          [v8 sleepTimerCanceled:self];
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (void)_notifyObserversRemainingTimeUpdated:(double)a3
{
  [(BKAudiobookSleepTimer *)self lastSentRemainingTime];
  if (vabdd_f64(a3, v5) >= 0.01)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v6 = [(BKAudiobookSleepTimer *)self allObservers];
    v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v13;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v12 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            [v11 sleepTimer:self remainingTimeDidUpdate:a3];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v8);
    }

    [(BKAudiobookSleepTimer *)self setLastSentRemainingTime:a3];
  }
}

- (void)_invalidateAllowingCancelNotification:(BOOL)a3
{
  v3 = a3;
  v5 = [(BKAudiobookSleepTimer *)self sleepTimer];

  if (v5)
  {
    [(NSTimer *)self->_sleepTimer invalidate];
    sleepTimer = self->_sleepTimer;
    self->_sleepTimer = 0;
  }

  if (self->_initialDuration == -2000.0)
  {
    if (!v5 || !v3)
    {
      return;
    }
  }

  else
  {
    self->_initialDuration = -2000.0;
    if (!v3)
    {
      return;
    }
  }

  [(BKAudiobookSleepTimer *)self _notifyObserversTimerCanceled];
}

- (void)_setTimer
{
  v3 = +[NSDate date];
  sleepStartDate = self->_sleepStartDate;
  self->_sleepStartDate = v3;

  self->_lastSentRemainingTime = 2.22507386e-308;
  v5 = [NSTimer scheduledTimerWithTimeInterval:self target:"_sleepTimer:" selector:0 userInfo:1 repeats:self->_updateInterval];
  sleepTimer = self->_sleepTimer;
  self->_sleepTimer = v5;

  _objc_release_x1();
}

@end