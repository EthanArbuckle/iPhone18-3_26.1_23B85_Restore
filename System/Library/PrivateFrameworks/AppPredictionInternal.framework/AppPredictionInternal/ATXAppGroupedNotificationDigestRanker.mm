@interface ATXAppGroupedNotificationDigestRanker
- (ATXAppGroupedNotificationDigestRanker)init;
- (ATXAppGroupedNotificationDigestRanker)initWithDigestFeedback:(id)a3;
- (id)bfsSelectGlobalMarqueeGroupsFromApps:(id)a3 maxCount:(unint64_t)a4 groupFilter:(id)a5;
- (id)createDigestForAppGroupedNotificationStacks:(id)a3 maxGlobalMarqueeGroups:(unint64_t)a4 maxAppMarqueeGroups:(unint64_t)a5 outError:(id *)a6;
- (id)getRankedAppsFromAppGroupedNotificationStacks:(id)a3 maxAppMarqueeGroups:(unint64_t)a4;
@end

@implementation ATXAppGroupedNotificationDigestRanker

- (ATXAppGroupedNotificationDigestRanker)init
{
  v3 = objc_opt_new();
  v4 = [(ATXAppGroupedNotificationDigestRanker *)self initWithDigestFeedback:v3];

  return v4;
}

- (ATXAppGroupedNotificationDigestRanker)initWithDigestFeedback:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = ATXAppGroupedNotificationDigestRanker;
  v6 = [(ATXAppGroupedNotificationDigestRanker *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_digestFeedback, a3);
    v8 = +[ATXNotificationDigestRankingConstants sharedInstance];
    c = v7->_c;
    v7->_c = v8;
  }

  return v7;
}

- (id)createDigestForAppGroupedNotificationStacks:(id)a3 maxGlobalMarqueeGroups:(unint64_t)a4 maxAppMarqueeGroups:(unint64_t)a5 outError:(id *)a6
{
  v40 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = __atxlog_handle_notification_management();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    *buf = 138412290;
    v39 = v13;
    _os_log_impl(&dword_2263AA000, v11, OS_LOG_TYPE_INFO, "[%@] Generating a notification digest", buf, 0xCu);
  }

  if (v10 || !a6)
  {
    v18 = [(ATXAppGroupedNotificationDigestRanker *)self getRankedAppsFromAppGroupedNotificationStacks:v10 maxAppMarqueeGroups:a5];
    v19 = objc_opt_new();
    v20 = [(ATXAppGroupedNotificationDigestRanker *)self bfsSelectGlobalMarqueeGroupsFromApps:v18 maxCount:a4 groupFilter:&__block_literal_global_115];
    [v19 addObjectsFromArray:v20];

    if ([v19 count] < a4)
    {
      v21 = [(ATXAppGroupedNotificationDigestRanker *)self bfsSelectGlobalMarqueeGroupsFromApps:v18 maxCount:a4 groupFilter:&__block_literal_global_117_1];
      [v19 addObjectsFromArray:v21];
    }

    v22 = objc_opt_new();
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v16 = v18;
    v23 = [v16 countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v32;
      do
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v32 != v25)
          {
            objc_enumerationMutation(v16);
          }

          v27 = [*(*(&v31 + 1) + 8 * i) groupsWithComms];
          [v22 addObjectsFromArray:v27];
        }

        v24 = [v16 countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v24);
    }

    v28 = [v16 _pas_mappedArrayWithTransform:&__block_literal_global_120];
    v17 = [objc_alloc(MEMORY[0x277CEB968]) initWithAppDigests:v28 highlightedGroups:v19 messageGroups:v22 rankerId:@"engagement_digest_ranking_2"];
  }

  else
  {
    v14 = MEMORY[0x277CCA9B8];
    v15 = *MEMORY[0x277CCA5B8];
    v36 = *MEMORY[0x277CCA068];
    v37 = @"Missing argument. Notification stacks were nil.";
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
    [v14 errorWithDomain:v15 code:22 userInfo:v16];
    *a6 = v17 = 0;
  }

  v29 = *MEMORY[0x277D85DE8];

  return v17;
}

