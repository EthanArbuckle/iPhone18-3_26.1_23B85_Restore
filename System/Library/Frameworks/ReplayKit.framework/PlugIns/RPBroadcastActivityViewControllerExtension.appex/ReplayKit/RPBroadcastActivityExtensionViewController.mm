@interface RPBroadcastActivityExtensionViewController
- (id)_autoOptedInExtensionBundleIdentifiers;
- (void)_autoOptInExtensionIfNeverOptedIn:(id)in;
- (void)loadHostAppInfo:(id)info;
- (void)loadItems:(id)items withHandler:(id)handler;
- (void)loadStreamingActivitiesWithHandler:(id)handler;
- (void)loadView;
- (void)setUpActivityViewController:(id)controller hostBundleID:(id)d iconImage:(id)image activities:(id)activities weakSelf:(id)self;
- (void)setupSingleExtensionView:(id)view hostBundleID:(id)d preferredExtension:(id)extension iconImage:(id)image appName:(id)name activities:(id)activities;
- (void)showNotInstalledAlert:(id)alert appName:(id)name broadcastActivitiesNotInstalledAlertTitle:(id)title broadcastActivitiesNotInstalledAlertMessage:(id)message;
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
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p", buf, 0x1Cu);
  }

  v3.receiver = self;
  v3.super_class = RPBroadcastActivityExtensionViewController;
  [(RPBroadcastActivityExtensionViewController *)&v3 loadView];
}

- (void)setupSingleExtensionView:(id)view hostBundleID:(id)d preferredExtension:(id)extension iconImage:(id)image appName:(id)name activities:(id)activities
{
  viewCopy = view;
  dCopy = d;
  extensionCopy = extension;
  imageCopy = image;
  nameCopy = name;
  activitiesCopy = activities;
  if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v77 = "[RPBroadcastActivityExtensionViewController setupSingleExtensionView:hostBundleID:preferredExtension:iconImage:appName:activities:]";
    v78 = 1024;
    v79 = 167;
    v80 = 2048;
    selfCopy5 = self;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p", buf, 0x1Cu);
  }

  v47 = imageCopy;
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v18 = activitiesCopy;
  v51 = [v18 countByEnumeratingWithState:&v69 objects:v75 count:16];
  if (!v51)
  {

LABEL_32:
    v42 = [NSBundle _rpLocalizedStringFromFrameworkBundleWithKey:@"PREFERRED_BROADCAST_ACTIVITIES_NOT_INSTALLED_ALERT_TITLE"];
    v43 = [NSBundle _rpLocalizedStringFromFrameworkBundleWithKey:@"PREFERRED_BROADCAST_ACTIVITIES_NOT_INSTALLED_ALERT_MESSAGE"];
    [viewCopy showNotInstalledAlert:extensionCopy appName:nameCopy broadcastActivitiesNotInstalledAlertTitle:v42 broadcastActivitiesNotInstalledAlertMessage:v43];

    goto LABEL_33;
  }

  v19 = 0;
  v49 = *v70;
  v44 = v59;
  v45 = v54;
  v46 = extensionCopy;
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
        selfCopy5 = self;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p checking activity", buf, 0x1Cu);
      }

      applicationExtension = [v21 applicationExtension];
      identifier = [applicationExtension identifier];
      v24 = [extensionCopy isEqualToString:identifier];

      if (v24)
      {
        if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446722;
          v77 = "[RPBroadcastActivityExtensionViewController setupSingleExtensionView:hostBundleID:preferredExtension:iconImage:appName:activities:]";
          v78 = 1024;
          v79 = 178;
          v80 = 2048;
          selfCopy5 = self;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p found matching activity", buf, 0x1Cu);
        }

        v25 = objc_alloc_init(RPUIActivityItem);
        v26 = v25;
        if (v47)
        {
          [(RPUIActivityItem *)v25 setAppIcon:v47];
        }

        [(RPUIActivityItem *)v26 setAppName:nameCopy];
        v27 = objc_alloc_init(RPStreamingActivityKey);
        v74[0] = v26;
        v74[1] = v27;
        v74[2] = dCopy;
        v74[3] = nameCopy;
        v28 = nameCopy;
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
        v32 = viewCopy;
        v33 = viewCopy;
        v68 = v33;
        applicationExtension2 = [v21 applicationExtension];
        [applicationExtension2 setRequestCancellationBlock:v67];

        v65[0] = _NSConcreteStackBlock;
        v65[1] = 3221225472;
        v65[2] = sub_100001DDC;
        v65[3] = &unk_10000C370;
        v35 = v33;
        v66 = v35;
        applicationExtension3 = [v21 applicationExtension];
        [applicationExtension3 setRequestInterruptionBlock:v65];

        applicationExtension4 = [v21 applicationExtension];
        v61[0] = _NSConcreteStackBlock;
        v61[1] = 3221225472;
        v61[2] = sub_100001DF4;
        v61[3] = &unk_10000C410;
        v38 = v35;
        v62 = v38;
        selfCopy4 = self;
        v39 = dCopy;
        v64 = v39;
        [applicationExtension4 setRequestCompletionBlock:v61];

        if ([v39 isEqualToString:@"com.apple.replayKit.ReplayKitTestRunneriOS"])
        {
          if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136446722;
            v77 = "[RPBroadcastActivityExtensionViewController setupSingleExtensionView:hostBundleID:preferredExtension:iconImage:appName:activities:]";
            v78 = 1024;
            v79 = 235;
            v80 = 2048;
            selfCopy5 = self;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p Bypass preferred extension alert for ReplayKitTestRunneriOS", buf, 0x1Cu);
          }

          applicationExtension5 = [v21 applicationExtension];
          v58[0] = _NSConcreteStackBlock;
          v58[1] = 3221225472;
          v59[0] = sub_1000021E8;
          v59[1] = &unk_10000C438;
          v59[2] = self;
          v60 = v38;
          [applicationExtension5 instantiateViewControllerWithInputItems:&__NSArray0__struct connectionHandler:v58];

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

        viewCopy = v32;
        v19 = 1;
        extensionCopy = v46;
        nameCopy = v28;
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

