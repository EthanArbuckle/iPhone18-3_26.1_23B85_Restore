@interface ATXCategoricalFeatureMicrolocationVisit
- (id)categoricalFeatureValueForContext:(id)a3 candidate:(id)a4;
@end

@implementation ATXCategoricalFeatureMicrolocationVisit

- (id)categoricalFeatureValueForContext:(id)a3 candidate:(id)a4
{
  v4 = [a3 microlocationVisitEvent];
  v5 = [v4 dominantMicrolocationUUID];
  v6 = [v5 UUIDString];

  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = @"Microlocation NA";
  }

  return v7;
}

@end