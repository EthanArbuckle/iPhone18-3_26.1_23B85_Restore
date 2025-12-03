@interface VIOSessionTask
+ (BOOL)isVIOModeEnabled;
+ (BOOL)isVIOModeEnabledInRoutePlanning;
+ (BOOL)isVIOModeSupported;
+ (BOOL)isVIOModeSupportedInRoutePlanning;
+ (BOOL)isVLFModeEnabled;
- (BOOL)areMonitorsDisablingVIO;
- (BOOL)isEligibleToStartVIO;
- (BOOL)isEligibleToStartVLF;
- (BOOL)isVIOSessionRunning;
- (BOOL)isVLFSessionRunning;
- (BOOL)shouldStartVIOSession;
- (BOOL)shouldStartVLFSession;
- (PlatformController)platformController;
- (VIOSessionTask)initWithPlatformController:(id)controller;
- (id)activeMonitors;
- (id)configuration;
- (void)createMonitorsForConfiguration:(id)configuration;
- (void)dealloc;
- (void)handleTransportTypeChanged:(int64_t)changed;
- (void)navigationSession:(id)session didChangeCurrentTransportType:(int64_t)type;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)pauseVIOSession;
- (void)platformController:(id)controller didChangeCurrentSessionFromSession:(id)session toSession:(id)toSession;
- (void)sceneDidActivateNotification:(id)notification;
- (void)session:(id)session didFailWithError:(id)error;
- (void)sessionInterruptionEnded:(id)ended;
- (void)sessionManager:(id)manager didGainSessionOwnership:(id)ownership;
- (void)sessionManager:(id)manager didResignSessionOwnership:(id)ownership;
- (void)sessionWasInterrupted:(id)interrupted;
- (void)setCurrentNavigationSession:(id)session;
- (void)setCurrentRoutePlanningSession:(id)session;
- (void)startVIOSession;
@end

@implementation VIOSessionTask

- (PlatformController)platformController
{
  WeakRetained = objc_loadWeakRetained(&self->_platformController);

  return WeakRetained;
}

- (void)sceneDidActivateNotification:(id)notification
{
  session = [(VIOSessionTask *)self session];

  if (session)
  {
    session2 = [(VIOSessionTask *)self session];
    state = [session2 state];

    if (!state)
    {
      shouldStartVIOSession = [(VIOSessionTask *)self shouldStartVIOSession];
      shouldStartVLFSession = [(VIOSessionTask *)self shouldStartVLFSession];
      if ((shouldStartVIOSession & 1) != 0 || shouldStartVLFSession)
      {
        analyticsCapturer = [(VIOSessionTask *)self analyticsCapturer];
        [analyticsCapturer startRecording];

        [(VIOSessionTask *)self startVIOSession];
      }
    }
  }
}

- (void)sessionManager:(id)manager didResignSessionOwnership:(id)ownership
{
  v5 = [(VIOSessionTask *)self session:manager];

  if (!v5)
  {
    v11 = sub_10006D178();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v14 = 136315906;
      v15 = "[VIOSessionTask sessionManager:didResignSessionOwnership:]";
      v16 = 2080;
      v17 = "VIOSessionTask.m";
      v18 = 1024;
      v19 = 651;
      v20 = 2080;
      v21 = "self.session != nil";
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", &v14, 0x26u);
    }

    if (sub_100E03634())
    {
      v12 = sub_10006D178();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = +[NSThread callStackSymbols];
        v14 = 138412290;
        v15 = v13;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%@", &v14, 0xCu);
      }
    }
  }

  session = [(VIOSessionTask *)self session];

  if (session)
  {
    analyticsCapturer = [(VIOSessionTask *)self analyticsCapturer];
    [analyticsCapturer pauseRecording];

    monitors = [(VIOSessionTask *)self monitors];
    [monitors removeAllObjects];

    session2 = [(VIOSessionTask *)self session];
    [session2 _removeObserver:self];

    session = self->_session;
    self->_session = 0;
  }
}

- (void)sessionManager:(id)manager didGainSessionOwnership:(id)ownership
{
  ownershipCopy = ownership;
  session = [(VIOSessionTask *)self session];

  if (session)
  {
    v13 = sub_10006D178();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v16 = 136315906;
      v17 = "[VIOSessionTask sessionManager:didGainSessionOwnership:]";
      v18 = 2080;
      v19 = "VIOSessionTask.m";
      v20 = 1024;
      v21 = 626;
      v22 = 2080;
      v23 = "self.session == nil";
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", &v16, 0x26u);
    }

    if (sub_100E03634())
    {
      v14 = sub_10006D178();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = +[NSThread callStackSymbols];
        v16 = 138412290;
        v17 = v15;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%@", &v16, 0xCu);
      }
    }
  }

  session2 = [(VIOSessionTask *)self session];

  if (!session2)
  {
    objc_storeStrong(&self->_session, ownership);
    analyticsCapturer = [(VIOSessionTask *)self analyticsCapturer];
    [analyticsCapturer resumeRecording];

    session3 = [(VIOSessionTask *)self session];
    [session3 _addObserver:self];

    LOBYTE(session3) = [(VIOSessionTask *)self shouldStartVIOSession];
    shouldStartVLFSession = [(VIOSessionTask *)self shouldStartVLFSession];
    if ((session3 & 1) != 0 || shouldStartVLFSession)
    {
      analyticsCapturer2 = [(VIOSessionTask *)self analyticsCapturer];
      [analyticsCapturer2 startRecording];

      [(VIOSessionTask *)self startVIOSession];
    }

    else
    {
      [(VIOSessionTask *)self pauseVIOSession];
    }
  }
}

