@interface VMPlayerController
- (BOOL)shouldEnableProximityMonitoring;
- (BOOL)updateProximityMonitoring;
- (VMPlayerController)initWithPlayer:(id)player;
- (VMPlayerController)initWithPlayerItem:(id)item;
- (VMPlayerController)initWithURL:(id)l;
- (VMPlayerControllerDelegate)delegate;
- (double)duration;
- (float)currentTime;
- (id)_audioSessionSerialQueue;
- (id)description;
- (void)activateAudioSessionIfNeededWithCompletion:(id)completion;
- (void)deactivateAudioSession;
- (void)dealloc;
- (void)handleAudioSessionInterruptionNotification:(id)notification;
- (void)handleAudioSessionMediaServicesWereLostNotification:(id)notification;
- (void)handleAudioSessionMediaServicesWereResetNotification:(id)notification;
- (void)handleAudioSessionRouteChangeNotification:(id)notification;
- (void)handleDeviceProximityStateDidChangeNotificationNotification:(id)notification;
- (void)handlePlayerItemDidPlayToEndTimeNotification:(id)notification;
- (void)handlePlayerItemFailedToPlayToEndTimeNotification:(id)notification;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)pause;
- (void)play;
- (void)playURL:(id)l;
- (void)seekToTime:(float)time;
- (void)setPlayerItem:(id)item;
- (void)setRate:(float)rate;
- (void)setStatus:(int64_t)status;
- (void)setTimeControlStatus:(int64_t)status;
- (void)setURL:(id)l;
- (void)stop;
- (void)updateAudioSessionNotifications;
@end

@implementation VMPlayerController

- (VMPlayerController)initWithURL:(id)l
{
  lCopy = l;
  v6 = [AVPlayerItem playerItemWithURL:lCopy];
  v7 = [(VMPlayerController *)self initWithPlayerItem:v6];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_URL, l);
  }

  return v8;
}

- (id)_audioSessionSerialQueue
{
  if (_audioSessionSerialQueue_onceToken != -1)
  {
    [VMPlayerController _audioSessionSerialQueue];
  }

  v3 = _audioSessionSerialQueue___VMPlayerControllerAudioSessionQueue;

  return v3;
}

void __46__VMPlayerController__audioSessionSerialQueue__block_invoke(id a1)
{
  _audioSessionSerialQueue___VMPlayerControllerAudioSessionQueue = dispatch_queue_create("VMPlayerControllerAudioSessionQueue", 0);

  _objc_release_x1();
}

