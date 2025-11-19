@interface AMSDMultiUserController
+ (BOOL)deviceCanManageMultiUser;
+ (BOOL)deviceSupportsMultipleUsers;
+ (id)sharedController;
- (AMSDCloudDataContainer)cloudContainer;
- (AMSDMultiUserController)initWithCloudDataManager:(id)a3 homeManager:(id)a4;
- (BOOL)_refreshShouldUseCloudDataWithHomes:(id)a3;
- (BOOL)multiUserRefreshThrottlingActive;
- (BOOL)shouldEnablePushTopic;
- (NSString)pushTopic;
- (id)_isCloudDataAvailable;
- (id)_isRefreshThrottlingDisabledWithOptions:(id)a3;
- (id)_refreshThrottlingDate;
- (id)_scheduleRefreshWithOptions:(id)a3;
- (id)databaseForHome:(id)a3 user:(id)a4;
- (id)refreshWithOptions:(id)a3 metrics:(id)a4;
- (void)_setLastSuccessfulRefreshDateWithHomes:(id)a3;
- (void)_setRefreshThrottlingDateWithTimeInterval:(double)a3;
- (void)cloudDataManagerDataSource:(id)a3 didChangeWithType:(unint64_t)a4;
- (void)handlePushNotification:(id)a3;
- (void)homeManagerDataSource:(id)a3 didChangeWithType:(unint64_t)a4;
- (void)homeManagerDataSource:(id)a3 didReceiveCloudDataRepairRequestForHome:(id)a4;
- (void)homeManagerDataSource:(id)a3 didReceiveCloudShare:(id)a4 completion:(id)a5;
- (void)teardownMultiUser;
@end

@implementation AMSDMultiUserController

- (AMSDMultiUserController)initWithCloudDataManager:(id)a3 homeManager:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = AMSDMultiUserController;
  v9 = [(AMSDMultiUserController *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_cloudDataManager, a3);
    objc_storeStrong(&v10->_homeManager, a4);
    v11 = objc_alloc_init(AMSThreadSafeObject);
    previousCloudContainerStatus = v10->_previousCloudContainerStatus;
    v10->_previousCloudContainerStatus = v11;
  }

  return v10;
}

- (void)teardownMultiUser
{
  v3 = [(AMSDMultiUserController *)self homeManager];
  [v3 teardownMultiUser];

  [(AMSDMultiUserController *)self setHomeManager:0];
}

+ (id)sharedController
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10006749C;
  block[3] = &unk_1002B0760;
  block[4] = a1;
  if (qword_1002E3240 != -1)
  {
    dispatch_once(&qword_1002E3240, block);
  }

  v2 = qword_1002E3248;

  return v2;
}

- (AMSDCloudDataContainer)cloudContainer
{
  v3 = objc_alloc_init(AMSDCloudDataContainerOptions);
  [(AMSDCloudDataContainerOptions *)v3 setRecordZoneEncryption:1];
  v4 = +[AMSDefaults multiUserContainerID];
  v5 = v4;
  v6 = @"com.apple.applemediaservices.multiuser";
  if (v4)
  {
    v6 = v4;
  }

  v7 = v6;

  v8 = [(AMSDMultiUserController *)self cloudDataManager];
  v9 = [v8 containerWithContainerIdentifier:v7 options:v3];

  return v9;
}

+ (BOOL)deviceCanManageMultiUser
{
  if ((+[AMSDevice deviceIsiPhone]& 1) != 0)
  {
    return 1;
  }

  return +[AMSDevice deviceIsiPad];
}

+ (BOOL)deviceSupportsMultipleUsers
{
  if ((+[AMSDevice deviceIsAppleTV]& 1) != 0)
  {
    return 1;
  }

  return +[AMSDevice deviceIsAudioAccessory];
}

- (NSString)pushTopic
{
  v2 = [(AMSDMultiUserController *)self cloudDataManager];
  v3 = [v2 pushNotificationTopic];

  return v3;
}

- (id)databaseForHome:(id)a3 user:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 users];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1000678C4;
  v18[3] = &unk_1002B0248;
  v9 = v7;
  v19 = v9;
  v10 = [v8 ams_anyWithTest:v18];

  if (!v10)
  {
    goto LABEL_4;
  }

  v11 = [v6 currentUser];
  v12 = [v11 identifier];
  v13 = [v9 identifier];
  v14 = [v12 isEqual:v13];

  if (v14)
  {
    v15 = [(AMSDMultiUserController *)self cloudContainer];
    v16 = [v15 privateDatabase];
  }

  else
  {
LABEL_4:
    v16 = 0;
  }

  return v16;
}

