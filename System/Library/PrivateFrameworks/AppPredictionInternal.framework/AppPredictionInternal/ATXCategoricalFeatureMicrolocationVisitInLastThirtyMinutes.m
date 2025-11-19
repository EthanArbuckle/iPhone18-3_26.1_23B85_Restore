@interface ATXCategoricalFeatureMicrolocationVisitInLastThirtyMinutes
- (id)categoricalFeatureValueForContext:(id)a3 candidate:(id)a4;
@end

@implementation ATXCategoricalFeatureMicrolocationVisitInLastThirtyMinutes

- (id)categoricalFeatureValueForContext:(id)a3 candidate:(id)a4
{
  v4 = a3;
  v5 = [v4 microlocationVisitEvent];
  v6 = v5;
  v7 = @"Microlocation NA";
  if (v5)
  {
    v8 = [v5 dominantMicrolocationUUID];
    v9 = [v8 UUIDString];

    v10 = [v4 timeContext];
    v11 = [v10 date];
    v12 = [v6 startDate];
    [v11 timeIntervalSinceDate:v12];
    v14 = v13;

    if (v9)
    {
      v15 = v14 > 1800.0;
    }

    else
    {
      v15 = 1;
    }

    if (v15 || v14 < 0.0)
    {
      v17 = @"Microlocation NA";
    }

    else
    {
      v17 = v9;
    }

    v7 = v17;
  }

  return v7;
}

@end