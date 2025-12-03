@interface MKRouteStepPolyline
- (CLLocationCoordinate2D)coordinate;
- (id)_initWithRoute:(id)route range:(_NSRange)range;
- (void)dealloc;
@end

@implementation MKRouteStepPolyline

- (CLLocationCoordinate2D)coordinate
{
  if ([(MKMultiPoint *)self pointCount])
  {
    v5 = MKCoordinateForMapPoint(*([(MKMultiPoint *)self points]+ 16 * [(MKMultiPoint *)self pointCount]- 16));
    longitude = v5.longitude;
    latitude = v5.latitude;
  }

  else
  {
    latitude = *MEMORY[0x1E6985CC0];
    longitude = *(MEMORY[0x1E6985CC0] + 8);
  }

  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

- (void)dealloc
{
  [(MKMultiPoint *)self _assignPoints:0 count:0];
  v3.receiver = self;
  v3.super_class = MKRouteStepPolyline;
  [(MKMultiPoint *)&v3 dealloc];
}

- (id)_initWithRoute:(id)route range:(_NSRange)range
{
  length = range.length;
  location = range.location;
  routeCopy = route;
  v12.receiver = self;
  v12.super_class = MKRouteStepPolyline;
  v9 = [(MKRouteStepPolyline *)&v12 init];
  if (!v9)
  {
    goto LABEL_5;
  }

  if (location + length <= [routeCopy pointCount])
  {
    objc_storeStrong(v9 + 14, route);
    [v9 _assignPoints:objc_msgSend(*(v9 + 14) count:{"points") + 16 * location, length}];
LABEL_5:
    v10 = v9;
    goto LABEL_6;
  }

  v10 = 0;
LABEL_6:

  return v10;
}

@end