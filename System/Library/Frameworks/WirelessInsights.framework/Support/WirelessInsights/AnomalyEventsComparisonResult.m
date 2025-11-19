@interface AnomalyEventsComparisonResult
- (id)init:(id)a3 averageEventDistance:(double)a4;
@end

@implementation AnomalyEventsComparisonResult

- (id)init:(id)a3 averageEventDistance:(double)a4
{
  v7 = a3;
  v12.receiver = self;
  v12.super_class = AnomalyEventsComparisonResult;
  v8 = [(AnomalyEventsComparisonResult *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_predictedTimesUntilAnomaly, a3);
    v9[2] = a4;
    v10 = v9;
  }

  return v9;
}

@end