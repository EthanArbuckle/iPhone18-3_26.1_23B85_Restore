@interface AVInterstitialController
+ (id)interstitialQueue;
+ (id)newTimeRangeCollectionForPlayerItem:(id)item;
+ (id)newTimeRangeCollectionForPlayerItem:(id)item reversePlaybackEndTime:(id *)time forwardPlaybackEndTime:(id *)endTime;
- (AVInterstitialController)init;
- (AVInterstitialControllerDelegateManager)delegateManager;
- (AVTimeRange)currentInterstitialTimeRange;
- (AVTimeRange)previousInterstitialTimeRange;
- (BOOL)_shouldSkipInterstitialTimeRange:(id)range;
- (BOOL)isInterstitialEventCurrentEvent:(id)event;
- (BOOL)isLive;
- (BOOL)loadDurationOfCurrentOrNextInterstitialEvent:(id)event;
- (BOOL)requiresLinearPlayback;
- (BOOL)shouldEnforceInterstitialPolicy;
- (BOOL)useTimelineTimes;
- (double)_pendingTimeBoundary;
- (double)currentDisplayTime;
- (double)currentTime;
- (double)displayTimeFromTime:(double)time;
- (double)elapsedTimeForInterstitialPlayer;
- (double)elapsedTimeWithinCurrentInterstitial;
- (double)timeFromDisplayTime:(double)time;
- (double)timeRemainingInCurrentInterstitial;
- (double)timeToSeekAfterUserNavigatedFromTime:(double)time toTime:(double)toTime;
- (id)_copySynthesizedInterstitialTimeRanges;
- (id)currentItem;
- (id)currentOrEstimatedDate;
- (id)interstitialTimeRangeForPlayerInterstitialEvent:(id)event;
- (id)nextInterstitialTimeRange;
- (id)timeRangeForPlayerInterstitialEvent:(id)event;
- (void)_performInterstitialPlayerDependentUpdates;
- (void)_sendInterstitialBoundaryNotificationForInterstitialTimeRange:(id)range;
- (void)_sendInterstitialBoundaryNotificationsForEvent:(id)event;
- (void)_sendInterstitialBoundaryNotificationsForTime:(double)time;
- (void)_setPendingTimeBoundary:(double)boundary;
- (void)_startObservingInterstitialTimeRanges;
- (void)_stopObservingInterstitialTimeRanges;
- (void)_updateInterstitialTimeRangeCollection;
- (void)cancelCurrentPlayerInterstitialEvent;
- (void)copyInterstitialEventsToScrubPlayer:(id)player;
- (void)dealloc;
- (void)didBeginOrResumePlayback;
- (void)didPresentInterstitialTimeRange:(id)range;
- (void)invalidate;
- (void)sendInterstitialBoundaryNotificationsForTimeJumpIfNeeded;
- (void)sendPendingInterstitialBoundaryNotificationIfNeeded;
- (void)setInterstitialPlayer:(id)player;
- (void)setPlayer:(id)player;
- (void)setupInterstitialObservers;
- (void)skipInterstitialTimeRange:(id)range;
- (void)updateSynthesizedInterstitialTimeRanges;
- (void)willPresentInterstitialTimeRange:(id)range;
@end

@implementation AVInterstitialController

+ (id)newTimeRangeCollectionForPlayerItem:(id)item
{
  v20 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  v4 = itemCopy;
  if (itemCopy)
  {
    interstitialTimeRanges = [itemCopy interstitialTimeRanges];
    if ([v4 status] == 1)
    {
      [v4 duration];
      if (v18)
      {
        [v4 duration];
        if ((v17 & 0x10) != 0)
        {
          v15 = 0u;
          v16 = 0u;
          v13 = 0u;
          v14 = 0u;
          v6 = interstitialTimeRanges;
          v7 = [v6 countByEnumeratingWithState:&v13 objects:v19 count:16];
          if (v7)
          {
            v8 = v7;
            v9 = *v14;
            do
            {
              for (i = 0; i != v8; ++i)
              {
                if (*v14 != v9)
                {
                  objc_enumerationMutation(v6);
                }

                [*(*(&v13 + 1) + 8 * i) _setCollapsedInTimeLine:{0, v13}];
              }

              v8 = [v6 countByEnumeratingWithState:&v13 objects:v19 count:16];
            }

            while (v8);
          }
        }
      }
    }

    if ([interstitialTimeRanges count])
    {
      v11 = [[AVTimeRangeCollection alloc] initWithInterstitialTimeRanges:interstitialTimeRanges];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (AVInterstitialControllerDelegateManager)delegateManager
{
  WeakRetained = objc_loadWeakRetained(&self->_delegateManager);

  return WeakRetained;
}

- (double)_pendingTimeBoundary
{
  os_unfair_lock_lock(&_pendingTimeBoundaryUnfairLock);
  currentItem = [(AVInterstitialController *)self currentItem];
  v4 = objc_getAssociatedObject(currentItem, _AVPlayerItemPendingTimeBoundaryKey);
  os_unfair_lock_unlock(&_pendingTimeBoundaryUnfairLock);
  if (v4)
  {
    [v4 doubleValue];
    v6 = v5;
  }

  else
  {
    v6 = NAN;
  }

  return v6;
}

- (void)_setPendingTimeBoundary:(double)boundary
{
  os_unfair_lock_lock(&_pendingTimeBoundaryUnfairLock);
  object = [(AVInterstitialController *)self currentItem];
  if (object)
  {
    v5 = _AVPlayerItemPendingTimeBoundaryKey;
    v6 = [MEMORY[0x1E696AD98] numberWithDouble:boundary];
    objc_setAssociatedObject(object, v5, v6, 0x301);
  }

  os_unfair_lock_unlock(&_pendingTimeBoundaryUnfairLock);
}

- (void)didPresentInterstitialTimeRange:(id)range
{
  v22 = *MEMORY[0x1E69E9840];
  rangeCopy = range;
  if (rangeCopy)
  {
    interstitialTimeRangeInProgress = [(AVInterstitialController *)self interstitialTimeRangeInProgress];

    if (interstitialTimeRangeInProgress == rangeCopy)
    {
      interstice = [rangeCopy interstice];
      v7 = _AVLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 136315650;
        v17 = "[AVInterstitialController didPresentInterstitialTimeRange:]";
        v18 = 2114;
        v19 = *&rangeCopy;
        v20 = 2114;
        v21 = interstice;
        _os_log_impl(&dword_18B49C000, v7, OS_LOG_TYPE_DEFAULT, "%s Leaving interstitial %{public}@ :: %{public}@", &v16, 0x20u);
      }

      if ([(AVInterstitialController *)self shouldEnforceInterstitialPolicy]&& self->_continuationTimeAfterInterstitial > 0.0)
      {
        v8 = _AVLog();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          continuationTimeAfterInterstitial = self->_continuationTimeAfterInterstitial;
          v16 = 136315394;
          v17 = "[AVInterstitialController didPresentInterstitialTimeRange:]";
          v18 = 2048;
          v19 = continuationTimeAfterInterstitial;
          _os_log_impl(&dword_18B49C000, v8, OS_LOG_TYPE_DEFAULT, "%s [interstitial] continuing at %.1f", &v16, 0x16u);
        }

        v10 = self->_continuationTimeAfterInterstitial;
        self->_continuationTimeAfterInterstitial = 0.0;
        didLeaveRequiredInterstitialTimeRangeBlock = [(AVInterstitialController *)self didLeaveRequiredInterstitialTimeRangeBlock];
        v12 = didLeaveRequiredInterstitialTimeRangeBlock;
        if (didLeaveRequiredInterstitialTimeRangeBlock)
        {
          (*(didLeaveRequiredInterstitialTimeRangeBlock + 16))(didLeaveRequiredInterstitialTimeRangeBlock, rangeCopy, v10);
        }
      }

      [(AVInterstitialController *)self setInterstitialTimeRangeInProgress:0];
      didLeaveInterstitialTimeRangeBlock = [(AVInterstitialController *)self didLeaveInterstitialTimeRangeBlock];
      v14 = didLeaveInterstitialTimeRangeBlock;
      if (didLeaveInterstitialTimeRangeBlock)
      {
        (*(didLeaveInterstitialTimeRangeBlock + 16))(didLeaveInterstitialTimeRangeBlock, rangeCopy);
      }

      delegateManager = [(AVInterstitialController *)self delegateManager];
      [delegateManager didPresentInterstitialGroup:interstice];

      [interstice _setActive:0];
      [(AVTimeControlling *)self->_interstitialTimingController stopTimingObservation];
    }
  }
}

- (void)willPresentInterstitialTimeRange:(id)range
{
  v18 = *MEMORY[0x1E69E9840];
  rangeCopy = range;
  interstitialTimeRangeInProgress = [(AVInterstitialController *)self interstitialTimeRangeInProgress];
  if (rangeCopy && ([rangeCopy isEqual:interstitialTimeRangeInProgress] & 1) == 0)
  {
    v6 = _AVLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      interstice = [rangeCopy interstice];
      v12 = 136315650;
      v13 = "[AVInterstitialController willPresentInterstitialTimeRange:]";
      v14 = 2114;
      v15 = rangeCopy;
      v16 = 2114;
      v17 = interstice;
      _os_log_impl(&dword_18B49C000, v6, OS_LOG_TYPE_DEFAULT, "%s Entering interstitial %{public}@ :: %{public}@", &v12, 0x20u);
    }

    if ([(AVInterstitialController *)self _shouldSkipInterstitialTimeRange:rangeCopy])
    {
      [(AVInterstitialController *)self skipInterstitialTimeRange:rangeCopy];
    }

    else
    {
      interstice2 = [rangeCopy interstice];
      [interstice2 _setActive:1];
      didEnterInterstitialTimeRangeBlock = [(AVInterstitialController *)self didEnterInterstitialTimeRangeBlock];
      v10 = didEnterInterstitialTimeRangeBlock;
      if (didEnterInterstitialTimeRangeBlock)
      {
        (*(didEnterInterstitialTimeRangeBlock + 16))(didEnterInterstitialTimeRangeBlock, rangeCopy);
      }

      delegateManager = [(AVInterstitialController *)self delegateManager];
      [delegateManager willPresentInterstitialGroup:interstice2];

      [(AVInterstitialController *)self setInterstitialTimeRangeInProgress:rangeCopy];
      [(AVTimeControlling *)self->_interstitialTimingController startTimingObservation];
    }
  }
}

