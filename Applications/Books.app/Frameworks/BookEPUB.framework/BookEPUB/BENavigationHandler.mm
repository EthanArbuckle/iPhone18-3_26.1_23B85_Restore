@interface BENavigationHandler
- (BENavigationHandler)initWithMode:(unint64_t)mode;
- (BENavigationHandlerDelegate)delegate;
- (BOOL)_navigationIsUserInitiatedAndNotYetApproved:(id)approved;
- (WKWebView)webView;
- (id)allObservers;
- (void)_cancelProvisionalLoadTimeout;
- (void)_cancelReloadTimeout;
- (void)_cancelTimeout;
- (void)_contentLoadTimeout;
- (void)_decidePolicyForFootnoteOrPreviewNavigationAction:(id)action shouldObserveProvisionalLoadTimeout:(BOOL *)timeout webView:(id)view decisionHandler:(id)handler;
- (void)_notifyLoadCompleteIfNecessary;
- (void)_notifyLoadFailureError:(id)error completion:(id)completion;
- (void)_provisionalLoadTimeout;
- (void)_reloadTimeout;
- (void)_startContentLoadTimeout;
- (void)_startReloadTimeout;
- (void)_webView:(id)view contentFailedToLoadWithReason:(unint64_t)reason;
- (void)_webView:(id)view renderingProgressDidChange:(unint64_t)change;
- (void)_webView:(id)view webContentProcessDidTerminateWithReason:(int64_t)reason;
- (void)addObserver:(id)observer;
- (void)attemptReload;
- (void)dealloc;
- (void)performAfterLoadCompleteOrFailure:(id)failure;
- (void)removeObserver:(id)observer;
- (void)requestCancelationOfCurrentNavigation;
- (void)setDelegate:(id)delegate;
- (void)userContentController:(id)controller didReceiveScriptMessage:(id)message;
- (void)webView:(id)view decidePolicyForNavigationAction:(id)action decisionHandler:(id)handler;
- (void)webView:(id)view decidePolicyForNavigationResponse:(id)response decisionHandler:(id)handler;
- (void)webView:(id)view didFailNavigation:(id)navigation withError:(id)error;
- (void)webView:(id)view didFailProvisionalNavigation:(id)navigation withError:(id)error;
- (void)webView:(id)view didFinishNavigation:(id)navigation;
- (void)webView:(id)view didStartProvisionalNavigation:(id)navigation;
@end

@implementation BENavigationHandler

- (BENavigationHandler)initWithMode:(unint64_t)mode
{
  v10.receiver = self;
  v10.super_class = BENavigationHandler;
  v4 = [(BENavigationHandler *)&v10 init];
  if (v4)
  {
    v5 = +[BEDocumentExternalLoadApprovalCache sharedInstance];
    approvalCache = v4->_approvalCache;
    v4->_approvalCache = v5;

    v4->_mode = mode;
    v7 = +[NSHashTable weakObjectsHashTable];
    observers = v4->__observers;
    v4->__observers = v7;

    v4->_accessLock._os_unfair_lock_opaque = 0;
    v4->_retryCount = 0;
    v4->_observerCount = 0;
    v4->_maxReloadAttempts = 3;
    v4->_loadTimeout = 10.0;
  }

  return v4;
}

- (void)dealloc
{
  [(BENavigationHandler *)self _cancelTimeout];
  v3.receiver = self;
  v3.super_class = BENavigationHandler;
  [(BENavigationHandler *)&v3 dealloc];
}

- (void)performAfterLoadCompleteOrFailure:(id)failure
{
  failureCopy = failure;
  postLoadCompleteOrFailureWork = self->_postLoadCompleteOrFailureWork;
  v10 = failureCopy;
  if (!postLoadCompleteOrFailureWork)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_postLoadCompleteOrFailureWork;
    self->_postLoadCompleteOrFailureWork = v6;

    failureCopy = v10;
    postLoadCompleteOrFailureWork = self->_postLoadCompleteOrFailureWork;
  }

  v8 = [failureCopy copy];
  v9 = objc_retainBlock(v8);
  [(NSMutableArray *)postLoadCompleteOrFailureWork addObject:v9];
}

