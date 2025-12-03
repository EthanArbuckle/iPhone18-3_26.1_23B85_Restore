@interface PurchaseHistoryItemsRequest
- (void)AMSURLSession:(id)session task:(id)task handleAuthenticateRequest:(id)request completion:(id)completion;
- (void)authenticateTask:(id)task handleDialogRequest:(id)request completion:(id)completion;
@end

@implementation PurchaseHistoryItemsRequest

- (void)AMSURLSession:(id)session task:(id)task handleAuthenticateRequest:(id)request completion:(id)completion
{
  sessionCopy = session;
  taskCopy = task;
  requestCopy = request;
  completionCopy = completion;
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_token);
  }

  else
  {
    WeakRetained = 0;
  }

  notificationClient = [WeakRetained notificationClient];

  if (!notificationClient)
  {
    v16 = ASDLogHandleForCategory();
    v30 = sessionCopy;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      context = self->_context;
      if (context)
      {
        context = objc_getProperty(context, v17, 16, 1);
      }

      v27 = context;
      hashedDescription = [v27 hashedDescription];
      LODWORD(buf) = 138543362;
      *(&buf + 4) = hashedDescription;
      _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "Items request received auth challenge for:%{public}@ but found no notification client to pass on to. Attempting internal auth", &buf, 0xCu);

      v29 = completionCopy;
    }

    else
    {

      v18 = completionCopy;
      if (!self)
      {
LABEL_8:

        sessionCopy = v30;
        goto LABEL_9;
      }
    }

    v19 = requestCopy;
    v20 = objc_alloc_init(AMSAuthenticateOptions);
    [v20 setDebugReason:@"Purchase History Items"];
    [v20 setAuthenticationType:1];
    v21 = [AMSAuthenticateTask alloc];
    account = [v19 account];

    amsBag = [(Bag *)self->_bag amsBag];
    v24 = [v21 initWithAccount:account options:v20 bag:amsBag];

    [v24 setDelegate:self];
    performAuthentication = [v24 performAuthentication];
    *&buf = _NSConcreteStackBlock;
    *(&buf + 1) = 3221225472;
    v34 = sub_10032B590;
    v35 = &unk_10051E040;
    selfCopy = self;
    v37 = completionCopy;
    [performAuthentication resultWithCompletion:&buf];

    goto LABEL_8;
  }

  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_10032B3D0;
  v31[3] = &unk_10051E040;
  v31[4] = self;
  v32 = completionCopy;
  [notificationClient deliverAuthenticateRequest:requestCopy withResultHandler:v31];

LABEL_9:
}

- (void)authenticateTask:(id)task handleDialogRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  requestCopy = request;
  v9 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] Starting dialog task", buf, 0xCu);
  }

  v10 = [[AMSSystemAlertDialogTask alloc] initWithRequest:requestCopy];
  present = [v10 present];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10032B824;
  v13[3] = &unk_10051E068;
  v13[4] = self;
  v14 = completionCopy;
  v12 = completionCopy;
  [present addFinishBlock:v13];
}

@end