@interface MKPolygon
+ (MKPolygon)polygonWithCoordinates:(const CLLocationCoordinate2D *)coords count:(NSUInteger)count;
+ (MKPolygon)polygonWithCoordinates:(const CLLocationCoordinate2D *)coords count:(NSUInteger)count interiorPolygons:(NSArray *)interiorPolygons;
+ (MKPolygon)polygonWithPoints:(const MKMapPoint *)points count:(NSUInteger)count;
+ (MKPolygon)polygonWithPoints:(const MKMapPoint *)points count:(NSUInteger)count interiorPolygons:(NSArray *)interiorPolygons;
+ (id)_polygonWithMapRect:(id)a3;
+ (id)polygonEnclosingMapPoints:(id *)a3 count:(unint64_t)a4;
- ($9433BFB5400FDC760880D1BFD6845728)boundingMapRect;
- (BOOL)_determineSelfIntersecting;
- (BOOL)intersectsMapRect:(id)a3;
- (CLLocationCoordinate2D)coordinate;
- (MKPolygon)initWithCoder:(id)a3;
- (id)_initWithGeoJSONCoordinateArrays:(id)a3 error:(id *)a4;
- (id)_initWithGeoJSONObject:(id)a3 error:(id *)a4;
- (id)_initWithPointsNoCopy:(id *)a3 count:(unint64_t)a4 interiorPolygons:(id)a5;
- (void)_calculateBounds;
- (void)_determineSimple;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MKPolygon

- (id)_initWithGeoJSONCoordinateArrays:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([v6 count] < 2)
      {
        v7 = 0;
      }

      else
      {
        v7 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v6, "count") - 1}];
      }

      if ([v6 count] < 2)
      {
LABEL_16:
        v11 = [v6 firstObject];
        VerticesFromGeoJSON = _createVerticesFromGeoJSON(v11, a4);
        if (VerticesFromGeoJSON)
        {
          self = -[MKPolygon _initWithPointsNoCopy:count:interiorPolygons:](self, "_initWithPointsNoCopy:count:interiorPolygons:", VerticesFromGeoJSON, [v11 count], v7);
          v9 = self;
LABEL_19:

          goto LABEL_20;
        }
      }

      else
      {
        v10 = 1;
        while (1)
        {
          v11 = [v6 objectAtIndexedSubscript:v10];
          v12 = _createVerticesFromGeoJSON(v11, a4);
          if (!v12)
          {
            break;
          }

          v13 = -[MKPolygon _initWithPointsNoCopy:count:interiorPolygons:]([MKPolygon alloc], "_initWithPointsNoCopy:count:interiorPolygons:", v12, [v11 count], 0);
          [v7 addObject:v13];

          if (++v10 >= [v6 count])
          {
            goto LABEL_16;
          }
        }
      }

      v9 = 0;
      goto LABEL_19;
    }

    if (a4)
    {
      v8 = @"Polygon geometry coordinates MUST be an array";
      goto LABEL_9;
    }

LABEL_10:
    v9 = 0;
    goto LABEL_20;
  }

  if (!a4)
  {
    goto LABEL_10;
  }

  v8 = @"Polygon geometry is missing value for 'coordinates'";
LABEL_9:
  _errorWithReason(v8);
  *a4 = v9 = 0;
LABEL_20:

  return v9;
}