- (void)requestCancelationOfCurrentNavigation
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  allObservers = [(BENavigationHandler *)self allObservers];
  v4 = [allObservers countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(allObservers);
        }

        v8 = *(*(&v9 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          [v8 navigationHandlerWillCancelCurrentNavigation:self];
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [allObservers countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (void)addObserver:(id)observer
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1B318;
  v5[3] = &unk_328358;
  selfCopy = self;
  observerCopy = observer;
  v4 = observerCopy;
  os_unfair_lock_lock(&selfCopy->_accessLock);
  sub_1B318(v5);
  os_unfair_lock_unlock(&self->_accessLock);
}

- (void)removeObserver:(id)observer
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1B474;
  v5[3] = &unk_328358;
  selfCopy = self;
  observerCopy = observer;
  v4 = observerCopy;
  os_unfair_lock_lock(&selfCopy->_accessLock);
  sub_1B474(v5);
  os_unfair_lock_unlock(&self->_accessLock);
}

- (id)allObservers
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_1B60C;
  v15 = sub_1B61C;
  v16 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v7 = sub_1B624;
  v8 = &unk_3289F8;
  selfCopy = self;
  v10 = &v11;
  v3 = v6;
  os_unfair_lock_lock(&self->_accessLock);
  v7(v3);
  os_unfair_lock_unlock(&self->_accessLock);

  v4 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v4;
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  v8 = delegateCopy;
  if (delegateCopy)
  {
    [(BENavigationHandler *)self addObserver:delegateCopy];
    p_delegate = &self->_delegate;
    v6 = v8;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [(BENavigationHandler *)self removeObserver:WeakRetained];

    p_delegate = &self->_delegate;
    v6 = 0;
  }

  objc_storeWeak(p_delegate, v6);
}

- (void)_notifyLoadCompleteIfNecessary
{
  [(BENavigationHandler *)self _cancelTimeout];
  if (![(BENavigationHandler *)self webViewLoadComplete])
  {
    return;
  }

  if ([(BENavigationHandler *)self shouldWaitForJavascriptLoadComplete])
  {
    response = [(WKNavigationResponse *)self->_pendingMainFrameLoadURLResponse response];
    mIMEType = [response MIMEType];
    if ([mIMEType isEqualToString:@"application/xhtml+xml"])
    {

      goto LABEL_6;
    }

    v5 = [mIMEType isEqualToString:@"text/html"];

    if (v5)
    {
LABEL_6:
      if (![(BENavigationHandler *)self javascriptLoadComplete])
      {
        return;
      }
    }
  }

  firstObject = [(NSMutableArray *)self->_postLoadCompleteOrFailureWork firstObject];
  if (firstObject)
  {
    [(NSMutableArray *)self->_postLoadCompleteOrFailureWork removeObjectAtIndex:0];
    v35[0] = _NSConcreteStackBlock;
    v35[1] = 3221225472;
    v35[2] = sub_1BB68;
    v35[3] = &unk_3286D0;
    selfCopy = self;
    v7 = firstObject[2];
    webView = selfCopy;
    v7(firstObject, 0, v35);
    mainFrameNavigationURL = selfCopy;
  }

  else
  {
    webView = [(BENavigationHandler *)self webView];
    mainFrameNavigationURL = [(BENavigationHandler *)self mainFrameNavigationURL];
    if (mainFrameNavigationURL)
    {
      [(BENavigationHandler *)self setMainFrameNavigationURL:0];
      [(BENavigationHandler *)webView setBe_hasPendingOperations:0];
      [(BENavigationHandler *)webView setBe_hasCompletedLoad:1];
      [(BENavigationHandler *)webView setBe_requiresReload:0];
      v10 = _BookEPUBLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = objc_opt_class();
        v12 = NSStringFromClass(v11);
        *buf = 138412802;
        v39 = mainFrameNavigationURL;
        v40 = 2112;
        v41 = v12;
        v42 = 2048;
        v43 = webView;
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_INFO, "Notifying delegate load of %@ in <%@:%p> is complete & JS has been executed", buf, 0x20u);
      }

      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      allObservers = [(BENavigationHandler *)self allObservers];
      v14 = [allObservers countByEnumeratingWithState:&v27 objects:v37 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v28;
        do
        {
          for (i = 0; i != v15; i = i + 1)
          {
            if (*v28 != v16)
            {
              objc_enumerationMutation(allObservers);
            }

            v18 = *(*(&v27 + 1) + 8 * i);
            if (objc_opt_respondsToSelector())
            {
              [v18 navigationHandler:self didFinishLoadOfURL:mainFrameNavigationURL];
            }
          }

          v15 = [allObservers countByEnumeratingWithState:&v27 objects:v37 count:16];
        }

        while (v15);
      }
    }

    else
    {
      v19 = _BookEPUBLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = objc_opt_class();
        v21 = NSStringFromClass(v20);
        *buf = 138412546;
        v39 = v21;
        v40 = 2048;
        v41 = webView;
        _os_log_impl(&dword_0, v19, OS_LOG_TYPE_ERROR, "Notifying delegate of missing URL in <%@:%p>", buf, 0x16u);
      }

      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      allObservers = [(BENavigationHandler *)self allObservers];
      v22 = [allObservers countByEnumeratingWithState:&v31 objects:v44 count:16];
      if (v22)
      {
        v23 = v22;
        v24 = *v32;
        do
        {
          for (j = 0; j != v23; j = j + 1)
          {
            if (*v32 != v24)
            {
              objc_enumerationMutation(allObservers);
            }

            v26 = *(*(&v31 + 1) + 8 * j);
            if (objc_opt_respondsToSelector())
            {
              [v26 navigationHandlerWebContentProcessFailedWithNoURL:webView];
            }
          }

          v23 = [allObservers countByEnumeratingWithState:&v31 objects:v44 count:16];
        }

        while (v23);
      }
    }
  }
}

