@interface ATXTimelineRelevanceFilter
+ (id)applyLimitsToTimelineSuggestions:(id)a3 forWidget:(id)a4 withTimelineEntryDelegate:(id)a5 abuseControlConfig:(id)a6;
+ (id)filteredAndSortedTimelineEntriesForWidget:(id)a3 entries:(id)a4 withTimelineEntryDelegate:(id)a5 abuseControlConfig:(id)a6;
@end

@implementation ATXTimelineRelevanceFilter

+ (id)filteredAndSortedTimelineEntriesForWidget:(id)a3 entries:(id)a4 withTimelineEntryDelegate:(id)a5 abuseControlConfig:(id)a6
{
  v46 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = objc_opt_new();
  v14 = [v9 atxTimelineIdentifier];
  v15 = [v9 extensionIdentity];
  v16 = [v15 containerBundleIdentifier];
  v17 = [v11 countOfInfoSuggestionsForBundleId:v16];

  if (v17 > [v12 timelineUpdateLimitPerAppBundleId])
  {
    v18 = __atxlog_handle_timeline();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [v9 extensionIdentity];
      v20 = [v19 containerBundleIdentifier];
      *buf = 138412802;
      v41 = v20;
      v42 = 2048;
      v43 = v17;
      v44 = 2048;
      v45 = [v12 timelineUpdateLimitPerAppBundleId];
      _os_log_impl(&dword_2263AA000, v18, OS_LOG_TYPE_DEFAULT, "ATXInfoTimelineEntryFilter: Filtering out timeline update since the total number of entries for bundleId %@: %llu has exceeded limit (%lu)", buf, 0x20u);
    }

LABEL_7:

    v22 = v13;
    goto LABEL_15;
  }

  v21 = [v11 countOfInfoSuggestionsForSourceId:v14];
  if (v21 > [v12 timelineUpdateLimitPerSource])
  {
    v18 = __atxlog_handle_timeline();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v41 = v14;
      v42 = 2048;
      v43 = v21;
      v44 = 2048;
      v45 = [v12 timelineUpdateLimitPerSource];
      _os_log_impl(&dword_2263AA000, v18, OS_LOG_TYPE_DEFAULT, "ATXInfoTimelineEntryFilter: Filtering out timeline update since the total number of entries for sourceId %@: %llu has exceeded limit (%lu)", buf, 0x20u);
    }

    goto LABEL_7;
  }

  v23 = [v11 latestUpdateDateForSourceId:v14];
  if (v23 && ([MEMORY[0x277CBEAA8] now], v24 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v24, "timeIntervalSinceDate:", v23), v26 = v25, v27 = objc_msgSend(v12, "minimumSecondsBetweenMetadataUpdatesPerSource"), v24, v26 < v27))
  {
    v28 = __atxlog_handle_timeline();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v36 = [v12 minimumSecondsBetweenMetadataUpdatesPerSource];
      v29 = [MEMORY[0x277CBEAA8] now];
      [v29 timeIntervalSinceDate:v23];
      *buf = 134218498;
      v41 = v36;
      v42 = 2112;
      v43 = v14;
      v44 = 1024;
      LODWORD(v45) = v30;
      _os_log_impl(&dword_2263AA000, v28, OS_LOG_TYPE_DEFAULT, "ATXInfoTimelineEntryFilter: Rate limiting limits reloads to one per %lu seconds. Filtering out timeline update for source %@ since the last update was %d seconds ago", buf, 0x1Cu);
    }

    v22 = v13;
  }

  else
  {
    v31 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"date" ascending:1];
    v39 = v31;
    v32 = [MEMORY[0x277CBEA60] arrayWithObjects:&v39 count:1];
    v33 = [v10 sortedArrayUsingDescriptors:v32];

    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __125__ATXTimelineRelevanceFilter_filteredAndSortedTimelineEntriesForWidget_entries_withTimelineEntryDelegate_abuseControlConfig___block_invoke;
    v37[3] = &unk_27859D008;
    v38 = v9;
    v22 = [v33 _pas_filteredArrayWithTest:v37];
  }

LABEL_15:
  v34 = *MEMORY[0x277D85DE8];

  return v22;
}

