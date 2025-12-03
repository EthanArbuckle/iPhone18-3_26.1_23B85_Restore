@interface FKASceneDelegate
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
@end

@implementation FKASceneDelegate

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  sceneCopy = scene;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = +[UIApplication sharedApplication];
    delegate = [v7 delegate];

    v9 = sceneCopy;
    screen = [v9 screen];
    displayIdentity = [screen displayIdentity];
    type = [displayIdentity type];

    if (type == 8)
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
      screen2 = [v9 screen];
      displayConfiguration = [screen2 displayConfiguration];
      hardwareIdentifier = [displayConfiguration hardwareIdentifier];
      v19 = [(FKARootViewController *)v15 initWithDelegate:delegate displayUUID:hardwareIdentifier];
      [(UIWindow *)v14 setRootViewController:v19];

      [(UIWindow *)v14 makeKeyAndVisible];
      interactiveWindow = self->_interactiveWindow;
      self->_interactiveWindow = v14;
      v21 = v14;

      v22 = [[AXUIDaemonNonInteractiveWindow alloc] initWithWindowScene:v9];
      v23 = [FKARootNonInteractiveViewController alloc];
      screen3 = [v9 screen];
      displayConfiguration2 = [screen3 displayConfiguration];
      hardwareIdentifier2 = [displayConfiguration2 hardwareIdentifier];
      v27 = [(FKARootViewController *)v23 initWithDelegate:delegate displayUUID:hardwareIdentifier2];

      [(UIWindow *)v22 setRootViewController:v27];
      [(UIWindow *)v22 setWindowLevel:UIWindowLevelNormal + 1.0];
      [(UIWindow *)v22 setHidden:0];
      nonInteractiveWindow = self->_nonInteractiveWindow;
      self->_nonInteractiveWindow = v22;
    }
  }

  else
  {
    delegate = FKALogCommon();
    if (os_log_type_enabled(delegate, OS_LOG_TYPE_ERROR))
    {
      sub_100014230(sceneCopy, delegate);
    }
  }
}

@end