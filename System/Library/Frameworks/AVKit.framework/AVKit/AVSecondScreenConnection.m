@interface AVSecondScreenConnection
- (AVPlayerLayer)playerLayer;
- (AVSecondScreen)connectedSecondScreen;
- (AVSecondScreenConnection)initWithPlayer:(id)a3 playerLayer:(id)a4;
- (AVSecondScreenDebugAssistant)debugAssistant;
- (BOOL)_allowsNonAirPlayExternalPlayback;
- (BOOL)_currentItemIsReadyToPlayVideoOrLoadingWhileActive;
- (BOOL)_determineIsReadyToConnect;
- (CGSize)maximumVideoResolution;
- (CGSize)videoDisplaySize;
- (UIViewController)contentViewController;
- (double)videoDisplayScale;
- (void)_loadSecondScreenViewControllerIfNeeded;
- (void)_postNotification:(id)a3 oldValue:(id)a4 newValue:(id)a5;
- (void)_startObservingPlayer;
- (void)_updatePreferredDisplayCriteria;
- (void)_updatePreferredDisplayCriteriaFromPreparedAssetIfNeeded:(id)a3;
- (void)_updateReadyToConnect;
- (void)connectWithScreen:(id)a3 active:(BOOL)a4;
- (void)dealloc;
- (void)setActive:(BOOL)a3;
- (void)setPlayerLayer:(id)a3;
- (void)setPlaying:(BOOL)a3;
- (void)setPreferredDisplayCriteria:(id)a3;
- (void)setReadyToConnect:(BOOL)a3;
@end

@implementation AVSecondScreenConnection

- (CGSize)maximumVideoResolution
{
  width = self->_maximumVideoResolution.width;
  height = self->_maximumVideoResolution.height;
  result.height = height;
  result.width = width;
  return result;
}

- (AVSecondScreen)connectedSecondScreen
{
  WeakRetained = objc_loadWeakRetained(&self->_connectedSecondScreen);

  return WeakRetained;
}

- (AVPlayerLayer)playerLayer
{
  WeakRetained = objc_loadWeakRetained(&self->_playerLayer);

  return WeakRetained;
}

- (BOOL)_currentItemIsReadyToPlayVideoOrLoadingWhileActive
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [(AVSecondScreenConnection *)self player];
  v4 = [v3 currentItem];

  if (!v4)
  {
    goto LABEL_6;
  }

  v5 = [v4 status];
  if (v5 == 2)
  {
    goto LABEL_6;
  }

  if (v5 == 1)
  {
    if (![(AVSecondScreenConnection *)self isActive])
    {
      if (([v4 hasVideo] & 1) == 0)
      {
LABEL_6:
        v6 = 0;
        goto LABEL_10;
      }

      goto LABEL_9;
    }

LABEL_8:
    v6 = 1;
    goto LABEL_10;
  }

  if ([(AVSecondScreenConnection *)self isActive])
  {
    goto LABEL_8;
  }

LABEL_9:
  v7 = [(AVSecondScreenConnection *)self preferredDisplayCriteria];
  v6 = v7 != 0;

LABEL_10:
  v8 = _AVLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = "NO";
    v11 = 136315650;
    v12 = "[AVSecondScreenConnection _currentItemIsReadyToPlayVideoOrLoadingWhileActive]";
    v14 = "isReadyToPlayOrLoadingWhileActive";
    v13 = 2080;
    if (v6)
    {
      v9 = "YES";
    }

    v15 = 2080;
    v16 = v9;
    _os_log_impl(&dword_18B49C000, v8, OS_LOG_TYPE_DEFAULT, "%s %s %s", &v11, 0x20u);
  }

  return v6;
}

