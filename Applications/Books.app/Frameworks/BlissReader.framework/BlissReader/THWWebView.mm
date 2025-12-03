@interface THWWebView
- (THPageAffordanceHosting)canvasPageAffordanceHost;
- (THWWebView)initWithfilteredOutURLSchemes:(id)schemes requestScope:(id)scope;
- (THWWebViewDelegate)webViewDelegate;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (id)stringByEvaluatingJavaScriptFromString:(id)string;
- (void)_attemptURLLoad;
- (void)_createConfigurationWithfilteredOutURLSchemes:(id)schemes requestScope:(id)scope completion:(id)completion;
- (void)_createContentBlockingRulesWithfilteredOutURLSchemes:(id)schemes toRuleListStore:(id)store completion:(id)completion;
- (void)_createWebViewWithContentBlockers:(id)blockers requestScope:(id)scope completion:(id)completion;
- (void)hide;
- (void)loadRequest:(id)request;
- (void)loadURL:(id)l;
- (void)setFrame:(CGRect)frame naturalSize:(CGSize)size completion:(id)completion;
- (void)setRequest:(id)request;
- (void)setShouldEnableScrolling:(BOOL)scrolling;
- (void)setWebView:(id)view;
- (void)showAnimated:(BOOL)animated duration:(double)duration completion:(id)completion;
- (void)webView:(id)view decidePolicyForNavigationAction:(id)action decisionHandler:(id)handler;
- (void)webView:(id)view didFailNavigation:(id)navigation withError:(id)error;
- (void)webView:(id)view didFinishNavigation:(id)navigation;
@end

@implementation THWWebView

- (THWWebView)initWithfilteredOutURLSchemes:(id)schemes requestScope:(id)scope
{
  scopeCopy = scope;
  v14.receiver = self;
  v14.super_class = THWWebView;
  v7 = [(THWWebView *)&v14 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  v8 = v7;
  if (v7)
  {
    v7->_shouldEnableScrolling = 1;
    objc_storeStrong(&v7->_requestScope, scope);
    v9 = [(NSSet *)v8->_filteredOutURLSchemes copy];
    requestScope = v8->_requestScope;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_63680;
    v12[3] = &unk_45BE38;
    v13 = v8;
    [(THWWebView *)v13 _createWebViewWithContentBlockers:v9 requestScope:requestScope completion:v12];
  }

  return v8;
}

- (void)loadURL:(id)l
{
  v4 = [NSURLRequest requestWithURL:l];
  [(THWWebView *)self loadRequest:v4];
}

- (void)loadRequest:(id)request
{
  v4 = [request mutableCopy];
  [v4 setAttribution:1];
  [(THWWebView *)self setRequest:v4];
}

- (void)setFrame:(CGRect)frame naturalSize:(CGSize)size completion:(id)completion
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  completionCopy = completion;
  v25.origin.x = x;
  v25.origin.y = y;
  v25.size.width = width;
  v22 = height;
  v25.size.height = height;
  v26 = CGRectIntegral(v25);
  v11 = v26.size.width;
  v12 = v26.size.height;
  v13 = CGRectZero.origin.y;
  v29.size.width = CGRectZero.size.width;
  v29.size.height = CGRectZero.size.height;
  v29.origin.x = CGRectZero.origin.x;
  v29.origin.y = v13;
  v14 = 1.0;
  if (CGRectEqualToRect(v26, v29))
  {
    v15 = size.width;
    v16 = size.height;
  }

  else
  {
    v15 = size.width;
    v16 = size.height;
    if (size.width != CGSizeZero.width || size.height != CGSizeZero.height)
    {
      v18 = THScaleNeededToFitSizeInSize(size.width, size.height, v11, v12);
      v15 = size.width;
      v16 = size.height;
      v14 = v18;
    }
  }

  [(THWWebView *)self setBounds:CGRectZero.origin.x, v13, v15, v16];
  v27.origin.x = x;
  v27.origin.y = y;
  v27.size.width = width;
  v27.size.height = v22;
  MidX = CGRectGetMidX(v27);
  v28.origin.x = x;
  v28.origin.y = y;
  v28.size.width = width;
  v28.size.height = v22;
  [(THWWebView *)self setCenter:MidX, CGRectGetMidY(v28)];
  CGAffineTransformMakeScale(&v24, v14, v14);
  v23 = v24;
  [(THWWebView *)self setTransform:&v23];
  v20 = objc_retainBlock(completionCopy);

  if (v20)
  {
    v20[2](v20);
  }
}

