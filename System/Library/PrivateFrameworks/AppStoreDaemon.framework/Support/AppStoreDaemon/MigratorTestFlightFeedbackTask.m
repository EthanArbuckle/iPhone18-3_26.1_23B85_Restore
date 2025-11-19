@interface MigratorTestFlightFeedbackTask
- (MigratorTestFlightFeedbackTask)initWithConfiguration:(id)a3;
- (id)copyConfiguration;
- (void)main;
@end

@implementation MigratorTestFlightFeedbackTask

- (MigratorTestFlightFeedbackTask)initWithConfiguration:(id)a3
{
  v4.receiver = self;
  v4.super_class = MigratorTestFlightFeedbackTask;
  return [(MigratorTask *)&v4 initWithConfiguration:a3];
}

- (id)copyConfiguration
{
  v2 = [MigratorConfiguration alloc];

  return sub_1002C0A10(v2, @"TestFlightFeedback");
}

- (void)main
{
  v2 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Performing test flight feedback migration", v5, 2u);
  }

  v3 = [[KeepAlive alloc] initWithName:@"com.apple.migrator.TestFlightFeedback"];
  v4 = sub_1002404C0();
  sub_100243B04(v4);
}

@end