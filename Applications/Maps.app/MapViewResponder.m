@interface MapViewResponder
- (MKMapView)mapView;
- (MapViewResponder)init;
- (MapViewResponder)initWithMapView:(id)a3;
- (MapViewResponderHandling)target;
- (void)_nonselectingTapGestureRecognizerAction:(id)a3;
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

- (void)_nonselectingTapGestureRecognizerAction:(id)a3
{
  v4 = a3;
  v11 = [(MapViewResponder *)self target];
  v5 = [(MapViewResponder *)self mapView];
  v6 = [(MapViewResponder *)self mapView];
  [v4 locationInView:v6];
  v8 = v7;
  v10 = v9;

  [v11 didTapMapView:v5 atPoint:{v8, v10}];
}

- (void)dealloc
{
  WeakRetained = objc_loadWeakRetained(&self->_mapView);
  v4 = [WeakRetained _nonselectingTapGestureRecognizer];
  [v4 removeTarget:self action:0];

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

- (MapViewResponder)initWithMapView:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = MapViewResponder;
  v5 = [(MapViewResponder *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_mapView, v4);
    v7 = [v4 _nonselectingTapGestureRecognizer];
    [v7 addTarget:v6 action:"_nonselectingTapGestureRecognizerAction:"];

    v8 = v6;
  }

  return v6;
}

@end