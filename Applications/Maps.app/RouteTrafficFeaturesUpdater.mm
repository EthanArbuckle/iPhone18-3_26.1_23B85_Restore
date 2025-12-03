@interface RouteTrafficFeaturesUpdater
- (id)_nearestTrafficCameraInFeatures:(id)features onRoute:(id)route ofType:(int64_t)type fromCoordinate:(id)coordinate;
- (void)updateTrafficFeatures:(id)features onRoute:(id)route forLocation:(id)location;
@end

@implementation RouteTrafficFeaturesUpdater

- (id)_nearestTrafficCameraInFeatures:(id)features onRoute:(id)route ofType:(int64_t)type fromCoordinate:(id)coordinate
{
  featuresCopy = features;
  routeCopy = route;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v11 = [featuresCopy countByEnumeratingWithState:&v23 objects:v27 count:16];
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
          objc_enumerationMutation(featuresCopy);
        }

        v17 = *(*(&v23 + 1) + 8 * i);
        if ([v17 isCamera])
        {
          v18 = v17;
          if ([v18 type] == type && (objc_msgSend(v18, "navigationState") == 2 || objc_msgSend(v18, "navigationState") == 1) && (objc_msgSend(routeCopy, "distanceFromPoint:toPoint:", coordinate, objc_msgSend(v18, "routeOffset")), v20 = fabs(v19), v20 < v15))
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

      v12 = [featuresCopy countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v12);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)updateTrafficFeatures:(id)features onRoute:(id)route forLocation:(id)location
{
  featuresCopy = features;
  routeCopy = route;
  locationCopy = location;
  [locationCopy speed];
  if (v10 >= 0.0 && ([locationCopy locationUnreliable] & 1) == 0)
  {
    routeMatch = [locationCopy routeMatch];
    v12 = -[RouteTrafficFeaturesUpdater _nearestTrafficCameraInFeatures:onRoute:ofType:fromCoordinate:](self, "_nearestTrafficCameraInFeatures:onRoute:ofType:fromCoordinate:", featuresCopy, routeCopy, 1, [routeMatch routeCoordinate]);

    [locationCopy speed];
    [v12 setIsAboveSpeedThreshold:{v13 > objc_msgSend(v12, "speedThreshold")}];
  }
}

@end