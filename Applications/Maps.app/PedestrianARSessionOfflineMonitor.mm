@interface PedestrianARSessionOfflineMonitor
+ ($6E15C01CA1BE37A4936191A84F7075E2)enablementGEOConfigKey;
- (PedestrianARSessionOfflineMonitor)initWithObserver:(id)observer;
- (id)debugDescription;
- (void)dealloc;
- (void)updateState;
@end

@implementation PedestrianARSessionOfflineMonitor

- (id)debugDescription
{
  friendlyName = [objc_opt_class() friendlyName];
  v3 = +[MapsOfflineUIHelper sharedHelper];
  isUsingOfflineMaps = [v3 isUsingOfflineMaps];
  v5 = @"NO";
  if (isUsingOfflineMaps)
  {
    v5 = @"YES";
  }

  v6 = [NSString stringWithFormat:@"%@\nusing offline: %@\n", friendlyName, v5];

  return v6;
}

- (void)updateState
{
  v3 = +[MapsOfflineUIHelper sharedHelper];
  isUsingOfflineMaps = [v3 isUsingOfflineMaps];

  v5 = sub_100FCB520();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);
  if (isUsingOfflineMaps)
  {
    if (v6)
    {
      v8 = 134349056;
      selfCopy2 = self;
      v7 = "[%{public}p] Using offline mode; updating state";
LABEL_6:
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, v7, &v8, 0xCu);
    }
  }

  else if (v6)
  {
    v8 = 134349056;
    selfCopy2 = self;
    v7 = "[%{public}p] Not using offline mode; updating state";
    goto LABEL_6;
  }

  [(PedestrianARSessionMonitor *)self setShouldShowPedestrianAR:isUsingOfflineMaps ^ 1];
}

- (void)dealloc
{
  v3 = sub_100FCB520();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134349056;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "[%{public}p] Dealloc", buf, 0xCu);
  }

  v4.receiver = self;
  v4.super_class = PedestrianARSessionOfflineMonitor;
  [(PedestrianARSessionMonitor *)&v4 dealloc];
}

- (PedestrianARSessionOfflineMonitor)initWithObserver:(id)observer
{
  v7.receiver = self;
  v7.super_class = PedestrianARSessionOfflineMonitor;
  v3 = [(PedestrianARSessionMonitor *)&v7 initWithObserver:observer];
  if (v3)
  {
    v4 = sub_100FCB520();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134349056;
      v9 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "[%{public}p] Initializing", buf, 0xCu);
    }

    v5 = +[NSNotificationCenter defaultCenter];
    [v5 addObserver:v3 selector:"_usingOfflineDidChange:" name:@"UsingOfflineMapsStateChangedNotification" object:0];

    [(PedestrianARSessionOfflineMonitor *)v3 updateState];
  }

  return v3;
}

+ ($6E15C01CA1BE37A4936191A84F7075E2)enablementGEOConfigKey
{
  v2 = &unk_101642E50;
  v3 = 579;
  result.var0.var1 = v2;
  *&result.var0.var0 = v3;
  return result;
}

@end