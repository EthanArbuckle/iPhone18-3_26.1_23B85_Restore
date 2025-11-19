@interface HODiscoverWebViewManager
+ (id)sharedInstance;
- (BOOL)doesURLContainPath:(id)a3 urlResponseString:(id)a4;
- (HODiscoverWebViewManager)init;
- (HODiscoverWebViewManagerWebViewNavigationDelegate)delegate;
- (id)createWebViewForURL:(id)a3 dependentWebViewURLString:(id)a4;
- (id)getDeviceName;
- (id)getURLRequestForURL:(id)a3;
- (id)getURLStringFromLocaleDictionary:(id)a3;
- (id)getUserAgent;
- (id)getWebViewURLKeyFromCache:(id)a3;
- (id)webViewForURLString:(id)a3 dependentWebViewURLString:(id)a4;
- (unint64_t)getWebViewNavigationStateForWebView:(id)a3;
- (void)failedWebViewNavigation:(id)a3 navigation:(id)a4 withError:(id)a5;
- (void)populateWebViewCache:(id)a3;
- (void)preload:(id)a3;
- (void)reloadWebViews;
- (void)updateWebViewRefreshIntervalFromServerResponse:(id)a3;
- (void)webView:(id)a3 decidePolicyForNavigationResponse:(id)a4 decisionHandler:(id)a5;
- (void)webView:(id)a3 didFinishNavigation:(id)a4;
- (void)webView:(id)a3 didStartProvisionalNavigation:(id)a4;
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

- (void)populateWebViewCache:(id)a3
{
  v8 = a3;
  v4 = [(HODiscoverWebViewManager *)self webViewCache];
  v5 = [v4 count];

  if (!v5)
  {
    v6 = [(HODiscoverWebViewManager *)self getURLStringFromLocaleDictionary:v8];
    v7 = [(HODiscoverWebViewManager *)self webViewForURLString:v6];
  }
}

- (id)getURLStringFromLocaleDictionary:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"region"];
  v5 = [v3 objectForKeyedSubscript:@"storefront"];

  v6 = [NSString stringWithFormat:@"https://asa.commerce.apple.com/home/%@/%@/landing", v4, v5];

  if (+[HFUtilities isAMac])
  {
    v7 = +[NSBundle mainBundle];
    v8 = [v7 bundleIdentifier];

    v9 = CFPreferencesCopyAppValue(@"HOStoreForceStagingURL", v8);
    if ([v9 BOOLValue])
    {
      v10 = CFPreferencesCopyAppValue(@"HOStoreStagingURLValue", v8);
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

- (id)webViewForURLString:(id)a3 dependentWebViewURLString:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HODiscoverWebViewManager *)self webViewCache];
  v9 = [v8 objectForKeyedSubscript:v6];

  if (!v9)
  {
    v10 = [NSURL URLWithString:v6];
    v11 = [(HODiscoverWebViewManager *)self createWebViewForURL:v10 dependentWebViewURLString:v7];
    v12 = [HODiscoverWebViewCacheValue valueWithWebView:v11];
    v13 = [(HODiscoverWebViewManager *)self webViewCache];
    [v13 setObject:v12 forKeyedSubscript:v6];

    v14 = [(HODiscoverWebViewManager *)self webViewCache];
    v15 = [v14 objectForKeyedSubscript:v6];
    v16 = [v15 webView];
    [v16 setNavigationDelegate:self];

    v17 = HFLogForCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 136315394;
      v23 = "[HODiscoverWebViewManager webViewForURLString:dependentWebViewURLString:]";
      v24 = 2112;
      v25 = v6;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "(%s) Discover webView created with url:[%@]", &v22, 0x16u);
    }
  }

  v18 = [(HODiscoverWebViewManager *)self webViewCache];
  v19 = [v18 objectForKeyedSubscript:v6];
  v20 = [v19 webView];

  return v20;
}

