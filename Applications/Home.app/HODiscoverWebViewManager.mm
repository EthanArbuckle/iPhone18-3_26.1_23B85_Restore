@interface HODiscoverWebViewManager
+ (id)sharedInstance;
- (BOOL)doesURLContainPath:(id)path urlResponseString:(id)string;
- (HODiscoverWebViewManager)init;
- (HODiscoverWebViewManagerWebViewNavigationDelegate)delegate;
- (id)createWebViewForURL:(id)l dependentWebViewURLString:(id)string;
- (id)getDeviceName;
- (id)getURLRequestForURL:(id)l;
- (id)getURLStringFromLocaleDictionary:(id)dictionary;
- (id)getUserAgent;
- (id)getWebViewURLKeyFromCache:(id)cache;
- (id)webViewForURLString:(id)string dependentWebViewURLString:(id)lString;
- (unint64_t)getWebViewNavigationStateForWebView:(id)view;
- (void)failedWebViewNavigation:(id)navigation navigation:(id)a4 withError:(id)error;
- (void)populateWebViewCache:(id)cache;
- (void)preload:(id)preload;
- (void)reloadWebViews;
- (void)updateWebViewRefreshIntervalFromServerResponse:(id)response;
- (void)webView:(id)view decidePolicyForNavigationResponse:(id)response decisionHandler:(id)handler;
- (void)webView:(id)view didFinishNavigation:(id)navigation;
- (void)webView:(id)view didStartProvisionalNavigation:(id)navigation;
@end

@implementation HODiscoverWebViewManager

+ (id)sharedInstance
{
  if (qword_1000DAB10 != -1)
  {
    sub_100081038();
  }

  v3 = qword_1000DAB08;

  return v3;
}

- (HODiscoverWebViewManager)init
{
  v5.receiver = self;
  v5.super_class = HODiscoverWebViewManager;
  v2 = [(HODiscoverWebViewManager *)&v5 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableDictionary);
    [(HODiscoverWebViewManager *)v2 setWebViewCache:v3];

    [(HODiscoverWebViewManager *)v2 setAllowForcedCacheReload:0];
    [(HODiscoverWebViewManager *)v2 setCacheRefreshTimeInterval:15.0];
  }

  return v2;
}

- (void)populateWebViewCache:(id)cache
{
  cacheCopy = cache;
  webViewCache = [(HODiscoverWebViewManager *)self webViewCache];
  v5 = [webViewCache count];

  if (!v5)
  {
    v6 = [(HODiscoverWebViewManager *)self getURLStringFromLocaleDictionary:cacheCopy];
    v7 = [(HODiscoverWebViewManager *)self webViewForURLString:v6];
  }
}

- (id)getURLStringFromLocaleDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = [dictionaryCopy objectForKeyedSubscript:@"region"];
  v5 = [dictionaryCopy objectForKeyedSubscript:@"storefront"];

  v6 = [NSString stringWithFormat:@"https://asa.commerce.apple.com/home/%@/%@/landing", v4, v5];

  if (+[HFUtilities isAMac])
  {
    v7 = +[NSBundle mainBundle];
    bundleIdentifier = [v7 bundleIdentifier];

    v9 = CFPreferencesCopyAppValue(@"HOStoreForceStagingURL", bundleIdentifier);
    if ([v9 BOOLValue])
    {
      v10 = CFPreferencesCopyAppValue(@"HOStoreStagingURLValue", bundleIdentifier);
    }

    else
    {
      v10 = v6;
    }

    v12 = v10;
  }

  else
  {
    if (HFForceStoreToUseStagingURL())
    {
      v11 = HFStoreStagingURLString();
    }

    else
    {
      v11 = v6;
    }

    v12 = v11;
  }

  return v12;
}