- (void)_notifyLoadFailureError:(id)error completion:(id)completion
{
  errorCopy = error;
  completionCopy = completion;
  [(BENavigationHandler *)self _cancelTimeout];
  firstObject = [(NSMutableArray *)self->_postLoadCompleteOrFailureWork firstObject];
  if (firstObject)
  {
    [(NSMutableArray *)self->_postLoadCompleteOrFailureWork removeObjectAtIndex:0];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1BD38;
    v13[3] = &unk_328A20;
    selfCopy = self;
    v15 = errorCopy;
    v16 = completionCopy;
    v9 = firstObject[2];
    v10 = selfCopy;
    v9(firstObject, v15, v13);
  }

  else
  {
    v11 = _BookEPUBLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v18 = errorCopy;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_ERROR, "Notifying delegate load Failure - %@", buf, 0xCu);
    }

    v12 = objc_retainBlock(completionCopy);
    v10 = v12;
    if (v12)
    {
      (v12->_delegate)(v12);
    }
  }
}

- (void)_startContentLoadTimeout
{
  [(BENavigationHandler *)self loadTimeout];

  [(BENavigationHandler *)self performSelector:"_contentLoadTimeout" withObject:0 afterDelay:?];
}

- (void)_cancelTimeout
{
  [NSObject cancelPreviousPerformRequestsWithTarget:self selector:"_contentLoadTimeout" object:0];
  if ([(BENavigationHandler *)self reloadTimeoutActive])
  {
    v3 = _BookEPUBLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *v4 = 0;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_ERROR, "Reload timeout active when canceling our timeout.  Also canceling reload timeout.", v4, 2u);
    }

    [(BENavigationHandler *)self _cancelReloadTimeout];
  }
}

- (void)_startReloadTimeout
{
  [(BENavigationHandler *)self performSelector:"_reloadTimeout" withObject:0 afterDelay:3.0];

  [(BENavigationHandler *)self setReloadTimeoutActive:1];
}

- (void)_cancelReloadTimeout
{
  [(BENavigationHandler *)self setReloadTimeoutActive:0];

  [NSObject cancelPreviousPerformRequestsWithTarget:self selector:"_reloadTimeout" object:0];
}

- (void)_cancelProvisionalLoadTimeout
{
  [(BENavigationHandler *)self setReloadTimeoutActive:0];

  [NSObject cancelPreviousPerformRequestsWithTarget:self selector:"_provisionalLoadTimeout" object:0];
}

