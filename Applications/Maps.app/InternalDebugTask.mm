@interface InternalDebugTask
- (InternalDebugTask)init;
- (void)_presentationControllerDismissalTransitionDidEndNotification:(id)notification;
- (void)_presentationControllerDismissalTransitionWillBeginNotification:(id)notification;
- (void)_presentationControllerPresentationTransitionDidEndNotification:(id)notification;
- (void)_presentationControllerPresentationTransitionWillBeginNotification:(id)notification;
- (void)_screenshotTakenNotification:(id)notification;
@end

@implementation InternalDebugTask

- (void)_presentationControllerDismissalTransitionDidEndNotification:(id)notification
{
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v5 = [userInfo objectForKey:UIPresentationControllerDismissalTransitionDidEndCompletedKey];
  bOOLValue = [v5 BOOLValue];

  v7 = sub_1007984E4();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    object = [notificationCopy object];
    v9 = @"NO";
    if (bOOLValue)
    {
      v9 = @"YES";
    }

    v10 = v9;
    v11 = 138543618;
    v12 = object;
    v13 = 2114;
    v14 = v10;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "UIViewController was dismissed: %{public}@, completed: %{public}@", &v11, 0x16u);
  }
}

- (void)_presentationControllerDismissalTransitionWillBeginNotification:(id)notification
{
  notificationCopy = notification;
  v4 = sub_1007984E4();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    object = [notificationCopy object];
    v6 = 138543362;
    v7 = object;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "UIViewController will be dismissed: %{public}@", &v6, 0xCu);
  }
}

- (void)_presentationControllerPresentationTransitionDidEndNotification:(id)notification
{
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v5 = [userInfo objectForKey:UIPresentationControllerPresentationTransitionDidEndCompletedKey];
  bOOLValue = [v5 BOOLValue];

  v7 = sub_1007984E4();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    object = [notificationCopy object];
    v9 = @"NO";
    if (bOOLValue)
    {
      v9 = @"YES";
    }

    v10 = v9;
    v11 = 138543618;
    v12 = object;
    v13 = 2114;
    v14 = v10;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "UIViewController was presented: %{public}@, completed: %{public}@", &v11, 0x16u);
  }
}

- (void)_presentationControllerPresentationTransitionWillBeginNotification:(id)notification
{
  notificationCopy = notification;
  v4 = sub_1007984E4();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    object = [notificationCopy object];
    v6 = 138543362;
    v7 = object;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "UIViewController will be presented: %{public}@", &v6, 0xCu);
  }
}

- (void)_screenshotTakenNotification:(id)notification
{
  v3 = sub_1007984E4();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [UIApplication _maps_isAnySceneForegroundForRole:UIWindowSceneSessionRoleApplication];
    v5 = @"NO";
    if (v4)
    {
      v5 = @"YES";
    }

    v6 = v5;
    v7 = 138543362;
    v8 = v6;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Screenshot taken with Maps app foreground: %{public}@", &v7, 0xCu);
  }
}

