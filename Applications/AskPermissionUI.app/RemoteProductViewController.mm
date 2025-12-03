@interface RemoteProductViewController
+ (id)metricsEventForAccount:(id)account request:(id)request action:(unint64_t)action;
- (UIViewController)childViewController;
- (id)_viewControllerProxy;
- (void)_forceOrientationBackToSupportedOrientation;
- (void)_presentErrorAlert;
- (void)_presentStoreProductViewController;
- (void)_presentWebProductViewController;
- (void)_updateRequestWithAction:(int64_t)action;
- (void)configureWithContext:(id)context completion:(id)completion;
- (void)productViewController:(id)controller didFinishWithResult:(int64_t)result;
- (void)productViewControllerDidFinishWithAction:(unint64_t)action;
@end

@implementation RemoteProductViewController

- (void)_forceOrientationBackToSupportedOrientation
{
  v7 = +[UIApplication sharedApplication];
  if ([v7 statusBarOrientation] - 3 <= 1 && (-[RemoteProductViewController supportedInterfaceOrientations](self, "supportedInterfaceOrientations") & 0x18) == 0)
  {
    if (!-[RemoteProductViewController isViewLoaded](self, "isViewLoaded") || (-[RemoteProductViewController view](self, "view"), v3 = objc_claimAutoreleasedReturnValue(), [v3 window], window = objc_claimAutoreleasedReturnValue(), v3, !window))
    {
      presentedViewController = [(RemoteProductViewController *)self presentedViewController];
      view = [presentedViewController view];
      window = [view window];

      if (!window)
      {
        window = +[UIWindow _applicationKeyWindow];
      }
    }

    [window _setRotatableViewOrientation:1 duration:1 force:0.0];
  }
}

- (void)configureWithContext:(id)context completion:(id)completion
{
  completionCopy = completion;
  userInfo = [context userInfo];
  v8 = [[ApprovalRequest alloc] initWithDictionary:userInfo];
  [(RemoteProductViewController *)self setRequest:v8];

  _viewControllerProxy = [(RemoteProductViewController *)self _viewControllerProxy];
  [_viewControllerProxy setDesiredHardwareButtonEvents:16];

  v10 = +[APLogConfig sharedUIServiceConfig];
  if (!v10)
  {
    v10 = +[APLogConfig sharedConfig];
  }

  oSLogObject = [v10 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v12 = objc_opt_class();
    v13 = v12;
    request = [(RemoteProductViewController *)self request];
    v15 = 138543618;
    v16 = v12;
    v17 = 2114;
    v18 = request;
    _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: Configured with context. Request payload: %{public}@", &v15, 0x16u);
  }

  completionCopy[2](completionCopy);
}

+ (id)metricsEventForAccount:(id)account request:(id)request action:(unint64_t)action
{
  requestCopy = request;
  accountCopy = account;
  v11 = +[APLogConfig sharedUIServiceConfig];
  if (!v11)
  {
    v11 = +[APLogConfig sharedConfig];
  }

  oSLogObject = [v11 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    actionCopy = action;
    v13 = AMSLogKey();
    v14 = objc_opt_class();
    v22 = a2;
    if (v13)
    {
      v15 = AMSLogKey();
      v16 = a2;
      v17 = v15;
      account = NSStringFromSelector(v16);
      [NSString stringWithFormat:@"%@: [%@] %@ ", v14, v17, account];
    }

    else
    {
      v17 = NSStringFromSelector(a2);
      [NSString stringWithFormat:@"%@: %@ ", v14, v17];
    }
    accountCopy2 = ;
    *buf = 138543618;
    v26 = accountCopy2;
    v27 = 2050;
    v28 = actionCopy;
    _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@Creating metrics event for action: %{public}ld", buf, 0x16u);
    if (v13)
    {

      accountCopy2 = account;
    }

    a2 = v22;
    action = actionCopy;
  }

  v19 = [APMetricsEvent metricsEventWithAccount:accountCopy request:requestCopy];

  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100001BB0;
  v24[3] = &unk_1000184D0;
  v24[4] = action;
  v24[5] = self;
  v24[6] = a2;
  v20 = [v19 thenWithBlock:v24];

  return v20;
}