- (void)webView:(id)view decidePolicyForNavigationAction:(id)action decisionHandler:(id)handler
{
  viewCopy = view;
  actionCopy = action;
  handlerCopy = handler;
  v11 = 0;
  if ((self->_mode & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    [(BENavigationHandler *)self _decidePolicyForFootnoteOrPreviewNavigationAction:actionCopy shouldObserveProvisionalLoadTimeout:&v11 webView:viewCopy decisionHandler:handlerCopy];
  }

  else
  {
    [(BENavigationHandler *)self _decidePolicyForContentNavigationAction:actionCopy shouldObserveProvisionalLoadTimeout:&v11 webView:viewCopy decisionHandler:handlerCopy];
  }

  if (v11 == 1)
  {
    [(BENavigationHandler *)self _startProvisionalLoadTimeout];
  }
}

- (void)webView:(id)view decidePolicyForNavigationResponse:(id)response decisionHandler:(id)handler
{
  responseCopy = response;
  handlerCopy = handler;
  if ([responseCopy isForMainFrame])
  {
    objc_storeStrong(&self->_pendingMainFrameLoadURLResponse, response);
  }

  v9 = objc_retainBlock(handlerCopy);
  v10 = v9;
  if (v9)
  {
    (*(v9 + 2))(v9, 1);
  }
}

- (void)webView:(id)view didStartProvisionalNavigation:(id)navigation
{
  viewCopy = view;
  _request = [navigation _request];
  v8 = [_request URL];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = [viewCopy URL];
  }

  v11 = v10;

  [(BENavigationHandler *)self setMainFrameNavigationURL:v11];
  [(BENavigationHandler *)self setWebViewLoadComplete:0];
  [(BENavigationHandler *)self setJavascriptLoadComplete:0];
  [(BENavigationHandler *)self setWebView:viewCopy];
  [viewCopy setBe_hasPendingOperations:1];
  [viewCopy setBe_hasCompletedLoad:0];
  [(BENavigationHandler *)self _cancelReloadTimeout];
  [(BENavigationHandler *)self _cancelProvisionalLoadTimeout];
  [(BENavigationHandler *)self _startContentLoadTimeout];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  allObservers = [(BENavigationHandler *)self allObservers];
  v13 = [allObservers countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v19;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v19 != v15)
        {
          objc_enumerationMutation(allObservers);
        }

        v17 = *(*(&v18 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          [v17 navigationHandler:self didStartLoadOfURL:v11];
        }
      }

      v14 = [allObservers countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v14);
  }
}

- (void)webView:(id)view didFailProvisionalNavigation:(id)navigation withError:(id)error
{
  viewCopy = view;
  navigationCopy = navigation;
  errorCopy = error;
  [(BENavigationHandler *)self _cancelProvisionalLoadTimeout];
  objc_initWeak(&location, self);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1C37C;
  v13[3] = &unk_328A48;
  objc_copyWeak(&v16, &location);
  v13[4] = self;
  v11 = navigationCopy;
  v14 = v11;
  v12 = errorCopy;
  v15 = v12;
  [(BENavigationHandler *)self _notifyLoadFailureError:v12 completion:v13];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

- (void)webView:(id)view didFinishNavigation:(id)navigation
{
  [(BENavigationHandler *)self setRetryCount:0, navigation];
  [(BENavigationHandler *)self setWebViewLoadComplete:1];
  [(BENavigationHandler *)self _notifyLoadCompleteIfNecessary];
  pendingMainFrameLoadURLResponse = self->_pendingMainFrameLoadURLResponse;
  self->_pendingMainFrameLoadURLResponse = 0;
}

- (void)webView:(id)view didFailNavigation:(id)navigation withError:(id)error
{
  viewCopy = view;
  navigationCopy = navigation;
  errorCopy = error;
  objc_initWeak(&location, self);
  _request = [navigationCopy _request];
  v12 = [_request URL];

  v13 = _BookEPUBLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    be_identifier = [viewCopy be_identifier];
    *buf = 138544386;
    v25 = v15;
    v26 = 2114;
    v27 = be_identifier;
    v28 = 2160;
    v29 = 1752392040;
    v30 = 2112;
    v31 = v12;
    v32 = 2114;
    v33 = errorCopy;
    _os_log_impl(&dword_0, v13, OS_LOG_TYPE_ERROR, "<%{public}@ %{public}@> didFailNavigation url:%{mask.hash}@ error: %{public}@", buf, 0x34u);
  }

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1C780;
  v19[3] = &unk_328A48;
  objc_copyWeak(&v22, &location);
  v19[4] = self;
  v17 = v12;
  v20 = v17;
  v18 = errorCopy;
  v21 = v18;
  [(BENavigationHandler *)self _notifyLoadFailureError:v18 completion:v19];

  objc_destroyWeak(&v22);
  objc_destroyWeak(&location);
}

- (void)_webView:(id)view webContentProcessDidTerminateWithReason:(int64_t)reason
{
  viewCopy = view;
  v7 = [viewCopy URL];
  v8 = _BookEPUBLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    be_identifier = [viewCopy be_identifier];
    v10 = [NSNumber numberWithInteger:reason];
    v12 = 138544130;
    v13 = be_identifier;
    v14 = 2160;
    v15 = 1752392040;
    v16 = 2112;
    v17 = v7;
    v18 = 2114;
    v19 = v10;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_ERROR, "webView %{public}@ url: %{mask.hash}@ - webContentProcessDidTerminateWithReason: %{public}@", &v12, 0x2Au);
  }

  if ((reason - 1) >= 4)
  {
    reasonCopy = 0;
  }

  else
  {
    reasonCopy = reason;
  }

  [(BENavigationHandler *)self _webView:viewCopy contentFailedToLoadWithReason:reasonCopy];
}

