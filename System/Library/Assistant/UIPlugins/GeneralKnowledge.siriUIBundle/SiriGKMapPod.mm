@interface SiriGKMapPod
- (SiriGKMapPod)initWithMapPod:(id)a3 snippetTitle:(id)a4 mapHeight:(double)a5;
- (id)viewAtIndex:(int64_t)a3;
@end

@implementation SiriGKMapPod

- (SiriGKMapPod)initWithMapPod:(id)a3 snippetTitle:(id)a4 mapHeight:(double)a5
{
  v8 = a3;
  v9 = a4;
  v30.receiver = self;
  v30.super_class = SiriGKMapPod;
  v10 = [(SiriGKMapPod *)&v30 init];
  if (v10)
  {
    v11 = [v8 location];
    v12 = [v11 latitude];
    [v12 doubleValue];
    v14 = v13;
    v15 = [v8 location];
    v16 = [v15 longitude];
    [v16 doubleValue];
    v18 = v17;

    v19 = [v8 zoomLevel];
    [v19 doubleValue];
    v21 = v20;

    v22 = [v8 showButton];
    LOBYTE(v12) = [v22 BOOLValue];

    if (v12)
    {
      v23 = [[SiriGKMapButtonView alloc] initWithCoordinate:v9 mapSpan:v14 mapTitle:v18, v21];
      v24 = &OBJC_IVAR___SiriGKMapPod__mapButtonView;
    }

    else
    {
      v23 = [[SiriGKMapView alloc] initWithCoordinate:v9 mapSpan:v14 mapHeight:v18 calloutTitle:v21, a5];
      v24 = &OBJC_IVAR___SiriGKMapPod__mapView;
    }

    v25 = *v24;
    v26 = *(&v10->super.super.isa + v25);
    *(&v10->super.super.isa + v25) = v23;

    v27 = *(&v10->super.super.isa + v25);
    v28 = [v8 punchOut];
    [v27 setCommand:v28];
  }

  return v10;
}

- (id)viewAtIndex:(int64_t)a3
{
  mapView = self->_mapView;
  if (!mapView)
  {
    mapView = self->_mapButtonView;
  }

  return mapView;
}

@end