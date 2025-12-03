@interface DrivingRequestInfoProvider
- (DrivingRequestInfoProvider)initWithPreferences:(id)preferences timing:(id)timing;
- (id)makeRouteAttributesBuilderWithNavigationMode:(unint64_t)mode;
- (unint64_t)maximumRouteCount;
- (void)updateWithRefinedWaypoints:(id)waypoints;
@end

@implementation DrivingRequestInfoProvider

- (unint64_t)maximumRouteCount
{
  maximumRouteCountOverride = [(DrivingRequestInfoProvider *)self maximumRouteCountOverride];

  if (!maximumRouteCountOverride)
  {
    return 3;
  }

  maximumRouteCountOverride2 = [(DrivingRequestInfoProvider *)self maximumRouteCountOverride];
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
  v4 = [DrivingRouteAttributesBuilder alloc];
  drivePreferences = [(DrivingRequestInfoProvider *)self drivePreferences];
  v6 = [(DrivingRouteAttributesBuilder *)v4 initWithDrivePreferences:drivePreferences timing:self->_timing];

  return v6;
}

- (DrivingRequestInfoProvider)initWithPreferences:(id)preferences timing:(id)timing
{
  preferencesCopy = preferences;
  timingCopy = timing;
  v12.receiver = self;
  v12.super_class = DrivingRequestInfoProvider;
  v9 = [(DrivingRequestInfoProvider *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_preferences, preferences);
    objc_storeStrong(&v10->_timing, timing);
  }

  return v10;
}

@end