@interface NavigationCameraSnapshot
- (NavigationCameraSnapshot)init;
- (NavigationCameraSnapshot)initWithCamera:(id)camera tracePlaybackTimeFraction:(double)fraction puckLocation:(id)location;
- (NavigationCameraSnapshot)initWithCoder:(id)coder;
- (double)puckToCenterX;
- (double)puckToCenterY;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NavigationCameraSnapshot

- (double)puckToCenterY
{
  puckLocation = [(NavigationCameraSnapshot *)self puckLocation];
  [puckLocation coordinate];
  v5 = v4;
  v7 = v6;

  camera = [(NavigationCameraSnapshot *)self camera];
  [camera centerCoordinate];
  v10 = v9;
  v12 = v11;

  v18.latitude = v5;
  v18.longitude = v7;
  v13 = 0.0;
  if (CLLocationCoordinate2DIsValid(v18))
  {
    v19.latitude = v10;
    v19.longitude = v12;
    if (CLLocationCoordinate2DIsValid(v19))
    {
      v20.latitude = v5;
      v20.longitude = v7;
      v14 = MKMapPointForCoordinate(v20);
      v21.latitude = v10;
      v21.longitude = v12;
      y = MKMapPointForCoordinate(v21).y;
      v22.x = v14.x;
      v22.y = y;
      v16 = MKMetersBetweenMapPoints(v14, v22);
      if (y <= v14.y)
      {
        return -v16;
      }

      else
      {
        return v16;
      }
    }
  }

  return v13;
}

- (double)puckToCenterX
{
  puckLocation = [(NavigationCameraSnapshot *)self puckLocation];
  [puckLocation coordinate];
  v5 = v4;
  v7 = v6;

  camera = [(NavigationCameraSnapshot *)self camera];
  [camera centerCoordinate];
  v10 = v9;
  v12 = v11;

  v18.latitude = v5;
  v18.longitude = v7;
  v13 = 0.0;
  if (CLLocationCoordinate2DIsValid(v18))
  {
    v19.latitude = v10;
    v19.longitude = v12;
    if (CLLocationCoordinate2DIsValid(v19))
    {
      v20.latitude = v5;
      v20.longitude = v7;
      v14 = MKMapPointForCoordinate(v20);
      v21.latitude = v10;
      v21.longitude = v12;
      x = MKMapPointForCoordinate(v21).x;
      v22.x = x;
      v22.y = v14.y;
      v16 = MKMetersBetweenMapPoints(v14, v22);
      if (x <= v14.x)
      {
        return -v16;
      }

      else
      {
        return v16;
      }
    }
  }

  return v13;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  camera = [(NavigationCameraSnapshot *)self camera];
  [coderCopy encodeObject:camera forKey:@"NavigationCameraSnapshotCamera"];

  [(NavigationCameraSnapshot *)self tracePlaybackTimeFraction];
  [coderCopy encodeDouble:@"NavigationCameraSnapshotTracePlaybackTimeFraction" forKey:?];
  puckLocation = [(NavigationCameraSnapshot *)self puckLocation];
  [coderCopy encodeObject:puckLocation forKey:@"NavigationCameraSnapshotLocation"];
}

- (NavigationCameraSnapshot)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"NavigationCameraSnapshotCamera"];
  [coderCopy decodeDoubleForKey:@"NavigationCameraSnapshotTracePlaybackTimeFraction"];
  v7 = v6;
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"NavigationCameraSnapshotLocation"];

  v9 = [(NavigationCameraSnapshot *)self initWithCamera:v5 tracePlaybackTimeFraction:v8 puckLocation:v7];
  return v9;
}

- (NavigationCameraSnapshot)init
{
  v3 = +[MKMapCamera camera];
  v4 = [(NavigationCameraSnapshot *)self initWithCamera:v3 tracePlaybackTimeFraction:0 puckLocation:0.0];

  return v4;
}

- (NavigationCameraSnapshot)initWithCamera:(id)camera tracePlaybackTimeFraction:(double)fraction puckLocation:(id)location
{
  cameraCopy = camera;
  locationCopy = location;
  v15.receiver = self;
  v15.super_class = NavigationCameraSnapshot;
  v10 = [(NavigationCameraSnapshot *)&v15 init];
  if (v10)
  {
    v11 = [cameraCopy copy];
    camera = v10->_camera;
    v10->_camera = v11;

    v10->_tracePlaybackTimeFraction = fraction;
    objc_storeStrong(&v10->_puckLocation, location);
    v13 = v10;
  }

  return v10;
}

@end