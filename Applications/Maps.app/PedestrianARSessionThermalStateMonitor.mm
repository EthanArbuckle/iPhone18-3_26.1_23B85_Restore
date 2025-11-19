@interface PedestrianARSessionThermalStateMonitor
+ ($6E15C01CA1BE37A4936191A84F7075E2)enablementGEOConfigKey;
- (PedestrianARSessionThermalStateMonitor)initWithObserver:(id)a3 thermalPressureController:(id)a4;
- (id)debugDescription;
- (void)dealloc;
- (void)didUpdateThermalPressureLevel:(int)a3;
- (void)updateState;
@end

@implementation PedestrianARSessionThermalStateMonitor

- (void)didUpdateThermalPressureLevel:(int)a3
{
  v5 = sub_10092B934();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 134349312;
    v9 = self;
    v10 = 1024;
    v11 = a3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}p] Got thermal pressure update: %d", buf, 0x12u);
  }

  objc_initWeak(buf, self);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10092B988;
  block[3] = &unk_101661B98;
  objc_copyWeak(&v7, buf);
  dispatch_async(&_dispatch_main_q, block);
  objc_destroyWeak(&v7);
  objc_destroyWeak(buf);
}

- (id)debugDescription
{
  v3 = [objc_opt_class() friendlyName];
  v4 = [(PedestrianARSessionThermalStateMonitor *)self thermalPressureController];
  v5 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@\nthermal state: %d\n", v3, [v4 currentThermalPressureLevel]);

  return v5;
}

- (void)updateState
{
  v3 = [(PedestrianARSessionThermalStateMonitor *)self thermalPressureController];
  v4 = [v3 currentThermalPressureLevel];

  Integer = GEOConfigGetInteger();
  v6 = sub_10092B934();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
  if (v4 >= Integer)
  {
    if (v7)
    {
      v8 = [(PedestrianARSessionThermalStateMonitor *)self thermalPressureController];
      v10 = 134349568;
      v11 = self;
      v12 = 1024;
      v13 = [v8 currentThermalPressureLevel];
      v14 = 1024;
      v15 = Integer;
      v9 = "[%{public}p] Detected thermal state is too high (%d >= %d); updating state";
      goto LABEL_6;
    }
  }

  else if (v7)
  {
    v8 = [(PedestrianARSessionThermalStateMonitor *)self thermalPressureController];
    v10 = 134349568;
    v11 = self;
    v12 = 1024;
    v13 = [v8 currentThermalPressureLevel];
    v14 = 1024;
    v15 = Integer;
    v9 = "[%{public}p] Detected thermal state is sufficiently low (%d < %d); updating state";
LABEL_6:
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, v9, &v10, 0x18u);
  }

  [(PedestrianARSessionMonitor *)self setShouldShowPedestrianAR:v4 < Integer];
}

- (void)dealloc
{
  v3 = sub_10092B934();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134349056;
    v6 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "[%{public}p] Deallocating", buf, 0xCu);
  }

  [(MapsThermalPressureController *)self->_thermalPressureController removeThermalPressureObserver:self];
  v4.receiver = self;
  v4.super_class = PedestrianARSessionThermalStateMonitor;
  [(PedestrianARSessionMonitor *)&v4 dealloc];
}

- (PedestrianARSessionThermalStateMonitor)initWithObserver:(id)a3 thermalPressureController:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v7)
  {
    v11 = sub_10006D178();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v16 = "[PedestrianARSessionThermalStateMonitor initWithObserver:thermalPressureController:]";
      v17 = 2080;
      v18 = "PedestrianARSessionThermalStateMonitor.m";
      v19 = 1024;
      v20 = 35;
      v21 = 2080;
      v22 = "thermalPressureController != nil";
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
  v14.super_class = PedestrianARSessionThermalStateMonitor;
  v8 = [(PedestrianARSessionMonitor *)&v14 initWithObserver:v6];
  if (v8)
  {
    v9 = sub_10092B934();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134349056;
      v16 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "[%{public}p] Initializing", buf, 0xCu);
    }

    objc_storeStrong(&v8->_thermalPressureController, a4);
    [(MapsThermalPressureController *)v8->_thermalPressureController addThermalPressureObserver:v8];
    [(PedestrianARSessionThermalStateMonitor *)v8 updateState];
  }

  return v8;
}

+ ($6E15C01CA1BE37A4936191A84F7075E2)enablementGEOConfigKey
{
  v2 = &unk_1016403D8;
  v3 = 369;
  result.var0.var1 = v2;
  *&result.var0.var0 = v3;
  return result;
}

@end