@interface AppUsageMetricsEvent
- (id)description;
@end

@implementation AppUsageMetricsEvent

- (id)description
{
  v2 = [(AppUsageMetricsEvent *)self underlyingDictionary];
  v3 = [NSString stringWithFormat:@"<AppUsageMetricsEvent: %@>", v2];

  return v3;
}

@end