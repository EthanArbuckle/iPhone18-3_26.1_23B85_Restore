@interface AMSUserNotificationAction
- (AMSUserNotificationAction)initWithTitle:(id)title style:(int64_t)style;
- (AMSUserNotificationAction)initWithUserInfoAction:(id)action;
- (id)generateUserInfoAction;
@end

@implementation AMSUserNotificationAction

- (AMSUserNotificationAction)initWithTitle:(id)title style:(int64_t)style
{
  titleCopy = title;
  v14.receiver = self;
  v14.super_class = AMSUserNotificationAction;
  v8 = [(AMSUserNotificationAction *)&v14 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_title, title);
    v9->_style = style;
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    identifier = v9->_identifier;
    v9->_identifier = uUIDString;
  }

  return v9;
}

- (AMSUserNotificationAction)initWithUserInfoAction:(id)action
{
  actionCopy = action;
  v33.receiver = self;
  v33.super_class = AMSUserNotificationAction;
  v5 = [(AMSUserNotificationAction *)&v33 init];
  if (v5)
  {
    v6 = [actionCopy mutableCopy];
    v7 = [(NSDictionary *)v6 objectForKeyedSubscript:@"_AMSIdentifier"];
    identifier = v5->_identifier;
    v5->_identifier = v7;

    v9 = [(NSDictionary *)v6 objectForKeyedSubscript:@"_AMSTitle"];
    title = v5->_title;
    v5->_title = v9;

    v11 = [(NSDictionary *)v6 objectForKeyedSubscript:@"_AMSStyle"];
    v5->_style = [v11 integerValue];

    v12 = [(NSDictionary *)v6 objectForKeyedSubscript:@"_AMSDefaultURL"];
    if (v12)
    {
      v13 = [MEMORY[0x1E695DFF8] URLWithString:v12];
      defaultURL = v5->_defaultURL;
      v5->_defaultURL = v13;
    }

    v15 = [(NSDictionary *)v6 objectForKeyedSubscript:@"_AMSMetrics"];
    if (v15)
    {
      v16 = [[AMSMetricsEvent alloc] initWithUnderlyingDictionary:v15];
      [(AMSUserNotificationAction *)v5 setMetricsEvent:v16];
    }

    v17 = [(NSDictionary *)v6 objectForKeyedSubscript:@"_AMSRequestURL"];
    v18 = v17;
    v19 = &stru_1F071BA78;
    if (v17)
    {
      v19 = v17;
    }

    v20 = v19;

    v21 = [MEMORY[0x1E695DFF8] URLWithString:v20];

    if (v21)
    {
      v32 = actionCopy;
      v22 = [(NSDictionary *)v6 objectForKeyedSubscript:@"_AMSRequestMethod"];
      v23 = [(NSDictionary *)v6 objectForKeyedSubscript:@"_AMSRequestHeaders"];
      v24 = [(NSDictionary *)v6 objectForKeyedSubscript:@"_AMSRequestBody"];
      v25 = v24;
      if (v24)
      {
        v26 = [v24 dataUsingEncoding:4];
      }

      else
      {
        v26 = 0;
      }

      v27 = [objc_alloc(MEMORY[0x1E695AC18]) initWithURL:v21];
      [v27 setHTTPMethod:v22];
      [v27 setAllHTTPHeaderFields:v23];
      [v27 setHTTPBody:v26];
      v28 = [v27 copy];
      request = v5->_request;
      v5->_request = v28;

      actionCopy = v32;
    }

    [(NSDictionary *)v6 removeObjectForKey:@"_AMSDefaultURL"];
    [(NSDictionary *)v6 removeObjectForKey:@"_AMSIdentifier"];
    [(NSDictionary *)v6 removeObjectForKey:@"_AMSMetrics"];
    [(NSDictionary *)v6 removeObjectForKey:@"_AMSRequestBody"];
    [(NSDictionary *)v6 removeObjectForKey:@"_AMSRequestHeaders"];
    [(NSDictionary *)v6 removeObjectForKey:@"_AMSRequestMethod"];
    [(NSDictionary *)v6 removeObjectForKey:@"_AMSRequestURL"];
    [(NSDictionary *)v6 removeObjectForKey:@"_AMSStyle"];
    [(NSDictionary *)v6 removeObjectForKey:@"_AMSTitle"];
    userInfo = v5->_userInfo;
    v5->_userInfo = v6;
  }

  return v5;
}

- (id)generateUserInfoAction
{
  userInfo = [(AMSUserNotificationAction *)self userInfo];
  v4 = [userInfo mutableCopy];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v7 = v6;

  identifier = [(AMSUserNotificationAction *)self identifier];

  if (identifier)
  {
    identifier2 = [(AMSUserNotificationAction *)self identifier];
    [v7 setObject:identifier2 forKeyedSubscript:@"_AMSIdentifier"];
  }

  title = [(AMSUserNotificationAction *)self title];

  if (title)
  {
    title2 = [(AMSUserNotificationAction *)self title];
    [v7 setObject:title2 forKeyedSubscript:@"_AMSTitle"];
  }

  defaultURL = [(AMSUserNotificationAction *)self defaultURL];

  if (defaultURL)
  {
    defaultURL2 = [(AMSUserNotificationAction *)self defaultURL];
    absoluteString = [defaultURL2 absoluteString];
    [v7 setObject:absoluteString forKeyedSubscript:@"_AMSDefaultURL"];
  }

  metricsEvent = [(AMSUserNotificationAction *)self metricsEvent];

  if (metricsEvent)
  {
    metricsEvent2 = [(AMSUserNotificationAction *)self metricsEvent];
    underlyingDictionary = [metricsEvent2 underlyingDictionary];
    [v7 setObject:underlyingDictionary forKeyedSubscript:@"_AMSMetrics"];
  }

  request = [(AMSUserNotificationAction *)self request];

  if (request)
  {
    request2 = [(AMSUserNotificationAction *)self request];
    v20 = [request2 URL];
    absoluteString2 = [v20 absoluteString];
    [v7 setObject:absoluteString2 forKeyedSubscript:@"_AMSRequestURL"];

    request3 = [(AMSUserNotificationAction *)self request];
    hTTPMethod = [request3 HTTPMethod];
    v24 = hTTPMethod;
    v25 = hTTPMethod ? hTTPMethod : @"GET";
    [v7 setObject:v25 forKeyedSubscript:@"_AMSRequestMethod"];

    request4 = [(AMSUserNotificationAction *)self request];
    allHTTPHeaderFields = [request4 allHTTPHeaderFields];
    v28 = allHTTPHeaderFields;
    v29 = allHTTPHeaderFields ? allHTTPHeaderFields : MEMORY[0x1E695E0F8];
    [v7 setObject:v29 forKeyedSubscript:@"_AMSRequestHeaders"];

    request5 = [(AMSUserNotificationAction *)self request];
    hTTPBody = [request5 HTTPBody];

    if (hTTPBody)
    {
      v32 = objc_alloc(MEMORY[0x1E696AEC0]);
      request6 = [(AMSUserNotificationAction *)self request];
      hTTPBody2 = [request6 HTTPBody];
      v35 = [v32 initWithData:hTTPBody2 encoding:4];
      [v7 setObject:v35 forKeyedSubscript:@"_AMSRequestBody"];
    }
  }

  v36 = [MEMORY[0x1E696AD98] numberWithInteger:{-[AMSUserNotificationAction style](self, "style")}];
  [v7 setObject:v36 forKeyedSubscript:@"_AMSStyle"];

  return v7;
}

@end