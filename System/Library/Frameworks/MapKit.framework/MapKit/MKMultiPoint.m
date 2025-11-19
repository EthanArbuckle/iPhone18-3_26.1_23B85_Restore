@interface MKMultiPoint
- ($9433BFB5400FDC760880D1BFD6845728)boundingMapRect;
- (BOOL)_determineSelfIntersecting;
- (CGFloat)locationAtPointIndex:(NSUInteger)index;
- (CLLocationCoordinate2D)coordinate;
- (MKMultiPoint)initWithCoder:(id)a3;
- (NSArray)locationsAtPointIndexes:(NSIndexSet *)indexes;
- (id)_initWithGeoJSONObject:(id)a3 error:(id *)a4;
- (void)_assignPoints:(id *)a3 count:(unint64_t)a4;
- (void)_calculateBounds;
- (void)_setCoordinates:(const CLLocationCoordinate2D *)a3 elevations:(const double *)a4 count:(unint64_t)a5;
- (void)_setPoints:(id *)a3 count:(unint64_t)a4;
- (void)_wrapAroundTheDateline:(const CLLocationCoordinate2D *)a3 elevations:(const double *)a4 count:(unint64_t)a5;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)getCoordinates:(CLLocationCoordinate2D *)coords range:(NSRange)range;
@end

@implementation MKMultiPoint

- (id)_initWithGeoJSONObject:(id)a3 error:(id *)a4
{
  v6 = a3;
  v15.receiver = self;
  v15.super_class = MKMultiPoint;
  v7 = [(MKMultiPoint *)&v15 init];
  if (!v7)
  {
    goto LABEL_11;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (a4)
    {
      v13 = @"MultiPoint object must be a dictionary";
LABEL_10:
      _errorWithReason(v13);
      *a4 = v12 = 0;
      goto LABEL_14;
    }

LABEL_11:
    v12 = 0;
    goto LABEL_14;
  }

  v8 = [v6 objectForKeyedSubscript:@"type"];
  v9 = _geoJSONGeometryType(v8);

  if (v9 != 2)
  {
    if (a4)
    {
      v13 = @"Input is not a MultiPoint GeoJSON object";
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  v10 = [v6 objectForKeyedSubscript:@"coordinates"];
  VerticesFromGeoJSON = _createVerticesFromGeoJSON(v10, a4);
  if (VerticesFromGeoJSON)
  {
    -[MKMultiPoint _assignPoints:count:](v7, "_assignPoints:count:", VerticesFromGeoJSON, [v10 count]);
    v12 = v7;
  }

  else
  {
    v12 = 0;
  }

LABEL_14:
  return v12;
}

- (NSArray)locationsAtPointIndexes:(NSIndexSet *)indexes
{
  v4 = indexes;
  if ([(NSIndexSet *)v4 count]&& [(NSIndexSet *)v4 lastIndex]>= self->_pointCount)
  {
    v16 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695DA20] reason:@"Invalid index" userInfo:0];
    objc_exception_throw(v16);
  }

  [(MKMultiPoint *)self _mapPointsLength];
  v6 = v5;
  v7 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSIndexSet count](v4, "count")}];
  if ([(NSIndexSet *)v4 containsIndex:0])
  {
    [v7 addObject:&unk_1F1611920];
  }

  v8 = 0;
  v9 = 0.0;
  for (i = 1; ; ++i)
  {
    v11 = [(NSIndexSet *)v4 lastIndex];
    v12 = self->_pointCount - 1;
    if (v11 < v12)
    {
      v12 = [(NSIndexSet *)v4 lastIndex];
    }

    if (i > v12)
    {
      break;
    }

    v13 = &self->_points[v8];
    v9 = v9 + sqrt((v13[1].var1 - v13->var1) * (v13[1].var1 - v13->var1) + (v13[1].var0 - v13->var0) * (v13[1].var0 - v13->var0));
    if ([(NSIndexSet *)v4 containsIndex:i])
    {
      v14 = [MEMORY[0x1E696AD98] numberWithDouble:v9 / v6];
      [v7 addObject:v14];
    }

    ++v8;
  }

  return v7;
}

- (CGFloat)locationAtPointIndex:(NSUInteger)index
{
  if (self->_pointCount <= index)
  {
    v11 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695DA20] reason:@"Invalid index" userInfo:0];
    objc_exception_throw(v11);
  }

  if (index)
  {
    v3 = self->_points + 1;
    v4 = 0.0;
    do
    {
      var0 = v3[-1].var0;
      var1 = v3[-1].var1;
      v7 = v3->var0;
      v8 = v3->var1;
      ++v3;
      v4 = v4 + sqrt((v8 - var1) * (v8 - var1) + (v7 - var0) * (v7 - var0));
      --index;
    }

    while (index);
  }

  else
  {
    v4 = 0.0;
  }

  [(MKMultiPoint *)self _mapPointsLength];
  return v4 / v9;
}

