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
  [a1 setDigestEngagementTrackingMetrics:v14];

  v15 = [a1 digestEngagementTrackingMetrics];
  [v15 setSectionIdentifier:v12];

  v16 = [a1 digestEngagementTrackingMetrics];
  [v16 setSectionPosition:a5];

  v17 = [a1 digestEngagementTrackingMetrics];
  [v17 setSectionSize:a6];

  v18 = MEMORY[0x277CBEB98];
  v19 = [a1 uuid];
  v20 = [v18 setWithObject:v19];
  v21 = [v13 resolutionsForNotifications:v20];

  v22 = [a1 uuid];
  v23 = [v21 objectForKeyedSubscript:v22];

  if (v23)
  {
    v24 = [v23 numExpansions];
    v25 = [a1 digestEngagementTrackingMetrics];
    [v25 setNumExpansions:v24];

    if (![v23 resolutionType])
    {
      v26 = [v37 digestRemovedTimestamp];
      if (!v26)
      {
        goto LABEL_5;
      }

      v27 = v26;
      v28 = [v37 digestRemovedTimestamp];
      v29 = [v23 resolutionTimestamp];
      v30 = [v28 compare:v29];

      if (v30 == -1)
      {
        v36 = [a1 digestEngagementTrackingMetrics];
        [v36 setNumEngagementsAfterExpiration:1];
      }

      else
      {
LABEL_5:
        v31 = [v37 firstScheduledViewTimestamp];
        if (!v31)
        {
          goto LABEL_7;
        }

        v32 = v31;
        v33 = [v37 firstScheduledViewTimestamp];
        v34 = [v23 resolutionTimestamp];
        v35 = [v33 compare:v34];

        if (v35 == -1)
        {
          v36 = [a1 digestEngagementTrackingMetrics];
          [v36 setNumEngagementsInScheduled:1];
        }

        else
        {
LABEL_7:
          v36 = [a1 digestEngagementTrackingMetrics];
          [v36 setNumEngagementsInUpcoming:1];
        }
      }
    }
  }
}

@end