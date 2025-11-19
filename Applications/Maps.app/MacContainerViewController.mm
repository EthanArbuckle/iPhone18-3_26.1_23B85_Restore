@interface MacContainerViewController
- (MacContainerViewController)initWithPlatformController:(id)a3;
- (id)_mapViewIfCurrent;
- (id)preferredFocusEnvironments;
- (id)topSidebarController_forTests;
- (void)macWillDismissPopoverContaineeController:(id)a3;
- (void)setChromeViewController:(id)a3;
- (void)setSidebarContentInjector:(id)a3;
@end

@implementation MacContainerViewController

- (void)setSidebarContentInjector:(id)a3
{
  v5 = a3;
  sidebarContentInjector = self->_sidebarContentInjector;
  if (sidebarContentInjector != v5)
  {
    [(ContaineeContentInjection *)sidebarContentInjector removeContentFromMapView];
    [(ContaineeContentInjection *)self->_sidebarContentInjector setUpdateContentInjection:0];
    objc_storeStrong(&self->_sidebarContentInjector, a3);
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

- (void)macWillDismissPopoverContaineeController:(id)a3
{
  v4 = a3;
  v5 = [(MacContainerViewController *)self macBaseActionCoordinator];
  v6 = [v5 shouldClearMapSelectionOnDismissOfViewController:v4];

  if (v6)
  {
    v7 = [(ControlContainerViewController *)self actionCoordinator];
    v8 = [v7 mapSelectionManager];
    [v8 clearSelectionAnimated:1];
  }

  v9.receiver = self;
  v9.super_class = MacContainerViewController;
  [(MacContainerViewController *)&v9 macWillDismissPopoverContaineeController:v4];
}

- (id)topSidebarController_forTests
{
  v3 = [(ContainerViewController *)self chromeViewController];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(ContainerViewController *)self chromeViewController];
    v6 = [v5 topSidebarController_forTests];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_mapViewIfCurrent
{
  v3 = [(ControlContainerViewController *)self chromeContext];
  v4 = [(ContainerViewController *)self chromeViewController];
  v5 = [v4 topContext];

  if (v3 == v5)
  {
    v7 = [(ContainerViewController *)self chromeViewController];
    v6 = [v7 mapView];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setChromeViewController:(id)a3
{
  v7.receiver = self;
  v7.super_class = MacContainerViewController;
  v4 = a3;
  [(ControlContainerViewController *)&v7 setChromeViewController:v4];
  v5 = _UISolariumEnabled();
  v6 = [(MacContainerViewController *)self _mapViewIfCurrent:v7.receiver];
  [v6 setCompassEnabled:v5 ^ 1u];

  [v4 registerAdditionalMapViewDelegate:self];
}

- (id)preferredFocusEnvironments
{
  v3 = [(ContainerViewController *)self currentViewController];

  if (v3)
  {
    v4 = [(ContainerViewController *)self currentViewController];
    v9 = v4;
    v5 = &v9;
  }

  else
  {
    v4 = [(MacContainerViewController *)self view];
    v8 = v4;
    v5 = &v8;
  }

  v6 = [NSArray arrayWithObjects:v5 count:1];

  return v6;
}

- (MacContainerViewController)initWithPlatformController:(id)a3
{
  v5.receiver = self;
  v5.super_class = MacContainerViewController;
  v3 = [(ControlContainerViewController *)&v5 initWithPlatformController:a3];
  if (v3)
  {
    [(ContainerViewController *)v3 setStackOnOppositeSide:_UISolariumEnabled() ^ 1];
    [(ContainerViewController *)v3 macSetEnableExtendedPresentationStyles:1];
  }

  return v3;
}

@end