- (BOOL)_allowsNonAirPlayExternalPlayback
{
  v3 = [(AVSecondScreenConnection *)self player];
  v4 = v3 == 0;

  v5 = [(AVSecondScreenConnection *)self player];
  v6 = v5;
  if (v5)
  {
    if ([v5 allowsExternalPlayback] && objc_msgSend(v6, "usesExternalPlaybackWhileExternalScreenIsActive"))
    {
      if ([v6 isExternalPlaybackActive])
      {
        v4 = [v6 externalPlaybackType] != 1;
      }

      else
      {
        v4 = 1;
      }
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

- (BOOL)_determineIsReadyToConnect
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = [(AVSecondScreenConnection *)self player];
  if (!v3)
  {
    v6 = [(AVSecondScreenConnection *)self contentView];
    if (v6)
    {
      v5 = 1;
      goto LABEL_10;
    }
  }

  v4 = [(AVSecondScreenConnection *)self player];
  v5 = v4 && [(AVSecondScreenConnection *)self _allowsNonAirPlayExternalPlayback]&& [(AVSecondScreenConnection *)self _currentItemIsReadyToPlayVideoOrLoadingWhileActive];

  if (!v3)
  {
    v6 = 0;
LABEL_10:
  }

  v7 = _AVLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = "NO";
    v10 = 136315650;
    v11 = "[AVSecondScreenConnection _determineIsReadyToConnect]";
    v13 = "readyToConnect";
    v12 = 2080;
    if (v5)
    {
      v8 = "YES";
    }

    v14 = 2080;
    v15 = v8;
    _os_log_impl(&dword_18B49C000, v7, OS_LOG_TYPE_DEFAULT, "%s %s %s", &v10, 0x20u);
  }

  return v5;
}

- (void)_updateReadyToConnect
{
  v3 = [(AVSecondScreenConnection *)self _determineIsReadyToConnect];

  [(AVSecondScreenConnection *)self setReadyToConnect:v3];
}

- (void)_updatePreferredDisplayCriteriaFromPreparedAssetIfNeeded:(id)a3
{
  v11 = a3;
  v4 = [(AVSecondScreenConnection *)self player];

  v5 = v11;
  if (v4)
  {
    if ([v11 statusOfValueForKey:@"preferredDisplayCriteria" error:0] != 2 || (objc_msgSend(v11, "preferredDisplayCriteria"), (v6 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v6 = [objc_alloc(MEMORY[0x1E6987F88]) initWithRefreshRate:0 videoDynamicRange:0.0];
    }

    v7 = [(AVSecondScreenConnection *)self player];
    v8 = [v7 currentItem];
    v9 = [v8 asset];
    v10 = [v11 isEqual:v9];

    if (v10)
    {
      [(AVSecondScreenConnection *)self setPreferredDisplayCriteria:v6];
    }

    v5 = v11;
  }
}

- (void)_updatePreferredDisplayCriteria
{
  v9[2] = *MEMORY[0x1E69E9840];
  v3 = [(AVSecondScreenConnection *)self player];
  v4 = [v3 currentItem];
  v5 = [v4 asset];

  if (v5)
  {
    v9[0] = @"availableVideoDynamicRanges";
    v9[1] = @"preferredDisplayCriteria";
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:2];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __59__AVSecondScreenConnection__updatePreferredDisplayCriteria__block_invoke;
    v7[3] = &unk_1E7209FB0;
    v7[4] = self;
    v8 = v5;
    [v8 loadValuesAsynchronouslyForKeys:v6 completionHandler:v7];
  }

  else
  {
    [(AVSecondScreenConnection *)self setPreferredDisplayCriteria:0];
  }
}

void __59__AVSecondScreenConnection__updatePreferredDisplayCriteria__block_invoke(uint64_t a1)
{
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 40);

    [v2 _updatePreferredDisplayCriteriaFromPreparedAssetIfNeeded:v3];
  }

  else
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __59__AVSecondScreenConnection__updatePreferredDisplayCriteria__block_invoke_2;
    v5[3] = &unk_1E7209FB0;
    v4 = *(a1 + 40);
    v5[4] = *(a1 + 32);
    v6 = v4;
    dispatch_async(MEMORY[0x1E69E96A0], v5);
  }
}

