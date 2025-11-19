@interface CLCircularRegion(MKMapItemAdditions)
+ (id)circularRegionFromMapRegion:()MKMapItemAdditions;
@end

@implementation CLCircularRegion(MKMapItemAdditions)

+ (id)circularRegionFromMapRegion:()MKMapItemAdditions
{
  GEOMapRectForMapRegion();
  v9 = MKCoordinateRegionForMapRect(v8);
  latitude = v9.center.latitude;
  longitude = v9.center.longitude;
  v2 = 0;
  if (fabs(v9.center.longitude) <= 180.0 && fabs(v9.center.latitude) <= 90.0)
  {
    v2 = 0;
    if (v9.span.latitudeDelta >= 0.0 && v9.span.latitudeDelta <= 180.0 && v9.span.longitudeDelta >= 0.0 && v9.span.longitudeDelta <= 360.0)
    {
      GEOCalculateDistance();
      v4 = v3;
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<%+.8f, %+.8f> radius %.2f", *&latitude, *&longitude, *&v3];
      v2 = [objc_alloc(MEMORY[0x1E695FBB0]) initWithCenter:v5 radius:latitude identifier:{longitude, v4}];
    }
  }

  return v2;
}

@end