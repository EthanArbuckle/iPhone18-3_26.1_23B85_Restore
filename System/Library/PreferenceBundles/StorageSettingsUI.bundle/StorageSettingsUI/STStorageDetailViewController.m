@interface STStorageDetailViewController
- (STStorageDetailViewController)initWithAppRecord:(id)a3 bundleIdentifier:(id)a4 name:(id)a5 appSize:(int64_t)a6 dataSize:(int64_t)a7;
@end

@implementation STStorageDetailViewController

- (STStorageDetailViewController)initWithAppRecord:(id)a3 bundleIdentifier:(id)a4 name:(id)a5 appSize:(int64_t)a6 dataSize:(int64_t)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v27.receiver = self;
  v27.super_class = STStorageDetailViewController;
  v15 = [(STStorageDetailViewController *)&v27 init];
  if (v15)
  {
    if (v12)
    {
      v16 = [[STStorageApp alloc] initWithAppRecord:v12];
      storageApp = v15->_storageApp;
      v15->_storageApp = v16;
    }

    if (!v15->_storageApp)
    {
      v18 = [[STStorageApp alloc] initWithBundleIdentifier:v13];
      v19 = v15->_storageApp;
      v15->_storageApp = v18;

      if (!v15->_storageApp)
      {
        v20 = [[STStorageApp alloc] initWithBundleIdentifier:v13 name:v14 vendorName:0];
        v21 = v15->_storageApp;
        v15->_storageApp = v20;
      }
    }

    v22 = [STSizeVector fixed:a6 docsAndData:a7];
    [(STStorageApp *)v15->_storageApp setExternalSizes:v22];

    if (-[STStorageApp isDemoted](v15->_storageApp, "isDemoted") && [v13 isEqualToString:@"com.apple.Health"])
    {
      v23 = STLocalizedString(@"Health Data");
      [(STStorageApp *)v15->_storageApp setName:v23];
    }

    v24 = [(STStorageApp *)v15->_storageApp bundleIdentifier];
    if ([v13 isEqualToString:@"com.apple.fakeapp.SoftwareUpdate"])
    {

      v24 = @"com.apple.Preferences";
    }

    v25 = usageBundleForAppIdentifier(v24);
    [(STStorageApp *)v15->_storageApp setUsageBundle:v25];
  }

  return v15;
}

@end