id __137__ATXAppGroupedNotificationDigestRanker_createDigestForAppGroupedNotificationStacks_maxGlobalMarqueeGroups_maxAppMarqueeGroups_outError___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CEB960];
  v3 = a2;
  v4 = [v2 alloc];
  v5 = [v3 bundleId];
  v6 = [v3 appMarqueeGroups];
  v7 = [v3 nonAppMarqueeGroups];

  v8 = [v4 initWithBundleId:v5 appMarqueeGroups:v6 nonAppMarqueeGroups:v7];

  return v8;
}

- (id)getRankedAppsFromAppGroupedNotificationStacks:(id)a3 maxAppMarqueeGroups:(unint64_t)a4
{
  v38 = *MEMORY[0x277D85DE8];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __107__ATXAppGroupedNotificationDigestRanker_getRankedAppsFromAppGroupedNotificationStacks_maxAppMarqueeGroups___block_invoke;
  v30[3] = &unk_2785A1CC8;
  v30[4] = self;
  v30[5] = a4;
  v4 = [a3 _pas_mappedArrayWithTransform:v30];
  v5 = MEMORY[0x277CEBCC0];
  v6 = [v4 _pas_mappedArrayWithTransform:&__block_literal_global_129_0];
  v7 = [v5 sampleWeightedArray:v6];

  v8 = objc_opt_new();
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v26 objects:v37 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v27;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v27 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [v4 objectAtIndexedSubscript:{objc_msgSend(*(*(&v26 + 1) + 8 * i), "unsignedIntegerValue", v26)}];
        [v8 addObject:v14];
      }

      v11 = [v9 countByEnumeratingWithState:&v26 objects:v37 count:16];
    }

    while (v11);
  }

  v15 = MEMORY[0x277CBEB98];
  v16 = [v8 _pas_mappedArrayWithTransform:&__block_literal_global_133_0];
  v17 = [v15 setWithArray:v16];

  v18 = [v17 count];
  if (v18 != [v8 count])
  {
    v19 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = objc_opt_class();
      v21 = NSStringFromClass(v20);
      v22 = [v17 count];
      v23 = [v8 count];
      *buf = 138412802;
      v32 = v21;
      v33 = 2048;
      v34 = v22;
      v35 = 2048;
      v36 = v23;
      _os_log_impl(&dword_2263AA000, v19, OS_LOG_TYPE_INFO, "[%@] Found %lu bundleIds for %lu apps. # of bundle IDs should equal # of apps. Proceeding anyway.", buf, 0x20u);
    }
  }

  v24 = *MEMORY[0x277D85DE8];

  return v8;
}

_App *__107__ATXAppGroupedNotificationDigestRanker_getRankedAppsFromAppGroupedNotificationStacks_maxAppMarqueeGroups___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = [[_App alloc] initWithNotificationStacks:v3 maxAppMarqueeGroups:*(a1 + 40) digestFeedback:*(*(a1 + 32) + 8)];
  }

  else
  {
    v5 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = *(a1 + 32);
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v11 = 138412290;
      v12 = v8;
      _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_INFO, "[%@] notificationsStacks == nil. Skipping.", &v11, 0xCu);
    }

    v4 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];

  return v4;
}

uint64_t __107__ATXAppGroupedNotificationDigestRanker_getRankedAppsFromAppGroupedNotificationStacks_maxAppMarqueeGroups___block_invoke_126(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCABB0];
  [a2 digestRankingScore];

  return [v2 numberWithDouble:?];
}

- (id)bfsSelectGlobalMarqueeGroupsFromApps:(id)a3 maxCount:(unint64_t)a4 groupFilter:(id)a5
{
  v27 = *MEMORY[0x277D85DE8];
  v19 = a3;
  v7 = a5;
  v8 = objc_opt_new();
  v21 = a4;
  if (a4)
  {
    v9 = 0;
    do
    {
      v20 = [v8 count];
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v10 = v19;
      v11 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v23;
        while (2)
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v23 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = v7[2](v7, *(*(&v22 + 1) + 8 * i));
            if (v9 < [v15 count])
            {
              if ([v8 count] == v21)
              {

                goto LABEL_15;
              }

              v16 = [v15 objectAtIndexedSubscript:v9];
              [v8 addObject:v16];
            }
          }

          v12 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
          if (v12)
          {
            continue;
          }

          break;
        }
      }

LABEL_15:

      if ([v8 count] == v21)
      {
        break;
      }

      if (v20 == [v8 count])
      {
        break;
      }

      ++v9;
    }

    while (v9 != v21);
  }

  v17 = *MEMORY[0x277D85DE8];

  return v8;
}

@end