@interface MPModelStoreAsset
+ (id)allSupportedProperties;
+ (void)__MPModelPropertyStoreAssetAccountIdentifier__MAPPING_MISSING__;
+ (void)__MPModelPropertyStoreAssetEndpointType__MAPPING_MISSING__;
+ (void)__MPModelPropertyStoreAssetNeedsUserUpload__MAPPING_MISSING__;
+ (void)__MPModelPropertyStoreAssetRedownloadParameters__MAPPING_MISSING__;
+ (void)__MPModelPropertyStoreAssetRedownloadable__MAPPING_MISSING__;
+ (void)__MPModelPropertyStoreAssetShouldReportPlayEvents__MAPPING_MISSING__;
+ (void)__MPModelPropertyStoreAssetSubscriptionRequired__MAPPING_MISSING__;
@end

@implementation MPModelStoreAsset

+ (void)__MPModelPropertyStoreAssetNeedsUserUpload__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelStoreAsset.m" lineNumber:37 description:@"Translator was missing mapping for MPModelPropertyStoreAssetNeedsUserUpload"];
}

+ (void)__MPModelPropertyStoreAssetSubscriptionRequired__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelStoreAsset.m" lineNumber:36 description:@"Translator was missing mapping for MPModelPropertyStoreAssetSubscriptionRequired"];
}

+ (void)__MPModelPropertyStoreAssetShouldReportPlayEvents__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelStoreAsset.m" lineNumber:35 description:@"Translator was missing mapping for MPModelPropertyStoreAssetShouldReportPlayEvents"];
}

+ (void)__MPModelPropertyStoreAssetAccountIdentifier__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelStoreAsset.m" lineNumber:34 description:@"Translator was missing mapping for MPModelPropertyStoreAssetAccountIdentifier"];
}

+ (void)__MPModelPropertyStoreAssetRedownloadable__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelStoreAsset.m" lineNumber:33 description:@"Translator was missing mapping for MPModelPropertyStoreAssetRedownloadable"];
}

+ (void)__MPModelPropertyStoreAssetRedownloadParameters__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelStoreAsset.m" lineNumber:32 description:@"Translator was missing mapping for MPModelPropertyStoreAssetRedownloadParameters"];
}

+ (void)__MPModelPropertyStoreAssetEndpointType__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelStoreAsset.m" lineNumber:31 description:@"Translator was missing mapping for MPModelPropertyStoreAssetEndpointType"];
}

+ (id)allSupportedProperties
{
  v5[7] = *MEMORY[0x1E69E9840];
  v5[0] = @"MPModelPropertyStoreAssetEndpointType";
  v5[1] = @"MPModelPropertyStoreAssetRedownloadParameters";
  v5[2] = @"MPModelPropertyStoreAssetRedownloadable";
  v5[3] = @"MPModelPropertyStoreAssetAccountIdentifier";
  v5[4] = @"MPModelPropertyStoreAssetShouldReportPlayEvents";
  v5[5] = @"MPModelPropertyStoreAssetSubscriptionRequired";
  v5[6] = MPModelPropertyStoreAssetNeedsUserUpload;
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:7];
  v3 = [MPPropertySet propertySetWithProperties:v2];

  return v3;
}

@end