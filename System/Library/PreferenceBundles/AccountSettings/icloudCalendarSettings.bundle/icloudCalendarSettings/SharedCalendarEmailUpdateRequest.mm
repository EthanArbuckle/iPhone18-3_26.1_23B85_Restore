@interface SharedCalendarEmailUpdateRequest
- (SharedCalendarEmailUpdateRequest)initWithAccount:(id)account accountStore:(id)store sharedCalendarEmail:(BOOL)email;
- (id)bodyDictionary;
- (id)urlString;
- (void)performRequestWithCallback:(id)callback;
@end

@implementation SharedCalendarEmailUpdateRequest

- (SharedCalendarEmailUpdateRequest)initWithAccount:(id)account accountStore:(id)store sharedCalendarEmail:(BOOL)email
{
  storeCopy = store;
  accountCopy = account;
  urlString = [(SharedCalendarEmailUpdateRequest *)self urlString];
  v13.receiver = self;
  v13.super_class = SharedCalendarEmailUpdateRequest;
  v11 = [(CalendarBaseRequest *)&v13 initWithURLString:urlString accountStore:storeCopy appleAccount:accountCopy httpRequestType:@"POST" requestBody:0 httpHeader:0];

  if (v11)
  {
    v11->_sharedCalendarEmailUpdateFlag = email;
  }

  return v11;
}

- (id)urlString
{
  iCloudAppleAccount = [(CalendarBaseRequest *)self iCloudAppleAccount];
  v4 = [iCloudAppleAccount propertiesForDataclass:@"com.apple.Dataclass.Calendars"];
  v5 = [v4 objectForKeyedSubscript:@"sharedCalendar"];

  if (!v5)
  {
    iCloudAppleAccount2 = [(CalendarBaseRequest *)self iCloudAppleAccount];
    v7 = [iCloudAppleAccount2 propertiesForDataclass:@"com.apple.Dataclass.Calendars"];
    v8 = [v7 objectForKeyedSubscript:@"url"];

    v5 = [NSString stringWithFormat:@"%@/api/settings/sharedcalendar", v8];
    v9 = _CalLogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v12 = v5;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "returning constructed URL %@", buf, 0xCu);
    }
  }

  return v5;
}

- (void)performRequestWithCallback:(id)callback
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_6034;
  v5[3] = &unk_147A8;
  callbackCopy = callback;
  v4 = callbackCopy;
  [(CalendarBaseRequest *)self performRequestWithHandler:v5];
}

- (id)bodyDictionary
{
  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = [NSNumber numberWithBool:self->_sharedCalendarEmailUpdateFlag];
  [v3 setValue:v4 forKey:@"sharedCalendarEmail"];

  return v3;
}

@end