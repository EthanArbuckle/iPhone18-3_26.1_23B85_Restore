@interface BYODAddDomainRequest
- (BYODAddDomainRequest)initWithAccount:(id)account accountStore:(id)store domain:(id)domain familyFlow:(BOOL)flow hasEmail:(BOOL)email;
- (id)bodyDictionary;
- (id)urlString;
- (void)performRequestWithCallback:(id)callback;
@end

@implementation BYODAddDomainRequest

- (BYODAddDomainRequest)initWithAccount:(id)account accountStore:(id)store domain:(id)domain familyFlow:(BOOL)flow hasEmail:(BOOL)email
{
  accountCopy = account;
  storeCopy = store;
  domainCopy = domain;
  urlString = [(BYODAddDomainRequest *)self urlString];
  v18.receiver = self;
  v18.super_class = BYODAddDomainRequest;
  v16 = [(BYODRequest *)&v18 initWithURLString:urlString accountStore:storeCopy appleAccount:accountCopy httpRequestType:@"POST" requestBody:0 httpHeader:0];

  if (v16)
  {
    objc_storeStrong(&_domainName, domain);
    _isFamilyFlow = flow;
    _hasEmail = email;
  }

  return v16;
}

- (id)urlString
{
  iCloudAppleAccount = [(BYODRequest *)self iCloudAppleAccount];
  v3 = [iCloudAppleAccount propertiesForDataclass:@"com.apple.Dataclass.PremiumMailSettings"];
  v4 = [v3 objectForKeyedSubscript:@"addCustomDomainURL"];

  return v4;
}

- (void)performRequestWithCallback:(id)callback
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_599A8;
  v5[3] = &unk_B97F0;
  callbackCopy = callback;
  v4 = callbackCopy;
  [(BYODRequest *)self performRequestWithHandler:v5];
}

- (id)bodyDictionary
{
  v2 = objc_alloc_init(NSMutableDictionary);
  [v2 setValue:_domainName forKey:@"domain"];
  v3 = [NSNumber numberWithBool:_isFamilyFlow];
  [v2 setValue:v3 forKey:@"isFamily"];

  v4 = [NSNumber numberWithBool:_hasEmail];
  [v2 setValue:v4 forKey:@"hasEmail"];

  return v2;
}

@end