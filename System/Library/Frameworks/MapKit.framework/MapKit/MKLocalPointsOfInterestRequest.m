@interface MKLocalPointsOfInterestRequest
- (BOOL)_isValidCoordinateRegion:(id *)a3;
- (CLLocationCoordinate2D)coordinate;
- (MKCoordinateRegion)region;
- (MKLocalPointsOfInterestRequest)initWithCenterCoordinate:(CLLocationCoordinate2D)coordinate radius:(CLLocationDistance)radius;
- (MKLocalPointsOfInterestRequest)initWithCoordinateRegion:(MKCoordinateRegion)region;
- (double)_deriveRadiusFromCoordinateRegion:(id *)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation MKLocalPointsOfInterestRequest

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

- (CLLocationCoordinate2D)coordinate
{
  latitude = self->_coordinate.latitude;
  longitude = self->_coordinate.longitude;
  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

- (double)_deriveRadiusFromCoordinateRegion:(id *)a3
{
  GEOMapRectForCoordinateRegion();
  v7 = v5 <= v6;
  v8 = v3 + v5 * 0.5;
  v9 = v4 + v6;
  v10 = v6 * 0.5;
  v11 = v4 + v10;
  v12 = v3 + v5;
  if (v7)
  {
    v12 = v8;
    v13 = v9;
  }

  else
  {
    v13 = v4 + v10;
  }

  if (v7)
  {
    v3 = v8;
  }

  else
  {
    v4 = v11;
  }

  return MKMetersBetweenMapPoints(*&v3, *&v12) * 0.5;
}

- (BOOL)_isValidCoordinateRegion:(id *)a3
{
  result = 0;
  if (fabs(v4) <= 180.0)
  {
    return fabs(v3) <= 90.0;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [(MKLocalPointsOfInterestRequest *)self _createdFromRegion];
  v6 = [objc_opt_class() allocWithZone:a3];
  if (v5)
  {
    v7 = [v6 initWithCoordinateRegion:{self->_region.center.latitude, self->_region.center.longitude, self->_region.span.latitudeDelta, self->_region.span.longitudeDelta}];
  }

  else
  {
    v7 = [v6 initWithCenterCoordinate:self->_coordinate.latitude radius:{self->_coordinate.longitude, self->_radius}];
  }

  v8 = v7;
  v9 = [(MKPointOfInterestFilter *)self->_pointOfInterestFilter copy];
  v10 = v8[3];
  v8[3] = v9;

  v8[4] = self->_maxResultCount;
  return v8;
}

- (MKLocalPointsOfInterestRequest)initWithCoordinateRegion:(MKCoordinateRegion)region
{
  longitudeDelta = region.span.longitudeDelta;
  latitudeDelta = region.span.latitudeDelta;
  longitude = region.center.longitude;
  latitude = region.center.latitude;
  v22 = *MEMORY[0x1E69E9840];
  v19.receiver = self;
  v19.super_class = MKLocalPointsOfInterestRequest;
  v7 = [(MKLocalPointsOfInterestRequest *)&v19 init];
  v8 = v7;
  if (!v7)
  {
    goto LABEL_4;
  }

  if ([(MKLocalPointsOfInterestRequest *)v7 _isValidCoordinateRegion:latitude, longitude, latitudeDelta, longitudeDelta])
  {
    [(MKLocalPointsOfInterestRequest *)v8 _clampedCoordinateRegionForCoordinateRegion:latitude, longitude, latitudeDelta, longitudeDelta];
    v8->_region.center.latitude = v9;
    v8->_region.center.longitude = v10;
    v8->_region.span.latitudeDelta = v11;
    v8->_region.span.longitudeDelta = v12;
    v8->_createdFromRegion = 1;
    v8->_coordinate = v8->_region.center;
    [(MKLocalPointsOfInterestRequest *)v8 _deriveRadiusFromCoordinateRegion:?];
    v8->_radius = v13;
LABEL_4:
    v14 = v8;
    goto LABEL_8;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v15 = MEMORY[0x1E696AEC0];
    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%+.8f, %+.8f", *&latitude, *&longitude];
    v17 = [v15 stringWithFormat:@"<center:%@ span:%+.8f, %+.8f>", v16, *&latitudeDelta, *&longitudeDelta];

    *buf = 138543362;
    v21 = v17;
    _os_log_impl(&dword_1A2EA0000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Invalid MKCoordinateRegion provided to MKLocalPointsOfInterestRequest initializer: %{public}@", buf, 0xCu);
  }

  v14 = 0;
LABEL_8:

  return v14;
}

- (MKLocalPointsOfInterestRequest)initWithCenterCoordinate:(CLLocationCoordinate2D)coordinate radius:(CLLocationDistance)radius
{
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  v18 = *MEMORY[0x1E69E9840];
  v15.receiver = self;
  v15.super_class = MKLocalPointsOfInterestRequest;
  v7 = [(MKLocalPointsOfInterestRequest *)&v15 init];
  if (!v7)
  {
    goto LABEL_5;
  }

  v19.latitude = latitude;
  v19.longitude = longitude;
  if (!CLLocationCoordinate2DIsValid(v19))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"%+.8f, %+.8f", *&latitude, *&longitude];
      v13 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      *buf = 138543362;
      v17 = v13;
      _os_log_impl(&dword_1A2EA0000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Invalid coordinate provided to MKLocalPointsOfInterestRequest initializer: %{public}@", buf, 0xCu);
    }

    goto LABEL_10;
  }

  if (radius <= 0.0)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134349056;
      v17 = radius;
      _os_log_impl(&dword_1A2EA0000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Invalid radius provided to MKLocalPointsOfInterestRequest initializer: %{public}f", buf, 0xCu);
    }

LABEL_10:
    v12 = 0;
    goto LABEL_11;
  }

  v7->_coordinate.latitude = latitude;
  v7->_coordinate.longitude = longitude;
  v7->_radius = radius;
  v20.origin.x = MKMapRectMakeWithRadialDistance(latitude, longitude, radius);
  v21 = MKCoordinateRegionForMapRect(v20);
  [(MKLocalPointsOfInterestRequest *)v7 _clampedCoordinateRegionForCoordinateRegion:v21.center.latitude, v21.center.longitude, v21.span.latitudeDelta, v21.span.longitudeDelta];
  v7->_region.center.latitude = v8;
  v7->_region.center.longitude = v9;
  v7->_region.span.latitudeDelta = v10;
  v7->_region.span.longitudeDelta = v11;
LABEL_5:
  v12 = v7;
LABEL_11:

  return v12;
}

@end