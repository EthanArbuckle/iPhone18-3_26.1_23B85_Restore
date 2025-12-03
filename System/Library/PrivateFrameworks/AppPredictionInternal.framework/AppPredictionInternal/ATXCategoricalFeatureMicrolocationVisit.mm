@interface ATXCategoricalFeatureMicrolocationVisit
- (id)categoricalFeatureValueForContext:(id)context candidate:(id)candidate;
@end

@implementation ATXCategoricalFeatureMicrolocationVisit

- (id)categoricalFeatureValueForContext:(id)context candidate:(id)candidate
{
  microlocationVisitEvent = [context microlocationVisitEvent];
  dominantMicrolocationUUID = [microlocationVisitEvent dominantMicrolocationUUID];
  uUIDString = [dominantMicrolocationUUID UUIDString];

  if (uUIDString)
  {
    v7 = uUIDString;
  }

  else
  {
    v7 = @"Microlocation NA";
  }

  return v7;
}

@end