@interface BuddyNavigationBarUpdater
- (UINavigationController)currentNavigationController;
- (void)_updateNavigationBarBackButtonIfNeeded:(id)needed forViewController:(id)controller;
- (void)_updateNavigationBarBackgroundIfNeeded:(id)needed forViewController:(id)controller;
- (void)handleSwipeBackGesture:(id)gesture;
- (void)navigationController:(id)controller didShowViewController:(id)viewController operation:(int64_t)operation animated:(BOOL)animated;
- (void)navigationController:(id)controller willShowViewController:(id)viewController operation:(int64_t)operation animated:(BOOL)animated;
- (void)setNavigationControllerIfNeeded:(id)needed;
- (void)updateViewControllers;
@end

@implementation BuddyNavigationBarUpdater

- (void)_updateNavigationBarBackgroundIfNeeded:(id)needed forViewController:(id)controller
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, needed);
  v18 = 0;
  objc_storeStrong(&v18, controller);
  traitCollection = [location[0] traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];

  v17 = userInterfaceStyle;
  traitCollection2 = [v18 traitCollection];
  userInterfaceStyle2 = [traitCollection2 userInterfaceStyle];

  v16 = userInterfaceStyle2;
  traitCollection3 = [v18 traitCollection];
  v10 = 0;
  if ([traitCollection3 userInterfaceStyle] == 1)
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
    traitCollection4 = [v18 traitCollection];
    [v12 setOverrideUserInterfaceStyle:{objc_msgSend(traitCollection4, "userInterfaceStyle")}];
  }

  objc_storeStrong(&v18, 0);
  objc_storeStrong(location, 0);
}

- (void)_updateNavigationBarBackButtonIfNeeded:(id)needed forViewController:(id)controller
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, needed);
  v21 = 0;
  objc_storeStrong(&v21, controller);
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
    tintColor = [location[0] tintColor];

    if (v13 != tintColor)
    {
      [location[0] setTintColor:v16];
    }

    objc_storeStrong(&v16, 0);
    v17 = 0;
  }

  objc_storeStrong(&v21, 0);
  objc_storeStrong(location, 0);
}

- (void)navigationController:(id)controller willShowViewController:(id)viewController operation:(int64_t)operation animated:(BOOL)animated
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  v13 = 0;
  objc_storeStrong(&v13, viewController);
  [(BuddyNavigationBarUpdater *)selfCopy setNavigationControllerIfNeeded:location[0]];
  if (operation == 2)
  {
    v8 = selfCopy;
    navigationBar = [location[0] navigationBar];
    [(BuddyNavigationBarUpdater *)v8 _updateNavigationBarBackgroundIfNeeded:navigationBar forViewController:v13];

    transitionCoordinator = [(BuddyNavigationBarUpdater *)selfCopy transitionCoordinator];
    LOBYTE(v8) = transitionCoordinator == 0;

    if (v8)
    {
      v11 = selfCopy;
      navigationBar2 = [location[0] navigationBar];
      [(BuddyNavigationBarUpdater *)v11 _updateNavigationBarBackButtonIfNeeded:navigationBar2 forViewController:v13];
    }
  }

  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
}

- (void)navigationController:(id)controller didShowViewController:(id)viewController operation:(int64_t)operation animated:(BOOL)animated
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  v14 = 0;
  objc_storeStrong(&v14, viewController);
  [(BuddyNavigationBarUpdater *)selfCopy updateViewControllers];
  if (operation == 1)
  {
    v8 = selfCopy;
    navigationBar = [location[0] navigationBar];
    [(BuddyNavigationBarUpdater *)v8 _updateNavigationBarBackgroundIfNeeded:navigationBar forViewController:v14];
  }

  transitionCoordinator = [(BuddyNavigationBarUpdater *)selfCopy transitionCoordinator];
  v11 = transitionCoordinator == 0;

  if (v11)
  {
    v12 = selfCopy;
    navigationBar2 = [location[0] navigationBar];
    [(BuddyNavigationBarUpdater *)v12 _updateNavigationBarBackButtonIfNeeded:navigationBar2 forViewController:v14];
  }

  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
}

- (void)updateViewControllers
{
  currentNavigationController = [(BuddyNavigationBarUpdater *)self currentNavigationController];
  childViewControllers = [(UINavigationController *)currentNavigationController childViewControllers];
  v4 = [childViewControllers count];

  if (v4 >= 2)
  {
    currentNavigationController2 = [(BuddyNavigationBarUpdater *)self currentNavigationController];
    childViewControllers2 = [(UINavigationController *)currentNavigationController2 childViewControllers];
    v7 = [childViewControllers2 objectAtIndexedSubscript:v4 - 2];
    [(BuddyNavigationBarUpdater *)self setPreviousViewController:v7];
  }

  else
  {
    [(BuddyNavigationBarUpdater *)self setPreviousViewController:0];
  }

  currentNavigationController3 = [(BuddyNavigationBarUpdater *)self currentNavigationController];
  childViewControllers3 = [(UINavigationController *)currentNavigationController3 childViewControllers];
  lastObject = [childViewControllers3 lastObject];
  [(BuddyNavigationBarUpdater *)self setCurrentViewController:lastObject];
}

