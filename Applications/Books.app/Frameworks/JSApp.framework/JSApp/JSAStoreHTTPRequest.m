@interface JSAStoreHTTPRequest
+ (void)incrementPostLaunchCacheCount;
- (JSAStoreHTTPRequest)init;
- (void)AMSURLSession:(id)a3 task:(id)a4 handleAuthenticateRequest:(id)a5 completion:(id)a6;
- (void)AMSURLSession:(id)a3 task:(id)a4 handleDialogRequest:(id)a5 completion:(id)a6;
- (void)AMSURLSession:(id)a3 task:(id)a4 handleEngagementRequest:(id)a5 completion:(id)a6;
- (void)cancel;
- (void)send;
- (void)setBody:(id)a3;
- (void)setCompletion:(id)a3;
- (void)setCookiesToSuppress:(id)a3;
- (void)setDisableATS:(BOOL)a3;
- (void)setHeaders:(id)a3;
- (void)setMethod:(id)a3;
- (void)setOnResponse:(id)a3;
- (void)setPersonalized:(BOOL)a3;
- (void)setPriority:(float)a3;
- (void)setQueryItems:(id)a3;
- (void)setRetryCount:(id)a3;
- (void)setShouldSuppressMetrics:(BOOL)a3;
- (void)setShouldSuppressResponseDialogs:(BOOL)a3;
- (void)setTimeout:(id)a3;
- (void)setUrl:(id)a3;
@end

@implementation JSAStoreHTTPRequest

+ (void)incrementPostLaunchCacheCount
{
  v2 = +[_JSAStoreHTTPReqestOfflineCache sharedOfflineCache];
  [v2 incrementPostLaunchCacheCount];
}

- (void)send
{
  if (!self->_frozen)
  {
    self->_frozen = 1;
    sub_12B94(self);
  }
}

- (void)cancel
{
  [(NSURLSessionDataTask *)self->_dataTask cancel];
  dataTask = self->_dataTask;
  self->_dataTask = 0;
}

- (void)setPriority:(float)a3
{
  self->_priority = a3;
  dataTask = self->_dataTask;
  if (dataTask)
  {
    [(NSURLSessionDataTask *)dataTask setPriority:?];
  }
}

- (JSAStoreHTTPRequest)init
{
  v13.receiver = self;
  v13.super_class = JSAStoreHTTPRequest;
  v2 = [(JSAStoreHTTPRequest *)&v13 init];
  v3 = v2;
  if (v2)
  {
    method = v2->_method;
    v2->_method = @"GET";

    v5 = objc_opt_new();
    queryItems = v3->_queryItems;
    v3->_queryItems = v5;

    v7 = objc_opt_new();
    headers = v3->_headers;
    v3->_headers = v7;

    v3->_timeout = 30.0;
    v3->_retryCount = 0;
    *&v3->_shouldSuppressResponseDialogs = 0x10000;
    v3->_frozen = 0;
    lowercaseRestrictedHeaders = v3->_lowercaseRestrictedHeaders;
    v3->_lowercaseRestrictedHeaders = &off_BA8F0;

    v10 = objc_opt_new();
    cookiesToSuppress = v3->_cookiesToSuppress;
    v3->_cookiesToSuppress = v10;
  }

  return v3;
}

- (void)AMSURLSession:(id)a3 task:(id)a4 handleDialogRequest:(id)a5 completion:(id)a6
{
  v8 = a6;
  v9 = a5;
  if ([(JSAStoreHTTPRequest *)self shouldSuppressResponseDialogs])
  {
    v10 = [(JSAStoreHTTPRequest *)self url];
    v11 = [v9 title];
    v12 = [v9 message];

    v13 = [NSString stringWithFormat:@"[JSAStoreHTTPRequest] (%@) caller suppressed dialog of title '%@' and message '%@'", v10, v11, v12];

    v14 = objc_retainBlock(v8);
    if (v14)
    {
      v21 = NSLocalizedDescriptionKey;
      v22 = v13;
      v15 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
      v16 = [NSError errorWithDomain:@"JSAErrorDomain" code:970 userInfo:v15];
      v14[2](v14, 0, v16);
    }
  }

  else
  {
    v17 = [AMSUIAlertDialogTask alloc];
    v18 = [UIViewController jsa_topMostViewControllerForWindow:0];
    v20 = [v17 initWithRequest:v9 presentingViewController:v18];

    v19 = [v20 present];
    [v19 addFinishBlock:v8];
  }
}

