@interface BEWKWebView
- (BEWKWebView)initWithCoder:(id)a3;
- (BEWKWebView)initWithFrame:(CGRect)a3 configuration:(id)a4;
- (BOOL)be_isFontRegistered:(id)a3;
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (CGPoint)_initialContentOffsetForScrollView;
- (CGRect)_visibleContentRect;
- (id)_accessibilityHitTest:(CGPoint)a3 withEvent:(id)a4;
- (id)_processPluginProxy;
- (id)be_updateAXValueForMessage:(id)a3;
- (id)loadData:(id)a3 MIMEType:(id)a4 characterEncodingName:(id)a5 baseURL:(id)a6;
- (id)loadFileRequest:(id)a3 allowingReadAccessToURL:(id)a4;
- (id)loadFileURL:(id)a3 allowingReadAccessToURL:(id)a4;
- (id)loadHTMLString:(id)a3 baseURL:(id)a4;
- (id)loadRequest:(id)a3;
- (id)loadSimulatedRequest:(id)a3 withResponse:(id)a4 responseData:(id)a5;
- (id)loadSimulatedRequest:(id)a3 withResponseHTMLString:(id)a4;
- (void)_be_sendPendingLoad;
- (void)_layerTreeCommitComplete;
- (void)_registerFontFamily:(id)a3 completion:(id)a4;
- (void)be_clearRegisteredFonts;
- (void)be_configureFontWithStyleManager:(id)a3 completion:(id)a4;
- (void)be_containsProtectedContent;
- (void)be_enableAX;
- (void)be_processPendingFontRegistration;
- (void)be_resumeLoading;
- (void)be_suspendLoading;
- (void)be_updateAXCurrentReadingStateWithMessage:(id)a3 forValue:(id)a4;
- (void)buildMenuWithBuilder:(id)a3;
- (void)dealloc;
@end

@implementation BEWKWebView

- (BEWKWebView)initWithFrame:(CGRect)a3 configuration:(id)a4
{
  v10.receiver = self;
  v10.super_class = BEWKWebView;
  v4 = [(BEWKWebView *)&v10 initWithFrame:a4 configuration:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v4)
  {
    v5 = [UIColor colorWithDynamicProvider:&stru_328410];
    [(BEWKWebView *)v4 _setInteractionTintColor:v5];

    v6 = objc_opt_new();
    [(BEWKWebView *)v4 setRegisteredFonts:v6];

    v7 = objc_opt_new();
    [(BEWKWebView *)v4 setFontsAttemptingRegistration:v7];

    v8 = objc_opt_new();
    [(BEWKWebView *)v4 setPendingFontRegistrationHandlers:v8];

    v4->_be_finishedInit = 1;
  }

  return v4;
}

- (BEWKWebView)initWithCoder:(id)a3
{
  v8.receiver = self;
  v8.super_class = BEWKWebView;
  v3 = [(BEWKWebView *)&v8 initWithCoder:a3];
  if (v3)
  {
    v4 = [UIColor colorWithDynamicProvider:&stru_328410];
    [(BEWKWebView *)v3 _setInteractionTintColor:v4];

    v5 = objc_opt_new();
    [(BEWKWebView *)v3 setRegisteredFonts:v5];

    v6 = objc_opt_new();
    [(BEWKWebView *)v3 setFontsAttemptingRegistration:v6];

    v3->_be_finishedInit = 1;
  }

  return v3;
}

- (void)dealloc
{
  v3 = _BookEPUBLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v6 = self;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEBUG, "Dealloc of #reuse webView:%@", buf, 0xCu);
  }

  v4.receiver = self;
  v4.super_class = BEWKWebView;
  [(BEWKWebView *)&v4 dealloc];
}

- (void)be_suspendLoading
{
  [(BEWKWebView *)self _be_validateSuspendCount];
  be_suspendCount = self->_be_suspendCount;
  if (be_suspendCount >= 0x7FFFFFFFFFFFFFFDLL)
  {
    be_suspendCount = 0x7FFFFFFFFFFFFFFDLL;
  }

  self->_be_suspendCount = be_suspendCount + 1;
}

