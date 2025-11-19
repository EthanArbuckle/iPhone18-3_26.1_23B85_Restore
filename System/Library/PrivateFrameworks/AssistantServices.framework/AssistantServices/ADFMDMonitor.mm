@interface ADFMDMonitor
+ (id)sharedManager;
- (ADFMDMonitor)init;
- (BOOL)_fetchLostModeState;
- (void)_updateLostModeState;
- (void)dealloc;
@end

@implementation ADFMDMonitor

+ (id)sharedManager
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1003634E0;
  block[3] = &unk_10051E200;
  block[4] = a1;
  if (qword_100590B08 != -1)
  {
    dispatch_once(&qword_100590B08, block);
  }

  v2 = qword_100590B10;

  return v2;
}

- (BOOL)_fetchLostModeState
{
  v2 = [off_10058F7A0() sharedInstance];
  v3 = [v2 lostModeIsActive];

  return v3;
}

- (void)_updateLostModeState
{
  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1003630DC;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(serialQueue, block);
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  v4 = off_10058F798();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, v4, 0);

  v5.receiver = self;
  v5.super_class = ADFMDMonitor;
  [(ADFMDMonitor *)&v5 dealloc];
}

- (ADFMDMonitor)init
{
  v12.receiver = self;
  v12.super_class = ADFMDMonitor;
  v2 = [(ADFMDMonitor *)&v12 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("Find My Device Monitor Queue", v3);

    serialQueue = v2->_serialQueue;
    v2->_serialQueue = v4;

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    v7 = off_10058F798();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, sub_1003634D8, v7, 0, CFNotificationSuspensionBehaviorDrop);

    v8 = [(ADFMDMonitor *)v2 _fetchLostModeState];
    v2->_isLostModeActive = v8;
    v9 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v10 = @"not lost";
      if (v8)
      {
        v10 = @"lost";
      }

      *buf = 136315394;
      v14 = "[ADFMDMonitor init]";
      v15 = 2112;
      v16 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s Device is %@", buf, 0x16u);
    }
  }

  return v2;
}

@end