- (id)description
{
  v3 = [NSMutableString stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  v4 = [(VMPlayerController *)self URL];
  [v3 appendFormat:@" url=%@", v4];

  [v3 appendFormat:@" audioSessionActive=%ld", -[VMPlayerController isAudioSessionActive](self, "isAudioSessionActive")];
  [v3 appendFormat:@" status=%ld", -[VMPlayerController status](self, "status")];
  [v3 appendFormat:@" timeControlStatus=%ld", -[VMPlayerController timeControlStatus](self, "timeControlStatus")];
  [v3 appendString:@">"];
  v5 = [v3 copy];

  return v5;
}

- (VMPlayerController)initWithPlayerItem:(id)item
{
  v4 = [AVPlayer playerWithPlayerItem:item];
  [v4 setActionAtItemEnd:1];
  [v4 setAllowsExternalPlayback:0];
  v5 = [(VMPlayerController *)self initWithPlayer:v4];

  return v5;
}

- (VMPlayerController)initWithPlayer:(id)player
{
  playerCopy = player;
  v26.receiver = self;
  v26.super_class = VMPlayerController;
  v6 = [(VMPlayerController *)&v26 init];
  v7 = v6;
  if (v6)
  {
    v6->_audioSessionState = 1;
    objc_storeStrong(&v6->_player, player);
    [playerCopy rate];
    v7->_rate = v8;
    v7->_status = [playerCopy status];
    v7->_timeControlStatus = [playerCopy timeControlStatus];
    objc_initWeak(&location, v7);
    player = v7->_player;
    CMTimeMake(&v24, 1, 100);
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = __37__VMPlayerController_initWithPlayer___block_invoke;
    v22[3] = &unk_100286688;
    objc_copyWeak(&v23, &location);
    v10 = [(AVPlayer *)player addPeriodicTimeObserverForInterval:&v24 queue:0 usingBlock:v22];
    v11 = v7->_player;
    v12 = NSStringFromSelector("rate");
    [(AVPlayer *)v11 addObserver:v7 forKeyPath:v12 options:0 context:&VMPlayerControllerKeyValueObserverContext];

    v13 = v7->_player;
    v14 = NSStringFromSelector("status");
    [(AVPlayer *)v13 addObserver:v7 forKeyPath:v14 options:0 context:&VMPlayerControllerKeyValueObserverContext];

    v15 = v7->_player;
    v16 = NSStringFromSelector("timeControlStatus");
    [(AVPlayer *)v15 addObserver:v7 forKeyPath:v16 options:0 context:&VMPlayerControllerKeyValueObserverContext];

    currentItem = [(AVPlayer *)v7->_player currentItem];

    if (currentItem)
    {
      currentItem2 = [(AVPlayer *)v7->_player currentItem];
      v19 = NSStringFromSelector("duration");
      [currentItem2 addObserver:v7 forKeyPath:v19 options:0 context:&VMPlayerControllerKeyValueObserverContext];
    }

    v20 = +[NSNotificationCenter defaultCenter];
    [v20 addObserver:v7 selector:"handlePlayerItemDidPlayToEndTimeNotification:" name:AVPlayerItemDidPlayToEndTimeNotification object:0];
    [v20 addObserver:v7 selector:"handlePlayerItemFailedToPlayToEndTimeNotification:" name:AVPlayerItemFailedToPlayToEndTimeNotification object:0];
    [v20 addObserver:v7 selector:"handleAudioSessionMediaServicesWereResetNotification:" name:AVSystemController_ServerConnectionDiedNotification object:0];

    objc_destroyWeak(&v23);
    objc_destroyWeak(&location);
  }

  return v7;
}

void __37__VMPlayerController_initWithPlayer___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v2 = [WeakRetained delegate];
    v3 = objc_opt_respondsToSelector();

    WeakRetained = v5;
    if (v3)
    {
      v4 = [v5 delegate];
      [v5 currentTime];
      [v4 playerController:v5 didChangeToCurrentTime:?];

      WeakRetained = v5;
    }
  }
}

- (void)dealloc
{
  player = self->_player;
  v4 = NSStringFromSelector("rate");
  [(AVPlayer *)player removeObserver:self forKeyPath:v4 context:&VMPlayerControllerKeyValueObserverContext];

  v5 = self->_player;
  v6 = NSStringFromSelector("status");
  [(AVPlayer *)v5 removeObserver:self forKeyPath:v6 context:&VMPlayerControllerKeyValueObserverContext];

  v7 = self->_player;
  v8 = NSStringFromSelector("timeControlStatus");
  [(AVPlayer *)v7 removeObserver:self forKeyPath:v8 context:&VMPlayerControllerKeyValueObserverContext];

  currentItem = [(AVPlayer *)self->_player currentItem];
  v10 = NSStringFromSelector("duration");
  [currentItem removeObserver:self forKeyPath:v10 context:&VMPlayerControllerKeyValueObserverContext];

  v11 = +[NSNotificationCenter defaultCenter];
  [v11 removeObserver:self];

  v12.receiver = self;
  v12.super_class = VMPlayerController;
  [(VMPlayerController *)&v12 dealloc];
}

- (void)setURL:(id)l
{
  lCopy = l;
  if (self->_URL != lCopy)
  {
    v7 = lCopy;
    objc_storeStrong(&self->_URL, l);
    if (self->_URL)
    {
      v6 = [[AVPlayerItem alloc] initWithURL:v7];
    }

    else
    {
      v6 = 0;
    }

    [(VMPlayerController *)self setPlayerItem:v6];

    lCopy = v7;
  }
}

