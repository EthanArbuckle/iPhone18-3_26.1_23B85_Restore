@interface AMSDMultiUserController
+ (BOOL)deviceCanManageMultiUser;
+ (BOOL)deviceSupportsMultipleUsers;
+ (id)sharedController;
- (AMSDCloudDataContainer)cloudContainer;
- (AMSDMultiUserController)initWithCloudDataManager:(id)manager homeManager:(id)homeManager;
- (BOOL)_refreshShouldUseCloudDataWithHomes:(id)homes;
- (BOOL)multiUserRefreshThrottlingActive;
- (BOOL)shouldEnablePushTopic;
- (NSString)pushTopic;
- (id)_isCloudDataAvailable;
- (id)_isRefreshThrottlingDisabledWithOptions:(id)options;
- (id)_refreshThrottlingDate;
- (id)_scheduleRefreshWithOptions:(id)options;
- (id)databaseForHome:(id)home user:(id)user;
- (id)refreshWithOptions:(id)options metrics:(id)metrics;
- (void)_setLastSuccessfulRefreshDateWithHomes:(id)homes;
- (void)_setRefreshThrottlingDateWithTimeInterval:(double)interval;
- (void)cloudDataManagerDataSource:(id)source didChangeWithType:(unint64_t)type;
- (void)handlePushNotification:(id)notification;
- (void)homeManagerDataSource:(id)source didChangeWithType:(unint64_t)type;
- (void)homeManagerDataSource:(id)source didReceiveCloudDataRepairRequestForHome:(id)home;
- (void)homeManagerDataSource:(id)source didReceiveCloudShare:(id)share completion:(id)completion;
- (void)teardownMultiUser;
@end

@implementation AMSDMultiUserController

- (AMSDMultiUserController)initWithCloudDataManager:(id)manager homeManager:(id)homeManager
{
  managerCopy = manager;
  homeManagerCopy = homeManager;
  v14.receiver = self;
  v14.super_class = AMSDMultiUserController;
  v9 = [(AMSDMultiUserController *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_cloudDataManager, manager);
    objc_storeStrong(&v10->_homeManager, homeManager);
    v11 = objc_alloc_init(AMSThreadSafeObject);
    previousCloudContainerStatus = v10->_previousCloudContainerStatus;
    v10->_previousCloudContainerStatus = v11;
  }

  return v10;
}

- (void)teardownMultiUser
{
  homeManager = [(AMSDMultiUserController *)self homeManager];
  [homeManager teardownMultiUser];

  [(AMSDMultiUserController *)self setHomeManager:0];
}

+ (id)sharedController
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10006749C;
  block[3] = &unk_1002B0760;
  block[4] = self;
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

  cloudDataManager = [(AMSDMultiUserController *)self cloudDataManager];
  v9 = [cloudDataManager containerWithContainerIdentifier:v7 options:v3];

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
  cloudDataManager = [(AMSDMultiUserController *)self cloudDataManager];
  pushNotificationTopic = [cloudDataManager pushNotificationTopic];

  return pushNotificationTopic;
}

- (id)databaseForHome:(id)home user:(id)user
{
  homeCopy = home;
  userCopy = user;
  users = [homeCopy users];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1000678C4;
  v18[3] = &unk_1002B0248;
  v9 = userCopy;
  v19 = v9;
  v10 = [users ams_anyWithTest:v18];

  if (!v10)
  {
    goto LABEL_4;
  }

  currentUser = [homeCopy currentUser];
  identifier = [currentUser identifier];
  identifier2 = [v9 identifier];
  v14 = [identifier isEqual:identifier2];

  if (v14)
  {
    cloudContainer = [(AMSDMultiUserController *)self cloudContainer];
    privateDatabase = [cloudContainer privateDatabase];
  }

  else
  {
LABEL_4:
    privateDatabase = 0;
  }

  return privateDatabase;
}

- (BOOL)multiUserRefreshThrottlingActive
{
  selfCopy = self;
  _refreshThrottlingDate = [(AMSDMultiUserController *)self _refreshThrottlingDate];
  v4 = +[NSDate date];
  v5 = [v4 compare:_refreshThrottlingDate];

  if (v5 != 1)
  {
    v6 = +[AMSLogConfig sharedAccountsMultiUserConfig];
    if (!v6)
    {
      v6 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v6 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v8 = AMSLogKey();
      v9 = objc_opt_class();
      v10 = v9;
      if (v8)
      {
        selfCopy = AMSLogKey();
        [NSString stringWithFormat:@"%@: [%@] ", v10, selfCopy];
      }

      else
      {
        [NSString stringWithFormat:@"%@: ", v9];
      }
      v11 = ;
      *buf = 138543618;
      v14 = v11;
      v15 = 2114;
      v16 = _refreshThrottlingDate;
      _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@Refresh throttling is active. nextRefresh = %{public}@", buf, 0x16u);
      if (v8)
      {

        v11 = selfCopy;
      }
    }
  }

  return v5 != 1;
}

