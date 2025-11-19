@interface BYODUpdateDomainShareStatusRequest
- (BYODUpdateDomainShareStatusRequest)initWithAccount:(id)a3 accountStore:(id)a4 domain:(id)a5 domainShared:(BOOL)a6;
- (id)bodyDictionary;
- (id)urlString;
- (void)performRequestWithCallback:(id)a3;
@end

@implementation BYODUpdateDomainShareStatusRequest

- (BYODUpdateDomainShareStatusRequest)initWithAccount:(id)a3 accountStore:(id)a4 domain:(id)a5 domainShared:(BOOL)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [(BYODUpdateDomainShareStatusRequest *)self urlString];
  v16.receiver = self;
  v16.super_class = BYODUpdateDomainShareStatusRequest;
  v14 = [(BYODRequest *)&v16 initWithURLString:v13 accountStore:v11 appleAccount:v10 httpRequestType:@"POST" requestBody:0 httpHeader:0];

  if (v14)
  {
    objc_storeStrong(&v14->_domainName, a5);
    v14->_domainShared = a6;
    v14->_isDomainModeSet = 1;
  }

  return v14;
}

- (id)urlString
{
  v2 = [(BYODRequest *)self iCloudAppleAccount];
  v3 = [v2 propertiesForDataclass:@"com.apple.Dataclass.PremiumMailSettings"];
  v4 = [v3 objectForKeyedSubscript:@"domainShareStatusURL"];

  return v4;
}

- (void)performRequestWithCallback:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_5EE48;
  v5[3] = &unk_B97F0;
  v6 = a3;
  v4 = v6;
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