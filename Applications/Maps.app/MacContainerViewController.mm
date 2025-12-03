@interface MacContainerViewController
- (MacContainerViewController)initWithPlatformController:(id)controller;
- (id)_mapViewIfCurrent;
- (id)preferredFocusEnvironments;
- (id)topSidebarController_forTests;
- (void)macWillDismissPopoverContaineeController:(id)controller;
- (void)setChromeViewController:(id)controller;
- (void)setSidebarContentInjector:(id)injector;
@end

@implementation MacContainerViewController

- (void)setSidebarContentInjector:(id)injector
{
  injectorCopy = injector;
  sidebarContentInjector = self->_sidebarContentInjector;
  if (sidebarContentInjector != injectorCopy)
  {
    [(ContaineeContentInjection *)sidebarContentInjector removeContentFromMapView];
    [(ContaineeContentInjection *)self->_sidebarContentInjector setUpdateContentInjection:0];
    objc_storeStrong(&self->_sidebarContentInjector, injector);
    objc_initWeak(&location, self);
    v7 = _NSConcreteStackBlock;
    v8 = 3221225472;
    v9 = sub_100A6F198;
    v10 = &unk_101632C48;
    objc_copyWeak(&v11, &location);
    [(ContaineeContentInjection *)self->_sidebarContentInjector setUpdateContentInjection:&v7];
    [(ContaineeContentInjection *)self->_sidebarContentInjector addContentToMapView:v7];
    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }
}

- (void)macWillDismissPopoverContaineeController:(id)controller
{
  controllerCopy = controller;
  macBaseActionCoordinator = [(MacContainerViewController *)self macBaseActionCoordinator];
  v6 = [macBaseActionCoordinator shouldClearMapSelectionOnDismissOfViewController:controllerCopy];

  if (v6)
  {
    actionCoordinator = [(ControlContainerViewController *)self actionCoordinator];
    mapSelectionManager = [actionCoordinator mapSelectionManager];
    [mapSelectionManager clearSelectionAnimated:1];
  }

  v9.receiver = self;
  v9.super_class = MacContainerViewController;
  [(MacContainerViewController *)&v9 macWillDismissPopoverContaineeController:controllerCopy];
}

- (id)topSidebarController_forTests
{
  chromeViewController = [(ContainerViewController *)self chromeViewController];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    chromeViewController2 = [(ContainerViewController *)self chromeViewController];
    topSidebarController_forTests = [chromeViewController2 topSidebarController_forTests];
  }

  else
  {
    topSidebarController_forTests = 0;
  }

  return topSidebarController_forTests;
}

- (id)_mapViewIfCurrent
{
  chromeContext = [(ControlContainerViewController *)self chromeContext];
  chromeViewController = [(ContainerViewController *)self chromeViewController];
  topContext = [chromeViewController topContext];

  if (chromeContext == topContext)
  {
    chromeViewController2 = [(ContainerViewController *)self chromeViewController];
    mapView = [chromeViewController2 mapView];
  }

  else
  {
    mapView = 0;
  }

  return mapView;
}

- (void)setChromeViewController:(id)controller
{
  v7.receiver = self;
  v7.super_class = MacContainerViewController;
  controllerCopy = controller;
  [(ControlContainerViewController *)&v7 setChromeViewController:controllerCopy];
  v5 = _UISolariumEnabled();
  v6 = [(MacContainerViewController *)self _mapViewIfCurrent:v7.receiver];
  [v6 setCompassEnabled:v5 ^ 1u];

  [controllerCopy registerAdditionalMapViewDelegate:self];
}

- (id)preferredFocusEnvironments
{
  currentViewController = [(ContainerViewController *)self currentViewController];

  if (currentViewController)
  {
    currentViewController2 = [(ContainerViewController *)self currentViewController];
    v9 = currentViewController2;
    v5 = &v9;
  }

  else
  {
    currentViewController2 = [(MacContainerViewController *)self view];
    v8 = currentViewController2;
    v5 = &v8;
  }

  v6 = [NSArray arrayWithObjects:v5 count:1];

  return v6;
}

- (MacContainerViewController)initWithPlatformController:(id)controller
{
  v5.receiver = self;
  v5.super_class = MacContainerViewController;
  v3 = [(ControlContainerViewController *)&v5 initWithPlatformController:controller];
  if (v3)
  {
    [(ContainerViewController *)v3 setStackOnOppositeSide:_UISolariumEnabled() ^ 1];
    [(ContainerViewController *)v3 macSetEnableExtendedPresentationStyles:1];
  }

  return v3;
}

@end