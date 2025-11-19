@interface FetchReceiptTask
- (void)AMSURLSession:(id)a3 task:(id)a4 handleAuthenticateRequest:(id)a5 completion:(id)a6;
- (void)AMSURLSession:(id)a3 task:(id)a4 handleDialogRequest:(id)a5 completion:(id)a6;
- (void)AMSURLSession:(id)a3 task:(id)a4 handleEngagementRequest:(id)a5 completion:(id)a6;
- (void)mainWithCompletionHandler:(id)a3;
@end

@implementation FetchReceiptTask

- (void)mainWithCompletionHandler:(id)a3
{
  v4 = a3;
  if (!*(&self->_customReceiptURL + 2))
  {
    v5 = objc_alloc_init(_TtC9appstored6LogKey);
    v6 = *(&self->_customReceiptURL + 2);
    *(&self->_customReceiptURL + 2) = v5;
  }

  v7 = *(&self->_delegate + 2);
  v32 = 0;
  v8 = v7;
  v9 = sub_10032FD34(self, v8, &v32);
  v10 = v32;

  if (ASDErrorIsEqual())
  {
    WeakRetained = objc_loadWeakRetained((&self->_accountMediaType + 2));
    v12 = objc_opt_respondsToSelector();

    v13 = ASDLogHandleForCategory();
    v14 = v13;
    if (v12)
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v15 = *(&self->_customReceiptURL + 2);
        v16 = *(&self->_delegate + 2);
        v17 = v15;
        v18 = sub_1003D0F60(v16);
        *buf = 138412546;
        v34 = v15;
        v35 = 2114;
        v36 = v18;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[%@] [%{public}@] Handling authentication request", buf, 0x16u);
      }

      v19 = +[AMSProcessInfo currentProcess];
      [v19 setAccountMediaType:*(&self->_account + 2)];
      v20 = objc_alloc_init(AMSAuthenticateOptions);
      [v20 setClientInfo:v19];
      [v20 setDebugReason:@"Receipt"];
      v21 = *(&self->_revoked + 1);
      if (v21)
      {
        v22 = v21;
      }

      else
      {
        v23 = [v19 accountMediaType];
        v22 = sub_100331288(self, v23);
      }

      v24 = [[AMSAuthenticateRequest alloc] initWithAccount:v22 options:v20];
      v25 = objc_loadWeakRetained((&self->_accountMediaType + 2));
      v30[0] = _NSConcreteStackBlock;
      v30[1] = 3221225472;
      v30[2] = sub_100331330;
      v30[3] = &unk_10051E040;
      v30[4] = self;
      v31 = v4;
      [v25 handleAuthenticateRequest:v24 resultHandler:v30];
    }

    else
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v26 = *(&self->_customReceiptURL + 2);
        v27 = *(&self->_delegate + 2);
        v28 = v26;
        v29 = sub_1003D0F60(v27);
        *buf = 138412546;
        v34 = v26;
        v35 = 2114;
        v36 = v29;
        _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "[%@] [%{public}@] No delegate to handle authentication request", buf, 0x16u);
      }

      (*(v4 + 2))(v4, v10);
    }
  }

  else
  {
    sub_100331400(self, v9, v10, v4);
  }
}