- (BOOL)_determineSelfIntersecting
{
  v3 = [(MKMultiPoint *)self points];
  v4 = [(MKMultiPoint *)self pointCount];
  if (v4 < 3)
  {
    return 0;
  }

  v6 = v4;
  __p = 0;
  v21 = 0;
  v22 = 0;
  std::vector<gm::Matrix<double,2,1>>::reserve(&__p, v4);
  v7 = 0;
  v8 = v21;
  v9 = v22;
  do
  {
    if (v8 >= v9)
    {
      v11 = __p;
      v12 = (v8 - __p) >> 4;
      v13 = v12 + 1;
      if ((v12 + 1) >> 60)
      {
        std::vector<VKRouteInfo * {__strong}>::__throw_length_error[abi:ne200100]();
      }

      if ((v9 - __p) >> 3 > v13)
      {
        v13 = (v9 - __p) >> 3;
      }

      if (v9 - __p >= 0x7FFFFFFFFFFFFFF0)
      {
        v14 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v14 = v13;
      }

      if (v14)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<gm::Matrix<double,2,1>>>(v14);
      }

      v15 = (16 * v12);
      *v15 = v3[v7];
      v10 = (v15 + 1);
      if (v11 != v8)
      {
        v16 = v11;
        v17 = 0;
        do
        {
          v18 = *v16;
          v16 += 16;
          *v17++ = v18;
        }

        while (v16 != v8);
      }

      v9 = 0;
      __p = 0;
      v22 = 0;
      if (v11)
      {
        operator delete(v11);
      }
    }

    else
    {
      *v8 = v3[v7];
      v10 = v8 + 16;
    }

    v21 = v10;
    ++v7;
    v8 = v10;
  }

  while (v7 != v6);
  isSelf = geo::Intersect::isSelfIntersecting<double>(&__p);
  if (__p)
  {
    v21 = __p;
    operator delete(__p);
  }

  return isSelf;
}

uint64_t __35__MKMultiPoint__isSelfIntersecting__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _determineSelfIntersecting];
  *(*(a1 + 32) + 104) = result;
  return result;
}

uint64_t __32__MKMultiPoint__mapPointsLength__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) points];
  result = [*(a1 + 32) pointCount];
  v4 = result - 1;
  if (result == 1)
  {
    v8 = 0.0;
  }

  else
  {
    v6 = *v2;
    v5 = v2[1];
    v7 = v2 + 3;
    v8 = 0.0;
    do
    {
      v9 = *(v7 - 1);
      v10 = *v7;
      v8 = v8 + sqrt((*v7 - v5) * (*v7 - v5) + (v9 - v6) * (v9 - v6));
      v7 += 2;
      v5 = v10;
      v6 = v9;
      --v4;
    }

    while (v4);
  }

  *(*(a1 + 32) + 88) = v8;
  return result;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = MKMultiPoint;
  [(MKShape *)&v7 encodeWithCoder:v4];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_pointCount];
  [v4 encodeObject:v5 forKey:@"MKMultiPointPointCount"];

  pointCount = self->_pointCount;
  if (pointCount)
  {
    [v4 encodeBytes:self->_points length:16 * pointCount forKey:@"MKMultiPointPoints"];
  }
}

- (MKMultiPoint)initWithCoder:(id)a3
{
  v18[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v16.receiver = self;
  v16.super_class = MKMultiPoint;
  v5 = [(MKShape *)&v16 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MKMultiPointPointCount"];
    v7 = [v6 unsignedIntegerValue];
    v15 = 0;
    v8 = v4;
    v9 = [v4 decodeBytesForKey:@"MKMultiPointPoints" returnedLength:&v15];
    if (!v9 || v7 != v15 >> 4)
    {
      v11 = MEMORY[0x1E696ABC0];
      v17 = *MEMORY[0x1E695E618];
      v18[0] = @"points bytes were not the expected length";
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:{1, v15}];
      v13 = [v11 errorWithDomain:*MEMORY[0x1E696A250] code:4864 userInfo:v12];
      [v4 failWithError:v13];

      v10 = 0;
      goto LABEL_7;
    }

    [(MKMultiPoint *)v5 _setPoints:v9 count:v7];
  }

  v10 = v5;
LABEL_7:

  return v10;
}

