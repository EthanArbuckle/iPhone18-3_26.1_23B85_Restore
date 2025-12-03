@interface AnomalyEventsComparisonResult
- (id)init:(id)init averageEventDistance:(double)distance;
@end

@implementation AnomalyEventsComparisonResult

- (id)init:(id)init averageEventDistance:(double)distance
{
  initCopy = init;
  v12.receiver = self;
  v12.super_class = AnomalyEventsComparisonResult;
  v8 = [(AnomalyEventsComparisonResult *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_predictedTimesUntilAnomaly, init);
    v9[2] = distance;
    v10 = v9;
  }

  return v9;
}

@end