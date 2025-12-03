@interface AVSmartSubtitlesController
- (AVSmartSubtitlesController)init;
- (AVSmartSubtitlesControllerDelegate)delegate;
- (BOOL)_toggleCaptions:(BOOL)captions;
- (BOOL)smartSubtitlesActive;
- (void)__transitionToDisplayingCaptionsIfAble;
- (void)_performSkipBackDelegateCallback;
- (void)_setPlayerTimeObserver:(id *)observer;
- (void)_updateSubtitlesOnMuteIfNeeded;
- (void)dealloc;
- (void)invalidate;
- (void)setPlayerController:(id)controller;
- (void)setState:(int64_t)state;
- (void)setSubtitlesOnMuteActive:(BOOL)active;
- (void)updatePlayerVolumeToPlayerMuted:(BOOL)muted;
- (void)userRequestedSeekWithTimeInterval:(double)interval;
- (void)userRequestedSmartSubtitlesHiddenIfActive;
@end

@implementation AVSmartSubtitlesController

- (AVSmartSubtitlesControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BOOL)_toggleCaptions:(BOOL)captions
{
  captionsCopy = captions;
  playerController = [(AVSmartSubtitlesController *)self playerController];
  [playerController setMediaOptionCriteriaAlwaysOn:captionsCopy];

  return captionsCopy;
}

- (void)__transitionToDisplayingCaptionsIfAble
{
  v17 = *MEMORY[0x1E69E9840];
  playerController = [(AVSmartSubtitlesController *)self playerController];
  v4 = playerController;
  if (self->_currentSkipBackTimeInterval > 30.0)
  {
    v5 = _AVLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      currentSkipBackTimeInterval = self->_currentSkipBackTimeInterval;
      v13 = 136315394;
      v14 = "[AVSmartSubtitlesController __transitionToDisplayingCaptionsIfAble]";
      v15 = 2048;
      v16 = currentSkipBackTimeInterval;
      v7 = "%s Skip back interval of %f exceeds the max, setting controller back to idle";
      v8 = v5;
      v9 = 22;
LABEL_11:
      _os_log_impl(&dword_18B49C000, v8, OS_LOG_TYPE_DEFAULT, v7, &v13, v9);
      goto LABEL_12;
    }

    goto LABEL_12;
  }

  if (![playerController isPlaying])
  {
    v5 = _AVLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 136315138;
      v14 = "[AVSmartSubtitlesController __transitionToDisplayingCaptionsIfAble]";
      v7 = "%s Skip back performed, but the player is paused, setting controller back to idle";
      v8 = v5;
      v9 = 12;
      goto LABEL_11;
    }

LABEL_12:
    v12 = 0;
    goto LABEL_13;
  }

  timeControlStatus = [v4 timeControlStatus];
  v5 = _AVLog();
  v11 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (timeControlStatus == 1)
  {
    if (v11)
    {
      v13 = 136315138;
      v14 = "[AVSmartSubtitlesController __transitionToDisplayingCaptionsIfAble]";
      _os_log_impl(&dword_18B49C000, v5, OS_LOG_TYPE_DEFAULT, "%s Skip back performed, waiting for playback to resume to display captions", &v13, 0xCu);
    }

    v12 = 2;
  }

  else
  {
    if (v11)
    {
      v13 = 136315138;
      v14 = "[AVSmartSubtitlesController __transitionToDisplayingCaptionsIfAble]";
      _os_log_impl(&dword_18B49C000, v5, OS_LOG_TYPE_DEFAULT, "%s Skip back performed, playback is in progress", &v13, 0xCu);
    }

    v12 = 3;
  }

LABEL_13:

  [(AVSmartSubtitlesController *)self setState:v12];
}

