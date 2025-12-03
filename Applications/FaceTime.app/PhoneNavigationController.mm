@interface PhoneNavigationController
+ ($1FF454C5B48E436092D281DABF654916)badge;
- (BOOL)shouldSnapshot;
- (PhoneNavigationController)initWithRootViewController:(id)controller;
- (id)tabBarIconImage;
- (id)tabBarIconName;
- (void)_updateRootViewController;
- (void)dealloc;
- (void)handleURL:(id)l;
- (void)prepareForSnapshot;
- (void)presentViewController:(id)controller animated:(BOOL)animated completion:(id)completion;
- (void)pushViewController:(id)controller animated:(BOOL)animated;
- (void)setViewControllers:(id)controllers;
@end

@implementation PhoneNavigationController

+ ($1FF454C5B48E436092D281DABF654916)badge
{
  v2 = PhoneBadgeKnownZero[0];
  v3 = PhoneBadgeKnownZero[1];
  result.var1 = v3;
  result.var0 = v2;
  return result;
}

- (id)tabBarIconName
{
  viewControllers = [(PhoneNavigationController *)self viewControllers];
  firstObject = [viewControllers firstObject];

  if (objc_opt_respondsToSelector())
  {
    tabBarIconName = [firstObject tabBarIconName];
  }

  else
  {
    tabBarIconName = &stru_10010E930;
  }

  return tabBarIconName;
}

- (id)tabBarIconImage
{
  viewControllers = [(PhoneNavigationController *)self viewControllers];
  firstObject = [viewControllers firstObject];

  if (objc_opt_respondsToSelector())
  {
    tabBarIconImage = [firstObject tabBarIconImage];
  }

  else
  {
    tabBarIconImage = objc_opt_new();
  }

  v5 = tabBarIconImage;

  return v5;
}

- (PhoneNavigationController)initWithRootViewController:(id)controller
{
  v9.receiver = self;
  v9.super_class = PhoneNavigationController;
  v3 = [(PhoneNavigationController *)&v9 initWithRootViewController:controller];
  if (v3)
  {
    if ([UIApp userInterfaceStyle] == 1)
    {
      v4 = objc_alloc_init(UIImage);
      navigationBar = [(PhoneNavigationController *)v3 navigationBar];
      [navigationBar setBackgroundImage:v4 forBarPosition:0 barMetrics:0];

      navigationBar2 = [(PhoneNavigationController *)v3 navigationBar];
      [navigationBar2 setBarStyle:1];

      navigationBar3 = [(PhoneNavigationController *)v3 navigationBar];
      [navigationBar3 setTranslucent:1];

      [(PhoneNavigationController *)v3 _setClipUnderlapWhileTransitioning:1];
    }

    [(PhoneNavigationController *)v3 setDefinesPresentationContext:0];
  }

  return v3;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = PhoneNavigationController;
  [(PhoneNavigationController *)&v4 dealloc];
}

- (void)_updateRootViewController
{
  viewControllers = [(PhoneNavigationController *)self viewControllers];
  if (![viewControllers count])
  {
    goto LABEL_5;
  }

  v3 = [viewControllers objectAtIndex:0];
  v4 = v3;
  if (v3 && ([(PhoneTabViewController *)v3 conformsToProtocol:&OBJC_PROTOCOL___PhoneTabViewController]& 1) == 0)
  {

LABEL_5:
    v4 = 0;
  }

  if (v4 != self->_rootController)
  {
    objc_storeStrong(&self->_rootController, v4);
  }
}

- (void)setViewControllers:(id)controllers
{
  v4.receiver = self;
  v4.super_class = PhoneNavigationController;
  [(PhoneNavigationController *)&v4 setViewControllers:controllers];
  [(PhoneNavigationController *)self _updateRootViewController];
}

- (void)pushViewController:(id)controller animated:(BOOL)animated
{
  animatedCopy = animated;
  controllerCopy = controller;
  if ([UIApp userInterfaceStyle] == 1)
  {
    [controllerCopy setEdgesForExtendedLayout:0];
  }

  v9.receiver = self;
  v9.super_class = PhoneNavigationController;
  [(PhoneNavigationController *)&v9 pushViewController:controllerCopy animated:animatedCopy];
  viewControllers = [(PhoneNavigationController *)self viewControllers];
  v8 = [viewControllers count];

  if (v8 == 1)
  {
    [(PhoneNavigationController *)self _updateRootViewController];
  }
}

- (void)presentViewController:(id)controller animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  controllerCopy = controller;
  completionCopy = completion;
  if ([UIApp userInterfaceStyle] == 1)
  {
    [controllerCopy setEdgesForExtendedLayout:0];
  }

  v10.receiver = self;
  v10.super_class = PhoneNavigationController;
  [(PhoneNavigationController *)&v10 presentViewController:controllerCopy animated:animatedCopy completion:completionCopy];
}

- (BOOL)shouldSnapshot
{
  rootViewController = [(PhoneNavigationController *)self rootViewController];
  visibleViewController = [(PhoneNavigationController *)self visibleViewController];
  if (visibleViewController == rootViewController)
  {
    shouldSnapshot = [rootViewController shouldSnapshot];
  }

  else
  {
    shouldSnapshot = 0;
  }

  return shouldSnapshot;
}

- (void)prepareForSnapshot
{
  rootViewController = [(PhoneNavigationController *)self rootViewController];
  [rootViewController prepareForSnapshot];
}

- (void)handleURL:(id)l
{
  lCopy = l;
  rootViewController = [(PhoneNavigationController *)self rootViewController];
  if (objc_opt_respondsToSelector())
  {
    [rootViewController handleURL:lCopy];
  }
}

@end