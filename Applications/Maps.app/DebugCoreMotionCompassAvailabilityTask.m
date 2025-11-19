@interface DebugCoreMotionCompassAvailabilityTask
- (DebugCoreMotionCompassAvailabilityTask)initWithPlatformController:(id)a3;
- (PlatformController)platformController;
- (void)dealloc;
@end

@implementation DebugCoreMotionCompassAvailabilityTask

- (PlatformController)platformController
{
  WeakRetained = objc_loadWeakRetained(&self->_platformController);

  return WeakRetained;
}

- (void)dealloc
{
  v3 = sub_100DF8F14();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 134349056;
    v6 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}p] Deallocating", buf, 0xCu);
  }

  v4.receiver = self;
  v4.super_class = DebugCoreMotionCompassAvailabilityTask;
  [(DebugCoreMotionCompassAvailabilityTask *)&v4 dealloc];
}

- (DebugCoreMotionCompassAvailabilityTask)initWithPlatformController:(id)a3
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = DebugCoreMotionCompassAvailabilityTask;
  v5 = [(DebugCoreMotionCompassAvailabilityTask *)&v23 init];
  if (v5)
  {
    v6 = sub_100DF8F14();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 134349056;
      v25 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[%{public}p] Initializing", buf, 0xCu);
    }

    objc_storeWeak(&v5->_platformController, v4);
    v7 = objc_alloc_init(CMMotionManager);
    motionManager = v5->_motionManager;
    v5->_motionManager = v7;

    v9 = [(CMMotionManager *)v5->_motionManager isDeviceMotionAvailable];
    v10 = sub_100DF8F14();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
    if (v9)
    {
      if (v11)
      {
        *buf = 134349056;
        v25 = v5;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "[%{public}p] Device motion is available; will start updates", buf, 0xCu);
      }

      v12 = +[NSBundle mainBundle];
      v13 = [v12 bundleIdentifier];
      v10 = [NSString stringWithFormat:@"%@.%@.deviceMotionUpdatesQueue.%p", v13, objc_opt_class(), v5];

      v14 = v10;
      v15 = [v10 UTF8String];
      v16 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v17 = dispatch_queue_create(v15, v16);

      v18 = objc_opt_new();
      [v18 setUnderlyingQueue:v17];
      objc_initWeak(buf, v5);
      v19 = v5->_motionManager;
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_100DF92C0;
      v21[3] = &unk_101655538;
      objc_copyWeak(&v22, buf);
      [(CMMotionManager *)v19 startDeviceMotionUpdatesUsingReferenceFrame:8 toQueue:v18 withHandler:v21];
      objc_destroyWeak(&v22);
      objc_destroyWeak(buf);
    }

    else if (v11)
    {
      *buf = 134349056;
      v25 = v5;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "[%{public}p] Device motion is not available", buf, 0xCu);
    }
  }

  return v5;
}

@end