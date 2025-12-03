@interface AppleTVAppDelegate
- (AppleTVAppDelegate)init;
- (BOOL)application:(id)application continueUserActivity:(id)activity restorationHandler:(id)handler;
- (BOOL)application:(id)application openURL:(id)l options:(id)options;
- (BOOL)application:(id)application runTest:(id)test options:(id)options;
- (BOOL)application:(id)application willFinishLaunchingWithOptions:(id)options;
- (unint64_t)application:(id)application supportedInterfaceOrientationsForWindow:(id)window;
- (void)_downloadSessionDidFinishEventsForARBackgroundURLSession:(id)session;
- (void)_downloadSessionDidFinishEventsForBackgroundURLSession:(id)session;
- (void)_downloadSessionDidTimeoutWaitingForBackgroundEventsToFinish;
- (void)application:(id)application handleEventsForBackgroundURLSession:(id)session completionHandler:(id)handler;
- (void)buildMenuWithBuilder:(id)builder;
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

- (BOOL)application:(id)application runTest:(id)test options:(id)options
{
  applicationCopy = application;
  testCopy = test;
  v8 = +[ATAPPTController sharedInstance];
  v9 = [v8 canHandleTest:testCopy];

  if (v9)
  {
    v10 = +[ATAPPTController sharedInstance];
    [v10 runTest:testCopy app:applicationCopy];
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

- (BOOL)application:(id)application willFinishLaunchingWithOptions:(id)options
{
  optionsCopy = options;
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
  v8 = [v7 applicationWillFinishLaunchingWithOptions:optionsCopy];

  v9 = VUISignpostLogObject();
  if (os_signpost_enabled(v9))
  {
    *v11 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "Launch.WillFinishLaunch", "", v11, 2u);
  }

  return v8;
}

- (BOOL)application:(id)application openURL:(id)l options:(id)options
{
  lCopy = l;
  optionsCopy = options;
  v8 = VUIDefaultLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = lCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "AppleTVAppDelegate openURL -- url %@", &v12, 0xCu);
  }

  v9 = +[VUITVAppLauncher sharedInstance];
  v10 = [v9 openURL:lCopy options:optionsCopy];

  return v10;
}

- (BOOL)application:(id)application continueUserActivity:(id)activity restorationHandler:(id)handler
{
  activityCopy = activity;
  v6 = VUIDefaultLogObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    activityType = [activityCopy activityType];
    *buf = 138412290;
    v26 = activityType;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "AppleTVAppDelegate continueUserActivity -- restorationHandler activityType %@", buf, 0xCu);
  }

  activityType2 = [activityCopy activityType];
  v9 = [activityType2 isEqualToString:NSUserActivityTypeBrowsingWeb];

  if (v9)
  {
    webpageURL = [activityCopy webpageURL];
    v11 = objc_opt_new();
    v12 = v11;
    if (webpageURL)
    {
      v13 = VUIDefaultLogObject();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        absoluteString = [webpageURL absoluteString];
        *buf = 138412290;
        v26 = absoluteString;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "AppleTVAppDelegate continueUserActivity -- process url %@", buf, 0xCu);
      }

      _sourceApplication = [activityCopy _sourceApplication];
      if (_sourceApplication)
      {
        [v12 setObject:_sourceApplication forKey:UIApplicationOpenURLOptionsSourceApplicationKey];
      }

      referrerURL = [activityCopy referrerURL];
      absoluteString2 = [referrerURL absoluteString];

      if (absoluteString2)
      {
        v23 = LSReferrerURLKey;
        v24 = absoluteString2;
        v18 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];
        [v12 setObject:v18 forKey:UIApplicationOpenURLOptionsAnnotationKey];
      }

      v19 = +[VUITVAppLauncher sharedInstance];
      if ([v12 count])
      {
        v20 = [v12 copy];
        v21 = [v19 openURL:webpageURL options:v20];
      }

      else
      {
        v21 = [v19 openURL:webpageURL options:0];
      }
    }

    else
    {
      v21 = 0;
      webpageURL = v11;
    }
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (unint64_t)application:(id)application supportedInterfaceOrientationsForWindow:(id)window
{
  windowCopy = window;
  v6 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v6 userInterfaceIdiom];

  if (userInterfaceIdiom == 1)
  {
    v8 = 30;
  }

  else
  {
    if ([windowCopy conformsToProtocol:&OBJC_PROTOCOL___VUIOrientationOverride])
    {
      overridesOrientationLock = [windowCopy overridesOrientationLock];
    }

    else
    {
      rootViewController = [windowCopy rootViewController];
      presentedViewController = [rootViewController presentedViewController];

      if (presentedViewController)
      {
        do
        {
          presentedViewController2 = [rootViewController presentedViewController];

          v12PresentedViewController = [presentedViewController2 presentedViewController];

          rootViewController = presentedViewController2;
        }

        while (v12PresentedViewController);
      }

      else
      {
        presentedViewController2 = rootViewController;
      }

      if ([presentedViewController2 conformsToProtocol:&OBJC_PROTOCOL___VUIOrientationOverride])
      {
        overridesOrientationLock = [presentedViewController2 overridesOrientationLock];
      }

      else
      {
        overridesOrientationLock = 0;
      }
    }

    if (([(AppleTVAppDelegate *)self overrideOrientation]| overridesOrientationLock))
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

- (void)application:(id)application handleEventsForBackgroundURLSession:(id)session completionHandler:(id)handler
{
  sessionCopy = session;
  handlerCopy = handler;
  v10 = NSStringFromSelector(a2);
  v11 = VUIDefaultLogObject();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 138412546;
    v19 = v10;
    v20 = 2112;
    v21 = sessionCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Received %@ for background URL session %@", &v18, 0x16u);
  }

  if ([sessionCopy isEqualToString:VUIARQLDownloadSessionConfigurationIdentifier])
  {
    handleEventsForARQLBackgroundURLSessionCompletionHandler = [(AppleTVAppDelegate *)self handleEventsForARQLBackgroundURLSessionCompletionHandler];

    if (handleEventsForARQLBackgroundURLSessionCompletionHandler)
    {
      v13 = VUIDefaultLogObject();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_1000126E4(v10, v13);
      }

      handleEventsForARQLBackgroundURLSessionCompletionHandler2 = [(AppleTVAppDelegate *)self handleEventsForARQLBackgroundURLSessionCompletionHandler];
      handleEventsForARQLBackgroundURLSessionCompletionHandler2[2]();

      [(AppleTVAppDelegate *)self setHandleEventsForARQLBackgroundURLSessionCompletionHandler:0];
    }

    [(AppleTVAppDelegate *)self setHandleEventsForARQLBackgroundURLSessionCompletionHandler:handlerCopy];
  }

  else
  {
    handleEventsForBackgroundURLSessionCompletionHandler = [(AppleTVAppDelegate *)self handleEventsForBackgroundURLSessionCompletionHandler];

    if (handleEventsForBackgroundURLSessionCompletionHandler)
    {
      v16 = VUIDefaultLogObject();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_10001266C(v10, v16);
      }

      handleEventsForBackgroundURLSessionCompletionHandler2 = [(AppleTVAppDelegate *)self handleEventsForBackgroundURLSessionCompletionHandler];
      handleEventsForBackgroundURLSessionCompletionHandler2[2]();

      [(AppleTVAppDelegate *)self setHandleEventsForBackgroundURLSessionCompletionHandler:0];
    }

    [(AppleTVAppDelegate *)self setHandleEventsForBackgroundURLSessionCompletionHandler:handlerCopy];
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

