@interface SKOverlayAppConfiguration
- (BOOL)userDismissible;
- (NSString)appIdentifier;
- (NSString)campaignToken;
- (NSString)customProductPageIdentifier;
- (NSString)latestReleaseID;
- (NSString)providerToken;
- (SKOverlayAppConfiguration)initWithAppIdentifier:(NSString *)appIdentifier position:(SKOverlayPosition)position;
- (SKOverlayAppConfiguration)initWithBacking:(id)backing;
- (SKOverlayPosition)position;
- (id)_impressionDictFromImpression:(id)impression;
- (id)_init;
- (id)additionalValueForKey:(NSString *)key;
- (void)setAdImpression:(SKAdImpression *)impression;
- (void)setAdditionalValue:(id)value forKey:(NSString *)key;
- (void)setAppIdentifier:(NSString *)appIdentifier;
- (void)setCampaignToken:(NSString *)campaignToken;
- (void)setCustomProductPageIdentifier:(NSString *)customProductPageIdentifier;
- (void)setLatestReleaseID:(NSString *)latestReleaseID;
- (void)setPosition:(SKOverlayPosition)position;
- (void)setProviderToken:(NSString *)providerToken;
- (void)setUserDismissible:(BOOL)userDismissible;
@end

@implementation SKOverlayAppConfiguration

- (SKOverlayAppConfiguration)initWithAppIdentifier:(NSString *)appIdentifier position:(SKOverlayPosition)position
{
  v6 = MEMORY[0x1E698B590];
  v7 = appIdentifier;
  sKOverlayPositionBottom = [[v6 alloc] initWithAppIdentifier:v7 position:position != SKOverlayPositionBottom];

  v11.receiver = self;
  v11.super_class = SKOverlayAppConfiguration;
  v9 = [(SKOverlayConfiguration *)&v11 initWithBacking:sKOverlayPositionBottom];

  return v9;
}

- (id)_init
{
  v3.receiver = self;
  v3.super_class = SKOverlayAppConfiguration;
  return [(SKOverlayConfiguration *)&v3 _init];
}

- (SKOverlayAppConfiguration)initWithBacking:(id)backing
{
  v4.receiver = self;
  v4.super_class = SKOverlayAppConfiguration;
  return [(SKOverlayConfiguration *)&v4 initWithBacking:backing];
}

- (void)setAppIdentifier:(NSString *)appIdentifier
{
  v4 = appIdentifier;
  _backing = [(SKOverlayConfiguration *)self _backing];
  [_backing setAppIdentifier:v4];
}

- (NSString)appIdentifier
{
  _backing = [(SKOverlayConfiguration *)self _backing];
  appIdentifier = [_backing appIdentifier];

  return appIdentifier;
}

- (void)setCampaignToken:(NSString *)campaignToken
{
  v4 = campaignToken;
  _backing = [(SKOverlayConfiguration *)self _backing];
  [_backing setCampaignToken:v4];
}

- (NSString)campaignToken
{
  _backing = [(SKOverlayConfiguration *)self _backing];
  campaignToken = [_backing campaignToken];

  return campaignToken;
}

- (void)setProviderToken:(NSString *)providerToken
{
  v4 = providerToken;
  _backing = [(SKOverlayConfiguration *)self _backing];
  [_backing setProviderToken:v4];
}

- (NSString)providerToken
{
  _backing = [(SKOverlayConfiguration *)self _backing];
  providerToken = [_backing providerToken];

  return providerToken;
}

- (void)setCustomProductPageIdentifier:(NSString *)customProductPageIdentifier
{
  v4 = customProductPageIdentifier;
  _backing = [(SKOverlayConfiguration *)self _backing];
  [_backing setProductVariantID:v4];
}

- (NSString)customProductPageIdentifier
{
  _backing = [(SKOverlayConfiguration *)self _backing];
  productVariantID = [_backing productVariantID];

  return productVariantID;
}

- (void)setLatestReleaseID:(NSString *)latestReleaseID
{
  v4 = latestReleaseID;
  _backing = [(SKOverlayConfiguration *)self _backing];
  [_backing setLatestReleaseID:v4];
}

- (NSString)latestReleaseID
{
  _backing = [(SKOverlayConfiguration *)self _backing];
  latestReleaseID = [_backing latestReleaseID];

  return latestReleaseID;
}

- (void)setPosition:(SKOverlayPosition)position
{
  _backing = [(SKOverlayConfiguration *)self _backing];
  [_backing setPosition:position != SKOverlayPositionBottom];
}

- (SKOverlayPosition)position
{
  _backing = [(SKOverlayConfiguration *)self _backing];
  v3 = ([_backing position] != 0);

  return v3;
}

- (void)setUserDismissible:(BOOL)userDismissible
{
  v3 = userDismissible;
  _backing = [(SKOverlayConfiguration *)self _backing];
  [_backing setUserDismissible:v3];
}

- (BOOL)userDismissible
{
  _backing = [(SKOverlayConfiguration *)self _backing];
  userDismissible = [_backing userDismissible];

  return userDismissible;
}

- (void)setAdditionalValue:(id)value forKey:(NSString *)key
{
  v6 = key;
  v7 = value;
  _backing = [(SKOverlayConfiguration *)self _backing];
  [_backing setAdditionalValue:v7 forKey:v6];
}

- (id)additionalValueForKey:(NSString *)key
{
  v4 = key;
  _backing = [(SKOverlayConfiguration *)self _backing];
  v6 = [_backing additionalValueForKey:v4];

  return v6;
}

- (void)setAdImpression:(SKAdImpression *)impression
{
  if (impression)
  {
    v4 = [(SKOverlayAppConfiguration *)self _impressionDictFromImpression:?];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __45__SKOverlayAppConfiguration_setAdImpression___block_invoke;
    v5[3] = &unk_1E7B27D18;
    v5[4] = self;
    [v4 enumerateKeysAndObjectsUsingBlock:v5];
  }
}

- (id)_impressionDictFromImpression:(id)impression
{
  impressionCopy = impression;
  v4 = objc_opt_new();
  signature = [impressionCopy signature];
  [v4 setObject:signature forKeyedSubscript:@"adNetworkAttributionSignature"];

  adCampaignIdentifier = [impressionCopy adCampaignIdentifier];
  [v4 setObject:adCampaignIdentifier forKeyedSubscript:@"adNetworkCampaignId"];

  sourceIdentifier = [impressionCopy sourceIdentifier];
  [v4 setObject:sourceIdentifier forKeyedSubscript:@"sourceIdentifier"];

  adNetworkIdentifier = [impressionCopy adNetworkIdentifier];
  [v4 setObject:adNetworkIdentifier forKeyedSubscript:@"adNetworkId"];

  adImpressionIdentifier = [impressionCopy adImpressionIdentifier];
  lowercaseString = [adImpressionIdentifier lowercaseString];
  [v4 setObject:lowercaseString forKeyedSubscript:@"adNetworkNonce"];

  timestamp = [impressionCopy timestamp];
  [v4 setObject:timestamp forKeyedSubscript:@"adNetworkImpressionTimestamp"];

  version = [impressionCopy version];
  [v4 setObject:version forKeyedSubscript:@"adNetworkPayloadVersion"];

  sourceAppStoreItemIdentifier = [impressionCopy sourceAppStoreItemIdentifier];

  [v4 setObject:sourceAppStoreItemIdentifier forKeyedSubscript:@"adNetworkSourceAppStoreIdentifier"];

  return v4;
}

@end