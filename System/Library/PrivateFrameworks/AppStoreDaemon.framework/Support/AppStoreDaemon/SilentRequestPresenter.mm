@interface SilentRequestPresenter
- (void)presentAuthenticateRequest:(id)a3 resultHandler:(id)a4;
- (void)presentDialogRequest:(id)a3 resultHandler:(id)a4;
- (void)presentEngagementRequest:(id)a3 withClientInfo:(id)a4 resultHandler:(id)a5;
@end

@implementation SilentRequestPresenter

- (void)presentAuthenticateRequest:(id)a3 resultHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
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
  v8 = v6;
  v22 = v8;
  v9 = v7;
  v23 = v9;
  v24 = &v25;
  v10 = objc_retainBlock(v21);
  v11 = [v8 options];
  v12 = [v11 authenticationType];

  if (v12 > 1)
  {
    v20 = ASDErrorWithUserInfoAndFormat();
    (v10[2])(v10, 0, v20);
  }

  else
  {
    v13 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [v8 logKey];
      *buf = 138543362;
      v32 = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[%{public}@] Presenting authentication request silently", buf, 0xCu);
    }

    sub_1002BE850(v8);
    v15 = [AMSAuthenticateTask alloc];
    v16 = +[BagService appstoredService];
    v17 = [v16 amsBag];
    v18 = [v15 initWithRequest:v8 bag:v17];
    v19 = v26[5];
    v26[5] = v18;

    [v26[5] setDelegate:self];
    v20 = [v26[5] performAuthentication];
    [v20 addFinishBlock:v10];
  }

  _Block_object_dispose(&v25, 8);
}

- (void)presentDialogRequest:(id)a3 resultHandler:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v5 logKey];
    v10 = 138543362;
    v11 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Dialogs cannot be presented silently, failing request", &v10, 0xCu);
  }

  v9 = ASDErrorWithUserInfoAndFormat();
  if (v6)
  {
    v6[2](v6, 0, v9);
  }

  if (v5)
  {
    sub_100406ED0(v5, 0, v9, &stru_1005287C8);
  }
}

- (void)presentEngagementRequest:(id)a3 withClientInfo:(id)a4 resultHandler:(id)a5
{
  v6 = a3;
  v7 = a5;
  v8 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v6 logKey];
    v11 = 138543362;
    v12 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Engagements cannot be presented silently, failing request", &v11, 0xCu);
  }

  v10 = ASDErrorWithUserInfoAndFormat();
  if (v7)
  {
    v7[2](v7, 0, v10);
  }
}

@end