- (void)platformController:(id)controller didChangeCurrentSessionFromSession:(id)session toSession:(id)toSession
{
  sessionCopy = session;
  toSessionCopy = toSession;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = toSessionCopy;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;
  [(VIOSessionTask *)self setCurrentRoutePlanningSession:v10];

  v11 = toSessionCopy;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  [(VIOSessionTask *)self setCurrentNavigationSession:v13];
  session = [(VIOSessionTask *)self session];

  if (!session)
  {
    goto LABEL_48;
  }

  if ([(VIOSessionTask *)self isVLFSessionRunning])
  {
    currentNavigationSession = [(VIOSessionTask *)self currentNavigationSession];
    if (currentNavigationSession && (v16 = currentNavigationSession, -[VIOSessionTask currentNavigationSession](self, "currentNavigationSession"), v17 = objc_claimAutoreleasedReturnValue(), v18 = +[VLFSessionTask isSupportedForTransportType:](VLFSessionTask, "isSupportedForTransportType:", [v17 currentTransportType]), v17, v16, (v18 & 1) == 0))
    {
      v19 = sub_100AF99D4();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        currentNavigationSession2 = [(VIOSessionTask *)self currentNavigationSession];
        currentTransportType = [currentNavigationSession2 currentTransportType];
        if ((currentTransportType - 1) > 4)
        {
          v22 = @"Undefined";
        }

        else
        {
          v22 = off_101637F28[(currentTransportType - 1)];
        }

        *v38 = 138412290;
        *&v38[4] = v22;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Post-VLF VIO is running and we entered nav for a non-supported transport type (%@); pausing VIO session", v38, 0xCu);
      }
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_48;
      }

      v19 = sub_100AF99D4();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        *v38 = 0;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Navigation ended during Post-VLF VIO; pausing VIO session", v38, 2u);
      }
    }

    analyticsCapturer = [(VIOSessionTask *)self analyticsCapturer];
    [analyticsCapturer stopRecording];

    [(VIOSessionTask *)self pauseVIOSession];
  }

  if (![(VIOSessionTask *)self shouldStartVIOSession])
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && ([(VIOSessionTask *)self currentNavigationSession], v28 = objc_claimAutoreleasedReturnValue(), v28, !v28))
    {
      analyticsCapturer2 = [(VIOSessionTask *)self analyticsCapturer];
      [analyticsCapturer2 stopRecording];

      if ([(VIOSessionTask *)self isVIOSessionRunning])
      {
        v30 = sub_100AF99D4();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
        {
          *v38 = 0;
          v31 = "Ended route planning; pausing VIO session";
          goto LABEL_45;
        }

        goto LABEL_46;
      }
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        analyticsCapturer3 = [(VIOSessionTask *)self analyticsCapturer];
        [analyticsCapturer3 stopRecording];

        if ([(VIOSessionTask *)self isVIOSessionRunning])
        {
          v30 = sub_100AF99D4();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
          {
            *v38 = 0;
            v31 = "Ended navigation; pausing VIO session";
LABEL_45:
            _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_INFO, v31, v38, 2u);
            goto LABEL_46;
          }

          goto LABEL_46;
        }
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_48;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_48;
        }

        analyticsCapturer4 = [(VIOSessionTask *)self analyticsCapturer];
        [analyticsCapturer4 stopRecording];

        if ([(VIOSessionTask *)self isVIOSessionRunning])
        {
          v30 = sub_100AF99D4();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
          {
            *v38 = 0;
            v31 = "VIO session was running during route planning and now it shouldn't be during navigation; pausing VIO session";
            goto LABEL_45;
          }

LABEL_46:

          [(VIOSessionTask *)self pauseVIOSession];
        }
      }
    }

    monitors = [(VIOSessionTask *)self monitors];
    [monitors removeAllObjects];

    goto LABEL_48;
  }

  analyticsCapturer5 = [(VIOSessionTask *)self analyticsCapturer];
  [analyticsCapturer5 startRecording];

  if (![(VIOSessionTask *)self isVIOSessionRunning])
  {
    currentRoutePlanningSession = [(VIOSessionTask *)self currentRoutePlanningSession];

    if (currentRoutePlanningSession)
    {
      v26 = sub_100AF99D4();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        *v38 = 0;
        v27 = "Entered pedestrian route planning; starting VIO session";
LABEL_39:
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, v27, v38, 2u);
      }
    }

    else
    {
      currentNavigationSession3 = [(VIOSessionTask *)self currentNavigationSession];

      if (currentNavigationSession3)
      {
        v26 = sub_100AF99D4();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
        {
          *v38 = 0;
          v27 = "Entered pedestrian navigation; starting VIO session";
          goto LABEL_39;
        }
      }

      else
      {
        v36 = sub_10006D178();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          *v38 = 136315650;
          *&v38[4] = "[VIOSessionTask platformController:didChangeCurrentSessionFromSession:toSession:]";
          v39 = 2080;
          v40 = "VIOSessionTask.m";
          v41 = 1024;
          v42 = 581;
          _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", v38, 0x1Cu);
        }

        if (!sub_100E03634())
        {
          goto LABEL_41;
        }

        v26 = sub_10006D178();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          v37 = +[NSThread callStackSymbols];
          *v38 = 138412290;
          *&v38[4] = v37;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "%@", v38, 0xCu);
        }
      }
    }

LABEL_41:
    [(VIOSessionTask *)self startVIOSession];
  }

LABEL_48:
}

- (void)navigationSession:(id)session didChangeCurrentTransportType:(int64_t)type
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100AF9AF8;
  v4[3] = &unk_101661650;
  v4[4] = self;
  v4[5] = type;
  dispatch_async(&_dispatch_main_q, v4);
}

- (void)sessionInterruptionEnded:(id)ended
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100AF9B9C;
  v4[3] = &unk_101661A90;
  v4[4] = self;
  endedCopy = ended;
  v3 = endedCopy;
  dispatch_async(&_dispatch_main_q, v4);
}

- (void)sessionWasInterrupted:(id)interrupted
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100AF9C64;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)session:(id)session didFailWithError:(id)error
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100AF9D1C;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  v13 = +[NSUserDefaults standardUserDefaults];
  v14 = v13;
  if (v13 != objectCopy)
  {

LABEL_10:
    v21.receiver = self;
    v21.super_class = VIOSessionTask;
    [(VIOSessionTask *)&v21 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
    goto LABEL_11;
  }

  v15 = [pathCopy isEqualToString:@"MapsWalkingEnableImageBasedHeading"];

  if (!v15)
  {
    goto LABEL_10;
  }

  v16 = [changeCopy objectForKey:NSKeyValueChangeNewKey];
  bOOLValue = [v16 BOOLValue];

  if (bOOLValue)
  {
    if ([(VIOSessionTask *)self shouldStartVIOSession]&& ![(VIOSessionTask *)self isVIOSessionRunning])
    {
      v18 = sub_100AF99D4();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "User enabled VIO from Maps settings; starting VIO session", buf, 2u);
      }

      [(VIOSessionTask *)self startVIOSession];
    }
  }

  else
  {
    v19 = sub_100AF99D4();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "User disabled VIO from Maps settings; pausing VIO session", buf, 2u);
    }

    [(VIOSessionTask *)self pauseVIOSession];
    monitors = [(VIOSessionTask *)self monitors];
    [monitors removeAllObjects];
  }

