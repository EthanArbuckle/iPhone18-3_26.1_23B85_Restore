@interface MKMapCameraBoundary
- ($9433BFB5400FDC760880D1BFD6845728)_clampedMapRectForMapRect:(id)result;
- (BOOL)_isEmpty;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToMapCameraBoundary:(id)boundary;
- (BOOL)isValidCoordinateRegion:(id *)region;
- (BOOL)isValidMapRect:(id)rect;
- (CLLocationCoordinate2D)_clampedCoordinateForCoordinate:(CLLocationCoordinate2D)coordinate;
- (MKCoordinateRegion)region;
- (MKMapCameraBoundary)initWithCoder:(NSCoder *)coder;
- (MKMapCameraBoundary)initWithCoordinateRegion:(MKCoordinateRegion)region;
- (MKMapCameraBoundary)initWithMapRect:(MKMapRect)mapRect;
- (MKMapRect)mapRect;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MKMapCameraBoundary

- (MKCoordinateRegion)region
{
  latitude = self->_region.center.latitude;
  longitude = self->_region.center.longitude;
  latitudeDelta = self->_region.span.latitudeDelta;
  longitudeDelta = self->_region.span.longitudeDelta;
  result.span.longitudeDelta = longitudeDelta;
  result.span.latitudeDelta = latitudeDelta;
  result.center.longitude = longitude;
  result.center.latitude = latitude;
  return result;
}

- (MKMapRect)mapRect
{
  x = self->_mapRect.origin.x;
  y = self->_mapRect.origin.y;
  width = self->_mapRect.size.width;
  height = self->_mapRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CLLocationCoordinate2D)_clampedCoordinateForCoordinate:(CLLocationCoordinate2D)coordinate
{
  [(VKCameraRegionRestriction *)self->_vkRestriction clampedCoordinate:coordinate.latitude, coordinate.longitude];

  v7 = CLLocationCoordinate2DMake(v3, v4);
  longitude = v7.longitude;
  latitude = v7.latitude;
  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

- (BOOL)_isEmpty
{
  vkRestriction = self->_vkRestriction;
  if (vkRestriction)
  {
    return [(VKCameraRegionRestriction *)vkRestriction isEmpty];
  }

  else
  {
    return 1;
  }
}

- (MKMapCameraBoundary)initWithCoder:(NSCoder *)coder
{
  v4 = coder;
  v24.receiver = self;
  v24.super_class = MKMapCameraBoundary;
  v5 = [(MKMapCameraBoundary *)&v24 init];
  if (v5)
  {
    v6 = [(NSCoder *)v4 decodeObjectOfClass:objc_opt_class() forKey:@"MKMapCameraBoundaryVKRestriction"];
    if (!v6)
    {
      v22 = 0;
      goto LABEL_6;
    }

    vkRestriction = v5->_vkRestriction;
    v5->_vkRestriction = v6;

    [(NSCoder *)v4 decodeDoubleForKey:@"MKMapCameraBoundaryMapRectX"];
    v9 = v8;
    [(NSCoder *)v4 decodeDoubleForKey:@"MKMapCameraBoundaryMapRectY"];
    v11 = v10;
    [(NSCoder *)v4 decodeDoubleForKey:@"MKMapCameraBoundaryMapRectWidth"];
    v13 = v12;
    [(NSCoder *)v4 decodeDoubleForKey:@"MKMapCameraBoundaryMapRectHeight"];
    v5->_mapRect.origin.x = v9;
    v5->_mapRect.origin.y = v11;
    v5->_mapRect.size.width = v13;
    v5->_mapRect.size.height = v14;
    [(NSCoder *)v4 decodeDoubleForKey:@"MKMapCameraBoundaryRegionLatitude"];
    v16 = v15;
    [(NSCoder *)v4 decodeDoubleForKey:@"MKMapCameraBoundaryRegionLongitude"];
    v18 = CLLocationCoordinate2DMake(v16, v17);
    [(NSCoder *)v4 decodeDoubleForKey:@"MKMapCameraBoundaryRegionLatitudeSpan"];
    v20 = v19;
    [(NSCoder *)v4 decodeDoubleForKey:@"MKMapCameraBoundaryRegionLongitudeSpan"];
    v5->_region.center = v18;
    v5->_region.span.latitudeDelta = v20;
    v5->_region.span.longitudeDelta = v21;
  }

  v22 = v5;
LABEL_6:

  return v22;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  vkRestriction = self->_vkRestriction;
  v6 = coderCopy;
  if (vkRestriction)
  {
    [coderCopy encodeObject:vkRestriction forKey:@"MKMapCameraBoundaryVKRestriction"];
    coderCopy = v6;
  }

  [coderCopy encodeDouble:@"MKMapCameraBoundaryRegionLatitude" forKey:self->_region.center.latitude];
  [v6 encodeDouble:@"MKMapCameraBoundaryRegionLongitude" forKey:self->_region.center.longitude];
  [v6 encodeDouble:@"MKMapCameraBoundaryRegionLatitudeSpan" forKey:self->_region.span.latitudeDelta];
  [v6 encodeDouble:@"MKMapCameraBoundaryRegionLongitudeSpan" forKey:self->_region.span.longitudeDelta];
  [v6 encodeDouble:@"MKMapCameraBoundaryMapRectX" forKey:self->_mapRect.origin.x];
  [v6 encodeDouble:@"MKMapCameraBoundaryMapRectY" forKey:self->_mapRect.origin.y];
  [v6 encodeDouble:@"MKMapCameraBoundaryMapRectWidth" forKey:self->_mapRect.size.width];
  [v6 encodeDouble:@"MKMapCameraBoundaryMapRectHeight" forKey:self->_mapRect.size.height];
}

- (BOOL)isEqualToMapCameraBoundary:(id)boundary
{
  [boundary mapRect];
  if (self->_mapRect.origin.x != v7 || self->_mapRect.origin.y != v4)
  {
    return 0;
  }

  if (self->_mapRect.size.height == v6)
  {
    return self->_mapRect.size.width == v5;
  }

  return 0;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(MKMapCameraBoundary *)self isEqualToMapCameraBoundary:equalCopy];

  return v5;
}