- (void)hide
{
  [(THWWebView *)self setAlpha:0.0];
  webView = [(THWWebView *)self webView];
  [webView setAlpha:0.0];
}

- (void)showAnimated:(BOOL)animated duration:(double)duration completion:(id)completion
{
  completionCopy = completion;
  layer = [(THWWebView *)self layer];
  [layer setShouldRasterize:1];

  TSUScreenScale();
  v10 = v9;
  layer2 = [(THWWebView *)self layer];
  [layer2 setRasterizationScale:v10];

  webView = [(THWWebView *)self webView];
  layer3 = [webView layer];
  [layer3 setShouldRasterize:1];

  TSUScreenScale();
  v15 = v14;
  webView2 = [(THWWebView *)self webView];
  layer4 = [webView2 layer];
  [layer4 setRasterizationScale:v15];

  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_63BC8;
  v21[3] = &unk_45AD60;
  v21[4] = self;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_63C28;
  v19[3] = &unk_45BE60;
  v19[4] = self;
  v20 = completionCopy;
  v18 = completionCopy;
  [UIView animateWithDuration:v21 animations:v19 completion:duration];
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  v18.receiver = self;
  v18.super_class = THWWebView;
  v8 = [(THWWebView *)&v18 hitTest:eventCopy withEvent:x, y];
  WeakRetained = objc_loadWeakRetained(&self->_webViewDelegate);
  if (WeakRetained)
  {
    v10 = WeakRetained;
    v11 = objc_loadWeakRetained(&self->_webViewDelegate);
    v12 = objc_opt_respondsToSelector();

    if (v12)
    {
      v13 = objc_loadWeakRetained(&self->_webViewDelegate);
      v14 = [v13 webView:self shouldAcceptHitAtPoint:v8 onView:eventCopy withEvent:{x, y}];

      if (v14)
      {
        v15 = v8;
      }

      else
      {
        v15 = 0;
      }

      v16 = v15;

      v8 = v16;
    }
  }

  return v8;
}

- (id)stringByEvaluatingJavaScriptFromString:(id)string
{
  stringCopy = string;
  webView = [(THWWebView *)self webView];
  [webView evaluateJavaScript:stringCopy completionHandler:&stru_45BEA0];

  return @"0";
}

- (void)setShouldEnableScrolling:(BOOL)scrolling
{
  scrollingCopy = scrolling;
  self->_shouldEnableScrolling = scrolling;
  webView = [(THWWebView *)self webView];
  scrollView = [webView scrollView];
  [scrollView setScrollEnabled:scrollingCopy];
}

- (void)setRequest:(id)request
{
  objc_storeStrong(&self->_request, request);

  [(THWWebView *)self _attemptURLLoad];
}

- (void)setWebView:(id)view
{
  viewCopy = view;
  webView = self->_webView;
  if (webView)
  {
    superview = [(WKWebView *)webView superview];

    if (superview)
    {
      [(WKWebView *)self->_webView removeFromSuperview];
    }
  }

  v7 = self->_webView;
  self->_webView = viewCopy;
  v8 = viewCopy;

  [(WKWebView *)self->_webView setNavigationDelegate:self];
  [(WKWebView *)self->_webView setUIDelegate:self];
  [(THWWebView *)self addSubview:self->_webView];
  [(THWWebView *)self bounds];
  [(WKWebView *)self->_webView setFrame:?];
  [(WKWebView *)self->_webView setAutoresizingMask:18];
  [(WKWebView *)self->_webView setTranslatesAutoresizingMaskIntoConstraints:0];

  [(THWWebView *)self _attemptURLLoad];
}