- (void)_performSkipBackDelegateCallback
{
  v10 = *MEMORY[0x1E69E9840];
  delegate = [(AVSmartSubtitlesController *)self delegate];
  [(AVSmartSubtitlesController *)self skipBackSeekDelta];
  v5 = v4;
  v6 = (*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || delegate == 0;
  if (!v6 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v7 = _AVLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315138;
      v9 = "[AVSmartSubtitlesController _performSkipBackDelegateCallback]";
      _os_log_impl(&dword_18B49C000, v7, OS_LOG_TYPE_DEFAULT, "%s Captions were toggled in response to a skip back, notifying delegate", &v8, 0xCu);
    }

    [delegate smartSubtitlesController:self didToggleSubtitlesOnSkipBackForTimeInterval:v5];
  }
}

- (void)userRequestedSmartSubtitlesHiddenIfActive
{
  if ([(AVSmartSubtitlesController *)self smartSubtitlesActive])
  {
    [(AVSmartSubtitlesController *)self setState:0];
    [(AVSmartSubtitlesController *)self setSubtitlesOnMuteActive:0];

    [(AVSmartSubtitlesController *)self _updateSubtitlesOnMuteIfNeeded];
  }
}

- (void)_updateSubtitlesOnMuteIfNeeded
{
  v16 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1 = result;
    playerController = [result playerController];
    captionAppearanceDisplayType = [playerController captionAppearanceDisplayType];

    delegate = [v1 delegate];
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      delegate2 = [v1 delegate];
      v7 = [delegate2 observesMediaSelectionForSmartSubtitlesController:v1];
    }

    else
    {
      v7 = 1;
    }

    v8 = +[AVKitGlobalSettings shared];
    if ([v8 subtitlesOnMuteEnabled])
    {
      playerController2 = [v1 playerController];
      v10 = [playerController2 hasLegibleMediaSelectionOptions] & v7;

      if (v10)
      {
        if ([v1 state] == 3 || captionAppearanceDisplayType != 2 || (objc_msgSend(v1, "playerMuted") & 1) != 0)
        {
          result = [v1 playerMuted];
          if (!result)
          {
            return result;
          }

          v11 = _AVLog();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            v14 = 136315138;
            v15 = "[AVSmartSubtitlesController _updateSubtitlesOnMuteIfNeeded]";
            _os_log_impl(&dword_18B49C000, v11, OS_LOG_TYPE_DEFAULT, "%s Enable subtitles on mute", &v14, 0xCu);
          }

          v12 = 1;
        }

        else
        {
          v11 = _AVLog();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            v14 = 136315138;
            v15 = "[AVSmartSubtitlesController _updateSubtitlesOnMuteIfNeeded]";
            _os_log_impl(&dword_18B49C000, v11, OS_LOG_TYPE_DEFAULT, "%s Disable subtitles: skip back captions are not displaying and 'subtitles on mute' setting is not enabled", &v14, 0xCu);
          }

          v12 = 0;
        }

        [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:v1 selector:sel___transitionToDisplayingCaptionsIfAble object:0];
        [v1 setDidToggleCaptionsOn:0];
        [v1 setState:0];
        [v1 setSubtitlesOnMuteActive:v12];
        return [v1 _toggleCaptions:v12];
      }
    }

    else
    {
    }

    v13 = _AVLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 136315138;
      v15 = "[AVSmartSubtitlesController _updateSubtitlesOnMuteIfNeeded]";
      _os_log_impl(&dword_18B49C000, v13, OS_LOG_TYPE_DEFAULT, "%s Disable subtitles: no subtitles available or accessibility mute settings or display option media options disabled", &v14, 0xCu);
    }

    result = [v1 setSubtitlesOnMuteActive:0];
    v12 = 0;
    if (captionAppearanceDisplayType == 2)
    {
      return [v1 _toggleCaptions:v12];
    }
  }

  return result;
}