- (void)be_resumeLoading
{
  [(BEWKWebView *)self _be_validateSuspendCount];
  be_suspendCount = self->_be_suspendCount;
  if (be_suspendCount <= 1)
  {
    be_suspendCount = 1;
  }

  v4 = be_suspendCount - 1;
  self->_be_suspendCount = v4;
  if (!v4)
  {

    [(BEWKWebView *)self _be_sendPendingLoad];
  }
}

- (BOOL)be_isFontRegistered:(id)a3
{
  v4 = a3;
  v5 = [(BEWKWebView *)self registeredFonts];
  v6 = [v5 containsObject:v4];

  return v6;
}

- (void)be_clearRegisteredFonts
{
  v3 = _BookEPUBLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(BEWKWebView *)self be_identifier];
    v6 = 138412546;
    v7 = v4;
    v8 = 2112;
    v9 = self;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Clearing registered fonts for webView:%@ self:%@", &v6, 0x16u);
  }

  v5 = [(BEWKWebView *)self registeredFonts];
  [v5 removeAllObjects];
}

- (void)be_processPendingFontRegistration
{
  v3 = [(BEWKWebView *)self pendingFontRegistrationHandlers];
  v4 = [v3 count];

  if (v4)
  {
    v5 = [(BEWKWebView *)self pendingFontRegistrationHandlers];
    v6 = [v5 copy];

    v7 = [(BEWKWebView *)self pendingFontRegistrationHandlers];
    [v7 removeAllObjects];

    if ([v6 count])
    {
      v8 = 0;
      do
      {
        v9 = [v6 objectAtIndex:v8];
        if (v8 >= [v6 count] - 1)
        {
          v11[0] = _NSConcreteStackBlock;
          v11[1] = 3221225472;
          v11[2] = sub_97F8;
          v11[3] = &unk_328358;
          v12 = v9;
          v13 = self;
          dispatch_async(&_dispatch_main_q, v11);
          v10 = v12;
        }

        else
        {
          v10 = [v9 fontRegistrationHandler];
          v10[2](v10, 2);
        }

        ++v8;
      }

      while (v8 < [v6 count]);
    }
  }
}

- (void)be_configureFontWithStyleManager:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    if ([(BEWKWebView *)self attemptingFontRegistration])
    {
      v8 = _BookEPUBLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = [v6 font];
        *buf = 138543362;
        v17 = v9;
        _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Deferring #fontReg of #fontFamily '%{public}@'", buf, 0xCu);
      }

      v10 = objc_opt_new();
      [v10 setStyleManager:v6];
      [v10 setFontRegistrationHandler:v7];
      v11 = [(BEWKWebView *)self pendingFontRegistrationHandlers];
      [v11 addObject:v10];
    }

    else
    {
      v12 = [v6 font];
      v13 = [(BEWKWebView *)self be_isFontRegistered:v12];

      if (v13)
      {
        [(BEWKWebView *)self be_willAttemptFontRegistration];
        [(BEWKWebView *)self be_fontRegistrationCompleted:1];
        v7[2](v7, 1);
      }

      else
      {
        [(BEWKWebView *)self setAttemptingFontRegistration:1];
        [(BEWKWebView *)self be_willAttemptFontRegistration];
        v14[0] = _NSConcreteStackBlock;
        v14[1] = 3221225472;
        v14[2] = sub_9B34;
        v14[3] = &unk_328380;
        v14[4] = self;
        v15 = v7;
        [(BEWKWebView *)self _registerFontFamily:v6 completion:v14];
      }
    }
  }

  else
  {
    [(BEWKWebView *)self be_willAttemptFontRegistration];
    [(BEWKWebView *)self be_fontRegistrationCompleted:0];
    v7[2](v7, 0);
  }
}

- (void)_be_sendPendingLoad
{
  v3 = [(_BEWKWebViewPendingLoad *)self->_be_pendingRequest data];

  v4 = [(_BEWKWebViewPendingLoad *)self->_be_pendingRequest request];
  v5 = v4;
  if (v3)
  {
    v6 = [(_BEWKWebViewPendingLoad *)self->_be_pendingRequest response];
    v7 = [(_BEWKWebViewPendingLoad *)self->_be_pendingRequest data];
    v8 = [(BEWKWebView *)self loadSimulatedRequest:v5 response:v6 responseData:v7];
  }

  else
  {

    if (!v5)
    {
      goto LABEL_6;
    }

    v5 = [(_BEWKWebViewPendingLoad *)self->_be_pendingRequest request];
    v9 = [(BEWKWebView *)self loadRequest:v5];
  }

LABEL_6:
  be_pendingRequest = self->_be_pendingRequest;
  self->_be_pendingRequest = 0;
}

