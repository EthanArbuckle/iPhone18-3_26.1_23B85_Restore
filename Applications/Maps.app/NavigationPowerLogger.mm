@interface NavigationPowerLogger
- (NavigationPowerLogger)init;
- (id)_currentNavStateDictionary;
- (id)_powerLogLightLevelValue;
- (id)_powerLogNavAppStateValue;
- (id)_powerLogNavTransportTypeValue;
- (void)_logCurrentNavState:(BOOL)a3;
- (void)_navigationEnded;
- (void)_navigationStarted;
- (void)_resetLogEvent;
- (void)dealloc;
- (void)navigationService:(id)a3 didChangeFromState:(unint64_t)a4 toState:(unint64_t)a5;
- (void)screenLayoutDidChangeWithReason:(unint64_t)a3;
- (void)setDisplayingNavOnLockScreen:(BOOL)a3;
- (void)setMapType:(unint64_t)a3;
- (void)startLogging;
- (void)stopLogging;
@end

@implementation NavigationPowerLogger

- (void)screenLayoutDidChangeWithReason:(unint64_t)a3
{
  v4 = +[MapsScreenLayoutMonitor sharedMonitor];
  v5 = [v4 isLocked];

  if (self->_screenIsLocked != v5)
  {
    self->_screenIsLocked = v5;

    [(NavigationPowerLogger *)self _logCurrentNavStateIfNeeded];
  }
}

- (id)_powerLogLightLevelValue
{
  v2 = +[MapsLightLevelController sharedController];
  if ([v2 shouldUseNightMode])
  {
    v3 = &off_1016E6968;
  }

  else
  {
    v3 = &off_1016E6998;
  }

  v4 = v3;

  return v3;
}

- (id)_powerLogNavTransportTypeValue
{
  transportType = self->_transportType;
  if (transportType > 6)
  {
    return &off_1016E6968;
  }

  else
  {
    return (&off_101627A48)[transportType];
  }
}

- (id)_powerLogNavAppStateValue
{
  if ([(NavigationPowerLogger *)self displayingNavOnLockScreen]&& self->_screenIsLocked)
  {
    return &off_1016E6938;
  }

  v4 = +[MKApplicationStateMonitor sharedInstance];
  if ([v4 isInBackground])
  {
    v3 = &off_1016E6950;
  }

  else
  {
    v3 = &off_1016E6968;
  }

  return v3;
}

- (id)_currentNavStateDictionary
{
  v9[0] = @"NavigationType";
  v3 = [(NavigationPowerLogger *)self _powerLogNavTransportTypeValue];
  v10[0] = v3;
  v9[1] = @"NavigationAppState";
  v4 = [(NavigationPowerLogger *)self _powerLogNavAppStateValue];
  v10[1] = v4;
  v9[2] = @"NightMode";
  v5 = [(NavigationPowerLogger *)self _powerLogLightLevelValue];
  v10[2] = v5;
  v9[3] = @"NavigationMapType";
  v6 = [NSNumber numberWithUnsignedInteger:[(NavigationPowerLogger *)self mapType]];
  v10[3] = v6;
  v7 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:4];

  return v7;
}

- (void)_logCurrentNavState:(BOOL)a3
{
  if (self->_shouldLog)
  {
    v6 = [(NavigationPowerLogger *)self _currentNavStateDictionary];
    obj = v6;
    if (a3 || (v8 = [(NSDictionary *)self->_trackedState isEqualToDictionary:v6], v7 = obj, (v8 & 1) == 0))
    {
      v9 = +[NSDate date];
      p_trackedState = &self->_trackedState;
      if (self->_trackedState)
      {
        v11 = [obj mutableCopy];
        [(NSDate *)self->_eventStartDate timeIntervalSince1970];
        v12 = [NSNumber numberWithDouble:?];
        [(__CFString *)v11 setObject:v12 forKeyedSubscript:@"StartUnix"];

        [(NSDate *)v9 timeIntervalSince1970];
        v13 = [NSNumber numberWithDouble:?];
        [(__CFString *)v11 setObject:v13 forKeyedSubscript:@"EndUnix"];

        CFRetain(@"MapsNavigationStateEvent");
        if (v11)
        {
          CFRetain(v11);
          PLLogRegisteredEvent();
          CFRelease(@"MapsNavigationStateEvent");
          v14 = v11;
        }

        else
        {
          v14 = @"MapsNavigationStateEvent";
          PLLogRegisteredEvent();
        }

        CFRelease(v14);
      }

      eventStartDate = self->_eventStartDate;
      self->_eventStartDate = v9;
      v16 = v9;

      objc_storeStrong(p_trackedState, obj);
      v7 = obj;
    }
  }
}

