@interface ATXMissedNotificationRanking(EngagementTracking)
- (void)populateEngagementFromSource:()EngagementTracking;
@end

@implementation ATXMissedNotificationRanking(EngagementTracking)

- (void)populateEngagementFromSource:()EngagementTracking
{
  v22 = a3;
  v4 = [a1 allNotificationIds];
  v5 = [v22 resolutionsForNotifications:v4];

  v6 = [[ATXNotificationResolutionDictionarySource alloc] initWithResolutionDictionary:v5];
  v7 = objc_opt_new();
  [a1 setDigestEngagementTrackingMetrics:v7];

  v8 = [a1 rankedGroups];
  v9 = [v8 count];

  if (v9)
  {
    v10 = 0;
    do
    {
      v11 = [a1 rankedGroups];
      v12 = [v11 objectAtIndexedSubscript:v10];

      if ([v12 isCommunicationGroup])
      {
        v13 = @"messageGroups";
      }

      else
      {
        v13 = @"rankedGroups";
      }

      v14 = v13;
      v15 = [a1 rankedGroups];
      v16 = [v15 count];
      v17 = [a1 digestTimeline];
      [v12 populateEngagementFromSource:v6 sectionIdentifier:v14 sectionPosition:v10 sectionSize:v16 digestTimeline:v17];

      v18 = [a1 digestEngagementTrackingMetrics];
      v19 = [v12 digestEngagementTrackingMetrics];
      [v18 addMetricsFromOtherTracker:v19];

      ++v10;
      v20 = [a1 rankedGroups];
      v21 = [v20 count];
    }

    while (v10 < v21);
  }
}

@end