- (void)_registerFontFamily:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 font];
  v9 = [(BEWKWebView *)self registeredFonts];
  v10 = [v9 containsObject:v8];

  v11 = [(BEWKWebView *)self fontsAttemptingRegistration];
  v12 = [v11 containsObject:v8];

  if ([v8 length] == 0) | v10 & 1 || (v12)
  {
    if (![v8 length])
    {
LABEL_20:
      v7[2](v7, 1);
      goto LABEL_21;
    }

    v14 = _BookEPUBLog();
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_INFO);
    if (v10)
    {
      if (v15)
      {
        LODWORD(buf) = 138543362;
        *(&buf + 4) = v8;
        v16 = "#FontFamily '%{public}@' already #fontReg";
LABEL_18:
        _os_log_impl(&dword_0, v14, OS_LOG_TYPE_INFO, v16, &buf, 0xCu);
      }
    }

    else if (v15)
    {
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v8;
      v16 = "#FontFamily '%{public}@' already attempting #fontReg";
      goto LABEL_18;
    }

    goto LABEL_20;
  }

  if ([v6 isFontPreregistered:v8])
  {
    v13 = [(BEWKWebView *)self registeredFonts];
    [v13 addObject:v8];

    [(BEWKWebView *)self be_fontFamilySuccessfullyRegistered:v8];
    v7[2](v7, 1);
  }

  else if ([v6 isFontAvailable:v8])
  {
    v17 = [(BEWKWebView *)self _processPluginProxy];
    if (v17)
    {
      v18 = [(BEWKWebView *)self fontsAttemptingRegistration];
      [v18 addObject:v8];

      v19 = _BookEPUBLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 138543362;
        *(&buf + 4) = v8;
        _os_log_impl(&dword_0, v19, OS_LOG_TYPE_DEFAULT, "Attempting #fontReg of #fontFamily '%{public}@'", &buf, 0xCu);
      }

      *&buf = 0;
      *(&buf + 1) = &buf;
      v38 = 0x2020000000;
      v39 = 0;
      objc_initWeak(&location, self);
      v20 = _BookEPUBLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *v35 = 138412290;
        v36 = v8;
        _os_log_impl(&dword_0, v20, OS_LOG_TYPE_DEFAULT, "Posting font activate notification for font %@", v35, 0xCu);
      }

      v21 = +[NSNotificationCenter defaultCenter];
      v33 = @"FontActivateNotificationFontFamilyKey";
      v34 = v8;
      v22 = [NSDictionary dictionaryWithObjects:&v34 forKeys:&v33 count:1];
      [v21 postNotificationName:@"FontActivateNotification" object:0 userInfo:v22];

      v27[0] = _NSConcreteStackBlock;
      v27[1] = 3221225472;
      v27[2] = sub_A220;
      v27[3] = &unk_3283A8;
      objc_copyWeak(&v31, &location);
      v28 = v8;
      p_buf = &buf;
      v29 = v7;
      [v17 registerFontFamily:v28 completion:v27];

      objc_destroyWeak(&v31);
      objc_destroyWeak(&location);
      _Block_object_dispose(&buf, 8);
    }

    else
    {
      v24 = _BookEPUBLog();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 138543362;
        *(&buf + 4) = v8;
        _os_log_impl(&dword_0, v24, OS_LOG_TYPE_ERROR, "Failed to get process plugin/proxy! Unable to #fontReg fontFamily:%{public}@", &buf, 0xCu);
      }

      v25 = [(BEWKWebView *)self fontsAttemptingRegistration];
      [v25 addObject:v8];

      v26 = _BookEPUBLog();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
      {
        LODWORD(buf) = 138543362;
        *(&buf + 4) = v8;
        _os_log_impl(&dword_0, v26, OS_LOG_TYPE_FAULT, "Unable to access process plugin failure #fontReg #fontFamily '%{public}@'", &buf, 0xCu);
      }

      [(BEWKWebView *)self be_fontFamilyFailedToRegister:v8];
      v7[2](v7, 0);
    }
  }

  else
  {
    v23 = _BookEPUBLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v8;
      _os_log_impl(&dword_0, v23, OS_LOG_TYPE_DEFAULT, "Skipping #fontReg of #fontFamily '%{public}@' because it is not yet available", &buf, 0xCu);
    }

    [(BEWKWebView *)self be_fontFamilyFailedToRegister:v8];
    v7[2](v7, 0);
  }