- (void)_startObservingPlayer
{
  v16[6] = *MEMORY[0x1E69E9840];
  v3 = [(AVSecondScreenConnection *)self player];

  if (v3)
  {
    v4 = [[AVObservationController alloc] initWithOwner:self];
    observationController = self->_observationController;
    self->_observationController = v4;

    v16[0] = @"allowsExternalPlayback";
    v16[1] = @"externalPlaybackActive";
    v16[2] = @"airPlayVideoActive";
    v16[3] = @"currentItem.status";
    v16[4] = @"currentItem.hasVideo";
    v16[5] = @"usesExternalPlaybackWhileExternalScreenIsActive";
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:6];
    v7 = [(AVSecondScreenConnection *)self observationController];
    v8 = [(AVSecondScreenConnection *)self player];
    v9 = [v7 startObserving:v8 keyPaths:v6 observationHandler:&__block_literal_global_26894];

    v10 = [(AVSecondScreenConnection *)self observationController];
    v11 = [(AVSecondScreenConnection *)self player];
    v12 = [v10 startObserving:v11 keyPath:@"timeControlStatus" observationHandler:&__block_literal_global_45_26896];

    v13 = [(AVSecondScreenConnection *)self observationController];
    v14 = [(AVSecondScreenConnection *)self player];
    v15 = [v13 startObserving:v14 keyPath:@"currentItem.asset" observationHandler:&__block_literal_global_50_26898];

    [(AVSecondScreenConnection *)self _updatePreferredDisplayCriteria];
  }
}

void __49__AVSecondScreenConnection__startObservingPlayer__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 player];
  [v2 setPlaying:{objc_msgSend(v3, "timeControlStatus") == 2}];
}

- (void)_postNotification:(id)a3 oldValue:(id)a4 newValue:(id)a5
{
  v19 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = _AVLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412802;
    v14 = v8;
    v15 = 2112;
    v16 = v9;
    v17 = 2112;
    v18 = v10;
    _os_log_impl(&dword_18B49C000, v11, OS_LOG_TYPE_DEFAULT, "%@: %@ -> %@", &v13, 0x20u);
  }

  v12 = [MEMORY[0x1E696AD88] defaultCenter];
  [v12 postNotificationName:v8 object:self];
}

- (void)_loadSecondScreenViewControllerIfNeeded
{
  v3 = [(AVSecondScreenConnection *)self secondScreenViewController];

  if (!v3)
  {
    v4 = objc_alloc_init(AVSecondScreenViewController);
    [(AVSecondScreenConnection *)self setSecondScreenViewController:v4];

    v6 = [(AVSecondScreenConnection *)self secondScreenViewController];
    v5 = [(AVSecondScreenConnection *)self connectedSecondScreen];
    [v5 sceneBounds];
    [v6 setInitialScreenBoundsHint:?];
  }
}

- (double)videoDisplayScale
{
  if (![(AVSecondScreenConnection *)self isActive])
  {
    return 0.0;
  }

  v3 = [(AVSecondScreenConnection *)self secondScreenViewController];
  v4 = [v3 traitCollection];
  [v4 displayScale];
  v6 = v5;

  return v6;
}

