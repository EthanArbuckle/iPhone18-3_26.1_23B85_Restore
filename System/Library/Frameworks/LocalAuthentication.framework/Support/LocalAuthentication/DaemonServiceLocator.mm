@interface DaemonServiceLocator
+ (id)sharedInstance;
- (DaemonServiceLocator)init;
- (void)_startNotificationServices;
- (void)cancelServicesForContextID:(id)d;
- (void)startServices;
@end

@implementation DaemonServiceLocator

+ (id)sharedInstance
{
  if (qword_100063088 != -1)
  {
    sub_100022DD4();
  }

  v3 = qword_100063080;

  return v3;
}

- (DaemonServiceLocator)init
{
  v55.receiver = self;
  v55.super_class = DaemonServiceLocator;
  v2 = [(DaemonServiceLocator *)&v55 init];
  if (v2 && objc_opt_class())
  {
    v3 = objc_alloc_init(LACServiceLocator);
    locator = v2->_locator;
    v2->_locator = v3;

    v5 = [LACUserInterfaceController alloc];
    v6 = +[DaemonUtils queue];
    v7 = [v5 initWithReplyQueue:v6];
    uiController = v2->_uiController;
    v2->_uiController = v7;

    v9 = objc_alloc_init(NSMutableArray);
    notificationObservers = v2->_notificationObservers;
    v2->_notificationObservers = v9;

    v11 = v2->_notificationObservers;
    v12 = objc_alloc_init(LAACMBiometricAttemptNotifier);
    [(NSMutableArray *)v11 addObject:v12];

    v13 = [AnalyticsService alloc];
    v14 = +[LACConcurrencyUtilities daemonQueue];
    v15 = [(AnalyticsService *)v13 initWithWorkQueue:v14];
    analytics = v2->_analytics;
    v2->_analytics = v15;

    v17 = v2->_analytics;
    v18 = NSStringFromProtocol(&OBJC_PROTOCOL___LACAnalyticsService);
    [(DaemonServiceLocator *)v2 registerService:v17 identifier:v18];

    v19 = +[LACDarwinNotificationCenter sharedInstance];
    darwinNotificationCenter = v2->_darwinNotificationCenter;
    v2->_darwinNotificationCenter = v19;

    v21 = v2->_darwinNotificationCenter;
    v22 = NSStringFromProtocol(&OBJC_PROTOCOL___LACDarwinNotificationCenter);
    [(DaemonServiceLocator *)v2 registerService:v21 identifier:v22];

    v23 = [DTOService alloc];
    v24 = +[DaemonUtils queue];
    v25 = [(DTOService *)v23 initWithWorkQueue:v24 notificationCenter:v2->_darwinNotificationCenter ui:v2->_uiController];
    dto = v2->_dto;
    v2->_dto = v25;

    v27 = v2->_dto;
    v28 = NSStringFromProtocol(&OBJC_PROTOCOL___LACDTOService);
    [(DaemonServiceLocator *)v2 registerService:v27 identifier:v28];

    v29 = [CompanionService alloc];
    v30 = v2->_uiController;
    v31 = +[DaemonUtils queue];
    v32 = [(CompanionService *)v29 initWithUIController:v30 workQueue:v31];

    companions = v2->_companions;
    v2->_companions = v32;
    v34 = v32;

    v35 = v2->_companions;
    v36 = NSStringFromProtocol(&OBJC_PROTOCOL___LACCompanionAuthenticationService);
    [(DaemonServiceLocator *)v2 registerService:v35 identifier:v36];

    v37 = [LACSharedModeService alloc];
    v38 = +[DaemonUtils queue];
    v39 = [v37 initWithReplyQueue:v38];
    sharedMode = v2->_sharedMode;
    v2->_sharedMode = v39;

    v41 = v2->_sharedMode;
    v42 = NSStringFromProtocol(&OBJC_PROTOCOL___LACSharedModeService);
    [(DaemonServiceLocator *)v2 registerService:v41 identifier:v42];

    v43 = objc_alloc_init(LACEnvironmentDependencies);
    v44 = +[LACBiometryHelper sharedInstance];
    [v43 setBiometryHelper:v44];

    v45 = +[LACPasscodeHelper sharedInstance];
    [v43 setPasscodeHelper:v45];

    onenessSessionMonitor = [(CompanionService *)v34 onenessSessionMonitor];
    [v43 setOnenessSessionMonitor:onenessSessionMonitor];

    phoneIntegrationSessionMonitor = [(CompanionService *)v34 phoneIntegrationSessionMonitor];
    [v43 setPhoneIntegrationSessionMonitor:phoneIntegrationSessionMonitor];

    v48 = [EnvironmentService alloc];
    v49 = +[DaemonUtils queue];
    v50 = [(EnvironmentService *)v48 initWithDependencies:v43 workQueue:v49];
    environment = v2->_environment;
    v2->_environment = v50;

    v52 = v2->_environment;
    v53 = NSStringFromProtocol(&OBJC_PROTOCOL___LACEnvironmentService);
    [(DaemonServiceLocator *)v2 registerService:v52 identifier:v53];
  }

  return v2;
}

- (void)startServices
{
  [(DaemonServiceLocator *)self _startNotificationServices];
  [(DaemonServiceLocator *)self _startDTO];
  [(DaemonServiceLocator *)self _startEnvironment];

  [(DaemonServiceLocator *)self _startCompanionServices];
}

- (void)cancelServicesForContextID:(id)d
{
  dCopy = d;
  companions = [(DaemonServiceLocator *)self companions];
  [companions cancelRequestsForContextID:dCopy];
}

- (void)_startNotificationServices
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = self->_notificationObservers;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [(LACDarwinNotificationCenter *)self->_darwinNotificationCenter addObserver:*(*(&v8 + 1) + 8 * v7), v8];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }

  [(LACDarwinNotificationCenter *)self->_darwinNotificationCenter listenToLaunchNotifications];
}

@end