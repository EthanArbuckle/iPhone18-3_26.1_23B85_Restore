@interface AppleTVAppDelegate
- (AppleTVAppDelegate)init;
- (BOOL)application:(id)a3 continueUserActivity:(id)a4 restorationHandler:(id)a5;
- (BOOL)application:(id)a3 openURL:(id)a4 options:(id)a5;
- (BOOL)application:(id)a3 runTest:(id)a4 options:(id)a5;
- (BOOL)application:(id)a3 willFinishLaunchingWithOptions:(id)a4;
- (unint64_t)application:(id)a3 supportedInterfaceOrientationsForWindow:(id)a4;
- (void)_downloadSessionDidFinishEventsForARBackgroundURLSession:(id)a3;
- (void)_downloadSessionDidFinishEventsForBackgroundURLSession:(id)a3;
- (void)_downloadSessionDidTimeoutWaitingForBackgroundEventsToFinish;
- (void)application:(id)a3 handleEventsForBackgroundURLSession:(id)a4 completionHandler:(id)a5;
- (void)buildMenuWithBuilder:(id)a3;
- (void)dealloc;
- (void)registerBgUrlSessionNotifications;
@end

@implementation AppleTVAppDelegate

- (AppleTVAppDelegate)init
{
  v6.receiver = self;
  v6.super_class = AppleTVAppDelegate;
  v2 = [(AppleTVAppDelegate *)&v6 init];
  v3 = v2;
  if (v2)
  {
    [(AppleTVAppDelegate *)v2 registerBgUrlSessionNotifications];
    v4 = +[VUITVAppLauncher sharedInstance];
  }

  return v3;
}

- (void)registerBgUrlSessionNotifications
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"_downloadSessionDidFinishEventsForBackgroundURLSession:" name:TVPDownloadSessionDidFinishEventsForBackgroundURLSessionNotification object:0];

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 addObserver:self selector:"_downloadSessionDidFinishEventsForARBackgroundURLSession:" name:VUIARQLDownloadSessionDidFinishEventsForBackgroundURLSessionNotification object:0];
}

- (BOOL)application:(id)a3 runTest:(id)a4 options:(id)a5
{
  v6 = a3;
  v7 = a4;
  v8 = +[ATAPPTController sharedInstance];
  v9 = [v8 canHandleTest:v7];

  if (v9)
  {
    v10 = +[ATAPPTController sharedInstance];
    [v10 runTest:v7 app:v6];
  }

  return v9;
}

- (void)dealloc
{
  v3 = +[VUITVAppLauncher sharedInstance];
  [v3 cleanUp];

  v4.receiver = self;
  v4.super_class = AppleTVAppDelegate;
  [(AppleTVAppDelegate *)&v4 dealloc];
}

- (BOOL)application:(id)a3 willFinishLaunchingWithOptions:(id)a4
{
  v4 = a4;
  v5 = VUISignpostLogObject();
  if (os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "Launch.Main", "", buf, 2u);
  }

  v6 = VUISignpostLogObject();
  if (os_signpost_enabled(v6))
  {
    *v12 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "Launch.WillFinishLaunch", "", v12, 2u);
  }

  v7 = +[VUITVAppLauncher sharedInstance];
  v8 = [v7 applicationWillFinishLaunchingWithOptions:v4];

  v9 = VUISignpostLogObject();
  if (os_signpost_enabled(v9))
  {
    *v11 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "Launch.WillFinishLaunch", "", v11, 2u);
  }

  return v8;
}

- (BOOL)application:(id)a3 openURL:(id)a4 options:(id)a5
{
  v6 = a4;
  v7 = a5;
  v8 = VUIDefaultLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "AppleTVAppDelegate openURL -- url %@", &v12, 0xCu);
  }

  v9 = +[VUITVAppLauncher sharedInstance];
  v10 = [v9 openURL:v6 options:v7];

  return v10;
}

- (BOOL)application:(id)a3 continueUserActivity:(id)a4 restorationHandler:(id)a5
{
  v5 = a4;
  v6 = VUIDefaultLogObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v5 activityType];
    *buf = 138412290;
    v26 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "AppleTVAppDelegate continueUserActivity -- restorationHandler activityType %@", buf, 0xCu);
  }

  v8 = [v5 activityType];
  v9 = [v8 isEqualToString:NSUserActivityTypeBrowsingWeb];

  if (v9)
  {
    v10 = [v5 webpageURL];
    v11 = objc_opt_new();
    v12 = v11;
    if (v10)
    {
      v13 = VUIDefaultLogObject();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = [v10 absoluteString];
        *buf = 138412290;
        v26 = v14;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "AppleTVAppDelegate continueUserActivity -- process url %@", buf, 0xCu);
      }

      v15 = [v5 _sourceApplication];
      if (v15)
      {
        [v12 setObject:v15 forKey:UIApplicationOpenURLOptionsSourceApplicationKey];
      }

      v16 = [v5 referrerURL];
      v17 = [v16 absoluteString];

      if (v17)
      {
        v23 = LSReferrerURLKey;
        v24 = v17;
        v18 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];
        [v12 setObject:v18 forKey:UIApplicationOpenURLOptionsAnnotationKey];
      }

      v19 = +[VUITVAppLauncher sharedInstance];
      if ([v12 count])
      {
        v20 = [v12 copy];
        v21 = [v19 openURL:v10 options:v20];
      }

      else
      {
        v21 = [v19 openURL:v10 options:0];
      }
    }

    else
    {
      v21 = 0;
      v10 = v11;
    }
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (unint64_t)application:(id)a3 supportedInterfaceOrientationsForWindow:(id)a4
{
  v5 = a4;
  v6 = +[UIDevice currentDevice];
  v7 = [v6 userInterfaceIdiom];

  if (v7 == 1)
  {
    v8 = 30;
  }

  else
  {
    if ([v5 conformsToProtocol:&OBJC_PROTOCOL___VUIOrientationOverride])
    {
      v9 = [v5 overridesOrientationLock];
    }

    else
    {
      v10 = [v5 rootViewController];
      v11 = [v10 presentedViewController];

      if (v11)
      {
        do
        {
          v12 = [v10 presentedViewController];

          v13 = [v12 presentedViewController];

          v10 = v12;
        }

        while (v13);
      }

      else
      {
        v12 = v10;
      }

      if ([v12 conformsToProtocol:&OBJC_PROTOCOL___VUIOrientationOverride])
      {
        v9 = [v12 overridesOrientationLock];
      }

      else
      {
        v9 = 0;
      }
    }

    if (([(AppleTVAppDelegate *)self overrideOrientation]| v9))
    {
      v8 = 26;
    }

    else
    {
      v8 = 2;
    }
  }

  return v8;
}

