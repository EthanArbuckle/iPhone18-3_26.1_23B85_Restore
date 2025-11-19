@interface AMSCloudDataManager
+ (void)handleRecordZoneFetchFailed:(id)a3 inDatabase:(id)a4 withError:(id)a5;
- (AMSCloudDataManager)initWithDataSource:(id)a3;
- (NSString)pushNotificationTopic;
- (id)containerWithContainerIdentifier:(id)a3 options:(id)a4;
- (void)handlePushNotification:(id)a3;
@end

@implementation AMSCloudDataManager

- (AMSCloudDataManager)initWithDataSource:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = AMSCloudDataManager;
  v6 = [(AMSCloudDataManager *)&v10 init];
  if (v6)
  {
    v7 = objc_alloc_init(NSMutableDictionary);
    containers = v6->_containers;
    v6->_containers = v7;

    objc_storeStrong(&v6->_dataSource, a3);
  }

  return v6;
}

- (NSString)pushNotificationTopic
{
  v2 = [(AMSCloudDataManager *)self dataSource];
  v3 = [v2 pushNotificationTopic];

  return v3;
}

- (id)containerWithContainerIdentifier:(id)a3 options:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(AMSCloudDataManager *)self containers];
  v9 = [v8 objectForKeyedSubscript:v6];

  if (!v9)
  {
    v10 = [(AMSCloudDataManager *)self dataSource];
    v9 = [v10 containerWithContainerIdentifier:v6 options:v7];

    v11 = [(AMSCloudDataManager *)self containers];
    [v11 setObject:v9 forKeyedSubscript:v6];
  }

  return v9;
}

- (void)handlePushNotification:(id)a3
{
  v4 = a3;
  v5 = [(AMSCloudDataManager *)self dataSource];
  [v5 handlePushNotification:v4];
}

+ (void)handleRecordZoneFetchFailed:(id)a3 inDatabase:(id)a4 withError:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if ([v9 ams_hasDomain:@"AMSCloudDataErrorDomain" code:1])
  {
    v10 = +[AMSLogConfig sharedAccountsMultiUserConfig];
    if (!v10)
    {
      v10 = +[AMSLogConfig sharedConfig];
    }

    v11 = [v10 OSLogObject];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = objc_opt_class();
      v13 = AMSLogKey();
      AMSHashIfNeeded();
      v14 = v30 = v7;
      v15 = AMSHashIfNeeded();
      v16 = AMSHashIfNeeded();
      *buf = 138544386;
      v35 = v12;
      v36 = 2114;
      v37 = v13;
      v38 = 2114;
      v39 = v14;
      v40 = 2114;
      v41 = v15;
      v42 = 2114;
      v43 = v16;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Encryption keys are missing for a record zone. zoneIdentifier = %{public}@ | database = %{public}@ | error = %{public}@", buf, 0x34u);
    }

    if ([v8 isPrivateDatabase])
    {
      v33 = v7;
      v17 = [NSArray arrayWithObjects:&v33 count:1];
      v18 = [v8 deleteRecordZonesWithRecordZoneIdentifiers:v17];
      v32 = 0;
      v19 = [v18 resultWithError:&v32];
      v20 = v32;

      if (!v19)
      {
        goto LABEL_11;
      }
    }

    else if ([v8 isSharedDatabase])
    {
      v21 = [v8 shareForRecordZoneIdentifier:v7];
      v22 = [v21 identifier];
      v23 = [v8 deleteRecordWithRecordIdentifier:v22 missingEncryptionIdentity:1];
      v31 = 0;
      v24 = [v23 resultWithError:&v31];
      v20 = v31;

      if (!v24)
      {
LABEL_11:
        v25 = +[AMSLogConfig sharedAccountsMultiUserConfig];
        if (!v25)
        {
          v25 = +[AMSLogConfig sharedConfig];
        }

        v26 = [v25 OSLogObject];
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          v27 = objc_opt_class();
          v28 = AMSLogKey();
          v29 = AMSHashIfNeeded();
          *buf = 138543874;
          v35 = v27;
          v36 = 2114;
          v37 = v28;
          v38 = 2114;
          v39 = v29;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to cleanup a record zone with missing encryption keys. error = %{public}@", buf, 0x20u);
        }
      }
    }

    else
    {
      v20 = 0;
    }
  }
}

@end