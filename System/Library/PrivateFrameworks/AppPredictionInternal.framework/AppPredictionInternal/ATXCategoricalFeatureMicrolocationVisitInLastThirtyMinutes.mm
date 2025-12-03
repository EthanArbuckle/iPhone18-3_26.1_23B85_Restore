@interface ATXCategoricalFeatureMicrolocationVisitInLastThirtyMinutes
- (id)categoricalFeatureValueForContext:(id)context candidate:(id)candidate;
@end

@implementation ATXCategoricalFeatureMicrolocationVisitInLastThirtyMinutes

- (id)categoricalFeatureValueForContext:(id)context candidate:(id)candidate
{
  contextCopy = context;
  microlocationVisitEvent = [contextCopy microlocationVisitEvent];
  v6 = microlocationVisitEvent;
  v7 = @"Microlocation NA";
  if (microlocationVisitEvent)
  {
    dominantMicrolocationUUID = [microlocationVisitEvent dominantMicrolocationUUID];
    uUIDString = [dominantMicrolocationUUID UUIDString];

    timeContext = [contextCopy timeContext];
    date = [timeContext date];
    startDate = [v6 startDate];
    [date timeIntervalSinceDate:startDate];
    v14 = v13;

    if (uUIDString)
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
      v17 = uUIDString;
    }

    v7 = v17;
  }

  return v7;
}

@end