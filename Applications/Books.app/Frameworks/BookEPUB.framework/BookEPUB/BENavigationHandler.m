@interface BENavigationHandler
- (BENavigationHandler)initWithMode:(unint64_t)a3;
- (BENavigationHandlerDelegate)delegate;
- (BOOL)_navigationIsUserInitiatedAndNotYetApproved:(id)a3;
- (WKWebView)webView;
- (id)allObservers;
- (void)_cancelProvisionalLoadTimeout;
- (void)_cancelReloadTimeout;
- (void)_cancelTimeout;
- (void)_contentLoadTimeout;
- (void)_decidePolicyForFootnoteOrPreviewNavigationAction:(id)a3 shouldObserveProvisionalLoadTimeout:(BOOL *)a4 webView:(id)a5 decisionHandler:(id)a6;
- (void)_notifyLoadCompleteIfNecessary;
- (void)_notifyLoadFailureError:(id)a3 completion:(id)a4;
- (void)_provisionalLoadTimeout;
- (void)_reloadTimeout;
- (void)_startContentLoadTimeout;
- (void)_startReloadTimeout;
- (void)_webView:(id)a3 contentFailedToLoadWithReason:(unint64_t)a4;
- (void)_webView:(id)a3 renderingProgressDidChange:(unint64_t)a4;
- (void)_webView:(id)a3 webContentProcessDidTerminateWithReason:(int64_t)a4;
- (void)addObserver:(id)a3;
- (void)attemptReload;
- (void)dealloc;
- (void)performAfterLoadCompleteOrFailure:(id)a3;
- (void)removeObserver:(id)a3;
- (void)requestCancelationOfCurrentNavigation;
- (void)setDelegate:(id)a3;
- (void)userContentController:(id)a3 didReceiveScriptMessage:(id)a4;
- (void)webView:(id)a3 decidePolicyForNavigationAction:(id)a4 decisionHandler:(id)a5;
- (void)webView:(id)a3 decidePolicyForNavigationResponse:(id)a4 decisionHandler:(id)a5;
- (void)webView:(id)a3 didFailNavigation:(id)a4 withError:(id)a5;
- (void)webView:(id)a3 didFailProvisionalNavigation:(id)a4 withError:(id)a5;
- (void)webView:(id)a3 didFinishNavigation:(id)a4;
- (void)webView:(id)a3 didStartProvisionalNavigation:(id)a4;
@end

@implementation BENavigationHandler

- (BENavigationHandler)initWithMode:(unint64_t)a3
{
  v10.receiver = self;
  v10.super_class = BENavigationHandler;
  v4 = [(BENavigationHandler *)&v10 init];
  if (v4)
  {
    v5 = +[BEDocumentExternalLoadApprovalCache sharedInstance];
    approvalCache = v4->_approvalCache;
    v4->_approvalCache = v5;

    v4->_mode = a3;
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

- (void)performAfterLoadCompleteOrFailure:(id)a3
{
  v4 = a3;
  postLoadCompleteOrFailureWork = self->_postLoadCompleteOrFailureWork;
  v10 = v4;
  if (!postLoadCompleteOrFailureWork)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_postLoadCompleteOrFailureWork;
    self->_postLoadCompleteOrFailureWork = v6;

    v4 = v10;
    postLoadCompleteOrFailureWork = self->_postLoadCompleteOrFailureWork;
  }

  v8 = [v4 copy];
  v9 = objc_retainBlock(v8);
  [(NSMutableArray *)postLoadCompleteOrFailureWork addObject:v9];
}

- (void)requestCancelationOfCurrentNavigation
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [(BENavigationHandler *)self allObservers];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v9 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          [v8 navigationHandlerWillCancelCurrentNavigation:self];
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (void)addObserver:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1B318;
  v5[3] = &unk_328358;
  v6 = self;
  v7 = a3;
  v4 = v7;
  os_unfair_lock_lock(&v6->_accessLock);
  sub_1B318(v5);
  os_unfair_lock_unlock(&self->_accessLock);
}

- (void)removeObserver:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1B474;
  v5[3] = &unk_328358;
  v6 = self;
  v7 = a3;
  v4 = v7;
  os_unfair_lock_lock(&v6->_accessLock);
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
  v9 = self;
  v10 = &v11;
  v3 = v6;
  os_unfair_lock_lock(&self->_accessLock);
  v7(v3);
  os_unfair_lock_unlock(&self->_accessLock);

  v4 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v4;
}