LABEL_11:
}

- (BOOL)isEligibleToStartVLF
{
  if (([objc_opt_class() isVLFModeEnabled] & 1) == 0)
  {
    v15 = sub_10006D178();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v24 = 136315906;
      v25 = "[VIOSessionTask isEligibleToStartVLF]";
      v26 = 2080;
      v27 = "VIOSessionTask.m";
      v28 = 1024;
      v29 = 443;
      v30 = 2080;
      v31 = "[[self class] isVLFModeEnabled]";
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", &v24, 0x26u);
    }

    if (sub_100E03634())
    {
      v16 = sub_10006D178();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = +[NSThread callStackSymbols];
        v24 = 138412290;
        v25 = v17;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%@", &v24, 0xCu);
      }
    }
  }

  if (([objc_opt_class() isVLFModeEnabled] & 1) == 0)
  {
    v10 = sub_100AF99D4();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    LOWORD(v24) = 0;
    v11 = "Can't start a post-VLF VIO session when VLF mode is not enabled";
LABEL_13:
    v12 = v10;
    v13 = 2;
LABEL_14:
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, v11, &v24, v13);
    goto LABEL_15;
  }

  session = [(VIOSessionTask *)self session];

  if (!session)
  {
    v18 = sub_10006D178();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v24 = 136315906;
      v25 = "[VIOSessionTask isEligibleToStartVLF]";
      v26 = 2080;
      v27 = "VIOSessionTask.m";
      v28 = 1024;
      v29 = 449;
      v30 = 2080;
      v31 = "self.session != nil";
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", &v24, 0x26u);
    }

    if (sub_100E03634())
    {
      v19 = sub_10006D178();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = +[NSThread callStackSymbols];
        v24 = 138412290;
        v25 = v20;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%@", &v24, 0xCu);
      }
    }
  }

  session2 = [(VIOSessionTask *)self session];

  if (!session2)
  {
    v10 = sub_100AF99D4();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    LOWORD(v24) = 0;
    v11 = "Can't start a post-VLF VIO session when the current session has been transitioned to be used for another purpose";
    goto LABEL_13;
  }

  currentNavigationSession = [(VIOSessionTask *)self currentNavigationSession];

  if (!currentNavigationSession)
  {
    return 1;
  }

  currentNavigationSession2 = [(VIOSessionTask *)self currentNavigationSession];
  currentTransportType = [currentNavigationSession2 currentTransportType];

  v8 = &OBJC_METACLASS___NavShareETACell;
  if (![VLFSessionTask isSupportedForTransportType:currentTransportType])
  {
    v21 = sub_10006D178();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v24 = 136315906;
      v25 = "[VIOSessionTask isEligibleToStartVLF]";
      v26 = 2080;
      v27 = "VIOSessionTask.m";
      v28 = 1024;
      v29 = 457;
      v30 = 2080;
      v31 = "[VLFSessionTask isSupportedForTransportType:currentTransportType]";
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", &v24, 0x26u);
    }

    if (sub_100E03634())
    {
      v22 = sub_10006D178();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = +[NSThread callStackSymbols];
        v24 = 138412290;
        v25 = v23;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%@", &v24, 0xCu);
      }

      v8 = &OBJC_METACLASS___NavShareETACell;
    }
  }

  if ([&v8[16] isSupportedForTransportType:currentTransportType])
  {
    return 1;
  }

  v10 = sub_100AF99D4();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    if ((currentTransportType - 1) > 4)
    {
      v14 = @"Undefined";
    }

    else
    {
      v14 = off_101637F28[(currentTransportType - 1)];
    }

    v24 = 138412290;
    v25 = v14;
    v11 = "Can't start a post-VLF VIO session during navigation when the transport type is %@";
    v12 = v10;
    v13 = 12;
    goto LABEL_14;
  }

LABEL_15:

  return 0;
}

