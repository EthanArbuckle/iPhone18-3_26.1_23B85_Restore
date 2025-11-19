@interface PPPosterOverrideConfiguration
- (BOOL)applySmartCrop;
- (BOOL)includeBackfillLayers;
- (BOOL)includeInactiveLayers;
- (NSString)assetIdentifier;
- (NSURL)assetURL;
- (PPPosterOverrideConfiguration)initWithWFWallpaperConfiguration:(id)a3;
@end

@implementation PPPosterOverrideConfiguration

- (BOOL)includeInactiveLayers
{
  v2 = [(PPPosterOverrideConfiguration *)self wallpaperConfiguration];
  v3 = [v2 location] != 1;

  return v3;
}

- (BOOL)includeBackfillLayers
{
  v2 = [(PPPosterOverrideConfiguration *)self wallpaperConfiguration];
  v3 = [v2 usePreview];
  v4 = [v3 BOOLValue];

  return v4;
}

- (BOOL)applySmartCrop
{
  v2 = [(PPPosterOverrideConfiguration *)self wallpaperConfiguration];
  v3 = [v2 smartCrop];
  v4 = [v3 BOOLValue];

  return v4;
}

- (NSString)assetIdentifier
{
  v2 = [(PPPosterOverrideConfiguration *)self wallpaperConfiguration];
  v3 = [v2 assetIdentifier];

  return v3;
}

- (NSURL)assetURL
{
  v2 = [(PPPosterOverrideConfiguration *)self wallpaperConfiguration];
  v3 = [v2 assetURL];

  return v3;
}

- (PPPosterOverrideConfiguration)initWithWFWallpaperConfiguration:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PPPosterOverrideConfiguration;
  v6 = [(PPPosterOverrideConfiguration *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_wallpaperConfiguration, a3);
  }

  return v7;
}

@end