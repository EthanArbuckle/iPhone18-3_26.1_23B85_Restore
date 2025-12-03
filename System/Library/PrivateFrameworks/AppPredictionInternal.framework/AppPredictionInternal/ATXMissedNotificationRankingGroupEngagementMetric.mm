@interface ATXMissedNotificationRankingGroupEngagementMetric
- (id)coreAnalyticsDictionary;
- (void)populateMetricsFromDigestGroup:(id)group mnbUUID:(id)d;
@end

@implementation ATXMissedNotificationRankingGroupEngagementMetric

- (void)populateMetricsFromDigestGroup:(id)group mnbUUID:(id)d
{
  dCopy = d;
  groupCopy = group;
  bundleId = [groupCopy bundleId];
  [(ATXMissedNotificationRankingGroupEngagementMetric *)self setBundleId:bundleId];

  [groupCopy priority];
  [(ATXMissedNotificationRankingGroupEngagementMetric *)self setGroupScore:?];
  uUIDString = [dCopy UUIDString];

  [(ATXMissedNotificationRankingGroupEngagementMetric *)self setMnbUUID:uUIDString];
  digestEngagementTrackingMetrics = [groupCopy digestEngagementTrackingMetrics];
  -[ATXMissedNotificationRankingGroupEngagementMetric setNumEngagementsInUpcoming:](self, "setNumEngagementsInUpcoming:", [digestEngagementTrackingMetrics numEngagementsInUpcoming]);

  digestEngagementTrackingMetrics2 = [groupCopy digestEngagementTrackingMetrics];
  -[ATXMissedNotificationRankingGroupEngagementMetric setNumEngagementsAfterShow:](self, "setNumEngagementsAfterShow:", [digestEngagementTrackingMetrics2 numEngagementsInScheduled]);

  digestEngagementTrackingMetrics3 = [groupCopy digestEngagementTrackingMetrics];
  -[ATXMissedNotificationRankingGroupEngagementMetric setNumEngagementsAfterExpiration:](self, "setNumEngagementsAfterExpiration:", [digestEngagementTrackingMetrics3 numEngagementsAfterExpiration]);

  digestEngagementTrackingMetrics4 = [groupCopy digestEngagementTrackingMetrics];
  -[ATXMissedNotificationRankingGroupEngagementMetric setNumExpansions:](self, "setNumExpansions:", [digestEngagementTrackingMetrics4 numExpansions]);

  digestEngagementTrackingMetrics5 = [groupCopy digestEngagementTrackingMetrics];
  sectionIdentifier = [digestEngagementTrackingMetrics5 sectionIdentifier];
  [(ATXMissedNotificationRankingGroupEngagementMetric *)self setSection:sectionIdentifier];

  digestEngagementTrackingMetrics6 = [groupCopy digestEngagementTrackingMetrics];
  -[ATXMissedNotificationRankingGroupEngagementMetric setSectionPosition:](self, "setSectionPosition:", [digestEngagementTrackingMetrics6 sectionPosition]);

  digestEngagementTrackingMetrics7 = [groupCopy digestEngagementTrackingMetrics];
  -[ATXMissedNotificationRankingGroupEngagementMetric setSectionSize:](self, "setSectionSize:", [digestEngagementTrackingMetrics7 sectionSize]);

  rankedNotifications = [groupCopy rankedNotifications];

  -[ATXMissedNotificationRankingGroupEngagementMetric setNumNotifications:](self, "setNumNotifications:", [rankedNotifications count]);
}

- (id)coreAnalyticsDictionary
{
  v28[11] = *MEMORY[0x277D85DE8];
  v27[0] = @"bundleId";
  bundleId = [(ATXMissedNotificationRankingGroupEngagementMetric *)self bundleId];
  v4 = bundleId;
  if (!bundleId)
  {
    bundleId = [MEMORY[0x277CBEB68] null];
  }

  v21 = bundleId;
  v28[0] = bundleId;
  v27[1] = @"secureBundleId";
  bundleId2 = [(ATXMissedNotificationRankingGroupEngagementMetric *)self bundleId];
  v26 = v4;
  if (bundleId2)
  {
    bundleId3 = [(ATXMissedNotificationRankingGroupEngagementMetric *)self bundleId];
    null = [ATXCoreAnalyticsFieldUtilities hashBoundString:?];
  }

  else
  {
    null = [MEMORY[0x277CBEB68] null];
    bundleId3 = null;
  }

  v22 = null;
  v28[1] = null;
  v27[2] = @"groupScore";
  v6 = MEMORY[0x277CCABB0];
  [(ATXMissedNotificationRankingGroupEngagementMetric *)self groupScore];
  v23 = [v6 numberWithDouble:?];
  v28[2] = v23;
  v27[3] = @"mnbUUID";
  mnbUUID = [(ATXMissedNotificationRankingGroupEngagementMetric *)self mnbUUID];
  v8 = mnbUUID;
  if (!mnbUUID)
  {
    mnbUUID = [MEMORY[0x277CBEB68] null];
  }

  v20 = mnbUUID;
  v28[3] = mnbUUID;
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
  section = [(ATXMissedNotificationRankingGroupEngagementMetric *)self section];
  null2 = section;
  if (!section)
  {
    null2 = [MEMORY[0x277CBEB68] null];
  }

  v28[8] = null2;
  v27[9] = @"sectionPosition";
  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXMissedNotificationRankingGroupEngagementMetric sectionPosition](self, "sectionPosition")}];
  v28[9] = v15;
  v27[10] = @"sectionSize";
  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXMissedNotificationRankingGroupEngagementMetric sectionSize](self, "sectionSize")}];
  v28[10] = v16;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:11];

  if (!section)
  {
  }

  if (!v8)
  {
  }

  if (bundleId2)
  {
  }

  if (!v26)
  {
  }

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

@end