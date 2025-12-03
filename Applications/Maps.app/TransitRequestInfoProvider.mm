@interface TransitRequestInfoProvider
- (TransitRequestInfoProvider)initWithPreferences:(id)preferences timing:(id)timing;
- (id)makeRouteAttributesBuilderWithNavigationMode:(unint64_t)mode;
- (unint64_t)maximumRouteCount;
- (void)updateWithRefinedWaypoints:(id)waypoints;
@end

@implementation TransitRequestInfoProvider

- (unint64_t)maximumRouteCount
{
  v2 = +[UIDevice currentDevice];
  [v2 userInterfaceIdiom];

  return GEOConfigGetUInteger();
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
  v3 = [[TransitRouteAttributesBuilder alloc] initWithTransitPreferences:self->_preferences timing:self->_timing];

  return v3;
}

- (TransitRequestInfoProvider)initWithPreferences:(id)preferences timing:(id)timing
{
  preferencesCopy = preferences;
  timingCopy = timing;
  v12.receiver = self;
  v12.super_class = TransitRequestInfoProvider;
  v9 = [(TransitRequestInfoProvider *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_preferences, preferences);
    objc_storeStrong(&v10->_timing, timing);
  }

  return v10;
}

@end