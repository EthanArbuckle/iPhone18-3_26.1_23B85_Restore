@interface WKWebViewConfiguration(QLUtilities)
- (id)_sharedDataStoreForBundleIdentifier:()QLUtilities;
- (void)ql_initWithForegroundPriorityAndSourceBundleIdentifier:()QLUtilities;
@end

@implementation WKWebViewConfiguration(QLUtilities)

- (void)ql_initWithForegroundPriorityAndSourceBundleIdentifier:()QLUtilities
{
  v4 = a3;
  if (v4)
  {
    v5 = [self _sharedDataStoreForBundleIdentifier:v4];
  }

  else
  {
    v6 = objc_alloc(MEMORY[0x277CE3868]);
    v7 = objc_alloc_init(MEMORY[0x277CE38C8]);
    v5 = [v6 _initWithConfiguration:v7];
  }

  v8 = [self init];
  v9 = v8;
  if (v8)
  {
    [v8 setWebsiteDataStore:v5];
    [v9 _setClientNavigationsRunAtForegroundPriority:1];
  }

  return v9;
}

- (id)_sharedDataStoreForBundleIdentifier:()QLUtilities
{
  v3 = a3;
  if (_sharedDataStoreForBundleIdentifier__once != -1)
  {
    [WKWebViewConfiguration(QLUtilities) _sharedDataStoreForBundleIdentifier:];
  }

  v4 = _sharedDataStoreForBundleIdentifier__sharedWebKitDataStoreByBundleIdentifier;
  objc_sync_enter(v4);
  v5 = [_sharedDataStoreForBundleIdentifier__sharedWebKitDataStoreByBundleIdentifier objectForKeyedSubscript:v3];
  if (!v5)
  {
    v6 = objc_alloc_init(MEMORY[0x277CE38C8]);
    [v6 setSourceApplicationBundleIdentifier:v3];
    v5 = [objc_alloc(MEMORY[0x277CE3868]) _initWithConfiguration:v6];
    [_sharedDataStoreForBundleIdentifier__sharedWebKitDataStoreByBundleIdentifier setObject:v5 forKeyedSubscript:v3];
  }

  objc_sync_exit(v4);

  return v5;
}

@end