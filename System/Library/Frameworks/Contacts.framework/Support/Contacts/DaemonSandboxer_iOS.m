@interface DaemonSandboxer_iOS
+ (void)enterSandbox;
@end

@implementation DaemonSandboxer_iOS

+ (void)enterSandbox
{
  if ((_set_user_dir_suffix() & 1) == 0)
  {
    v2 = +[_TtC11postersyncd13DaemonLogging daemon];
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_1000159E4(v2);
    }
  }

  v3 = NSTemporaryDirectory();
}

@end