- (BOOL)isEligibleToStartVIO
{
  if (([objc_opt_class() isVIOModeEnabled] & 1) == 0)
  {
    v31 = sub_10006D178();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v49 = 136315906;
      v50 = "[VIOSessionTask isEligibleToStartVIO]";
      v51 = 2080;
      v52 = "VIOSessionTask.m";
      v53 = 1024;
      v54 = 395;
      v55 = 2080;
      v56 = "[[self class] isVIOModeEnabled]";
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", &v49, 0x26u);
    }

    if (sub_100E03634())
    {
      v32 = sub_10006D178();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v33 = +[NSThread callStackSymbols];
        v49 = 138412290;
        v50 = v33;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "%@", &v49, 0xCu);
      }
    }
  }

  if (([objc_opt_class() isVIOModeEnabled] & 1) == 0)
  {
    v10 = sub_100AF99D4();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_39;
    }

    LOWORD(v49) = 0;
    v14 = "Can't start a VIO session when VIO mode is not enabled";
    goto LABEL_38;
  }

  session = [(VIOSessionTask *)self session];

  if (!session)
  {
    v34 = sub_10006D178();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      v49 = 136315906;
      v50 = "[VIOSessionTask isEligibleToStartVIO]";
      v51 = 2080;
      v52 = "VIOSessionTask.m";
      v53 = 1024;
      v54 = 401;
      v55 = 2080;
      v56 = "self.session != nil";
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", &v49, 0x26u);
    }

    if (sub_100E03634())
    {
      v35 = sub_10006D178();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        v36 = +[NSThread callStackSymbols];
        v49 = 138412290;
        v50 = v36;
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "%@", &v49, 0xCu);
      }
    }
  }

  session2 = [(VIOSessionTask *)self session];

  if (!session2)
  {
    v10 = sub_100AF99D4();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_39;
    }

    LOWORD(v49) = 0;
    v14 = "Can't start a VIO session when the current session has been transitioned to be used for another purpose";
    goto LABEL_38;
  }

  currentRoutePlanningSession = [(VIOSessionTask *)self currentRoutePlanningSession];

  if (currentRoutePlanningSession)
  {
    if (([objc_opt_class() isVIOModeEnabledInRoutePlanning] & 1) == 0)
    {
      v37 = sub_10006D178();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        v49 = 136315906;
        v50 = "[VIOSessionTask isEligibleToStartVIO]";
        v51 = 2080;
        v52 = "VIOSessionTask.m";
        v53 = 1024;
        v54 = 408;
        v55 = 2080;
        v56 = "self.class.isVIOModeEnabledInRoutePlanning";
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", &v49, 0x26u);
      }

      if (sub_100E03634())
      {
        v38 = sub_10006D178();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          v39 = +[NSThread callStackSymbols];
          v49 = 138412290;
          v50 = v39;
          _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "%@", &v49, 0xCu);
        }
      }
    }

    if ([objc_opt_class() isVIOModeEnabledInRoutePlanning])
    {
      currentRoutePlanningSession2 = [(VIOSessionTask *)self currentRoutePlanningSession];
      currentTransportType = [currentRoutePlanningSession2 currentTransportType];

      if (currentTransportType != 2)
      {
        v40 = sub_10006D178();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          v49 = 136315906;
          v50 = "[VIOSessionTask isEligibleToStartVIO]";
          v51 = 2080;
          v52 = "VIOSessionTask.m";
          v53 = 1024;
          v54 = 414;
          v55 = 2080;
          v56 = "self.currentRoutePlanningSession.currentTransportType == TransportTypeWalk";
          _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", &v49, 0x26u);
        }

        if (sub_100E03634())
        {
          v41 = sub_10006D178();
          if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
          {
            v42 = +[NSThread callStackSymbols];
            v49 = 138412290;
            v50 = v42;
            _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, "%@", &v49, 0xCu);
          }
        }
      }

      currentRoutePlanningSession3 = [(VIOSessionTask *)self currentRoutePlanningSession];
      currentTransportType2 = [currentRoutePlanningSession3 currentTransportType];

      if (currentTransportType2 != 2)
      {
        v10 = sub_100AF99D4();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          currentRoutePlanningSession4 = [(VIOSessionTask *)self currentRoutePlanningSession];
          currentTransportType3 = [currentRoutePlanningSession4 currentTransportType];
          if ((currentTransportType3 - 1) > 4)
          {
            v13 = @"Undefined";
          }

          else
          {
            v13 = off_101637F28[(currentTransportType3 - 1)];
          }

          v49 = 138412290;
          v50 = v13;
          v30 = "Can't start a VIO session during route planning when the transport type is %@";
LABEL_44:
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, v30, &v49, 0xCu);

          goto LABEL_39;
        }

        goto LABEL_39;
      }

      return 1;
    }

    v10 = sub_100AF99D4();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_39;
    }

    LOWORD(v49) = 0;
    v14 = "Can't start a VIO session during route planning when VIO mode during route planning is not enabled";
LABEL_38:
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, v14, &v49, 2u);
    goto LABEL_39;
  }

  currentNavigationSession = [(VIOSessionTask *)self currentNavigationSession];

  if (!currentNavigationSession)
  {
    v25 = sub_10006D178();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v49 = 136315650;
      v50 = "[VIOSessionTask isEligibleToStartVIO]";
      v51 = 2080;
      v52 = "VIOSessionTask.m";
      v53 = 1024;
      v54 = 432;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", &v49, 0x1Cu);
    }

    if (sub_100E03634())
    {
      v26 = sub_10006D178();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v27 = +[NSThread callStackSymbols];
        v49 = 138412290;
        v50 = v27;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "%@", &v49, 0xCu);
      }
    }

    v10 = sub_100AF99D4();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_39;
    }

    LOWORD(v49) = 0;
    v14 = "Can't start a VIO session when we're neither in route planning nor in navigation";
    goto LABEL_38;
  }

  currentNavigationSession2 = [(VIOSessionTask *)self currentNavigationSession];
  currentTransportType4 = [currentNavigationSession2 currentTransportType];

  if (currentTransportType4 != 2)
  {
    v43 = sub_10006D178();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      v49 = 136315906;
      v50 = "[VIOSessionTask isEligibleToStartVIO]";
      v51 = 2080;
      v52 = "VIOSessionTask.m";
      v53 = 1024;
      v54 = 420;
      v55 = 2080;
      v56 = "self.currentNavigationSession.currentTransportType == TransportTypeWalk";
      _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", &v49, 0x26u);
    }

    if (sub_100E03634())
    {
      v44 = sub_10006D178();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        v45 = +[NSThread callStackSymbols];
        v49 = 138412290;
        v50 = v45;
        _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_ERROR, "%@", &v49, 0xCu);
      }
    }
  }

  currentNavigationSession3 = [(VIOSessionTask *)self currentNavigationSession];
  currentTransportType5 = [currentNavigationSession3 currentTransportType];

  if (currentTransportType5 == 2)
  {
    currentNavigationSession4 = [(VIOSessionTask *)self currentNavigationSession];
    navigationType = [currentNavigationSession4 navigationType];

    if (navigationType != 3)
    {
      v46 = sub_10006D178();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        v49 = 136315906;
        v50 = "[VIOSessionTask isEligibleToStartVIO]";
        v51 = 2080;
        v52 = "VIOSessionTask.m";
        v53 = 1024;
        v54 = 426;
        v55 = 2080;
        v56 = "self.currentNavigationSession.navigationType == MNNavigationType_TurnByTurn";
        _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", &v49, 0x26u);
      }

      if (sub_100E03634())
      {
        v47 = sub_10006D178();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
        {
          v48 = +[NSThread callStackSymbols];
          v49 = 138412290;
          v50 = v48;
          _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_ERROR, "%@", &v49, 0xCu);
        }
      }
    }

    currentNavigationSession5 = [(VIOSessionTask *)self currentNavigationSession];
    navigationType2 = [currentNavigationSession5 navigationType];

    if (navigationType2 == 3)
    {
      return 1;
    }

    v10 = sub_100AF99D4();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_39;
    }

    LOWORD(v49) = 0;
    v14 = "Can't start a VIO session during non-TBT navigation";
    goto LABEL_38;
  }

  v10 = sub_100AF99D4();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    currentRoutePlanningSession4 = [(VIOSessionTask *)self currentNavigationSession];
    currentTransportType6 = [currentRoutePlanningSession4 currentTransportType];
    if ((currentTransportType6 - 1) > 4)
    {
      v29 = @"Undefined";
    }

    else
    {
      v29 = off_101637F28[(currentTransportType6 - 1)];
    }

    v49 = 138412290;
    v50 = v29;
    v30 = "Can't start a VIO session during navigation when the transport type is %@";
    goto LABEL_44;
  }

