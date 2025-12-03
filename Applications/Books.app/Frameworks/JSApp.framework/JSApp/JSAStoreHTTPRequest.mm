@interface JSAStoreHTTPRequest
+ (void)incrementPostLaunchCacheCount;
- (JSAStoreHTTPRequest)init;
- (void)AMSURLSession:(id)session task:(id)task handleAuthenticateRequest:(id)request completion:(id)completion;
- (void)AMSURLSession:(id)session task:(id)task handleDialogRequest:(id)request completion:(id)completion;
- (void)AMSURLSession:(id)session task:(id)task handleEngagementRequest:(id)request completion:(id)completion;
- (void)cancel;
- (void)send;
- (void)setBody:(id)body;
- (void)setCompletion:(id)completion;
- (void)setCookiesToSuppress:(id)suppress;
- (void)setDisableATS:(BOOL)s;
- (void)setHeaders:(id)headers;
- (void)setMethod:(id)method;
- (void)setOnResponse:(id)response;
- (void)setPersonalized:(BOOL)personalized;
- (void)setPriority:(float)priority;
- (void)setQueryItems:(id)items;
- (void)setRetryCount:(id)count;
- (void)setShouldSuppressMetrics:(BOOL)metrics;
- (void)setShouldSuppressResponseDialogs:(BOOL)dialogs;
- (void)setTimeout:(id)timeout;
- (void)setUrl:(id)url;
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

- (void)setPriority:(float)priority
{
  self->_priority = priority;
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

- (void)AMSURLSession:(id)session task:(id)task handleDialogRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  requestCopy = request;
  if ([(JSAStoreHTTPRequest *)self shouldSuppressResponseDialogs])
  {
    v10 = [(JSAStoreHTTPRequest *)self url];
    title = [requestCopy title];
    message = [requestCopy message];

    v13 = [NSString stringWithFormat:@"[JSAStoreHTTPRequest] (%@) caller suppressed dialog of title '%@' and message '%@'", v10, title, message];

    v14 = objc_retainBlock(completionCopy);
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
    v20 = [v17 initWithRequest:requestCopy presentingViewController:v18];

    present = [v20 present];
    [present addFinishBlock:completionCopy];
  }
}

- (void)AMSURLSession:(id)session task:(id)task handleAuthenticateRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  requestCopy = request;
  v9 = [AMSUIAuthenticateTask alloc];
  v10 = [UIViewController jsa_topMostViewControllerForWindow:0];
  v12 = [v9 initWithRequest:requestCopy presentingViewController:v10];

  performAuthentication = [v12 performAuthentication];
  [performAuthentication addFinishBlock:completionCopy];
}

- (void)AMSURLSession:(id)session task:(id)task handleEngagementRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  requestCopy = request;
  v13 = +[BUBag defaultBag];
  v9 = [AMSUIEngagementTask alloc];
  v10 = [UIViewController jsa_topMostViewControllerForWindow:0];
  v11 = [v9 initWithRequest:requestCopy bag:v13 presentingViewController:v10];

  presentEngagement = [v11 presentEngagement];
  [presentEngagement addFinishBlock:completionCopy];
}

- (void)setUrl:(id)url
{
  urlCopy = url;
  if (!self->_frozen)
  {
    v5 = [NSURL URLWithString:urlCopy];
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

- (void)setMethod:(id)method
{
  methodCopy = method;
  v6 = methodCopy;
  if (!self->_frozen)
  {
    if (([methodCopy isEqualToString:@"GET"] & 1) != 0 || (objc_msgSend(v6, "isEqualToString:", @"HEAD") & 1) != 0 || (objc_msgSend(v6, "isEqualToString:", @"POST") & 1) != 0 || (objc_msgSend(v6, "isEqualToString:", @"PUT") & 1) != 0 || (objc_msgSend(v6, "isEqualToString:", @"PATCH") & 1) != 0 || objc_msgSend(v6, "isEqualToString:", @"DELETE"))
    {
      objc_storeStrong(&self->_method, method);
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

- (void)setBody:(id)body
{
  bodyCopy = body;
  if (!self->_frozen)
  {
    v6 = bodyCopy;
    objc_storeStrong(&self->_body, body);
    bodyCopy = v6;
  }
}

- (void)setQueryItems:(id)items
{
  if (!self->_frozen)
  {
    jsa_stringDictionaryForRequestHeaderOrURLParam = [items jsa_stringDictionaryForRequestHeaderOrURLParam];
    queryItems = self->_queryItems;
    self->_queryItems = jsa_stringDictionaryForRequestHeaderOrURLParam;

    _objc_release_x1();
  }
}

- (void)setHeaders:(id)headers
{
  headersCopy = headers;
  v5 = headersCopy;
  if (!self->_frozen)
  {
    jsa_stringDictionaryForRequestHeaderOrURLParam = [headersCopy jsa_stringDictionaryForRequestHeaderOrURLParam];
    v7 = objc_opt_new();
    objc_initWeak(&location, self);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_13EC0;
    v11[3] = &unk_B2C00;
    objc_copyWeak(&v13, &location);
    v8 = v7;
    v12 = v8;
    [jsa_stringDictionaryForRequestHeaderOrURLParam enumerateKeysAndObjectsUsingBlock:v11];
    v9 = [v8 copy];
    headers = self->_headers;
    self->_headers = v9;

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }
}

- (void)setTimeout:(id)timeout
{
  if (!self->_frozen)
  {
    [timeout doubleValue];
    self->_timeout = v4;
  }
}

- (void)setRetryCount:(id)count
{
  if (!self->_frozen)
  {
    self->_retryCount = [count integerValue];
  }
}

- (void)setShouldSuppressResponseDialogs:(BOOL)dialogs
{
  if (!self->_frozen)
  {
    self->_shouldSuppressResponseDialogs = dialogs;
  }
}

- (void)setShouldSuppressMetrics:(BOOL)metrics
{
  if (!self->_frozen)
  {
    self->_shouldSuppressMetrics = metrics;
  }
}

- (void)setPersonalized:(BOOL)personalized
{
  if (!self->_frozen)
  {
    self->_personalized = personalized;
  }
}

- (void)setCookiesToSuppress:(id)suppress
{
  suppressCopy = suppress;
  if (!self->_frozen)
  {
    v6 = suppressCopy;
    objc_storeStrong(&self->_cookiesToSuppress, suppress);
    suppressCopy = v6;
  }
}

- (void)setDisableATS:(BOOL)s
{
  if (!self->_frozen)
  {
    self->_disableATS = s;
  }
}

- (void)setOnResponse:(id)response
{
  responseCopy = response;
  if (!self->_frozen)
  {
    v6 = responseCopy;
    objc_storeStrong(&self->_onResponse, response);
    responseCopy = v6;
  }
}

- (void)setCompletion:(id)completion
{
  if (!self->_frozen)
  {
    v5 = objc_retainBlock(completion);
    completion = self->_completion;
    self->_completion = v5;

    _objc_release_x1();
  }
}

@end