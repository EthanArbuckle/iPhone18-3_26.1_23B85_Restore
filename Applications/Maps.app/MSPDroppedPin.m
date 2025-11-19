@interface MSPDroppedPin
- (CLLocationCoordinate2D)coordinate;
- (MSPDroppedPin)initWithSearchResult:(id)a3;
@end

@implementation MSPDroppedPin

- (MSPDroppedPin)initWithSearchResult:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = MSPDroppedPin;
  v5 = [(MSPDroppedPin *)&v10 init];
  if (v5)
  {
    if ([v4 type] == 3)
    {
      [v4 coordinate];
      v8 = [[GEOLatLng alloc] initWithLatitude:v6 longitude:v7];
      [(MSPDroppedPin *)v5 setLatLng:v8];

      [v4 timestamp];
      [(MSPDroppedPin *)v5 setTimestamp:?];
      if ([v4 hasFloorOrdinal])
      {
        -[MSPDroppedPin setFloorOrdinal:](v5, "setFloorOrdinal:", [v4 floorOrdinal]);
      }
    }
  }

  return v5;
}

- (CLLocationCoordinate2D)coordinate
{
  v3 = [(MSPDroppedPin *)self latLng];
  [v3 lat];
  v5 = v4;
  v6 = [(MSPDroppedPin *)self latLng];
  [v6 lng];
  v8 = CLLocationCoordinate2DMake(v5, v7);

  latitude = v8.latitude;
  longitude = v8.longitude;
  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

@end