- (id)refreshWithOptions:(id)options metrics:(id)metrics
{
  optionsCopy = options;
  metricsCopy = metrics;
  if (+[AMSDevice deviceIsAppleWatch])
  {
    v8 = AMSError();
    v9 = [AMSPromise promiseWithError:v8];
  }

  else
  {
    [optionsCopy schedulingInterval];
    if (v10 == 0.0)
    {
      v11 = +[AMSLogConfig sharedAccountsMultiUserConfig];
      if (!v11)
      {
        v11 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject = [v11 OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
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
        _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Queuing a new Multi-User refresh. options = %{public}@", buf, 0x20u);
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
      v25 = optionsCopy;
      v26 = metricsCopy;
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
      v9 = [(AMSDMultiUserController *)self _scheduleRefreshWithOptions:optionsCopy];
    }
  }

  return v9;
}

- (void)cloudDataManagerDataSource:(id)source didChangeWithType:(unint64_t)type
{
  v6 = +[AMSLogConfig sharedAccountsMultiUserConfig];
  if (!v6)
  {
    v6 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v6 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_opt_class();
    v9 = AMSLogKey();
    *buf = 138543874;
    v25 = v8;
    v26 = 2114;
    v27 = v9;
    v28 = 2048;
    typeCopy = type;
    _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Cloud data manager changed. changeType = %lu", buf, 0x20u);
  }

  if (type)
  {
    status = objc_alloc_init(AMSDMultiUserMetrics);
    enqueueCloudKitSaveReceivedEvent = [(AMSDMultiUserMetrics *)status enqueueCloudKitSaveReceivedEvent];
    type = [NSString stringWithFormat:@"Cloud data manager changed. changeType = %lu", type];
    v13 = [[AMSDRefreshMultiUserOptions alloc] initWithReason:type];
    [(AMSDRefreshMultiUserOptions *)v13 setShouldUseCloudData:1];
    if ([(AMSDMultiUserController *)self multiUserRefreshThrottlingActive])
    {
      v14 = +[AMSLogConfig sharedAccountsMultiUserConfig];
      if (!v14)
      {
        v14 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject2 = [v14 OSLogObject];
      if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
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
        selfCopy = ;
        *buf = 138543362;
        v25 = selfCopy;
        _os_log_impl(&_mh_execute_header, oSLogObject2, OS_LOG_TYPE_DEFAULT, "%{public}@Dropping cloud data manager changed Notification, throttled", buf, 0xCu);
        if (v16)
        {

          selfCopy = self;
        }
      }
    }

    else
    {
      v21 = [(AMSDMultiUserController *)self refreshWithOptions:v13 metrics:status];
    }
  }

  else
  {
    cloudContainer = [(AMSDMultiUserController *)self cloudContainer];
    status = [cloudContainer status];

    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_100068E7C;
    v23[3] = &unk_1002AFDD8;
    v23[4] = self;
    [(AMSDMultiUserMetrics *)status addErrorBlock:v23];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_100068FB0;
    v22[3] = &unk_1002B1168;
    v22[4] = self;
    v22[5] = 0;
    [(AMSDMultiUserMetrics *)status addSuccessBlock:v22];
  }
}

- (void)homeManagerDataSource:(id)source didChangeWithType:(unint64_t)type
{
  v6 = +[AMSLogConfig sharedAccountsMultiUserConfig];
  if (!v6)
  {
    v6 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v6 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_opt_class();
    v9 = AMSLogKey();
    *buf = 138543874;
    v23 = v8;
    v24 = 2114;
    v25 = v9;
    v26 = 2048;
    typeCopy = type;
    _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Home manager changed. changeType = %lu", buf, 0x20u);
  }

  v10 = objc_alloc_init(AMSDMultiUserMetrics);
  enqueueHomeKitChangedReceivedEvent = [(AMSDMultiUserMetrics *)v10 enqueueHomeKitChangedReceivedEvent];
  type = [NSString stringWithFormat:@"Home manager changed (changeType = %lu)", type];
  v13 = [[AMSDRefreshMultiUserOptions alloc] initWithReason:type];
  [(AMSDRefreshMultiUserOptions *)v13 setShouldUseCloudData:0];
  if (type == 2)
  {
    v14 = 0;
  }

  else
  {
    if (type != 3)
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

    oSLogObject2 = [v15 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
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
      selfCopy = ;
      *buf = 138543362;
      v23 = selfCopy;
      _os_log_impl(&_mh_execute_header, oSLogObject2, OS_LOG_TYPE_DEFAULT, "%{public}@Dropping Home Manager Changed Notification, throttled", buf, 0xCu);
      if (v17)
      {

        selfCopy = self;
      }
    }
  }

  else
  {
    v21 = [(AMSDMultiUserController *)self refreshWithOptions:v13 metrics:v10];
  }
}

- (void)homeManagerDataSource:(id)source didReceiveCloudDataRepairRequestForHome:(id)home
{
  sourceCopy = source;
  homeCopy = home;
  v8 = +[AMSLogConfig sharedAccountsMultiUserConfig];
  if (!v8)
  {
    v8 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v8 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
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
    _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Data source received a cloud data repair request, queuing. home = %{public}@", buf, 0x20u);
  }

  v13 = objc_alloc_init(AMSDMultiUserMetrics);
  enqueueHomeKitRepairRequestReceivedEvent = [(AMSDMultiUserMetrics *)v13 enqueueHomeKitRepairRequestReceivedEvent];
  if ([homeCopy isCurrentUserRestrictedGuest])
  {
    v15 = +[AMSLogConfig sharedAccountsMultiUserConfig];
    if (!v15)
    {
      v15 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject2 = [v15 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
    {
      v17 = objc_opt_class();
      v18 = AMSLogKey();
      *buf = 138543618;
      *&buf[4] = v17;
      *&buf[12] = 2114;
      *&buf[14] = v18;
      _os_log_impl(&_mh_execute_header, oSLogObject2, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Current User is restricted guest in home, not updating multi-user token, task will not be queued.", buf, 0x16u);
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
    selfCopy = self;
    v20 = homeCopy;
    v31 = v20;
    v15 = v19;
    v32 = v15;
    v33 = buf;
    v21 = objc_retainBlock(&v26);
    v22 = *(*&buf[8] + 40);
    *(*&buf[8] + 40) = v21;

    os_unfair_lock_lock_with_options();
    v23 = [AMSDUpdateMultiUserTokenTask alloc];
    selfCopy = [(AMSDUpdateMultiUserTokenTask *)v23 initWithController:self home:v20, v26, v27, v28, v29, selfCopy];
    [(AMSDUpdateMultiUserTokenTask *)selfCopy setMetrics:v13];
    [v15 addObject:selfCopy];
    v25 = [v15 count];
    os_unfair_lock_unlock(&unk_1002E3260);
    if (v25 == 1)
    {
      (*(*(*&buf[8] + 40) + 16))();
    }

    _Block_object_dispose(buf, 8);
  }
}

- (void)homeManagerDataSource:(id)source didReceiveCloudShare:(id)share completion:(id)completion
{
  shareCopy = share;
  completionCopy = completion;
  v9 = +[AMSLogConfig sharedAccountsMultiUserConfig];
  if (!v9)
  {
    v9 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v9 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
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
    _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Data source received a cloud share. share = %{public}@", buf, 0x20u);
  }

  v14 = [[AMSDAcceptHomeCloudShareTask alloc] initWithController:self cloudShare:shareCopy];
  performTask = [(AMSDAcceptHomeCloudShareTask *)v14 performTask];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10006A048;
  v17[3] = &unk_1002B0EB8;
  v18 = completionCopy;
  v16 = completionCopy;
  [performTask addFinishBlock:v17];
}

- (void)handlePushNotification:(id)notification
{
  notificationCopy = notification;
  cloudDataManager = [(AMSDMultiUserController *)self cloudDataManager];
  [cloudDataManager handlePushNotification:notificationCopy];
}

- (BOOL)shouldEnablePushTopic
{
  v2 = objc_opt_class();

  return [v2 deviceSupportsMultipleUsers];
}

- (id)_isCloudDataAvailable
{
  cloudContainer = [(AMSDMultiUserController *)self cloudContainer];
  status = [cloudContainer status];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10006A1AC;
  v8[3] = &unk_1002B1228;
  v8[4] = self;
  v5 = [status continueWithBlock:v8];
  binaryPromiseAdapter = [v5 binaryPromiseAdapter];

  return binaryPromiseAdapter;
}

- (id)_isRefreshThrottlingDisabledWithOptions:(id)options
{
  optionsCopy = options;
  _refreshThrottlingDate = [(AMSDMultiUserController *)self _refreshThrottlingDate];
  v6 = +[NSDate date];
  v7 = [v6 compare:_refreshThrottlingDate];

  if (v7 != -1)
  {
LABEL_8:
    v12 = +[AMSBinaryPromise promiseWithSuccess];
    goto LABEL_9;
  }

  if ([optionsCopy ignoreThrottling])
  {
    v8 = +[AMSLogConfig sharedAccountsMultiUserConfig];
    if (!v8)
    {
      v8 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v8 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v10 = objc_opt_class();
      v11 = AMSLogKey();
      *buf = 138543618;
      v17 = v10;
      v18 = 2114;
      v19 = v11;
      _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Ignoring active refresh throttling.", buf, 0x16u);
    }

    goto LABEL_8;
  }

  v14 = [NSString stringWithFormat:@"Refresh throttling is active. nextRefresh = %@", _refreshThrottlingDate];
  v15 = AMSError();
  v12 = [AMSBinaryPromise promiseWithError:v15];

LABEL_9:

  return v12;
}

- (BOOL)_refreshShouldUseCloudDataWithHomes:(id)homes
{
  homesCopy = homes;
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

    v15 = [homesCopy ams_mapWithTransform:&stru_1002B1268];
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

- (void)_setLastSuccessfulRefreshDateWithHomes:(id)homes
{
  homesCopy = homes;
  v4 = +[NSDate date];
  [v4 timeIntervalSinceReferenceDate];
  v5 = [NSNumber numberWithDouble:?];
  [AMSStorage _setValue:v5 forKey:@"AMSDLastMultiUserRefresh"];

  v6 = [homesCopy ams_mapWithTransform:&stru_1002B1288];

  [AMSStorage _setValue:v6 forKey:@"AMSDLastMultiUserRefreshHomes"];
}

- (void)_setRefreshThrottlingDateWithTimeInterval:(double)interval
{
  v4 = +[NSDate date];
  v6 = [v4 dateByAddingTimeInterval:interval];

  [v6 timeIntervalSinceReferenceDate];
  v5 = [NSNumber numberWithDouble:?];
  [AMSStorage _setValue:v5 forKey:@"AMSDNextRefresh"];
}

- (id)_scheduleRefreshWithOptions:(id)options
{
  optionsCopy = options;
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
    v9 = AMSHashIfNeeded();
    *buf = 138543874;
    v21 = v7;
    v22 = 2114;
    v23 = v8;
    v24 = 2114;
    v25 = v9;
    _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Scheduling a refresh. options = %{public}@", buf, 0x20u);
  }

  [optionsCopy schedulingInterval];
  v10 = [NSDate dateWithTimeIntervalSinceNow:?];
  _refreshThrottlingDate = [(AMSDMultiUserController *)self _refreshThrottlingDate];
  if ([v10 compare:_refreshThrottlingDate] == 1)
  {
    [optionsCopy throttlingInterval];
    v13 = v12;
    if (v12 != 0.0)
    {
      [optionsCopy throttlingInterval];
      [(AMSDMultiUserController *)self _setRefreshThrottlingDateWithTimeInterval:?];
    }

    v14 = [[AMSDBackgroundActivityScheduler alloc] initWithIdentifier:@"com.apple.amsaccountsd.refresh"];
    _scheduledRefreshActivityBlock = [objc_opt_class() _scheduledRefreshActivityBlock];
    [(AMSDBackgroundActivityScheduler *)v14 setActivityBlock:_scheduledRefreshActivityBlock];

    [(AMSDBackgroundActivityScheduler *)v14 setAllowBattery:1];
    [optionsCopy schedulingInterval];
    [(AMSDBackgroundActivityScheduler *)v14 setInterval:?];
    [(AMSDBackgroundActivityScheduler *)v14 setQualityOfService:17];
    [(AMSDBackgroundActivityScheduler *)v14 setRequireNetworkConnection:1];
    [(AMSDBackgroundActivityScheduler *)v14 schedule];
    v16 = [[AMSDRefreshMultiUserResult alloc] initWithHomes:0 options:optionsCopy];
    [(AMSDRefreshMultiUserResult *)v16 setEnabledThrottling:v13 != 0.0];
    [(AMSDRefreshMultiUserResult *)v16 setScheduled:1];
    v17 = [AMSPromise promiseWithResult:v16];
  }

  else
  {
    v14 = [NSString stringWithFormat:@"Refresh throttling is active. nextRefresh = %@", _refreshThrottlingDate];
    v16 = AMSError();
    v17 = [AMSPromise promiseWithError:v16];
  }

  v18 = v17;

  return v18;
}

@end