- (void)preload:(id)a3
{
  v14 = a3;
  if ([v14 count])
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = v14;
    do
    {
      v8 = v6;
      v6 = [v7 objectAtIndexedSubscript:v4];

      if (v4)
      {
        v9 = [v14 objectAtIndexedSubscript:v4 - 1];

        v5 = v9;
      }

      v10 = [(HODiscoverWebViewManager *)self webViewForURLString:v6 dependentWebViewURLString:v5];
      v11 = [(HODiscoverWebViewManager *)self webViewCache];
      v12 = [v11 objectForKeyedSubscript:v6];
      [v12 setWebView:v10];

      v13 = ++v4 >= [v14 count];
      v7 = v14;
    }

    while (!v13);
  }
}

- (id)createWebViewForURL:(id)a3 dependentWebViewURLString:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(WKWebViewConfiguration);
  [v8 setAllowsInlineMediaPlayback:1];
  [v8 setMediaTypesRequiringUserActionForPlayback:1];
  [v8 _setCanShowWhileLocked:0];
  v9 = objc_alloc_init(HODiscoverWebViewMessageHandler);
  v10 = [v8 userContentController];
  [v10 addScriptMessageHandler:v9 name:@"preload"];

  if (v6)
  {
    v11 = [(HODiscoverWebViewManager *)self webViewCache];
    v12 = [v11 objectForKeyedSubscript:v6];
    v13 = [v12 webView];

    if (v13)
    {
      v14 = [v13 configuration];
      v15 = [v14 processPool];
      [v8 setProcessPool:v15];

      [v8 _setRelatedWebView:v13];
    }
  }

  v16 = [WKWebView alloc];
  v17 = +[UIScreen mainScreen];
  [v17 bounds];
  v18 = [v16 initWithFrame:v8 configuration:?];

  v19 = [(HODiscoverWebViewManager *)self getUserAgent];
  [v18 setCustomUserAgent:v19];

  [v18 setAllowsLinkPreview:0];
  v20 = [(HODiscoverWebViewManager *)self getURLRequestForURL:v7];

  v21 = [v18 loadRequest:v20];

  return v18;
}

- (id)getUserAgent
{
  v3 = [(HODiscoverWebViewManager *)self userAgent];

  if (v3)
  {
    v4 = [(HODiscoverWebViewManager *)self userAgent];
  }

  else
  {
    v5 = +[NSBundle mainBundle];
    v6 = [v5 infoDictionary];

    v7 = [v6 objectForKey:@"CFBundleDisplayName"];
    v8 = [v6 objectForKey:@"CFBundleShortVersionString"];
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

      v12 = [@"macOS" copy];
      v14 = [NSString stringWithFormat:@"%ld.%ld.%ld", v18, 0];
    }

    else
    {
      v11 = +[UIDevice currentDevice];
      v12 = [v11 systemName];

      v13 = +[UIDevice currentDevice];
      v14 = [v13 systemVersion];
    }

    v15 = [(HODiscoverWebViewManager *)self getDeviceName];
    v16 = [NSString stringWithFormat:@"%@/%@ %@/%@ model/%@", v7, v8, v12, v14, v15];
    [(HODiscoverWebViewManager *)self setUserAgent:v16];

    v4 = [(HODiscoverWebViewManager *)self userAgent];
  }

  return v4;
}

- (void)reloadWebViews
{
  v3 = [(HODiscoverWebViewManager *)self webViewCache];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000342A4;
  v4[3] = &unk_1000C3C68;
  v4[4] = self;
  [v3 na_each:v4];
}