- (void)setDelegate:(id)a3
{
  v4 = a3;
  v8 = v4;
  if (v4)
  {
    [(BENavigationHandler *)self addObserver:v4];
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
    v3 = [(WKNavigationResponse *)self->_pendingMainFrameLoadURLResponse response];
    v4 = [v3 MIMEType];
    if ([v4 isEqualToString:@"application/xhtml+xml"])
    {

      goto LABEL_6;
    }

    v5 = [v4 isEqualToString:@"text/html"];

    if (v5)
    {
LABEL_6:
      if (![(BENavigationHandler *)self javascriptLoadComplete])
      {
        return;
      }
    }
  }

  v6 = [(NSMutableArray *)self->_postLoadCompleteOrFailureWork firstObject];
  if (v6)
  {
    [(NSMutableArray *)self->_postLoadCompleteOrFailureWork removeObjectAtIndex:0];
    v35[0] = _NSConcreteStackBlock;
    v35[1] = 3221225472;
    v35[2] = sub_1BB68;
    v35[3] = &unk_3286D0;
    v36 = self;
    v7 = v6[2];
    v8 = v36;
    v7(v6, 0, v35);
    v9 = v36;
  }

  else
  {
    v8 = [(BENavigationHandler *)self webView];
    v9 = [(BENavigationHandler *)self mainFrameNavigationURL];
    if (v9)
    {
      [(BENavigationHandler *)self setMainFrameNavigationURL:0];
      [(BENavigationHandler *)v8 setBe_hasPendingOperations:0];
      [(BENavigationHandler *)v8 setBe_hasCompletedLoad:1];
      [(BENavigationHandler *)v8 setBe_requiresReload:0];
      v10 = _BookEPUBLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = objc_opt_class();
        v12 = NSStringFromClass(v11);
        *buf = 138412802;
        v39 = v9;
        v40 = 2112;
        v41 = v12;
        v42 = 2048;
        v43 = v8;
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_INFO, "Notifying delegate load of %@ in <%@:%p> is complete & JS has been executed", buf, 0x20u);
      }

      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v13 = [(BENavigationHandler *)self allObservers];
      v14 = [v13 countByEnumeratingWithState:&v27 objects:v37 count:16];
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
              objc_enumerationMutation(v13);
            }

            v18 = *(*(&v27 + 1) + 8 * i);
            if (objc_opt_respondsToSelector())
            {
              [v18 navigationHandler:self didFinishLoadOfURL:v9];
            }
          }

          v15 = [v13 countByEnumeratingWithState:&v27 objects:v37 count:16];
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
        v41 = v8;
        _os_log_impl(&dword_0, v19, OS_LOG_TYPE_ERROR, "Notifying delegate of missing URL in <%@:%p>", buf, 0x16u);
      }

      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v13 = [(BENavigationHandler *)self allObservers];
      v22 = [v13 countByEnumeratingWithState:&v31 objects:v44 count:16];
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
              objc_enumerationMutation(v13);
            }

            v26 = *(*(&v31 + 1) + 8 * j);
            if (objc_opt_respondsToSelector())
            {
              [v26 navigationHandlerWebContentProcessFailedWithNoURL:v8];
            }
          }

          v23 = [v13 countByEnumeratingWithState:&v31 objects:v44 count:16];
        }

        while (v23);
      }
    }
  }
}

- (void)_notifyLoadFailureError:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(BENavigationHandler *)self _cancelTimeout];
  v8 = [(NSMutableArray *)self->_postLoadCompleteOrFailureWork firstObject];
  if (v8)
  {
    [(NSMutableArray *)self->_postLoadCompleteOrFailureWork removeObjectAtIndex:0];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1BD38;
    v13[3] = &unk_328A20;
    v14 = self;
    v15 = v6;
    v16 = v7;
    v9 = v8[2];
    v10 = v14;
    v9(v8, v15, v13);
  }

  else
  {
    v11 = _BookEPUBLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v18 = v6;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_ERROR, "Notifying delegate load Failure - %@", buf, 0xCu);
    }

    v12 = objc_retainBlock(v7);
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

