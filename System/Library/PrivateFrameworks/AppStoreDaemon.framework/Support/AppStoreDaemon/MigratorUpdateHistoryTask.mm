@interface MigratorUpdateHistoryTask
- (MigratorUpdateHistoryTask)initWithConfiguration:(id)a3;
- (id)copyConfiguration;
- (void)main;
@end

@implementation MigratorUpdateHistoryTask

- (MigratorUpdateHistoryTask)initWithConfiguration:(id)a3
{
  v4.receiver = self;
  v4.super_class = MigratorUpdateHistoryTask;
  return [(MigratorTask *)&v4 initWithConfiguration:a3];
}

- (id)copyConfiguration
{
  v2 = [MigratorConfiguration alloc];

  return sub_1002C0A10(v2, @"UpdateHistory");
}

- (void)main
{
  v3 = sub_10029BBB4();
  v4 = [v3 URLByAppendingPathComponent:@"Documents/AppUpdates.sqlitedb"];
  v10 = [v4 path];

  v5 = +[NSFileManager defaultManager];
  LODWORD(v4) = [v5 fileExistsAtPath:v10];

  if (v4)
  {
    sub_1003CA720(self, v10, @"app_updates");
  }

  v6 = sub_10029BBB4();
  v7 = [v6 URLByAppendingPathComponent:@"Documents/updates.sqlitedb"];
  v8 = [v7 path];

  v9 = +[NSFileManager defaultManager];
  LODWORD(v7) = [v9 fileExistsAtPath:v8];

  if (v7)
  {
    sub_1003CA720(self, v8, @"software_update");
  }
}

@end