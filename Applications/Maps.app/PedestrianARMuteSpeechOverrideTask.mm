@interface PedestrianARMuteSpeechOverrideTask
- (PedestrianARMuteSpeechOverrideTask)initWithNavigationService:(id)service;
- (void)dealloc;
- (void)pedestrianARViewControllerDidAppearNotification:(id)notification;
- (void)pedestrianARViewControllerDidDisappearNotification:(id)notification;
- (void)platformController:(id)controller didChangeCurrentSessionFromSession:(id)session toSession:(id)toSession;
@end

@implementation PedestrianARMuteSpeechOverrideTask

- (void)platformController:(id)controller didChangeCurrentSessionFromSession:(id)session toSession:(id)toSession
{
  toSessionCopy = toSession;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = toSessionCopy;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  [(PedestrianARMuteSpeechOverrideTask *)self setNavigationSession:v7];
}

- (void)pedestrianARViewControllerDidDisappearNotification:(id)notification
{
  navigationSession = [(PedestrianARMuteSpeechOverrideTask *)self navigationSession];
  guidanceType = [navigationSession guidanceType];

  v6 = sub_1009C612C();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
  if (guidanceType == 2)
  {
    if (v7)
    {
      v9 = 134349056;
      selfCopy2 = self;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[%{public}p] Ignoring AR did disappear notification during route preview", &v9, 0xCu);
    }
  }

  else
  {
    if (v7)
    {
      v9 = 134349056;
      selfCopy2 = self;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[%{public}p] Restoring previous voice guidance level.", &v9, 0xCu);
    }

    navigationService = [(PedestrianARMuteSpeechOverrideTask *)self navigationService];
    [navigationService setVoiceGuidanceLevelOverride:self->_previousVoiceGuidanceLevel];

    self->_previousVoiceGuidanceLevel = -1;
  }
}

- (void)pedestrianARViewControllerDidAppearNotification:(id)notification
{
  navigationSession = [(PedestrianARMuteSpeechOverrideTask *)self navigationSession];
  guidanceType = [navigationSession guidanceType];

  navigationService2 = sub_1009C612C();
  v7 = os_log_type_enabled(navigationService2, OS_LOG_TYPE_INFO);
  if (guidanceType == 2)
  {
    if (v7)
    {
      v9 = 134349056;
      selfCopy2 = self;
      _os_log_impl(&_mh_execute_header, navigationService2, OS_LOG_TYPE_INFO, "[%{public}p] Ignoring AR did appear notification during route preview", &v9, 0xCu);
    }
  }

  else
  {
    if (v7)
    {
      v9 = 134349056;
      selfCopy2 = self;
      _os_log_impl(&_mh_execute_header, navigationService2, OS_LOG_TYPE_INFO, "[%{public}p] Setting voice guidance level override to None.", &v9, 0xCu);
    }

    navigationService = [(PedestrianARMuteSpeechOverrideTask *)self navigationService];
    self->_previousVoiceGuidanceLevel = [navigationService voiceGuidanceLevel];

    navigationService2 = [(PedestrianARMuteSpeechOverrideTask *)self navigationService];
    [navigationService2 setVoiceGuidanceLevelOverride:0];
  }
}

- (void)dealloc
{
  v3 = sub_1009C612C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134349056;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "[%{public}p] Deallocating", buf, 0xCu);
  }

  v4.receiver = self;
  v4.super_class = PedestrianARMuteSpeechOverrideTask;
  [(PedestrianARMuteSpeechOverrideTask *)&v4 dealloc];
}

- (PedestrianARMuteSpeechOverrideTask)initWithNavigationService:(id)service
{
  serviceCopy = service;
  if (!serviceCopy)
  {
    v11 = sub_10006D178();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v16 = "[PedestrianARMuteSpeechOverrideTask initWithNavigationService:]";
      v17 = 2080;
      v18 = "PedestrianARMuteSpeechOverrideTask.m";
      v19 = 1024;
      v20 = 38;
      v21 = 2080;
      v22 = "navigationService != nil";
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%s [%s:%d] Invalid parameter not satisfying: %s", buf, 0x26u);
    }

    if (sub_100E03634())
    {
      v12 = sub_10006D178();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v16 = v13;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  v14.receiver = self;
  v14.super_class = PedestrianARMuteSpeechOverrideTask;
  v6 = [(PedestrianARMuteSpeechOverrideTask *)&v14 init];
  if (v6)
  {
    v7 = sub_1009C612C();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134349056;
      v16 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "[%{public}p] Initializing", buf, 0xCu);
    }

    objc_storeStrong(&v6->_navigationService, service);
    v6->_previousVoiceGuidanceLevel = -1;
    v8 = +[NSNotificationCenter defaultCenter];
    [v8 addObserver:v6 selector:"pedestrianARViewControllerDidAppearNotification:" name:@"PedestrianARViewControllerDidAppearNotification" object:0];

    v9 = +[NSNotificationCenter defaultCenter];
    [v9 addObserver:v6 selector:"pedestrianARViewControllerDidDisappearNotification:" name:@"PedestrianARViewControllerDidDisappearNotification" object:0];
  }

  return v6;
}

@end