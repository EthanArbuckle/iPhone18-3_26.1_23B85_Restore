@interface TransitClusteredVehicleInfoItem
- (NSString)actionSheetTitle;
- (TransitClusteredVehicleInfoItem)initWithSegment:(id)a3 rideOptionIndex:(unint64_t)a4;
@end

@implementation TransitClusteredVehicleInfoItem

- (NSString)actionSheetTitle
{
  v3 = [(GEOComposedTransitTripRouteSegment *)self->_segment composedRoute];
  v4 = [v3 supportsRideClusters];

  segment = self->_segment;
  if (v4)
  {
    v6 = [(GEOComposedTransitTripRouteSegment *)segment actionSheetDescriptionForRideOption:self->_rideOption];
  }

  else
  {
    v7 = [(GEOComposedTransitTripRouteSegment *)segment boardStep];
    v8 = [v7 transitLine];
    v6 = [v8 name];
  }

  return v6;
}

- (TransitClusteredVehicleInfoItem)initWithSegment:(id)a3 rideOptionIndex:(unint64_t)a4
{
  v6 = a3;
  v10.receiver = self;
  v10.super_class = TransitClusteredVehicleInfoItem;
  v7 = [(TransitClusteredVehicleInfoItem *)&v10 init];
  segment = v7->_segment;
  v7->_segment = v6;
  v7->_rideOption = a4;

  return v7;
}

@end