- (void)setPlayerItem:(id)item
{
  itemCopy = item;
  player = [(VMPlayerController *)self player];
  currentItem = [player currentItem];

  if (currentItem != itemCopy)
  {
    player2 = [(VMPlayerController *)self player];
    currentItem2 = [player2 currentItem];

    if (currentItem2)
    {
      v8 = NSStringFromSelector("duration");
      [currentItem2 removeObserver:self forKeyPath:v8 context:&VMPlayerControllerKeyValueObserverContext];
    }

    player3 = [(VMPlayerController *)self player];
    [player3 replaceCurrentItemWithPlayerItem:itemCopy];

    player4 = [(VMPlayerController *)self player];
    currentItem3 = [player4 currentItem];

    if (currentItem3)
    {
      v12 = NSStringFromSelector("duration");
      [currentItem3 addObserver:self forKeyPath:v12 options:0 context:&VMPlayerControllerKeyValueObserverContext];
    }
  }
}

- (float)currentTime
{
  memset(&v6, 0, sizeof(v6));
  player = [(VMPlayerController *)self player];
  v3 = player;
  if (player)
  {
    [player currentTime];
  }

  else
  {
    memset(&v6, 0, sizeof(v6));
  }

  v5 = v6;
  return CMTimeGetSeconds(&v5);
}

- (double)duration
{
  v7 = kCMTimeIndefinite;
  player = [(VMPlayerController *)self player];
  currentItem = [player currentItem];

  if (currentItem)
  {
    [currentItem duration];
  }

  v6 = v7;
  Seconds = CMTimeGetSeconds(&v6);

  return Seconds;
}

- (void)pause
{
  v3 = vm_ui_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(VMPlayerController *)self URL];
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Pause requested for item at %@", &v6, 0xCu);
  }

  player = [(VMPlayerController *)self player];
  [player pause];
}

- (void)play
{
  v3 = vm_ui_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(VMPlayerController *)self URL];
    *buf = 138412290;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Play requested for item at %@", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = __26__VMPlayerController_play__block_invoke;
  v6[3] = &unk_1002857A8;
  objc_copyWeak(&v7, buf);
  v5 = objc_retainBlock(v6);
  [(VMPlayerController *)self activateAudioSessionIfNeededWithCompletion:v5];

  objc_destroyWeak(&v7);
  objc_destroyWeak(buf);
}

uint64_t __26__VMPlayerController_play__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    if ([WeakRetained isAudioSessionActive])
    {
      v2 = [v4 player];
      [v2 play];
    }
  }

  return _objc_release_x1();
}

- (void)playURL:(id)l
{
  [(VMPlayerController *)self setURL:l];

  [(VMPlayerController *)self play];
}

- (void)stop
{
  v3 = vm_ui_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(VMPlayerController *)self URL];
    v5 = 138412290;
    v6 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Stop requested for item at %@", &v5, 0xCu);
  }

  [(VMPlayerController *)self pause];
  [(VMPlayerController *)self seekToTime:0.0];
  if ([(VMPlayerController *)self isAudioSessionActive])
  {
    [(VMPlayerController *)self deactivateAudioSession];
  }
}

- (void)seekToTime:(float)time
{
  delegate = [(VMPlayerController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(VMPlayerController *)self delegate];
    *&v8 = time;
    [delegate2 playerController:self willSeekToTime:v8];
  }

  memset(&v15, 0, sizeof(v15));
  CMTimeMakeWithSeconds(&v15, time, 1);
  player = [(VMPlayerController *)self player];
  v14 = v15;
  [player seekToTime:&v14];

  delegate3 = [(VMPlayerController *)self delegate];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    delegate4 = [(VMPlayerController *)self delegate];
    *&v13 = time;
    [delegate4 playerController:self didSeekToTime:v13];
  }
}

- (void)setRate:(float)rate
{
  if (self->_rate != rate)
  {
    delegate = [(VMPlayerController *)self delegate];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      delegate2 = [(VMPlayerController *)self delegate];
      *&v8 = rate;
      [delegate2 playerController:self willChangeToRate:v8];
    }

    self->_rate = rate;
    delegate3 = [(VMPlayerController *)self delegate];
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      delegate4 = [(VMPlayerController *)self delegate];
      *&v11 = rate;
      [delegate4 playerController:self didChangeToRate:v11];
    }
  }
}

