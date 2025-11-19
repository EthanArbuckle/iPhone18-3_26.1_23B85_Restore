@interface MKRouteStepPolyline
- (CLLocationCoordinate2D)coordinate;
- (id)_initWithRoute:(id)a3 range:(_NSRange)a4;
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

- (id)_initWithRoute:(id)a3 range:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v8 = a3;
  v12.receiver = self;
  v12.super_class = MKRouteStepPolyline;
  v9 = [(MKRouteStepPolyline *)&v12 init];
  if (!v9)
  {
    goto LABEL_5;
  }

  if (location + length <= [v8 pointCount])
  {
    objc_storeStrong(v9 + 14, a3);
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