@interface ATXAppDirectoryLogger
- (id)_retrieveAllUnprocessedEventsFromBiome;
- (id)_retrieveLastLogProcessedDate;
- (id)_retrieveSessionsFromUnprocessedEvents:(id)a3 lastSessionEndDate:(id *)a4;
- (id)_summarizeSession:(id)a3;
- (void)_storeLastLogProcessedDate:(id)a3;
- (void)_uploadToCoreAnalytics:(id)a3;
- (void)uploadSummariesToCoreAnalyticsWithActivity:(id)a3;
@end

@implementation ATXAppDirectoryLogger

- (id)_retrieveLastLogProcessedDate
{
  v2 = objc_alloc(MEMORY[0x277CBEBD0]);
  v3 = [v2 initWithSuiteName:*MEMORY[0x277CEBD00]];
  v4 = [v3 objectForKey:@"AppDirectoryLastLogProcessedDate"];
  if (!v4)
  {
    v5 = __atxlog_handle_app_library();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(ATXAppDirectoryLogger *)v5 _retrieveLastLogProcessedDate];
    }

    v4 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-86400.0];
  }

  return v4;
}

- (void)_storeLastLogProcessedDate:(id)a3
{
  v3 = MEMORY[0x277CBEBD0];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = [v5 initWithSuiteName:*MEMORY[0x277CEBD00]];
  [v6 setObject:v4 forKey:@"AppDirectoryLastLogProcessedDate"];
}

- (id)_retrieveAllUnprocessedEventsFromBiome
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = [(ATXAppDirectoryLogger *)self _retrieveLastLogProcessedDate];
  v3 = __atxlog_handle_app_library();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v16 = v2;
    _os_log_impl(&dword_2263AA000, v3, OS_LOG_TYPE_DEFAULT, "ATXAppDirectoryLogger: Processing events since %@", buf, 0xCu);
  }

  v4 = objc_opt_new();
  [v2 timeIntervalSinceReferenceDate];
  v5 = [v4 genericEventPublisherFromStartTime:35 consumerSubType:?];

  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v7 = [v5 filterWithIsIncluded:&__block_literal_global_169];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __63__ATXAppDirectoryLogger__retrieveAllUnprocessedEventsFromBiome__block_invoke_34;
  v13[3] = &unk_278596F60;
  v14 = v6;
  v8 = v6;
  v9 = [v7 sinkWithCompletion:&__block_literal_global_33_0 receiveInput:v13];

  v10 = [v8 sortedArrayUsingComparator:&__block_literal_global_39];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

uint64_t __63__ATXAppDirectoryLogger__retrieveAllUnprocessedEventsFromBiome__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 eventBody];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [v2 eventBody];
    v6 = [v5 event];
    objc_opt_class();
    v7 = objc_opt_isKindOfClass();
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

void __63__ATXAppDirectoryLogger__retrieveAllUnprocessedEventsFromBiome__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 error];

  if (v3)
  {
    v4 = __atxlog_handle_app_library();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __63__ATXAppDirectoryLogger__retrieveAllUnprocessedEventsFromBiome__block_invoke_2_cold_1(v2);
    }
  }
}

void __63__ATXAppDirectoryLogger__retrieveAllUnprocessedEventsFromBiome__block_invoke_34(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4 = [a2 eventBody];
  v3 = [v4 event];
  [v2 addObject:v3];
}

uint64_t __63__ATXAppDirectoryLogger__retrieveAllUnprocessedEventsFromBiome__block_invoke_2_36(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 date];
  v6 = [v4 date];

  v7 = [v5 compare:v6];
  return v7;
}

- (id)_retrieveSessionsFromUnprocessedEvents:(id)a3 lastSessionEndDate:(id *)a4
{
  v5 = a3;
  v6 = objc_opt_new();
  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x2020000000;
  v26[3] = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__75;
  v24 = __Block_byref_object_dispose__75;
  v25 = 0;
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x2020000000;
  v19 = 0;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __83__ATXAppDirectoryLogger__retrieveSessionsFromUnprocessedEvents_lastSessionEndDate___block_invoke;
  v12[3] = &unk_27859F3D0;
  v15 = v18;
  v16 = v26;
  v7 = v6;
  v13 = v7;
  v8 = v5;
  v14 = v8;
  v17 = &v20;
  [v8 enumerateObjectsUsingBlock:v12];
  if (a4)
  {
    *a4 = v21[5];
  }

  v9 = v14;
  v10 = v7;

  _Block_object_dispose(v18, 8);
  _Block_object_dispose(&v20, 8);

  _Block_object_dispose(v26, 8);

  return v10;
}

void __83__ATXAppDirectoryLogger__retrieveSessionsFromUnprocessedEvents_lastSessionEndDate___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  [v5 eventType];
  if (ATXIsSessionStartedByEvent())
  {
    if (*(*(*(a1 + 48) + 8) + 24))
    {
      v6 = __atxlog_handle_app_library();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        __83__ATXAppDirectoryLogger__retrieveSessionsFromUnprocessedEvents_lastSessionEndDate___block_invoke_cold_2(v5);
      }

      goto LABEL_13;
    }

