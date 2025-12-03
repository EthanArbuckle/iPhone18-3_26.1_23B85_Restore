@interface AMSCloudDataManager
+ (void)handleRecordZoneFetchFailed:(id)failed inDatabase:(id)database withError:(id)error;
- (AMSCloudDataManager)initWithDataSource:(id)source;
- (NSString)pushNotificationTopic;
- (id)containerWithContainerIdentifier:(id)identifier options:(id)options;
- (void)handlePushNotification:(id)notification;
@end

@implementation AMSCloudDataManager

- (AMSCloudDataManager)initWithDataSource:(id)source
{
  sourceCopy = source;
  v10.receiver = self;
  v10.super_class = AMSCloudDataManager;
  v6 = [(AMSCloudDataManager *)&v10 init];
  if (v6)
  {
    v7 = objc_alloc_init(NSMutableDictionary);
    containers = v6->_containers;
    v6->_containers = v7;

    objc_storeStrong(&v6->_dataSource, source);
  }

  return v6;
}

- (NSString)pushNotificationTopic
{
  dataSource = [(AMSCloudDataManager *)self dataSource];
  pushNotificationTopic = [dataSource pushNotificationTopic];

  return pushNotificationTopic;
}

- (id)containerWithContainerIdentifier:(id)identifier options:(id)options
{
  identifierCopy = identifier;
  optionsCopy = options;
  containers = [(AMSCloudDataManager *)self containers];
  v9 = [containers objectForKeyedSubscript:identifierCopy];

  if (!v9)
  {
    dataSource = [(AMSCloudDataManager *)self dataSource];
    v9 = [dataSource containerWithContainerIdentifier:identifierCopy options:optionsCopy];

    containers2 = [(AMSCloudDataManager *)self containers];
    [containers2 setObject:v9 forKeyedSubscript:identifierCopy];
  }

  return v9;
}

- (void)handlePushNotification:(id)notification
{
  notificationCopy = notification;
  dataSource = [(AMSCloudDataManager *)self dataSource];
  [dataSource handlePushNotification:notificationCopy];
}

+ (void)handleRecordZoneFetchFailed:(id)failed inDatabase:(id)database withError:(id)error
{
  failedCopy = failed;
  databaseCopy = database;
  errorCopy = error;
  if ([errorCopy ams_hasDomain:@"AMSCloudDataErrorDomain" code:1])
  {
    v10 = +[AMSLogConfig sharedAccountsMultiUserConfig];
    if (!v10)
    {
      v10 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v10 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v12 = objc_opt_class();
      v13 = AMSLogKey();
      AMSHashIfNeeded();
      v14 = v30 = failedCopy;
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
      _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Encryption keys are missing for a record zone. zoneIdentifier = %{public}@ | database = %{public}@ | error = %{public}@", buf, 0x34u);
    }

    if ([databaseCopy isPrivateDatabase])
    {
      v33 = failedCopy;
      v17 = [NSArray arrayWithObjects:&v33 count:1];
      v18 = [databaseCopy deleteRecordZonesWithRecordZoneIdentifiers:v17];
      v32 = 0;
      v19 = [v18 resultWithError:&v32];
      v20 = v32;

      if (!v19)
      {
        goto LABEL_11;
      }
    }

    else if ([databaseCopy isSharedDatabase])
    {
      v21 = [databaseCopy shareForRecordZoneIdentifier:failedCopy];
      identifier = [v21 identifier];
      v23 = [databaseCopy deleteRecordWithRecordIdentifier:identifier missingEncryptionIdentity:1];
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

        oSLogObject2 = [v25 OSLogObject];
        if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
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
          _os_log_impl(&_mh_execute_header, oSLogObject2, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to cleanup a record zone with missing encryption keys. error = %{public}@", buf, 0x20u);
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