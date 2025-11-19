@interface GEOURLRouteHandle
- (GEOURLRouteHandle)initWithRoute:(id)a3 fidelity:(unint64_t)a4;
@end

@implementation GEOURLRouteHandle

- (GEOURLRouteHandle)initWithRoute:(id)a3 fidelity:(unint64_t)a4
{
  v4 = a4;
  v6 = a3;
  v7 = 0;
  if (v6 && (v4 & 8) != 0)
  {
    v16.receiver = self;
    v16.super_class = GEOURLRouteHandle;
    v8 = [(GEOURLRouteHandle *)&v16 init];
    if (v8)
    {
      v9 = [v6 directionsResponseID];
      [(GEOURLRouteHandle *)v8 setDirectionsResponseID:v9];

      v10 = [v6 serverRouteID];
      [(GEOURLRouteHandle *)v8 setRouteID:v10];

      v11 = [v6 suggestedRoute];
      v12 = [v11 routeHandle];
      [(GEOURLRouteHandle *)v8 setTransitData:v12];

      if ((v4 & 0x20) != 0)
      {
        v13 = [v6 zilchDataArrayToEndOfRouteFromStepIndex:0];
        v14 = [v13 firstObject];
        [(GEOURLRouteHandle *)v8 setZilchPoints:v14];
      }
    }

    self = v8;
    v7 = self;
  }

  return v7;
}

@end