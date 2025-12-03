@interface ATXDigestEngagementMetric
- (id)coreAnalyticsDictionary;
- (void)populateMetricsFromDigest:(id)digest;
@end

@implementation ATXDigestEngagementMetric

- (void)populateMetricsFromDigest:(id)digest
{
  digestCopy = digest;
  modeIdString = [digestCopy modeIdString];
  [(ATXDigestEngagementMetric *)self setDigestTimeCategory:modeIdString];

  uuid = [digestCopy uuid];
  uUIDString = [uuid UUIDString];
  [(ATXDigestEngagementMetric *)self setDigestUUID:uUIDString];

  digestEngagementTrackingMetrics = [digestCopy digestEngagementTrackingMetrics];
  -[ATXDigestEngagementMetric setNumDigestExpansions:](self, "setNumDigestExpansions:", [digestEngagementTrackingMetrics numDigestExpansions]);

  messageGroups = [digestCopy messageGroups];
  -[ATXDigestEngagementMetric setNumMessageGroups:](self, "setNumMessageGroups:", [messageGroups count]);

  highlightedGroups = [digestCopy highlightedGroups];
  -[ATXDigestEngagementMetric setNumHighlightedGroups:](self, "setNumHighlightedGroups:", [highlightedGroups count]);

  rankedGroups = [digestCopy rankedGroups];
  -[ATXDigestEngagementMetric setNumOtherGroups:](self, "setNumOtherGroups:", [rankedGroups count]);

  messageGroups2 = [digestCopy messageGroups];
  v12 = [messageGroups2 _pas_leftFoldWithInitialObject:&unk_283A572D8 accumulate:&__block_literal_global_203];
  -[ATXDigestEngagementMetric setNumMessageNotifications:](self, "setNumMessageNotifications:", [v12 unsignedIntegerValue]);

  highlightedGroups2 = [digestCopy highlightedGroups];
  v14 = [highlightedGroups2 _pas_leftFoldWithInitialObject:&unk_283A572D8 accumulate:&__block_literal_global_22_0];
  -[ATXDigestEngagementMetric setNumHighlightedNotifications:](self, "setNumHighlightedNotifications:", [v14 unsignedIntegerValue]);

  rankedGroups2 = [digestCopy rankedGroups];
  v16 = [rankedGroups2 _pas_leftFoldWithInitialObject:&unk_283A572D8 accumulate:&__block_literal_global_24_3];
  -[ATXDigestEngagementMetric setNumOtherNotifications:](self, "setNumOtherNotifications:", [v16 unsignedIntegerValue]);

  digestEngagementTrackingMetrics2 = [digestCopy digestEngagementTrackingMetrics];
  -[ATXDigestEngagementMetric setNumEngagementsInUpcoming:](self, "setNumEngagementsInUpcoming:", [digestEngagementTrackingMetrics2 numEngagementsInUpcoming]);

  digestEngagementTrackingMetrics3 = [digestCopy digestEngagementTrackingMetrics];
  -[ATXDigestEngagementMetric setNumEngagementsInScheduled:](self, "setNumEngagementsInScheduled:", [digestEngagementTrackingMetrics3 numEngagementsInScheduled]);

  digestEngagementTrackingMetrics4 = [digestCopy digestEngagementTrackingMetrics];
  -[ATXDigestEngagementMetric setNumEngagementsAfterExpiration:](self, "setNumEngagementsAfterExpiration:", [digestEngagementTrackingMetrics4 numEngagementsAfterExpiration]);

  digestEngagementTrackingMetrics5 = [digestCopy digestEngagementTrackingMetrics];
  -[ATXDigestEngagementMetric setNumNotificationGroupExpansions:](self, "setNumNotificationGroupExpansions:", [digestEngagementTrackingMetrics5 numExpansions]);

  digestTimeline = [digestCopy digestTimeline];
  firstUpcomingViewTimestamp = [digestTimeline firstUpcomingViewTimestamp];
  if (firstUpcomingViewTimestamp)
  {
    digestTimeline2 = [digestCopy digestTimeline];
    firstUpcomingViewTimestamp2 = [digestTimeline2 firstUpcomingViewTimestamp];
    [firstUpcomingViewTimestamp2 timeIntervalSinceReferenceDate];
    [(ATXDigestEngagementMetric *)self setFirstUpcomingViewTimestamp:?];
  }

  else
  {
    [(ATXDigestEngagementMetric *)self setFirstUpcomingViewTimestamp:0.0];
  }

  digestTimeline3 = [digestCopy digestTimeline];
  firstScheduledViewTimestamp = [digestTimeline3 firstScheduledViewTimestamp];
  if (firstScheduledViewTimestamp)
  {
    digestTimeline4 = [digestCopy digestTimeline];
    firstScheduledViewTimestamp2 = [digestTimeline4 firstScheduledViewTimestamp];
    [firstScheduledViewTimestamp2 timeIntervalSinceReferenceDate];
    [(ATXDigestEngagementMetric *)self setFirstScheduledViewTimestamp:?];
  }

  else
  {
    [(ATXDigestEngagementMetric *)self setFirstScheduledViewTimestamp:0.0];
  }

  digestTimeline5 = [digestCopy digestTimeline];
  digestRemovedTimestamp = [digestTimeline5 digestRemovedTimestamp];
  if (digestRemovedTimestamp)
  {
    digestTimeline6 = [digestCopy digestTimeline];
    digestRemovedTimestamp2 = [digestTimeline6 digestRemovedTimestamp];
    [digestRemovedTimestamp2 timeIntervalSinceReferenceDate];
    [(ATXDigestEngagementMetric *)self setDigestExpirationTimestamp:?];
  }

  else
  {
    [(ATXDigestEngagementMetric *)self setDigestExpirationTimestamp:0.0];
  }
}