- (CGSize)videoDisplaySize
{
  if ([(AVSecondScreenConnection *)self isActive])
  {
    v3 = [(AVSecondScreenConnection *)self secondScreenViewController];
    [v3 videoDisplaySize];
    v5 = v4;
    v7 = v6;
  }

  else
  {
    v5 = *MEMORY[0x1E695F060];
    v7 = *(MEMORY[0x1E695F060] + 8);
  }

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (void)connectWithScreen:(id)a3 active:(BOOL)a4
{
  if (a3)
  {
    v5 = a4;
    [(AVSecondScreenConnection *)self setConnectedSecondScreen:?];

    [(AVSecondScreenConnection *)self setActive:v5];
  }

  else
  {
    [(AVSecondScreenConnection *)self setActive:0, a4];

    [(AVSecondScreenConnection *)self setConnectedSecondScreen:0];
  }
}

- (void)setPlaying:(BOOL)a3
{
  if (self->_playing != a3)
  {
    v4 = a3;
    self->_playing = a3;
    v7 = [MEMORY[0x1E696AD98] numberWithInt:!a3];
    v6 = [MEMORY[0x1E696AD98] numberWithBool:v4];
    [(AVSecondScreenConnection *)self _postNotification:@"AVSecondScreenConnectionPlayingDidChangeNotification" oldValue:v7 newValue:v6];
  }
}

- (void)setActive:(BOOL)a3
{
  if (self->_active != a3)
  {
    v3 = a3;
    self->_active = a3;
    v5 = [MEMORY[0x1E696AD98] numberWithInt:!a3];
    v6 = [MEMORY[0x1E696AD98] numberWithBool:v3];
    [(AVSecondScreenConnection *)self _postNotification:@"AVSecondScreenConnectionActiveDidChangeNotification" oldValue:v5 newValue:v6];

    [(AVSecondScreenConnection *)self _updateReadyToConnect];
    if ([(AVSecondScreenConnection *)self isActive])
    {
      [(AVSecondScreenConnection *)self _loadSecondScreenViewControllerIfNeeded];
      v7 = [(AVSecondScreenConnection *)self secondScreenViewController];
      v8 = [(AVSecondScreenConnection *)self contentView];
      [v7 setContentView:v8];

      v9 = [(AVSecondScreenConnection *)self secondScreenViewController];
      v10 = [(AVSecondScreenConnection *)self playerLayer];
      [v9 setSourcePlayerLayer:v10];

      v11 = [(AVSecondScreenConnection *)self debugAssistant];
      v12 = [(AVSecondScreenConnection *)self secondScreenViewController];
      [v11 setSecondScreenViewController:v12];

      v17 = [(AVSecondScreenConnection *)self secondScreenViewController];
      [v17 setPlayingOnSecondScreen:1];
    }

    else
    {
      v13 = [(AVSecondScreenConnection *)self debugAssistant];
      [v13 setSecondScreenViewController:0];

      v14 = [(AVSecondScreenConnection *)self secondScreenViewController];
      [v14 setPlayingOnSecondScreen:0];

      v15 = [(AVSecondScreenConnection *)self secondScreenViewController];
      [v15 setSourcePlayerLayer:0];

      v16 = [(AVSecondScreenConnection *)self secondScreenViewController];
      [v16 setContentView:0];

      [(AVSecondScreenConnection *)self setSecondScreenViewController:0];
    }
  }
}

- (void)setReadyToConnect:(BOOL)a3
{
  if (self->_readyToConnect != a3)
  {
    v4 = a3;
    self->_readyToConnect = a3;
    v7 = [MEMORY[0x1E696AD98] numberWithInt:!a3];
    v6 = [MEMORY[0x1E696AD98] numberWithBool:v4];
    [(AVSecondScreenConnection *)self _postNotification:@"AVSecondScreenConnectionReadyDidChangeNotification" oldValue:v7 newValue:v6];
  }
}

- (void)setPreferredDisplayCriteria:(id)a3
{
  v10 = a3;
  v4 = [(AVDisplayCriteria *)self->_preferredDisplayCriteria isEqual:v10];
  v5 = v10;
  if ((v4 & 1) == 0)
  {
    preferredDisplayCriteria = self->_preferredDisplayCriteria;
    if (preferredDisplayCriteria != v10)
    {
      v7 = v10;
      v8 = self->_preferredDisplayCriteria;
      self->_preferredDisplayCriteria = v7;
      v9 = preferredDisplayCriteria;

      [(AVSecondScreenConnection *)self _postNotification:@"AVSecondScreenConnectionPreferredDisplayCriteriaDidChangeNotification" oldValue:v9 newValue:v7];
      v4 = [(AVSecondScreenConnection *)self _updateReadyToConnect];
      v5 = v10;
    }
  }

  MEMORY[0x1EEE66BB8](v4, v5);
}

- (void)setPlayerLayer:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_playerLayer);

  if (WeakRetained != v4)
  {
    v6 = objc_loadWeakRetained(&self->_playerLayer);
    objc_storeWeak(&self->_playerLayer, v4);
    v7 = [(AVSecondScreenConnection *)self secondScreenViewController];
    [v7 setSourcePlayerLayer:v4];

    v8 = _AVLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315650;
      v10 = "[AVSecondScreenConnection setPlayerLayer:]";
      v11 = 2112;
      v12 = v6;
      v13 = 2112;
      v14 = v4;
      _os_log_impl(&dword_18B49C000, v8, OS_LOG_TYPE_DEFAULT, "%s %@ -> %@", &v9, 0x20u);
    }
  }
}