- (id)webViewForURLString:(id)string dependentWebViewURLString:(id)lString
{
  stringCopy = string;
  lStringCopy = lString;
  webViewCache = [(HODiscoverWebViewManager *)self webViewCache];
  v9 = [webViewCache objectForKeyedSubscript:stringCopy];

  if (!v9)
  {
    v10 = [NSURL URLWithString:stringCopy];
    v11 = [(HODiscoverWebViewManager *)self createWebViewForURL:v10 dependentWebViewURLString:lStringCopy];
    v12 = [HODiscoverWebViewCacheValue valueWithWebView:v11];
    webViewCache2 = [(HODiscoverWebViewManager *)self webViewCache];
    [webViewCache2 setObject:v12 forKeyedSubscript:stringCopy];

    webViewCache3 = [(HODiscoverWebViewManager *)self webViewCache];
    v15 = [webViewCache3 objectForKeyedSubscript:stringCopy];
    webView = [v15 webView];
    [webView setNavigationDelegate:self];

    v17 = HFLogForCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 136315394;
      v23 = "[HODiscoverWebViewManager webViewForURLString:dependentWebViewURLString:]";
      v24 = 2112;
      v25 = stringCopy;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "(%s) Discover webView created with url:[%@]", &v22, 0x16u);
    }
  }

  webViewCache4 = [(HODiscoverWebViewManager *)self webViewCache];
  v19 = [webViewCache4 objectForKeyedSubscript:stringCopy];
  webView2 = [v19 webView];

  return webView2;
}

- (void)preload:(id)preload
{
  preloadCopy = preload;
  if ([preloadCopy count])
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = preloadCopy;
    do
    {
      v8 = v6;
      v6 = [v7 objectAtIndexedSubscript:v4];

      if (v4)
      {
        v9 = [preloadCopy objectAtIndexedSubscript:v4 - 1];

        v5 = v9;
      }

      v10 = [(HODiscoverWebViewManager *)self webViewForURLString:v6 dependentWebViewURLString:v5];
      webViewCache = [(HODiscoverWebViewManager *)self webViewCache];
      v12 = [webViewCache objectForKeyedSubscript:v6];
      [v12 setWebView:v10];

      v13 = ++v4 >= [preloadCopy count];
      v7 = preloadCopy;
    }

    while (!v13);
  }
}

- (id)createWebViewForURL:(id)l dependentWebViewURLString:(id)string
{
  stringCopy = string;
  lCopy = l;
  v8 = objc_alloc_init(WKWebViewConfiguration);
  [v8 setAllowsInlineMediaPlayback:1];
  [v8 setMediaTypesRequiringUserActionForPlayback:1];
  [v8 _setCanShowWhileLocked:0];
  v9 = objc_alloc_init(HODiscoverWebViewMessageHandler);
  userContentController = [v8 userContentController];
  [userContentController addScriptMessageHandler:v9 name:@"preload"];

  if (stringCopy)
  {
    webViewCache = [(HODiscoverWebViewManager *)self webViewCache];
    v12 = [webViewCache objectForKeyedSubscript:stringCopy];
    webView = [v12 webView];

    if (webView)
    {
      configuration = [webView configuration];
      processPool = [configuration processPool];
      [v8 setProcessPool:processPool];

      [v8 _setRelatedWebView:webView];
    }
  }

  v16 = [WKWebView alloc];
  v17 = +[UIScreen mainScreen];
  [v17 bounds];
  v18 = [v16 initWithFrame:v8 configuration:?];

  getUserAgent = [(HODiscoverWebViewManager *)self getUserAgent];
  [v18 setCustomUserAgent:getUserAgent];

  [v18 setAllowsLinkPreview:0];
  v20 = [(HODiscoverWebViewManager *)self getURLRequestForURL:lCopy];

  v21 = [v18 loadRequest:v20];

  return v18;
}

