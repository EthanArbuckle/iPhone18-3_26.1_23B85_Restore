@interface AppDeletionUISOSState
+ (id)sharedInstance;
- (AppDeletionUISOSState)init;
- (BOOL)sosIsAvailable;
@end

@implementation AppDeletionUISOSState

- (AppDeletionUISOSState)init
{
  v9.receiver = self;
  v9.super_class = AppDeletionUISOSState;
  v2 = [(AppDeletionUISOSState *)&v9 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.AppDeletionUIHost.AppDeletionUICTStewieStateMonitorDelegate.internal", v3);
    internalQueue = v2->_internalQueue;
    v2->_internalQueue = v4;

    v6 = [[CTStewieStateMonitor alloc] initWithDelegate:v2 queue:v2->_internalQueue];
    monitor = v2->_monitor;
    v2->_monitor = v6;

    [(CTStewieStateMonitor *)v2->_monitor start];
  }

  return v2;
}

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000108C;
  block[3] = &unk_100010328;
  block[4] = self;
  if (qword_100016CE8 != -1)
  {
    dispatch_once(&qword_100016CE8, block);
  }

  v2 = qword_100016CE0;

  return v2;
}

- (BOOL)sosIsAvailable
{
  monitor = [(AppDeletionUISOSState *)self monitor];
  getState = [monitor getState];

  v4 = [getState isPermittedAtCurrentLocation:1];
  v5 = sub_100003D54(off_100016A30);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    if (v4)
    {
      v6 = 89;
    }

    else
    {
      v6 = 78;
    }

    v8 = 136315394;
    v9 = "[AppDeletionUISOSState sosIsAvailable]";
    v10 = 1024;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s: CTStewieStateMonitor returned %c for SOS state", &v8, 0x12u);
  }

  return v4;
}

@end