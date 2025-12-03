@interface ProductPagePresenter
+ (BOOL)presentRequest:(id)request withError:(id *)error;
@end

@implementation ProductPagePresenter

+ (BOOL)presentRequest:(id)request withError:(id *)error
{
  requestCopy = request;
  v6 = [[SBSRemoteAlertDefinition alloc] initWithServiceName:@"com.apple.AskPermissionUI" viewControllerClassName:@"RemoteProductViewController"];
  v7 = objc_alloc_init(SBSRemoteAlertConfigurationContext);
  compile = [requestCopy compile];
  [v7 setUserInfo:compile];

  v9 = [SBSRemoteAlertHandle newHandleWithDefinition:v6 configurationContext:v7];
  v10 = +[APLogConfig sharedDaemonConfig];
  v11 = v10;
  if (v9)
  {
    if (!v10)
    {
      v11 = +[APLogConfig sharedConfig];
    }

    oSLogObject = [v11 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 138543618;
      v20 = objc_opt_class();
      v21 = 2114;
      v22 = requestCopy;
      v13 = v20;
      _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: Presented request successfully. Request: %{public}@", &v19, 0x16u);
    }

    [v9 activateWithContext:0];
    v14 = 0;
    if (error)
    {
LABEL_7:
      v15 = v14;
      *error = v14;
    }
  }

  else
  {
    if (!v10)
    {
      v11 = +[APLogConfig sharedConfig];
    }

    oSLogObject2 = [v11 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
    {
      v19 = 138543618;
      v20 = objc_opt_class();
      v21 = 2114;
      v22 = requestCopy;
      v18 = v20;
      _os_log_impl(&_mh_execute_header, oSLogObject2, OS_LOG_TYPE_ERROR, "%{public}@: Could not present request. Request: %{public}@", &v19, 0x16u);
    }

    v14 = APError();
    if (error)
    {
      goto LABEL_7;
    }
  }

  return v14 == 0;
}

@end