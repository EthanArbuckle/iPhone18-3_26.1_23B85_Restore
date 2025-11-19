@interface HODiscoverWebViewMessageHandler
- (void)userContentController:(id)a3 didReceiveScriptMessage:(id)a4;
@end

@implementation HODiscoverWebViewMessageHandler

- (void)userContentController:(id)a3 didReceiveScriptMessage:(id)a4
{
  v10 = a4;
  v4 = [v10 name];
  v5 = [v4 isEqualToString:@"preload"];

  if (v5)
  {
    objc_opt_class();
    v6 = [v10 body];
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;

    v9 = +[HODiscoverWebViewManager sharedInstance];
    [v9 preload:v8];
  }
}

@end