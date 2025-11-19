@interface VMPlayerController
- (BOOL)shouldEnableProximityMonitoring;
- (BOOL)updateProximityMonitoring;
- (VMPlayerController)initWithPlayer:(id)a3;
- (VMPlayerController)initWithPlayerItem:(id)a3;
- (VMPlayerController)initWithURL:(id)a3;
- (VMPlayerControllerDelegate)delegate;
- (double)duration;
- (float)currentTime;
- (id)_audioSessionSerialQueue;
- (id)description;
- (void)activateAudioSessionIfNeededWithCompletion:(id)a3;
- (void)deactivateAudioSession;
- (void)dealloc;
- (void)handleAudioSessionInterruptionNotification:(id)a3;
- (void)handleAudioSessionMediaServicesWereLostNotification:(id)a3;
- (void)handleAudioSessionMediaServicesWereResetNotification:(id)a3;
- (void)handleAudioSessionRouteChangeNotification:(id)a3;
- (void)handleDeviceProximityStateDidChangeNotificationNotification:(id)a3;
- (void)handlePlayerItemDidPlayToEndTimeNotification:(id)a3;
- (void)handlePlayerItemFailedToPlayToEndTimeNotification:(id)a3;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)pause;
- (void)play;
- (void)playURL:(id)a3;
- (void)seekToTime:(float)a3;
- (void)setPlayerItem:(id)a3;
- (void)setRate:(float)a3;
- (void)setStatus:(int64_t)a3;
- (void)setTimeControlStatus:(int64_t)a3;
- (void)setURL:(id)a3;
- (void)stop;
- (void)updateAudioSessionNotifications;
@end

@implementation VMPlayerController

- (VMPlayerController)initWithURL:(id)a3
{
  v5 = a3;
  v6 = [AVPlayerItem playerItemWithURL:v5];
  v7 = [(VMPlayerController *)self initWithPlayerItem:v6];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_URL, a3);
  }

  return v8;
}

