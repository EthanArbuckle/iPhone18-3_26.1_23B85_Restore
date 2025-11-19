@interface SOSAnalytics
+ (id)databasePath;
+ (id)logger;
@end

@implementation SOSAnalytics

+ (id)logger
{
  v4.receiver = a1;
  v4.super_class = &OBJC_METACLASS___SOSAnalytics;
  v2 = objc_msgSendSuper2(&v4, sel_logger);

  return v2;
}

+ (id)databasePath
{
  if (databasePath_onceToken != -1)
  {
    dispatch_once(&databasePath_onceToken, &__block_literal_global_5278);
  }

  return [(SFAnalytics *)SOSAnalytics defaultAnalyticsDatabasePath:@"sos_analytics"];
}

void __28__SOSAnalytics_databasePath__block_invoke()
{
  WithPathInKeychainDirectory(@"sos_analytics.db", &__block_literal_global_28);
  WithPathInKeychainDirectory(@"sos_analytics.db-wal", &__block_literal_global_33);

  WithPathInKeychainDirectory(@"sos_analytics.db-shm", &__block_literal_global_38);
}

@end