- (id)_initWithGeoJSONObject:(id)a3 error:(id *)a4
{
  v6 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (a4)
    {
      v11 = @"Polygon object must be a dictionary";
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

  if (v8 != 5)
  {
    if (a4)
    {
      v11 = @"Input is not a Polygon GeoJSON object";
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  v9 = [v6 objectForKeyedSubscript:@"coordinates"];
  self = [(MKPolygon *)self _initWithGeoJSONCoordinateArrays:v9 error:a4];

  v10 = self;
LABEL_10:

  return v10;
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
  v23 = 0;
  v24 = 0;
  v25 = 0;
  std::vector<gm::Matrix<double,2,1>>::reserve(&v23, v4);
  v7 = 0;
  v8 = v24;
  v9 = v25;
  v10 = v23;
  do
  {
    if (v8 >= v9)
    {
      v11 = (v8 - v10) >> 4;
      v12 = v11 + 1;
      if ((v11 + 1) >> 60)
      {
        v25 = v9;
        v23 = v10;
        std::vector<VKRouteInfo * {__strong}>::__throw_length_error[abi:ne200100]();
      }

      if ((v9 - v10) >> 3 > v12)
      {
        v12 = (v9 - v10) >> 3;
      }

      if (v9 - v10 >= 0x7FFFFFFFFFFFFFF0)
      {
        v13 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v13 = v12;
      }

      if (v13)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<gm::Matrix<double,2,1>>>(v13);
      }

      v14 = (16 * v11);
      *v14 = v3[v7];
      v15 = (v14 + 1);
      if (v10 != v8)
      {
        v16 = v10;
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
      if (v10)
      {
        operator delete(v10);
      }

      v10 = 0;
      v8 = v15;
    }

    else
    {
      *v8 = v3[v7];
      v8 += 16;
    }

    ++v7;
  }

  while (v7 != v6);
  __p = v10;
  v21 = v8;
  v22 = v9;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  isSelf = geo::Intersect::isSelfIntersecting<double>(&__p);
  if (__p)
  {
    v21 = __p;
    operator delete(__p);
  }

  return isSelf;
}

- (void)_determineSimple
{
  v3 = [(MKPolygon *)self interiorPolygons];
  v4 = [v3 count];

  if (!v4)
  {
    v5 = [(MKMultiPoint *)self points];
    v6 = [(MKMultiPoint *)self pointCount];
    v7 = v6 - 2;
    if (v6 > 2)
    {
      _Q2 = vsubq_f64(v5[1], *v5);
      _D3 = _Q2.f64[1];
      __asm { FMLA            D1, D3, V2.D[1] }

      _Q3 = vmulq_n_f64(_Q2, 1.0 / sqrt(_D1));
      v16 = &v5[2];
      while (v7)
      {
        _Q4 = vsubq_f64(*v16, v16[-1]);
        _D6 = _Q4.f64[1];
        __asm { FMLA            D5, D6, V4.D[1] }

        _Q4 = vmulq_n_f64(_Q4, 1.0 / sqrt(_D5));
        _Q3.f64[0] = _Q3.f64[1];
        __asm { FMLA            D5, D3, V4.D[1] }

        ++v16;
        --v7;
        _Q3.f64[1] = _Q4.f64[1];
        if (fabs(_D5 + -1.0) >= 2.22044605e-16)
        {
          if ([(MKMultiPoint *)self _isSelfIntersecting:0.0])
          {
            break;
          }

          self->_simple = 1;
          return;
        }
      }
    }
  }

  self->_simple = 0;
}

- (void)_calculateBounds
{
  v23 = *MEMORY[0x1E69E9840];
  x = MKMapRectBoundingMapPoints([(MKMultiPoint *)self points], [(MKMultiPoint *)self pointCount]);
  y = v4;
  width = v6;
  height = v8;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v10 = self->_interiorPolygons;
  v11 = [(NSArray *)v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v11)
  {
    v12 = *v19;
    do
    {
      v13 = 0;
      do
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v10);
        }

        [*(*(&v18 + 1) + 8 * v13) boundingMapRect];
        v26.origin.x = v14;
        v26.origin.y = v15;
        v26.size.width = v16;
        v26.size.height = v17;
        v24.origin.x = x;
        v24.origin.y = y;
        v24.size.width = width;
        v24.size.height = height;
        v25 = MKMapRectUnion(v24, v26);
        x = v25.origin.x;
        y = v25.origin.y;
        width = v25.size.width;
        height = v25.size.height;
        ++v13;
      }

      while (v11 != v13);
      v11 = [(NSArray *)v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }

  [(MKMultiPoint *)self _setBounds:x, y, width, height];
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = MKPolygon;
  [(MKMultiPoint *)&v7 encodeWithCoder:v4];
  v5 = [MEMORY[0x1E696AD98] numberWithDouble:self->_centroid.latitude];
  [v4 encodeObject:v5 forKey:@"MKPolygonCentroidLatitude"];

  v6 = [MEMORY[0x1E696AD98] numberWithDouble:self->_centroid.longitude];
  [v4 encodeObject:v6 forKey:@"MKPolygonCentroidLongitude"];

  [v4 encodeObject:self->_interiorPolygons forKey:@"MKPolygonInteriorPolygons"];
  [v4 encodeBool:self->_isDefinitelyConvex forKey:@"MKPolygonIsDefinitelyConvex"];
}

- (MKPolygon)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = MKPolygon;
  v5 = [(MKMultiPoint *)&v17 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MKPolygonCentroidLatitude"];
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MKPolygonCentroidLongitude"];
    [v6 doubleValue];
    v9 = v8;
    [v7 doubleValue];
    v5->_centroid = CLLocationCoordinate2DMake(v9, v10);
    v11 = MEMORY[0x1E695DFD8];
    v12 = objc_opt_class();
    v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
    v14 = [v4 decodeObjectOfClasses:v13 forKey:@"MKPolygonInteriorPolygons"];
    interiorPolygons = v5->_interiorPolygons;
    v5->_interiorPolygons = v14;

    v5->_isDefinitelyConvex = [v4 decodeBoolForKey:@"MKPolygonIsDefinitelyConvex"];
  }

  return v5;
}

- ($9433BFB5400FDC760880D1BFD6845728)boundingMapRect
{
  v6.receiver = self;
  v6.super_class = MKPolygon;
  [(MKMultiPoint *)&v6 boundingMapRect];
  result.var1.var1 = v5;
  result.var1.var0 = v4;
  result.var0.var1 = v3;
  result.var0.var0 = v2;
  return result;
}

- (BOOL)intersectsMapRect:(id)a3
{
  var1 = a3.var1.var1;
  var0 = a3.var1.var0;
  v5 = a3.var0.var1;
  v6 = a3.var0.var0;
  v35 = *MEMORY[0x1E69E9840];
  if (![(MKPolygon *)self _isDefinitelyConvex]|| [(MKMultiPoint *)self pointCount]<= 2)
  {
    v25.receiver = self;
    v25.super_class = MKPolygon;
    if (![(MKMultiPoint *)&v25 intersectsMapRect:v6, v5, var0, var1])
    {
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v8 = self->_interiorPolygons;
      v9 = [(NSArray *)v8 countByEnumeratingWithState:&v21 objects:v34 count:16];
      if (v9)
      {
        v10 = *v22;
        while (2)
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v22 != v10)
            {
              objc_enumerationMutation(v8);
            }

            if ([*(*(&v21 + 1) + 8 * i) intersectsMapRect:{v6, v5, var0, var1}])
            {

              goto LABEL_25;
            }
          }

          v9 = [(NSArray *)v8 countByEnumeratingWithState:&v21 objects:v34 count:16];
          if (v9)
          {
            continue;
          }

          break;
        }
      }

      LOBYTE(v12) = 0;
      return v12;
    }