- (void)webView:(id)view decidePolicyForNavigationAction:(id)action decisionHandler:(id)handler
{
  actionCopy = action;
  handlerCopy = handler;
  WeakRetained = objc_loadWeakRetained(&self->_webViewDelegate);
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    navigationType = [actionCopy navigationType];
    if (navigationType >= 5)
    {
      v12 = 5;
    }

    else
    {
      v12 = navigationType;
    }

    v13 = objc_loadWeakRetained(&self->_webViewDelegate);
    request = [actionCopy request];
    v15 = [request URL];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_64180;
    v17[3] = &unk_45ADD8;
    v17[4] = self;
    v16 = [v13 webView:self shouldStartLoadWithURL:v15 navigationType:v12 deferredResponseHandler:v17];

    handlerCopy[2](handlerCopy, v16);
  }

  else
  {
    handlerCopy[2](handlerCopy, 1);
  }
}

- (void)webView:(id)view didFinishNavigation:(id)navigation
{
  WeakRetained = objc_loadWeakRetained(&self->_webViewDelegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_webViewDelegate);
    [v7 webViewDidFinishLoad:self];
  }
}

- (void)webView:(id)view didFailNavigation:(id)navigation withError:(id)error
{
  errorCopy = error;
  WeakRetained = objc_loadWeakRetained(&self->_webViewDelegate);
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = objc_loadWeakRetained(&self->_webViewDelegate);
    [v8 webView:self didFailLoadWithError:errorCopy];
  }
}

- (void)_attemptURLLoad
{
  webView = [(THWWebView *)self webView];
  if (webView)
  {
    v4 = webView;
    request = [(THWWebView *)self request];

    if (request)
    {
      webView2 = [(THWWebView *)self webView];
      request2 = [(THWWebView *)self request];
      v7 = [webView2 loadRequest:request2];
    }
  }
}

- (void)_createWebViewWithContentBlockers:(id)blockers requestScope:(id)scope completion:(id)completion
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_64430;
  v8[3] = &unk_45BEC8;
  selfCopy = self;
  completionCopy = completion;
  v7 = completionCopy;
  [(THWWebView *)selfCopy _createConfigurationWithfilteredOutURLSchemes:blockers requestScope:scope completion:v8];
}

- (void)_createContentBlockingRulesWithfilteredOutURLSchemes:(id)schemes toRuleListStore:(id)store completion:(id)completion
{
  storeCopy = store;
  completionCopy = completion;
  schemesCopy = schemes;
  +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [schemesCopy count]);
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_647E0;
  v10 = v23[3] = &unk_45BEF0;
  v24 = v10;
  [schemesCopy enumerateObjectsUsingBlock:v23];

  if ([v10 count])
  {
    v22 = 0;
    v11 = [NSJSONSerialization dataWithJSONObject:v10 options:4 error:&v22];
    v12 = v22;
    if (v12)
    {
      v13 = +[TSUAssertionHandler currentHandler];
      v14 = [NSString stringWithUTF8String:"[THWWebView _createContentBlockingRulesWithfilteredOutURLSchemes:toRuleListStore:completion:]"];
      v15 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/Widgets/Web/THWWebView.m"];
      [v13 handleFailureInFunction:v14 file:v15 lineNumber:373 description:{@"expected nil value for '%s'", "jsonError"}];
    }

    if (!v11)
    {
      v16 = +[TSUAssertionHandler currentHandler];
      v17 = [NSString stringWithUTF8String:"[THWWebView _createContentBlockingRulesWithfilteredOutURLSchemes:toRuleListStore:completion:]"];
      v18 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/Widgets/Web/THWWebView.m"];
      [v16 handleFailureInFunction:v17 file:v18 lineNumber:374 description:{@"invalid nil value for '%s'", "contentRuleListData"}];
    }

    v19 = [[NSString alloc] initWithData:v11 encoding:4];
    if (!storeCopy)
    {
      storeCopy = +[WKContentRuleListStore defaultStore];
    }

    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_648E0;
    v20[3] = &unk_45BF18;
    v21 = completionCopy;
    [storeCopy compileContentRuleListForIdentifier:@"filteredOutURLSchemes" encodedContentRuleList:v19 completionHandler:v20];
  }

  else if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0, 0);
  }
}

