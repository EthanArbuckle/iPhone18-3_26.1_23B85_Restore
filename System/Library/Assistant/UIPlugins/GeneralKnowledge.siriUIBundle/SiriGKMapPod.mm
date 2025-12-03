@interface SiriGKMapPod
- (SiriGKMapPod)initWithMapPod:(id)pod snippetTitle:(id)title mapHeight:(double)height;
- (id)viewAtIndex:(int64_t)index;
@end

@implementation SiriGKMapPod

- (SiriGKMapPod)initWithMapPod:(id)pod snippetTitle:(id)title mapHeight:(double)height
{
  podCopy = pod;
  titleCopy = title;
  v30.receiver = self;
  v30.super_class = SiriGKMapPod;
  v10 = [(SiriGKMapPod *)&v30 init];
  if (v10)
  {
    location = [podCopy location];
    latitude = [location latitude];
    [latitude doubleValue];
    v14 = v13;
    location2 = [podCopy location];
    longitude = [location2 longitude];
    [longitude doubleValue];
    v18 = v17;

    zoomLevel = [podCopy zoomLevel];
    [zoomLevel doubleValue];
    v21 = v20;

    showButton = [podCopy showButton];
    LOBYTE(latitude) = [showButton BOOLValue];

    if (latitude)
    {
      height = [[SiriGKMapButtonView alloc] initWithCoordinate:titleCopy mapSpan:v14 mapTitle:v18, v21];
      v24 = &OBJC_IVAR___SiriGKMapPod__mapButtonView;
    }

    else
    {
      height = [[SiriGKMapView alloc] initWithCoordinate:titleCopy mapSpan:v14 mapHeight:v18 calloutTitle:v21, height];
      v24 = &OBJC_IVAR___SiriGKMapPod__mapView;
    }

    v25 = *v24;
    v26 = *(&v10->super.super.isa + v25);
    *(&v10->super.super.isa + v25) = height;

    v27 = *(&v10->super.super.isa + v25);
    punchOut = [podCopy punchOut];
    [v27 setCommand:punchOut];
  }

  return v10;
}

- (id)viewAtIndex:(int64_t)index
{
  mapView = self->_mapView;
  if (!mapView)
  {
    mapView = self->_mapButtonView;
  }

  return mapView;
}

@end