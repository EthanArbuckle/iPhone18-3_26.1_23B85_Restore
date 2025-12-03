@interface FlyoverModeController
- (FlyoverActionCoordination)actionCoordinator;
- (FlyoverContainerViewController)containerViewController;
- (FlyoverModeController)initWithMapItem:(id)item;
- (IOSBasedChromeViewController)chromeViewController;
- (id)transitionControllerForPopToMode:(id)mode;
- (id)transitionControllerForPushFromMode:(id)mode;
- (int64_t)preferredStatusBarStyle;
- (void)becomeTopContextInChromeViewController:(id)controller withAnimation:(id)animation;
- (void)getCurrentSceneTitleWithCompletion:(id)completion;
- (void)resignTopContextInChromeViewController:(id)controller withAnimation:(id)animation;
- (void)setChromeViewController:(id)controller;
@end

@implementation FlyoverModeController

- (IOSBasedChromeViewController)chromeViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);

  return WeakRetained;
}

- (int64_t)preferredStatusBarStyle
{
  containerViewController = [(FlyoverModeController *)self containerViewController];
  preferredStatusBarStyle = [containerViewController preferredStatusBarStyle];

  return preferredStatusBarStyle;
}

- (void)getCurrentSceneTitleWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"[App switcher title] Flyover — <location>" value:@"localized string not found" table:0];
  mapItem = [(FlyoverModeController *)self mapItem];
  name = [mapItem name];
  v9 = [NSString stringWithFormat:v6, name];

  completionCopy[2](completionCopy, v9);
}

- (void)resignTopContextInChromeViewController:(id)controller withAnimation:(id)animation
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100CE9680;
  v6[3] = &unk_101661A90;
  v6[4] = self;
  controllerCopy = controller;
  v5 = controllerCopy;
  [animation addPreparation:v6];
}

- (void)becomeTopContextInChromeViewController:(id)controller withAnimation:(id)animation
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100CE97B8;
  v7[3] = &unk_101661570;
  controllerCopy = controller;
  selfCopy = self;
  v6 = controllerCopy;
  [animation addCompletion:v7];
}

- (id)transitionControllerForPopToMode:(id)mode
{
  v3 = objc_opt_new();

  return v3;
}

- (id)transitionControllerForPushFromMode:(id)mode
{
  v3 = objc_opt_new();

  return v3;
}

- (FlyoverContainerViewController)containerViewController
{
  containerViewController = self->_containerViewController;
  if (!containerViewController)
  {
    v4 = [FlyoverContainerViewController alloc];
    mapItem = [(FlyoverModeController *)self mapItem];
    v6 = [(FlyoverContainerViewController *)v4 initWithMapItem:mapItem];
    v7 = self->_containerViewController;
    self->_containerViewController = v6;

    actionCoordinator = [(FlyoverModeController *)self actionCoordinator];
    [(FlyoverContainerViewController *)self->_containerViewController setFlyoverDelegate:actionCoordinator];

    [(ContainerViewController *)self->_containerViewController setChromeContext:self];
    chromeViewController = [(FlyoverModeController *)self chromeViewController];
    [(ContainerViewController *)self->_containerViewController setChromeViewController:chromeViewController];

    containerViewController = self->_containerViewController;
  }

  return containerViewController;
}

- (void)setChromeViewController:(id)controller
{
  controllerCopy = controller;
  objc_storeWeak(&self->_chromeViewController, controllerCopy);
  [(ContainerViewController *)self->_containerViewController setChromeViewController:controllerCopy];
}

- (FlyoverActionCoordination)actionCoordinator
{
  containerViewController = [(FlyoverModeController *)self containerViewController];
  flyoverActionCoordinator = [containerViewController flyoverActionCoordinator];

  return flyoverActionCoordinator;
}

- (FlyoverModeController)initWithMapItem:(id)item
{
  itemCopy = item;
  v9.receiver = self;
  v9.super_class = FlyoverModeController;
  v6 = [(FlyoverModeController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_mapItem, item);
  }

  return v7;
}

@end