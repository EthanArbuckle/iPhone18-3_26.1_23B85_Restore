@interface AEChatKitAssetPackage
- (AEChatKitAssetPackage)initWithPayload:(id)payload;
@end

@implementation AEChatKitAssetPackage

- (AEChatKitAssetPackage)initWithPayload:(id)payload
{
  userInfo = [payload userInfo];
  v5 = [userInfo objectForKey:@"AEAssetPackageAssetIdentifier"];
  v6 = [userInfo objectForKey:@"AEAssetPackageDurableURLs"];
  v7 = [userInfo objectForKey:@"AEAssetPackageSidecar"];
  v8 = [(AEAssetPackage *)self initWithAssetIdentifier:v5 durableURLs:v6 sidecar:v7];

  return v8;
}

@end