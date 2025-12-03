@interface SAGKMapPod
- (id)_convertedCardSections;
@end

@implementation SAGKMapPod

- (id)_convertedCardSections
{
  v3 = objc_alloc_init(SFMapCardSection);
  location = [(SAGKMapPod *)self location];
  _convertedLocation = [location _convertedLocation];
  [v3 setLocation:_convertedLocation];

  v6 = objc_alloc_init(SFColor);
  [v6 setRedComponent:1.0];
  [v6 setAlphaComponent:1.0];
  [v3 setPinColor:v6];
  [v3 setInteractive:0];
  [v3 setSizeFormat:0];
  [v3 setPinBehavior:1];
  location2 = [(SAGKMapPod *)self location];
  latitude = [location2 latitude];
  [latitude doubleValue];
  v10 = v9;
  location3 = [(SAGKMapPod *)self location];
  longitude = [location3 longitude];
  [longitude doubleValue];
  CLLocationCoordinate2DMake(v10, v13);

  zoomLevel = [(SAGKMapPod *)self zoomLevel];
  [zoomLevel doubleValue];
  SiriUIMapRectMakeWithZoomLevel();

  v15 = SiriUIMapRegionFromMapRect();
  [v3 setBoundingMapRegion:v15];

  v18 = v3;
  v16 = [NSArray arrayWithObjects:&v18 count:1];

  return v16;
}

@end