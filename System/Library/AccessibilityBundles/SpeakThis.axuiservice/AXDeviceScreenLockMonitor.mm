@interface AXDeviceScreenLockMonitor
+ (id)sharedInstance;
- (AXDeviceScreenLockMonitor)init;
- (void)_startMonitoringWithQueue:(id)queue;
- (void)_stopMonitoring;
- (void)deviceLockStateChanged:(double)changed;
@end

@implementation AXDeviceScreenLockMonitor

+ (id)sharedInstance
{
  if (qword_384D8 != -1)
  {
    sub_1B15C();
  }

  v3 = qword_384D0;

  return v3;
}

- (AXDeviceScreenLockMonitor)init
{
  v5.receiver = self;
  v5.super_class = AXDeviceScreenLockMonitor;
  v2 = [(AXDeviceEventMonitor *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(AXDeviceScreenLockMonitor *)v2 setDeviceLocked:0];
  }

  return v3;
}

- (void)_startMonitoringWithQueue:(id)queue
{
  queueCopy = queue;
  objc_initWeak(&location, self);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_2E3C;
  v5[3] = &unk_30A30;
  objc_copyWeak(&v6, &location);
  dispatch_async(queueCopy, v5);

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

- (void)_stopMonitoring
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"com.apple.mobile.keybagd.lock_status", 0);
  v4 = AXLogSpeakScreen();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_1B1B4(v4);
  }
}

- (void)deviceLockStateChanged:(double)changed
{
  [(AXDeviceScreenLockMonitor *)self setDeviceLocked:[(AXDeviceScreenLockMonitor *)self _queryIsDeviceLocked]];
  objc_initWeak(&location, self);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_30EC;
  v5[3] = &unk_30A58;
  objc_copyWeak(v6, &location);
  v6[1] = *&changed;
  [(AXDeviceEventMonitor *)self enumerateObserversInQueue:v5];
  objc_destroyWeak(v6);
  objc_destroyWeak(&location);
}

@end