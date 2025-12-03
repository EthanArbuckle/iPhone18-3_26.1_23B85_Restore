@interface RouteIncidentsViewController
- (CGSize)_calculatePreferredContentSize;
- (GEOAdvisoriesInfo)advisoriesInfo;
- (GEOComposedRouteAdvisory)advisory;
- (NSArray)transitIncidents;
- (RouteIncidentsViewController)initWithDataCoordination:(id)coordination;
- (void)_doneTapped:(id)tapped;
- (void)_updatePreferredContentSize;
- (void)dealloc;
- (void)didTapDownloadForLocation:(id)location;
- (void)didUpdateDataSource;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)resetForDismiss;
- (void)setAdvisoriesInfo:(id)info;
- (void)setAdvisory:(id)advisory;
- (void)setTransitIncidents:(id)incidents;
- (void)viewDidLoad;
@end

@implementation RouteIncidentsViewController

- (void)didTapDownloadForLocation:(id)location
{
  locationCopy = location;
  v5 = [GEOMapRegion alloc];
  [locationCopy lat];
  v7 = v6;
  [locationCopy lng];
  v9 = [v5 initWithLatitude:v7 longitude:v8];
  _maps_mapsSceneDelegate = [(RouteIncidentsViewController *)self _maps_mapsSceneDelegate];
  appCoordinator = [_maps_mapsSceneDelegate appCoordinator];
  baseActionCoordinator = [appCoordinator baseActionCoordinator];

  objc_initWeak(&location, self);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100C666B8;
  v14[3] = &unk_10164F1E0;
  objc_copyWeak(&v16, &location);
  v13 = baseActionCoordinator;
  v15 = v13;
  [v13 viewController:self showOfflineMapRegionSelectorForRegion:v9 name:0 dismissalBlock:v14];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

- (void)_doneTapped:(id)tapped
{
  tappedCopy = tapped;
  v5 = +[MKMapService sharedService];
  advisory = [(RouteIncidentsViewController *)self advisory];
  advisoryItems = [advisory advisoryItems];
  [v5 captureUserAction:41 onTarget:46 forAdvisoryItems:advisoryItems];

  containeeDelegate = [(ContaineeViewController *)self containeeDelegate];
  [containeeDelegate containeeViewControllerGoToPreviousState:self withSender:tappedCopy];
}

- (void)resetForDismiss
{
  wrappedViewController = [(RoutePlanningWrapperViewController *)self wrappedViewController];
  [wrappedViewController setTransitIncidents:0];

  wrappedViewController2 = [(RoutePlanningWrapperViewController *)self wrappedViewController];
  [wrappedViewController2 setAdvisory:0];

  wrappedViewController3 = [(RoutePlanningWrapperViewController *)self wrappedViewController];
  [wrappedViewController3 setAdvisoriesInfo:0];
}

- (GEOComposedRouteAdvisory)advisory
{
  wrappedViewController = [(RoutePlanningWrapperViewController *)self wrappedViewController];
  advisory = [wrappedViewController advisory];

  return advisory;
}

- (void)setAdvisory:(id)advisory
{
  advisoryCopy = advisory;
  wrappedViewController = [(RoutePlanningWrapperViewController *)self wrappedViewController];
  advisory = [wrappedViewController advisory];
  v10 = advisoryCopy;
  v7 = advisory;
  if (v10 | v7)
  {
    v8 = [v10 isEqual:v7];

    if ((v8 & 1) == 0)
    {
      wrappedViewController2 = [(RoutePlanningWrapperViewController *)self wrappedViewController];
      [wrappedViewController2 setAdvisory:v10];

      [(RouteIncidentsViewController *)self didUpdateDataSource];
    }
  }

  else
  {
  }
}

- (GEOAdvisoriesInfo)advisoriesInfo
{
  wrappedViewController = [(RoutePlanningWrapperViewController *)self wrappedViewController];
  advisoriesInfo = [wrappedViewController advisoriesInfo];

  return advisoriesInfo;
}

- (void)setAdvisoriesInfo:(id)info
{
  infoCopy = info;
  wrappedViewController = [(RoutePlanningWrapperViewController *)self wrappedViewController];
  advisoriesInfo = [wrappedViewController advisoriesInfo];
  v10 = infoCopy;
  v7 = advisoriesInfo;
  if (v10 | v7)
  {
    v8 = [v10 isEqual:v7];

    if ((v8 & 1) == 0)
    {
      wrappedViewController2 = [(RoutePlanningWrapperViewController *)self wrappedViewController];
      [wrappedViewController2 setAdvisoriesInfo:v10];

      [(RouteIncidentsViewController *)self didUpdateDataSource];
    }
  }

  else
  {
  }
}

- (NSArray)transitIncidents
{
  wrappedViewController = [(RoutePlanningWrapperViewController *)self wrappedViewController];
  transitIncidents = [wrappedViewController transitIncidents];

  return transitIncidents;
}

- (void)setTransitIncidents:(id)incidents
{
  incidentsCopy = incidents;
  wrappedViewController = [(RoutePlanningWrapperViewController *)self wrappedViewController];
  transitIncidents = [wrappedViewController transitIncidents];
  if (transitIncidents == incidentsCopy)
  {
  }

  else
  {
    wrappedViewController2 = [(RoutePlanningWrapperViewController *)self wrappedViewController];
    transitIncidents2 = [wrappedViewController2 transitIncidents];
    v8 = [incidentsCopy isEqualToArray:transitIncidents2];

    if ((v8 & 1) == 0)
    {
      wrappedViewController3 = [(RoutePlanningWrapperViewController *)self wrappedViewController];
      [wrappedViewController3 setTransitIncidents:incidentsCopy];

      [(RouteIncidentsViewController *)self didUpdateDataSource];
    }
  }
}

- (void)didUpdateDataSource
{
  if ([(RouteIncidentsViewController *)self isViewLoaded])
  {
    [(RoutePlanningWrapperViewController *)self updateHeaderTitle];
    wrappedViewController = [(RoutePlanningWrapperViewController *)self wrappedViewController];
    navigationItem = [wrappedViewController navigationItem];
    title = [navigationItem title];
    titleHeaderView = [(RoutePlanningWrapperViewController *)self titleHeaderView];
    [titleHeaderView setTitle:title];

    [(RouteIncidentsViewController *)self _updatePreferredContentSize];
  }
}

- (CGSize)_calculatePreferredContentSize
{
  isViewLoaded = [(RouteIncidentsViewController *)self isViewLoaded];
  v4 = 282.0;
  if (isViewLoaded)
  {
    v5 = sub_10000FA08(self);
    v4 = 282.0;
    if (v5 == 5)
    {
      view = [(RouteIncidentsViewController *)self view];
      [view layoutIfNeeded];

      wrappedViewController = [(RoutePlanningWrapperViewController *)self wrappedViewController];
      tableView = [wrappedViewController tableView];
      [tableView contentSize];
      v10 = v9;

      v11 = +[UIScreen mainScreen];
      [v11 bounds];
      v13 = v12;

      v4 = fmax(fmin(v10, v13), 100.0);
    }
  }

  v14 = 282.0;
  result.height = v4;
  result.width = v14;
  return result;
}

- (void)_updatePreferredContentSize
{
  if (![(RouteIncidentsViewController *)self isViewLoaded]|| sub_10000FA08(self) != 5)
  {
    return;
  }

  advisory = [(RouteIncidentsViewController *)self advisory];
  if (advisory || (-[RouteIncidentsViewController transitIncidents](self, "transitIncidents"), advisory = objc_claimAutoreleasedReturnValue(), [advisory count]))
  {

    goto LABEL_6;
  }

  advisoriesInfo = [(RouteIncidentsViewController *)self advisoriesInfo];

  if (advisoriesInfo)
  {
LABEL_6:
    [(RouteIncidentsViewController *)self _calculatePreferredContentSize];
    v5 = v4;
    v7 = v6;
    [(RouteIncidentsViewController *)self preferredContentSize];
    if (v5 == v9 && v7 == v8)
    {
      return;
    }

    [(RouteIncidentsViewController *)self setPreferredContentSize:v5, v7];
    wrappedViewController = [(RoutePlanningWrapperViewController *)self wrappedViewController];
    tableView = [wrappedViewController tableView];
    [tableView setContentOffset:0 animated:{CGPointZero.x, CGPointZero.y}];

    goto LABEL_10;
  }

  wrappedViewController = [(RouteIncidentsViewController *)self presentingViewController];
  [wrappedViewController dismissViewControllerAnimated:0 completion:0];
LABEL_10:
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (context == &unk_10195ECD8)
  {

    [(RouteIncidentsViewController *)self _updatePreferredContentSize:path];
  }

  else
  {
    v9 = v6;
    v10 = v7;
    v8.receiver = self;
    v8.super_class = RouteIncidentsViewController;
    [(RouteIncidentsViewController *)&v8 observeValueForKeyPath:path ofObject:object change:change context:?];
  }
}

- (void)dealloc
{
  if (self->_didStartObservingTableViewContentSize)
  {
    self->_didStartObservingTableViewContentSize = 0;
    wrappedViewController = [(RoutePlanningWrapperViewController *)self wrappedViewController];
    tableView = [wrappedViewController tableView];
    [tableView removeObserver:self forKeyPath:@"contentSize" context:&unk_10195ECD8];
  }

  v5.receiver = self;
  v5.super_class = RouteIncidentsViewController;
  [(RouteIncidentsViewController *)&v5 dealloc];
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = RouteIncidentsViewController;
  [(RoutePlanningWrapperViewController *)&v6 viewDidLoad];
  view = [(RouteIncidentsViewController *)self view];
  [view setAccessibilityIdentifier:@"RouteIncidentsView"];

  if (sub_10000FA08(self) == 5)
  {
    [(RouteIncidentsViewController *)self setPreferredContentSize:282.0, 282.0];
    self->_didStartObservingTableViewContentSize = 1;
    [(RouteIncidentsViewController *)self _updatePreferredContentSize];
    wrappedViewController = [(RoutePlanningWrapperViewController *)self wrappedViewController];
    tableView = [wrappedViewController tableView];
    [tableView addObserver:self forKeyPath:@"contentSize" options:1 context:&unk_10195ECD8];
  }
}

- (RouteIncidentsViewController)initWithDataCoordination:(id)coordination
{
  v9.receiver = self;
  v9.super_class = RouteIncidentsViewController;
  v3 = [(RoutePlanningWrapperViewController *)&v9 initWithDataCoordination:coordination];
  if (v3)
  {
    v4 = objc_alloc_init(MapsIncidentsViewController);
    [(RoutePlanningWrapperViewController *)v3 setWrappedViewController:v4];

    wrappedViewController = [(RoutePlanningWrapperViewController *)v3 wrappedViewController];
    [wrappedViewController setDelegate:v3];

    cardPresentationController = [(ContaineeViewController *)v3 cardPresentationController];
    [cardPresentationController setPresentedModally:0];

    cardPresentationController2 = [(ContaineeViewController *)v3 cardPresentationController];
    [cardPresentationController2 setTakesAvailableHeight:0];
  }

  return v3;
}

@end