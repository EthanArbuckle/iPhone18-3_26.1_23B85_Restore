@interface BKUbiquityOptInController
- (BKUbiquityOptInController)initWithStatusMonitor:(id)a3 liverpoolStatusMonitor:(id)a4;
- (void)_cleanupUserDefaults;
- (void)_updateStatusMonitorsWithOptedIn:(BOOL)a3;
- (void)finalizeSetup;
@end

@implementation BKUbiquityOptInController

- (void)_cleanupUserDefaults
{
  v2 = sub_1000061F0();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Cleaning up NSUserDefaults", v9, 2u);
  }

  v3 = [NSUserDefaults alloc];
  v4 = [v3 initWithSuiteName:BUBooksGroupContainerIdentifier];
  [v4 setInteger:4 forKey:@"BKUbiquitousLastAppVersion"];

  v5 = +[NSUserDefaults standardUserDefaults];
  [v5 removeObjectForKey:@"BKUbiquitousOptedInToken"];

  v6 = +[NSUserDefaults standardUserDefaults];
  [v6 removeObjectForKey:@"BKUbiquitousWelcomeReminderTrigger"];

  v7 = +[NSUserDefaults standardUserDefaults];
  [v7 removeObjectForKey:@"BKCumulusEnabled.Collections"];

  v8 = +[NSUserDefaults standardUserDefaults];
  [v8 removeObjectForKey:@"BKCumulusEnabled"];
}

- (BKUbiquityOptInController)initWithStatusMonitor:(id)a3 liverpoolStatusMonitor:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!+[NSThread isMainThread])
  {
    sub_10079090C();
  }

  v14.receiver = self;
  v14.super_class = BKUbiquityOptInController;
  v9 = [(BKUbiquityOptInController *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_statusMonitor, a3);
    objc_storeStrong(&v10->_liverpoolStatusMonitor, a4);
    v11 = objc_opt_new();
    completionBlocks = v10->_completionBlocks;
    v10->_completionBlocks = v11;

    [(BKUbiquityOptInController *)v10 _updateStatusMonitorsWithOptedIn:1];
    [(BKUbiquityOptInController *)v10 _cleanupUserDefaults];
  }

  return v10;
}

- (void)finalizeSetup
{
  v10 = objc_opt_new();
  v3 = +[BKLibraryManager defaultManager];
  v4 = [v3 dataSourceConformingToProtocol:&OBJC_PROTOCOL___BKUbiquityEligibleBooksProviding];

  v5 = BUProtocolCast();
  v6 = [BKUbiquityEligibilityManager alloc];
  v7 = [(BKUbiquityOptInController *)self statusMonitor];
  v8 = [v6 initWithQuotaFetcher:v10 eligibleBooksProvider:v5 ubiquityStatusMonitor:v7];
  cloudEligibilityManager = self->_cloudEligibilityManager;
  self->_cloudEligibilityManager = v8;
}

- (void)_updateStatusMonitorsWithOptedIn:(BOOL)a3
{
  v3 = a3;
  v5 = sub_1000061F0();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_100790948(v3, v5);
  }

  v6 = [(BKUbiquityOptInController *)self liverpoolStatusMonitor];
  [v6 updateWithOptedIn:v3];
}

@end