- (void)_createConfigurationWithfilteredOutURLSchemes:(id)schemes requestScope:(id)scope completion:(id)completion
{
  schemesCopy = schemes;
  scopeCopy = scope;
  completionCopy = completion;
  v8 = objc_opt_new();
  [v8 setMediaTypesRequiringUserActionForPlayback:0];
  [v8 setAllowsInlineMediaPlayback:1];
  [v8 setAllowsPictureInPictureMediaPlayback:0];
  v9 = objc_alloc_init(WKWebpagePreferences);
  [v9 _setMouseEventPolicy:1];
  v37 = v9;
  [v8 setDefaultWebpagePreferences:v9];
  v10 = objc_opt_new();
  [v10 _setDeveloperExtrasEnabled:{+[BCDevice isInternalInstall](BCDevice, "isInternalInstall")}];
  [v10 _setDiagnosticLoggingEnabled:0];
  [v10 _setLogsPageMessagesToSystemConsoleEnabled:0];
  [v10 _setLargeImageAsyncDecodingEnabled:0];
  [v8 setPreferences:v10];
  v39 = scopeCopy;
  v11 = [[PFDUrlSchemeHandler alloc] initWithRequestScope:scopeCopy];
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  supportedSchemes = [(PFDUrlSchemeHandler *)v11 supportedSchemes];
  v13 = [supportedSchemes countByEnumeratingWithState:&v45 objects:v49 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v46;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v46 != v15)
        {
          objc_enumerationMutation(supportedSchemes);
        }

        [v8 setURLSchemeHandler:v11 forURLScheme:{*(*(&v45 + 1) + 8 * i), completionCopy}];
      }

      v14 = [supportedSchemes countByEnumeratingWithState:&v45 objects:v49 count:16];
    }

    while (v14);
  }

  userContentController = [v8 userContentController];
  v18 = THBundle();
  v19 = [v18 pathForResource:@"AppleWidgetController" ofType:@"js"];

  if (![v19 length])
  {
    v20 = +[TSUAssertionHandler currentHandler];
    v21 = [NSString stringWithUTF8String:"[THWWebView _createConfigurationWithfilteredOutURLSchemes:requestScope:completion:]"];
    v22 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/Widgets/Web/THWWebView.m"];
    [v20 handleFailureInFunction:v21 file:v22 lineNumber:438 description:@"Could not find AppleWidgetController.js!"];
  }

  if ([v19 length])
  {
    v23 = [NSData dataWithContentsOfFile:v19];
    if (![v23 length])
    {
      v24 = +[TSUAssertionHandler currentHandler];
      v25 = [NSString stringWithUTF8String:"[THWWebView _createConfigurationWithfilteredOutURLSchemes:requestScope:completion:]"];
      v26 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/Widgets/Web/THWWebView.m"];
      [v24 handleFailureInFunction:v25 file:v26 lineNumber:441 description:@"Could not load AppleWidgetController.js!"];
    }

    if ([v23 length])
    {
      v27 = [WKUserScript alloc];
      v28 = [[NSString alloc] initWithData:v23 encoding:4];
      v29 = [v27 initWithSource:v28 injectionTime:0 forMainFrameOnly:1];

      [userContentController addUserScript:v29];
    }
  }

  v30 = [[_WKUserStyleSheet alloc] initWithSource:@"@media (inverted-colors) {   img:not(picture>img) forMainFrameOnly:{picture { filter: invert(0); }   video { filter: invert(0) !important; }}", 0}];
  [userContentController _addUserStyleSheet:v30];
  v31 = +[WKContentRuleListStore defaultStore];
  v41[0] = _NSConcreteStackBlock;
  v41[1] = 3221225472;
  v41[2] = sub_64E9C;
  v41[3] = &unk_45BF40;
  v43 = v8;
  v44 = v36;
  v42 = userContentController;
  v32 = v8;
  v33 = v36;
  v34 = userContentController;
  [(THWWebView *)self _createContentBlockingRulesWithfilteredOutURLSchemes:schemesCopy toRuleListStore:v31 completion:v41];
}

- (THPageAffordanceHosting)canvasPageAffordanceHost
{
  WeakRetained = objc_loadWeakRetained(&self->_canvasPageAffordanceHost);

  return WeakRetained;
}

- (THWWebViewDelegate)webViewDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_webViewDelegate);

  return WeakRetained;
}

@end