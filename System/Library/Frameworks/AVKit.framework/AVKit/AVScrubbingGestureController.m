@interface AVScrubbingGestureController
- (AVScrubbingGestureController)initWithPlatformAdapter:(id)a3;
- (AVScrubbingGestureControllerDelegate)delegate;
- (double)_targetTime;
- (float)_resumptionRate;
- (id)_updateAdapterState;
- (id)configurationForScrubbingGesturePlatformAdapter:(id)a3;
- (uint64_t)_seekForScrubIncrement;
- (void)_endScrubbingAndResetState;
- (void)_endScrubbingForPlayerController:(uint64_t)a1;
- (void)_performScrubIncrement;
- (void)_updateStateTo:(void *)a1;
- (void)dealloc;
- (void)scrubbingGesturePlatformAdapterDidBeginScrubbing:(id)a3;
- (void)scrubbingGesturePlatformAdapterDidContinueScrubbing:(id)a3;
- (void)scrubbingGesturePlatformAdapterDidEndScrubbing:(id)a3;
- (void)setEnabled:(BOOL)a3;
- (void)setPlayerController:(id)a3;
- (void)setScrubsHaveMomentum:(BOOL)a3;
@end

@implementation AVScrubbingGestureController

- (AVScrubbingGestureControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)scrubbingGesturePlatformAdapterDidEndScrubbing:(id)a3
{
  v4 = a3;
  if ([(AVScrubbingGestureController *)self state]== 2)
  {
    v5 = [(AVScrubbingGestureController *)self _resumptionRate];
    currentScrubRate = self->_currentScrubRate;
    if ([(AVScrubbingGestureController *)self scrubsHaveMomentum]&& vabds_f32(currentScrubRate, v5) >= 10.0)
    {
      self->_startingMomentumRate = currentScrubRate;
      [(AVScrubbingGestureController *)self _updateStateTo:?];
      objc_initWeak(&location, self);
      v7 = MEMORY[0x1E695DFF0];
      v10 = MEMORY[0x1E69E9820];
      v11 = 3221225472;
      v12 = __79__AVScrubbingGestureController_scrubbingGesturePlatformAdapterDidEndScrubbing___block_invoke;
      v13 = &unk_1E7209DA8;
      objc_copyWeak(&v14, &location);
      v8 = [v7 scheduledTimerWithTimeInterval:1 repeats:&v10 block:0.0166666667];
      scrubMomentumIncrementTimer = self->_scrubMomentumIncrementTimer;
      self->_scrubMomentumIncrementTimer = v8;

      [(NSTimer *)self->_scrubMomentumIncrementTimer setTolerance:0.00833333333, v10, v11, v12, v13];
      [(AVScrubbingGestureController *)self _performScrubIncrement];
      objc_destroyWeak(&v14);
      objc_destroyWeak(&location);
    }

    else
    {
      [(AVScrubbingGestureController *)self _endScrubbingAndResetState];
    }

    *&self->_initialNormalizedTouchTranslation = 0;
  }
}

- (float)_resumptionRate
{
  if (!a1)
  {
    return 0.0;
  }

  v2 = [a1 playerController];
  v3 = v2;
  if (v2)
  {
    if ([v2 avkit_isAVPlayerControllerOrSubclass])
    {
      if ([v3 isPlaybackSuspended])
      {
        [v3 suspendedRate];
      }

      else
      {
        [v3 rate];
      }

      v5 = v4;
    }

    else
    {
      v5 = a1[14];
    }
  }

  else
  {
    v5 = 0.0;
  }

  return v5;
}

- (void)_updateStateTo:(void *)a1
{
  v16 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return;
  }

  v4 = a1[9];
  if (v4 == a2)
  {
    return;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      if (v4 == 3)
      {
        if ((a2 - 1) < 2)
        {
          goto LABEL_21;
        }

        goto LABEL_16;
      }

LABEL_12:
      v5 = _AVLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v8 = a1[9];
        *buf = 134217984;
        v11 = v8;
        _os_log_error_impl(&dword_18B49C000, v5, OS_LOG_TYPE_ERROR, "Error: Unknown AVScrubbingGestureControllerState - %ld", buf, 0xCu);
      }

      goto LABEL_16;
    }

    if ((a2 & 0xFFFFFFFFFFFFFFFDLL) != 1)
    {
      goto LABEL_16;
    }

