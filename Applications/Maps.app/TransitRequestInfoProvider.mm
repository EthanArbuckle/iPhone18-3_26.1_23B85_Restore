@interface TransitRequestInfoProvider
- (TransitRequestInfoProvider)initWithPreferences:(id)a3 timing:(id)a4;
- (id)makeRouteAttributesBuilderWithNavigationMode:(unint64_t)a3;
- (unint64_t)maximumRouteCount;
- (void)updateWithRefinedWaypoints:(id)a3;
@end

@implementation TransitRequestInfoProvider

- (unint64_t)maximumRouteCount
{
  v2 = +[UIDevice currentDevice];
  [v2 userInterfaceIdiom];

  return GEOConfigGetUInteger();
}

- (void)updateWithRefinedWaypoints:(id)a3
{
  v4 = a3;
  v5 = [v4 origin];
  v6 = [v5 geoMapItem];
  v7 = [v6 timezone];

  v8 = [v4 destination];

  v9 = [v8 geoMapItem];
  v10 = [v9 timezone];

  timing = self->_timing;
  if (timing)
  {
    [(RoutePlanningTiming *)timing timepoint];
  }

  else
  {
    memset(v14, 0, sizeof(v14));
  }

  v12 = [RoutePlanningTiming timingWithTimePoint:v14 departureTimeZone:v7 arrivalTimeZone:v10];
  v13 = self->_timing;
  self->_timing = v12;
}

- (id)makeRouteAttributesBuilderWithNavigationMode:(unint64_t)a3
{
  v3 = [[TransitRouteAttributesBuilder alloc] initWithTransitPreferences:self->_preferences timing:self->_timing];

  return v3;
}

- (TransitRequestInfoProvider)initWithPreferences:(id)a3 timing:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = TransitRequestInfoProvider;
  v9 = [(TransitRequestInfoProvider *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_preferences, a3);
    objc_storeStrong(&v10->_timing, a4);
  }

  return v10;
}

@end