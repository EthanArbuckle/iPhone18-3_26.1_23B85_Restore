@interface CDXNotifydNotifier
- (CDXNotifydNotifier)initWithNotificationName:(const char *)name;
- (void)postNotification;
@end

@implementation CDXNotifydNotifier

- (CDXNotifydNotifier)initWithNotificationName:(const char *)name
{
  v5.receiver = self;
  v5.super_class = CDXNotifydNotifier;
  result = [(CDXNotifydNotifier *)&v5 init];
  if (result)
  {
    result->_notificationName = name;
  }

  return result;
}

- (void)postNotification
{
  notificationName = [(CDXNotifydNotifier *)self notificationName];

  notify_post(notificationName);
}

@end