- (id)getURLRequestForURL:(id)a3
{
  v3 = [NSURLRequest requestWithURL:a3 cachePolicy:0 timeoutInterval:10.0];
  v4 = [v3 mutableCopy];
  v5 = +[NSUUID UUID];
  v6 = [v5 UUIDString];
  v7 = [@"x-request-id" copy];
  [v4 addValue:v6 forHTTPHeaderField:v7];

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

- (unint64_t)getWebViewNavigationStateForWebView:(id)a3
{
  v4 = a3;
  v5 = [(HODiscoverWebViewManager *)self webViewCache];
  v6 = [v4 URL];
  v7 = [v6 absoluteString];
  v8 = [v5 objectForKeyedSubscript:v7];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v11 = [(HODiscoverWebViewManager *)self webViewCache];
    v12 = [(HODiscoverWebViewManager *)self getWebViewURLKeyFromCache:v4];
    v10 = [v11 objectForKeyedSubscript:v12];
  }

  v13 = [v10 navigationState];
  return v13;
}

- (id)getWebViewURLKeyFromCache:(id)a3
{
  v4 = a3;
  v5 = [(HODiscoverWebViewManager *)self webViewCache];
  v6 = [v4 URL];
  v7 = [v6 absoluteString];
  v8 = [v5 objectForKeyedSubscript:v7];

  if (v8)
  {
    v9 = [v4 URL];
    v10 = [v9 absoluteString];
  }

  else
  {
    v9 = [(HODiscoverWebViewManager *)self webViewCache];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100034800;
    v12[3] = &unk_1000C3C90;
    v13 = v4;
    v10 = [v9 na_firstKeyPassingTest:v12];
  }

  return v10;
}

- (void)updateWebViewRefreshIntervalFromServerResponse:(id)a3
{
  v4 = a3;
  v5 = [@"\\/landing" copy];
  v6 = [v4 URL];
  v7 = [v6 absoluteString];
  v8 = [(HODiscoverWebViewManager *)self doesURLContainPath:v5 urlResponseString:v7];

  if (v8)
  {
    v9 = [@"x-hov-ti" copy];
    v10 = [v4 valueForHTTPHeaderField:v9];

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

- (void)failedWebViewNavigation:(id)a3 navigation:(id)a4 withError:(id)a5
{
  v7 = a3;
  v8 = a5;
  [(HODiscoverWebViewManager *)self setAllowForcedCacheReload:0];
  v9 = [(HODiscoverWebViewManager *)self getWebViewURLKeyFromCache:v7];
  v10 = HFLogForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v17 = [v7 URL];
    v18 = [v17 absoluteString];
    v19 = 136315906;
    v20 = "[HODiscoverWebViewManager failedWebViewNavigation:navigation:withError:]";
    v21 = 2112;
    v22 = v18;
    v23 = 2112;
    v24 = v8;
    v25 = 2112;
    v26 = v9;
    _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "(%s) error occurred during Discover webView Navigation to url:[%@] with error: %@, from requested URL:[%@]", &v19, 0x2Au);
  }

  v11 = [(HODiscoverWebViewManager *)self webViewCache];
  v12 = [v11 objectForKeyedSubscript:v9];
  [v12 setNavigationState:2];

  v13 = [(HODiscoverWebViewManager *)self delegate];

  if (v13)
  {
    v14 = [(HODiscoverWebViewManager *)self delegate];
    v15 = [(HODiscoverWebViewManager *)self webViewCache];
    v16 = [v15 objectForKeyedSubscript:v9];
    [v14 webViewNavigationStateUpdated:v7 navigationState:{objc_msgSend(v16, "navigationState")}];
  }
}

