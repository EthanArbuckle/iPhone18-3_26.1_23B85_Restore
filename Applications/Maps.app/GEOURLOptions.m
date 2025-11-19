@interface GEOURLOptions
+ (id)accumulateObjects:(id)a3;
@end

@implementation GEOURLOptions

+ (id)accumulateObjects:(id)a3
{
  v3 = a3;
  if ([v3 count])
  {
    v4 = [v3 firstObject];
    v5 = [v4 copy];

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v6 = [v3 subarrayWithRange:{1, objc_msgSend(v3, "count", 0) - 1}];
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
            v12 = [v11 referralIdentifier];
            [v5 setReferralIdentifier:v12];
          }

          if ([v11 hasRouteHandle])
          {
            v13 = [v11 routeHandle];
            [v5 setRouteHandle:v13];
          }

          if ([v11 hasTimePoint])
          {
            v14 = [v11 timePoint];
            [v5 setTimePoint:v14];
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
            v15 = [v11 centerSpan];
            [v5 setCenterSpan:v15];
          }

          if ([v11 hasCamera])
          {
            [v5 setHasUserTrackingMode:0];
            [v5 setCenterSpan:0];
            v16 = [v11 camera];
            [v5 setCamera:v16];
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