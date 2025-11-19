@interface CNIOSContactsDaemon
+ (void)enterSandbox;
- (id)XPCActivities;
- (id)XPCListenerPairs;
- (id)applicationUnregisteredListeners;
- (id)notifydListeners;
@end

@implementation CNIOSContactsDaemon

+ (void)enterSandbox
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___CNIOSContactsDaemon;
  objc_msgSendSuper2(&v2, "enterSandbox");
  +[CNIOSDaemonSandboxer enterSandbox];
}

- (id)XPCListenerPairs
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_100001E94;
  v16 = sub_100001ED4;
  v11.receiver = self;
  v11.super_class = CNIOSContactsDaemon;
  v2 = [(CNContactsDaemon *)&v11 XPCListenerPairs];
  v17 = [NSMutableArray arrayWithArray:v2];

  v18[0] = CNDataMapperServiceName;
  v3 = objc_opt_new();
  v19[0] = v3;
  v18[1] = CNDataMapperContactProviderServiceName;
  v4 = objc_opt_new();
  v19[1] = v4;
  v18[2] = CNContactsSupportServiceName;
  v5 = objc_opt_new();
  v19[2] = v5;
  v18[3] = CNApplicationProxyServiceName;
  v6 = objc_opt_new();
  v19[3] = v6;
  v7 = [NSDictionary dictionaryWithObjects:v19 forKeys:v18 count:4];

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000105AC;
  v10[3] = &unk_100045C18;
  v10[4] = &v12;
  [v7 _cn_each:v10];
  v8 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v8;
}

- (id)notifydListeners
{
  v3 = [NSMutableArray alloc];
  v18.receiver = self;
  v18.super_class = CNIOSContactsDaemon;
  v4 = [(CNContactsDaemon *)&v18 notifydListeners];
  v5 = [v3 initWithArray:v4];

  v6 = +[IndexService sharedInstance];
  [v5 addObject:v6];

  v7 = +[FavoritesMatchingService sharedInstance];
  [v5 addObject:v7];

  v8 = +[CNEnvironment currentEnvironment];
  v9 = [v8 featureFlags];
  v10 = [v9 isFeatureEnabled:24];

  if (v10)
  {
    v11 = +[CNDLimitedAccessSyncService sharedInstance];
    [v5 addObject:v11];
  }

  v12 = +[CNEnvironment currentEnvironment];
  v13 = [v12 featureFlags];
  v14 = [v13 isFeatureEnabled:3];

  if (v14)
  {
    v15 = +[CNAnalyzeDatabaseService sharedInstance];
    [v5 addObject:v15];
  }

  v16 = +[SettingsDefaultAppsService sharedInstance];
  [v5 addObject:v16];

  return v5;
}

- (id)applicationUnregisteredListeners
{
  v3 = [NSMutableArray alloc];
  v12.receiver = self;
  v12.super_class = CNIOSContactsDaemon;
  v4 = [(CNContactsDaemon *)&v12 applicationUnregisteredListeners];
  v5 = [v3 initWithArray:v4];

  v6 = +[ContactProviderService sharedInstance];
  [v5 addObject:v6];

  v7 = +[CNEnvironment currentEnvironment];
  v8 = [v7 featureFlags];
  v9 = [v8 isFeatureEnabled:24];

  if (v9)
  {
    v10 = +[CNDLimitedAccessSyncService sharedInstance];
    [v5 addObject:v10];
  }

  return v5;
}

- (id)XPCActivities
{
  v3 = +[CNContactsDaemonLogs xpc];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_10002CFD8(v3);
  }

  v7.receiver = self;
  v7.super_class = CNIOSContactsDaemon;
  v4 = [(CNContactsDaemon *)&v7 XPCActivities];
  v5 = [NSMutableArray arrayWithArray:v4];

  [v5 addObject:objc_opt_class()];
  [v5 addObject:objc_opt_class()];
  [v5 addObject:objc_opt_class()];

  return v5;
}

@end