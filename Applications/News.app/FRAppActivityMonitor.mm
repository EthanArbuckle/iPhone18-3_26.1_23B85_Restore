@interface FRAppActivityMonitor
+ (id)recordedExposureDateForObserver:(id)a3;
+ (void)recordExposureEventForObserver:(id)a3;
+ (void)saveViewAppearanceDateForObserver:(id)a3;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (FRAppActivityMonitor)initWithAnalyticsController:(id)a3 appActivityMonitor:(id)a4 cloudContext:(id)a5 window:(id)a6;
- (FRAppActivityObserving)appSessionCloseObserver;
- (void)_checkForNeedToResetIdentifier;
- (void)_closeAppSessionForReason:(int64_t)a3 startNewSession:(BOOL)a4 resetUserID:(BOOL)a5 forSceneID:(id)a6;
- (void)activityObservingApplicationDidBecomeActiveWithURL:(id)a3 sourceApplication:(id)a4 sceneID:(id)a5;
- (void)activityObservingApplicationDidEnterBackgroundWithSceneID:(id)a3;
- (void)activityObservingApplicationDidFinishLaunching;
- (void)activityObservingApplicationWillEnterForeground;
- (void)activityObservingApplicationWillResignActiveWithSceneID:(id)a3;
- (void)activityObservingApplicationWindowDidBecomeBackground;
- (void)activityObservingApplicationWindowDidBecomeForeground;
- (void)addAppSessionCloseObserver:(id)a3;
- (void)addObserver:(id)a3;
- (void)applicationWillFinishLaunching;
- (void)applicationWillResignActive:(id)a3;
- (void)applicationWillTerminate:(id)a3;
- (void)dealloc;
- (void)readingHistoryDidClear:(id)a3;
- (void)removeObserver:(id)a3;
@end

@implementation FRAppActivityMonitor

- (void)applicationWillFinishLaunching
{
  if ([(FRAppActivityMonitor *)self hasBeenNotifiedOfApplicationLaunch]&& os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10006EF9C();
  }

  [(FRAppActivityMonitor *)self setHasBeenNotifiedOfApplicationLaunch:1];
}

- (void)activityObservingApplicationDidFinishLaunching
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [(FRAppActivityMonitor *)self observers];
  v3 = [v2 copy];

  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v9 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          [v8 activityObservingApplicationDidFinishLaunching];
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (void)activityObservingApplicationWillEnterForeground
{
  if (![(FRAppActivityMonitor *)self hasBeenNotifiedOfApplicationLaunch]&& os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10006F27C();
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [(FRAppActivityMonitor *)self observers];
  v4 = [v3 copy];

  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v10 + 1) + 8 * v8);
        if (objc_opt_respondsToSelector())
        {
          [v9 activityObservingApplicationWillEnterForeground];
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (void)activityObservingApplicationWindowDidBecomeForeground
{
  +[NSThread isMainThread];
  if (![(FRAppActivityMonitor *)self hasBeenNotifiedOfApplicationLaunch]&& os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10006F334();
  }

  [(FRAppActivityMonitor *)self setWindowIsForeground:1];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [(FRAppActivityMonitor *)self observers];
  v4 = [v3 copy];

  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v10 + 1) + 8 * v8);
        if (objc_opt_respondsToSelector())
        {
          [v9 activityObservingApplicationWindowDidBecomeForeground];
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (void)_checkForNeedToResetIdentifier
{
  v3 = +[UIApplication sharedApplication];
  v4 = [v3 key_window];
  v5 = [v4 windowScene];
  v6 = [v5 session];
  v9 = [v6 persistentIdentifier];

  v7 = +[NSUserDefaults standardUserDefaults];
  LODWORD(v5) = [v7 BOOLForKey:@"reset_identifier"];

  if (v5)
  {
    v8 = +[NSUserDefaults standardUserDefaults];
    [v8 setBool:0 forKey:@"reset_identifier"];

    [(FRAppActivityMonitor *)self _closeAppSessionForReason:4 startNewSession:1 resetUserID:1 forSceneID:v9];
  }
}

- (FRAppActivityObserving)appSessionCloseObserver
{
  WeakRetained = objc_loadWeakRetained(&self->_appSessionCloseObserver);

  return WeakRetained;
}

- (FRAppActivityMonitor)initWithAnalyticsController:(id)a3 appActivityMonitor:(id)a4 cloudContext:(id)a5 window:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v25.receiver = self;
  v25.super_class = FRAppActivityMonitor;
  v15 = [(FRAppActivityMonitor *)&v25 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_analyticsController, a3);
    [v12 addObserver:v16];
    objc_storeStrong(&v16->_cloudContext, a5);
    v17 = [NSHashTable hashTableWithOptions:517];
    observers = v16->_observers;
    v16->_observers = v17;

    v19 = +[NSNotificationCenter defaultCenter];
    [v19 addObserver:v16 selector:"applicationWillResignActive:" name:UIApplicationWillResignActiveNotification object:0];

    v20 = +[NSNotificationCenter defaultCenter];
    [v20 addObserver:v16 selector:"applicationWillTerminate:" name:UIApplicationWillTerminateNotification object:0];

    v21 = [(FRAppActivityMonitor *)v16 cloudContext];
    v22 = [v21 readingHistory];
    [v22 addObserver:v16];

    v23 = [[UILongPressGestureRecognizer alloc] initWithTarget:0 action:0];
    [v23 setMinimumPressDuration:0.001];
    [v23 setDelegate:v16];
    [v14 addGestureRecognizer:v23];
  }

  return v16;
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  +[NSThread isMainThread];
  if (v4)
  {
    v5 = [(FRAppActivityMonitor *)self observers];
    v6 = [v5 containsObject:v4];

    if (v6 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10006EC9C(v4);
    }

    v7 = [(FRAppActivityMonitor *)self observers];
    [v7 addObject:v4];
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10006ED5C();
  }
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  +[NSThread isMainThread];
  if (v4)
  {
    v5 = [(FRAppActivityMonitor *)self appSessionCloseObserver];

    if (v5 == v4)
    {
      [(FRAppActivityMonitor *)self setAppSessionCloseObserver:0];
    }

    else
    {
      v6 = [(FRAppActivityMonitor *)self observers];
      v7 = [v6 containsObject:v4];

      if (v7)
      {
        v8 = [(FRAppActivityMonitor *)self observers];
        [v8 removeObject:v4];
      }
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10006EE20();
  }
}