LABEL_39:

  return 0;
}

- (void)handleTransportTypeChanged:(int64_t)changed
{
  if ([(VIOSessionTask *)self isVLFSessionRunning]&& [VLFSessionTask isSupportedForTransportType:changed])
  {
    return;
  }

  if (changed != 2)
  {
    analyticsCapturer = [(VIOSessionTask *)self analyticsCapturer];
    [analyticsCapturer stopRecording];

    LOBYTE(analyticsCapturer) = [(VIOSessionTask *)self isVIOSessionRunning];
    isVLFSessionRunning = [(VIOSessionTask *)self isVLFSessionRunning];
    if ((analyticsCapturer & 1) == 0 && !isVLFSessionRunning)
    {
      goto LABEL_29;
    }

    v10 = sub_100AF99D4();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      if ((changed - 1) > 4)
      {
        v11 = @"Undefined";
      }

      else
      {
        v11 = off_101637F00[changed - 1];
      }

      v23 = 138412290;
      v24 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Transport type changed (%@); pausing VIO session", &v23, 0xCu);
    }

    goto LABEL_28;
  }

  currentRoutePlanningSession = [(VIOSessionTask *)self currentRoutePlanningSession];
  v6 = objc_opt_class();
  if (currentRoutePlanningSession)
  {
    isVIOModeEnabledInRoutePlanning = [v6 isVIOModeEnabledInRoutePlanning];
  }

  else
  {
    isVIOModeEnabledInRoutePlanning = [v6 isVIOModeEnabled];
  }

  v12 = isVIOModeEnabledInRoutePlanning;

  session = [(VIOSessionTask *)self session];

  analyticsCapturer2 = [(VIOSessionTask *)self analyticsCapturer];
  v15 = analyticsCapturer2;
  if (!v12 || !session)
  {
    [analyticsCapturer2 stopRecording];

    isVIOSessionRunning = [(VIOSessionTask *)self isVIOSessionRunning];
    isVLFSessionRunning2 = [(VIOSessionTask *)self isVLFSessionRunning];
    if ((isVIOSessionRunning & 1) == 0 && !isVLFSessionRunning2)
    {
      goto LABEL_29;
    }

    v19 = sub_100AF99D4();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      currentRoutePlanningSession2 = [(VIOSessionTask *)self currentRoutePlanningSession];
      v21 = @"VIO mode in route planning";
      if (!currentRoutePlanningSession2)
      {
        v21 = @"VIO mode";
      }

      v23 = 138412546;
      v24 = @"Walk";
      v25 = 2112;
      v26 = v21;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Transport type changed (%@) but %@ is not enabled; pausing VIO session", &v23, 0x16u);
    }

LABEL_28:
    [(VIOSessionTask *)self pauseVIOSession];
LABEL_29:
    monitors = [(VIOSessionTask *)self monitors];
    [monitors removeAllObjects];

    return;
  }

  [analyticsCapturer2 startRecording];

  if (![(VIOSessionTask *)self isVIOSessionRunning])
  {
    v16 = sub_100AF99D4();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v23 = 138412290;
      v24 = @"Walk";
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Transport type changed (%@); starting VIO session", &v23, 0xCu);
    }

    [(VIOSessionTask *)self startVIOSession];
  }
}

- (void)setCurrentRoutePlanningSession:(id)session
{
  sessionCopy = session;
  currentRoutePlanningSession = self->_currentRoutePlanningSession;
  if (currentRoutePlanningSession != sessionCopy)
  {
    v7 = sessionCopy;
    [currentRoutePlanningSession unregisterObserver:self];
    objc_storeStrong(&self->_currentRoutePlanningSession, session);
    [self->_currentRoutePlanningSession registerObserver:self];
    sessionCopy = v7;
  }
}

- (void)setCurrentNavigationSession:(id)session
{
  sessionCopy = session;
  currentNavigationSession = self->_currentNavigationSession;
  if (currentNavigationSession != sessionCopy)
  {
    v7 = sessionCopy;
    [currentNavigationSession unregisterObserver:self];
    objc_storeStrong(&self->_currentNavigationSession, session);
    [self->_currentNavigationSession registerObserver:self];
    sessionCopy = v7;
  }
}

- (BOOL)isVLFSessionRunning
{
  session = [(VIOSessionTask *)self session];
  isVLFRunning = [session isVLFRunning];

  return isVLFRunning;
}

- (BOOL)isVIOSessionRunning
{
  session = [(VIOSessionTask *)self session];
  isVIORunning = [session isVIORunning];

  return isVIORunning;
}

- (BOOL)areMonitorsDisablingVIO
{
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  monitors = [(VIOSessionTask *)self monitors];
  v3 = [monitors countByEnumeratingWithState:&v14 objects:v20 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v15;
    *&v4 = 138412290;
    v13 = v4;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(monitors);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        if ([v8 isEnabled] && objc_msgSend(v8, "shouldDisableVIOSession"))
        {
          v11 = sub_100AF99D4();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
          {
            *buf = v13;
            v19 = v8;
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%@ is requesting to prevent the VIO session from starting", buf, 0xCu);
          }

          v10 = 1;
          goto LABEL_16;
        }

        v9 = sub_100AF99D4();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          *buf = v13;
          v19 = v8;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "%@ is NOT requesting to prevent the VIO session from starting", buf, 0xCu);
        }
      }

      v5 = [monitors countByEnumeratingWithState:&v14 objects:v20 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_16:

  return v10;
}

