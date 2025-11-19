@interface PurchaseHistoryItemsRequest
- (void)AMSURLSession:(id)a3 task:(id)a4 handleAuthenticateRequest:(id)a5 completion:(id)a6;
- (void)authenticateTask:(id)a3 handleDialogRequest:(id)a4 completion:(id)a5;
@end

@implementation PurchaseHistoryItemsRequest

- (void)AMSURLSession:(id)a3 task:(id)a4 handleAuthenticateRequest:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_token);
  }

  else
  {
    WeakRetained = 0;
  }

  v15 = [WeakRetained notificationClient];

  if (!v15)
  {
    v16 = ASDLogHandleForCategory();
    v30 = v10;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      context = self->_context;
      if (context)
      {
        context = objc_getProperty(context, v17, 16, 1);
      }

      v27 = context;
      v28 = [v27 hashedDescription];
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v28;
      _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "Items request received auth challenge for:%{public}@ but found no notification client to pass on to. Attempting internal auth", &buf, 0xCu);

      v29 = v13;
    }

    else
    {

      v18 = v13;
      if (!self)
      {
LABEL_8:

        v10 = v30;
        goto LABEL_9;
      }
    }

    v19 = v12;
    v20 = objc_alloc_init(AMSAuthenticateOptions);
    [v20 setDebugReason:@"Purchase History Items"];
    [v20 setAuthenticationType:1];
    v21 = [AMSAuthenticateTask alloc];
    v22 = [v19 account];

    v23 = [(Bag *)self->_bag amsBag];
    v24 = [v21 initWithAccount:v22 options:v20 bag:v23];

    [v24 setDelegate:self];
    v25 = [v24 performAuthentication];
    *&buf = _NSConcreteStackBlock;
    *(&buf + 1) = 3221225472;
    v34 = sub_10032B590;
    v35 = &unk_10051E040;
    v36 = self;
    v37 = v13;
    [v25 resultWithCompletion:&buf];

    goto LABEL_8;
  }

  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_10032B3D0;
  v31[3] = &unk_10051E040;
  v31[4] = self;
  v32 = v13;
  [v15 deliverAuthenticateRequest:v12 withResultHandler:v31];

LABEL_9:
}

- (void)authenticateTask:(id)a3 handleDialogRequest:(id)a4 completion:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v16 = self;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] Starting dialog task", buf, 0xCu);
  }

  v10 = [[AMSSystemAlertDialogTask alloc] initWithRequest:v8];
  v11 = [v10 present];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10032B824;
  v13[3] = &unk_10051E068;
  v13[4] = self;
  v14 = v7;
  v12 = v7;
  [v11 addFinishBlock:v13];
}

@end