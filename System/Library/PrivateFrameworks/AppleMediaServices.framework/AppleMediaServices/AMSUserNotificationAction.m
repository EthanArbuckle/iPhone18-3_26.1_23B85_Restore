@interface AMSUserNotificationAction
- (AMSUserNotificationAction)initWithTitle:(id)a3 style:(int64_t)a4;
- (AMSUserNotificationAction)initWithUserInfoAction:(id)a3;
- (id)generateUserInfoAction;
@end

@implementation AMSUserNotificationAction

- (AMSUserNotificationAction)initWithTitle:(id)a3 style:(int64_t)a4
{
  v7 = a3;
  v14.receiver = self;
  v14.super_class = AMSUserNotificationAction;
  v8 = [(AMSUserNotificationAction *)&v14 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_title, a3);
    v9->_style = a4;
    v10 = [MEMORY[0x1E696AFB0] UUID];
    v11 = [v10 UUIDString];
    identifier = v9->_identifier;
    v9->_identifier = v11;
  }

  return v9;
}

- (AMSUserNotificationAction)initWithUserInfoAction:(id)a3
{
  v4 = a3;
  v33.receiver = self;
  v33.super_class = AMSUserNotificationAction;
  v5 = [(AMSUserNotificationAction *)&v33 init];
  if (v5)
  {
    v6 = [v4 mutableCopy];
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
      v32 = v4;
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

      v4 = v32;
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
  v3 = [(AMSUserNotificationAction *)self userInfo];
  v4 = [v3 mutableCopy];
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

  v8 = [(AMSUserNotificationAction *)self identifier];

  if (v8)
  {
    v9 = [(AMSUserNotificationAction *)self identifier];
    [v7 setObject:v9 forKeyedSubscript:@"_AMSIdentifier"];
  }

  v10 = [(AMSUserNotificationAction *)self title];

  if (v10)
  {
    v11 = [(AMSUserNotificationAction *)self title];
    [v7 setObject:v11 forKeyedSubscript:@"_AMSTitle"];
  }

  v12 = [(AMSUserNotificationAction *)self defaultURL];

  if (v12)
  {
    v13 = [(AMSUserNotificationAction *)self defaultURL];
    v14 = [v13 absoluteString];
    [v7 setObject:v14 forKeyedSubscript:@"_AMSDefaultURL"];
  }

  v15 = [(AMSUserNotificationAction *)self metricsEvent];

  if (v15)
  {
    v16 = [(AMSUserNotificationAction *)self metricsEvent];
    v17 = [v16 underlyingDictionary];
    [v7 setObject:v17 forKeyedSubscript:@"_AMSMetrics"];
  }

  v18 = [(AMSUserNotificationAction *)self request];

  if (v18)
  {
    v19 = [(AMSUserNotificationAction *)self request];
    v20 = [v19 URL];
    v21 = [v20 absoluteString];
    [v7 setObject:v21 forKeyedSubscript:@"_AMSRequestURL"];

    v22 = [(AMSUserNotificationAction *)self request];
    v23 = [v22 HTTPMethod];
    v24 = v23;
    v25 = v23 ? v23 : @"GET";
    [v7 setObject:v25 forKeyedSubscript:@"_AMSRequestMethod"];

    v26 = [(AMSUserNotificationAction *)self request];
    v27 = [v26 allHTTPHeaderFields];
    v28 = v27;
    v29 = v27 ? v27 : MEMORY[0x1E695E0F8];
    [v7 setObject:v29 forKeyedSubscript:@"_AMSRequestHeaders"];

    v30 = [(AMSUserNotificationAction *)self request];
    v31 = [v30 HTTPBody];

    if (v31)
    {
      v32 = objc_alloc(MEMORY[0x1E696AEC0]);
      v33 = [(AMSUserNotificationAction *)self request];
      v34 = [v33 HTTPBody];
      v35 = [v32 initWithData:v34 encoding:4];
      [v7 setObject:v35 forKeyedSubscript:@"_AMSRequestBody"];
    }
  }

  v36 = [MEMORY[0x1E696AD98] numberWithInteger:{-[AMSUserNotificationAction style](self, "style")}];
  [v7 setObject:v36 forKeyedSubscript:@"_AMSStyle"];

  return v7;
}

@end