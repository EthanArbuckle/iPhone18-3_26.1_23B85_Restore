@interface ProductPagePresenter
+ (BOOL)presentRequest:(id)a3 withError:(id *)a4;
@end

@implementation ProductPagePresenter

+ (BOOL)presentRequest:(id)a3 withError:(id *)a4
{
  v5 = a3;
  v6 = [[SBSRemoteAlertDefinition alloc] initWithServiceName:@"com.apple.AskPermissionUI" viewControllerClassName:@"RemoteProductViewController"];
  v7 = objc_alloc_init(SBSRemoteAlertConfigurationContext);
  v8 = [v5 compile];
  [v7 setUserInfo:v8];

  v9 = [SBSRemoteAlertHandle newHandleWithDefinition:v6 configurationContext:v7];
  v10 = +[APLogConfig sharedDaemonConfig];
  v11 = v10;
  if (v9)
  {
    if (!v10)
    {
      v11 = +[APLogConfig sharedConfig];
    }

    v12 = [v11 OSLogObject];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 138543618;
      v20 = objc_opt_class();
      v21 = 2114;
      v22 = v5;
      v13 = v20;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: Presented request successfully. Request: %{public}@", &v19, 0x16u);
    }

    [v9 activateWithContext:0];
    v14 = 0;
    if (a4)
    {
LABEL_7:
      v15 = v14;
      *a4 = v14;
    }
  }

  else
  {
    if (!v10)
    {
      v11 = +[APLogConfig sharedConfig];
    }

    v17 = [v11 OSLogObject];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v19 = 138543618;
      v20 = objc_opt_class();
      v21 = 2114;
      v22 = v5;
      v18 = v20;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%{public}@: Could not present request. Request: %{public}@", &v19, 0x16u);
    }

    v14 = APError();
    if (a4)
    {
      goto LABEL_7;
    }
  }

  return v14 == 0;
}

@end