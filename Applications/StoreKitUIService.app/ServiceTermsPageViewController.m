@interface ServiceTermsPageViewController
- (BOOL)_checkEntitlementsWithError:(id *)a3;
- (id)_remoteViewControllerProxy;
- (void)_dismiss;
- (void)_dismissClientViewController;
- (void)_dismissWithAcceptance:(BOOL)a3;
- (void)_showViewControllerForAlertProxy:(id)a3;
- (void)_willAppearInRemoteViewController:(id)a3;
- (void)alertProxyDidCancel:(id)a3;
- (void)dealloc;
- (void)viewDidLoad;
- (void)viewServiceDidTerminateWithError:(id)a3;
@end

@implementation ServiceTermsPageViewController

- (void)dealloc
{
  [(ServiceAlertProxy *)self->_remoteAlertProxy setDelegate:0];
  [(SKTermsPageViewController *)self->_underlyingViewController setDelegate:0];
  v3.receiver = self;
  v3.super_class = ServiceTermsPageViewController;
  [(ServiceTermsPageViewController *)&v3 dealloc];
}

- (void)viewDidLoad
{
  v3 = [(ServiceTermsPageViewController *)self view];
  v4 = +[UIColor clearColor];
  [v3 setBackgroundColor:v4];

  v5.receiver = self;
  v5.super_class = ServiceTermsPageViewController;
  [(ServiceTermsPageViewController *)&v5 viewDidLoad];
}

- (void)viewServiceDidTerminateWithError:(id)a3
{
  v4 = a3;
  v5 = +[SSLogConfig sharedConfig];
  v6 = [v5 shouldLog];
  if ([v5 shouldLogToDisk])
  {
    v7 = v6 | 2;
  }

  else
  {
    v7 = v6;
  }

  v8 = [v5 OSLogObject];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = v7;
  }

  else
  {
    v9 = v7 & 2;
  }

  if (!v9)
  {
    goto LABEL_10;
  }

  v12 = 138412290;
  v13 = v4;
  LODWORD(v11) = 12;
  v10 = _os_log_send_and_compose_impl();

  if (v10)
  {
    v8 = [NSString stringWithCString:v10 encoding:4, &v12, v11];
    free(v10);
    SSFileLog();
LABEL_10:
  }

  [(ServiceTermsPageViewController *)self _dismissClientViewController];
}

- (void)_willAppearInRemoteViewController:(id)a3
{
  v4 = a3;
  [v4 setAllowsAlertStacking:1];
  [v4 setAllowsMenuButtonDismissal:1];
  [v4 setShouldDismissOnUILock:1];
  v5.receiver = self;
  v5.super_class = ServiceTermsPageViewController;
  [(ServiceTermsPageViewController *)&v5 _willAppearInRemoteViewController:v4];
}

- (void)alertProxyDidCancel:(id)a3
{
  v4 = +[SSLogConfig sharedConfig];
  v5 = [v4 shouldLog];
  if ([v4 shouldLogToDisk])
  {
    v6 = v5 | 2;
  }

  else
  {
    v6 = v5;
  }

  v7 = [v4 OSLogObject];
  if (!os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v6 &= 2u;
  }

  if (!v6)
  {
    goto LABEL_9;
  }

  LODWORD(v11) = 138412290;
  *(&v11 + 4) = objc_opt_class();
  v8 = *(&v11 + 4);
  LODWORD(v10) = 12;
  v9 = _os_log_send_and_compose_impl();

  if (v9)
  {
    v7 = [NSString stringWithCString:v9 encoding:4, &v11, v10, v11];
    free(v9);
    SSFileLog();
LABEL_9:
  }

  [(ServiceTermsPageViewController *)self _dismissClientViewController];
}

