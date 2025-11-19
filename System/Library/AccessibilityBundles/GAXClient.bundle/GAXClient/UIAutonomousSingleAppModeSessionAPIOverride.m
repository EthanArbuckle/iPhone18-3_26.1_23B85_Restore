@interface UIAutonomousSingleAppModeSessionAPIOverride
+ (void)__gaxTrampoline_requestSessionWithConfiguration:(id)a3 completion:(id)a4;
+ (void)_gaxClientLoaded:(id)a3;
+ (void)_gaxStatusDidChange:(id)a3;
+ (void)initialize;
- (void)__gaxTrampoline_endSessionWithCompletion:(id)a3;
@end

@implementation UIAutonomousSingleAppModeSessionAPIOverride

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 addObserver:a1 selector:"_gaxClientLoaded:" name:@"GAXClientLoadedNotification" object:0];

    v4 = +[NSNotificationCenter defaultCenter];
    [v4 addObserver:a1 selector:"_gaxStatusDidChange:" name:UIAccessibilityGuidedAccessStatusDidChangeNotification object:0];
  }
}

+ (void)_gaxClientLoaded:(id)a3
{
  if (UIAccessibilityIsGuidedAccessEnabled())
  {
    v3 = GAXLogCommon();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "GAX is active. fetching configuration.", v5, 2u);
    }

    v4 = +[GAXClient sharedInstance];
    [v4 fetchASAMConfigurationWithCompletion:&stru_14AD8];
  }
}

+ (void)_gaxStatusDidChange:(id)a3
{
  IsGuidedAccessEnabled = UIAccessibilityIsGuidedAccessEnabled();
  v4 = GAXLogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v15[0] = 67109120;
    v15[1] = IsGuidedAccessEnabled;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "got GAX status change notification. on: %d", v15, 8u);
  }

  v5 = GAXLogCommon();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);
  if (!IsGuidedAccessEnabled)
  {
    if (v6)
    {
      sub_AE04(v5);
    }

    v14 = currentlyActiveSession;
    currentlyActiveSession = 0;
    goto LABEL_11;
  }

  if (v6)
  {
    sub_AE48(v5, v7, v8, v9, v10, v11, v12, v13);
  }

  if (!currentlyActiveSession)
  {
    v14 = +[GAXClient sharedInstance];
    [v14 fetchASAMConfigurationWithCompletion:&stru_14AF8];
LABEL_11:
  }
}

+ (void)__gaxTrampoline_requestSessionWithConfiguration:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = GAXLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    *&buf[4] = [v5 style];
    *&buf[12] = 1024;
    *&buf[14] = v6 != 0;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Request session with style: %lu (has completion: %i)", buf, 0x12u);
  }

  v8 = [v5 copy];
  v9 = +[AXBackBoardServer server];
  v10 = v8;
  v25[0] = &off_17D28;
  v11 = [v10 style];
  if (v11 >= 4)
  {
    v12 = GAXLogCommon();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_AEC0(v11, v12);
    }

    v11 = &dword_0 + 2;
  }

  v13 = [NSNumber numberWithInteger:v11];
  *buf = v13;
  v25[1] = &off_17D40;
  v14 = GAXProfileOverridesFromConfiguration(v10);
  *&buf[8] = v14;
  v15 = [NSDictionary dictionaryWithObjects:buf forKeys:v25 count:2];

  v16 = [v10 managedConfigurationSettings];

  if (v16)
  {
    v17 = [v15 mutableCopy];
    v18 = [v10 managedConfigurationSettings];
    [v17 setObject:v18 forKeyedSubscript:&off_17D58];

    v15 = v17;
  }

  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_5BEC;
  v21[3] = &unk_14B48;
  v22 = v10;
  v23 = v6;
  v19 = v6;
  v20 = v10;
  [v9 requestGuidedAccessSessionStartWithConfigurationDictionary:v15 completion:v21];
}

- (void)__gaxTrampoline_endSessionWithCompletion:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = GAXLogCommon();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [(UIAutonomousSingleAppModeSessionAPIOverride *)v5 effectiveConfiguration];
    *buf = 134218240;
    v20 = [v7 style];
    v21 = 1024;
    v22 = v4 != 0;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "End session with style: %lu (has completion: %i)", buf, 0x12u);
  }

  if (currentlyActiveSession == v5)
  {
    v13 = +[AXBackBoardServer server];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_622C;
    v14[3] = &unk_14B48;
    v14[4] = v5;
    v15 = v4;
    [v13 requestGuidedAccessSessionEndWithCompletion:v14];

    v12 = v15;
LABEL_9:

    goto LABEL_10;
  }

  if (v4)
  {
    v8 = GAXLogCommon();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [(UIAutonomousSingleAppModeSessionAPIOverride *)v5 isActive];
      v10 = currentlyActiveSession;
      v11 = [currentlyActiveSession isActive];
      *buf = 138413058;
      v20 = v5;
      v21 = 1024;
      v22 = v9;
      v23 = 2112;
      v24 = v10;
      v25 = 1024;
      v26 = v11;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Session(self) does not match cached currently active session\nSession:%@\nDoes it think it's active?:%d\nCached currently active session:%@\nDoes it think it's active?:%d", buf, 0x22u);
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_60EC;
    block[3] = &unk_14B70;
    v18 = 1;
    v17 = v4;
    dispatch_async(&_dispatch_main_q, block);
    v12 = v17;
    goto LABEL_9;
  }

LABEL_10:
}

@end