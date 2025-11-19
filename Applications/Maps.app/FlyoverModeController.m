@interface FlyoverModeController
- (FlyoverActionCoordination)actionCoordinator;
- (FlyoverContainerViewController)containerViewController;
- (FlyoverModeController)initWithMapItem:(id)a3;
- (IOSBasedChromeViewController)chromeViewController;
- (id)transitionControllerForPopToMode:(id)a3;
- (id)transitionControllerForPushFromMode:(id)a3;
- (int64_t)preferredStatusBarStyle;
- (void)becomeTopContextInChromeViewController:(id)a3 withAnimation:(id)a4;
- (void)getCurrentSceneTitleWithCompletion:(id)a3;
- (void)resignTopContextInChromeViewController:(id)a3 withAnimation:(id)a4;
- (void)setChromeViewController:(id)a3;
@end

@implementation FlyoverModeController

- (IOSBasedChromeViewController)chromeViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);

  return WeakRetained;
}

- (int64_t)preferredStatusBarStyle
{
  v2 = [(FlyoverModeController *)self containerViewController];
  v3 = [v2 preferredStatusBarStyle];

  return v3;
}

- (void)getCurrentSceneTitleWithCompletion:(id)a3
{
  v4 = a3;
  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"[App switcher title] Flyover — <location>" value:@"localized string not found" table:0];
  v7 = [(FlyoverModeController *)self mapItem];
  v8 = [v7 name];
  v9 = [NSString stringWithFormat:v6, v8];

  v4[2](v4, v9);
}

- (void)resignTopContextInChromeViewController:(id)a3 withAnimation:(id)a4
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100CE9680;
  v6[3] = &unk_101661A90;
  v6[4] = self;
  v7 = a3;
  v5 = v7;
  [a4 addPreparation:v6];
}

- (void)becomeTopContextInChromeViewController:(id)a3 withAnimation:(id)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100CE97B8;
  v7[3] = &unk_101661570;
  v8 = a3;
  v9 = self;
  v6 = v8;
  [a4 addCompletion:v7];
}

- (id)transitionControllerForPopToMode:(id)a3
{
  v3 = objc_opt_new();

  return v3;
}

- (id)transitionControllerForPushFromMode:(id)a3
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
    v5 = [(FlyoverModeController *)self mapItem];
    v6 = [(FlyoverContainerViewController *)v4 initWithMapItem:v5];
    v7 = self->_containerViewController;
    self->_containerViewController = v6;

    v8 = [(FlyoverModeController *)self actionCoordinator];
    [(FlyoverContainerViewController *)self->_containerViewController setFlyoverDelegate:v8];

    [(ContainerViewController *)self->_containerViewController setChromeContext:self];
    v9 = [(FlyoverModeController *)self chromeViewController];
    [(ContainerViewController *)self->_containerViewController setChromeViewController:v9];

    containerViewController = self->_containerViewController;
  }

  return containerViewController;
}

- (void)setChromeViewController:(id)a3
{
  v4 = a3;
  objc_storeWeak(&self->_chromeViewController, v4);
  [(ContainerViewController *)self->_containerViewController setChromeViewController:v4];
}

- (FlyoverActionCoordination)actionCoordinator
{
  v2 = [(FlyoverModeController *)self containerViewController];
  v3 = [v2 flyoverActionCoordinator];

  return v3;
}

- (FlyoverModeController)initWithMapItem:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = FlyoverModeController;
  v6 = [(FlyoverModeController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_mapItem, a3);
  }

  return v7;
}

@end