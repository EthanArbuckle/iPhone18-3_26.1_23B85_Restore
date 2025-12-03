@interface ATXCategoricalFeaturePreviousLocationOfInterest
- (id)categoricalFeatureValueForContext:(id)context candidate:(id)candidate;
@end

@implementation ATXCategoricalFeaturePreviousLocationOfInterest

- (id)categoricalFeatureValueForContext:(id)context candidate:(id)candidate
{
  locationMotionContext = [context locationMotionContext];
  previousLOI = [locationMotionContext previousLOI];
  uuid = [previousLOI uuid];
  uUIDString = [uuid UUIDString];

  if (uUIDString)
  {
    v8 = uUIDString;
  }

  else
  {
    v8 = @"Previous LOI NA";
  }

  return v8;
}

@end