@interface CNIOSDaemonSandboxer
+ (void)enterSandbox;
@end

@implementation CNIOSDaemonSandboxer

+ (void)enterSandbox
{
  if ((_set_user_dir_suffix() & 1) == 0)
  {
    v2 = +[CNContactsDaemonLogs xpc];
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_10002C460(v2);
    }
  }
}

@end