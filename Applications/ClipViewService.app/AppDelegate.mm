@interface AppDelegate
- (BOOL)_handleUniversalLinkInUserActivity:(id)activity;
- (BOOL)application:(id)application didFinishLaunchingWithOptions:(id)options;
@end

@implementation AppDelegate

- (BOOL)application:(id)application didFinishLaunchingWithOptions:(id)options
{
  v5 = [NSHashTable weakObjectsHashTable:application];
  [(AppDelegate *)self setViewControllers:v5];

  return 1;
}

- (BOOL)_handleUniversalLinkInUserActivity:(id)activity
{
  activityCopy = activity;
  activityType = [activityCopy activityType];
  v5 = [activityType isEqual:NSUserActivityTypeBrowsingWeb];

  if (v5)
  {
    webpageURL = [activityCopy webpageURL];
    v7 = webpageURL;
    if (webpageURL)
    {
      cps_fallbackBundleIdentifier = [webpageURL cps_fallbackBundleIdentifier];
      v9 = cps_fallbackBundleIdentifier != 0;
      v10 = sub_100001374();
      v11 = v10;
      if (cps_fallbackBundleIdentifier)
      {
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          LODWORD(buf) = 138739971;
          *(&buf + 4) = v7;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Received out-of-box app clip URL: %{sensitive}@", &buf, 0xCu);
        }

        *&buf = 0;
        *(&buf + 1) = &buf;
        v21 = 0x3032000000;
        v22 = sub_100001260;
        v23 = sub_100001270;
        v12 = [CPSClipRequest alloc];
        _wp_urlByRemovingTrackingInformation = [v7 _wp_urlByRemovingTrackingInformation];
        v24 = [v12 initWithURL:_wp_urlByRemovingTrackingInformation];

        sessionProxy = [*(*(&buf + 1) + 40) sessionProxy];
        configuration = [sessionProxy configuration];

        _sourceApplication = [activityCopy _sourceApplication];
        [configuration setReferrerBundleID:_sourceApplication];

        [configuration setLaunchReason:CPSSessionLaunchReasonInApp];
        v17 = *(*(&buf + 1) + 40);
        v19[0] = _NSConcreteStackBlock;
        v19[1] = 3221225472;
        v19[2] = sub_100001278;
        v19[3] = &unk_100008268;
        v19[4] = &buf;
        [v17 requestClipWithCompletion:v19];

        _Block_object_dispose(&buf, 8);
      }

      else if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_1000026E4(v7, v11);
      }
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end