- (void)_downloadSessionDidFinishEventsForBackgroundURLSession:(id)session
{
  sessionCopy = session;
  v5 = VUIDefaultLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    name = [sessionCopy name];
    v10 = 138412290;
    v11 = name;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Received %@", &v10, 0xCu);
  }

  [NSObject cancelPreviousPerformRequestsWithTarget:self selector:"_downloadSessionDidTimeoutWaitingForBackgroundEventsToFinish" object:0];
  handleEventsForBackgroundURLSessionCompletionHandler = [(AppleTVAppDelegate *)self handleEventsForBackgroundURLSessionCompletionHandler];

  if (handleEventsForBackgroundURLSessionCompletionHandler)
  {
    v8 = VUIDefaultLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v10) = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Calling completion handler for application:handleEventsForBackgroundURLSession:completionHandler:", &v10, 2u);
    }

    handleEventsForBackgroundURLSessionCompletionHandler2 = [(AppleTVAppDelegate *)self handleEventsForBackgroundURLSessionCompletionHandler];
    handleEventsForBackgroundURLSessionCompletionHandler2[2]();

    [(AppleTVAppDelegate *)self setHandleEventsForBackgroundURLSessionCompletionHandler:0];
  }
}

- (void)_downloadSessionDidFinishEventsForARBackgroundURLSession:(id)session
{
  sessionCopy = session;
  v5 = VUIDefaultLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    name = [sessionCopy name];
    v10 = 138412290;
    v11 = name;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Received %@", &v10, 0xCu);
  }

  handleEventsForARQLBackgroundURLSessionCompletionHandler = [(AppleTVAppDelegate *)self handleEventsForARQLBackgroundURLSessionCompletionHandler];

  if (handleEventsForARQLBackgroundURLSessionCompletionHandler)
  {
    v8 = VUIDefaultLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v10) = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Calling AR completion handler for application:handleEventsForBackgroundURLSession:completionHandler:", &v10, 2u);
    }

    handleEventsForARQLBackgroundURLSessionCompletionHandler2 = [(AppleTVAppDelegate *)self handleEventsForARQLBackgroundURLSessionCompletionHandler];
    handleEventsForARQLBackgroundURLSessionCompletionHandler2[2]();

    [(AppleTVAppDelegate *)self setHandleEventsForARQLBackgroundURLSessionCompletionHandler:0];
  }
}

- (void)buildMenuWithBuilder:(id)builder
{
  v4.receiver = self;
  v4.super_class = AppleTVAppDelegate;
  builderCopy = builder;
  [(AppleTVAppDelegate *)&v4 buildMenuWithBuilder:builderCopy];
  [VideosUISwiftExternal buildMenuWithBuilder:builderCopy, v4.receiver, v4.super_class];
}

@end