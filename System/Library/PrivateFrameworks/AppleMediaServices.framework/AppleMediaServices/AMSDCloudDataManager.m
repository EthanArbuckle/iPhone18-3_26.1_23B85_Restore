@interface AMSDCloudDataManager
+ (unint64_t)multiUserStatusForRecord:(id)a3 withHomeManager:(id)a4;
+ (void)handleRecordZoneFetchFailed:(id)a3 inDatabase:(id)a4 withError:(id)a5;
- (AMSDCloudDataManager)initWithDataSource:(id)a3;
- (NSString)pushNotificationTopic;
- (id)containerWithContainerIdentifier:(id)a3 options:(id)a4;
- (void)handlePushNotification:(id)a3;
@end

@implementation AMSDCloudDataManager

+ (unint64_t)multiUserStatusForRecord:(id)a3 withHomeManager:(id)a4
{
  v6 = a4;
  v7 = [AMSDHomeManager identifiersForRecord:a3];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 first];
    v10 = [v6 homeWithHomeIdentifier:v9];
    v51 = 0;
    v11 = [v10 resultWithError:&v51];
    v12 = v51;

    if (v11)
    {
      v13 = [v11 users];
      v49[0] = _NSConcreteStackBlock;
      v49[1] = 3221225472;
      v49[2] = sub_100049A50;
      v49[3] = &unk_1002B0248;
      v14 = v8;
      v50 = v14;
      v15 = [v13 ams_firstObjectPassingTest:v49];

      if (v15)
      {
        v16 = [AMSDHomeManager multiUserStatusForHomeUser:v15 inHome:v11];
      }

      else
      {
        v27 = +[AMSLogConfig sharedAccountsMultiUserConfig];
        if (!v27)
        {
          v27 = +[AMSLogConfig sharedConfig];
        }

        v28 = [v27 OSLogObject];
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          loga = v28;
          v29 = AMSLogKey();
          v30 = objc_opt_class();
          v31 = v30;
          v46 = v29;
          if (v29)
          {
            v42 = AMSLogKey();
            [NSString stringWithFormat:@"%@: [%@] ", v31, v42];
          }

          else
          {
            [NSString stringWithFormat:@"%@: ", v30];
          }
          v32 = ;
          v43 = [v14 second];
          v36 = AMSHashIfNeeded();
          v37 = AMSHashIfNeeded();
          v38 = [v11 users];
          v39 = AMSHashIfNeeded();
          *buf = 138544130;
          v53 = v32;
          v54 = 2114;
          v44 = v37;
          v55 = v36;
          v56 = 2114;
          v57 = v37;
          v40 = v39;
          v58 = 2114;
          v59 = v39;
          _os_log_impl(&_mh_execute_header, loga, OS_LOG_TYPE_ERROR, "%{public}@Unable to locate home user. identifier = %{public}@ | home = %{public}@ | home users = %{public}@", buf, 0x2Au);

          if (v46)
          {

            v32 = v42;
          }

          v28 = loga;
        }

        v16 = 0;
      }

      v21 = v50;
    }

    else
    {
      v21 = +[AMSLogConfig sharedAccountsMultiUserConfig];
      if (!v21)
      {
        v21 = +[AMSLogConfig sharedConfig];
      }

      v22 = [v21 OSLogObject];
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = AMSLogKey();
        v24 = objc_opt_class();
        v25 = v24;
        log = v23;
        if (v23)
        {
          v45 = AMSLogKey();
          [NSString stringWithFormat:@"%@: [%@] ", v25, v45];
        }

        else
        {
          [NSString stringWithFormat:@"%@: ", v24];
        }
        v26 = ;
        v33 = [v8 first];
        v34 = AMSHashIfNeeded();
        v35 = AMSLogableError();
        *buf = 138543874;
        v53 = v26;
        v54 = 2114;
        v55 = v34;
        v56 = 2114;
        v57 = v35;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%{public}@Unable to locate home for record. Home Identifier = %{public}@ | error = %{public}@", buf, 0x20u);

        if (log)
        {

          v26 = v45;
        }
      }

      v16 = 0;
    }
  }

  else
  {
    v12 = +[AMSLogConfig sharedAccountsMultiUserConfig];
    if (!v12)
    {
      v12 = +[AMSLogConfig sharedConfig];
    }

    v11 = [v12 OSLogObject];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v17 = AMSLogKey();
      v18 = objc_opt_class();
      v19 = v18;
      if (v17)
      {
        a1 = AMSLogKey();
        [NSString stringWithFormat:@"%@: [%@] ", v19, a1];
      }

      else
      {
        [NSString stringWithFormat:@"%@: ", v18];
      }
      v20 = ;
      *buf = 138543362;
      v53 = v20;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%{public}@Unable to locate identifiers for record", buf, 0xCu);
      if (v17)
      {

        v20 = a1;
      }
    }

    v16 = 0;
  }

  return v16;
}

- (AMSDCloudDataManager)initWithDataSource:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = AMSDCloudDataManager;
  v6 = [(AMSDCloudDataManager *)&v10 init];
  if (v6)
  {
    v7 = objc_alloc_init(AMSThreadSafeDictionary);
    containers = v6->_containers;
    v6->_containers = v7;

    objc_storeStrong(&v6->_dataSource, a3);
  }

  return v6;
}

- (NSString)pushNotificationTopic
{
  v2 = [(AMSDCloudDataManager *)self dataSource];
  v3 = [v2 pushNotificationTopic];

  return v3;
}

