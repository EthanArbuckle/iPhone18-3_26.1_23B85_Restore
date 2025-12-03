@interface MSPDroppedPin
- (CLLocationCoordinate2D)coordinate;
- (MSPDroppedPin)initWithSearchResult:(id)result;
@end

@implementation MSPDroppedPin

- (MSPDroppedPin)initWithSearchResult:(id)result
{
  resultCopy = result;
  v10.receiver = self;
  v10.super_class = MSPDroppedPin;
  v5 = [(MSPDroppedPin *)&v10 init];
  if (v5)
  {
    if ([resultCopy type] == 3)
    {
      [resultCopy coordinate];
      v8 = [[GEOLatLng alloc] initWithLatitude:v6 longitude:v7];
      [(MSPDroppedPin *)v5 setLatLng:v8];

      [resultCopy timestamp];
      [(MSPDroppedPin *)v5 setTimestamp:?];
      if ([resultCopy hasFloorOrdinal])
      {
        -[MSPDroppedPin setFloorOrdinal:](v5, "setFloorOrdinal:", [resultCopy floorOrdinal]);
      }
    }
  }

  return v5;
}

- (CLLocationCoordinate2D)coordinate
{
  latLng = [(MSPDroppedPin *)self latLng];
  [latLng lat];
  v5 = v4;
  latLng2 = [(MSPDroppedPin *)self latLng];
  [latLng2 lng];
  v8 = CLLocationCoordinate2DMake(v5, v7);

  latitude = v8.latitude;
  longitude = v8.longitude;
  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

@end