@interface HODiscoverWebKitContentController
- (HODiscoverWebKitContentController)initWithDelegate:(id)delegate;
- (HODiscoverWebKitContentControllerDelegate)delegate;
- (id)parseURLForThemeType:(id)type;
- (void)contentViewed:(id)viewed;
- (void)openLink:(id)link;
- (void)userContentController:(id)controller didReceiveScriptMessage:(id)message;
@end

@implementation HODiscoverWebKitContentController

- (HODiscoverWebKitContentController)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v8.receiver = self;
  v8.super_class = HODiscoverWebKitContentController;
  v5 = [(HODiscoverWebKitContentController *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
  }

  return v6;
}

- (void)userContentController:(id)controller didReceiveScriptMessage:(id)message
{
  messageCopy = message;
  name = [messageCopy name];
  objc_opt_class();
  body = [messageCopy body];
  if (objc_opt_isKindOfClass())
  {
    v7 = body;
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

  v13 = [name isEqualToString:v12];
  if (v13)
  {
    [(HODiscoverWebKitContentController *)self openLink:messageCopy];
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

    v17 = [name isEqualToString:v16];
    if (v17)
    {
      [(HODiscoverWebKitContentController *)self contentViewed:messageCopy];
    }
  }
}

- (void)contentViewed:(id)viewed
{
  body = [viewed body];
  v3 = [body objectForKeyedSubscript:@"id"];
  v4 = [body objectForKeyedSubscript:@"locale"];
  v5 = +[NSMutableDictionary dictionary];
  [v5 setObject:v3 forKeyedSubscript:HFAnalyticsDiscoverTabContentViewedIDKey];
  [v5 setObject:v4 forKeyedSubscript:HFAnalyticsDiscoverTabContentViewedLocaleKey];
  [HFAnalytics sendEvent:11 withData:v5];
}

- (void)openLink:(id)link
{
  body = [link body];
  v4 = [body objectForKeyedSubscript:@"transition"];
  v5 = [body objectForKeyedSubscript:@"url"];
  v6 = [NSURL URLWithString:v5];
  if ([v4 isEqualToString:@"push"])
  {
    delegate = [(HODiscoverWebKitContentController *)self delegate];

    if (delegate)
    {
      delegate2 = [(HODiscoverWebKitContentController *)self delegate];
      [delegate2 pushNewDiscoverWebViewControllerWithURLString:v5];
    }

    goto LABEL_12;
  }

  if (![v4 isEqualToString:@"modal"])
  {
    if ([v4 isEqualToString:@"external"])
    {
      delegate3 = [(HODiscoverWebKitContentController *)self delegate];

      if (delegate3)
      {
        delegate4 = [(HODiscoverWebKitContentController *)self delegate];
        [delegate4 exitToAppleStoreAppOrSafariWithURL:v6];

        v13 = v4;
        goto LABEL_13;
      }
    }

    goto LABEL_12;
  }

  delegate5 = [(HODiscoverWebKitContentController *)self delegate];

  if (!delegate5)
  {
LABEL_12:
    v13 = 0;
    goto LABEL_13;
  }

  delegate6 = [(HODiscoverWebKitContentController *)self delegate];
  [delegate6 presentModalDiscoverWebViewControllerWithURLString:v5];

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

- (id)parseURLForThemeType:(id)type
{
  typeCopy = type;
  v4 = [typeCopy length];
  v17 = 0;
  v5 = [NSRegularExpression regularExpressionWithPattern:@"(?<=theme=)([a-zA-Z]|_)+" options:0 error:&v17];
  v6 = v17;
  v7 = [v5 firstMatchInString:typeCopy options:0 range:{0, v4}];
  if (v7)
  {
    v8 = [NSSet setWithArray:&off_1000CB428];
    range = [v7 range];
    v11 = [typeCopy substringWithRange:{range, v10}];
    lowercaseString = [v11 lowercaseString];
    v13 = [v8 containsObject:lowercaseString];

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