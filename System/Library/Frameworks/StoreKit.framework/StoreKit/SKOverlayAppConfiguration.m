@interface SKOverlayAppConfiguration
- (BOOL)userDismissible;
- (NSString)appIdentifier;
- (NSString)campaignToken;
- (NSString)customProductPageIdentifier;
- (NSString)latestReleaseID;
- (NSString)providerToken;
- (SKOverlayAppConfiguration)initWithAppIdentifier:(NSString *)appIdentifier position:(SKOverlayPosition)position;
- (SKOverlayAppConfiguration)initWithBacking:(id)a3;
- (SKOverlayPosition)position;
- (id)_impressionDictFromImpression:(id)a3;
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
  v8 = [[v6 alloc] initWithAppIdentifier:v7 position:position != SKOverlayPositionBottom];

  v11.receiver = self;
  v11.super_class = SKOverlayAppConfiguration;
  v9 = [(SKOverlayConfiguration *)&v11 initWithBacking:v8];

  return v9;
}

- (id)_init
{
  v3.receiver = self;
  v3.super_class = SKOverlayAppConfiguration;
  return [(SKOverlayConfiguration *)&v3 _init];
}

- (SKOverlayAppConfiguration)initWithBacking:(id)a3
{
  v4.receiver = self;
  v4.super_class = SKOverlayAppConfiguration;
  return [(SKOverlayConfiguration *)&v4 initWithBacking:a3];
}

- (void)setAppIdentifier:(NSString *)appIdentifier
{
  v4 = appIdentifier;
  v5 = [(SKOverlayConfiguration *)self _backing];
  [v5 setAppIdentifier:v4];
}

- (NSString)appIdentifier
{
  v2 = [(SKOverlayConfiguration *)self _backing];
  v3 = [v2 appIdentifier];

  return v3;
}

- (void)setCampaignToken:(NSString *)campaignToken
{
  v4 = campaignToken;
  v5 = [(SKOverlayConfiguration *)self _backing];
  [v5 setCampaignToken:v4];
}

- (NSString)campaignToken
{
  v2 = [(SKOverlayConfiguration *)self _backing];
  v3 = [v2 campaignToken];

  return v3;
}

- (void)setProviderToken:(NSString *)providerToken
{
  v4 = providerToken;
  v5 = [(SKOverlayConfiguration *)self _backing];
  [v5 setProviderToken:v4];
}

- (NSString)providerToken
{
  v2 = [(SKOverlayConfiguration *)self _backing];
  v3 = [v2 providerToken];

  return v3;
}

- (void)setCustomProductPageIdentifier:(NSString *)customProductPageIdentifier
{
  v4 = customProductPageIdentifier;
  v5 = [(SKOverlayConfiguration *)self _backing];
  [v5 setProductVariantID:v4];
}

- (NSString)customProductPageIdentifier
{
  v2 = [(SKOverlayConfiguration *)self _backing];
  v3 = [v2 productVariantID];

  return v3;
}

- (void)setLatestReleaseID:(NSString *)latestReleaseID
{
  v4 = latestReleaseID;
  v5 = [(SKOverlayConfiguration *)self _backing];
  [v5 setLatestReleaseID:v4];
}

- (NSString)latestReleaseID
{
  v2 = [(SKOverlayConfiguration *)self _backing];
  v3 = [v2 latestReleaseID];

  return v3;
}

- (void)setPosition:(SKOverlayPosition)position
{
  v4 = [(SKOverlayConfiguration *)self _backing];
  [v4 setPosition:position != SKOverlayPositionBottom];
}

- (SKOverlayPosition)position
{
  v2 = [(SKOverlayConfiguration *)self _backing];
  v3 = ([v2 position] != 0);

  return v3;
}

- (void)setUserDismissible:(BOOL)userDismissible
{
  v3 = userDismissible;
  v4 = [(SKOverlayConfiguration *)self _backing];
  [v4 setUserDismissible:v3];
}

- (BOOL)userDismissible
{
  v2 = [(SKOverlayConfiguration *)self _backing];
  v3 = [v2 userDismissible];

  return v3;
}

- (void)setAdditionalValue:(id)value forKey:(NSString *)key
{
  v6 = key;
  v7 = value;
  v8 = [(SKOverlayConfiguration *)self _backing];
  [v8 setAdditionalValue:v7 forKey:v6];
}

- (id)additionalValueForKey:(NSString *)key
{
  v4 = key;
  v5 = [(SKOverlayConfiguration *)self _backing];
  v6 = [v5 additionalValueForKey:v4];

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

- (id)_impressionDictFromImpression:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [v3 signature];
  [v4 setObject:v5 forKeyedSubscript:@"adNetworkAttributionSignature"];

  v6 = [v3 adCampaignIdentifier];
  [v4 setObject:v6 forKeyedSubscript:@"adNetworkCampaignId"];

  v7 = [v3 sourceIdentifier];
  [v4 setObject:v7 forKeyedSubscript:@"sourceIdentifier"];

  v8 = [v3 adNetworkIdentifier];
  [v4 setObject:v8 forKeyedSubscript:@"adNetworkId"];

  v9 = [v3 adImpressionIdentifier];
  v10 = [v9 lowercaseString];
  [v4 setObject:v10 forKeyedSubscript:@"adNetworkNonce"];

  v11 = [v3 timestamp];
  [v4 setObject:v11 forKeyedSubscript:@"adNetworkImpressionTimestamp"];

  v12 = [v3 version];
  [v4 setObject:v12 forKeyedSubscript:@"adNetworkPayloadVersion"];

  v13 = [v3 sourceAppStoreItemIdentifier];

  [v4 setObject:v13 forKeyedSubscript:@"adNetworkSourceAppStoreIdentifier"];

  return v4;
}

@end