LABEL_21:
    a1[9] = a2;
    v9 = [a1 delegate];
    if (objc_opt_respondsToSelector())
    {
      [v9 scrubbingGestureControllerStateDidChange:a1];
    }

    return;
  }

  if (!v4)
  {
    if (a2 != 1)
    {
      goto LABEL_16;
    }

    goto LABEL_21;
  }

  if (v4 != 1)
  {
    goto LABEL_12;
  }

  if (a2 == 2)
  {
    goto LABEL_21;
  }

LABEL_16:
  v6 = _AVLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = a1[9];
    *buf = 138543874;
    v11 = a1;
    v12 = 2048;
    v13 = v7;
    v14 = 2048;
    v15 = a2;
    _os_log_error_impl(&dword_18B49C000, v6, OS_LOG_TYPE_ERROR, "Error: Attempted invalid state transition for %{public}@ from %ld ==> %ld. Ignoring.", buf, 0x20u);
  }
}

void __79__AVScrubbingGestureController_scrubbingGesturePlatformAdapterDidEndScrubbing___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(AVScrubbingGestureController *)WeakRetained _performScrubIncrement];
}

- (void)_performScrubIncrement
{
  if (a1)
  {
    if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
    {
      v2 = _AVLog();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_18B49C000, v2, OS_LOG_TYPE_ERROR, "Warning: _performScrubIncrement should not be performed off of the main thread.", buf, 2u);
      }
    }

    if ([a1 state] != 2 && objc_msgSend(a1, "state") != 3)
    {
      v3 = _AVLog();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        *v17 = 0;
        _os_log_error_impl(&dword_18B49C000, v3, OS_LOG_TYPE_ERROR, "Error: Internal inconsistency. Scrub increments should never be dispatched while not in the momentum or scrubbing states.", v17, 2u);
      }
    }

    if (!*(a1 + 24))
    {
      v4 = _AVLog();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        *v16 = 0;
        _os_log_error_impl(&dword_18B49C000, v4, OS_LOG_TYPE_ERROR, "Error: Internal inconsistency. A gesture configuration should be created before a scrub starts.", v16, 2u);
      }
    }

    if ([a1 state] == 2)
    {
      [*(a1 + 8) timelineVelocity];
      v6 = v5;
      v7 = [*(a1 + 24) usesNaturalDirection];
      v8 = -v6;
      if (!v7)
      {
        v8 = v6;
      }

      goto LABEL_18;
    }

    if ([a1 state] == 3)
    {
      v9 = [(AVScrubbingGestureController *)a1 _resumptionRate];
      v10 = *(a1 + 32);
      if (vabds_f32(v10, v9) > 0.0333333333)
      {
        v11 = *(a1 + 36);
        if ((v11 <= v9 || v10 >= v9) && (v11 >= v9 || v10 <= v9))
        {
          v12 = v10 - v9;
          v13 = *(a1 + 24);
          objc_opt_self();
          [v13 syntheticFriction];
          v15 = v14;

          v8 = v9 + (v15 * v12);
LABEL_18:
          *(a1 + 32) = v8;
          [(AVScrubbingGestureController *)a1 _seekForScrubIncrement];
          return;
        }
      }

      [(AVScrubbingGestureController *)a1 _endScrubbingAndResetState];
    }
  }
}

