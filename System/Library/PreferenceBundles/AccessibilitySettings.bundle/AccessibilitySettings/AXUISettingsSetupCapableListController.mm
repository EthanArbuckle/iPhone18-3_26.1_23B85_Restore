@interface AXUISettingsSetupCapableListController
- (id)soundActionsDownloadManager;
- (id)soundActionslocalURL;
- (void)popToViewController:(id)a3 animated:(BOOL)a4 destinationClass:(Class)a5;
@end

@implementation AXUISettingsSetupCapableListController

- (id)soundActionsDownloadManager
{
  v3 = [(AXUISettingsSetupCapableListController *)self _axGetSoundActionsDownloadManager];

  if (!v3)
  {
    v4 = objc_alloc_init(SoundActionsAssetsDownloadManager);
    [(SoundActionsAssetsDownloadManager *)v4 setDelegate:self];
    [(SoundActionsAssetsDownloadManager *)v4 refreshAssets];
    [(AXUISettingsSetupCapableListController *)self _axSetSoundActionsDownloadManager:v4];
  }

  return [(AXUISettingsSetupCapableListController *)self _axGetSoundActionsDownloadManager];
}

- (id)soundActionslocalURL
{
  v2 = [(AXUISettingsSetupCapableListController *)self soundActionsDownloadManager];
  v3 = [v2 latestAsset];
  v4 = [v3 localURL];

  return v4;
}

- (void)popToViewController:(id)a3 animated:(BOOL)a4 destinationClass:(Class)a5
{
  swift_getObjCClassMetadata();
  v7 = a3;
  v8 = self;
  sub_18F5A0(v7);
}

@end