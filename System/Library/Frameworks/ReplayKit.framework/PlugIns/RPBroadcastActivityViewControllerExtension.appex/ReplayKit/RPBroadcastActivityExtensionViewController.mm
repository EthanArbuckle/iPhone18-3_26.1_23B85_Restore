@interface RPBroadcastActivityExtensionViewController
- (id)_autoOptedInExtensionBundleIdentifiers;
- (void)_autoOptInExtensionIfNeverOptedIn:(id)a3;
- (void)loadHostAppInfo:(id)a3;
- (void)loadItems:(id)a3 withHandler:(id)a4;
- (void)loadStreamingActivitiesWithHandler:(id)a3;
- (void)loadView;
- (void)setUpActivityViewController:(id)a3 hostBundleID:(id)a4 iconImage:(id)a5 activities:(id)a6 weakSelf:(id)a7;
- (void)setupSingleExtensionView:(id)a3 hostBundleID:(id)a4 preferredExtension:(id)a5 iconImage:(id)a6 appName:(id)a7 activities:(id)a8;
- (void)showNotInstalledAlert:(id)a3 appName:(id)a4 broadcastActivitiesNotInstalledAlertTitle:(id)a5 broadcastActivitiesNotInstalledAlertMessage:(id)a6;
- (void)viewDidLoad;
@end

@implementation RPBroadcastActivityExtensionViewController

- (void)loadView
{
  if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v5 = "[RPBroadcastActivityExtensionViewController loadView]";
    v6 = 1024;
    v7 = 71;
    v8 = 2048;
    v9 = self;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p", buf, 0x1Cu);
  }

  v3.receiver = self;
  v3.super_class = RPBroadcastActivityExtensionViewController;
  [(RPBroadcastActivityExtensionViewController *)&v3 loadView];
}

