@interface SKAdImpression
- (SKAdImpression)initWithSourceAppStoreItemIdentifier:(NSNumber *)sourceAppStoreItemIdentifier advertisedAppStoreItemIdentifier:(NSNumber *)advertisedAppStoreItemIdentifier adNetworkIdentifier:(NSString *)adNetworkIdentifier adCampaignIdentifier:(NSNumber *)adCampaignIdentifier adImpressionIdentifier:(NSString *)adImpressionIdentifier timestamp:(NSNumber *)timestamp signature:(NSString *)signature version:(NSString *)version;
@end

@implementation SKAdImpression

- (SKAdImpression)initWithSourceAppStoreItemIdentifier:(NSNumber *)sourceAppStoreItemIdentifier advertisedAppStoreItemIdentifier:(NSNumber *)advertisedAppStoreItemIdentifier adNetworkIdentifier:(NSString *)adNetworkIdentifier adCampaignIdentifier:(NSNumber *)adCampaignIdentifier adImpressionIdentifier:(NSString *)adImpressionIdentifier timestamp:(NSNumber *)timestamp signature:(NSString *)signature version:(NSString *)version
{
  v27 = sourceAppStoreItemIdentifier;
  v26 = advertisedAppStoreItemIdentifier;
  v25 = adNetworkIdentifier;
  v24 = adCampaignIdentifier;
  v23 = adImpressionIdentifier;
  v22 = timestamp;
  v17 = signature;
  v18 = version;
  v28.receiver = self;
  v28.super_class = SKAdImpression;
  v19 = [(SKAdImpression *)&v28 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_sourceAppStoreItemIdentifier, sourceAppStoreItemIdentifier);
    objc_storeStrong(&v20->_advertisedAppStoreItemIdentifier, advertisedAppStoreItemIdentifier);
    objc_storeStrong(&v20->_adNetworkIdentifier, adNetworkIdentifier);
    objc_storeStrong(&v20->_adCampaignIdentifier, adCampaignIdentifier);
    objc_storeStrong(&v20->_adImpressionIdentifier, adImpressionIdentifier);
    objc_storeStrong(&v20->_timestamp, timestamp);
    objc_storeStrong(&v20->_signature, signature);
    objc_storeStrong(&v20->_version, version);
  }

  return v20;
}

@end