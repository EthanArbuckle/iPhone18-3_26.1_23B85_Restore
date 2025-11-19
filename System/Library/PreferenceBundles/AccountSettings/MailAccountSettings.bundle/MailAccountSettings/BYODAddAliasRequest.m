@interface BYODAddAliasRequest
- (BYODAddAliasRequest)initWithAccount:(id)a3 accountStore:(id)a4 domain:(id)a5 emailArray:(id)a6 dsid:(id)a7;
- (id)bodyDictionary;
- (id)urlString;
- (void)performRequestWithCallback:(id)a3;
@end

@implementation BYODAddAliasRequest

- (BYODAddAliasRequest)initWithAccount:(id)a3 accountStore:(id)a4 domain:(id)a5 emailArray:(id)a6 dsid:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = [(BYODAddAliasRequest *)self urlString];
  v20.receiver = self;
  v20.super_class = BYODAddAliasRequest;
  v18 = [(BYODRequest *)&v20 initWithURLString:v17 accountStore:v13 appleAccount:v12 httpRequestType:@"POST" requestBody:0 httpHeader:0];

  if (v18)
  {
    objc_storeStrong(&v18->_domainName, a5);
    objc_storeStrong(&v18->_emailArray, a6);
    objc_storeStrong(&v18->_dsid, a7);
  }

  return v18;
}

- (id)urlString
{
  v2 = [(BYODRequest *)self iCloudAppleAccount];
  v3 = [v2 propertiesForDataclass:@"com.apple.Dataclass.PremiumMailSettings"];
  v4 = [v3 objectForKeyedSubscript:@"addCustomEmailAliasURL"];

  return v4;
}

- (void)performRequestWithCallback:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_5BA64;
  v5[3] = &unk_B97F0;
  v6 = a3;
  v4 = v6;
  [(BYODRequest *)self performRequestWithHandler:v5];
}

- (id)bodyDictionary
{
  v3 = objc_alloc_init(NSMutableDictionary);
  [v3 setValue:self->_domainName forKey:@"domain"];
  [v3 setValue:self->_dsid forKey:@"dsid"];
  [v3 setValue:self->_emailArray forKey:@"email"];

  return v3;
}

@end