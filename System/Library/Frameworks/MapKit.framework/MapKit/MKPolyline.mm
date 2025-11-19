@interface MKPolyline
+ (MKPolyline)polylineWithCoordinates:(const CLLocationCoordinate2D *)a3 elevations:(const double *)a4 count:(unint64_t)a5 elevationCorrection:(BOOL)a6;
+ (MKPolyline)polylineWithCoordinates:(const CLLocationCoordinate2D *)coords count:(NSUInteger)count;
+ (MKPolyline)polylineWithPoints:(const MKMapPoint *)points count:(NSUInteger)count;
- ($9433BFB5400FDC760880D1BFD6845728)boundingMapRect;
- (BOOL)intersectsMapRect:(id)a3;
- (CLLocationCoordinate2D)coordinate;
- (MKPolyline)initWithCoder:(id)a3;
- (id)_initWithGeoJSONObject:(id)a3 error:(id *)a4;
- (id)_initWithGeoJSONPoints:(id)a3 error:(id *)a4;
- (void)_calculateBounds;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MKPolyline

- (id)_initWithGeoJSONPoints:(id)a3 error:(id *)a4
{
  v6 = a3;
  v10.receiver = self;
  v10.super_class = MKPolyline;
  v7 = [(MKPolyline *)&v10 init];
  if (v7)
  {
    VerticesFromGeoJSON = _createVerticesFromGeoJSON(v6, a4);
    if (VerticesFromGeoJSON)
    {
      -[MKMultiPoint _assignPoints:count:](v7, "_assignPoints:count:", VerticesFromGeoJSON, [v6 count]);
      VerticesFromGeoJSON = v7;
    }
  }

  else
  {
    VerticesFromGeoJSON = 0;
  }

  return VerticesFromGeoJSON;
}

- (id)_initWithGeoJSONObject:(id)a3 error:(id *)a4
{
  v6 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (a4)
    {
      v11 = @"LineString object must be a dictionary";
LABEL_8:
      _errorWithReason(v11);
      *a4 = v10 = 0;
      goto LABEL_10;
    }

LABEL_9:
    v10 = 0;
    goto LABEL_10;
  }

  v7 = [v6 objectForKeyedSubscript:@"type"];
  v8 = _geoJSONGeometryType(v7);

  if (v8 != 3)
  {
    if (a4)
    {
      v11 = @"Input is not a LineString GeoJSON object";
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  v9 = [v6 objectForKeyedSubscript:@"coordinates"];
  self = [(MKPolyline *)self _initWithGeoJSONPoints:v9 error:a4];

  v10 = self;
LABEL_10:

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = MKPolyline;
  [(MKMultiPoint *)&v3 encodeWithCoder:a3];
}

- (MKPolyline)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = MKPolyline;
  return [(MKMultiPoint *)&v4 initWithCoder:a3];
}

- ($9433BFB5400FDC760880D1BFD6845728)boundingMapRect
{
  v6.receiver = self;
  v6.super_class = MKPolyline;
  [(MKMultiPoint *)&v6 boundingMapRect];
  result.var1.var1 = v5;
  result.var1.var0 = v4;
  result.var0.var1 = v3;
  result.var0.var0 = v2;
  return result;
}

- (BOOL)intersectsMapRect:(id)a3
{
  v4.receiver = self;
  v4.super_class = MKPolyline;
  return [(MKMultiPoint *)&v4 intersectsMapRect:a3.var0.var0, a3.var0.var1, a3.var1.var0, a3.var1.var1];
}

- (CLLocationCoordinate2D)coordinate
{
  v4.receiver = self;
  v4.super_class = MKPolyline;
  [(MKMultiPoint *)&v4 coordinate];
  result.longitude = v3;
  result.latitude = v2;
  return result;
}

- (void)_calculateBounds
{
  v3 = objc_autoreleasePoolPush();
  v4 = [(MKMultiPoint *)self points];
  v5 = [(MKMultiPoint *)self pointCount];
  if (v5)
  {
    v6 = MKMapRectBoundingMapPoints(v4, v5);
  }

  else
  {
    v8 = 0.0;
    v7 = INFINITY;
    v6 = INFINITY;
    v9 = 0.0;
  }

  [(MKMultiPoint *)self _setBounds:v6, v7, v8, v9];

  objc_autoreleasePoolPop(v3);
}

+ (MKPolyline)polylineWithCoordinates:(const CLLocationCoordinate2D *)a3 elevations:(const double *)a4 count:(unint64_t)a5 elevationCorrection:(BOOL)a6
{
  v6 = a6;
  v10 = objc_alloc_init(objc_opt_class());
  [v10 _setCoordinates:a3 elevations:a4 count:a5];
  [v10 setNeedsElevationCorrection:v6];

  return v10;
}

+ (MKPolyline)polylineWithCoordinates:(const CLLocationCoordinate2D *)coords count:(NSUInteger)count
{
  v6 = objc_opt_class();

  return [v6 polylineWithCoordinates:coords elevations:0 count:count elevationCorrection:0];
}

+ (MKPolyline)polylineWithPoints:(const MKMapPoint *)points count:(NSUInteger)count
{
  v6 = objc_alloc_init(objc_opt_class());
  [v6 _setPoints:points count:count];

  return v6;
}

@end