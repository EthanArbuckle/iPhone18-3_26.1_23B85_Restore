@interface AppDelegate
- (BOOL)handleUniversalLinkInUserActivity:(id)activity;
@end

@implementation AppDelegate

- (BOOL)handleUniversalLinkInUserActivity:(id)activity
{
  activityCopy = activity;
  activityType = [activityCopy activityType];
  v5 = [activityType isEqual:NSUserActivityTypeBrowsingWeb];

  if (v5)
  {
    webpageURL = [activityCopy webpageURL];
    if (webpageURL)
    {
      v7 = [NDOUniversalLinkConverter convertUrl:webpageURL];
      v8 = v7 != 0;
      v9 = _NDOLogSystem();
      v10 = v9;
      if (v7)
      {
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446466;
          v37 = "[AppDelegate handleUniversalLinkInUserActivity:]";
          v38 = 2112;
          v39 = v7;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}s: launching: %@", buf, 0x16u);
        }

        v10 = +[LSApplicationWorkspace defaultWorkspace];
        v34[0] = FBSOpenApplicationOptionKeyUnlockDevice;
        v34[1] = FBSOpenApplicationOptionKeyPromptUnlockDevice;
        v35[0] = &__kCFBooleanTrue;
        v35[1] = &__kCFBooleanTrue;
        v11 = [NSDictionary dictionaryWithObjects:v35 forKeys:v34 count:2];
        [v10 openSensitiveURL:v7 withOptions:v11];
      }

      else if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_100000FB4(v10, v26, v27, v28, v29, v30, v31, v32);
      }
    }

    else
    {
      v7 = _NDOLogSystem();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_10000102C(v7, v19, v20, v21, v22, v23, v24, v25);
      }

      v8 = 0;
    }
  }

  else
  {
    webpageURL = _NDOLogSystem();
    if (os_log_type_enabled(webpageURL, OS_LOG_TYPE_ERROR))
    {
      sub_100000F3C(webpageURL, v12, v13, v14, v15, v16, v17, v18);
    }

    v8 = 0;
  }

  return v8;
}

@end