@interface SKOverlayAppClipConfiguration
- (NSString)campaignToken;
- (NSString)customProductPageIdentifier;
- (NSString)latestReleaseID;
- (NSString)providerToken;
- (SKOverlayAppClipConfiguration)initWithBacking:(id)backing;
- (SKOverlayAppClipConfiguration)initWithPosition:(SKOverlayPosition)position;
- (SKOverlayPosition)position;
- (id)_init;
- (id)additionalValueForKey:(NSString *)key;
- (void)setAdditionalValue:(id)value forKey:(NSString *)key;
- (void)setCampaignToken:(NSString *)campaignToken;
- (void)setCustomProductPageIdentifier:(NSString *)customProductPageIdentifier;
- (void)setLatestReleaseID:(NSString *)latestReleaseID;
- (void)setPosition:(SKOverlayPosition)position;
- (void)setProviderToken:(NSString *)providerToken;
@end

@implementation SKOverlayAppClipConfiguration

- (SKOverlayAppClipConfiguration)initWithPosition:(SKOverlayPosition)position
{
  sKOverlayPositionBottom = [objc_alloc(MEMORY[0x1E698B588]) initWithPosition:position != SKOverlayPositionBottom];
  v7.receiver = self;
  v7.super_class = SKOverlayAppClipConfiguration;
  v5 = [(SKOverlayConfiguration *)&v7 initWithBacking:sKOverlayPositionBottom];

  return v5;
}

- (id)_init
{
  v3.receiver = self;
  v3.super_class = SKOverlayAppClipConfiguration;
  return [(SKOverlayConfiguration *)&v3 _init];
}

- (SKOverlayAppClipConfiguration)initWithBacking:(id)backing
{
  v4.receiver = self;
  v4.super_class = SKOverlayAppClipConfiguration;
  return [(SKOverlayConfiguration *)&v4 initWithBacking:backing];
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

@end