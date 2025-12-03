@interface SHAudioSessionManager
- (SHAudioSessionManager)init;
- (SHAudioSessionManagerDelegate)delegate;
- (void)activateAudioSessionForClient:(int64_t)client;
- (void)configureAudioSessionForAssistantService:(id)service;
- (void)configureAudioSessionForStandardClient:(id)client;
- (void)deactivateAudioSession;
- (void)dealloc;
- (void)handleAudioSessionInterruption:(id)interruption;
- (void)handleAudioSessionRouteChange:(id)change;
- (void)handleMediaServicesWereLost:(id)lost;
- (void)handleMediaServicesWereReset:(id)reset;
- (void)registerAudioSessionObservers;
- (void)unregisterAudioSessionObservers;
- (void)updateMediaSafetyNetExemptionToRunning:(BOOL)running;
@end

@implementation SHAudioSessionManager

- (void)updateMediaSafetyNetExemptionToRunning:(BOOL)running
{
  runningCopy = running;
  os_unfair_lock_lock(&self->_mediaSafetyNetLock);
  hasStartedSafetynetException = self->_hasStartedSafetynetException;
  if (runningCopy)
  {
    if (!self->_hasStartedSafetynetException)
    {
      self->_hasStartedSafetynetException = runningCopy;
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

- (void)activateAudioSessionForClient:(int64_t)client
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
    if (client == 2)
    {
      [(SHAudioSessionManager *)self configureAudioSessionForAssistantService:v6];
    }

    else if (client == 1)
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

- (void)configureAudioSessionForStandardClient:(id)client
{
  clientCopy = client;
  v4 = sh_log_object();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "configureAudioSessionForStandardClient", buf, 2u);
  }

  v24 = 0;
  v5 = [clientCopy setCategory:AVAudioSessionCategoryPlayAndRecord withOptions:41 error:&v24];
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
  v8 = [clientCopy setMode:AVAudioSessionModeVideoRecording error:&v23];
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
  v11 = [clientCopy setAllowHapticsAndSystemSoundsDuringRecording:1 error:&v22];
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
  v14 = [clientCopy setEligibleForBTSmartRoutingConsideration:0 error:&v21];
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
  v17 = [clientCopy preferDecoupledIO:1 error:&v20];
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

- (void)configureAudioSessionForAssistantService:(id)service
{
  serviceCopy = service;
  v4 = sh_log_object();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "configureAudioSessionForAssistantService", buf, 2u);
  }

  v12 = 0;
  v5 = [serviceCopy setCategory:AVAudioSessionCategoryPlayAndRecord withOptions:1 error:&v12];
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
  v8 = [serviceCopy setMode:AVAudioSessionModeSpeechRecognition error:&v11];
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

- (void)handleAudioSessionInterruption:(id)interruption
{
  interruptionCopy = interruption;
  userInfo = [interruptionCopy userInfo];
  v6 = [userInfo objectForKey:AVAudioSessionInterruptionTypeKey];
  unsignedIntegerValue = [v6 unsignedIntegerValue];

  userInfo2 = [interruptionCopy userInfo];

  v9 = [userInfo2 objectForKey:AVAudioSessionInterruptionOptionKey];
  unsignedIntegerValue2 = [v9 unsignedIntegerValue];

  if (unsignedIntegerValue)
  {
    if (unsignedIntegerValue != 1)
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
    delegate = [(SHAudioSessionManager *)self delegate];
    [delegate audioSessionManager:self interruptionBeganWithOptions:unsignedIntegerValue2];
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

    delegate = [(SHAudioSessionManager *)self delegate];
    [delegate audioSessionManager:self interruptionEndedWithOptions:unsignedIntegerValue2];
  }
}

- (void)handleMediaServicesWereLost:(id)lost
{
  v3 = sh_log_object();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Received media services were lost notification", v4, 2u);
  }
}

- (void)handleMediaServicesWereReset:(id)reset
{
  v4 = sh_log_object();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Received media services were reset notification - restarting recognition", v6, 2u);
  }

  delegate = [(SHAudioSessionManager *)self delegate];
  [delegate mediaServicesWereReset];
}

- (void)handleAudioSessionRouteChange:(id)change
{
  changeCopy = change;
  v4 = sh_log_object();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = changeCopy;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "handleAudioSessionRouteChange: %@", &v5, 0xCu);
  }
}

- (SHAudioSessionManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end