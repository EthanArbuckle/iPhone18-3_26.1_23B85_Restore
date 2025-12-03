@interface MapsBaseLightMonitor
- (MapsBaseLightMonitor)init;
- (void)_notifyDidChange;
- (void)_setMonitoring:(BOOL)monitoring;
- (void)dealloc;
- (void)startMonitoringWithObserver:(id)observer;
- (void)stopMonitoringWithObserver:(id)observer;
@end

@implementation MapsBaseLightMonitor

- (MapsBaseLightMonitor)init
{
  v6.receiver = self;
  v6.super_class = MapsBaseLightMonitor;
  v2 = [(MapsBaseLightMonitor *)&v6 init];
  if (v2)
  {
    v3 = [[GEOObserverHashTable alloc] initWithProtocol:&OBJC_PROTOCOL___MapsLightMonitorObserver queue:&_dispatch_main_q];
    observers = v2->_observers;
    v2->_observers = v3;
  }

  return v2;
}

- (void)_notifyDidChange
{
  v3 = sub_100014EFC();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = 138412290;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%@: notifying observers", &v4, 0xCu);
  }

  [(GEOObserverHashTable *)self->_observers lightMonitorDidUpdate:self];
}

- (void)dealloc
{
  [(MapsBaseLightMonitor *)self _setMonitoring:0];
  v3.receiver = self;
  v3.super_class = MapsBaseLightMonitor;
  [(MapsBaseLightMonitor *)&v3 dealloc];
}

- (void)_setMonitoring:(BOOL)monitoring
{
  if (self->_monitoring != monitoring)
  {
    monitoringCopy = monitoring;
    self->_monitoring = monitoring;
    v5 = sub_100014EFC();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);
    if (monitoringCopy)
    {
      if (v6)
      {
        v8 = 138412290;
        selfCopy2 = self;
        v7 = "%@: started monitoring";
LABEL_7:
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, v7, &v8, 0xCu);
      }
    }

    else if (v6)
    {
      v8 = 138412290;
      selfCopy2 = self;
      v7 = "%@: stopped monitoring";
      goto LABEL_7;
    }
  }
}

- (void)stopMonitoringWithObserver:(id)observer
{
  [(GEOObserverHashTable *)self->_observers unregisterObserver:observer];
  hasObservers = [(GEOObserverHashTable *)self->_observers hasObservers];

  [(MapsBaseLightMonitor *)self _setMonitoring:hasObservers];
}

- (void)startMonitoringWithObserver:(id)observer
{
  [(GEOObserverHashTable *)self->_observers registerObserver:observer];

  [(MapsBaseLightMonitor *)self _setMonitoring:1];
}

@end