- (InternalDebugTask)init
{
  v29.receiver = self;
  v29.super_class = InternalDebugTask;
  v2 = [(InternalDebugTask *)&v29 init];
  if (v2)
  {
    if (+[DebugViewFrameHighlighter shouldHighlightOnLaunch])
    {
      [DebugViewFrameHighlighter setFrameHighlightingEnabled:1];
    }

    if (+[MapsARSessionIndoorOutdoorFloatingDebugViewController shouldAttachOnLaunch])
    {
      v3 = +[MapsARSessionIndoorOutdoorFloatingDebugViewController sharedInstance];
      [v3 attach];
    }

    if (+[ThermalStateFloatingDebugViewController shouldAttachOnLaunch])
    {
      v4 = +[ThermalStateFloatingDebugViewController sharedInstance];
      [v4 attach];
    }

    if (+[VectorKitFloatingDebugViewController shouldAttachOnLaunch])
    {
      v5 = +[VectorKitFloatingDebugViewController sharedInstance];
      [v5 attach];
    }

    if (+[VLFSessionStateFloatingDebugViewController shouldAttachOnLaunch])
    {
      v6 = +[VLFSessionStateFloatingDebugViewController sharedInstance];
      [v6 attach];
    }

    if (+[VIOSessionStateFloatingDebugViewController shouldAttachOnLaunch])
    {
      v7 = +[VIOSessionStateFloatingDebugViewController sharedInstance];
      [v7 attach];
    }

    if (+[PedestrianARFloatingDebugViewController shouldAttachOnLaunch])
    {
      v8 = +[PedestrianARFloatingDebugViewController sharedInstance];
      [v8 attach];
    }

    v9 = +[NSUserDefaults standardUserDefaults];
    v10 = [v9 BOOLForKey:@"PedestrianARViewControllerTemporarilyEnableVLTraceRecordingKey"];

    if (v10)
    {
      v11 = +[NSUserDefaults standardUserDefaults];
      [v11 removeObjectForKey:@"PedestrianARViewControllerTemporarilyEnableVLTraceRecordingKey"];

      GEOConfigSetBOOL();
    }

    v12 = +[NSUserDefaults standardUserDefaults];
    v13 = [v12 BOOLForKey:@"kMapsRadarControllerAttachmentGenerationInProgressKey"];

    if (v13)
    {
      v14 = +[NSUserDefaults standardUserDefaults];
      [v14 removeObjectForKey:@"__internal_VisualizeChromeLayoutGuidesDebug"];

      v15 = +[NSUserDefaults standardUserDefaults];
      [v15 removeObjectForKey:@"kMapsRadarControllerAttachmentGenerationInProgressKey"];
    }

    v16 = +[NSNotificationCenter defaultCenter];
    [v16 addObserver:v2 selector:"_screenshotTakenNotification:" name:UIApplicationUserDidTakeScreenshotNotification object:0];

    v17 = +[NSNotificationCenter defaultCenter];
    [v17 addObserver:v2 selector:"_presentationControllerPresentationTransitionWillBeginNotification:" name:UIPresentationControllerPresentationTransitionWillBeginNotification object:0];

    v18 = +[NSNotificationCenter defaultCenter];
    [v18 addObserver:v2 selector:"_presentationControllerPresentationTransitionDidEndNotification:" name:UIPresentationControllerPresentationTransitionDidEndNotification object:0];

    v19 = +[NSNotificationCenter defaultCenter];
    [v19 addObserver:v2 selector:"_presentationControllerDismissalTransitionWillBeginNotification:" name:UIPresentationControllerDismissalTransitionWillBeginNotification object:0];

    v20 = +[NSNotificationCenter defaultCenter];
    [v20 addObserver:v2 selector:"_presentationControllerDismissalTransitionDidEndNotification:" name:UIPresentationControllerDismissalTransitionDidEndNotification object:0];

    v21 = +[NSUserDefaults standardUserDefaults];
    if (![v21 BOOLForKey:@"EnableRootInstallationFailureAlert"])
    {
      goto LABEL_23;
    }

    v22 = +[NSFileManager defaultManager];
    v23 = [v22 fileExistsAtPath:@"/var/staged_system_apps/Maps.app" isDirectory:0];

    if (v23)
    {
      v21 = [UIAlertController alertControllerWithTitle:@"Possible root installation failure" message:@"Maps.app was found in /var/staged_system_apps. This usually means a root installation did not succeed. Try running mobile_install installStaged" preferredStyle:1];
      v24 = [UIAlertAction actionWithTitle:@"OK" style:0 handler:0];
      [v21 addAction:v24];

      v25 = +[MapsInternalAlertPresentationController sharedInstance];
      v26 = +[UIApplication _maps_keyMapsWindow];
      windowScene = [v26 windowScene];
      [v25 presentAlertController:v21 fromWindowScene:windowScene];

LABEL_23:
    }
  }

  return v2;
}

@end