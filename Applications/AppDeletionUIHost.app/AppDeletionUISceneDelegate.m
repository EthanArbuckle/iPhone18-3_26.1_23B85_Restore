@interface AppDeletionUISceneDelegate
- (AppDeletionUISceneDelegate)init;
- (void)_communicateAlertInvalidate;
- (void)_dismissAlert:(BOOL)a3;
- (void)communicateButtonPressWithButtonDisposition:(unint64_t)a3;
- (void)connectToInvokerEndpoint:(id)a3;
- (void)remoteAlertSceneDidInvalidateForRemoteAlertServiceInvalidation:(id)a3;
- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5;
- (void)sceneDidBecomeActive:(id)a3;
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

- (void)connectToInvokerEndpoint:(id)a3
{
  v4 = a3;
  v5 = sub_100003D54(off_100016A30);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "[AppDeletionUISceneDelegate connectToInvokerEndpoint:]";
    v14 = 2112;
    v15 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s: Connecting to presenter %@", buf, 0x16u);
  }

  v6 = xpc_connection_create_from_endpoint(v4);
  [(AppDeletionUISceneDelegate *)self setPresenterConnection:v6];

  v7 = [(AppDeletionUISceneDelegate *)self presenterConnection];
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_100004120;
  handler[3] = &unk_1000103A0;
  handler[4] = self;
  xpc_connection_set_event_handler(v7, handler);

  v8 = [(AppDeletionUISceneDelegate *)self presenterConnection];
  xpc_connection_resume(v8);

  *buf = "begin";
  v11 = xpc_BOOL_create(1);
  v9 = xpc_dictionary_create(buf, &v11, 1uLL);
  v10 = [(AppDeletionUISceneDelegate *)self presenterConnection];
  xpc_connection_send_message(v10, v9);
}

- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5
{
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
    [(AppDeletionUISceneDelegate *)self setRemoteAlertScene:v7];
    v8 = [v7 configurationContext];
    v9 = [v8 xpcEndpoint];

    if (v9)
    {
      [(AppDeletionUISceneDelegate *)self connectToInvokerEndpoint:v9];
      v10 = [v7 configurationContext];
      v11 = [v10 userInfo];

      if (v11)
      {
        v12 = [[AppDeletionPresentingViewController alloc] initWithAlertData:v11 delegate:self];
        if (v12)
        {
          v13 = v12;
          [(AppDeletionUISceneDelegate *)self setPresentingVC:v12];
          v14 = [[UIWindow alloc] initWithWindowScene:v7];
          [(AppDeletionUISceneDelegate *)self setWindow:v14];

          v15 = [(AppDeletionUISceneDelegate *)self window];
          [v15 setRootViewController:v13];

          v16 = [(AppDeletionUISceneDelegate *)self window];
          [v16 makeKeyAndVisible];

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
        v11 = sub_100003D54(off_100016A30);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          sub_100005434(v11, v24, v25, v26, v27, v28, v29, v30);
        }
      }
    }

    else
    {
      v11 = sub_100003D54(off_100016A30);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_1000054AC(v11, v17, v18, v19, v20, v21, v22, v23);
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

- (void)sceneDidBecomeActive:(id)a3
{
  v4 = [(AppDeletionUISceneDelegate *)self presentingVC];
  v5 = [UINavigationController alloc];
  v6 = [v4 obViewController];
  v7 = [v5 initWithRootViewController:v6];

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100004820;
  v18[3] = &unk_1000103C8;
  v8 = v4;
  v19 = v8;
  v9 = [UISheetPresentationControllerDetent customDetentWithIdentifier:UISheetPresentationControllerDetentIdentifierMedium resolver:v18];
  v26 = v9;
  v10 = [NSArray arrayWithObjects:&v26 count:1];
  v11 = [v7 sheetPresentationController];
  [v11 setDetents:v10];

  v12 = [v7 sheetPresentationController];
  [v12 setPreferredCornerRadius:30.0];

  v13 = [v7 presentationController];
  [v13 setDelegate:v8];

  v14 = sub_100003D54(off_100016A30);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [v8 bundleID];
    v16 = [v8 appType];
    *buf = 136315650;
    v21 = "[AppDeletionUISceneDelegate sceneDidBecomeActive:]";
    v22 = 2112;
    v23 = v15;
    v24 = 2048;
    v25 = v16;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%s: Presenting the deletion sheet for %@ with type %lu", buf, 0x20u);
  }

  v17 = [(AppDeletionUISceneDelegate *)self presentingVC];
  [v17 presentSheetViewController:v7];
}

- (void)communicateButtonPressWithButtonDisposition:(unint64_t)a3
{
  v5 = [(AppDeletionUISceneDelegate *)self presenterConnection];

  if (v5)
  {
    keys = "result";
    v16 = xpc_int64_create(a3);
    v6 = xpc_dictionary_create(&keys, &v16, 1uLL);
    v7 = [(AppDeletionUISceneDelegate *)self presenterConnection];
    xpc_connection_send_message(v7, v6);
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
  v3 = [(AppDeletionUISceneDelegate *)self remoteAlertScene];
  if (v3 && ([(AppDeletionUISceneDelegate *)self presenterConnection], v4 = objc_claimAutoreleasedReturnValue(), v4, v4))
  {
    keys = "dismiss";
    v15 = xpc_BOOL_create(1);
    v5 = xpc_dictionary_create(&keys, &v15, 1uLL);
    v6 = [(AppDeletionUISceneDelegate *)self presenterConnection];
    xpc_connection_send_message(v6, v5);

    [v3 deactivate];
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

- (void)_dismissAlert:(BOOL)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100004A64;
  v3[3] = &unk_100010418;
  v4 = a3;
  v3[4] = self;
  dispatch_async(&_dispatch_main_q, v3);
}

- (void)remoteAlertSceneDidInvalidateForRemoteAlertServiceInvalidation:(id)a3
{
  v3 = a3;
  v4 = sub_100003D54(off_100016A30);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = "[AppDeletionUISceneDelegate remoteAlertSceneDidInvalidateForRemoteAlertServiceInvalidation:]";
    v7 = 2112;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s: Scene Invalidated: %@", &v5, 0x16u);
  }
}

@end