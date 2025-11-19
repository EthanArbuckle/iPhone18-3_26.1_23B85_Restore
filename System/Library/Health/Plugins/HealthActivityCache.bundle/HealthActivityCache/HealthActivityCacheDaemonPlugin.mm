@interface HealthActivityCacheDaemonPlugin
- (HealthActivityCacheDaemonPlugin)init;
- (id)extensionForHealthDaemon:(id)a3;
- (id)extensionForProfile:(id)a3;
- (id)taskServerClasses;
@end

@implementation HealthActivityCacheDaemonPlugin

- (HealthActivityCacheDaemonPlugin)init
{
  _HKInitializeLogging();
  v3 = HKLogActivityCache;
  if (os_log_type_enabled(HKLogActivityCache, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&def_21990, v3, OS_LOG_TYPE_DEFAULT, "Activity Cache plugin loaded.", buf, 2u);
  }

  v5.receiver = self;
  v5.super_class = HealthActivityCacheDaemonPlugin;
  return [(HealthActivityCacheDaemonPlugin *)&v5 init];
}

- (id)extensionForHealthDaemon:(id)a3
{
  v3 = a3;
  v4 = [[HDHealthActivityCachePluginDaemonExtension alloc] initWithDaemon:v3];

  return v4;
}

- (id)extensionForProfile:(id)a3
{
  v3 = a3;
  if ([v3 profileType] == &def_21990 + 1)
  {
    v4 = [[HealthActivityCacheProfileExtension alloc] initWithProfile:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)taskServerClasses
{
  v4[0] = objc_opt_class();
  v4[1] = objc_opt_class();
  v4[2] = objc_opt_class();
  v4[3] = objc_opt_class();
  v2 = [NSArray arrayWithObjects:v4 count:4];

  return v2;
}

@end