- (void)webView:(id)a3 decidePolicyForNavigationResponse:(id)a4 decisionHandler:(id)a5
{
  v35 = a3;
  v8 = a5;
  v9 = a4;
  v10 = [v35 URL];
  v11 = [v10 absoluteString];

  v12 = [(HODiscoverWebViewManager *)self webViewCache];
  v13 = [v12 objectForKeyedSubscript:v11];

  objc_opt_class();
  v14 = [v9 response];

  if (objc_opt_isKindOfClass())
  {
    v15 = v14;
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
      v29 = [v35 URL];
      v30 = [v29 absoluteString];
      v31 = [(HODiscoverWebViewManager *)self doesURLContainPath:v28 urlResponseString:v30];

      [(HODiscoverWebViewManager *)self setAllowForcedCacheReload:v31 != 0];
      [v13 setNavigationState:1];
      v8[2](v8, 1);
    }

    else
    {
      [(HODiscoverWebViewManager *)self setAllowForcedCacheReload:0];
      [v13 setNavigationState:2];
      v8[2](v8, 0);
    }

    v17 = v11;
  }

  else
  {
    v17 = [(HODiscoverWebViewManager *)self getWebViewURLKeyFromCache:v35];

    v18 = [(HODiscoverWebViewManager *)self webViewCache];
    v13 = [v18 objectForKeyedSubscript:v17];

    if ((+[HFUtilities isInternalInstall]& 1) != 0)
    {
      goto LABEL_9;
    }

    v34 = [v13 webView];
    v19 = [v34 URL];
    v20 = [v19 host];
    v21 = [v35 URL];
    v22 = [v21 host];
    v23 = [v20 isEqualToString:v22];

    if (v23)
    {
LABEL_9:
      v24 = [@"\\/covers.html" copy];
      v25 = [v35 URL];
      v26 = [v25 absoluteString];
      v27 = [(HODiscoverWebViewManager *)self doesURLContainPath:v24 urlResponseString:v26];

      [(HODiscoverWebViewManager *)self setAllowForcedCacheReload:v27];
      [v13 setNavigationState:1];
      v8[2](v8, 1);
    }

    else
    {
      [(HODiscoverWebViewManager *)self setAllowForcedCacheReload:0];
      [v13 setNavigationState:2];
      v8[2](v8, 0);
    }
  }

  v32 = [(HODiscoverWebViewManager *)self delegate];

  if (v32)
  {
    v33 = [(HODiscoverWebViewManager *)self delegate];
    [v33 webViewNavigationStateUpdated:v35 navigationState:{objc_msgSend(v13, "navigationState")}];
  }
}

- (void)webView:(id)a3 didFinishNavigation:(id)a4
{
  v12 = a3;
  v5 = [(HODiscoverWebViewManager *)self getWebViewURLKeyFromCache:?];
  v6 = [(HODiscoverWebViewManager *)self webViewCache];
  v7 = [v6 objectForKeyedSubscript:v5];
  [v7 setNavigationState:1];

  v8 = [(HODiscoverWebViewManager *)self delegate];

  if (v8)
  {
    v9 = [(HODiscoverWebViewManager *)self delegate];
    v10 = [(HODiscoverWebViewManager *)self webViewCache];
    v11 = [v10 objectForKeyedSubscript:v5];
    [v9 webViewNavigationStateUpdated:v12 navigationState:{objc_msgSend(v11, "navigationState")}];
  }
}

- (void)webView:(id)a3 didStartProvisionalNavigation:(id)a4
{
  v12 = a3;
  v5 = [(HODiscoverWebViewManager *)self getWebViewURLKeyFromCache:v12];
  if ([v12 isLoading])
  {
    v6 = [(HODiscoverWebViewManager *)self webViewCache];
    v7 = [v6 objectForKeyedSubscript:v5];
    [v7 setNavigationState:0];
  }

  v8 = [(HODiscoverWebViewManager *)self delegate];

  if (v8)
  {
    v9 = [(HODiscoverWebViewManager *)self delegate];
    v10 = [(HODiscoverWebViewManager *)self webViewCache];
    v11 = [v10 objectForKeyedSubscript:v5];
    [v9 webViewNavigationStateUpdated:v12 navigationState:{objc_msgSend(v11, "navigationState")}];
  }
}

- (BOOL)doesURLContainPath:(id)a3 urlResponseString:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v6)
  {
    v8 = [v6 length];
    v15 = 0;
    v9 = [NSRegularExpression regularExpressionWithPattern:v5 options:0 error:&v15];
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
      v21 = v5;
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