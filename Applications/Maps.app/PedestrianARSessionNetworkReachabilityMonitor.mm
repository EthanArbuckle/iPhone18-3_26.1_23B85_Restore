@interface PedestrianARSessionNetworkReachabilityMonitor
+ ($6E15C01CA1BE37A4936191A84F7075E2)enablementGEOConfigKey;
- (PedestrianARSessionNetworkReachabilityMonitor)initWithObserver:(id)a3;
- (id)debugDescription;
- (void)dealloc;
- (void)updateState;
@end

@implementation PedestrianARSessionNetworkReachabilityMonitor

- (id)debugDescription
{
  v3 = [objc_opt_class() friendlyName];
  v4 = [(PedestrianARSessionNetworkReachabilityMonitor *)self networkObserver];
  v5 = [v4 isNetworkReachable];
  v6 = @"NO";
  if (v5)
  {
    v6 = @"YES";
  }

  v7 = [NSString stringWithFormat:@"%@\nnetwork reachable: %@\n", v3, v6];

  return v7;
}

- (void)updateState
{
  v3 = [(PedestrianARSessionNetworkReachabilityMonitor *)self networkObserver];
  v4 = [v3 isNetworkReachable];

  v5 = sub_100A6A3CC();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);
  if (v4)
  {
    if (v6)
    {
      v8 = 134349056;
      v9 = self;
      v7 = "[%{public}p] Detected that network is reachable; updating state";
LABEL_6:
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, v7, &v8, 0xCu);
    }
  }

  else if (v6)
  {
    v8 = 134349056;
    v9 = self;
    v7 = "[%{public}p] Detected that network is not reachable; updating state";
    goto LABEL_6;
  }

  [(PedestrianARSessionMonitor *)self setShouldShowPedestrianAR:v4];
}

- (void)dealloc
{
  v3 = sub_100A6A3CC();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134349056;
    v6 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "[%{public}p] Dealloc", buf, 0xCu);
  }

  [(GEONetworkObserver *)self->_networkObserver removeNetworkReachableObserver:self];
  v4.receiver = self;
  v4.super_class = PedestrianARSessionNetworkReachabilityMonitor;
  [(PedestrianARSessionMonitor *)&v4 dealloc];
}

- (PedestrianARSessionNetworkReachabilityMonitor)initWithObserver:(id)a3
{
  v8.receiver = self;
  v8.super_class = PedestrianARSessionNetworkReachabilityMonitor;
  v3 = [(PedestrianARSessionMonitor *)&v8 initWithObserver:a3];
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