@interface ATXCategoricalFeaturePreviousLocationOfInterest
- (id)categoricalFeatureValueForContext:(id)a3 candidate:(id)a4;
@end

@implementation ATXCategoricalFeaturePreviousLocationOfInterest

- (id)categoricalFeatureValueForContext:(id)a3 candidate:(id)a4
{
  v4 = [a3 locationMotionContext];
  v5 = [v4 previousLOI];
  v6 = [v5 uuid];
  v7 = [v6 UUIDString];

  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = @"Previous LOI NA";
  }

  return v8;
}

@end