- (void)_presentStoreProductViewController
{
  v3 = +[APLogConfig sharedUIServiceConfig];
  if (!v3)
  {
    v3 = +[APLogConfig sharedConfig];
  }

  oSLogObject = [v3 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = objc_opt_class();
    v5 = *(&buf + 4);
    _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: Presenting store product view controller", &buf, 0xCu);
  }

  v41 = 0;
  v42 = &v41;
  v43 = 0x2050000000;
  v6 = qword_10001F4B8;
  v44 = qword_10001F4B8;
  if (!qword_10001F4B8)
  {
    *&buf = _NSConcreteStackBlock;
    *(&buf + 1) = 3221225472;
    v48 = sub_100003B20;
    v49 = &unk_1000185E8;
    v50 = &v41;
    sub_100003B20(&buf);
    v6 = v42[3];
  }

  v7 = v6;
  _Block_object_dispose(&v41, 8);
  v8 = objc_alloc_init(v6);
  [v8 setDelegate:self];
  [v8 setAskToBuy:1];
  request = [(RemoteProductViewController *)self request];
  v10 = [request status] == -1;

  if (v10)
  {
    request2 = [(RemoteProductViewController *)self request];
    localizations = [request2 localizations];
    decline = [localizations decline];
    [v8 setCancelButtonTitle:decline];

    request3 = [(RemoteProductViewController *)self request];
    localizations2 = [request3 localizations];
    approve = [localizations2 approve];
    [v8 setRightBarButtonTitle:approve];

    [v8 setShowsRightBarButton:1];
    request4 = [(RemoteProductViewController *)self request];
    localizations3 = [request4 localizations];
    body = [localizations3 body];
    [v8 setPromptString:body];
  }

  else
  {
    [v8 setShowsRightBarButton:0];
  }

  v20 = +[UIDevice currentDevice];
  v21 = [v20 userInterfaceIdiom] == 1;

  if (v21)
  {
    [v8 setModalPresentationStyle:0];
  }

  presentationController = [v8 presentationController];
  [presentationController setDelegate:self];

  request5 = [(RemoteProductViewController *)self request];
  itemIdentifier = [request5 itemIdentifier];
  v25 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [itemIdentifier longLongValue]);

  request6 = [(RemoteProductViewController *)self request];
  v27 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [request6 isException]);

  v46[0] = v27;
  v41 = 0;
  v42 = &v41;
  v43 = 0x2020000000;
  v28 = qword_10001F4C8;
  v44 = qword_10001F4C8;
  v45[0] = @"isException";
  if (!qword_10001F4C8)
  {
    *&buf = _NSConcreteStackBlock;
    *(&buf + 1) = 3221225472;
    v48 = sub_100003CEC;
    v49 = &unk_1000185E8;
    v50 = &v41;
    v29 = sub_100003B78();
    v30 = dlsym(v29, "SKStoreProductParameterITunesItemIdentifier");
    *(v50[1] + 24) = v30;
    qword_10001F4C8 = *(v50[1] + 24);
    v28 = v42[3];
  }

  _Block_object_dispose(&v41, 8);
  if (!v28)
  {
    sub_10000D500();
  }

  v31 = *v28;
  v46[1] = v25;
  v45[1] = v31;
  v45[2] = @"askToBuyItem";
  v32 = v31;
  request7 = [(RemoteProductViewController *)self request];
  compile = [request7 compile];
  v46[2] = compile;
  v35 = [NSDictionary dictionaryWithObjects:v46 forKeys:v45 count:3];

  objc_initWeak(&buf, self);
  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_100002404;
  v39[3] = &unk_100018520;
  objc_copyWeak(&v40, &buf);
  [v8 loadProductWithParameters:v35 completionBlock:v39];
  view = [(RemoteProductViewController *)self view];
  window = [view window];
  _rootSheetPresentationController = [window _rootSheetPresentationController];
  [_rootSheetPresentationController _setShouldScaleDownBehindDescendantSheets:0];

  [(RemoteProductViewController *)self presentViewController:v8 animated:1 completion:0];
  [(RemoteProductViewController *)self setChildViewController:v8];
  objc_destroyWeak(&v40);
  objc_destroyWeak(&buf);
}