- (void)_endScrubbingAndResetState
{
  if (a1 && ([a1 state] & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    v4 = [a1 playerController];
    v2 = *(a1 + 24);
    *(a1 + 24) = 0;

    [(AVScrubbingGestureController *)a1 _endScrubbingForPlayerController:v4];
    [*(a1 + 48) invalidate];
    v3 = *(a1 + 48);
    *(a1 + 48) = 0;

    *(a1 + 32) = 0;
    [*(a1 + 64) avkit_setWebKitSeekToTime:NAN];
    [*(a1 + 64) avkit_setWebKitIsScrubbing:0];
    [(AVScrubbingGestureController *)a1 _updateStateTo:?];
  }
}

- (void)_endScrubbingForPlayerController:(uint64_t)a1
{
  if (a1)
  {
    v3 = a2;
    [v3 endScrubbing:a1];
    [v3 avkit_setWebKitIsScrubbing:0];
    [v3 endPlaybackSuspension];

    *(a1 + 56) = 0;
  }
}

- (uint64_t)_seekForScrubIncrement
{
  v2 = [a1 playerController];
  v3 = v2;
  if (v2)
  {
    v24 = v2;
    v2 = [v2 canSeek];
    v3 = v24;
    if (v2)
    {
      v4 = [(AVScrubbingGestureController *)a1 _targetTime];
      if (*(a1 + 72) == 3 || ![*(a1 + 24) linearSeeking] || (objc_msgSend(*(a1 + 8), "translation"), v6 == 0.0) && v5 == 0.0)
      {
        v7 = *(a1 + 32) * 0.0166666667;
        v8 = fabs(v7 * 0.5);
        v9 = v4 + v7;
      }

      else
      {
        [*(a1 + 8) translation];
        v17 = v16 - *(a1 + 40) + *(a1 + 44);
        [v24 minTime];
        v19 = v18;
        [v24 maxTime];
        v21 = v20;
        [v24 minTime];
        v9 = v19 + v17 * (v21 - v22);
        v8 = 0.5;
      }

      if (([v24 avkit_isAVPlayerControllerOrSubclass] & 1) == 0)
      {
        [v24 minTime];
        v11 = v10;
        [v24 maxTime];
        v13 = fabs(v11) != INFINITY;
        if (fabs(v12) != INFINITY && v9 <= v12)
        {
          v12 = v9;
        }

        if (v9 < v11 || !v13)
        {
          v9 = v11;
        }

        else
        {
          v9 = v12;
        }
      }

      [v24 seekToTime:v9 toleranceBefore:v8 toleranceAfter:v8];
      v2 = [v24 avkit_setWebKitSeekToTime:v9];
      v3 = v24;
    }
  }

  return MEMORY[0x1EEE66BB8](v2, v3);
}

- (double)_targetTime
{
  v1 = [a1 playerController];
  if ([v1 avkit_isAVPlayerControllerOrSubclass])
  {
    [v1 seekToTime];
    if ([v1 isSeeking])
    {
      [v1 seekToTime];
    }

    else
    {
      [v1 currentTimeWithinEndTimes];
    }

    v4 = v2;
  }

  else
  {
    [v1 avkit_webkitSeekToTime];
    v4 = v3;
  }

  return v4;
}

- (void)scrubbingGesturePlatformAdapterDidContinueScrubbing:(id)a3
{
  if (self && (self->_initialNormalizedTouchTranslation == 0.0 || self->_initialNormalizedTimelinePosition == 0.0))
  {
    v4 = [(AVScrubbingGestureController *)self _targetTime];
    [(AVPlayerController *)self->_playerController maxTime];
    *&v5 = v4 / v5;
    self->_initialNormalizedTimelinePosition = *&v5;
    [(AVScrubbingGesturePlatformAdapter *)self->_platformAdapter translation];
    *&v6 = v6;
    self->_initialNormalizedTouchTranslation = *&v6;
  }

  [(AVScrubbingGestureController *)self _performScrubIncrement];
}

- (void)scrubbingGesturePlatformAdapterDidBeginScrubbing:(id)a3
{
  if (![(AVScrubbingGestureController *)self state]&& [(AVScrubbingGestureController *)self state]== 2)
  {
    v4 = _AVLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *v10 = 0;
      _os_log_error_impl(&dword_18B49C000, v4, OS_LOG_TYPE_ERROR, "Error: Internal inconsistency. AVScrubbingGestureController state should never be unknown or scrubbing when a new scub gesture begins.", v10, 2u);
    }
  }

  v5 = [(AVScrubbingGestureController *)self playerController];
  v6 = v5;
  if (v5 && [v5 canSeek])
  {
    if ([(AVScrubbingGestureController *)self state]== 3)
    {
      if (self)
      {
        [(NSTimer *)self->_scrubMomentumIncrementTimer invalidate];
        scrubMomentumIncrementTimer = self->_scrubMomentumIncrementTimer;
        self->_scrubMomentumIncrementTimer = 0;

        *&self->_currentScrubRate = 0;
      }
    }

    else if (self)
    {
      v8 = v6;
      [v8 rate];
      *&v9 = v9;
      self->_preScrubbingRate = *&v9;
      [v8 beginPlaybackSuspension];
      [v8 avkit_setWebKitIsScrubbing:1];
      [v8 beginScrubbing:self];
    }

    [(AVScrubbingGestureController *)self _updateStateTo:?];
    [(AVScrubbingGestureController *)self _performScrubIncrement];
  }
}

