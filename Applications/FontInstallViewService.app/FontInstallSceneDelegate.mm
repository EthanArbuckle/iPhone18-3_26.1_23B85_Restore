@interface FontInstallSceneDelegate
- (FontInstallSceneDelegate)init;
- (id)_respondToActions:(id)a3 forFBSScene:(id)a4 inUIScene:(id)a5 fromTransitionContext:(id)a6;
- (void)_cleanupOnRootControllerDismiss;
- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5;
- (void)sceneDidEnterBackground:(id)a3;
@end

@implementation FontInstallSceneDelegate

- (FontInstallSceneDelegate)init
{
  v8 = a2;
  v9 = 0;
  v7.receiver = self;
  v7.super_class = FontInstallSceneDelegate;
  v6 = [(FontInstallSceneDelegate *)&v7 init];
  v9 = v6;
  objc_storeStrong(&v9, v6);
  if (v6)
  {
    v2 = [NSSet setWithArray:&off_10001D5B0];
    supportedControllerClassNames = v9->_supportedControllerClassNames;
    v9->_supportedControllerClassNames = v2;
  }

  v5 = v9;
  objc_storeStrong(&v9, 0);
  return v5;
}

- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5
{
  v16 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v14 = 0;
  objc_storeStrong(&v14, a4);
  v13 = 0;
  objc_storeStrong(&v13, a5);
  v12 = location[0];
  v5 = [UIWindow alloc];
  v6 = [v5 initWithWindowScene:v12];
  window = v16->_window;
  v16->_window = v6;

  v10 = location[0];
  v17 = v16;
  v11 = [NSArray arrayWithObjects:&v17 count:1];
  [v10 _registerSceneActionsHandlerArray:? forKey:?];

  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
}

- (id)_respondToActions:(id)a3 forFBSScene:(id)a4 inUIScene:(id)a5 fromTransitionContext:(id)a6
{
  v42 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v40 = 0;
  objc_storeStrong(&v40, a4);
  v39 = 0;
  objc_storeStrong(&v39, a5);
  v38 = 0;
  objc_storeStrong(&v38, a6);
  v37 = [location[0] mutableCopy];
  memset(__b, 0, sizeof(__b));
  v17 = location[0];
  v18 = [v17 countByEnumeratingWithState:__b objects:v43 count:16];
  if (v18)
  {
    v14 = *__b[2];
    v15 = 0;
    v16 = v18;
    while (1)
    {
      v13 = v15;
      if (*__b[2] != v14)
      {
        objc_enumerationMutation(v17);
      }

      v36 = *(__b[1] + 8 * v15);
      v34 = [v36 info];
      v33 = [v34 objectForSetting:0];
      v32 = [v34 objectForSetting:1];
      v31 = [v34 objectForSetting:2];
      if (v33 && v31 && [(NSSet *)v42->_supportedControllerClassNames containsObject:v32])
      {
        if ([v32 isEqualToString:@"FontInstallMissingController"])
        {
          v12 = objc_alloc_init(FontInstallMissingController);
          rootViewController = v42->_rootViewController;
          v42->_rootViewController = v12;
        }

        else
        {
          if ([v32 isEqualToString:@"DeleteAppFontsMainController"])
          {
            v11 = objc_alloc_init(DeleteAppFontsMainController);
            v7 = v42->_rootViewController;
            v42->_rootViewController = v11;
          }

          else
          {
            v10 = objc_alloc_init(FontInstallMainController);
            v7 = v42->_rootViewController;
            v42->_rootViewController = v10;
          }
        }

        [(UIWindow *)v42->_window setRootViewController:v42->_rootViewController];
        [(UIWindow *)v42->_window setContentsPosition:0];
        objc_initWeak(&from, v42);
        v23 = _NSConcreteStackBlock;
        v24 = -1073741824;
        v25 = 0;
        v26 = __90__FontInstallSceneDelegate__respondToActions_forFBSScene_inUIScene_fromTransitionContext___block_invoke;
        v27 = &unk_10001C690;
        objc_copyWeak(&v28, &from);
        v29 = objc_retainBlock(&v23);
        [(FontInstallUISceneProtocol *)v42->_rootViewController setupWithUserInfo:v33 xpcEndpoint:v31 dismissHandler:v29];
        [v37 removeObject:v36];
        v22 = 2;
        objc_storeStrong(&v29, 0);
        objc_destroyWeak(&v28);
        objc_destroyWeak(&from);
      }

      else
      {
        v22 = 0;
      }

      objc_storeStrong(&v31, 0);
      objc_storeStrong(&v32, 0);
      objc_storeStrong(&v33, 0);
      objc_storeStrong(&v34, 0);
      if (v22)
      {
        break;
      }

      ++v15;
      if (v13 + 1 >= v16)
      {
        v15 = 0;
        v16 = [v17 countByEnumeratingWithState:__b objects:v43 count:16];
        if (!v16)
        {
          break;
        }
      }
    }
  }

  [(UIWindow *)v42->_window makeKeyAndVisible];
  v9 = [v37 copy];
  objc_storeStrong(&v37, 0);
  objc_storeStrong(&v38, 0);
  objc_storeStrong(&v39, 0);
  objc_storeStrong(&v40, 0);
  objc_storeStrong(location, 0);

  return v9;
}

void __90__FontInstallSceneDelegate__respondToActions_forFBSScene_inUIScene_fromTransitionContext___block_invoke(id *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = objc_loadWeakRetained(a1 + 4);
  if (location[0])
  {
    [location[0] _cleanupOnRootControllerDismiss];
  }

  objc_storeStrong(location, 0);
}

- (void)sceneDidEnterBackground:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (v4->_rootViewController)
  {
    [(FontInstallUISceneProtocol *)v4->_rootViewController dismissViewControllerAnimated:1 completion:0];
    [(FontInstallSceneDelegate *)v4 _cleanupOnRootControllerDismiss];
  }

  objc_storeStrong(location, 0);
}

- (void)_cleanupOnRootControllerDismiss
{
  [(UIWindow *)self->_window setRootViewController:?];
  v4 = +[UIApplication sharedApplication];
  v3 = [(UIWindow *)self->_window windowScene];
  v2 = [(UIWindowScene *)v3 session];
  [UIApplication requestSceneSessionDestruction:v4 options:"requestSceneSessionDestruction:options:errorHandler:" errorHandler:?];
}

void __59__FontInstallSceneDelegate__cleanupOnRootControllerDismiss__block_invoke(id a1, NSError *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  FSLog_Error(@"FontInstallViewService", @"Scene destruction request failed - %@", v2, v3, v4, v5, v6, v7, location[0]);
  objc_storeStrong(location, 0);
}

@end