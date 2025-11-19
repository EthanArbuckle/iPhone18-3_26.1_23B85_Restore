@interface AMSMetricsEventAnomaliesDetector
- (AMSMetricsEventAnomaliesDetector)initWithAnomalyDetectors:(id)a3;
- (id)detectAnomaliesForMetricsEvent:(id)a3;
@end

@implementation AMSMetricsEventAnomaliesDetector

- (AMSMetricsEventAnomaliesDetector)initWithAnomalyDetectors:(id)a3
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE155C0);
  v3 = sub_192F96B0C();
  return MetricsEventAnomaliesDetector.init(anomalyDetectors:)(v3);
}

- (id)detectAnomaliesForMetricsEvent:(id)a3
{
  v4 = a3;
  v5 = self;
  MetricsEventAnomaliesDetector.detectAnomalies(for:)(v4);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE155B8);
  v6 = sub_192F96AFC();

  return v6;
}

@end