- (void)webView:(id)a3 decidePolicyForNavigationAction:(id)a4 decisionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = 0;
  if ((self->_mode & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    [(BENavigationHandler *)self _decidePolicyForFootnoteOrPreviewNavigationAction:v9 shouldObserveProvisionalLoadTimeout:&v11 webView:v8 decisionHandler:v10];
  }

  else
  {
    [(BENavigationHandler *)self _decidePolicyForContentNavigationAction:v9 shouldObserveProvisionalLoadTimeout:&v11 webView:v8 decisionHandler:v10];
  }

  if (v11 == 1)
  {
    [(BENavigationHandler *)self _startProvisionalLoadTimeout];
  }
}

- (void)webView:(id)a3 decidePolicyForNavigationResponse:(id)a4 decisionHandler:(id)a5
{
  v11 = a4;
  v8 = a5;
  if ([v11 isForMainFrame])
  {
    objc_storeStrong(&self->_pendingMainFrameLoadURLResponse, a4);
  }

  v9 = objc_retainBlock(v8);
  v10 = v9;
  if (v9)
  {
    (*(v9 + 2))(v9, 1);
  }
}

- (void)webView:(id)a3 didStartProvisionalNavigation:(id)a4
{
  v6 = a3;
  v7 = [a4 _request];
  v8 = [v7 URL];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = [v6 URL];
  }

  v11 = v10;

  [(BENavigationHandler *)self setMainFrameNavigationURL:v11];
  [(BENavigationHandler *)self setWebViewLoadComplete:0];
  [(BENavigationHandler *)self setJavascriptLoadComplete:0];
  [(BENavigationHandler *)self setWebView:v6];
  [v6 setBe_hasPendingOperations:1];
  [v6 setBe_hasCompletedLoad:0];
  [(BENavigationHandler *)self _cancelReloadTimeout];
  [(BENavigationHandler *)self _cancelProvisionalLoadTimeout];
  [(BENavigationHandler *)self _startContentLoadTimeout];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v12 = [(BENavigationHandler *)self allObservers];
  v13 = [v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v18 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          [v17 navigationHandler:self didStartLoadOfURL:v11];
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v14);
  }
}

- (void)webView:(id)a3 didFailProvisionalNavigation:(id)a4 withError:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  [(BENavigationHandler *)self _cancelProvisionalLoadTimeout];
  objc_initWeak(&location, self);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1C37C;
  v13[3] = &unk_328A48;
  objc_copyWeak(&v16, &location);
  v13[4] = self;
  v11 = v9;
  v14 = v11;
  v12 = v10;
  v15 = v12;
  [(BENavigationHandler *)self _notifyLoadFailureError:v12 completion:v13];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

- (void)webView:(id)a3 didFinishNavigation:(id)a4
{
  [(BENavigationHandler *)self setRetryCount:0, a4];
  [(BENavigationHandler *)self setWebViewLoadComplete:1];
  [(BENavigationHandler *)self _notifyLoadCompleteIfNecessary];
  pendingMainFrameLoadURLResponse = self->_pendingMainFrameLoadURLResponse;
  self->_pendingMainFrameLoadURLResponse = 0;
}

- (void)webView:(id)a3 didFailNavigation:(id)a4 withError:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_initWeak(&location, self);
  v11 = [v9 _request];
  v12 = [v11 URL];

  v13 = _BookEPUBLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    v16 = [v8 be_identifier];
    *buf = 138544386;
    v25 = v15;
    v26 = 2114;
    v27 = v16;
    v28 = 2160;
    v29 = 1752392040;
    v30 = 2112;
    v31 = v12;
    v32 = 2114;
    v33 = v10;
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
  v18 = v10;
  v21 = v18;
  [(BENavigationHandler *)self _notifyLoadFailureError:v18 completion:v19];

  objc_destroyWeak(&v22);
  objc_destroyWeak(&location);
}

- (void)_webView:(id)a3 webContentProcessDidTerminateWithReason:(int64_t)a4
{
  v6 = a3;
  v7 = [v6 URL];
  v8 = _BookEPUBLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v9 = [v6 be_identifier];
    v10 = [NSNumber numberWithInteger:a4];
    v12 = 138544130;
    v13 = v9;
    v14 = 2160;
    v15 = 1752392040;
    v16 = 2112;
    v17 = v7;
    v18 = 2114;
    v19 = v10;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_ERROR, "webView %{public}@ url: %{mask.hash}@ - webContentProcessDidTerminateWithReason: %{public}@", &v12, 0x2Au);
  }

  if ((a4 - 1) >= 4)
  {
    v11 = 0;
  }

  else
  {
    v11 = a4;
  }

  [(BENavigationHandler *)self _webView:v6 contentFailedToLoadWithReason:v11];
}

