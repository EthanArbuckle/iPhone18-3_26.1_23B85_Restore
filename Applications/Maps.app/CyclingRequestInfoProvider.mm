@interface CyclingRequestInfoProvider
- (CyclingRequestInfoProvider)initWithPreferences:(id)preferences timing:(id)timing;
- (id)makeRouteAttributesBuilderWithNavigationMode:(unint64_t)mode;
- (unint64_t)maximumRouteCount;
- (void)updateWithRefinedWaypoints:(id)waypoints;
@end

@implementation CyclingRequestInfoProvider

- (unint64_t)maximumRouteCount
{
  maximumRouteCountOverride = [(CyclingRequestInfoProvider *)self maximumRouteCountOverride];

  if (!maximumRouteCountOverride)
  {
    return 3;
  }

  maximumRouteCountOverride2 = [(CyclingRequestInfoProvider *)self maximumRouteCountOverride];
  unsignedIntegerValue = [maximumRouteCountOverride2 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (void)updateWithRefinedWaypoints:(id)waypoints
{
  waypointsCopy = waypoints;
  origin = [waypointsCopy origin];
  geoMapItem = [origin geoMapItem];
  timezone = [geoMapItem timezone];

  destination = [waypointsCopy destination];

  geoMapItem2 = [destination geoMapItem];
  timezone2 = [geoMapItem2 timezone];

  timing = self->_timing;
  if (timing)
  {
    [(RoutePlanningTiming *)timing timepoint];
  }

  else
  {
    memset(v14, 0, sizeof(v14));
  }

  v12 = [RoutePlanningTiming timingWithTimePoint:v14 departureTimeZone:timezone arrivalTimeZone:timezone2];
  v13 = self->_timing;
  self->_timing = v12;
}

- (id)makeRouteAttributesBuilderWithNavigationMode:(unint64_t)mode
{
  v4 = [CyclingRouteAttributesBuilder alloc];
  cyclePreferences = [(CyclingRequestInfoProvider *)self cyclePreferences];
  v6 = [(CyclingRouteAttributesBuilder *)v4 initWihCyclePreferences:cyclePreferences];

  return v6;
}

- (CyclingRequestInfoProvider)initWithPreferences:(id)preferences timing:(id)timing
{
  preferencesCopy = preferences;
  timingCopy = timing;
  v12.receiver = self;
  v12.super_class = CyclingRequestInfoProvider;
  v9 = [(CyclingRequestInfoProvider *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_preferences, preferences);
    objc_storeStrong(&v10->_timing, timing);
  }

  return v10;
}

@end