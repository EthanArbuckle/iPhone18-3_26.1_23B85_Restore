@interface AVPictureInPicturePlatformAdapter
+ (BOOL)isPictureInPictureSupported;
+ (UIImageSymbolConfiguration)imageSymbolConfiguration;
- (AVPictureInPictureContentSource)contentSourceAwaitingInvalidation;
- (AVPictureInPictureContentSource)contentSourceAwaitingSetup;
- (AVPictureInPictureContentSource)source;
- (AVPictureInPicturePlatformAdapter)initWithSource:(id)a3;
- (AVPictureInPicturePlatformAdapterDelegate)delegate;
- (BOOL)_isFullScreen;
- (BOOL)isContentSourceSupported;
- (BOOL)isSystemPictureInPicturePossible;
- (CGRect)pictureInPictureProxyViewFrameForTransitionAnimation:(id)a3;
- (CGRect)videoRectInScreen;
- (UIWindow)sourceWindowWhenPictureInPictureStarted;
- (id)pictureInPictureProxyViewControllerWindowForTransitionAnimation:(id)a3;
- (int64_t)_proxyControlsStyle;
- (int64_t)pictureInPictureProxyInterfaceOrientationForTransitionAnimation:(id)a3;
- (uint64_t)_sceneActivationState;
- (void)_createProxyIfNeeded;
- (void)_removeSecondScreenConnection;
- (void)_setRoutingVideoToHostedWindow:(BOOL)a3 pictureInPictureViewController:(id)a4 source:(id)a5;
- (void)_setStatusAndNotifyDelegateIfNeeded:(int64_t)a3;
- (void)_setupPipAdapter;
- (void)_startObservation;
- (void)_startObservingForPlaybackStateUpdates;
- (void)_updatePictureInPictureShouldStartWhenEnteringBackground;
- (void)_updateProxyPlaybackState;
- (void)_updateStatus;
- (void)_updateStatusUsingProposedStatus:(int64_t)a3;
- (void)_updateTimeResolver;
- (void)_updateVideoRectInScreenIfNeeded;
- (void)dealloc;
- (void)pictureInPictureProxy:(id)a3 didReceivePlaybackCommand:(id)a4;
- (void)pictureInPictureProxy:(id)a3 didReceiveTestingCommand:(id)a4;
- (void)pictureInPictureProxy:(id)a3 didStartPictureInPictureWithAnimationType:(int64_t)a4;
- (void)pictureInPictureProxy:(id)a3 didStopPictureInPictureWithAnimationType:(int64_t)a4 reason:(int64_t)a5;
- (void)pictureInPictureProxy:(id)a3 didUpdateResourcesUsageReductionReasons:(unint64_t)a4 oldReasons:(unint64_t)a5;
- (void)pictureInPictureProxy:(id)a3 failedToStartPictureInPictureWithAnimationType:(int64_t)a4 error:(id)a5;
- (void)pictureInPictureProxy:(id)a3 restoreUserInterfaceForPictureInPictureStopWithCompletionHandler:(id)a4;
- (void)pictureInPictureProxy:(id)a3 willStartPictureInPictureWithAnimationType:(int64_t)a4;
- (void)pictureInPictureProxy:(id)a3 willStopPictureInPictureWithAnimationType:(int64_t)a4 reason:(int64_t)a5;
- (void)pictureInPictureProxyPictureInPictureInterruptionBegan:(id)a3;
- (void)pictureInPictureProxyPictureInPictureInterruptionEnded:(id)a3;
- (void)pictureInPictureViewControllerViewDidAppear:(id)a3;
- (void)pictureInPictureViewControllerViewWillDisappear:(id)a3;
- (void)setActivitySessionIdentifier:(id)a3;
- (void)setAllowsPictureInPicturePlayback:(BOOL)a3;
- (void)setBackgroundPlaybackPolicy:(int64_t)a3;
- (void)setCanStartAutomaticallyWhenEnteringBackground:(BOOL)a3;
- (void)setControlsStyle:(int64_t)a3;
- (void)setInterruptedForAudioSession:(BOOL)a3;
- (void)setObservedTimeControlStatus:(int64_t)a3;
- (void)setPlayerController:(id)a3;
- (void)setPrerollAttributes:(id)a3;
- (void)setRoutingVideoToHostedWindow:(BOOL)a3;
- (void)setScrubbing:(BOOL)a3;
- (void)setScrubbingOrSeeking:(BOOL)a3;
- (void)setSeeking:(BOOL)a3;
- (void)setSource:(id)a3;
- (void)setStatus:(int64_t)a3;
- (void)setWasPlayingWhenSuspended:(BOOL)a3;
- (void)startPictureInPicture;
- (void)stopPictureInPictureAndRestoreUserInterface:(BOOL)a3;
- (void)updateLayoutDependentBehaviors;
@end

@implementation AVPictureInPicturePlatformAdapter

+ (BOOL)isPictureInPictureSupported
{
  if (isPictureInPictureSupported_onceToken != -1)
  {
    dispatch_once(&isPictureInPictureSupported_onceToken, &__block_literal_global_1600);
  }

  return isPictureInPictureSupported_isPictureInPictureSupported;
}

void __64__AVPictureInPicturePlatformAdapter_isPictureInPictureSupported__block_invoke()
{
  v8 = *MEMORY[0x1E69E9840];
  isPictureInPictureSupported_isPictureInPictureSupported = [MEMORY[0x1E69BCB60] isPictureInPictureSupported];
  v0 = _AVLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    v1 = "NO";
    v2 = 136315650;
    v3 = "+[AVPictureInPicturePlatformAdapter isPictureInPictureSupported]_block_invoke";
    v5 = "isPictureInPictureSupported";
    v4 = 2080;
    if (isPictureInPictureSupported_isPictureInPictureSupported)
    {
      v1 = "YES";
    }

    v6 = 2080;
    v7 = v1;
    _os_log_impl(&dword_18B49C000, v0, OS_LOG_TYPE_DEFAULT, "%s %s %s", &v2, 0x20u);
  }
}

- (AVPictureInPictureContentSource)source
{
  WeakRetained = objc_loadWeakRetained(&self->_source);

  return WeakRetained;
}

- (AVPictureInPictureContentSource)contentSourceAwaitingSetup
{
  WeakRetained = objc_loadWeakRetained(&self->_contentSourceAwaitingSetup);

  return WeakRetained;
}

- (AVPictureInPictureContentSource)contentSourceAwaitingInvalidation
{
  WeakRetained = objc_loadWeakRetained(&self->_contentSourceAwaitingInvalidation);

  return WeakRetained;
}

- (UIWindow)sourceWindowWhenPictureInPictureStarted
{
  WeakRetained = objc_loadWeakRetained(&self->_sourceWindowWhenPictureInPictureStarted);

  return WeakRetained;
}

- (CGRect)videoRectInScreen
{
  x = self->_videoRectInScreen.origin.x;
  y = self->_videoRectInScreen.origin.y;
  width = self->_videoRectInScreen.size.width;
  height = self->_videoRectInScreen.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (AVPictureInPicturePlatformAdapterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_setupPipAdapter
{
  [(AVPictureInPicturePlatformAdapter *)self _updateStatus];

  [(AVPictureInPicturePlatformAdapter *)self _createProxyIfNeeded];
}

- (void)setSeeking:(BOOL)a3
{
  self->_seeking = a3;
  v4 = [(AVPictureInPicturePlatformAdapter *)self isSeeking]|| [(AVPictureInPicturePlatformAdapter *)self isScrubbing];

  [(AVPictureInPicturePlatformAdapter *)self setScrubbingOrSeeking:v4];
}

- (void)setScrubbing:(BOOL)a3
{
  self->_scrubbing = a3;
  v4 = [(AVPictureInPicturePlatformAdapter *)self isSeeking]|| [(AVPictureInPicturePlatformAdapter *)self isScrubbing];

  [(AVPictureInPicturePlatformAdapter *)self setScrubbingOrSeeking:v4];
}

- (void)setScrubbingOrSeeking:(BOOL)a3
{
  if (self->_scrubbingOrSeeking != a3)
  {
    self->_scrubbingOrSeeking = a3;
    if (a3)
    {
      v4 = [(AVPictureInPicturePlatformAdapter *)self playerController];
      [v4 rate];
      [(AVPictureInPicturePlatformAdapter *)self setRateWhenScrubbingOrSeekingBegan:?];
    }
  }
}

- (void)setRoutingVideoToHostedWindow:(BOOL)a3
{
  if (self->_routingVideoToHostedWindow != a3)
  {
    self->_routingVideoToHostedWindow = a3;
    [(AVPictureInPicturePlatformAdapter *)self _updateProxyPlaybackState];
  }
}

- (void)setObservedTimeControlStatus:(int64_t)a3
{
  if (self->_observedTimeControlStatus != a3)
  {
    self->_observedTimeControlStatus = a3;
    [(AVPictureInPicturePlatformAdapter *)self _updateProxyPlaybackState];
    if (a3 == 2)
    {
      [(AVPictureInPicturePlatformAdapter *)self setInterruptedForAudioSession:0];

      [(AVPictureInPicturePlatformAdapter *)self setWasPlayingWhenSuspended:0];
    }
  }
}

- (void)_removeSecondScreenConnection
{
  v3 = [(AVPictureInPicturePlatformAdapter *)self secondScreenConnection];

  if (v3)
  {
    v4 = +[AVSecondScreenController sharedInstance];
    v5 = [(AVPictureInPicturePlatformAdapter *)self secondScreenConnection];
    [v4 removeConnection:v5];

    secondScreenConnection = self->_secondScreenConnection;
    self->_secondScreenConnection = 0;
  }
}

- (void)pictureInPictureViewControllerViewWillDisappear:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = _AVLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[AVPictureInPicturePlatformAdapter pictureInPictureViewControllerViewWillDisappear:]";
    v9 = 1024;
    v10 = 1014;
    _os_log_impl(&dword_18B49C000, v5, OS_LOG_TYPE_DEFAULT, "%s %d", &v7, 0x12u);
  }

  v6 = [(AVPictureInPicturePlatformAdapter *)self source];
  [(AVPictureInPicturePlatformAdapter *)self _setRoutingVideoToHostedWindow:0 pictureInPictureViewController:v4 source:v6];
}