- (void)userRequestedSeekWithTimeInterval:(double)interval
{
  delegate = [(AVSmartSubtitlesController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(AVSmartSubtitlesController *)self delegate];
    v8 = [delegate2 observesMediaSelectionForSmartSubtitlesController:self];

    v9 = v8 ^ 1;
  }

  else
  {
    v9 = 0;
  }

  if (![(AVSmartSubtitlesController *)self isSubtitlesOnMuteActive]&& (v9 & 1) == 0)
  {
    v10 = +[AVKitGlobalSettings shared];
    skipBackCaptionsEnabled = [v10 skipBackCaptionsEnabled];

    if (skipBackCaptionsEnabled)
    {
      playerController = [(AVSmartSubtitlesController *)self playerController];
      hasLegibleMediaSelectionOptions = [playerController hasLegibleMediaSelectionOptions];

      if (fabs(interval) != INFINITY)
      {
        if (hasLegibleMediaSelectionOptions)
        {
          [(AVSmartSubtitlesController *)self setState:1];
          self->_currentSkipBackTimeInterval = self->_currentSkipBackTimeInterval - interval;
          [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel___transitionToDisplayingCaptionsIfAble object:0];

          [(AVSmartSubtitlesController *)self performSelector:sel___transitionToDisplayingCaptionsIfAble withObject:0 afterDelay:1.25];
        }
      }
    }
  }
}

- (void)updatePlayerVolumeToPlayerMuted:(BOOL)muted
{
  [(AVSmartSubtitlesController *)self setPlayerMuted:muted];

  [(AVSmartSubtitlesController *)self _updateSubtitlesOnMuteIfNeeded];
}

- (BOOL)smartSubtitlesActive
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = +[AVKitGlobalSettings shared];
  subtitleAutomaticallyEnabledState = [v2 subtitleAutomaticallyEnabledState];

  v4 = _AVLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = "YES";
    if (!subtitleAutomaticallyEnabledState)
    {
      v5 = "NO";
    }

    v7 = 136315394;
    v8 = "[AVSmartSubtitlesController smartSubtitlesActive]";
    v9 = 2082;
    v10 = v5;
    _os_log_impl(&dword_18B49C000, v4, OS_LOG_TYPE_DEFAULT, "%s AVSubtitleAutomaticallyEnabledState:%{public}s", &v7, 0x16u);
  }

  return subtitleAutomaticallyEnabledState != 0;
}

- (void)setSubtitlesOnMuteActive:(BOOL)active
{
  if (self->_subtitlesOnMuteActive != active)
  {
    self->_subtitlesOnMuteActive = active;
  }
}

- (void)setPlayerController:(id)controller
{
  controllerCopy = controller;
  if (self->_playerController != controllerCopy)
  {
    v16 = controllerCopy;
    [(AVObservationController *)self->_smartSubtitlesControllerKVO stopAllObservation];
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
    [(AVSmartSubtitlesController *)self setState:0];
    objc_storeStrong(&self->_playerController, controller);
    controllerCopy = v16;
    if (v16)
    {
      smartSubtitlesControllerKVO = [(AVSmartSubtitlesController *)self smartSubtitlesControllerKVO];
      v8 = [smartSubtitlesControllerKVO startObserving:self keyPath:@"playerController.timeControlStatus" observationHandler:&__block_literal_global_27121];
      v9 = [smartSubtitlesControllerKVO startObserving:self keyPath:@"playerController.player.currentItem" observationHandler:&__block_literal_global_17_27123];
      v10 = [smartSubtitlesControllerKVO startObserving:self keyPath:@"playerController.currentLegibleMediaSelectionOption" includeInitialValue:0 observationHandler:&__block_literal_global_24_27125];
      v11 = +[AVKitGlobalSettings shared];
      showsTVControls = [v11 showsTVControls];

      if ((showsTVControls & 1) == 0)
      {
        v13 = [smartSubtitlesControllerKVO startObserving:self keyPath:@"playerController.currentAssetIfReady" includeInitialValue:0 observationHandler:&__block_literal_global_31_27127];
        [smartSubtitlesControllerKVO startObservingNotificationForName:*MEMORY[0x1E69E4C98] object:0 notificationCenter:0 observationHandler:&__block_literal_global_35_27128];
        v14 = [smartSubtitlesControllerKVO startObserving:self keyPath:@"playerController.seeking" includeInitialValue:0 observationHandler:&__block_literal_global_42];
        v15 = [smartSubtitlesControllerKVO startObserving:self keyPath:@"playerController.hasLegibleMediaSelectionOptions" observationHandler:&__block_literal_global_48_27131];
      }

      [smartSubtitlesControllerKVO startObservingNotificationForName:*MEMORY[0x1E69E4C90] object:0 notificationCenter:0 observationHandler:&__block_literal_global_50_27132];

      controllerCopy = v16;
    }
  }
}

