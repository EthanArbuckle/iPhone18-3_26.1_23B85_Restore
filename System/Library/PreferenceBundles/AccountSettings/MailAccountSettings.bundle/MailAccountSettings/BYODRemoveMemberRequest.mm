@interface BYODRemoveMemberRequest
- (BYODRemoveMemberRequest)initWithAccount:(id)a3 accountStore:(id)a4 domain:(id)a5 domainStatus:(id)a6 domainMember:(id)a7;
- (id)bodyDictionary;
- (id)urlString;
- (void)performRequestWithCallback:(id)a3;
@end

@implementation BYODRemoveMemberRequest

- (BYODRemoveMemberRequest)initWithAccount:(id)a3 accountStore:(id)a4 domain:(id)a5 domainStatus:(id)a6 domainMember:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = [(BYODRemoveMemberRequest *)self urlString];
  v20.receiver = self;
  v20.super_class = BYODRemoveMemberRequest;
  v18 = [(BYODRequest *)&v20 initWithURLString:v17 accountStore:v13 appleAccount:v12 httpRequestType:@"POST" requestBody:0 httpHeader:0];

  if (v18)
  {
    objc_storeStrong(&v18->_domain, a5);
    objc_storeStrong(&v18->_domainStatus, a6);
    objc_storeStrong(&v18->_domainMember, a7);
  }

  return v18;
}

- (id)urlString
{
  v2 = [(BYODRequest *)self iCloudAppleAccount];
  v3 = [v2 propertiesForDataclass:@"com.apple.Dataclass.PremiumMailSettings"];
  v4 = [v3 objectForKeyedSubscript:@"domainDeleteMemberURL"];

  return v4;
}

- (void)performRequestWithCallback:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_5E128;
  v5[3] = &unk_B97F0;
  v6 = a3;
  v4 = v6;
  [(BYODRequest *)self performRequestWithHandler:v5];
}

- (id)bodyDictionary
{
  v3 = objc_alloc_init(NSMutableDictionary);
  [v3 setValue:self->_domain forKey:@"domain"];
  [v3 setValue:self->_domainStatus forKey:@"domainStatus"];
  v4 = [(BYODUser *)self->_domainMember dsid];
  [v3 setValue:v4 forKey:@"dsid"];

  v5 = [(BYODUser *)self->_domainMember invitedEmail];
  [v3 setValue:v5 forKey:@"email"];

  v6 = [(BYODUser *)self->_domainMember invitedPhoneNumber];
  [v3 setValue:v6 forKey:@"phoneNumber"];

  return v3;
}

@end