@interface ATXDigestGroupEngagementMetric
- (id)coreAnalyticsDictionary;
- (void)populateMetricsFromDigestGroup:(id)group digestUUID:(id)d;
@end

@implementation ATXDigestGroupEngagementMetric

- (void)populateMetricsFromDigestGroup:(id)group digestUUID:(id)d
{
  groupCopy = group;
  uUIDString = [d UUIDString];
  [(ATXDigestGroupEngagementMetric *)self setDigestUUID:uUIDString];

  bundleId = [groupCopy bundleId];
  [(ATXDigestGroupEngagementMetric *)self setBundleId:bundleId];

  digestEngagementTrackingMetrics = [groupCopy digestEngagementTrackingMetrics];
  sectionIdentifier = [digestEngagementTrackingMetrics sectionIdentifier];
  [(ATXDigestGroupEngagementMetric *)self setSection:sectionIdentifier];

  digestEngagementTrackingMetrics2 = [groupCopy digestEngagementTrackingMetrics];
  -[ATXDigestGroupEngagementMetric setSectionPosition:](self, "setSectionPosition:", [digestEngagementTrackingMetrics2 sectionPosition]);

  digestEngagementTrackingMetrics3 = [groupCopy digestEngagementTrackingMetrics];
  -[ATXDigestGroupEngagementMetric setSectionSize:](self, "setSectionSize:", [digestEngagementTrackingMetrics3 sectionSize]);

  rankedNotifications = [groupCopy rankedNotifications];
  -[ATXDigestGroupEngagementMetric setNumNotifications:](self, "setNumNotifications:", [rankedNotifications count]);

  -[ATXDigestGroupEngagementMetric setHasImage:](self, "setHasImage:", [groupCopy hasPreviewableAttachment]);
  [groupCopy priority];
  [(ATXDigestGroupEngagementMetric *)self setGroupScore:?];
  digestEngagementTrackingMetrics4 = [groupCopy digestEngagementTrackingMetrics];
  -[ATXDigestGroupEngagementMetric setNumEngagementsInUpcoming:](self, "setNumEngagementsInUpcoming:", [digestEngagementTrackingMetrics4 numEngagementsInUpcoming]);

  digestEngagementTrackingMetrics5 = [groupCopy digestEngagementTrackingMetrics];
  -[ATXDigestGroupEngagementMetric setNumEngagementsInScheduled:](self, "setNumEngagementsInScheduled:", [digestEngagementTrackingMetrics5 numEngagementsInScheduled]);

  digestEngagementTrackingMetrics6 = [groupCopy digestEngagementTrackingMetrics];
  -[ATXDigestGroupEngagementMetric setNumEngagementsAfterExpiration:](self, "setNumEngagementsAfterExpiration:", [digestEngagementTrackingMetrics6 numEngagementsAfterExpiration]);

  digestEngagementTrackingMetrics7 = [groupCopy digestEngagementTrackingMetrics];

  -[ATXDigestGroupEngagementMetric setNumExpansions:](self, "setNumExpansions:", [digestEngagementTrackingMetrics7 numExpansions]);
}

- (id)coreAnalyticsDictionary
{
  v33[13] = *MEMORY[0x277D85DE8];
  v32[0] = @"digestUUID";
  digestUUID = [(ATXDigestGroupEngagementMetric *)self digestUUID];
  v4 = digestUUID;
  if (!digestUUID)
  {
    digestUUID = [MEMORY[0x277CBEB68] null];
  }

  v25 = digestUUID;
  v33[0] = digestUUID;
  v32[1] = @"bundleId";
  bundleId = [(ATXDigestGroupEngagementMetric *)self bundleId];
  v6 = bundleId;
  if (!bundleId)
  {
    bundleId = [MEMORY[0x277CBEB68] null];
  }

  v31 = v4;
  v24 = bundleId;
  v33[1] = bundleId;
  v32[2] = @"secureBundleId";
  bundleId2 = [(ATXDigestGroupEngagementMetric *)self bundleId];
  if (bundleId2)
  {
    bundleId3 = [(ATXDigestGroupEngagementMetric *)self bundleId];
    null = [ATXCoreAnalyticsFieldUtilities hashBoundString:?];
  }

  else
  {
    null = [MEMORY[0x277CBEB68] null];
    bundleId3 = null;
  }

  v29 = bundleId2;
  v30 = v6;
  v26 = null;
  v33[2] = null;
  v32[3] = @"section";
  section = [(ATXDigestGroupEngagementMetric *)self section];
  v10 = section;
  if (!section)
  {
    section = [MEMORY[0x277CBEB68] null];
  }

  v23 = section;
  v33[3] = section;
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