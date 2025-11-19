@interface AMSRemoteNotification
+ (BOOL)shouldHandleNotification:(id)a3;
+ (id)_sharedPushHandler;
+ (void)handleNotification:(id)a3;
@end

@implementation AMSRemoteNotification

+ (void)handleNotification:(id)a3
{
  v4 = a3;
  v5 = [a1 _sharedPushHandler];
  [v5 handleNotification:v4];
}

+ (BOOL)shouldHandleNotification:(id)a3
{
  v4 = a3;
  v5 = [a1 _sharedPushHandler];
  v6 = [v5 shouldHandleNotification:v4];

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