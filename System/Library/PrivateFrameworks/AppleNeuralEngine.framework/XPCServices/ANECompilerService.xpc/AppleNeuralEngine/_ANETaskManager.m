@interface _ANETaskManager
+ (void)registerTask:(id)a3;
+ (void)unregisterTask:(id)a3;
@end

@implementation _ANETaskManager

+ (void)registerTask:(id)a3
{
  v3 = a3;
  v4 = +[_ANELog daemon];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v11 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Registered CTS task %@", buf, 0xCu);
  }

  v5 = [v3 name];
  v6 = [v5 UTF8String];
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10000A614;
  handler[3] = &unk_10001C6A0;
  v9 = v3;
  v7 = v3;
  xpc_activity_register(v6, XPC_ACTIVITY_CHECK_IN, handler);
}

+ (void)unregisterTask:(id)a3
{
  v4 = [a3 name];
  v3 = v4;
  xpc_activity_unregister([v4 UTF8String]);
}

@end