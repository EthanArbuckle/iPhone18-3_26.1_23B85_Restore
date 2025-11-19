@interface ATXDigestEngagementMetric
- (id)coreAnalyticsDictionary;
- (void)populateMetricsFromDigest:(id)a3;
@end

@implementation ATXDigestEngagementMetric

- (void)populateMetricsFromDigest:(id)a3
{
  v33 = a3;
  v4 = [v33 modeIdString];
  [(ATXDigestEngagementMetric *)self setDigestTimeCategory:v4];

  v5 = [v33 uuid];
  v6 = [v5 UUIDString];
  [(ATXDigestEngagementMetric *)self setDigestUUID:v6];

  v7 = [v33 digestEngagementTrackingMetrics];
  -[ATXDigestEngagementMetric setNumDigestExpansions:](self, "setNumDigestExpansions:", [v7 numDigestExpansions]);

  v8 = [v33 messageGroups];
  -[ATXDigestEngagementMetric setNumMessageGroups:](self, "setNumMessageGroups:", [v8 count]);

  v9 = [v33 highlightedGroups];
  -[ATXDigestEngagementMetric setNumHighlightedGroups:](self, "setNumHighlightedGroups:", [v9 count]);

  v10 = [v33 rankedGroups];
  -[ATXDigestEngagementMetric setNumOtherGroups:](self, "setNumOtherGroups:", [v10 count]);

  v11 = [v33 messageGroups];
  v12 = [v11 _pas_leftFoldWithInitialObject:&unk_283A572D8 accumulate:&__block_literal_global_203];
  -[ATXDigestEngagementMetric setNumMessageNotifications:](self, "setNumMessageNotifications:", [v12 unsignedIntegerValue]);

  v13 = [v33 highlightedGroups];
  v14 = [v13 _pas_leftFoldWithInitialObject:&unk_283A572D8 accumulate:&__block_literal_global_22_0];
  -[ATXDigestEngagementMetric setNumHighlightedNotifications:](self, "setNumHighlightedNotifications:", [v14 unsignedIntegerValue]);

  v15 = [v33 rankedGroups];
  v16 = [v15 _pas_leftFoldWithInitialObject:&unk_283A572D8 accumulate:&__block_literal_global_24_3];
  -[ATXDigestEngagementMetric setNumOtherNotifications:](self, "setNumOtherNotifications:", [v16 unsignedIntegerValue]);

  v17 = [v33 digestEngagementTrackingMetrics];
  -[ATXDigestEngagementMetric setNumEngagementsInUpcoming:](self, "setNumEngagementsInUpcoming:", [v17 numEngagementsInUpcoming]);

  v18 = [v33 digestEngagementTrackingMetrics];
  -[ATXDigestEngagementMetric setNumEngagementsInScheduled:](self, "setNumEngagementsInScheduled:", [v18 numEngagementsInScheduled]);

  v19 = [v33 digestEngagementTrackingMetrics];
  -[ATXDigestEngagementMetric setNumEngagementsAfterExpiration:](self, "setNumEngagementsAfterExpiration:", [v19 numEngagementsAfterExpiration]);

  v20 = [v33 digestEngagementTrackingMetrics];
  -[ATXDigestEngagementMetric setNumNotificationGroupExpansions:](self, "setNumNotificationGroupExpansions:", [v20 numExpansions]);

  v21 = [v33 digestTimeline];
  v22 = [v21 firstUpcomingViewTimestamp];
  if (v22)
  {
    v23 = [v33 digestTimeline];
    v24 = [v23 firstUpcomingViewTimestamp];
    [v24 timeIntervalSinceReferenceDate];
    [(ATXDigestEngagementMetric *)self setFirstUpcomingViewTimestamp:?];
  }

  else
  {
    [(ATXDigestEngagementMetric *)self setFirstUpcomingViewTimestamp:0.0];
  }

  v25 = [v33 digestTimeline];
  v26 = [v25 firstScheduledViewTimestamp];
  if (v26)
  {
    v27 = [v33 digestTimeline];
    v28 = [v27 firstScheduledViewTimestamp];
    [v28 timeIntervalSinceReferenceDate];
    [(ATXDigestEngagementMetric *)self setFirstScheduledViewTimestamp:?];
  }

  else
  {
    [(ATXDigestEngagementMetric *)self setFirstScheduledViewTimestamp:0.0];
  }

  v29 = [v33 digestTimeline];
  v30 = [v29 digestRemovedTimestamp];
  if (v30)
  {
    v31 = [v33 digestTimeline];
    v32 = [v31 digestRemovedTimestamp];
    [v32 timeIntervalSinceReferenceDate];
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
  v3 = [(ATXDigestEngagementMetric *)self digestTimeCategory];
  v4 = v3;
  if (!v3)
  {
    v3 = [MEMORY[0x277CBEB68] null];
  }

  v29 = v4;
  v22 = v3;
  v31[0] = v3;
  v30[1] = @"digestUUID";
  v5 = [(ATXDigestEngagementMetric *)self digestUUID];
  v28 = v5;
  if (!v5)
  {
    v5 = [MEMORY[0x277CBEB68] null];
  }

  v21 = v5;
  v31[1] = v5;
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