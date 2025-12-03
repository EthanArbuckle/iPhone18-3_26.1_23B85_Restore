@interface RouteCellularCoverageDebugOverlay
- ($873BFAB23BBB6E2F0B0288ED2F935688)boundingMapRect;
- (CLLocationCoordinate2D)coordinate;
- (RouteCellularCoverageDebugOverlay)init;
- (RouteCellularCoverageDebugOverlay)initWithRoute:(id)route;
@end

@implementation RouteCellularCoverageDebugOverlay

- ($873BFAB23BBB6E2F0B0288ED2F935688)boundingMapRect
{
  x = self->_boundingMapRect.origin.x;
  y = self->_boundingMapRect.origin.y;
  width = self->_boundingMapRect.size.width;
  height = self->_boundingMapRect.size.height;
  result.var1.var1 = height;
  result.var1.var0 = width;
  result.var0.var1 = y;
  result.var0.var0 = x;
  return result;
}

- (CLLocationCoordinate2D)coordinate
{
  v4 = CLLocationCoordinate2DMake(0.0, 0.0);
  longitude = v4.longitude;
  latitude = v4.latitude;
  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

- (RouteCellularCoverageDebugOverlay)initWithRoute:(id)route
{
  routeCopy = route;
  v22.receiver = self;
  v22.super_class = RouteCellularCoverageDebugOverlay;
  v6 = [(RouteCellularCoverageDebugOverlay *)&v22 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_route, route);
    boundingMapRegion = [routeCopy boundingMapRegion];
    GEOMapRectForMapRegion();
    v7->_boundingMapRect.origin.x = v9;
    v7->_boundingMapRect.origin.y = v10;
    v7->_boundingMapRect.size.width = v11;
    v7->_boundingMapRect.size.height = v12;

    __asm { FMOV            V2.2D, #0.5 }

    v18 = vmlaq_f64(v7->_boundingMapRect.origin, _Q2, v7->_boundingMapRect.size);
    y = v18.y;
    v7->_coordinate = MKCoordinateForMapPoint(v18);
    v20 = v7;
  }

  return v7;
}

- (RouteCellularCoverageDebugOverlay)init
{
  result = [NSException raise:@"GEOMethodNotAvailableException" format:@"This method is unavailable."];
  __break(1u);
  return result;
}

@end