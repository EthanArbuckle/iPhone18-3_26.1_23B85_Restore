@interface MigratorArcadeTask
- (MigratorArcadeTask)initWithConfiguration:(id)configuration;
- (id)copyConfiguration;
- (void)main;
@end

@implementation MigratorArcadeTask

- (MigratorArcadeTask)initWithConfiguration:(id)configuration
{
  v4.receiver = self;
  v4.super_class = MigratorArcadeTask;
  return [(MigratorTask *)&v4 initWithConfiguration:configuration];
}

- (id)copyConfiguration
{
  v2 = [MigratorConfiguration alloc];

  return sub_1002C0A10(v2, @"Arcade");
}

- (void)main
{
  v2 = objc_alloc_init(_TtC9appstored6LogKey);
  v3 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 138412290;
    v22 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[%@] Performing arcade migration", &v21, 0xCu);
  }

  v4 = sub_100355E58();
  sub_10035B454(v4, @"Migration");

  v5 = sub_1001DA8BC();
  v6 = v5;
  if (v5)
  {
    sub_1001DBEB4(v5, 5, @"Migration", 1, 0);
  }

  v7 = sub_1001DA8BC();
  v8 = v7;
  if (v7)
  {
    sub_1001DBEB4(v7, 1, @"Migration", 1, 0);
  }

  v9 = sub_1001DA8BC();
  v10 = v9;
  if (v9)
  {
    sub_1001DBEB4(v9, 2, @"Migration", 1, 0);
  }

  v11 = sub_1001DA8BC();
  v12 = v11;
  if (v11)
  {
    sub_1001DBEB4(v11, 7, @"Migration", 1, 0);
  }

  v13 = +[ACAccountStore ams_sharedAccountStore];
  ams_activeiTunesAccount = [v13 ams_activeiTunesAccount];

  if (ams_activeiTunesAccount)
  {
    v15 = +[_TtC9appstored29KatanaSubscriptionCoordinator shared];
    v16 = [v15 migrateSubscriptionStateWithAccount:ams_activeiTunesAccount logKey:v2];

    v17 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v21 = 138412546;
      v22 = v2;
      v23 = 1024;
      v24 = v16;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "[%@] Migrated arcade subscription state with result: %{BOOL}d", &v21, 0x12u);
    }
  }

  v18 = +[_TtC9appstored29KatanaSubscriptionCoordinator shared];
  v19 = [v18 removeStaleSubscriptionInfoWithLogKey:v2];

  v20 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    v21 = 138412546;
    v22 = v2;
    v23 = 1024;
    v24 = v19;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "[%@] Cleaned up subscription state with result: %{BOOL}d", &v21, 0x12u);
  }
}

@end