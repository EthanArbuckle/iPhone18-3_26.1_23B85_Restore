@interface BuddyLockscreenSceneDelegate
- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5;
- (void)sceneDidDisconnect:(id)a3;
@end

@implementation BuddyLockscreenSceneDelegate

- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5
{
  v21 = self;
  v20 = a2;
  location = 0;
  objc_storeStrong(&location, a3);
  v18 = 0;
  objc_storeStrong(&v18, a4);
  v17 = 0;
  objc_storeStrong(&v17, a5);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() ^ 1))
  {
    v7 = +[NSAssertionHandler currentHandler];
    [(NSAssertionHandler *)v7 handleFailureInMethod:v20 object:v21 file:@"BuddyLockscreenSceneDelegate.m" lineNumber:36 description:@"Invalid parameter not satisfying: %@", @"[scene isKindOfClass:[UIWindowScene class]]"];
  }

  v16 = location;
  v8 = +[BuddyApplicationAndSceneSharedStorage setupController];
  v9 = [(SetupController *)v8 miscState];
  v15 = [(BuddyMiscState *)v9 migrationLockscreenController];

  v10 = [(BuddyLockscreenSceneDelegate *)v21 lockscreenWindow];
  LOBYTE(v8) = v10 == 0;

  if (v8)
  {
    v11 = [objc_alloc(sub_100213C44()) initWithWindowScene:v16];
    [(BuddyLockscreenSceneDelegate *)v21 setLockscreenWindow:v11];
  }

  v12 = [(BuddyLockscreenSceneDelegate *)v21 lockscreenWindow];
  v13 = [v15 navigationController];
  [(UIWindow *)v12 setRootViewController:v13];

  v14 = [(BuddyLockscreenSceneDelegate *)v21 lockscreenWindow];
  [(UIWindow *)v14 makeKeyAndVisible];

  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&location, 0);
}

- (void)sceneDidDisconnect:(id)a3
{
  v10 = self;
  v9 = a2;
  location = 0;
  objc_storeStrong(&location, a3);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() ^ 1))
  {
    v3 = +[NSAssertionHandler currentHandler];
    [(NSAssertionHandler *)v3 handleFailureInMethod:v9 object:v10 file:@"BuddyLockscreenSceneDelegate.m" lineNumber:51 description:@"Invalid parameter not satisfying: %@", @"[scene isKindOfClass:[UIWindowScene class]]"];
  }

  v4 = [(BuddyLockscreenSceneDelegate *)v10 lockscreenWindow];
  v5 = [(UIWindow *)v4 windowScene];
  v6 = location;

  if (v5 == v6)
  {
    v7 = [(BuddyLockscreenSceneDelegate *)v10 lockscreenWindow];
    [(UIWindow *)v7 setHidden:1];

    [(BuddyLockscreenSceneDelegate *)v10 setLockscreenWindow:0];
  }

  objc_storeStrong(&location, 0);
}

@end