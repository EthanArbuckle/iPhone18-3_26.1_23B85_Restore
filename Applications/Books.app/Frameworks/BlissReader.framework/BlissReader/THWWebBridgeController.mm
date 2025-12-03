@interface THWWebBridgeController
+ (id)pParameterStringFromParameterArray:(id)array addQuoting:(BOOL)quoting;
+ (id)parseQuery:(id)query;
- (BOOL)handleURL:(id)l;
- (THWWebBridgeController)initWithView:(id)view;
- (id)callBrowserObject:(id)object methodName:(id)name parameterString:(id)string addQuoting:(BOOL)quoting;
- (id)callBrowserObject:(id)object methodName:(id)name parameters:(id)parameters addQuoting:(BOOL)quoting;
- (void)callBrowserWithURLEncoding:(id)encoding;
- (void)dealloc;
- (void)ensureWidgetObjectInjected;
- (void)pServeWidgetControllerRequest:(id)request;
- (void)tellBrowserDidEnterWidgetMode:(int)mode;
- (void)tellBrowserToPauseAudioVisual;
- (void)tellBrowserWillEnterWidgetMode:(int)mode;
@end

@implementation THWWebBridgeController

- (THWWebBridgeController)initWithView:(id)view
{
  v7.receiver = self;
  v7.super_class = THWWebBridgeController;
  v4 = [(THWWebBridgeController *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(THWWebBridgeController *)v4 setWebView:view];
    [(THWWebBridgeController *)v5 setInjectedWidgetObject:0];
  }

  return v5;
}

- (void)dealloc
{
  [(THWWebBridgeController *)self setWebView:0];
  v3.receiver = self;
  v3.super_class = THWWebBridgeController;
  [(THWWebBridgeController *)&v3 dealloc];
}

- (BOOL)handleURL:(id)l
{
  if ([objc_msgSend(l "scheme")])
  {
    relativePath = [l relativePath];
    if (relativePath)
    {
      v6 = relativePath;
      if ([relativePath length])
      {
        if ([l query])
        {
          v7 = [v6 substringFromIndex:1];
          if ([v7 isEqualToString:@"js"])
          {
            [(THWWebBridgeController *)self callBrowserWithURLEncoding:l];
          }

          else if (([v7 isEqualToString:@"getpref"] & 1) == 0 && (objc_msgSend(v7, "isEqualToString:", @"setpref") & 1) == 0 && objc_msgSend(v7, "isEqualToString:", @"do"))
          {
            [(THWWebBridgeController *)self pServeWidgetControllerRequest:l];
          }
        }
      }
    }

    LOBYTE(v8) = 1;
  }

  else
  {
    v8 = [objc_msgSend(l "scheme")];
    if (v8)
    {
      [(THWPlatformWebViewProtocol *)[(THWWebBridgeController *)self webView] webViewDelegate];
      if (objc_opt_respondsToSelector())
      {
        webViewDelegate = [(THWPlatformWebViewProtocol *)[(THWWebBridgeController *)self webView] webViewDelegate];
        webView = [(THWWebBridgeController *)self webView];

        LOBYTE(v8) = [webViewDelegate webView:webView handleURL:l];
      }

      else
      {
        LOBYTE(v8) = 0;
      }
    }
  }

  return v8;
}

+ (id)parseQuery:(id)query
{
  v4 = [[NSMutableDictionary alloc] initWithCapacity:3];
  v5 = [query componentsSeparatedByString:@"&"];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      v9 = 0;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v14 + 1) + 8 * v9) componentsSeparatedByString:@"="];
        v11 = [objc_msgSend(v10 objectAtIndex:{0), "stringByRemovingPercentEncoding"}];
        if ([v10 count] < 2)
        {
          v12 = +[NSNull null];
        }

        else
        {
          v12 = [objc_msgSend(v10 objectAtIndex:{1), "stringByRemovingPercentEncoding"}];
        }

        [v4 setObject:v12 forKey:v11];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  return v4;
}

- (void)callBrowserWithURLEncoding:(id)encoding
{
  query = [encoding query];
  if (query)
  {
    v6 = [objc_opt_class() parseQuery:query];
    if ([objc_msgSend(encoding "scheme")])
    {
      v7 = [v6 objectForKey:@"o"];
      v8 = [v6 objectForKey:@"m"];
      v9 = [v6 objectForKey:@"p"];
      if (v9 == +[NSNull null])
      {
        v10 = 0;
      }

      else
      {
        v10 = v9;
      }

      [(THWWebBridgeController *)self callBrowserObject:v7 methodName:v8 parameterString:v10 addQuoting:0];
    }
  }
}

- (id)callBrowserObject:(id)object methodName:(id)name parameterString:(id)string addQuoting:(BOOL)quoting
{
  if (!object || !name)
  {
    return 0;
  }

  if (string)
  {
    stringCopy = string;
  }

  else
  {
    stringCopy = &stru_471858;
  }

  if (quoting && [(__CFString *)stringCopy length])
  {
    stringCopy = [NSString stringWithFormat:@"%@", stringCopy];
  }

  stringCopy = [NSString stringWithFormat:@"%@.%@(%@);", object, name, stringCopy];
  webView = [(THWWebBridgeController *)self webView];

  return [(THWPlatformWebViewProtocol *)webView stringByEvaluatingJavaScriptFromString:stringCopy];
}

