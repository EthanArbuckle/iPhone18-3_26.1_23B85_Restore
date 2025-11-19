@interface BYODPurchaseURL
- (BYODPurchaseURL)initWithDictionary:(id)a3;
@end

@implementation BYODPurchaseURL

- (BYODPurchaseURL)initWithDictionary:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = BYODPurchaseURL;
  v5 = [(BYODPurchaseURL *)&v11 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"purchaseDomainServerUrl"];
    purchaseURL = v5->_purchaseURL;
    v5->_purchaseURL = v6;

    v8 = [v4 objectForKeyedSubscript:@"dnsProviderName"];
    dnsProviderName = v5->_dnsProviderName;
    v5->_dnsProviderName = v8;
  }

  return v5;
}

@end