- (void)addAppSessionCloseObserver:(id)a3
{
  v4 = a3;
  v5 = [(FRAppActivityMonitor *)self appSessionCloseObserver];

  if (v5)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10006EEE4();
    }
  }

  else
  {
    [(FRAppActivityMonitor *)self setAppSessionCloseObserver:v4];
  }
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4 = [(FRAppActivityMonitor *)self cloudContext];
  v5 = [v4 readingHistory];
  [v5 removeObserver:self];

  v6.receiver = self;
  v6.super_class = FRAppActivityMonitor;
  [(FRAppActivityMonitor *)&v6 dealloc];
}

+ (void)saveViewAppearanceDateForObserver:(id)a3
{
  object = a3;
  if (objc_opt_respondsToSelector())
  {
    v3 = objc_getAssociatedObject(object, "FRViewAppearanceDate");
    if (!v3)
    {
      if (objc_opt_respondsToSelector())
      {
        [object startRecordingExposure];
      }

      v4 = +[NSDate date];
      objc_setAssociatedObject(object, "FRViewAppearanceDate", v4, 0x301);
    }
  }

  _objc_release_x2();
}

+ (void)recordExposureEventForObserver:(id)a3
{
  object = a3;
  if (objc_opt_respondsToSelector())
  {
    v3 = objc_getAssociatedObject(object, "FRViewAppearanceDate");
    if (v3)
    {
      [object recordExposureEventWithStartDate:v3];
      objc_setAssociatedObject(object, "FRViewAppearanceDate", 0, 0x301);
    }
  }
}

