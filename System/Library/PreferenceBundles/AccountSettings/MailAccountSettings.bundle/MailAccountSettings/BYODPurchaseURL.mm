@interface BYODPurchaseURL
- (BYODPurchaseURL)initWithDictionary:(id)dictionary;
@end

@implementation BYODPurchaseURL

- (BYODPurchaseURL)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v11.receiver = self;
  v11.super_class = BYODPurchaseURL;
  v5 = [(BYODPurchaseURL *)&v11 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"purchaseDomainServerUrl"];
    purchaseURL = v5->_purchaseURL;
    v5->_purchaseURL = v6;

    v8 = [dictionaryCopy objectForKeyedSubscript:@"dnsProviderName"];
    dnsProviderName = v5->_dnsProviderName;
    v5->_dnsProviderName = v8;
  }

  return v5;
}

@end