- (BOOL)multiUserRefreshThrottlingActive
{
  v2 = self;
  v3 = [(AMSDMultiUserController *)self _refreshThrottlingDate];
  v4 = +[NSDate date];
  v5 = [v4 compare:v3];

  if (v5 != 1)
  {
    v6 = +[AMSLogConfig sharedAccountsMultiUserConfig];
    if (!v6)
    {
      v6 = +[AMSLogConfig sharedConfig];
    }

    v7 = [v6 OSLogObject];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = AMSLogKey();
      v9 = objc_opt_class();
      v10 = v9;
      if (v8)
      {
        v2 = AMSLogKey();
        [NSString stringWithFormat:@"%@: [%@] ", v10, v2];
      }

      else
      {
        [NSString stringWithFormat:@"%@: ", v9];
      }
      v11 = ;
      *buf = 138543618;
      v14 = v11;
      v15 = 2114;
      v16 = v3;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Refresh throttling is active. nextRefresh = %{public}@", buf, 0x16u);
      if (v8)
      {

        v11 = v2;
      }
    }
  }

  return v5 != 1;
}

- (id)refreshWithOptions:(id)a3 metrics:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (+[AMSDevice deviceIsAppleWatch])
  {
    v8 = AMSError();
    v9 = [AMSPromise promiseWithError:v8];
  }

  else
  {
    [v6 schedulingInterval];
    if (v10 == 0.0)
    {
      v11 = +[AMSLogConfig sharedAccountsMultiUserConfig];
      if (!v11)
      {
        v11 = +[AMSLogConfig sharedConfig];
      }

      v12 = [v11 OSLogObject];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = objc_opt_class();
        v14 = AMSLogKey();
        v15 = AMSHashIfNeeded();
        *buf = 138543874;
        *&buf[4] = v13;
        *&buf[12] = 2114;
        *&buf[14] = v14;
        *&buf[22] = 2114;
        v29 = v15;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Queuing a new Multi-User refresh. options = %{public}@", buf, 0x20u);
      }

      v16 = objc_alloc_init(AMSMutablePromise);
      if (qword_1002E3250 != -1)
      {
        sub_10021B238();
      }

      v17 = qword_1002E3258;
      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = sub_100067EC0;
      v24[3] = &unk_1002B0380;
      v24[4] = self;
      v25 = v6;
      v26 = v7;
      v27 = v16;
      v18 = v24;
      v19 = v16;
      v20 = AMSLogKey();
      *buf = _NSConcreteStackBlock;
      *&buf[8] = 3221225472;
      *&buf[16] = sub_10006B0DC;
      v29 = &unk_1002B05B8;
      v30 = v20;
      v31 = v18;
      v21 = v20;
      dispatch_async(v17, buf);

      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_10006863C;
      v23[3] = &unk_1002B1118;
      v23[4] = self;
      v9 = [v19 continueWithBlock:v23];
    }

    else
    {
      v9 = [(AMSDMultiUserController *)self _scheduleRefreshWithOptions:v6];
    }
  }

  return v9;
}

- (void)cloudDataManagerDataSource:(id)a3 didChangeWithType:(unint64_t)a4
{
  v6 = +[AMSLogConfig sharedAccountsMultiUserConfig];
  if (!v6)
  {
    v6 = +[AMSLogConfig sharedConfig];
  }

  v7 = [v6 OSLogObject];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_opt_class();
    v9 = AMSLogKey();
    *buf = 138543874;
    v25 = v8;
    v26 = 2114;
    v27 = v9;
    v28 = 2048;
    v29 = a4;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Cloud data manager changed. changeType = %lu", buf, 0x20u);
  }

  if (a4)
  {
    v10 = objc_alloc_init(AMSDMultiUserMetrics);
    v11 = [(AMSDMultiUserMetrics *)v10 enqueueCloudKitSaveReceivedEvent];
    v12 = [NSString stringWithFormat:@"Cloud data manager changed. changeType = %lu", a4];
    v13 = [[AMSDRefreshMultiUserOptions alloc] initWithReason:v12];
    [(AMSDRefreshMultiUserOptions *)v13 setShouldUseCloudData:1];
    if ([(AMSDMultiUserController *)self multiUserRefreshThrottlingActive])
    {
      v14 = +[AMSLogConfig sharedAccountsMultiUserConfig];
      if (!v14)
      {
        v14 = +[AMSLogConfig sharedConfig];
      }

      v15 = [v14 OSLogObject];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = AMSLogKey();
        v17 = objc_opt_class();
        v18 = v17;
        if (v16)
        {
          self = AMSLogKey();
          [NSString stringWithFormat:@"%@: [%@] ", v18, self];
        }

        else
        {
          [NSString stringWithFormat:@"%@: ", v17];
        }
        v19 = ;
        *buf = 138543362;
        v25 = v19;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%{public}@Dropping cloud data manager changed Notification, throttled", buf, 0xCu);
        if (v16)
        {

          v19 = self;
        }
      }
    }

    else
    {
      v21 = [(AMSDMultiUserController *)self refreshWithOptions:v13 metrics:v10];
    }
  }

  else
  {
    v20 = [(AMSDMultiUserController *)self cloudContainer];
    v10 = [v20 status];

    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_100068E7C;
    v23[3] = &unk_1002AFDD8;
    v23[4] = self;
    [(AMSDMultiUserMetrics *)v10 addErrorBlock:v23];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_100068FB0;
    v22[3] = &unk_1002B1168;
    v22[4] = self;
    v22[5] = 0;
    [(AMSDMultiUserMetrics *)v10 addSuccessBlock:v22];
  }
}

