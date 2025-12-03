@interface STStorageOtherFakeApp
- (STStorageOtherFakeApp)init;
@end

@implementation STStorageOtherFakeApp

- (STStorageOtherFakeApp)init
{
  v10.receiver = self;
  v10.super_class = STStorageOtherFakeApp;
  v2 = [(STStorageOtherFakeApp *)&v10 init];
  v3 = v2;
  if (v2)
  {
    v4 = comApplePrefs;
    [(STStorageOtherFakeApp *)v2 setBundleIdentifier:comApplePrefs];
    [(STStorageOtherFakeApp *)v3 setAppIdentifier:v4];
    v5 = [LSApplicationRecord alloc];
    bundleIdentifier = [(STStorageOtherFakeApp *)v3 bundleIdentifier];
    v7 = [v5 initWithBundleIdentifier:bundleIdentifier allowPlaceholder:1 error:0];
    [(STStorageOtherFakeApp *)v3 setAppRecord:v7];

    v8 = STStorageLocStr(@"OTHER");
    [(STStorageOtherFakeApp *)v3 setName:v8];
  }

  return v3;
}

@end