- (void)skipInterstitialTimeRange:(id)range
{
  v20 = *MEMORY[0x1E69E9840];
  rangeCopy = range;
  v5 = _AVLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf.value) = 136315394;
    *(&buf.value + 4) = "[AVInterstitialController skipInterstitialTimeRange:]";
    LOWORD(buf.flags) = 2114;
    *(&buf.flags + 2) = rangeCopy;
    _os_log_impl(&dword_18B49C000, v5, OS_LOG_TYPE_DEFAULT, "%s timeRange = %{public}@", &buf, 0x16u);
  }

  skipInterstitialTimeRangeBlock = [(AVInterstitialController *)self skipInterstitialTimeRangeBlock];
  v7 = skipInterstitialTimeRangeBlock;
  if (skipInterstitialTimeRangeBlock)
  {
    (*(skipInterstitialTimeRangeBlock + 16))(skipInterstitialTimeRangeBlock, rangeCopy);
  }

  else
  {
    v8 = _AVLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf.value) = 0;
      _os_log_impl(&dword_18B49C000, v8, OS_LOG_TYPE_DEFAULT, "skipInterstitialTimeRangeBlock not set; providing default skipping behavior", &buf, 2u);
    }

    player = [(AVInterstitialController *)self player];
    [player rate];
    v11 = v10;

    if (v11 >= 0.0)
    {
      [rangeCopy endTime];
    }

    else
    {
      [rangeCopy startTime];
    }

    memset(&buf, 0, sizeof(buf));
    CMTimeMakeWithSeconds(&buf, v12, 1000);
    player2 = [(AVInterstitialController *)self player];
    v18 = buf;
    v16 = *MEMORY[0x1E6960CC0];
    v17 = *(MEMORY[0x1E6960CC0] + 16);
    v14 = v16;
    v15 = v17;
    [player2 seekToTime:&v18 toleranceBefore:&v16 toleranceAfter:&v14 completionHandler:&__block_literal_global_52_19170];
  }
}

void __54__AVInterstitialController_skipInterstitialTimeRange___block_invoke(uint64_t a1, int a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = _AVLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = @"NO";
    if (a2)
    {
      v4 = @"YES";
    }

    v5 = 138412290;
    v6 = v4;
    _os_log_impl(&dword_18B49C000, v3, OS_LOG_TYPE_DEFAULT, "skipInterstitialTimeRange seek complete (finished = %@)", &v5, 0xCu);
  }
}

- (void)didBeginOrResumePlayback
{
  v9 = *MEMORY[0x1E69E9840];
  currentInterstitialTimeRange = [(AVInterstitialController *)self currentInterstitialTimeRange];
  if (currentInterstitialTimeRange)
  {
    v4 = _AVLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315394;
      v6 = "[AVInterstitialController didBeginOrResumePlayback]";
      v7 = 1024;
      v8 = 835;
      _os_log_impl(&dword_18B49C000, v4, OS_LOG_TYPE_DEFAULT, "%s %d", &v5, 0x12u);
    }

    [(AVInterstitialController *)self currentTime];
    [(AVInterstitialController *)self _sendInterstitialBoundaryNotificationsForTime:?];
  }
}

- (BOOL)_shouldSkipInterstitialTimeRange:(id)range
{
  rangeCopy = range;
  shouldAlwaysSkipInterstitials = [(AVInterstitialController *)self shouldAlwaysSkipInterstitials];
  player = [(AVInterstitialController *)self player];
  [player rate];
  v8 = v7;

  v9 = v8 < 0.0 || v8 > 3.0;
  isSkipped = [rangeCopy isSkipped];

  return (isSkipped | shouldAlwaysSkipInterstitials | v9) & 1;
}

- (id)nextInterstitialTimeRange
{
  interstitialTimeRangeCollection = [(AVInterstitialController *)self interstitialTimeRangeCollection];
  [(AVInterstitialController *)self currentTime];
  v4 = [interstitialTimeRangeCollection timeRangeAfterTime:?];

  return v4;
}

- (AVTimeRange)previousInterstitialTimeRange
{
  interstitialTimeRangeCollection = [(AVInterstitialController *)self interstitialTimeRangeCollection];
  [(AVInterstitialController *)self currentTime];
  v4 = [interstitialTimeRangeCollection timeRangeBeforeTime:?];

  return v4;
}

- (AVTimeRange)currentInterstitialTimeRange
{
  interstitialTimeRangeCollection = [(AVInterstitialController *)self interstitialTimeRangeCollection];
  if ([interstitialTimeRangeCollection count])
  {
    currentEvent = [(AVPlayerInterstitialEventMonitor *)self->_eventMonitor currentEvent];
    if (currentEvent)
    {
      v5 = [(AVInterstitialController *)self timeRangeForPlayerInterstitialEvent:currentEvent];
      [(AVInterstitialController *)self loadDurationOfCurrentOrNextInterstitialEvent:&__block_literal_global_19181];
    }

    else
    {
      [(AVInterstitialController *)self currentTime];
      v5 = [interstitialTimeRangeCollection timeRangeContainingTime:?];
    }

    if ([v5 isSkipped])
    {
      v7 = 0;
    }

    else
    {
      v7 = v5;
    }

    v6 = v7;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void __56__AVInterstitialController_currentInterstitialTimeRange__block_invoke(double a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = _AVLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 134217984;
    v4 = a1;
    _os_log_impl(&dword_18B49C000, v2, OS_LOG_TYPE_DEFAULT, "duration of current interstitialEvent: %.1f sec", &v3, 0xCu);
  }
}

- (void)_stopObservingInterstitialTimeRanges
{
  objc_initWeak(&location, self);
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __64__AVInterstitialController__stopObservingInterstitialTimeRanges__block_invoke;
  v2[3] = &unk_1E7209EA8;
  objc_copyWeak(&v3, &location);
  dispatch_async(MEMORY[0x1E69E96A0], v2);
  objc_destroyWeak(&v3);
  objc_destroyWeak(&location);
}

void __64__AVInterstitialController__stopObservingInterstitialTimeRanges__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained interstitialBoundaryTimeObserver];

  if (v1)
  {
    v2 = [WeakRetained player];
    v3 = [WeakRetained interstitialBoundaryTimeObserver];
    [v2 removeTimeObserver:v3];

    [WeakRetained setInterstitialBoundaryTimeObserver:0];
    [WeakRetained _setPendingTimeBoundary:NAN];
  }
}

- (void)_startObservingInterstitialTimeRanges
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = _AVLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v10 = "[AVInterstitialController _startObservingInterstitialTimeRanges]";
    v11 = 1024;
    v12 = 723;
    _os_log_impl(&dword_18B49C000, v3, OS_LOG_TYPE_DEFAULT, "%s %d", buf, 0x12u);
  }

  timeline = [(AVInterstitialController *)self timeline];
  v5 = timeline == 0;

  objc_initWeak(buf, self);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __65__AVInterstitialController__startObservingInterstitialTimeRanges__block_invoke;
  v6[3] = &unk_1E720A0B8;
  objc_copyWeak(&v7, buf);
  v8 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
  objc_destroyWeak(&v7);
  objc_destroyWeak(buf);
}

