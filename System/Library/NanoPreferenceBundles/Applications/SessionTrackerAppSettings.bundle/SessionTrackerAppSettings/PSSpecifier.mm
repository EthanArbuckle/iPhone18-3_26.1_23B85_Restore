@interface PSSpecifier
- (unint64_t)hprf_metricType;
- (void)hprf_setMetricType:(unint64_t)type;
@end

@implementation PSSpecifier

- (unint64_t)hprf_metricType
{
  v2 = [(PSSpecifier *)self propertyForKey:@"HPRFMetricTypeKey"];
  integerValue = [v2 integerValue];

  return integerValue;
}

- (void)hprf_setMetricType:(unint64_t)type
{
  v4 = [NSNumber numberWithUnsignedInteger:type];
  [(PSSpecifier *)self setProperty:v4 forKey:@"HPRFMetricTypeKey"];
}

@end