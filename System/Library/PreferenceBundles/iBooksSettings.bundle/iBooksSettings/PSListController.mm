@interface PSListController
+ (id)bk_groupContainerURL;
- (id)bk_appLocalDefaults;
- (void)bk_setAndSyncPreferenceToWatch:(id)a3 specifier:(id)a4;
@end

@implementation PSListController

+ (id)bk_groupContainerURL
{
  if (qword_19CD8[0] != -1)
  {
    sub_C150();
  }

  v3 = qword_19CD0;

  return v3;
}

- (void)bk_setAndSyncPreferenceToWatch:(id)a3 specifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 target];
  [v8 setPreferenceValue:v6 specifier:v7];

  v9 = [v7 objectForKeyedSubscript:PSKeyNameKey];

  v10 = objc_alloc_init(NPSManager);
  v11 = [NSUserDefaults alloc];
  v12 = +[PSListController bk_groupContainerURL];
  v13 = [v11 _initWithSuiteName:@"group.com.apple.iBooks" container:v12];

  v14 = [(PSListController *)self bk_syncKeyForKey:v9];
  [v13 setObject:v6 forKey:v14];
  v15 = [NSSet setWithObject:v14];
  [v10 synchronizeUserDefaultsDomain:@"group.com.apple.iBooks" keys:v15 container:@"com.apple.iBooks" appGroupContainer:@"group.com.apple.iBooks"];

  v16 = BKSettingsLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = 138412802;
    v18 = v9;
    v19 = 2112;
    v20 = v14;
    v21 = 2112;
    v22 = v6;
    _os_log_impl(&dword_0, v16, OS_LOG_TYPE_INFO, "Synced setting to watch: %@(%@) = %@", &v17, 0x20u);
  }
}

- (id)bk_appLocalDefaults
{
  v8 = 0;
  v2 = [LSBundleRecord bundleRecordWithApplicationIdentifier:@"com.apple.iBooks" error:&v8];
  v3 = v8;
  if (v3)
  {
    v4 = BKSettingsLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_C164(v3, v4);
    }

    v5 = 0;
  }

  else
  {
    v6 = [NSUserDefaults alloc];
    v4 = [v2 dataContainerURL];
    v5 = [v6 _initWithSuiteName:@"com.apple.iBooks" container:v4];
  }

  return v5;
}

@end