void __65__AVInterstitialController__startObservingInterstitialTimeRanges__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained interstitialTimeRangeCollection];
  objc_initWeak(&location, v3);

  v4 = [WeakRetained interstitialTimeRangeCollection];
  v5 = [v4 arrayOfBoundaryTimes];

  if ([v5 count] && *(a1 + 40) == 1)
  {
    [WeakRetained interstitialBoundaryTimeObserver];
    if (objc_claimAutoreleasedReturnValue())
    {
      __assert_rtn("[AVInterstitialController _startObservingInterstitialTimeRanges]_block_invoke", "AVInterstitialController.m", 738, "![self interstitialBoundaryTimeObserver]");
    }

    v6 = [WeakRetained player];
    v7 = MEMORY[0x1E69E96A0];
    v8 = MEMORY[0x1E69E96A0];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __65__AVInterstitialController__startObservingInterstitialTimeRanges__block_invoke_2;
    v10[3] = &unk_1E7209C40;
    objc_copyWeak(&v11, (a1 + 32));
    objc_copyWeak(&v12, &location);
    v9 = [v6 addBoundaryTimeObserverForTimes:v5 queue:v7 usingBlock:v10];
    [WeakRetained setInterstitialBoundaryTimeObserver:v9];

    objc_destroyWeak(&v12);
    objc_destroyWeak(&v11);
  }

  objc_destroyWeak(&location);
}

void __65__AVInterstitialController__startObservingInterstitialTimeRanges__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    [WeakRetained currentTime];
    [v5 _setPendingTimeBoundary:?];
    v3 = objc_loadWeakRetained((a1 + 40));
    if (v3)
    {
      v4 = [v5 interstitialTimeRangeCollection];

      if (v4 == v3)
      {
        [v5 sendPendingInterstitialBoundaryNotificationIfNeeded];
      }
    }

    WeakRetained = v5;
  }
}

- (void)sendPendingInterstitialBoundaryNotificationIfNeeded
{
  v10 = *MEMORY[0x1E69E9840];
  [(AVInterstitialController *)self _pendingTimeBoundary];
  v4 = v3;
  [(AVInterstitialController *)self _setPendingTimeBoundary:NAN];
  if (v4 >= 0.0)
  {
    v5 = _AVLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315394;
      v7 = "[AVInterstitialController sendPendingInterstitialBoundaryNotificationIfNeeded]";
      v8 = 1024;
      v9 = 716;
      _os_log_impl(&dword_18B49C000, v5, OS_LOG_TYPE_DEFAULT, "%s %d", &v6, 0x12u);
    }

    [(AVInterstitialController *)self _sendInterstitialBoundaryNotificationsForTime:v4];
  }
}

- (void)sendInterstitialBoundaryNotificationsForTimeJumpIfNeeded
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = _AVLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315394;
    v5 = "[AVInterstitialController sendInterstitialBoundaryNotificationsForTimeJumpIfNeeded]";
    v6 = 1024;
    v7 = 705;
    _os_log_impl(&dword_18B49C000, v3, OS_LOG_TYPE_DEFAULT, "%s %d", &v4, 0x12u);
  }

  [(AVInterstitialController *)self currentTime];
  [(AVInterstitialController *)self _sendInterstitialBoundaryNotificationsForTime:?];
}

- (void)_sendInterstitialBoundaryNotificationsForTime:(double)time
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = _AVLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[AVInterstitialController _sendInterstitialBoundaryNotificationsForTime:]";
    v10 = 1024;
    v11 = 692;
    _os_log_impl(&dword_18B49C000, v5, OS_LOG_TYPE_DEFAULT, "%s %d", &v8, 0x12u);
  }

  interstitialTimeRangeCollection = [(AVInterstitialController *)self interstitialTimeRangeCollection];
  v7 = [interstitialTimeRangeCollection timeRangeContainingTime:time];

  if (!self->_cachedCurrentEvent && ([v7 supplementsPrimaryContent] & 1) == 0)
  {
    [(AVInterstitialController *)self _sendInterstitialBoundaryNotificationForInterstitialTimeRange:v7];
  }
}

- (void)_sendInterstitialBoundaryNotificationsForEvent:(id)event
{
  v11 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  v5 = _AVLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[AVInterstitialController _sendInterstitialBoundaryNotificationsForEvent:]";
    v9 = 1024;
    v10 = 684;
    _os_log_impl(&dword_18B49C000, v5, OS_LOG_TYPE_DEFAULT, "%s %d", &v7, 0x12u);
  }

  v6 = [(AVInterstitialController *)self timeRangeForPlayerInterstitialEvent:eventCopy];

  [(AVInterstitialController *)self _sendInterstitialBoundaryNotificationForInterstitialTimeRange:v6];
}

- (void)_sendInterstitialBoundaryNotificationForInterstitialTimeRange:(id)range
{
  v14 = *MEMORY[0x1E69E9840];
  rangeCopy = range;
  interstitialTimeRangeInProgress = [(AVInterstitialController *)self interstitialTimeRangeInProgress];
  v6 = interstitialTimeRangeInProgress;
  if (interstitialTimeRangeInProgress != rangeCopy && (!rangeCopy || !interstitialTimeRangeInProgress || ([rangeCopy isEqual:interstitialTimeRangeInProgress] & 1) == 0))
  {
    [(AVInterstitialController *)self _setPendingTimeBoundary:NAN];
    v7 = _AVLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315650;
      v9 = "[AVInterstitialController _sendInterstitialBoundaryNotificationForInterstitialTimeRange:]";
      v10 = 2112;
      v11 = v6;
      v12 = 2112;
      v13 = rangeCopy;
      _os_log_impl(&dword_18B49C000, v7, OS_LOG_TYPE_DEFAULT, "%s interstitialTimeRangeInProgress = %@, timeRange = %@", &v8, 0x20u);
    }

    if (v6)
    {
      if ([rangeCopy isEqual:v6])
      {
        goto LABEL_12;
      }

      [(AVInterstitialController *)self didPresentInterstitialTimeRange:v6];
    }

    if (rangeCopy)
    {
      [(AVInterstitialController *)self willPresentInterstitialTimeRange:rangeCopy];
    }
  }

LABEL_12:
}

- (double)timeToSeekAfterUserNavigatedFromTime:(double)time toTime:(double)toTime
{
  v36 = *MEMORY[0x1E69E9840];
  shouldEnforceInterstitialPolicy = [(AVInterstitialController *)self shouldEnforceInterstitialPolicy];
  if (toTime <= time || !shouldEnforceInterstitialPolicy)
  {
    return toTime;
  }

  [(AVInterstitialController *)self displayTimeFromTime:time];
  v10 = v9;
  [(AVInterstitialController *)self displayTimeFromTime:toTime];
  v12 = v11;
  interstitialTimeRangeCollection = [(AVInterstitialController *)self interstitialTimeRangeCollection];
  v14 = [interstitialTimeRangeCollection timeRangesBetweenDisplayTime:v10 and:v12];

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v15 = v14;
  v16 = [v15 countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (!v16)
  {
LABEL_19:
    v23 = v15;
    goto LABEL_24;
  }

  v17 = v16;
  v18 = *v28;
LABEL_7:
  v19 = 0;
  while (1)
  {
    if (*v28 != v18)
    {
      objc_enumerationMutation(v15);
    }

    v20 = *(*(&v27 + 1) + 8 * v19);
    if ([v20 containsTime:{time, v27}] & 1) != 0 || (objc_msgSend(v20, "isHidden") & 1) != 0 || (objc_msgSend(v20, "isSkipped"))
    {
      goto LABEL_17;
    }

    interstice = [v20 interstice];
    requiredViewingPolicy = [interstice requiredViewingPolicy];
    if (requiredViewingPolicy == 1)
    {
      requiredViewingPolicy = [interstice _watchCount];
    }

    if (!requiredViewingPolicy)
    {
      break;
    }

LABEL_17:
    if (v17 == ++v19)
    {
      v17 = [v15 countByEnumeratingWithState:&v27 objects:v35 count:16];
      if (v17)
      {
        goto LABEL_7;
      }

      goto LABEL_19;
    }
  }

  v23 = v20;

  if (!v23)
  {
    goto LABEL_25;
  }

  self->_continuationTimeAfterInterstitial = toTime;
  v24 = _AVLog();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v32 = "[AVInterstitialController timeToSeekAfterUserNavigatedFromTime:toTime:]";
    v33 = 2114;
    v34 = v23;
    _os_log_impl(&dword_18B49C000, v24, OS_LOG_TYPE_DEFAULT, "%s [interstitial] Redirecting playback to %{public}@ to enforce policy", buf, 0x16u);
  }

  [v23 startTime];
  toTime = v25;
LABEL_24:

LABEL_25:
  return toTime;
}

- (BOOL)requiresLinearPlayback
{
  shouldEnforceInterstitialPolicy = [(AVInterstitialController *)self shouldEnforceInterstitialPolicy];
  if (shouldEnforceInterstitialPolicy)
  {
    currentInterstitialTimeRange = [(AVInterstitialController *)self currentInterstitialTimeRange];
    [(AVInterstitialController *)self currentTime];
    v5 = [currentInterstitialTimeRange requiresLinearPlaybackForTime:?];

    LOBYTE(shouldEnforceInterstitialPolicy) = v5;
  }

  return shouldEnforceInterstitialPolicy;
}