- (void)createMonitorsForConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if ([configurationCopy isVIO])
  {
    session = [(VIOSessionTask *)self session];
    configuration = [session configuration];
    isVIO = [configuration isVIO];
  }

  else
  {
    isVIO = 0;
  }

  if ([configurationCopy isVLF])
  {
    session2 = [(VIOSessionTask *)self session];
    configuration2 = [session2 configuration];
    isVIO |= [configuration2 isVLF];
  }

  monitors = [(VIOSessionTask *)self monitors];
  v11 = [monitors count];

  if (v11 && isVIO)
  {
    v12 = sub_100AF99D4();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "Monitors already exist and VIO is not changing; not creating them again", buf, 2u);
    }
  }

  else
  {
    monitors2 = [(VIOSessionTask *)self monitors];
    [monitors2 removeAllObjects];

    v14 = [VIOSessionStateManager alloc];
    session3 = [(VIOSessionTask *)self session];
    v34 = configurationCopy;
    v12 = [(VIOSessionStateManager *)v14 initWithSession:session3 configuration:configurationCopy];

    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v41[0] = objc_opt_class();
    v41[1] = objc_opt_class();
    v41[2] = objc_opt_class();
    v41[3] = objc_opt_class();
    v41[4] = objc_opt_class();
    v41[5] = objc_opt_class();
    v41[6] = objc_opt_class();
    v41[7] = objc_opt_class();
    v41[8] = objc_opt_class();
    v41[9] = objc_opt_class();
    v41[10] = objc_opt_class();
    v41[11] = objc_opt_class();
    v16 = [NSArray arrayWithObjects:v41 count:12];
    v17 = [v16 countByEnumeratingWithState:&v35 objects:v42 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v36;
      do
      {
        for (i = 0; i != v18; i = i + 1)
        {
          if (*v36 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v35 + 1) + 8 * i);
          isAvailable = [v21 isAvailable];
          monitors3 = sub_100AF99D4();
          v24 = os_log_type_enabled(monitors3, OS_LOG_TYPE_INFO);
          if (isAvailable)
          {
            if (v24)
            {
              v25 = NSStringFromClass(v21);
              *buf = 138412290;
              v40 = v25;
              _os_log_impl(&_mh_execute_header, monitors3, OS_LOG_TYPE_INFO, "%@ is available; creating it", buf, 0xCu);
            }

            monitors3 = [(VIOSessionTask *)self monitors];
            v26 = [v21 alloc];
            platformController = [(VIOSessionTask *)self platformController];
            v28 = [v26 initWithStateManager:v12 platformController:platformController];
            [monitors3 addObject:v28];
          }

          else if (v24)
          {
            v29 = NSStringFromClass(v21);
            *buf = 138412290;
            v40 = v29;
            _os_log_impl(&_mh_execute_header, monitors3, OS_LOG_TYPE_INFO, "%@ is unavailable; NOT creating it", buf, 0xCu);
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v35 objects:v42 count:16];
      }

      while (v18);
    }

    analyticsCapturer = [(VIOSessionTask *)self analyticsCapturer];
    [analyticsCapturer setStateManager:v12];

    session4 = [(VIOSessionTask *)self session];
    analyticsCapturer2 = [(VIOSessionTask *)self analyticsCapturer];
    [analyticsCapturer2 setSession:session4];

    v33 = sub_100AF99D4();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_INFO, "New monitors have been created", buf, 2u);
    }

    configurationCopy = v34;
  }
}

- (void)pauseVIOSession
{
  v3 = sub_100AF99D4();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Pausing VIO session", v6, 2u);
  }

  session = [(VIOSessionTask *)self session];
  [session pause];

  monitors = [(VIOSessionTask *)self monitors];
  [monitors removeAllObjects];
}

- (void)startVIOSession
{
  if ([(VIOSessionTask *)self shouldStartVIOSession]&& ![(VIOSessionTask *)self isEligibleToStartVIO])
  {
    configuration = sub_100AF99D4();
    if (os_log_type_enabled(configuration, OS_LOG_TYPE_INFO))
    {
      v23 = 0;
      v16 = "VIO should not start or is not eligible to start; not starting";
      v17 = &v23;
LABEL_20:
      _os_log_impl(&_mh_execute_header, configuration, OS_LOG_TYPE_INFO, v16, v17, 2u);
    }
  }

  else
  {
    if (![(VIOSessionTask *)self shouldStartVLFSession]|| [(VIOSessionTask *)self isEligibleToStartVLF])
    {
      configuration = [(VIOSessionTask *)self configuration];
      v4 = +[NSUserDefaults standardUserDefaults];
      v5 = [v4 BOOLForKey:@"MapsARSessionRecordingEnabledKey"];

      if (v5)
      {
        v6 = sub_100AF99D4();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "ARKit session recording is enabled; trying to create recording configuration", buf, 2u);
        }

        v7 = +[NSDate now];
        [v7 timeIntervalSince1970];
        v9 = [NSString stringWithFormat:@"vio.%.0f.mov", v8 * 1000.0];
        v10 = [configuration recordingConfigurationWithFileName:v9];

        configuration = v10;
      }

      [(VIOSessionTask *)self createMonitorsForConfiguration:configuration];
      if ([(VIOSessionTask *)self areMonitorsDisablingVIO])
      {
        v11 = sub_100AF99D4();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          *v18 = 0;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "VIO session will not start because a monitor wants to disable the session", v18, 2u);
        }

        session = [(VIOSessionTask *)self session];
        [session pause];
        goto LABEL_27;
      }

      if ([configuration isVIO])
      {
        v13 = sub_100AF99D4();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          v20 = 0;
          v14 = "VIO session is starting";
          v15 = &v20;
LABEL_24:
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, v14, v15, 2u);
        }
      }

      else
      {
        if (![configuration isVLF])
        {
LABEL_26:
          session = [(VIOSessionTask *)self session];
          [session runWithConfiguration:configuration];
LABEL_27:

          goto LABEL_28;
        }

        v13 = sub_100AF99D4();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          *v19 = 0;
          v14 = "Post-VLF VIO session is starting";
          v15 = v19;
          goto LABEL_24;
        }
      }

      goto LABEL_26;
    }

    configuration = sub_100AF99D4();
    if (os_log_type_enabled(configuration, OS_LOG_TYPE_INFO))
    {
      *v22 = 0;
      v16 = "Post-VLF VIO should not start or is not eligible to start; not starting";
      v17 = v22;
      goto LABEL_20;
    }
  }

LABEL_28:
}

