@interface VIOSessionDeviceMotionMonitor
+ (BOOL)isAvailable;
- (VIOSessionDeviceMotionMonitor)initWithStateManager:(id)a3 platformController:(id)a4;
- (void)dealloc;
- (void)session:(id)a3 didChangeState:(unint64_t)a4;
- (void)startMonitoringDeviceMotion;
@end

@implementation VIOSessionDeviceMotionMonitor

- (void)session:(id)a3 didChangeState:(unint64_t)a4
{
  if (a4 == 1)
  {

    [(VIOSessionDeviceMotionMonitor *)self startMonitoringDeviceMotion];
  }

  else
  {
    v5 = [(VIOSessionDeviceMotionMonitor *)self motionActivityManager];
    [v5 stopActivityUpdates];
  }
}

- (void)startMonitoringDeviceMotion
{
  if (([objc_opt_class() isAvailable] & 1) == 0)
  {
    v5 = sub_10006D178();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *location = 136315906;
      *&location[4] = "[VIOSessionDeviceMotionMonitor startMonitoringDeviceMotion]";
      v12 = 2080;
      v13 = "VIOSessionDeviceMotionMonitor.m";
      v14 = 1024;
      v15 = 70;
      v16 = 2080;
      v17 = "[[self class] isAvailable]";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", location, 0x26u);
    }

    if (sub_100E03634())
    {
      v6 = sub_10006D178();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v7 = +[NSThread callStackSymbols];
        *location = 138412290;
        *&location[4] = v7;
        v8 = v7;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%@", location, 0xCu);
      }
    }
  }

  if ([objc_opt_class() isAvailable])
  {
    objc_initWeak(location, self);
    v3 = [(VIOSessionDeviceMotionMonitor *)self motionActivityManager];
    v4 = +[NSOperationQueue mainQueue];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100F9A550;
    v9[3] = &unk_10165F8B0;
    objc_copyWeak(&v10, location);
    [v3 startActivityUpdatesToQueue:v4 withHandler:v9];

    objc_destroyWeak(&v10);
    objc_destroyWeak(location);
  }
}

- (void)dealloc
{
  v3 = sub_100F9A6B4();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    *buf = 134349314;
    v9 = self;
    v10 = 2112;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}p] Disabling %@", buf, 0x16u);
  }

  [(CMMotionActivityManager *)self->_motionActivityManager stopActivityUpdates];
  v6 = [(VIOSessionMonitor *)self session];
  [v6 _removeObserver:self];

  v7.receiver = self;
  v7.super_class = VIOSessionDeviceMotionMonitor;
  [(VIOSessionDeviceMotionMonitor *)&v7 dealloc];
}

- (VIOSessionDeviceMotionMonitor)initWithStateManager:(id)a3 platformController:(id)a4
{
  v14.receiver = self;
  v14.super_class = VIOSessionDeviceMotionMonitor;
  v4 = [(VIOSessionMonitor *)&v14 initWithStateManager:a3 platformController:a4];
  if (v4)
  {
    v5 = sub_100F9A6B4();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      *buf = 134349314;
      v16 = v4;
      v17 = 2112;
      v18 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}p] Enabling %@", buf, 0x16u);
    }

    v8 = objc_alloc_init(CMMotionActivityManager);
    motionActivityManager = v4->_motionActivityManager;
    v4->_motionActivityManager = v8;

    v10 = [(VIOSessionMonitor *)v4 session];
    [v10 _addObserver:v4];

    v11 = [(VIOSessionMonitor *)v4 session];
    v12 = [v11 state];

    if (v12 == 1)
    {
      [(VIOSessionDeviceMotionMonitor *)v4 startMonitoringDeviceMotion];
    }
  }

  return v4;
}

+ (BOOL)isAvailable
{
  BOOL = GEOConfigGetBOOL();
  if (BOOL)
  {

    LOBYTE(BOOL) = +[CMMotionActivityManager isActivityAvailable];
  }

  return BOOL;
}

@end