BOOL __125__ATXTimelineRelevanceFilter_filteredAndSortedTimelineEntriesForWidget_entries_withTimelineEntryDelegate_abuseControlConfig___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 date];
  [v4 timeIntervalSinceReferenceDate];
  v6 = v5;
  v7 = [v3 relevance];

  [v7 duration];
  v9 = v6 + v8;

  v10 = [MEMORY[0x277CBEAA8] distantFuture];
  [v10 timeIntervalSinceReferenceDate];
  v12 = vabdd_f64(v9, v11);

  if (v12 < 1.0)
  {
    v13 = __atxlog_handle_timeline();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      __125__ATXTimelineRelevanceFilter_filteredAndSortedTimelineEntriesForWidget_entries_withTimelineEntryDelegate_abuseControlConfig___block_invoke_cold_1(a1, v13);
    }
  }

  return v12 >= 1.0;
}

+ (id)applyLimitsToTimelineSuggestions:(id)a3 forWidget:(id)a4 withTimelineEntryDelegate:(id)a5 abuseControlConfig:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [v10 atxTimelineIdentifier];
  v32[0] = 0;
  v32[1] = v32;
  v32[2] = 0x2020000000;
  v14 = [v10 extensionIdentity];
  v15 = [v14 containerBundleIdentifier];
  v16 = [v11 countOfInfoSuggestionsForBundleId:v15];

  v32[3] = v16;
  v31[0] = 0;
  v31[1] = v31;
  v31[2] = 0x2020000000;
  v31[3] = [v11 countOfInfoSuggestionsForSourceId:v13];
  v17 = MEMORY[0x277CCAC30];
  v23 = MEMORY[0x277D85DD0];
  v24 = 3221225472;
  v25 = __118__ATXTimelineRelevanceFilter_applyLimitsToTimelineSuggestions_forWidget_withTimelineEntryDelegate_abuseControlConfig___block_invoke;
  v26 = &unk_27859D030;
  v29 = v32;
  v30 = v31;
  v18 = v12;
  v27 = v18;
  v19 = v13;
  v28 = v19;
  v20 = [v17 predicateWithBlock:&v23];
  v21 = [v9 filteredArrayUsingPredicate:{v20, v23, v24, v25, v26}];

  _Block_object_dispose(v31, 8);
  _Block_object_dispose(v32, 8);

  return v21;
}

uint64_t __118__ATXTimelineRelevanceFilter_applyLimitsToTimelineSuggestions_forWidget_withTimelineEntryDelegate_abuseControlConfig___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  ++*(*(*(a1 + 48) + 8) + 24);
  ++*(*(*(a1 + 56) + 8) + 24);
  v2 = *(*(*(a1 + 48) + 8) + 24);
  if (v2 <= [*(a1 + 32) timelineUpdateLimitPerAppBundleId] && (v3 = *(*(*(a1 + 56) + 8) + 24), v3 <= objc_msgSend(*(a1 + 32), "timelineUpdateLimitPerSource")))
  {
    result = 1;
  }

  else
  {
    v4 = __atxlog_handle_timeline();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 40);
      v6 = [*(a1 + 32) timelineUpdateLimitPerSource];
      v7 = [*(a1 + 32) timelineUpdateLimitPerAppBundleId];
      v10 = 138412802;
      v11 = v5;
      v12 = 2048;
      v13 = v6;
      v14 = 2048;
      v15 = v7;
      _os_log_impl(&dword_2263AA000, v4, OS_LOG_TYPE_DEFAULT, "ATXInfoTimelineEntryFilter: Filtering out timeline update for source %@ since the total number of entries has exceeded limit for source (%lu) or limit for appBundleId (%lu)", &v10, 0x20u);
    }

    result = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

void __125__ATXTimelineRelevanceFilter_filteredAndSortedTimelineEntriesForWidget_entries_withTimelineEntryDelegate_abuseControlConfig___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = [*(a1 + 32) extensionIdentity];
  v4 = [v3 extensionBundleIdentifier];
  v6 = 138412290;
  v7 = v4;
  _os_log_error_impl(&dword_2263AA000, a2, OS_LOG_TYPE_ERROR, "ATXInfoTimelineEntryFilter: Filtered timeline entry expiring in the distant future from: %@", &v6, 0xCu);

  v5 = *MEMORY[0x277D85DE8];
}

@end