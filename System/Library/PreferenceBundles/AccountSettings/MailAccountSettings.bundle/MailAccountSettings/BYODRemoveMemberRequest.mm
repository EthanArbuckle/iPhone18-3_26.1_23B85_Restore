@interface BYODRemoveMemberRequest
- (BYODRemoveMemberRequest)initWithAccount:(id)account accountStore:(id)store domain:(id)domain domainStatus:(id)status domainMember:(id)member;
- (id)bodyDictionary;
- (id)urlString;
- (void)performRequestWithCallback:(id)callback;
@end

@implementation BYODRemoveMemberRequest

- (BYODRemoveMemberRequest)initWithAccount:(id)account accountStore:(id)store domain:(id)domain domainStatus:(id)status domainMember:(id)member
{
  accountCopy = account;
  storeCopy = store;
  domainCopy = domain;
  statusCopy = status;
  memberCopy = member;
  urlString = [(BYODRemoveMemberRequest *)self urlString];
  v20.receiver = self;
  v20.super_class = BYODRemoveMemberRequest;
  v18 = [(BYODRequest *)&v20 initWithURLString:urlString accountStore:storeCopy appleAccount:accountCopy httpRequestType:@"POST" requestBody:0 httpHeader:0];

  if (v18)
  {
    objc_storeStrong(&v18->_domain, domain);
    objc_storeStrong(&v18->_domainStatus, status);
    objc_storeStrong(&v18->_domainMember, member);
  }

  return v18;
}

- (id)urlString
{
  iCloudAppleAccount = [(BYODRequest *)self iCloudAppleAccount];
  v3 = [iCloudAppleAccount propertiesForDataclass:@"com.apple.Dataclass.PremiumMailSettings"];
  v4 = [v3 objectForKeyedSubscript:@"domainDeleteMemberURL"];

  return v4;
}

- (void)performRequestWithCallback:(id)callback
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_5E128;
  v5[3] = &unk_B97F0;
  callbackCopy = callback;
  v4 = callbackCopy;
  [(BYODRequest *)self performRequestWithHandler:v5];
}

- (id)bodyDictionary
{
  v3 = objc_alloc_init(NSMutableDictionary);
  [v3 setValue:self->_domain forKey:@"domain"];
  [v3 setValue:self->_domainStatus forKey:@"domainStatus"];
  dsid = [(BYODUser *)self->_domainMember dsid];
  [v3 setValue:dsid forKey:@"dsid"];

  invitedEmail = [(BYODUser *)self->_domainMember invitedEmail];
  [v3 setValue:invitedEmail forKey:@"email"];

  invitedPhoneNumber = [(BYODUser *)self->_domainMember invitedPhoneNumber];
  [v3 setValue:invitedPhoneNumber forKey:@"phoneNumber"];

  return v3;
}

@end