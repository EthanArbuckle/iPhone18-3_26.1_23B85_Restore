@interface CNXPCActivity
+ (const)activityIdentifier;
+ (id)_stringFromXPCActivityState:(int64_t)state;
+ (void)registerActivity;
+ (void)run;
@end

@implementation CNXPCActivity

+ (void)registerActivity
{
  activityIdentifier = [self activityIdentifier];
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10000EA68;
  handler[3] = &unk_100045A00;
  v6 = [[NSString alloc] initWithUTF8String:activityIdentifier];
  v7 = activityIdentifier;
  selfCopy = self;
  v4 = v6;
  xpc_activity_register(activityIdentifier, XPC_ACTIVITY_CHECK_IN, handler);
}

+ (id)_stringFromXPCActivityState:(int64_t)state
{
  if (state < 6)
  {
    return off_100045A20[state];
  }

  v5 = +[CNContactsDaemonLogs xpc];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_10002CDCC(state);
  }

  return 0;
}

+ (const)activityIdentifier
{
  selfCopy = self;
  v3 = CNUnimplementedMethodException();
  objc_exception_throw(v3);
}

+ (void)run
{
  selfCopy = self;
  v3 = CNUnimplementedMethodException();
  objc_exception_throw(v3);
}

@end