LABEL_12:
    *(*(*(a1 + 56) + 8) + 24) = a3;
    *(*(*(a1 + 48) + 8) + 24) = 1;
    goto LABEL_13;
  }

  if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
  {
    v13 = __atxlog_handle_app_library();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      __83__ATXAppDirectoryLogger__retrieveSessionsFromUnprocessedEvents_lastSessionEndDate___block_invoke_cold_1(v5);
    }

    goto LABEL_12;
  }

  [v5 eventType];
  if (ATXIsSessionEndedByEvent())
  {
    v7 = *(a1 + 32);
    v8 = *(*(*(a1 + 56) + 8) + 24);
    v9 = [*(a1 + 40) subarrayWithRange:?];
    [v7 addObject:v9];

    v10 = [v5 date];
    v11 = *(*(a1 + 64) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;

    *(*(*(a1 + 48) + 8) + 24) = 0;
  }

LABEL_13:
}

- (id)_summarizeSession:(id)a3
{
  v64 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 objectAtIndexedSubscript:0];
  v5 = [v4 date];

  v58 = objc_opt_new();
  v6 = v5;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  obj = v3;
  v7 = [obj countByEnumeratingWithState:&v59 objects:v63 count:16];
  v44 = v6;
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = 0;
    v11 = *v60;
    v12 = *MEMORY[0x277CEBA40];
    v57 = *MEMORY[0x277CEBA48];
    v55 = *MEMORY[0x277CEBA30];
    v54 = *MEMORY[0x277CEBA38];
    v53 = *MEMORY[0x277CEBA50];
    v52 = *MEMORY[0x277CEBA58];
    v51 = *MEMORY[0x277CEB9E8];
    v50 = *MEMORY[0x277CEBA10];
    v49 = *MEMORY[0x277CEBA00];
    v48 = *MEMORY[0x277CEBA08];
    v13 = 0.0;
    v47 = *MEMORY[0x277CEBA18];
    v14 = 0.0;
    v15 = 0.0;
    v45 = *MEMORY[0x277CEBA40];
    v46 = *MEMORY[0x277CEB9F8];
    do
    {
      v16 = 0;
      v17 = v6;
      do
      {
        if (*v60 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v59 + 1) + 8 * v16);
        v19 = [v18 date];
        [v19 timeIntervalSinceDate:v17];
        v21 = v20;

        if (v10 <= 1)
        {
          if (!v10)
          {
LABEL_14:
            v15 = v15 + v21;
            goto LABEL_16;
          }

          if (v10 == 1)
          {
            v14 = v14 + v21;
          }
        }

        else
        {
          switch(v10)
          {
            case 9:
              goto LABEL_14;
            case 7:
              v13 = v13 + v21;
              break;
            case 2:
              goto LABEL_14;
          }
        }

LABEL_16:
        if ([v18 eventType] == 1)
        {
          v22 = [v18 categoryID];
          v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", v9];
          [v12 stringByAppendingString:v23];
          v24 = v8;
          v26 = v25 = v11;
          [v58 setObject:v22 forKeyedSubscript:v26];

          v27 = [v18 categoryIndex];
          v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", v9];
          v29 = [v57 stringByAppendingString:v28];
          [v58 setObject:v27 forKeyedSubscript:v29];

          v11 = v25;
          v8 = v24;
          v12 = v45;

          ++v9;
        }

        [v18 eventType];
        if (ATXIsSessionEndedByEvent())
        {
          v30 = [v18 bundleId];
          [v58 setObject:v30 forKeyedSubscript:v55];

          v31 = [v18 bundleIndex];
          [v58 setObject:v31 forKeyedSubscript:v54];

          v32 = [v18 searchQueryLength];
          [v58 setObject:v32 forKeyedSubscript:v53];

          v33 = [v18 searchTab];
          [v58 setObject:v33 forKeyedSubscript:v52];

          v34 = [v18 categoryID];
          [v58 setObject:v34 forKeyedSubscript:v12];

          v35 = [v18 categoryIndex];
          [v58 setObject:v35 forKeyedSubscript:v57];

          v36 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v18, "eventType")}];
          [v58 setObject:v36 forKeyedSubscript:v51];

          v37 = [MEMORY[0x277CCABB0] numberWithDouble:v13];
          [v58 setObject:v37 forKeyedSubscript:v50];

          v38 = [MEMORY[0x277CCABB0] numberWithDouble:v14];
          [v58 setObject:v38 forKeyedSubscript:v49];

          v39 = [MEMORY[0x277CCABB0] numberWithDouble:v15];
          [v58 setObject:v39 forKeyedSubscript:v48];

          v40 = [MEMORY[0x277CCABB0] numberWithInteger:v9];
          [v58 setObject:v40 forKeyedSubscript:v47];

          v41 = [MEMORY[0x277CCABB0] numberWithDouble:v21];
          [v58 setObject:v41 forKeyedSubscript:v46];
        }

        v6 = [v18 date];

        v10 = [v18 eventType];
        ++v16;
        v17 = v6;
      }

      while (v8 != v16);
      v8 = [obj countByEnumeratingWithState:&v59 objects:v63 count:16];
    }

    while (v8);
  }

  v42 = *MEMORY[0x277D85DE8];

  return v58;
}