- (id)configurationForScrubbingGesturePlatformAdapter:(id)a3
{
  if (self && !self->_gestureConfiguration)
  {
    v4 = [(AVScrubbingGestureController *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      v5 = [v4 configurationForScrubbingGestureController:self];
    }

    if (!self->_gestureConfiguration)
    {
      v6 = +[AVScrubbingGestureConfiguration defaultConfiguration];
      gestureConfiguration = self->_gestureConfiguration;
      self->_gestureConfiguration = v6;
    }
  }

  v8 = self->_gestureConfiguration;

  return [(AVScrubbingGestureConfiguration *)v8 platformConfiguration];
}

- (void)setScrubsHaveMomentum:(BOOL)a3
{
  if (self->_scrubsHaveMomentum != a3)
  {
    self->_scrubsHaveMomentum = a3;
    if (!a3 && [(AVScrubbingGestureController *)self state]== 3)
    {

      [(AVScrubbingGestureController *)self _endScrubbingAndResetState];
    }
  }
}

- (void)setPlayerController:(id)a3
{
  v5 = a3;
  if (self->_playerController != v5)
  {
    v6 = v5;
    [(AVScrubbingGestureController *)self _endScrubbingAndResetState];
    objc_storeStrong(&self->_playerController, a3);
    v5 = v6;
  }
}

- (void)setEnabled:(BOOL)a3
{
  if (self->_enabled != a3)
  {
    self->_enabled = a3;
    [(AVScrubbingGestureController *)&self->super.isa _updateAdapterState];
  }
}

- (id)_updateAdapterState
{
  if (!result)
  {
    return result;
  }

  v1 = result;
  if ([result enabled])
  {
    v2 = [v1 playerController];
    if (v2)
    {
      v3 = [v1 playerController];
      v4 = [v3 canSeek];
    }

    else
    {
      v4 = 0;
    }

    v5 = v1 + 1;
    if (v4 == [v1[1] gestureEnabled])
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v5 = v1 + 1;
  v4 = 0;
  if ([v1[1] gestureEnabled])
  {
LABEL_6:
    [(AVScrubbingGestureController *)v1 _endScrubbingAndResetState];
  }

LABEL_7:
  v6 = *v5;

  return [v6 setGestureEnabled:v4];
}

- (void)dealloc
{
  v3 = [(AVScrubbingGestureController *)self playerController];
  if (([(AVScrubbingGestureController *)self state]& 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    [(AVScrubbingGestureController *)self _endScrubbingForPlayerController:v3];
    if (self)
    {
      [(NSTimer *)self->_scrubMomentumIncrementTimer invalidate];
      scrubMomentumIncrementTimer = self->_scrubMomentumIncrementTimer;
      self->_scrubMomentumIncrementTimer = 0;

      *&self->_currentScrubRate = 0;
      [self->_playerController avkit_setWebKitSeekToTime:NAN];
      [self->_playerController avkit_setWebKitIsScrubbing:0];
    }
  }

  [(AVObservationController *)self->_observationController stopAllObservation];

  v5.receiver = self;
  v5.super_class = AVScrubbingGestureController;
  [(AVScrubbingGestureController *)&v5 dealloc];
}

- (AVScrubbingGestureController)initWithPlatformAdapter:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = AVScrubbingGestureController;
  v6 = [(AVScrubbingGestureController *)&v12 init];
  v7 = v6;
  if (v6)
  {
    v6->_state = 1;
    objc_storeStrong(&v6->_platformAdapter, a3);
    [(AVScrubbingGesturePlatformAdapter *)v7->_platformAdapter setDelegate:v7];
    v8 = [[AVObservationController alloc] initWithOwner:v7];
    observationController = v7->_observationController;
    v7->_observationController = v8;

    v10 = [(AVObservationController *)v7->_observationController startObserving:v7 keyPath:@"playerController.canSeek" observationHandler:&__block_literal_global_2087];
    [(AVScrubbingGestureController *)&v7->super.isa _updateAdapterState];
  }

  return v7;
}

@end