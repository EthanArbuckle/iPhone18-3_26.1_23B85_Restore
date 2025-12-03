@interface MKMultiPolygon
- ($9433BFB5400FDC760880D1BFD6845728)_boundingMapRectForPolygons:(id)polygons;
- ($9433BFB5400FDC760880D1BFD6845728)boundingMapRect;
- (CLLocationCoordinate2D)coordinate;
- (MKMultiPolygon)initWithCoder:(id)coder;
- (MKMultiPolygon)initWithPolygons:(NSArray *)polygons;
- (id)_initWithGeoJSONObject:(id)object error:(id *)error;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MKMultiPolygon

- (id)_initWithGeoJSONObject:(id)object error:(id *)error
{
  v27 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (error)
    {
      v19 = @"MultiPolygon object must be a dictionary";
LABEL_17:
      _errorWithReason(v19);
      *error = selfCopy = 0;
      goto LABEL_25;
    }

LABEL_18:
    selfCopy = 0;
    goto LABEL_25;
  }

  v7 = [objectCopy objectForKeyedSubscript:@"type"];
  v8 = _geoJSONGeometryType(v7);

  if (v8 != 6)
  {
    if (error)
    {
      v19 = @"Input is not a MultiPolygon object";
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  v9 = [objectCopy objectForKeyedSubscript:@"coordinates"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v9, "count")}];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v21 = v9;
    v11 = v9;
    v12 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v23;
      while (2)
      {
        v15 = 0;
        do
        {
          if (*v23 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = [[MKPolygon alloc] _initWithGeoJSONCoordinateArrays:*(*(&v22 + 1) + 8 * v15) error:error];
          if (!v16)
          {

            selfCopy = 0;
            goto LABEL_22;
          }

          v17 = v16;
          [v10 addObject:v16];

          ++v15;
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }
    }

    self = [(MKMultiPolygon *)self initWithPolygons:v10];
    selfCopy = self;
LABEL_22:

    v9 = v21;
  }

  else if (error)
  {
    _errorWithReason(@"MultiPolygon coordinates must be an array");
    *error = selfCopy = 0;
  }

  else
  {
    selfCopy = 0;
  }

LABEL_25:
  return selfCopy;
}

- ($9433BFB5400FDC760880D1BFD6845728)boundingMapRect
{
  x = self->_boundingMapRect.origin.x;
  y = self->_boundingMapRect.origin.y;
  width = self->_boundingMapRect.size.width;
  height = self->_boundingMapRect.size.height;
  result.var1.var1 = height;
  result.var1.var0 = width;
  result.var0.var1 = y;
  result.var0.var0 = x;
  return result;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = MKMultiPolygon;
  coderCopy = coder;
  [(MKShape *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_polygons forKey:{@"MKMultiPolygonPolygons", v5.receiver, v5.super_class}];
}

- (MKMultiPolygon)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = MKMultiPolygon;
  v5 = [(MKShape *)&v16 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"MKMultiPolygonPolygons"];
    polygons = v5->_polygons;
    v5->_polygons = v9;

    [(MKMultiPolygon *)v5 _boundingMapRectForPolygons:v5->_polygons];
    v5->_boundingMapRect.origin.x = v11;
    v5->_boundingMapRect.origin.y = v12;
    v5->_boundingMapRect.size.width = v13;
    v5->_boundingMapRect.size.height = v14;
  }

  return v5;
}

- (CLLocationCoordinate2D)coordinate
{
  __asm { FMOV            V2.2D, #0.5 }

  v7 = vaddq_f64(self->_boundingMapRect.origin, vmulq_f64(self->_boundingMapRect.size, _Q2));
  y = v7.y;
  v11 = MKCoordinateForMapPoint(v7);
  longitude = v11.longitude;
  latitude = v11.latitude;
  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

- ($9433BFB5400FDC760880D1BFD6845728)_boundingMapRectForPolygons:(id)polygons
{
  v25 = *MEMORY[0x1E69E9840];
  polygonsCopy = polygons;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v4 = [polygonsCopy countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v21;
    height = 0.0;
    y = INFINITY;
    width = 0.0;
    x = INFINITY;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v21 != v6)
        {
          objc_enumerationMutation(polygonsCopy);
        }

        [*(*(&v20 + 1) + 8 * i) boundingMapRect];
        v29.origin.x = v12;
        v29.origin.y = v13;
        v29.size.width = v14;
        v29.size.height = v15;
        v26.origin.x = x;
        v26.origin.y = y;
        v26.size.width = width;
        v26.size.height = height;
        v27 = MKMapRectUnion(v26, v29);
        x = v27.origin.x;
        y = v27.origin.y;
        width = v27.size.width;
        height = v27.size.height;
      }

      v5 = [polygonsCopy countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v5);
  }

  else
  {
    height = 0.0;
    y = INFINITY;
    width = 0.0;
    x = INFINITY;
  }

  v16 = x;
  v17 = y;
  v18 = width;
  v19 = height;
  result.var1.var1 = v19;
  result.var1.var0 = v18;
  result.var0.var1 = v17;
  result.var0.var0 = v16;
  return result;
}

- (MKMultiPolygon)initWithPolygons:(NSArray *)polygons
{
  v4 = polygons;
  v14.receiver = self;
  v14.super_class = MKMultiPolygon;
  v5 = [(MKMultiPolygon *)&v14 init];
  if (v5)
  {
    v6 = [(NSArray *)v4 copy];
    v7 = v5->_polygons;
    v5->_polygons = v6;

    [(MKMultiPolygon *)v5 _boundingMapRectForPolygons:v4];
    v5->_boundingMapRect.origin.x = v8;
    v5->_boundingMapRect.origin.y = v9;
    v5->_boundingMapRect.size.width = v10;
    v5->_boundingMapRect.size.height = v11;
    v12 = v5;
  }

  return v5;
}

@end