- (id)configuration
{
  if ([(VIOSessionTask *)self shouldStartVLFSession])
  {
    v3 = objc_opt_new();
    [v3 setVisualLocalizationUpdatesRequested:0];
    [v3 setSupportEnablementOptions:4];
    GEOConfigGetDouble();
    v5 = v4;
    v6 = sub_100AF99D4();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v16 = 134217984;
      v17 = *&v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "Configuring post-VLF VIO with framerate: %f", &v16, 0xCu);
    }

    v7 = [NSNumber numberWithDouble:v5];
    v22[0] = v7;
    v8 = [NSNumber numberWithDouble:v5];
    v22[1] = v8;
    v9 = [NSNumber numberWithDouble:v5];
    v22[2] = v9;
    v10 = [NSArray arrayWithObjects:v22 count:3];
    videoFormat = [v3 videoFormat];
    [videoFormat setFrameRatesByPowerUsage:v10];
  }

  else if ([(VIOSessionTask *)self shouldStartVIOSession])
  {
    v3 = objc_opt_new();
    [v3 setVioFusionEnabled:GEOConfigGetBOOL()];
  }

  else
  {
    v12 = sub_10006D178();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v16 = 136315650;
      v17 = "[VIOSessionTask configuration]";
      v18 = 2080;
      v19 = "VIOSessionTask.m";
      v20 = 1024;
      v21 = 202;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", &v16, 0x1Cu);
    }

    if (sub_100E03634())
    {
      v13 = sub_10006D178();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = +[NSThread callStackSymbols];
        v16 = 138412290;
        v17 = v14;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%@", &v16, 0xCu);
      }
    }

    v3 = 0;
  }

  return v3;
}

- (BOOL)shouldStartVLFSession
{
  v3 = sub_100AF99D4();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    if ([objc_opt_class() isVLFModeEnabled])
    {
      v4 = @"YES";
    }

    else
    {
      v4 = @"NO";
    }

    v5 = v4;
    session = [(VIOSessionTask *)self session];
    if (session)
    {
      v6 = @"YES";
    }

    else
    {
      v6 = @"NO";
    }

    v7 = v6;
    session2 = [(VIOSessionTask *)self session];
    if ([session2 state] == 1)
    {
      v9 = @"YES";
    }

    else
    {
      v9 = @"NO";
    }

    v10 = v9;
    session3 = [(VIOSessionTask *)self session];
    technique = [session3 technique];
    if ([technique vlfLocalized])
    {
      v13 = @"YES";
    }

    else
    {
      v13 = @"NO";
    }

    v14 = v13;
    *buf = 138413058;
    v23 = v5;
    v24 = 2112;
    v25 = v7;
    v26 = 2112;
    v27 = v10;
    v28 = 2112;
    v29 = v14;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "shouldStartVLFSession: (isVLFModeEnabled:%@) && (session!=nil:%@) && (state==running:%@) && (vlfLocalized:%@)", buf, 0x2Au);
  }

  if (![objc_opt_class() isVLFModeEnabled])
  {
    return 0;
  }

  session4 = [(VIOSessionTask *)self session];
  if (session4)
  {
    session5 = [(VIOSessionTask *)self session];
    if ([session5 state] == 1)
    {
      session6 = [(VIOSessionTask *)self session];
      technique2 = [session6 technique];
      vlfLocalized = [technique2 vlfLocalized];
    }

    else
    {
      vlfLocalized = 0;
    }
  }

  else
  {
    vlfLocalized = 0;
  }

  return vlfLocalized;
}

- (BOOL)shouldStartVIOSession
{
  session = [(VIOSessionTask *)self session];

  if (session)
  {
    if (![(VIOSessionTask *)self shouldStartVLFSession])
    {
      platformController = [(VIOSessionTask *)self platformController];
      chromeViewController = [platformController chromeViewController];
      _maps_uiScene = [chromeViewController _maps_uiScene];
      activationState = [_maps_uiScene activationState];

      if (activationState >= 2)
      {
        currentRoutePlanningSession3 = sub_100AF99D4();
        if (!os_log_type_enabled(currentRoutePlanningSession3, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_9;
        }

        v35 = 134217984;
        v36 = activationState;
        v5 = "Our scene's activation state is not foreground (%ld); VIO should not start";
        v6 = currentRoutePlanningSession3;
        v7 = 12;
        goto LABEL_8;
      }

      currentRoutePlanningSession = [(VIOSessionTask *)self currentRoutePlanningSession];

      if (currentRoutePlanningSession)
      {
        v15 = sub_100AF99D4();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          if ([objc_opt_class() isVIOModeEnabledInRoutePlanning])
          {
            v16 = @"YES";
          }

          else
          {
            v16 = @"NO";
          }

          v17 = v16;
          currentRoutePlanningSession2 = [(VIOSessionTask *)self currentRoutePlanningSession];
          if ([currentRoutePlanningSession2 currentTransportType] == 2)
          {
            v19 = @"YES";
          }

          else
          {
            v19 = @"NO";
          }

          v20 = v19;
          v35 = 138412546;
          v36 = v17;
          v37 = 2112;
          v38 = v20;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "shouldStartVIOSession route planning: (isVIOModeEnabledInRoutePlanning:%@) && (transportType==Walk:%@)", &v35, 0x16u);
        }

        if ([objc_opt_class() isVIOModeEnabledInRoutePlanning])
        {
          currentRoutePlanningSession3 = [(VIOSessionTask *)self currentRoutePlanningSession];
          v8 = [currentRoutePlanningSession3 currentTransportType]== 2;
          goto LABEL_10;
        }
      }

      else
      {
        currentNavigationSession = [(VIOSessionTask *)self currentNavigationSession];
        if (!currentNavigationSession || (v22 = currentNavigationSession, -[VIOSessionTask currentNavigationSession](self, "currentNavigationSession"), v23 = objc_claimAutoreleasedReturnValue(), v24 = [v23 guidanceType], v23, v22, v24 == 2))
        {
          currentRoutePlanningSession3 = sub_100AF99D4();
          if (!os_log_type_enabled(currentRoutePlanningSession3, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_9;
          }

          LOWORD(v35) = 0;
          v5 = "shouldStartVIOSession not in nav nor route planning: NO";
          goto LABEL_7;
        }

        v25 = sub_100AF99D4();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
        {
          if ([objc_opt_class() isVIOModeEnabled])
          {
            v26 = @"YES";
          }

          else
          {
            v26 = @"NO";
          }

          v27 = v26;
          currentNavigationSession2 = [(VIOSessionTask *)self currentNavigationSession];
          if ([currentNavigationSession2 currentTransportType] == 2)
          {
            v29 = @"YES";
          }

          else
          {
            v29 = @"NO";
          }

          v30 = v29;
          currentNavigationSession3 = [(VIOSessionTask *)self currentNavigationSession];
          if ([currentNavigationSession3 navigationType] == 3)
          {
            v32 = @"YES";
          }

          else
          {
            v32 = @"NO";
          }

          v33 = v32;
          v35 = 138412802;
          v36 = v27;
          v37 = 2112;
          v38 = v30;
          v39 = 2112;
          v40 = v33;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEBUG, "shouldStartVIOSession nav: (isVIOModeEnabled:%@) && (transportType==Walk:%@) && (navigationType==TBT:%@)", &v35, 0x20u);
        }

        if ([objc_opt_class() isVIOModeEnabled])
        {
          currentRoutePlanningSession3 = [(VIOSessionTask *)self currentNavigationSession];
          if ([currentRoutePlanningSession3 currentTransportType]== 2)
          {
            currentNavigationSession4 = [(VIOSessionTask *)self currentNavigationSession];
            v8 = [currentNavigationSession4 navigationType] == 3;

            goto LABEL_10;
          }

          goto LABEL_9;
        }
      }

      return 0;
    }

    currentRoutePlanningSession3 = sub_100AF99D4();
    if (os_log_type_enabled(currentRoutePlanningSession3, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v35) = 0;
      v5 = "Post-VLF VIO should start instead; VIO should not start";
LABEL_7:
      v6 = currentRoutePlanningSession3;
      v7 = 2;
LABEL_8:
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, v5, &v35, v7);
    }
  }

  else
  {
    currentRoutePlanningSession3 = sub_100AF99D4();
    if (os_log_type_enabled(currentRoutePlanningSession3, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v35) = 0;
      v5 = "We don't own the session; VIO should not start";
      goto LABEL_7;
    }
  }