- (void)_presentWebProductViewController
{
  v3 = +[APLogConfig sharedUIServiceConfig];
  if (!v3)
  {
    v3 = +[APLogConfig sharedConfig];
  }

  oSLogObject = [v3 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138543362;
    v18 = objc_opt_class();
    v5 = v18;
    _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: Presenting web product view controller", &v17, 0xCu);
  }

  v6 = [WebProductViewController alloc];
  request = [(RemoteProductViewController *)self request];
  v8 = [(WebProductViewController *)v6 initWithRequest:request];

  [(WebProductViewController *)v8 setActionDelegate:self];
  v9 = [[UINavigationController alloc] initWithRootViewController:v8];
  v10 = +[UIColor systemBackgroundColor];
  navigationBar = [v9 navigationBar];
  [navigationBar setBackgroundColor:v10];

  navigationBar2 = [v9 navigationBar];
  [navigationBar2 setTranslucent:0];

  presentationController = [v9 presentationController];
  [presentationController setDelegate:self];

  view = [(RemoteProductViewController *)self view];
  window = [view window];
  _rootSheetPresentationController = [window _rootSheetPresentationController];
  [_rootSheetPresentationController _setShouldScaleDownBehindDescendantSheets:0];

  [(RemoteProductViewController *)self presentViewController:v9 animated:1 completion:0];
  [(RemoteProductViewController *)self setChildViewController:v8];
}

- (id)_viewControllerProxy
{
  objc_initWeak(&location, self);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100002908;
  v5[3] = &unk_100018548;
  objc_copyWeak(&v6, &location);
  v3 = [(RemoteProductViewController *)self _remoteViewControllerProxyWithErrorHandler:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);

  return v3;
}