void __48__AVSmartSubtitlesController__startObservations__block_invoke_5(uint64_t a1, void *a2)
{
  objc_initWeak(&location, a2);
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __48__AVSmartSubtitlesController__startObservations__block_invoke_6;
  v2[3] = &unk_1E7209EA8;
  objc_copyWeak(&v3, &location);
  dispatch_async(MEMORY[0x1E69E96A0], v2);
  objc_destroyWeak(&v3);
  objc_destroyWeak(&location);
}

void __48__AVSmartSubtitlesController__startObservations__block_invoke_6(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = _AVLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v5 = "[AVSmartSubtitlesController _handleShowOnSkipBackNotification]";
      _os_log_impl(&dword_18B49C000, v2, OS_LOG_TYPE_DEFAULT, "%s Skip back user preference changed, ensuring state is set to idle", buf, 0xCu);
    }

    [v3 setState:0];
    WeakRetained = v3;
  }
}

void __48__AVSmartSubtitlesController__startObservations__block_invoke_3_40(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v19 = a2;
  v5 = a4;
  v6 = [v5 oldValue];
  v7 = objc_opt_class();
  v8 = v6;
  if (v7)
  {
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  v11 = [v10 BOOLValue];
  v12 = [v5 value];

  v13 = objc_opt_class();
  v14 = v12;
  if (v13)
  {
    if (objc_opt_isKindOfClass())
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;

  v17 = [v16 BOOLValue];
  if (v11)
  {
    if ((v17 & 1) == 0)
    {
      v18 = [v19 playerController];
      [v18 currentTime];
      [v19 setLastSeekTime:?];

      if ([v19 state] == 2)
      {
        [v19 setState:3];
      }
    }
  }
}

void __48__AVSmartSubtitlesController__startObservations__block_invoke_32(uint64_t a1, void *a2)
{
  objc_initWeak(&location, a2);
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __48__AVSmartSubtitlesController__startObservations__block_invoke_2_36;
  v2[3] = &unk_1E7209EA8;
  objc_copyWeak(&v3, &location);
  dispatch_async(MEMORY[0x1E69E96A0], v2);
  objc_destroyWeak(&v3);
  objc_destroyWeak(&location);
}

void __48__AVSmartSubtitlesController__startObservations__block_invoke_2_36(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [(AVSmartSubtitlesController *)WeakRetained _updateSubtitlesOnMuteIfNeeded];
    WeakRetained = v2;
  }
}

void __48__AVSmartSubtitlesController__startObservations__block_invoke_29(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a4;
  v7 = [v5 delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [v5 delegate];
    v10 = [v9 observesMediaSelectionForSmartSubtitlesController:v5];
  }

  else
  {
    v10 = 1;
  }

  v11 = +[AVKitGlobalSettings shared];
  if ([v11 subtitlesOnMuteEnabled])
  {
    v12 = v10 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (v12 || ([v6 value], (v13 = objc_claimAutoreleasedReturnValue()) == 0))
  {
  }

  else
  {
    v14 = v13;
    v15 = [v6 value];
    v16 = [v6 oldValue];

    if (v15 != v16)
    {
      v17 = _AVLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        if ([v5 playerMuted])
        {
          v18 = "YES";
        }

        else
        {
          v18 = "NO";
        }

        v20 = 136315650;
        v21 = "[AVSmartSubtitlesController _startObservations]_block_invoke";
        if ([v5 isSubtitlesOnMuteActive])
        {
          v19 = "YES";
        }

        else
        {
          v19 = "NO";
        }

        v22 = 2082;
        v23 = v18;
        v24 = 2082;
        v25 = v19;
        _os_log_impl(&dword_18B49C000, v17, OS_LOG_TYPE_DEFAULT, "%s Asset is ready, player mute:%{public}s and subtitle mute active:%{public}s state", &v20, 0x20u);
      }

      [(AVSmartSubtitlesController *)v5 _updateSubtitlesOnMuteIfNeeded];
    }
  }
}

void __48__AVSmartSubtitlesController__startObservations__block_invoke_21(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a4;
  v7 = [v6 oldValue];
  v8 = [v6 value];

  v9 = [MEMORY[0x1E6987FD8] avkit_autoOption];
  if (v7 == v9)
  {
    v11 = 1;
  }

  else
  {
    v10 = [MEMORY[0x1E6987FD8] avkit_offOption];
    v11 = v7 == v10;
  }

  v12 = [MEMORY[0x1E6987FD8] avkit_autoOption];
  if (v8 == v12)
  {
    v14 = 1;
  }

  else
  {
    v13 = [MEMORY[0x1E6987FD8] avkit_offOption];
    v14 = v8 == v13;
  }

  if ([v5 state] != 3)
  {
    goto LABEL_18;
  }

  v15 = [v5 playerController];
  if ([v15 timeControlStatus] != 2 || (objc_msgSend(v7, "isEqual:", v8) & 1) != 0)
  {

    v16 = !v11;
    goto LABEL_11;
  }

  if (v11)
  {
    v16 = 0;
LABEL_11:
    if (!(v16 | (([v5 didToggleCaptionsOn] & 1) == 0) | v14))
    {
      [v5 _performSkipBackDelegateCallback];
    }

    goto LABEL_18;
  }

  v17 = _AVLog();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 136315138;
    v19 = "[AVSmartSubtitlesController _startObservations]_block_invoke";
    _os_log_impl(&dword_18B49C000, v17, OS_LOG_TYPE_DEFAULT, "%s Captions were changed while we were displaying them, resetting controller to idle", &v18, 0xCu);
  }

  [v5 setDidToggleCaptionsOn:0];
  [v5 setState:0];
LABEL_18:
}

