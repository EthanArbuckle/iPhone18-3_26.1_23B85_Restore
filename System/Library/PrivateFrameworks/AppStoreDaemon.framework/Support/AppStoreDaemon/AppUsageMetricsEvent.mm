@interface AppUsageMetricsEvent
- (id)description;
@end

@implementation AppUsageMetricsEvent

- (id)description
{
  underlyingDictionary = [(AppUsageMetricsEvent *)self underlyingDictionary];
  v3 = [NSString stringWithFormat:@"<AppUsageMetricsEvent: %@>", underlyingDictionary];

  return v3;
}

@end