@interface BYODAddDomainRequest
- (BYODAddDomainRequest)initWithAccount:(id)a3 accountStore:(id)a4 domain:(id)a5 familyFlow:(BOOL)a6 hasEmail:(BOOL)a7;
- (id)bodyDictionary;
- (id)urlString;
- (void)performRequestWithCallback:(id)a3;
@end

@implementation BYODAddDomainRequest

- (BYODAddDomainRequest)initWithAccount:(id)a3 accountStore:(id)a4 domain:(id)a5 familyFlow:(BOOL)a6 hasEmail:(BOOL)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = [(BYODAddDomainRequest *)self urlString];
  v18.receiver = self;
  v18.super_class = BYODAddDomainRequest;
  v16 = [(BYODRequest *)&v18 initWithURLString:v15 accountStore:v13 appleAccount:v12 httpRequestType:@"POST" requestBody:0 httpHeader:0];

  if (v16)
  {
    objc_storeStrong(&_domainName, a5);
    _isFamilyFlow = a6;
    _hasEmail = a7;
  }

  return v16;
}

- (id)urlString
{
  v2 = [(BYODRequest *)self iCloudAppleAccount];
  v3 = [v2 propertiesForDataclass:@"com.apple.Dataclass.PremiumMailSettings"];
  v4 = [v3 objectForKeyedSubscript:@"addCustomDomainURL"];

  return v4;
}

- (void)performRequestWithCallback:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_599A8;
  v5[3] = &unk_B97F0;
  v6 = a3;
  v4 = v6;
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