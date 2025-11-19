@interface AMSDarwinNotificationObserver
- (AMSDarwinNotificationObserver)initWithNotificationName:(__CFString *)a3 additionalBehavior:(int64_t)a4;
- (void)dealloc;
@end

@implementation AMSDarwinNotificationObserver

- (AMSDarwinNotificationObserver)initWithNotificationName:(__CFString *)a3 additionalBehavior:(int64_t)a4
{
  v10.receiver = self;
  v10.super_class = AMSDarwinNotificationObserver;
  v6 = [(AMSDarwinNotificationObserver *)&v10 init];
  v7 = v6;
  if (v6)
  {
    v6->_notificationName = a3;
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v7, _handleNotification, a3, 0, (a4 | 0x400));
  }

  return v7;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, [(AMSDarwinNotificationObserver *)self notificationName], 0);
  v4.receiver = self;
  v4.super_class = AMSDarwinNotificationObserver;
  [(AMSDarwinNotificationObserver *)&v4 dealloc];
}

@end