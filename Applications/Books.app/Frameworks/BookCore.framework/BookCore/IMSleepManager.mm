@interface IMSleepManager
+ (id)sharedInstance;
+ (void)didEnterBackground;
+ (void)startSleepTimer;
+ (void)stopSleepTimer;
- (NSCountedSet)objectsHoldingIdleTimerDisabled;
- (unint64_t)idleTimerDisableRefCount;
- (void)cancelIdleTimer;
- (void)dealloc;
- (void)idleTimerFired:(id)a3;
- (void)idleTimerInputCheck:(id)a3;
- (void)reevaluateIdleTimerDisabled;
- (void)releaseIdleTimerDisabledForObject:(id)a3;
- (void)retainIdleTimerDisabledForObject:(id)a3;
- (void)setIdleTimerDelay:(double)a3;
- (void)startIdleTimer:(double)a3;
- (void)startInputCheck;
@end

@implementation IMSleepManager

+ (id)sharedInstance
{
  v2 = a1;
  objc_sync_enter(v2);
  if (!qword_346200)
  {
    v3 = objc_opt_new();
    v4 = qword_346200;
    qword_346200 = v3;
  }

  objc_sync_exit(v2);

  v5 = qword_346200;

  return v5;
}

- (void)dealloc
{
  [(IMSleepManager *)self cancelIdleTimer];
  v3.receiver = self;
  v3.super_class = IMSleepManager;
  [(IMSleepManager *)&v3 dealloc];
}

+ (void)startSleepTimer
{
  if (isPad())
  {
    v2 = 345.0;
  }

  else
  {
    v2 = 225.0;
  }

  v3 = +[IMSleepManager sharedInstance];
  [v3 setIdleTimerDelay:v2];
}

+ (void)stopSleepTimer
{
  v2 = +[IMSleepManager sharedInstance];
  [v2 setIdleTimerDelay:0.0];
}

+ (void)didEnterBackground
{
  v2 = BCSleepManagerLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_INFO, "App entered background.", v3, 2u);
  }
}

- (void)startInputCheck
{
  v3 = [NSTimer scheduledTimerWithTimeInterval:self target:"idleTimerInputCheck:" selector:0 userInfo:0 repeats:15.0];
  idleTimerInputCheck = self->_idleTimerInputCheck;
  self->_idleTimerInputCheck = v3;

  v5 = BCSleepManagerLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 138412290;
    v7 = &off_2EF508;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "Input check timer to: %@", &v6, 0xCu);
  }
}

- (void)idleTimerInputCheck:(id)a3
{
  [(NSTimer *)self->_idleTimerInputCheck invalidate];
  idleTimerInputCheck = self->_idleTimerInputCheck;
  self->_idleTimerInputCheck = 0;

  v10 = +[UIApplication jsa_sharedApplicationIfNotExtension];
  +[NSDate timeIntervalSinceReferenceDate];
  v6 = v5;
  [v10 lastEventDate];
  v8 = v6 - v7;
  [(IMSleepManager *)self idleTimerDelay];
  if (v8 >= v9)
  {
    [(IMSleepManager *)self startInputCheck];
  }

  else
  {
    [(IMSleepManager *)self startIdleTimer:?];
  }
}

- (void)idleTimerFired:(id)a3
{
  v4 = BCSleepManagerLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_INFO, "Idle timer fired", v5, 2u);
  }

  [(IMSleepManager *)self cancelIdleTimer];
  [(IMSleepManager *)self startInputCheck];
}