- (void)setStatus:(int64_t)status
{
  if (self->_status != status)
  {
    delegate = [(VMPlayerController *)self delegate];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      delegate2 = [(VMPlayerController *)self delegate];
      [delegate2 playerController:self willChangeToStatus:status];
    }

    self->_status = status;
    delegate3 = [(VMPlayerController *)self delegate];
    v9 = objc_opt_respondsToSelector();

    if (v9)
    {
      delegate4 = [(VMPlayerController *)self delegate];
      [delegate4 playerController:self didChangeToStatus:status];
    }
  }
}

- (void)setTimeControlStatus:(int64_t)status
{
  if (self->_timeControlStatus != status)
  {
    delegate = [(VMPlayerController *)self delegate];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      delegate2 = [(VMPlayerController *)self delegate];
      [delegate2 playerController:self willChangeToTimeControlStatus:status];
    }

    self->_timeControlStatus = status;
    delegate3 = [(VMPlayerController *)self delegate];
    v9 = objc_opt_respondsToSelector();

    if (v9)
    {
      delegate4 = [(VMPlayerController *)self delegate];
      [delegate4 playerController:self didChangeToTimeControlStatus:status];
    }
  }
}

- (void)updateAudioSessionNotifications
{
  v3 = +[NSNotificationCenter defaultCenter];
  audioSessionState = [(VMPlayerController *)self audioSessionState];
  switch(audioSessionState)
  {
    case 2u:
      v5 = vm_ui_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        [VMPlayerController updateAudioSessionNotifications];
      }

      break;
    case 1u:
      [v3 removeObserver:self name:AVAudioSessionInterruptionNotification object:0];
      [v3 removeObserver:self name:AVAudioSessionRouteChangeNotification object:0];
      [v3 removeObserver:self name:AVAudioSessionMediaServicesWereLostNotification object:0];
      [v3 removeObserver:self name:AVAudioSessionMediaServicesWereResetNotification object:0];
      break;
    case 0u:
      [v3 addObserver:self selector:"handleAudioSessionInterruptionNotification:" name:AVAudioSessionInterruptionNotification object:0];
      [v3 addObserver:self selector:"handleAudioSessionRouteChangeNotification:" name:AVAudioSessionRouteChangeNotification object:0];
      [v3 addObserver:self selector:"handleAudioSessionMediaServicesWereLostNotification:" name:AVAudioSessionMediaServicesWereLostNotification object:0];
      [v3 addObserver:self selector:"handleAudioSessionMediaServicesWereResetNotification:" name:AVAudioSessionMediaServicesWereResetNotification object:0];
      break;
  }
}

- (void)activateAudioSessionIfNeededWithCompletion:(id)completion
{
  completionCopy = completion;
  if (![(VMPlayerController *)self isAudioSessionActive])
  {
    v5 = vm_ui_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      selfCopy2 = self;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ is activating an audio session.", buf, 0xCu);
    }

    if ([(VMPlayerController *)self audioSessionState]== 2)
    {
      v6 = vm_ui_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        selfCopy2 = self;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@ waiting for audio session to finish deactivating before activating new one", buf, 0xCu);
      }

      _audioSessionSerialQueue = [(VMPlayerController *)self _audioSessionSerialQueue];
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = __65__VMPlayerController_activateAudioSessionIfNeededWithCompletion___block_invoke;
      v9[3] = &unk_100285440;
      v9[4] = self;
      v10 = completionCopy;
      dispatch_async(_audioSessionSerialQueue, v9);

      goto LABEL_11;
    }

    v8 = +[AVAudioSession sharedInstance];
    -[VMPlayerController setAudioSessionState:](self, "setAudioSessionState:", [v8 activateVoicemailAudioSession] ^ 1);

    [(VMPlayerController *)self updateAudioSessionNotifications];
    [(VMPlayerController *)self updateProximityMonitoring];
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }

LABEL_11:
}

void __65__VMPlayerController_activateAudioSessionIfNeededWithCompletion___block_invoke(uint64_t a1)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = __65__VMPlayerController_activateAudioSessionIfNeededWithCompletion___block_invoke_2;
  v2[3] = &unk_100285440;
  v1 = *(a1 + 40);
  v2[4] = *(a1 + 32);
  v3 = v1;
  dispatch_async(&_dispatch_main_q, v2);
}