void __48__AVSmartSubtitlesController__startObservations__block_invoke_3(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if ([v2 state])
  {
    v3 = _AVLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 136315138;
      v5 = "[AVSmartSubtitlesController _startObservations]_block_invoke_3";
      _os_log_impl(&dword_18B49C000, v3, OS_LOG_TYPE_DEFAULT, "%s Player item changed, resetting state to idle", &v4, 0xCu);
    }

    [v2 setState:0];
  }
}

void __48__AVSmartSubtitlesController__startObservations__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__AVSmartSubtitlesController__startObservations__block_invoke_2;
  block[3] = &unk_1E720A090;
  v5 = v2;
  v3 = v2;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __48__AVSmartSubtitlesController__startObservations__block_invoke_2(uint64_t a1)
{
  v2 = +[AVKitGlobalSettings shared];
  v3 = [v2 skipBackCaptionsEnabled];

  if (v3)
  {
    v4 = [*(a1 + 32) state];
    v5 = [*(a1 + 32) playerController];
    v6 = [v5 timeControlStatus];

    if (v6 == 2 && v4 == 2)
    {
      v8 = 3;
    }

    else
    {
      if (v6)
      {
        return;
      }

      v8 = 0;
    }

    v9 = *(a1 + 32);

    [v9 setState:v8];
  }
}

