@interface BYODResendMemberInviteRequest
- (BYODResendMemberInviteRequest)initWithAccount:(id)a3 accountStore:(id)a4 domain:(id)a5 email:(id)a6 phone:(id)a7;
- (id)bodyDictionary;
- (id)urlString;
- (void)performRequestWithCallback:(id)a3;
@end

@implementation BYODResendMemberInviteRequest

- (BYODResendMemberInviteRequest)initWithAccount:(id)a3 accountStore:(id)a4 domain:(id)a5 email:(id)a6 phone:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = [(BYODResendMemberInviteRequest *)self urlString];
  v20.receiver = self;
  v20.super_class = BYODResendMemberInviteRequest;
  v18 = [(BYODRequest *)&v20 initWithURLString:v17 accountStore:v13 appleAccount:v12 httpRequestType:@"POST" requestBody:0 httpHeader:0];

  if (v18)
  {
    objc_storeStrong(&_domainName, a5);
    objc_storeStrong(&v18->_email, a6);
    objc_storeStrong(&v18->_phone, a7);
  }

  return v18;
}

- (id)urlString
{
  v2 = [(BYODRequest *)self iCloudAppleAccount];
  v3 = [v2 propertiesForDataclass:@"com.apple.Dataclass.PremiumMailSettings"];
  v4 = [v3 objectForKeyedSubscript:@"domainResendInviteMemberURL"];

  return v4;
}

- (void)performRequestWithCallback:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_5F360;
  v5[3] = &unk_B97F0;
  v6 = a3;
  v4 = v6;
  [(BYODRequest *)self performRequestWithHandler:v5];
}

- (id)bodyDictionary
{
  v3 = objc_alloc_init(NSMutableDictionary);
  [v3 setValue:_domainName forKey:@"domain"];
  [v3 setValue:self->_email forKey:@"email"];
  [v3 setValue:self->_phone forKey:@"phoneNumber"];

  return v3;
}

@end