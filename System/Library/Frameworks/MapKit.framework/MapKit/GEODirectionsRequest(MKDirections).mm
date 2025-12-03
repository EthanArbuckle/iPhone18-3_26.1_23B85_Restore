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
  v13 = [self initWithFeedback:a6];
  v14 = v13;
  if (v13)
  {
    [v13 _commonSetup:v10];
    geoWaypointTyped = [v11 geoWaypointTyped];
    [v14 addWaypointTyped:geoWaypointTyped];

    geoWaypointTyped2 = [v12 geoWaypointTyped];
    [v14 addWaypointTyped:geoWaypointTyped2];

    if (GEOConfigGetBOOL())
    {
      mEMORY[0x1E69A2398] = [MEMORY[0x1E69A2398] sharedPlatform];
      clientCapabilities = [mEMORY[0x1E69A2398] clientCapabilities];
      v19 = [clientCapabilities copy];

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
  [self setRouteAttributes:v5];

  LODWORD(v5) = [v4 requestsAlternateRoutes];
  if (v5)
  {
    v6 = 3;
  }

  else
  {
    v6 = 1;
  }

  [self setMainTransportTypeMaxRouteCount:v6];
  v8 = +[MKLocationManager sharedLocationManager];
  if ([v8 hasLocation] && (objc_msgSend(v8, "isLastLocationStale") & 1) == 0)
  {
    currentLocation = [v8 currentLocation];
    [self setCurrentUserLocation:currentLocation];
  }
}

@end