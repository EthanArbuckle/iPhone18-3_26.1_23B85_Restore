@interface ATXUserNotificationDigest(EngagementTracking)
- (uint64_t)computeNumDigestExpansions;
- (void)populateEngagementFromSource:()EngagementTracking;
@end

@implementation ATXUserNotificationDigest(EngagementTracking)

- (uint64_t)computeNumDigestExpansions
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = __atxlog_handle_notification_management();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    uuid = [self uuid];
    LODWORD(buf) = 138543362;
    *(&buf + 4) = uuid;
    _os_log_impl(&dword_2263AA000, v2, OS_LOG_TYPE_DEFAULT, "Computing digest expansions for: %{public}@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v23 = 0x2020000000;
  v24 = 0;
  v4 = objc_opt_new();
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v6 = [v4 publisherFromStartTime:v5 + -604800.0];

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __75__ATXUserNotificationDigest_EngagementTracking__computeNumDigestExpansions__block_invoke;
  v17[3] = &unk_27859A798;
  v17[4] = self;
  v7 = [v6 filterWithIsIncluded:v17];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __75__ATXUserNotificationDigest_EngagementTracking__computeNumDigestExpansions__block_invoke_32;
  v16[3] = &unk_27859E3D8;
  v16[4] = self;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __75__ATXUserNotificationDigest_EngagementTracking__computeNumDigestExpansions__block_invoke_34;
  v15[3] = &unk_278597BA8;
  v15[4] = &buf;
  v8 = [v7 sinkWithCompletion:v16 receiveInput:v15];

  v9 = __atxlog_handle_notification_management();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    uuid2 = [self uuid];
    v11 = *(*(&buf + 1) + 24);
    *v18 = 138543618;
    v19 = uuid2;
    v20 = 2048;
    v21 = v11;
    _os_log_impl(&dword_2263AA000, v9, OS_LOG_TYPE_DEFAULT, "Computed digest expansions for: %{public}@: %ld", v18, 0x16u);
  }

  v12 = *(*(&buf + 1) + 24);
  _Block_object_dispose(&buf, 8);
  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

- (void)populateEngagementFromSource:()EngagementTracking
{
  v46 = a3;
  allNotificationIds = [self allNotificationIds];
  v5 = [v46 resolutionsForNotifications:allNotificationIds];

  v6 = [[ATXNotificationResolutionDictionarySource alloc] initWithResolutionDictionary:v5];
  v7 = objc_opt_new();
  [self setDigestEngagementTrackingMetrics:v7];

  computeNumDigestExpansions = [self computeNumDigestExpansions];
  digestEngagementTrackingMetrics = [self digestEngagementTrackingMetrics];
  [digestEngagementTrackingMetrics setNumDigestExpansions:computeNumDigestExpansions];

  messageGroups = [self messageGroups];
  v11 = [messageGroups count];

  if (v11)
  {
    v12 = 0;
    do
    {
      messageGroups2 = [self messageGroups];
      v14 = [messageGroups2 objectAtIndexedSubscript:v12];

      messageGroups3 = [self messageGroups];
      v16 = [messageGroups3 count];
      digestTimeline = [self digestTimeline];
      [v14 populateEngagementFromSource:v6 sectionIdentifier:@"messageGroups" sectionPosition:v12 sectionSize:v16 digestTimeline:digestTimeline];

      digestEngagementTrackingMetrics2 = [self digestEngagementTrackingMetrics];
      digestEngagementTrackingMetrics3 = [v14 digestEngagementTrackingMetrics];
      [digestEngagementTrackingMetrics2 addMetricsFromOtherTracker:digestEngagementTrackingMetrics3];

      ++v12;
      messageGroups4 = [self messageGroups];
      v21 = [messageGroups4 count];
    }

    while (v12 < v21);
  }

  highlightedGroups = [self highlightedGroups];
  v23 = [highlightedGroups count];

  if (v23)
  {
    v24 = 0;
    do
    {
      highlightedGroups2 = [self highlightedGroups];
      v26 = [highlightedGroups2 objectAtIndexedSubscript:v24];

      highlightedGroups3 = [self highlightedGroups];
      v28 = [highlightedGroups3 count];
      digestTimeline2 = [self digestTimeline];
      [v26 populateEngagementFromSource:v6 sectionIdentifier:@"highlightedGroups" sectionPosition:v24 sectionSize:v28 digestTimeline:digestTimeline2];

      digestEngagementTrackingMetrics4 = [self digestEngagementTrackingMetrics];
      digestEngagementTrackingMetrics5 = [v26 digestEngagementTrackingMetrics];
      [digestEngagementTrackingMetrics4 addMetricsFromOtherTracker:digestEngagementTrackingMetrics5];

      ++v24;
      highlightedGroups4 = [self highlightedGroups];
      v33 = [highlightedGroups4 count];
    }

    while (v24 < v33);
  }

  rankedGroups = [self rankedGroups];
  v35 = [rankedGroups count];

  if (v35)
  {
    v36 = 0;
    do
    {
      rankedGroups2 = [self rankedGroups];
      v38 = [rankedGroups2 objectAtIndexedSubscript:v36];

      rankedGroups3 = [self rankedGroups];
      v40 = [rankedGroups3 count];
      digestTimeline3 = [self digestTimeline];
      [v38 populateEngagementFromSource:v6 sectionIdentifier:@"otherGroups" sectionPosition:v36 sectionSize:v40 digestTimeline:digestTimeline3];

      digestEngagementTrackingMetrics6 = [self digestEngagementTrackingMetrics];
      digestEngagementTrackingMetrics7 = [v38 digestEngagementTrackingMetrics];
      [digestEngagementTrackingMetrics6 addMetricsFromOtherTracker:digestEngagementTrackingMetrics7];

      ++v36;
      rankedGroups4 = [self rankedGroups];
      v45 = [rankedGroups4 count];
    }

    while (v36 < v45);
  }
}

@end