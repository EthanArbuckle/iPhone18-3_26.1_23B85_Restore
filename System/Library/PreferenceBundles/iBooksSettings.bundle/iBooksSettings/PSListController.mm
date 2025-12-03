@interface PSListController
+ (id)bk_groupContainerURL;
- (id)bk_appLocalDefaults;
- (void)bk_setAndSyncPreferenceToWatch:(id)watch specifier:(id)specifier;
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

- (void)bk_setAndSyncPreferenceToWatch:(id)watch specifier:(id)specifier
{
  watchCopy = watch;
  specifierCopy = specifier;
  target = [specifierCopy target];
  [target setPreferenceValue:watchCopy specifier:specifierCopy];

  v9 = [specifierCopy objectForKeyedSubscript:PSKeyNameKey];

  v10 = objc_alloc_init(NPSManager);
  v11 = [NSUserDefaults alloc];
  v12 = +[PSListController bk_groupContainerURL];
  v13 = [v11 _initWithSuiteName:@"group.com.apple.iBooks" container:v12];

  v14 = [(PSListController *)self bk_syncKeyForKey:v9];
  [v13 setObject:watchCopy forKey:v14];
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
    v22 = watchCopy;
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
    dataContainerURL = BKSettingsLog();
    if (os_log_type_enabled(dataContainerURL, OS_LOG_TYPE_ERROR))
    {
      sub_C164(v3, dataContainerURL);
    }

    v5 = 0;
  }

  else
  {
    v6 = [NSUserDefaults alloc];
    dataContainerURL = [v2 dataContainerURL];
    v5 = [v6 _initWithSuiteName:@"com.apple.iBooks" container:dataContainerURL];
  }

  return v5;
}

@end