id __55__ATXDigestEngagementMetric_populateMetricsFromDigest___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x277CCABB0];
  v5 = a3;
  v6 = [a2 unsignedIntegerValue];
  v7 = [v5 rankedNotifications];

  v8 = [v4 numberWithUnsignedInteger:{objc_msgSend(v7, "count") + v6}];

  return v8;
}

id __55__ATXDigestEngagementMetric_populateMetricsFromDigest___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x277CCABB0];
  v5 = a3;
  v6 = [a2 unsignedIntegerValue];
  v7 = [v5 rankedNotifications];

  v8 = [v4 numberWithUnsignedInteger:{objc_msgSend(v7, "count") + v6}];

  return v8;
}

id __55__ATXDigestEngagementMetric_populateMetricsFromDigest___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x277CCABB0];
  v5 = a3;
  v6 = [a2 unsignedIntegerValue];
  v7 = [v5 rankedNotifications];

  v8 = [v4 numberWithUnsignedInteger:{objc_msgSend(v7, "count") + v6}];

  return v8;
}

- (id)coreAnalyticsDictionary
{
  v31[16] = *MEMORY[0x277D85DE8];
  v30[0] = @"digestTimeCategory";
  digestTimeCategory = [(ATXDigestEngagementMetric *)self digestTimeCategory];
  v4 = digestTimeCategory;
  if (!digestTimeCategory)
  {
    digestTimeCategory = [MEMORY[0x277CBEB68] null];
  }

  v29 = v4;
  v22 = digestTimeCategory;
  v31[0] = digestTimeCategory;
  v30[1] = @"digestUUID";
  digestUUID = [(ATXDigestEngagementMetric *)self digestUUID];
  v28 = digestUUID;
  if (!digestUUID)
  {
    digestUUID = [MEMORY[0x277CBEB68] null];
  }

  v21 = digestUUID;
  v31[1] = digestUUID;
  v30[2] = @"numDigestExpansions";
  v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXDigestEngagementMetric numDigestExpansions](self, "numDigestExpansions")}];
  v31[2] = v27;
  v30[3] = @"numMessageGroups";
  v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXDigestEngagementMetric numMessageGroups](self, "numMessageGroups")}];
  v31[3] = v26;
  v30[4] = @"numHighlightedGroups";
  v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXDigestEngagementMetric numHighlightedGroups](self, "numHighlightedGroups")}];
  v31[4] = v25;
  v30[5] = @"numOtherGroups";
  v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXDigestEngagementMetric numOtherGroups](self, "numOtherGroups")}];
  v31[5] = v24;
  v30[6] = @"numMessageNotifications";
  v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXDigestEngagementMetric numMessageNotifications](self, "numMessageNotifications")}];
  v31[6] = v23;
  v30[7] = @"numHighlightedNotifications";
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXDigestEngagementMetric numHighlightedNotifications](self, "numHighlightedNotifications")}];
  v31[7] = v6;
  v30[8] = @"numOtherNotifications";
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXDigestEngagementMetric numOtherNotifications](self, "numOtherNotifications")}];
  v31[8] = v7;
  v30[9] = @"numEngagementsInUpcoming";
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXDigestEngagementMetric numEngagementsInUpcoming](self, "numEngagementsInUpcoming")}];
  v31[9] = v8;
  v30[10] = @"numEngagementsInScheduled";
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXDigestEngagementMetric numEngagementsInScheduled](self, "numEngagementsInScheduled")}];
  v31[10] = v9;
  v30[11] = @"numEngagementsAfterExpiration";
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXDigestEngagementMetric numEngagementsAfterExpiration](self, "numEngagementsAfterExpiration")}];
  v31[11] = v10;
  v30[12] = @"numNotificationGroupExpansions";
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXDigestEngagementMetric numNotificationGroupExpansions](self, "numNotificationGroupExpansions")}];
  v31[12] = v11;
  v30[13] = @"firstUpcomingViewTimestamp";
  v12 = MEMORY[0x277CCABB0];
  [(ATXDigestEngagementMetric *)self firstUpcomingViewTimestamp];
  v13 = [v12 numberWithDouble:?];
  v31[13] = v13;
  v30[14] = @"firstScheduledViewTimestamp";
  v14 = MEMORY[0x277CCABB0];
  [(ATXDigestEngagementMetric *)self firstScheduledViewTimestamp];
  v15 = [v14 numberWithDouble:?];
  v31[14] = v15;
  v30[15] = @"digestExpirationTimestamp";
  v16 = MEMORY[0x277CCABB0];
  [(ATXDigestEngagementMetric *)self digestExpirationTimestamp];
  v17 = [v16 numberWithDouble:?];
  v31[15] = v17;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:16];

  if (!v28)
  {
  }

  if (!v29)
  {
  }

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

@end