- (AVSecondScreenDebugAssistant)debugAssistant
{
  if (!self->_debugAssistant)
  {
    if (AVSecondScreenDebugHUDEnabled_onceToken != -1)
    {
      dispatch_once(&AVSecondScreenDebugHUDEnabled_onceToken, &__block_literal_global_131);
    }

    if (AVSecondScreenDebugHUDEnabled__Enabled == 1)
    {
      v3 = objc_alloc_init(AVSecondScreenDebugAssistant);
      debugAssistant = self->_debugAssistant;
      self->_debugAssistant = v3;

      v5 = [(AVSecondScreenConnection *)self player];

      if (v5)
      {
        v6 = self->_debugAssistant;
        v7 = [(AVSecondScreenConnection *)self player];
      }

      else
      {
        v8 = [(AVSecondScreenConnection *)self debugInfoPlayer];

        if (!v8)
        {
LABEL_10:
          v10 = self->_debugAssistant;
          v11 = [(AVSecondScreenConnection *)self secondScreenViewController];
          [(AVSecondScreenDebugAssistant *)v10 setSecondScreenViewController:v11];

          goto LABEL_11;
        }

        v6 = self->_debugAssistant;
        v7 = [(AVSecondScreenConnection *)self debugInfoPlayer];
      }

      v9 = v7;
      [(AVSecondScreenDebugAssistant *)v6 setPlayer:v7];

      goto LABEL_10;
    }
  }

LABEL_11:
  v12 = self->_debugAssistant;

  return v12;
}

- (UIViewController)contentViewController
{
  [(AVSecondScreenConnection *)self _loadSecondScreenViewControllerIfNeeded];

  return [(AVSecondScreenConnection *)self secondScreenViewController];
}

- (void)dealloc
{
  v9 = *MEMORY[0x1E69E9840];
  [(AVObservationController *)self->_observationController stopAllObservation];
  v3 = _AVLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v6 = "[AVSecondScreenConnection dealloc]";
    v7 = 1024;
    v8 = 77;
    _os_log_impl(&dword_18B49C000, v3, OS_LOG_TYPE_DEFAULT, "%s %d", buf, 0x12u);
  }

  v4.receiver = self;
  v4.super_class = AVSecondScreenConnection;
  [(AVSecondScreenConnection *)&v4 dealloc];
}

- (AVSecondScreenConnection)initWithPlayer:(id)a3 playerLayer:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(AVSecondScreenConnection *)self init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_player, a3);
    objc_storeWeak(&v10->_playerLayer, v8);
    v10->_requiresTVOutScreen = 1;
    v10->_readyToConnect = [(AVSecondScreenConnection *)v10 _determineIsReadyToConnect];
    v11 = [(AVSecondScreenConnection *)v10 player];
    v10->_playing = [v11 timeControlStatus] == 2;
  }

  return v10;
}

@end