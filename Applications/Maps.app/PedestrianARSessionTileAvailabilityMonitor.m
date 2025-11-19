@interface PedestrianARSessionTileAvailabilityMonitor
+ ($6E15C01CA1BE37A4936191A84F7075E2)enablementGEOConfigKey;
- (NSString)debugDescription;
- (PedestrianARSessionTileAvailabilityMonitor)initWithObserver:(id)a3 tileObserver:(id)a4;
- (void)dealloc;
- (void)updateState;
@end

@implementation PedestrianARSessionTileAvailabilityMonitor

- (NSString)debugDescription
{
  v3 = [objc_opt_class() friendlyName];
  v4 = [(PedestrianARSessionTileAvailabilityMonitor *)self tileObserver];
  v5 = [v4 areTilesAvailable];
  v6 = @"NO";
  if (v5)
  {
    v6 = @"YES";
  }

  v7 = v6;
  GEOConfigGetDouble();
  v9 = v8;
  GEOConfigGetDouble();
  v11 = [NSString stringWithFormat:@"%@\nare tiles available: %@\nerror timeout threshold (seconds): %.2f\nminimum distance threshold (meters): %.2f\n", v3, v7, v9, v10];

  return v11;
}

- (void)updateState
{
  v3 = [(PedestrianARSessionTileAvailabilityMonitor *)self tileObserver];
  v4 = [v3 areTilesAvailable];

  v5 = sub_100F78920();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);
  if (v4)
  {
    if (v6)
    {
      v8 = 134349056;
      v9 = self;
      v7 = "[%{public}p] Tiles are available";
LABEL_6:
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, v7, &v8, 0xCu);
    }
  }

  else if (v6)
  {
    v8 = 134349056;
    v9 = self;
    v7 = "[%{public}p] Tiles are not available";
    goto LABEL_6;
  }

  [(PedestrianARSessionMonitor *)self setShouldShowPedestrianAR:v4];
}

- (void)dealloc
{
  v3 = sub_100F78920();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134349056;
    v6 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "[%{public}p] Deallocing", buf, 0xCu);
  }

  [(VLFTileObserver *)self->_tileObserver removeAvailabilityObserver:self];
  v4.receiver = self;
  v4.super_class = PedestrianARSessionTileAvailabilityMonitor;
  [(PedestrianARSessionMonitor *)&v4 dealloc];
}

- (PedestrianARSessionTileAvailabilityMonitor)initWithObserver:(id)a3 tileObserver:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v7)
  {
    v11 = sub_10006D178();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v16 = "[PedestrianARSessionTileAvailabilityMonitor initWithObserver:tileObserver:]";
      v17 = 2080;
      v18 = "PedestrianARSessionTileAvailabilityMonitor.m";
      v19 = 1024;
      v20 = 31;
      v21 = 2080;
      v22 = "tileObserver != nil";
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
  v14.super_class = PedestrianARSessionTileAvailabilityMonitor;
  v8 = [(PedestrianARSessionMonitor *)&v14 initWithObserver:v6];
  if (v8)
  {
    v9 = sub_100F78920();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134349056;
      v16 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "[%{public}p] Initializing", buf, 0xCu);
    }

    objc_storeStrong(&v8->_tileObserver, a4);
    [(VLFTileObserver *)v8->_tileObserver addAvailabilityObserver:v8];
    [(PedestrianARSessionTileAvailabilityMonitor *)v8 updateState];
  }

  return v8;
}

+ ($6E15C01CA1BE37A4936191A84F7075E2)enablementGEOConfigKey
{
  v2 = &unk_101640528;
  v3 = 375;
  result.var0.var1 = v2;
  *&result.var0.var0 = v3;
  return result;
}

@end