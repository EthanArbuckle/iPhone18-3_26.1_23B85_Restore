@interface AppDeletionUISceneDelegate
- (AppDeletionUISceneDelegate)init;
- (void)_communicateAlertInvalidate;
- (void)_dismissAlert:(BOOL)alert;
- (void)communicateButtonPressWithButtonDisposition:(unint64_t)disposition;
- (void)connectToInvokerEndpoint:(id)endpoint;
- (void)remoteAlertSceneDidInvalidateForRemoteAlertServiceInvalidation:(id)invalidation;
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
- (void)sceneDidBecomeActive:(id)active;
@end

@implementation AppDeletionUISceneDelegate

- (AppDeletionUISceneDelegate)init
{
  v5.receiver = self;
  v5.super_class = AppDeletionUISceneDelegate;
  v2 = [(AppDeletionUISceneDelegate *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(AppDeletionUISceneDelegate *)v2 setPresenterConnection:0];
    [(AppDeletionUISceneDelegate *)v3 setPresentingVC:0];
  }

  return v3;
}

- (void)connectToInvokerEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  v5 = sub_100003D54(off_100016A30);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "[AppDeletionUISceneDelegate connectToInvokerEndpoint:]";
    v14 = 2112;
    v15 = endpointCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s: Connecting to presenter %@", buf, 0x16u);
  }

  v6 = xpc_connection_create_from_endpoint(endpointCopy);
  [(AppDeletionUISceneDelegate *)self setPresenterConnection:v6];

  presenterConnection = [(AppDeletionUISceneDelegate *)self presenterConnection];
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_100004120;
  handler[3] = &unk_1000103A0;
  handler[4] = self;
  xpc_connection_set_event_handler(presenterConnection, handler);

  presenterConnection2 = [(AppDeletionUISceneDelegate *)self presenterConnection];
  xpc_connection_resume(presenterConnection2);

  *buf = "begin";
  v11 = xpc_BOOL_create(1);
  v9 = xpc_dictionary_create(buf, &v11, 1uLL);
  presenterConnection3 = [(AppDeletionUISceneDelegate *)self presenterConnection];
  xpc_connection_send_message(presenterConnection3, v9);
}

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  sceneCopy = scene;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = sceneCopy;
    [(AppDeletionUISceneDelegate *)self setRemoteAlertScene:v7];
    configurationContext = [v7 configurationContext];
    xpcEndpoint = [configurationContext xpcEndpoint];

    if (xpcEndpoint)
    {
      [(AppDeletionUISceneDelegate *)self connectToInvokerEndpoint:xpcEndpoint];
      configurationContext2 = [v7 configurationContext];
      userInfo = [configurationContext2 userInfo];

      if (userInfo)
      {
        v12 = [[AppDeletionPresentingViewController alloc] initWithAlertData:userInfo delegate:self];
        if (v12)
        {
          v13 = v12;
          [(AppDeletionUISceneDelegate *)self setPresentingVC:v12];
          v14 = [[UIWindow alloc] initWithWindowScene:v7];
          [(AppDeletionUISceneDelegate *)self setWindow:v14];

          window = [(AppDeletionUISceneDelegate *)self window];
          [window setRootViewController:v13];

          window2 = [(AppDeletionUISceneDelegate *)self window];
          [window2 makeKeyAndVisible];

          [v7 setAllowsAlertStacking:1];
LABEL_16:

          goto LABEL_17;
        }

        v31 = sub_100003D54(off_100016A30);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          sub_1000053BC(v31, v32, v33, v34, v35, v36, v37, v38);
        }
      }

      else
      {
        userInfo = sub_100003D54(off_100016A30);
        if (os_log_type_enabled(userInfo, OS_LOG_TYPE_ERROR))
        {
          sub_100005434(userInfo, v24, v25, v26, v27, v28, v29, v30);
        }
      }
    }

    else
    {
      userInfo = sub_100003D54(off_100016A30);
      if (os_log_type_enabled(userInfo, OS_LOG_TYPE_ERROR))
      {
        sub_1000054AC(userInfo, v17, v18, v19, v20, v21, v22, v23);
      }
    }

    [(AppDeletionUISceneDelegate *)self _dismissAlert:0];
    goto LABEL_16;
  }

  v7 = sub_100003D54(off_100016A30);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
  {
    sub_100005338(v7);
  }

