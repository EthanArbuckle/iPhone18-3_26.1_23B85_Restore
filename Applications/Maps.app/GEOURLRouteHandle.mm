@interface GEOURLRouteHandle
- (GEOURLRouteHandle)initWithRoute:(id)route fidelity:(unint64_t)fidelity;
@end

@implementation GEOURLRouteHandle

- (GEOURLRouteHandle)initWithRoute:(id)route fidelity:(unint64_t)fidelity
{
  fidelityCopy = fidelity;
  routeCopy = route;
  selfCopy = 0;
  if (routeCopy && (fidelityCopy & 8) != 0)
  {
    v16.receiver = self;
    v16.super_class = GEOURLRouteHandle;
    v8 = [(GEOURLRouteHandle *)&v16 init];
    if (v8)
    {
      directionsResponseID = [routeCopy directionsResponseID];
      [(GEOURLRouteHandle *)v8 setDirectionsResponseID:directionsResponseID];

      serverRouteID = [routeCopy serverRouteID];
      [(GEOURLRouteHandle *)v8 setRouteID:serverRouteID];

      suggestedRoute = [routeCopy suggestedRoute];
      routeHandle = [suggestedRoute routeHandle];
      [(GEOURLRouteHandle *)v8 setTransitData:routeHandle];

      if ((fidelityCopy & 0x20) != 0)
      {
        v13 = [routeCopy zilchDataArrayToEndOfRouteFromStepIndex:0];
        firstObject = [v13 firstObject];
        [(GEOURLRouteHandle *)v8 setZilchPoints:firstObject];
      }
    }

    self = v8;
    selfCopy = self;
  }

  return selfCopy;
}

@end