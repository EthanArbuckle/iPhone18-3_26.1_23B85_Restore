@interface AMSCloudKitDataSource
- (AMSCloudDataManagerDataSourceDelegate)delegate;
- (AMSCloudKitDataSource)init;
- (AMSCloudKitDataSource)initWithPushNotificationTopic:(id)a3;
- (id)containerWithContainerIdentifier:(id)a3 options:(id)a4;
- (void)_accountChanged:(id)a3;
- (void)_identityUpdated:(id)a3;
- (void)dealloc;
- (void)handlePushNotification:(id)a3;
@end

@implementation AMSCloudKitDataSource

- (AMSCloudKitDataSource)initWithPushNotificationTopic:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = AMSCloudKitDataSource;
  v5 = [(AMSCloudKitDataSource *)&v9 init];
  if (v5)
  {
    v6 = +[NSNotificationCenter defaultCenter];
    [v6 addObserver:v5 selector:"_accountChanged:" name:CKAccountChangedNotification object:0];

    v7 = +[NSNotificationCenter defaultCenter];
    [v7 addObserver:v5 selector:"_identityUpdated:" name:CKIdentityUpdateNotification object:0];

    [(AMSCloudKitDataSource *)v5 setPushNotificationTopic:v4];
  }

  return v5;
}

- (AMSCloudKitDataSource)init
{
  v3 = [@"com.apple.icloud-container." stringByAppendingString:@"com.apple.amsaccountsd"];
  v4 = [(AMSCloudKitDataSource *)self initWithPushNotificationTopic:v3];

  return v4;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = AMSCloudKitDataSource;
  [(AMSCloudKitDataSource *)&v4 dealloc];
}

- (id)containerWithContainerIdentifier:(id)a3 options:(id)a4
{
  v6 = a4;
  v7 = a3;
  if ([(AMSCloudKitDataSource *)self useSandboxEnvironment])
  {
    v8 = 2;
  }

  else
  {
    v8 = 1;
  }

  if (v6)
  {
    v9 = objc_alloc_init(CKContainerOptions);
    [v9 setUseZoneWidePCS:{objc_msgSend(v6, "recordZoneEncryption")}];
    v10 = [[CKContainerID alloc] initWithContainerIdentifier:v7 environment:v8];

    v11 = [[CKContainer alloc] initWithContainerID:v10 options:v9];
  }

  else
  {
    v9 = [[CKContainerID alloc] initWithContainerIdentifier:v7 environment:v8];

    v11 = [[CKContainer alloc] initWithContainerID:v9];
  }

  return v11;
}

- (void)handlePushNotification:(id)a3
{
  v4 = a3;
  v5 = +[AMSLogConfig sharedAccountsMultiUserConfig];
  if (!v5)
  {
    v5 = +[AMSLogConfig sharedConfig];
  }

  v6 = [v5 OSLogObject];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = AMSLogKey();
    v28 = 138543618;
    v29 = v7;
    v30 = 2114;
    v31 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Handling a CloudKit push notification.", &v28, 0x16u);
  }

  v9 = [v4 userInfo];
  v10 = [CKNotification notificationFromRemoteNotificationDictionary:v9];

  if (v10)
  {
    v11 = v10;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    v18 = +[AMSLogConfig sharedAccountsMultiUserConfig];
    v13 = v18;
    if (v12)
    {
      if (!v18)
      {
        v13 = +[AMSLogConfig sharedConfig];
      }

      v19 = [v13 OSLogObject];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = objc_opt_class();
        v21 = AMSLogKey();
        v22 = [v12 databaseScope];
        v28 = 138543874;
        v29 = v20;
        v30 = 2114;
        v31 = v21;
        v32 = 2048;
        v33 = v22;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] A CloudKit database changed. databaseScope = %ld", &v28, 0x20u);
      }

      v13 = [(AMSCloudKitDataSource *)self delegate];
      [v13 dataSourceDidChange:self];
    }

    else
    {
      if (!v18)
      {
        v13 = +[AMSLogConfig sharedConfig];
      }

      v23 = [v13 OSLogObject];
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v24 = objc_opt_class();
        v25 = AMSLogKey();
        v26 = objc_opt_class();
        v27 = NSStringFromClass(v26);
        v28 = 138543874;
        v29 = v24;
        v30 = 2114;
        v31 = v25;
        v32 = 2114;
        v33 = v27;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] We don't know how to handle the notification. notification.class = %{public}@", &v28, 0x20u);
      }
    }
  }

  else
  {
    v12 = +[AMSLogConfig sharedAccountsMultiUserConfig];
    if (!v12)
    {
      v12 = +[AMSLogConfig sharedConfig];
    }

    v13 = [v12 OSLogObject];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = objc_opt_class();
      v15 = AMSLogKey();
      v16 = [v4 userInfo];
      v17 = AMSHashIfNeeded();
      v28 = 138543874;
      v29 = v14;
      v30 = 2114;
      v31 = v15;
      v32 = 2114;
      v33 = v17;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to create a CKNotification from the message's userInfo. userInfo = %{public}@", &v28, 0x20u);
    }
  }
}

- (void)_accountChanged:(id)a3
{
  v4 = AMSSetLogKey();
  v5 = +[AMSLogConfig sharedAccountsMultiUserConfig];
  if (!v5)
  {
    v5 = +[AMSLogConfig sharedConfig];
  }

  v6 = [v5 OSLogObject];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = AMSLogKey();
    v13 = 138543618;
    v14 = v7;
    v15 = 2114;
    v16 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] The CloudKit account changed.", &v13, 0x16u);
  }

  v9 = [(AMSCloudKitDataSource *)self delegate];
  v10 = objc_opt_respondsToSelector();

  v11 = [(AMSCloudKitDataSource *)self delegate];
  v12 = v11;
  if (v10)
  {
    [v11 dataSourceAccountDidChange:self];
  }

  else
  {
    [v11 dataSourceDidChange:self];
  }
}

- (void)_identityUpdated:(id)a3
{
  v4 = AMSSetLogKey();
  v5 = +[AMSLogConfig sharedAccountsMultiUserConfig];
  if (!v5)
  {
    v5 = +[AMSLogConfig sharedConfig];
  }

  v6 = [v5 OSLogObject];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = AMSLogKey();
    v13 = 138543618;
    v14 = v7;
    v15 = 2114;
    v16 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] The CloudKit PCS identity updated.", &v13, 0x16u);
  }

  v9 = [(AMSCloudKitDataSource *)self delegate];
  v10 = objc_opt_respondsToSelector();

  v11 = [(AMSCloudKitDataSource *)self delegate];
  v12 = v11;
  if (v10)
  {
    [v11 dataSourceAccountDidChange:self];
  }

  else
  {
    [v11 dataSourceDidChange:self];
  }
}

- (AMSCloudDataManagerDataSourceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end