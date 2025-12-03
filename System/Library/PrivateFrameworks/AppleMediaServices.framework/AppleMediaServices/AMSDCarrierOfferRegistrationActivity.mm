@interface AMSDCarrierOfferRegistrationActivity
+ (double)_retrievePollingTime;
+ (id)_task;
- (AMSDCarrierOfferRegistrationActivity)init;
- (id)criteria;
- (void)_registerForNextAttemptWithScheduler:(id)scheduler;
- (void)runActivityQueuedByScheduler:(id)scheduler;
@end

@implementation AMSDCarrierOfferRegistrationActivity

- (AMSDCarrierOfferRegistrationActivity)init
{
  v6.receiver = self;
  v6.super_class = AMSDCarrierOfferRegistrationActivity;
  v2 = [(AMSDCarrierOfferRegistrationActivity *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.amsaccountd.carrierOfferRegistration.workQueue", 0);
    workQueue = v2->_workQueue;
    v2->_workQueue = v3;
  }

  return v2;
}

- (id)criteria
{
  v2 = [AMSDXPCActivityCriteriaBuilder alloc];
  [objc_opt_class() _retrievePollingTime];
  v3 = [NSNumber numberWithDouble:?];
  v4 = [(AMSDXPCActivityCriteriaBuilder *)v2 initWithCanRunOnBattery:1 delay:v3 gracePeriod:0 inexpensiveNetworkConnection:1 priority:0 repeating:1 requiresNetwork:7200.0];
  buildXPCObject = [(AMSDXPCActivityCriteriaBuilder *)v4 buildXPCObject];

  return buildXPCObject;
}

- (void)runActivityQueuedByScheduler:(id)scheduler
{
  schedulerCopy = scheduler;
  workQueue = [(AMSDCarrierOfferRegistrationActivity *)self workQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000469D4;
  v7[3] = &unk_1002B00E8;
  v7[4] = self;
  v8 = schedulerCopy;
  v6 = schedulerCopy;
  [AMSDTransactionStore takeKeepAliveTransaction:@"com.apple.amsaccounts.carrierOfferRegistration.run" withQueue:workQueue whilePerformingBlock:v7];
}

- (void)_registerForNextAttemptWithScheduler:(id)scheduler
{
  schedulerCopy = scheduler;
  activityIdentifier = [(AMSDCarrierOfferRegistrationActivity *)self activityIdentifier];
  [schedulerCopy removeActivity:activityIdentifier];

  v6 = objc_alloc_init(objc_opt_class());
  [schedulerCopy scheduleIfNeededActivity:v6];
}

+ (double)_retrievePollingTime
{
  v3 = +[AMSCarrierOfferRegistrationTask createBagForSubProfile];
  v4 = [AMSCarrierOfferRegistrationTask pollingIntervalFromBag:v3];
  v18 = 0;
  v5 = [v4 resultWithError:&v18];
  v6 = v18;

  if (!v6)
  {
    if (v5)
    {
      [v5 doubleValue];
      v9 = v12;
      v7 = +[AMSLogConfig sharedAccountsDaemonConfig];
      if (!v7)
      {
        v7 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject = [v7 OSLogObject];
      if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_17;
      }

      v10 = AMSLogKey();
      *buf = 138543874;
      selfCopy3 = self;
      v21 = 2114;
      v22 = v10;
      v23 = 2048;
      v24 = v9;
      v13 = "%{public}@: [%{public}@] Polling time retrieved: %f";
      v14 = oSLogObject;
      v15 = OS_LOG_TYPE_DEFAULT;
      v16 = 32;
    }

    else
    {
      v7 = +[AMSLogConfig sharedAccountsDaemonConfig];
      if (!v7)
      {
        v7 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject = [v7 OSLogObject];
      v9 = 86400.0;
      if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_17;
      }

      v10 = AMSLogKey();
      *buf = 138543618;
      selfCopy3 = self;
      v21 = 2114;
      v22 = v10;
      v13 = "%{public}@: [%{public}@] Unexpected error - no delay\nFalling back to default";
      v14 = oSLogObject;
      v15 = OS_LOG_TYPE_ERROR;
      v16 = 22;
    }

    _os_log_impl(&_mh_execute_header, v14, v15, v13, buf, v16);
    goto LABEL_16;
  }

  v7 = +[AMSLogConfig sharedAccountsDaemonConfig];
  if (!v7)
  {
    v7 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v7 OSLogObject];
  v9 = 86400.0;
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
  {
    v10 = AMSLogKey();
    v11 = AMSLogableError();
    *buf = 138543874;
    selfCopy3 = self;
    v21 = 2114;
    v22 = v10;
    v23 = 2114;
    v24 = *&v11;
    _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Polling time retrieval error: %{public}@\nFalling back to default", buf, 0x20u);

LABEL_16:
  }

LABEL_17:

  return v9;
}

+ (id)_task
{
  v2 = [AMSCarrierOfferRegistrationTask alloc];
  v3 = +[ACAccountStore ams_sharedAccountStore];
  ams_activeiTunesAccount = [v3 ams_activeiTunesAccount];
  v5 = +[AMSCarrierOfferRegistrationTask createBagForSubProfile];
  v6 = [v2 initWithAccount:ams_activeiTunesAccount bag:v5];

  return v6;
}

@end