- (id)callBrowserObject:(id)object methodName:(id)name parameters:(id)parameters addQuoting:(BOOL)quoting
{
  v9 = [objc_opt_class() pParameterStringFromParameterArray:parameters addQuoting:quoting];

  return [(THWWebBridgeController *)self callBrowserObject:object methodName:name parameterString:v9 addQuoting:0];
}

- (void)ensureWidgetObjectInjected
{
  if (!-[THWWebBridgeController injectedWidgetObject](self, "injectedWidgetObject") && -[THWWebBridgeController p_injectFileContents:](self, "p_injectFileContents:", [THBundle() pathForResource:@"AppleWidgetController" ofType:@"js"]))
  {

    [(THWWebBridgeController *)self setInjectedWidgetObject:1];
  }
}

- (void)tellBrowserWillEnterWidgetMode:(int)mode
{
  v3 = *&mode;
  [(THWWebBridgeController *)self ensureWidgetObjectInjected];
  v5 = [THWConstants modeStringForMode:v3];

  [(THWWebBridgeController *)self callBrowserObject:@"widget" methodName:@"willEnterWidgetMode" parameterString:v5 addQuoting:1];
}

- (void)tellBrowserDidEnterWidgetMode:(int)mode
{
  v3 = *&mode;
  [(THWWebBridgeController *)self ensureWidgetObjectInjected];
  v5 = [THWConstants modeStringForMode:v3];

  [(THWWebBridgeController *)self callBrowserObject:@"widget" methodName:@"didEnterWidgetMode" parameterString:v5 addQuoting:1];
}

- (void)tellBrowserToPauseAudioVisual
{
  [(THWWebBridgeController *)self ensureWidgetObjectInjected];

  [(THWWebBridgeController *)self callBrowserObject:@"widget" methodName:@"pauseAudioVisual" parameterString:0 addQuoting:1];
}

+ (id)pParameterStringFromParameterArray:(id)array addQuoting:(BOOL)quoting
{
  if (!array)
  {
    return 0;
  }

  quotingCopy = quoting;
  result = [array count];
  if (result)
  {
    if (quotingCopy)
    {
      v7 = @",";
    }

    else
    {
      v7 = @",";
    }

    result = [array componentsJoinedByString:v7];
    if (quotingCopy)
    {
      return [NSString stringWithFormat:@"%@", result];
    }
  }

  return result;
}

- (void)pServeWidgetControllerRequest:(id)request
{
  query = [request query];
  if (!query)
  {
    return;
  }

  v6 = [objc_opt_class() parseQuery:query];
  if (![objc_msgSend(request "scheme")])
  {
    return;
  }

  v7 = [v6 objectForKey:@"c"];
  if (!v7)
  {
    goto LABEL_32;
  }

  v8 = v7;
  if (![v7 length] || !-[THWWebBridgeController javascriptHandler](self, "javascriptHandler"))
  {
    goto LABEL_32;
  }

  if ([v8 isEqualToString:kTHApplePubBridgeWidgetControllerCommandValueLoadedKey])
  {
    [(THWWebBridgeController *)self javascriptHandler];
    if (objc_opt_respondsToSelector())
    {
      javascriptHandler = [(THWWebBridgeController *)self javascriptHandler];

      [(THWWebJSControllerDelegate *)javascriptHandler contentDidLoad];
    }

    return;
  }

  if ([v8 isEqualToString:kTHApplePubBridgeWidgetControllerCommandValueReadyKey])
  {
    [(THWWebBridgeController *)self javascriptHandler];
    if (objc_opt_respondsToSelector())
    {
      javascriptHandler2 = [(THWWebBridgeController *)self javascriptHandler];

      [(THWWebJSControllerDelegate *)javascriptHandler2 contentIsReady];
    }

    return;
  }

  if ([v8 isEqualToString:kTHApplePubBridgeWidgetControllerCommandValueExitedKey])
  {
    [(THWWebBridgeController *)self javascriptHandler];
    if (objc_opt_respondsToSelector())
    {
      javascriptHandler3 = [(THWWebBridgeController *)self javascriptHandler];

      [(THWWebJSControllerDelegate *)javascriptHandler3 contentDidExit];
    }

    return;
  }

  if ([v8 isEqualToString:kTHApplePubBridgeWidgetControllerCommandValuePropertyChangedKey])
  {
    [v6 objectForKey:kTHApplePubBridgeWidgetControllerCommandArg1Key];
    [v6 objectForKey:kTHApplePubBridgeWidgetControllerCommandArg2Key];
    [(THWWebBridgeController *)self javascriptHandler];
    if (objc_opt_respondsToSelector())
    {
      javascriptHandler4 = [(THWWebBridgeController *)self javascriptHandler];

      [THWWebJSControllerDelegate contentProperty:javascriptHandler4 didChangeTo:"contentProperty:didChangeTo:"];
    }
  }

  else
  {
LABEL_32:
    if ([(THWWebBridgeController *)self optionalDispatcher])
    {
      optionalDispatcher = [(THWWebBridgeController *)self optionalDispatcher];

      [(TSWNativeCommandDispatcher *)optionalDispatcher shouldDispatchRequestToNativeCode:?];
    }
  }
}

@end