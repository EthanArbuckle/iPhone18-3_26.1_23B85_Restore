@interface AMSDServiceConnection
- (AMSDServiceConnection)initWithConnection:(id)connection;
- (void)_provideService:(id)service delegate:(id)delegate withReply:(id)reply;
- (void)dealloc;
- (void)getAccountCachedServerDataServiceProxyWithReplyHandler:(id)handler;
- (void)getAccountManagementServiceProxyWithReplyHandler:(id)handler;
- (void)getAccountPostSignInServiceProxyWithReplyHandler:(id)handler;
- (void)getAccountSignOutServiceProxyWithReplyHandler:(id)handler;
- (void)getAutoBugCaptureServiceProxyWithReplyHandler:(id)handler;
- (void)getCookieServiceProxyWithReplyHandler:(id)handler;
- (void)getDeviceMessengerServiceProxyWithDelegate:(id)delegate replyHandler:(id)handler;
- (void)getDismissQRDialogServiceProxyWithReplyHandler:(id)handler;
- (void)getFraudReportServiceProxyWithReplyHandler:(id)handler;
- (void)getKeychainServiceProxyWithReplyHandler:(id)handler;
- (void)getOnDeviceDataServiceProxyWithReplyHandler:(id)handler;
- (void)getPaymentConfirmationServiceProxyWithReplyHandler:(id)handler;
- (void)getPaymentValidationServiceProxyWithReplyHandler:(id)handler;
- (void)getPurchaseServiceProxyWithReplyHandler:(id)handler;
- (void)getPushNotificationServiceProxyWithReplyHandler:(id)handler;
- (void)getSecurityServiceProxyWithDelegate:(id)delegate replyHandler:(id)handler;
@end

@implementation AMSDServiceConnection

- (void)dealloc
{
  v3 = +[AMSLogConfig sharedAccountsDaemonConfig];
  if (!v3)
  {
    v3 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v3 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543362;
    v8 = objc_opt_class();
    v5 = v8;
    _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_DEBUG, "%{public}@: deallocated", buf, 0xCu);
  }

  v6.receiver = self;
  v6.super_class = AMSDServiceConnection;
  [(AMSDServiceConnection *)&v6 dealloc];
}

- (AMSDServiceConnection)initWithConnection:(id)connection
{
  connectionCopy = connection;
  v13.receiver = self;
  v13.super_class = AMSDServiceConnection;
  v6 = [(AMSDServiceConnection *)&v13 init];
  if (v6)
  {
    v7 = AMSLogKey();
    logKey = v6->_logKey;
    v6->_logKey = v7;

    objc_storeStrong(&v6->_remoteConnection, connection);
    v9 = objc_alloc_init(NSMutableSet);
    retainer = v6->_retainer;
    v6->_retainer = v9;

    v11 = +[AMSDaemonConnectionInterface interface];
    [connectionCopy setExportedInterface:v11];

    [connectionCopy setExportedObject:v6];
  }

  return v6;
}

- (void)getAutoBugCaptureServiceProxyWithReplyHandler:(id)handler
{
  handlerCopy = handler;
  v5 = +[AMSDAutoBugCaptureService sharedService];
  [(AMSDServiceConnection *)self _provideService:v5 delegate:0 withReply:handlerCopy];
}

- (void)getCookieServiceProxyWithReplyHandler:(id)handler
{
  handlerCopy = handler;
  v5 = +[AMSDCookieService sharedService];
  [(AMSDServiceConnection *)self _provideService:v5 delegate:0 withReply:handlerCopy];
}

- (void)getDeviceMessengerServiceProxyWithDelegate:(id)delegate replyHandler:(id)handler
{
  delegateCopy = delegate;
  handlerCopy = handler;
  v7 = +[AMSDDeviceMessengerService sharedService];
  if (delegateCopy)
  {
    [v7 addDelegate:delegateCopy];
  }

  [(AMSDServiceConnection *)self _provideService:v7 delegate:delegateCopy withReply:handlerCopy];
}

- (void)getDismissQRDialogServiceProxyWithReplyHandler:(id)handler
{
  handlerCopy = handler;
  v5 = +[AMSDDismissQRDialogService sharedService];
  [(AMSDServiceConnection *)self _provideService:v5 delegate:0 withReply:handlerCopy];
}

- (void)getFraudReportServiceProxyWithReplyHandler:(id)handler
{
  handlerCopy = handler;
  v5 = objc_alloc_init(AMSDFraudReportService);
  [(AMSDServiceConnection *)self _provideService:v5 delegate:0 withReply:handlerCopy];
}

- (void)getKeychainServiceProxyWithReplyHandler:(id)handler
{
  handlerCopy = handler;
  v5 = objc_alloc_init(AMSDKeychainService);
  [(AMSDServiceConnection *)self _provideService:v5 delegate:0 withReply:handlerCopy];
}

- (void)getPaymentConfirmationServiceProxyWithReplyHandler:(id)handler
{
  handlerCopy = handler;
  v5 = +[AMSDPaymentViewService sharedService];
  [(AMSDServiceConnection *)self _provideService:v5 delegate:0 withReply:handlerCopy];
}