- (id)getUserAgent
{
  userAgent = [(HODiscoverWebViewManager *)self userAgent];

  if (userAgent)
  {
    userAgent2 = [(HODiscoverWebViewManager *)self userAgent];
  }

  else
  {
    v5 = +[NSBundle mainBundle];
    infoDictionary = [v5 infoDictionary];

    v7 = [infoDictionary objectForKey:@"CFBundleDisplayName"];
    v8 = [infoDictionary objectForKey:@"CFBundleShortVersionString"];
    if (+[HFUtilities isAMac])
    {
      v18 = 0uLL;
      v9 = +[NSProcessInfo processInfo];
      v10 = v9;
      if (v9)
      {
        [v9 operatingSystemVersion];
      }

      else
      {
        v18 = 0uLL;
      }

      systemName = [@"macOS" copy];
      systemVersion = [NSString stringWithFormat:@"%ld.%ld.%ld", v18, 0];
    }

    else
    {
      v11 = +[UIDevice currentDevice];
      systemName = [v11 systemName];

      v13 = +[UIDevice currentDevice];
      systemVersion = [v13 systemVersion];
    }

    getDeviceName = [(HODiscoverWebViewManager *)self getDeviceName];
    v16 = [NSString stringWithFormat:@"%@/%@ %@/%@ model/%@", v7, v8, systemName, systemVersion, getDeviceName];
    [(HODiscoverWebViewManager *)self setUserAgent:v16];

    userAgent2 = [(HODiscoverWebViewManager *)self userAgent];
  }

  return userAgent2;
}

- (void)reloadWebViews
{
  webViewCache = [(HODiscoverWebViewManager *)self webViewCache];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000342A4;
  v4[3] = &unk_1000C3C68;
  v4[4] = self;
  [webViewCache na_each:v4];
}

- (id)getURLRequestForURL:(id)l
{
  v3 = [NSURLRequest requestWithURL:l cachePolicy:0 timeoutInterval:10.0];
  v4 = [v3 mutableCopy];
  v5 = +[NSUUID UUID];
  uUIDString = [v5 UUIDString];
  v7 = [@"x-request-id" copy];
  [v4 addValue:uUIDString forHTTPHeaderField:v7];

  if (+[HFUtilities isInternalInstall])
  {
    v8 = [@"qLNV8QsuL3e6ebtuBB8nT8GZse9N/aQ3lYTD2gDtPsU=" copy];
    v9 = [@"x-hov-cbp" copy];
    [v4 addValue:v8 forHTTPHeaderField:v9];
  }

  v10 = [v4 copy];

  return v10;
}

- (id)getDeviceName
{
  memset(&v4, 0, 512);
  uname(&v4);
  v2 = [NSString stringWithCString:v4.machine encoding:4];

  return v2;
}

- (unint64_t)getWebViewNavigationStateForWebView:(id)view
{
  viewCopy = view;
  webViewCache = [(HODiscoverWebViewManager *)self webViewCache];
  v6 = [viewCopy URL];
  absoluteString = [v6 absoluteString];
  v8 = [webViewCache objectForKeyedSubscript:absoluteString];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    webViewCache2 = [(HODiscoverWebViewManager *)self webViewCache];
    v12 = [(HODiscoverWebViewManager *)self getWebViewURLKeyFromCache:viewCopy];
    v10 = [webViewCache2 objectForKeyedSubscript:v12];
  }

  navigationState = [v10 navigationState];
  return navigationState;
}

- (id)getWebViewURLKeyFromCache:(id)cache
{
  cacheCopy = cache;
  webViewCache = [(HODiscoverWebViewManager *)self webViewCache];
  v6 = [cacheCopy URL];
  absoluteString = [v6 absoluteString];
  v8 = [webViewCache objectForKeyedSubscript:absoluteString];

  if (v8)
  {
    webViewCache2 = [cacheCopy URL];
    absoluteString2 = [webViewCache2 absoluteString];
  }

  else
  {
    webViewCache2 = [(HODiscoverWebViewManager *)self webViewCache];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100034800;
    v12[3] = &unk_1000C3C90;
    v13 = cacheCopy;
    absoluteString2 = [webViewCache2 na_firstKeyPassingTest:v12];
  }

  return absoluteString2;
}

