@interface AMSDServiceConnection
- (AMSDServiceConnection)initWithConnection:(id)a3;
- (void)_provideService:(id)a3 delegate:(id)a4 withReply:(id)a5;
- (void)dealloc;
- (void)getAccountCachedServerDataServiceProxyWithReplyHandler:(id)a3;
- (void)getAccountManagementServiceProxyWithReplyHandler:(id)a3;
- (void)getAccountPostSignInServiceProxyWithReplyHandler:(id)a3;
- (void)getAccountSignOutServiceProxyWithReplyHandler:(id)a3;
- (void)getAutoBugCaptureServiceProxyWithReplyHandler:(id)a3;
- (void)getCookieServiceProxyWithReplyHandler:(id)a3;
- (void)getDeviceMessengerServiceProxyWithDelegate:(id)a3 replyHandler:(id)a4;
- (void)getDismissQRDialogServiceProxyWithReplyHandler:(id)a3;
- (void)getFraudReportServiceProxyWithReplyHandler:(id)a3;
- (void)getKeychainServiceProxyWithReplyHandler:(id)a3;
- (void)getOnDeviceDataServiceProxyWithReplyHandler:(id)a3;
- (void)getPaymentConfirmationServiceProxyWithReplyHandler:(id)a3;
- (void)getPaymentValidationServiceProxyWithReplyHandler:(id)a3;
- (void)getPurchaseServiceProxyWithReplyHandler:(id)a3;
- (void)getPushNotificationServiceProxyWithReplyHandler:(id)a3;
- (void)getSecurityServiceProxyWithDelegate:(id)a3 replyHandler:(id)a4;
@end

@implementation AMSDServiceConnection

- (void)dealloc
{
  v3 = +[AMSLogConfig sharedAccountsDaemonConfig];
  if (!v3)
  {
    v3 = +[AMSLogConfig sharedConfig];
  }

  v4 = [v3 OSLogObject];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543362;
    v8 = objc_opt_class();
    v5 = v8;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "%{public}@: deallocated", buf, 0xCu);
  }

  v6.receiver = self;
  v6.super_class = AMSDServiceConnection;
  [(AMSDServiceConnection *)&v6 dealloc];
}

- (AMSDServiceConnection)initWithConnection:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = AMSDServiceConnection;
  v6 = [(AMSDServiceConnection *)&v13 init];
  if (v6)
  {
    v7 = AMSLogKey();
    logKey = v6->_logKey;
    v6->_logKey = v7;

    objc_storeStrong(&v6->_remoteConnection, a3);
    v9 = objc_alloc_init(NSMutableSet);
    retainer = v6->_retainer;
    v6->_retainer = v9;

    v11 = +[AMSDaemonConnectionInterface interface];
    [v5 setExportedInterface:v11];

    [v5 setExportedObject:v6];
  }

  return v6;
}

- (void)getAutoBugCaptureServiceProxyWithReplyHandler:(id)a3
{
  v4 = a3;
  v5 = +[AMSDAutoBugCaptureService sharedService];
  [(AMSDServiceConnection *)self _provideService:v5 delegate:0 withReply:v4];
}

- (void)getCookieServiceProxyWithReplyHandler:(id)a3
{
  v4 = a3;
  v5 = +[AMSDCookieService sharedService];
  [(AMSDServiceConnection *)self _provideService:v5 delegate:0 withReply:v4];
}

- (void)getDeviceMessengerServiceProxyWithDelegate:(id)a3 replyHandler:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = +[AMSDDeviceMessengerService sharedService];
  if (v8)
  {
    [v7 addDelegate:v8];
  }

  [(AMSDServiceConnection *)self _provideService:v7 delegate:v8 withReply:v6];
}

- (void)getDismissQRDialogServiceProxyWithReplyHandler:(id)a3
{
  v4 = a3;
  v5 = +[AMSDDismissQRDialogService sharedService];
  [(AMSDServiceConnection *)self _provideService:v5 delegate:0 withReply:v4];
}

- (void)getFraudReportServiceProxyWithReplyHandler:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(AMSDFraudReportService);
  [(AMSDServiceConnection *)self _provideService:v5 delegate:0 withReply:v4];
}

