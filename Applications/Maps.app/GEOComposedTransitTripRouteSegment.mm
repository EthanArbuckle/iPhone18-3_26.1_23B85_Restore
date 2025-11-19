@interface GEOComposedTransitTripRouteSegment
- (NSArray)alternateRouteItemsForTransitInfoLabel;
- (id)clusteredRouteVehicleInfoItemsIgnoringSelectedVehicle:(BOOL)a3;
@end

@implementation GEOComposedTransitTripRouteSegment

- (id)clusteredRouteVehicleInfoItemsIgnoringSelectedVehicle:(BOOL)a3
{
  v3 = a3;
  v5 = [[NSMutableArray alloc] initWithCapacity:{-[GEOComposedTransitTripRouteSegment rideOptionsCount](self, "rideOptionsCount")}];
  if ([(GEOComposedTransitTripRouteSegment *)self rideOptionsCount])
  {
    v6 = 0;
    do
    {
      if (!v3 || v6 != [(GEOComposedTransitTripRouteSegment *)self selectedRideOptionIndex])
      {
        v7 = [[TransitClusteredVehicleInfoItem alloc] initWithSegment:self rideOptionIndex:v6];
        [v5 addObject:v7];
      }

      ++v6;
    }

    while (v6 < [(GEOComposedTransitTripRouteSegment *)self rideOptionsCount]);
  }

  v8 = [v5 copy];

  return v8;
}

- (NSArray)alternateRouteItemsForTransitInfoLabel
{
  v2 = [(GEOComposedTransitTripRouteSegment *)self clusteredRouteVehicleInfoItemsIgnoringSelectedVehicle:1];
  v3 = sub_100021DB0(v2, &stru_1016310D0);
  v4 = [v3 mutableCopy];

  if ([v4 count])
  {
    v5 = +[NSBundle mainBundle];
    v6 = [v5 localizedStringForKey:@"Stepping_Transit_Other_Options" value:@"localized string not found" table:0];
    [v4 insertObject:v6 atIndex:0];
  }

  v7 = [v4 copy];

  return v7;
}

@end