- (void)_contentLoadTimeout
{
  webView = [(BENavigationHandler *)self webView];
  v4 = [webView URL];
  v5 = _BookEPUBLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    be_identifier = [webView be_identifier];
    v7 = 138543874;
    v8 = be_identifier;
    v9 = 2160;
    v10 = 1752392040;
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "webView: %{public}@ url: %{mask.hash}@ - _contentLoadTimeout", &v7, 0x20u);
  }

  [(BENavigationHandler *)self _webView:webView contentFailedToLoadWithReason:32];
}

- (void)_reloadTimeout
{
  [(BENavigationHandler *)self setReloadTimeoutActive:0];
  webView = [(BENavigationHandler *)self webView];
  if (webView)
  {
    v4 = +[UIApplication sharedApplication];
    applicationState = [v4 applicationState];

    if (applicationState == &dword_0 + 2)
    {
      [webView setBe_requiresReload:1];
      v6 = _BookEPUBLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        be_identifier = [webView be_identifier];
        v11 = 138543362;
        v12 = be_identifier;
        _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "webView: %{public}@ Received reloadTimeout, but we are backgrounded.  Ignoring.", &v11, 0xCu);
LABEL_13:
      }
    }

    else
    {
      v6 = [webView URL];
      v8 = _BookEPUBLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        be_identifier2 = [webView be_identifier];
        v11 = 138543874;
        v12 = be_identifier2;
        v13 = 2160;
        v14 = 1752392040;
        v15 = 2112;
        v16 = v6;
        _os_log_impl(&dword_0, v8, OS_LOG_TYPE_ERROR, "webView: %{public}@ url: %{mask.hash}@ - _reloadTimeout", &v11, 0x20u);
      }

      if (!v6)
      {
        be_identifier = _BookEPUBLog();
        if (os_log_type_enabled(be_identifier, OS_LOG_TYPE_ERROR))
        {
          be_identifier3 = [webView be_identifier];
          v11 = 138543362;
          v12 = be_identifier3;
          _os_log_impl(&dword_0, be_identifier, OS_LOG_TYPE_ERROR, "webView: %{public}@ Received reloadTimeout, but our webView has no url.  Ignoring.", &v11, 0xCu);
        }

        goto LABEL_13;
      }

      [(BENavigationHandler *)self _webView:webView contentFailedToLoadWithReason:64];
    }
  }

  else
  {
    v6 = _BookEPUBLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v11) = 0;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "Received reloadTimeout, but our webView is gone.  Ignoring.", &v11, 2u);
    }
  }
}

- (void)_provisionalLoadTimeout
{
  webView = [(BENavigationHandler *)self webView];
  v4 = [webView URL];
  v5 = _BookEPUBLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    be_identifier = [webView be_identifier];
    v7 = 138543874;
    v8 = be_identifier;
    v9 = 2160;
    v10 = 1752392040;
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "webView: %{public}@ url: %{mask.hash}@ - _provisionalLoadTimeout #LOADTIMEOUT!", &v7, 0x20u);
  }

  [(BENavigationHandler *)self _webView:webView contentFailedToLoadWithReason:32];
}

- (void)attemptReload
{
  webView = [(BENavigationHandler *)self webView];
  if (webView)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    allObservers = [(BENavigationHandler *)self allObservers];
    v5 = [allObservers countByEnumeratingWithState:&v19 objects:v31 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v20;
      do
      {
        v8 = 0;
        do
        {
          if (*v20 != v7)
          {
            objc_enumerationMutation(allObservers);
          }

          v9 = *(*(&v19 + 1) + 8 * v8);
          if (objc_opt_respondsToSelector())
          {
            [v9 navigationHandlerWebContentProcessAttemptingReload:self];
          }

          v8 = v8 + 1;
        }

        while (v6 != v8);
        v6 = [allObservers countByEnumeratingWithState:&v19 objects:v31 count:16];
      }

      while (v6);
    }

    reloadFromOrigin = [webView reloadFromOrigin];
    v11 = [webView URL];
    v12 = _BookEPUBLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      be_identifier = [webView be_identifier];
      *buf = 138543874;
      v24 = be_identifier;
      v25 = 2160;
      v26 = 1752392040;
      v27 = 2112;
      v28 = v11;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "webView: %{public}@ Attempting reload of url: %{mask.hash}@", buf, 0x20u);
    }

    if (reloadFromOrigin | v11)
    {
      [(BENavigationHandler *)self setRetryCount:[(BENavigationHandler *)self retryCount]+ 1];
      v14 = _BookEPUBLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        retryCount = [(BENavigationHandler *)self retryCount];
        maxReloadAttempts = [(BENavigationHandler *)self maxReloadAttempts];
        *buf = 141558786;
        v24 = 1752392040;
        v25 = 2112;
        v26 = v11;
        v27 = 2048;
        v28 = retryCount;
        v29 = 2048;
        v30 = maxReloadAttempts;
        _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "Attempting reload of url: %{mask.hash}@ - %ld/%ldattempts", buf, 0x2Au);
      }

      objc_opt_class();
      v17 = BUDynamicCast();
      v18 = [v17 be_updateAXValueForMessage:&__kCFBooleanTrue];
      [v17 be_updateAXCurrentReadingStateWithMessage:@"BEWebProcessPluginNeedsReloadParameterKey" forValue:v18];

      [v17 be_enableAX];
      [v17 setBe_requiresReload:0];
      [(BENavigationHandler *)self _startReloadTimeout];
    }

    else
    {
      v17 = _BookEPUBLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v24 = @"navigation";
        v25 = 2112;
        v26 = @"url";
        _os_log_impl(&dword_0, v17, OS_LOG_TYPE_ERROR, "Attempting reload, but we don't have %@ %@", buf, 0x16u);
      }
    }
  }
}

