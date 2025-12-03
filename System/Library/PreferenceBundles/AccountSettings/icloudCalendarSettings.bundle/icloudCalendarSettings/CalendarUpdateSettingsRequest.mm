@interface CalendarUpdateSettingsRequest
- (CalendarUpdateSettingsRequest)initWithAccount:(id)account accountStore:(id)store emailList:(id)list;
- (id)bodyDictionary;
- (id)urlString;
- (void)performRequestWithCallback:(id)callback;
@end

@implementation CalendarUpdateSettingsRequest

- (CalendarUpdateSettingsRequest)initWithAccount:(id)account accountStore:(id)store emailList:(id)list
{
  listCopy = list;
  storeCopy = store;
  accountCopy = account;
  urlString = [(CalendarUpdateSettingsRequest *)self urlString];
  v15.receiver = self;
  v15.super_class = CalendarUpdateSettingsRequest;
  v13 = [(CalendarBaseRequest *)&v15 initWithURLString:urlString accountStore:storeCopy appleAccount:accountCopy httpRequestType:@"POST" requestBody:0 httpHeader:0];

  if (v13)
  {
    objc_storeStrong(&v13->_inviteEmailArray, list);
  }

  return v13;
}

- (id)urlString
{
  iCloudAppleAccount = [(CalendarBaseRequest *)self iCloudAppleAccount];
  v4 = [iCloudAppleAccount propertiesForDataclass:@"com.apple.Dataclass.Calendars"];
  v5 = [v4 objectForKeyedSubscript:@"sendReceiveURL"];

  if (!v5)
  {
    iCloudAppleAccount2 = [(CalendarBaseRequest *)self iCloudAppleAccount];
    v7 = [iCloudAppleAccount2 propertiesForDataclass:@"com.apple.Dataclass.Calendars"];
    v8 = [v7 objectForKeyedSubscript:@"url"];

    v5 = [NSString stringWithFormat:@"%@/api/settings/sendreceive", v8];
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
  v5[2] = sub_5B44;
  v5[3] = &unk_147A8;
  callbackCopy = callback;
  v4 = callbackCopy;
  [(CalendarBaseRequest *)self performRequestWithHandler:v5];
}

- (id)bodyDictionary
{
  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = objc_alloc_init(NSMutableArray);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_inviteEmailArray;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        toDictionary = [*(*(&v12 + 1) + 8 * i) toDictionary];
        [v4 addObject:toDictionary];
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  [v3 setValue:v4 forKey:@"email"];

  return v3;
}

@end