- (void)pictureInPictureViewControllerViewDidAppear:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = _AVLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[AVPictureInPicturePlatformAdapter pictureInPictureViewControllerViewDidAppear:]";
    v9 = 1024;
    v10 = 1008;
    _os_log_impl(&dword_18B49C000, v5, OS_LOG_TYPE_DEFAULT, "%s %d", &v7, 0x12u);
  }

  v6 = [(AVPictureInPicturePlatformAdapter *)self source];
  [(AVPictureInPicturePlatformAdapter *)self _setRoutingVideoToHostedWindow:1 pictureInPictureViewController:v4 source:v6];
}

- (void)pictureInPictureProxy:(id)a3 didReceiveTestingCommand:(id)a4
{
  v13 = *MEMORY[0x1E69E9840];
  if ([a4 testingAction] == 1)
  {
    v5 = [(AVPictureInPicturePlatformAdapter *)self status];
    v6 = _AVLog();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    if (v5 == 1)
    {
      if (v7)
      {
        v8 = [(AVPictureInPicturePlatformAdapter *)self playerController];
        v9 = 136315394;
        v10 = "[AVPictureInPicturePlatformAdapter pictureInPictureProxy:didReceiveTestingCommand:]";
        v11 = 2114;
        v12 = v8;
        _os_log_impl(&dword_18B49C000, v6, OS_LOG_TYPE_DEFAULT, "%s starting for playerController %{public}@", &v9, 0x16u);
      }

      [(AVPictureInPicturePlatformAdapter *)self startPictureInPicture];
    }

    else
    {
      if (v7)
      {
        v9 = 136315394;
        v10 = "[AVPictureInPicturePlatformAdapter pictureInPictureProxy:didReceiveTestingCommand:]";
        v11 = 1024;
        LODWORD(v12) = [(AVPictureInPicturePlatformAdapter *)self status];
        _os_log_impl(&dword_18B49C000, v6, OS_LOG_TYPE_DEFAULT, "%s failed; status = %d", &v9, 0x12u);
      }
    }
  }
}

- (void)pictureInPictureProxy:(id)a3 didReceivePlaybackCommand:(id)a4
{
  v43 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = _AVLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v40 = "[AVPictureInPicturePlatformAdapter pictureInPictureProxy:didReceivePlaybackCommand:]";
    v41 = 2048;
    v42 = [v7 playbackAction];
    _os_log_impl(&dword_18B49C000, v8, OS_LOG_TYPE_DEFAULT, "%s playbackCommand: %ld", buf, 0x16u);
  }

  v9 = [v7 playbackAction];
  if (v9 <= 4)
  {
    if (v9 > 2)
    {
      if (v9 == 3)
      {
        v26 = [v7 associatedBoolValue];
        v15 = [(AVPictureInPicturePlatformAdapter *)self delegate];
        v12 = v15;
        v16 = self;
        if (v26)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }
      }

      else
      {
        v13 = [(AVPictureInPicturePlatformAdapter *)self controlsStyle];
        v14 = [v7 associatedBoolValue];
        if (v13 == 1)
        {
          if (v14 != [(AVPictureInPicturePlatformAdapter *)self isMicrophoneEnabled])
          {
            goto LABEL_54;
          }

          v15 = [(AVPictureInPicturePlatformAdapter *)self delegate];
          v12 = v15;
          v16 = self;
          v17 = 8;
        }

        else
        {
          v15 = [(AVPictureInPicturePlatformAdapter *)self delegate];
          v12 = v15;
          v16 = self;
          if (v14)
          {
            v17 = 6;
          }

          else
          {
            v17 = 7;
          }
        }
      }

      goto LABEL_52;
    }

    if (v9 != 1)
    {
      if (v9 != 2)
      {
LABEL_33:
        v32 = _AVLog();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          v37 = [v7 playbackAction];
          *buf = 134217984;
          v40 = v37;
          _os_log_error_impl(&dword_18B49C000, v32, OS_LOG_TYPE_ERROR, "Error: Unrecognized PGPlaybackAction - %ld", buf, 0xCu);
        }

        goto LABEL_54;
      }

      v12 = [(AVPictureInPicturePlatformAdapter *)self playerController];
      [v12 gotoEndOfSeekableRanges:self];
LABEL_53:

      goto LABEL_54;
    }

    [v7 associatedDoubleValue];
    v19 = v18;
    v20 = [(AVPictureInPicturePlatformAdapter *)self playerController];
    [v7 associatedDoubleValue];
    [v20 seekByTimeInterval:? toleranceBefore:? toleranceAfter:?];

    v12 = [(AVPictureInPicturePlatformAdapter *)self delegate];
    v21 = objc_opt_respondsToSelector();
    if (v19 <= 0.0)
    {
      if ((v21 & 1) == 0)
      {
        goto LABEL_53;
      }

      v22 = [(AVPictureInPicturePlatformAdapter *)self delegate];
      v23 = v22;
      v24 = self;
      v25 = 10;
    }

    else
    {
      if ((v21 & 1) == 0)
      {
        goto LABEL_53;
      }

      v22 = [(AVPictureInPicturePlatformAdapter *)self delegate];
      v23 = v22;
      v24 = self;
      v25 = 11;
    }

    [v22 pictureInPicturePlatformAdapter:v24 handlePlaybackCommand:v25];

    goto LABEL_53;
  }

  if (v9 > 6)
  {
    switch(v9)
    {
      case 7:
        if ([v7 associatedBoolValue] && !-[AVPictureInPicturePlatformAdapter isInterruptedForAudioSession](self, "isInterruptedForAudioSession"))
        {
          v15 = [(AVPictureInPicturePlatformAdapter *)self delegate];
          v12 = v15;
          v16 = self;
          v17 = 5;
        }

        else
        {
          v15 = [(AVPictureInPicturePlatformAdapter *)self delegate];
          v12 = v15;
          v16 = self;
          v17 = 4;
        }

        break;
      case 8:
        v15 = [(AVPictureInPicturePlatformAdapter *)self delegate];
        v12 = v15;
        v16 = self;
        v17 = 9;
        break;
      case 9:
        v10 = [(AVPictureInPicturePlatformAdapter *)self playerController];
        v11 = [v10 player];
        v38[0] = MEMORY[0x1E69E9820];
        v38[1] = 3221225472;
        v38[2] = __85__AVPictureInPicturePlatformAdapter_pictureInPictureProxy_didReceivePlaybackCommand___block_invoke;
        v38[3] = &unk_1E7208E90;
        v38[4] = self;
        [AVDismissalExpanseCoordinator coordinateDismissalWithExpanseSessionForPlayer:v11 cancellable:1 dismissalBlock:v38];

        goto LABEL_54;
      default:
        goto LABEL_33;
    }

    goto LABEL_52;
  }

  if (v9 != 5)
  {
    v15 = [(AVPictureInPicturePlatformAdapter *)self delegate];
    v12 = v15;
    v16 = self;
    v17 = 3;
LABEL_52:
    [v15 pictureInPicturePlatformAdapter:v16 handlePlaybackCommand:v17];
    goto LABEL_53;
  }

  if ([v7 associatedBoolValue])
  {
    [(AVPictureInPicturePlatformAdapter *)self setWasPlayingWhenSuspended:[(AVPictureInPicturePlatformAdapter *)self observedTimeControlStatus]== 2];
    v27 = [(AVPictureInPicturePlatformAdapter *)self playerController];
    if ([v27 isPlaying])
    {
      v28 = [(AVPictureInPicturePlatformAdapter *)self canPausePlaybackWhenClosingPictureInPicture];

      if (!v28)
      {
LABEL_57:
        [(AVPictureInPicturePlatformAdapter *)self _updateStatusUsingProposedStatus:5];
        goto LABEL_54;
      }

      v29 = [(AVPictureInPicturePlatformAdapter *)self playerController];
      v30 = objc_opt_respondsToSelector();

      v31 = [(AVPictureInPicturePlatformAdapter *)self playerController];
      v27 = v31;
      if (v30)
      {
        [v31 pauseForAllCoordinatedPlaybackParticipants:0];
      }

      else
      {
        [v31 setPlaying:0];
      }
    }

    goto LABEL_57;
  }

  if ([v6 pictureInPictureWasStartedWhenEnteringBackground])
  {
    v33 = 4;
  }

  else
  {
    v33 = 3;
  }

  [(AVPictureInPicturePlatformAdapter *)self _updateStatusUsingProposedStatus:v33];
  if ([(AVPictureInPicturePlatformAdapter *)self wasPlayingWhenSuspended])
  {
    if (![(AVPictureInPicturePlatformAdapter *)self isInterruptedForAudioSession])
    {
      v34 = [(AVPictureInPicturePlatformAdapter *)self playerController];
      v35 = [v34 isPictureInPictureInterrupted];

      if ((v35 & 1) == 0)
      {
        v36 = [(AVPictureInPicturePlatformAdapter *)self playerController];
        [v36 play:self];
      }
    }
  }

  [(AVPictureInPicturePlatformAdapter *)self setWasPlayingWhenSuspended:0];
LABEL_54:
}

uint64_t __85__AVPictureInPicturePlatformAdapter_pictureInPictureProxy_didReceivePlaybackCommand___block_invoke(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
    return [*(result + 32) stopPictureInPictureAndRestoreUserInterface:0];
  }

  return result;
}

- (void)pictureInPictureProxy:(id)a3 didUpdateResourcesUsageReductionReasons:(unint64_t)a4 oldReasons:(unint64_t)a5
{
  v5 = a4;
  v17 = *MEMORY[0x1E69E9840];
  v7 = _AVLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = "YES";
    v11 = 136315650;
    v12 = "[AVPictureInPicturePlatformAdapter pictureInPictureProxy:didUpdateResourcesUsageReductionReasons:oldReasons:]";
    v14 = "shouldReduceResources";
    v13 = 2080;
    if ((v5 & 1) == 0)
    {
      v8 = "NO";
    }

    v15 = 2080;
    v16 = v8;
    _os_log_impl(&dword_18B49C000, v7, OS_LOG_TYPE_DEFAULT, "%s %s %s", &v11, 0x20u);
  }

  v9 = [(AVPictureInPicturePlatformAdapter *)self delegate];
  v10 = v9;
  if (v5)
  {
    [v9 pictureInPicturePlatformAdapterBeginReducingResourcesForEligibleOffScreenState];
  }

  else
  {
    [v9 pictureInPicturePlatformAdapterEndReducingResourcesForEligibleOffScreenState];
  }
}

