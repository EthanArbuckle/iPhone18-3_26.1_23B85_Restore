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
  [a1 setDigestEngagementTrackingMetrics:v14];

  v15 = [a1 rankedNotifications];
  v16 = [v15 count];

  if (v16)
  {
    v17 = 0;
    do
    {
      v18 = [a1 rankedNotifications];
      v19 = [v18 objectAtIndexedSubscript:v17];

      v20 = [a1 rankedNotifications];
      [v19 populateEngagementFromSource:v28 sectionIdentifier:v12 sectionPosition:v17 sectionSize:objc_msgSend(v20 digestTimeline:{"count"), v13}];

      v21 = [a1 digestEngagementTrackingMetrics];
      v22 = [v19 digestEngagementTrackingMetrics];
      [v21 addMetricsFromOtherTracker:v22];

      ++v17;
      v23 = [a1 rankedNotifications];
      v24 = [v23 count];
    }

    while (v17 < v24);
  }

  v25 = [a1 digestEngagementTrackingMetrics];
  [v25 setSectionIdentifier:v12];

  v26 = [a1 digestEngagementTrackingMetrics];
  [v26 setSectionSize:a6];

  v27 = [a1 digestEngagementTrackingMetrics];
  [v27 setSectionPosition:a5];
}

@end