- (void)deactivateAudioSession
{
  if ([(VMPlayerController *)self isAudioSessionActive])
  {
    v3 = vm_ui_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      selfCopy = self;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%@ is deactivating an audio session.", buf, 0xCu);
    }

    [(VMPlayerController *)self setAudioSessionState:2];
    objc_initWeak(buf, self);
    _audioSessionSerialQueue = [(VMPlayerController *)self _audioSessionSerialQueue];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = __44__VMPlayerController_deactivateAudioSession__block_invoke;
    v5[3] = &unk_100285170;
    objc_copyWeak(&v6, buf);
    v5[4] = self;
    dispatch_async(_audioSessionSerialQueue, v5);

    objc_destroyWeak(&v6);
    objc_destroyWeak(buf);
  }
}

void __44__VMPlayerController_deactivateAudioSession__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));

  if (WeakRetained)
  {
    v3 = *(a1 + 32);
    v4 = +[AVAudioSession sharedInstance];
    v5 = v4;
    if (v4)
    {
      -[NSObject setAudioSessionState:](v3, "setAudioSessionState:", [v4 deactivateVoicemailAudioSession]);
      [v3 updateAudioSessionNotifications];
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = __44__VMPlayerController_deactivateAudioSession__block_invoke_123;
      v7[3] = &unk_100285170;
      objc_copyWeak(&v8, (a1 + 40));
      v7[4] = *(a1 + 32);
      dispatch_sync(&_dispatch_main_q, v7);
      objc_destroyWeak(&v8);
    }

    else
    {
      v6 = PHDefaultLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        __44__VMPlayerController_deactivateAudioSession__block_invoke_cold_1();
      }
    }
  }

  else
  {
    v3 = PHDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __44__VMPlayerController_deactivateAudioSession__block_invoke_cold_2();
    }
  }
}

void __44__VMPlayerController_deactivateAudioSession__block_invoke_123(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));

  if (WeakRetained)
  {
    v3 = *(a1 + 32);

    [v3 updateProximityMonitoring];
  }

  else
  {
    v4 = PHDefaultLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __44__VMPlayerController_deactivateAudioSession__block_invoke_123_cold_1();
    }
  }
}

- (BOOL)shouldEnableProximityMonitoring
{
  if (![(VMPlayerController *)self isAudioSessionActive])
  {
    return 0;
  }

  v2 = +[AVAudioSession sharedInstance];
  currentRoute = [v2 currentRoute];
  outputs = [currentRoute outputs];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = outputs;
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        portType = [v10 portType];
        v12 = [portType isEqualToString:AVAudioSessionPortBuiltInReceiver];

        if ((v12 & 1) == 0)
        {
          portType2 = [v10 portType];
          v14 = [portType2 isEqualToString:AVAudioSessionPortBuiltInSpeaker];

          if (!v14 || !UIAccessibilityIsVoiceOverRunning())
          {
            continue;
          }
        }

        v15 = 1;
        goto LABEL_15;
      }

      v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v15 = 0;
LABEL_15:

  return v15;
}

