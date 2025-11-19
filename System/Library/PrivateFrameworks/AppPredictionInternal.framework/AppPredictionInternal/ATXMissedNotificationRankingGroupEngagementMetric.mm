@interface ATXMissedNotificationRankingGroupEngagementMetric
- (id)coreAnalyticsDictionary;
- (void)populateMetricsFromDigestGroup:(id)a3 mnbUUID:(id)a4;
@end

@implementation ATXMissedNotificationRankingGroupEngagementMetric

- (void)populateMetricsFromDigestGroup:(id)a3 mnbUUID:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 bundleId];
  [(ATXMissedNotificationRankingGroupEngagementMetric *)self setBundleId:v8];

  [v7 priority];
  [(ATXMissedNotificationRankingGroupEngagementMetric *)self setGroupScore:?];
  v9 = [v6 UUIDString];

  [(ATXMissedNotificationRankingGroupEngagementMetric *)self setMnbUUID:v9];
  v10 = [v7 digestEngagementTrackingMetrics];
  -[ATXMissedNotificationRankingGroupEngagementMetric setNumEngagementsInUpcoming:](self, "setNumEngagementsInUpcoming:", [v10 numEngagementsInUpcoming]);

  v11 = [v7 digestEngagementTrackingMetrics];
  -[ATXMissedNotificationRankingGroupEngagementMetric setNumEngagementsAfterShow:](self, "setNumEngagementsAfterShow:", [v11 numEngagementsInScheduled]);

  v12 = [v7 digestEngagementTrackingMetrics];
  -[ATXMissedNotificationRankingGroupEngagementMetric setNumEngagementsAfterExpiration:](self, "setNumEngagementsAfterExpiration:", [v12 numEngagementsAfterExpiration]);

  v13 = [v7 digestEngagementTrackingMetrics];
  -[ATXMissedNotificationRankingGroupEngagementMetric setNumExpansions:](self, "setNumExpansions:", [v13 numExpansions]);

  v14 = [v7 digestEngagementTrackingMetrics];
  v15 = [v14 sectionIdentifier];
  [(ATXMissedNotificationRankingGroupEngagementMetric *)self setSection:v15];

  v16 = [v7 digestEngagementTrackingMetrics];
  -[ATXMissedNotificationRankingGroupEngagementMetric setSectionPosition:](self, "setSectionPosition:", [v16 sectionPosition]);

  v17 = [v7 digestEngagementTrackingMetrics];
  -[ATXMissedNotificationRankingGroupEngagementMetric setSectionSize:](self, "setSectionSize:", [v17 sectionSize]);

  v18 = [v7 rankedNotifications];

  -[ATXMissedNotificationRankingGroupEngagementMetric setNumNotifications:](self, "setNumNotifications:", [v18 count]);
}

- (id)coreAnalyticsDictionary
{
  v28[11] = *MEMORY[0x277D85DE8];
  v27[0] = @"bundleId";
  v3 = [(ATXMissedNotificationRankingGroupEngagementMetric *)self bundleId];
  v4 = v3;
  if (!v3)
  {
    v3 = [MEMORY[0x277CBEB68] null];
  }

  v21 = v3;
  v28[0] = v3;
  v27[1] = @"secureBundleId";
  v25 = [(ATXMissedNotificationRankingGroupEngagementMetric *)self bundleId];
  v26 = v4;
  if (v25)
  {
    v24 = [(ATXMissedNotificationRankingGroupEngagementMetric *)self bundleId];
    v5 = [ATXCoreAnalyticsFieldUtilities hashBoundString:?];
  }

  else
  {
    v5 = [MEMORY[0x277CBEB68] null];
    v24 = v5;
  }

  v22 = v5;
  v28[1] = v5;
  v27[2] = @"groupScore";
  v6 = MEMORY[0x277CCABB0];
  [(ATXMissedNotificationRankingGroupEngagementMetric *)self groupScore];
  v23 = [v6 numberWithDouble:?];
  v28[2] = v23;
  v27[3] = @"mnbUUID";
  v7 = [(ATXMissedNotificationRankingGroupEngagementMetric *)self mnbUUID];
  v8 = v7;
  if (!v7)
  {
    v7 = [MEMORY[0x277CBEB68] null];
  }

  v20 = v7;
  v28[3] = v7;
  v27[4] = @"numEngagementsAfterExpiration";
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXMissedNotificationRankingGroupEngagementMetric numEngagementsAfterExpiration](self, "numEngagementsAfterExpiration")}];
  v28[4] = v9;
  v27[5] = @"numEngagementsAfterShow";
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXMissedNotificationRankingGroupEngagementMetric numEngagementsAfterShow](self, "numEngagementsAfterShow")}];
  v28[5] = v10;
  v27[6] = @"numEngagementsInUpcoming";
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXMissedNotificationRankingGroupEngagementMetric numEngagementsInUpcoming](self, "numEngagementsInUpcoming")}];
  v28[6] = v11;
  v27[7] = @"numExpansions";
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXMissedNotificationRankingGroupEngagementMetric numExpansions](self, "numExpansions")}];
  v28[7] = v12;
  v27[8] = @"section";
  v13 = [(ATXMissedNotificationRankingGroupEngagementMetric *)self section];
  v14 = v13;
  if (!v13)
  {
    v14 = [MEMORY[0x277CBEB68] null];
  }

  v28[8] = v14;
  v27[9] = @"sectionPosition";
  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXMissedNotificationRankingGroupEngagementMetric sectionPosition](self, "sectionPosition")}];
  v28[9] = v15;
  v27[10] = @"sectionSize";
  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXMissedNotificationRankingGroupEngagementMetric sectionSize](self, "sectionSize")}];
  v28[10] = v16;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:11];

  if (!v13)
  {
  }

  if (!v8)
  {
  }

  if (v25)
  {
  }

  if (!v26)
  {
  }

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

@end