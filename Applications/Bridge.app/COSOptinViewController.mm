@interface COSOptinViewController
- (BOOL)holdBeforeDisplaying;
- (COSOptinViewController)init;
- (id)defaultImageResource;
- (id)imageResource;
- (void)didEstablishHold;
- (void)finishedActivating;
@end

@implementation COSOptinViewController

- (COSOptinViewController)init
{
  v8.receiver = self;
  v8.super_class = COSOptinViewController;
  v2 = [(COSOptinViewController *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(HKHealthStore);
    healthStore = v2->_healthStore;
    v2->_healthStore = v3;

    v5 = [[HKHeartRhythmAvailability alloc] initWithHealthStore:v2->_healthStore];
    heartRhythmAvailability = v2->_heartRhythmAvailability;
    v2->_heartRhythmAvailability = v5;
  }

  return v2;
}

- (BOOL)holdBeforeDisplaying
{
  v3 = +[UIApplication sharedApplication];
  isActivated = [v3 isActivated];

  v5 = isActivated | ![(COSOptinViewController *)self requiresActivationCheck];
  if ((v5 & 1) == 0)
  {
    if (PBLogPerformanceMetrics())
    {
      v6 = +[PBBridgeResponsePerformanceMonitor shareMonitor];
      holdActivityIdentifier = [(COSOptinViewController *)self holdActivityIdentifier];
      [v6 beginMacroActivity:holdActivityIdentifier beginTime:CFAbsoluteTimeGetCurrent()];
    }

    v8 = +[NSNotificationCenter defaultCenter];
    [v8 addObserver:self selector:"finishedActivating" name:PBBridgeGizmoDidFinishActivatingNotification object:0];

    v9 = pbb_bridge_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v13 = 138412290;
      v14 = v11;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Holding (%@) because Watch is not activated", &v13, 0xCu);
    }
  }

  return (v5 & 1) == 0;
}

- (void)didEstablishHold
{
  v2 = +[UIApplication sharedApplication];
  isActivated = [v2 isActivated];

  if ((isActivated & 1) == 0)
  {
    v6 = +[UIApplication sharedApplication];
    setupController = [v6 setupController];
    activationManager = [setupController activationManager];
    [activationManager setAwaitingActivation:1];
  }
}

- (void)finishedActivating
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:PBBridgeGizmoDidFinishActivatingNotification object:0];

  if (PBLogPerformanceMetrics())
  {
    holdActivityIdentifier = [(COSOptinViewController *)self holdActivityIdentifier];
    v5 = +[PBBridgeResponsePerformanceMonitor shareMonitor];
    [v5 endMacroActivity:holdActivityIdentifier beginTime:CFAbsoluteTimeGetCurrent()];
    v7 = v6;

    [PBBridgeCAReporter pushTimingForTypeNamed:holdActivityIdentifier withValue:v7];
  }

  delegate = [(COSOptinViewController *)self delegate];
  [delegate buddyControllerReleaseHold:self];
}

- (id)imageResource
{
  if ([(COSOptinViewController *)self wantsDefaultImageResource])
  {
    defaultImageResource = [(COSOptinViewController *)self defaultImageResource];
  }

  else
  {
    defaultImageResource = 0;
  }

  return defaultImageResource;
}

- (id)defaultImageResource
{
  v2 = [@"Screen-Carousel" stringByAppendingString:@"-v10"];
  v3 = sub_10002D528(v2);

  return v3;
}

@end