- (BOOL)updateProximityMonitoring
{
  shouldEnableProximityMonitoring = [(VMPlayerController *)self shouldEnableProximityMonitoring];
  v4 = +[UIDevice currentDevice];
  if (shouldEnableProximityMonitoring != [v4 isProximityMonitoringEnabled])
  {
    [v4 setProximityMonitoringEnabled:shouldEnableProximityMonitoring];
    v5 = +[NSNotificationCenter defaultCenter];
    v6 = v5;
    if (shouldEnableProximityMonitoring)
    {
      [v5 addObserver:self selector:"handleDeviceProximityStateDidChangeNotificationNotification:" name:UIDeviceProximityStateDidChangeNotification object:v4];
    }

    else
    {
      [v5 removeObserver:self name:UIDeviceProximityStateDidChangeNotification object:v4];
    }
  }

  isProximityMonitoringEnabled = [v4 isProximityMonitoringEnabled];

  return isProximityMonitoringEnabled;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  v12 = changeCopy;
  if (context == &VMPlayerControllerKeyValueObserverContext)
  {
    if (changeCopy)
    {
      v13 = [changeCopy objectForKeyedSubscript:NSKeyValueChangeNotificationIsPriorKey];
      objc_opt_class();
      v14 = (objc_opt_isKindOfClass() & 1) != 0 ? [&__kCFBooleanTrue isEqualToNumber:v13] : 0;
    }

    else
    {
      v14 = 0;
    }

    if (pathCopy)
    {
      v15 = [pathCopy length];
      if (objectCopy)
      {
        if (v15)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v16 = objectCopy;
            player = [(VMPlayerController *)self player];
            v18 = [v16 isEqual:player];

            if (v18)
            {
              v19 = NSStringFromSelector("rate");
              v20 = [pathCopy isEqualToString:v19];

              if (v20)
              {
                if ((v14 & 1) == 0)
                {
                  [v16 rate];
                  [(VMPlayerController *)self setRate:?];
                }
              }

              else
              {
                v29 = NSStringFromSelector("status");
                v30 = [pathCopy isEqualToString:v29];

                if (v30)
                {
                  if ((v14 & 1) == 0)
                  {
                    -[VMPlayerController setStatus:](self, "setStatus:", [v16 status]);
                  }
                }

                else
                {
                  v31 = NSStringFromSelector("timeControlStatus");
                  v32 = [pathCopy isEqualToString:v31];

                  if (!(v14 & 1 | ((v32 & 1) == 0)))
                  {
                    -[VMPlayerController setTimeControlStatus:](self, "setTimeControlStatus:", [v16 timeControlStatus]);
                  }
                }
              }
            }

            goto LABEL_33;
          }

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_2;
          }

          v21 = objectCopy;
          player2 = [(VMPlayerController *)self player];
          currentItem = [player2 currentItem];
          LODWORD(v21) = [v21 isEqual:currentItem];

          if (!v21)
          {
            goto LABEL_33;
          }

          v24 = NSStringFromSelector("duration");
          v25 = [pathCopy isEqualToString:v24];

          if (!v25)
          {
            goto LABEL_33;
          }

          delegate = [(VMPlayerController *)self delegate];
          if (v14)
          {
            v27 = objc_opt_respondsToSelector();

            if (v27)
            {
              delegate2 = [(VMPlayerController *)self delegate];
              [(VMPlayerController *)self duration];
              [delegate2 playerController:self willChangeToDuration:?];
LABEL_32:
            }
          }

          else
          {
            v33 = objc_opt_respondsToSelector();

            if (v33)
            {
              delegate2 = [(VMPlayerController *)self delegate];
              [(VMPlayerController *)self duration];
              [delegate2 playerController:self didChangeToDuration:?];
              goto LABEL_32;
            }
          }

LABEL_33:
        }
      }
    }
  }

LABEL_2:
}

- (void)handleAudioSessionInterruptionNotification:(id)notification
{
  notificationCopy = notification;
  v3 = notificationCopy;
  TUDispatchMainIfNecessary();
}

void __65__VMPlayerController_handleAudioSessionInterruptionNotification___block_invoke(uint64_t a1)
{
  v2 = vm_ui_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v11 = 138412546;
    v12 = v3;
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%@ is handling <%@>", &v11, 0x16u);
  }

  v5 = [*(a1 + 40) userInfo];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 objectForKeyedSubscript:AVAudioSessionInterruptionTypeKey];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [v7 unsignedIntegerValue];
      if (v8 == 1)
      {
        [*(a1 + 32) pause];
        [*(a1 + 32) deactivateAudioSession];
      }

      else if (!v8)
      {
        v9 = [v6 objectForKeyedSubscript:AVAudioSessionInterruptionOptionKey];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = [v9 unsignedIntegerValue];

          if (v10 == 1)
          {
            [*(a1 + 32) play];
          }
        }

        else
        {
        }
      }
    }
  }
}

- (void)handleAudioSessionRouteChangeNotification:(id)notification
{
  notificationCopy = notification;
  v3 = notificationCopy;
  TUDispatchMainIfNecessary();
}

void __64__VMPlayerController_handleAudioSessionRouteChangeNotification___block_invoke(uint64_t a1)
{
  v2 = vm_ui_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v8 = 138412546;
    v9 = v3;
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%@ is handling <%@>", &v8, 0x16u);
  }

  v5 = [*(a1 + 40) userInfo];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 objectForKeyedSubscript:AVAudioSessionRouteChangeReasonKey];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v7 unsignedIntegerValue] - 1 <= 3)
    {
      [*(a1 + 32) updateProximityMonitoring];
    }
  }
}