- (void)_contentLoadTimeout
{
  v3 = [(BENavigationHandler *)self webView];
  v4 = [v3 URL];
  v5 = _BookEPUBLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = [v3 be_identifier];
    v7 = 138543874;
    v8 = v6;
    v9 = 2160;
    v10 = 1752392040;
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "webView: %{public}@ url: %{mask.hash}@ - _contentLoadTimeout", &v7, 0x20u);
  }

  [(BENavigationHandler *)self _webView:v3 contentFailedToLoadWithReason:32];
}

- (void)_reloadTimeout
{
  [(BENavigationHandler *)self setReloadTimeoutActive:0];
  v3 = [(BENavigationHandler *)self webView];
  if (v3)
  {
    v4 = +[UIApplication sharedApplication];
    v5 = [v4 applicationState];

    if (v5 == &dword_0 + 2)
    {
      [v3 setBe_requiresReload:1];
      v6 = _BookEPUBLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = [v3 be_identifier];
        v11 = 138543362;
        v12 = v7;
        _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "webView: %{public}@ Received reloadTimeout, but we are backgrounded.  Ignoring.", &v11, 0xCu);
LABEL_13:
      }
    }

    else
    {
      v6 = [v3 URL];
      v8 = _BookEPUBLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = [v3 be_identifier];
        v11 = 138543874;
        v12 = v9;
        v13 = 2160;
        v14 = 1752392040;
        v15 = 2112;
        v16 = v6;
        _os_log_impl(&dword_0, v8, OS_LOG_TYPE_ERROR, "webView: %{public}@ url: %{mask.hash}@ - _reloadTimeout", &v11, 0x20u);
      }

      if (!v6)
      {
        v7 = _BookEPUBLog();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          v10 = [v3 be_identifier];
          v11 = 138543362;
          v12 = v10;
          _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "webView: %{public}@ Received reloadTimeout, but our webView has no url.  Ignoring.", &v11, 0xCu);
        }

        goto LABEL_13;
      }

      [(BENavigationHandler *)self _webView:v3 contentFailedToLoadWithReason:64];
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
  v3 = [(BENavigationHandler *)self webView];
  v4 = [v3 URL];
  v5 = _BookEPUBLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = [v3 be_identifier];
    v7 = 138543874;
    v8 = v6;
    v9 = 2160;
    v10 = 1752392040;
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "webView: %{public}@ url: %{mask.hash}@ - _provisionalLoadTimeout #LOADTIMEOUT!", &v7, 0x20u);
  }

  [(BENavigationHandler *)self _webView:v3 contentFailedToLoadWithReason:32];
}

