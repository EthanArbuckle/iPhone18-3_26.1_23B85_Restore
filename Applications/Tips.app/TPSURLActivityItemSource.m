@interface TPSURLActivityItemSource
- (TPSTip)tip;
- (TPSUIAppController)appController;
- (TPSURLActivityItemSource)initWithTip:(id)a3 appController:(id)a4;
- (id)activityViewController:(id)a3 thumbnailImageForActivityType:(id)a4 suggestedSize:(CGSize)a5;
- (id)activityViewControllerLinkPresentationMetadata:(id)a3;
- (id)cacheImage;
@end

@implementation TPSURLActivityItemSource

- (TPSURLActivityItemSource)initWithTip:(id)a3 appController:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17.receiver = self;
  v17.super_class = TPSURLActivityItemSource;
  v8 = [(TPSURLActivityItemSource *)&v17 init];
  v9 = v8;
  if (v8)
  {
    [(TPSURLActivityItemSource *)v8 setTip:v6];
    WeakRetained = objc_loadWeakRetained(&v9->_tip);
    v11 = [WeakRetained webURLPath];

    if (v11)
    {
      v9->_userInterfaceStyle = 1;
      v12 = objc_loadWeakRetained(&v9->_tip);
      v13 = [v12 webURLPath];
      v14 = [NSURL URLWithString:v13];
      url = v9->_url;
      v9->_url = v14;

      objc_storeWeak(&v9->_appController, v7);
    }
  }

  return v9;
}

- (id)activityViewController:(id)a3 thumbnailImageForActivityType:(id)a4 suggestedSize:(CGSize)a5
{
  if (UIActivityTypeAirDrop == a4)
  {
    v6 = [TPSCommonDefines clientBundleIdentifier:a3];
    v7 = +[UIScreen mainScreen];
    [v7 scale];
    v5 = [UIImage _applicationIconImageForBundleIdentifier:v6 format:1 scale:?];
  }

  else
  {
    v5 = [(TPSURLActivityItemSource *)self cacheImage:a3];
  }

  return v5;
}

- (id)activityViewControllerLinkPresentationMetadata:(id)a3
{
  v4 = [(TPSURLActivityItemSource *)self cacheImage];
  v5 = objc_alloc_init(LPLinkMetadata);
  WeakRetained = objc_loadWeakRetained(&self->_tip);
  v7 = [WeakRetained shortTitle];
  if (v7)
  {
    [v5 setTitle:v7];
  }

  else
  {
    v8 = objc_loadWeakRetained(&self->_tip);
    v9 = [v8 title];
    [v5 setTitle:v9];
  }

  if (v4)
  {
    v10 = [[LPImage alloc] initWithPlatformImage:v4];
    [v5 setImage:v10];
  }

  return v5;
}

- (id)cacheImage
{
  v3 = [(TPSURLActivityItemSource *)self tip];
  v4 = [(TPSURLActivityItemSource *)self appController];
  v5 = [v3 fullContentAssets];
  v6 = [v3 language];
  userInterfaceStyle = self->_userInterfaceStyle;
  v8 = [(TPSURLActivityItemSource *)self tip];
  v9 = [v8 assetFileInfoManager];
  v10 = [v4 assetConfigurationForAssets:v5 language:v6 sizeClass:1 style:userInterfaceStyle assetFileInfoManager:v9];

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