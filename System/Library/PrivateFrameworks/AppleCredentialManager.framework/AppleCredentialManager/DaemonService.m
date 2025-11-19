@interface DaemonService
- (DaemonService)initWithNotificationQueue:(id)a3;
@end

@implementation DaemonService

- (DaemonService)initWithNotificationQueue:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = DaemonService;
  v5 = [(DaemonService *)&v8 init];
  notificationQueue = v5->_notificationQueue;
  v5->_notificationQueue = v4;

  return v5;
}

@end