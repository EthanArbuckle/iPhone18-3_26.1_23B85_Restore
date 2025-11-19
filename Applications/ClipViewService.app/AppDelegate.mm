@interface AppDelegate
- (BOOL)_handleUniversalLinkInUserActivity:(id)a3;
- (BOOL)application:(id)a3 didFinishLaunchingWithOptions:(id)a4;
@end

@implementation AppDelegate

- (BOOL)application:(id)a3 didFinishLaunchingWithOptions:(id)a4
{
  v5 = [NSHashTable weakObjectsHashTable:a3];
  [(AppDelegate *)self setViewControllers:v5];

  return 1;
}

- (BOOL)_handleUniversalLinkInUserActivity:(id)a3
{
  v3 = a3;
  v4 = [v3 activityType];
  v5 = [v4 isEqual:NSUserActivityTypeBrowsingWeb];

  if (v5)
  {
    v6 = [v3 webpageURL];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 cps_fallbackBundleIdentifier];
      v9 = v8 != 0;
      v10 = sub_100001374();
      v11 = v10;
      if (v8)
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
        v13 = [v7 _wp_urlByRemovingTrackingInformation];
        v24 = [v12 initWithURL:v13];

        v14 = [*(*(&buf + 1) + 40) sessionProxy];
        v15 = [v14 configuration];

        v16 = [v3 _sourceApplication];
        [v15 setReferrerBundleID:v16];

        [v15 setLaunchReason:CPSSessionLaunchReasonInApp];
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