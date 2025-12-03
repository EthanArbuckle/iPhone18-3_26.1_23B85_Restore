@interface BuddyLockscreenSceneDelegate
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
- (void)sceneDidDisconnect:(id)disconnect;
@end

@implementation BuddyLockscreenSceneDelegate

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  selfCopy = self;
  v20 = a2;
  location = 0;
  objc_storeStrong(&location, scene);
  v18 = 0;
  objc_storeStrong(&v18, session);
  v17 = 0;
  objc_storeStrong(&v17, options);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() ^ 1))
  {
    v7 = +[NSAssertionHandler currentHandler];
    [(NSAssertionHandler *)v7 handleFailureInMethod:v20 object:selfCopy file:@"BuddyLockscreenSceneDelegate.m" lineNumber:36 description:@"Invalid parameter not satisfying: %@", @"[scene isKindOfClass:[UIWindowScene class]]"];
  }

  v16 = location;
  v8 = +[BuddyApplicationAndSceneSharedStorage setupController];
  miscState = [(SetupController *)v8 miscState];
  migrationLockscreenController = [(BuddyMiscState *)miscState migrationLockscreenController];

  lockscreenWindow = [(BuddyLockscreenSceneDelegate *)selfCopy lockscreenWindow];
  LOBYTE(v8) = lockscreenWindow == 0;

  if (v8)
  {
    v11 = [objc_alloc(sub_100213C44()) initWithWindowScene:v16];
    [(BuddyLockscreenSceneDelegate *)selfCopy setLockscreenWindow:v11];
  }

  lockscreenWindow2 = [(BuddyLockscreenSceneDelegate *)selfCopy lockscreenWindow];
  navigationController = [migrationLockscreenController navigationController];
  [(UIWindow *)lockscreenWindow2 setRootViewController:navigationController];

  lockscreenWindow3 = [(BuddyLockscreenSceneDelegate *)selfCopy lockscreenWindow];
  [(UIWindow *)lockscreenWindow3 makeKeyAndVisible];

  objc_storeStrong(&migrationLockscreenController, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&location, 0);
}

- (void)sceneDidDisconnect:(id)disconnect
{
  selfCopy = self;
  v9 = a2;
  location = 0;
  objc_storeStrong(&location, disconnect);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() ^ 1))
  {
    v3 = +[NSAssertionHandler currentHandler];
    [(NSAssertionHandler *)v3 handleFailureInMethod:v9 object:selfCopy file:@"BuddyLockscreenSceneDelegate.m" lineNumber:51 description:@"Invalid parameter not satisfying: %@", @"[scene isKindOfClass:[UIWindowScene class]]"];
  }

  lockscreenWindow = [(BuddyLockscreenSceneDelegate *)selfCopy lockscreenWindow];
  windowScene = [(UIWindow *)lockscreenWindow windowScene];
  v6 = location;

  if (windowScene == v6)
  {
    lockscreenWindow2 = [(BuddyLockscreenSceneDelegate *)selfCopy lockscreenWindow];
    [(UIWindow *)lockscreenWindow2 setHidden:1];

    [(BuddyLockscreenSceneDelegate *)selfCopy setLockscreenWindow:0];
  }

  objc_storeStrong(&location, 0);
}

@end