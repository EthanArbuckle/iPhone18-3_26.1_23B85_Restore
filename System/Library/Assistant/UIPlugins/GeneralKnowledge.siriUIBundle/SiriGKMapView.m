@interface SiriGKMapView
- (CGSize)sizeThatFits:(CGSize)result;
- (SiriGKMapView)initWithCoordinate:(CLLocationCoordinate2D)a3 mapSpan:(double)a4 mapHeight:(double)a5 calloutTitle:(id)a6;
- (void)layoutSubviews;
- (void)openInMaps;
- (void)setupMap;
@end

@implementation SiriGKMapView

- (SiriGKMapView)initWithCoordinate:(CLLocationCoordinate2D)a3 mapSpan:(double)a4 mapHeight:(double)a5 calloutTitle:(id)a6
{
  longitude = a3.longitude;
  latitude = a3.latitude;
  v12 = a6;
  v21.receiver = self;
  v21.super_class = SiriGKMapView;
  v13 = [(SiriGKMapView *)&v21 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_calloutTitle, a6);
    v14->_coordinate.latitude = latitude;
    v14->_coordinate.longitude = longitude;
    v15 = 175.0;
    if (a5 > 0.0)
    {
      v15 = a5;
    }

    v14->_mapHeight = v15;
    v16 = a4 * 3000.0 * MKMapPointsPerMeterAtLatitude(latitude);
    v22.latitude = latitude;
    v22.longitude = longitude;
    v17 = MKMapPointForCoordinate(v22);
    v14->_boundingRect.origin.x = v17.x - v16 * 0.5;
    v14->_boundingRect.origin.y = v17.y - v16 * 0.5;
    v14->_boundingRect.size.width = v16;
    v14->_boundingRect.size.height = v16;
    v18 = objc_alloc_init(MKPointAnnotation);
    pointAnnotation = v14->_pointAnnotation;
    v14->_pointAnnotation = v18;

    [(MKPointAnnotation *)v14->_pointAnnotation setRepresentation:2];
    [(MKPointAnnotation *)v14->_pointAnnotation setCoordinate:latitude, longitude];
    [(SiriGKMapView *)v14 setupMap];
  }

  return v14;
}

- (void)setupMap
{
  mapView = self->_mapView;
  if (!mapView)
  {
    v4 = [[MKMapView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    v5 = self->_mapView;
    self->_mapView = v4;

    mapView = self->_mapView;
  }

  [(MKMapView *)mapView setUserInteractionEnabled:0];
  [(MKMapView *)self->_mapView setZoomEnabled:0];
  [(MKMapView *)self->_mapView setShowsUserLocation:0];
  [(MKMapView *)self->_mapView setVisibleMapRect:1 animated:self->_boundingRect.origin.x, self->_boundingRect.origin.y, self->_boundingRect.size.width, self->_boundingRect.size.height];
  [(MKMapView *)self->_mapView addAnnotation:self->_pointAnnotation];
  v6 = self->_mapView;

  [(SiriGKMapView *)self addSubview:v6];
}

- (void)openInMaps
{
  v4 = [[MKPlacemark alloc] initWithCoordinate:0 addressDictionary:{self->_coordinate.latitude, self->_coordinate.longitude}];
  v3 = [[MKMapItem alloc] initWithPlacemark:v4];
  [v3 setName:self->_calloutTitle];
  [v3 openInMapsWithLaunchOptions:0];
}

- (CGSize)sizeThatFits:(CGSize)result
{
  mapHeight = self->_mapHeight;
  result.height = mapHeight;
  return result;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = SiriGKMapView;
  [(SiriGKMapView *)&v4 layoutSubviews];
  mapView = self->_mapView;
  [(SiriGKMapView *)self bounds];
  [(MKMapView *)mapView setFrame:?];
}

@end