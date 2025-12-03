@interface PedestrianARSessionMonitor
+ ($6E15C01CA1BE37A4936191A84F7075E2)enablementGEOConfigKey;
+ (BOOL)isEnabled;
+ (id)friendlyName;
- (PedestrianARSessionMonitor)initWithObserver:(id)observer;
- (PedestrianARSessionMonitorObserver)observer;
- (void)dealloc;
- (void)setShouldShowPedestrianAR:(BOOL)r;
@end

@implementation PedestrianARSessionMonitor

- (PedestrianARSessionMonitorObserver)observer
{
  WeakRetained = objc_loadWeakRetained(&self->_observer);

  return WeakRetained;
}

- (void)setShouldShowPedestrianAR:(BOOL)r
{
  if (self->_shouldShowPedestrianAR != r)
  {
    rCopy = r;
    v5 = sub_100A39E8C();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v8 = @"NO";
      if (rCopy)
      {
        v8 = @"YES";
      }

      v9 = v8;
      v11 = 134349570;
      selfCopy = self;
      v13 = 2112;
      v14 = v7;
      v15 = 2112;
      v16 = v9;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}p] %@: updating state: %@", &v11, 0x20u);
    }

    self->_shouldShowPedestrianAR = rCopy;
    observer = [(PedestrianARSessionMonitor *)self observer];
    [observer monitor:self didChangeState:self->_shouldShowPedestrianAR];
  }
}

- (void)dealloc
{
  v3 = sub_100A39E8C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    *buf = 134349314;
    selfCopy = self;
    v9 = 2112;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "[%{public}p] %@ deallocing", buf, 0x16u);
  }

  v6.receiver = self;
  v6.super_class = PedestrianARSessionMonitor;
  [(PedestrianARSessionMonitor *)&v6 dealloc];
}

- (PedestrianARSessionMonitor)initWithObserver:(id)observer
{
  observerCopy = observer;
  if (!observerCopy)
  {
    v10 = sub_10006D178();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v15 = "[PedestrianARSessionMonitor initWithObserver:]";
      v16 = 2080;
      v17 = "PedestrianARSessionMonitor.m";
      v18 = 1024;
      v19 = 23;
      v20 = 2080;
      v21 = "observer != nil";
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s [%s:%d] Invalid parameter not satisfying: %s", buf, 0x26u);
    }

    if (sub_100E03634())
    {
      v11 = sub_10006D178();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v15 = v12;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  v13.receiver = self;
  v13.super_class = PedestrianARSessionMonitor;
  v5 = [(PedestrianARSessionMonitor *)&v13 init];
  if (v5)
  {
    v6 = sub_100A39E8C();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      *buf = 134349314;
      v15 = v5;
      v16 = 2112;
      v17 = v8;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "[%{public}p] %@ initializing", buf, 0x16u);
    }

    objc_storeWeak(&v5->_observer, observerCopy);
  }

  return v5;
}

+ (id)friendlyName
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

+ ($6E15C01CA1BE37A4936191A84F7075E2)enablementGEOConfigKey
{
  v2 = sub_10006D178();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v7 = 136315650;
    v8 = "+[PedestrianARSessionMonitor enablementGEOConfigKey]";
    v9 = 2080;
    v10 = "PedestrianARSessionMonitor.m";
    v11 = 1024;
    v12 = 48;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", &v7, 0x1Cu);
  }

  if (sub_100E03634())
  {
    v3 = sub_10006D178();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = +[NSThread callStackSymbols];
      v7 = 138412290;
      v8 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%@", &v7, 0xCu);
    }
  }

  v5 = GEOConfigKey_InvalidBOOL[0];
  v6 = GEOConfigKey_InvalidBOOL[1];
  result.var0.var1 = v6;
  *&result.var0.var0 = v5;
  return result;
}

+ (BOOL)isEnabled
{
  [self enablementGEOConfigKey];

  return GEOConfigGetBOOL();
}

@end