@interface AEAudiobookPlugin
- (id)associatedAssetType;
- (id)supportedUrlSchemes;
@end

@implementation AEAudiobookPlugin

- (id)associatedAssetType
{
  v2 = objc_opt_class();

  return [v2 associatedAssetType];
}

- (id)supportedUrlSchemes
{
  v2 = +[AEAudiobookPlugin urlScheme];
  v3 = [NSArray arrayWithObjects:v2, 0];

  return v3;
}

@end