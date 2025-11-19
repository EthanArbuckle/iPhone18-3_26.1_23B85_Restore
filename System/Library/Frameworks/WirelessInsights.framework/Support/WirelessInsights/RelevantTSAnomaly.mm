@interface RelevantTSAnomaly
- (id)init:(id)a3 dist:(double)a4 predictedTimesUntilAnomaly:(id)a5;
@end

@implementation RelevantTSAnomaly

- (id)init:(id)a3 dist:(double)a4 predictedTimesUntilAnomaly:(id)a5
{
  v9 = a3;
  v10 = a5;
  v15.receiver = self;
  v15.super_class = RelevantTSAnomaly;
  v11 = [(RelevantTSAnomaly *)&v15 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_anomaly, a3);
    v12->_dist = a4;
    objc_storeStrong(&v12->_predictedTimesUntilAnomaly, a5);
    v13 = v12;
  }

  return v12;
}

@end