- (void)attemptReload
{
  v3 = [(BENavigationHandler *)self webView];
  if (v3)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v4 = [(BENavigationHandler *)self allObservers];
    v5 = [v4 countByEnumeratingWithState:&v19 objects:v31 count:16];
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
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v19 + 1) + 8 * v8);
          if (objc_opt_respondsToSelector())
          {
            [v9 navigationHandlerWebContentProcessAttemptingReload:self];
          }

          v8 = v8 + 1;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v19 objects:v31 count:16];
      }

      while (v6);
    }

    v10 = [v3 reloadFromOrigin];
    v11 = [v3 URL];
    v12 = _BookEPUBLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [v3 be_identifier];
      *buf = 138543874;
      v24 = v13;
      v25 = 2160;
      v26 = 1752392040;
      v27 = 2112;
      v28 = v11;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "webView: %{public}@ Attempting reload of url: %{mask.hash}@", buf, 0x20u);
    }

    if (v10 | v11)
    {
      [(BENavigationHandler *)self setRetryCount:[(BENavigationHandler *)self retryCount]+ 1];
      v14 = _BookEPUBLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = [(BENavigationHandler *)self retryCount];
        v16 = [(BENavigationHandler *)self maxReloadAttempts];
        *buf = 141558786;
        v24 = 1752392040;
        v25 = 2112;
        v26 = v11;
        v27 = 2048;
        v28 = v15;
        v29 = 2048;
        v30 = v16;
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

- (void)_webView:(id)a3 contentFailedToLoadWithReason:(unint64_t)a4
{
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    [v6 be_clearRegisteredFonts];
    if (a4 <= 2)
    {
      switch(a4)
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

    else if (a4 > 31)
    {
      if (a4 == 32)
      {
        v8 = @"Internal Timeout";
        goto LABEL_21;
      }

      if (a4 == 64)
      {
        v8 = @"Reload Timeout";
        goto LABEL_21;
      }
    }

    else
    {
      if (a4 == 3)
      {
        v8 = @"Crash";
        goto LABEL_21;
      }

      if (a4 == 4)
      {
        v8 = @"Exceeded Shared Process Crash Limit";
LABEL_21:
        v9 = [v7 URL];
        v10 = _BookEPUBLog();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
        {
          v11 = [v7 be_identifier];
          v12 = [NSNumber numberWithUnsignedInteger:a4];
          *buf = 138544386;
          v49 = v11;
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
          v13 = [(BENavigationHandler *)self retryCount];
          if (v13 >= [(BENavigationHandler *)self maxReloadAttempts])
          {
            [v7 setBe_requiresReload:1];
            v45 = NSDebugDescriptionErrorKey;
            v46 = v8;
            v24 = [NSDictionary dictionaryWithObjects:&v46 forKeys:&v45 count:1];
            v25 = [NSError errorWithDomain:WKErrorDomain code:a4 userInfo:v24];

            v26 = _BookEPUBLog();
            if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
            {
              v27 = [v7 be_identifier];
              v28 = [NSNumber numberWithUnsignedInteger:a4];
              *buf = 138544386;
              v49 = v27;
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
            v29 = [(BENavigationHandler *)self allObservers];
            v30 = [v29 countByEnumeratingWithState:&v36 objects:v44 count:16];
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
                    objc_enumerationMutation(v29);
                  }

                  v34 = *(*(&v36 + 1) + 8 * i);
                  if (objc_opt_respondsToSelector())
                  {
                    [v34 navigationHandlerWebContentLoadFailed:self reason:v25];
                  }
                }

                v31 = [v29 countByEnumeratingWithState:&v36 objects:v44 count:16];
              }

              while (v31);
            }

            [(BENavigationHandler *)self _notifyLoadFailureError:v25 completion:&stru_328A68];
          }

          else
          {
            v14 = +[UIApplication sharedApplication];
            v15 = [v14 applicationState];

            if (v15 == &dword_0 + 2)
            {
              v16 = _BookEPUBLog();
              if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
              {
                v17 = [v7 be_identifier];
                *buf = 138543362;
                v49 = v17;
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
          v18 = [(BENavigationHandler *)self allObservers];
          v19 = [v18 countByEnumeratingWithState:&v40 objects:v47 count:16];
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
                  objc_enumerationMutation(v18);
                }

                v23 = *(*(&v40 + 1) + 8 * j);
                if (objc_opt_respondsToSelector())
                {
                  [v23 navigationHandlerWebContentProcessFailedWithNoURL:v7];
                }
              }

              v20 = [v18 countByEnumeratingWithState:&v40 objects:v47 count:16];
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

- (void)_webView:(id)a3 renderingProgressDidChange:(unint64_t)a4
{
  v4 = a4;
  v6 = a3;
  if ((v4 & 0x100) != 0)
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v7 = [(BENavigationHandler *)self allObservers];
    v13 = [v7 countByEnumeratingWithState:&v22 objects:v27 count:16];
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
            objc_enumerationMutation(v7);
          }

          v17 = *(*(&v22 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            [v17 navigationHandlerFirstSignificantPaintCompleted:self];
          }
        }

        v14 = [v7 countByEnumeratingWithState:&v22 objects:v27 count:16];
      }

      while (v14);
    }

    goto LABEL_22;
  }

  if ((v4 & 0x40) != 0)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v7 = [(BENavigationHandler *)self allObservers];
    v8 = [v7 countByEnumeratingWithState:&v18 objects:v26 count:16];
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
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v18 + 1) + 8 * j);
          if (objc_opt_respondsToSelector())
          {
            [v12 navigationHandlerFirstPaintCompleted:self];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v18 objects:v26 count:16];
      }

      while (v9);
    }

LABEL_22:
  }
}