- (void)setState:(int64_t)state
{
  v20[3] = *MEMORY[0x1E69E9840];
  if (self->_state == state)
  {
    return;
  }

  self->_state = state;
  if (state <= 1)
  {
    if (state)
    {
      if (state != 1)
      {
        return;
      }

      [(AVSmartSubtitlesController *)self setCurrentSkipBackTimeInterval:0.0];
      [(AVSmartSubtitlesController *)&self->super.isa _setPlayerTimeObserver:?];
      [(AVPlayerController *)self->_playerController currentTime];
      [(AVSmartSubtitlesController *)self setTimeOfSeekStart:?];
      v4 = _AVLog();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        *&buf[4] = "[AVSmartSubtitlesController _handleUpdatedState:]";
        _os_log_impl(&dword_18B49C000, v4, OS_LOG_TYPE_DEFAULT, "%s AVSkipBackSmartSubtitleStatePreparing", buf, 0xCu);
      }
    }

    else
    {
      [(AVSmartSubtitlesController *)self setCurrentSkipBackTimeInterval:0.0];
      [(AVSmartSubtitlesController *)self setLastSeekTime:0.0];
      [(AVSmartSubtitlesController *)&self->super.isa _setPlayerTimeObserver:?];
      [(AVSmartSubtitlesController *)self setSkipBackSeekDelta:0.0];
      [(AVSmartSubtitlesController *)self setTimeOfSeekStart:0.0];
      [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel___transitionToDisplayingCaptionsIfAble object:0];
      if ([(AVSmartSubtitlesController *)self didToggleCaptionsOn])
      {
        [(AVSmartSubtitlesController *)self _toggleCaptions:0];
      }

      [(AVSmartSubtitlesController *)self setDidToggleCaptionsOn:0];
      v4 = _AVLog();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        *&buf[4] = "[AVSmartSubtitlesController _handleUpdatedState:]";
        _os_log_impl(&dword_18B49C000, v4, OS_LOG_TYPE_DEFAULT, "%s AVSkipBackSmartSubtitleStateIdle: Controller is idle", buf, 0xCu);
      }
    }

LABEL_22:

    return;
  }

  if (state == 2)
  {
    v4 = _AVLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = "[AVSmartSubtitlesController _handleUpdatedState:]";
      _os_log_impl(&dword_18B49C000, v4, OS_LOG_TYPE_DEFAULT, "%s AVSkipBackSmartSubtitleStateWaitingForPlayback", buf, 0xCu);
    }

    goto LABEL_22;
  }

  if (state != 3)
  {
    return;
  }

  timeOfSeekStart = self->_timeOfSeekStart;
  [(AVSmartSubtitlesController *)self lastSeekTime];
  v7 = v6;
  v8 = round(timeOfSeekStart - v6);
  if ((*&v8 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    v9 = _AVLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = "[AVSmartSubtitlesController _handleUpdatedState:]";
      _os_log_impl(&dword_18B49C000, v9, OS_LOG_TYPE_DEFAULT, "%s Delta received is an invalid value, resetting controller to idle", buf, 0xCu);
    }

LABEL_14:

    [(AVSmartSubtitlesController *)self setState:0];
    return;
  }

  v9 = _AVLog();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (v8 <= 0.0)
  {
    if (v10)
    {
      *buf = 136315394;
      *&buf[4] = "[AVSmartSubtitlesController _handleUpdatedState:]";
      *&buf[12] = 2048;
      *&buf[14] = v8;
      _os_log_impl(&dword_18B49C000, v9, OS_LOG_TYPE_DEFAULT, "%s Received a skip-forward or zero delta of %f, resetting controller to idle", buf, 0x16u);
    }

    goto LABEL_14;
  }

  if (v10)
  {
    *buf = 136315650;
    *&buf[4] = "[AVSmartSubtitlesController _handleUpdatedState:]";
    *&buf[12] = 2048;
    *&buf[14] = v7;
    *&buf[22] = 2048;
    v19 = timeOfSeekStart;
    _os_log_impl(&dword_18B49C000, v9, OS_LOG_TYPE_DEFAULT, "%s Seek backwards finished with success, enabling captions from %f to %f", buf, 0x20u);
  }

  objc_initWeak(&location, self);
  playerController = [(AVSmartSubtitlesController *)self playerController];
  player = [playerController player];
  CMTimeMakeWithSeconds(&v16, 0.5, 1000000000);
  v13 = MEMORY[0x1E69E96A0];
  *buf = MEMORY[0x1E69E9820];
  *&buf[8] = 3221225472;
  *&buf[16] = __50__AVSmartSubtitlesController__handleUpdatedState___block_invoke;
  v19 = COERCE_DOUBLE(&unk_1E72095A8);
  objc_copyWeak(v20, &location);
  v20[1] = *&timeOfSeekStart;
  v14 = [player addPeriodicTimeObserverForInterval:&v16 queue:MEMORY[0x1E69E96A0] usingBlock:buf];

  [(AVSmartSubtitlesController *)&self->super.isa _setPlayerTimeObserver:v14];
  v15 = [(AVSmartSubtitlesController *)self _toggleCaptions:1];
  [(AVSmartSubtitlesController *)self setSkipBackSeekDelta:v8];
  if (!v15 && [(AVSmartSubtitlesController *)self didToggleCaptionsOn]&& [(AVPlayerController *)self->_playerController isDisplayingNonForcedOnlyLegibleOption])
  {
    [(AVSmartSubtitlesController *)self _performSkipBackDelegateCallback];
  }

  if (![(AVSmartSubtitlesController *)self didToggleCaptionsOn])
  {
    [(AVSmartSubtitlesController *)self setDidToggleCaptionsOn:v15];
  }

  objc_destroyWeak(v20);
  objc_destroyWeak(&location);
}

