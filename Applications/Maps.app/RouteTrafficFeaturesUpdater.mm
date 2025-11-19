@interface RouteTrafficFeaturesUpdater
- (id)_nearestTrafficCameraInFeatures:(id)a3 onRoute:(id)a4 ofType:(int64_t)a5 fromCoordinate:(id)a6;
- (void)updateTrafficFeatures:(id)a3 onRoute:(id)a4 forLocation:(id)a5;
@end

@implementation RouteTrafficFeaturesUpdater

- (id)_nearestTrafficCameraInFeatures:(id)a3 onRoute:(id)a4 ofType:(int64_t)a5 fromCoordinate:(id)a6
{
  v9 = a3;
  v10 = a4;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v11 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = 0;
    v14 = *v24;
    v15 = 3.40282347e38;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v24 != v14)
        {
          objc_enumerationMutation(v9);
        }

        v17 = *(*(&v23 + 1) + 8 * i);
        if ([v17 isCamera])
        {
          v18 = v17;
          if ([v18 type] == a5 && (objc_msgSend(v18, "navigationState") == 2 || objc_msgSend(v18, "navigationState") == 1) && (objc_msgSend(v10, "distanceFromPoint:toPoint:", a6, objc_msgSend(v18, "routeOffset")), v20 = fabs(v19), v20 < v15))
          {
            v21 = v18;

            v13 = v21;
          }

          else
          {
            v20 = v15;
          }

          v15 = v20;
        }
      }

      v12 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v12);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)updateTrafficFeatures:(id)a3 onRoute:(id)a4 forLocation:(id)a5
{
  v14 = a3;
  v8 = a4;
  v9 = a5;
  [v9 speed];
  if (v10 >= 0.0 && ([v9 locationUnreliable] & 1) == 0)
  {
    v11 = [v9 routeMatch];
    v12 = -[RouteTrafficFeaturesUpdater _nearestTrafficCameraInFeatures:onRoute:ofType:fromCoordinate:](self, "_nearestTrafficCameraInFeatures:onRoute:ofType:fromCoordinate:", v14, v8, 1, [v11 routeCoordinate]);

    [v9 speed];
    [v12 setIsAboveSpeedThreshold:{v13 > objc_msgSend(v12, "speedThreshold")}];
  }
}

@end