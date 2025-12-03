@interface NavigationPowerLogger
- (NavigationPowerLogger)init;
- (id)_currentNavStateDictionary;
- (id)_powerLogLightLevelValue;
- (id)_powerLogNavAppStateValue;
- (id)_powerLogNavTransportTypeValue;
- (void)_logCurrentNavState:(BOOL)state;
- (void)_navigationEnded;
- (void)_navigationStarted;
- (void)_resetLogEvent;
- (void)dealloc;
- (void)navigationService:(id)service didChangeFromState:(unint64_t)state toState:(unint64_t)toState;
- (void)screenLayoutDidChangeWithReason:(unint64_t)reason;
- (void)setDisplayingNavOnLockScreen:(BOOL)screen;
- (void)setMapType:(unint64_t)type;
- (void)startLogging;
- (void)stopLogging;
@end

@implementation NavigationPowerLogger

- (void)screenLayoutDidChangeWithReason:(unint64_t)reason
{
  v4 = +[MapsScreenLayoutMonitor sharedMonitor];
  isLocked = [v4 isLocked];

  if (self->_screenIsLocked != isLocked)
  {
    self->_screenIsLocked = isLocked;

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
  _powerLogNavTransportTypeValue = [(NavigationPowerLogger *)self _powerLogNavTransportTypeValue];
  v10[0] = _powerLogNavTransportTypeValue;
  v9[1] = @"NavigationAppState";
  _powerLogNavAppStateValue = [(NavigationPowerLogger *)self _powerLogNavAppStateValue];
  v10[1] = _powerLogNavAppStateValue;
  v9[2] = @"NightMode";
  _powerLogLightLevelValue = [(NavigationPowerLogger *)self _powerLogLightLevelValue];
  v10[2] = _powerLogLightLevelValue;
  v9[3] = @"NavigationMapType";
  v6 = [NSNumber numberWithUnsignedInteger:[(NavigationPowerLogger *)self mapType]];
  v10[3] = v6;
  v7 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:4];

  return v7;
}

- (void)_logCurrentNavState:(BOOL)state
{
  if (self->_shouldLog)
  {
    _currentNavStateDictionary = [(NavigationPowerLogger *)self _currentNavStateDictionary];
    obj = _currentNavStateDictionary;
    if (state || (v8 = [(NSDictionary *)self->_trackedState isEqualToDictionary:_currentNavStateDictionary], v7 = obj, (v8 & 1) == 0))
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

- (void)setMapType:(unint64_t)type
{
  if (self->_mapType != type)
  {
    self->_mapType = type;
    [(NavigationPowerLogger *)self _logCurrentNavStateIfNeeded];
  }
}

- (void)setDisplayingNavOnLockScreen:(BOOL)screen
{
  if (self->_displayingNavOnLockScreen != screen)
  {
    self->_displayingNavOnLockScreen = screen;
    [(NavigationPowerLogger *)self _logCurrentNavStateIfNeeded];
  }
}

- (void)navigationService:(id)service didChangeFromState:(unint64_t)state toState:(unint64_t)toState
{
  if (MNNavigationServiceStateChangedToNavigating())
  {

    [(NavigationPowerLogger *)self _navigationStarted];
  }

  else if (!toState)
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
    isInNavigatingState = [v5 isInNavigatingState];

    if (isInNavigatingState)
    {
      [(NavigationPowerLogger *)v2 _navigationStarted];
    }
  }

  return v2;
}

@end