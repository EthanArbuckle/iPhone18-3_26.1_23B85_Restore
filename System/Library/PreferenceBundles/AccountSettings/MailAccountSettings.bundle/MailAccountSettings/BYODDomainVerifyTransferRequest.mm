@interface BYODDomainVerifyTransferRequest
- (BYODDomainVerifyTransferRequest)initWithAccount:(id)account accountStore:(id)store domain:(id)domain;
- (id)bodyDictionary;
- (id)urlString;
- (void)performRequestWithCallback:(id)callback;
@end

@implementation BYODDomainVerifyTransferRequest

- (BYODDomainVerifyTransferRequest)initWithAccount:(id)account accountStore:(id)store domain:(id)domain
{
  accountCopy = account;
  storeCopy = store;
  domainCopy = domain;
  urlString = [(BYODDomainVerifyTransferRequest *)self urlString];
  v14.receiver = self;
  v14.super_class = BYODDomainVerifyTransferRequest;
  v12 = [(BYODRequest *)&v14 initWithURLString:urlString accountStore:storeCopy appleAccount:accountCopy httpRequestType:@"POST" requestBody:0 httpHeader:0];

  if (v12)
  {
    objc_storeStrong(&_domainName, domain);
  }

  return v12;
}

- (id)urlString
{
  iCloudAppleAccount = [(BYODRequest *)self iCloudAppleAccount];
  v3 = [iCloudAppleAccount propertiesForDataclass:@"com.apple.Dataclass.PremiumMailSettings"];
  v4 = [v3 objectForKeyedSubscript:@"verifyTransferURL"];

  return v4;
}

- (void)performRequestWithCallback:(id)callback
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_59DF0;
  v5[3] = &unk_B97F0;
  callbackCopy = callback;
  v4 = callbackCopy;
  [(BYODRequest *)self performRequestWithHandler:v5];
}

- (id)bodyDictionary
{
  v2 = objc_alloc_init(NSMutableDictionary);
  [v2 setValue:_domainName forKey:@"domain"];

  return v2;
}

@end