@interface MigratorValidateAppleIDsTask
- (MigratorValidateAppleIDsTask)initWithConfiguration:(id)a3;
- (id)copyConfiguration;
- (void)main;
@end

@implementation MigratorValidateAppleIDsTask

- (MigratorValidateAppleIDsTask)initWithConfiguration:(id)a3
{
  v4.receiver = self;
  v4.super_class = MigratorValidateAppleIDsTask;
  return [(MigratorTask *)&v4 initWithConfiguration:a3];
}

- (id)copyConfiguration
{
  v2 = [MigratorConfiguration alloc];

  return sub_1002C0A10(v2, @"ValidateAppleIDs");
}

- (void)main
{
  v3 = objc_opt_new();
  v6 = 0;
  v4 = [(Task *)self runSubTask:v3 returningError:&v6];

  v5 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "ValidateAppleIDsTask complete with result: %d", buf, 8u);
  }
}

@end