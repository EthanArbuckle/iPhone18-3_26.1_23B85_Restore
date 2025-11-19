@interface HUDRenderServer
+ (id)sharedInstance;
- (id)_init;
- (void)clearHUDWithCompletion:(id)a3;
- (void)listener:(id)a3 didReceiveConnection:(id)a4 withContext:(id)a5;
- (void)prepareHUDContextIfNeeded;
- (void)receiveHangHUDInfo:(id)a3 completion:(id)a4;
- (void)receiveHudConfiguration:(id)a3 completion:(id)a4;
- (void)receiveMonitoredStates:(id)a3 completion:(id)a4;
- (void)receiveProcExitRecord:(id)a3 completion:(id)a4;
- (void)turnOffProcessTerminationMonitoring;
- (void)turnOnProcessTerminationMonitoring;
@end

@implementation HUDRenderServer

+ (id)sharedInstance
{
  if (qword_10003E700 != -1)
  {
    sub_1000185FC();
  }

  v3 = qword_10003E6F8;

  return v3;
}

- (id)_init
{
  v25.receiver = self;
  v25.super_class = HUDRenderServer;
  v2 = [(HUDRenderServer *)&v25 init];
  v3 = v2;
  if (v2)
  {
    hudContext = v2->_hudContext;
    v2->_hudContext = 0;

    v5 = objc_alloc_init(AssertionManager);
    assertionManager = v3->_assertionManager;
    v3->_assertionManager = v5;

    v7 = +[HUDContextUpdater sharedInstance];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_10000460C;
    v23[3] = &unk_100030928;
    v8 = v3;
    v24 = v8;
    [v7 setHudUpdateHandler:v23];

    v9 = +[ProcessExitFetcher sharedInstance];
    [v9 setProcessExitHandler:&stru_100030968];

    v10 = dispatch_queue_create("com.apple.HangHUD.prefs", 0);
    v11 = +[HTPrefs sharedPrefs];
    [v11 setupPrefsWithQueue:v10];

    v12 = +[HTPrefs sharedPrefs];
    v8->_areProcessTerminationsMonitored = [v12 areProcessTerminationsMonitored];

    v13 = +[ProcessExitScreener sharedInstance];
    v14 = +[HTPrefs sharedPrefs];
    v15 = [HTProcessExitFilteringConfiguration configurationFromPrefs:v14];
    [v13 setFilteringConfiguration:v15];

    v16 = +[HTPrefs sharedPrefs];
    LODWORD(v15) = [v16 areProcessTerminationsMonitored];

    if (v15)
    {
      [(HUDRenderServer *)v8 turnOnProcessTerminationMonitoring];
    }

    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_100004BD8;
    v21[3] = &unk_100030990;
    v17 = v8;
    v22 = v17;
    v18 = [BSServiceConnectionListener listenerWithConfigurator:v21];
    listener = v17->_listener;
    v17->_listener = v18;
  }

  return v3;
}

- (void)prepareHUDContextIfNeeded
{
  hudContext = self->_hudContext;
  if (!hudContext || [(HUDContext *)hudContext hasHudRenderContextInvalidated])
  {
    v4 = objc_autoreleasePoolPush();
    v5 = sub_100004800();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100004D28;
    block[3] = &unk_100030668;
    block[4] = self;
    dispatch_sync(v5, block);

    objc_autoreleasePoolPop(v4);
  }
}

- (void)listener:(id)a3 didReceiveConnection:(id)a4 withContext:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = +[HangHUDServiceSpecification clientContextIdentifierKey];
  v10 = [v8 decodeStringForKey:v9];

  v11 = [v7 remoteProcess];
  v12 = sub_10000A9AC();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218498;
    v21 = v7;
    v22 = 2112;
    v23 = v10;
    v24 = 2112;
    v25 = v11;
    _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "received connection %p with identifier %@ from %@", buf, 0x20u);
  }

  if ([v11 hasEntitlement:@"com.apple.HangHUD"])
  {
    v14 = _NSConcreteStackBlock;
    v15 = 3221225472;
    v16 = sub_100004FB4;
    v17 = &unk_1000309E0;
    v18 = v10;
    v19 = self;
    [v7 configureConnection:&v14];
    [v7 activate];
  }

  else
  {
    v13 = sub_10000A9AC();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_1000186E4();
    }

    [v7 invalidate];
  }
}