- (BOOL)shouldEnforceInterstitialPolicy
{
  currentItem = [(AVInterstitialController *)self currentItem];
  interstitialPolicyEnforcement = [currentItem interstitialPolicyEnforcement];
  if (interstitialPolicyEnforcement >= 4)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"interstitialPolicyEnforcement value is not supported"];
    LOBYTE(v4) = 0;
  }

  else
  {
    v4 = 2u >> (interstitialPolicyEnforcement & 0xF);
  }

  return v4 & 1;
}

- (void)copyInterstitialEventsToScrubPlayer:(id)player
{
  v35 = *MEMORY[0x1E69E9840];
  playerCopy = player;
  v5 = _AVLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    eventMonitor = self->_eventMonitor;
    *buf = 136315650;
    v30 = "[AVInterstitialController copyInterstitialEventsToScrubPlayer:]";
    v31 = 2114;
    v32 = eventMonitor;
    v33 = 2048;
    v34 = playerCopy;
    _os_log_impl(&dword_18B49C000, v5, OS_LOG_TYPE_DEFAULT, "%s copying events from primary eventMonitor %{public}@ to scrubPlayer %p", buf, 0x20u);
  }

  events = [(AVPlayerInterstitialEventMonitor *)self->_eventMonitor events];
  v8 = objc_getAssociatedObject(playerCopy, copyInterstitialEventsToScrubPlayer__AVKitPlayerInterstitialEventControllerKey);
  if (!v8)
  {
    v8 = [MEMORY[0x1E69880A0] interstitialEventControllerWithPrimaryPlayer:playerCopy];
    objc_setAssociatedObject(playerCopy, copyInterstitialEventsToScrubPlayer__AVKitPlayerInterstitialEventControllerKey, v8, 1);
    v9 = _AVLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v30 = "[AVInterstitialController copyInterstitialEventsToScrubPlayer:]";
      v31 = 2048;
      v32 = playerCopy;
      v33 = 2114;
      v34 = v8;
      _os_log_impl(&dword_18B49C000, v9, OS_LOG_TYPE_DEFAULT, "%s Creating scrubPlayer (%p) event controller %{public}@", buf, 0x20u);
    }
  }

  events2 = [(AVPlayerInterstitialEventMonitor *)v8 events];
  v11 = [events isEqualToArray:events2];

  if ((v11 & 1) == 0)
  {
    v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
    currentItem = [(AVPlayerInterstitialEventMonitor *)playerCopy currentItem];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v14 = events;
    v15 = [v14 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v25;
      do
      {
        v18 = 0;
        do
        {
          if (*v25 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = [*(*(&v24 + 1) + 8 * v18) copy];
          [v19 setPrimaryItem:currentItem];
          [(AVPlayerInterstitialEventMonitor *)v12 addObject:v19];

          ++v18;
        }

        while (v16 != v18);
        v16 = [v14 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v16);
    }

    v20 = _AVLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v30 = "[AVInterstitialController copyInterstitialEventsToScrubPlayer:]";
      v31 = 2114;
      v32 = v12;
      _os_log_impl(&dword_18B49C000, v20, OS_LOG_TYPE_DEFAULT, "%s Applying events to scrubber player: %{public}@", buf, 0x16u);
    }

    [(AVPlayerInterstitialEventMonitor *)v8 setEvents:v12];
    v21 = _AVLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v30 = "[AVInterstitialController copyInterstitialEventsToScrubPlayer:]";
      v31 = 2114;
      v32 = playerCopy;
      _os_log_impl(&dword_18B49C000, v21, OS_LOG_TYPE_DEFAULT, "%s scrubber player = %{public}@", buf, 0x16u);
    }

    v22 = _AVLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      currentItem2 = [(AVPlayerInterstitialEventMonitor *)playerCopy currentItem];
      *buf = 136315394;
      v30 = "[AVInterstitialController copyInterstitialEventsToScrubPlayer:]";
      v31 = 2114;
      v32 = currentItem2;
      _os_log_impl(&dword_18B49C000, v22, OS_LOG_TYPE_DEFAULT, "%s scrubber player item = %{public}@", buf, 0x16u);
    }
  }
}

- (void)_updateInterstitialTimeRangeCollection
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = _AVLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 136315394;
    v15 = "[AVInterstitialController _updateInterstitialTimeRangeCollection]";
    v16 = 1024;
    v17 = 486;
    _os_log_impl(&dword_18B49C000, v3, OS_LOG_TYPE_DEFAULT, "%s %d", &v14, 0x12u);
  }

  currentItem = [(AVInterstitialController *)self currentItem];
  v5 = [AVInterstitialController newTimeRangeCollectionForPlayerItem:currentItem];

  [(AVInterstitialController *)self isLive];
  interstitialTimeRangeCollection = [(AVInterstitialController *)self interstitialTimeRangeCollection];

  if (interstitialTimeRangeCollection != v5)
  {
    v7 = _AVLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412290;
      v15 = v5;
      _os_log_impl(&dword_18B49C000, v7, OS_LOG_TYPE_DEFAULT, "Updating interstitial time ranges: %@", &v14, 0xCu);
    }

    interstitialTimeRangeInProgress = [(AVInterstitialController *)self interstitialTimeRangeInProgress];
    interstice = [interstitialTimeRangeInProgress interstice];
    [(AVInterstitialController *)self _stopObservingInterstitialTimeRanges];
    [(AVInterstitialController *)self setInterstitialTimeRangeCollection:v5];
    currentInterstitialTimeRange = [(AVInterstitialController *)self currentInterstitialTimeRange];
    interstice2 = [currentInterstitialTimeRange interstice];
    v12 = interstice2;
    if (interstice == interstice2)
    {
      goto LABEL_14;
    }

    if (interstice && interstice2)
    {
      v13 = [interstice2 isEqual:interstice];
      if (!interstitialTimeRangeInProgress || (v13 & 1) != 0)
      {
        goto LABEL_14;
      }
    }

    else if (!interstitialTimeRangeInProgress)
    {
LABEL_14:
      [(AVInterstitialController *)self _startObservingInterstitialTimeRanges];

      goto LABEL_15;
    }

    [(AVInterstitialController *)self didPresentInterstitialTimeRange:interstitialTimeRangeInProgress];
    goto LABEL_14;
  }

LABEL_15:
}

- (BOOL)isInterstitialEventCurrentEvent:(id)event
{
  cachedCurrentEvent = self->_cachedCurrentEvent;
  if (event)
  {
    return [(AVPlayerInterstitialEvent *)cachedCurrentEvent isEqual:?];
  }

  else
  {
    return cachedCurrentEvent == 0;
  }
}

- (void)cancelCurrentPlayerInterstitialEvent
{
  v11 = *MEMORY[0x1E69E9840];
  currentEvent = [(AVPlayerInterstitialEventMonitor *)self->_eventMonitor currentEvent];
  v4 = currentEvent;
  if (currentEvent && (![currentEvent supplementsPrimaryContent] || !objc_msgSend(v4, "timelineOccupancy")))
  {
    v5 = _AVLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315394;
      v8 = "[AVInterstitialController cancelCurrentPlayerInterstitialEvent]";
      v9 = 2114;
      v10 = v4;
      _os_log_impl(&dword_18B49C000, v5, OS_LOG_TYPE_DEFAULT, "%s leaving %{public}@", &v7, 0x16u);
    }

    eventController = self->_eventController;
    [v4 resumptionOffset];
    [(AVPlayerInterstitialEventController *)eventController cancelCurrentEventWithResumptionOffset:&v7];
  }
}

- (void)setInterstitialPlayer:(id)player
{
  playerCopy = player;
  if (self->_interstitialPlayer != playerCopy)
  {
    v11 = playerCopy;
    objc_storeStrong(&self->_interstitialPlayer, player);
    v6 = +[AVKitGlobalSettings shared];
    showsTVControls = [v6 showsTVControls];

    interstitialTimingController = self->_interstitialTimingController;
    if (!interstitialTimingController && (showsTVControls & 1) == 0)
    {
      v9 = [[AVPlayerTimeController alloc] initWithPlayer:self->_interstitialPlayer useIntegratedTimeline:0];
      v10 = self->_interstitialTimingController;
      self->_interstitialTimingController = v9;

      interstitialTimingController = self->_interstitialTimingController;
    }

    [(AVTimeControlling *)interstitialTimingController setPlayer:self->_interstitialPlayer];
    playerCopy = v11;
  }
}

