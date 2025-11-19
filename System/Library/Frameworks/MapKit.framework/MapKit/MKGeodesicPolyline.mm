@interface MKGeodesicPolyline
+ (MKGeodesicPolyline)polylineWithCoordinates:(const CLLocationCoordinate2D *)coords count:(NSUInteger)count;
+ (MKGeodesicPolyline)polylineWithPoints:(const MKMapPoint *)points count:(NSUInteger)count;
@end

@implementation MKGeodesicPolyline

+ (MKGeodesicPolyline)polylineWithCoordinates:(const CLLocationCoordinate2D *)coords count:(NSUInteger)count
{
  if (count)
  {
    v4 = count;
    if (count == 1)
    {
      v6 = objc_alloc_init(MKGeodesicPolyline);
      [(MKMultiPoint *)v6 _setCoordinates:coords count:1];
    }

    else
    {
      v6 = objc_alloc_init(MKGeodesicPolyline);
      for (i = coords + 1; --v4; i = v8)
      {
        v8 = i + 1;
        GEOGeodesicEvaluate();
      }

      [MKMultiPoint _setCoordinates:v6 count:"_setCoordinates:count:"];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (MKGeodesicPolyline)polylineWithPoints:(const MKMapPoint *)points count:(NSUInteger)count
{
  if (count)
  {
    v4 = count;
    if (count == 1)
    {
      v6 = objc_alloc_init(MKGeodesicPolyline);
      [(MKMultiPoint *)v6 _setPoints:points count:1];
    }

    else
    {
      v6 = objc_alloc_init(MKGeodesicPolyline);
      for (i = &points[1]; --v4; ++i)
      {
        MKCoordinateForMapPoint(i[-1]);
        MKCoordinateForMapPoint(*i);
        GEOGeodesicEvaluate();
      }

      [MKMultiPoint _setCoordinates:v6 count:"_setCoordinates:count:"];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end