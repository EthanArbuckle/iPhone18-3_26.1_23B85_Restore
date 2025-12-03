@interface MapsSharedTripAnalyticsHelper
+ (void)sendSuccessAnalyticFor:(id)for;
- (_TtC4Maps29MapsSharedTripAnalyticsHelper)init;
@end

@implementation MapsSharedTripAnalyticsHelper

+ (void)sendSuccessAnalyticFor:(id)for
{
  forCopy = for;
  _s4Maps0A25SharedTripAnalyticsHelperC19sendSuccessAnalytic3forySo09MSPSharedC7ContactC_tFZ_0(forCopy);
}

- (_TtC4Maps29MapsSharedTripAnalyticsHelper)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for MapsSharedTripAnalyticsHelper();
  return [(MapsSharedTripAnalyticsHelper *)&v3 init];
}

@end