- (id)pictureInPictureProxyViewControllerWindowForTransitionAnimation:(id)a3
{
  v3 = [(AVPictureInPicturePlatformAdapter *)self source];
  v4 = [v3 avkit_window];

  return v4;
}

- (int64_t)pictureInPictureProxyInterfaceOrientationForTransitionAnimation:(id)a3
{
  v3 = [(AVPictureInPicturePlatformAdapter *)self source];
  v4 = [v3 avkit_window];
  v5 = [v4 interfaceOrientation];

  return v5;
}

- (void)pictureInPictureProxyPictureInPictureInterruptionEnded:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = _AVLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[AVPictureInPicturePlatformAdapter pictureInPictureProxyPictureInPictureInterruptionEnded:]";
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&dword_18B49C000, v5, OS_LOG_TYPE_DEFAULT, "%s pictureInPictureProxy: %@", &v7, 0x16u);
  }

  v6 = [(AVPictureInPicturePlatformAdapter *)self delegate];
  [v6 pictureInPicturePlatformAdapter:self handlePlaybackCommand:4];
}

- (void)pictureInPictureProxyPictureInPictureInterruptionBegan:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = _AVLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[AVPictureInPicturePlatformAdapter pictureInPictureProxyPictureInPictureInterruptionBegan:]";
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&dword_18B49C000, v5, OS_LOG_TYPE_DEFAULT, "%s pictureInPictureProxy: %@", &v7, 0x16u);
  }

  v6 = [(AVPictureInPicturePlatformAdapter *)self delegate];
  [v6 pictureInPicturePlatformAdapter:self handlePlaybackCommand:3];
}

- (void)pictureInPictureProxy:(id)a3 didStopPictureInPictureWithAnimationType:(int64_t)a4 reason:(int64_t)a5
{
  v16 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = _AVLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315650;
    v11 = "[AVPictureInPicturePlatformAdapter pictureInPictureProxy:didStopPictureInPictureWithAnimationType:reason:]";
    v12 = 2112;
    v13 = v7;
    v14 = 2048;
    v15 = a5;
    _os_log_impl(&dword_18B49C000, v8, OS_LOG_TYPE_DEFAULT, "%s pictureInPictureProxy: %@ reason: %ld", &v10, 0x20u);
  }

  v9 = [(AVPictureInPicturePlatformAdapter *)self delegate];
  [v9 pictureInPicturePlatformAdapterEndReducingResourcesForEligibleOffScreenState];

  [(AVPictureInPicturePlatformAdapter *)self _updateStatusUsingProposedStatus:7];
  [(AVPictureInPicturePlatformAdapter *)self setSourceWindowWhenPictureInPictureStarted:0];
}

- (void)pictureInPictureProxy:(id)a3 willStopPictureInPictureWithAnimationType:(int64_t)a4 reason:(int64_t)a5
{
  v19 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = _AVLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136315650;
    v14 = "[AVPictureInPicturePlatformAdapter pictureInPictureProxy:willStopPictureInPictureWithAnimationType:reason:]";
    v15 = 2112;
    v16 = v8;
    v17 = 2048;
    v18 = a5;
    _os_log_impl(&dword_18B49C000, v9, OS_LOG_TYPE_DEFAULT, "%s pictureInPictureProxy: %@ reason: %ld", &v13, 0x20u);
  }

  if (a4 == 2 || a5 == 1)
  {
    v10 = [(AVPictureInPicturePlatformAdapter *)self delegate];
    [v10 pictureInPicturePlatformAdapterPrepareToStopForDismissal:self];
  }

  v11 = [(AVPictureInPicturePlatformAdapter *)self source];
  v12 = [(AVPictureInPicturePlatformAdapter *)self pictureInPictureViewController];
  [v11 avkit_willBeginStoppingPictureInPictureForPictureInPictureViewController:v12];

  [(AVPictureInPicturePlatformAdapter *)self _updateStatusUsingProposedStatus:6];
}

- (void)pictureInPictureProxy:(id)a3 restoreUserInterfaceForPictureInPictureStopWithCompletionHandler:(id)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = _AVLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v14 = "[AVPictureInPicturePlatformAdapter pictureInPictureProxy:restoreUserInterfaceForPictureInPictureStopWithCompletionHandler:]";
    v15 = 2112;
    v16 = v6;
    _os_log_impl(&dword_18B49C000, v8, OS_LOG_TYPE_DEFAULT, "%s pictureInPictureProxy: %@", buf, 0x16u);
  }

  v9 = [(AVPictureInPicturePlatformAdapter *)self delegate];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __124__AVPictureInPicturePlatformAdapter_pictureInPictureProxy_restoreUserInterfaceForPictureInPictureStopWithCompletionHandler___block_invoke;
  v11[3] = &unk_1E7207FB0;
  v11[4] = self;
  v12 = v7;
  v10 = v7;
  [v9 pictureInPicturePlatformAdapter:self prepareToStopForRestoringUserInterface:v11];
}

uint64_t __124__AVPictureInPicturePlatformAdapter_pictureInPictureProxy_restoreUserInterfaceForPictureInPictureStopWithCompletionHandler___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    [*(a1 + 32) updateLayoutDependentBehaviors];
  }

  v3 = *(*(a1 + 40) + 16);

  return v3();
}

- (void)pictureInPictureProxy:(id)a3 failedToStartPictureInPictureWithAnimationType:(int64_t)a4 error:(id)a5
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = a5;
  v7 = _AVLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315394;
    v10 = "[AVPictureInPicturePlatformAdapter pictureInPictureProxy:failedToStartPictureInPictureWithAnimationType:error:]";
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&dword_18B49C000, v7, OS_LOG_TYPE_DEFAULT, "%s error: %@", &v9, 0x16u);
  }

  [(AVPictureInPicturePlatformAdapter *)self _updateStatusUsingProposedStatus:1];
  v8 = [(AVPictureInPicturePlatformAdapter *)self delegate];
  [v8 pictureInPicturePlatformAdapter:self failedToStartError:v6];

  [(AVPictureInPicturePlatformAdapter *)self setSourceWindowWhenPictureInPictureStarted:0];
}

- (void)pictureInPictureProxy:(id)a3 didStartPictureInPictureWithAnimationType:(int64_t)a4
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = _AVLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315394;
    v10 = "[AVPictureInPicturePlatformAdapter pictureInPictureProxy:didStartPictureInPictureWithAnimationType:]";
    v11 = 1024;
    v12 = 742;
    _os_log_impl(&dword_18B49C000, v6, OS_LOG_TYPE_DEFAULT, "%s %d", &v9, 0x12u);
  }

  v7 = [v5 pictureInPictureWasStartedWhenEnteringBackground];
  if (v7)
  {
    v8 = 4;
  }

  else
  {
    v8 = 3;
  }

  [(AVPictureInPicturePlatformAdapter *)self _updateStatusUsingProposedStatus:v8];
}

- (void)pictureInPictureProxy:(id)a3 willStartPictureInPictureWithAnimationType:(int64_t)a4
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = _AVLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[AVPictureInPicturePlatformAdapter pictureInPictureProxy:willStartPictureInPictureWithAnimationType:]";
    v10 = 1024;
    v11 = 733;
    _os_log_impl(&dword_18B49C000, v5, OS_LOG_TYPE_DEFAULT, "%s %d", &v8, 0x12u);
  }

  v6 = [(AVPictureInPicturePlatformAdapter *)self source];
  v7 = [v6 avkit_window];
  [(AVPictureInPicturePlatformAdapter *)self setSourceWindowWhenPictureInPictureStarted:v7];

  [(AVPictureInPicturePlatformAdapter *)self _updateStatusUsingProposedStatus:2];
}

- (CGRect)pictureInPictureProxyViewFrameForTransitionAnimation:(id)a3
{
  [(AVPictureInPicturePlatformAdapter *)self _updateVideoRectInScreenIfNeeded];

  [(AVPictureInPicturePlatformAdapter *)self videoRectInScreen];
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (void)_updateVideoRectInScreenIfNeeded
{
  if (a1)
  {
    v2 = [a1 source];
    v23 = [v2 avkit_window];

    v3 = [a1 source];
    [v3 avkit_videoRectInWindow];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;

    v12 = [v23 screen];
    v13 = [v12 fixedCoordinateSpace];
    [v23 convertRect:v13 toCoordinateSpace:{v5, v7, v9, v11}];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;

    [a1 videoRectInScreen];
    v26.origin.x = v15;
    v26.origin.y = v17;
    v26.size.width = v19;
    v26.size.height = v21;
    if (!CGRectEqualToRect(v25, v26))
    {
      [a1 setVideoRectInScreen:{v15, v17, v19, v21}];
      v22 = [a1 pegasusProxy];
      [v22 viewFrameForInteractiveTransitionAnimationWhenEnteringBackgroundDidChangeForViewController];
    }
  }
}

- (void)_startObservingForPlaybackStateUpdates
{
  v25[4] = *MEMORY[0x1E69E9840];
  v3 = [(AVPictureInPicturePlatformAdapter *)self observationController];
  v25[0] = @"playerController.rate";
  v25[1] = @"playerController.muted";
  v25[2] = @"playerController.status";
  v25[3] = @"playerController.hasLiveStreamingContent";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:4];
  v5 = [v3 startObserving:self keyPaths:v4 includeInitialValue:1 observationHandler:&__block_literal_global_105];

  v6 = [(AVPictureInPicturePlatformAdapter *)self observationController];
  [v6 startObservingNotificationForName:@"AVPlayerControllerCurrentTimeJumpedNotification" object:0 notificationCenter:0 observationHandler:&__block_literal_global_107];

  v7 = [(AVPictureInPicturePlatformAdapter *)self playerController];
  LOBYTE(v4) = objc_opt_respondsToSelector();

  if (v4)
  {
    v8 = [(AVPictureInPicturePlatformAdapter *)self observationController];
    v9 = [v8 startObserving:self keyPath:@"playerController.seeking" includeInitialValue:1 observationHandler:&__block_literal_global_114];
  }

  v10 = [(AVPictureInPicturePlatformAdapter *)self playerController];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    v12 = [(AVPictureInPicturePlatformAdapter *)self observationController];
    v13 = [v12 startObserving:self keyPath:@"playerController.seekToTime" includeInitialValue:1 observationHandler:&__block_literal_global_121];
  }

  v14 = [(AVPictureInPicturePlatformAdapter *)self playerController];
  v15 = objc_opt_respondsToSelector();

  if (v15)
  {
    v16 = [(AVPictureInPicturePlatformAdapter *)self observationController];
    v17 = [v16 startObserving:self keyPath:@"playerController.scrubbing" includeInitialValue:1 observationHandler:&__block_literal_global_128];
  }

  v18 = [(AVPictureInPicturePlatformAdapter *)self playerController];
  v19 = objc_opt_respondsToSelector();

  v20 = [(AVPictureInPicturePlatformAdapter *)self observationController];
  v21 = v20;
  if (v19)
  {
    v22 = @"playerController.timeControlStatus";
    v23 = &__block_literal_global_135;
  }

  else
  {
    v22 = @"playerController.playing";
    v23 = &__block_literal_global_137_1530;
  }

  v24 = [v20 startObserving:self keyPath:v22 includeInitialValue:1 observationHandler:v23];
}