- (void)_webView:(id)view contentFailedToLoadWithReason:(unint64_t)reason
{
  viewCopy = view;
  v7 = viewCopy;
  if (viewCopy)
  {
    [viewCopy be_clearRegisteredFonts];
    if (reason <= 2)
    {
      switch(reason)
      {
        case 0uLL:
          v8 = @"Memory Limit";
          goto LABEL_21;
        case 1uLL:
          v8 = @"CPU Limit";
          goto LABEL_21;
        case 2uLL:
          v8 = @"Client Request";
          goto LABEL_21;
      }
    }

    else if (reason > 31)
    {
      if (reason == 32)
      {
        v8 = @"Internal Timeout";
        goto LABEL_21;
      }

      if (reason == 64)
      {
        v8 = @"Reload Timeout";
        goto LABEL_21;
      }
    }

    else
    {
      if (reason == 3)
      {
        v8 = @"Crash";
        goto LABEL_21;
      }

      if (reason == 4)
      {
        v8 = @"Exceeded Shared Process Crash Limit";
LABEL_21:
        v9 = [v7 URL];
        v10 = _BookEPUBLog();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
        {
          be_identifier = [v7 be_identifier];
          v12 = [NSNumber numberWithUnsignedInteger:reason];
          *buf = 138544386;
          v49 = be_identifier;
          v50 = 2160;
          v51 = 1752392040;
          v52 = 2112;
          v53 = v9;
          v54 = 2114;
          v55 = v8;
          v56 = 2114;
          v57 = v12;
          _os_log_impl(&dword_0, v10, OS_LOG_TYPE_FAULT, "webView:%{public}@ url: %{mask.hash}@ - contentFailedToLoadWithReason: %{public}@(%{public}@)", buf, 0x34u);
        }

        if (v9)
        {
          retryCount = [(BENavigationHandler *)self retryCount];
          if (retryCount >= [(BENavigationHandler *)self maxReloadAttempts])
          {
            [v7 setBe_requiresReload:1];
            v45 = NSDebugDescriptionErrorKey;
            v46 = v8;
            v24 = [NSDictionary dictionaryWithObjects:&v46 forKeys:&v45 count:1];
            v25 = [NSError errorWithDomain:WKErrorDomain code:reason userInfo:v24];

            v26 = _BookEPUBLog();
            if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
            {
              be_identifier2 = [v7 be_identifier];
              v28 = [NSNumber numberWithUnsignedInteger:reason];
              *buf = 138544386;
              v49 = be_identifier2;
              v50 = 2160;
              v51 = 1752392040;
              v52 = 2112;
              v53 = v9;
              v54 = 2114;
              v55 = v8;
              v56 = 2114;
              v57 = v28;
              _os_log_impl(&dword_0, v26, OS_LOG_TYPE_DEFAULT, "webView:%{public}@ Max reload attempts reached for url: %{mask.hash}@ reason: %{public}@(%{public}@).", buf, 0x34u);
            }

            v38 = 0u;
            v39 = 0u;
            v36 = 0u;
            v37 = 0u;
            allObservers = [(BENavigationHandler *)self allObservers];
            v30 = [allObservers countByEnumeratingWithState:&v36 objects:v44 count:16];
            if (v30)
            {
              v31 = v30;
              v32 = *v37;
              do
              {
                for (i = 0; i != v31; i = i + 1)
                {
                  if (*v37 != v32)
                  {
                    objc_enumerationMutation(allObservers);
                  }

                  v34 = *(*(&v36 + 1) + 8 * i);
                  if (objc_opt_respondsToSelector())
                  {
                    [v34 navigationHandlerWebContentLoadFailed:self reason:v25];
                  }
                }

                v31 = [allObservers countByEnumeratingWithState:&v36 objects:v44 count:16];
              }

              while (v31);
            }

            [(BENavigationHandler *)self _notifyLoadFailureError:v25 completion:&stru_328A68];
          }

          else
          {
            v14 = +[UIApplication sharedApplication];
            applicationState = [v14 applicationState];

            if (applicationState == &dword_0 + 2)
            {
              v16 = _BookEPUBLog();
              if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
              {
                be_identifier3 = [v7 be_identifier];
                *buf = 138543362;
                v49 = be_identifier3;
                _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "Application is in the background.  Marking reload required for webView:%{public}@", buf, 0xCu);
              }

              [v7 setBe_requiresReload:1];
            }

            else
            {
              [(BENavigationHandler *)self attemptReload];
            }
          }
        }

        else
        {
          v42 = 0u;
          v43 = 0u;
          v40 = 0u;
          v41 = 0u;
          allObservers2 = [(BENavigationHandler *)self allObservers];
          v19 = [allObservers2 countByEnumeratingWithState:&v40 objects:v47 count:16];
          if (v19)
          {
            v20 = v19;
            v21 = *v41;
            do
            {
              for (j = 0; j != v20; j = j + 1)
              {
                if (*v41 != v21)
                {
                  objc_enumerationMutation(allObservers2);
                }

                v23 = *(*(&v40 + 1) + 8 * j);
                if (objc_opt_respondsToSelector())
                {
                  [v23 navigationHandlerWebContentProcessFailedWithNoURL:v7];
                }
              }

              v20 = [allObservers2 countByEnumeratingWithState:&v40 objects:v47 count:16];
            }

            while (v20);
          }
        }

        pendingMainFrameLoadURLResponse = self->_pendingMainFrameLoadURLResponse;
        self->_pendingMainFrameLoadURLResponse = 0;

        goto LABEL_53;
      }
    }

    v8 = @"<Unhandled Case>";
    goto LABEL_21;
  }

  v9 = _BookEPUBLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_ERROR, "Content failed to load but we did not capture an associated webView! This means we can't call reload and we're stuck with a failed webview. We won't attempt to reload", buf, 2u);
  }

