@interface AVSecondScreenConnection
- (AVPlayerLayer)playerLayer;
- (AVSecondScreen)connectedSecondScreen;
- (AVSecondScreenConnection)initWithPlayer:(id)player playerLayer:(id)layer;
- (AVSecondScreenDebugAssistant)debugAssistant;
- (BOOL)_allowsNonAirPlayExternalPlayback;
- (BOOL)_currentItemIsReadyToPlayVideoOrLoadingWhileActive;
- (BOOL)_determineIsReadyToConnect;
- (CGSize)maximumVideoResolution;
- (CGSize)videoDisplaySize;
- (UIViewController)contentViewController;
- (double)videoDisplayScale;
- (void)_loadSecondScreenViewControllerIfNeeded;
- (void)_postNotification:(id)notification oldValue:(id)value newValue:(id)newValue;
- (void)_startObservingPlayer;
- (void)_updatePreferredDisplayCriteria;
- (void)_updatePreferredDisplayCriteriaFromPreparedAssetIfNeeded:(id)needed;
- (void)_updateReadyToConnect;
- (void)connectWithScreen:(id)screen active:(BOOL)active;
- (void)dealloc;
- (void)setActive:(BOOL)active;
- (void)setPlayerLayer:(id)layer;
- (void)setPlaying:(BOOL)playing;
- (void)setPreferredDisplayCriteria:(id)criteria;
- (void)setReadyToConnect:(BOOL)connect;
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
  player = [(AVSecondScreenConnection *)self player];
  currentItem = [player currentItem];

  if (!currentItem)
  {
    goto LABEL_6;
  }

  status = [currentItem status];
  if (status == 2)
  {
    goto LABEL_6;
  }

  if (status == 1)
  {
    if (![(AVSecondScreenConnection *)self isActive])
    {
      if (([currentItem hasVideo] & 1) == 0)
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
  preferredDisplayCriteria = [(AVSecondScreenConnection *)self preferredDisplayCriteria];
  v6 = preferredDisplayCriteria != 0;

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
  player = [(AVSecondScreenConnection *)self player];
  v4 = player == 0;

  player2 = [(AVSecondScreenConnection *)self player];
  v6 = player2;
  if (player2)
  {
    if ([player2 allowsExternalPlayback] && objc_msgSend(v6, "usesExternalPlaybackWhileExternalScreenIsActive"))
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
  player = [(AVSecondScreenConnection *)self player];
  if (!player)
  {
    contentView = [(AVSecondScreenConnection *)self contentView];
    if (contentView)
    {
      v5 = 1;
      goto LABEL_10;
    }
  }

  player2 = [(AVSecondScreenConnection *)self player];
  v5 = player2 && [(AVSecondScreenConnection *)self _allowsNonAirPlayExternalPlayback]&& [(AVSecondScreenConnection *)self _currentItemIsReadyToPlayVideoOrLoadingWhileActive];

  if (!player)
  {
    contentView = 0;
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
  _determineIsReadyToConnect = [(AVSecondScreenConnection *)self _determineIsReadyToConnect];

  [(AVSecondScreenConnection *)self setReadyToConnect:_determineIsReadyToConnect];
}

- (void)_updatePreferredDisplayCriteriaFromPreparedAssetIfNeeded:(id)needed
{
  neededCopy = needed;
  player = [(AVSecondScreenConnection *)self player];

  v5 = neededCopy;
  if (player)
  {
    if ([neededCopy statusOfValueForKey:@"preferredDisplayCriteria" error:0] != 2 || (objc_msgSend(neededCopy, "preferredDisplayCriteria"), (v6 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v6 = [objc_alloc(MEMORY[0x1E6987F88]) initWithRefreshRate:0 videoDynamicRange:0.0];
    }

    player2 = [(AVSecondScreenConnection *)self player];
    currentItem = [player2 currentItem];
    asset = [currentItem asset];
    v10 = [neededCopy isEqual:asset];

    if (v10)
    {
      [(AVSecondScreenConnection *)self setPreferredDisplayCriteria:v6];
    }

    v5 = neededCopy;
  }
}

- (void)_updatePreferredDisplayCriteria
{
  v9[2] = *MEMORY[0x1E69E9840];
  player = [(AVSecondScreenConnection *)self player];
  currentItem = [player currentItem];
  asset = [currentItem asset];

  if (asset)
  {
    v9[0] = @"availableVideoDynamicRanges";
    v9[1] = @"preferredDisplayCriteria";
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:2];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __59__AVSecondScreenConnection__updatePreferredDisplayCriteria__block_invoke;
    v7[3] = &unk_1E7209FB0;
    v7[4] = self;
    v8 = asset;
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
  player = [(AVSecondScreenConnection *)self player];

  if (player)
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
    observationController = [(AVSecondScreenConnection *)self observationController];
    player2 = [(AVSecondScreenConnection *)self player];
    v9 = [observationController startObserving:player2 keyPaths:v6 observationHandler:&__block_literal_global_26894];

    observationController2 = [(AVSecondScreenConnection *)self observationController];
    player3 = [(AVSecondScreenConnection *)self player];
    v12 = [observationController2 startObserving:player3 keyPath:@"timeControlStatus" observationHandler:&__block_literal_global_45_26896];

    observationController3 = [(AVSecondScreenConnection *)self observationController];
    player4 = [(AVSecondScreenConnection *)self player];
    v15 = [observationController3 startObserving:player4 keyPath:@"currentItem.asset" observationHandler:&__block_literal_global_50_26898];

    [(AVSecondScreenConnection *)self _updatePreferredDisplayCriteria];
  }
}

void __49__AVSecondScreenConnection__startObservingPlayer__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 player];
  [v2 setPlaying:{objc_msgSend(v3, "timeControlStatus") == 2}];
}

- (void)_postNotification:(id)notification oldValue:(id)value newValue:(id)newValue
{
  v19 = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  valueCopy = value;
  newValueCopy = newValue;
  v11 = _AVLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412802;
    v14 = notificationCopy;
    v15 = 2112;
    v16 = valueCopy;
    v17 = 2112;
    v18 = newValueCopy;
    _os_log_impl(&dword_18B49C000, v11, OS_LOG_TYPE_DEFAULT, "%@: %@ -> %@", &v13, 0x20u);
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:notificationCopy object:self];
}

- (void)_loadSecondScreenViewControllerIfNeeded
{
  secondScreenViewController = [(AVSecondScreenConnection *)self secondScreenViewController];

  if (!secondScreenViewController)
  {
    v4 = objc_alloc_init(AVSecondScreenViewController);
    [(AVSecondScreenConnection *)self setSecondScreenViewController:v4];

    secondScreenViewController2 = [(AVSecondScreenConnection *)self secondScreenViewController];
    connectedSecondScreen = [(AVSecondScreenConnection *)self connectedSecondScreen];
    [connectedSecondScreen sceneBounds];
    [secondScreenViewController2 setInitialScreenBoundsHint:?];
  }
}

- (double)videoDisplayScale
{
  if (![(AVSecondScreenConnection *)self isActive])
  {
    return 0.0;
  }

  secondScreenViewController = [(AVSecondScreenConnection *)self secondScreenViewController];
  traitCollection = [secondScreenViewController traitCollection];
  [traitCollection displayScale];
  v6 = v5;

  return v6;
}

- (CGSize)videoDisplaySize
{
  if ([(AVSecondScreenConnection *)self isActive])
  {
    secondScreenViewController = [(AVSecondScreenConnection *)self secondScreenViewController];
    [secondScreenViewController videoDisplaySize];
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

- (void)connectWithScreen:(id)screen active:(BOOL)active
{
  if (screen)
  {
    activeCopy = active;
    [(AVSecondScreenConnection *)self setConnectedSecondScreen:?];

    [(AVSecondScreenConnection *)self setActive:activeCopy];
  }

  else
  {
    [(AVSecondScreenConnection *)self setActive:0, active];

    [(AVSecondScreenConnection *)self setConnectedSecondScreen:0];
  }
}

- (void)setPlaying:(BOOL)playing
{
  if (self->_playing != playing)
  {
    playingCopy = playing;
    self->_playing = playing;
    v7 = [MEMORY[0x1E696AD98] numberWithInt:!playing];
    v6 = [MEMORY[0x1E696AD98] numberWithBool:playingCopy];
    [(AVSecondScreenConnection *)self _postNotification:@"AVSecondScreenConnectionPlayingDidChangeNotification" oldValue:v7 newValue:v6];
  }
}

- (void)setActive:(BOOL)active
{
  if (self->_active != active)
  {
    activeCopy = active;
    self->_active = active;
    v5 = [MEMORY[0x1E696AD98] numberWithInt:!active];
    v6 = [MEMORY[0x1E696AD98] numberWithBool:activeCopy];
    [(AVSecondScreenConnection *)self _postNotification:@"AVSecondScreenConnectionActiveDidChangeNotification" oldValue:v5 newValue:v6];

    [(AVSecondScreenConnection *)self _updateReadyToConnect];
    if ([(AVSecondScreenConnection *)self isActive])
    {
      [(AVSecondScreenConnection *)self _loadSecondScreenViewControllerIfNeeded];
      secondScreenViewController = [(AVSecondScreenConnection *)self secondScreenViewController];
      contentView = [(AVSecondScreenConnection *)self contentView];
      [secondScreenViewController setContentView:contentView];

      secondScreenViewController2 = [(AVSecondScreenConnection *)self secondScreenViewController];
      playerLayer = [(AVSecondScreenConnection *)self playerLayer];
      [secondScreenViewController2 setSourcePlayerLayer:playerLayer];

      debugAssistant = [(AVSecondScreenConnection *)self debugAssistant];
      secondScreenViewController3 = [(AVSecondScreenConnection *)self secondScreenViewController];
      [debugAssistant setSecondScreenViewController:secondScreenViewController3];

      secondScreenViewController4 = [(AVSecondScreenConnection *)self secondScreenViewController];
      [secondScreenViewController4 setPlayingOnSecondScreen:1];
    }

    else
    {
      debugAssistant2 = [(AVSecondScreenConnection *)self debugAssistant];
      [debugAssistant2 setSecondScreenViewController:0];

      secondScreenViewController5 = [(AVSecondScreenConnection *)self secondScreenViewController];
      [secondScreenViewController5 setPlayingOnSecondScreen:0];

      secondScreenViewController6 = [(AVSecondScreenConnection *)self secondScreenViewController];
      [secondScreenViewController6 setSourcePlayerLayer:0];

      secondScreenViewController7 = [(AVSecondScreenConnection *)self secondScreenViewController];
      [secondScreenViewController7 setContentView:0];

      [(AVSecondScreenConnection *)self setSecondScreenViewController:0];
    }
  }
}

- (void)setReadyToConnect:(BOOL)connect
{
  if (self->_readyToConnect != connect)
  {
    connectCopy = connect;
    self->_readyToConnect = connect;
    v7 = [MEMORY[0x1E696AD98] numberWithInt:!connect];
    v6 = [MEMORY[0x1E696AD98] numberWithBool:connectCopy];
    [(AVSecondScreenConnection *)self _postNotification:@"AVSecondScreenConnectionReadyDidChangeNotification" oldValue:v7 newValue:v6];
  }
}

- (void)setPreferredDisplayCriteria:(id)criteria
{
  criteriaCopy = criteria;
  _updateReadyToConnect = [(AVDisplayCriteria *)self->_preferredDisplayCriteria isEqual:criteriaCopy];
  v5 = criteriaCopy;
  if ((_updateReadyToConnect & 1) == 0)
  {
    preferredDisplayCriteria = self->_preferredDisplayCriteria;
    if (preferredDisplayCriteria != criteriaCopy)
    {
      v7 = criteriaCopy;
      v8 = self->_preferredDisplayCriteria;
      self->_preferredDisplayCriteria = v7;
      v9 = preferredDisplayCriteria;

      [(AVSecondScreenConnection *)self _postNotification:@"AVSecondScreenConnectionPreferredDisplayCriteriaDidChangeNotification" oldValue:v9 newValue:v7];
      _updateReadyToConnect = [(AVSecondScreenConnection *)self _updateReadyToConnect];
      v5 = criteriaCopy;
    }
  }

  MEMORY[0x1EEE66BB8](_updateReadyToConnect, v5);
}

- (void)setPlayerLayer:(id)layer
{
  v15 = *MEMORY[0x1E69E9840];
  layerCopy = layer;
  WeakRetained = objc_loadWeakRetained(&self->_playerLayer);

  if (WeakRetained != layerCopy)
  {
    v6 = objc_loadWeakRetained(&self->_playerLayer);
    objc_storeWeak(&self->_playerLayer, layerCopy);
    secondScreenViewController = [(AVSecondScreenConnection *)self secondScreenViewController];
    [secondScreenViewController setSourcePlayerLayer:layerCopy];

    v8 = _AVLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315650;
      v10 = "[AVSecondScreenConnection setPlayerLayer:]";
      v11 = 2112;
      v12 = v6;
      v13 = 2112;
      v14 = layerCopy;
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

      player = [(AVSecondScreenConnection *)self player];

      if (player)
      {
        v6 = self->_debugAssistant;
        player2 = [(AVSecondScreenConnection *)self player];
      }

      else
      {
        debugInfoPlayer = [(AVSecondScreenConnection *)self debugInfoPlayer];

        if (!debugInfoPlayer)
        {
LABEL_10:
          v10 = self->_debugAssistant;
          secondScreenViewController = [(AVSecondScreenConnection *)self secondScreenViewController];
          [(AVSecondScreenDebugAssistant *)v10 setSecondScreenViewController:secondScreenViewController];

          goto LABEL_11;
        }

        v6 = self->_debugAssistant;
        player2 = [(AVSecondScreenConnection *)self debugInfoPlayer];
      }

      v9 = player2;
      [(AVSecondScreenDebugAssistant *)v6 setPlayer:player2];

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

- (AVSecondScreenConnection)initWithPlayer:(id)player playerLayer:(id)layer
{
  playerCopy = player;
  layerCopy = layer;
  v9 = [(AVSecondScreenConnection *)self init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_player, player);
    objc_storeWeak(&v10->_playerLayer, layerCopy);
    v10->_requiresTVOutScreen = 1;
    v10->_readyToConnect = [(AVSecondScreenConnection *)v10 _determineIsReadyToConnect];
    player = [(AVSecondScreenConnection *)v10 player];
    v10->_playing = [player timeControlStatus] == 2;
  }

  return v10;
}

@end