- (BOOL)_checkEntitlementsWithError:(id *)a3
{
  v9 = 0u;
  v10 = 0u;
  [(ServiceTermsPageViewController *)self _hostAuditToken];
  v7 = v9;
  v8 = v10;
  if (sub_10000D270(&v7, @"com.apple.ios.StoreKit.terms-page") || (v7 = v9, v8 = v10, sub_10000D270(&v7, kSSITunesStorePrivateEntitlement)))
  {
    v4 = 0;
    v5 = 1;
  }

  else
  {
    v4 = SSError();
    if (a3)
    {
      v4 = v4;
      v5 = 0;
      *a3 = v4;
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (void)_dismiss
{
  [(ServiceAlertProxy *)self->_remoteAlertProxy setDelegate:0];
  remoteAlertProxy = self->_remoteAlertProxy;
  self->_remoteAlertProxy = 0;

  v6 = [(ServiceTermsPageViewController *)self _remoteViewControllerProxy];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v6 setIdleTimerDisabled:0 forReason:v5];

  [v6 dismiss];
}

- (void)_dismissClientViewController
{
  if (self->_underlyingViewController)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000F62C;
    block[3] = &unk_100051148;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
  }
}

- (void)_dismissWithAcceptance:(BOOL)a3
{
  v5 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_BOOL(v5, "1", a3);
  [(ServiceAlertProxy *)self->_remoteAlertProxy finishWithResponse:v5];
  [(ServiceTermsPageViewController *)self _dismiss];
}

- (id)_remoteViewControllerProxy
{
  v4.receiver = self;
  v4.super_class = ServiceTermsPageViewController;
  v2 = [(ServiceTermsPageViewController *)&v4 _remoteViewControllerProxy];

  return v2;
}

- (void)_showViewControllerForAlertProxy:(id)a3
{
  v5 = a3;
  objc_storeStrong(&self->_remoteAlertProxy, a3);
  [(ServiceAlertProxy *)self->_remoteAlertProxy setDelegate:self];
  v6 = [v5 options];
  v7 = SSXPCCreateCFObjectFromXPCObject();

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v30 = 0;
    v8 = [(ServiceTermsPageViewController *)self _checkEntitlementsWithError:&v30];
    v9 = v30;
    if (v8)
    {
      underlyingViewController = self->_underlyingViewController;
      if (underlyingViewController)
      {
        goto LABEL_5;
      }

      v11 = [SKTermsPageViewController alloc];
      v12 = [v7 objectForKey:@"terms"];
      v13 = [v11 initWithTerms:v12];
      v14 = self->_underlyingViewController;
      self->_underlyingViewController = v13;

      [(SKTermsPageViewController *)self->_underlyingViewController setDelegate:self];
      underlyingViewController = self->_underlyingViewController;
      if (underlyingViewController)
      {
LABEL_5:
        [(ServiceTermsPageViewController *)self presentViewController:underlyingViewController animated:1 completion:0];
LABEL_27:

        goto LABEL_28;
      }

LABEL_26:
      [(ServiceTermsPageViewController *)self _dismiss];
      goto LABEL_27;
    }

    v21 = +[SSLogConfig sharedConfig];
    v22 = [v21 shouldLog];
    if ([v21 shouldLogToDisk])
    {
      v23 = v22 | 2;
    }

    else
    {
      v23 = v22;
    }

    v24 = [v21 OSLogObject];
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v23 &= 2u;
    }

    if (v23)
    {
      v25 = objc_opt_class();
      v31 = 138412290;
      v32 = v25;
      v26 = v25;
      LODWORD(v29) = 12;
      v28 = &v31;
      v27 = _os_log_send_and_compose_impl();

      if (!v27)
      {
LABEL_25:

        goto LABEL_26;
      }

      v24 = [NSString stringWithCString:v27 encoding:4, &v31, v29];
      free(v27);
      v28 = v24;
      SSFileLog();
    }

    goto LABEL_25;
  }

  v15 = +[SSLogConfig sharedConfig];
  v16 = [v15 shouldLog];
  if ([v15 shouldLogToDisk])
  {
    v17 = v16 | 2;
  }

  else
  {
    v17 = v16;
  }

  v18 = [v15 OSLogObject];
  if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v17 &= 2u;
  }

  if (!v17)
  {
    goto LABEL_14;
  }

  v31 = 138412290;
  v32 = objc_opt_class();
  v19 = v32;
  LODWORD(v29) = 12;
  v20 = _os_log_send_and_compose_impl();

  if (v20)
  {
    v18 = [NSString stringWithCString:v20 encoding:4, &v31, v29];
    free(v20);
    SSFileLog();
LABEL_14:
  }

  [(ServiceTermsPageViewController *)self _dismiss];
LABEL_28:
}

@end