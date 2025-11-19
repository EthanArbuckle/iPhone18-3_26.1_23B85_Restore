@interface MigratorTask
- (void)main;
@end

@implementation MigratorTask

- (void)main
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [KeepAlive keepAliveWithFormat:@"com.apple.appstored.%@", v4];

  v6.receiver = self;
  v6.super_class = MigratorTask;
  [(MigratorTask *)&v6 main];
}

@end