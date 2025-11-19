@interface CDXNotifydNotifier
- (CDXNotifydNotifier)initWithNotificationName:(const char *)a3;
- (void)postNotification;
@end

@implementation CDXNotifydNotifier

- (CDXNotifydNotifier)initWithNotificationName:(const char *)a3
{
  v5.receiver = self;
  v5.super_class = CDXNotifydNotifier;
  result = [(CDXNotifydNotifier *)&v5 init];
  if (result)
  {
    result->_notificationName = a3;
  }

  return result;
}

- (void)postNotification
{
  v2 = [(CDXNotifydNotifier *)self notificationName];

  notify_post(v2);
}

@end