@interface HODiscoverWebViewMessageHandler
- (void)userContentController:(id)controller didReceiveScriptMessage:(id)message;
@end

@implementation HODiscoverWebViewMessageHandler

- (void)userContentController:(id)controller didReceiveScriptMessage:(id)message
{
  messageCopy = message;
  name = [messageCopy name];
  v5 = [name isEqualToString:@"preload"];

  if (v5)
  {
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

    v9 = +[HODiscoverWebViewManager sharedInstance];
    [v9 preload:v8];
  }
}

@end