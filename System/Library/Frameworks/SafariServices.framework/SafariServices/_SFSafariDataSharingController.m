@interface _SFSafariDataSharingController
+ (id)sharedController;
- (_SFSafariDataSharingController)init;
- (id)systemDataContainerURLWithAppBundleID:(id)a3;
- (void)_loadAppBundlesWithSeparateDataIfNeeded;
- (void)checkInAppBundleIDIfNeeded:(id)a3;
- (void)clearAllWebsitesData;
@end

@implementation _SFSafariDataSharingController

+ (id)sharedController
{
  if (sharedController_onceToken_0 != -1)
  {
    +[_SFSafariDataSharingController sharedController];
  }

  v3 = sharedController_sharedController_0;

  return v3;
}

- (_SFSafariDataSharingController)init
{
  v7.receiver = self;
  v7.super_class = _SFSafariDataSharingController;
  v2 = [(_SFSafariDataSharingController *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.SafariServices.SafariDataSharing", 0);
    dataSharingQueue = v2->_dataSharingQueue;
    v2->_dataSharingQueue = v3;

    v5 = v2;
  }

  return v2;
}

- (id)systemDataContainerURLWithAppBundleID:(id)a3
{
  v3 = [MEMORY[0x1E69635E0] applicationProxyForIdentifier:a3];
  v4 = [v3 dataContainerURL];
  v5 = [v4 URLByAppendingPathComponent:@"/SystemData/com.apple.SafariViewService"];

  return v5;
}

- (void)_loadAppBundlesWithSeparateDataIfNeeded
{
  if (!self->_appBundlesWithSeparateData)
  {
    v3 = [MEMORY[0x1E695E000] safari_browserDefaults];
    v4 = [v3 arrayForKey:@"AppBundleIDsWithSeperateData"];
    v5 = [v4 mutableCopy];
    appBundlesWithSeparateData = self->_appBundlesWithSeparateData;
    self->_appBundlesWithSeparateData = v5;

    if (!self->_appBundlesWithSeparateData)
    {
      v7 = [MEMORY[0x1E695DF70] array];
      v8 = self->_appBundlesWithSeparateData;
      self->_appBundlesWithSeparateData = v7;
    }
  }
}

- (void)checkInAppBundleIDIfNeeded:(id)a3
{
  v4 = a3;
  dataSharingQueue = self->_dataSharingQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __61___SFSafariDataSharingController_checkInAppBundleIDIfNeeded___block_invoke;
  v7[3] = &unk_1E848F548;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dataSharingQueue, v7);
}

- (void)clearAllWebsitesData
{
  dataSharingQueue = self->_dataSharingQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54___SFSafariDataSharingController_clearAllWebsitesData__block_invoke;
  block[3] = &unk_1E848F810;
  block[4] = self;
  dispatch_async(dataSharingQueue, block);
}

@end