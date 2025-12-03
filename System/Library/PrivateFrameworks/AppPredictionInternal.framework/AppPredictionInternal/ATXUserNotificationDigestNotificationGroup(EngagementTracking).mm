@interface ATXUserNotificationDigestNotificationGroup(EngagementTracking)
- (void)populateEngagementFromSource:()EngagementTracking sectionIdentifier:sectionPosition:sectionSize:digestTimeline:;
@end

@implementation ATXUserNotificationDigestNotificationGroup(EngagementTracking)

- (void)populateEngagementFromSource:()EngagementTracking sectionIdentifier:sectionPosition:sectionSize:digestTimeline:
{
  v28 = a3;
  v12 = a4;
  v13 = a7;
  v14 = objc_opt_new();
  [self setDigestEngagementTrackingMetrics:v14];

  rankedNotifications = [self rankedNotifications];
  v16 = [rankedNotifications count];

  if (v16)
  {
    v17 = 0;
    do
    {
      rankedNotifications2 = [self rankedNotifications];
      v19 = [rankedNotifications2 objectAtIndexedSubscript:v17];

      rankedNotifications3 = [self rankedNotifications];
      [v19 populateEngagementFromSource:v28 sectionIdentifier:v12 sectionPosition:v17 sectionSize:objc_msgSend(rankedNotifications3 digestTimeline:{"count"), v13}];

      digestEngagementTrackingMetrics = [self digestEngagementTrackingMetrics];
      digestEngagementTrackingMetrics2 = [v19 digestEngagementTrackingMetrics];
      [digestEngagementTrackingMetrics addMetricsFromOtherTracker:digestEngagementTrackingMetrics2];

      ++v17;
      rankedNotifications4 = [self rankedNotifications];
      v24 = [rankedNotifications4 count];
    }

    while (v17 < v24);
  }

  digestEngagementTrackingMetrics3 = [self digestEngagementTrackingMetrics];
  [digestEngagementTrackingMetrics3 setSectionIdentifier:v12];

  digestEngagementTrackingMetrics4 = [self digestEngagementTrackingMetrics];
  [digestEngagementTrackingMetrics4 setSectionSize:a6];

  digestEngagementTrackingMetrics5 = [self digestEngagementTrackingMetrics];
  [digestEngagementTrackingMetrics5 setSectionPosition:a5];
}

@end