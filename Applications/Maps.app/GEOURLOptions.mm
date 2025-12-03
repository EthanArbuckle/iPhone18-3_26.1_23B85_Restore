@interface GEOURLOptions
+ (id)accumulateObjects:(id)objects;
@end

@implementation GEOURLOptions

+ (id)accumulateObjects:(id)objects
{
  objectsCopy = objects;
  if ([objectsCopy count])
  {
    firstObject = [objectsCopy firstObject];
    v5 = [firstObject copy];

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v6 = [objectsCopy subarrayWithRange:{1, objc_msgSend(objectsCopy, "count", 0) - 1}];
    v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v19;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v19 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v18 + 1) + 8 * i);
          if ([v11 hasEnableTraffic])
          {
            [v5 setEnableTraffic:{objc_msgSend(v11, "enableTraffic")}];
          }

          if ([v11 hasMapType])
          {
            [v5 setMapType:{objc_msgSend(v11, "mapType")}];
          }

          if ([v11 hasTransportType])
          {
            [v5 setTransportType:{objc_msgSend(v11, "transportType")}];
          }

          if ([v11 hasReferralIdentifier])
          {
            referralIdentifier = [v11 referralIdentifier];
            [v5 setReferralIdentifier:referralIdentifier];
          }

          if ([v11 hasRouteHandle])
          {
            routeHandle = [v11 routeHandle];
            [v5 setRouteHandle:routeHandle];
          }

          if ([v11 hasTimePoint])
          {
            timePoint = [v11 timePoint];
            [v5 setTimePoint:timePoint];
          }

          if ([v11 hasConnectedToCar])
          {
            [v5 setConnectedToCar:{objc_msgSend(v11, "connectedToCar")}];
          }

          if ([v11 hasUserTrackingMode])
          {
            [v5 setCamera:0];
            [v5 setCenterSpan:0];
            [v5 setUserTrackingMode:{objc_msgSend(v11, "userTrackingMode")}];
          }

          if ([v11 hasCenterSpan])
          {
            [v5 setCenterSpan:0];
            [v5 setHasUserTrackingMode:0];
            centerSpan = [v11 centerSpan];
            [v5 setCenterSpan:centerSpan];
          }

          if ([v11 hasCamera])
          {
            [v5 setHasUserTrackingMode:0];
            [v5 setCenterSpan:0];
            camera = [v11 camera];
            [v5 setCamera:camera];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v8);
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end