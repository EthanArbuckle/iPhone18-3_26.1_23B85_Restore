@interface MigratorAutoUpdateTask
- (MigratorAutoUpdateTask)initWithConfiguration:(id)a3;
- (id)copyConfiguration;
- (void)main;
@end

@implementation MigratorAutoUpdateTask

- (MigratorAutoUpdateTask)initWithConfiguration:(id)a3
{
  v4.receiver = self;
  v4.super_class = MigratorAutoUpdateTask;
  return [(MigratorTask *)&v4 initWithConfiguration:a3];
}

- (id)copyConfiguration
{
  v2 = [MigratorConfiguration alloc];

  return sub_1002C0A10(v2, @"AutomaticUpdates");
}

- (void)main
{
  v2 = +[UpdatesManager sharedManager];
  [v2 setupFollowingMigration];
}

@end