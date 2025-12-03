@interface ADSynchronizedHomeAnalyticsIds
- (ADSynchronizedHomeAnalyticsIds)initWithHomeEphemeralSeeds:(id)seeds;
- (id)description;
@end

@implementation ADSynchronizedHomeAnalyticsIds

- (id)description
{
  ephemeralSeeds = [(ADSynchronizedIds *)self ephemeralSeeds];
  v3 = [NSString stringWithFormat:@"homeEphemeralSeeds:(%@)", ephemeralSeeds];

  return v3;
}

- (ADSynchronizedHomeAnalyticsIds)initWithHomeEphemeralSeeds:(id)seeds
{
  v4.receiver = self;
  v4.super_class = ADSynchronizedHomeAnalyticsIds;
  return [(ADSynchronizedIds *)&v4 initWithEphemeralSeeds:seeds andAggregationIds:0];
}

@end