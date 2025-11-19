@interface ADSynchronizedUserAnalyticsIds
- (ADSynchronizedUserAnalyticsIds)initWithUserEphemeralSeeds:(id)a3 andUserAggregationIds:(id)a4;
- (id)description;
@end

@implementation ADSynchronizedUserAnalyticsIds

- (id)description
{
  v3 = [(ADSynchronizedIds *)self ephemeralSeeds];
  v4 = [(ADSynchronizedIds *)self aggregationIds];
  v5 = [NSString stringWithFormat:@"userEphemeralSeeds:(%@) userAggregationIds:(%@)", v3, v4];

  return v5;
}

- (ADSynchronizedUserAnalyticsIds)initWithUserEphemeralSeeds:(id)a3 andUserAggregationIds:(id)a4
{
  v5.receiver = self;
  v5.super_class = ADSynchronizedUserAnalyticsIds;
  return [(ADSynchronizedIds *)&v5 initWithEphemeralSeeds:a3 andAggregationIds:a4];
}

@end