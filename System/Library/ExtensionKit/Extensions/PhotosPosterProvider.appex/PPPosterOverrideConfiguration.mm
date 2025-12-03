@interface PPPosterOverrideConfiguration
- (BOOL)applySmartCrop;
- (BOOL)includeBackfillLayers;
- (BOOL)includeInactiveLayers;
- (NSString)assetIdentifier;
- (NSURL)assetURL;
- (PPPosterOverrideConfiguration)initWithWFWallpaperConfiguration:(id)configuration;
@end

@implementation PPPosterOverrideConfiguration

- (BOOL)includeInactiveLayers
{
  wallpaperConfiguration = [(PPPosterOverrideConfiguration *)self wallpaperConfiguration];
  v3 = [wallpaperConfiguration location] != 1;

  return v3;
}

- (BOOL)includeBackfillLayers
{
  wallpaperConfiguration = [(PPPosterOverrideConfiguration *)self wallpaperConfiguration];
  usePreview = [wallpaperConfiguration usePreview];
  bOOLValue = [usePreview BOOLValue];

  return bOOLValue;
}

- (BOOL)applySmartCrop
{
  wallpaperConfiguration = [(PPPosterOverrideConfiguration *)self wallpaperConfiguration];
  smartCrop = [wallpaperConfiguration smartCrop];
  bOOLValue = [smartCrop BOOLValue];

  return bOOLValue;
}

- (NSString)assetIdentifier
{
  wallpaperConfiguration = [(PPPosterOverrideConfiguration *)self wallpaperConfiguration];
  assetIdentifier = [wallpaperConfiguration assetIdentifier];

  return assetIdentifier;
}

- (NSURL)assetURL
{
  wallpaperConfiguration = [(PPPosterOverrideConfiguration *)self wallpaperConfiguration];
  assetURL = [wallpaperConfiguration assetURL];

  return assetURL;
}

- (PPPosterOverrideConfiguration)initWithWFWallpaperConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v9.receiver = self;
  v9.super_class = PPPosterOverrideConfiguration;
  v6 = [(PPPosterOverrideConfiguration *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_wallpaperConfiguration, configuration);
  }

  return v7;
}

@end