@interface ADSynchronizedHomeAnalyticsIds
- (ADSynchronizedHomeAnalyticsIds)initWithHomeEphemeralSeeds:(id)a3;
- (id)description;
@end

@implementation ADSynchronizedHomeAnalyticsIds

- (id)description
{
  v2 = [(ADSynchronizedIds *)self ephemeralSeeds];
  v3 = [NSString stringWithFormat:@"homeEphemeralSeeds:(%@)", v2];

  return v3;
}

- (ADSynchronizedHomeAnalyticsIds)initWithHomeEphemeralSeeds:(id)a3
{
  v4.receiver = self;
  v4.super_class = ADSynchronizedHomeAnalyticsIds;
  return [(ADSynchronizedIds *)&v4 initWithEphemeralSeeds:a3 andAggregationIds:0];
}

@end