@interface RAPRouteStepMapViewCell
- (MKMapView)mapView;
- (RAPRouteStepMapViewCell)initWithIdentifier:(id)a3 route:(id)a4 routeStep:(id)a5;
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

    v6 = [(GEOComposedRoute *)self->_route transportType];
    v11 = _NSConcreteStackBlock;
    v12 = 3221225472;
    v13 = sub_10061A258;
    v14 = &unk_101624188;
    v15 = self;
    v16 = v6 == 1;
    v7 = objc_retainBlock(&v11);
    if (v6 == 1)
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

    v5 = [(RAPRouteStepMapViewCell *)self mapView];
    [(RouteAnnotationsController *)self->_routeAnnotationsController setMapView:v5];

    v6 = [[RouteAnnotationsConfiguration alloc] initWithRoute:self->_route];
    [(RouteAnnotationsController *)self->_routeAnnotationsController setConfiguration:v6];
  }
}

- (RAPRouteStepMapViewCell)initWithIdentifier:(id)a3 route:(id)a4 routeStep:(id)a5
{
  v9 = a4;
  v10 = a5;
  v35.receiver = self;
  v35.super_class = RAPRouteStepMapViewCell;
  v11 = [(RAPRouteStepMapViewCell *)&v35 initWithStyle:0 reuseIdentifier:a3];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_route, a4);
    objc_storeStrong(&v12->_routeStep, a5);
    v13 = [(RAPRouteStepMapViewCell *)v12 mapView];
    [(RAPRouteStepMapViewCell *)v12 addSubview:v13];

    v14 = +[NSMutableArray array];
    v15 = [(RAPRouteStepMapViewCell *)v12 mapView];
    v16 = [v15 topAnchor];
    v17 = [(RAPRouteStepMapViewCell *)v12 topAnchor];
    v18 = [v16 constraintEqualToAnchor:v17];
    [v14 addObject:v18];

    v19 = [(RAPRouteStepMapViewCell *)v12 mapView];
    v20 = [v19 widthAnchor];
    v21 = [(RAPRouteStepMapViewCell *)v12 widthAnchor];
    v22 = [v20 constraintEqualToAnchor:v21];
    [v14 addObject:v22];

    v23 = [(RAPRouteStepMapViewCell *)v12 mapView];
    v24 = [v23 leadingAnchor];
    v25 = [(RAPRouteStepMapViewCell *)v12 leadingAnchor];
    v26 = [v24 constraintEqualToAnchor:v25];
    [v14 addObject:v26];

    v27 = [(RAPRouteStepMapViewCell *)v12 mapView];
    v28 = [v27 bottomAnchor];
    v29 = [(RAPRouteStepMapViewCell *)v12 bottomAnchor];
    v30 = [v28 constraintEqualToAnchor:v29];
    [v14 addObject:v30];

    v31 = [(RAPRouteStepMapViewCell *)v12 mapView];
    v32 = [v31 heightAnchor];
    v33 = [v32 constraintEqualToConstant:110.0];
    [v14 addObject:v33];

    [NSLayoutConstraint activateConstraints:v14];
    [(RAPRouteStepMapViewCell *)v12 _setupRouteAnnotationsController];
  }

  return v12;
}

@end