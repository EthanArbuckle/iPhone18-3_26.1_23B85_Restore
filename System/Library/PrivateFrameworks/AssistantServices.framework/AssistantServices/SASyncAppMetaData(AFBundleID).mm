@interface SASyncAppMetaData(AFBundleID)
- (id)_af_preferredBundleID;
@end

@implementation SASyncAppMetaData(AFBundleID)

- (id)_af_preferredBundleID
{
  v2 = [a1 appIdentifyingInfo];
  v3 = [v2 bundleId];

  if (!v3)
  {
    v4 = [a1 appIdentifyingInfo];
    v3 = [v4 clientIdentifier];
  }

  return v3;
}

@end