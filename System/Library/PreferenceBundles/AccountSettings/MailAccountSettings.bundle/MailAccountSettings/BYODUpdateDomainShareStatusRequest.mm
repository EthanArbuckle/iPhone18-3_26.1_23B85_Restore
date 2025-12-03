@interface BYODUpdateDomainShareStatusRequest
- (BYODUpdateDomainShareStatusRequest)initWithAccount:(id)account accountStore:(id)store domain:(id)domain domainShared:(BOOL)shared;
- (id)bodyDictionary;
- (id)urlString;
- (void)performRequestWithCallback:(id)callback;
@end

@implementation BYODUpdateDomainShareStatusRequest

- (BYODUpdateDomainShareStatusRequest)initWithAccount:(id)account accountStore:(id)store domain:(id)domain domainShared:(BOOL)shared
{
  accountCopy = account;
  storeCopy = store;
  domainCopy = domain;
  urlString = [(BYODUpdateDomainShareStatusRequest *)self urlString];
  v16.receiver = self;
  v16.super_class = BYODUpdateDomainShareStatusRequest;
  v14 = [(BYODRequest *)&v16 initWithURLString:urlString accountStore:storeCopy appleAccount:accountCopy httpRequestType:@"POST" requestBody:0 httpHeader:0];

  if (v14)
  {
    objc_storeStrong(&v14->_domainName, domain);
    v14->_domainShared = shared;
    v14->_isDomainModeSet = 1;
  }

  return v14;
}

- (id)urlString
{
  iCloudAppleAccount = [(BYODRequest *)self iCloudAppleAccount];
  v3 = [iCloudAppleAccount propertiesForDataclass:@"com.apple.Dataclass.PremiumMailSettings"];
  v4 = [v3 objectForKeyedSubscript:@"domainShareStatusURL"];

  return v4;
}

- (void)performRequestWithCallback:(id)callback
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_5EE48;
  v5[3] = &unk_B97F0;
  callbackCopy = callback;
  v4 = callbackCopy;
  [(BYODRequest *)self performRequestWithHandler:v5];
}

- (id)bodyDictionary
{
  v3 = objc_alloc_init(NSMutableDictionary);
  [v3 setObject:self->_domainName forKey:@"domain"];
  v4 = [NSNumber numberWithBool:self->_domainShared];
  [v3 setObject:v4 forKey:@"isShared"];

  v5 = [NSNumber numberWithBool:self->_isDomainModeSet];
  [v3 setObject:v5 forKey:@"isDomainModeSet"];

  return v3;
}

@end