- (void)userContentController:(id)a3 didReceiveScriptMessage:(id)a4
{
  v5 = [a4 name];
  v6 = [v5 isEqualToString:@"BENavigationHandlerJSLoadComplete"];

  if (v6)
  {
    [(BENavigationHandler *)self setJavascriptLoadComplete:1];

    [(BENavigationHandler *)self _notifyLoadCompleteIfNecessary];
  }
}

- (BOOL)_navigationIsUserInitiatedAndNotYetApproved:(id)a3
{
  v4 = a3;
  if (-[BEDocumentExternalLoadApprovalCache didApproveLoadingExternalContentForBookID:](self->_approvalCache, "didApproveLoadingExternalContentForBookID:", self->_bookID) || [v4 navigationType])
  {
    v5 = 0;
  }

  else
  {
    v5 = [v4 _isUserInitiated];
  }

  return v5;
}

- (void)_decidePolicyForFootnoteOrPreviewNavigationAction:(id)a3 shouldObserveProvisionalLoadTimeout:(BOOL *)a4 webView:(id)a5 decisionHandler:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = [v10 request];
  v14 = [v13 URL];
  v15 = [v14 absoluteURL];
  v16 = [v15 standardizedURL];

  v17 = [v16 fragment];
  LOBYTE(v14) = [v17 hasSuffix:@"__ibooks_ignore_load"];

  if (v14)
  {
    v18 = 0;
    goto LABEL_31;
  }

  if (BEURLHandlerURLIsApprovedToLoad(v16))
  {
    v18 = 1;
    goto LABEL_31;
  }

  v19 = [(BENavigationHandler *)self delegate];
  v20 = [v10 targetFrame];
  if (BEURLHandlerSchemeIsOkForBookToLoad(v16))
  {
    if (v20)
    {
      if ([v20 isMainFrame])
      {
        if (objc_opt_respondsToSelector())
        {
          v21 = [v19 navigationHandler:self handleInternalLoadRequest:v16];
        }

        else if (objc_opt_respondsToSelector())
        {
          v23 = [v19 urlForNavigationHandler];
          v21 = [v16 be_isEquivalentToURL:v23 ignoringFragment:1];
        }

        else
        {
          v21 = 1;
        }

        if (a4)
        {
          *a4 = v21;
        }

        goto LABEL_30;
      }

      goto LABEL_27;
    }

    if (objc_opt_respondsToSelector())
    {
      [v19 navigationHandler:self handleInternalLoadRequestForNewWindow:v16];
    }

LABEL_29:
    v21 = 0;
    goto LABEL_30;
  }

  if (!v20 || [v20 isMainFrame])
  {
    if (objc_opt_respondsToSelector())
    {
      [v19 navigationHandler:self handleExternalLoadRequest:v16 likelyUserInitiated:{objc_msgSend(v10, "navigationType") == 0}];
    }

    goto LABEL_29;
  }

  v22 = [(BEExternalIframeJS *)self->_externalIframeJS urlForExternalIframeAuthorization];
  if ([v16 isEqual:v22])
  {

    goto LABEL_21;
  }

  v24 = [(BENavigationHandler *)self _navigationIsUserInitiatedAndNotYetApproved:v10];

  if (v24)
  {
LABEL_21:
    if (objc_opt_respondsToSelector())
    {
      v25 = self->_approvalCache;
      v26 = [(BEExternalIframeJS *)self->_externalIframeJS postApprovalToLoadScript];
      v27 = self->_bookID;
      v36[0] = _NSConcreteStackBlock;
      v36[1] = 3221225472;
      v36[2] = sub_1DF24;
      v36[3] = &unk_328B10;
      v37 = v25;
      v38 = v27;
      v39 = v11;
      v40 = v26;
      v28 = v26;
      v29 = v27;
      v30 = v25;
      [v19 navigationHandler:self handleUserRequestForFrameToLoadExternalURL:v16 completion:v36];
    }

    goto LABEL_29;
  }

  if (![(BEDocumentExternalLoadApprovalCache *)self->_approvalCache didApproveLoadingExternalContentForBookID:self->_bookID])
  {
    v31 = [(BEExternalIframeJS *)self->_externalIframeJS preApprovalToLoadScriptForURL:v16];
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_1E148;
    v34[3] = &unk_328B38;
    v35 = v16;
    [v11 evaluateJavaScript:v31 completionHandler:v34];

    goto LABEL_29;
  }

LABEL_27:
  v21 = 1;
LABEL_30:

  v18 = v21;
LABEL_31:
  v32 = objc_retainBlock(v12);
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