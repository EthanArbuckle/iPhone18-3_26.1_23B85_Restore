@interface MKMapCameraZoomRange
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToMapCameraZoomRange:(id)a3;
- (MKMapCameraZoomRange)initWithCoder:(id)a3;
- (MKMapCameraZoomRange)initWithMinCenterCoordinateDistance:(CLLocationDistance)minDistance maxCenterCoordinateDistance:(CLLocationDistance)maxDistance;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MKMapCameraZoomRange

- (MKMapCameraZoomRange)initWithCoder:(id)a3
{
  v4 = a3;
  [v4 decodeDoubleForKey:@"MKMapCameraZoomRangeMinDistance"];
  v6 = v5;
  [v4 decodeDoubleForKey:@"MKMapCameraZoomRangeMaxDistance"];
  v8 = v7;
  v9 = [v4 decodeBoolForKey:@"MKMapCameraZoomRangeBouncesZoom"];

  v10 = [(MKMapCameraZoomRange *)self initWithMinCenterCoordinateDistance:v6 maxCenterCoordinateDistance:v8];
  v11 = v10;
  if (v9)
  {
    [(MKMapCameraZoomRange *)v10 _setBouncesZoom:1];
  }

  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeDouble:@"MKMapCameraZoomRangeMinDistance" forKey:self->_minCenterCoordinateDistance];
  [v4 encodeDouble:@"MKMapCameraZoomRangeMaxDistance" forKey:self->_maxCenterCoordinateDistance];
  if (self->_bouncesZoom)
  {
    [v4 encodeBool:1 forKey:@"MKMapCameraZoomRangeBouncesZoom"];
  }
}

- (BOOL)isEqualToMapCameraZoomRange:(id)a3
{
  v4 = a3;
  minCenterCoordinateDistance = self->_minCenterCoordinateDistance;
  [v4 minCenterCoordinateDistance];
  if (minCenterCoordinateDistance == v6 && (maxCenterCoordinateDistance = self->_maxCenterCoordinateDistance, [v4 maxCenterCoordinateDistance], maxCenterCoordinateDistance == v8))
  {
    bouncesZoom = self->_bouncesZoom;
    v10 = bouncesZoom == [v4 _bouncesZoom];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(MKMapCameraZoomRange *)self isEqualToMapCameraZoomRange:v4]&& v4[8] == self->_bouncesZoom;

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_alloc(objc_opt_class()) initWithMinCenterCoordinateDistance:self->_minCenterCoordinateDistance maxCenterCoordinateDistance:self->_maxCenterCoordinateDistance];
  v5 = v4;
  if (v4)
  {
    v4[8] = self->_bouncesZoom;
    v6 = v4;
  }

  return v5;
}

- (MKMapCameraZoomRange)initWithMinCenterCoordinateDistance:(CLLocationDistance)minDistance maxCenterCoordinateDistance:(CLLocationDistance)maxDistance
{
  v17 = *MEMORY[0x1E69E9840];
  v12.receiver = self;
  v12.super_class = MKMapCameraZoomRange;
  v6 = [(MKMapCameraZoomRange *)&v12 init];
  v7 = v6;
  if (!v6)
  {
    goto LABEL_17;
  }

  if (minDistance >= 0.0 || fabs(minDistance + 1.0) < 0.000001)
  {
    v9 = fabs(maxDistance + 1.0) >= 0.000001 && maxDistance < 0.0;
    v10 = minDistance <= maxDistance || maxDistance == -1.0;
    if (v10 && !v9)
    {
      v6->_minCenterCoordinateDistance = minDistance;
      v6->_maxCenterCoordinateDistance = maxDistance;
      v6->_bouncesZoom = 0;
LABEL_17:
      v8 = v6;
      goto LABEL_18;
    }
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134349312;
    v14 = minDistance;
    v15 = 2050;
    v16 = maxDistance;
    _os_log_impl(&dword_1A2EA0000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Unable to create zoom range satisfying min distance %{public}f and max distance %{public}f.", buf, 0x16u);
  }

  v8 = 0;
LABEL_18:

  return v8;
}

@end