@interface MigratorMiscellaneousTask
- (MigratorMiscellaneousTask)initWithConfiguration:(id)configuration;
- (id)copyConfiguration;
- (void)main;
@end

@implementation MigratorMiscellaneousTask

- (MigratorMiscellaneousTask)initWithConfiguration:(id)configuration
{
  v4.receiver = self;
  v4.super_class = MigratorMiscellaneousTask;
  return [(MigratorTask *)&v4 initWithConfiguration:configuration];
}

- (id)copyConfiguration
{
  v2 = [MigratorConfiguration alloc];

  return sub_1002C0A10(v2, @"Miscellaneous");
}

- (void)main
{
  v2 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Performing miscellaneous migration", v7, 2u);
  }

  sub_1003D53A4();
  sub_1003D5620(AppDefaultsManager, 0);
  sub_1001E79D4();
  v3 = sub_100405768();
  sub_1004062D4(v3);

  v4 = objc_alloc_init(_TtC9appstored6LogKey);
  v5 = sub_10020BE10();
  sub_10020DED8(v5, v4);

  v6 = sub_1002AB1B0();
  sub_1002AB6CC(v6);
}

@end