- (void)_presentErrorAlert
{
  v3 = [Localizations stringWithKey:@"DEFAULT_ERROR_ACTION"];
  v4 = [Localizations stringWithKey:@"DEFAULT_ERROR_MESSAGE"];
  v5 = [Localizations stringWithKey:@"DEFAULT_ERROR_TITLE"];
  v6 = [UIAlertController alertControllerWithTitle:v5 message:v4 preferredStyle:1];
  objc_initWeak(&location, self);
  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = sub_100002BF8;
  v13 = &unk_100018570;
  objc_copyWeak(&v14, &location);
  v7 = [UIAlertAction actionWithTitle:v3 style:0 handler:&v10];
  [v6 addAction:{v7, v10, v11, v12, v13}];

  childViewController = [(RemoteProductViewController *)self childViewController];

  if (childViewController)
  {
    childViewController2 = [(RemoteProductViewController *)self childViewController];
    [childViewController2 presentViewController:v6 animated:1 completion:0];
  }

  else
  {
    [(RemoteProductViewController *)self presentViewController:v6 animated:1 completion:0];
  }

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

- (void)_updateRequestWithAction:(int64_t)action
{
  request = [(RemoteProductViewController *)self request];
  isMocked = [request isMocked];

  if (isMocked)
  {
    v7 = +[APLogConfig sharedUIServiceConfig];
    if (!v7)
    {
      v7 = +[APLogConfig sharedConfig];
    }

    oSLogObject = [v7 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v15 = objc_opt_class();
      v9 = v15;
      _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: Cannot update mocked request", buf, 0xCu);
    }
  }

  else
  {
    objc_initWeak(buf, self);
    request2 = [(RemoteProductViewController *)self request];
    requestIdentifier = [request2 requestIdentifier];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100002E34;
    v12[3] = &unk_100018548;
    objc_copyWeak(&v13, buf);
    [APRequestHandler updateRequestWithIdentifier:requestIdentifier action:action completion:v12];

    objc_destroyWeak(&v13);
    objc_destroyWeak(buf);
  }
}

- (void)productViewControllerDidFinishWithAction:(unint64_t)action
{
  v6 = +[APLogConfig sharedUIServiceConfig];
  if (!v6)
  {
    v6 = +[APLogConfig sharedConfig];
  }

  oSLogObject = [v6 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v8 = AMSLogKey();
    v9 = objc_opt_class();
    if (v8)
    {
      v10 = AMSLogKey();
      v3 = NSStringFromSelector(a2);
      [NSString stringWithFormat:@"%@: [%@] %@ ", v9, v10, v3];
    }

    else
    {
      v10 = NSStringFromSelector(a2);
      [NSString stringWithFormat:@"%@: %@ ", v9, v10];
    }
    v11 = ;
    *buf = 138543618;
    v31 = v11;
    v32 = 2050;
    actionCopy = action;
    _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@Product view controller finished. Action: %{public}ld", buf, 0x16u);
    if (v8)
    {

      v11 = v3;
    }
  }

  request = [(RemoteProductViewController *)self request];
  v13 = [request status] == -1;

  if (!v13)
  {
    action = 2;
  }

  v14 = +[APLogConfig sharedUIServiceConfig];
  if (!v14)
  {
    v14 = +[APLogConfig sharedConfig];
  }

  oSLogObject2 = [v14 OSLogObject];
  if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
  {
    v16 = AMSLogKey();
    v17 = objc_opt_class();
    if (v16)
    {
      v18 = AMSLogKey();
      v3 = NSStringFromSelector(a2);
      [NSString stringWithFormat:@"%@: [%@] %@ ", v17, v18, v3];
    }

    else
    {
      v18 = NSStringFromSelector(a2);
      [NSString stringWithFormat:@"%@: %@ ", v17, v18];
    }
    v19 = ;
    *buf = 138543362;
    v31 = v19;
    _os_log_impl(&_mh_execute_header, oSLogObject2, OS_LOG_TYPE_DEFAULT, "%{public}@Creating metrics event", buf, 0xCu);
    if (v16)
    {

      v19 = v3;
    }
  }

  v20 = objc_opt_class();
  account = [(RemoteProductViewController *)self account];
  request2 = [(RemoteProductViewController *)self request];
  v23 = [v20 metricsEventForAccount:account request:request2 action:action];
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_100003500;
  v29[3] = &unk_100018598;
  v29[4] = self;
  v29[5] = a2;
  [v23 resultWithCompletion:v29];

  if (action > 1)
  {
    if (action == 2)
    {
      [(RemoteProductViewController *)self dismissViewControllerAnimated:1 completion:0];
    }

    else if (action == 3)
    {
      [(RemoteProductViewController *)self _presentErrorAlert];
    }
  }

  else if (action)
  {
    if (action == 1)
    {
      objc_initWeak(buf, self);
      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_100003998;
      v25[3] = &unk_1000185C0;
      objc_copyWeak(&v26, buf);
      [(RemoteProductViewController *)self dismissViewControllerAnimated:1 completion:v25];
      objc_destroyWeak(&v26);
      objc_destroyWeak(buf);
    }
  }

  else
  {
    objc_initWeak(buf, self);
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_100003954;
    v27[3] = &unk_1000185C0;
    objc_copyWeak(&v28, buf);
    [(RemoteProductViewController *)self dismissViewControllerAnimated:1 completion:v27];
    objc_destroyWeak(&v28);
    objc_destroyWeak(buf);
  }
}

- (void)productViewController:(id)controller didFinishWithResult:(int64_t)result
{
  if (result)
  {
    v4 = 2 * (result != 5);
  }

  else
  {
    v4 = 1;
  }

  [(RemoteProductViewController *)self productViewControllerDidFinishWithAction:v4];
}

- (UIViewController)childViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_childViewController);

  return WeakRetained;
}

@end