- (double)timeRemainingInCurrentInterstitial
{
  currentInterstitialTimeRange = [(AVInterstitialController *)self currentInterstitialTimeRange];
  v4 = currentInterstitialTimeRange;
  if (currentInterstitialTimeRange)
  {
    interstice = [currentInterstitialTimeRange interstice];
    [interstice playingDuration];
    v7 = v6;

    [(AVInterstitialController *)self elapsedTimeWithinCurrentInterstitial];
    v9 = v7 - v8;
  }

  else
  {
    v9 = 0.0;
  }

  return v9;
}

- (double)elapsedTimeWithinCurrentInterstitial
{
  currentInterstitialTimeRange = [(AVInterstitialController *)self currentInterstitialTimeRange];
  v4 = currentInterstitialTimeRange;
  if (currentInterstitialTimeRange)
  {
    interstice = [currentInterstitialTimeRange interstice];
    playerInterstitialEvent = [interstice playerInterstitialEvent];

    if (playerInterstitialEvent)
    {
      [(AVInterstitialController *)self elapsedTimeForInterstitialPlayer];
      v8 = v7;
    }

    else
    {
      [(AVInterstitialController *)self currentTime];
      v10 = v9;
      [v4 startTime];
      v8 = v10 - v11;
    }
  }

  else
  {
    v8 = 0.0;
  }

  return v8;
}

- (double)elapsedTimeForInterstitialPlayer
{
  eventMonitor = [(AVInterstitialController *)self eventMonitor];
  interstitialPlayer = [eventMonitor interstitialPlayer];
  currentItem = [interstitialPlayer currentItem];

  if ([currentItem status] != 1)
  {
    goto LABEL_6;
  }

  if (currentItem)
  {
    [currentItem currentTime];
  }

  else
  {
    memset(&time, 0, sizeof(time));
  }

  Seconds = CMTimeGetSeconds(&time);
  if (fabs(Seconds) == INFINITY)
  {
LABEL_6:
    Seconds = NAN;
  }

  return Seconds;
}

- (BOOL)isLive
{
  currentItem = [(AVInterstitialController *)self currentItem];
  if ([currentItem status] == 1)
  {
    if (!currentItem)
    {
      LOBYTE(v3) = 0;
      goto LABEL_7;
    }

    [currentItem duration];
    if (v6)
    {
      [currentItem duration];
      v3 = (v5 >> 4) & 1;
      goto LABEL_7;
    }
  }

  LOBYTE(v3) = 0;
LABEL_7:

  return v3;
}

- (id)currentOrEstimatedDate
{
  currentItem = [(AVInterstitialController *)self currentItem];
  if ([currentItem status] == 1)
  {
    currentDate = [currentItem currentDate];
    v4 = currentDate;
    if (currentDate)
    {
      currentEstimatedDate = currentDate;
    }

    else
    {
      currentEstimatedDate = [currentItem currentEstimatedDate];
    }

    v6 = currentEstimatedDate;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (double)currentDisplayTime
{
  if ([(AVInterstitialController *)self useTimelineTimes])
  {
    timeline = [(AVInterstitialController *)self timeline];
    [timeline currentTimeInterval];
    v5 = v4;

    return v5;
  }

  else
  {
    [(AVInterstitialController *)self currentTime];
    v8 = v7;
    currentInterstitialTimeRange = [(AVInterstitialController *)self currentInterstitialTimeRange];
    if (currentInterstitialTimeRange)
    {
      v10 = currentInterstitialTimeRange;
      currentInterstitialTimeRange2 = [(AVInterstitialController *)self currentInterstitialTimeRange];
      interstice = [currentInterstitialTimeRange2 interstice];
      isCollapsedInTimeLine = [interstice isCollapsedInTimeLine];

      if (isCollapsedInTimeLine)
      {
        currentInterstitialTimeRange3 = [(AVInterstitialController *)self currentInterstitialTimeRange];
        [currentInterstitialTimeRange3 startTime];
        v8 = v15;
      }
    }

    [(AVInterstitialController *)self displayTimeFromTime:v8];
  }

  return result;
}

- (double)currentTime
{
  currentItem = [(AVInterstitialController *)self currentItem];
  if ([currentItem status] != 1)
  {
    goto LABEL_9;
  }

  if ([(AVInterstitialController *)self useTimelineTimes])
  {
    timeline = [(AVInterstitialController *)self timeline];
    [timeline currentTimeInterval];
    Seconds = v5;
  }

  else
  {
    if (currentItem)
    {
      [currentItem currentTime];
    }

    else
    {
      memset(&time, 0, sizeof(time));
    }

    Seconds = CMTimeGetSeconds(&time);
  }

  if (fabs(Seconds) == INFINITY)
  {
LABEL_9:
    Seconds = NAN;
  }

  return Seconds;
}

- (id)currentItem
{
  player = [(AVInterstitialController *)self player];
  currentItem = [player currentItem];

  return currentItem;
}

- (double)displayTimeFromTime:(double)time
{
  if (![(AVInterstitialController *)self useTimelineTimes])
  {
    interstitialTimeRangeCollection = [(AVInterstitialController *)self interstitialTimeRangeCollection];
    v6 = interstitialTimeRangeCollection;
    if (interstitialTimeRangeCollection)
    {
      [interstitialTimeRangeCollection displayTimeFromTime:time];
      time = v7;
    }
  }

  return time;
}

- (double)timeFromDisplayTime:(double)time
{
  if (![(AVInterstitialController *)self useTimelineTimes])
  {
    interstitialTimeRangeCollection = [(AVInterstitialController *)self interstitialTimeRangeCollection];
    v6 = interstitialTimeRangeCollection;
    if (interstitialTimeRangeCollection)
    {
      [interstitialTimeRangeCollection timeFromDisplayTime:time];
      time = v7;
    }
  }

  return time;
}

- (BOOL)useTimelineTimes
{
  timeline = [(AVInterstitialController *)self timeline];
  if (timeline)
  {
    _automaticallyHandlesInterstitialEvents = [(AVInterstitialController *)self _automaticallyHandlesInterstitialEvents];
  }

  else
  {
    _automaticallyHandlesInterstitialEvents = 0;
  }

  return _automaticallyHandlesInterstitialEvents;
}

- (void)setPlayer:(id)player
{
  playerCopy = player;
  p_player = &self->_player;
  if (self->_player != playerCopy)
  {
    v7 = playerCopy;
    objc_storeStrong(p_player, player);
    p_player = [(AVInterstitialController *)self _performInterstitialPlayerDependentUpdates];
    playerCopy = v7;
  }

  MEMORY[0x1EEE66BB8](p_player, playerCopy);
}

- (void)_performInterstitialPlayerDependentUpdates
{
  v24 = *MEMORY[0x1E69E9840];
  player = [(AVInterstitialController *)self player];

  if (player)
  {
    v4 = MEMORY[0x1E69880A8];
    player2 = [(AVInterstitialController *)self player];
    v6 = [v4 interstitialEventMonitorWithPrimaryPlayer:player2];

    eventMonitor = [(AVInterstitialController *)self eventMonitor];
    interstitialPlayer = [eventMonitor interstitialPlayer];
    interstitialPlayer2 = [v6 interstitialPlayer];

    if (interstitialPlayer != interstitialPlayer2)
    {
      v10 = _AVLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        player3 = [(AVInterstitialController *)self player];
        v18 = 136315650;
        v19 = "[AVInterstitialController _performInterstitialPlayerDependentUpdates]";
        v20 = 2114;
        v21 = v6;
        v22 = 2048;
        v23 = player3;
        _os_log_impl(&dword_18B49C000, v10, OS_LOG_TYPE_DEFAULT, "%s created event monitor %{public}@ for primary player %p", &v18, 0x20u);
      }

      [(AVInterstitialController *)self setEventMonitor:v6];
      v12 = MEMORY[0x1E69880A0];
      player4 = [(AVInterstitialController *)self player];
      v14 = [v12 interstitialEventControllerWithPrimaryPlayer:player4];

      v15 = _AVLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        player5 = [(AVInterstitialController *)self player];
        v18 = 136315650;
        v19 = "[AVInterstitialController _performInterstitialPlayerDependentUpdates]";
        v20 = 2114;
        v21 = v14;
        v22 = 2048;
        v23 = player5;
        _os_log_impl(&dword_18B49C000, v15, OS_LOG_TYPE_DEFAULT, "%s created event controller %{public}@ for primary player %p", &v18, 0x20u);
      }

      [(AVInterstitialController *)self setEventController:v14];
      interstitialPlayer3 = [v6 interstitialPlayer];
      [(AVInterstitialController *)self setInterstitialPlayer:interstitialPlayer3];

      [(AVInterstitialController *)self setupInterstitialObservers];
    }
  }

  else
  {
    [(AVInterstitialController *)self setEventMonitor:0];
    [(AVInterstitialController *)self setEventController:0];

    [(AVInterstitialController *)self setInterstitialPlayer:0];
  }
}

