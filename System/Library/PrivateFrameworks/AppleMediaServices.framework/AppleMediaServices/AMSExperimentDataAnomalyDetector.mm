@interface AMSExperimentDataAnomalyDetector
- (id)detectAnomalyFor:(id)a3;
@end

@implementation AMSExperimentDataAnomalyDetector

- (id)detectAnomalyFor:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = ExperimentDataAnomalyDetector.detectAnomaly(for:)(v4);

  return v6;
}

@end