void __75__AVPictureInPicturePlatformAdapter__startObservingForPlaybackStateUpdates__block_invoke_7(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a2;
  v5 = [a4 value];
  if ([v5 BOOLValue])
  {
    v6 = 2;
  }

  else
  {
    v6 = 0;
  }

  [v7 setObservedTimeControlStatus:v6];
}

void __75__AVPictureInPicturePlatformAdapter__startObservingForPlaybackStateUpdates__block_invoke_6(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a2;
  v5 = [a4 value];
  v6 = [v5 integerValue];

  [v7 setObservedTimeControlStatus:v6];
}

void __75__AVPictureInPicturePlatformAdapter__startObservingForPlaybackStateUpdates__block_invoke_5(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a2;
  v5 = [a4 value];
  v6 = [v5 BOOLValue];

  [v7 setScrubbing:v6];
}

void __75__AVPictureInPicturePlatformAdapter__startObservingForPlaybackStateUpdates__block_invoke_3(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a2;
  v5 = [a4 value];
  v6 = [v5 BOOLValue];

  [v7 setSeeking:v6];
}

void __75__AVPictureInPicturePlatformAdapter__startObservingForPlaybackStateUpdates__block_invoke_2(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a2;
  v5 = [a4 object];
  v6 = [v7 playerController];

  if (v5 == v6)
  {
    [v7 _updateProxyPlaybackState];
  }
}

- (void)_startObservation
{
  v3 = [(AVPictureInPicturePlatformAdapter *)self observationController];
  v4 = [v3 startObserving:self keyPath:@"playerController.contentDimensions" includeInitialValue:1 observationHandler:&__block_literal_global_44];

  v5 = [(AVPictureInPicturePlatformAdapter *)self observationController];
  v6 = [(AVPictureInPicturePlatformAdapter *)self pegasusProxy];
  v7 = [v5 startObserving:v6 keyPath:@"pictureInPicturePossible" includeInitialValue:1 observationHandler:&__block_literal_global_49_1545];

  v8 = [(AVPictureInPicturePlatformAdapter *)self observationController];
  v9 = [(AVPictureInPicturePlatformAdapter *)self pegasusProxy];
  v10 = [v8 startObserving:v9 keyPath:@"pictureInPictureWasStartedWhenEnteringBackground" includeInitialValue:1 observationHandler:&__block_literal_global_54];

  v11 = [(AVPictureInPicturePlatformAdapter *)self observationController];
  v12 = [v11 startObserving:self keyPath:@"playerController.playing" includeInitialValue:1 observationHandler:&__block_literal_global_59];

  [(AVPictureInPicturePlatformAdapter *)self _startObservingForPlaybackStateUpdates];
  if ([(AVPictureInPicturePlatformAdapter *)self managesWiredSecondScreenPlayback])
  {
    v13 = [(AVPictureInPicturePlatformAdapter *)self source];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = [(AVPictureInPicturePlatformAdapter *)self source];
      objc_initWeak(&location, v14);
    }

    else
    {
      location = 0;
    }

    v15 = objc_loadWeakRetained(&location);
    if (v15)
    {
      v16 = [(AVPictureInPicturePlatformAdapter *)self observationController];
      v22 = MEMORY[0x1E69E9820];
      v23 = 3221225472;
      v24 = __54__AVPictureInPicturePlatformAdapter__startObservation__block_invoke_5;
      v25 = &unk_1E7207420;
      objc_copyWeak(&v26, &location);
      v17 = [v16 startObserving:self keyPath:@"playerController.player" includeInitialValue:1 observationHandler:&v22];

      objc_destroyWeak(&v26);
    }

    objc_destroyWeak(&location);
  }

  v18 = [(AVPictureInPicturePlatformAdapter *)self observationController:v22];
  [v18 startObservingNotificationForName:*MEMORY[0x1E6987A60] object:0 notificationCenter:0 observationHandler:&__block_literal_global_82];

  v19 = [(AVPictureInPicturePlatformAdapter *)self observationController];
  [v19 startObservingNotificationForName:*MEMORY[0x1E69580D8] object:0 notificationCenter:0 observationHandler:&__block_literal_global_84];

  v20 = [(AVPictureInPicturePlatformAdapter *)self observationController];
  [v20 startObservingNotificationForName:*MEMORY[0x1E6987A68] object:0 notificationCenter:0 observationHandler:&__block_literal_global_86];

  v21 = [(AVPictureInPicturePlatformAdapter *)self observationController];
  [v21 startObservingNotificationForName:*MEMORY[0x1E69879F8] object:0 notificationCenter:0 observationHandler:&__block_literal_global_89];
}

void __54__AVPictureInPicturePlatformAdapter__startObservation__block_invoke_5(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  [v7 _removeSecondScreenConnection];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (AVSecondScreenTVSupportEnabled_onceToken != -1)
  {
    dispatch_once(&AVSecondScreenTVSupportEnabled_onceToken, &__block_literal_global_125);
  }

  if (AVSecondScreenTVSupportEnabled_AVSecondScreenTVSupportEnabled == 1)
  {
    v11 = [WeakRetained player];

    if (v11)
    {
      v12 = [MEMORY[0x1E69DC938] currentDevice];
      v13 = [v12 userInterfaceIdiom];

      if (v13 == 1)
      {
        v14 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithServiceName:@"com.apple.avkit.SharedPreferences"];
        v15 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1EFF88AB0];
        [v14 setRemoteObjectInterface:v15];

        [v14 resume];
        objc_initWeak(&location, v7);
        v16 = [v14 remoteObjectProxy];
        v20[0] = MEMORY[0x1E69E9820];
        v20[1] = 3221225472;
        v20[2] = __54__AVPictureInPicturePlatformAdapter__startObservation__block_invoke_6;
        v20[3] = &unk_1E72073F8;
        objc_copyWeak(&v22, &location);
        objc_copyWeak(&v23, (a1 + 32));
        v17 = v14;
        v21 = v17;
        [v16 extendedDisplayActive:v20];

        objc_destroyWeak(&v23);
        objc_destroyWeak(&v22);
        objc_destroyWeak(&location);
      }

      else
      {
        v17 = +[AVSecondScreenController sharedInstance];
        v18 = [WeakRetained player];
        v19 = [v17 addConnectionForPlayer:v18 playerLayer:WeakRetained];
        [v7 setSecondScreenConnection:v19];
      }
    }
  }
}

void __54__AVPictureInPicturePlatformAdapter__startObservation__block_invoke_87(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v13 = a2;
  v5 = a4;
  v6 = [v13 playerController];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [v5 object];
    v9 = [v8 interstitialPlayer];
    v10 = [v13 playerController];
    v11 = [v10 interstitialController];
    v12 = [v11 interstitialPlayer];

    if (v9 == v12)
    {
      [(AVPictureInPicturePlatformAdapter *)v13 _updateTimeResolver];
    }
  }
}

- (void)_updateTimeResolver
{
  if (a1 && a1[1])
  {
    v2 = 1.0;
    v3 = 3.40282347e38;
    if ([a1 status] == 7 || objc_msgSend(a1, "status") == 1 || !objc_msgSend(a1, "status"))
    {
      v8 = 0;
    }

    else
    {
      v4 = [a1 playerController];
      v8 = v4;
      if ([v4 avkit_isAVPlayerControllerOrSubclass])
      {
        v5 = [v4 interstitialController];
        v6 = [v5 currentInterstitialTimeRange];

        v8 = v4;
        if (v6)
        {
          v8 = [v5 interstitialTimingController];
        }
      }

      v3 = 1.0;
      v2 = 1000.0;
    }

    v7 = [a1[1] playerController];

    if (v7 != v8)
    {
      [a1[1] setPlayerController:v8];
    }

    [a1[1] setInterval:v3];
    [a1[1] setResolution:v2];
  }
}

void __54__AVPictureInPicturePlatformAdapter__startObservation__block_invoke_10(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a4;
  v7 = [v6 object];
  v8 = [v5 playerController];
  v9 = [v8 player];

  if (v7 == v9)
  {
    v10 = [v5 playerController];
    v11 = [v10 player];
    [v11 rate];
    v13 = v12;

    if ([v5 status] >= 2 && v13 != 0.0)
    {
      v14 = _AVLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = [v6 userInfo];
        v16 = 134218242;
        v17 = v13;
        v18 = 2112;
        v19 = v15;
        _os_log_impl(&dword_18B49C000, v14, OS_LOG_TYPE_DEFAULT, "Interruption notification: AVPlayerPlaybackWasInterruptedNotification player.rate: %.1f userinfo: %@", &v16, 0x16u);
      }

      [v5 setInterruptedForAudioSession:1];
    }
  }
}

void __54__AVPictureInPicturePlatformAdapter__startObservation__block_invoke_9(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v12 = a2;
  v5 = [a4 userInfo];
  v6 = [v5 objectForKeyedSubscript:*MEMORY[0x1E6958100]];
  v7 = [v6 unsignedIntegerValue];

  if (!v7)
  {
    goto LABEL_6;
  }

  v8 = v12;
  if (v7 == 1)
  {
    v9 = [v12 playerController];
    v10 = [v9 player];

    v8 = v12;
    if (!v10)
    {
      if ([v12 status] > 1)
      {
        v11 = [v12 playerController];
        [v12 setInterruptedForAudioSession:{objc_msgSend(v11, "isPlaying")}];

LABEL_7:
        v8 = v12;
        goto LABEL_8;
      }

LABEL_6:
      [v12 setInterruptedForAudioSession:0];
      goto LABEL_7;
    }
  }

LABEL_8:
}