- (void)invalidate
{
  kvoPlayerItem = [(AVInterstitialController *)self kvoPlayerItem];
  [kvoPlayerItem stopAllObservation];

  [(AVInterstitialController *)self setKvoPlayerItem:0];
  v4 = [(AVInterstitialController *)self kvo];
  [v4 stopAllObservation];

  [(AVInterstitialController *)self setKvo:0];
  if (self->_playerItemTimeJumpedObserver)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter removeObserver:self->_playerItemTimeJumpedObserver];

    playerItemTimeJumpedObserver = self->_playerItemTimeJumpedObserver;
    self->_playerItemTimeJumpedObserver = 0;
  }

  if (self->_playerInterstitialPlayerDidChangeObserver)
  {
    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 removeObserver:self->_playerInterstitialPlayerDidChangeObserver];

    playerInterstitialPlayerDidChangeObserver = self->_playerInterstitialPlayerDidChangeObserver;
    self->_playerInterstitialPlayerDidChangeObserver = 0;
  }

  if (self->_playerInterstitialEventsChangedObserver)
  {
    defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter3 removeObserver:self->_playerInterstitialEventsChangedObserver];

    playerInterstitialEventsChangedObserver = self->_playerInterstitialEventsChangedObserver;
    self->_playerInterstitialEventsChangedObserver = 0;
  }

  if (self->_playerInterstitialCurrentEventChangedObserver)
  {
    defaultCenter4 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter4 removeObserver:self->_playerInterstitialCurrentEventChangedObserver];

    playerInterstitialCurrentEventChangedObserver = self->_playerInterstitialCurrentEventChangedObserver;
    self->_playerInterstitialCurrentEventChangedObserver = 0;
  }

  if (self->_player)
  {

    [(AVInterstitialController *)self setPlayer:0];
  }
}

- (void)dealloc
{
  [(AVInterstitialController *)self invalidate];
  v3.receiver = self;
  v3.super_class = AVInterstitialController;
  [(AVInterstitialController *)&v3 dealloc];
}

- (void)setupInterstitialObservers
{
  objc_initWeak(&location, self);
  if (self->_playerInterstitialEventsChangedObserver)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter removeObserver:self->_playerInterstitialEventsChangedObserver];

    playerInterstitialEventsChangedObserver = self->_playerInterstitialEventsChangedObserver;
    self->_playerInterstitialEventsChangedObserver = 0;
  }

  if (self->_playerInterstitialCurrentEventChangedObserver)
  {
    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 removeObserver:self->_playerInterstitialCurrentEventChangedObserver];

    playerInterstitialCurrentEventChangedObserver = self->_playerInterstitialCurrentEventChangedObserver;
    self->_playerInterstitialCurrentEventChangedObserver = 0;
  }

  defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
  mainQueue = [MEMORY[0x1E696ADC8] mainQueue];
  v9 = *MEMORY[0x1E6987A00];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __54__AVInterstitialController_setupInterstitialObservers__block_invoke;
  v19[3] = &unk_1E7208898;
  objc_copyWeak(&v20, &location);
  v10 = [defaultCenter3 addObserverForName:v9 object:0 queue:mainQueue usingBlock:v19];
  v11 = self->_playerInterstitialEventsChangedObserver;
  self->_playerInterstitialEventsChangedObserver = v10;

  defaultCenter4 = [MEMORY[0x1E696AD88] defaultCenter];
  mainQueue2 = [MEMORY[0x1E696ADC8] mainQueue];
  v14 = *MEMORY[0x1E69879F8];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __54__AVInterstitialController_setupInterstitialObservers__block_invoke_29;
  v17[3] = &unk_1E7208898;
  objc_copyWeak(&v18, &location);
  v15 = [defaultCenter4 addObserverForName:v14 object:0 queue:mainQueue2 usingBlock:v17];
  v16 = self->_playerInterstitialCurrentEventChangedObserver;
  self->_playerInterstitialCurrentEventChangedObserver = v15;

  objc_destroyWeak(&v18);
  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);
}

void __54__AVInterstitialController_setupInterstitialObservers__block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [v3 object];

  v6 = _AVLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = v5;
    _os_log_impl(&dword_18B49C000, v6, OS_LOG_TYPE_DEFAULT, "AVPlayerInterstitialEventMonitorEventsDidChangeNotification received for %@", &v12, 0xCu);
  }

  if (WeakRetained && v5)
  {
    if (v5 == WeakRetained[18] || ([v5 primaryPlayer], v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(WeakRetained[18], "primaryPlayer"), v8 = objc_claimAutoreleasedReturnValue(), v8, v7, v7 == v8))
    {
      v11 = _AVLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v12) = 0;
        _os_log_impl(&dword_18B49C000, v11, OS_LOG_TYPE_DEFAULT, "Updating synthesized interstitials, triggered by notification", &v12, 2u);
      }

      [WeakRetained updateSynthesizedInterstitialTimeRanges];
    }

    else
    {
      v9 = _AVLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = WeakRetained[18];
        v12 = 138543618;
        v13 = v5;
        v14 = 2114;
        v15 = v10;
        _os_log_impl(&dword_18B49C000, v9, OS_LOG_TYPE_DEFAULT, "not updating synthesized interstitials, because the notification observer (%{public}@) is not our monitor (%{public}@)", &v12, 0x16u);
      }
    }
  }
}

void __54__AVInterstitialController_setupInterstitialObservers__block_invoke_29(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [v3 object];

  if (v5 == WeakRetained[18])
  {
    v6 = [v5 currentEvent];
    v7 = _AVLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [v6 description];
      *buf = 138412290;
      v14 = v8;
      _os_log_impl(&dword_18B49C000, v7, OS_LOG_TYPE_DEFAULT, "Updating current interstitial, triggered by notification. Event = %@", buf, 0xCu);
    }

    objc_storeStrong(WeakRetained + 5, v6);
    if ([v6 supplementsPrimaryContent])
    {

      [WeakRetained _sendInterstitialBoundaryNotificationsForEvent:0];
      v6 = 0;
    }

    else
    {
      [WeakRetained _sendInterstitialBoundaryNotificationsForEvent:v6];
      if (v6)
      {
        v11 = @"currentEvent";
        v12 = v6;
        v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v12 forKeys:&v11 count:1];
LABEL_9:
        v10 = [MEMORY[0x1E696AD88] defaultCenter];
        [v10 postNotificationName:@"AVKitCurrentInterstitialEventChangedNotification" object:WeakRetained userInfo:v9];

        goto LABEL_10;
      }
    }

    v9 = MEMORY[0x1E695E0F8];
    goto LABEL_9;
  }

LABEL_10:
}

- (AVInterstitialController)init
{
  v22.receiver = self;
  v22.super_class = AVInterstitialController;
  v2 = [(AVInterstitialController *)&v22 init];
  if (v2)
  {
    v3 = [[AVObservationController alloc] initWithOwner:v2];
    kvo = v2->_kvo;
    v2->_kvo = v3;

    objc_initWeak(&location, v2);
    v5 = v2->_kvo;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __32__AVInterstitialController_init__block_invoke;
    v19[3] = &unk_1E7208848;
    objc_copyWeak(&v20, &location);
    v6 = [(AVObservationController *)v5 startObserving:v2 keyPath:@"player.currentItem" includeInitialValue:0 observationHandler:v19];
    v7 = v2->_kvo;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __32__AVInterstitialController_init__block_invoke_23;
    v17[3] = &unk_1E7208870;
    objc_copyWeak(&v18, &location);
    v8 = [(AVObservationController *)v7 startObserving:v2 keyPath:@"timeline.timelineSegments" observationHandler:v17];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    mainQueue = [MEMORY[0x1E696ADC8] mainQueue];
    v11 = *MEMORY[0x1E6987A08];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __32__AVInterstitialController_init__block_invoke_2_27;
    v15[3] = &unk_1E7208898;
    objc_copyWeak(&v16, &location);
    v12 = [defaultCenter addObserverForName:v11 object:0 queue:mainQueue usingBlock:v15];
    playerInterstitialPlayerDidChangeObserver = v2->_playerInterstitialPlayerDidChangeObserver;
    v2->_playerInterstitialPlayerDidChangeObserver = v12;

    objc_destroyWeak(&v16);
    objc_destroyWeak(&v18);
    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __32__AVInterstitialController_init__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v21[4] = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = [v7 player];
  v11 = [v10 currentItem];

  v12 = [v7 kvoPlayerItem];
  [v12 stopAllObservation];

  if (v11)
  {
    v13 = [[AVObservationController alloc] initWithOwner:v7];
    [v7 setKvoPlayerItem:v13];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __32__AVInterstitialController_init__block_invoke_2;
    aBlock[3] = &unk_1E7208848;
    objc_copyWeak(&v20, (a1 + 32));
    v14 = _Block_copy(aBlock);
    v21[0] = @"interstitialTimeRanges";
    v21[1] = @"forwardPlaybackEndTime";
    v21[2] = @"reversePlaybackEndTime";
    v21[3] = @"duration";
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:4];
    v16 = [(AVObservationController *)v13 startObserving:v11 keyPaths:v15 includeInitialValue:0 observationHandler:v14];

    [v7 updateSynthesizedInterstitialTimeRanges];
    objc_destroyWeak(&v20);
  }

  else
  {
    [v7 setKvoPlayerItem:0];
  }

  v17 = _AVLog();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *v18 = 0;
    _os_log_impl(&dword_18B49C000, v17, OS_LOG_TYPE_DEFAULT, "Updating interstitial collection triggered by currentItem change", v18, 2u);
  }

  [v7 _updateInterstitialTimeRangeCollection];
}

