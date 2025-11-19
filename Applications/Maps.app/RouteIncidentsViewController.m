@interface RouteIncidentsViewController
- (CGSize)_calculatePreferredContentSize;
- (GEOAdvisoriesInfo)advisoriesInfo;
- (GEOComposedRouteAdvisory)advisory;
- (NSArray)transitIncidents;
- (RouteIncidentsViewController)initWithDataCoordination:(id)a3;
- (void)_doneTapped:(id)a3;
- (void)_updatePreferredContentSize;
- (void)dealloc;
- (void)didTapDownloadForLocation:(id)a3;
- (void)didUpdateDataSource;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)resetForDismiss;
- (void)setAdvisoriesInfo:(id)a3;
- (void)setAdvisory:(id)a3;
- (void)setTransitIncidents:(id)a3;
- (void)viewDidLoad;
@end

@implementation RouteIncidentsViewController

- (void)didTapDownloadForLocation:(id)a3
{
  v4 = a3;
  v5 = [GEOMapRegion alloc];
  [v4 lat];
  v7 = v6;
  [v4 lng];
  v9 = [v5 initWithLatitude:v7 longitude:v8];
  v10 = [(RouteIncidentsViewController *)self _maps_mapsSceneDelegate];
  v11 = [v10 appCoordinator];
  v12 = [v11 baseActionCoordinator];

  objc_initWeak(&location, self);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100C666B8;
  v14[3] = &unk_10164F1E0;
  objc_copyWeak(&v16, &location);
  v13 = v12;
  v15 = v13;
  [v13 viewController:self showOfflineMapRegionSelectorForRegion:v9 name:0 dismissalBlock:v14];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

- (void)_doneTapped:(id)a3
{
  v4 = a3;
  v5 = +[MKMapService sharedService];
  v6 = [(RouteIncidentsViewController *)self advisory];
  v7 = [v6 advisoryItems];
  [v5 captureUserAction:41 onTarget:46 forAdvisoryItems:v7];

  v8 = [(ContaineeViewController *)self containeeDelegate];
  [v8 containeeViewControllerGoToPreviousState:self withSender:v4];
}

- (void)resetForDismiss
{
  v3 = [(RoutePlanningWrapperViewController *)self wrappedViewController];
  [v3 setTransitIncidents:0];

  v4 = [(RoutePlanningWrapperViewController *)self wrappedViewController];
  [v4 setAdvisory:0];

  v5 = [(RoutePlanningWrapperViewController *)self wrappedViewController];
  [v5 setAdvisoriesInfo:0];
}

- (GEOComposedRouteAdvisory)advisory
{
  v2 = [(RoutePlanningWrapperViewController *)self wrappedViewController];
  v3 = [v2 advisory];

  return v3;
}

- (void)setAdvisory:(id)a3
{
  v4 = a3;
  v5 = [(RoutePlanningWrapperViewController *)self wrappedViewController];
  v6 = [v5 advisory];
  v10 = v4;
  v7 = v6;
  if (v10 | v7)
  {
    v8 = [v10 isEqual:v7];

    if ((v8 & 1) == 0)
    {
      v9 = [(RoutePlanningWrapperViewController *)self wrappedViewController];
      [v9 setAdvisory:v10];

      [(RouteIncidentsViewController *)self didUpdateDataSource];
    }
  }

  else
  {
  }
}

- (GEOAdvisoriesInfo)advisoriesInfo
{
  v2 = [(RoutePlanningWrapperViewController *)self wrappedViewController];
  v3 = [v2 advisoriesInfo];

  return v3;
}

- (void)setAdvisoriesInfo:(id)a3
{
  v4 = a3;
  v5 = [(RoutePlanningWrapperViewController *)self wrappedViewController];
  v6 = [v5 advisoriesInfo];
  v10 = v4;
  v7 = v6;
  if (v10 | v7)
  {
    v8 = [v10 isEqual:v7];

    if ((v8 & 1) == 0)
    {
      v9 = [(RoutePlanningWrapperViewController *)self wrappedViewController];
      [v9 setAdvisoriesInfo:v10];

      [(RouteIncidentsViewController *)self didUpdateDataSource];
    }
  }

  else
  {
  }
}

- (NSArray)transitIncidents
{
  v2 = [(RoutePlanningWrapperViewController *)self wrappedViewController];
  v3 = [v2 transitIncidents];

  return v3;
}

- (void)setTransitIncidents:(id)a3
{
  v10 = a3;
  v4 = [(RoutePlanningWrapperViewController *)self wrappedViewController];
  v5 = [v4 transitIncidents];
  if (v5 == v10)
  {
  }

  else
  {
    v6 = [(RoutePlanningWrapperViewController *)self wrappedViewController];
    v7 = [v6 transitIncidents];
    v8 = [v10 isEqualToArray:v7];

    if ((v8 & 1) == 0)
    {
      v9 = [(RoutePlanningWrapperViewController *)self wrappedViewController];
      [v9 setTransitIncidents:v10];

      [(RouteIncidentsViewController *)self didUpdateDataSource];
    }
  }
}

- (void)didUpdateDataSource
{
  if ([(RouteIncidentsViewController *)self isViewLoaded])
  {
    [(RoutePlanningWrapperViewController *)self updateHeaderTitle];
    v3 = [(RoutePlanningWrapperViewController *)self wrappedViewController];
    v4 = [v3 navigationItem];
    v5 = [v4 title];
    v6 = [(RoutePlanningWrapperViewController *)self titleHeaderView];
    [v6 setTitle:v5];

    [(RouteIncidentsViewController *)self _updatePreferredContentSize];
  }
}

- (CGSize)_calculatePreferredContentSize
{
  v3 = [(RouteIncidentsViewController *)self isViewLoaded];
  v4 = 282.0;
  if (v3)
  {
    v5 = sub_10000FA08(self);
    v4 = 282.0;
    if (v5 == 5)
    {
      v6 = [(RouteIncidentsViewController *)self view];
      [v6 layoutIfNeeded];

      v7 = [(RoutePlanningWrapperViewController *)self wrappedViewController];
      v8 = [v7 tableView];
      [v8 contentSize];
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

  v3 = [(RouteIncidentsViewController *)self advisory];
  if (v3 || (-[RouteIncidentsViewController transitIncidents](self, "transitIncidents"), v3 = objc_claimAutoreleasedReturnValue(), [v3 count]))
  {

    goto LABEL_6;
  }

  v11 = [(RouteIncidentsViewController *)self advisoriesInfo];

  if (v11)
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
    v12 = [(RoutePlanningWrapperViewController *)self wrappedViewController];
    v10 = [v12 tableView];
    [v10 setContentOffset:0 animated:{CGPointZero.x, CGPointZero.y}];

    goto LABEL_10;
  }

  v12 = [(RouteIncidentsViewController *)self presentingViewController];
  [v12 dismissViewControllerAnimated:0 completion:0];
LABEL_10:
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (a6 == &unk_10195ECD8)
  {

    [(RouteIncidentsViewController *)self _updatePreferredContentSize:a3];
  }

  else
  {
    v9 = v6;
    v10 = v7;
    v8.receiver = self;
    v8.super_class = RouteIncidentsViewController;
    [(RouteIncidentsViewController *)&v8 observeValueForKeyPath:a3 ofObject:a4 change:a5 context:?];
  }
}

- (void)dealloc
{
  if (self->_didStartObservingTableViewContentSize)
  {
    self->_didStartObservingTableViewContentSize = 0;
    v3 = [(RoutePlanningWrapperViewController *)self wrappedViewController];
    v4 = [v3 tableView];
    [v4 removeObserver:self forKeyPath:@"contentSize" context:&unk_10195ECD8];
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
  v3 = [(RouteIncidentsViewController *)self view];
  [v3 setAccessibilityIdentifier:@"RouteIncidentsView"];

  if (sub_10000FA08(self) == 5)
  {
    [(RouteIncidentsViewController *)self setPreferredContentSize:282.0, 282.0];
    self->_didStartObservingTableViewContentSize = 1;
    [(RouteIncidentsViewController *)self _updatePreferredContentSize];
    v4 = [(RoutePlanningWrapperViewController *)self wrappedViewController];
    v5 = [v4 tableView];
    [v5 addObserver:self forKeyPath:@"contentSize" options:1 context:&unk_10195ECD8];
  }
}

- (RouteIncidentsViewController)initWithDataCoordination:(id)a3
{
  v9.receiver = self;
  v9.super_class = RouteIncidentsViewController;
  v3 = [(RoutePlanningWrapperViewController *)&v9 initWithDataCoordination:a3];
  if (v3)
  {
    v4 = objc_alloc_init(MapsIncidentsViewController);
    [(RoutePlanningWrapperViewController *)v3 setWrappedViewController:v4];

    v5 = [(RoutePlanningWrapperViewController *)v3 wrappedViewController];
    [v5 setDelegate:v3];

    v6 = [(ContaineeViewController *)v3 cardPresentationController];
    [v6 setPresentedModally:0];

    v7 = [(ContaineeViewController *)v3 cardPresentationController];
    [v7 setTakesAvailableHeight:0];
  }

  return v3;
}

@end