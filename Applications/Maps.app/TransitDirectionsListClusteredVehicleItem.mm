@interface TransitDirectionsListClusteredVehicleItem
- (TransitDirectionsListClusteredVehicleItem)initWithClusteredRouteSegment:(id)segment;
@end

@implementation TransitDirectionsListClusteredVehicleItem

- (TransitDirectionsListClusteredVehicleItem)initWithClusteredRouteSegment:(id)segment
{
  segmentCopy = segment;
  v10.receiver = self;
  v10.super_class = TransitDirectionsListClusteredVehicleItem;
  v6 = [(TransitDirectionsListItem *)&v10 initWithInstructions:0];
  v7 = v6;
  if (v6)
  {
    [(TransitDirectionsListItem *)v6 setType:4];
    objc_storeStrong(&v7->_clusteredSegment, segment);
    v8 = v7;
  }

  return v7;
}

@end