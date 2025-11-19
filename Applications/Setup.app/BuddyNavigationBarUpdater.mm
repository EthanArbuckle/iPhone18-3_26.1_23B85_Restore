@interface BuddyNavigationBarUpdater
- (UINavigationController)currentNavigationController;
- (void)_updateNavigationBarBackButtonIfNeeded:(id)a3 forViewController:(id)a4;
- (void)_updateNavigationBarBackgroundIfNeeded:(id)a3 forViewController:(id)a4;
- (void)handleSwipeBackGesture:(id)a3;
- (void)navigationController:(id)a3 didShowViewController:(id)a4 operation:(int64_t)a5 animated:(BOOL)a6;
- (void)navigationController:(id)a3 willShowViewController:(id)a4 operation:(int64_t)a5 animated:(BOOL)a6;
- (void)setNavigationControllerIfNeeded:(id)a3;
- (void)updateViewControllers;
@end

@implementation BuddyNavigationBarUpdater

- (void)_updateNavigationBarBackgroundIfNeeded:(id)a3 forViewController:(id)a4
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v18 = 0;
  objc_storeStrong(&v18, a4);
  v5 = [location[0] traitCollection];
  v6 = [v5 userInterfaceStyle];

  v17 = v6;
  v7 = [v18 traitCollection];
  v8 = [v7 userInterfaceStyle];

  v16 = v8;
  v9 = [v18 traitCollection];
  v10 = 0;
  if ([v9 userInterfaceStyle] == 1)
  {
    v10 = [v18 conformsToProtocol:&OBJC_PROTOCOL___BFFViewControllerAppearanceConfigurationDelegate];
  }

  v15 = v10 & 1;
  if (v10)
  {
    v11 = v18;
    if ([v11 hasBlackBackground])
    {
      [location[0] setOverrideUserInterfaceStyle:2];
    }

    objc_storeStrong(&v14, 0);
  }

  else if (v17 != v16)
  {
    v12 = location[0];
    v13 = [v18 traitCollection];
    [v12 setOverrideUserInterfaceStyle:{objc_msgSend(v13, "userInterfaceStyle")}];
  }

  objc_storeStrong(&v18, 0);
  objc_storeStrong(location, 0);
}

- (void)_updateNavigationBarBackButtonIfNeeded:(id)a3 forViewController:(id)a4
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v21 = 0;
  objc_storeStrong(&v21, a4);
  v5 = +[BYPreferencesController buddyPreferencesInternal];
  v6 = [v5 BOOLForKey:@"ignoreBackButtonHandling"];

  if (v6)
  {
    oslog = _BYLoggingFacility();
    v19 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v7 = oslog;
      v8 = v19;
      sub_10006AA68(buf);
      _os_log_impl(&_mh_execute_header, v7, v8, "Found: Ignore back button handling key. Ignore back button handling.", buf, 2u);
    }

    objc_storeStrong(&oslog, 0);
    v17 = 1;
  }

  else
  {
    v16 = 0;
    if ([v21 conformsToProtocol:&OBJC_PROTOCOL___BFFViewControllerAppearanceConfigurationDelegate])
    {
      v15 = v21;
      if ([v15 usesWhiteBackButton])
      {
        v9 = +[UIColor whiteColor];
        v10 = v16;
        v16 = v9;
      }

      objc_storeStrong(&v15, 0);
    }

    if (!v16)
    {
      v11 = +[UIColor systemBlueColor];
      v12 = v16;
      v16 = v11;
    }

    v13 = v16;
    v14 = [location[0] tintColor];

    if (v13 != v14)
    {
      [location[0] setTintColor:v16];
    }

    objc_storeStrong(&v16, 0);
    v17 = 0;
  }

  objc_storeStrong(&v21, 0);
  objc_storeStrong(location, 0);
}

- (void)navigationController:(id)a3 willShowViewController:(id)a4 operation:(int64_t)a5 animated:(BOOL)a6
{
  v15 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v13 = 0;
  objc_storeStrong(&v13, a4);
  [(BuddyNavigationBarUpdater *)v15 setNavigationControllerIfNeeded:location[0]];
  if (a5 == 2)
  {
    v8 = v15;
    v9 = [location[0] navigationBar];
    [(BuddyNavigationBarUpdater *)v8 _updateNavigationBarBackgroundIfNeeded:v9 forViewController:v13];

    v10 = [(BuddyNavigationBarUpdater *)v15 transitionCoordinator];
    LOBYTE(v8) = v10 == 0;

    if (v8)
    {
      v11 = v15;
      v12 = [location[0] navigationBar];
      [(BuddyNavigationBarUpdater *)v11 _updateNavigationBarBackButtonIfNeeded:v12 forViewController:v13];
    }
  }

  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
}

- (void)navigationController:(id)a3 didShowViewController:(id)a4 operation:(int64_t)a5 animated:(BOOL)a6
{
  v16 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v14 = 0;
  objc_storeStrong(&v14, a4);
  [(BuddyNavigationBarUpdater *)v16 updateViewControllers];
  if (a5 == 1)
  {
    v8 = v16;
    v9 = [location[0] navigationBar];
    [(BuddyNavigationBarUpdater *)v8 _updateNavigationBarBackgroundIfNeeded:v9 forViewController:v14];
  }

  v10 = [(BuddyNavigationBarUpdater *)v16 transitionCoordinator];
  v11 = v10 == 0;

  if (v11)
  {
    v12 = v16;
    v13 = [location[0] navigationBar];
    [(BuddyNavigationBarUpdater *)v12 _updateNavigationBarBackButtonIfNeeded:v13 forViewController:v14];
  }

  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
}

