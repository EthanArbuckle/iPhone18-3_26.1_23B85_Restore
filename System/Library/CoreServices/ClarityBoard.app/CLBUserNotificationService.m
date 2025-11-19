@interface CLBUserNotificationService
+ (void)dispatchUserNotification:(id)a3 flags:(int)a4 replyPort:(unsigned int)a5 auditToken:(id)a6 presenter:(id)a7;
+ (void)startWithAlertPresenter:(id)a3;
@end

@implementation CLBUserNotificationService

+ (void)dispatchUserNotification:(id)a3 flags:(int)a4 replyPort:(unsigned int)a5 auditToken:(id)a6 presenter:(id)a7
{
  if ((a4 & 8) != 0)
  {
    [a7 cancelAlertFromDictionary:{a3, *&a4, *&a5, a6}];
  }

  else
  {
    [a7 addAlertFromDictionary:a3 replyPort:*&a5 requestFlags:{*&a4, a6}];
  }
}

+ (void)startWithAlertPresenter:(id)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000193F4;
  block[3] = &unk_1002FC2F0;
  v3 = a3;
  v8 = v3;
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