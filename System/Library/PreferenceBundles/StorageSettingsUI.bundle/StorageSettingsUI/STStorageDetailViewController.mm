@interface STStorageDetailViewController
- (STStorageDetailViewController)initWithAppRecord:(id)record bundleIdentifier:(id)identifier name:(id)name appSize:(int64_t)size dataSize:(int64_t)dataSize;
@end

@implementation STStorageDetailViewController

- (STStorageDetailViewController)initWithAppRecord:(id)record bundleIdentifier:(id)identifier name:(id)name appSize:(int64_t)size dataSize:(int64_t)dataSize
{
  recordCopy = record;
  identifierCopy = identifier;
  nameCopy = name;
  v27.receiver = self;
  v27.super_class = STStorageDetailViewController;
  v15 = [(STStorageDetailViewController *)&v27 init];
  if (v15)
  {
    if (recordCopy)
    {
      v16 = [[STStorageApp alloc] initWithAppRecord:recordCopy];
      storageApp = v15->_storageApp;
      v15->_storageApp = v16;
    }

    if (!v15->_storageApp)
    {
      v18 = [[STStorageApp alloc] initWithBundleIdentifier:identifierCopy];
      v19 = v15->_storageApp;
      v15->_storageApp = v18;

      if (!v15->_storageApp)
      {
        v20 = [[STStorageApp alloc] initWithBundleIdentifier:identifierCopy name:nameCopy vendorName:0];
        v21 = v15->_storageApp;
        v15->_storageApp = v20;
      }
    }

    v22 = [STSizeVector fixed:size docsAndData:dataSize];
    [(STStorageApp *)v15->_storageApp setExternalSizes:v22];

    if (-[STStorageApp isDemoted](v15->_storageApp, "isDemoted") && [identifierCopy isEqualToString:@"com.apple.Health"])
    {
      v23 = STLocalizedString(@"Health Data");
      [(STStorageApp *)v15->_storageApp setName:v23];
    }

    bundleIdentifier = [(STStorageApp *)v15->_storageApp bundleIdentifier];
    if ([identifierCopy isEqualToString:@"com.apple.fakeapp.SoftwareUpdate"])
    {

      bundleIdentifier = @"com.apple.Preferences";
    }

    v25 = usageBundleForAppIdentifier(bundleIdentifier);
    [(STStorageApp *)v15->_storageApp setUsageBundle:v25];
  }

  return v15;
}

@end