LABEL_9:
  v8 = 0;
LABEL_10:

  return v8;
}

- (id)activeMonitors
{
  monitors = [(VIOSessionTask *)self monitors];
  v3 = [monitors copy];

  return v3;
}

- (void)dealloc
{
  v3 = +[NSUserDefaults standardUserDefaults];
  [v3 removeObserver:self forKeyPath:@"MapsWalkingEnableImageBasedHeading"];

  v4 = +[MapsARSessionManager sharedManager];
  [v4 resignSessionWithOwner:self];

  v5.receiver = self;
  v5.super_class = VIOSessionTask;
  [(VIOSessionTask *)&v5 dealloc];
}

- (VIOSessionTask)initWithPlatformController:(id)controller
{
  controllerCopy = controller;
  if (!controllerCopy)
  {
    v19 = sub_10006D178();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v24 = "[VIOSessionTask initWithPlatformController:]";
      v25 = 2080;
      v26 = "VIOSessionTask.m";
      v27 = 1024;
      v28 = 74;
      v29 = 2080;
      v30 = "platformController != nil";
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%s [%s:%d] Invalid parameter not satisfying: %s", buf, 0x26u);
    }

    if (sub_100E03634())
    {
      v20 = sub_10006D178();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v24 = v21;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  v22.receiver = self;
  v22.super_class = VIOSessionTask;
  v5 = [(VIOSessionTask *)&v22 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_platformController, controllerCopy);
    v7 = +[NSMutableSet set];
    monitors = v6->_monitors;
    v6->_monitors = v7;

    v9 = objc_alloc_init(VIOSessionAnalyticsCapturer);
    analyticsCapturer = v6->_analyticsCapturer;
    v6->_analyticsCapturer = v9;

    v11 = +[MKLocationManager sharedLocationManager];
    [v11 setFusionInfoEnabled:1];

    v12 = +[NSUserDefaults standardUserDefaults];
    [v12 addObserver:v6 forKeyPath:@"MapsWalkingEnableImageBasedHeading" options:1 context:0];

    v13 = +[NSNotificationCenter defaultCenter];
    WeakRetained = objc_loadWeakRetained(&v6->_platformController);
    chromeViewController = [WeakRetained chromeViewController];
    _maps_uiScene = [chromeViewController _maps_uiScene];
    [v13 addObserver:v6 selector:"sceneDidActivateNotification:" name:UISceneDidActivateNotification object:_maps_uiScene];

    v17 = +[MapsARSessionManager sharedManager];
    [v17 requestSessionWithOwner:v6];
  }

  return v6;
}

+ (BOOL)isVLFModeEnabled
{
  if (!+[VLFSessionTask isVLFModeSupported]|| !GEOConfigGetBOOL())
  {
    return 0;
  }

  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 BOOLForKey:@"MapsWalkingEnableImageBasedHeading"];

  return v3;
}

+ (BOOL)isVIOModeEnabledInRoutePlanning
{
  isVIOModeEnabled = [self isVIOModeEnabled];
  if (isVIOModeEnabled)
  {

    LOBYTE(isVIOModeEnabled) = GEOConfigGetBOOL();
  }

  return isVIOModeEnabled;
}

+ (BOOL)isVIOModeEnabled
{
  isVIOModeSupported = [self isVIOModeSupported];
  if (isVIOModeSupported)
  {
    v3 = +[NSUserDefaults standardUserDefaults];
    v4 = [v3 BOOLForKey:@"MapsWalkingEnableImageBasedHeading"];

    LOBYTE(isVIOModeSupported) = v4;
  }

  return isVIOModeSupported;
}

+ (BOOL)isVIOModeSupportedInRoutePlanning
{
  isVIOModeSupported = [self isVIOModeSupported];
  if (isVIOModeSupported)
  {

    LOBYTE(isVIOModeSupported) = GEOConfigGetBOOL();
  }

  return isVIOModeSupported;
}

+ (BOOL)isVIOModeSupported
{
  if (qword_10195E010 != -1)
  {
    dispatch_once(&qword_10195E010, &stru_101630BA8);
  }

  if (byte_10195E008)
  {
    return 0;
  }

  return GEOConfigGetBOOL();
}

@end