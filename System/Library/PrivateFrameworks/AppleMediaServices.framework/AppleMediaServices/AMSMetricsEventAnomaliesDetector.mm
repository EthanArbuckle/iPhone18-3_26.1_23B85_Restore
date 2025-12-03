@interface AMSMetricsEventAnomaliesDetector
- (AMSMetricsEventAnomaliesDetector)initWithAnomalyDetectors:(id)detectors;
- (id)detectAnomaliesForMetricsEvent:(id)event;
@end

@implementation AMSMetricsEventAnomaliesDetector

- (AMSMetricsEventAnomaliesDetector)initWithAnomalyDetectors:(id)detectors
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE155C0);
  v3 = sub_192F96B0C();
  return MetricsEventAnomaliesDetector.init(anomalyDetectors:)(v3);
}

- (id)detectAnomaliesForMetricsEvent:(id)event
{
  eventCopy = event;
  selfCopy = self;
  MetricsEventAnomaliesDetector.detectAnomalies(for:)(eventCopy);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE155B8);
  v6 = sub_192F96AFC();

  return v6;
}

@end