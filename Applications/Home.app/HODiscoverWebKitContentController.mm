@interface HODiscoverWebKitContentController
- (HODiscoverWebKitContentController)initWithDelegate:(id)a3;
- (HODiscoverWebKitContentControllerDelegate)delegate;
- (id)parseURLForThemeType:(id)a3;
- (void)contentViewed:(id)a3;
- (void)openLink:(id)a3;
- (void)userContentController:(id)a3 didReceiveScriptMessage:(id)a4;
@end

@implementation HODiscoverWebKitContentController

- (HODiscoverWebKitContentController)initWithDelegate:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = HODiscoverWebKitContentController;
  v5 = [(HODiscoverWebKitContentController *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, v4);
  }

  return v6;
}

- (void)userContentController:(id)a3 didReceiveScriptMessage:(id)a4
{
  v18 = a4;
  v5 = [v18 name];
  objc_opt_class();
  v6 = [v18 body];
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  v9 = [v8 description];

  NSLog(@"%@", v9);
  objc_opt_class();
  v10 = off_1000D8788;
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  v13 = [v5 isEqualToString:v12];
  if (v13)
  {
    [(HODiscoverWebKitContentController *)self openLink:v18];
  }

  else
  {
    objc_opt_class();
    v14 = off_1000D8790;
    if (objc_opt_isKindOfClass())
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    v16 = v15;

    v17 = [v5 isEqualToString:v16];
    if (v17)
    {
      [(HODiscoverWebKitContentController *)self contentViewed:v18];
    }
  }
}

- (void)contentViewed:(id)a3
{
  v6 = [a3 body];
  v3 = [v6 objectForKeyedSubscript:@"id"];
  v4 = [v6 objectForKeyedSubscript:@"locale"];
  v5 = +[NSMutableDictionary dictionary];
  [v5 setObject:v3 forKeyedSubscript:HFAnalyticsDiscoverTabContentViewedIDKey];
  [v5 setObject:v4 forKeyedSubscript:HFAnalyticsDiscoverTabContentViewedLocaleKey];
  [HFAnalytics sendEvent:11 withData:v5];
}

- (void)openLink:(id)a3
{
  v17 = [a3 body];
  v4 = [v17 objectForKeyedSubscript:@"transition"];
  v5 = [v17 objectForKeyedSubscript:@"url"];
  v6 = [NSURL URLWithString:v5];
  if ([v4 isEqualToString:@"push"])
  {
    v7 = [(HODiscoverWebKitContentController *)self delegate];

    if (v7)
    {
      v8 = [(HODiscoverWebKitContentController *)self delegate];
      [v8 pushNewDiscoverWebViewControllerWithURLString:v5];
    }

    goto LABEL_12;
  }

  if (![v4 isEqualToString:@"modal"])
  {
    if ([v4 isEqualToString:@"external"])
    {
      v14 = [(HODiscoverWebKitContentController *)self delegate];

      if (v14)
      {
        v15 = [(HODiscoverWebKitContentController *)self delegate];
        [v15 exitToAppleStoreAppOrSafariWithURL:v6];

        v13 = v4;
        goto LABEL_13;
      }
    }

    goto LABEL_12;
  }

  v9 = [(HODiscoverWebKitContentController *)self delegate];

  if (!v9)
  {
LABEL_12:
    v13 = 0;
    goto LABEL_13;
  }

  v10 = [(HODiscoverWebKitContentController *)self delegate];
  [v10 presentModalDiscoverWebViewControllerWithURLString:v5];

  v11 = [(HODiscoverWebKitContentController *)self parseURLForThemeType:v5];
  if (v11)
  {
    v12 = +[NSMutableDictionary dictionary];
    [v12 setObject:v11 forKeyedSubscript:HFAnalyticsDiscoverThemeTapKey];
    [HFAnalytics sendEvent:9 withData:v12];
  }

  v13 = v4;

LABEL_13:
  if (v4)
  {
    v16 = +[NSMutableDictionary dictionary];
    [v16 setObject:v4 forKeyedSubscript:HFAnalyticsLearnTabInteractionLinkTypeKey];
    [HFAnalytics sendEvent:8 withData:v16];
  }
}

- (id)parseURLForThemeType:(id)a3
{
  v3 = a3;
  v4 = [v3 length];
  v17 = 0;
  v5 = [NSRegularExpression regularExpressionWithPattern:@"(?<=theme=)([a-zA-Z]|_)+" options:0 error:&v17];
  v6 = v17;
  v7 = [v5 firstMatchInString:v3 options:0 range:{0, v4}];
  if (v7)
  {
    v8 = [NSSet setWithArray:&off_1000CB428];
    v9 = [v7 range];
    v11 = [v3 substringWithRange:{v9, v10}];
    v12 = [v11 lowercaseString];
    v13 = [v8 containsObject:v12];

    if (v13)
    {
      v14 = v11;
    }

    else
    {
      v15 = HFLogForCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v19 = "[HODiscoverWebKitContentController parseURLForThemeType:]";
        v20 = 2112;
        v21 = v11;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "(%s) resultString:%@ not contained in approved theme types for analytics gathering", buf, 0x16u);
      }

      v14 = 0;
    }
  }

  else
  {
    v8 = HFLogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10007FB30(v6, v8);
    }

    v14 = 0;
  }

  return v14;
}

- (HODiscoverWebKitContentControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end