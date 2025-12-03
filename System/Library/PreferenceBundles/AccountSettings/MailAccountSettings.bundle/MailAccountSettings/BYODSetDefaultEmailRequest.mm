@interface BYODSetDefaultEmailRequest
- (BYODSetDefaultEmailRequest)initWithAccount:(id)account accountStore:(id)store email:(id)email domain:(id)domain;
- (id)bodyDictionary;
- (id)urlString;
- (void)performRequestWithCallback:(id)callback;
@end

@implementation BYODSetDefaultEmailRequest

- (BYODSetDefaultEmailRequest)initWithAccount:(id)account accountStore:(id)store email:(id)email domain:(id)domain
{
  accountCopy = account;
  storeCopy = store;
  emailCopy = email;
  domainCopy = domain;
  urlString = [(BYODSetDefaultEmailRequest *)self urlString];
  v17.receiver = self;
  v17.super_class = BYODSetDefaultEmailRequest;
  v15 = [(BYODRequest *)&v17 initWithURLString:urlString accountStore:storeCopy appleAccount:accountCopy httpRequestType:@"POST" requestBody:0 httpHeader:0];

  if (v15)
  {
    objc_storeStrong(&v15->_email, email);
    objc_storeStrong(&v15->_domainName, domain);
  }

  return v15;
}

- (id)urlString
{
  iCloudAppleAccount = [(BYODRequest *)self iCloudAppleAccount];
  v3 = [iCloudAppleAccount propertiesForDataclass:@"com.apple.Dataclass.PremiumMailSettings"];
  v4 = [v3 objectForKeyedSubscript:@"setDefaultSendFromURL"];

  return v4;
}

- (void)performRequestWithCallback:(id)callback
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_5A1EC;
  v5[3] = &unk_B97F0;
  callbackCopy = callback;
  v4 = callbackCopy;
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