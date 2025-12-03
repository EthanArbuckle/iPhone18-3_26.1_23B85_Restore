@interface STStorageSystemFakeApp
- (STStorageSystemFakeApp)init;
- (id)versionString;
@end

@implementation STStorageSystemFakeApp

- (STStorageSystemFakeApp)init
{
  v10.receiver = self;
  v10.super_class = STStorageSystemFakeApp;
  v2 = [(STStorageSystemFakeApp *)&v10 init];
  v3 = v2;
  if (v2)
  {
    v4 = comApplePrefs;
    [(STStorageSystemFakeApp *)v2 setBundleIdentifier:comApplePrefs];
    [(STStorageSystemFakeApp *)v3 setAppIdentifier:v4];
    v5 = [LSApplicationRecord alloc];
    bundleIdentifier = [(STStorageSystemFakeApp *)v3 bundleIdentifier];
    v7 = [v5 initWithBundleIdentifier:bundleIdentifier allowPlaceholder:1 error:0];
    [(STStorageSystemFakeApp *)v3 setAppRecord:v7];

    v8 = STNameForCategoryKey();
    [(STStorageSystemFakeApp *)v3 setName:v8];
  }

  return v3;
}

- (id)versionString
{
  v2 = STStorageLocStr(@"VERSION_FMT");
  v3 = +[UIDevice currentDevice];
  systemVersion = [v3 systemVersion];
  v5 = [NSString stringWithFormat:v2, systemVersion];

  return v5;
}

@end