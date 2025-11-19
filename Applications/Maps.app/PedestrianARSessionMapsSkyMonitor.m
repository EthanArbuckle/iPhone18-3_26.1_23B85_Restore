@interface PedestrianARSessionMapsSkyMonitor
- (NSString)debugDescription;
- (PedestrianARSessionMapsSkyMonitor)initWithObserver:(id)a3;
- (void)dealloc;
- (void)updateState;
- (void)valueChangedForMapsFeature:(id)a3 enabled:(BOOL)a4;
@end

@implementation PedestrianARSessionMapsSkyMonitor

- (void)valueChangedForMapsFeature:(id)a3 enabled:(BOOL)a4
{
  v5 = sub_100E08CC0();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 134349056;
    v7 = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}p] One of the Pedestrian AR flags changed; updating state", &v6, 0xCu);
  }

  [(PedestrianARSessionMapsSkyMonitor *)self updateState];
}

- (NSString)debugDescription
{
  v2 = [objc_opt_class() friendlyName];
  if (MapsFeature_IsAvailable_PedestrianAR())
  {
    v3 = @"YES";
  }

  else
  {
    v3 = @"NO";
  }

  v4 = v3;
  if (MapsFeature_IsEnabled_PedestrianAR())
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  v6 = [NSString stringWithFormat:@"%@\nMapsSky authorized: %@\nPedestrian AR enabled: %@\n", v2, v4, v5];

  return v6;
}

- (void)updateState
{
  IsAvailable_PedestrianAR = MapsFeature_IsAvailable_PedestrianAR();
  IsEnabled_PedestrianAR = MapsFeature_IsEnabled_PedestrianAR();
  v5 = sub_100E08CC0();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    if (IsAvailable_PedestrianAR)
    {
      v6 = @"YES";
    }

    else
    {
      v6 = @"NO";
    }

    v7 = v6;
    if (IsEnabled_PedestrianAR)
    {
      v8 = @"YES";
    }

    else
    {
      v8 = @"NO";
    }

    v9 = v8;
    v10 = 134349570;
    v11 = self;
    v12 = 2114;
    v13 = v7;
    v14 = 2114;
    v15 = v9;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}p] Updating state with MapsSky authorized: %{public}@, Pedestrian AR Enabled: %{public}@", &v10, 0x20u);
  }

  [(PedestrianARSessionMonitor *)self setShouldShowPedestrianAR:IsAvailable_PedestrianAR & IsEnabled_PedestrianAR];
}

- (void)dealloc
{
  v3 = sub_100E08CC0();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134349056;
    v6 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "[%{public}p] Deallocing", buf, 0xCu);
  }

  MapsFeature_RemoveDelegateListenerForAllKeys();
  v4.receiver = self;
  v4.super_class = PedestrianARSessionMapsSkyMonitor;
  [(PedestrianARSessionMonitor *)&v4 dealloc];
}

- (PedestrianARSessionMapsSkyMonitor)initWithObserver:(id)a3
{
  v6.receiver = self;
  v6.super_class = PedestrianARSessionMapsSkyMonitor;
  v3 = [(PedestrianARSessionMonitor *)&v6 initWithObserver:a3];
  if (v3)
  {
    v4 = sub_100E08CC0();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134349056;
      v8 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "[%{public}p] Initializing", buf, 0xCu);
    }

    MapsFeature_AddDelegateListener();
    [(PedestrianARSessionMapsSkyMonitor *)v3 updateState];
  }

  return v3;
}

@end