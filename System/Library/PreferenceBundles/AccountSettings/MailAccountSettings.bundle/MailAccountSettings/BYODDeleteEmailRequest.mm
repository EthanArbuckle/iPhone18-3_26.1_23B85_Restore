@interface BYODDeleteEmailRequest
- (BYODDeleteEmailRequest)initWithAccount:(id)a3 accountStore:(id)a4 domain:(id)a5 emailArray:(id)a6 dsid:(id)a7 invitedEmail:(id)a8 invitedPhone:(id)a9;
- (id)bodyDictionary;
- (id)urlString;
- (void)performRequestWithCallback:(id)a3;
@end

@implementation BYODDeleteEmailRequest

- (BYODDeleteEmailRequest)initWithAccount:(id)a3 accountStore:(id)a4 domain:(id)a5 emailArray:(id)a6 dsid:(id)a7 invitedEmail:(id)a8 invitedPhone:(id)a9
{
  v15 = a3;
  v16 = a4;
  v26 = a5;
  v17 = a6;
  v25 = a7;
  v24 = a8;
  v18 = a9;
  v19 = [(BYODDeleteEmailRequest *)self urlString];
  v27.receiver = self;
  v27.super_class = BYODDeleteEmailRequest;
  v20 = [(BYODRequest *)&v27 initWithURLString:v19 accountStore:v16 appleAccount:v15 httpRequestType:@"POST" requestBody:0 httpHeader:0];

  if (v20)
  {
    objc_storeStrong(&v20->_domainName, a5);
    v21 = [v17 copy];
    emailArray = v20->_emailArray;
    v20->_emailArray = v21;

    objc_storeStrong(&v20->_dsid, a7);
    objc_storeStrong(&v20->_invitedEmail, a8);
    objc_storeStrong(&v20->_invitedPhone, a9);
  }

  return v20;
}

- (id)urlString
{
  v2 = [(BYODRequest *)self iCloudAppleAccount];
  v3 = [v2 propertiesForDataclass:@"com.apple.Dataclass.PremiumMailSettings"];
  v4 = [v3 objectForKeyedSubscript:@"deleteCustomEmailURL"];

  return v4;
}

- (void)performRequestWithCallback:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_5A72C;
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