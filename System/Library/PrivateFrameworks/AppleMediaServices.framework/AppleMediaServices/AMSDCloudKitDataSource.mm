@interface AMSDCloudKitDataSource
- (AMSDCloudDataManagerDataSourceDelegate)delegate;
- (AMSDCloudKitDataSource)init;
- (id)containerWithContainerIdentifier:(id)identifier options:(id)options;
- (void)_accountChanged:(id)changed;
- (void)dealloc;
- (void)handlePushNotification:(id)notification;
@end

@implementation AMSDCloudKitDataSource

- (AMSDCloudKitDataSource)init
{
  v5.receiver = self;
  v5.super_class = AMSDCloudKitDataSource;
  v2 = [(AMSDCloudKitDataSource *)&v5 init];
  if (v2)
  {
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 addObserver:v2 selector:"_accountChanged:" name:CKAccountChangedNotification object:0];
  }

  return v2;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = AMSDCloudKitDataSource;
  [(AMSDCloudKitDataSource *)&v4 dealloc];
}

- (id)containerWithContainerIdentifier:(id)identifier options:(id)options
{
  optionsCopy = options;
  identifierCopy = identifier;
  if (optionsCopy)
  {
    v7 = objc_alloc_init(CKContainerOptions);
    [v7 setUseZoneWidePCS:{objc_msgSend(optionsCopy, "recordZoneEncryption")}];
    v8 = [[CKContainerID alloc] initWithContainerIdentifier:identifierCopy environment:1];

    v9 = [[CKContainer alloc] initWithContainerID:v8 options:v7];
  }

  else
  {
    v7 = [[CKContainerID alloc] initWithContainerIdentifier:identifierCopy environment:1];

    v9 = [[CKContainer alloc] initWithContainerID:v7];
  }

  return v9;
}

- (void)handlePushNotification:(id)notification
{
  notificationCopy = notification;
  v5 = +[AMSLogConfig sharedAccountsMultiUserConfig];
  if (!v5)
  {
    v5 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v5 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = AMSLogKey();
    v28 = 138543618;
    v29 = v7;
    v30 = 2114;
    v31 = v8;
    _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Handling a CloudKit push notification.", &v28, 0x16u);
  }

  userInfo = [notificationCopy userInfo];
  v10 = [CKNotification notificationFromRemoteNotificationDictionary:userInfo];

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
    delegate = v18;
    if (v12)
    {
      if (!v18)
      {
        delegate = +[AMSLogConfig sharedConfig];
      }

      oSLogObject2 = [delegate OSLogObject];
      if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
      {
        v20 = objc_opt_class();
        v21 = AMSLogKey();
        databaseScope = [v12 databaseScope];
        v28 = 138543874;
        v29 = v20;
        v30 = 2114;
        v31 = v21;
        v32 = 2048;
        v33 = databaseScope;
        _os_log_impl(&_mh_execute_header, oSLogObject2, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] A CloudKit database changed. databaseScope = %ld", &v28, 0x20u);
      }

      delegate = [(AMSDCloudKitDataSource *)self delegate];
      [delegate cloudDataManagerDataSource:self didChangeWithType:1];
    }

    else
    {
      if (!v18)
      {
        delegate = +[AMSLogConfig sharedConfig];
      }

      oSLogObject3 = [delegate OSLogObject];
      if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_ERROR))
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
        _os_log_impl(&_mh_execute_header, oSLogObject3, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] We don't know how to handle the notification. notification.class = %{public}@", &v28, 0x20u);
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

    delegate = [v12 OSLogObject];
    if (os_log_type_enabled(delegate, OS_LOG_TYPE_ERROR))
    {
      v14 = objc_opt_class();
      v15 = AMSLogKey();
      userInfo2 = [notificationCopy userInfo];
      v17 = AMSHashIfNeeded();
      v28 = 138543874;
      v29 = v14;
      v30 = 2114;
      v31 = v15;
      v32 = 2114;
      v33 = v17;
      _os_log_impl(&_mh_execute_header, delegate, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to create a CKNotification from the message's userInfo. userInfo = %{public}@", &v28, 0x20u);
    }
  }
}

- (void)_accountChanged:(id)changed
{
  v4 = AMSSetLogKey();
  v5 = +[AMSLogConfig sharedAccountsMultiUserConfig];
  if (!v5)
  {
    v5 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v5 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = AMSLogKey();
    v10 = 138543618;
    v11 = v7;
    v12 = 2114;
    v13 = v8;
    _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] The CloudKit account changed.", &v10, 0x16u);
  }

  delegate = [(AMSDCloudKitDataSource *)self delegate];
  [delegate cloudDataManagerDataSource:self didChangeWithType:0];
}

- (AMSDCloudDataManagerDataSourceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end