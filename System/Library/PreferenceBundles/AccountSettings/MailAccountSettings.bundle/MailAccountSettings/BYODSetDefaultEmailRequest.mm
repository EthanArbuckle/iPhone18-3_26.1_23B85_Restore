@interface BYODSetDefaultEmailRequest
- (BYODSetDefaultEmailRequest)initWithAccount:(id)a3 accountStore:(id)a4 email:(id)a5 domain:(id)a6;
- (id)bodyDictionary;
- (id)urlString;
- (void)performRequestWithCallback:(id)a3;
@end

@implementation BYODSetDefaultEmailRequest

- (BYODSetDefaultEmailRequest)initWithAccount:(id)a3 accountStore:(id)a4 email:(id)a5 domain:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(BYODSetDefaultEmailRequest *)self urlString];
  v17.receiver = self;
  v17.super_class = BYODSetDefaultEmailRequest;
  v15 = [(BYODRequest *)&v17 initWithURLString:v14 accountStore:v11 appleAccount:v10 httpRequestType:@"POST" requestBody:0 httpHeader:0];

  if (v15)
  {
    objc_storeStrong(&v15->_email, a5);
    objc_storeStrong(&v15->_domainName, a6);
  }

  return v15;
}

- (id)urlString
{
  v2 = [(BYODRequest *)self iCloudAppleAccount];
  v3 = [v2 propertiesForDataclass:@"com.apple.Dataclass.PremiumMailSettings"];
  v4 = [v3 objectForKeyedSubscript:@"setDefaultSendFromURL"];

  return v4;
}

- (void)performRequestWithCallback:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_5A1EC;
  v5[3] = &unk_B97F0;
  v6 = a3;
  v4 = v6;
  [(BYODRequest *)self performRequestWithHandler:v5];
}

- (id)bodyDictionary
{
  v3 = objc_alloc_init(NSMutableDictionary);
  [v3 setValue:self->_email forKey:@"email"];
  [v3 setValue:self->_domainName forKey:@"domain"];

  return v3;
}

@end