- (void)_uploadToCoreAnalytics:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = AnalyticsSendEventLazy();
  v5 = __atxlog_handle_app_library();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v9 = v3;
      _os_log_impl(&dword_2263AA000, v6, OS_LOG_TYPE_DEFAULT, "ATXAppDirectoryLogger: Attached log successfully uploaded to CoreAnalytics - %@", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [ATXAppDirectoryLogger _uploadToCoreAnalytics:v6];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)uploadSummariesToCoreAnalyticsWithActivity:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ATXAppDirectoryLogger *)self _retrieveAllUnprocessedEventsFromBiome];
  if ([v4 didDefer])
  {
    v6 = __atxlog_handle_app_library();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2263AA000, v6, OS_LOG_TYPE_DEFAULT, "ATXAppDirectoryLogger: deferring uploading of logs to Core Analytics after merely fetching unprocessed events", buf, 2u);
    }
  }

  else
  {
    v28 = 0;
    v7 = [(ATXAppDirectoryLogger *)self _retrieveSessionsFromUnprocessedEvents:v5 lastSessionEndDate:&v28];
    v6 = v28;
    v8 = __atxlog_handle_app_library();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [(ATXAppDirectoryLogger *)v7 uploadSummariesToCoreAnalyticsWithActivity:v5];
    }

    if ([v4 didDefer])
    {
      v9 = __atxlog_handle_app_library();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_2263AA000, v9, OS_LOG_TYPE_DEFAULT, "ATXAppDirectoryLogger: deferring uploading of logs to Core Analytics after merely fetching sessions", buf, 2u);
      }
    }

    else
    {
      if ([v5 count] && v6)
      {
        [(ATXAppDirectoryLogger *)self _storeLastLogProcessedDate:v6];
      }

      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v9 = v7;
      v10 = [v9 countByEnumeratingWithState:&v24 objects:v31 count:16];
      if (v10)
      {
        v11 = v10;
        v20 = v7;
        v21 = v6;
        v22 = v5;
        v23 = v4;
        v12 = *v25;
        v13 = *MEMORY[0x277CEB9F0];
        v14 = 1;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v25 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v16 = [(ATXAppDirectoryLogger *)self _summarizeSession:*(*(&v24 + 1) + 8 * i), v20, v21, v22, v23];
            v17 = [MEMORY[0x277CCABB0] numberWithBool:v14 & 1];
            [v16 setObject:v17 forKeyedSubscript:v13];

            v18 = __atxlog_handle_app_library();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v30 = v16;
              _os_log_debug_impl(&dword_2263AA000, v18, OS_LOG_TYPE_DEBUG, "ATXAppDirectoryLogger: Uploading session %@", buf, 0xCu);
            }

            [(ATXAppDirectoryLogger *)self _uploadToCoreAnalytics:v16];
            v14 = 0;
          }

          v11 = [v9 countByEnumeratingWithState:&v24 objects:v31 count:16];
          v14 = 0;
        }

        while (v11);
        v5 = v22;
        v4 = v23;
        v7 = v20;
        v6 = v21;
      }
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

void __63__ATXAppDirectoryLogger__retrieveAllUnprocessedEventsFromBiome__block_invoke_2_cold_1(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v6 = [a1 error];
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v1, v2, OS_LOG_TYPE_ERROR, v3, v4, 0xCu);

  v5 = *MEMORY[0x277D85DE8];
}

void __83__ATXAppDirectoryLogger__retrieveSessionsFromUnprocessedEvents_lastSessionEndDate___block_invoke_cold_1(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v6 = [a1 date];
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v1, v2, OS_LOG_TYPE_DEBUG, v3, v4, 0xCu);

  v5 = *MEMORY[0x277D85DE8];
}

void __83__ATXAppDirectoryLogger__retrieveSessionsFromUnprocessedEvents_lastSessionEndDate___block_invoke_cold_2(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v6 = [a1 date];
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v1, v2, OS_LOG_TYPE_ERROR, v3, v4, 0xCu);

  v5 = *MEMORY[0x277D85DE8];
}

- (void)uploadSummariesToCoreAnalyticsWithActivity:(void *)a1 .cold.1(void *a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  [a1 count];
  [a2 count];
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v3, v4, OS_LOG_TYPE_DEBUG, v5, v6, 0x16u);
  v7 = *MEMORY[0x277D85DE8];
}

@end