- (void)receiveHangHUDInfo:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_10000A9AC();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_100018758(v6);
  }

  if (!sub_1000178F8())
  {
    v10 = [v6 mutableCopy];
    if ([v6 count])
    {
      if ([v10 count])
      {
        v11 = +[HUDContextUpdater sharedInstance];
        [v11 addHUDContents:v10];
      }

      if (self->_areProcessTerminationsMonitored)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v12 = sub_10000A9AC();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        sub_1000187E4();
      }

      v13 = +[HUDContextUpdater sharedInstance];
      [v13 saveClearHUDRequest];
    }

    v14 = sub_10000A9AC();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      sub_100018864();
    }

    v15 = +[HUDContextUpdater sharedInstance];
    [v15 forceUpdate];

LABEL_18:
    v7[2](v7, 0);

    goto LABEL_19;
  }

  v9 = sub_10000A9AC();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    sub_1000188A4();
  }

  v7[2](v7, 0);
LABEL_19:
}

- (void)receiveProcExitRecord:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_10000A9AC();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_100018940(v6);
  }

  v9 = +[HUDContextUpdater sharedInstance];
  [v9 addHUDContents:v6];

  if (!self->_areProcessTerminationsMonitored)
  {
    v10 = sub_10000A9AC();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      sub_1000189CC();
    }

    v11 = +[HUDContextUpdater sharedInstance];
    [v11 forceUpdate];
  }

  v7[2](v7, 0);
}

- (void)receiveHudConfiguration:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_10000A9AC();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_100018A0C();
  }

  v9 = +[HUDConfiguration sharedInstance];
  [v9 updateWithHUDConfiguration:v6];

  v10 = +[ProcessExitScreener sharedInstance];
  v11 = [v6 processTerminationsFiltering];
  [v10 setFilteringConfiguration:v11];

  self->_areProcessTerminationsMonitored = [v6 areProcessTerminationsMonitored];
  v12 = sub_100002F0C();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    sub_100018A8C(v6);
  }

  if ([v6 areProcessTerminationsMonitored])
  {
    [(HUDRenderServer *)self turnOnProcessTerminationMonitoring];
  }

  else
  {
    [(HUDRenderServer *)self turnOffProcessTerminationMonitoring];
  }

  v7[2](v7, 0);
}

- (void)receiveMonitoredStates:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = sub_10000A9AC();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_100018B28();
  }

  [(HUDContext *)self->_hudContext setRenderParametersFromMonitoredStates:v7];
  v6[2](v6, 0);
}

- (void)turnOnProcessTerminationMonitoring
{
  v3 = +[HUDContextUpdater sharedInstance];
  [v3 kickOffUpdater];

  v4 = +[ProcessExitFetcher sharedInstance];
  [v4 kickOffFetchTimer];

  v5 = +[HUDContextUpdater sharedInstance];
  v6 = [v5 isNoTaskPending];

  if (v6)
  {
    v7 = [(AssertionManager *)self->_assertionManager acquireKeepAliveAssertion];
  }
}

- (void)turnOffProcessTerminationMonitoring
{
  v3 = +[ProcessExitFetcher sharedInstance];
  [v3 stopFetchTimer];

  v4 = +[HUDContextUpdater sharedInstance];
  v5 = [v4 isNoTaskPending];

  if (v5)
  {
    v6 = +[HUDContextUpdater sharedInstance];
    [v6 stopUpdater];

    assertionManager = self->_assertionManager;

    [(AssertionManager *)assertionManager invalidateKeepAliveAssertion];
  }
}

- (void)clearHUDWithCompletion:(id)a3
{
  v4 = a3;
  v5 = sub_100002F0C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_100018BA8();
  }

  v6 = sub_100004800();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000057B0;
  block[3] = &unk_100030668;
  block[4] = self;
  dispatch_sync(v6, block);

  v4[2](v4, 0);
}

@end