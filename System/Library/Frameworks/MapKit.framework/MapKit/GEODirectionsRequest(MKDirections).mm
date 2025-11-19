@interface GEODirectionsRequest(MKDirections)
- (void)_commonSetup:()MKDirections;
- (void)initWithDirectionsRequest:()MKDirections origin:destination:withFeedback:;
@end

@implementation GEODirectionsRequest(MKDirections)

- (void)initWithDirectionsRequest:()MKDirections origin:destination:withFeedback:
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [a1 initWithFeedback:a6];
  v14 = v13;
  if (v13)
  {
    [v13 _commonSetup:v10];
    v15 = [v11 geoWaypointTyped];
    [v14 addWaypointTyped:v15];

    v16 = [v12 geoWaypointTyped];
    [v14 addWaypointTyped:v16];

    if (GEOConfigGetBOOL())
    {
      v17 = [MEMORY[0x1E69A2398] sharedPlatform];
      v18 = [v17 clientCapabilities];
      v19 = [v18 copy];

      [v19 setRouteOptionsSupported:0];
      [v14 setClientCapabilities:v19];
    }
  }

  return v14;
}

- (void)_commonSetup:()MKDirections
{
  v4 = a3;
  v5 = _routeAttributesForMKDirectionsRequest(v4);
  [a1 setRouteAttributes:v5];

  LODWORD(v5) = [v4 requestsAlternateRoutes];
  if (v5)
  {
    v6 = 3;
  }

  else
  {
    v6 = 1;
  }

  [a1 setMainTransportTypeMaxRouteCount:v6];
  v8 = +[MKLocationManager sharedLocationManager];
  if ([v8 hasLocation] && (objc_msgSend(v8, "isLastLocationStale") & 1) == 0)
  {
    v7 = [v8 currentLocation];
    [a1 setCurrentUserLocation:v7];
  }
}

@end