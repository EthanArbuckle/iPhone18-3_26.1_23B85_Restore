@interface SAGKMapPod
- (id)_convertedCardSections;
@end

@implementation SAGKMapPod

- (id)_convertedCardSections
{
  v3 = objc_alloc_init(SFMapCardSection);
  v4 = [(SAGKMapPod *)self location];
  v5 = [v4 _convertedLocation];
  [v3 setLocation:v5];

  v6 = objc_alloc_init(SFColor);
  [v6 setRedComponent:1.0];
  [v6 setAlphaComponent:1.0];
  [v3 setPinColor:v6];
  [v3 setInteractive:0];
  [v3 setSizeFormat:0];
  [v3 setPinBehavior:1];
  v7 = [(SAGKMapPod *)self location];
  v8 = [v7 latitude];
  [v8 doubleValue];
  v10 = v9;
  v11 = [(SAGKMapPod *)self location];
  v12 = [v11 longitude];
  [v12 doubleValue];
  CLLocationCoordinate2DMake(v10, v13);

  v14 = [(SAGKMapPod *)self zoomLevel];
  [v14 doubleValue];
  SiriUIMapRectMakeWithZoomLevel();

  v15 = SiriUIMapRegionFromMapRect();
  [v3 setBoundingMapRegion:v15];

  v18 = v3;
  v16 = [NSArray arrayWithObjects:&v18 count:1];

  return v16;
}

@end