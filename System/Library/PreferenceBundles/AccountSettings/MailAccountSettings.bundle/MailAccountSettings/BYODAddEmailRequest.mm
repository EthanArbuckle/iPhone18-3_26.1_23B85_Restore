@interface BYODAddEmailRequest
- (BYODAddEmailRequest)initWithAccount:(id)a3 accountStore:(id)a4 domain:(id)a5 emailArray:(id)a6 dsid:(id)a7 withEmail:(id)a8 withPhone:(id)a9;
- (id)bodyDictionary;
- (id)urlString;
- (void)performRequestWithCallback:(id)a3;
@end

@implementation BYODAddEmailRequest

- (BYODAddEmailRequest)initWithAccount:(id)a3 accountStore:(id)a4 domain:(id)a5 emailArray:(id)a6 dsid:(id)a7 withEmail:(id)a8 withPhone:(id)a9
{
  v15 = a3;
  v16 = a4;
  v24 = a5;
  v23 = a6;
  v22 = a7;
  v21 = a8;
  v17 = a9;
  v18 = [(BYODAddEmailRequest *)self urlString];
  v25.receiver = self;
  v25.super_class = BYODAddEmailRequest;
  v19 = [(BYODRequest *)&v25 initWithURLString:v18 accountStore:v16 appleAccount:v15 httpRequestType:@"POST" requestBody:0 httpHeader:0];

  if (v19)
  {
    objc_storeStrong(&v19->_domainName, a5);
    objc_storeStrong(&v19->_emailArray, a6);
    objc_storeStrong(&v19->_dsid, a7);
    objc_storeStrong(&v19->_invitedEmail, a8);
    objc_storeStrong(&v19->_invitedPhone, a9);
  }

  return v19;
}

- (id)urlString
{
  v2 = [(BYODRequest *)self iCloudAppleAccount];
  v3 = [v2 propertiesForDataclass:@"com.apple.Dataclass.PremiumMailSettings"];
  v4 = [v3 objectForKeyedSubscript:@"addCustomEmailURL"];

  return v4;
}

- (void)performRequestWithCallback:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_5ACD0;
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
  [v3 setValue:self->_invitedEmail forKey:@"accountEmail"];
  [v3 setValue:self->_invitedPhone forKey:@"phoneNumber"];

  return v3;
}

@end