- (void)getKeychainServiceProxyWithReplyHandler:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(AMSDKeychainService);
  [(AMSDServiceConnection *)self _provideService:v5 delegate:0 withReply:v4];
}

- (void)getPaymentConfirmationServiceProxyWithReplyHandler:(id)a3
{
  v4 = a3;
  v5 = +[AMSDPaymentViewService sharedService];
  [(AMSDServiceConnection *)self _provideService:v5 delegate:0 withReply:v4];
}

- (void)getPaymentValidationServiceProxyWithReplyHandler:(id)a3
{
  v4 = a3;
  v5 = +[AMSDPaymentValidationService sharedService];
  [(AMSDServiceConnection *)self _provideService:v5 delegate:0 withReply:v4];
}

- (void)getPurchaseServiceProxyWithReplyHandler:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(AMSDPurchaseService);
  [(AMSDServiceConnection *)self _provideService:v5 delegate:0 withReply:v4];
}

- (void)getPushNotificationServiceProxyWithReplyHandler:(id)a3
{
  v4 = a3;
  v5 = +[AMSDPushService sharedService];
  [(AMSDServiceConnection *)self _provideService:v5 delegate:0 withReply:v4];
}

- (void)getSecurityServiceProxyWithDelegate:(id)a3 replyHandler:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = objc_alloc_init(AMSDSecurityService);
  if (v8)
  {
    [(AMSDSecurityService *)v7 setDelegate:v8];
  }

  [(AMSDServiceConnection *)self _provideService:v7 delegate:v8 withReply:v6];
}

- (void)getAccountCachedServerDataServiceProxyWithReplyHandler:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(AMSDAccountCachedServerDataService);
  [(AMSDServiceConnection *)self _provideService:v5 delegate:0 withReply:v4];
}

- (void)getAccountManagementServiceProxyWithReplyHandler:(id)a3
{
  v4 = a3;
  v5 = +[AMSDAccountManagementService sharedService];
  [(AMSDServiceConnection *)self _provideService:v5 delegate:0 withReply:v4];
}

- (void)getAccountPostSignInServiceProxyWithReplyHandler:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(AMSDAccountPostSignInService);
  [(AMSDServiceConnection *)self _provideService:v5 delegate:0 withReply:v4];
}

- (void)getAccountSignOutServiceProxyWithReplyHandler:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(AMSDAccountSignOutService);
  [(AMSDServiceConnection *)self _provideService:v5 delegate:0 withReply:v4];
}

- (void)getOnDeviceDataServiceProxyWithReplyHandler:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(AMSDOnDeviceDataService);
  [(AMSDServiceConnection *)self _provideService:v5 delegate:0 withReply:v4];
}

- (void)_provideService:(id)a3 delegate:(id)a4 withReply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_opt_class();
  v12 = [(AMSDServiceConnection *)self remoteConnection];
  LOBYTE(v11) = [v11 isConnectionEntitled:v12];

  if (v11)
  {
    v13 = 0;
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_10:
    v18 = +[AMSLogConfig sharedConfig];
    if (!v18)
    {
      v18 = +[AMSLogConfig sharedConfig];
    }

    v19 = [v18 OSLogObject];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = objc_opt_class();
      v21 = [(AMSDServiceConnection *)self logKey];
      v24 = 138543618;
      v25 = v20;
      v26 = 2114;
      v27 = v21;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] No service found", &v24, 0x16u);
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

  v15 = [v14 OSLogObject];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    v16 = objc_opt_class();
    v17 = [(AMSDServiceConnection *)self logKey];
    v24 = 138543874;
    v25 = v16;
    v26 = 2114;
    v27 = v17;
    v28 = 2114;
    v29 = v8;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Not entitled for service: %{public}@", &v24, 0x20u);
  }

  v13 = AMSError();
  if (!v8)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v13)
  {
LABEL_4:
    v10[2](v10, 0, v13);
    goto LABEL_18;
  }

LABEL_15:
  if (v9)
  {
    v23 = [(AMSDServiceConnection *)self retainer];
    [v23 addObject:v9];
  }

  (v10)[2](v10, v8, 0);
LABEL_18:
}

@end