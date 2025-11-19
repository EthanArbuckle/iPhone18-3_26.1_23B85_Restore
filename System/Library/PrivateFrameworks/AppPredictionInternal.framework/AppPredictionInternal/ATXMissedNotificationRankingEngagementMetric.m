@interface ATXMissedNotificationRankingEngagementMetric
- (id)coreAnalyticsDictionary;
- (void)populateMetricsFromRanking:(id)a3;
@end

@implementation ATXMissedNotificationRankingEngagementMetric

- (void)populateMetricsFromRanking:(id)a3
{
  v42 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 digestTimeline];
  v6 = [v5 firstUpcomingViewTimestamp];
  if (v6)
  {
    v7 = [v4 digestTimeline];
    v8 = [v7 firstUpcomingViewTimestamp];
    [v8 timeIntervalSinceReferenceDate];
    [(ATXMissedNotificationRankingEngagementMetric *)self setCreatedTimestamp:?];
  }

  else
  {
    [(ATXMissedNotificationRankingEngagementMetric *)self setCreatedTimestamp:0.0];
  }

  v9 = [v4 digestTimeline];
  v10 = [v9 firstScheduledViewTimestamp];
  if (v10)
  {
    v11 = [v4 digestTimeline];
    v12 = [v11 firstScheduledViewTimestamp];
    [v12 timeIntervalSinceReferenceDate];
    [(ATXMissedNotificationRankingEngagementMetric *)self setShowTimestamp:?];
  }

  else
  {
    [(ATXMissedNotificationRankingEngagementMetric *)self setShowTimestamp:0.0];
  }

  v13 = [v4 digestTimeline];
  v14 = [v13 digestRemovedTimestamp];
  if (v14)
  {
    v15 = [v4 digestTimeline];
    v16 = [v15 digestRemovedTimestamp];
    [v16 timeIntervalSinceReferenceDate];
    [(ATXMissedNotificationRankingEngagementMetric *)self setExpireTimestamp:?];
  }

  else
  {
    [(ATXMissedNotificationRankingEngagementMetric *)self setExpireTimestamp:0.0];
  }

  v17 = [v4 uuid];
  v18 = [v17 UUIDString];
  [(ATXMissedNotificationRankingEngagementMetric *)self setMnbUUID:v18];

  v19 = [v4 modeIdString];
  [(ATXMissedNotificationRankingEngagementMetric *)self setPreviousModeSemanticType:v19];

  [(ATXMissedNotificationRankingEngagementMetric *)self setNextModeSemanticType:0];
  [(ATXMissedNotificationRankingEngagementMetric *)self setNumMessageGroups:0];
  [(ATXMissedNotificationRankingEngagementMetric *)self setNumOtherGroups:0];
  [(ATXMissedNotificationRankingEngagementMetric *)self setNumMessageNotifications:0];
  [(ATXMissedNotificationRankingEngagementMetric *)self setNumOtherNotifications:0];
  [(ATXMissedNotificationRankingEngagementMetric *)self setNumMessageEngagements:0];
  [(ATXMissedNotificationRankingEngagementMetric *)self setNumOtherEngagements:0];
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v20 = [v4 rankedGroups];
  v21 = [v20 countByEnumeratingWithState:&v37 objects:v41 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v38;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v38 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v37 + 1) + 8 * i);
        v26 = [v25 digestEngagementTrackingMetrics];
        v27 = [v26 numEngagementsAfterExpiration];
        v28 = [v26 numEngagementsInScheduled] + v27;
        v29 = v28 + [v26 numEngagementsInUpcoming];
        if ([v25 isCommunicationGroup])
        {
          [(ATXMissedNotificationRankingEngagementMetric *)self setNumMessageGroups:[(ATXMissedNotificationRankingEngagementMetric *)self numMessageGroups]+ 1];
          v30 = [v25 rankedNotifications];
          -[ATXMissedNotificationRankingEngagementMetric setNumMessageNotifications:](self, "setNumMessageNotifications:", -[ATXMissedNotificationRankingEngagementMetric numMessageNotifications](self, "numMessageNotifications") + [v30 count]);

          [(ATXMissedNotificationRankingEngagementMetric *)self setNumMessageEngagements:[(ATXMissedNotificationRankingEngagementMetric *)self numMessageEngagements]+ v29];
        }

        else
        {
          [(ATXMissedNotificationRankingEngagementMetric *)self setNumOtherGroups:[(ATXMissedNotificationRankingEngagementMetric *)self numOtherGroups]+ 1];
          v31 = [v25 rankedNotifications];
          -[ATXMissedNotificationRankingEngagementMetric setNumOtherNotifications:](self, "setNumOtherNotifications:", -[ATXMissedNotificationRankingEngagementMetric numOtherNotifications](self, "numOtherNotifications") + [v31 count]);

          [(ATXMissedNotificationRankingEngagementMetric *)self setNumOtherEngagements:[(ATXMissedNotificationRankingEngagementMetric *)self numOtherEngagements]+ v29];
        }
      }

      v22 = [v20 countByEnumeratingWithState:&v37 objects:v41 count:16];
    }

    while (v22);
  }

  v32 = [v4 digestEngagementTrackingMetrics];
  -[ATXMissedNotificationRankingEngagementMetric setNumEngagementsInUpcoming:](self, "setNumEngagementsInUpcoming:", [v32 numEngagementsInUpcoming]);

  v33 = [v4 digestEngagementTrackingMetrics];
  -[ATXMissedNotificationRankingEngagementMetric setNumEngagementsAfterShow:](self, "setNumEngagementsAfterShow:", [v33 numEngagementsInScheduled]);

  v34 = [v4 digestEngagementTrackingMetrics];
  -[ATXMissedNotificationRankingEngagementMetric setNumEngagementsAfterExpiration:](self, "setNumEngagementsAfterExpiration:", [v34 numEngagementsAfterExpiration]);

  v35 = [v4 digestEngagementTrackingMetrics];
  -[ATXMissedNotificationRankingEngagementMetric setNumExpansions:](self, "setNumExpansions:", [v35 numExpansions]);

  v36 = *MEMORY[0x277D85DE8];
}