- (void)AMSURLSession:(id)a3 task:(id)a4 handleDialogRequest:(id)a5 completion:(id)a6
{
  v8 = a5;
  v9 = a6;
  v10 = sub_100331250(self);
  v11 = objc_opt_respondsToSelector();

  v12 = ASDLogHandleForCategory();
  v13 = v12;
  if (v11)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      if (self)
      {
        v14 = *(&self->_customReceiptURL + 2);
        v15 = *(&self->_delegate + 2);
        v16 = v14;
      }

      else
      {
        v14 = 0;
        v16 = 0;
        v15 = 0;
      }

      v17 = v15;
      v18 = sub_1003D0F60(v17);
      v25 = 138412546;
      v26 = v14;
      v27 = 2114;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[%@] [%{public}@] Handling dialog request", &v25, 0x16u);
    }

    v19 = sub_100331250(self);
    [v19 handleDialogRequest:v8 resultHandler:v9];
  }

  else
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      if (self)
      {
        v20 = *(&self->_customReceiptURL + 2);
        v21 = *(&self->_delegate + 2);
        v22 = v20;
      }

      else
      {
        v20 = 0;
        v22 = 0;
        v21 = 0;
      }

      v23 = v21;
      v24 = sub_1003D0F60(v23);
      v25 = 138412546;
      v26 = v20;
      v27 = 2114;
      v28 = v24;
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "[%@] [%{public}@] No delegate to handle dialog request", &v25, 0x16u);
    }

    v19 = ASDErrorWithDescription();
    v9[2](v9, 0, v19);
  }
}

- (void)AMSURLSession:(id)a3 task:(id)a4 handleAuthenticateRequest:(id)a5 completion:(id)a6
{
  v8 = a5;
  v9 = a6;
  v10 = sub_100331250(self);
  v11 = objc_opt_respondsToSelector();

  v12 = ASDLogHandleForCategory();
  v13 = v12;
  if (v11)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      if (self)
      {
        v14 = *(&self->_customReceiptURL + 2);
        v15 = *(&self->_delegate + 2);
        v16 = v14;
      }

      else
      {
        v14 = 0;
        v16 = 0;
        v15 = 0;
      }

      v17 = v15;
      v18 = sub_1003D0F60(v17);
      v25 = 138412546;
      v26 = v14;
      v27 = 2114;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[%@] [%{public}@] Handling authentication request", &v25, 0x16u);
    }

    v19 = sub_100331250(self);
    [v19 handleAuthenticateRequest:v8 resultHandler:v9];
  }

  else
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      if (self)
      {
        v20 = *(&self->_customReceiptURL + 2);
        v21 = *(&self->_delegate + 2);
        v22 = v20;
      }

      else
      {
        v20 = 0;
        v22 = 0;
        v21 = 0;
      }

      v23 = v21;
      v24 = sub_1003D0F60(v23);
      v25 = 138412546;
      v26 = v20;
      v27 = 2114;
      v28 = v24;
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "[%@] [%{public}@] No delegate to handle authentication request", &v25, 0x16u);
    }

    v19 = ASDErrorWithDescription();
    v9[2](v9, 0, v19);
  }
}

- (void)AMSURLSession:(id)a3 task:(id)a4 handleEngagementRequest:(id)a5 completion:(id)a6
{
  v8 = a5;
  v9 = a6;
  v10 = sub_100331250(self);
  v11 = objc_opt_respondsToSelector();

  v12 = ASDLogHandleForCategory();
  v13 = v12;
  if (v11)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      if (self)
      {
        v14 = *(&self->_customReceiptURL + 2);
        v15 = *(&self->_delegate + 2);
        v16 = v14;
      }

      else
      {
        v14 = 0;
        v16 = 0;
        v15 = 0;
      }

      v17 = v15;
      v18 = sub_1003D0F60(v17);
      v25 = 138412546;
      v26 = v14;
      v27 = 2114;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[%@] [%{public}@] Handling engagement request", &v25, 0x16u);
    }

    v19 = sub_100331250(self);
    [v19 handleEngagementRequest:v8 resultHandler:v9];
  }

  else
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      if (self)
      {
        v20 = *(&self->_customReceiptURL + 2);
        v21 = *(&self->_delegate + 2);
        v22 = v20;
      }

      else
      {
        v20 = 0;
        v22 = 0;
        v21 = 0;
      }

      v23 = v21;
      v24 = sub_1003D0F60(v23);
      v25 = 138412546;
      v26 = v20;
      v27 = 2114;
      v28 = v24;
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "[%@] [%{public}@] No delegate to handle engagement request", &v25, 0x16u);
    }

    v19 = ASDErrorWithDescription();
    v9[2](v9, 0, v19);
  }
}

@end