- (CLLocationCoordinate2D)coordinate
{
  __asm { FMOV            V2.2D, #0.5 }

  v7 = vaddq_f64(self->_boundingRect.origin, vmulq_f64(self->_boundingRect.size, _Q2));
  y = v7.y;
  v11 = MKCoordinateForMapPoint(v7);
  longitude = v11.longitude;
  latitude = v11.latitude;
  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

- (void)getCoordinates:(CLLocationCoordinate2D *)coords range:(NSRange)range
{
  pointCount = self->_pointCount;
  v5 = pointCount - range.location;
  if (pointCount > range.location)
  {
    length = range.length;
    v8 = 0;
    location = range.location;
    p_longitude = &coords->longitude;
    do
    {
      if (v8 >= length)
      {
        break;
      }

      *(p_longitude - 1) = MKCoordinateForMapPoint(self->_points[location]);
      ++v8;
      ++location;
      p_longitude += 2;
    }

    while (v5 != v8);
  }
}

- (void)_assignPoints:(id *)a3 count:(unint64_t)a4
{
  self->_points = a3;
  self->_pointCount = a4;
  [(MKMultiPoint *)self _calculateBounds];

  [(MKMultiPoint *)self _pointsDidChange];
}

- (void)_setPoints:(id *)a3 count:(unint64_t)a4
{
  points = self->_points;
  if (points)
  {
    free(points);
    self->_points = 0;
  }

  if (a4 >> 60)
    v9 = {;
    objc_exception_throw(v9);
  }

  v8 = malloc_type_malloc(16 * a4, 0x1000040451B5BE8uLL);
  self->_points = v8;
  memcpy(v8, a3, 16 * a4);
  self->_pointCount = a4;
  [(MKMultiPoint *)self _calculateBounds];

  [(MKMultiPoint *)self _pointsDidChange];
}

- (void)_setCoordinates:(const CLLocationCoordinate2D *)a3 elevations:(const double *)a4 count:(unint64_t)a5
{
  points = self->_points;
  if (points)
  {
    free(points);
    self->_points = 0;
  }

  elevations = self->_elevations;
  if (elevations)
  {
    free(elevations);
    self->_elevations = 0;
  }

  self->_pointCount = a5;
  if (a5)
  {
    self->_points = malloc_type_malloc(16 * a5, 0x1000040451B5BE8uLL);
    if (a4)
    {
      self->_elevations = malloc_type_malloc(8 * a5, 0x100004000313F17uLL);
    }

    [(MKMultiPoint *)self _wrapAroundTheDateline:a3 elevations:a4 count:a5];
  }

  else
  {
    self->_points = 0;
    self->_elevations = 0;
  }

  [(MKMultiPoint *)self _calculateBounds];

  [(MKMultiPoint *)self _pointsDidChange];
}

- (void)_wrapAroundTheDateline:(const CLLocationCoordinate2D *)a3 elevations:(const double *)a4 count:(unint64_t)a5
{
  if (a5)
  {
    v9 = 0;
    p_longitude = &a3->longitude;
    p_var1 = &self->_points->var1;
    v12 = 0.0;
    v13 = &a3->longitude;
    do
    {
      v14 = *p_longitude;
      if (vabdd_f64(*p_longitude, *v13) > 180.0)
      {
        if (v14 < *v13)
        {
          v12 = v12 + 268435456.0;
        }

        else
        {
          v12 = v12 + -268435456.0;
        }
      }

      *(p_var1 - 1) = v12 + MKTilePointForCoordinate(*(p_longitude - 1), v14, 21.0);
      *p_var1 = v15;
      if (a4)
      {
        elevations = self->_elevations;
        if (elevations)
        {
          elevations[v9] = a4[v9];
        }
      }

      v13 = &a3[v9++].longitude;
      p_var1 += 2;
      p_longitude += 2;
    }

    while (a5 != v9);
  }
}

- (void)_calculateBounds
{
  self->_boundingRect.origin.x = MKMapRectBoundingMapPoints(self->_points, self->_pointCount);
  self->_boundingRect.origin.y = v3;
  self->_boundingRect.size.width = v4;
  self->_boundingRect.size.height = v5;
}

- ($9433BFB5400FDC760880D1BFD6845728)boundingMapRect
{
  x = self->_boundingRect.origin.x;
  y = self->_boundingRect.origin.y;
  width = self->_boundingRect.size.width;
  height = self->_boundingRect.size.height;
  result.var1.var1 = height;
  result.var1.var0 = width;
  result.var0.var1 = y;
  result.var0.var0 = x;
  return result;
}

- (void)dealloc
{
  points = self->_points;
  if (points)
  {
    free(points);
  }

  v4.receiver = self;
  v4.super_class = MKMultiPoint;
  [(MKMultiPoint *)&v4 dealloc];
}

@end