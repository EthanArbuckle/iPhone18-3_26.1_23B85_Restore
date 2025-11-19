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
    v3 = [a1 uuid];
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v3;
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
  v17[4] = a1;
  v7 = [v6 filterWithIsIncluded:v17];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __75__ATXUserNotificationDigest_EngagementTracking__computeNumDigestExpansions__block_invoke_32;
  v16[3] = &unk_27859E3D8;
  v16[4] = a1;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __75__ATXUserNotificationDigest_EngagementTracking__computeNumDigestExpansions__block_invoke_34;
  v15[3] = &unk_278597BA8;
  v15[4] = &buf;
  v8 = [v7 sinkWithCompletion:v16 receiveInput:v15];

  v9 = __atxlog_handle_notification_management();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [a1 uuid];
    v11 = *(*(&buf + 1) + 24);
    *v18 = 138543618;
    v19 = v10;
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
  v4 = [a1 allNotificationIds];
  v5 = [v46 resolutionsForNotifications:v4];

  v6 = [[ATXNotificationResolutionDictionarySource alloc] initWithResolutionDictionary:v5];
  v7 = objc_opt_new();
  [a1 setDigestEngagementTrackingMetrics:v7];

  v8 = [a1 computeNumDigestExpansions];
  v9 = [a1 digestEngagementTrackingMetrics];
  [v9 setNumDigestExpansions:v8];

  v10 = [a1 messageGroups];
  v11 = [v10 count];

  if (v11)
  {
    v12 = 0;
    do
    {
      v13 = [a1 messageGroups];
      v14 = [v13 objectAtIndexedSubscript:v12];

      v15 = [a1 messageGroups];
      v16 = [v15 count];
      v17 = [a1 digestTimeline];
      [v14 populateEngagementFromSource:v6 sectionIdentifier:@"messageGroups" sectionPosition:v12 sectionSize:v16 digestTimeline:v17];

      v18 = [a1 digestEngagementTrackingMetrics];
      v19 = [v14 digestEngagementTrackingMetrics];
      [v18 addMetricsFromOtherTracker:v19];

      ++v12;
      v20 = [a1 messageGroups];
      v21 = [v20 count];
    }

    while (v12 < v21);
  }

  v22 = [a1 highlightedGroups];
  v23 = [v22 count];

  if (v23)
  {
    v24 = 0;
    do
    {
      v25 = [a1 highlightedGroups];
      v26 = [v25 objectAtIndexedSubscript:v24];

      v27 = [a1 highlightedGroups];
      v28 = [v27 count];
      v29 = [a1 digestTimeline];
      [v26 populateEngagementFromSource:v6 sectionIdentifier:@"highlightedGroups" sectionPosition:v24 sectionSize:v28 digestTimeline:v29];

      v30 = [a1 digestEngagementTrackingMetrics];
      v31 = [v26 digestEngagementTrackingMetrics];
      [v30 addMetricsFromOtherTracker:v31];

      ++v24;
      v32 = [a1 highlightedGroups];
      v33 = [v32 count];
    }

    while (v24 < v33);
  }

  v34 = [a1 rankedGroups];
  v35 = [v34 count];

  if (v35)
  {
    v36 = 0;
    do
    {
      v37 = [a1 rankedGroups];
      v38 = [v37 objectAtIndexedSubscript:v36];

      v39 = [a1 rankedGroups];
      v40 = [v39 count];
      v41 = [a1 digestTimeline];
      [v38 populateEngagementFromSource:v6 sectionIdentifier:@"otherGroups" sectionPosition:v36 sectionSize:v40 digestTimeline:v41];

      v42 = [a1 digestEngagementTrackingMetrics];
      v43 = [v38 digestEngagementTrackingMetrics];
      [v42 addMetricsFromOtherTracker:v43];

      ++v36;
      v44 = [a1 rankedGroups];
      v45 = [v44 count];
    }

    while (v36 < v45);
  }
}

@end