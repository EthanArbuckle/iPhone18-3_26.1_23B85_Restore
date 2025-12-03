@interface BYODAddEmailRequest
- (BYODAddEmailRequest)initWithAccount:(id)account accountStore:(id)store domain:(id)domain emailArray:(id)array dsid:(id)dsid withEmail:(id)email withPhone:(id)phone;
- (id)bodyDictionary;
- (id)urlString;
- (void)performRequestWithCallback:(id)callback;
@end

@implementation BYODAddEmailRequest

- (BYODAddEmailRequest)initWithAccount:(id)account accountStore:(id)store domain:(id)domain emailArray:(id)array dsid:(id)dsid withEmail:(id)email withPhone:(id)phone
{
  accountCopy = account;
  storeCopy = store;
  domainCopy = domain;
  arrayCopy = array;
  dsidCopy = dsid;
  emailCopy = email;
  phoneCopy = phone;
  urlString = [(BYODAddEmailRequest *)self urlString];
  v25.receiver = self;
  v25.super_class = BYODAddEmailRequest;
  v19 = [(BYODRequest *)&v25 initWithURLString:urlString accountStore:storeCopy appleAccount:accountCopy httpRequestType:@"POST" requestBody:0 httpHeader:0];

  if (v19)
  {
    objc_storeStrong(&v19->_domainName, domain);
    objc_storeStrong(&v19->_emailArray, array);
    objc_storeStrong(&v19->_dsid, dsid);
    objc_storeStrong(&v19->_invitedEmail, email);
    objc_storeStrong(&v19->_invitedPhone, phone);
  }

  return v19;
}

- (id)urlString
{
  iCloudAppleAccount = [(BYODRequest *)self iCloudAppleAccount];
  v3 = [iCloudAppleAccount propertiesForDataclass:@"com.apple.Dataclass.PremiumMailSettings"];
  v4 = [v3 objectForKeyedSubscript:@"addCustomEmailURL"];

  return v4;
}

- (void)performRequestWithCallback:(id)callback
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_5ACD0;
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