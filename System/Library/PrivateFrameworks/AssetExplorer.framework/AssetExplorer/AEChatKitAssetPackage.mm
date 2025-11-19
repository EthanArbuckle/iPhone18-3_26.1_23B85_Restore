@interface AEChatKitAssetPackage
- (AEChatKitAssetPackage)initWithPayload:(id)a3;
@end

@implementation AEChatKitAssetPackage

- (AEChatKitAssetPackage)initWithPayload:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKey:@"AEAssetPackageAssetIdentifier"];
  v6 = [v4 objectForKey:@"AEAssetPackageDurableURLs"];
  v7 = [v4 objectForKey:@"AEAssetPackageSidecar"];
  v8 = [(AEAssetPackage *)self initWithAssetIdentifier:v5 durableURLs:v6 sidecar:v7];

  return v8;
}

@end