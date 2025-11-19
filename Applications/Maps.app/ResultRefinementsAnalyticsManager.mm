@interface ResultRefinementsAnalyticsManager
- (ResultRefinementsAnalyticsManager)initWithRefinementsFromWaypointEditor:(BOOL)a3;
- (void)logRefinementsEvent:(unint64_t)a3 fromSource:(unint64_t)a4;
- (void)resultRefinementTappedWithKey:(id)a3 source:(unint64_t)a4 refinementType:(unint64_t)a5 isSelected:(BOOL)a6;
@end

@implementation ResultRefinementsAnalyticsManager

- (void)resultRefinementTappedWithKey:(id)a3 source:(unint64_t)a4 refinementType:(unint64_t)a5 isSelected:(BOOL)a6
{
  v6 = a6;
  v16 = a3;
  if (a4 == 2)
  {
    v11 = 176;
    v12 = 197;
    v10 = 22;
  }

  else if (a4 == 1)
  {
    v11 = 176;
    v12 = 197;
    v10 = 23;
  }

  else if (a4)
  {
    v10 = 0;
    v12 = 0;
    v11 = 0;
  }

  else
  {
    if ([(ResultRefinementsAnalyticsManager *)self isFromWaypointEditor])
    {
      v10 = 58;
    }

    else
    {
      v10 = 21;
    }

    v11 = 190;
    v12 = 200;
  }

  if (v6)
  {
    v13 = 158;
  }

  else
  {
    v13 = 202;
  }

  if (v6)
  {
    v11 = v12;
  }

  if (a5)
  {
    v11 = 0;
  }

  if (a5 == 1)
  {
    v14 = v13;
  }

  else
  {
    v14 = v11;
  }

  v15 = +[MKMapService sharedService];
  [v15 captureUserAction:v14 onTarget:v10 eventValue:v16];
}

- (void)logRefinementsEvent:(unint64_t)a3 fromSource:(unint64_t)a4
{
  if (a4 == 2)
  {
    v6 = 22;
  }

  else if (a4 == 1)
  {
    v6 = 23;
  }

  else if (a4)
  {
    v6 = 0;
  }

  else if ([(ResultRefinementsAnalyticsManager *)self isFromWaypointEditor])
  {
    v6 = 58;
  }

  else
  {
    v6 = 21;
  }

  if (a3 == 3)
  {
    v7 = 157;
  }

  else
  {
    v7 = 0;
  }

  if (a3 == 2)
  {
    v8 = 155;
  }

  else
  {
    v8 = v7;
  }

  if (a4 == 1)
  {
    v9 = 186;
  }

  else
  {
    v9 = 205;
  }

  if (a4 == 1)
  {
    v10 = 168;
  }

  else
  {
    v10 = 167;
  }

  if (a3 != 1)
  {
    v10 = 0;
  }

  if (a3)
  {
    v9 = v10;
  }

  if (a3 <= 1)
  {
    v11 = v9;
  }

  else
  {
    v11 = v8;
  }

  v12 = +[MKMapService sharedService];
  [v12 captureUserAction:v11 onTarget:v6 eventValue:0];
}

- (ResultRefinementsAnalyticsManager)initWithRefinementsFromWaypointEditor:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = ResultRefinementsAnalyticsManager;
  result = [(ResultRefinementsAnalyticsManager *)&v5 init];
  if (result)
  {
    result->_isFromWaypointEditor = a3;
  }

  return result;
}

@end