void __54__AVPictureInPicturePlatformAdapter__startObservation__block_invoke_8(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v8 = a2;
  v5 = a4;
  v6 = [v8 source];
  v7 = [v5 object];

  if (v6 == v7)
  {
    [v8 updateLayoutDependentBehaviors];
  }
}

void __54__AVPictureInPicturePlatformAdapter__startObservation__block_invoke_6(id *a1, char a2)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__AVPictureInPicturePlatformAdapter__startObservation__block_invoke_7;
  block[3] = &unk_1E72073D0;
  objc_copyWeak(&v5, a1 + 5);
  objc_copyWeak(&v6, a1 + 6);
  v7 = a2;
  dispatch_async(MEMORY[0x1E69E96A0], block);
  [a1[4] invalidate];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&v5);
}

void __54__AVPictureInPicturePlatformAdapter__startObservation__block_invoke_7(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained((a1 + 40));
  if ((*(a1 + 48) & 1) == 0)
  {
    if (AVSecondScreenTVSupportEnabled_onceToken != -1)
    {
      dispatch_once(&AVSecondScreenTVSupportEnabled_onceToken, &__block_literal_global_125);
    }

    if (AVSecondScreenTVSupportEnabled_AVSecondScreenTVSupportEnabled == 1 && WeakRetained != 0)
    {
      v4 = [v2 player];

      if (v4)
      {
        v5 = +[AVSecondScreenController sharedInstance];
        v6 = [v2 player];
        v7 = [v5 addConnectionForPlayer:v6 playerLayer:v2];
        [WeakRetained setSecondScreenConnection:v7];
      }
    }
  }
}

void __54__AVPictureInPicturePlatformAdapter__startObservation__block_invoke_3(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v8 = a2;
  v5 = a4;
  if (([v8 status] - 3) <= 1)
  {
    v6 = [v5 value];
    if ([v6 BOOLValue])
    {
      v7 = 4;
    }

    else
    {
      v7 = 3;
    }

    [v8 _updateStatusUsingProposedStatus:v7];
  }
}

void __54__AVPictureInPicturePlatformAdapter__startObservation__block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v12 = a2;
  v5 = [a4 value];
  [v5 CGSizeValue];
  v7 = v6;
  v9 = v8;

  v10 = [v12 pictureInPictureViewController];
  [v10 setPreferredContentSize:{v7, v9}];

  v11 = [v12 pegasusProxy];
  [v11 preferredContentSizeDidChangeForViewController];
}

- (void)_createProxyIfNeeded
{
  v17[5] = *MEMORY[0x1E69E9840];
  v3 = [(AVPictureInPicturePlatformAdapter *)self pegasusProxy];
  if (v3)
  {
  }

  else if ([(AVPictureInPicturePlatformAdapter *)self status]|| ([(AVPictureInPicturePlatformAdapter *)self activitySessionIdentifier], v4 = objc_claimAutoreleasedReturnValue(), v4, v4))
  {
    v5 = objc_alloc(MEMORY[0x1E69BCB60]);
    v6 = [(AVPictureInPicturePlatformAdapter *)self _proxyControlsStyle];
    v7 = [(AVPictureInPicturePlatformAdapter *)self pictureInPictureViewController];
    v8 = [v5 initWithControlsStyle:v6 viewController:v7];
    pegasusProxy = self->_pegasusProxy;
    self->_pegasusProxy = v8;

    if (!self->_pegasusProxy)
    {
      [(AVPictureInPicturePlatformAdapter *)self setStatus:0];
    }

    v10 = [(AVPictureInPicturePlatformAdapter *)self pegasusProxy];
    [v10 setDelegate:self];

    [(AVPictureInPicturePlatformAdapter *)self _startObservation];
    if (!self->_timeResolver)
    {
      v11 = objc_alloc_init(AVPlayerControllerTimeResolver);
      timeResolver = self->_timeResolver;
      self->_timeResolver = v11;

      [(AVPictureInPicturePlatformAdapter *)&self->super.isa _updateTimeResolver];
      v13 = [(AVPictureInPicturePlatformAdapter *)self observationController];
      v14 = self->_timeResolver;
      v17[0] = @"minTime";
      v17[1] = @"maxTime";
      v17[2] = @"playerController.timing";
      v17[3] = @"playerController.seekableTimeRanges";
      v17[4] = @"playerController.hasSeekableLiveStreamingContent";
      v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:5];
      v16 = [v13 startObserving:v14 keyPaths:v15 observationHandler:&__block_literal_global_161];
    }

    [(AVPictureInPicturePlatformAdapter *)self _updateProxyPlaybackState];
  }
}

- (void)setBackgroundPlaybackPolicy:(int64_t)a3
{
  v10 = *MEMORY[0x1E69E9840];
  if (self->_backgroundPlaybackPolicy != a3)
  {
    v5 = _AVLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315394;
      v7 = "[AVPictureInPicturePlatformAdapter setBackgroundPlaybackPolicy:]";
      v8 = 2050;
      v9 = a3;
      _os_log_impl(&dword_18B49C000, v5, OS_LOG_TYPE_DEFAULT, "%s backgroundPlaybackPolicy %{public}ld", &v6, 0x16u);
    }

    self->_backgroundPlaybackPolicy = a3;
    [(AVPictureInPicturePlatformAdapter *)self _updateProxyPlaybackState];
  }
}

- (void)_updateProxyPlaybackState
{
  v3 = [(AVPictureInPicturePlatformAdapter *)self pegasusProxy];
  v4 = [v3 controlsStyle];
  v5 = [(AVPictureInPicturePlatformAdapter *)self _proxyControlsStyle];

  if (v4 != v5)
  {
    v6 = [(AVPictureInPicturePlatformAdapter *)self _proxyControlsStyle];
    v7 = [(AVPictureInPicturePlatformAdapter *)self pegasusProxy];
    [v7 setControlsStyle:v6];
  }

  v8 = [(AVPictureInPicturePlatformAdapter *)self pegasusProxy];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __62__AVPictureInPicturePlatformAdapter__updateProxyPlaybackState__block_invoke;
  v9[3] = &unk_1E7207388;
  v9[4] = self;
  [v8 updatePlaybackStateUsingBlock:v9];
}

void __62__AVPictureInPicturePlatformAdapter__updateProxyPlaybackState__block_invoke(uint64_t a1, void *a2)
{
  v22 = a2;
  v3 = [*(a1 + 32) controlsStyle];
  switch(v3)
  {
    case 2:
      [v22 setContentType:4];
      break;
    case 1:
      [v22 setContentType:3];
      [v22 setMuted:{objc_msgSend(*(a1 + 32), "isMicrophoneEnabled") ^ 1}];
      break;
    case 0:
      v4 = [*(a1 + 32) playerController];
      [v4 rate];
      v6 = v5;
      [*(*(a1 + 32) + 8) targetTime];
      v8 = v7;
      v9 = 0.0;
      if ([v4 status] == 2)
      {
        v10 = [*(*(a1 + 32) + 8) playerController];
        [v10 contentDurationWithinEndTimes];
        v9 = v11;
      }

      v12 = [*(a1 + 32) observedTimeControlStatus];
      if ([*(a1 + 32) isScrubbingOrSeeking])
      {
        [*(a1 + 32) rateWhenScrubbingOrSeekingBegan];
        [*(a1 + 32) rateWhenScrubbingOrSeekingBegan];
        if (v13 != 0.0)
        {
          v12 = 1;
        }
      }

      v14 = v6;
      if ([v4 hasLiveStreamingContent])
      {
        [v22 setContentType:2];
        if ([*(a1 + 32) requiresLinearPlayback])
        {
          v15 = 1;
        }

        else
        {
          v15 = [v4 hasSeekableLiveStreamingContent] ^ 1;
        }
      }

      else
      {
        [v22 setContentType:1];
        v15 = [*(a1 + 32) requiresLinearPlayback];
      }

      [v22 setRequiresLinearPlayback:v15];
      [v22 setContentDuration:v9];
      [v22 setPlaybackRate:v12 elapsedTime:v14 timeControlStatus:v8];
      [v22 setMuted:{objc_msgSend(v4, "isMuted")}];
      v16 = [*(a1 + 32) prerollAttributes];
      v17 = [v16 pegasusAttributes];
      [v22 setPrerollAttributes:v17];

      break;
  }

  [v22 setRoutingVideoToHostedWindow:{objc_msgSend(*(a1 + 32), "isRoutingVideoToHostedWindow")}];
  v18 = [*(a1 + 32) backgroundPlaybackPolicy];
  v19 = [*(a1 + 32) activitySessionIdentifier];
  if (v19)
  {
    v20 = v19;
    v21 = [*(a1 + 32) backgroundPlaybackPolicy];

    if (v21 == 1)
    {
      v18 = 3;
    }
  }

  [v22 setBackgroundAudioPolicy:v18];
}

- (int64_t)_proxyControlsStyle
{
  v2 = [(AVPictureInPicturePlatformAdapter *)self controlsStyle];
  if (v2 > 2)
  {
    return 1;
  }

  else
  {
    return qword_18B6EC5A0[v2];
  }
}

