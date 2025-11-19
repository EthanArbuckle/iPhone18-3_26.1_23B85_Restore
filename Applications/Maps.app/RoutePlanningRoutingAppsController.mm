@interface RoutePlanningRoutingAppsController
- (RoutePlanningRoutingAppsController)initWithDataCoordination:(id)a3;
- (void)_updateWaypointSet:(id)a3;
- (void)headerViewButtonTapped:(id)a3 buttonType:(unint64_t)a4;
- (void)routingAppSelectionControllerDidCancel:(id)a3;
@end

@implementation RoutePlanningRoutingAppsController

- (void)routingAppSelectionControllerDidCancel:(id)a3
{
  v4 = sub_10006D178();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v9 = 136315650;
    v10 = "[RoutePlanningRoutingAppsController routingAppSelectionControllerDidCancel:]";
    v11 = 2080;
    v12 = "RoutePlanningRoutingAppsController.m";
    v13 = 1024;
    v14 = 71;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", &v9, 0x1Cu);
  }

  if (sub_100E03634())
  {
    v5 = sub_10006D178();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = +[NSThread callStackSymbols];
      v9 = 138412290;
      v10 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%@", &v9, 0xCu);
    }
  }

  v7 = [(RoutePlanningWrapperViewController *)self wrappedViewController];
  [v7 reset];

  v8 = [(ContaineeViewController *)self containeeDelegate];
  [v8 containeeViewControllerGoToPreviousState:self withSender:0];
}

- (void)headerViewButtonTapped:(id)a3 buttonType:(unint64_t)a4
{
  v6 = a3;
  v7 = [(RoutePlanningWrapperViewController *)self wrappedViewController];
  [v7 reset];

  v8.receiver = self;
  v8.super_class = RoutePlanningRoutingAppsController;
  [(RoutePlanningWrapperViewController *)&v8 headerViewButtonTapped:v6 buttonType:a4];
}

- (void)_updateWaypointSet:(id)a3
{
  v9 = a3;
  if (v9)
  {
    v4 = [(RoutePlanningWrapperViewController *)self wrappedViewController];
    [v4 updateForWaypointSet:v9];
  }

  if ([(RoutePlanningRoutingAppsController *)self isViewLoaded])
  {
    v5 = [(RoutePlanningWrapperViewController *)self wrappedViewController];
    v6 = [v5 navigationItem];
    v7 = [v6 title];
    v8 = [(RoutePlanningWrapperViewController *)self titleHeaderView];
    [v8 setTitle:v7];
  }
}

- (RoutePlanningRoutingAppsController)initWithDataCoordination:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = RoutePlanningRoutingAppsController;
  v5 = [(RoutePlanningWrapperViewController *)&v12 initWithDataCoordination:v4];
  v6 = v5;
  if (v5)
  {
    v7 = [(RoutePlanningWrapperViewController *)v5 dataCoordinator];
    [v7 addObserver:v6];

    v8 = -[RoutingAppSelectionController initWithTransportType:]([RoutingAppSelectionController alloc], "initWithTransportType:", [v4 transportType]);
    [(RoutePlanningWrapperViewController *)v6 setWrappedViewController:v8];

    v9 = [v4 resolvedWaypointSet];
    [(RoutePlanningRoutingAppsController *)v6 _updateWaypointSet:v9];

    v10 = [(RoutePlanningWrapperViewController *)v6 wrappedViewController];
    [v10 setDelegate:v6];
  }

  return v6;
}

@end