- (void)homeManagerDataSource:(id)a3 didChangeWithType:(unint64_t)a4
{
  v6 = +[AMSLogConfig sharedAccountsMultiUserConfig];
  if (!v6)
  {
    v6 = +[AMSLogConfig sharedConfig];
  }

  v7 = [v6 OSLogObject];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_opt_class();
    v9 = AMSLogKey();
    *buf = 138543874;
    v23 = v8;
    v24 = 2114;
    v25 = v9;
    v26 = 2048;
    v27 = a4;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Home manager changed. changeType = %lu", buf, 0x20u);
  }

  v10 = objc_alloc_init(AMSDMultiUserMetrics);
  v11 = [(AMSDMultiUserMetrics *)v10 enqueueHomeKitChangedReceivedEvent];
  v12 = [NSString stringWithFormat:@"Home manager changed (changeType = %lu)", a4];
  v13 = [[AMSDRefreshMultiUserOptions alloc] initWithReason:v12];
  [(AMSDRefreshMultiUserOptions *)v13 setShouldUseCloudData:0];
  if (a4 == 2)
  {
    v14 = 0;
  }

  else
  {
    if (a4 != 3)
    {
      goto LABEL_10;
    }

    v14 = 1;
  }

  [(AMSDRefreshMultiUserOptions *)v13 setShouldUseCloudData:1];
  [(AMSDRefreshMultiUserOptions *)v13 setReasonType:v14];
LABEL_10:
  if ([(AMSDMultiUserController *)self multiUserRefreshThrottlingActive])
  {
    v15 = +[AMSLogConfig sharedAccountsMultiUserConfig];
    if (!v15)
    {
      v15 = +[AMSLogConfig sharedConfig];
    }

    v16 = [v15 OSLogObject];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = AMSLogKey();
      v18 = objc_opt_class();
      v19 = v18;
      if (v17)
      {
        self = AMSLogKey();
        [NSString stringWithFormat:@"%@: [%@] ", v19, self];
      }

      else
      {
        [NSString stringWithFormat:@"%@: ", v18];
      }
      v20 = ;
      *buf = 138543362;
      v23 = v20;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%{public}@Dropping Home Manager Changed Notification, throttled", buf, 0xCu);
      if (v17)
      {

        v20 = self;
      }
    }
  }

  else
  {
    v21 = [(AMSDMultiUserController *)self refreshWithOptions:v13 metrics:v10];
  }
}

