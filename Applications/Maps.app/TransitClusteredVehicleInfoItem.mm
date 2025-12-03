@interface TransitClusteredVehicleInfoItem
- (NSString)actionSheetTitle;
- (TransitClusteredVehicleInfoItem)initWithSegment:(id)segment rideOptionIndex:(unint64_t)index;
@end

@implementation TransitClusteredVehicleInfoItem

- (NSString)actionSheetTitle
{
  composedRoute = [(GEOComposedTransitTripRouteSegment *)self->_segment composedRoute];
  supportsRideClusters = [composedRoute supportsRideClusters];

  segment = self->_segment;
  if (supportsRideClusters)
  {
    name = [(GEOComposedTransitTripRouteSegment *)segment actionSheetDescriptionForRideOption:self->_rideOption];
  }

  else
  {
    boardStep = [(GEOComposedTransitTripRouteSegment *)segment boardStep];
    transitLine = [boardStep transitLine];
    name = [transitLine name];
  }

  return name;
}

- (TransitClusteredVehicleInfoItem)initWithSegment:(id)segment rideOptionIndex:(unint64_t)index
{
  segmentCopy = segment;
  v10.receiver = self;
  v10.super_class = TransitClusteredVehicleInfoItem;
  v7 = [(TransitClusteredVehicleInfoItem *)&v10 init];
  segment = v7->_segment;
  v7->_segment = segmentCopy;
  v7->_rideOption = index;

  return v7;
}

@end