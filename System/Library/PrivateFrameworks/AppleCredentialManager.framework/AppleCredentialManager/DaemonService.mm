@interface DaemonService
- (DaemonService)initWithNotificationQueue:(id)queue;
@end

@implementation DaemonService

- (DaemonService)initWithNotificationQueue:(id)queue
{
  queueCopy = queue;
  v8.receiver = self;
  v8.super_class = DaemonService;
  v5 = [(DaemonService *)&v8 init];
  notificationQueue = v5->_notificationQueue;
  v5->_notificationQueue = queueCopy;

  return v5;
}

@end