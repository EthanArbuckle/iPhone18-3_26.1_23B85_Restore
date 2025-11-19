@interface NavigationCameraSnapshot
- (NavigationCameraSnapshot)init;
- (NavigationCameraSnapshot)initWithCamera:(id)a3 tracePlaybackTimeFraction:(double)a4 puckLocation:(id)a5;
- (NavigationCameraSnapshot)initWithCoder:(id)a3;
- (double)puckToCenterX;
- (double)puckToCenterY;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NavigationCameraSnapshot

- (double)puckToCenterY
{
  v3 = [(NavigationCameraSnapshot *)self puckLocation];
  [v3 coordinate];
  v5 = v4;
  v7 = v6;

  v8 = [(NavigationCameraSnapshot *)self camera];
  [v8 centerCoordinate];
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
  v3 = [(NavigationCameraSnapshot *)self puckLocation];
  [v3 coordinate];
  v5 = v4;
  v7 = v6;

  v8 = [(NavigationCameraSnapshot *)self camera];
  [v8 centerCoordinate];
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

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(NavigationCameraSnapshot *)self camera];
  [v4 encodeObject:v5 forKey:@"NavigationCameraSnapshotCamera"];

  [(NavigationCameraSnapshot *)self tracePlaybackTimeFraction];
  [v4 encodeDouble:@"NavigationCameraSnapshotTracePlaybackTimeFraction" forKey:?];
  v6 = [(NavigationCameraSnapshot *)self puckLocation];
  [v4 encodeObject:v6 forKey:@"NavigationCameraSnapshotLocation"];
}

- (NavigationCameraSnapshot)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"NavigationCameraSnapshotCamera"];
  [v4 decodeDoubleForKey:@"NavigationCameraSnapshotTracePlaybackTimeFraction"];
  v7 = v6;
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"NavigationCameraSnapshotLocation"];

  v9 = [(NavigationCameraSnapshot *)self initWithCamera:v5 tracePlaybackTimeFraction:v8 puckLocation:v7];
  return v9;
}

- (NavigationCameraSnapshot)init
{
  v3 = +[MKMapCamera camera];
  v4 = [(NavigationCameraSnapshot *)self initWithCamera:v3 tracePlaybackTimeFraction:0 puckLocation:0.0];

  return v4;
}

- (NavigationCameraSnapshot)initWithCamera:(id)a3 tracePlaybackTimeFraction:(double)a4 puckLocation:(id)a5
{
  v8 = a3;
  v9 = a5;
  v15.receiver = self;
  v15.super_class = NavigationCameraSnapshot;
  v10 = [(NavigationCameraSnapshot *)&v15 init];
  if (v10)
  {
    v11 = [v8 copy];
    camera = v10->_camera;
    v10->_camera = v11;

    v10->_tracePlaybackTimeFraction = a4;
    objc_storeStrong(&v10->_puckLocation, a5);
    v13 = v10;
  }

  return v10;
}

@end