- (void)setupSingleExtensionView:(id)a3 hostBundleID:(id)a4 preferredExtension:(id)a5 iconImage:(id)a6 appName:(id)a7 activities:(id)a8
{
  v13 = a3;
  v50 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v77 = "[RPBroadcastActivityExtensionViewController setupSingleExtensionView:hostBundleID:preferredExtension:iconImage:appName:activities:]";
    v78 = 1024;
    v79 = 167;
    v80 = 2048;
    v81 = self;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p", buf, 0x1Cu);
  }

  v47 = v15;
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v18 = v17;
  v51 = [v18 countByEnumeratingWithState:&v69 objects:v75 count:16];
  if (!v51)
  {

LABEL_32:
    v42 = [NSBundle _rpLocalizedStringFromFrameworkBundleWithKey:@"PREFERRED_BROADCAST_ACTIVITIES_NOT_INSTALLED_ALERT_TITLE"];
    v43 = [NSBundle _rpLocalizedStringFromFrameworkBundleWithKey:@"PREFERRED_BROADCAST_ACTIVITIES_NOT_INSTALLED_ALERT_MESSAGE"];
    [v13 showNotInstalledAlert:v14 appName:v16 broadcastActivitiesNotInstalledAlertTitle:v42 broadcastActivitiesNotInstalledAlertMessage:v43];

    goto LABEL_33;
  }

  v19 = 0;
  v49 = *v70;
  v44 = v59;
  v45 = v54;
  v46 = v14;
  obj = v18;
  do
  {
    for (i = 0; i != v51; i = i + 1)
    {
      if (*v70 != v49)
      {
        objc_enumerationMutation(obj);
      }

      v21 = *(*(&v69 + 1) + 8 * i);
      if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446722;
        v77 = "[RPBroadcastActivityExtensionViewController setupSingleExtensionView:hostBundleID:preferredExtension:iconImage:appName:activities:]";
        v78 = 1024;
        v79 = 174;
        v80 = 2048;
        v81 = self;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p checking activity", buf, 0x1Cu);
      }

      v22 = [v21 applicationExtension];
      v23 = [v22 identifier];
      v24 = [v14 isEqualToString:v23];

      if (v24)
      {
        if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446722;
          v77 = "[RPBroadcastActivityExtensionViewController setupSingleExtensionView:hostBundleID:preferredExtension:iconImage:appName:activities:]";
          v78 = 1024;
          v79 = 178;
          v80 = 2048;
          v81 = self;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p found matching activity", buf, 0x1Cu);
        }

        v25 = objc_alloc_init(RPUIActivityItem);
        v26 = v25;
        if (v47)
        {
          [(RPUIActivityItem *)v25 setAppIcon:v47];
        }

        [(RPUIActivityItem *)v26 setAppName:v16];
        v27 = objc_alloc_init(RPStreamingActivityKey);
        v74[0] = v26;
        v74[1] = v27;
        v74[2] = v50;
        v74[3] = v16;
        v28 = v16;
        v29 = [NSArray arrayWithObjects:v74 count:4];
        v30 = [v29 mutableCopy];

        if (v47)
        {
          [v30 addObject:v47];
        }

        v73 = v30;
        v31 = [NSArray arrayWithObjects:&v73 count:1];
        [v21 prepareWithActivityItems:v31];

        v67[0] = _NSConcreteStackBlock;
        v67[1] = 3221225472;
        v67[2] = sub_100001DC4;
        v67[3] = &unk_10000C348;
        v32 = v13;
        v33 = v13;
        v68 = v33;
        v34 = [v21 applicationExtension];
        [v34 setRequestCancellationBlock:v67];

        v65[0] = _NSConcreteStackBlock;
        v65[1] = 3221225472;
        v65[2] = sub_100001DDC;
        v65[3] = &unk_10000C370;
        v35 = v33;
        v66 = v35;
        v36 = [v21 applicationExtension];
        [v36 setRequestInterruptionBlock:v65];

        v37 = [v21 applicationExtension];
        v61[0] = _NSConcreteStackBlock;
        v61[1] = 3221225472;
        v61[2] = sub_100001DF4;
        v61[3] = &unk_10000C410;
        v38 = v35;
        v62 = v38;
        v63 = self;
        v39 = v50;
        v64 = v39;
        [v37 setRequestCompletionBlock:v61];

        if ([v39 isEqualToString:@"com.apple.replayKit.ReplayKitTestRunneriOS"])
        {
          if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136446722;
            v77 = "[RPBroadcastActivityExtensionViewController setupSingleExtensionView:hostBundleID:preferredExtension:iconImage:appName:activities:]";
            v78 = 1024;
            v79 = 235;
            v80 = 2048;
            v81 = self;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p Bypass preferred extension alert for ReplayKitTestRunneriOS", buf, 0x1Cu);
          }

          v40 = [v21 applicationExtension];
          v58[0] = _NSConcreteStackBlock;
          v58[1] = 3221225472;
          v59[0] = sub_1000021E8;
          v59[1] = &unk_10000C438;
          v59[2] = self;
          v60 = v38;
          [v40 instantiateViewControllerWithInputItems:&__NSArray0__struct connectionHandler:v58];

          v41 = v60;
        }

        else
        {
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          v54[0] = sub_1000022F4;
          v54[1] = &unk_10000C4D8;
          v55 = v28;
          v56 = v21;
          v57 = v38;
          dispatch_async(&_dispatch_main_q, block);

          v41 = v55;
        }

        v13 = v32;
        v19 = 1;
        v14 = v46;
        v16 = v28;
      }
    }

    v18 = obj;
    v51 = [obj countByEnumeratingWithState:&v69 objects:v75 count:16];
  }

  while (v51);

  if ((v19 & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_33:
}

- (void)setUpActivityViewController:(id)a3 hostBundleID:(id)a4 iconImage:(id)a5 activities:(id)a6 weakSelf:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v41 = "[RPBroadcastActivityExtensionViewController setUpActivityViewController:hostBundleID:iconImage:activities:weakSelf:]";
    v42 = 1024;
    v43 = 304;
    v44 = 2048;
    v45 = self;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p", buf, 0x1Cu);
  }

  v17 = objc_alloc_init(RPStreamingActivityKey);
  v18 = objc_alloc_init(RPUIActivityItem);
  [(RPUIActivityItem *)v18 setAppIcon:v14];
  [(RPUIActivityItem *)v18 setAppName:v12];
  v38[0] = @"RPBroadcastExtensionKeyExtensionHostInfoAppName";
  v38[1] = @"RPBroadcastExtensionKeyExtensionHostInfoBundleID";
  v30 = v12;
  v39[0] = v12;
  v39[1] = v13;
  v19 = [NSDictionary dictionaryWithObjects:v39 forKeys:v38 count:2];
  v20 = [v19 mutableCopy];

  if (v14)
  {
    v21 = UIImagePNGRepresentation(v14);
    [v20 setObject:v21 forKeyedSubscript:@"RPBroadcastExtensionKeyExtensionHostInfoAppIcon"];
  }

  v22 = [NSKeyedArchiver archivedDataWithRootObject:v20, self];
  v37[0] = v18;
  v37[1] = v17;
  v37[2] = v22;
  v23 = [NSArray arrayWithObjects:v37 count:3];
  v24 = [v23 mutableCopy];

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002954;
  block[3] = &unk_10000C5C8;
  v32 = v24;
  v33 = v15;
  v34 = v29;
  v35 = v16;
  v36 = v13;
  v25 = v13;
  v26 = v16;
  v27 = v15;
  v28 = v24;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)showNotInstalledAlert:(id)a3 appName:(id)a4 broadcastActivitiesNotInstalledAlertTitle:(id)a5 broadcastActivitiesNotInstalledAlertMessage:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v12 = [NSBundle _rpLocalizedStringFromFrameworkBundleWithKey:@"BROADCAST_ACTIVITIES_NOT_INSTALLED_ALERT_TITLE"];
  if (v10)
  {
    v13 = v10;
  }

  else
  {
    v13 = [NSString stringWithFormat:v12, v9];
  }

  v14 = v13;
  if (v11)
  {
    v15 = v11;
  }

  else
  {
    v15 = [NSBundle _rpLocalizedStringFromFrameworkBundleWithKey:@"BROADCAST_ACTIVITIES_NOT_INSTALLED_ALERT_MESSAGE"];
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000032B0;
  block[3] = &unk_10000C4D8;
  v19 = v14;
  v20 = v15;
  v21 = self;
  v16 = v15;
  v17 = v14;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)loadItems:(id)a3 withHandler:(id)a4
{
  v6 = a3;
  v16 = a4;
  if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    *&buf[4] = "[RPBroadcastActivityExtensionViewController loadItems:withHandler:]";
    *&buf[12] = 1024;
    *&buf[14] = 435;
    *&buf[18] = 2048;
    *&buf[20] = self;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p", buf, 0x1Cu);
  }

  v7 = kUTTypeData;
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  *&buf[24] = sub_10000394C;
  v38 = sub_10000395C;
  v39 = 0;
  v34[0] = 0;
  v34[1] = v34;
  v34[2] = 0x3032000000;
  v34[3] = sub_10000394C;
  v34[4] = sub_10000395C;
  v35 = &__NSDictionary0__struct;
  v32[0] = 0;
  v32[1] = v32;
  v32[2] = 0x3032000000;
  v32[3] = sub_10000394C;
  v32[4] = sub_10000395C;
  v33 = +[NSData data];
  v30[0] = 0;
  v30[1] = v30;
  v30[2] = 0x3032000000;
  v30[3] = sub_10000394C;
  v30[4] = sub_10000395C;
  v31 = 0;
  v8 = [v6 count];
  v29[0] = 0;
  v29[1] = v29;
  v29[2] = 0x2020000000;
  v29[3] = 0;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v25 objects:v36 count:16];
  if (v10)
  {
    v11 = *v26;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v26 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v25 + 1) + 8 * i);
        v14 = [v13 attachments];
        v15 = [v14 objectAtIndexedSubscript:0];

        if ([v15 hasItemConformingToTypeIdentifier:v7])
        {
          v17[0] = _NSConcreteStackBlock;
          v17[1] = 3221225472;
          v17[2] = sub_100003964;
          v17[3] = &unk_10000C5F0;
          v17[4] = v13;
          v19 = buf;
          v20 = v34;
          v21 = v32;
          v22 = v30;
          v23 = v29;
          v24 = v8;
          v18 = v16;
          [v15 loadItemForTypeIdentifier:v7 options:0 completionHandler:v17];
        }
      }

      v10 = [v9 countByEnumeratingWithState:&v25 objects:v36 count:16];
    }

    while (v10);
  }

  _Block_object_dispose(v29, 8);
  _Block_object_dispose(v30, 8);

  _Block_object_dispose(v32, 8);
  _Block_object_dispose(v34, 8);

  _Block_object_dispose(buf, 8);
}

