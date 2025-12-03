@interface ATXMissedNotificationRanking(EngagementTracking)
- (void)populateEngagementFromSource:()EngagementTracking;
@end

@implementation ATXMissedNotificationRanking(EngagementTracking)

- (void)populateEngagementFromSource:()EngagementTracking
{
  v22 = a3;
  allNotificationIds = [self allNotificationIds];
  v5 = [v22 resolutionsForNotifications:allNotificationIds];

  v6 = [[ATXNotificationResolutionDictionarySource alloc] initWithResolutionDictionary:v5];
  v7 = objc_opt_new();
  [self setDigestEngagementTrackingMetrics:v7];

  rankedGroups = [self rankedGroups];
  v9 = [rankedGroups count];

  if (v9)
  {
    v10 = 0;
    do
    {
      rankedGroups2 = [self rankedGroups];
      v12 = [rankedGroups2 objectAtIndexedSubscript:v10];

      if ([v12 isCommunicationGroup])
      {
        v13 = @"messageGroups";
      }

      else
      {
        v13 = @"rankedGroups";
      }

      v14 = v13;
      rankedGroups3 = [self rankedGroups];
      v16 = [rankedGroups3 count];
      digestTimeline = [self digestTimeline];
      [v12 populateEngagementFromSource:v6 sectionIdentifier:v14 sectionPosition:v10 sectionSize:v16 digestTimeline:digestTimeline];

      digestEngagementTrackingMetrics = [self digestEngagementTrackingMetrics];
      digestEngagementTrackingMetrics2 = [v12 digestEngagementTrackingMetrics];
      [digestEngagementTrackingMetrics addMetricsFromOtherTracker:digestEngagementTrackingMetrics2];

      ++v10;
      rankedGroups4 = [self rankedGroups];
      v21 = [rankedGroups4 count];
    }

    while (v10 < v21);
  }
}

@end