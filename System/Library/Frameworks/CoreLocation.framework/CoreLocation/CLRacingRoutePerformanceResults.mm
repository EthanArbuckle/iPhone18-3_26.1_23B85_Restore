@interface CLRacingRoutePerformanceResults
- (CLRacingRoutePerformanceResults)initWithTimeAhead:(double)ahead currentDistance:(double)distance referenceDistance:(double)referenceDistance currentAveragePace:(double)pace totalOverlapDistance:(double)overlapDistance state:(unint64_t)state;
@end

@implementation CLRacingRoutePerformanceResults

- (CLRacingRoutePerformanceResults)initWithTimeAhead:(double)ahead currentDistance:(double)distance referenceDistance:(double)referenceDistance currentAveragePace:(double)pace totalOverlapDistance:(double)overlapDistance state:(unint64_t)state
{
  v15.receiver = self;
  v15.super_class = CLRacingRoutePerformanceResults;
  result = [(CLRacingRoutePerformanceResults *)&v15 init];
  if (result)
  {
    result->_timeAhead_s = ahead;
    result->_currentDistance_m = distance;
    result->_referenceDistance_m = referenceDistance;
    result->_currentAveragePace_s_per_m = pace;
    result->_totalOverlapDistance_m = overlapDistance;
    result->_state = state;
  }

  return result;
}

@end