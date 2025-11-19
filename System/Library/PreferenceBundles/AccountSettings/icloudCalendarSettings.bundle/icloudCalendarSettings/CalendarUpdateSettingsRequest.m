@interface CalendarUpdateSettingsRequest
- (CalendarUpdateSettingsRequest)initWithAccount:(id)a3 accountStore:(id)a4 emailList:(id)a5;
- (id)bodyDictionary;
- (id)urlString;
- (void)performRequestWithCallback:(id)a3;
@end

@implementation CalendarUpdateSettingsRequest

- (CalendarUpdateSettingsRequest)initWithAccount:(id)a3 accountStore:(id)a4 emailList:(id)a5
{
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [(CalendarUpdateSettingsRequest *)self urlString];
  v15.receiver = self;
  v15.super_class = CalendarUpdateSettingsRequest;
  v13 = [(CalendarBaseRequest *)&v15 initWithURLString:v12 accountStore:v10 appleAccount:v11 httpRequestType:@"POST" requestBody:0 httpHeader:0];

  if (v13)
  {
    objc_storeStrong(&v13->_inviteEmailArray, a5);
  }

  return v13;
}

- (id)urlString
{
  v3 = [(CalendarBaseRequest *)self iCloudAppleAccount];
  v4 = [v3 propertiesForDataclass:@"com.apple.Dataclass.Calendars"];
  v5 = [v4 objectForKeyedSubscript:@"sendReceiveURL"];

  if (!v5)
  {
    v6 = [(CalendarBaseRequest *)self iCloudAppleAccount];
    v7 = [v6 propertiesForDataclass:@"com.apple.Dataclass.Calendars"];
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

- (void)performRequestWithCallback:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_5B44;
  v5[3] = &unk_147A8;
  v6 = a3;
  v4 = v6;
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

        v10 = [*(*(&v12 + 1) + 8 * i) toDictionary];
        [v4 addObject:v10];
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  [v3 setValue:v4 forKey:@"email"];

  return v3;
}

@end