LABEL_21:
}

- (void)be_containsProtectedContent
{
  v2 = [(BEWKWebView *)self _processPluginProxy];
  [v2 processContainsProtectedContent];
}

- (void)be_enableAX
{
  v4 = [(BEWKWebView *)self _processPluginProxy];
  v3 = [(BEWKWebView *)self be_identifier];
  [v4 enableAXWithIdentifier:v3];
}

- (void)be_updateAXCurrentReadingStateWithMessage:(id)a3 forValue:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(BEWKWebView *)self _processPluginProxy];
  [v8 updateAXCurrentReadingStateWithMessage:v7 forValue:v6];
}

- (id)be_updateAXValueForMessage:(id)a3
{
  v8[0] = @"BEWebProcessPluginIdentifierParameterKey";
  v4 = a3;
  v5 = [(BEWKWebView *)self be_identifier];
  v8[1] = @"BEWebProcessPluginMessageParameterKey";
  v9[0] = v5;
  v9[1] = v4;
  v6 = [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:2];

  return v6;
}

- (id)_processPluginProxy
{
  v3 = [(BEWKWebView *)self webProcessPluginProxy];

  if (!v3)
  {
    v4 = [(BEWKWebView *)self _remoteObjectRegistry];
    v5 = [_WKRemoteObjectInterface remoteObjectInterfaceWithProtocol:&OBJC_PROTOCOL___BEWebProcessControllerProtocol];
    v6 = [v4 remoteObjectProxyWithInterface:v5];
    [(BEWKWebView *)self setWebProcessPluginProxy:v6];

    if (!v5 || ([(BEWKWebView *)self webProcessPluginProxy], v7 = objc_claimAutoreleasedReturnValue(), v7, !v7))
    {
      v8 = _BookEPUBLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *v11 = 0;
        _os_log_impl(&dword_0, v8, OS_LOG_TYPE_ERROR, "Failed to get process plugin/proxy!", v11, 2u);
      }
    }
  }

  v9 = [(BEWKWebView *)self webProcessPluginProxy];

  return v9;
}

- (CGPoint)_initialContentOffsetForScrollView
{
  v3 = [(BEWKWebView *)self be_requestedContentOffset];
  v10.receiver = self;
  v10.super_class = BEWKWebView;
  [(BEWKWebView *)&v10 _initialContentOffsetForScrollView];
  if (v3)
  {
    [v3 CGPointValue];
  }

  v6 = v4;
  v7 = v5;

  v8 = v6;
  v9 = v7;
  result.y = v9;
  result.x = v8;
  return result;
}

- (void)_layerTreeCommitComplete
{
  v3.receiver = self;
  v3.super_class = BEWKWebView;
  [(BEWKWebView *)&v3 _layerTreeCommitComplete];
  [(BEWKWebView *)self _be_forceInitialContentOffset];
}

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  v6 = a4;
  v7 = NSStringFromSelector(a3);
  if ([&off_343E00 containsObject:v7])
  {
    v10.receiver = self;
    v10.super_class = BEWKWebView;
    v8 = [(BEWKWebView *)&v10 canPerformAction:a3 withSender:v6];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)buildMenuWithBuilder:(id)a3
{
  v4 = a3;
  y = CGPointZero.y;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v6 = [(BEWKWebView *)self be_textInputChild];
  v7 = [v6 interactions];
  v8 = [v7 reverseObjectEnumerator];

  v9 = [v8 countByEnumeratingWithState:&v34 objects:v42 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v35;
    v12 = y;
    x = CGPointZero.x;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v35 != v11)
        {
          objc_enumerationMutation(v8);
        }

        objc_opt_class();
        v15 = BUDynamicCast();
        v16 = v15;
        if (v15)
        {
          [v15 locationInView:self];
          v19 = v17;
          v20 = v18;
          if (CGPointZero.x == v17 && y == v18)
          {
            v12 = v18;
            x = v17;
          }

          else
          {
            v12 = 1.79769313e308;
            v22 = v17 == 1.79769313e308 && v18 == 1.79769313e308;
            x = 1.79769313e308;
            if (!v22)
            {

              v12 = v20;
              x = v19;
              goto LABEL_21;
            }
          }
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v34 objects:v42 count:16];
    }

    while (v10);
  }

  else
  {
    v12 = y;
    x = CGPointZero.x;
  }

