@interface ATXUserNotification(EngagementTracking)
- (void)populateEngagementFromSource:()EngagementTracking sectionIdentifier:sectionPosition:sectionSize:digestTimeline:;
@end

@implementation ATXUserNotification(EngagementTracking)

- (void)populateEngagementFromSource:()EngagementTracking sectionIdentifier:sectionPosition:sectionSize:digestTimeline:
{
  v37 = a7;
  v12 = a4;
  v13 = a3;
  v14 = objc_opt_new();
  [self setDigestEngagementTrackingMetrics:v14];

  digestEngagementTrackingMetrics = [self digestEngagementTrackingMetrics];
  [digestEngagementTrackingMetrics setSectionIdentifier:v12];

  digestEngagementTrackingMetrics2 = [self digestEngagementTrackingMetrics];
  [digestEngagementTrackingMetrics2 setSectionPosition:a5];

  digestEngagementTrackingMetrics3 = [self digestEngagementTrackingMetrics];
  [digestEngagementTrackingMetrics3 setSectionSize:a6];

  v18 = MEMORY[0x277CBEB98];
  uuid = [self uuid];
  v20 = [v18 setWithObject:uuid];
  v21 = [v13 resolutionsForNotifications:v20];

  uuid2 = [self uuid];
  v23 = [v21 objectForKeyedSubscript:uuid2];

  if (v23)
  {
    numExpansions = [v23 numExpansions];
    digestEngagementTrackingMetrics4 = [self digestEngagementTrackingMetrics];
    [digestEngagementTrackingMetrics4 setNumExpansions:numExpansions];

    if (![v23 resolutionType])
    {
      digestRemovedTimestamp = [v37 digestRemovedTimestamp];
      if (!digestRemovedTimestamp)
      {
        goto LABEL_5;
      }

      v27 = digestRemovedTimestamp;
      digestRemovedTimestamp2 = [v37 digestRemovedTimestamp];
      resolutionTimestamp = [v23 resolutionTimestamp];
      v30 = [digestRemovedTimestamp2 compare:resolutionTimestamp];

      if (v30 == -1)
      {
        digestEngagementTrackingMetrics5 = [self digestEngagementTrackingMetrics];
        [digestEngagementTrackingMetrics5 setNumEngagementsAfterExpiration:1];
      }

      else
      {
LABEL_5:
        firstScheduledViewTimestamp = [v37 firstScheduledViewTimestamp];
        if (!firstScheduledViewTimestamp)
        {
          goto LABEL_7;
        }

        v32 = firstScheduledViewTimestamp;
        firstScheduledViewTimestamp2 = [v37 firstScheduledViewTimestamp];
        resolutionTimestamp2 = [v23 resolutionTimestamp];
        v35 = [firstScheduledViewTimestamp2 compare:resolutionTimestamp2];

        if (v35 == -1)
        {
          digestEngagementTrackingMetrics5 = [self digestEngagementTrackingMetrics];
          [digestEngagementTrackingMetrics5 setNumEngagementsInScheduled:1];
        }

        else
        {
LABEL_7:
          digestEngagementTrackingMetrics5 = [self digestEngagementTrackingMetrics];
          [digestEngagementTrackingMetrics5 setNumEngagementsInUpcoming:1];
        }
      }
    }
  }
}

@end