- (void)_updatePictureInPictureShouldStartWhenEnteringBackground
{
  v39 = *MEMORY[0x1E69E9840];
  [(AVPictureInPicturePlatformAdapter *)self _createProxyIfNeeded];
  v3 = [(AVPictureInPicturePlatformAdapter *)self _isFullScreen];
  v4 = [(AVPictureInPicturePlatformAdapter *)self activitySessionIdentifier];

  v5 = [(AVPictureInPicturePlatformAdapter *)self playerController];
  v6 = [v5 isPlaying];
  if (v4)
  {
    v7 = 1;
  }

  else
  {
    v7 = v6;
  }

  v8 = [(AVPictureInPicturePlatformAdapter *)self canStartAutomaticallyWhenEnteringBackground]&& (v3 || [(AVPictureInPicturePlatformAdapter *)self alwaysStartsAutomaticallyWhenEnteringBackground]) && ([(AVPictureInPicturePlatformAdapter *)self allowsPictureInPicturePlayback]& v7) == 1 && [(AVPictureInPicturePlatformAdapter *)self status]!= 0;
  v9 = _AVLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    if ([(AVPictureInPicturePlatformAdapter *)self canStartAutomaticallyWhenEnteringBackground])
    {
      v10 = "YES";
    }

    else
    {
      v10 = "NO";
    }

    if (v3)
    {
      v11 = "YES";
    }

    else
    {
      v11 = "NO";
    }

    if ([(AVPictureInPicturePlatformAdapter *)self alwaysStartsAutomaticallyWhenEnteringBackground:v11])
    {
      v12 = "YES";
    }

    else
    {
      v12 = "NO";
    }

    if ([(AVPictureInPicturePlatformAdapter *)self allowsPictureInPicturePlayback])
    {
      v13 = "YES";
    }

    else
    {
      v13 = "NO";
    }

    v14 = [(AVPictureInPicturePlatformAdapter *)self playerController];
    if ([v14 isPlaying])
    {
      v15 = "YES";
    }

    else
    {
      v15 = "NO";
    }

    if (v4)
    {
      v16 = "YES";
    }

    else
    {
      v16 = "NO";
    }

    *buf = 136316930;
    if ([(AVPictureInPicturePlatformAdapter *)self status])
    {
      v17 = "YES";
    }

    else
    {
      v17 = "NO";
    }

    v24 = "[AVPictureInPicturePlatformAdapter _updatePictureInPictureShouldStartWhenEnteringBackground]";
    v25 = 2080;
    v26 = v22;
    v27 = 2080;
    v28 = v21;
    v29 = 2080;
    v30 = v12;
    v31 = 2080;
    v32 = v13;
    v33 = 2080;
    v34 = v15;
    v35 = 2080;
    v36 = v16;
    v37 = 2080;
    v38 = v17;
    _os_log_impl(&dword_18B49C000, v9, OS_LOG_TYPE_DEFAULT, "%s canStartAutomaticallyWhenEnteringBackground: %s isFullScreen - %s alwaysStartsAutomaticallyWhenEnteringBackground - %s allowsPictureInPicturePlayback - %s playerController.isPlaying - %s inSharePlaySession - %s status != prohibited - %s", buf, 0x52u);
  }

  v18 = _AVLog();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    if (v8)
    {
      v19 = "YES";
    }

    else
    {
      v19 = "NO";
    }

    *buf = 136315650;
    v24 = "[AVPictureInPicturePlatformAdapter _updatePictureInPictureShouldStartWhenEnteringBackground]";
    v25 = 2080;
    v26 = "pictureInPictureShouldStartWhenEnteringBackground";
    v27 = 2080;
    v28 = v19;
    _os_log_impl(&dword_18B49C000, v18, OS_LOG_TYPE_DEFAULT, "%s %s %s", buf, 0x20u);
  }

  v20 = [(AVPictureInPicturePlatformAdapter *)self pegasusProxy];
  [v20 setPictureInPictureShouldStartWhenEnteringBackground:v8];
}

- (BOOL)_isFullScreen
{
  v3 = [(AVPictureInPicturePlatformAdapter *)self source];
  v4 = objc_opt_respondsToSelector();

  v5 = [(AVPictureInPicturePlatformAdapter *)self source];
  v6 = v5;
  if (v4)
  {
    v7 = [v5 avkit_isFullScreen];
  }

  else
  {
    v8 = [v5 avkit_window];

    v9 = [(AVPictureInPicturePlatformAdapter *)self source];
    [v9 avkit_videoRectInWindow];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;

    [(AVPictureInPicturePlatformAdapter *)self _updateVideoRectInScreenIfNeeded];
    if (v8)
    {
      v31.origin.x = v11;
      v31.origin.y = v13;
      v31.size.width = v15;
      v31.size.height = v17;
      if (CGRectIsEmpty(v31) || (v32.origin.x = v11, v32.origin.y = v13, v32.size.width = v15, v32.size.height = v17, CGRectIsInfinite(v32)) || (-[AVPictureInPicturePlatformAdapter source](self, "source"), v18 = objc_claimAutoreleasedReturnValue(), [v18 avkit_window], v19 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "bounds"), UIRectGetCenter(), objc_msgSend(v19, "_largestInscribedRectInBoundingPathWithCenter:aspectRatio:"), v21 = v20, rect_8 = v22, v24 = v23, v26 = v25, v19, v18, v33.origin.x = v11, v33.origin.y = v13, v33.size.width = v15, v33.size.height = v17, v27 = CGRectGetWidth(v33) + 2.0, v34.origin.x = v21, v34.origin.y = rect_8, v34.size.width = v24, v34.size.height = v26, v27 < floor(CGRectGetWidth(v34))))
      {
        v7 = 0;
      }

      else
      {
        v35.origin.x = v11;
        v35.origin.y = v13;
        v35.size.width = v15;
        v35.size.height = v17;
        v29 = CGRectGetHeight(v35) + 2.0;
        v36.origin.x = v21;
        v36.origin.y = rect_8;
        v36.size.width = v24;
        v36.size.height = v26;
        v7 = v29 >= floor(CGRectGetHeight(v36));
      }

      v6 = v8;
    }

    else
    {
      v6 = 0;
      v7 = 0;
    }
  }

  return v7;
}

- (void)updateLayoutDependentBehaviors
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = _AVLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315394;
    v5 = "[AVPictureInPicturePlatformAdapter updateLayoutDependentBehaviors]";
    v6 = 1024;
    v7 = 373;
    _os_log_impl(&dword_18B49C000, v3, OS_LOG_TYPE_DEFAULT, "%s %d", &v4, 0x12u);
  }

  [(AVPictureInPicturePlatformAdapter *)self _updateStatus];
  [(AVPictureInPicturePlatformAdapter *)&self->super.isa _updateTimeResolver];
  [(AVPictureInPicturePlatformAdapter *)self _updatePictureInPictureShouldStartWhenEnteringBackground];
}

- (void)setCanStartAutomaticallyWhenEnteringBackground:(BOOL)a3
{
  if (self->_canStartAutomaticallyWhenEnteringBackground != a3)
  {
    self->_canStartAutomaticallyWhenEnteringBackground = a3;
    [(AVPictureInPicturePlatformAdapter *)self _updatePictureInPictureShouldStartWhenEnteringBackground];
  }
}

- (void)setActivitySessionIdentifier:(id)a3
{
  v4 = a3;
  activitySessionIdentifier = self->_activitySessionIdentifier;
  if (activitySessionIdentifier != v4)
  {
    v9 = v4;
    if (![(NSString *)activitySessionIdentifier isEqualToString:v4])
    {
      v6 = [(NSString *)v9 copy];
      v7 = self->_activitySessionIdentifier;
      self->_activitySessionIdentifier = v6;

      [(AVPictureInPicturePlatformAdapter *)self _createProxyIfNeeded];
      v8 = [(AVPictureInPicturePlatformAdapter *)self pegasusProxy];
      [v8 setClientSessionIdentifier:v9];

      [(AVPictureInPicturePlatformAdapter *)self _updateProxyPlaybackState];
      [(AVPictureInPicturePlatformAdapter *)self _updatePictureInPictureShouldStartWhenEnteringBackground];
    }
  }

  MEMORY[0x1EEE66BB8]();
}

- (void)setPlayerController:(id)a3
{
  v19 = a3;
  objc_storeStrong(&self->_playerController, a3);
  v5 = [(AVPictureInPicturePlatformAdapter *)self contentSourceAwaitingSetup];

  if (v5)
  {
    v6 = [(AVPictureInPicturePlatformAdapter *)self contentSourceAwaitingInvalidation];
    v7 = [(AVPictureInPicturePlatformAdapter *)self contentSourceAwaitingSetup];
    v8 = [v7 avkit_pictureInPictureViewController];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = [[AVPictureInPictureViewController alloc] initWithPictureInPicturePlayerLayerView:0];
    }

    v11 = v10;

    v12 = [(AVPictureInPicturePlatformAdapter *)self status];
    if (v12 <= 7)
    {
      if (((1 << v12) & 0x7C) != 0)
      {
        v13 = [(AVPictureInPicturePlatformAdapter *)self pictureInPictureViewController];
        v14 = [v13 contentViewController];
        v15 = v14;
        if (v14)
        {
          v16 = v14;
        }

        else
        {
          v16 = [(AVPictureInPicturePlatformAdapter *)self pictureInPictureViewController];
        }

        v17 = v16;

        [v6 avkit_stopRoutingVideoToPictureInPictureViewController:v17];
        v18 = [(AVPictureInPicturePlatformAdapter *)self pictureInPictureViewController];
        [v18 setContentViewController:v11];

        [v7 avkit_startRoutingVideoToPictureInPictureViewController:v11];
      }

      else
      {
        v17 = [(AVPictureInPicturePlatformAdapter *)self pictureInPictureViewController];
        [v17 setContentViewController:v11];
      }
    }

    [(AVPictureInPicturePlatformAdapter *)self setContentSourceAwaitingInvalidation:0];
    [(AVPictureInPicturePlatformAdapter *)self setContentSourceAwaitingSetup:0];
  }
}

- (void)setSource:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_source);
  if (WeakRetained != v4)
  {
    v6 = _AVLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315650;
      v8 = "[AVPictureInPicturePlatformAdapter setSource:]";
      v9 = 2112;
      v10 = WeakRetained;
      v11 = 2112;
      v12 = v4;
      _os_log_impl(&dword_18B49C000, v6, OS_LOG_TYPE_DEFAULT, "%s %@ --> %@", &v7, 0x20u);
    }

    objc_storeWeak(&self->_source, v4);
    [(AVPictureInPicturePlatformAdapter *)self setContentSourceAwaitingInvalidation:WeakRetained];
    [(AVPictureInPicturePlatformAdapter *)self setContentSourceAwaitingSetup:v4];
  }
}

- (void)setStatus:(int64_t)a3
{
  if (self->_status != a3)
  {
    self->_status = a3;
    [(AVPictureInPicturePlatformAdapter *)self _updatePictureInPictureShouldStartWhenEnteringBackground];

    [(AVPictureInPicturePlatformAdapter *)&self->super.isa _updateTimeResolver];
  }
}

- (void)setPrerollAttributes:(id)a3
{
  v10 = a3;
  v5 = [v10 pegasusAttributes];
  v6 = [(AVPictureInPicturePlatformAdapter *)self prerollAttributes];
  v7 = [v6 pegasusAttributes];
  if ([v5 isEqual:v7])
  {
  }

  else
  {
    v8 = [(AVPictureInPicturePlatformAdapter *)self prerollAttributes];

    v9 = v10;
    if (v8 == v10)
    {
      goto LABEL_6;
    }

    objc_storeStrong(&self->_prerollAttributes, a3);
    [(AVPictureInPicturePlatformAdapter *)self _updateProxyPlaybackState];
  }

  v9 = v10;
LABEL_6:
}