- ($9433BFB5400FDC760880D1BFD6845728)_clampedMapRectForMapRect:(id)result
{
  v3 = result.var0.var1 + result.var1.var1;
  if (result.var0.var1 + result.var1.var1 > 268435456.0)
  {
    result.var1.var1 = 268435456.0 - result.var0.var1;
  }

  if (result.var0.var1 < 0.0)
  {
    result.var1.var1 = v3;
    result.var0.var1 = 0.0;
  }

  if (result.var1.var1 < 0.0)
  {
    result.var1.var1 = 0.0;
  }

  v4 = fmin(result.var1.var1, 268435456.0);
  if (result.var1.var0 < 0.0)
  {
    result.var1.var0 = 0.0;
  }

  v5 = fmin(result.var1.var0, 268435456.0);
  if (v5 == 268435456.0)
  {
    result.var0.var0 = 0.0;
  }

  result.var1.var1 = v4;
  result.var1.var0 = v5;
  return result;
}

- (BOOL)isValidCoordinateRegion:(id *)region
{
  result = 0;
  if (fabs(v4) <= 180.0)
  {
    return fabs(v3) <= 90.0;
  }

  return result;
}

- (BOOL)isValidMapRect:(id)rect
{
  v3 = rect.var0.var0 == INFINITY && rect.var0.var1 == INFINITY;
  result = 1;
  if (v3 && rect.var1.var1 == 0.0 && rect.var1.var0 == 0.0)
  {
    return 0;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  x = self->_mapRect.origin.x;
  y = self->_mapRect.origin.y;
  width = self->_mapRect.size.width;
  height = self->_mapRect.size.height;

  return [v4 initWithMapRect:{x, y, width, height}];
}

- (MKMapCameraBoundary)initWithCoordinateRegion:(MKCoordinateRegion)region
{
  longitudeDelta = region.span.longitudeDelta;
  latitudeDelta = region.span.latitudeDelta;
  longitude = region.center.longitude;
  latitude = region.center.latitude;
  v29 = *MEMORY[0x1E69E9840];
  v26.receiver = self;
  v26.super_class = MKMapCameraBoundary;
  v7 = [(MKMapCameraBoundary *)&v26 init];
  v8 = v7;
  if (!v7)
  {
LABEL_10:
    v22 = v8;
    goto LABEL_11;
  }

  if ([(MKMapCameraBoundary *)v7 isValidCoordinateRegion:latitude, longitude, latitudeDelta, longitudeDelta])
  {
    [(MKMapCameraBoundary *)v8 _clampedCoordinateRegionForCoordinateRegion:latitude, longitude, latitudeDelta, longitudeDelta];
    v8->_region.center.latitude = v9;
    v8->_region.center.longitude = v10;
    v8->_region.span.latitudeDelta = v11;
    v8->_region.span.longitudeDelta = v12;
    if (v9 == 0.0)
    {
      v8->_mapRect = MKMapRectWorld;
      v23 = [objc_alloc(MEMORY[0x1E69DF3F8]) initWithMapRegion:0];
      vkRestriction = v8->_vkRestriction;
      v8->_vkRestriction = v23;
    }

    else
    {
      GEOMapRectForCoordinateRegion();
      v8->_mapRect.origin.x = v13;
      v8->_mapRect.origin.y = v14;
      v8->_mapRect.size.width = v15;
      v8->_mapRect.size.height = v16;
      vkRestriction = [objc_alloc(MEMORY[0x1E69A2200]) initWithCoordinateRegion:{v8->_region.center.longitude, v8->_region.center.latitude, v8->_region.span.latitudeDelta, v8->_region.span.longitudeDelta}];
      v17 = [objc_alloc(MEMORY[0x1E69DF3F8]) initWithMapRegion:vkRestriction];
      v18 = v8->_vkRestriction;
      v8->_vkRestriction = v17;
    }

    goto LABEL_10;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v19 = MEMORY[0x1E696AEC0];
    v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%+.8f, %+.8f", *&latitude, *&longitude];
    v21 = [v19 stringWithFormat:@"<center:%@ span:%+.8f, %+.8f>", v20, *&latitudeDelta, *&longitudeDelta];

    *buf = 138543362;
    v28 = v21;
    _os_log_impl(&dword_1A2EA0000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Invalid MKCoordinateRegion provided to MKMapCameraBoundary initializer: %{public}@", buf, 0xCu);
  }

  v22 = 0;
LABEL_11:

  return v22;
}

- (MKMapCameraBoundary)initWithMapRect:(MKMapRect)mapRect
{
  height = mapRect.size.height;
  width = mapRect.size.width;
  y = mapRect.origin.y;
  x = mapRect.origin.x;
  v33 = *MEMORY[0x1E69E9840];
  v30.receiver = self;
  v30.super_class = MKMapCameraBoundary;
  v7 = [(MKMapCameraBoundary *)&v30 init];
  v8 = v7;
  if (!v7)
  {
LABEL_21:
    v27 = v8;
    goto LABEL_22;
  }

  if ([(MKMapCameraBoundary *)v7 isValidMapRect:x, y, width, height])
  {
    [(MKMapCameraBoundary *)v8 _clampedMapRectForMapRect:x, y, width, height];
    v13 = v9;
    v14 = v10;
    v15 = v11;
    v16 = v12;
    v8->_mapRect.origin.x = v9;
    v8->_mapRect.origin.y = v10;
    v8->_mapRect.size.width = v11;
    v8->_mapRect.size.height = v12;
    if (v9 == 0.0 && (v10 == 0.0 ? (v17 = v11 == 268435456.0) : (v17 = 0), v17 ? (v18 = v12 == 268435456.0) : (v18 = 0), v18))
    {
      v8->_region.center = MKCoordinateRegionWorld;
      v8->_region.span = unk_1A30F7CD8;
      v28 = [objc_alloc(MEMORY[0x1E69DF3F8]) initWithMapRegion:0];
      vkRestriction = v8->_vkRestriction;
      v8->_vkRestriction = v28;
    }

    else
    {
      v8->_region = MKCoordinateRegionForMapRect(*&v9);
      if (v15 == 0.0)
      {
        v15 = 0.00000001;
      }

      if (v16 == 0.0)
      {
        v16 = 0.00000001;
      }

      v19 = objc_alloc(MEMORY[0x1E69DF3F8]);
      vkRestriction = [objc_alloc(MEMORY[0x1E69A2200]) initWithMapRect:{v13, v14, v15, v16}];
      v21 = [v19 initWithMapRegion:vkRestriction];
      v22 = v8->_vkRestriction;
      v8->_vkRestriction = v21;
    }

    goto LABEL_21;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v23 = MEMORY[0x1E696AEC0];
    v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"{%.1f, %.1f}", *&x, *&y];
    v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"{%.1f, %.1f}", *&width, *&height];
    v26 = [v23 stringWithFormat:@"{%@, %@}", v24, v25];

    *buf = 138543362;
    v32 = v26;
    _os_log_impl(&dword_1A2EA0000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Invalid MKMapRect provided to MKMapCameraBoundary initializer: %{public}@", buf, 0xCu);
  }

  v27 = 0;
LABEL_22:

  return v27;
}

@end