- (id)_audioSessionSerialQueue
{
  if (qword_10009A780 != -1)
  {
    sub_10005FF6C();
  }

  v3 = qword_10009A788;

  return v3;
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

- (VMPlayerController)initWithPlayerItem:(id)a3
{
  v4 = [AVPlayer playerWithPlayerItem:a3];
  [v4 setActionAtItemEnd:1];
  [v4 setAllowsExternalPlayback:0];
  v5 = [(VMPlayerController *)self initWithPlayer:v4];

  return v5;
}

- (VMPlayerController)initWithPlayer:(id)a3
{
  v5 = a3;
  v26.receiver = self;
  v26.super_class = VMPlayerController;
  v6 = [(VMPlayerController *)&v26 init];
  v7 = v6;
  if (v6)
  {
    v6->_audioSessionState = 1;
    objc_storeStrong(&v6->_player, a3);
    [v5 rate];
    v7->_rate = v8;
    v7->_status = [v5 status];
    v7->_timeControlStatus = [v5 timeControlStatus];
    objc_initWeak(&location, v7);
    player = v7->_player;
    CMTimeMake(&v24, 1, 100);
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_10001292C;
    v22[3] = &unk_1000899C0;
    objc_copyWeak(&v23, &location);
    v10 = [(AVPlayer *)player addPeriodicTimeObserverForInterval:&v24 queue:0 usingBlock:v22];
    v11 = v7->_player;
    v12 = NSStringFromSelector("rate");
    [(AVPlayer *)v11 addObserver:v7 forKeyPath:v12 options:0 context:&off_1000899E0];

    v13 = v7->_player;
    v14 = NSStringFromSelector("status");
    [(AVPlayer *)v13 addObserver:v7 forKeyPath:v14 options:0 context:&off_1000899E0];

    v15 = v7->_player;
    v16 = NSStringFromSelector("timeControlStatus");
    [(AVPlayer *)v15 addObserver:v7 forKeyPath:v16 options:0 context:&off_1000899E0];

    v17 = [(AVPlayer *)v7->_player currentItem];

    if (v17)
    {
      v18 = [(AVPlayer *)v7->_player currentItem];
      v19 = NSStringFromSelector("duration");
      [v18 addObserver:v7 forKeyPath:v19 options:0 context:&off_1000899E0];
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

- (void)dealloc
{
  player = self->_player;
  v4 = NSStringFromSelector("rate");
  [(AVPlayer *)player removeObserver:self forKeyPath:v4 context:&off_1000899E0];

  v5 = self->_player;
  v6 = NSStringFromSelector("status");
  [(AVPlayer *)v5 removeObserver:self forKeyPath:v6 context:&off_1000899E0];

  v7 = self->_player;
  v8 = NSStringFromSelector("timeControlStatus");
  [(AVPlayer *)v7 removeObserver:self forKeyPath:v8 context:&off_1000899E0];

  v9 = [(AVPlayer *)self->_player currentItem];
  v10 = NSStringFromSelector("duration");
  [v9 removeObserver:self forKeyPath:v10 context:&off_1000899E0];

  v11 = +[NSNotificationCenter defaultCenter];
  [v11 removeObserver:self];

  v12.receiver = self;
  v12.super_class = VMPlayerController;
  [(VMPlayerController *)&v12 dealloc];
}

- (void)setURL:(id)a3
{
  v5 = a3;
  if (self->_URL != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_URL, a3);
    if (self->_URL)
    {
      v6 = [[AVPlayerItem alloc] initWithURL:v7];
    }

    else
    {
      v6 = 0;
    }

    [(VMPlayerController *)self setPlayerItem:v6];

    v5 = v7;
  }
}

- (void)setPlayerItem:(id)a3
{
  v13 = a3;
  v4 = [(VMPlayerController *)self player];
  v5 = [v4 currentItem];

  if (v5 != v13)
  {
    v6 = [(VMPlayerController *)self player];
    v7 = [v6 currentItem];

    if (v7)
    {
      v8 = NSStringFromSelector("duration");
      [v7 removeObserver:self forKeyPath:v8 context:&off_1000899E0];
    }

    v9 = [(VMPlayerController *)self player];
    [v9 replaceCurrentItemWithPlayerItem:v13];

    v10 = [(VMPlayerController *)self player];
    v11 = [v10 currentItem];

    if (v11)
    {
      v12 = NSStringFromSelector("duration");
      [v11 addObserver:self forKeyPath:v12 options:0 context:&off_1000899E0];
    }
  }
}

- (float)currentTime
{
  memset(&v6, 0, sizeof(v6));
  v2 = [(VMPlayerController *)self player];
  v3 = v2;
  if (v2)
  {
    [v2 currentTime];
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
  v2 = [(VMPlayerController *)self player];
  v3 = [v2 currentItem];

  if (v3)
  {
    [v3 duration];
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

  v5 = [(VMPlayerController *)self player];
  [v5 pause];
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
  v6[2] = sub_100013048;
  v6[3] = &unk_100089858;
  objc_copyWeak(&v7, buf);
  v5 = objc_retainBlock(v6);
  [(VMPlayerController *)self activateAudioSessionIfNeededWithCompletion:v5];

  objc_destroyWeak(&v7);
  objc_destroyWeak(buf);
}

- (void)playURL:(id)a3
{
  [(VMPlayerController *)self setURL:a3];

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

- (void)seekToTime:(float)a3
{
  v5 = [(VMPlayerController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(VMPlayerController *)self delegate];
    *&v8 = a3;
    [v7 playerController:self willSeekToTime:v8];
  }

  memset(&v15, 0, sizeof(v15));
  CMTimeMakeWithSeconds(&v15, a3, 1);
  v9 = [(VMPlayerController *)self player];
  v14 = v15;
  [v9 seekToTime:&v14];

  v10 = [(VMPlayerController *)self delegate];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    v12 = [(VMPlayerController *)self delegate];
    *&v13 = a3;
    [v12 playerController:self didSeekToTime:v13];
  }
}

- (void)setRate:(float)a3
{
  if (self->_rate != a3)
  {
    v5 = [(VMPlayerController *)self delegate];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v7 = [(VMPlayerController *)self delegate];
      *&v8 = a3;
      [v7 playerController:self willChangeToRate:v8];
    }

    self->_rate = a3;
    v9 = [(VMPlayerController *)self delegate];
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      v12 = [(VMPlayerController *)self delegate];
      *&v11 = a3;
      [v12 playerController:self didChangeToRate:v11];
    }
  }
}

- (void)setStatus:(int64_t)a3
{
  if (self->_status != a3)
  {
    v5 = [(VMPlayerController *)self delegate];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v7 = [(VMPlayerController *)self delegate];
      [v7 playerController:self willChangeToStatus:a3];
    }

    self->_status = a3;
    v8 = [(VMPlayerController *)self delegate];
    v9 = objc_opt_respondsToSelector();

    if (v9)
    {
      v10 = [(VMPlayerController *)self delegate];
      [v10 playerController:self didChangeToStatus:a3];
    }
  }
}

- (void)setTimeControlStatus:(int64_t)a3
{
  if (self->_timeControlStatus != a3)
  {
    v5 = [(VMPlayerController *)self delegate];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v7 = [(VMPlayerController *)self delegate];
      [v7 playerController:self willChangeToTimeControlStatus:a3];
    }

    self->_timeControlStatus = a3;
    v8 = [(VMPlayerController *)self delegate];
    v9 = objc_opt_respondsToSelector();

    if (v9)
    {
      v10 = [(VMPlayerController *)self delegate];
      [v10 playerController:self didChangeToTimeControlStatus:a3];
    }
  }
}

- (void)updateAudioSessionNotifications
{
  v3 = +[NSNotificationCenter defaultCenter];
  v4 = [(VMPlayerController *)self audioSessionState];
  switch(v4)
  {
    case 2u:
      v5 = vm_ui_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_10005FF80();
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

- (void)activateAudioSessionIfNeededWithCompletion:(id)a3
{
  v4 = a3;
  if (![(VMPlayerController *)self isAudioSessionActive])
  {
    v5 = vm_ui_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v12 = self;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ is activating an audio session.", buf, 0xCu);
    }

    if ([(VMPlayerController *)self audioSessionState]== 2)
    {
      v6 = vm_ui_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v12 = self;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@ waiting for audio session to finish deactivating before activating new one", buf, 0xCu);
      }

      v7 = [(VMPlayerController *)self _audioSessionSerialQueue];
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_10001398C;
      v9[3] = &unk_1000899F0;
      v9[4] = self;
      v10 = v4;
      dispatch_async(v7, v9);

      goto LABEL_11;
    }

    v8 = +[AVAudioSession sharedInstance];
    -[VMPlayerController setAudioSessionState:](self, "setAudioSessionState:", [v8 activateVoicemailAudioSession] ^ 1);

    [(VMPlayerController *)self updateAudioSessionNotifications];
    [(VMPlayerController *)self updateProximityMonitoring];
  }

  if (v4)
  {
    v4[2](v4);
  }

LABEL_11:
}

- (void)deactivateAudioSession
{
  if ([(VMPlayerController *)self isAudioSessionActive])
  {
    v3 = vm_ui_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v8 = self;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%@ is deactivating an audio session.", buf, 0xCu);
    }

    [(VMPlayerController *)self setAudioSessionState:2];
    objc_initWeak(buf, self);
    v4 = [(VMPlayerController *)self _audioSessionSerialQueue];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100013B8C;
    v5[3] = &unk_1000897B8;
    objc_copyWeak(&v6, buf);
    v5[4] = self;
    dispatch_async(v4, v5);

    objc_destroyWeak(&v6);
    objc_destroyWeak(buf);
  }
}

