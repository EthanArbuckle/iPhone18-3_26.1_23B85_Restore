@interface ATXNotificationDigestRanker
- (ATXNotificationDigestRanker)init;
- (ATXNotificationDigestRanker)initWithDigestFeedback:(id)a3;
- (id)appsForNotificationGroups:(id)a3;
- (id)chooseAppsForMarquee:(id)a3;
- (id)createDigestForNotificationStacks:(id)a3 outError:(id *)a4;
- (id)sampleAppsForMarquee:(id)a3 numToSample:(unint64_t)a4 hasAutomaticMarqueeBeenUsedFlag:(BOOL *)a5;
@end

@implementation ATXNotificationDigestRanker

- (ATXNotificationDigestRanker)init
{
  v3 = objc_opt_new();
  v4 = [(ATXNotificationDigestRanker *)self initWithDigestFeedback:v3];

  return v4;
}

- (ATXNotificationDigestRanker)initWithDigestFeedback:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = ATXNotificationDigestRanker;
  v6 = [(ATXNotificationDigestRanker *)&v11 init];
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

- (id)createDigestForNotificationStacks:(id)a3 outError:(id *)a4
{
  v62 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = __atxlog_handle_notification_management();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    *buf = 138412290;
    v61 = v8;
    _os_log_impl(&dword_2263AA000, v6, OS_LOG_TYPE_INFO, "[%@] Generating a notification digest", buf, 0xCu);
  }

  v46 = v5;
  v9 = [v5 _pas_mappedArrayWithTransform:&__block_literal_global_78_0];
  v10 = [v9 _pas_filteredArrayWithTest:&__block_literal_global_81_1];
  v45 = v9;
  v11 = [v9 _pas_filteredArrayWithTest:&__block_literal_global_83_3];
  v44 = v10;
  v12 = [(ATXNotificationDigestRanker *)self appsForNotificationGroups:v10];
  v13 = [v12 sortedArrayUsingComparator:&__block_literal_global_86_2];

  v43 = v11;
  v14 = [(ATXNotificationDigestRanker *)self appsForNotificationGroups:v11];
  v15 = [v14 sortedArrayUsingComparator:&__block_literal_global_88_1];

  v47 = [(ATXNotificationDigestRanker *)self chooseAppsForMarquee:v15];
  v16 = objc_opt_new();
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v17 = v13;
  v18 = [v17 countByEnumeratingWithState:&v54 objects:v59 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v55;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v55 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = [*(*(&v54 + 1) + 8 * i) unorderedGroups];
        v23 = [v22 sortedArrayUsingComparator:&__block_literal_global_90_3];

        [v16 addObjectsFromArray:v23];
      }

      v19 = [v17 countByEnumeratingWithState:&v54 objects:v59 count:16];
    }

    while (v19);
  }

  if ([v47 count] == 1 && (objc_msgSend(v47, "firstObject"), v24 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v24, "orderedGroups"), v25 = objc_claimAutoreleasedReturnValue(), v26 = objc_msgSend(v25, "count"), v25, v24, v26 >= 2))
  {
    v27 = [v47 firstObject];
    v28 = [v27 orderedGroups];
    v42 = [v28 subarrayWithRange:{0, 2}];
  }

  else
  {
    v42 = [v47 _pas_mappedArrayWithTransform:&__block_literal_global_93_0];
  }

  v29 = objc_opt_new();
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v30 = v15;
  v31 = [v30 countByEnumeratingWithState:&v50 objects:v58 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v51;
    do
    {
      for (j = 0; j != v32; ++j)
      {
        if (*v51 != v33)
        {
          objc_enumerationMutation(v30);
        }

        v35 = [*(*(&v50 + 1) + 8 * j) unorderedGroups];
        v36 = [v35 sortedArrayUsingComparator:&__block_literal_global_95_3];

        [v29 addObjectsFromArray:v36];
      }

      v32 = [v30 countByEnumeratingWithState:&v50 objects:v58 count:16];
    }

    while (v32);
  }

  v48[0] = MEMORY[0x277D85DD0];
  v48[1] = 3221225472;
  v48[2] = __74__ATXNotificationDigestRanker_createDigestForNotificationStacks_outError___block_invoke_9;
  v48[3] = &unk_2785A1B00;
  v49 = v42;
  v37 = v42;
  v38 = [v29 _pas_filteredArrayWithTest:v48];
  v39 = [objc_alloc(MEMORY[0x277CEB968]) initWithMessageGroups:v16 highlightedGroups:v37 otherGroups:v38 rankerId:@"engagement_digest_ranking_1"];

  v40 = *MEMORY[0x277D85DE8];

  return v39;
}

id __74__ATXNotificationDigestRanker_createDigestForNotificationStacks_outError___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CEB978];
  v3 = a2;
  v4 = [[v2 alloc] initWithNotifications:v3 useDigestOrder:1];

  return v4;
}

uint64_t __74__ATXNotificationDigestRanker_createDigestForNotificationStacks_outError___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x277CCABB0];
  v5 = a2;
  [a3 appScore];
  v6 = [v4 numberWithDouble:?];
  v7 = MEMORY[0x277CCABB0];
  [v5 appScore];
  v9 = v8;

  v10 = [v7 numberWithDouble:v9];
  v11 = [v6 compare:v10];

  return v11;
}

