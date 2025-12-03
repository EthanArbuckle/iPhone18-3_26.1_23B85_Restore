@interface BYODDeleteEmailRequest
- (BYODDeleteEmailRequest)initWithAccount:(id)account accountStore:(id)store domain:(id)domain emailArray:(id)array dsid:(id)dsid invitedEmail:(id)email invitedPhone:(id)phone;
- (id)bodyDictionary;
- (id)urlString;
- (void)performRequestWithCallback:(id)callback;
@end

@implementation BYODDeleteEmailRequest

- (BYODDeleteEmailRequest)initWithAccount:(id)account accountStore:(id)store domain:(id)domain emailArray:(id)array dsid:(id)dsid invitedEmail:(id)email invitedPhone:(id)phone
{
  accountCopy = account;
  storeCopy = store;
  domainCopy = domain;
  arrayCopy = array;
  dsidCopy = dsid;
  emailCopy = email;
  phoneCopy = phone;
  urlString = [(BYODDeleteEmailRequest *)self urlString];
  v27.receiver = self;
  v27.super_class = BYODDeleteEmailRequest;
  v20 = [(BYODRequest *)&v27 initWithURLString:urlString accountStore:storeCopy appleAccount:accountCopy httpRequestType:@"POST" requestBody:0 httpHeader:0];

  if (v20)
  {
    objc_storeStrong(&v20->_domainName, domain);
    v21 = [arrayCopy copy];
    emailArray = v20->_emailArray;
    v20->_emailArray = v21;

    objc_storeStrong(&v20->_dsid, dsid);
    objc_storeStrong(&v20->_invitedEmail, email);
    objc_storeStrong(&v20->_invitedPhone, phone);
  }

  return v20;
}

- (id)urlString
{
  iCloudAppleAccount = [(BYODRequest *)self iCloudAppleAccount];
  v3 = [iCloudAppleAccount propertiesForDataclass:@"com.apple.Dataclass.PremiumMailSettings"];
  v4 = [v3 objectForKeyedSubscript:@"deleteCustomEmailURL"];

  return v4;
}

- (void)performRequestWithCallback:(id)callback
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_5A72C;
  v5[3] = &unk_B97F0;
  callbackCopy = callback;
  v4 = callbackCopy;
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