- (void)application:(id)a3 handleEventsForBackgroundURLSession:(id)a4 completionHandler:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = NSStringFromSelector(a2);
  v11 = VUIDefaultLogObject();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 138412546;
    v19 = v10;
    v20 = 2112;
    v21 = v8;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Received %@ for background URL session %@", &v18, 0x16u);
  }

  if ([v8 isEqualToString:VUIARQLDownloadSessionConfigurationIdentifier])
  {
    v12 = [(AppleTVAppDelegate *)self handleEventsForARQLBackgroundURLSessionCompletionHandler];

    if (v12)
    {
      v13 = VUIDefaultLogObject();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_1000126E4(v10, v13);
      }

      v14 = [(AppleTVAppDelegate *)self handleEventsForARQLBackgroundURLSessionCompletionHandler];
      v14[2]();

      [(AppleTVAppDelegate *)self setHandleEventsForARQLBackgroundURLSessionCompletionHandler:0];
    }

    [(AppleTVAppDelegate *)self setHandleEventsForARQLBackgroundURLSessionCompletionHandler:v9];
  }

  else
  {
    v15 = [(AppleTVAppDelegate *)self handleEventsForBackgroundURLSessionCompletionHandler];

    if (v15)
    {
      v16 = VUIDefaultLogObject();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_10001266C(v10, v16);
      }

      v17 = [(AppleTVAppDelegate *)self handleEventsForBackgroundURLSessionCompletionHandler];
      v17[2]();

      [(AppleTVAppDelegate *)self setHandleEventsForBackgroundURLSessionCompletionHandler:0];
    }

    [(AppleTVAppDelegate *)self setHandleEventsForBackgroundURLSessionCompletionHandler:v9];
    [(AppleTVAppDelegate *)self performSelector:"_downloadSessionDidTimeoutWaitingForBackgroundEventsToFinish" withObject:0 afterDelay:10.0];
  }
}

- (void)_downloadSessionDidTimeoutWaitingForBackgroundEventsToFinish
{
  v3 = VUIDefaultLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_10001275C(v3);
  }

  [(AppleTVAppDelegate *)self _downloadSessionDidFinishEventsForBackgroundURLSession:0];
}

- (void)_downloadSessionDidFinishEventsForBackgroundURLSession:(id)a3
{
  v4 = a3;
  v5 = VUIDefaultLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 name];
    v10 = 138412290;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Received %@", &v10, 0xCu);
  }

  [NSObject cancelPreviousPerformRequestsWithTarget:self selector:"_downloadSessionDidTimeoutWaitingForBackgroundEventsToFinish" object:0];
  v7 = [(AppleTVAppDelegate *)self handleEventsForBackgroundURLSessionCompletionHandler];

  if (v7)
  {
    v8 = VUIDefaultLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v10) = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Calling completion handler for application:handleEventsForBackgroundURLSession:completionHandler:", &v10, 2u);
    }

    v9 = [(AppleTVAppDelegate *)self handleEventsForBackgroundURLSessionCompletionHandler];
    v9[2]();

    [(AppleTVAppDelegate *)self setHandleEventsForBackgroundURLSessionCompletionHandler:0];
  }
}

- (void)_downloadSessionDidFinishEventsForARBackgroundURLSession:(id)a3
{
  v4 = a3;
  v5 = VUIDefaultLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 name];
    v10 = 138412290;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Received %@", &v10, 0xCu);
  }

  v7 = [(AppleTVAppDelegate *)self handleEventsForARQLBackgroundURLSessionCompletionHandler];

  if (v7)
  {
    v8 = VUIDefaultLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v10) = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Calling AR completion handler for application:handleEventsForBackgroundURLSession:completionHandler:", &v10, 2u);
    }

    v9 = [(AppleTVAppDelegate *)self handleEventsForARQLBackgroundURLSessionCompletionHandler];
    v9[2]();

    [(AppleTVAppDelegate *)self setHandleEventsForARQLBackgroundURLSessionCompletionHandler:0];
  }
}

- (void)buildMenuWithBuilder:(id)a3
{
  v4.receiver = self;
  v4.super_class = AppleTVAppDelegate;
  v3 = a3;
  [(AppleTVAppDelegate *)&v4 buildMenuWithBuilder:v3];
  [VideosUISwiftExternal buildMenuWithBuilder:v3, v4.receiver, v4.super_class];
}

@end