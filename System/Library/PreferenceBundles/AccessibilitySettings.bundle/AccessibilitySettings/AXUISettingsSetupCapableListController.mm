@interface AXUISettingsSetupCapableListController
- (id)soundActionsDownloadManager;
- (id)soundActionslocalURL;
- (void)popToViewController:(id)controller animated:(BOOL)animated destinationClass:(Class)class;
@end

@implementation AXUISettingsSetupCapableListController

- (id)soundActionsDownloadManager
{
  _axGetSoundActionsDownloadManager = [(AXUISettingsSetupCapableListController *)self _axGetSoundActionsDownloadManager];

  if (!_axGetSoundActionsDownloadManager)
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
  soundActionsDownloadManager = [(AXUISettingsSetupCapableListController *)self soundActionsDownloadManager];
  latestAsset = [soundActionsDownloadManager latestAsset];
  localURL = [latestAsset localURL];

  return localURL;
}

- (void)popToViewController:(id)controller animated:(BOOL)animated destinationClass:(Class)class
{
  swift_getObjCClassMetadata();
  controllerCopy = controller;
  selfCopy = self;
  sub_18F5A0(controllerCopy);
}

@end