- (void)updateWebViewRefreshIntervalFromServerResponse:(id)response
{
  responseCopy = response;
  v5 = [@"\\/landing" copy];
  v6 = [responseCopy URL];
  absoluteString = [v6 absoluteString];
  v8 = [(HODiscoverWebViewManager *)self doesURLContainPath:v5 urlResponseString:absoluteString];

  if (v8)
  {
    v9 = [@"x-hov-ti" copy];
    v10 = [responseCopy valueForHTTPHeaderField:v9];

    v11 = objc_alloc_init(NSNumberFormatter);
    [v11 setNumberStyle:1];
    v12 = [v11 numberFromString:v10];
    v13 = v12;
    if (v12)
    {
      [v12 doubleValue];
    }

    else
    {
      v14 = 15.0;
    }

    [(HODiscoverWebViewManager *)self setCacheRefreshTimeInterval:v14];
    v15 = HFLogForCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      [(HODiscoverWebViewManager *)self cacheRefreshTimeInterval];
      v17 = 136315650;
      v18 = "[HODiscoverWebViewManager updateWebViewRefreshIntervalFromServerResponse:]";
      v19 = 2112;
      v20 = v10;
      v21 = 2048;
      v22 = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "(%s) Discover Tab refresh interval HTTP header value:[%@], cacheRefreshTimeInterval value:[%lf]", &v17, 0x20u);
    }
  }
}

- (void)failedWebViewNavigation:(id)navigation navigation:(id)a4 withError:(id)error
{
  navigationCopy = navigation;
  errorCopy = error;
  [(HODiscoverWebViewManager *)self setAllowForcedCacheReload:0];
  v9 = [(HODiscoverWebViewManager *)self getWebViewURLKeyFromCache:navigationCopy];
  v10 = HFLogForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v17 = [navigationCopy URL];
    absoluteString = [v17 absoluteString];
    v19 = 136315906;
    v20 = "[HODiscoverWebViewManager failedWebViewNavigation:navigation:withError:]";
    v21 = 2112;
    v22 = absoluteString;
    v23 = 2112;
    v24 = errorCopy;
    v25 = 2112;
    v26 = v9;
    _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "(%s) error occurred during Discover webView Navigation to url:[%@] with error: %@, from requested URL:[%@]", &v19, 0x2Au);
  }

  webViewCache = [(HODiscoverWebViewManager *)self webViewCache];
  v12 = [webViewCache objectForKeyedSubscript:v9];
  [v12 setNavigationState:2];

  delegate = [(HODiscoverWebViewManager *)self delegate];

  if (delegate)
  {
    delegate2 = [(HODiscoverWebViewManager *)self delegate];
    webViewCache2 = [(HODiscoverWebViewManager *)self webViewCache];
    v16 = [webViewCache2 objectForKeyedSubscript:v9];
    [delegate2 webViewNavigationStateUpdated:navigationCopy navigationState:{objc_msgSend(v16, "navigationState")}];
  }
}