uint64_t __74__ATXNotificationDigestRanker_createDigestForNotificationStacks_outError___block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x277CCABB0];
  v5 = a2;
  [a3 appScore];
  v6 = [v4 numberWithDouble:?];
  v7 = MEMORY[0x277CCABB0];
  [v5 appScore];
  v9 = v8;

  v10 = [v7 numberWithDouble:v9];
  v11 = [v6 compare:v10];

  return v11;
}

uint64_t __74__ATXNotificationDigestRanker_createDigestForNotificationStacks_outError___block_invoke_6(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x277CCABB0];
  v5 = a2;
  [a3 appSpecifiedScore];
  v6 = [v4 numberWithDouble:?];
  v7 = MEMORY[0x277CCABB0];
  [v5 appSpecifiedScore];
  v9 = v8;

  v10 = [v7 numberWithDouble:v9];
  v11 = [v6 compare:v10];

  return v11;
}

id __74__ATXNotificationDigestRanker_createDigestForNotificationStacks_outError___block_invoke_7(uint64_t a1, void *a2)
{
  v2 = [a2 orderedGroups];
  v3 = [v2 firstObject];

  return v3;
}

uint64_t __74__ATXNotificationDigestRanker_createDigestForNotificationStacks_outError___block_invoke_8(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x277CCABB0];
  v5 = a2;
  [a3 appSpecifiedScore];
  v6 = [v4 numberWithDouble:?];
  v7 = MEMORY[0x277CCABB0];
  [v5 appSpecifiedScore];
  v9 = v8;

  v10 = [v7 numberWithDouble:v9];
  v11 = [v6 compare:v10];

  return v11;
}

- (id)appsForNotificationGroups:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_new();
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v25;
    *&v8 = 138412546;
    v23 = v8;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v25 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v24 + 1) + 8 * i);
        v13 = [v12 bundleId];
        if (v13)
        {
          v14 = [v5 objectForKeyedSubscript:v13];

          if (!v14)
          {
            v15 = [[ATXNotificationDigestApp alloc] initWithBundleId:v13 digestFeedback:self->_digestFeedback digestConstants:self->_c];
            [v5 setObject:v15 forKeyedSubscript:v13];
          }

          v16 = [v5 objectForKeyedSubscript:v13];
          [v16 addGroup:v12];
        }

        else
        {
          v16 = __atxlog_handle_notification_management();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
          {
            v17 = objc_opt_class();
            v18 = NSStringFromClass(v17);
            v19 = [v12 groupId];
            *buf = v23;
            v29 = v18;
            v30 = 2112;
            v31 = v19;
            _os_log_impl(&dword_2263AA000, v16, OS_LOG_TYPE_INFO, "[%@] Missing bundle ID for group with ID %@", buf, 0x16u);
          }
        }
      }

      v9 = [v6 countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v9);
  }

  v20 = [v5 allValues];

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

- (id)chooseAppsForMarquee:(id)a3
{
  v4 = a3;
  v5 = [(ATXNotificationDigestRankingConstants *)self->_c numMarqueeSpots];
  v13 = 0;
  v6 = [v4 _pas_filteredArrayWithTest:&__block_literal_global_101_1];
  v7 = [(ATXNotificationDigestRanker *)self sampleAppsForMarquee:v6 numToSample:v5 hasAutomaticMarqueeBeenUsedFlag:&v13];
  v8 = v5 - [v7 count];
  if (v8)
  {
    v10 = [v4 _pas_filteredArrayWithTest:&__block_literal_global_103_0];
    v11 = [(ATXNotificationDigestRanker *)self sampleAppsForMarquee:v10 numToSample:v8 hasAutomaticMarqueeBeenUsedFlag:&v13];
    v9 = [v7 arrayByAddingObjectsFromArray:v11];
  }

  else
  {
    v9 = v7;
  }

  return v9;
}

- (id)sampleAppsForMarquee:(id)a3 numToSample:(unint64_t)a4 hasAutomaticMarqueeBeenUsedFlag:(BOOL *)a5
{
  v30 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = v7;
  if (a4 && [v7 count])
  {
    v9 = MEMORY[0x277CEBCC0];
    v10 = [v8 _pas_mappedArrayWithTransform:&__block_literal_global_107_0];
    v11 = [v9 sampleWeightedArray:v10 numToSample:a4];

    v12 = objc_opt_new();
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v13 = v11;
    v14 = [v13 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v26;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v26 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = [v8 objectAtIndexedSubscript:{objc_msgSend(*(*(&v25 + 1) + 8 * i), "unsignedIntegerValue", v25)}];
          [v12 addObject:v18];
        }

        v15 = [v13 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v15);
    }

    if (!*a5)
    {
      v19 = [v8 _pas_filteredArrayWithTest:&__block_literal_global_109_0];
      if ([v19 count] && objc_msgSend(v12, "count"))
      {
        v20 = arc4random_uniform([v19 count]);
        v21 = [v19 objectAtIndexedSubscript:v20];
        if (([v12 containsObject:v21] & 1) == 0)
        {
          v22 = [v19 objectAtIndexedSubscript:v20];
          [v12 setObject:v22 atIndexedSubscript:{objc_msgSend(v12, "count") - 1}];
        }

        *a5 = 1;
      }
    }
  }

  else
  {
    v12 = MEMORY[0x277CBEBF8];
  }

  v23 = *MEMORY[0x277D85DE8];

  return v12;
}

uint64_t __96__ATXNotificationDigestRanker_sampleAppsForMarquee_numToSample_hasAutomaticMarqueeBeenUsedFlag___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCABB0];
  [a2 appScore];

  return [v2 numberWithDouble:?];
}

@end