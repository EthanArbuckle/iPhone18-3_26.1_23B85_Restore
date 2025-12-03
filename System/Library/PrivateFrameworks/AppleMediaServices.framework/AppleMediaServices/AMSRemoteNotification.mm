@interface AMSRemoteNotification
+ (BOOL)shouldHandleNotification:(id)notification;
+ (id)_sharedPushHandler;
+ (void)handleNotification:(id)notification;
@end

@implementation AMSRemoteNotification

+ (void)handleNotification:(id)notification
{
  notificationCopy = notification;
  _sharedPushHandler = [self _sharedPushHandler];
  [_sharedPushHandler handleNotification:notificationCopy];
}

+ (BOOL)shouldHandleNotification:(id)notification
{
  notificationCopy = notification;
  _sharedPushHandler = [self _sharedPushHandler];
  v6 = [_sharedPushHandler shouldHandleNotification:notificationCopy];

  return v6;
}

+ (id)_sharedPushHandler
{
  if (_sharedPushHandler_onceToken != -1)
  {
    dispatch_once(&_sharedPushHandler_onceToken, &__block_literal_global_125);
  }

  return 0;
}

@end