- (void)setUpActivityViewController:(id)controller hostBundleID:(id)d iconImage:(id)image activities:(id)activities weakSelf:(id)self
{
  controllerCopy = controller;
  dCopy = d;
  imageCopy = image;
  activitiesCopy = activities;
  selfCopy = self;
  if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v41 = "[RPBroadcastActivityExtensionViewController setUpActivityViewController:hostBundleID:iconImage:activities:weakSelf:]";
    v42 = 1024;
    v43 = 304;
    v44 = 2048;
    selfCopy2 = self;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p", buf, 0x1Cu);
  }

  v17 = objc_alloc_init(RPStreamingActivityKey);
  v18 = objc_alloc_init(RPUIActivityItem);
  [(RPUIActivityItem *)v18 setAppIcon:imageCopy];
  [(RPUIActivityItem *)v18 setAppName:controllerCopy];
  v38[0] = @"RPBroadcastExtensionKeyExtensionHostInfoAppName";
  v38[1] = @"RPBroadcastExtensionKeyExtensionHostInfoBundleID";
  v30 = controllerCopy;
  v39[0] = controllerCopy;
  v39[1] = dCopy;
  v19 = [NSDictionary dictionaryWithObjects:v39 forKeys:v38 count:2];
  v20 = [v19 mutableCopy];

  if (imageCopy)
  {
    v21 = UIImagePNGRepresentation(imageCopy);
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
  v33 = activitiesCopy;
  v34 = v29;
  v35 = selfCopy;
  v36 = dCopy;
  v25 = dCopy;
  v26 = selfCopy;
  v27 = activitiesCopy;
  v28 = v24;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)showNotInstalledAlert:(id)alert appName:(id)name broadcastActivitiesNotInstalledAlertTitle:(id)title broadcastActivitiesNotInstalledAlertMessage:(id)message
{
  nameCopy = name;
  titleCopy = title;
  messageCopy = message;
  v12 = [NSBundle _rpLocalizedStringFromFrameworkBundleWithKey:@"BROADCAST_ACTIVITIES_NOT_INSTALLED_ALERT_TITLE"];
  if (titleCopy)
  {
    nameCopy = titleCopy;
  }

  else
  {
    nameCopy = [NSString stringWithFormat:v12, nameCopy];
  }

  v14 = nameCopy;
  if (messageCopy)
  {
    v15 = messageCopy;
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
  selfCopy = self;
  v16 = v15;
  v17 = v14;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)loadItems:(id)items withHandler:(id)handler
{
  itemsCopy = items;
  handlerCopy = handler;
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
  v8 = [itemsCopy count];
  v29[0] = 0;
  v29[1] = v29;
  v29[2] = 0x2020000000;
  v29[3] = 0;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v9 = itemsCopy;
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
        attachments = [v13 attachments];
        v15 = [attachments objectAtIndexedSubscript:0];

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
          v18 = handlerCopy;
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
    selfCopy = self;
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

- (void)loadHostAppInfo:(id)info
{
  infoCopy = info;
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
  extensionContext = [(RPBroadcastActivityExtensionViewController *)self extensionContext];
  inputItems = [extensionContext inputItems];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100004078;
  v15[3] = &unk_10000C668;
  v8 = v5;
  v16 = v8;
  v17 = buf;
  v18 = v19;
  [inputItems enumerateObjectsUsingBlock:v15];

  replyQueue = [(RPBroadcastActivityExtensionViewController *)self replyQueue];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100004384;
  v11[3] = &unk_10000C690;
  v12 = infoCopy;
  v13 = buf;
  v14 = v19;
  v10 = infoCopy;
  dispatch_group_notify(v8, replyQueue, v11);

  _Block_object_dispose(v19, 8);
  _Block_object_dispose(buf, 8);
}

- (void)loadStreamingActivitiesWithHandler:(id)handler
{
  handlerCopy = handler;
  if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v8 = "[RPBroadcastActivityExtensionViewController loadStreamingActivitiesWithHandler:]";
    v9 = 1024;
    v10 = 564;
    v11 = 2048;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p Loading streaming activities", buf, 0x1Cu);
  }

  if (self->_streamingActivities)
  {
    handlerCopy[2](handlerCopy);
  }

  else
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100004708;
    v5[3] = &unk_10000C6E0;
    v5[4] = self;
    v6 = handlerCopy;
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

- (void)_autoOptInExtensionIfNeverOptedIn:(id)in
{
  inCopy = in;
  _extensionBundle = [inCopy _extensionBundle];
  bundleIdentifier = [_extensionBundle bundleIdentifier];

  _autoOptedInExtensionBundleIdentifiers = [(RPBroadcastActivityExtensionViewController *)self _autoOptedInExtensionBundleIdentifiers];
  v8 = [_autoOptedInExtensionBundleIdentifiers containsObject:bundleIdentifier];

  if ((v8 & 1) == 0 && bundleIdentifier)
  {
    _autoOptedInExtensionBundleIdentifiers2 = [(RPBroadcastActivityExtensionViewController *)self _autoOptedInExtensionBundleIdentifiers];
    v10 = [_autoOptedInExtensionBundleIdentifiers2 arrayByAddingObject:bundleIdentifier];

    v11 = +[NSUserDefaults standardUserDefaults];
    [v11 setObject:v10 forKey:@"autoOptedInExtensions"];

    v12 = +[NSUserDefaults standardUserDefaults];
    [v12 synchronize];

    v14 = 0;
    [inCopy attemptOptIn:&v14];
    v13 = v14;
    if (v13 && __RPLogLevel <= 2u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_1000054B8();
    }
  }
}

@end