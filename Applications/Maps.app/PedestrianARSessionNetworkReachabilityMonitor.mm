@interface PedestrianARSessionNetworkReachabilityMonitor
+ ($6E15C01CA1BE37A4936191A84F7075E2)enablementGEOConfigKey;
- (PedestrianARSessionNetworkReachabilityMonitor)initWithObserver:(id)observer;
- (id)debugDescription;
- (void)dealloc;
- (void)updateState;
@end

@implementation PedestrianARSessionNetworkReachabilityMonitor

- (id)debugDescription
{
  friendlyName = [objc_opt_class() friendlyName];
  networkObserver = [(PedestrianARSessionNetworkReachabilityMonitor *)self networkObserver];
  isNetworkReachable = [networkObserver isNetworkReachable];
  v6 = @"NO";
  if (isNetworkReachable)
  {
    v6 = @"YES";
  }

  v7 = [NSString stringWithFormat:@"%@\nnetwork reachable: %@\n", friendlyName, v6];

  return v7;
}

- (void)updateState
{
  networkObserver = [(PedestrianARSessionNetworkReachabilityMonitor *)self networkObserver];
  isNetworkReachable = [networkObserver isNetworkReachable];

  v5 = sub_100A6A3CC();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);
  if (isNetworkReachable)
  {
    if (v6)
    {
      v8 = 134349056;
      selfCopy2 = self;
      v7 = "[%{public}p] Detected that network is reachable; updating state";
LABEL_6:
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, v7, &v8, 0xCu);
    }
  }

  else if (v6)
  {
    v8 = 134349056;
    selfCopy2 = self;
    v7 = "[%{public}p] Detected that network is not reachable; updating state";
    goto LABEL_6;
  }

  [(PedestrianARSessionMonitor *)self setShouldShowPedestrianAR:isNetworkReachable];
}

- (void)dealloc
{
  v3 = sub_100A6A3CC();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134349056;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "[%{public}p] Dealloc", buf, 0xCu);
  }

  [(GEONetworkObserver *)self->_networkObserver removeNetworkReachableObserver:self];
  v4.receiver = self;
  v4.super_class = PedestrianARSessionNetworkReachabilityMonitor;
  [(PedestrianARSessionMonitor *)&v4 dealloc];
}

- (PedestrianARSessionNetworkReachabilityMonitor)initWithObserver:(id)observer
{
  v8.receiver = self;
  v8.super_class = PedestrianARSessionNetworkReachabilityMonitor;
  v3 = [(PedestrianARSessionMonitor *)&v8 initWithObserver:observer];
  if (v3)
  {
    v4 = sub_100A6A3CC();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134349056;
      v10 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "[%{public}p] Initializing", buf, 0xCu);
    }

    v5 = +[GEONetworkObserver sharedNetworkObserver];
    networkObserver = v3->_networkObserver;
    v3->_networkObserver = v5;

    [(GEONetworkObserver *)v3->_networkObserver addNetworkReachableObserver:v3 selector:"networkReachabilityChangedNotification:"];
    [(PedestrianARSessionNetworkReachabilityMonitor *)v3 updateState];
  }

  return v3;
}

+ ($6E15C01CA1BE37A4936191A84F7075E2)enablementGEOConfigKey
{
  v2 = &unk_101640480;
  v3 = 372;
  result.var0.var1 = v2;
  *&result.var0.var0 = v3;
  return result;
}

@end