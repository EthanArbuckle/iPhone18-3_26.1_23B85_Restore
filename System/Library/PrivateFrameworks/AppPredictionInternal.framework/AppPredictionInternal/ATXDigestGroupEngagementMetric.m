@interface ATXDigestGroupEngagementMetric
- (id)coreAnalyticsDictionary;
- (void)populateMetricsFromDigestGroup:(id)a3 digestUUID:(id)a4;
@end

@implementation ATXDigestGroupEngagementMetric

- (void)populateMetricsFromDigestGroup:(id)a3 digestUUID:(id)a4
{
  v6 = a3;
  v7 = [a4 UUIDString];
  [(ATXDigestGroupEngagementMetric *)self setDigestUUID:v7];

  v8 = [v6 bundleId];
  [(ATXDigestGroupEngagementMetric *)self setBundleId:v8];

  v9 = [v6 digestEngagementTrackingMetrics];
  v10 = [v9 sectionIdentifier];
  [(ATXDigestGroupEngagementMetric *)self setSection:v10];

  v11 = [v6 digestEngagementTrackingMetrics];
  -[ATXDigestGroupEngagementMetric setSectionPosition:](self, "setSectionPosition:", [v11 sectionPosition]);

  v12 = [v6 digestEngagementTrackingMetrics];
  -[ATXDigestGroupEngagementMetric setSectionSize:](self, "setSectionSize:", [v12 sectionSize]);

  v13 = [v6 rankedNotifications];
  -[ATXDigestGroupEngagementMetric setNumNotifications:](self, "setNumNotifications:", [v13 count]);

  -[ATXDigestGroupEngagementMetric setHasImage:](self, "setHasImage:", [v6 hasPreviewableAttachment]);
  [v6 priority];
  [(ATXDigestGroupEngagementMetric *)self setGroupScore:?];
  v14 = [v6 digestEngagementTrackingMetrics];
  -[ATXDigestGroupEngagementMetric setNumEngagementsInUpcoming:](self, "setNumEngagementsInUpcoming:", [v14 numEngagementsInUpcoming]);

  v15 = [v6 digestEngagementTrackingMetrics];
  -[ATXDigestGroupEngagementMetric setNumEngagementsInScheduled:](self, "setNumEngagementsInScheduled:", [v15 numEngagementsInScheduled]);

  v16 = [v6 digestEngagementTrackingMetrics];
  -[ATXDigestGroupEngagementMetric setNumEngagementsAfterExpiration:](self, "setNumEngagementsAfterExpiration:", [v16 numEngagementsAfterExpiration]);

  v17 = [v6 digestEngagementTrackingMetrics];

  -[ATXDigestGroupEngagementMetric setNumExpansions:](self, "setNumExpansions:", [v17 numExpansions]);
}

- (id)coreAnalyticsDictionary
{
  v33[13] = *MEMORY[0x277D85DE8];
  v32[0] = @"digestUUID";
  v3 = [(ATXDigestGroupEngagementMetric *)self digestUUID];
  v4 = v3;
  if (!v3)
  {
    v3 = [MEMORY[0x277CBEB68] null];
  }

  v25 = v3;
  v33[0] = v3;
  v32[1] = @"bundleId";
  v5 = [(ATXDigestGroupEngagementMetric *)self bundleId];
  v6 = v5;
  if (!v5)
  {
    v5 = [MEMORY[0x277CBEB68] null];
  }

  v31 = v4;
  v24 = v5;
  v33[1] = v5;
  v32[2] = @"secureBundleId";
  v7 = [(ATXDigestGroupEngagementMetric *)self bundleId];
  if (v7)
  {
    v28 = [(ATXDigestGroupEngagementMetric *)self bundleId];
    v8 = [ATXCoreAnalyticsFieldUtilities hashBoundString:?];
  }

  else
  {
    v8 = [MEMORY[0x277CBEB68] null];
    v28 = v8;
  }

  v29 = v7;
  v30 = v6;
  v26 = v8;
  v33[2] = v8;
  v32[3] = @"section";
  v9 = [(ATXDigestGroupEngagementMetric *)self section];
  v10 = v9;
  if (!v9)
  {
    v9 = [MEMORY[0x277CBEB68] null];
  }

  v23 = v9;
  v33[3] = v9;
  v32[4] = @"sectionPosition";
  v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXDigestGroupEngagementMetric sectionPosition](self, "sectionPosition")}];
  v33[4] = v27;
  v32[5] = @"sectionSize";
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXDigestGroupEngagementMetric sectionSize](self, "sectionSize")}];
  v33[5] = v11;
  v32[6] = @"numNotifications";
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXDigestGroupEngagementMetric numNotifications](self, "numNotifications")}];
  v33[6] = v12;
  v32[7] = @"hasImage";
  v13 = [MEMORY[0x277CCABB0] numberWithBool:{-[ATXDigestGroupEngagementMetric hasImage](self, "hasImage")}];
  v33[7] = v13;
  v32[8] = @"groupScore";
  v14 = MEMORY[0x277CCABB0];
  [(ATXDigestGroupEngagementMetric *)self groupScore];
  v15 = [v14 numberWithDouble:?];
  v33[8] = v15;
  v32[9] = @"numEngagementsInUpcoming";
  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXDigestGroupEngagementMetric numEngagementsInUpcoming](self, "numEngagementsInUpcoming")}];
  v33[9] = v16;
  v32[10] = @"numEngagementsInScheduled";
  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXDigestGroupEngagementMetric numEngagementsInScheduled](self, "numEngagementsInScheduled")}];
  v33[10] = v17;
  v32[11] = @"numEngagementsAfterExpiration";
  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXDigestGroupEngagementMetric numEngagementsAfterExpiration](self, "numEngagementsAfterExpiration")}];
  v33[11] = v18;
  v32[12] = @"numExpansions";
  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXDigestGroupEngagementMetric numExpansions](self, "numExpansions")}];
  v33[12] = v19;
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:13];

  if (!v10)
  {
  }

  if (v29)
  {
  }

  if (!v30)
  {
  }

  if (!v31)
  {
  }

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

@end