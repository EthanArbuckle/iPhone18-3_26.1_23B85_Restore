@interface THWWebBridgeController
+ (id)pParameterStringFromParameterArray:(id)a3 addQuoting:(BOOL)a4;
+ (id)parseQuery:(id)a3;
- (BOOL)handleURL:(id)a3;
- (THWWebBridgeController)initWithView:(id)a3;
- (id)callBrowserObject:(id)a3 methodName:(id)a4 parameterString:(id)a5 addQuoting:(BOOL)a6;
- (id)callBrowserObject:(id)a3 methodName:(id)a4 parameters:(id)a5 addQuoting:(BOOL)a6;
- (void)callBrowserWithURLEncoding:(id)a3;
- (void)dealloc;
- (void)ensureWidgetObjectInjected;
- (void)pServeWidgetControllerRequest:(id)a3;
- (void)tellBrowserDidEnterWidgetMode:(int)a3;
- (void)tellBrowserToPauseAudioVisual;
- (void)tellBrowserWillEnterWidgetMode:(int)a3;
@end

@implementation THWWebBridgeController

- (THWWebBridgeController)initWithView:(id)a3
{
  v7.receiver = self;
  v7.super_class = THWWebBridgeController;
  v4 = [(THWWebBridgeController *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(THWWebBridgeController *)v4 setWebView:a3];
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

- (BOOL)handleURL:(id)a3
{
  if ([objc_msgSend(a3 "scheme")])
  {
    v5 = [a3 relativePath];
    if (v5)
    {
      v6 = v5;
      if ([v5 length])
      {
        if ([a3 query])
        {
          v7 = [v6 substringFromIndex:1];
          if ([v7 isEqualToString:@"js"])
          {
            [(THWWebBridgeController *)self callBrowserWithURLEncoding:a3];
          }

          else if (([v7 isEqualToString:@"getpref"] & 1) == 0 && (objc_msgSend(v7, "isEqualToString:", @"setpref") & 1) == 0 && objc_msgSend(v7, "isEqualToString:", @"do"))
          {
            [(THWWebBridgeController *)self pServeWidgetControllerRequest:a3];
          }
        }
      }
    }

    LOBYTE(v8) = 1;
  }

  else
  {
    v8 = [objc_msgSend(a3 "scheme")];
    if (v8)
    {
      [(THWPlatformWebViewProtocol *)[(THWWebBridgeController *)self webView] webViewDelegate];
      if (objc_opt_respondsToSelector())
      {
        v9 = [(THWPlatformWebViewProtocol *)[(THWWebBridgeController *)self webView] webViewDelegate];
        v10 = [(THWWebBridgeController *)self webView];

        LOBYTE(v8) = [v9 webView:v10 handleURL:a3];
      }

      else
      {
        LOBYTE(v8) = 0;
      }
    }
  }

  return v8;
}

+ (id)parseQuery:(id)a3
{
  v4 = [[NSMutableDictionary alloc] initWithCapacity:3];
  v5 = [a3 componentsSeparatedByString:@"&"];
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

- (void)callBrowserWithURLEncoding:(id)a3
{
  v5 = [a3 query];
  if (v5)
  {
    v6 = [objc_opt_class() parseQuery:v5];
    if ([objc_msgSend(a3 "scheme")])
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

- (id)callBrowserObject:(id)a3 methodName:(id)a4 parameterString:(id)a5 addQuoting:(BOOL)a6
{
  if (!a3 || !a4)
  {
    return 0;
  }

  if (a5)
  {
    v9 = a5;
  }

  else
  {
    v9 = &stru_471858;
  }

  if (a6 && [(__CFString *)v9 length])
  {
    v9 = [NSString stringWithFormat:@"%@", v9];
  }

  v10 = [NSString stringWithFormat:@"%@.%@(%@);", a3, a4, v9];
  v11 = [(THWWebBridgeController *)self webView];

  return [(THWPlatformWebViewProtocol *)v11 stringByEvaluatingJavaScriptFromString:v10];
}

- (id)callBrowserObject:(id)a3 methodName:(id)a4 parameters:(id)a5 addQuoting:(BOOL)a6
{
  v9 = [objc_opt_class() pParameterStringFromParameterArray:a5 addQuoting:a6];

  return [(THWWebBridgeController *)self callBrowserObject:a3 methodName:a4 parameterString:v9 addQuoting:0];
}

- (void)ensureWidgetObjectInjected
{
  if (!-[THWWebBridgeController injectedWidgetObject](self, "injectedWidgetObject") && -[THWWebBridgeController p_injectFileContents:](self, "p_injectFileContents:", [THBundle() pathForResource:@"AppleWidgetController" ofType:@"js"]))
  {

    [(THWWebBridgeController *)self setInjectedWidgetObject:1];
  }
}

- (void)tellBrowserWillEnterWidgetMode:(int)a3
{
  v3 = *&a3;
  [(THWWebBridgeController *)self ensureWidgetObjectInjected];
  v5 = [THWConstants modeStringForMode:v3];

  [(THWWebBridgeController *)self callBrowserObject:@"widget" methodName:@"willEnterWidgetMode" parameterString:v5 addQuoting:1];
}

- (void)tellBrowserDidEnterWidgetMode:(int)a3
{
  v3 = *&a3;
  [(THWWebBridgeController *)self ensureWidgetObjectInjected];
  v5 = [THWConstants modeStringForMode:v3];

  [(THWWebBridgeController *)self callBrowserObject:@"widget" methodName:@"didEnterWidgetMode" parameterString:v5 addQuoting:1];
}

- (void)tellBrowserToPauseAudioVisual
{
  [(THWWebBridgeController *)self ensureWidgetObjectInjected];

  [(THWWebBridgeController *)self callBrowserObject:@"widget" methodName:@"pauseAudioVisual" parameterString:0 addQuoting:1];
}

+ (id)pParameterStringFromParameterArray:(id)a3 addQuoting:(BOOL)a4
{
  if (!a3)
  {
    return 0;
  }

  v4 = a4;
  result = [a3 count];
  if (result)
  {
    if (v4)
    {
      v7 = @",";
    }

    else
    {
      v7 = @",";
    }

    result = [a3 componentsJoinedByString:v7];
    if (v4)
    {
      return [NSString stringWithFormat:@"%@", result];
    }
  }

  return result;
}

- (void)pServeWidgetControllerRequest:(id)a3
{
  v5 = [a3 query];
  if (!v5)
  {
    return;
  }

  v6 = [objc_opt_class() parseQuery:v5];
  if (![objc_msgSend(a3 "scheme")])
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
      v9 = [(THWWebBridgeController *)self javascriptHandler];

      [(THWWebJSControllerDelegate *)v9 contentDidLoad];
    }

    return;
  }

  if ([v8 isEqualToString:kTHApplePubBridgeWidgetControllerCommandValueReadyKey])
  {
    [(THWWebBridgeController *)self javascriptHandler];
    if (objc_opt_respondsToSelector())
    {
      v10 = [(THWWebBridgeController *)self javascriptHandler];

      [(THWWebJSControllerDelegate *)v10 contentIsReady];
    }

    return;
  }

  if ([v8 isEqualToString:kTHApplePubBridgeWidgetControllerCommandValueExitedKey])
  {
    [(THWWebBridgeController *)self javascriptHandler];
    if (objc_opt_respondsToSelector())
    {
      v11 = [(THWWebBridgeController *)self javascriptHandler];

      [(THWWebJSControllerDelegate *)v11 contentDidExit];
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
      v12 = [(THWWebBridgeController *)self javascriptHandler];

      [THWWebJSControllerDelegate contentProperty:v12 didChangeTo:"contentProperty:didChangeTo:"];
    }
  }

  else
  {
LABEL_32:
    if ([(THWWebBridgeController *)self optionalDispatcher])
    {
      v13 = [(THWWebBridgeController *)self optionalDispatcher];

      [(TSWNativeCommandDispatcher *)v13 shouldDispatchRequestToNativeCode:?];
    }
  }
}

@end