- (void)setControlsStyle:(int64_t)a3
{
  if (self->_controlsStyle != a3)
  {
    self->_controlsStyle = a3;
    [(AVPictureInPicturePlatformAdapter *)self _updateProxyPlaybackState];
  }
}

- (void)setWasPlayingWhenSuspended:(BOOL)a3
{
  v12 = *MEMORY[0x1E69E9840];
  if (self->_wasPlayingWhenSuspended != a3)
  {
    v3 = a3;
    self->_wasPlayingWhenSuspended = a3;
    v4 = _AVLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = "NO";
      v6 = 136315650;
      v7 = "[AVPictureInPicturePlatformAdapter setWasPlayingWhenSuspended:]";
      v9 = "wasPlayingWhenSuspended";
      v8 = 2080;
      if (v3)
      {
        v5 = "YES";
      }

      v10 = 2080;
      v11 = v5;
      _os_log_impl(&dword_18B49C000, v4, OS_LOG_TYPE_DEFAULT, "%s %s %s", &v6, 0x20u);
    }
  }
}

- (void)setInterruptedForAudioSession:(BOOL)a3
{
  v12 = *MEMORY[0x1E69E9840];
  if (self->_interruptedForAudioSession != a3)
  {
    v3 = a3;
    self->_interruptedForAudioSession = a3;
    v4 = _AVLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = "NO";
      v6 = 136315650;
      v7 = "[AVPictureInPicturePlatformAdapter setInterruptedForAudioSession:]";
      v9 = "interruptedForAudioSession";
      v8 = 2080;
      if (v3)
      {
        v5 = "YES";
      }

      v10 = 2080;
      v11 = v5;
      _os_log_impl(&dword_18B49C000, v4, OS_LOG_TYPE_DEFAULT, "%s %s %s", &v6, 0x20u);
    }
  }
}

- (void)setAllowsPictureInPicturePlayback:(BOOL)a3
{
  self->_allowsPictureInPicturePlayback = a3;
  [(AVPictureInPicturePlatformAdapter *)self _updateStatus];

  [(AVPictureInPicturePlatformAdapter *)self _createProxyIfNeeded];
}

- (BOOL)isSystemPictureInPicturePossible
{
  v3 = [(AVPictureInPicturePlatformAdapter *)self pegasusProxy];
  if (v3)
  {
    v4 = [(AVPictureInPicturePlatformAdapter *)self pegasusProxy];
    if ([v4 isPictureInPicturePossible])
    {
      v5 = 1;
    }

    else
    {
      v6 = [(AVPictureInPicturePlatformAdapter *)self pegasusProxy];
      if ([v6 isPictureInPictureSuspended])
      {
        v5 = 1;
      }

      else
      {
        v7 = [(AVPictureInPicturePlatformAdapter *)self pegasusProxy];
        v5 = [v7 isPictureInPictureActive];
      }
    }
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (uint64_t)_sceneActivationState
{
  v23 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 0;
  }

  v2 = [a1 source];
  v3 = [v2 avkit_window];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 windowScene];
  }

  else
  {
    v6 = [a1 sourceWindowWhenPictureInPictureStarted];
    v5 = [v6 windowScene];
  }

  if (!v5)
  {
    v7 = -1;
    goto LABEL_9;
  }

  v7 = [v5 activationState];
  if (v7)
  {
LABEL_9:
    v8 = _AVLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [a1 source];
      v10 = [a1 source];
      v11 = [v10 avkit_window];
      v12 = [a1 sourceWindowWhenPictureInPictureStarted];
      v15 = 136315906;
      v16 = "[AVPictureInPicturePlatformAdapter _sceneActivationState]";
      v17 = 2114;
      v18 = v9;
      v19 = 2114;
      v20 = v11;
      v21 = 2114;
      v22 = v12;
      _os_log_impl(&dword_18B49C000, v8, OS_LOG_TYPE_DEFAULT, "%s source = %{public}@; source.avkit_window = %{public}@; sourceWindowWhenPictureInPictureStarted = %{public}@", &v15, 0x2Au);
    }

    v13 = _AVLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 136315650;
      v16 = "[AVPictureInPicturePlatformAdapter _sceneActivationState]";
      v17 = 2114;
      v18 = v5;
      v19 = 1024;
      LODWORD(v20) = v7;
      _os_log_impl(&dword_18B49C000, v13, OS_LOG_TYPE_DEFAULT, "%s windowScene = %{public}@;  activationState = %d", &v15, 0x1Cu);
    }
  }

  return v7;
}

- (void)stopPictureInPictureAndRestoreUserInterface:(BOOL)a3
{
  v3 = a3;
  v12 = *MEMORY[0x1E69E9840];
  v5 = _AVLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = "NO";
    *v10 = 136315650;
    *&v10[4] = "[AVPictureInPicturePlatformAdapter stopPictureInPictureAndRestoreUserInterface:]";
    *&v10[14] = "shouldRestore";
    *&v10[12] = 2080;
    if (v3)
    {
      v6 = "YES";
    }

    *&v10[22] = 2080;
    v11 = v6;
    _os_log_impl(&dword_18B49C000, v5, OS_LOG_TYPE_DEFAULT, "%s %s %s", v10, 0x20u);
  }

  if (v3)
  {
    if (![(AVPictureInPicturePlatformAdapter *)self _sceneActivationState])
    {
      [(AVPictureInPicturePlatformAdapter *)self _updateStatusUsingProposedStatus:6];
      v7 = 1;
      goto LABEL_12;
    }

    v7 = [(AVPictureInPicturePlatformAdapter *)self _sceneActivationState];
    [(AVPictureInPicturePlatformAdapter *)self _updateStatusUsingProposedStatus:6];
    if (v7 == 1)
    {
      goto LABEL_12;
    }
  }

  else
  {
    [(AVPictureInPicturePlatformAdapter *)self _updateStatusUsingProposedStatus:6];
  }

  v8 = [(AVPictureInPicturePlatformAdapter *)self delegate:*v10];
  [v8 pictureInPicturePlatformAdapterPrepareToStopForDismissal:self];

  v7 = 0;
LABEL_12:
  [(AVPictureInPicturePlatformAdapter *)self updateLayoutDependentBehaviors:*v10];
  v9 = [(AVPictureInPicturePlatformAdapter *)self pegasusProxy];
  [v9 stopPictureInPictureAndRestoreUserInterface:v7];
}

- (void)startPictureInPicture
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = _AVLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v12 = [(AVPictureInPicturePlatformAdapter *)self _sceneActivationState];
    _os_log_impl(&dword_18B49C000, v3, OS_LOG_TYPE_DEFAULT, "_sceneActivationState == %ld for start pictureinpicture", buf, 0xCu);
  }

  if ([(AVPictureInPicturePlatformAdapter *)self _sceneActivationState])
  {
    v4 = MEMORY[0x1E696ABC0];
    v5 = *MEMORY[0x1E696A588];
    v9[0] = *MEMORY[0x1E696A578];
    v9[1] = v5;
    v10[0] = @"Failed to start picture in picture.";
    v10[1] = @"The UIScene for the content source has an activation state other than UISceneActivationStateForegroundActive, which is not allowed.";
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];
    v7 = [v4 errorWithDomain:@"AVKitErrorDomain" code:-1001 userInfo:v6];

    v8 = [(AVPictureInPicturePlatformAdapter *)self delegate];
    [v8 pictureInPicturePlatformAdapter:self failedToStartError:v7];
  }

  else
  {
    [(AVPictureInPicturePlatformAdapter *)self _updateStatusUsingProposedStatus:2];
    v7 = [(AVPictureInPicturePlatformAdapter *)self pegasusProxy];
    [v7 startPictureInPicture];
  }
}

- (void)dealloc
{
  [(AVPictureInPicturePlatformAdapter *)self _removeSecondScreenConnection];
  [(NSTimer *)self->_layoutCheckTimer invalidate];
  [(AVObservationController *)self->_observationController stopAllObservation];
  observationController = self->_observationController;
  self->_observationController = 0;

  v4.receiver = self;
  v4.super_class = AVPictureInPicturePlatformAdapter;
  [(AVPictureInPicturePlatformAdapter *)&v4 dealloc];
}

- (AVPictureInPicturePlatformAdapter)initWithSource:(id)a3
{
  v18[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v17.receiver = self;
  v17.super_class = AVPictureInPicturePlatformAdapter;
  v5 = [(AVPictureInPicturePlatformAdapter *)&v17 init];
  if (v5)
  {
    if (dyld_program_sdk_at_least())
    {
      v6 = 0;
    }

    else
    {
      v6 = _os_feature_enabled_impl() ^ 1;
    }

    v5->_requiresLinearPlayback = v6;
    objc_storeWeak(&v5->_source, v4);
    v7 = [v4 avkit_pictureInPictureViewController];
    v8 = v7;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = [[AVPictureInPictureViewController alloc] initWithPictureInPicturePlayerLayerView:0];
    }

    pictureInPictureViewController = v5->_pictureInPictureViewController;
    v5->_pictureInPictureViewController = v9;

    [(AVPictureInPictureViewController *)v5->_pictureInPictureViewController setDelegate:v5];
    v5->_controlsStyle = 0;
    v11 = [[AVObservationController alloc] initWithOwner:v5];
    observationController = v5->_observationController;
    v5->_observationController = v11;

    *&v5->_canStartAutomaticallyWhenEnteringBackground = 257;
    v13 = [(AVPictureInPicturePlatformAdapter *)v5 observationController];
    v18[0] = @"playerController.pictureInPicturePossible";
    v18[1] = @"playerController.playingOnSecondScreen";
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];
    v15 = [v13 startObserving:v5 keyPaths:v14 observationHandler:&__block_literal_global_21];
  }

  return v5;
}

- (BOOL)isContentSourceSupported
{
  v2 = [(AVPictureInPicturePlatformAdapter *)self source];
  v3 = [v2 avkit_contentSourceType];

  return v3 < 4;
}

+ (UIImageSymbolConfiguration)imageSymbolConfiguration
{
  v2 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  [v2 pointSize];
  v4 = v3;

  v5 = MEMORY[0x1E69DCAD8];

  return [v5 configurationWithPointSize:4 weight:v4];
}

