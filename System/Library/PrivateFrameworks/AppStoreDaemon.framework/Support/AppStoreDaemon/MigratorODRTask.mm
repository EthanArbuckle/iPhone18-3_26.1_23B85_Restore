@interface MigratorODRTask
- (MigratorODRTask)initWithConfiguration:(id)configuration;
- (id)copyConfiguration;
- (void)main;
@end

@implementation MigratorODRTask

- (MigratorODRTask)initWithConfiguration:(id)configuration
{
  v4.receiver = self;
  v4.super_class = MigratorODRTask;
  return [(MigratorTask *)&v4 initWithConfiguration:configuration];
}

- (id)copyConfiguration
{
  v2 = [MigratorConfiguration alloc];

  return sub_1002C0A10(v2, @"ODR");
}

- (void)main
{
  v3 = sub_1003DC0F4();
  v4 = v3;
  if (v3)
  {
    v5 = *(v3 + 24);
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  v7 = sub_1002A570C([SQLiteTransporter alloc], v6);
  v8 = [ODRDatabaseStore alloc];
  v9 = sub_1001C0DF0();
  v10 = sub_1001C0EC4(v9);
  v11 = [(SQLiteDatabaseStore *)v8 initWithDatabase:v10];

  if (sub_1002A5784(v7))
  {
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_10033AE20;
    v22[3] = &unk_100523B58;
    v22[4] = self;
    v23 = v11;
    sub_1002A5CB0(v7, v22);
  }

  else
  {
    v12 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Unable to begin legacy database tranportation", &buf, 2u);
    }
  }

  sub_1002A5B08(v7);
  v13 = [v6 stringByReplacingOccurrencesOfString:@"/odr.sqlite" withString:&stru_100529300];
  v14 = +[NSFileManager defaultManager];
  if ([v14 fileExistsAtPath:v13])
  {
    v21 = 0;
    v15 = [v14 removeItemAtPath:v13 error:&v21];
    v16 = v21;
    if ((v15 & 1) == 0)
    {
      v17 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 138543362;
        *(&buf + 4) = v16;
        _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "The legacy database directory failed to be removed with error: %{public}@", &buf, 0xCu);
      }
    }
  }

  v18 = sub_1001C13C8();
  sub_1001C15E8(v18);

  *&buf = 0;
  *(&buf + 1) = &buf;
  v25 = 0x3032000000;
  v26 = sub_10033B70C;
  v27 = sub_10033B71C;
  v28 = objc_opt_new();
  v19 = sub_100208FBC();
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10033B724;
  v20[3] = &unk_10051B610;
  v20[4] = &buf;
  [v19 readUsingSession:v20];

  [*(*(&buf + 1) + 40) enumerateKeysAndObjectsUsingBlock:&stru_100523B98];
  _Block_object_dispose(&buf, 8);
}

@end