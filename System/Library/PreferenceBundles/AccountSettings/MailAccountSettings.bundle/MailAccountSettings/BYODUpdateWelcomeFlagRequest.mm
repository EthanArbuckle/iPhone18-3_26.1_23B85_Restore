@interface BYODUpdateWelcomeFlagRequest
- (BYODUpdateWelcomeFlagRequest)initWithAccount:(id)account accountStore:(id)store;
- (id)urlString;
- (void)performRequestWithCallback:(id)callback;
@end

@implementation BYODUpdateWelcomeFlagRequest

- (BYODUpdateWelcomeFlagRequest)initWithAccount:(id)account accountStore:(id)store
{
  accountCopy = account;
  storeCopy = store;
  urlString = [(BYODUpdateWelcomeFlagRequest *)self urlString];
  v11.receiver = self;
  v11.super_class = BYODUpdateWelcomeFlagRequest;
  v9 = [(BYODRequest *)&v11 initWithURLString:urlString accountStore:storeCopy appleAccount:accountCopy httpRequestType:@"POST" requestBody:0 httpHeader:0];

  return v9;
}

- (id)urlString
{
  iCloudAppleAccount = [(BYODRequest *)self iCloudAppleAccount];
  v3 = [iCloudAppleAccount propertiesForDataclass:@"com.apple.Dataclass.PremiumMailSettings"];
  v4 = [v3 objectForKeyedSubscript:@"updateWelcomeFlagURL"];

  return v4;
}

- (void)performRequestWithCallback:(id)callback
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_5D818;
  v5[3] = &unk_B97F0;
  callbackCopy = callback;
  v4 = callbackCopy;
  [(BYODRequest *)self performRequestWithHandler:v5];
}

@end