@interface PSSpecifier
- (unint64_t)hprf_metricType;
- (void)hprf_setMetricType:(unint64_t)a3;
@end

@implementation PSSpecifier

- (unint64_t)hprf_metricType
{
  v2 = [(PSSpecifier *)self propertyForKey:@"HPRFMetricTypeKey"];
  v3 = [v2 integerValue];

  return v3;
}

- (void)hprf_setMetricType:(unint64_t)a3
{
  v4 = [NSNumber numberWithUnsignedInteger:a3];
  [(PSSpecifier *)self setProperty:v4 forKey:@"HPRFMetricTypeKey"];
}

@end