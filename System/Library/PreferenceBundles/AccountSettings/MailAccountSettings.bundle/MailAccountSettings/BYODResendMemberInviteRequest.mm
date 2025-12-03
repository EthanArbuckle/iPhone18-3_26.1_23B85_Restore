@interface BYODResendMemberInviteRequest
- (BYODResendMemberInviteRequest)initWithAccount:(id)account accountStore:(id)store domain:(id)domain email:(id)email phone:(id)phone;
- (id)bodyDictionary;
- (id)urlString;
- (void)performRequestWithCallback:(id)callback;
@end

@implementation BYODResendMemberInviteRequest

- (BYODResendMemberInviteRequest)initWithAccount:(id)account accountStore:(id)store domain:(id)domain email:(id)email phone:(id)phone
{
  accountCopy = account;
  storeCopy = store;
  domainCopy = domain;
  emailCopy = email;
  phoneCopy = phone;
  urlString = [(BYODResendMemberInviteRequest *)self urlString];
  v20.receiver = self;
  v20.super_class = BYODResendMemberInviteRequest;
  v18 = [(BYODRequest *)&v20 initWithURLString:urlString accountStore:storeCopy appleAccount:accountCopy httpRequestType:@"POST" requestBody:0 httpHeader:0];

  if (v18)
  {
    objc_storeStrong(&_domainName, domain);
    objc_storeStrong(&v18->_email, email);
    objc_storeStrong(&v18->_phone, phone);
  }

  return v18;
}

- (id)urlString
{
  iCloudAppleAccount = [(BYODRequest *)self iCloudAppleAccount];
  v3 = [iCloudAppleAccount propertiesForDataclass:@"com.apple.Dataclass.PremiumMailSettings"];
  v4 = [v3 objectForKeyedSubscript:@"domainResendInviteMemberURL"];

  return v4;
}

- (void)performRequestWithCallback:(id)callback
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_5F360;
  v5[3] = &unk_B97F0;
  callbackCopy = callback;
  v4 = callbackCopy;
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