@interface CalendarReadSettingsRequest
- (CalendarReadSettingsRequest)initWithAccount:(id)account accountStore:(id)store;
- (id)urlString;
- (void)performRequestWithCallback:(id)callback;
@end

@implementation CalendarReadSettingsRequest

- (CalendarReadSettingsRequest)initWithAccount:(id)account accountStore:(id)store
{
  storeCopy = store;
  accountCopy = account;
  urlString = [(CalendarReadSettingsRequest *)self urlString];
  v11.receiver = self;
  v11.super_class = CalendarReadSettingsRequest;
  v9 = [(CalendarBaseRequest *)&v11 initWithURLString:urlString accountStore:storeCopy appleAccount:accountCopy httpRequestType:@"GET" requestBody:0 httpHeader:0];

  return v9;
}

- (id)urlString
{
  iCloudAppleAccount = [(CalendarBaseRequest *)self iCloudAppleAccount];
  v3 = [iCloudAppleAccount propertiesForDataclass:@"com.apple.Dataclass.Calendars"];
  v4 = [v3 objectForKeyedSubscript:@"getSettingsUrl"];

  return v4;
}

- (void)performRequestWithCallback:(id)callback
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_57D4;
  v5[3] = &unk_147A8;
  callbackCopy = callback;
  v4 = callbackCopy;
  [(CalendarBaseRequest *)self performRequestWithHandler:v5];
}

@end