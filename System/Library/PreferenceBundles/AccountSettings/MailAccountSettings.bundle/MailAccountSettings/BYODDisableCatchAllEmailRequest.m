@interface BYODDisableCatchAllEmailRequest
- (BYODDisableCatchAllEmailRequest)initWithAccount:(id)a3 accountStore:(id)a4 domain:(id)a5;
- (id)bodyDictionary;
- (id)urlString;
- (void)performRequestWithCallback:(id)a3;
@end

@implementation BYODDisableCatchAllEmailRequest

- (BYODDisableCatchAllEmailRequest)initWithAccount:(id)a3 accountStore:(id)a4 domain:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [(BYODDisableCatchAllEmailRequest *)self urlString];
  v12.receiver = self;
  v12.super_class = BYODDisableCatchAllEmailRequest;
  v10 = [(BYODRequest *)&v12 initWithURLString:v9 accountStore:v8 appleAccount:v7 httpRequestType:@"POST" requestBody:0 httpHeader:0];

  return v10;
}

- (id)urlString
{
  v2 = [(BYODRequest *)self iCloudAppleAccount];
  v3 = [v2 propertiesForDataclass:@"com.apple.Dataclass.PremiumMailSettings"];
  v4 = [v3 objectForKeyedSubscript:@"disableCatchAllURL"];

  return v4;
}

- (void)performRequestWithCallback:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_5C2CC;
  v5[3] = &unk_B97F0;
  v6 = a3;
  v4 = v6;
  [(BYODRequest *)self performRequestWithHandler:v5];
}

- (id)bodyDictionary
{
  v2 = objc_alloc_init(NSMutableDictionary);
  [v2 setValue:_domainName forKey:@"domain"];

  return v2;
}

@end