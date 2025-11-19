@interface SHAudioSessionManager
- (SHAudioSessionManager)init;
- (SHAudioSessionManagerDelegate)delegate;
- (void)activateAudioSessionForClient:(int64_t)a3;
- (void)configureAudioSessionForAssistantService:(id)a3;
- (void)configureAudioSessionForStandardClient:(id)a3;
- (void)deactivateAudioSession;
- (void)dealloc;
- (void)handleAudioSessionInterruption:(id)a3;
- (void)handleAudioSessionRouteChange:(id)a3;
- (void)handleMediaServicesWereLost:(id)a3;
- (void)handleMediaServicesWereReset:(id)a3;
- (void)registerAudioSessionObservers;
- (void)unregisterAudioSessionObservers;
- (void)updateMediaSafetyNetExemptionToRunning:(BOOL)a3;
@end

@implementation SHAudioSessionManager

- (void)updateMediaSafetyNetExemptionToRunning:(BOOL)a3
{
  v3 = a3;
  os_unfair_lock_lock(&self->_mediaSafetyNetLock);
  hasStartedSafetynetException = self->_hasStartedSafetynetException;
  if (v3)
  {
    if (!self->_hasStartedSafetynetException)
    {
      self->_hasStartedSafetynetException = v3;
      MSNMonitorBeginException();
    }
  }

  else if (self->_hasStartedSafetynetException)
  {
    self->_hasStartedSafetynetException = 0;
    MSNMonitorEndException();
  }

  os_unfair_lock_unlock(&self->_mediaSafetyNetLock);
}

- (void)dealloc
{
  v3 = sh_log_object();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Deallocating audio session manager", buf, 2u);
  }

  v4.receiver = self;
  v4.super_class = SHAudioSessionManager;
  [(SHAudioSessionManager *)&v4 dealloc];
}

- (SHAudioSessionManager)init
{
  v6.receiver = self;
  v6.super_class = SHAudioSessionManager;
  v2 = [(SHAudioSessionManager *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.shazamd.audiomanager.dispatch", 0);
    audioManagerDispatchQueue = v2->_audioManagerDispatchQueue;
    v2->_audioManagerDispatchQueue = v3;

    v2->_mediaSafetyNetLock._os_unfair_lock_opaque = 0;
  }

  return v2;
}

- (void)registerAudioSessionObservers
{
  v3 = sh_log_object();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Registering audio session observers", v8, 2u);
  }

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 addObserver:self selector:"handleAudioSessionInterruption:" name:AVAudioSessionInterruptionNotification object:0];

  v5 = +[NSNotificationCenter defaultCenter];
  [v5 addObserver:self selector:"handleAudioSessionRouteChange:" name:AVAudioSessionRouteChangeNotification object:0];

  v6 = +[NSNotificationCenter defaultCenter];
  [v6 addObserver:self selector:"handleMediaServicesWereLost:" name:AVAudioSessionMediaServicesWereLostNotification object:0];

  v7 = +[NSNotificationCenter defaultCenter];
  [v7 addObserver:self selector:"handleMediaServicesWereReset:" name:AVAudioSessionMediaServicesWereResetNotification object:0];
}

- (void)unregisterAudioSessionObservers
{
  v3 = sh_log_object();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Unregistering audio session observers", v8, 2u);
  }

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self name:AVAudioSessionInterruptionNotification object:0];

  v5 = +[NSNotificationCenter defaultCenter];
  [v5 removeObserver:self name:AVAudioSessionRouteChangeNotification object:0];

  v6 = +[NSNotificationCenter defaultCenter];
  [v6 removeObserver:self name:AVAudioSessionMediaServicesWereLostNotification object:0];

  v7 = +[NSNotificationCenter defaultCenter];
  [v7 removeObserver:self name:AVAudioSessionMediaServicesWereResetNotification object:0];
}

- (void)activateAudioSessionForClient:(int64_t)a3
{
  if (![(SHAudioSessionManager *)self audioSessionIsActive])
  {
    v5 = sh_log_object();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Activating audio session", buf, 2u);
    }

    [(SHAudioSessionManager *)self updateMediaSafetyNetExemptionToRunning:1];
    [(SHAudioSessionManager *)self registerAudioSessionObservers];
    [(SHAudioSessionManager *)self setIsAudioSessionInterrupted:0];
    v6 = +[AVAudioSession sharedInstance];
    if (a3 == 2)
    {
      [(SHAudioSessionManager *)self configureAudioSessionForAssistantService:v6];
    }

    else if (a3 == 1)
    {
      [(SHAudioSessionManager *)self configureAudioSessionForStandardClient:v6];
    }

    v10 = 0;
    v7 = [v6 setActive:1 error:&v10];
    v8 = v10;
    if (v7)
    {
      [(SHAudioSessionManager *)self setAudioSessionIsActive:1];
    }

    else
    {
      v9 = sh_log_object();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v12 = v8;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Failed to activate AVAudioSession: %@", buf, 0xCu);
      }
    }
  }
}

