@interface RAPRouteStepMapViewCell
- (MKMapView)mapView;
- (RAPRouteStepMapViewCell)initWithIdentifier:(id)identifier route:(id)route routeStep:(id)step;
- (TransitSteppingCameraFramer)cameraFramer;
- (void)_setupRouteAnnotationsController;
@end

@implementation RAPRouteStepMapViewCell

- (MKMapView)mapView
{
  mapView = self->_mapView;
  if (!mapView)
  {
    v4 = [[MKMapView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    v5 = self->_mapView;
    self->_mapView = v4;

    transportType = [(GEOComposedRoute *)self->_route transportType];
    v11 = _NSConcreteStackBlock;
    v12 = 3221225472;
    v13 = sub_10061A258;
    v14 = &unk_101624188;
    selfCopy = self;
    v16 = transportType == 1;
    v7 = objc_retainBlock(&v11);
    if (transportType == 1)
    {
      v8 = [(RAPRouteStepMapViewCell *)self cameraFramer:v11];
      [v8 rectForStep:self->_routeStep currentStepIndex:-[GEOComposedRouteStep stepIndex](self->_routeStep handler:{"stepIndex"), v7}];
    }

    else
    {
      v9 = sub_100AF171C(self->_routeStep);
      (v7[2])(v7, v9);
    }

    [(MKMapView *)self->_mapView setTranslatesAutoresizingMaskIntoConstraints:0, v11, v12, v13, v14];
    [(MKMapView *)self->_mapView setUserInteractionEnabled:0];
    [(MKMapView *)self->_mapView setDelegate:self];

    mapView = self->_mapView;
  }

  return mapView;
}

- (TransitSteppingCameraFramer)cameraFramer
{
  cameraFramer = self->_cameraFramer;
  if (!cameraFramer)
  {
    v4 = objc_alloc_init(TransitSteppingCameraFramer);
    v5 = self->_cameraFramer;
    self->_cameraFramer = v4;

    cameraFramer = self->_cameraFramer;
  }

  return cameraFramer;
}

- (void)_setupRouteAnnotationsController
{
  if (!self->_routeAnnotationsController)
  {
    v3 = objc_alloc_init(RouteAnnotationsController);
    routeAnnotationsController = self->_routeAnnotationsController;
    self->_routeAnnotationsController = v3;

    mapView = [(RAPRouteStepMapViewCell *)self mapView];
    [(RouteAnnotationsController *)self->_routeAnnotationsController setMapView:mapView];

    v6 = [[RouteAnnotationsConfiguration alloc] initWithRoute:self->_route];
    [(RouteAnnotationsController *)self->_routeAnnotationsController setConfiguration:v6];
  }
}

- (RAPRouteStepMapViewCell)initWithIdentifier:(id)identifier route:(id)route routeStep:(id)step
{
  routeCopy = route;
  stepCopy = step;
  v35.receiver = self;
  v35.super_class = RAPRouteStepMapViewCell;
  v11 = [(RAPRouteStepMapViewCell *)&v35 initWithStyle:0 reuseIdentifier:identifier];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_route, route);
    objc_storeStrong(&v12->_routeStep, step);
    mapView = [(RAPRouteStepMapViewCell *)v12 mapView];
    [(RAPRouteStepMapViewCell *)v12 addSubview:mapView];

    v14 = +[NSMutableArray array];
    mapView2 = [(RAPRouteStepMapViewCell *)v12 mapView];
    topAnchor = [mapView2 topAnchor];
    topAnchor2 = [(RAPRouteStepMapViewCell *)v12 topAnchor];
    v18 = [topAnchor constraintEqualToAnchor:topAnchor2];
    [v14 addObject:v18];

    mapView3 = [(RAPRouteStepMapViewCell *)v12 mapView];
    widthAnchor = [mapView3 widthAnchor];
    widthAnchor2 = [(RAPRouteStepMapViewCell *)v12 widthAnchor];
    v22 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
    [v14 addObject:v22];

    mapView4 = [(RAPRouteStepMapViewCell *)v12 mapView];
    leadingAnchor = [mapView4 leadingAnchor];
    leadingAnchor2 = [(RAPRouteStepMapViewCell *)v12 leadingAnchor];
    v26 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    [v14 addObject:v26];

    mapView5 = [(RAPRouteStepMapViewCell *)v12 mapView];
    bottomAnchor = [mapView5 bottomAnchor];
    bottomAnchor2 = [(RAPRouteStepMapViewCell *)v12 bottomAnchor];
    v30 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    [v14 addObject:v30];

    mapView6 = [(RAPRouteStepMapViewCell *)v12 mapView];
    heightAnchor = [mapView6 heightAnchor];
    v33 = [heightAnchor constraintEqualToConstant:110.0];
    [v14 addObject:v33];

    [NSLayoutConstraint activateConstraints:v14];
    [(RAPRouteStepMapViewCell *)v12 _setupRouteAnnotationsController];
  }

  return v12;
}

@end