- (id)containerWithContainerIdentifier:(id)a3 options:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = &_s18AppleMediaServices16RemoteSignInTaskC7performSDySSSbGyYaKFTjTu_ptr;
  v10 = +[AMSLogConfig sharedAccountsMultiUserConfig];
  if (!v10)
  {
    v10 = +[AMSLogConfig sharedConfig];
  }

  v11 = [v10 OSLogObject];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v12 = AMSLogKey();
    v13 = objc_opt_class();
    v29 = self;
    if (v12)
    {
      v14 = AMSLogKey();
      a2 = NSStringFromSelector(a2);
      [NSString stringWithFormat:@"%@: [%@] %@ ", v13, v14, a2];
    }

    else
    {
      v14 = NSStringFromSelector(a2);
      [NSString stringWithFormat:@"%@: %@ ", v13, v14];
    }
    v15 = ;
    v16 = AMSHashIfNeeded();
    v17 = AMSHashIfNeeded();
    *buf = 138543874;
    v34 = v15;
    v35 = 2114;
    v36 = v16;
    v37 = 2114;
    v38 = v17;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "%{public}@identifier: %{public}@ | options = %{public}@", buf, 0x20u);
    if (v12)
    {

      v15 = a2;
    }

    self = v29;
    v9 = &_s18AppleMediaServices16RemoteSignInTaskC7performSDySSSbGyYaKFTjTu_ptr;
  }

  if (v7)
  {
    v18 = [(AMSDCloudDataManager *)self containers];
    v19 = [v18 objectForKeyedSubscript:v7];

    if (v19)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v20 = +[AMSLogConfig sharedAccountsMultiUserConfig];
    if (!v20)
    {
      v20 = +[AMSLogConfig sharedConfig];
    }

    v21 = [v20 OSLogObject];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = AMSLogKey();
      v23 = objc_opt_class();
      v24 = v23;
      if (v22)
      {
        v9 = AMSLogKey();
        [NSString stringWithFormat:@"%@: [%@] ", v24, v9];
      }

      else
      {
        [NSString stringWithFormat:@"%@: ", v23];
      }
      v25 = ;
      *buf = 138543362;
      v34 = v25;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%{public}@Attempting to create a cloud container with no identifier", buf, 0xCu);
      if (v22)
      {

        v25 = v9;
      }
    }
  }

  v26 = [(AMSDCloudDataManager *)self dataSource];
  v19 = [v26 containerWithContainerIdentifier:v7 options:v8];

  if (v7)
  {
    v27 = [(AMSDCloudDataManager *)self containers];
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_100049F8C;
    v30[3] = &unk_1002B0270;
    v19 = v19;
    v31 = v19;
    v32 = v7;
    [v27 readWrite:v30];
  }

LABEL_25:

  return v19;
}

- (void)handlePushNotification:(id)a3
{
  v4 = a3;
  v5 = [(AMSDCloudDataManager *)self dataSource];
  [v5 handlePushNotification:v4];
}

+ (void)handleRecordZoneFetchFailed:(id)a3 inDatabase:(id)a4 withError:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if ([v9 ams_hasDomain:@"AMSDCloudDataErrorDomain" code:1])
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
      v14 = v31 = v7;
      v15 = AMSHashIfNeeded();
      v16 = AMSHashIfNeeded();
      *buf = 138544386;
      v36 = v12;
      v37 = 2114;
      v38 = v13;
      v39 = 2114;
      v40 = v14;
      v41 = 2114;
      v42 = v15;
      v43 = 2114;
      v44 = v16;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Encryption keys are missing for a record zone. zoneIdentifier = %{public}@ | database = %{public}@ | error = %{public}@", buf, 0x34u);
    }

    if ([v8 isPrivateDatabase])
    {
      v34 = v7;
      v17 = [NSArray arrayWithObjects:&v34 count:1];
      v18 = [v8 deleteRecordZonesWithRecordZoneIdentifiers:v17];
      v33 = 0;
      v19 = [v18 resultWithError:&v33];
      v20 = v33;

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
      v32 = 0;
      v24 = [v23 resultWithError:&v32];
      v20 = v32;

      if (!v24)
      {
LABEL_11:
        v25 = +[AMSLogConfig sharedAccountsMultiUserConfig];
        if (!v25)
        {
          v25 = +[AMSLogConfig sharedConfig];
        }

        v26 = [(AMSDRefreshMultiUserOptions *)v25 OSLogObject];
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          v27 = objc_opt_class();
          v28 = AMSLogKey();
          v29 = AMSHashIfNeeded();
          *buf = 138543874;
          v36 = v27;
          v37 = 2114;
          v38 = v28;
          v39 = 2114;
          v40 = v29;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to cleanup a record zone with missing encryption keys. error = %{public}@", buf, 0x20u);
        }

        goto LABEL_17;
      }
    }

    else
    {
      v20 = 0;
    }

    v25 = [[AMSDRefreshMultiUserOptions alloc] initWithReason:@"Missing encryption keys."];
    [(AMSDRefreshMultiUserOptions *)v25 setSchedulingInterval:60.0];
    [(AMSDRefreshMultiUserOptions *)v25 setShouldUseCloudData:1];
    v26 = +[AMSDMultiUserController sharedController];
    v30 = [v26 refreshWithOptions:v25];
LABEL_17:
  }
}

@end