- (void)viewDidLoad
{
  if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v6 = "[RPBroadcastActivityExtensionViewController viewDidLoad]";
    v7 = 1024;
    v8 = 488;
    v9 = 2048;
    v10 = self;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p", buf, 0x1Cu);
  }

  v4.receiver = self;
  v4.super_class = RPBroadcastActivityExtensionViewController;
  [(RPBroadcastActivityExtensionViewController *)&v4 viewDidLoad];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100003D2C;
  block[3] = &unk_10000C618;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)loadHostAppInfo:(id)a3
{
  v4 = a3;
  if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    *&buf[4] = "[RPBroadcastActivityExtensionViewController loadHostAppInfo:]";
    *&buf[12] = 1024;
    *&buf[14] = 496;
    *&buf[18] = 2048;
    *&buf[20] = self;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p", buf, 0x1Cu);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  *&buf[24] = sub_10000394C;
  v22 = sub_10000395C;
  v23 = 0;
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x3032000000;
  v19[3] = sub_10000394C;
  v19[4] = sub_10000395C;
  v20 = 0;
  v5 = dispatch_group_create();
  v6 = [(RPBroadcastActivityExtensionViewController *)self extensionContext];
  v7 = [v6 inputItems];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100004078;
  v15[3] = &unk_10000C668;
  v8 = v5;
  v16 = v8;
  v17 = buf;
  v18 = v19;
  [v7 enumerateObjectsUsingBlock:v15];

  v9 = [(RPBroadcastActivityExtensionViewController *)self replyQueue];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100004384;
  v11[3] = &unk_10000C690;
  v12 = v4;
  v13 = buf;
  v14 = v19;
  v10 = v4;
  dispatch_group_notify(v8, v9, v11);

  _Block_object_dispose(v19, 8);
  _Block_object_dispose(buf, 8);
}