- (void)_setPlayerTimeObserver:(id *)observer
{
  v4 = a2;
  if (observer)
  {
    v7 = v4;
    if (observer[10])
    {
      playerController = [observer playerController];
      player = [playerController player];
      [player removeTimeObserver:observer[10]];
    }

    objc_storeStrong(observer + 10, a2);
    v4 = v7;
  }
}

void __50__AVSmartSubtitlesController__handleUpdatedState___block_invoke(uint64_t a1, CMTime *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v9 = *a2;
  Seconds = CMTimeGetSeconds(&v9);
  if (WeakRetained)
  {
    v6 = Seconds;
    if (Seconds >= *(a1 + 40))
    {
      v7 = _AVLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(a1 + 40);
        LODWORD(v9.value) = 136315650;
        *(&v9.value + 4) = "[AVSmartSubtitlesController _handleUpdatedState:]_block_invoke";
        LOWORD(v9.flags) = 2048;
        *(&v9.flags + 2) = v6;
        HIWORD(v9.epoch) = 2048;
        v10 = v8;
        _os_log_impl(&dword_18B49C000, v7, OS_LOG_TYPE_DEFAULT, "%s Current playback time %f has reached or passed the original time of %f, resetting controller to idle", &v9, 0x20u);
      }

      [WeakRetained setState:0];
    }
  }
}

- (void)invalidate
{
  [(AVSmartSubtitlesController *)self setState:0];
  [(AVSmartSubtitlesController *)&self->super.isa _setPlayerTimeObserver:?];
  if (self)
  {
    [(AVObservationController *)self->_smartSubtitlesControllerKVO stopAllObservation];
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

    CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  }
}

- (void)dealloc
{
  [(AVSmartSubtitlesController *)self invalidate];
  v3.receiver = self;
  v3.super_class = AVSmartSubtitlesController;
  [(AVSmartSubtitlesController *)&v3 dealloc];
}

- (AVSmartSubtitlesController)init
{
  v6.receiver = self;
  v6.super_class = AVSmartSubtitlesController;
  v2 = [(AVSmartSubtitlesController *)&v6 init];
  if (v2)
  {
    v3 = [[AVObservationController alloc] initWithOwner:v2];
    smartSubtitlesControllerKVO = v2->_smartSubtitlesControllerKVO;
    v2->_smartSubtitlesControllerKVO = v3;

    v2->_subtitlesOnMuteActive = 0;
  }

  return v2;
}

@end