LABEL_25:
    LOBYTE(v12) = 1;
    return v12;
  }

  v27.x = v6;
  v27.y = v5;
  v28 = v6 + var0;
  v29 = v5;
  v30 = v6 + var0;
  v31 = v5 + var1;
  v32 = v6;
  v33 = v5 + var1;
  if ((MKSeparatingAxisExistsBetweenPolygonsWithPoints([(MKMultiPoint *)self points], [(MKMultiPoint *)self pointCount], &v27, 4uLL) & 1) == 0 && !MKSeparatingAxisExistsBetweenPolygonsWithPoints(&v27, 4uLL, [(MKMultiPoint *)self points], [(MKMultiPoint *)self pointCount]))
  {
    goto LABEL_25;
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v13 = self->_interiorPolygons;
  v12 = [(NSArray *)v13 countByEnumeratingWithState:&v17 objects:v26 count:16];
  if (v12)
  {
    v14 = *v18;
    while (2)
    {
      for (j = 0; j != v12; ++j)
      {
        if (*v18 != v14)
        {
          objc_enumerationMutation(v13);
        }

        if ([*(*(&v17 + 1) + 8 * j) intersectsMapRect:{v6, v5, var0, var1, v17}])
        {
          LOBYTE(v12) = 1;
          goto LABEL_27;
        }
      }

      v12 = [(NSArray *)v13 countByEnumeratingWithState:&v17 objects:v26 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

LABEL_27:

  return v12;
}

- (CLLocationCoordinate2D)coordinate
{
  v4.receiver = self;
  v4.super_class = MKPolygon;
  [(MKMultiPoint *)&v4 coordinate];
  result.longitude = v3;
  result.latitude = v2;
  return result;
}

- (id)_initWithPointsNoCopy:(id *)a3 count:(unint64_t)a4 interiorPolygons:(id)a5
{
  v8 = a5;
  v14.receiver = self;
  v14.super_class = MKPolygon;
  v9 = [(MKPolygon *)&v14 init];
  if (v9)
  {
    v10 = [v8 copy];
    interiorPolygons = v9->_interiorPolygons;
    v9->_interiorPolygons = v10;

    [(MKMultiPoint *)v9 _assignPoints:a3 count:a4];
    v12 = v9;
  }

  return v9;
}

+ (id)_polygonWithMapRect:(id)a3
{
  v5[8] = *MEMORY[0x1E69E9840];
  v5[0] = *&a3.var0.var0;
  v5[1] = *&a3.var0.var1;
  *&v5[2] = a3.var0.var0 + a3.var1.var0;
  v5[3] = *&a3.var0.var1;
  *&v5[4] = a3.var0.var0 + a3.var1.var0;
  *&v5[5] = a3.var0.var1 + a3.var1.var1;
  v5[6] = *&a3.var0.var0;
  *&v5[7] = a3.var0.var1 + a3.var1.var1;
  v3 = [objc_opt_class() polygonWithPoints:v5 count:4];

  return v3;
}

+ (id)polygonEnclosingMapPoints:(id *)a3 count:(unint64_t)a4
{
  Mutable = CFArrayCreateMutable(0, a4, 0);
  if (a4)
  {
    v8 = a4;
    do
    {
      CFArrayAppendValue(Mutable, a3++);
      --v8;
    }

    while (v8);
  }

  ValueAtIndex = CFArrayGetValueAtIndex(Mutable, 0);
  for (i = 0; i < CFArrayGetCount(Mutable); ++i)
  {
    v11 = CFArrayGetValueAtIndex(Mutable, i);
    if (*v11 < *ValueAtIndex)
    {
      ValueAtIndex = v11;
    }
  }

  v12 = CFArrayCreateMutable(0, 2, 0);
  v13 = ValueAtIndex;
  do
  {
    CFArrayAppendValue(v12, v13);
    if (!CFArrayGetCount(Mutable))
    {
      break;
    }

    v14 = CFArrayGetValueAtIndex(Mutable, 0);
    for (j = 0; j < CFArrayGetCount(Mutable); ++j)
    {
      v16 = CFArrayGetValueAtIndex(Mutable, j);
      v17 = v13[1];
      v18 = v14[1];
      v19 = *v13 == *v14 && v17 == v18;
      if (!v19 && (*v14 - *v13) * (v16[1] - v17) - (*v16 - *v13) * (v18 - v17) <= 0.0)
      {
        v16 = v14;
      }

      v14 = v16;
    }

    if (CFArrayGetCount(v12) < 0 || CFArrayGetCount(v12) >= a4)
    {
      break;
    }

    v20 = *v14 == *ValueAtIndex && v14[1] == ValueAtIndex[1];
    v13 = v14;
  }

  while (!v20);
  Count = CFArrayGetCount(v12);
  v22 = malloc_type_malloc(16 * Count, 0x1000040451B5BE8uLL);
  v23 = v22;
  if (Count >= 1)
  {
    v24 = 0;
    v25 = v22;
    do
    {
      *v25++ = *CFArrayGetValueAtIndex(v12, v24++);
    }

    while (Count != v24);
  }

  CFRelease(Mutable);
  CFRelease(v12);
  v26 = [a1 polygonWithPoints:v23 count:Count];
  [v26 set_isDefinitelyConvex:1];
  free(v23);

  return v26;
}

+ (MKPolygon)polygonWithCoordinates:(const CLLocationCoordinate2D *)coords count:(NSUInteger)count interiorPolygons:(NSArray *)interiorPolygons
{
  v7 = interiorPolygons;
  v8 = objc_alloc_init(objc_opt_class());
  if (v7)
  {
    v9 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:v7];
    v10 = v8[16];
    v8[16] = v9;
  }

  [v8 _setCoordinates:coords count:count];

  return v8;
}

+ (MKPolygon)polygonWithCoordinates:(const CLLocationCoordinate2D *)coords count:(NSUInteger)count
{
  v6 = objc_opt_class();

  return [v6 polygonWithCoordinates:coords count:count interiorPolygons:0];
}

+ (MKPolygon)polygonWithPoints:(const MKMapPoint *)points count:(NSUInteger)count interiorPolygons:(NSArray *)interiorPolygons
{
  v7 = interiorPolygons;
  v8 = objc_alloc_init(objc_opt_class());
  if (v7)
  {
    v9 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:v7];
    v10 = v8[16];
    v8[16] = v9;
  }

  [v8 _setPoints:points count:count];

  return v8;
}

+ (MKPolygon)polygonWithPoints:(const MKMapPoint *)points count:(NSUInteger)count
{
  v6 = objc_opt_class();

  return [v6 polygonWithPoints:points count:count interiorPolygons:0];
}

@end