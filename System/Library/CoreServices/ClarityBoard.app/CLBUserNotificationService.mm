@interface CLBUserNotificationService
+ (void)dispatchUserNotification:(id)notification flags:(int)flags replyPort:(unsigned int)port auditToken:(id)token presenter:(id)presenter;
+ (void)startWithAlertPresenter:(id)presenter;
@end

@implementation CLBUserNotificationService

+ (void)dispatchUserNotification:(id)notification flags:(int)flags replyPort:(unsigned int)port auditToken:(id)token presenter:(id)presenter
{
  if ((flags & 8) != 0)
  {
    [presenter cancelAlertFromDictionary:{notification, *&flags, *&port, token}];
  }

  else
  {
    [presenter addAlertFromDictionary:notification replyPort:*&port requestFlags:{*&flags, token}];
  }
}

+ (void)startWithAlertPresenter:(id)presenter
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000193F4;
  block[3] = &unk_1002FC2F0;
  presenterCopy = presenter;
  v8 = presenterCopy;
  if (qword_1003310C0 != -1)
  {
    dispatch_once(&qword_1003310C0, block);
  }

  [@"com.apple.SBUserNotification" UTF8String];
  if (bootstrap_check_in2())
  {
    v6 = +[CLFLog commonLog];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100284AE0(v6);
    }

    abort();
  }

  v4 = dispatch_mach_create();
  v5 = qword_1003310C8;
  qword_1003310C8 = v4;

  dispatch_mach_connect();
}

@end