- (void)updateViewControllers
{
  v2 = [(BuddyNavigationBarUpdater *)self currentNavigationController];
  v3 = [(UINavigationController *)v2 childViewControllers];
  v4 = [v3 count];

  if (v4 >= 2)
  {
    v5 = [(BuddyNavigationBarUpdater *)self currentNavigationController];
    v6 = [(UINavigationController *)v5 childViewControllers];
    v7 = [v6 objectAtIndexedSubscript:v4 - 2];
    [(BuddyNavigationBarUpdater *)self setPreviousViewController:v7];
  }

  else
  {
    [(BuddyNavigationBarUpdater *)self setPreviousViewController:0];
  }

  v8 = [(BuddyNavigationBarUpdater *)self currentNavigationController];
  v9 = [(UINavigationController *)v8 childViewControllers];
  v10 = [v9 lastObject];
  [(BuddyNavigationBarUpdater *)self setCurrentViewController:v10];
}

- (void)setNavigationControllerIfNeeded:(id)a3
{
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = location[0];
  v4 = [(BuddyNavigationBarUpdater *)v10 currentNavigationController];

  if (v3 != v4)
  {
    v5 = [(BuddyNavigationBarUpdater *)v10 currentNavigationController];
    v6 = [(UINavigationController *)v5 interactivePopGestureRecognizer];
    [(UIGestureRecognizer *)v6 removeTarget:v10 action:"handleSwipeBackGesture:"];

    [(BuddyNavigationBarUpdater *)v10 setCurrentNavigationController:location[0]];
    v7 = [(BuddyNavigationBarUpdater *)v10 currentNavigationController];
    v8 = [(UINavigationController *)v7 interactivePopGestureRecognizer];
    [(UIGestureRecognizer *)v8 addTarget:v10 action:"handleSwipeBackGesture:"];
  }

  objc_storeStrong(location, 0);
}

- (void)handleSwipeBackGesture:(id)a3
{
  v31 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [location[0] state];
  if (v3 == 1)
  {
    v4 = [(BuddyNavigationBarUpdater *)v31 currentNavigationController];
    v5 = [(UINavigationController *)v4 transitionCoordinator];
    [(BuddyNavigationBarUpdater *)v31 setTransitionCoordinator:v5];

    v6 = v31;
    v7 = [(BuddyNavigationBarUpdater *)v31 currentNavigationController];
    v8 = [(UINavigationController *)v7 navigationBar];
    v9 = [(BuddyNavigationBarUpdater *)v31 currentViewController];
    [(BuddyNavigationBarUpdater *)v6 _updateNavigationBarBackButtonIfNeeded:v8 forViewController:v9];
  }

  else if (v3 == 2)
  {
    v10 = [(BuddyNavigationBarUpdater *)v31 transitionCoordinator];

    if (v10)
    {
      v11 = [(BuddyNavigationBarUpdater *)v31 transitionCoordinator];
      [(UIViewControllerTransitionCoordinator *)v11 percentComplete];
      v13 = v12;

      if (v13 <= 0.25)
      {
        v18 = v31;
        v19 = [(BuddyNavigationBarUpdater *)v31 currentNavigationController];
        v20 = [(UINavigationController *)v19 navigationBar];
        v21 = [(BuddyNavigationBarUpdater *)v31 currentViewController];
        [(BuddyNavigationBarUpdater *)v18 _updateNavigationBarBackButtonIfNeeded:v20 forViewController:v21];
      }

      else
      {
        v14 = v31;
        v15 = [(BuddyNavigationBarUpdater *)v31 currentNavigationController];
        v16 = [(UINavigationController *)v15 navigationBar];
        v17 = [(BuddyNavigationBarUpdater *)v31 previousViewController];
        [(BuddyNavigationBarUpdater *)v14 _updateNavigationBarBackButtonIfNeeded:v16 forViewController:v17];
      }
    }
  }

  else if (v3 == 3)
  {
    v26 = v31;
    v27 = [(BuddyNavigationBarUpdater *)v31 currentNavigationController];
    v28 = [(UINavigationController *)v27 navigationBar];
    v29 = [(BuddyNavigationBarUpdater *)v31 previousViewController];
    [(BuddyNavigationBarUpdater *)v26 _updateNavigationBarBackButtonIfNeeded:v28 forViewController:v29];

    [(BuddyNavigationBarUpdater *)v31 setTransitionCoordinator:0];
  }

  else if (v3 == 4)
  {
    v22 = v31;
    v23 = [(BuddyNavigationBarUpdater *)v31 currentNavigationController];
    v24 = [(UINavigationController *)v23 navigationBar];
    v25 = [(BuddyNavigationBarUpdater *)v31 currentViewController];
    [(BuddyNavigationBarUpdater *)v22 _updateNavigationBarBackButtonIfNeeded:v24 forViewController:v25];
  }

  objc_storeStrong(location, 0);
}

- (UINavigationController)currentNavigationController
{
  WeakRetained = objc_loadWeakRetained(&self->_currentNavigationController);

  return WeakRetained;
}

@end