void __32__AVInterstitialController_init__block_invoke_23(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateSynthesizedInterstitialTimeRanges];
  [WeakRetained _updateInterstitialTimeRangeCollection];
}

void __32__AVInterstitialController_init__block_invoke_2_27(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _performInterstitialPlayerDependentUpdates];
}

void __32__AVInterstitialController_init__block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = _AVLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v5 keyPath];
    LODWORD(buf.value) = 138412290;
    *(&buf.value + 4) = v8;
    _os_log_impl(&dword_18B49C000, v7, OS_LOG_TYPE_DEFAULT, "Updating interstitial collection triggered by KVO change for key path %@", &buf, 0xCu);
  }

  v9 = [v5 keyPath];
  v10 = [v9 isEqualToString:@"duration"];

  if (!v10)
  {
    goto LABEL_17;
  }

  memset(&buf, 0, sizeof(buf));
  v11 = [v5 oldValue];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v13 = MEMORY[0x1E6960C70];
  if (isKindOfClass)
  {
    v14 = [v5 oldValue];
    v15 = v14;
    if (v14)
    {
      [v14 CMTimeValue];
    }

    else
    {
      memset(&buf, 0, sizeof(buf));
    }
  }

  else
  {
    buf = **&MEMORY[0x1E6960C70];
  }

  memset(&v22, 0, sizeof(v22));
  v16 = [v5 value];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17 = [v5 value];
    v18 = v17;
    if (v17)
    {
      [v17 CMTimeValue];
    }

    else
    {
      memset(&v22, 0, sizeof(v22));
    }
  }

  else
  {
    v22 = *v13;
  }

  time1 = buf;
  v20 = v22;
  if (!CMTimeCompare(&time1, &v20))
  {
    v19 = _AVLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(time1.value) = 0;
      _os_log_impl(&dword_18B49C000, v19, OS_LOG_TYPE_DEFAULT, "(Actually, the duration did not change; no need to update interstitials)", &time1, 2u);
    }
  }

  else
  {
LABEL_17:
    [WeakRetained _updateInterstitialTimeRangeCollection];
  }
}

