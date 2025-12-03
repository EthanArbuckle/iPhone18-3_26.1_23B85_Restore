@interface MKPolyline
+ (MKPolyline)polylineWithCoordinates:(const CLLocationCoordinate2D *)coordinates elevations:(const double *)elevations count:(unint64_t)count elevationCorrection:(BOOL)correction;
+ (MKPolyline)polylineWithCoordinates:(const CLLocationCoordinate2D *)coords count:(NSUInteger)count;
+ (MKPolyline)polylineWithPoints:(const MKMapPoint *)points count:(NSUInteger)count;
- ($9433BFB5400FDC760880D1BFD6845728)boundingMapRect;
- (BOOL)intersectsMapRect:(id)rect;
- (CLLocationCoordinate2D)coordinate;
- (MKPolyline)initWithCoder:(id)coder;
- (id)_initWithGeoJSONObject:(id)object error:(id *)error;
- (id)_initWithGeoJSONPoints:(id)points error:(id *)error;
- (void)_calculateBounds;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MKPolyline

- (id)_initWithGeoJSONPoints:(id)points error:(id *)error
{
  pointsCopy = points;
  v10.receiver = self;
  v10.super_class = MKPolyline;
  v7 = [(MKPolyline *)&v10 init];
  if (v7)
  {
    VerticesFromGeoJSON = _createVerticesFromGeoJSON(pointsCopy, error);
    if (VerticesFromGeoJSON)
    {
      -[MKMultiPoint _assignPoints:count:](v7, "_assignPoints:count:", VerticesFromGeoJSON, [pointsCopy count]);
      VerticesFromGeoJSON = v7;
    }
  }

  else
  {
    VerticesFromGeoJSON = 0;
  }

  return VerticesFromGeoJSON;
}

- (id)_initWithGeoJSONObject:(id)object error:(id *)error
{
  objectCopy = object;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (error)
    {
      v11 = @"LineString object must be a dictionary";
LABEL_8:
      _errorWithReason(v11);
      *error = selfCopy = 0;
      goto LABEL_10;
    }

LABEL_9:
    selfCopy = 0;
    goto LABEL_10;
  }

  v7 = [objectCopy objectForKeyedSubscript:@"type"];
  v8 = _geoJSONGeometryType(v7);

  if (v8 != 3)
  {
    if (error)
    {
      v11 = @"Input is not a LineString GeoJSON object";
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  v9 = [objectCopy objectForKeyedSubscript:@"coordinates"];
  self = [(MKPolyline *)self _initWithGeoJSONPoints:v9 error:error];

  selfCopy = self;
LABEL_10:

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = MKPolyline;
  [(MKMultiPoint *)&v3 encodeWithCoder:coder];
}

- (MKPolyline)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = MKPolyline;
  return [(MKMultiPoint *)&v4 initWithCoder:coder];
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

- (BOOL)intersectsMapRect:(id)rect
{
  v4.receiver = self;
  v4.super_class = MKPolyline;
  return [(MKMultiPoint *)&v4 intersectsMapRect:rect.var0.var0, rect.var0.var1, rect.var1.var0, rect.var1.var1];
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
  points = [(MKMultiPoint *)self points];
  pointCount = [(MKMultiPoint *)self pointCount];
  if (pointCount)
  {
    v6 = MKMapRectBoundingMapPoints(points, pointCount);
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

+ (MKPolyline)polylineWithCoordinates:(const CLLocationCoordinate2D *)coordinates elevations:(const double *)elevations count:(unint64_t)count elevationCorrection:(BOOL)correction
{
  correctionCopy = correction;
  v10 = objc_alloc_init(objc_opt_class());
  [v10 _setCoordinates:coordinates elevations:elevations count:count];
  [v10 setNeedsElevationCorrection:correctionCopy];

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