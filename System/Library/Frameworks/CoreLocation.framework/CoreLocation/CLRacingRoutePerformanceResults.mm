@interface CLRacingRoutePerformanceResults
- (CLRacingRoutePerformanceResults)initWithTimeAhead:(double)a3 currentDistance:(double)a4 referenceDistance:(double)a5 currentAveragePace:(double)a6 totalOverlapDistance:(double)a7 state:(unint64_t)a8;
@end

@implementation CLRacingRoutePerformanceResults

- (CLRacingRoutePerformanceResults)initWithTimeAhead:(double)a3 currentDistance:(double)a4 referenceDistance:(double)a5 currentAveragePace:(double)a6 totalOverlapDistance:(double)a7 state:(unint64_t)a8
{
  v15.receiver = self;
  v15.super_class = CLRacingRoutePerformanceResults;
  result = [(CLRacingRoutePerformanceResults *)&v15 init];
  if (result)
  {
    result->_timeAhead_s = a3;
    result->_currentDistance_m = a4;
    result->_referenceDistance_m = a5;
    result->_currentAveragePace_s_per_m = a6;
    result->_totalOverlapDistance_m = a7;
    result->_state = a8;
  }

  return result;
}

@end