LABEL_53:
}

- (void)_webView:(id)view renderingProgressDidChange:(unint64_t)change
{
  changeCopy = change;
  viewCopy = view;
  if ((changeCopy & 0x100) != 0)
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    allObservers = [(BENavigationHandler *)self allObservers];
    v13 = [allObservers countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v23;
      do
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v23 != v15)
          {
            objc_enumerationMutation(allObservers);
          }

          v17 = *(*(&v22 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            [v17 navigationHandlerFirstSignificantPaintCompleted:self];
          }
        }

        v14 = [allObservers countByEnumeratingWithState:&v22 objects:v27 count:16];
      }

      while (v14);
    }

    goto LABEL_22;
  }

  if ((changeCopy & 0x40) != 0)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    allObservers = [(BENavigationHandler *)self allObservers];
    v8 = [allObservers countByEnumeratingWithState:&v18 objects:v26 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v19;
      do
      {
        for (j = 0; j != v9; j = j + 1)
        {
          if (*v19 != v10)
          {
            objc_enumerationMutation(allObservers);
          }

          v12 = *(*(&v18 + 1) + 8 * j);
          if (objc_opt_respondsToSelector())
          {
            [v12 navigationHandlerFirstPaintCompleted:self];
          }
        }

        v9 = [allObservers countByEnumeratingWithState:&v18 objects:v26 count:16];
      }

      while (v9);
    }

LABEL_22:
  }
}

- (void)userContentController:(id)controller didReceiveScriptMessage:(id)message
{
  name = [message name];
  v6 = [name isEqualToString:@"BENavigationHandlerJSLoadComplete"];

  if (v6)
  {
    [(BENavigationHandler *)self setJavascriptLoadComplete:1];

    [(BENavigationHandler *)self _notifyLoadCompleteIfNecessary];
  }
}

- (BOOL)_navigationIsUserInitiatedAndNotYetApproved:(id)approved
{
  approvedCopy = approved;
  if (-[BEDocumentExternalLoadApprovalCache didApproveLoadingExternalContentForBookID:](self->_approvalCache, "didApproveLoadingExternalContentForBookID:", self->_bookID) || [approvedCopy navigationType])
  {
    _isUserInitiated = 0;
  }

  else
  {
    _isUserInitiated = [approvedCopy _isUserInitiated];
  }

  return _isUserInitiated;
}

