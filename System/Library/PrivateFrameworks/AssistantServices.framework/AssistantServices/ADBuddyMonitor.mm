@interface ADBuddyMonitor
+ (id)sharedManager;
- (ADBuddyMonitor)init;
- (void)_updateBuddyState;
- (void)dealloc;
@end

@implementation ADBuddyMonitor

- (void)_updateBuddyState
{
  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10006D004;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(serialQueue, block);
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  v4 = off_10058B948();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, v4, 0);

  v5 = CFNotificationCenterGetDarwinNotifyCenter();
  v6 = off_10058B950();
  CFNotificationCenterRemoveObserver(v5, self, v6, 0);

  v7.receiver = self;
  v7.super_class = ADBuddyMonitor;
  [(ADBuddyMonitor *)&v7 dealloc];
}

- (ADBuddyMonitor)init
{
  v14.receiver = self;
  v14.super_class = ADBuddyMonitor;
  v2 = [(ADBuddyMonitor *)&v14 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("Buddy Monitor Queue", v3);

    serialQueue = v2->_serialQueue;
    v2->_serialQueue = v4;

    v6 = [(ADBuddyMonitor *)v2 _checkBuddyState];
    v2->_isPastBuddy = v6;
    v7 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v8 = @"running";
      if (v6)
      {
        v8 = @"complete";
      }

      *buf = 136315394;
      v16 = "[ADBuddyMonitor init]";
      v17 = 2112;
      v18 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s Buddy is %@", buf, 0x16u);
    }

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    v10 = off_10058B948();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, sub_10006CED8, v10, 0, CFNotificationSuspensionBehaviorDrop);

    v11 = CFNotificationCenterGetDarwinNotifyCenter();
    v12 = off_10058B950();
    CFNotificationCenterAddObserver(v11, v2, sub_10006CED8, v12, 0, CFNotificationSuspensionBehaviorDrop);

    [(ADBuddyMonitor *)v2 _updateBuddyState];
  }

  return v2;
}

+ (id)sharedManager
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001418A0;
  block[3] = &unk_10051E200;
  block[4] = a1;
  if (qword_1005902E8 != -1)
  {
    dispatch_once(&qword_1005902E8, block);
  }

  v2 = qword_1005902F0;

  return v2;
}

@end