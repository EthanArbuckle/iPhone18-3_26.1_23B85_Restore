@interface VOTDebugManager
+ (id)sharedInstance;
- (VOTDebugManager)init;
- (void)dealloc;
@end

@implementation VOTDebugManager

+ (id)sharedInstance
{
  if (qword_1001FEFA8 != -1)
  {
    sub_100130EC8();
  }

  v3 = qword_1001FEFA0;

  return v3;
}

- (VOTDebugManager)init
{
  v3.receiver = self;
  v3.super_class = VOTDebugManager;
  return [(VOTDebugManager *)&v3 init];
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  v4.receiver = self;
  v4.super_class = VOTDebugManager;
  [(VOTDebugManager *)&v4 dealloc];
}

@end