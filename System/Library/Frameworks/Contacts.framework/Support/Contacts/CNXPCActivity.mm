@interface CNXPCActivity
+ (const)activityIdentifier;
+ (id)_stringFromXPCActivityState:(int64_t)a3;
+ (void)registerActivity;
+ (void)run;
@end

@implementation CNXPCActivity

+ (void)registerActivity
{
  v3 = [a1 activityIdentifier];
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10000EA68;
  handler[3] = &unk_100045A00;
  v6 = [[NSString alloc] initWithUTF8String:v3];
  v7 = v3;
  v8 = a1;
  v4 = v6;
  xpc_activity_register(v3, XPC_ACTIVITY_CHECK_IN, handler);
}

+ (id)_stringFromXPCActivityState:(int64_t)a3
{
  if (a3 < 6)
  {
    return off_100045A20[a3];
  }

  v5 = +[CNContactsDaemonLogs xpc];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_10002CDCC(a3);
  }

  return 0;
}

+ (const)activityIdentifier
{
  v2 = a1;
  v3 = CNUnimplementedMethodException();
  objc_exception_throw(v3);
}

+ (void)run
{
  v2 = a1;
  v3 = CNUnimplementedMethodException();
  objc_exception_throw(v3);
}

@end