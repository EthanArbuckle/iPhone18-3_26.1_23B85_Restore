@interface RelevantTSAnomaly
- (id)init:(id)init dist:(double)dist predictedTimesUntilAnomaly:(id)anomaly;
@end

@implementation RelevantTSAnomaly

- (id)init:(id)init dist:(double)dist predictedTimesUntilAnomaly:(id)anomaly
{
  initCopy = init;
  anomalyCopy = anomaly;
  v15.receiver = self;
  v15.super_class = RelevantTSAnomaly;
  v11 = [(RelevantTSAnomaly *)&v15 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_anomaly, init);
    v12->_dist = dist;
    objc_storeStrong(&v12->_predictedTimesUntilAnomaly, anomaly);
    v13 = v12;
  }

  return v12;
}

@end