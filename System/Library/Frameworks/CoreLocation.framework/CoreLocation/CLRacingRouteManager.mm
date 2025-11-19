@interface CLRacingRouteManager
- (BOOL)setRaceParameters:(id)a3;
- (id)advanceToPoint:(id)a3;
- (unint64_t)addRoutePoints:(id)a3;
- (unint64_t)configureWithWorkoutActivityType:(unint64_t)a3 bufferSize:(unint64_t)a4 offRouteGraceDurationInSec:(unint64_t)a5;
@end

@implementation CLRacingRouteManager

- (unint64_t)configureWithWorkoutActivityType:(unint64_t)a3 bufferSize:(unint64_t)a4 offRouteGraceDurationInSec:(unint64_t)a5
{
  if (a3 > 51)
  {
    if (a3 - 70 < 2)
    {
      v5 = 90603;
      goto LABEL_12;
    }

    if (a3 != 52)
    {
LABEL_11:
      v5 = 62;
      goto LABEL_12;
    }

LABEL_9:
    v5 = 4;
    goto LABEL_12;
  }

  if (a3 == 13)
  {
    v5 = 6;
    goto LABEL_12;
  }

  if (a3 == 24)
  {
    goto LABEL_9;
  }

  if (a3 != 37)
  {
    goto LABEL_11;
  }

  v5 = 8;
LABEL_12:
  v9 = v5;
  v7 = a5;
  v8 = a4;
  return sub_19B923E48(&self->clrr, &v9, &v8, &v7);
}

- (unint64_t)addRoutePoints:(id)a3
{
  if (a3)
  {
    return sub_19B920AF0(&self->clrr, a3);
  }

  else
  {
    return 4;
  }
}

- (id)advanceToPoint:(id)a3
{
  result = [[CLRacingRoutePerformanceResults alloc] initWithTimeAhead:4 currentDistance:604800.0 referenceDistance:-1.0 currentAveragePace:-1.0 totalOverlapDistance:-1.0 state:-1.0];
  if (a3)
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
    v6 = sub_19B924398(&self->clrr, a3, v10);
    v7 = *&v17 - *(&v11 + 1);
    v8 = *&v18;
    v9 = [CLRacingRoutePerformanceResults alloc];
    return [(CLRacingRoutePerformanceResults *)v9 initWithTimeAhead:v6 currentDistance:v7 referenceDistance:*&v14 currentAveragePace:*(&v19 + 1) totalOverlapDistance:*(&v13 + 1) state:v8];
  }

  return result;
}

- (BOOL)setRaceParameters:(id)a3
{
  if (a3)
  {
    return sub_19B926868(&self->clrr, a3);
  }

  else
  {
    return 0;
  }
}

@end