- (void)_decidePolicyForFootnoteOrPreviewNavigationAction:(id)action shouldObserveProvisionalLoadTimeout:(BOOL *)timeout webView:(id)view decisionHandler:(id)handler
{
  actionCopy = action;
  viewCopy = view;
  handlerCopy = handler;
  request = [actionCopy request];
  v14 = [request URL];
  absoluteURL = [v14 absoluteURL];
  standardizedURL = [absoluteURL standardizedURL];

  fragment = [standardizedURL fragment];
  LOBYTE(v14) = [fragment hasSuffix:@"__ibooks_ignore_load"];

  if (v14)
  {
    v18 = 0;
    goto LABEL_31;
  }

  if (BEURLHandlerURLIsApprovedToLoad(standardizedURL))
  {
    v18 = 1;
    goto LABEL_31;
  }

  delegate = [(BENavigationHandler *)self delegate];
  targetFrame = [actionCopy targetFrame];
  if (BEURLHandlerSchemeIsOkForBookToLoad(standardizedURL))
  {
    if (targetFrame)
    {
      if ([targetFrame isMainFrame])
      {
        if (objc_opt_respondsToSelector())
        {
          v21 = [delegate navigationHandler:self handleInternalLoadRequest:standardizedURL];
        }

        else if (objc_opt_respondsToSelector())
        {
          urlForNavigationHandler = [delegate urlForNavigationHandler];
          v21 = [standardizedURL be_isEquivalentToURL:urlForNavigationHandler ignoringFragment:1];
        }

        else
        {
          v21 = 1;
        }

        if (timeout)
        {
          *timeout = v21;
        }

        goto LABEL_30;
      }

      goto LABEL_27;
    }

    if (objc_opt_respondsToSelector())
    {
      [delegate navigationHandler:self handleInternalLoadRequestForNewWindow:standardizedURL];
    }

LABEL_29:
    v21 = 0;
    goto LABEL_30;
  }

  if (!targetFrame || [targetFrame isMainFrame])
  {
    if (objc_opt_respondsToSelector())
    {
      [delegate navigationHandler:self handleExternalLoadRequest:standardizedURL likelyUserInitiated:{objc_msgSend(actionCopy, "navigationType") == 0}];
    }

    goto LABEL_29;
  }

  urlForExternalIframeAuthorization = [(BEExternalIframeJS *)self->_externalIframeJS urlForExternalIframeAuthorization];
  if ([standardizedURL isEqual:urlForExternalIframeAuthorization])
  {

    goto LABEL_21;
  }

  v24 = [(BENavigationHandler *)self _navigationIsUserInitiatedAndNotYetApproved:actionCopy];

  if (v24)
  {
LABEL_21:
    if (objc_opt_respondsToSelector())
    {
      v25 = self->_approvalCache;
      postApprovalToLoadScript = [(BEExternalIframeJS *)self->_externalIframeJS postApprovalToLoadScript];
      v27 = self->_bookID;
      v36[0] = _NSConcreteStackBlock;
      v36[1] = 3221225472;
      v36[2] = sub_1DF24;
      v36[3] = &unk_328B10;
      v37 = v25;
      v38 = v27;
      v39 = viewCopy;
      v40 = postApprovalToLoadScript;
      v28 = postApprovalToLoadScript;
      v29 = v27;
      v30 = v25;
      [delegate navigationHandler:self handleUserRequestForFrameToLoadExternalURL:standardizedURL completion:v36];
    }

    goto LABEL_29;
  }

  if (![(BEDocumentExternalLoadApprovalCache *)self->_approvalCache didApproveLoadingExternalContentForBookID:self->_bookID])
  {
    v31 = [(BEExternalIframeJS *)self->_externalIframeJS preApprovalToLoadScriptForURL:standardizedURL];
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_1E148;
    v34[3] = &unk_328B38;
    v35 = standardizedURL;
    [viewCopy evaluateJavaScript:v31 completionHandler:v34];

    goto LABEL_29;
  }

LABEL_27:
  v21 = 1;
LABEL_30:

  v18 = v21;
LABEL_31:
  v32 = objc_retainBlock(handlerCopy);
  v33 = v32;
  if (v32)
  {
    (*(v32 + 2))(v32, v18);
  }
}

- (BENavigationHandlerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (WKWebView)webView
{
  WeakRetained = objc_loadWeakRetained(&self->_webView);

  return WeakRetained;
}

@end