+ (id)recordedExposureDateForObserver:(id)a3
{
  v3 = a3;
  if ((objc_opt_respondsToSelector() & 1) == 0 || (objc_getAssociatedObject(v3, "FRViewAppearanceDate"), (v4 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v4 = +[NSDate date];
  }

  return v4;
}

- (void)applicationWillResignActive:(id)a3
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [(FRAppActivityMonitor *)self observers:a3];
  v4 = [v3 copy];

  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v10 + 1) + 8 * v8);
        if (objc_opt_respondsToSelector())
        {
          [v9 activityObservingApplicationWillResignActive];
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (void)applicationWillTerminate:(id)a3
{
  if (![(FRAppActivityMonitor *)self hasBeenNotifiedOfApplicationLaunch]&& os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10006F054();
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [(FRAppActivityMonitor *)self observers];
  v5 = [v4 copy];

  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 activityObservingApplicationWillTerminate];
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)readingHistoryDidClear:(id)a3
{
  v4 = +[UIApplication sharedApplication];
  v5 = [v4 key_window];
  v6 = [v5 windowScene];
  v7 = [v6 session];
  v8 = [v7 persistentIdentifier];

  [(FRAppActivityMonitor *)self _closeAppSessionForReason:1 startNewSession:1 resetUserID:1 forSceneID:v8];
}

- (void)_closeAppSessionForReason:(int64_t)a3 startNewSession:(BOOL)a4 resetUserID:(BOOL)a5 forSceneID:(id)a6
{
  v6 = a5;
  v7 = a4;
  v10 = a6;
  +[NSThread isMainThread];
  v11 = [(FRAppActivityMonitor *)self analyticsController];
  [v11 endSessionForReason:a3 byStartingNewSession:v7 resetUserID:v6 forSceneID:v10];
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [(FRAppActivityMonitor *)self observers:a3];
  v4 = [v3 copy];

  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * v8);
        if (objc_opt_respondsToSelector())
        {
          [v9 activityObservingUserDidPerformAction];
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return 0;
}

- (void)activityObservingApplicationDidBecomeActiveWithURL:(id)a3 sourceApplication:(id)a4 sceneID:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (![(FRAppActivityMonitor *)self hasBeenNotifiedOfApplicationLaunch]&& os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10006F10C();
  }

  [(FRAppActivityMonitor *)self setIsActive:1];
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_100036C6C;
  v32[3] = &unk_1000C3C00;
  v32[4] = self;
  v11 = objc_retainBlock(v32);
  if (v8)
  {
    v12 = [(FRAppActivityMonitor *)self analyticsReferralFactory];
    v13 = [v12 analyticsReferralForURL:v8 sourceApplication:v9];
    [(FRAppActivityMonitor *)self setAppSessionStartReferral:v13];
  }

  v27 = v9;
  [(FRAppActivityMonitor *)self _checkForNeedToResetIdentifier];
  v14 = [(FRAppActivityMonitor *)self analyticsController];
  v15 = [(FRAppActivityMonitor *)self appSessionStartReferral];
  [v14 startSessionIfNeededWithReferral:v15 sceneID:v10];

  [(FRAppActivityMonitor *)self setAppSessionStartReferral:0];
  v16 = [(FRAppActivityMonitor *)self appSessionCloseObserver];
  v17 = objc_opt_respondsToSelector();

  if (v17)
  {
    v18 = [(FRAppActivityMonitor *)self appSessionCloseObserver];
    [v18 activityObservingApplicationDidBecomeActive];
  }

  v19 = [(FRAppActivityMonitor *)self appSessionCloseObserver];
  (v11[2])(v11, v19);

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v20 = [(FRAppActivityMonitor *)self observers];
  v21 = [v20 copy];

  v22 = [v21 countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v29;
    do
    {
      v25 = 0;
      do
      {
        if (*v29 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = *(*(&v28 + 1) + 8 * v25);
        if (objc_opt_respondsToSelector())
        {
          [v26 activityObservingApplicationDidBecomeActive];
        }

        (v11[2])(v11, v26);
        v25 = v25 + 1;
      }

      while (v23 != v25);
      v23 = [v21 countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v23);
  }
}

- (void)activityObservingApplicationWillResignActiveWithSceneID:(id)a3
{
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(FRAppActivityMonitor *)self observers];
  v6 = [v5 copy];

  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          [v11 activityObservingApplicationWillResignActive];
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  v12 = [(FRAppActivityMonitor *)self analyticsController];
  [v12 resignSessionForSceneID:v4];
}

- (void)activityObservingApplicationDidEnterBackgroundWithSceneID:(id)a3
{
  v4 = a3;
  if (![(FRAppActivityMonitor *)self hasBeenNotifiedOfApplicationLaunch]&& os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10006F1C4();
  }

  if ([(FRAppActivityMonitor *)self isActive])
  {
    v19 = v4;
    [(FRAppActivityMonitor *)self setIsActive:0];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_100037100;
    v24[3] = &unk_1000C3C00;
    v24[4] = self;
    v5 = objc_retainBlock(v24);
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v6 = [(FRAppActivityMonitor *)self observers];
    v7 = [v6 copy];

    v8 = [v7 countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v21;
      do
      {
        v11 = 0;
        do
        {
          if (*v21 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v20 + 1) + 8 * v11);
          if (objc_opt_respondsToSelector())
          {
            [v12 activityObservingApplicationDidEnterBackground];
          }

          (v5[2])(v5, v12);
          v11 = v11 + 1;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v20 objects:v25 count:16];
      }

      while (v9);
    }

    v13 = [(FRAppActivityMonitor *)self appSessionCloseObserver];
    if (v13)
    {
      v14 = v13;
      v15 = [(FRAppActivityMonitor *)self appSessionCloseObserver];
      v16 = objc_opt_respondsToSelector();

      if (v16)
      {
        v17 = [(FRAppActivityMonitor *)self appSessionCloseObserver];
        [v17 activityObservingApplicationDidEnterBackground];
      }
    }

    v18 = [(FRAppActivityMonitor *)self appSessionCloseObserver];
    (v5[2])(v5, v18);

    v4 = v19;
    [(FRAppActivityMonitor *)self _closeAppSessionForReason:2 startNewSession:0 resetUserID:0 forSceneID:v19];
  }
}

- (void)activityObservingApplicationWindowDidBecomeBackground
{
  +[NSThread isMainThread];
  if (![(FRAppActivityMonitor *)self hasBeenNotifiedOfApplicationLaunch]&& os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10006F3EC();
  }

  [(FRAppActivityMonitor *)self setWindowIsForeground:0];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [(FRAppActivityMonitor *)self observers];
  v4 = [v3 copy];

  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v10 + 1) + 8 * v8);
        if (objc_opt_respondsToSelector())
        {
          [v9 activityObservingApplicationWindowDidBecomeBackground];
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

@end