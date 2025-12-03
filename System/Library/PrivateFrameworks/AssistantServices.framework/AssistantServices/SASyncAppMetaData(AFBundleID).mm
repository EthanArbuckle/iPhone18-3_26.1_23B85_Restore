@interface SASyncAppMetaData(AFBundleID)
- (id)_af_preferredBundleID;
@end

@implementation SASyncAppMetaData(AFBundleID)

- (id)_af_preferredBundleID
{
  appIdentifyingInfo = [self appIdentifyingInfo];
  bundleId = [appIdentifyingInfo bundleId];

  if (!bundleId)
  {
    appIdentifyingInfo2 = [self appIdentifyingInfo];
    bundleId = [appIdentifyingInfo2 clientIdentifier];
  }

  return bundleId;
}

@end