@interface ADSynchronizedUserAnalyticsIds
- (ADSynchronizedUserAnalyticsIds)initWithUserEphemeralSeeds:(id)seeds andUserAggregationIds:(id)ids;
- (id)description;
@end

@implementation ADSynchronizedUserAnalyticsIds

- (id)description
{
  ephemeralSeeds = [(ADSynchronizedIds *)self ephemeralSeeds];
  aggregationIds = [(ADSynchronizedIds *)self aggregationIds];
  v5 = [NSString stringWithFormat:@"userEphemeralSeeds:(%@) userAggregationIds:(%@)", ephemeralSeeds, aggregationIds];

  return v5;
}

- (ADSynchronizedUserAnalyticsIds)initWithUserEphemeralSeeds:(id)seeds andUserAggregationIds:(id)ids
{
  v5.receiver = self;
  v5.super_class = ADSynchronizedUserAnalyticsIds;
  return [(ADSynchronizedIds *)&v5 initWithEphemeralSeeds:seeds andAggregationIds:ids];
}

@end