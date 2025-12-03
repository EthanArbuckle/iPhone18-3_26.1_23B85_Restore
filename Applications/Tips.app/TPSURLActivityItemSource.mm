@interface TPSURLActivityItemSource
- (TPSTip)tip;
- (TPSUIAppController)appController;
- (TPSURLActivityItemSource)initWithTip:(id)tip appController:(id)controller;
- (id)activityViewController:(id)controller thumbnailImageForActivityType:(id)type suggestedSize:(CGSize)size;
- (id)activityViewControllerLinkPresentationMetadata:(id)metadata;
- (id)cacheImage;
@end

@implementation TPSURLActivityItemSource

- (TPSURLActivityItemSource)initWithTip:(id)tip appController:(id)controller
{
  tipCopy = tip;
  controllerCopy = controller;
  v17.receiver = self;
  v17.super_class = TPSURLActivityItemSource;
  v8 = [(TPSURLActivityItemSource *)&v17 init];
  v9 = v8;
  if (v8)
  {
    [(TPSURLActivityItemSource *)v8 setTip:tipCopy];
    WeakRetained = objc_loadWeakRetained(&v9->_tip);
    webURLPath = [WeakRetained webURLPath];

    if (webURLPath)
    {
      v9->_userInterfaceStyle = 1;
      v12 = objc_loadWeakRetained(&v9->_tip);
      webURLPath2 = [v12 webURLPath];
      v14 = [NSURL URLWithString:webURLPath2];
      url = v9->_url;
      v9->_url = v14;

      objc_storeWeak(&v9->_appController, controllerCopy);
    }
  }

  return v9;
}

- (id)activityViewController:(id)controller thumbnailImageForActivityType:(id)type suggestedSize:(CGSize)size
{
  if (UIActivityTypeAirDrop == type)
  {
    v6 = [TPSCommonDefines clientBundleIdentifier:controller];
    v7 = +[UIScreen mainScreen];
    [v7 scale];
    v5 = [UIImage _applicationIconImageForBundleIdentifier:v6 format:1 scale:?];
  }

  else
  {
    v5 = [(TPSURLActivityItemSource *)self cacheImage:controller];
  }

  return v5;
}

- (id)activityViewControllerLinkPresentationMetadata:(id)metadata
{
  cacheImage = [(TPSURLActivityItemSource *)self cacheImage];
  v5 = objc_alloc_init(LPLinkMetadata);
  WeakRetained = objc_loadWeakRetained(&self->_tip);
  shortTitle = [WeakRetained shortTitle];
  if (shortTitle)
  {
    [v5 setTitle:shortTitle];
  }

  else
  {
    v8 = objc_loadWeakRetained(&self->_tip);
    title = [v8 title];
    [v5 setTitle:title];
  }

  if (cacheImage)
  {
    v10 = [[LPImage alloc] initWithPlatformImage:cacheImage];
    [v5 setImage:v10];
  }

  return v5;
}

- (id)cacheImage
{
  v3 = [(TPSURLActivityItemSource *)self tip];
  appController = [(TPSURLActivityItemSource *)self appController];
  fullContentAssets = [v3 fullContentAssets];
  language = [v3 language];
  userInterfaceStyle = self->_userInterfaceStyle;
  v8 = [(TPSURLActivityItemSource *)self tip];
  assetFileInfoManager = [v8 assetFileInfoManager];
  v10 = [appController assetConfigurationForAssets:fullContentAssets language:language sizeClass:1 style:userInterfaceStyle assetFileInfoManager:assetFileInfoManager];

  v11 = [v10 cacheIdentifierForType:0];
  v12 = [TPSImageAssetController getImageForIdentifier:v11];

  return v12;
}

- (TPSUIAppController)appController
{
  WeakRetained = objc_loadWeakRetained(&self->_appController);

  return WeakRetained;
}

- (TPSTip)tip
{
  WeakRetained = objc_loadWeakRetained(&self->_tip);

  return WeakRetained;
}

@end