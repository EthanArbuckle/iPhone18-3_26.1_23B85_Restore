@interface ATXMissedNotificationRankingEngagementMetric
- (id)coreAnalyticsDictionary;
- (void)populateMetricsFromRanking:(id)ranking;
@end

@implementation ATXMissedNotificationRankingEngagementMetric

- (void)populateMetricsFromRanking:(id)ranking
{
  v42 = *MEMORY[0x277D85DE8];
  rankingCopy = ranking;
  digestTimeline = [rankingCopy digestTimeline];
  firstUpcomingViewTimestamp = [digestTimeline firstUpcomingViewTimestamp];
  if (firstUpcomingViewTimestamp)
  {
    digestTimeline2 = [rankingCopy digestTimeline];
    firstUpcomingViewTimestamp2 = [digestTimeline2 firstUpcomingViewTimestamp];
    [firstUpcomingViewTimestamp2 timeIntervalSinceReferenceDate];
    [(ATXMissedNotificationRankingEngagementMetric *)self setCreatedTimestamp:?];
  }

  else
  {
    [(ATXMissedNotificationRankingEngagementMetric *)self setCreatedTimestamp:0.0];
  }

  digestTimeline3 = [rankingCopy digestTimeline];
  firstScheduledViewTimestamp = [digestTimeline3 firstScheduledViewTimestamp];
  if (firstScheduledViewTimestamp)
  {
    digestTimeline4 = [rankingCopy digestTimeline];
    firstScheduledViewTimestamp2 = [digestTimeline4 firstScheduledViewTimestamp];
    [firstScheduledViewTimestamp2 timeIntervalSinceReferenceDate];
    [(ATXMissedNotificationRankingEngagementMetric *)self setShowTimestamp:?];
  }

  else
  {
    [(ATXMissedNotificationRankingEngagementMetric *)self setShowTimestamp:0.0];
  }

  digestTimeline5 = [rankingCopy digestTimeline];
  digestRemovedTimestamp = [digestTimeline5 digestRemovedTimestamp];
  if (digestRemovedTimestamp)
  {
    digestTimeline6 = [rankingCopy digestTimeline];
    digestRemovedTimestamp2 = [digestTimeline6 digestRemovedTimestamp];
    [digestRemovedTimestamp2 timeIntervalSinceReferenceDate];
    [(ATXMissedNotificationRankingEngagementMetric *)self setExpireTimestamp:?];
  }

  else
  {
    [(ATXMissedNotificationRankingEngagementMetric *)self setExpireTimestamp:0.0];
  }

  uuid = [rankingCopy uuid];
  uUIDString = [uuid UUIDString];
  [(ATXMissedNotificationRankingEngagementMetric *)self setMnbUUID:uUIDString];

  modeIdString = [rankingCopy modeIdString];
  [(ATXMissedNotificationRankingEngagementMetric *)self setPreviousModeSemanticType:modeIdString];

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
  rankedGroups = [rankingCopy rankedGroups];
  v21 = [rankedGroups countByEnumeratingWithState:&v37 objects:v41 count:16];
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
          objc_enumerationMutation(rankedGroups);
        }

        v25 = *(*(&v37 + 1) + 8 * i);
        digestEngagementTrackingMetrics = [v25 digestEngagementTrackingMetrics];
        numEngagementsAfterExpiration = [digestEngagementTrackingMetrics numEngagementsAfterExpiration];
        v28 = [digestEngagementTrackingMetrics numEngagementsInScheduled] + numEngagementsAfterExpiration;
        v29 = v28 + [digestEngagementTrackingMetrics numEngagementsInUpcoming];
        if ([v25 isCommunicationGroup])
        {
          [(ATXMissedNotificationRankingEngagementMetric *)self setNumMessageGroups:[(ATXMissedNotificationRankingEngagementMetric *)self numMessageGroups]+ 1];
          rankedNotifications = [v25 rankedNotifications];
          -[ATXMissedNotificationRankingEngagementMetric setNumMessageNotifications:](self, "setNumMessageNotifications:", -[ATXMissedNotificationRankingEngagementMetric numMessageNotifications](self, "numMessageNotifications") + [rankedNotifications count]);

          [(ATXMissedNotificationRankingEngagementMetric *)self setNumMessageEngagements:[(ATXMissedNotificationRankingEngagementMetric *)self numMessageEngagements]+ v29];
        }

        else
        {
          [(ATXMissedNotificationRankingEngagementMetric *)self setNumOtherGroups:[(ATXMissedNotificationRankingEngagementMetric *)self numOtherGroups]+ 1];
          rankedNotifications2 = [v25 rankedNotifications];
          -[ATXMissedNotificationRankingEngagementMetric setNumOtherNotifications:](self, "setNumOtherNotifications:", -[ATXMissedNotificationRankingEngagementMetric numOtherNotifications](self, "numOtherNotifications") + [rankedNotifications2 count]);

          [(ATXMissedNotificationRankingEngagementMetric *)self setNumOtherEngagements:[(ATXMissedNotificationRankingEngagementMetric *)self numOtherEngagements]+ v29];
        }
      }

      v22 = [rankedGroups countByEnumeratingWithState:&v37 objects:v41 count:16];
    }

    while (v22);
  }

  digestEngagementTrackingMetrics2 = [rankingCopy digestEngagementTrackingMetrics];
  -[ATXMissedNotificationRankingEngagementMetric setNumEngagementsInUpcoming:](self, "setNumEngagementsInUpcoming:", [digestEngagementTrackingMetrics2 numEngagementsInUpcoming]);

  digestEngagementTrackingMetrics3 = [rankingCopy digestEngagementTrackingMetrics];
  -[ATXMissedNotificationRankingEngagementMetric setNumEngagementsAfterShow:](self, "setNumEngagementsAfterShow:", [digestEngagementTrackingMetrics3 numEngagementsInScheduled]);

  digestEngagementTrackingMetrics4 = [rankingCopy digestEngagementTrackingMetrics];
  -[ATXMissedNotificationRankingEngagementMetric setNumEngagementsAfterExpiration:](self, "setNumEngagementsAfterExpiration:", [digestEngagementTrackingMetrics4 numEngagementsAfterExpiration]);

  digestEngagementTrackingMetrics5 = [rankingCopy digestEngagementTrackingMetrics];
  -[ATXMissedNotificationRankingEngagementMetric setNumExpansions:](self, "setNumExpansions:", [digestEngagementTrackingMetrics5 numExpansions]);

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
  mnbUUID = [(ATXMissedNotificationRankingEngagementMetric *)self mnbUUID];
  v7 = mnbUUID;
  if (!mnbUUID)
  {
    mnbUUID = [MEMORY[0x277CBEB68] null];
  }

  v25 = mnbUUID;
  v34[3] = mnbUUID;
  v33[4] = @"previousModeSemanticType";
  previousModeSemanticType = [(ATXMissedNotificationRankingEngagementMetric *)self previousModeSemanticType];
  v9 = previousModeSemanticType;
  if (!previousModeSemanticType)
  {
    previousModeSemanticType = [MEMORY[0x277CBEB68] null];
  }

  v28 = v9;
  v29 = v7;
  v24 = previousModeSemanticType;
  v34[4] = previousModeSemanticType;
  v33[5] = @"nextModeSemanticType";
  nextModeSemanticType = [(ATXMissedNotificationRankingEngagementMetric *)self nextModeSemanticType];
  v11 = nextModeSemanticType;
  if (!nextModeSemanticType)
  {
    nextModeSemanticType = [MEMORY[0x277CBEB68] null];
  }

  v34[5] = nextModeSemanticType;
  v33[6] = @"numMessageGroups";
  v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXMissedNotificationRankingEngagementMetric numMessageGroups](self, "numMessageGroups", nextModeSemanticType)}];
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