- (void)handleAudioSessionMediaServicesWereLostNotification:(id)notification
{
  notificationCopy = notification;
  v3 = notificationCopy;
  TUDispatchMainIfNecessary();
}

id __74__VMPlayerController_handleAudioSessionMediaServicesWereLostNotification___block_invoke(uint64_t a1)
{
  v2 = vm_ui_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v6 = 138412546;
    v7 = v3;
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%@ is handling <%@>", &v6, 0x16u);
  }

  return [*(a1 + 32) stop];
}

- (void)handleAudioSessionMediaServicesWereResetNotification:(id)notification
{
  notificationCopy = notification;
  v3 = notificationCopy;
  TUDispatchMainIfNecessary();
}

void __75__VMPlayerController_handleAudioSessionMediaServicesWereResetNotification___block_invoke(uint64_t a1)
{
  v2 = vm_ui_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v8 = 138412546;
    v9 = v3;
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%@ is handling <%@>", &v8, 0x16u);
  }

  v5 = [*(a1 + 32) delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [*(a1 + 32) delegate];
    [v7 playerControllerDidReset:*(a1 + 32)];
  }
}

- (void)handlePlayerItemDidPlayToEndTimeNotification:(id)notification
{
  notificationCopy = notification;
  v3 = notificationCopy;
  TUDispatchMainIfNecessary();
}

void __67__VMPlayerController_handlePlayerItemDidPlayToEndTimeNotification___block_invoke(uint64_t a1)
{
  v2 = vm_ui_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v8 = 138412546;
    v9 = v3;
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%@ is handling <%@>", &v8, 0x16u);
  }

  v5 = [*(a1 + 40) object];
  if (v5)
  {
    v6 = [*(a1 + 32) player];
    v7 = [v6 currentItem];

    if (v5 == v7)
    {
      [*(a1 + 32) stop];
    }
  }
}

- (void)handleDeviceProximityStateDidChangeNotificationNotification:(id)notification
{
  notificationCopy = notification;
  v3 = notificationCopy;
  TUDispatchMainIfNecessary();
}

id __82__VMPlayerController_handleDeviceProximityStateDidChangeNotificationNotification___block_invoke(uint64_t a1)
{
  v2 = vm_ui_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v8 = 138412546;
    v9 = v3;
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%@ is handling <%@>", &v8, 0x16u);
  }

  result = [*(a1 + 32) isAudioSessionActive];
  if (result)
  {
    v6 = +[UIDevice currentDevice];
    v7 = [v6 proximityState];

    result = [*(a1 + 32) timeControlStatus];
    if (result >= 2)
    {
      if (result == 2 && (v7 & 1) == 0)
      {
        return [*(a1 + 32) pause];
      }
    }

    else if (v7)
    {
      return [*(a1 + 32) play];
    }
  }

  return result;
}

- (void)handlePlayerItemFailedToPlayToEndTimeNotification:(id)notification
{
  notificationCopy = notification;
  v3 = notificationCopy;
  TUDispatchMainIfNecessary();
}

void __72__VMPlayerController_handlePlayerItemFailedToPlayToEndTimeNotification___block_invoke(uint64_t a1)
{
  v2 = vm_ui_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v13 = 138412546;
    v14 = v3;
    v15 = 2112;
    v16 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%@ is handling <%@>", &v13, 0x16u);
  }

  v5 = [*(a1 + 40) object];
  if (v5)
  {
    v6 = [*(a1 + 32) player];
    v7 = [v6 currentItem];

    if (v5 == v7)
    {
      v8 = [*(a1 + 40) userInfo];
      v9 = v8;
      if (v8)
      {
        v10 = [v8 objectForKeyedSubscript:AVPlayerItemFailedToPlayToEndTimeErrorKey];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = v10;
          if (v11)
          {
            v12 = vm_ui_log();
            if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
            {
              __72__VMPlayerController_handlePlayerItemFailedToPlayToEndTimeNotification___block_invoke_cold_1();
            }
          }
        }
      }

      [*(a1 + 32) stop];
    }
  }
}

- (VMPlayerControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end