@interface SilentRequestPresenter
- (void)presentAuthenticateRequest:(id)request resultHandler:(id)handler;
- (void)presentDialogRequest:(id)request resultHandler:(id)handler;
- (void)presentEngagementRequest:(id)request withClientInfo:(id)info resultHandler:(id)handler;
@end

@implementation SilentRequestPresenter

- (void)presentAuthenticateRequest:(id)request resultHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = sub_100311AB0;
  v29 = sub_100311AC0;
  v30 = 0;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1003134BC;
  v21[3] = &unk_100522DC0;
  v8 = requestCopy;
  v22 = v8;
  v9 = handlerCopy;
  v23 = v9;
  v24 = &v25;
  v10 = objc_retainBlock(v21);
  options = [v8 options];
  authenticationType = [options authenticationType];

  if (authenticationType > 1)
  {
    performAuthentication = ASDErrorWithUserInfoAndFormat();
    (v10[2])(v10, 0, performAuthentication);
  }

  else
  {
    v13 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      logKey = [v8 logKey];
      *buf = 138543362;
      v32 = logKey;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[%{public}@] Presenting authentication request silently", buf, 0xCu);
    }

    sub_1002BE850(v8);
    v15 = [AMSAuthenticateTask alloc];
    v16 = +[BagService appstoredService];
    amsBag = [v16 amsBag];
    v18 = [v15 initWithRequest:v8 bag:amsBag];
    v19 = v26[5];
    v26[5] = v18;

    [v26[5] setDelegate:self];
    performAuthentication = [v26[5] performAuthentication];
    [performAuthentication addFinishBlock:v10];
  }

  _Block_object_dispose(&v25, 8);
}

- (void)presentDialogRequest:(id)request resultHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  v7 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    logKey = [requestCopy logKey];
    v10 = 138543362;
    v11 = logKey;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Dialogs cannot be presented silently, failing request", &v10, 0xCu);
  }

  v9 = ASDErrorWithUserInfoAndFormat();
  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, 0, v9);
  }

  if (requestCopy)
  {
    sub_100406ED0(requestCopy, 0, v9, &stru_1005287C8);
  }
}

- (void)presentEngagementRequest:(id)request withClientInfo:(id)info resultHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  v8 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    logKey = [requestCopy logKey];
    v11 = 138543362;
    v12 = logKey;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Engagements cannot be presented silently, failing request", &v11, 0xCu);
  }

  v10 = ASDErrorWithUserInfoAndFormat();
  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, 0, v10);
  }
}

@end