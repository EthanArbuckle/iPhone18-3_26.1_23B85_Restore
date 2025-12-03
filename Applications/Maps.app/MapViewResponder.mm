@interface MapViewResponder
- (MKMapView)mapView;
- (MapViewResponder)init;
- (MapViewResponder)initWithMapView:(id)view;
- (MapViewResponderHandling)target;
- (void)_nonselectingTapGestureRecognizerAction:(id)action;
- (void)dealloc;
@end

@implementation MapViewResponder

- (MapViewResponderHandling)target
{
  WeakRetained = objc_loadWeakRetained(&self->_target);

  return WeakRetained;
}

- (MKMapView)mapView
{
  WeakRetained = objc_loadWeakRetained(&self->_mapView);

  return WeakRetained;
}

- (void)_nonselectingTapGestureRecognizerAction:(id)action
{
  actionCopy = action;
  target = [(MapViewResponder *)self target];
  mapView = [(MapViewResponder *)self mapView];
  mapView2 = [(MapViewResponder *)self mapView];
  [actionCopy locationInView:mapView2];
  v8 = v7;
  v10 = v9;

  [target didTapMapView:mapView atPoint:{v8, v10}];
}

- (void)dealloc
{
  WeakRetained = objc_loadWeakRetained(&self->_mapView);
  _nonselectingTapGestureRecognizer = [WeakRetained _nonselectingTapGestureRecognizer];
  [_nonselectingTapGestureRecognizer removeTarget:self action:0];

  v5.receiver = self;
  v5.super_class = MapViewResponder;
  [(MapViewResponder *)&v5 dealloc];
}

- (MapViewResponder)init
{
  v3 = objc_alloc_init(MKMapView);
  v4 = [(MapViewResponder *)self initWithMapView:v3];

  return v4;
}

- (MapViewResponder)initWithMapView:(id)view
{
  viewCopy = view;
  v10.receiver = self;
  v10.super_class = MapViewResponder;
  v5 = [(MapViewResponder *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_mapView, viewCopy);
    _nonselectingTapGestureRecognizer = [viewCopy _nonselectingTapGestureRecognizer];
    [_nonselectingTapGestureRecognizer addTarget:v6 action:"_nonselectingTapGestureRecognizerAction:"];

    v8 = v6;
  }

  return v6;
}

@end