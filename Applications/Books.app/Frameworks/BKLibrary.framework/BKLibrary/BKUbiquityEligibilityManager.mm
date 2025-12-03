@interface BKUbiquityEligibilityManager
- (BKUbiquityEligibilityManager)initWithQuotaFetcher:(id)fetcher eligibleBooksProvider:(id)provider ubiquityStatusMonitor:(id)monitor;
- (id)mq_setupAndStartQueryWithGroup:(id)group;
- (void)determineCloudEligibility:(id)eligibility;
- (void)mq_queryDidFinish:(id)finish;
- (void)mq_tearDownQuery:(id)query;
- (void)ubiquityDocumentsURLChanged:(id)changed;
@end

@implementation BKUbiquityEligibilityManager

- (BKUbiquityEligibilityManager)initWithQuotaFetcher:(id)fetcher eligibleBooksProvider:(id)provider ubiquityStatusMonitor:(id)monitor
{
  fetcherCopy = fetcher;
  providerCopy = provider;
  monitorCopy = monitor;
  v15.receiver = self;
  v15.super_class = BKUbiquityEligibilityManager;
  v12 = [(BKUbiquityEligibilityManager *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_quotaFetcher, fetcher);
    objc_storeStrong(&v13->_eligibleBooksProvider, provider);
    objc_storeStrong(&v13->_ubiquityStatusMonitor, monitor);
    [(IMUbiquityStatusMonitor *)v13->_ubiquityStatusMonitor addObserver:v13];
  }

  return v13;
}

- (void)determineCloudEligibility:(id)eligibility
{
  eligibilityCopy = eligibility;
  if (!+[NSThread isMainThread])
  {
    sub_8D328();
  }

  eligibleBooksProvider = [(BKUbiquityEligibilityManager *)self eligibleBooksProvider];
  if (eligibleBooksProvider && (v6 = eligibleBooksProvider, [(BKUbiquityEligibilityManager *)self quotaFetcher], v7 = objc_claimAutoreleasedReturnValue(), v7, v6, v7))
  {
    kdebug_trace();
    v8 = dispatch_group_create();
    dispatch_group_enter(v8);
    v9 = [(BKUbiquityEligibilityManager *)self mq_setupAndStartQueryWithGroup:v8];
    eligibleBooksProvider2 = [(BKUbiquityEligibilityManager *)self eligibleBooksProvider];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_66D4;
    v13[3] = &unk_D5498;
    v13[4] = self;
    v14 = v8;
    v15 = v9;
    v16 = eligibilityCopy;
    v11 = v9;
    v12 = v8;
    [eligibleBooksProvider2 fetchAllLocalBooksEligibleToBeMadeUbiquitousWithCompletion:v13];
  }

  else
  {
    (*(eligibilityCopy + 2))(eligibilityCopy, 0, 0, 0, 0, 0);
  }
}

- (id)mq_setupAndStartQueryWithGroup:(id)group
{
  groupCopy = group;
  if (!+[NSThread isMainThread])
  {
    sub_8D364();
  }

  v5 = objc_opt_new();
  dispatch_group_enter(groupCopy);
  if (groupCopy)
  {
    objc_setAssociatedObject(v5, off_EE640, groupCopy, &dword_0 + 1);
  }

  v6 = dispatch_group_create();
  documentsURLBecomesAvailable = self->_documentsURLBecomesAvailable;
  self->_documentsURLBecomesAvailable = v6;

  ubiquityStatusMonitor = [(BKUbiquityEligibilityManager *)self ubiquityStatusMonitor];
  documentsURL = [ubiquityStatusMonitor documentsURL];

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v10 = @"nil";
    if (documentsURL)
    {
      v10 = documentsURL;
    }

    *buf = 138412290;
    v19 = v10;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_INFO, "Current documentsURL = %@", buf, 0xCu);
  }

  if (!documentsURL)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_INFO, "documentsURL is nil. Waiting for ubiquityStatusMonitor to notify us when it comes back.", buf, 2u);
    }

    dispatch_group_enter(self->_documentsURLBecomesAvailable);
  }

  v11 = self->_documentsURLBecomesAvailable;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_7118;
  v16[3] = &unk_D5420;
  v16[4] = self;
  v12 = v5;
  v17 = v12;
  dispatch_group_notify(v11, &_dispatch_main_q, v16);
  v13 = v17;
  v14 = v12;

  return v12;
}

- (void)mq_tearDownQuery:(id)query
{
  object = query;
  if (!+[NSThread isMainThread])
  {
    sub_8D3A0();
  }

  v4 = object;
  if (object)
  {
    objc_setAssociatedObject(object, off_EE640, 0, &dword_0 + 1);
    [object stopQuery];
    v5 = +[NSNotificationCenter defaultCenter];
    [v5 removeObserver:self name:NSMetadataQueryDidFinishGatheringNotification object:object];

    v4 = object;
  }
}

- (void)mq_queryDidFinish:(id)finish
{
  object = [finish object];
  [object disableUpdates];
  -[BKUbiquityEligibilityManager setNumberOfItemsIniCloud:](self, "setNumberOfItemsIniCloud:", [object resultCount]);
  [object enableUpdates];
  v4 = objc_getAssociatedObject(object, off_EE640);
  v5 = v4;
  if (v4)
  {
    dispatch_group_leave(v4);
  }
}

- (void)ubiquityDocumentsURLChanged:(id)changed
{
  changedCopy = changed;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v5 = @"nil";
    if (changedCopy)
    {
      v5 = changedCopy;
    }

    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_INFO, "ubiquityDocumentsURLChanged to %@", &v7, 0xCu);
  }

  documentsURLBecomesAvailable = self->_documentsURLBecomesAvailable;
  if (documentsURLBecomesAvailable)
  {
    dispatch_group_leave(documentsURLBecomesAvailable);
  }
}

@end