- (void)_resetLogEvent
{
  trackedState = self->_trackedState;
  self->_trackedState = 0;

  eventStartDate = self->_eventStartDate;
  self->_eventStartDate = 0;
}

- (void)_navigationEnded
{
  v3 = +[MapsScreenLayoutMonitor sharedMonitor];
  [v3 stopMonitoringWithObserver:self];

  [(NavigationPowerLogger *)self _logCurrentNavState:1];

  [(NavigationPowerLogger *)self _resetLogEvent];
}

- (void)_navigationStarted
{
  v3 = +[MNNavigationService sharedService];
  self->_transportType = [v3 navigationTransportType];

  [(NavigationPowerLogger *)self _resetLogEvent];
  v4 = +[MapsScreenLayoutMonitor sharedMonitor];
  self->_screenIsLocked = [v4 isLocked];

  [(NavigationPowerLogger *)self _logCurrentNavState:1];
  v5 = +[MapsScreenLayoutMonitor sharedMonitor];
  [v5 startMonitoringWithObserver:self];
}

- (void)stopLogging
{
  if (self->_shouldLog)
  {
    [(NavigationPowerLogger *)self _logCurrentNavState:1];
    [(NavigationPowerLogger *)self _resetLogEvent];
    self->_shouldLog = 0;
  }
}

- (void)startLogging
{
  if (!self->_shouldLog)
  {
    self->_shouldLog = 1;
    [(NavigationPowerLogger *)self _logCurrentNavStateIfNeeded];
  }
}

- (void)setMapType:(unint64_t)a3
{
  if (self->_mapType != a3)
  {
    self->_mapType = a3;
    [(NavigationPowerLogger *)self _logCurrentNavStateIfNeeded];
  }
}

- (void)setDisplayingNavOnLockScreen:(BOOL)a3
{
  if (self->_displayingNavOnLockScreen != a3)
  {
    self->_displayingNavOnLockScreen = a3;
    [(NavigationPowerLogger *)self _logCurrentNavStateIfNeeded];
  }
}

- (void)navigationService:(id)a3 didChangeFromState:(unint64_t)a4 toState:(unint64_t)a5
{
  if (MNNavigationServiceStateChangedToNavigating())
  {

    [(NavigationPowerLogger *)self _navigationStarted];
  }

  else if (!a5)
  {

    [(NavigationPowerLogger *)self _navigationEnded];
  }
}

- (void)dealloc
{
  v3 = +[MNNavigationService sharedService];
  [v3 unregisterObserver:self];

  v4 = +[MapsScreenLayoutMonitor sharedMonitor];
  [v4 stopMonitoringWithObserver:self];

  if (self->_trackedState)
  {
    [(NavigationPowerLogger *)self _logCurrentNavState:1];
  }

  v5.receiver = self;
  v5.super_class = NavigationPowerLogger;
  [(NavigationPowerLogger *)&v5 dealloc];
}

- (NavigationPowerLogger)init
{
  v8.receiver = self;
  v8.super_class = NavigationPowerLogger;
  v2 = [(NavigationPowerLogger *)&v8 init];
  if (v2)
  {
    v3 = +[MNNavigationService sharedService];
    [v3 registerObserver:v2];

    v4 = +[MapsScreenLayoutMonitor sharedMonitor];
    [v4 startMonitoringWithObserver:v2];

    v5 = +[MNNavigationService sharedService];
    v6 = [v5 isInNavigatingState];

    if (v6)
    {
      [(NavigationPowerLogger *)v2 _navigationStarted];
    }
  }

  return v2;
}

@end