LABEL_17:
}

- (void)sceneDidBecomeActive:(id)active
{
  presentingVC = [(AppDeletionUISceneDelegate *)self presentingVC];
  v5 = [UINavigationController alloc];
  obViewController = [presentingVC obViewController];
  v7 = [v5 initWithRootViewController:obViewController];

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100004820;
  v18[3] = &unk_1000103C8;
  v8 = presentingVC;
  v19 = v8;
  v9 = [UISheetPresentationControllerDetent customDetentWithIdentifier:UISheetPresentationControllerDetentIdentifierMedium resolver:v18];
  v26 = v9;
  v10 = [NSArray arrayWithObjects:&v26 count:1];
  sheetPresentationController = [v7 sheetPresentationController];
  [sheetPresentationController setDetents:v10];

  sheetPresentationController2 = [v7 sheetPresentationController];
  [sheetPresentationController2 setPreferredCornerRadius:30.0];

  presentationController = [v7 presentationController];
  [presentationController setDelegate:v8];

  v14 = sub_100003D54(off_100016A30);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    bundleID = [v8 bundleID];
    appType = [v8 appType];
    *buf = 136315650;
    v21 = "[AppDeletionUISceneDelegate sceneDidBecomeActive:]";
    v22 = 2112;
    v23 = bundleID;
    v24 = 2048;
    v25 = appType;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%s: Presenting the deletion sheet for %@ with type %lu", buf, 0x20u);
  }

  presentingVC2 = [(AppDeletionUISceneDelegate *)self presentingVC];
  [presentingVC2 presentSheetViewController:v7];
}

- (void)communicateButtonPressWithButtonDisposition:(unint64_t)disposition
{
  presenterConnection = [(AppDeletionUISceneDelegate *)self presenterConnection];

  if (presenterConnection)
  {
    keys = "result";
    v16 = xpc_int64_create(disposition);
    v6 = xpc_dictionary_create(&keys, &v16, 1uLL);
    presenterConnection2 = [(AppDeletionUISceneDelegate *)self presenterConnection];
    xpc_connection_send_message(presenterConnection2, v6);
  }

  else
  {
    v8 = sub_100003D54(off_100016A30);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100005524(v8, v9, v10, v11, v12, v13, v14, v15);
    }
  }
}

- (void)_communicateAlertInvalidate
{
  remoteAlertScene = [(AppDeletionUISceneDelegate *)self remoteAlertScene];
  if (remoteAlertScene && ([(AppDeletionUISceneDelegate *)self presenterConnection], v4 = objc_claimAutoreleasedReturnValue(), v4, v4))
  {
    keys = "dismiss";
    v15 = xpc_BOOL_create(1);
    v5 = xpc_dictionary_create(&keys, &v15, 1uLL);
    presenterConnection = [(AppDeletionUISceneDelegate *)self presenterConnection];
    xpc_connection_send_message(presenterConnection, v5);

    [remoteAlertScene deactivate];
  }

  else
  {
    v7 = sub_100003D54(off_100016A30);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10000559C(v7, v8, v9, v10, v11, v12, v13, v14);
    }
  }
}

- (void)_dismissAlert:(BOOL)alert
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100004A64;
  v3[3] = &unk_100010418;
  alertCopy = alert;
  v3[4] = self;
  dispatch_async(&_dispatch_main_q, v3);
}

- (void)remoteAlertSceneDidInvalidateForRemoteAlertServiceInvalidation:(id)invalidation
{
  invalidationCopy = invalidation;
  v4 = sub_100003D54(off_100016A30);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = "[AppDeletionUISceneDelegate remoteAlertSceneDidInvalidateForRemoteAlertServiceInvalidation:]";
    v7 = 2112;
    v8 = invalidationCopy;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s: Scene Invalidated: %@", &v5, 0x16u);
  }
}

@end