- (void)_setRoutingVideoToHostedWindow:(BOOL)a3 pictureInPictureViewController:(id)a4 source:(id)a5
{
  v6 = a3;
  v19 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  v10 = v9;
  if (v6)
  {
    [v9 avkit_startRoutingVideoToPictureInPictureViewController:v8];
  }

  else
  {
    [v9 avkit_stopRoutingVideoToPictureInPictureViewController:v8];
  }

  v11 = _AVLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = "NO";
    v13 = 136315650;
    v14 = "[AVPictureInPicturePlatformAdapter(Common) _setRoutingVideoToHostedWindow:pictureInPictureViewController:source:]";
    v16 = "shouldRoute";
    v15 = 2080;
    if (v6)
    {
      v12 = "YES";
    }

    v17 = 2080;
    v18 = v12;
    _os_log_impl(&dword_18B49C000, v11, OS_LOG_TYPE_DEFAULT, "%s %s %s", &v13, 0x20u);
  }

  [(AVPictureInPicturePlatformAdapter *)self setRoutingVideoToHostedWindow:v6];
}

- (void)_updateStatusUsingProposedStatus:(int64_t)a3
{
  v75 = *MEMORY[0x1E69E9840];
  v6 = _AVLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v54 = "[AVPictureInPicturePlatformAdapter(Common) _updateStatusUsingProposedStatus:]";
    v55 = 2048;
    v56 = [(AVPictureInPicturePlatformAdapter *)self status];
    v57 = 2048;
    v58 = a3;
    _os_log_impl(&dword_18B49C000, v6, OS_LOG_TYPE_DEFAULT, "%s current status: %ld -> proposed status: %ld", buf, 0x20u);
  }

  v7 = [(AVPictureInPicturePlatformAdapter *)self status];
  if (![(AVPictureInPicturePlatformAdapter *)self isContentSourceSupported])
  {
    v10 = 1;
    goto LABEL_12;
  }

  v8 = [(AVPictureInPicturePlatformAdapter *)self playerController];
  if ([v8 isPictureInPicturePossible] && -[AVPictureInPicturePlatformAdapter isSystemPictureInPicturePossible](self, "isSystemPictureInPicturePossible") && -[AVPictureInPicturePlatformAdapter allowsPictureInPicturePlayback](self, "allowsPictureInPicturePlayback"))
  {
    v9 = [(AVPictureInPicturePlatformAdapter *)self playerController];
    if ([v9 isPlayingOnSecondScreen])
    {
      v10 = 1;
LABEL_75:

      goto LABEL_11;
    }

    if (v7 == 1)
    {
      v3 = [(AVPictureInPicturePlatformAdapter *)self source];
      if (![v3 avkit_isVisible])
      {
        v10 = 1;
LABEL_74:

        goto LABEL_75;
      }
    }

    if (a3 > 1)
    {
      v36 = a3;
      v37 = 0;
      v38 = 0;
    }

    else
    {
      v35 = [(AVPictureInPicturePlatformAdapter *)self playerController];
      [v35 contentDimensions];
      if (CGFloatIsValid())
      {
        v51 = v35;
        v36 = a3;
        v37 = 0;
        v38 = 0;
      }

      else
      {
        v39 = [(AVPictureInPicturePlatformAdapter *)self playerController];
        [v39 contentDimensions];
        if (CGFloatIsValid())
        {
          v49 = v39;
          v51 = v35;
          v36 = a3;
          v37 = 0;
          v38 = 1;
        }

        else
        {
          v40 = [(AVPictureInPicturePlatformAdapter *)self playerController];
          [v40 contentDimensions];
          if (*MEMORY[0x1E695F060] != v42 || *(MEMORY[0x1E695F060] + 8) != v41)
          {

            v10 = 1;
            goto LABEL_71;
          }

          v47 = v40;
          v49 = v39;
          v51 = v35;
          v36 = a3;
          v37 = 1;
          v38 = 1;
        }
      }
    }

    v10 = [objc_opt_class() isPictureInPictureSupported] ^ 1;
    if (v37)
    {

      if ((v38 & 1) == 0)
      {
        goto LABEL_66;
      }
    }

    else if (!v38)
    {
LABEL_66:
      a3 = v36;
      if (v36 > 1)
      {
LABEL_71:
        if (v7 != 1)
        {
          goto LABEL_75;
        }

        goto LABEL_74;
      }

LABEL_70:

      goto LABEL_71;
    }

    a3 = v36;
    if (v36 >= 2)
    {
      goto LABEL_71;
    }

    goto LABEL_70;
  }

  v10 = 1;
LABEL_11:

LABEL_12:
  v11 = _AVLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    if (v10)
    {
      v12 = "YES";
    }

    else
    {
      v12 = "NO";
    }

    v46 = v12;
    if ([(AVPictureInPicturePlatformAdapter *)self isContentSourceSupported])
    {
      v13 = "YES";
    }

    else
    {
      v13 = "NO";
    }

    v45 = v13;
    v48 = [(AVPictureInPicturePlatformAdapter *)self playerController];
    if ([v48 isPictureInPicturePossible])
    {
      v14 = "YES";
    }

    else
    {
      v14 = "NO";
    }

    v44 = v14;
    if ([(AVPictureInPicturePlatformAdapter *)self isSystemPictureInPicturePossible])
    {
      v15 = "YES";
    }

    else
    {
      v15 = "NO";
    }

    v43 = v15;
    v50 = a3;
    if ([(AVPictureInPicturePlatformAdapter *)self allowsPictureInPicturePlayback])
    {
      v16 = "YES";
    }

    else
    {
      v16 = "NO";
    }

    v17 = [(AVPictureInPicturePlatformAdapter *)self playerController];
    if ([v17 isPlayingOnSecondScreen])
    {
      v18 = "YES";
    }

    else
    {
      v18 = "NO";
    }

    v19 = [(AVPictureInPicturePlatformAdapter *)self source];
    if ([v19 avkit_isVisible])
    {
      v20 = "YES";
    }

    else
    {
      v20 = "NO";
    }

    [(AVPictureInPicturePlatformAdapter *)self playerController];
    v21 = v52 = v10;
    [v21 contentDimensions];
    v23 = v22;
    v24 = [(AVPictureInPicturePlatformAdapter *)self playerController];
    [v24 contentDimensions];
    v26 = v25;
    v27 = [objc_opt_class() isPictureInPictureSupported];
    *buf = 136317698;
    v28 = "YES";
    if (!v27)
    {
      v28 = "NO";
    }

    v54 = "[AVPictureInPicturePlatformAdapter(Common) _updateStatusUsingProposedStatus:]";
    v55 = 2080;
    v56 = v46;
    v57 = 2080;
    v58 = v45;
    v59 = 2080;
    v60 = v44;
    v61 = 2080;
    v62 = v43;
    v63 = 2080;
    v64 = v16;
    a3 = v50;
    v65 = 2080;
    v66 = v18;
    v67 = 2080;
    v68 = v20;
    v69 = 2048;
    v70 = v23;
    v71 = 2048;
    v72 = v26;
    v73 = 2080;
    v74 = v28;
    _os_log_impl(&dword_18B49C000, v11, OS_LOG_TYPE_DEFAULT, "%s isPictureInPictureProhibited: %s {\n\tisContentSourceSupported: %s\n\tisPictureInPicturePossible: %s\n\tisSystemPictureInPicturePossible: %s\n\tallowsPictureInPicturePlayback: %s\n\tisPlayingOnSecondScreen: %s\n\tsourceIsVisible: %s\n\tcontentDimensions: (%.01f, %.01f)\n\tisPictureInPictureSupported: %s\n}", buf, 0x70u);

    v10 = v52;
  }

  if (a3 == 7)
  {
    [(AVPictureInPicturePlatformAdapter *)self _setStatusAndNotifyDelegateIfNeeded:7];
    [(AVPictureInPicturePlatformAdapter *)self _updateStatusUsingProposedStatus:v10 ^ 1u];
    goto LABEL_52;
  }

  v29 = v10 ^ 1;
  if (a3 == 6)
  {
    v29 = 1;
  }

  if (v29)
  {
    if (a3 <= 1)
    {
      v31 = 1;
    }

    else
    {
      v31 = a3;
    }

    v32 = self;
    goto LABEL_51;
  }

  v30 = [(AVPictureInPicturePlatformAdapter *)self status];
  if ((v30 - 2) < 4)
  {
    [(AVPictureInPicturePlatformAdapter *)self stopPictureInPictureAndRestoreUserInterface:[(AVPictureInPicturePlatformAdapter *)self canAnimatePictureInPictureTransition]];
    goto LABEL_52;
  }

  if (v30 == 7 || v30 == 1)
  {
    v32 = self;
    v31 = 0;
LABEL_51:
    [(AVPictureInPicturePlatformAdapter *)v32 _setStatusAndNotifyDelegateIfNeeded:v31];
  }

LABEL_52:
  v33 = _AVLog();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    if ([(AVPictureInPicturePlatformAdapter *)self status])
    {
      v34 = "YES";
    }

    else
    {
      v34 = "NO";
    }

    *buf = 136315650;
    v54 = "[AVPictureInPicturePlatformAdapter(Common) _updateStatusUsingProposedStatus:]";
    v55 = 2080;
    v56 = "self.status != AVPictureInPictureControllerStatusProhibited";
    v57 = 2080;
    v58 = v34;
    _os_log_impl(&dword_18B49C000, v33, OS_LOG_TYPE_DEFAULT, "%s %s %s", buf, 0x20u);
  }
}

- (void)_updateStatus
{
  v3 = [(AVPictureInPicturePlatformAdapter *)self status];

  [(AVPictureInPicturePlatformAdapter *)self _updateStatusUsingProposedStatus:v3];
}

- (void)_setStatusAndNotifyDelegateIfNeeded:(int64_t)a3
{
  v12 = *MEMORY[0x1E69E9840];
  if ([(AVPictureInPicturePlatformAdapter *)self status]!= a3)
  {
    v5 = _AVLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315394;
      v9 = "[AVPictureInPicturePlatformAdapter(Common) _setStatusAndNotifyDelegateIfNeeded:]";
      v10 = 2048;
      v11 = a3;
      _os_log_impl(&dword_18B49C000, v5, OS_LOG_TYPE_DEFAULT, "%s  newStatus: %ld", &v8, 0x16u);
    }

    v6 = [(AVPictureInPicturePlatformAdapter *)self status];
    [(AVPictureInPicturePlatformAdapter *)self setStatus:a3];
    v7 = [(AVPictureInPicturePlatformAdapter *)self delegate];
    [v7 pictureInPicturePlatformAdapter:self statusDidChange:a3 fromStatus:v6];
  }
}

@end