- (id)coreAnalyticsDictionary
{
  v34[16] = *MEMORY[0x277D85DE8];
  v33[0] = @"createdTimestamp";
  v3 = MEMORY[0x277CCABB0];
  [(ATXMissedNotificationRankingEngagementMetric *)self createdTimestamp];
  v32 = [v3 numberWithDouble:?];
  v34[0] = v32;
  v33[1] = @"showTimestamp";
  v4 = MEMORY[0x277CCABB0];
  [(ATXMissedNotificationRankingEngagementMetric *)self expireTimestamp];
  v31 = [v4 numberWithDouble:?];
  v34[1] = v31;
  v33[2] = @"expireTimestamp";
  v5 = MEMORY[0x277CCABB0];
  [(ATXMissedNotificationRankingEngagementMetric *)self expireTimestamp];
  v30 = [v5 numberWithDouble:?];
  v34[2] = v30;
  v33[3] = @"mnbUUID";
  v6 = [(ATXMissedNotificationRankingEngagementMetric *)self mnbUUID];
  v7 = v6;
  if (!v6)
  {
    v6 = [MEMORY[0x277CBEB68] null];
  }

  v25 = v6;
  v34[3] = v6;
  v33[4] = @"previousModeSemanticType";
  v8 = [(ATXMissedNotificationRankingEngagementMetric *)self previousModeSemanticType];
  v9 = v8;
  if (!v8)
  {
    v8 = [MEMORY[0x277CBEB68] null];
  }

  v28 = v9;
  v29 = v7;
  v24 = v8;
  v34[4] = v8;
  v33[5] = @"nextModeSemanticType";
  v10 = [(ATXMissedNotificationRankingEngagementMetric *)self nextModeSemanticType];
  v11 = v10;
  if (!v10)
  {
    v10 = [MEMORY[0x277CBEB68] null];
  }

  v34[5] = v10;
  v33[6] = @"numMessageGroups";
  v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXMissedNotificationRankingEngagementMetric numMessageGroups](self, "numMessageGroups", v10)}];
  v34[6] = v27;
  v33[7] = @"numOtherGroups";
  v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXMissedNotificationRankingEngagementMetric numOtherGroups](self, "numOtherGroups")}];
  v34[7] = v26;
  v33[8] = @"numMessageNotifications";
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXMissedNotificationRankingEngagementMetric numMessageNotifications](self, "numMessageNotifications")}];
  v34[8] = v12;
  v33[9] = @"numOtherNotifications";
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXMissedNotificationRankingEngagementMetric numOtherNotifications](self, "numOtherNotifications")}];
  v34[9] = v13;
  v33[10] = @"numMessageEngagements";
  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXMissedNotificationRankingEngagementMetric numMessageEngagements](self, "numMessageEngagements")}];
  v34[10] = v14;
  v33[11] = @"numOtherEngagements";
  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXMissedNotificationRankingEngagementMetric numOtherEngagements](self, "numOtherEngagements")}];
  v34[11] = v15;
  v33[12] = @"numEngagementsInUpcoming";
  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXMissedNotificationRankingEngagementMetric numEngagementsInUpcoming](self, "numEngagementsInUpcoming")}];
  v34[12] = v16;
  v33[13] = @"numEngagementsAfterShow";
  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXMissedNotificationRankingEngagementMetric numEngagementsAfterShow](self, "numEngagementsAfterShow")}];
  v34[13] = v17;
  v33[14] = @"numEngagementsAfterExpiration";
  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXMissedNotificationRankingEngagementMetric numEngagementsAfterExpiration](self, "numEngagementsAfterExpiration")}];
  v34[14] = v18;
  v33[15] = @"numExpansions";
  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXMissedNotificationRankingEngagementMetric numExpansions](self, "numExpansions")}];
  v34[15] = v19;
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:v33 count:16];

  if (!v11)
  {
  }

  if (!v28)
  {
  }

  if (!v29)
  {
  }

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

@end