- (void)AMSURLSession:(id)a3 task:(id)a4 handleAuthenticateRequest:(id)a5 completion:(id)a6
{
  v7 = a6;
  v8 = a5;
  v9 = [AMSUIAuthenticateTask alloc];
  v10 = [UIViewController jsa_topMostViewControllerForWindow:0];
  v12 = [v9 initWithRequest:v8 presentingViewController:v10];

  v11 = [v12 performAuthentication];
  [v11 addFinishBlock:v7];
}

- (void)AMSURLSession:(id)a3 task:(id)a4 handleEngagementRequest:(id)a5 completion:(id)a6
{
  v7 = a6;
  v8 = a5;
  v13 = +[BUBag defaultBag];
  v9 = [AMSUIEngagementTask alloc];
  v10 = [UIViewController jsa_topMostViewControllerForWindow:0];
  v11 = [v9 initWithRequest:v8 bag:v13 presentingViewController:v10];

  v12 = [v11 presentEngagement];
  [v12 addFinishBlock:v7];
}

- (void)setUrl:(id)a3
{
  v4 = a3;
  if (!self->_frozen)
  {
    v5 = [NSURL URLWithString:v4];
    url = self->_url;
    self->_url = v5;

    if (!self->_url)
    {
      v7 = JSALog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_815C0();
      }
    }
  }
}

- (void)setMethod:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (!self->_frozen)
  {
    if (([v5 isEqualToString:@"GET"] & 1) != 0 || (objc_msgSend(v6, "isEqualToString:", @"HEAD") & 1) != 0 || (objc_msgSend(v6, "isEqualToString:", @"POST") & 1) != 0 || (objc_msgSend(v6, "isEqualToString:", @"PUT") & 1) != 0 || (objc_msgSend(v6, "isEqualToString:", @"PATCH") & 1) != 0 || objc_msgSend(v6, "isEqualToString:", @"DELETE"))
    {
      objc_storeStrong(&self->_method, a3);
    }

    else
    {
      v7 = JSALog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_81644();
      }
    }
  }
}

- (void)setBody:(id)a3
{
  v5 = a3;
  if (!self->_frozen)
  {
    v6 = v5;
    objc_storeStrong(&self->_body, a3);
    v5 = v6;
  }
}

- (void)setQueryItems:(id)a3
{
  if (!self->_frozen)
  {
    v5 = [a3 jsa_stringDictionaryForRequestHeaderOrURLParam];
    queryItems = self->_queryItems;
    self->_queryItems = v5;

    _objc_release_x1();
  }
}

- (void)setHeaders:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!self->_frozen)
  {
    v6 = [v4 jsa_stringDictionaryForRequestHeaderOrURLParam];
    v7 = objc_opt_new();
    objc_initWeak(&location, self);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_13EC0;
    v11[3] = &unk_B2C00;
    objc_copyWeak(&v13, &location);
    v8 = v7;
    v12 = v8;
    [v6 enumerateKeysAndObjectsUsingBlock:v11];
    v9 = [v8 copy];
    headers = self->_headers;
    self->_headers = v9;

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }
}

- (void)setTimeout:(id)a3
{
  if (!self->_frozen)
  {
    [a3 doubleValue];
    self->_timeout = v4;
  }
}

- (void)setRetryCount:(id)a3
{
  if (!self->_frozen)
  {
    self->_retryCount = [a3 integerValue];
  }
}

- (void)setShouldSuppressResponseDialogs:(BOOL)a3
{
  if (!self->_frozen)
  {
    self->_shouldSuppressResponseDialogs = a3;
  }
}

- (void)setShouldSuppressMetrics:(BOOL)a3
{
  if (!self->_frozen)
  {
    self->_shouldSuppressMetrics = a3;
  }
}

- (void)setPersonalized:(BOOL)a3
{
  if (!self->_frozen)
  {
    self->_personalized = a3;
  }
}

- (void)setCookiesToSuppress:(id)a3
{
  v5 = a3;
  if (!self->_frozen)
  {
    v6 = v5;
    objc_storeStrong(&self->_cookiesToSuppress, a3);
    v5 = v6;
  }
}

- (void)setDisableATS:(BOOL)a3
{
  if (!self->_frozen)
  {
    self->_disableATS = a3;
  }
}

- (void)setOnResponse:(id)a3
{
  v5 = a3;
  if (!self->_frozen)
  {
    v6 = v5;
    objc_storeStrong(&self->_onResponse, a3);
    v5 = v6;
  }
}

- (void)setCompletion:(id)a3
{
  if (!self->_frozen)
  {
    v5 = objc_retainBlock(a3);
    completion = self->_completion;
    self->_completion = v5;

    _objc_release_x1();
  }
}

@end