LABEL_21:

  v23 = [(BEWKWebView *)self be_textInputChild];
  [(BEWKWebView *)self convertPoint:v23 toView:x, v12];
  v25 = v24;
  v27 = v26;

  v28 = _BookEPUBLog();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
  {
    *v33 = x;
    *&v33[1] = v12;
    v29 = [NSValue valueWithBytes:v33 objCType:"{CGPoint=dd}"];
    *v32 = v25;
    *&v32[1] = v27;
    v30 = [NSValue valueWithBytes:v32 objCType:"{CGPoint=dd}"];
    *buf = 138412546;
    v39 = v29;
    v40 = 2112;
    v41 = v30;
    _os_log_impl(&dword_0, v28, OS_LOG_TYPE_INFO, "Building context menu at location - viewPoint:%@ contentPoint:%@", buf, 0x16u);
  }

  v31 = [(BEWKWebView *)self be_uiHandler];
  [v31 buildMenuWithBuilder:v4 inWebView:self atPoint:{v25, v27}];
}

- (id)loadRequest:(id)a3
{
  v4 = [a3 mutableCopy];
  [v4 setAttribution:1];
  if ([(BEWKWebView *)self be_isLoadingSuspended])
  {
    v5 = [_BEWKWebViewPendingLoad pendingLoadWithRequest:v4];
    be_pendingRequest = self->_be_pendingRequest;
    self->_be_pendingRequest = v5;

    v7 = 0;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = BEWKWebView;
    v7 = [(BEWKWebView *)&v9 loadRequest:v4];
  }

  return v7;
}

- (id)loadFileURL:(id)a3 allowingReadAccessToURL:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [NSString stringWithFormat:@"%@: %s", @"Do not call method", "[BEWKWebView loadFileURL:allowingReadAccessToURL:]"];
  v8 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v7 userInfo:0];
  v9 = v8;

  objc_exception_throw(v8);
}

- (id)loadHTMLString:(id)a3 baseURL:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [NSString stringWithFormat:@"%@: %s", @"Do not call method", "[BEWKWebView loadHTMLString:baseURL:]"];
  v8 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v7 userInfo:0];
  v9 = v8;

  objc_exception_throw(v8);
}

- (id)loadData:(id)a3 MIMEType:(id)a4 characterEncodingName:(id)a5 baseURL:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [[NSURLResponse alloc] initWithURL:v10 MIMEType:v12 expectedContentLength:objc_msgSend(v13 textEncodingName:{"length"), v11}];

  v15 = [NSMutableURLRequest requestWithURL:v10];

  [v15 setAttribution:1];
  if ([(BEWKWebView *)self be_isLoadingSuspended])
  {
    v16 = [_BEWKWebViewPendingLoad pendingLoadWithRequest:v15 response:v14 data:v13];

    be_pendingRequest = self->_be_pendingRequest;
    self->_be_pendingRequest = v16;

    v18 = 0;
  }

  else
  {
    v20.receiver = self;
    v20.super_class = BEWKWebView;
    v18 = [(BEWKWebView *)&v20 loadSimulatedRequest:v15 response:v14 responseData:v13];
  }

  return v18;
}

- (id)loadSimulatedRequest:(id)a3 withResponse:(id)a4 responseData:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [a3 mutableCopy];
  [v10 setAttribution:1];
  if ([(BEWKWebView *)self be_isLoadingSuspended])
  {
    v11 = [_BEWKWebViewPendingLoad pendingLoadWithRequest:v10 response:v9 data:v8];

    be_pendingRequest = self->_be_pendingRequest;
    self->_be_pendingRequest = v11;

    v13 = 0;
  }

  else
  {
    v15.receiver = self;
    v15.super_class = BEWKWebView;
    v13 = [(BEWKWebView *)&v15 loadSimulatedRequest:v10 withResponse:v9 responseData:v8];
  }

  return v13;
}

