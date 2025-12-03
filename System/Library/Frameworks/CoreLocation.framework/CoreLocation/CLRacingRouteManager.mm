@interface CLRacingRouteManager
- (BOOL)setRaceParameters:(id)parameters;
- (id)advanceToPoint:(id)point;
- (unint64_t)addRoutePoints:(id)points;
- (unint64_t)configureWithWorkoutActivityType:(unint64_t)type bufferSize:(unint64_t)size offRouteGraceDurationInSec:(unint64_t)sec;
@end

@implementation CLRacingRouteManager

- (unint64_t)configureWithWorkoutActivityType:(unint64_t)type bufferSize:(unint64_t)size offRouteGraceDurationInSec:(unint64_t)sec
{
  if (type > 51)
  {
    if (type - 70 < 2)
    {
      v5 = 90603;
      goto LABEL_12;
    }

    if (type != 52)
    {
LABEL_11:
      v5 = 62;
      goto LABEL_12;
    }

LABEL_9:
    v5 = 4;
    goto LABEL_12;
  }

  if (type == 13)
  {
    v5 = 6;
    goto LABEL_12;
  }

  if (type == 24)
  {
    goto LABEL_9;
  }

  if (type != 37)
  {
    goto LABEL_11;
  }

  v5 = 8;
LABEL_12:
  v9 = v5;
  secCopy = sec;
  sizeCopy = size;
  return sub_19B923E48(&self->clrr, &v9, &sizeCopy, &secCopy);
}

- (unint64_t)addRoutePoints:(id)points
{
  if (points)
  {
    return sub_19B920AF0(&self->clrr, points);
  }

  else
  {
    return 4;
  }
}

- (id)advanceToPoint:(id)point
{
  result = [[CLRacingRoutePerformanceResults alloc] initWithTimeAhead:4 currentDistance:604800.0 referenceDistance:-1.0 currentAveragePace:-1.0 totalOverlapDistance:-1.0 state:-1.0];
  if (point)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v11 = 0u;
    memset(v10, 0, sizeof(v10));
    v6 = sub_19B924398(&self->clrr, point, v10);
    v7 = *&v17 - *(&v11 + 1);
    v8 = *&v18;
    v9 = [CLRacingRoutePerformanceResults alloc];
    return [(CLRacingRoutePerformanceResults *)v9 initWithTimeAhead:v6 currentDistance:v7 referenceDistance:*&v14 currentAveragePace:*(&v19 + 1) totalOverlapDistance:*(&v13 + 1) state:v8];
  }

  return result;
}

- (BOOL)setRaceParameters:(id)parameters
{
  if (parameters)
  {
    return sub_19B926868(&self->clrr, parameters);
  }

  else
  {
    return 0;
  }
}

@end