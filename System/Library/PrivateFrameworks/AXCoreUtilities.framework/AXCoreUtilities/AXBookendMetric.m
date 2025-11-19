@interface AXBookendMetric
- (void)endMeasurement;
- (void)startMeasurement;
@end

@implementation AXBookendMetric

- (void)startMeasurement
{
  v2.receiver = self;
  v2.super_class = AXBookendMetric;
  [(AXMetric *)&v2 _startMeasurement];
}

- (void)endMeasurement
{
  v2.receiver = self;
  v2.super_class = AXBookendMetric;
  [(AXMetric *)&v2 _endMeasurement];
}

@end