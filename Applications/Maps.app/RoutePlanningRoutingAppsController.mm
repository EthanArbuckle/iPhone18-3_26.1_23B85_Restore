@interface RoutePlanningRoutingAppsController
- (RoutePlanningRoutingAppsController)initWithDataCoordination:(id)coordination;
- (void)_updateWaypointSet:(id)set;
- (void)headerViewButtonTapped:(id)tapped buttonType:(unint64_t)type;
- (void)routingAppSelectionControllerDidCancel:(id)cancel;
@end

@implementation RoutePlanningRoutingAppsController

- (void)routingAppSelectionControllerDidCancel:(id)cancel
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

  wrappedViewController = [(RoutePlanningWrapperViewController *)self wrappedViewController];
  [wrappedViewController reset];

  containeeDelegate = [(ContaineeViewController *)self containeeDelegate];
  [containeeDelegate containeeViewControllerGoToPreviousState:self withSender:0];
}

- (void)headerViewButtonTapped:(id)tapped buttonType:(unint64_t)type
{
  tappedCopy = tapped;
  wrappedViewController = [(RoutePlanningWrapperViewController *)self wrappedViewController];
  [wrappedViewController reset];

  v8.receiver = self;
  v8.super_class = RoutePlanningRoutingAppsController;
  [(RoutePlanningWrapperViewController *)&v8 headerViewButtonTapped:tappedCopy buttonType:type];
}

- (void)_updateWaypointSet:(id)set
{
  setCopy = set;
  if (setCopy)
  {
    wrappedViewController = [(RoutePlanningWrapperViewController *)self wrappedViewController];
    [wrappedViewController updateForWaypointSet:setCopy];
  }

  if ([(RoutePlanningRoutingAppsController *)self isViewLoaded])
  {
    wrappedViewController2 = [(RoutePlanningWrapperViewController *)self wrappedViewController];
    navigationItem = [wrappedViewController2 navigationItem];
    title = [navigationItem title];
    titleHeaderView = [(RoutePlanningWrapperViewController *)self titleHeaderView];
    [titleHeaderView setTitle:title];
  }
}

- (RoutePlanningRoutingAppsController)initWithDataCoordination:(id)coordination
{
  coordinationCopy = coordination;
  v12.receiver = self;
  v12.super_class = RoutePlanningRoutingAppsController;
  v5 = [(RoutePlanningWrapperViewController *)&v12 initWithDataCoordination:coordinationCopy];
  v6 = v5;
  if (v5)
  {
    dataCoordinator = [(RoutePlanningWrapperViewController *)v5 dataCoordinator];
    [dataCoordinator addObserver:v6];

    v8 = -[RoutingAppSelectionController initWithTransportType:]([RoutingAppSelectionController alloc], "initWithTransportType:", [coordinationCopy transportType]);
    [(RoutePlanningWrapperViewController *)v6 setWrappedViewController:v8];

    resolvedWaypointSet = [coordinationCopy resolvedWaypointSet];
    [(RoutePlanningRoutingAppsController *)v6 _updateWaypointSet:resolvedWaypointSet];

    wrappedViewController = [(RoutePlanningWrapperViewController *)v6 wrappedViewController];
    [wrappedViewController setDelegate:v6];
  }

  return v6;
}

@end