- (BOOL)loadDurationOfCurrentOrNextInterstitialEvent:(id)event
{
  eventCopy = event;
  currentEvent = [(AVPlayerInterstitialEventMonitor *)self->_eventMonitor currentEvent];
  interstitialPlayer = [(AVPlayerInterstitialEventMonitor *)self->_eventMonitor interstitialPlayer];
  v7 = interstitialPlayer;
  if (currentEvent || ([interstitialPlayer items], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "count"), v8, v9))
  {
    v10 = [eventCopy copy];

    interstitialQueue = [objc_opt_class() interstitialQueue];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __102__AVInterstitialController_AVPlayerInterstitialSupport__loadDurationOfCurrentOrNextInterstitialEvent___block_invoke;
    v14[3] = &unk_1E7209FD8;
    v15 = v7;
    v16 = currentEvent;
    selfCopy = self;
    eventCopy = v10;
    v18 = eventCopy;
    dispatch_async(interstitialQueue, v14);

    v12 = 1;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

void __102__AVInterstitialController_AVPlayerInterstitialSupport__loadDurationOfCurrentOrNextInterstitialEvent___block_invoke(uint64_t a1)
{
  v33 = *MEMORY[0x1E69E9840];
  v29[0] = 0;
  v29[1] = v29;
  v29[2] = 0x3810000000;
  v29[3] = "";
  v30 = *MEMORY[0x1E6960CC0];
  v31 = *(MEMORY[0x1E6960CC0] + 16);
  v2 = dispatch_group_create();
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v14 = a1;
  v3 = [*(a1 + 32) items];
  v4 = [v3 countByEnumeratingWithState:&v25 objects:v32 count:16];
  if (v4)
  {
    v5 = *v26;
    do
    {
      v6 = 0;
      do
      {
        if (*v26 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = [*(*(&v25 + 1) + 8 * v6) asset];
        if (v7)
        {
          dispatch_group_enter(v2);
          v21[0] = MEMORY[0x1E69E9820];
          v21[1] = 3221225472;
          v21[2] = __102__AVInterstitialController_AVPlayerInterstitialSupport__loadDurationOfCurrentOrNextInterstitialEvent___block_invoke_2;
          v21[3] = &unk_1E7208900;
          v8 = v7;
          v22 = v8;
          v24 = v29;
          v23 = v2;
          [v8 loadValuesAsynchronouslyForKeys:&unk_1EFF12F08 completionHandler:v21];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v3 countByEnumeratingWithState:&v25 objects:v32 count:16];
    }

    while (v4);
  }

  v9 = dispatch_time(0, 5000000000);
  dispatch_group_wait(v2, v9);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __102__AVInterstitialController_AVPlayerInterstitialSupport__loadDurationOfCurrentOrNextInterstitialEvent___block_invoke_3;
  block[3] = &unk_1E7208928;
  v16 = v2;
  v20 = v29;
  v10 = *(v14 + 40);
  v11 = *(v14 + 48);
  v12 = *(v14 + 56);
  v17 = v10;
  v18 = v11;
  v19 = v12;
  v13 = v2;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  _Block_object_dispose(v29, 8);
}

void __102__AVInterstitialController_AVPlayerInterstitialSupport__loadDurationOfCurrentOrNextInterstitialEvent___block_invoke_2(uint64_t a1)
{
  memset(&v10, 0, sizeof(v10));
  v2 = *(a1 + 32);
  if (v2)
  {
    [v2 duration];
    flags = v10.flags;
    if ((~v10.flags & 0x11) == 0)
    {
      v4 = *(*(a1 + 48) + 8);
      v5 = MEMORY[0x1E6960C68];
      *(v4 + 32) = *MEMORY[0x1E6960C68];
      *(v4 + 48) = *(v5 + 16);
    }
  }

  else
  {
    flags = 0;
  }

  if ((flags & 0x1D) == 1)
  {
    v6 = *(*(a1 + 48) + 8);
    if ((*(v6 + 44) & 0x11) != 0x11)
    {
      lhs = *(v6 + 32);
      v7 = v10;
      CMTimeAdd(&v9, &lhs, &v7);
      *(*(*(a1 + 48) + 8) + 32) = v9;
    }
  }

  dispatch_group_leave(*(a1 + 40));
}

void __102__AVInterstitialController_AVPlayerInterstitialSupport__loadDurationOfCurrentOrNextInterstitialEvent___block_invoke_3(uint64_t a1)
{
  if (dispatch_group_wait(*(a1 + 32), 0))
  {
    Seconds = NAN;
  }

  else
  {
    v6 = *(*(*(a1 + 64) + 8) + 32);
    Seconds = CMTimeGetSeconds(&v6);
  }

  v3 = *(a1 + 48);
  if (*(a1 + 40))
  {
    [v3 timeRangeForPlayerInterstitialEvent:?];
  }

  else
  {
    [v3 nextInterstitialTimeRange];
  }
  v4 = ;
  v5 = [v4 interstice];
  [v5 _setPlayingDuration:Seconds];

  (*(*(a1 + 56) + 16))(Seconds);
}

- (id)timeRangeForPlayerInterstitialEvent:(id)event
{
  v20 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  interstitialTimeRangeCollection = [(AVInterstitialController *)self interstitialTimeRangeCollection];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  timeRanges = [interstitialTimeRangeCollection timeRanges];
  v7 = [timeRanges countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(timeRanges);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        interstice = [v10 interstice];
        playerInterstitialEvent = [interstice playerInterstitialEvent];
        v13 = [eventCopy isEqual:playerInterstitialEvent];

        if (v13)
        {
          v7 = v10;

          goto LABEL_11;
        }
      }

      v7 = [timeRanges countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v7;
}

- (id)interstitialTimeRangeForPlayerInterstitialEvent:(id)event
{
  v20 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  currentItem = [(AVInterstitialController *)self currentItem];
  interstitialTimeRanges = [currentItem interstitialTimeRanges];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = interstitialTimeRanges;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = *v16;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        playerInterstitialEvent = [v11 playerInterstitialEvent];
        v13 = [eventCopy isEqual:playerInterstitialEvent];

        if (v13)
        {
          v8 = v11;
          goto LABEL_11;
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v8;
}

- (void)updateSynthesizedInterstitialTimeRanges
{
  v12 = *MEMORY[0x1E69E9840];
  currentItem = [(AVInterstitialController *)self currentItem];
  translatesPlayerInterstitialEvents = [currentItem translatesPlayerInterstitialEvents];

  if (translatesPlayerInterstitialEvents)
  {
    _copySynthesizedInterstitialTimeRanges = [(AVInterstitialController *)self _copySynthesizedInterstitialTimeRanges];
    v6 = _AVLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315394;
      v9 = "[AVInterstitialController(AVPlayerInterstitialSupport) updateSynthesizedInterstitialTimeRanges]";
      v10 = 2048;
      v11 = [_copySynthesizedInterstitialTimeRanges count];
      _os_log_impl(&dword_18B49C000, v6, OS_LOG_TYPE_DEFAULT, "%s updating; %lu time range(s)", &v8, 0x16u);
    }

    if ([_copySynthesizedInterstitialTimeRanges count])
    {
      currentItem2 = [(AVInterstitialController *)self currentItem];
      [currentItem2 setInterstitialTimeRanges:_copySynthesizedInterstitialTimeRanges];
    }
  }
}

- (id)_copySynthesizedInterstitialTimeRanges
{
  v51 = *MEMORY[0x1E69E9840];
  events = [(AVPlayerInterstitialEventMonitor *)self->_eventMonitor events];
  if (![events count])
  {
    v24 = MEMORY[0x1E695E0F0];
    goto LABEL_37;
  }

  timeline = self->_timeline;
  currentItem = [(AVInterstitialController *)self currentItem];
  interstitialTimeRanges = [currentItem interstitialTimeRanges];

  v29 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v26 = events;
  obj = events;
  v32 = [obj countByEnumeratingWithState:&v37 objects:v50 count:16];
  if (!v32)
  {
    goto LABEL_35;
  }

  v30 = *v38;
  do
  {
    v5 = 0;
    do
    {
      if (*v38 != v30)
      {
        objc_enumerationMutation(obj);
      }

      v6 = *(*(&v37 + 1) + 8 * v5);
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v7 = interstitialTimeRanges;
      v8 = [v7 countByEnumeratingWithState:&v33 objects:v49 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v34;
LABEL_9:
        v11 = 0;
        while (1)
        {
          if (*v34 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v33 + 1) + 8 * v11);
          playerInterstitialEvent = [v12 playerInterstitialEvent];
          v14 = [v6 isEqual:playerInterstitialEvent];

          if (v14)
          {
            break;
          }

          if (v9 == ++v11)
          {
            v9 = [v7 countByEnumeratingWithState:&v33 objects:v49 count:16];
            if (v9)
            {
              goto LABEL_9;
            }

            goto LABEL_15;
          }
        }

        v15 = [(AVKitIntegratedTimeline *)self->_timeline timelineSegmentForPlayerInterstitialEvent:v6];
        timelineSegment = [v12 timelineSegment];
        if (v15 == timelineSegment)
        {
          v18 = v12;
        }

        else
        {
          v17 = _AVLog();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315906;
            v42 = "[AVInterstitialController(AVPlayerInterstitialSupport) _copySynthesizedInterstitialTimeRanges]";
            v43 = 2114;
            v44 = v12;
            v45 = 2114;
            v46 = timelineSegment;
            v47 = 2114;
            v48 = v15;
            _os_log_impl(&dword_18B49C000, v17, OS_LOG_TYPE_DEFAULT, "%s replacing %{public}@ because the segment changed %{public}@ --> %{public}@", buf, 0x2Au);
          }

          v18 = 0;
        }

        if (v18)
        {
          goto LABEL_30;
        }
      }

      else
      {
LABEL_15:
      }

      isLive = [(AVInterstitialController *)self isLive];
      v20 = [(AVKitIntegratedTimeline *)self->_timeline timelineSegmentForPlayerInterstitialEvent:v6];
      if (v20)
      {
        v21 = [AVInterstitialTimeRange interstitalTimeRangeWithTimelineSegment:v20 isLive:isLive];
LABEL_24:
        v18 = v21;
        goto LABEL_27;
      }

      if (!timeline)
      {
        v21 = [AVInterstitialTimeRange interstitialTimeRangeWithPlayerInterstitialEvent:v6 isLive:isLive];
        goto LABEL_24;
      }

      v18 = 0;
LABEL_27:
      v22 = _AVLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v42 = v18;
        v43 = 2114;
        v44 = v20;
        _os_log_impl(&dword_18B49C000, v22, OS_LOG_TYPE_DEFAULT, "interstitialTimeRange %{public}@ --> segment %{public}@", buf, 0x16u);
      }

      if (v18)
      {
LABEL_30:
        [v29 addObject:v18];
      }

      ++v5;
    }

    while (v5 != v32);
    v23 = [obj countByEnumeratingWithState:&v37 objects:v50 count:16];
    v32 = v23;
  }

  while (v23);
LABEL_35:

  v24 = [v29 copy];
  events = v26;
LABEL_37:

  return v24;
}

+ (id)newTimeRangeCollectionForPlayerItem:(id)item reversePlaybackEndTime:(id *)time forwardPlaybackEndTime:(id *)endTime
{
  v39 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  v8 = itemCopy;
  if (itemCopy)
  {
    interstitialTimeRanges = [itemCopy interstitialTimeRanges];
    if ([v8 status] == 1)
    {
      [v8 duration];
      if (v36)
      {
        [v8 duration];
        if ((v35 & 0x10) != 0)
        {
          v33 = 0u;
          v34 = 0u;
          v31 = 0u;
          v32 = 0u;
          v10 = interstitialTimeRanges;
          v11 = [v10 countByEnumeratingWithState:&v31 objects:v38 count:16];
          if (v11)
          {
            v12 = v11;
            v13 = *v32;
            do
            {
              for (i = 0; i != v12; ++i)
              {
                if (*v32 != v13)
                {
                  objc_enumerationMutation(v10);
                }

                [*(*(&v31 + 1) + 8 * i) _setCollapsedInTimeLine:0];
              }

              v12 = [v10 countByEnumeratingWithState:&v31 objects:v38 count:16];
            }

            while (v12);
          }
        }
      }
    }

    memset(&v30, 0, sizeof(v30));
    [v8 duration];
    v15 = MEMORY[0x1E6960CC0];
    if ((time->var2 & 1) != 0 && (*&time1.start.value = *&time->var0, time1.start.epoch = time->var3, v26 = *MEMORY[0x1E6960CC0], *&time2.value = *MEMORY[0x1E6960CC0], v16 = *(MEMORY[0x1E6960CC0] + 16), time2.epoch = v16, CMTimeCompare(&time1.start, &time2) >= 1))
    {
      v17 = [AVInterstitialTimeRange alloc];
      *&time2.value = v26;
      time2.epoch = v16;
      duration = *time;
      CMTimeRangeMake(&time1, &time2, &duration);
      v18 = [(AVInterstitialTimeRange *)v17 initWithHiddenTimeRange:&time1];
      v37 = v18;
      v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v37 count:1];
      v20 = [v19 arrayByAddingObjectsFromArray:interstitialTimeRanges];

      interstitialTimeRanges = v20;
    }

    else
    {
      *&time->var0 = *v15;
      time->var3 = *(v15 + 16);
    }

    if (endTime->var2)
    {
      *&time1.start.value = *&endTime->var0;
      time1.start.epoch = endTime->var3;
      time2 = *time;
      if (CMTimeCompare(&time1.start, &time2) >= 1)
      {
        *&time1.start.value = *&endTime->var0;
        time1.start.epoch = endTime->var3;
        time2 = v30;
        if (CMTimeCompare(&time1.start, &time2) < 0)
        {
          v21 = [AVInterstitialTimeRange alloc];
          time2 = *endTime;
          duration = v30;
          CMTimeRangeFromTimeToTime(&time1, &time2, &duration);
          v22 = [(AVInterstitialTimeRange *)v21 initWithHiddenTimeRange:&time1];
          v23 = [interstitialTimeRanges arrayByAddingObject:v22];

          interstitialTimeRanges = v23;
        }
      }
    }

    if ([interstitialTimeRanges count])
    {
      v24 = [[AVTimeRangeCollection alloc] initWithInterstitialTimeRanges:interstitialTimeRanges];
    }

    else
    {
      v24 = 0;
    }
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

+ (id)interstitialQueue
{
  if (interstitialQueue_onceToken != -1)
  {
    dispatch_once(&interstitialQueue_onceToken, &__block_literal_global_238);
  }

  v3 = interstitialQueue__interstitialQueue;

  return v3;
}

uint64_t __74__AVInterstitialController_AVPlayerInterstitialSupport__interstitialQueue__block_invoke()
{
  v0 = dispatch_queue_create("com.apple.avkit.interstitial", 0);
  v1 = interstitialQueue__interstitialQueue;
  interstitialQueue__interstitialQueue = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end