- (void)configureAudioSessionForStandardClient:(id)a3
{
  v3 = a3;
  v4 = sh_log_object();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "configureAudioSessionForStandardClient", buf, 2u);
  }

  v24 = 0;
  v5 = [v3 setCategory:AVAudioSessionCategoryPlayAndRecord withOptions:41 error:&v24];
  v6 = v24;
  if ((v5 & 1) == 0)
  {
    v7 = sh_log_object();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v26 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Failed to set category on AVAudioSession: %@", buf, 0xCu);
    }
  }

  v23 = v6;
  v8 = [v3 setMode:AVAudioSessionModeVideoRecording error:&v23];
  v9 = v23;

  if ((v8 & 1) == 0)
  {
    v10 = sh_log_object();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v26 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Failed to set mode: %@", buf, 0xCu);
    }
  }

  v22 = v9;
  v11 = [v3 setAllowHapticsAndSystemSoundsDuringRecording:1 error:&v22];
  v12 = v22;

  if ((v11 & 1) == 0)
  {
    v13 = sh_log_object();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v26 = v12;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Failed to enable haptics while recording: %@", buf, 0xCu);
    }
  }

  v21 = v12;
  v14 = [v3 setEligibleForBTSmartRoutingConsideration:0 error:&v21];
  v15 = v21;

  if ((v14 & 1) == 0)
  {
    v16 = sh_log_object();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v26 = v15;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Failed to disable BT Smart Routing: %@", buf, 0xCu);
    }
  }

  v20 = v15;
  v17 = [v3 preferDecoupledIO:1 error:&v20];
  v18 = v20;

  if ((v17 & 1) == 0)
  {
    v19 = sh_log_object();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v26 = v18;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Failed to decouple IO AVAudioSession: %@", buf, 0xCu);
    }
  }
}

- (void)configureAudioSessionForAssistantService:(id)a3
{
  v3 = a3;
  v4 = sh_log_object();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "configureAudioSessionForAssistantService", buf, 2u);
  }

  v12 = 0;
  v5 = [v3 setCategory:AVAudioSessionCategoryPlayAndRecord withOptions:1 error:&v12];
  v6 = v12;
  if ((v5 & 1) == 0)
  {
    v7 = sh_log_object();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v14 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Failed to set category on AVAudioSession: %@", buf, 0xCu);
    }
  }

  v11 = v6;
  v8 = [v3 setMode:AVAudioSessionModeSpeechRecognition error:&v11];
  v9 = v11;

  if ((v8 & 1) == 0)
  {
    v10 = sh_log_object();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v14 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Failed to set mode: %@", buf, 0xCu);
    }
  }
}

- (void)deactivateAudioSession
{
  if ([(SHAudioSessionManager *)self audioSessionIsActive])
  {
    v3 = sh_log_object();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Deactivating audio session", buf, 2u);
    }

    [(SHAudioSessionManager *)self updateMediaSafetyNetExemptionToRunning:0];
    [(SHAudioSessionManager *)self unregisterAudioSessionObservers];
    [(SHAudioSessionManager *)self setIsAudioSessionInterrupted:0];
    [(SHAudioSessionManager *)self setAudioSessionIsActive:0];
    v4 = +[AVAudioSession sharedInstance];
    v8 = 0;
    v5 = [v4 setActive:0 withOptions:1 error:&v8];
    v6 = v8;

    if ((v5 & 1) == 0)
    {
      v7 = sh_log_object();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v10 = v6;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Failed to deactivate AVAudioSession: %@", buf, 0xCu);
      }
    }
  }
}

- (void)handleAudioSessionInterruption:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKey:AVAudioSessionInterruptionTypeKey];
  v7 = [v6 unsignedIntegerValue];

  v8 = [v4 userInfo];

  v9 = [v8 objectForKey:AVAudioSessionInterruptionOptionKey];
  v10 = [v9 unsignedIntegerValue];

  if (v7)
  {
    if (v7 != 1)
    {
      return;
    }

    v11 = sh_log_object();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Audio interruption started", buf, 2u);
    }

    [(SHAudioSessionManager *)self setIsAudioSessionInterrupted:1];
    v12 = [(SHAudioSessionManager *)self delegate];
    [v12 audioSessionManager:self interruptionBeganWithOptions:v10];
  }

  else
  {
    [(SHAudioSessionManager *)self setIsAudioSessionInterrupted:0];
    v13 = sh_log_object();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Audio interruption ended", v14, 2u);
    }

    v12 = [(SHAudioSessionManager *)self delegate];
    [v12 audioSessionManager:self interruptionEndedWithOptions:v10];
  }
}

- (void)handleMediaServicesWereLost:(id)a3
{
  v3 = sh_log_object();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Received media services were lost notification", v4, 2u);
  }
}

- (void)handleMediaServicesWereReset:(id)a3
{
  v4 = sh_log_object();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Received media services were reset notification - restarting recognition", v6, 2u);
  }

  v5 = [(SHAudioSessionManager *)self delegate];
  [v5 mediaServicesWereReset];
}

- (void)handleAudioSessionRouteChange:(id)a3
{
  v3 = a3;
  v4 = sh_log_object();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "handleAudioSessionRouteChange: %@", &v5, 0xCu);
  }
}

- (SHAudioSessionManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end