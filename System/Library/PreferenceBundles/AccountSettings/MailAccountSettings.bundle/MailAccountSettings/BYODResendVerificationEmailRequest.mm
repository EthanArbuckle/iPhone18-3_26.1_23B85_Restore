@interface BYODResendVerificationEmailRequest
- (BYODResendVerificationEmailRequest)initWithAccount:(id)a3 accountStore:(id)a4 domain:(id)a5;
- (id)bodyDictionary;
- (id)urlString;
- (void)performRequestWithCallback:(id)a3;
@end

@implementation BYODResendVerificationEmailRequest

- (BYODResendVerificationEmailRequest)initWithAccount:(id)a3 accountStore:(id)a4 domain:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(BYODResendVerificationEmailRequest *)self urlString];
  v14.receiver = self;
  v14.super_class = BYODResendVerificationEmailRequest;
  v12 = [(BYODRequest *)&v14 initWithURLString:v11 accountStore:v9 appleAccount:v8 httpRequestType:@"POST" requestBody:0 httpHeader:0];

  if (v12)
  {
    objc_storeStrong(&v12->_domainName, a5);
  }

  return v12;
}

- (id)urlString
{
  v2 = [(BYODRequest *)self iCloudAppleAccount];
  v3 = [v2 propertiesForDataclass:@"com.apple.Dataclass.PremiumMailSettings"];
  v4 = [v3 objectForKeyedSubscript:@"resendVerificationEmailURL"];

  return v4;
}

- (void)performRequestWithCallback:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_5B5FC;
  v5[3] = &unk_B97F0;
  v6 = a3;
  v4 = v6;
  [(BYODRequest *)self performRequestWithHandler:v5];
}

- (id)bodyDictionary
{
  v3 = objc_alloc_init(NSMutableDictionary);
  [v3 setValue:self->_domainName forKey:@"domain"];

  return v3;
}

@end