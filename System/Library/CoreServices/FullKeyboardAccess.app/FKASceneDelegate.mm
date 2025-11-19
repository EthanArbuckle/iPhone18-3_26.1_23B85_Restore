@interface FKASceneDelegate
- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5;
@end

@implementation FKASceneDelegate

- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5
{
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = +[UIApplication sharedApplication];
    v8 = [v7 delegate];

    v9 = v6;
    v10 = [v9 screen];
    v11 = [v10 displayIdentity];
    v12 = [v11 type];

    if (v12 == 8)
    {
      v13 = FKALogCommon();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *v29 = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Skipping UIWindowScene because it belongs to Oneness.app", v29, 2u);
      }
    }

    else
    {
      v14 = [[AXUIDaemonWindow alloc] initWithWindowScene:v9];
      v15 = [FKARootViewController alloc];
      v16 = [v9 screen];
      v17 = [v16 displayConfiguration];
      v18 = [v17 hardwareIdentifier];
      v19 = [(FKARootViewController *)v15 initWithDelegate:v8 displayUUID:v18];
      [(UIWindow *)v14 setRootViewController:v19];

      [(UIWindow *)v14 makeKeyAndVisible];
      interactiveWindow = self->_interactiveWindow;
      self->_interactiveWindow = v14;
      v21 = v14;

      v22 = [[AXUIDaemonNonInteractiveWindow alloc] initWithWindowScene:v9];
      v23 = [FKARootNonInteractiveViewController alloc];
      v24 = [v9 screen];
      v25 = [v24 displayConfiguration];
      v26 = [v25 hardwareIdentifier];
      v27 = [(FKARootViewController *)v23 initWithDelegate:v8 displayUUID:v26];

      [(UIWindow *)v22 setRootViewController:v27];
      [(UIWindow *)v22 setWindowLevel:UIWindowLevelNormal + 1.0];
      [(UIWindow *)v22 setHidden:0];
      nonInteractiveWindow = self->_nonInteractiveWindow;
      self->_nonInteractiveWindow = v22;
    }
  }

  else
  {
    v8 = FKALogCommon();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100014230(v6, v8);
    }
  }
}

@end