- (void)homeManagerDataSource:(id)a3 didReceiveCloudDataRepairRequestForHome:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[AMSLogConfig sharedAccountsMultiUserConfig];
  if (!v8)
  {
    v8 = +[AMSLogConfig sharedConfig];
  }

  v9 = [v8 OSLogObject];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = objc_opt_class();
    v11 = AMSLogKey();
    v12 = AMSHashIfNeeded();
    *buf = 138543874;
    *&buf[4] = v10;
    *&buf[12] = 2114;
    *&buf[14] = v11;
    *&buf[22] = 2114;
    v35 = v12;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Data source received a cloud data repair request, queuing. home = %{public}@", buf, 0x20u);
  }

  v13 = objc_alloc_init(AMSDMultiUserMetrics);
  v14 = [(AMSDMultiUserMetrics *)v13 enqueueHomeKitRepairRequestReceivedEvent];
  if ([v7 isCurrentUserRestrictedGuest])
  {
    v15 = +[AMSLogConfig sharedAccountsMultiUserConfig];
    if (!v15)
    {
      v15 = +[AMSLogConfig sharedConfig];
    }

    v16 = [v15 OSLogObject];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = objc_opt_class();
      v18 = AMSLogKey();
      *buf = 138543618;
      *&buf[4] = v17;
      *&buf[12] = 2114;
      *&buf[14] = v18;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Current User is restricted guest in home, not updating multi-user token, task will not be queued.", buf, 0x16u);
    }
  }

  else
  {
    if (qword_1002E3268 != -1)
    {
      sub_10021B260();
    }

    v19 = qword_1002E3270;
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v35 = sub_100069A54;
    v36 = sub_100069A80;
    v37 = 0;
    v26 = _NSConcreteStackBlock;
    v27 = 3221225472;
    v28 = sub_100069A88;
    v29 = &unk_1002B11D8;
    v30 = self;
    v20 = v7;
    v31 = v20;
    v15 = v19;
    v32 = v15;
    v33 = buf;
    v21 = objc_retainBlock(&v26);
    v22 = *(*&buf[8] + 40);
    *(*&buf[8] + 40) = v21;

    os_unfair_lock_lock_with_options();
    v23 = [AMSDUpdateMultiUserTokenTask alloc];
    v24 = [(AMSDUpdateMultiUserTokenTask *)v23 initWithController:self home:v20, v26, v27, v28, v29, v30];
    [(AMSDUpdateMultiUserTokenTask *)v24 setMetrics:v13];
    [v15 addObject:v24];
    v25 = [v15 count];
    os_unfair_lock_unlock(&unk_1002E3260);
    if (v25 == 1)
    {
      (*(*(*&buf[8] + 40) + 16))();
    }

    _Block_object_dispose(buf, 8);
  }
}

- (void)homeManagerDataSource:(id)a3 didReceiveCloudShare:(id)a4 completion:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = +[AMSLogConfig sharedAccountsMultiUserConfig];
  if (!v9)
  {
    v9 = +[AMSLogConfig sharedConfig];
  }

  v10 = [v9 OSLogObject];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = objc_opt_class();
    v12 = AMSLogKey();
    v13 = AMSHashIfNeeded();
    *buf = 138543874;
    v20 = v11;
    v21 = 2114;
    v22 = v12;
    v23 = 2114;
    v24 = v13;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Data source received a cloud share. share = %{public}@", buf, 0x20u);
  }

  v14 = [[AMSDAcceptHomeCloudShareTask alloc] initWithController:self cloudShare:v7];
  v15 = [(AMSDAcceptHomeCloudShareTask *)v14 performTask];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10006A048;
  v17[3] = &unk_1002B0EB8;
  v18 = v8;
  v16 = v8;
  [v15 addFinishBlock:v17];
}

- (void)handlePushNotification:(id)a3
{
  v4 = a3;
  v5 = [(AMSDMultiUserController *)self cloudDataManager];
  [v5 handlePushNotification:v4];
}

- (BOOL)shouldEnablePushTopic
{
  v2 = objc_opt_class();

  return [v2 deviceSupportsMultipleUsers];
}

- (id)_isCloudDataAvailable
{
  v3 = [(AMSDMultiUserController *)self cloudContainer];
  v4 = [v3 status];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10006A1AC;
  v8[3] = &unk_1002B1228;
  v8[4] = self;
  v5 = [v4 continueWithBlock:v8];
  v6 = [v5 binaryPromiseAdapter];

  return v6;
}

- (id)_isRefreshThrottlingDisabledWithOptions:(id)a3
{
  v4 = a3;
  v5 = [(AMSDMultiUserController *)self _refreshThrottlingDate];
  v6 = +[NSDate date];
  v7 = [v6 compare:v5];

  if (v7 != -1)
  {
LABEL_8:
    v12 = +[AMSBinaryPromise promiseWithSuccess];
    goto LABEL_9;
  }

  if ([v4 ignoreThrottling])
  {
    v8 = +[AMSLogConfig sharedAccountsMultiUserConfig];
    if (!v8)
    {
      v8 = +[AMSLogConfig sharedConfig];
    }

    v9 = [v8 OSLogObject];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = objc_opt_class();
      v11 = AMSLogKey();
      *buf = 138543618;
      v17 = v10;
      v18 = 2114;
      v19 = v11;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Ignoring active refresh throttling.", buf, 0x16u);
    }

    goto LABEL_8;
  }

  v14 = [NSString stringWithFormat:@"Refresh throttling is active. nextRefresh = %@", v5];
  v15 = AMSError();
  v12 = [AMSBinaryPromise promiseWithError:v15];

