@interface AMSExperimentDataAnomalyDetector
- (id)detectAnomalyFor:(id)for;
@end

@implementation AMSExperimentDataAnomalyDetector

- (id)detectAnomalyFor:(id)for
{
  forCopy = for;
  selfCopy = self;
  v6 = ExperimentDataAnomalyDetector.detectAnomaly(for:)(forCopy);

  return v6;
}

@end