- (id)loadFileRequest:(id)a3 allowingReadAccessToURL:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [NSString stringWithFormat:@"%@: %s", @"Do not call method", "[BEWKWebView loadFileRequest:allowingReadAccessToURL:]"];
  v8 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v7 userInfo:0];
  v9 = v8;

  objc_exception_throw(v8);
}

- (id)loadSimulatedRequest:(id)a3 withResponseHTMLString:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [NSString stringWithFormat:@"%@: %s", @"Do not call method", "[BEWKWebView loadSimulatedRequest:withResponseHTMLString:]"];
  v8 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v7 userInfo:0];
  v9 = v8;

  objc_exception_throw(v8);
}

- (CGRect)_visibleContentRect
{
  v31.receiver = self;
  v31.super_class = BEWKWebView;
  [(BEWKWebView *)&v31 _visibleContentRect];
  x = v3;
  y = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(BEWKWebView *)self scrollView];
  [v11 contentSize];
  v13 = v12;
  v15 = v14;

  [(BEWKWebView *)self be_gutterLength];
  v17 = v16;
  v18 = [(BEWKWebView *)self _paginationMode];
  if ((v18 - 3) < 2)
  {
    v34.origin.x = x;
    v34.origin.y = y;
    v34.size.width = v8;
    v34.size.height = v10;
    Height = CGRectGetHeight(v34);
    v35.origin.x = x;
    v35.origin.y = y;
    v35.size.width = v8;
    v35.size.height = v10;
    MinY = CGRectGetMinY(v35);
    v24 = fmax(MinY - Height - v17, 0.0);
    if (MinY > 0.0)
    {
      y = v24;
    }

    if (v17 + v17 + Height * 3.0 >= v15)
    {
      v10 = v15;
    }

    else
    {
      v10 = v17 + v17 + Height * 3.0;
    }
  }

  else if ((v18 - 1) <= 1)
  {
    v29 = v15;
    v32.origin.x = x;
    v32.origin.y = y;
    v32.size.width = v8;
    v32.size.height = v10;
    Width = CGRectGetWidth(v32);
    v20 = v17 + Width + v17 + Width;
    v33.origin.x = x;
    v33.origin.y = y;
    v33.size.width = v8;
    v33.size.height = v10;
    MinX = CGRectGetMinX(v33);
    if ([(BEWKWebView *)self _paginationMode]== &dword_0 + 1)
    {
      if (v13 <= v20)
      {
        x = CGPointZero.x;
        y = CGPointZero.y;
        v10 = v29;
        v8 = v13;
        goto LABEL_19;
      }

      v21 = fmax(MinX - Width - v17, 0.0);
      if (MinX > 0.0)
      {
        x = v21;
      }
    }

    else
    {
      if (v13 <= v20)
      {
        goto LABEL_19;
      }

      x = MinX - Width - v17;
    }

    if (v17 + v17 + Width * 3.0 >= v13)
    {
      v8 = v13;
    }

    else
    {
      v8 = v17 + v17 + Width * 3.0;
    }
  }

LABEL_19:
  v25 = x;
  v26 = y;
  v27 = v8;
  v28 = v10;
  result.size.height = v28;
  result.size.width = v27;
  result.origin.y = v26;
  result.origin.x = v25;
  return result;
}

- (id)_accessibilityHitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = +[UIAccessibilityElementTraversalOptions defaultVoiceOverOptions];
  v9 = [(BEWKWebView *)self _accessibilityLeafDescendantsWithOptions:v8];

  UIAccessibilityPointForPoint();
  v11 = v10;
  v13 = v12;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v14 = v9;
  v15 = [v14 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v24;
    while (2)
    {
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v24 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v23 + 1) + 8 * i);
        [v19 accessibilityFrame];
        v29.x = v11;
        v29.y = v13;
        if (CGRectContainsPoint(v30, v29))
        {
          v20 = v19;

          goto LABEL_11;
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v16)
      {
        continue;
      }

      break;
    }
  }

  v22.receiver = self;
  v22.super_class = BEWKWebView;
  v20 = [(BEWKWebView *)&v22 _accessibilityHitTest:v7 withEvent:x, y];
LABEL_11:

  return v20;
}

@end