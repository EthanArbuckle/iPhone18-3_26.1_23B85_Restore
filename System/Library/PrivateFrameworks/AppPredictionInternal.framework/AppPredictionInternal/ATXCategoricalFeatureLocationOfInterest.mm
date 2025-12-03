@interface ATXCategoricalFeatureLocationOfInterest
- (id)categoricalFeatureValueForContext:(id)context candidate:(id)candidate;
@end

@implementation ATXCategoricalFeatureLocationOfInterest

- (id)categoricalFeatureValueForContext:(id)context candidate:(id)candidate
{
  locationMotionContext = [context locationMotionContext];
  currentLOI = [locationMotionContext currentLOI];
  uuid = [currentLOI uuid];
  uUIDString = [uuid UUIDString];

  if (uUIDString)
  {
    v8 = uUIDString;
  }

  else
  {
    v8 = @"LOI NA";
  }

  return v8;
}

@end