- (BOOL)shouldEnableProximityMonitoring
{
  if (![(VMPlayerController *)self isAudioSessionActive])
  {
    return 0;
  }

  v2 = +[AVAudioSession sharedInstance];
  v3 = [v2 currentRoute];
  v4 = [v3 outputs];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = v4;
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
        v11 = [v10 portType];
        v12 = [v11 isEqualToString:AVAudioSessionPortBuiltInReceiver];

        if ((v12 & 1) == 0)
        {
          v13 = [v10 portType];
          v14 = [v13 isEqualToString:AVAudioSessionPortBuiltInSpeaker];

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
  v3 = [(VMPlayerController *)self shouldEnableProximityMonitoring];
  v4 = +[UIDevice currentDevice];
  if (v3 != [v4 isProximityMonitoringEnabled])
  {
    [v4 setProximityMonitoringEnabled:v3];
    v5 = +[NSNotificationCenter defaultCenter];
    v6 = v5;
    if (v3)
    {
      [v5 addObserver:self selector:"handleDeviceProximityStateDidChangeNotificationNotification:" name:UIDeviceProximityStateDidChangeNotification object:v4];
    }

    else
    {
      [v5 removeObserver:self name:UIDeviceProximityStateDidChangeNotification object:v4];
    }
  }

  v7 = [v4 isProximityMonitoringEnabled];

  return v7;
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v34 = a3;
  v10 = a4;
  v11 = a5;
  v12 = v11;
  if (a6 == &off_1000899E0)
  {
    if (v11)
    {
      v13 = [v11 objectForKeyedSubscript:NSKeyValueChangeNotificationIsPriorKey];
      objc_opt_class();
      v14 = (objc_opt_isKindOfClass() & 1) != 0 ? [&__kCFBooleanTrue isEqualToNumber:v13] : 0;
    }

    else
    {
      v14 = 0;
    }

    if (v34)
    {
      v15 = [v34 length];
      if (v10)
      {
        if (v15)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v16 = v10;
            v17 = [(VMPlayerController *)self player];
            v18 = [v16 isEqual:v17];

            if (v18)
            {
              v19 = NSStringFromSelector("rate");
              v20 = [v34 isEqualToString:v19];

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
                v30 = [v34 isEqualToString:v29];

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
                  v32 = [v34 isEqualToString:v31];

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

          v21 = v10;
          v22 = [(VMPlayerController *)self player];
          v23 = [v22 currentItem];
          LODWORD(v21) = [v21 isEqual:v23];

          if (!v21)
          {
            goto LABEL_33;
          }

          v24 = NSStringFromSelector("duration");
          v25 = [v34 isEqualToString:v24];

          if (!v25)
          {
            goto LABEL_33;
          }

          v26 = [(VMPlayerController *)self delegate];
          if (v14)
          {
            v27 = objc_opt_respondsToSelector();

            if (v27)
            {
              v28 = [(VMPlayerController *)self delegate];
              [(VMPlayerController *)self duration];
              [v28 playerController:self willChangeToDuration:?];
LABEL_32:
            }
          }

          else
          {
            v33 = objc_opt_respondsToSelector();

            if (v33)
            {
              v28 = [(VMPlayerController *)self delegate];
              [(VMPlayerController *)self duration];
              [v28 playerController:self didChangeToDuration:?];
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

- (void)handleAudioSessionInterruptionNotification:(id)a3
{
  v4 = a3;
  v3 = v4;
  TUDispatchMainIfNecessary();
}

- (void)handleAudioSessionRouteChangeNotification:(id)a3
{
  v4 = a3;
  v3 = v4;
  TUDispatchMainIfNecessary();
}

- (void)handleAudioSessionMediaServicesWereLostNotification:(id)a3
{
  v4 = a3;
  v3 = v4;
  TUDispatchMainIfNecessary();
}

- (void)handleAudioSessionMediaServicesWereResetNotification:(id)a3
{
  v4 = a3;
  v3 = v4;
  TUDispatchMainIfNecessary();
}

- (void)handlePlayerItemDidPlayToEndTimeNotification:(id)a3
{
  v4 = a3;
  v3 = v4;
  TUDispatchMainIfNecessary();
}

- (void)handleDeviceProximityStateDidChangeNotificationNotification:(id)a3
{
  v4 = a3;
  v3 = v4;
  TUDispatchMainIfNecessary();
}

- (void)handlePlayerItemFailedToPlayToEndTimeNotification:(id)a3
{
  v4 = a3;
  v3 = v4;
  TUDispatchMainIfNecessary();
}

- (VMPlayerControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end