- (void)loadStreamingActivitiesWithHandler:(id)a3
{
  v4 = a3;
  if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v8 = "[RPBroadcastActivityExtensionViewController loadStreamingActivitiesWithHandler:]";
    v9 = 1024;
    v10 = 564;
    v11 = 2048;
    v12 = self;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p Loading streaming activities", buf, 0x1Cu);
  }

  if (self->_streamingActivities)
  {
    v4[2](v4);
  }

  else
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100004708;
    v5[3] = &unk_10000C6E0;
    v5[4] = self;
    v6 = v4;
    [NSExtension extensionsWithMatchingPointName:@"com.apple.broadcast-services-setupui" completion:v5];
  }
}

- (id)_autoOptedInExtensionBundleIdentifiers
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 objectForKey:@"autoOptedInExtensions"];

  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = +[NSArray array];
  }

  v5 = v4;

  return v5;
}

- (void)_autoOptInExtensionIfNeverOptedIn:(id)a3
{
  v4 = a3;
  v5 = [v4 _extensionBundle];
  v6 = [v5 bundleIdentifier];

  v7 = [(RPBroadcastActivityExtensionViewController *)self _autoOptedInExtensionBundleIdentifiers];
  v8 = [v7 containsObject:v6];

  if ((v8 & 1) == 0 && v6)
  {
    v9 = [(RPBroadcastActivityExtensionViewController *)self _autoOptedInExtensionBundleIdentifiers];
    v10 = [v9 arrayByAddingObject:v6];

    v11 = +[NSUserDefaults standardUserDefaults];
    [v11 setObject:v10 forKey:@"autoOptedInExtensions"];

    v12 = +[NSUserDefaults standardUserDefaults];
    [v12 synchronize];

    v14 = 0;
    [v4 attemptOptIn:&v14];
    v13 = v14;
    if (v13 && __RPLogLevel <= 2u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_1000054B8();
    }
  }
}

@end