- (void)setNavigationControllerIfNeeded:(id)needed
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, needed);
  v3 = location[0];
  currentNavigationController = [(BuddyNavigationBarUpdater *)selfCopy currentNavigationController];

  if (v3 != currentNavigationController)
  {
    currentNavigationController2 = [(BuddyNavigationBarUpdater *)selfCopy currentNavigationController];
    interactivePopGestureRecognizer = [(UINavigationController *)currentNavigationController2 interactivePopGestureRecognizer];
    [(UIGestureRecognizer *)interactivePopGestureRecognizer removeTarget:selfCopy action:"handleSwipeBackGesture:"];

    [(BuddyNavigationBarUpdater *)selfCopy setCurrentNavigationController:location[0]];
    currentNavigationController3 = [(BuddyNavigationBarUpdater *)selfCopy currentNavigationController];
    interactivePopGestureRecognizer2 = [(UINavigationController *)currentNavigationController3 interactivePopGestureRecognizer];
    [(UIGestureRecognizer *)interactivePopGestureRecognizer2 addTarget:selfCopy action:"handleSwipeBackGesture:"];
  }

  objc_storeStrong(location, 0);
}

- (void)handleSwipeBackGesture:(id)gesture
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, gesture);
  state = [location[0] state];
  if (state == 1)
  {
    currentNavigationController = [(BuddyNavigationBarUpdater *)selfCopy currentNavigationController];
    transitionCoordinator = [(UINavigationController *)currentNavigationController transitionCoordinator];
    [(BuddyNavigationBarUpdater *)selfCopy setTransitionCoordinator:transitionCoordinator];

    v6 = selfCopy;
    currentNavigationController2 = [(BuddyNavigationBarUpdater *)selfCopy currentNavigationController];
    navigationBar = [(UINavigationController *)currentNavigationController2 navigationBar];
    currentViewController = [(BuddyNavigationBarUpdater *)selfCopy currentViewController];
    [(BuddyNavigationBarUpdater *)v6 _updateNavigationBarBackButtonIfNeeded:navigationBar forViewController:currentViewController];
  }

  else if (state == 2)
  {
    transitionCoordinator2 = [(BuddyNavigationBarUpdater *)selfCopy transitionCoordinator];

    if (transitionCoordinator2)
    {
      transitionCoordinator3 = [(BuddyNavigationBarUpdater *)selfCopy transitionCoordinator];
      [(UIViewControllerTransitionCoordinator *)transitionCoordinator3 percentComplete];
      v13 = v12;

      if (v13 <= 0.25)
      {
        v18 = selfCopy;
        currentNavigationController3 = [(BuddyNavigationBarUpdater *)selfCopy currentNavigationController];
        navigationBar2 = [(UINavigationController *)currentNavigationController3 navigationBar];
        currentViewController2 = [(BuddyNavigationBarUpdater *)selfCopy currentViewController];
        [(BuddyNavigationBarUpdater *)v18 _updateNavigationBarBackButtonIfNeeded:navigationBar2 forViewController:currentViewController2];
      }

      else
      {
        v14 = selfCopy;
        currentNavigationController4 = [(BuddyNavigationBarUpdater *)selfCopy currentNavigationController];
        navigationBar3 = [(UINavigationController *)currentNavigationController4 navigationBar];
        previousViewController = [(BuddyNavigationBarUpdater *)selfCopy previousViewController];
        [(BuddyNavigationBarUpdater *)v14 _updateNavigationBarBackButtonIfNeeded:navigationBar3 forViewController:previousViewController];
      }
    }
  }

  else if (state == 3)
  {
    v26 = selfCopy;
    currentNavigationController5 = [(BuddyNavigationBarUpdater *)selfCopy currentNavigationController];
    navigationBar4 = [(UINavigationController *)currentNavigationController5 navigationBar];
    previousViewController2 = [(BuddyNavigationBarUpdater *)selfCopy previousViewController];
    [(BuddyNavigationBarUpdater *)v26 _updateNavigationBarBackButtonIfNeeded:navigationBar4 forViewController:previousViewController2];

    [(BuddyNavigationBarUpdater *)selfCopy setTransitionCoordinator:0];
  }

  else if (state == 4)
  {
    v22 = selfCopy;
    currentNavigationController6 = [(BuddyNavigationBarUpdater *)selfCopy currentNavigationController];
    navigationBar5 = [(UINavigationController *)currentNavigationController6 navigationBar];
    currentViewController3 = [(BuddyNavigationBarUpdater *)selfCopy currentViewController];
    [(BuddyNavigationBarUpdater *)v22 _updateNavigationBarBackButtonIfNeeded:navigationBar5 forViewController:currentViewController3];
  }

  objc_storeStrong(location, 0);
}

- (UINavigationController)currentNavigationController
{
  WeakRetained = objc_loadWeakRetained(&self->_currentNavigationController);

  return WeakRetained;
}

@end