@interface BKUbiquityEligibilityManager
- (BKUbiquityEligibilityManager)initWithQuotaFetcher:(id)a3 eligibleBooksProvider:(id)a4 ubiquityStatusMonitor:(id)a5;
- (id)mq_setupAndStartQueryWithGroup:(id)a3;
- (void)determineCloudEligibility:(id)a3;
- (void)mq_queryDidFinish:(id)a3;
- (void)mq_tearDownQuery:(id)a3;
- (void)ubiquityDocumentsURLChanged:(id)a3;
@end

@implementation BKUbiquityEligibilityManager

- (BKUbiquityEligibilityManager)initWithQuotaFetcher:(id)a3 eligibleBooksProvider:(id)a4 ubiquityStatusMonitor:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = BKUbiquityEligibilityManager;
  v12 = [(BKUbiquityEligibilityManager *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_quotaFetcher, a3);
    objc_storeStrong(&v13->_eligibleBooksProvider, a4);
    objc_storeStrong(&v13->_ubiquityStatusMonitor, a5);
    [(IMUbiquityStatusMonitor *)v13->_ubiquityStatusMonitor addObserver:v13];
  }

  return v13;
}

- (void)determineCloudEligibility:(id)a3
{
  v4 = a3;
  if (!+[NSThread isMainThread])
  {
    sub_8D328();
  }

  v5 = [(BKUbiquityEligibilityManager *)self eligibleBooksProvider];
  if (v5 && (v6 = v5, [(BKUbiquityEligibilityManager *)self quotaFetcher], v7 = objc_claimAutoreleasedReturnValue(), v7, v6, v7))
  {
    kdebug_trace();
    v8 = dispatch_group_create();
    dispatch_group_enter(v8);
    v9 = [(BKUbiquityEligibilityManager *)self mq_setupAndStartQueryWithGroup:v8];
    v10 = [(BKUbiquityEligibilityManager *)self eligibleBooksProvider];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_66D4;
    v13[3] = &unk_D5498;
    v13[4] = self;
    v14 = v8;
    v15 = v9;
    v16 = v4;
    v11 = v9;
    v12 = v8;
    [v10 fetchAllLocalBooksEligibleToBeMadeUbiquitousWithCompletion:v13];
  }

  else
  {
    (*(v4 + 2))(v4, 0, 0, 0, 0, 0);
  }
}

- (id)mq_setupAndStartQueryWithGroup:(id)a3
{
  v4 = a3;
  if (!+[NSThread isMainThread])
  {
    sub_8D364();
  }

  v5 = objc_opt_new();
  dispatch_group_enter(v4);
  if (v4)
  {
    objc_setAssociatedObject(v5, off_EE640, v4, &dword_0 + 1);
  }

  v6 = dispatch_group_create();
  documentsURLBecomesAvailable = self->_documentsURLBecomesAvailable;
  self->_documentsURLBecomesAvailable = v6;

  v8 = [(BKUbiquityEligibilityManager *)self ubiquityStatusMonitor];
  v9 = [v8 documentsURL];

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v10 = @"nil";
    if (v9)
    {
      v10 = v9;
    }

    *buf = 138412290;
    v19 = v10;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_INFO, "Current documentsURL = %@", buf, 0xCu);
  }

  if (!v9)
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

- (void)mq_tearDownQuery:(id)a3
{
  object = a3;
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

- (void)mq_queryDidFinish:(id)a3
{
  object = [a3 object];
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

- (void)ubiquityDocumentsURLChanged:(id)a3
{
  v4 = a3;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v5 = @"nil";
    if (v4)
    {
      v5 = v4;
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