LABEL_9:

  return v12;
}

- (BOOL)_refreshShouldUseCloudDataWithHomes:(id)a3
{
  v3 = a3;
  v4 = [AMSStorage _valueForKey:@"AMSDLastMultiUserRefresh"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  [v5 doubleValue];
  v7 = v6;

  v8 = [NSDate dateWithTimeIntervalSinceReferenceDate:v7];
  v9 = +[NSDate date];
  v10 = [v8 dateByAddingTimeInterval:86400.0];
  v11 = [v9 compare:v10];

  if (v11 == -1)
  {
    v13 = [AMSStorage _valueForKey:@"AMSDLastMultiUserRefreshHomes"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v15 = [v3 ams_mapWithTransform:&stru_1002B1268];
    v16 = v15;
    LOBYTE(v12) = 1;
    if (v14 && v15)
    {
      v17 = [[NSSet alloc] initWithArray:v14];
      v18 = [[NSSet alloc] initWithArray:v16];
      v12 = [v17 isEqualToSet:v18] ^ 1;
    }
  }

  else
  {
    LOBYTE(v12) = 1;
  }

  return v12;
}

- (id)_refreshThrottlingDate
{
  v2 = [AMSStorage _valueForKey:@"AMSDNextRefresh"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  [v3 doubleValue];
  v5 = v4;

  return [NSDate dateWithTimeIntervalSinceReferenceDate:v5];
}

- (void)_setLastSuccessfulRefreshDateWithHomes:(id)a3
{
  v3 = a3;
  v4 = +[NSDate date];
  [v4 timeIntervalSinceReferenceDate];
  v5 = [NSNumber numberWithDouble:?];
  [AMSStorage _setValue:v5 forKey:@"AMSDLastMultiUserRefresh"];

  v6 = [v3 ams_mapWithTransform:&stru_1002B1288];

  [AMSStorage _setValue:v6 forKey:@"AMSDLastMultiUserRefreshHomes"];
}

- (void)_setRefreshThrottlingDateWithTimeInterval:(double)a3
{
  v4 = +[NSDate date];
  v6 = [v4 dateByAddingTimeInterval:a3];

  [v6 timeIntervalSinceReferenceDate];
  v5 = [NSNumber numberWithDouble:?];
  [AMSStorage _setValue:v5 forKey:@"AMSDNextRefresh"];
}

- (id)_scheduleRefreshWithOptions:(id)a3
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
    v9 = AMSHashIfNeeded();
    *buf = 138543874;
    v21 = v7;
    v22 = 2114;
    v23 = v8;
    v24 = 2114;
    v25 = v9;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Scheduling a refresh. options = %{public}@", buf, 0x20u);
  }

  [v4 schedulingInterval];
  v10 = [NSDate dateWithTimeIntervalSinceNow:?];
  v11 = [(AMSDMultiUserController *)self _refreshThrottlingDate];
  if ([v10 compare:v11] == 1)
  {
    [v4 throttlingInterval];
    v13 = v12;
    if (v12 != 0.0)
    {
      [v4 throttlingInterval];
      [(AMSDMultiUserController *)self _setRefreshThrottlingDateWithTimeInterval:?];
    }

    v14 = [[AMSDBackgroundActivityScheduler alloc] initWithIdentifier:@"com.apple.amsaccountsd.refresh"];
    v15 = [objc_opt_class() _scheduledRefreshActivityBlock];
    [(AMSDBackgroundActivityScheduler *)v14 setActivityBlock:v15];

    [(AMSDBackgroundActivityScheduler *)v14 setAllowBattery:1];
    [v4 schedulingInterval];
    [(AMSDBackgroundActivityScheduler *)v14 setInterval:?];
    [(AMSDBackgroundActivityScheduler *)v14 setQualityOfService:17];
    [(AMSDBackgroundActivityScheduler *)v14 setRequireNetworkConnection:1];
    [(AMSDBackgroundActivityScheduler *)v14 schedule];
    v16 = [[AMSDRefreshMultiUserResult alloc] initWithHomes:0 options:v4];
    [(AMSDRefreshMultiUserResult *)v16 setEnabledThrottling:v13 != 0.0];
    [(AMSDRefreshMultiUserResult *)v16 setScheduled:1];
    v17 = [AMSPromise promiseWithResult:v16];
  }

  else
  {
    v14 = [NSString stringWithFormat:@"Refresh throttling is active. nextRefresh = %@", v11];
    v16 = AMSError();
    v17 = [AMSPromise promiseWithError:v16];
  }

  v18 = v17;

  return v18;
}

@end