- (void)getPaymentValidationServiceProxyWithReplyHandler:(id)handler
{
  handlerCopy = handler;
  v5 = +[AMSDPaymentValidationService sharedService];
  [(AMSDServiceConnection *)self _provideService:v5 delegate:0 withReply:handlerCopy];
}

- (void)getPurchaseServiceProxyWithReplyHandler:(id)handler
{
  handlerCopy = handler;
  v5 = objc_alloc_init(AMSDPurchaseService);
  [(AMSDServiceConnection *)self _provideService:v5 delegate:0 withReply:handlerCopy];
}

- (void)getPushNotificationServiceProxyWithReplyHandler:(id)handler
{
  handlerCopy = handler;
  v5 = +[AMSDPushService sharedService];
  [(AMSDServiceConnection *)self _provideService:v5 delegate:0 withReply:handlerCopy];
}

- (void)getSecurityServiceProxyWithDelegate:(id)delegate replyHandler:(id)handler
{
  delegateCopy = delegate;
  handlerCopy = handler;
  v7 = objc_alloc_init(AMSDSecurityService);
  if (delegateCopy)
  {
    [(AMSDSecurityService *)v7 setDelegate:delegateCopy];
  }

  [(AMSDServiceConnection *)self _provideService:v7 delegate:delegateCopy withReply:handlerCopy];
}

- (void)getAccountCachedServerDataServiceProxyWithReplyHandler:(id)handler
{
  handlerCopy = handler;
  v5 = objc_alloc_init(AMSDAccountCachedServerDataService);
  [(AMSDServiceConnection *)self _provideService:v5 delegate:0 withReply:handlerCopy];
}

- (void)getAccountManagementServiceProxyWithReplyHandler:(id)handler
{
  handlerCopy = handler;
  v5 = +[AMSDAccountManagementService sharedService];
  [(AMSDServiceConnection *)self _provideService:v5 delegate:0 withReply:handlerCopy];
}

- (void)getAccountPostSignInServiceProxyWithReplyHandler:(id)handler
{
  handlerCopy = handler;
  v5 = objc_alloc_init(AMSDAccountPostSignInService);
  [(AMSDServiceConnection *)self _provideService:v5 delegate:0 withReply:handlerCopy];
}

- (void)getAccountSignOutServiceProxyWithReplyHandler:(id)handler
{
  handlerCopy = handler;
  v5 = objc_alloc_init(AMSDAccountSignOutService);
  [(AMSDServiceConnection *)self _provideService:v5 delegate:0 withReply:handlerCopy];
}

- (void)getOnDeviceDataServiceProxyWithReplyHandler:(id)handler
{
  handlerCopy = handler;
  v5 = objc_alloc_init(AMSDOnDeviceDataService);
  [(AMSDServiceConnection *)self _provideService:v5 delegate:0 withReply:handlerCopy];
}

- (void)_provideService:(id)service delegate:(id)delegate withReply:(id)reply
{
  serviceCopy = service;
  delegateCopy = delegate;
  replyCopy = reply;
  v11 = objc_opt_class();
  remoteConnection = [(AMSDServiceConnection *)self remoteConnection];
  LOBYTE(v11) = [v11 isConnectionEntitled:remoteConnection];

  if (v11)
  {
    v13 = 0;
    if (serviceCopy)
    {
      goto LABEL_3;
    }

LABEL_10:
    v18 = +[AMSLogConfig sharedConfig];
    if (!v18)
    {
      v18 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v18 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v20 = objc_opt_class();
      logKey = [(AMSDServiceConnection *)self logKey];
      v24 = 138543618;
      v25 = v20;
      v26 = 2114;
      v27 = logKey;
      _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] No service found", &v24, 0x16u);
    }

    v22 = AMSError();

    v13 = v22;
    if (v22)
    {
      goto LABEL_4;
    }

    goto LABEL_15;
  }

  v14 = +[AMSLogConfig sharedConfig];
  if (!v14)
  {
    v14 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject2 = [v14 OSLogObject];
  if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
  {
    v16 = objc_opt_class();
    logKey2 = [(AMSDServiceConnection *)self logKey];
    v24 = 138543874;
    v25 = v16;
    v26 = 2114;
    v27 = logKey2;
    v28 = 2114;
    v29 = serviceCopy;
    _os_log_impl(&_mh_execute_header, oSLogObject2, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Not entitled for service: %{public}@", &v24, 0x20u);
  }

  v13 = AMSError();
  if (!serviceCopy)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v13)
  {
LABEL_4:
    replyCopy[2](replyCopy, 0, v13);
    goto LABEL_18;
  }

LABEL_15:
  if (delegateCopy)
  {
    retainer = [(AMSDServiceConnection *)self retainer];
    [retainer addObject:delegateCopy];
  }

  (replyCopy)[2](replyCopy, serviceCopy, 0);
LABEL_18:
}

@end