- (void)startIdleTimer:(double)a3
{
  [(IMSleepManager *)self cancelIdleTimer];
  if (a3 > 0.0)
  {
    v5 = +[UIApplication jsa_sharedApplicationIfNotExtension];
    [v5 lastEventDate];
    if (v6 == 0.0)
    {
      +[NSDate timeIntervalSinceReferenceDate];
      [v5 setLastEventDate:?];
    }

    +[NSDate timeIntervalSinceReferenceDate];
    v8 = v7;
    [v5 lastEventDate];
    v10 = v8 - v9;
    if (v10 < a3)
    {
      v11 = a3 - v10;
      v12 = [NSTimer scheduledTimerWithTimeInterval:self target:"idleTimerFired:" selector:0 userInfo:0 repeats:v11];
      idleTimerReenableTimer = self->_idleTimerReenableTimer;
      self->_idleTimerReenableTimer = v12;

      v14 = BCSleepManagerLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = [NSNumber numberWithDouble:v11];
        v16 = 138412290;
        v17 = v15;
        _os_log_impl(&dword_0, v14, OS_LOG_TYPE_INFO, "Setting idle timer to: %@", &v16, 0xCu);
      }

      [(IMSleepManager *)self retainIdleTimerDisabledForObject:self];
    }
  }
}

- (void)cancelIdleTimer
{
  v3 = BCSleepManagerLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "Cancel idle timer.", v7, 2u);
  }

  [(NSTimer *)self->_idleTimerInputCheck invalidate];
  idleTimerInputCheck = self->_idleTimerInputCheck;
  self->_idleTimerInputCheck = 0;

  idleTimerReenableTimer = self->_idleTimerReenableTimer;
  if (idleTimerReenableTimer)
  {
    [(NSTimer *)idleTimerReenableTimer invalidate];
    v6 = self->_idleTimerReenableTimer;
    self->_idleTimerReenableTimer = 0;

    [(IMSleepManager *)self releaseIdleTimerDisabledForObject:self];
  }
}

- (void)setIdleTimerDelay:(double)a3
{
  v5 = +[UIApplication jsa_sharedApplicationIfNotExtension];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (self->_idleTimerDelay != a3)
    {
      self->_idleTimerDelay = a3;
      [(IMSleepManager *)self startIdleTimer:a3];
    }
  }

  else
  {
    v6 = BCSleepManagerLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1ED94C(v6);
    }
  }
}

- (unint64_t)idleTimerDisableRefCount
{
  v2 = [(IMSleepManager *)self objectsHoldingIdleTimerDisabled];
  v3 = [v2 count];

  return v3;
}

- (NSCountedSet)objectsHoldingIdleTimerDisabled
{
  objectsHoldingIdleTimerDisabled = self->_objectsHoldingIdleTimerDisabled;
  if (!objectsHoldingIdleTimerDisabled)
  {
    v4 = objc_opt_new();
    v5 = self->_objectsHoldingIdleTimerDisabled;
    self->_objectsHoldingIdleTimerDisabled = v4;

    objectsHoldingIdleTimerDisabled = self->_objectsHoldingIdleTimerDisabled;
  }

  return objectsHoldingIdleTimerDisabled;
}

- (void)retainIdleTimerDisabledForObject:(id)a3
{
  v4 = a3;
  v5 = [(IMSleepManager *)self objectsHoldingIdleTimerDisabled];
  [v5 addObject:v4];

  [(IMSleepManager *)self reevaluateIdleTimerDisabled];
}

- (void)releaseIdleTimerDisabledForObject:(id)a3
{
  v4 = a3;
  v5 = [(IMSleepManager *)self objectsHoldingIdleTimerDisabled];
  [v5 removeObject:v4];

  [(IMSleepManager *)self reevaluateIdleTimerDisabled];
}

- (void)reevaluateIdleTimerDisabled
{
  v3 = +[UIApplication jsa_sharedApplicationIfNotExtension];
  [v3 setIdleTimerDisabled:{-[IMSleepManager idleTimerDisableRefCount](self, "idleTimerDisableRefCount") != 0}];
  v4 = BCSleepManagerLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = [v3 isIdleTimerDisabled];
    v6 = [(IMSleepManager *)self objectsHoldingIdleTimerDisabled];
    v7[0] = 67109378;
    v7[1] = v5;
    v8 = 2112;
    v9 = v6;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_INFO, "idleTimerDisabled set to %d with holders: %@", v7, 0x12u);
  }
}

@end