- (void)webView:(id)view decidePolicyForNavigationResponse:(id)response decisionHandler:(id)handler
{
  viewCopy = view;
  handlerCopy = handler;
  responseCopy = response;
  v10 = [viewCopy URL];
  absoluteString = [v10 absoluteString];

  webViewCache = [(HODiscoverWebViewManager *)self webViewCache];
  v13 = [webViewCache objectForKeyedSubscript:absoluteString];

  objc_opt_class();
  response = [responseCopy response];

  if (objc_opt_isKindOfClass())
  {
    v15 = response;
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;

  [(HODiscoverWebViewManager *)self updateWebViewRefreshIntervalFromServerResponse:v16];
  if (v13)
  {
    if ([v16 statusCode] - 400 > 0xC7)
    {
      v28 = [@"\\/covers.html" copy];
      v29 = [viewCopy URL];
      absoluteString2 = [v29 absoluteString];
      v31 = [(HODiscoverWebViewManager *)self doesURLContainPath:v28 urlResponseString:absoluteString2];

      [(HODiscoverWebViewManager *)self setAllowForcedCacheReload:v31 != 0];
      [v13 setNavigationState:1];
      handlerCopy[2](handlerCopy, 1);
    }

    else
    {
      [(HODiscoverWebViewManager *)self setAllowForcedCacheReload:0];
      [v13 setNavigationState:2];
      handlerCopy[2](handlerCopy, 0);
    }

    v17 = absoluteString;
  }

  else
  {
    v17 = [(HODiscoverWebViewManager *)self getWebViewURLKeyFromCache:viewCopy];

    webViewCache2 = [(HODiscoverWebViewManager *)self webViewCache];
    v13 = [webViewCache2 objectForKeyedSubscript:v17];

    if ((+[HFUtilities isInternalInstall]& 1) != 0)
    {
      goto LABEL_9;
    }

    webView = [v13 webView];
    v19 = [webView URL];
    host = [v19 host];
    v21 = [viewCopy URL];
    host2 = [v21 host];
    v23 = [host isEqualToString:host2];

    if (v23)
    {
LABEL_9:
      v24 = [@"\\/covers.html" copy];
      v25 = [viewCopy URL];
      absoluteString3 = [v25 absoluteString];
      v27 = [(HODiscoverWebViewManager *)self doesURLContainPath:v24 urlResponseString:absoluteString3];

      [(HODiscoverWebViewManager *)self setAllowForcedCacheReload:v27];
      [v13 setNavigationState:1];
      handlerCopy[2](handlerCopy, 1);
    }

    else
    {
      [(HODiscoverWebViewManager *)self setAllowForcedCacheReload:0];
      [v13 setNavigationState:2];
      handlerCopy[2](handlerCopy, 0);
    }
  }

  delegate = [(HODiscoverWebViewManager *)self delegate];

  if (delegate)
  {
    delegate2 = [(HODiscoverWebViewManager *)self delegate];
    [delegate2 webViewNavigationStateUpdated:viewCopy navigationState:{objc_msgSend(v13, "navigationState")}];
  }
}

- (void)webView:(id)view didFinishNavigation:(id)navigation
{
  viewCopy = view;
  v5 = [(HODiscoverWebViewManager *)self getWebViewURLKeyFromCache:?];
  webViewCache = [(HODiscoverWebViewManager *)self webViewCache];
  v7 = [webViewCache objectForKeyedSubscript:v5];
  [v7 setNavigationState:1];

  delegate = [(HODiscoverWebViewManager *)self delegate];

  if (delegate)
  {
    delegate2 = [(HODiscoverWebViewManager *)self delegate];
    webViewCache2 = [(HODiscoverWebViewManager *)self webViewCache];
    v11 = [webViewCache2 objectForKeyedSubscript:v5];
    [delegate2 webViewNavigationStateUpdated:viewCopy navigationState:{objc_msgSend(v11, "navigationState")}];
  }
}

- (void)webView:(id)view didStartProvisionalNavigation:(id)navigation
{
  viewCopy = view;
  v5 = [(HODiscoverWebViewManager *)self getWebViewURLKeyFromCache:viewCopy];
  if ([viewCopy isLoading])
  {
    webViewCache = [(HODiscoverWebViewManager *)self webViewCache];
    v7 = [webViewCache objectForKeyedSubscript:v5];
    [v7 setNavigationState:0];
  }

  delegate = [(HODiscoverWebViewManager *)self delegate];

  if (delegate)
  {
    delegate2 = [(HODiscoverWebViewManager *)self delegate];
    webViewCache2 = [(HODiscoverWebViewManager *)self webViewCache];
    v11 = [webViewCache2 objectForKeyedSubscript:v5];
    [delegate2 webViewNavigationStateUpdated:viewCopy navigationState:{objc_msgSend(v11, "navigationState")}];
  }
}

- (BOOL)doesURLContainPath:(id)path urlResponseString:(id)string
{
  pathCopy = path;
  stringCopy = string;
  v7 = stringCopy;
  if (stringCopy)
  {
    v8 = [stringCopy length];
    v15 = 0;
    v9 = [NSRegularExpression regularExpressionWithPattern:pathCopy options:0 error:&v15];
    v10 = v15;
    v11 = [v9 firstMatchInString:v7 options:0 range:{0, v8}];
    v12 = HFLogForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v17 = "[HODiscoverWebViewManager doesURLContainPath:urlResponseString:]";
      v18 = 2112;
      v19 = v7;
      v20 = 2112;
      v21 = pathCopy;
      v22 = 1024;
      v23 = v11 != 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "(%s) Did Discover webview response came from url:[%@] with pathPattern:[%@] - [%d]", buf, 0x26u);
    }

    v13 = v11 != 0;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (HODiscoverWebViewManagerWebViewNavigationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end