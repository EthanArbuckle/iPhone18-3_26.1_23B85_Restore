@interface FLTAppDelegate
+ (BOOL)isFaceTimeApplicationInstalled;
- (BOOL)application:(id)a3 continueUserActivity:(id)a4 restorationHandler:(id)a5;
- (BOOL)application:(id)a3 didFinishLaunchingWithOptions:(id)a4;
- (BOOL)application:(id)a3 openURL:(id)a4 options:(id)a5;
- (BOOL)application:(id)a3 willContinueUserActivityWithType:(id)a4;
- (BOOL)transferUserActivity:(id)a3;
- (TUFeatureFlags)featureFlags;
@end

@implementation FLTAppDelegate

- (TUFeatureFlags)featureFlags
{
  featureFlags = self->_featureFlags;
  if (!featureFlags)
  {
    v4 = objc_alloc_init(TUFeatureFlags);
    v5 = self->_featureFlags;
    self->_featureFlags = v4;

    featureFlags = self->_featureFlags;
  }

  return featureFlags;
}

+ (BOOL)isFaceTimeApplicationInstalled
{
  v2 = +[LSApplicationWorkspace defaultWorkspace];
  v3 = TUPreferredFaceTimeBundleIdentifier();
  v4 = [v2 applicationIsInstalled:v3];

  return v4;
}

- (BOOL)transferUserActivity:(id)a3
{
  v3 = a3;
  v4 = [LSApplicationRecord alloc];
  v10 = 0;
  v5 = [v4 initWithBundleIdentifier:TUBundleIdentifierInCallServiceApplication allowPlaceholder:0 error:&v10];
  v6 = v10;
  if (v5)
  {
    v7 = objc_opt_new();
    v8 = +[LSApplicationWorkspace defaultWorkspace];
    [v8 openUserActivity:v3 usingApplicationRecord:v5 configuration:v7 completionHandler:&stru_100004180];
  }

  else
  {
    v7 = sub_100001738();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100001834();
    }
  }

  return v5 != 0;
}

- (BOOL)application:(id)a3 didFinishLaunchingWithOptions:(id)a4
{
  v4 = a4;
  v5 = sub_100001738();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Finished launching: %@", &v7, 0xCu);
  }

  return 1;
}

- (BOOL)application:(id)a3 openURL:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = sub_100001738();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v28 = v9;
    v29 = 2112;
    v30 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "open url %@ with options %@", buf, 0x16u);
  }

  v12 = [(FLTAppDelegate *)self featureFlags];
  if ([v12 ftAppDeletionEnabled])
  {
    v13 = [objc_opt_class() isFaceTimeApplicationInstalled];

    if ((v13 & 1) == 0)
    {
      v14 = sub_100001738();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "FaceTime application is not installed - just opening url", buf, 2u);
      }

      [v8 openURL:v9 options:&__NSDictionary0__struct completionHandler:0];
      goto LABEL_17;
    }
  }

  else
  {
  }

  v15 = [v9 scheme];
  v16 = [v15 isEqualToString:@"facetime-open-link"];

  if (!v16)
  {
LABEL_17:
    v24 = 0;
    goto LABEL_18;
  }

  v17 = [[NSURLComponents alloc] initWithURL:v9 resolvingAgainstBaseURL:0];
  [v17 setScheme:@"incallservice-open-link"];
  v18 = sub_100001738();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = [v17 URL];
    *buf = 138412546;
    v28 = v9;
    v29 = 2112;
    v30 = v19;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "rewrote the original url: %@ to %@", buf, 0x16u);
  }

  v20 = +[LSApplicationWorkspace defaultWorkspace];
  v21 = [v17 URL];
  v26 = 0;
  [v20 openSensitiveURL:v21 withOptions:0 error:&v26];
  v22 = v26;

  if (v22)
  {
    v23 = sub_100001738();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      sub_100001904();
    }
  }

  v24 = 1;
LABEL_18:

  return v24;
}

- (BOOL)application:(id)a3 continueUserActivity:(id)a4 restorationHandler:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = sub_100001738();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v27 = 138412290;
    v28 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Continue user activity %@", &v27, 0xCu);
  }

  v10 = [(__CFString *)v8 activityType];
  if ([v10 isEqual:NSUserActivityTypeBrowsingWeb])
  {
    v11 = [(__CFString *)v8 webpageURL];

    if (v11)
    {
      v12 = [(__CFString *)v8 webpageURL];
      v13 = [(FLTAppDelegate *)self featureFlags];
      if ([v13 ftAppDeletionEnabled])
      {
        v14 = [objc_opt_class() isFaceTimeApplicationInstalled];

        if ((v14 & 1) == 0)
        {
          goto LABEL_21;
        }
      }

      else
      {
      }

      v19 = [TUConversationLink conversationLinkForURL:v12];
      if (v19)
      {
        v20 = v19;
        v21 = [(FLTAppDelegate *)self transferUserActivity:v8];

        if (v21)
        {
          v18 = 1;
LABEL_24:

          goto LABEL_25;
        }
      }

      else
      {
        v22 = sub_100001738();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          sub_10000196C();
        }
      }

LABEL_21:
      v23 = sub_100001738();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v27 = 138412290;
        v28 = v12;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Received user activity with URL %@, but URL was not recognized, diiverting user back to browser", &v27, 0xCu);
      }

      [v7 openURL:v12 options:&__NSDictionary0__struct completionHandler:0];
      v18 = 0;
      goto LABEL_24;
    }
  }

  else
  {
  }

  v15 = [(FLTAppDelegate *)self featureFlags];
  if ([v15 conversationHandoffEnabled])
  {
    v16 = [(__CFString *)v8 activityType];
    v17 = [v16 isEqualToString:TUUserActivityTypeConversationHandoff];

    if (v17)
    {
      v18 = [(FLTAppDelegate *)self transferUserActivity:v8];
      goto LABEL_25;
    }
  }

  else
  {
  }

  v18 = 0;
LABEL_25:
  v24 = sub_100001738();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v25 = @"NO";
    if (v18)
    {
      v25 = @"YES";
    }

    v27 = 138412290;
    v28 = v25;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Link trampoline did continue user activity: %@", &v27, 0xCu);
  }

  return v18;
}

- (BOOL)application:(id)a3 willContinueUserActivityWithType:(id)a4
{
  v4 = a4;
  v5 = sub_100001738();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Will continue activity %@", &v7, 0xCu);
  }

  return 0;
}

@end