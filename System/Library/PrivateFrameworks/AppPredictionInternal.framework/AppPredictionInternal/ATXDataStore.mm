@interface ATXDataStore
@end

@implementation ATXDataStore

void __43___ATXDataStore__removeActionsWithoutTitle__block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v3 = *(*(a1 + 32) + 48);
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __43___ATXDataStore__removeActionsWithoutTitle__block_invoke_2;
  v22[3] = &unk_278599FC8;
  v4 = v2;
  v23 = v4;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __43___ATXDataStore__removeActionsWithoutTitle__block_invoke_3;
  v21[3] = &unk_27859A1A0;
  v21[4] = *(a1 + 40);
  [v3 prepAndRunQuery:@"SELECT slots onPrep:id FROM alog" onRow:0 onError:{v22, v21}];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = v4;
  v5 = [obj countByEnumeratingWithState:&v17 objects:v26 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v17 + 1) + 8 * i);
        v10 = __atxlog_handle_deletions();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v11 = [v9 longLongValue];
          *buf = 134217984;
          v25 = v11;
          _os_log_impl(&dword_2263AA000, v10, OS_LOG_TYPE_DEFAULT, "_ATXDataStore: Deleting actions without title with rowId: %lld", buf, 0xCu);
        }

        v12 = *(*(a1 + 32) + 48);
        v16[0] = MEMORY[0x277D85DD0];
        v16[1] = 3221225472;
        v16[2] = __43___ATXDataStore__removeActionsWithoutTitle__block_invoke_711;
        v16[3] = &unk_278598768;
        v16[4] = v9;
        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 3221225472;
        v15[2] = __43___ATXDataStore__removeActionsWithoutTitle__block_invoke_2_713;
        v15[3] = &unk_27859A1A0;
        v15[4] = *(a1 + 40);
        [v12 prepAndRunQuery:@"DELETE FROM alog WHERE id = :id" onPrep:v16 onRow:0 onError:v15];
      }

      v6 = [obj countByEnumeratingWithState:&v17 objects:v26 count:16];
    }

    while (v6);
  }

  v13 = *MEMORY[0x277D85DE8];
}

uint64_t __43___ATXDataStore__removeActionsWithoutTitle__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 getNSDataForColumn:0];
  v5 = [v3 getInt64ForColumn:1];
  if (v4)
  {
    v6 = ATXSlotSetsDeserialize();
  }

  else
  {
    v6 = 0;
  }

  v7 = [v6 first];
  if (([v7 hasActionTitle] & 1) == 0)
  {
    v8 = *(a1 + 32);
    v9 = [MEMORY[0x277CCABB0] numberWithLongLong:v5];
    [v8 addObject:v9];
  }

  v10 = *MEMORY[0x277D42690];

  return v10;
}

void __81___ATXDataStore_IntentCache__writeValidParameterCombinationsWithSchema_cacheKey___block_invoke(id *a1)
{
  v2 = [a1[4] db];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __81___ATXDataStore_IntentCache__writeValidParameterCombinationsWithSchema_cacheKey___block_invoke_2;
  v3[3] = &unk_278598718;
  v4 = a1[5];
  v5 = a1[6];
  [v2 prepAndRunQuery:@"INSERT INTO intentCache (cacheKey onPrep:bundleId onRow:paramCombinationsWithSchema) VALUES (:cache_key onError:{:bundle_id, :param_combinations) ON CONFLICT(cacheKey) DO UPDATE SET paramCombinationsWithSchema=excluded.paramCombinationsWithSchema", v3, 0, &__block_literal_global_31}];
}

void __81___ATXDataStore_IntentCache__writeValidParameterCombinationsWithSchema_cacheKey___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v6 = a2;
  v4 = [v3 stringRepresentationForSerialization];
  [v6 bindNamedParam:":cache_key" toNSString:v4];

  v5 = [*(a1 + 32) bundleId];
  [v6 bindNamedParam:":bundle_id" toNSString:v5];

  [v6 bindNamedParam:":param_combinations" toNSData:*(a1 + 40)];
}

uint64_t __81___ATXDataStore_IntentCache__writeValidParameterCombinationsWithSchema_cacheKey___block_invoke_3()
{
  v0 = __atxlog_handle_default();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_FAULT))
  {
    __81___ATXDataStore_IntentCache__writeValidParameterCombinationsWithSchema_cacheKey___block_invoke_3_cold_1();
  }

  return *MEMORY[0x277D42698];
}

void __78___ATXDataStore_IntentCache__validParameterCombinationsWithSchemaForCacheKey___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) db];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __78___ATXDataStore_IntentCache__validParameterCombinationsWithSchemaForCacheKey___block_invoke_2;
  v4[3] = &unk_278598768;
  v5 = *(a1 + 40);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __78___ATXDataStore_IntentCache__validParameterCombinationsWithSchemaForCacheKey___block_invoke_3;
  v3[3] = &unk_278598790;
  v3[4] = *(a1 + 48);
  [v2 prepAndRunQuery:@"SELECT paramCombinationsWithSchema FROM intentCache WHERE cacheKey = :cache_key LIMIT 1" onPrep:v4 onRow:v3 onError:&__block_literal_global_24_0];
}

void __78___ATXDataStore_IntentCache__validParameterCombinationsWithSchemaForCacheKey___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 stringRepresentationForSerialization];
  [v3 bindNamedParam:":cache_key" toNSString:v4];
}

uint64_t __78___ATXDataStore_IntentCache__validParameterCombinationsWithSchemaForCacheKey___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 getNSDataForColumn:0];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return *MEMORY[0x277D42698];
}

uint64_t __78___ATXDataStore_IntentCache__validParameterCombinationsWithSchemaForCacheKey___block_invoke_4()
{
  v0 = __atxlog_handle_default();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_FAULT))
  {
    __78___ATXDataStore_IntentCache__validParameterCombinationsWithSchemaForCacheKey___block_invoke_4_cold_1();
  }

  return *MEMORY[0x277D42698];
}

void __72___ATXDataStore_IntentCache__writeSupportsBackgroundExecution_cacheKey___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) db];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __72___ATXDataStore_IntentCache__writeSupportsBackgroundExecution_cacheKey___block_invoke_2;
  v3[3] = &unk_2785989D8;
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  [v2 prepAndRunQuery:@"INSERT INTO intentCache (cacheKey onPrep:bundleId onRow:backgroundExecution) VALUES (:cache_key onError:{:bundle_id, :background_execution) ON CONFLICT(cacheKey) DO UPDATE SET backgroundExecution=excluded.backgroundExecution", v3, 0, &__block_literal_global_35_0}];
}

void __72___ATXDataStore_IntentCache__writeSupportsBackgroundExecution_cacheKey___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v6 = a2;
  v4 = [v3 stringRepresentationForSerialization];
  [v6 bindNamedParam:":cache_key" toNSString:v4];

  v5 = [*(a1 + 32) bundleId];
  [v6 bindNamedParam:":bundle_id" toNSString:v5];

  [v6 bindNamedParam:":background_execution" toInteger:*(a1 + 40)];
}

uint64_t __72___ATXDataStore_IntentCache__writeSupportsBackgroundExecution_cacheKey___block_invoke_3()
{
  v0 = __atxlog_handle_default();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_FAULT))
  {
    __72___ATXDataStore_IntentCache__writeSupportsBackgroundExecution_cacheKey___block_invoke_3_cold_1();
  }

  return *MEMORY[0x277D42698];
}

void __69___ATXDataStore_IntentCache__supportsBackgroundExecutionForCacheKey___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) db];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __69___ATXDataStore_IntentCache__supportsBackgroundExecutionForCacheKey___block_invoke_2;
  v4[3] = &unk_278598768;
  v5 = *(a1 + 40);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __69___ATXDataStore_IntentCache__supportsBackgroundExecutionForCacheKey___block_invoke_3;
  v3[3] = &unk_278598790;
  v3[4] = *(a1 + 48);
  [v2 prepAndRunQuery:@"SELECT backgroundExecution FROM intentCache WHERE cacheKey = :cache_key LIMIT 1" onPrep:v4 onRow:v3 onError:&__block_literal_global_40];
}

void __69___ATXDataStore_IntentCache__supportsBackgroundExecutionForCacheKey___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 stringRepresentationForSerialization];
  [v3 bindNamedParam:":cache_key" toNSString:v4];
}

uint64_t __69___ATXDataStore_IntentCache__supportsBackgroundExecutionForCacheKey___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 getInt64AsNSNumberForColumn:0];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return *MEMORY[0x277D42698];
}

uint64_t __69___ATXDataStore_IntentCache__supportsBackgroundExecutionForCacheKey___block_invoke_4()
{
  v0 = __atxlog_handle_default();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_FAULT))
  {
    __69___ATXDataStore_IntentCache__supportsBackgroundExecutionForCacheKey___block_invoke_4_cold_1();
  }

  return *MEMORY[0x277D42698];
}

void __50___ATXDataStore_IntentCache__writeTitle_cacheKey___block_invoke(id *a1)
{
  v2 = [a1[4] db];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __50___ATXDataStore_IntentCache__writeTitle_cacheKey___block_invoke_2;
  v3[3] = &unk_278598718;
  v4 = a1[5];
  v5 = a1[6];
  [v2 prepAndRunQuery:@"INSERT INTO intentCache (cacheKey onPrep:bundleId onRow:title) VALUES (:cache_key onError:{:bundle_id, :title) ON CONFLICT(cacheKey) DO UPDATE SET title=excluded.title", v3, 0, &__block_literal_global_49_0}];
}

void __50___ATXDataStore_IntentCache__writeTitle_cacheKey___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v7 = a2;
  v4 = [v3 stringRepresentationForSerialization];
  [v7 bindNamedParam:":cache_key" toNSString:v4];

  v5 = [*(a1 + 32) bundleId];
  [v7 bindNamedParam:":bundle_id" toNSString:v5];

  if (*(a1 + 40))
  {
    v6 = *(a1 + 40);
  }

  else
  {
    v6 = &stru_2839A6058;
  }

  [v7 bindNamedParam:":title" toNSString:v6];
}

uint64_t __50___ATXDataStore_IntentCache__writeTitle_cacheKey___block_invoke_3()
{
  v0 = __atxlog_handle_default();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_FAULT))
  {
    __50___ATXDataStore_IntentCache__writeTitle_cacheKey___block_invoke_3_cold_1();
  }

  return *MEMORY[0x277D42698];
}

void __47___ATXDataStore_IntentCache__titleForCacheKey___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) db];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __47___ATXDataStore_IntentCache__titleForCacheKey___block_invoke_2;
  v4[3] = &unk_278598768;
  v5 = *(a1 + 40);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __47___ATXDataStore_IntentCache__titleForCacheKey___block_invoke_3;
  v3[3] = &unk_278598790;
  v3[4] = *(a1 + 48);
  [v2 prepAndRunQuery:@"SELECT title FROM intentCache WHERE cacheKey = :cache_key LIMIT 1" onPrep:v4 onRow:v3 onError:&__block_literal_global_54_0];
}

void __47___ATXDataStore_IntentCache__titleForCacheKey___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 stringRepresentationForSerialization];
  [v3 bindNamedParam:":cache_key" toNSString:v4];
}

uint64_t __47___ATXDataStore_IntentCache__titleForCacheKey___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 getNSStringForColumn:0];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return *MEMORY[0x277D42698];
}

uint64_t __47___ATXDataStore_IntentCache__titleForCacheKey___block_invoke_4()
{
  v0 = __atxlog_handle_default();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_FAULT))
  {
    __47___ATXDataStore_IntentCache__titleForCacheKey___block_invoke_4_cold_1();
  }

  return *MEMORY[0x277D42698];
}

void __53___ATXDataStore_IntentCache__writeSubtitle_cacheKey___block_invoke(id *a1)
{
  v2 = [a1[4] db];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __53___ATXDataStore_IntentCache__writeSubtitle_cacheKey___block_invoke_2;
  v3[3] = &unk_278598718;
  v4 = a1[5];
  v5 = a1[6];
  [v2 prepAndRunQuery:@"INSERT INTO intentCache (cacheKey onPrep:bundleId onRow:subtitle) VALUES (:cache_key onError:{:bundle_id, :subtitle) ON CONFLICT(cacheKey) DO UPDATE SET subtitle=excluded.subtitle", v3, 0, &__block_literal_global_60_0}];
}

void __53___ATXDataStore_IntentCache__writeSubtitle_cacheKey___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v6 = a2;
  v4 = [v3 stringRepresentationForSerialization];
  [v6 bindNamedParam:":cache_key" toNSString:v4];

  v5 = [*(a1 + 32) bundleId];
  [v6 bindNamedParam:":bundle_id" toNSString:v5];

  [v6 bindNamedParam:":subtitle" toNSString:*(a1 + 40)];
}

uint64_t __53___ATXDataStore_IntentCache__writeSubtitle_cacheKey___block_invoke_3()
{
  v0 = __atxlog_handle_default();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_FAULT))
  {
    __53___ATXDataStore_IntentCache__writeSubtitle_cacheKey___block_invoke_3_cold_1();
  }

  return *MEMORY[0x277D42698];
}

void __50___ATXDataStore_IntentCache__subtitleForCacheKey___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) db];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __50___ATXDataStore_IntentCache__subtitleForCacheKey___block_invoke_2;
  v4[3] = &unk_278598768;
  v5 = *(a1 + 40);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __50___ATXDataStore_IntentCache__subtitleForCacheKey___block_invoke_3;
  v3[3] = &unk_278598790;
  v3[4] = *(a1 + 48);
  [v2 prepAndRunQuery:@"SELECT subtitle FROM intentCache WHERE cacheKey = :cache_key LIMIT 1" onPrep:v4 onRow:v3 onError:&__block_literal_global_65];
}

void __50___ATXDataStore_IntentCache__subtitleForCacheKey___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 stringRepresentationForSerialization];
  [v3 bindNamedParam:":cache_key" toNSString:v4];
}

uint64_t __50___ATXDataStore_IntentCache__subtitleForCacheKey___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 getNSStringForColumn:0];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return *MEMORY[0x277D42698];
}

uint64_t __50___ATXDataStore_IntentCache__subtitleForCacheKey___block_invoke_4()
{
  v0 = __atxlog_handle_default();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_FAULT))
  {
    __50___ATXDataStore_IntentCache__subtitleForCacheKey___block_invoke_4_cold_1();
  }

  return *MEMORY[0x277D42698];
}

void __63___ATXDataStore_IntentCache__writeEligibleForWidgets_cacheKey___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) db];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __63___ATXDataStore_IntentCache__writeEligibleForWidgets_cacheKey___block_invoke_2;
  v3[3] = &unk_2785989D8;
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  [v2 prepAndRunQuery:@"INSERT INTO intentCache (cacheKey onPrep:bundleId onRow:eligibleForWidgets) VALUES (:cache_key onError:{:bundle_id, :eligible_for_widgets) ON CONFLICT(cacheKey) DO UPDATE SET eligibleForWidgets=excluded.eligibleForWidgets", v3, 0, &__block_literal_global_71}];
}

void __63___ATXDataStore_IntentCache__writeEligibleForWidgets_cacheKey___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v6 = a2;
  v4 = [v3 stringRepresentationForSerialization];
  [v6 bindNamedParam:":cache_key" toNSString:v4];

  v5 = [*(a1 + 32) bundleId];
  [v6 bindNamedParam:":bundle_id" toNSString:v5];

  [v6 bindNamedParam:":eligible_for_widgets" toInteger:*(a1 + 40)];
}

uint64_t __63___ATXDataStore_IntentCache__writeEligibleForWidgets_cacheKey___block_invoke_3()
{
  v0 = __atxlog_handle_default();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_FAULT))
  {
    __63___ATXDataStore_IntentCache__writeEligibleForWidgets_cacheKey___block_invoke_3_cold_1();
  }

  return *MEMORY[0x277D42698];
}

void __62___ATXDataStore_IntentCache__isEligibleForWidgetsForCacheKey___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) db];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __62___ATXDataStore_IntentCache__isEligibleForWidgetsForCacheKey___block_invoke_2;
  v4[3] = &unk_278598768;
  v5 = *(a1 + 40);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __62___ATXDataStore_IntentCache__isEligibleForWidgetsForCacheKey___block_invoke_3;
  v3[3] = &unk_278598790;
  v3[4] = *(a1 + 48);
  [v2 prepAndRunQuery:@"SELECT eligibleForWidgets FROM intentCache WHERE cacheKey = :cache_key LIMIT 1" onPrep:v4 onRow:v3 onError:&__block_literal_global_76];
}

void __62___ATXDataStore_IntentCache__isEligibleForWidgetsForCacheKey___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 stringRepresentationForSerialization];
  [v3 bindNamedParam:":cache_key" toNSString:v4];
}

uint64_t __62___ATXDataStore_IntentCache__isEligibleForWidgetsForCacheKey___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 getInt64AsNSNumberForColumn:0];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return *MEMORY[0x277D42698];
}

uint64_t __62___ATXDataStore_IntentCache__isEligibleForWidgetsForCacheKey___block_invoke_4()
{
  v0 = __atxlog_handle_default();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_FAULT))
  {
    __62___ATXDataStore_IntentCache__isEligibleForWidgetsForCacheKey___block_invoke_4_cold_1();
  }

  return *MEMORY[0x277D42698];
}

void __62___ATXDataStore_IntentCache__removeCachedIntentsWithBundleId___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) db];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __62___ATXDataStore_IntentCache__removeCachedIntentsWithBundleId___block_invoke_2;
  v3[3] = &unk_278598768;
  v4 = *(a1 + 40);
  [v2 prepAndRunQuery:@"DELETE FROM intentCache WHERE bundleId = :bundle_id" onPrep:v3 onRow:0 onError:&__block_literal_global_81];
}

uint64_t __62___ATXDataStore_IntentCache__removeCachedIntentsWithBundleId___block_invoke_3()
{
  v0 = __atxlog_handle_default();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_FAULT))
  {
    __62___ATXDataStore_IntentCache__removeCachedIntentsWithBundleId___block_invoke_3_cold_1();
  }

  return *MEMORY[0x277D42698];
}

void __52___ATXDataStore_IntentCache__removeAllCachedIntents__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) db];
  [v1 prepAndRunQuery:@"DELETE FROM intentCache" onPrep:0 onRow:0 onError:&__block_literal_global_86];
}

uint64_t __52___ATXDataStore_IntentCache__removeAllCachedIntents__block_invoke_2()
{
  v0 = __atxlog_handle_default();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_FAULT))
  {
    __52___ATXDataStore_IntentCache__removeAllCachedIntents__block_invoke_2_cold_1();
  }

  return *MEMORY[0x277D42698];
}

void __53___ATXDataStore_WebClip__webClipsForAppClipBundleId___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) db];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __53___ATXDataStore_WebClip__webClipsForAppClipBundleId___block_invoke_2;
  v4[3] = &unk_278598768;
  v5 = *(a1 + 40);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __53___ATXDataStore_WebClip__webClipsForAppClipBundleId___block_invoke_3;
  v3[3] = &unk_278598790;
  v3[4] = *(a1 + 48);
  [v2 prepAndRunQuery:@"SELECT webClipBundleId FROM webClipForAppClip WHERE appClipBundleId = :appClipBundleId" onPrep:v4 onRow:v3 onError:&__block_literal_global_42];
}

uint64_t __53___ATXDataStore_WebClip__webClipsForAppClipBundleId___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 getNSStringForColumn:0];
  [*(*(*(a1 + 32) + 8) + 40) addObject:v3];
  v4 = MEMORY[0x277D42690];

  return *v4;
}

uint64_t __53___ATXDataStore_WebClip__webClipsForAppClipBundleId___block_invoke_4()
{
  v0 = __atxlog_handle_hero();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_FAULT))
  {
    __53___ATXDataStore_WebClip__webClipsForAppClipBundleId___block_invoke_4_cold_1(v0);
  }

  return *MEMORY[0x277D42698];
}

void __47___ATXDataStore_WebClip__writeWebClip_appClip___block_invoke(id *a1)
{
  v2 = [a1[4] db];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __47___ATXDataStore_WebClip__writeWebClip_appClip___block_invoke_2;
  v3[3] = &unk_278598718;
  v4 = a1[5];
  v5 = a1[6];
  [v2 prepAndRunQuery:@"INSERT INTO webClipForAppClip (webClipBundleId onPrep:appClipBundleId)VALUES (:webClipBundleId onRow::appClipBundleId)ON CONFLICT(webClipBundleId) DO UPDATE SET appClipBundleId=excluded.appClipBundleId" onError:{v3, 0, &__block_literal_global_23_0}];
}

void __47___ATXDataStore_WebClip__writeWebClip_appClip___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 bindNamedParam:":webClipBundleId" toNSString:v3];
  [v4 bindNamedParam:":appClipBundleId" toNSString:*(a1 + 40)];
}

uint64_t __47___ATXDataStore_WebClip__writeWebClip_appClip___block_invoke_3()
{
  v0 = __atxlog_handle_hero();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_FAULT))
  {
    __47___ATXDataStore_WebClip__writeWebClip_appClip___block_invoke_3_cold_1(v0);
  }

  return *MEMORY[0x277D42698];
}

uint64_t __31___ATXDataStore_sharedInstance__block_invoke()
{
  v0 = objc_opt_new();
  v1 = sharedInstance_instance;
  sharedInstance_instance = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t __26___ATXDataStore__doAsync___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();
  objc_autoreleasePoolPop(v2);
  pthread_mutex_lock(&_doAsync__txnLock);
  if (!--_doAsync__txnCount)
  {
    v3 = _doAsync__txn;
    _doAsync__txn = 0;
  }

  return pthread_mutex_unlock(&_doAsync__txnLock);
}

uint64_t __34___ATXDataStore_removeAllFeedback__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 48);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __34___ATXDataStore_removeAllFeedback__block_invoke_2;
  v4[3] = &unk_2785987B8;
  v4[4] = v1;
  return [v2 prepAndRunQuery:@"DELETE FROM app" onPrep:0 onRow:0 onError:v4];
}

uint64_t __34___ATXDataStore_removeAllFeedback__block_invoke_2(uint64_t a1, uint64_t a2)
{
  [_ATXDataStore _simulateCrashForMigrationFailure:a2];
  [*(a1 + 32) integrityCheckOrAbort];
  return *MEMORY[0x277D42698];
}

uint64_t __59___ATXDataStore_removeAllAppActionPredictionFeedbackCounts__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 48);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __59___ATXDataStore_removeAllAppActionPredictionFeedbackCounts__block_invoke_2;
  v4[3] = &unk_2785987B8;
  v4[4] = v1;
  return [v2 prepAndRunQuery:@"DELETE FROM predictionFeedbackInfo" onPrep:0 onRow:0 onError:v4];
}

uint64_t __59___ATXDataStore_removeAllAppActionPredictionFeedbackCounts__block_invoke_2(uint64_t a1, uint64_t a2)
{
  [_ATXDataStore _simulateCrashForMigrationFailure:a2];
  [*(a1 + 32) integrityCheckOrAbort];
  return *MEMORY[0x277D42698];
}

void __51___ATXDataStore_pruneMessageRecipientsAddedBefore___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 48);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __51___ATXDataStore_pruneMessageRecipientsAddedBefore___block_invoke_2;
  v4[3] = &unk_278598768;
  v5 = *(a1 + 40);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __51___ATXDataStore_pruneMessageRecipientsAddedBefore___block_invoke_3;
  v3[3] = &unk_2785987B8;
  v3[4] = *(a1 + 32);
  [v2 prepAndRunQuery:@"DELETE FROM messageRecipients WHERE lastDateMessaged<?" onPrep:v4 onRow:0 onError:v3];
}

void __51___ATXDataStore_pruneMessageRecipientsAddedBefore___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4 = a2;
  [v2 timeIntervalSinceReferenceDate];
  [v4 bindParam:1 toInt64:v3];
}

uint64_t __51___ATXDataStore_pruneMessageRecipientsAddedBefore___block_invoke_3(uint64_t a1, uint64_t a2)
{
  [_ATXDataStore _simulateCrashForMigrationFailure:a2];
  [*(a1 + 32) integrityCheckOrAbort];
  return *MEMORY[0x277D42698];
}

uint64_t __44___ATXDataStore__removeFeedbackForBundleId___block_invoke_2(uint64_t a1, uint64_t a2)
{
  [_ATXDataStore _simulateCrashForMigrationFailure:a2];
  [*(a1 + 32) integrityCheckOrAbort];
  return *MEMORY[0x277D42698];
}

void __84___ATXDataStore_enumerateStateForApps_withGlobalBlock_thenWithPerAppBlock_readOnly___block_invoke(uint64_t a1)
{
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __84___ATXDataStore_enumerateStateForApps_withGlobalBlock_thenWithPerAppBlock_readOnly___block_invoke_2;
  aBlock[3] = &unk_27859C438;
  v2 = (a1 + 40);
  v3 = *(a1 + 32);
  v14 = *(a1 + 64);
  *&v4 = v3;
  *(&v4 + 1) = *v2;
  v10 = v4;
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  *&v7 = v5;
  *(&v7 + 1) = v6;
  v12 = v10;
  v13 = v7;
  v8 = _Block_copy(aBlock);
  v9 = *(*(a1 + 40) + 48);
  if (*(a1 + 64) == 1)
  {
    [v9 readTransaction:v8];
  }

  else
  {
    [v9 writeTransaction:v8];
  }
}

void __84___ATXDataStore_enumerateStateForApps_withGlobalBlock_thenWithPerAppBlock_readOnly___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2)
  {
    v3 = objc_opt_new();
    v4 = *(*(a1 + 40) + 48);
    v70[0] = MEMORY[0x277D85DD0];
    v70[1] = 3221225472;
    v70[2] = __84___ATXDataStore_enumerateStateForApps_withGlobalBlock_thenWithPerAppBlock_readOnly___block_invoke_3;
    v70[3] = &unk_278599FC8;
    v5 = v3;
    v71 = v5;
    v69[0] = MEMORY[0x277D85DD0];
    v69[1] = 3221225472;
    v69[2] = __84___ATXDataStore_enumerateStateForApps_withGlobalBlock_thenWithPerAppBlock_readOnly___block_invoke_4;
    v69[3] = &unk_2785987B8;
    v69[4] = *(a1 + 40);
    [v4 prepAndRunQuery:@"SELECT bundleId FROM app" onPrep:0 onRow:v70 onError:v69];
    v2 = v5;
  }

  v67[0] = 0;
  v67[1] = v67;
  v67[2] = 0x2020000000;
  v68 = 32;
  v63 = 0;
  v64 = &v63;
  v65 = 0x2020000000;
  v66 = 0;
  v59 = 0;
  v60 = &v59;
  v61 = 0x2020000000;
  v62 = malloc_type_calloc(0x18uLL, 0x20uLL, 0xE1102D39uLL);
  v6 = *(*(a1 + 40) + 48);
  v57[4] = *(a1 + 40);
  v58[0] = MEMORY[0x277D85DD0];
  v58[1] = 3221225472;
  v58[2] = __84___ATXDataStore_enumerateStateForApps_withGlobalBlock_thenWithPerAppBlock_readOnly___block_invoke_5;
  v58[3] = &unk_27859A588;
  v58[4] = &v63;
  v58[5] = v67;
  v58[6] = &v59;
  v57[0] = MEMORY[0x277D85DD0];
  v57[1] = 3221225472;
  v57[2] = __84___ATXDataStore_enumerateStateForApps_withGlobalBlock_thenWithPerAppBlock_readOnly___block_invoke_6;
  v57[3] = &unk_2785987B8;
  [v6 prepAndRunQuery:@"SELECT bundleId onPrep:data FROM app ORDER BY bundleId" onRow:0 onError:{v58, v57}];
  v7 = [v2 count];
  v34 = malloc_type_calloc(v7, 0x10uLL, 0x1000040451B5BE8uLL);
  if (v7 >= 1)
  {
    v8 = 0;
    v9 = v34;
    do
    {
      v10 = objc_autoreleasePoolPush();
      *v9 = 0;
      v9[1] = 0;
      __key = 0;
      p_key = 0;
      v52 = 0;
      v11 = [v2 objectAtIndexedSubscript:v8];
      __key = [v11 UTF8String];
      p_key = 0;
      v52 = 0;

      v12 = bsearch_b(&__key, v60[3], v64[6], 0x18uLL, &__block_literal_global_202_0);
      if (v12)
      {
        *v9 = *(v12 + 8);
      }

      objc_autoreleasePoolPop(v10);
      ++v8;
      v9 += 2;
    }

    while ((v7 & 0x7FFFFFFF) != v8);
  }

  if (v64[6] >= 1)
  {
    v13 = 0;
    v14 = 0;
    do
    {
      free(*(v60[3] + v13));
      ++v14;
      v13 += 24;
    }

    while (v14 < v64[6]);
  }

  free(v60[3]);
  __key = 0;
  p_key = &__key;
  v52 = 0x3810000000;
  v53 = &unk_226931DDF;
  v54 = 0;
  v55 = 0;
  v56 = 0;
  v15 = *(*(a1 + 40) + 48);
  v48[4] = *(a1 + 40);
  v49[0] = MEMORY[0x277D85DD0];
  v49[1] = 3221225472;
  v49[2] = __84___ATXDataStore_enumerateStateForApps_withGlobalBlock_thenWithPerAppBlock_readOnly___block_invoke_8;
  v49[3] = &unk_278598790;
  v49[4] = &__key;
  v48[0] = MEMORY[0x277D85DD0];
  v48[1] = 3221225472;
  v48[2] = __84___ATXDataStore_enumerateStateForApps_withGlobalBlock_thenWithPerAppBlock_readOnly___block_invoke_9;
  v48[3] = &unk_2785987B8;
  [v15 prepAndRunQuery:@"SELECT data FROM meta LIMIT 1" onPrep:0 onRow:v49 onError:v48];
  if (*(a1 + 64) == 1)
  {
    v16 = *(a1 + 48);
    if (v16)
    {
      (*(v16 + 16))(v16, p_key + 4);
    }

    if (v7 >= 1)
    {
      v17 = 0;
      v18 = v7 & 0x7FFFFFFF;
      v19 = v34;
      do
      {
        v20 = objc_autoreleasePoolPush();
        v21 = *(a1 + 56);
        if (v21)
        {
          v22 = [v2 objectAtIndexedSubscript:v17];
          (*(v21 + 16))(v21, v22, v19);
        }

        objc_autoreleasePoolPop(v20);
        ++v17;
        v19 += 2;
      }

      while (v18 != v17);
    }
  }

  else
  {
    v23 = p_key;
    v46 = *(p_key + 2);
    v47 = p_key[6];
    v24 = *(a1 + 48);
    if (v24)
    {
      (*(v24 + 16))(v24, &v46);
      v23 = p_key;
    }

    v25 = v23[4];
    v26 = v23[5];
    v27 = v23[6];
    if (v25 != v46 || v26 != *(&v46 + 1) || v27 != v47)
    {
      v30 = *(*(a1 + 40) + 48);
      v42[4] = *(a1 + 40);
      v43[0] = MEMORY[0x277D85DD0];
      v43[1] = 3221225472;
      v43[2] = __84___ATXDataStore_enumerateStateForApps_withGlobalBlock_thenWithPerAppBlock_readOnly___block_invoke_10;
      v43[3] = &__block_descriptor_56_e29_v16__0___PASSqliteStatement_8l;
      v44 = v46;
      v45 = v47;
      v42[0] = MEMORY[0x277D85DD0];
      v42[1] = 3221225472;
      v42[2] = __84___ATXDataStore_enumerateStateForApps_withGlobalBlock_thenWithPerAppBlock_readOnly___block_invoke_11;
      v42[3] = &unk_2785987B8;
      [v30 prepAndRunQuery:@"INSERT OR REPLACE INTO meta (id onPrep:data onRow:version) VALUES (1 onError:{?, (SELECT version FROM meta WHERE id = 1))", v43, 0, v42}];
    }

    v31 = *(*(a1 + 40) + 48);
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __84___ATXDataStore_enumerateStateForApps_withGlobalBlock_thenWithPerAppBlock_readOnly___block_invoke_12;
    v36[3] = &unk_27859C410;
    v41 = v7;
    v40 = v34;
    v39 = *(a1 + 56);
    v32 = v2;
    v33 = *(a1 + 40);
    v37 = v32;
    v38 = v33;
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __84___ATXDataStore_enumerateStateForApps_withGlobalBlock_thenWithPerAppBlock_readOnly___block_invoke_13;
    v35[3] = &unk_2785987B8;
    v35[4] = v33;
    [v31 prepQuery:@"INSERT OR REPLACE INTO app (bundleId onPrep:data) VALUES (? onError:{?)", v36, v35}];
  }

  free(v34);
  _Block_object_dispose(&__key, 8);
  _Block_object_dispose(&v59, 8);
  _Block_object_dispose(&v63, 8);
  _Block_object_dispose(v67, 8);
}

uint64_t __84___ATXDataStore_enumerateStateForApps_withGlobalBlock_thenWithPerAppBlock_readOnly___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 getNSStringForColumn:0];
  [v2 addObject:v3];

  return *MEMORY[0x277D42690];
}

uint64_t __84___ATXDataStore_enumerateStateForApps_withGlobalBlock_thenWithPerAppBlock_readOnly___block_invoke_4(uint64_t a1, uint64_t a2)
{
  [_ATXDataStore _simulateCrashForMigrationFailure:a2];
  [*(a1 + 32) integrityCheckOrAbort];
  return *MEMORY[0x277D42698];
}

uint64_t __84___ATXDataStore_enumerateStateForApps_withGlobalBlock_thenWithPerAppBlock_readOnly___block_invoke_5(void *a1, id a2)
{
  v4 = a2;
  v5 = a2;
  v6 = sqlite3_column_text([v5 stmt], 0);
  v7 = [v5 stmt];

  v8 = sqlite3_column_blob(v7, 1);
  if (v6)
  {
    v9 = v8;
    if (v8)
    {
      v10 = *(*(a1[4] + 8) + 24);
      v11 = *(a1[5] + 8);
      if (v10 == *(v11 + 24))
      {
        *(v11 + 24) = 2 * v10;
        *(*(a1[6] + 8) + 24) = reallocf(*(*(a1[6] + 8) + 24), 24 * *(*(a1[5] + 8) + 24));
        v10 = *(*(a1[4] + 8) + 24);
      }

      *(*(*(a1[6] + 8) + 24) + 24 * v10 + 8) = *v9;
      *(*(*(a1[6] + 8) + 24) + 24 * (*(*(a1[4] + 8) + 24))++) = strdup(v6);
    }
  }

  return *MEMORY[0x277D42690];
}

uint64_t __84___ATXDataStore_enumerateStateForApps_withGlobalBlock_thenWithPerAppBlock_readOnly___block_invoke_6(uint64_t a1, uint64_t a2)
{
  [_ATXDataStore _simulateCrashForMigrationFailure:a2];
  [*(a1 + 32) integrityCheckOrAbort];
  return *MEMORY[0x277D42698];
}

uint64_t __84___ATXDataStore_enumerateStateForApps_withGlobalBlock_thenWithPerAppBlock_readOnly___block_invoke_8(uint64_t a1, id a2)
{
  v4 = a2;
  v5 = sqlite3_column_blob([a2 stmt], 0);
  if (v5)
  {
    v6 = *(*(a1 + 32) + 8);
    v7 = *v5;
    *(v6 + 48) = v5[2];
    *(v6 + 32) = v7;
  }

  return *MEMORY[0x277D42698];
}

uint64_t __84___ATXDataStore_enumerateStateForApps_withGlobalBlock_thenWithPerAppBlock_readOnly___block_invoke_9(uint64_t a1, uint64_t a2)
{
  [_ATXDataStore _simulateCrashForMigrationFailure:a2];
  [*(a1 + 32) integrityCheckOrAbort];
  return *MEMORY[0x277D42698];
}

uint64_t __84___ATXDataStore_enumerateStateForApps_withGlobalBlock_thenWithPerAppBlock_readOnly___block_invoke_10(uint64_t a1, id a2)
{
  v4 = a2;
  v5 = [a2 stmt];

  return sqlite3_bind_blob(v5, 1, (a1 + 32), 24, 0xFFFFFFFFFFFFFFFFLL);
}

uint64_t __84___ATXDataStore_enumerateStateForApps_withGlobalBlock_thenWithPerAppBlock_readOnly___block_invoke_11(uint64_t a1, uint64_t a2)
{
  [_ATXDataStore _simulateCrashForMigrationFailure:a2];
  [*(a1 + 32) integrityCheckOrAbort];
  return *MEMORY[0x277D42698];
}

void __84___ATXDataStore_enumerateStateForApps_withGlobalBlock_thenWithPerAppBlock_readOnly___block_invoke_12(uint64_t a1, void *a2)
{
  v3 = a2;
  v14 = 0uLL;
  if (*(a1 + 64) >= 1)
  {
    v4 = 0;
    v5 = 0;
    do
    {
      v7 = *(a1 + 48);
      v6 = *(a1 + 56);
      v14 = *(v6 + v4);
      if (v7)
      {
        v8 = [*(a1 + 32) objectAtIndexedSubscript:v5];
        (*(v7 + 16))(v7, v8, &v14);

        v6 = *(a1 + 56);
      }

      v9 = (v6 + v4);
      v11 = *v9;
      v10 = v9[1];
      if (v14 != v11 || *(&v14 + 1) != v10)
      {
        v13 = [*(a1 + 32) objectAtIndexedSubscript:v5];
        [v3 bindParam:1 toNSString:v13];

        sqlite3_bind_blob([v3 stmt], 2, &v14, 16, 0xFFFFFFFFFFFFFFFFLL);
        [*(*(a1 + 40) + 48) runQuery:v3 onRow:0];
        sqlite3_reset([v3 stmt]);
      }

      ++v5;
      v4 += 16;
    }

    while (v5 < *(a1 + 64));
  }
}

uint64_t __84___ATXDataStore_enumerateStateForApps_withGlobalBlock_thenWithPerAppBlock_readOnly___block_invoke_13(uint64_t a1, uint64_t a2)
{
  [_ATXDataStore _simulateCrashForMigrationFailure:a2];
  [*(a1 + 32) integrityCheckOrAbort];
  return *MEMORY[0x277D42698];
}

uint64_t __44___ATXDataStore_vacuumDatabaseWithActivity___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    return [v1 didDefer] ^ 1;
  }

  else
  {
    return 1;
  }
}

void __61___ATXDataStore_addAppLaunchForBundleId_date_withLaunchType___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  [*(a1 + 40) timeIntervalSinceReferenceDate];
  v4 = v3;
  v5 = dateColumnNameForLaunchType(*(a1 + 56));
  [v2 updateOrInsertTimestamp:v4 intoColumn:v5 forBundleId:*(a1 + 48) isExtension:0];
}

uint64_t __53___ATXDataStore_addAppActionLaunchForAppAction_date___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  [*(a1 + 40) timeIntervalSinceReferenceDate];
  v4 = *(a1 + 48);

  return [v2 updateOrInsertTimestamp:v3 forAppAction:v4];
}

uint64_t __52___ATXDataStore_addExtensionLaunchForBundleId_date___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  [*(a1 + 40) timeIntervalSinceReferenceDate];
  v4 = *(a1 + 48);

  return [v2 updateOrInsertTimestamp:v3 intoColumn:@"lastLaunchDate" forBundleId:v4 isExtension:1];
}

uint64_t __36___ATXDataStore_appInfoForBundleId___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _appInfoForBundleIdNoSync:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

uint64_t __43___ATXDataStore__appInfoForBundleIdNoSync___block_invoke_2(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 getInt64ForColumn:0];
  if (v4)
  {
    v24 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:v4];
  }

  else
  {
    v24 = 0;
  }

  v5 = [v3 getInt64ForColumn:1];
  if (v5)
  {
    v23 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:v5];
  }

  else
  {
    v23 = 0;
  }

  v6 = [v3 getInt64ForColumn:2];
  if (v6)
  {
    v7 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:v6];
  }

  else
  {
    v7 = 0;
  }

  v8 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v3, "getInt64ForColumn:", 3)}];
  v9 = [v3 getNSDataForColumn:4];
  v10 = decodeSubGenresData(v9);

  v11 = [v3 getInt64ForColumn:5];
  v12 = [v3 getInt64ForColumn:6];
  if ([v3 isColumnNull:6])
  {
    v13 = __atxlog_handle_default();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(a1 + 32);
      *buf = 138412290;
      v26 = v14;
      _os_log_impl(&dword_2263AA000, v13, OS_LOG_TYPE_DEFAULT, "Unexpected NULL isEnterpriseApp for bundleId: %@", buf, 0xCu);
    }
  }

  v15 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v3, "getInt64ForColumn:", 7)}];
  if ([v3 isColumnNull:8])
  {
    v16 = 0;
  }

  else
  {
    v16 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v3, "getInt64ForColumn:", 8)}];
  }

  if ([v3 isColumnNull:9])
  {
    v17 = 0;
  }

  else
  {
    v17 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v3, "getInt64ForColumn:", 9)}];
  }

  v18 = [[_ATXAppInfo alloc] initWithBundleId:*(a1 + 32) isExtension:v11 != 0 isEnterpriseApp:v12 != 0 installDate:v24 lastLaunch:v23 lastSpotlightLaunch:v7 averageSecondsBetweenLaunches:v16 medianSecondsBetweenLaunches:v17 genreId:v8 subGenreIds:v10 app2VecCluster:v15];
  v19 = *(*(a1 + 40) + 8);
  v20 = *(v19 + 40);
  *(v19 + 40) = v18;

  v21 = *MEMORY[0x277D85DE8];
  return *MEMORY[0x277D42698];
}

uint64_t __43___ATXDataStore__appInfoForBundleIdNoSync___block_invoke_224(uint64_t a1, uint64_t a2)
{
  [_ATXDataStore _simulateCrashForMigrationFailure:a2];
  [*(a1 + 32) integrityCheckOrAbort];
  return *MEMORY[0x277D42698];
}

void __55___ATXDataStore_allAppsLaunchedOrInstalledWithin30Days__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-2592000.0];
  v3 = *(a1 + 32);
  v4 = *(v3 + 48);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __55___ATXDataStore_allAppsLaunchedOrInstalledWithin30Days__block_invoke_2;
  v8[3] = &unk_278598768;
  v9 = v2;
  v6[4] = v3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55___ATXDataStore_allAppsLaunchedOrInstalledWithin30Days__block_invoke_3;
  v7[3] = &unk_278598790;
  v7[4] = *(a1 + 40);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __55___ATXDataStore_allAppsLaunchedOrInstalledWithin30Days__block_invoke_4;
  v6[3] = &unk_2785987B8;
  v5 = v2;
  [v4 prepAndRunQuery:@"SELECT BUNDLEID FROM appInfo WHERE (installDate > ? OR lastLaunchDate > ?) AND installDate IS NOT NULL;" onPrep:v8 onRow:v7 onError:v6];
}

void __55___ATXDataStore_allAppsLaunchedOrInstalledWithin30Days__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v5 = a2;
  [v2 timeIntervalSinceReferenceDate];
  v4 = v3;
  [v5 bindParam:1 toInteger:v3];
  [v5 bindParam:2 toInteger:v4];
}

uint64_t __55___ATXDataStore_allAppsLaunchedOrInstalledWithin30Days__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 getNSStringForColumn:0];
  [*(*(*(a1 + 32) + 8) + 40) addObject:v3];
  v4 = MEMORY[0x277D42690];

  return *v4;
}

void __44___ATXDataStore__allAppsRequireInstallDate___block_invoke(uint64_t a1)
{
  if (*(a1 + 48))
  {
    v2 = @"WHERE installDate IS NOT NULL";
  }

  else
  {
    v2 = &stru_2839A6058;
  }

  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"SELECT bundleId, installDate FROM appInfo %@", v2];
  v4 = *(a1 + 32);
  v5 = *(v4 + 48);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44___ATXDataStore__allAppsRequireInstallDate___block_invoke_2;
  v7[3] = &unk_278598790;
  v7[4] = *(a1 + 40);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __44___ATXDataStore__allAppsRequireInstallDate___block_invoke_3;
  v6[3] = &unk_2785987B8;
  v6[4] = v4;
  [v5 prepAndRunQuery:v3 onPrep:0 onRow:v7 onError:v6];
}

uint64_t __44___ATXDataStore__allAppsRequireInstallDate___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 getNSStringForColumn:0];
  if ([v3 length])
  {
    [*(*(*(a1 + 32) + 8) + 40) addObject:v3];
  }

  v4 = MEMORY[0x277D42690];

  return *v4;
}

uint64_t __44___ATXDataStore__allAppsRequireInstallDate___block_invoke_3(uint64_t a1, uint64_t a2)
{
  [_ATXDataStore _simulateCrashForMigrationFailure:a2];
  [*(a1 + 32) integrityCheckOrAbort];
  return *MEMORY[0x277D42698];
}

uint64_t __30___ATXDataStore_allRemoteApps__block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 48);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __30___ATXDataStore_allRemoteApps__block_invoke_2;
  v3[3] = &unk_278598790;
  v3[4] = *(a1 + 40);
  return [v1 prepAndRunQuery:@"SELECT * FROM appInfo WHERE bundleId LIKE 'remote%';" onPrep:0 onRow:v3 onError:0];
}

uint64_t __30___ATXDataStore_allRemoteApps__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 getNSStringForColumn:0];
  if ([v3 length])
  {
    [*(*(*(a1 + 32) + 8) + 40) addObject:v3];
  }

  v4 = MEMORY[0x277D42690];

  return *v4;
}

uint64_t __40___ATXDataStore_nthMostRecentAppLaunch___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 48);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __40___ATXDataStore_nthMostRecentAppLaunch___block_invoke_2;
  v9[3] = &__block_descriptor_40_e29_v16__0___PASSqliteStatement_8l;
  v5 = a1 + 40;
  v4 = *(a1 + 40);
  v9[4] = *(v5 + 8);
  v7[4] = v2;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __40___ATXDataStore_nthMostRecentAppLaunch___block_invoke_3;
  v8[3] = &unk_278598790;
  v8[4] = v4;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __40___ATXDataStore_nthMostRecentAppLaunch___block_invoke_4;
  v7[3] = &unk_2785987B8;
  return [v3 prepAndRunQuery:@"SELECT bundleId onPrep:lastLaunchDate FROM appInfo ORDER BY lastLaunchDate DESC LIMIT 1 OFFSET ?" onRow:v9 onError:{v8, v7}];
}

uint64_t __40___ATXDataStore_nthMostRecentAppLaunch___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 getNSStringForColumn:0];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return *MEMORY[0x277D42698];
}

uint64_t __40___ATXDataStore_nthMostRecentAppLaunch___block_invoke_4(uint64_t a1, uint64_t a2)
{
  [_ATXDataStore _simulateCrashForMigrationFailure:a2];
  [*(a1 + 32) integrityCheckOrAbort];
  return *MEMORY[0x277D42698];
}

void __42___ATXDataStore__lastAppLaunchDateOfType___block_invoke(void *a1)
{
  v2 = dateColumnNameForLaunchType(a1[6]);
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"SELECT MAX(%@) FROM appInfo WHERE isExtension = FALSE", v2];
  v4 = a1[4];
  v5 = *(v4 + 48);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42___ATXDataStore__lastAppLaunchDateOfType___block_invoke_2;
  v7[3] = &unk_278598790;
  v7[4] = a1[5];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __42___ATXDataStore__lastAppLaunchDateOfType___block_invoke_3;
  v6[3] = &unk_2785987B8;
  v6[4] = v4;
  [v5 prepAndRunQuery:v3 onPrep:0 onRow:v7 onError:v6];
}

uint64_t __42___ATXDataStore__lastAppLaunchDateOfType___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 getInt64ForColumn:0];
  if (v3)
  {
    v4 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:v3];
  }

  else
  {
    v4 = 0;
  }

  objc_storeStrong((*(*(a1 + 32) + 8) + 40), v4);
  if (v3)
  {
  }

  return *MEMORY[0x277D42698];
}

uint64_t __42___ATXDataStore__lastAppLaunchDateOfType___block_invoke_3(uint64_t a1, uint64_t a2)
{
  [_ATXDataStore _simulateCrashForMigrationFailure:a2];
  [*(a1 + 32) integrityCheckOrAbort];
  return *MEMORY[0x277D42698];
}

uint64_t __32___ATXDataStore_lastLaunchedApp__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 48);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __32___ATXDataStore_lastLaunchedApp__block_invoke_3;
  v5[3] = &unk_278598790;
  v5[4] = *(a1 + 40);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __32___ATXDataStore_lastLaunchedApp__block_invoke_4;
  v4[3] = &unk_2785987B8;
  v4[4] = v1;
  return [v2 prepAndRunQuery:@"SELECT bundleId FROM appInfo WHERE lastLaunchDate = (SELECT MAX(lastLaunchDate) FROM appInfo WHERE isExtension = FALSE)" onPrep:&__block_literal_global_253 onRow:v5 onError:v4];
}

uint64_t __32___ATXDataStore_lastLaunchedApp__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 getNSStringForColumn:0];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return *MEMORY[0x277D42698];
}

uint64_t __32___ATXDataStore_lastLaunchedApp__block_invoke_4(uint64_t a1, uint64_t a2)
{
  [_ATXDataStore _simulateCrashForMigrationFailure:a2];
  [*(a1 + 32) integrityCheckOrAbort];
  return *MEMORY[0x277D42698];
}

void __51___ATXDataStore_removeAppInfoForBundleIdsNotInSet___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  context = objc_autoreleasePoolPush();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = [&unk_283A57ED8 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v14;
    do
    {
      v5 = 0;
      do
      {
        if (*v14 != v4)
        {
          objc_enumerationMutation(&unk_283A57ED8);
        }

        v6 = *(*(&v13 + 1) + 8 * v5);
        v7 = *(*(a1 + 32) + 48);
        v11[0] = MEMORY[0x277D85DD0];
        v11[1] = 3221225472;
        v11[2] = __51___ATXDataStore_removeAppInfoForBundleIdsNotInSet___block_invoke_2;
        v11[3] = &unk_278598768;
        v12 = *(a1 + 40);
        v10[0] = MEMORY[0x277D85DD0];
        v10[1] = 3221225472;
        v10[2] = __51___ATXDataStore_removeAppInfoForBundleIdsNotInSet___block_invoke_3;
        v10[3] = &unk_2785987B8;
        v10[4] = *(a1 + 32);
        [v7 prepAndRunQuery:v6 onPrep:v11 onRow:0 onError:v10];

        ++v5;
      }

      while (v3 != v5);
      v3 = [&unk_283A57ED8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v3);
  }

  objc_autoreleasePoolPop(context);
  v8 = *MEMORY[0x277D85DE8];
}

uint64_t __42___ATXDataStore_removeAppInfoForBundleId___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v15 = 0u;
  v16 = 0u;
  if (ATXIsRemoteAppBundleId())
  {
    v3 = &unk_283A57EF0;
  }

  else
  {
    v3 = &unk_283A57F08;
  }

  v17 = 0uLL;
  v18 = 0uLL;
  obj = v3;
  result = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (result)
  {
    v5 = result;
    v6 = *v16;
    do
    {
      v7 = 0;
      do
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v15 + 1) + 8 * v7);
        v9 = *(*(a1 + 40) + 48);
        v13[0] = MEMORY[0x277D85DD0];
        v13[1] = 3221225472;
        v13[2] = __42___ATXDataStore_removeAppInfoForBundleId___block_invoke_2;
        v13[3] = &unk_278598768;
        v14 = *(a1 + 32);
        v12[0] = MEMORY[0x277D85DD0];
        v12[1] = 3221225472;
        v12[2] = __42___ATXDataStore_removeAppInfoForBundleId___block_invoke_4;
        v12[3] = &unk_2785987B8;
        v12[4] = *(a1 + 40);
        [v9 prepAndRunQuery:v8 onPrep:v13 onRow:&__block_literal_global_283 onError:v12];

        ++v7;
      }

      while (v5 != v7);
      result = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
      v5 = result;
    }

    while (result);
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __42___ATXDataStore_removeAppInfoForBundleId___block_invoke_4(uint64_t a1, uint64_t a2)
{
  [_ATXDataStore _simulateCrashForMigrationFailure:a2];
  [*(a1 + 32) integrityCheckOrAbort];
  return *MEMORY[0x277D42698];
}

void __46___ATXDataStore_removeAppLaunchesForBundleId___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 48);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __46___ATXDataStore_removeAppLaunchesForBundleId___block_invoke_2;
  v8[3] = &unk_278598768;
  v9 = *(a1 + 40);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __46___ATXDataStore_removeAppLaunchesForBundleId___block_invoke_3;
  v5[3] = &unk_278598740;
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v6 = v3;
  v7 = v4;
  [v2 prepAndRunQuery:@"UPDATE appInfo SET lastLaunchDate=NULL onPrep:lastSpotlightLaunchDate=NULL WHERE bundleId=?" onRow:v8 onError:{0, v5}];
}

uint64_t __46___ATXDataStore_removeAppLaunchesForBundleId___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __atxlog_handle_default();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __46___ATXDataStore_removeAppLaunchesForBundleId___block_invoke_3_cold_1(a1);
  }

  [_ATXDataStore _simulateCrashForMigrationFailure:v3];
  [*(a1 + 40) integrityCheckOrAbort];
  return *MEMORY[0x277D42698];
}

uint64_t __35___ATXDataStore_clearAppLaunchInfo__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 48);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __35___ATXDataStore_clearAppLaunchInfo__block_invoke_2;
  v4[3] = &unk_2785987B8;
  v4[4] = v1;
  return [v2 prepAndRunQuery:@"UPDATE appInfo SET lastLaunchDate=NULL onPrep:lastSpotlightLaunchDate=NULL" onRow:0 onError:{0, v4}];
}

uint64_t __35___ATXDataStore_clearAppLaunchInfo__block_invoke_2(uint64_t a1, uint64_t a2)
{
  [_ATXDataStore _simulateCrashForMigrationFailure:a2];
  [*(a1 + 32) integrityCheckOrAbort];
  return *MEMORY[0x277D42698];
}

uint64_t __36___ATXDataStore_clearAppInstallInfo__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 48);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __36___ATXDataStore_clearAppInstallInfo__block_invoke_2;
  v4[3] = &unk_2785987B8;
  v4[4] = v1;
  return [v2 prepAndRunQuery:@"UPDATE appInfo SET installDate=NULL" onPrep:0 onRow:0 onError:v4];
}

uint64_t __36___ATXDataStore_clearAppInstallInfo__block_invoke_2(uint64_t a1, uint64_t a2)
{
  [_ATXDataStore _simulateCrashForMigrationFailure:a2];
  [*(a1 + 32) integrityCheckOrAbort];
  return *MEMORY[0x277D42698];
}

uint64_t __33___ATXDataStore_launchedAppCount__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 48);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __33___ATXDataStore_launchedAppCount__block_invoke_2;
  v5[3] = &unk_278598790;
  v5[4] = *(a1 + 40);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __33___ATXDataStore_launchedAppCount__block_invoke_3;
  v4[3] = &unk_2785987B8;
  v4[4] = v1;
  return [v2 prepAndRunQuery:@"SELECT COUNT(*) FROM appInfo WHERE ((lastLaunchDate!=0 AND lastLaunchDate IS NOT NULL) OR (lastSpotlightLaunchDate!=0 AND lastSpotlightLaunchDate IS NOT NULL)) AND (installDate IS NOT NULL)" onPrep:0 onRow:v5 onError:v4];
}

uint64_t __33___ATXDataStore_launchedAppCount__block_invoke_3(uint64_t a1, uint64_t a2)
{
  [_ATXDataStore _simulateCrashForMigrationFailure:a2];
  [*(a1 + 32) integrityCheckOrAbort];
  return *MEMORY[0x277D42698];
}

void __28___ATXDataStore_loadAppInfo__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 48);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __28___ATXDataStore_loadAppInfo__block_invoke_2;
  v4[3] = &unk_278599FC8;
  v5 = *(a1 + 40);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __28___ATXDataStore_loadAppInfo__block_invoke_304;
  v3[3] = &unk_2785987B8;
  v3[4] = *(a1 + 32);
  [v2 prepAndRunQuery:@"SELECT bundleId onPrep:installDate onRow:lastLaunchDate onError:{lastSpotlightLaunchDate, genreId, subGenreIds, isExtension, isEnterpriseApp, app2VecCluster, averageSecondsBetweenLaunches, medianSecondsBetweenLaunches FROM appInfo", 0, v4, v3}];
}

uint64_t __28___ATXDataStore_loadAppInfo__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 getNSStringForColumn:0];
  v5 = [v3 getInt64ForColumn:1];
  if (v4)
  {
    v22 = a1;
    if (v5)
    {
      v23 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:v5];
    }

    else
    {
      v23 = 0;
    }

    v7 = [v3 getInt64ForColumn:2];
    if (v7)
    {
      v21 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:v7];
    }

    else
    {
      v21 = 0;
    }

    v8 = [v3 getInt64ForColumn:3];
    if (v8)
    {
      v20 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:v8];
    }

    else
    {
      v20 = 0;
    }

    v9 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v3, "getInt64ForColumn:", 4)}];
    v10 = [v3 getNSDataForColumn:5];
    v11 = decodeSubGenresData(v10);

    v12 = [v3 getInt64ForColumn:6];
    v13 = [v3 getInt64ForColumn:7];
    if ([v3 isColumnNull:7])
    {
      v14 = __atxlog_handle_default();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        __28___ATXDataStore_loadAppInfo__block_invoke_2_cold_1();
      }
    }

    v15 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v3, "getInt64ForColumn:", 8)}];
    if ([v3 isColumnNull:9])
    {
      v16 = 0;
    }

    else
    {
      v16 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v3, "getInt64ForColumn:", 9)}];
    }

    if ([v3 isColumnNull:10])
    {
      v17 = 0;
    }

    else
    {
      v17 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v3, "getInt64ForColumn:", 10)}];
    }

    v18 = [[_ATXAppInfo alloc] initWithBundleId:v4 isExtension:v12 != 0 isEnterpriseApp:v13 != 0 installDate:v23 lastLaunch:v21 lastSpotlightLaunch:v20 averageSecondsBetweenLaunches:v16 medianSecondsBetweenLaunches:v17 genreId:v9 subGenreIds:v11 app2VecCluster:v15];
    [*(v22 + 32) setObject:v18 forKeyedSubscript:v4];

    v6 = *MEMORY[0x277D42690];
  }

  else
  {
    if ([MEMORY[0x277D42590] isInternalBuild])
    {
      [MEMORY[0x277D42578] simulateCrashWithDescription:@"rdar://28434856 Caught appInfo entry with nil bundleId"];
    }

    v6 = *MEMORY[0x277D42698];
  }

  return v6;
}

uint64_t __28___ATXDataStore_loadAppInfo__block_invoke_304(uint64_t a1, uint64_t a2)
{
  [_ATXDataStore _simulateCrashForMigrationFailure:a2];
  [*(a1 + 32) integrityCheckOrAbort];
  return *MEMORY[0x277D42698];
}

uint64_t __34___ATXDataStore_loadAppActionInfo__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 48);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __34___ATXDataStore_loadAppActionInfo__block_invoke_2;
  v5[3] = &unk_27859A368;
  v6 = *(a1 + 40);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __34___ATXDataStore_loadAppActionInfo__block_invoke_3;
  v4[3] = &unk_2785987B8;
  v4[4] = v1;
  return [v2 prepAndRunQuery:@"SELECT appAction onPrep:lastAppActionLaunchDate FROM appActionInfo ORDER BY lastAppActionLaunchDate DESC LIMIT 1" onRow:0 onError:{v5, v4}];
}

uint64_t __34___ATXDataStore_loadAppActionInfo__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 getNSStringForColumn:0];
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  if (*(*(*(a1 + 32) + 8) + 40))
  {
    v7 = [v3 getInt64ForColumn:1];
    if (v7)
    {
      v8 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:v7];
    }

    else
    {
      v8 = 0;
    }

    objc_storeStrong((*(*(a1 + 40) + 8) + 40), v8);
    if (v7)
    {
    }
  }

  else if ([MEMORY[0x277D42590] isInternalBuild])
  {
    [MEMORY[0x277D42578] simulateCrashWithDescription:@"rdar://28434856 Caught appActionInfo entry with nil appAction"];
  }

  v9 = MEMORY[0x277D42698];

  return *v9;
}

uint64_t __34___ATXDataStore_loadAppActionInfo__block_invoke_3(uint64_t a1, uint64_t a2)
{
  [_ATXDataStore _simulateCrashForMigrationFailure:a2];
  [*(a1 + 32) integrityCheckOrAbort];
  return *MEMORY[0x277D42698];
}

void __40___ATXDataStore_lastMessageToRecipient___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 48);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __40___ATXDataStore_lastMessageToRecipient___block_invoke_2;
  v5[3] = &unk_278598768;
  v6 = *(a1 + 40);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __40___ATXDataStore_lastMessageToRecipient___block_invoke_3;
  v4[3] = &unk_278598790;
  v4[4] = *(a1 + 48);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __40___ATXDataStore_lastMessageToRecipient___block_invoke_4;
  v3[3] = &unk_2785987B8;
  v3[4] = *(a1 + 32);
  [v2 prepAndRunQuery:@"SELECT lastDateMessaged FROM messageRecipients WHERE recipientName = :recipient" onPrep:v5 onRow:v4 onError:v3];
}

uint64_t __40___ATXDataStore_lastMessageToRecipient___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 getInt64ForColumn:0];
  v4 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:v3];
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  return *MEMORY[0x277D42698];
}

uint64_t __40___ATXDataStore_lastMessageToRecipient___block_invoke_4(uint64_t a1, uint64_t a2)
{
  [_ATXDataStore _simulateCrashForMigrationFailure:a2];
  [*(a1 + 32) integrityCheckOrAbort];
  return *MEMORY[0x277D42698];
}

void __49___ATXDataStore_loadTopNAppActionsByPredictions___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 48);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __49___ATXDataStore_loadTopNAppActionsByPredictions___block_invoke_2;
  v6[3] = &__block_descriptor_40_e29_v16__0___PASSqliteStatement_8l;
  v6[4] = *(a1 + 48);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __49___ATXDataStore_loadTopNAppActionsByPredictions___block_invoke_3;
  v4[3] = &unk_278599FC8;
  v5 = *(a1 + 40);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __49___ATXDataStore_loadTopNAppActionsByPredictions___block_invoke_4;
  v3[3] = &unk_2785987B8;
  v3[4] = *(a1 + 32);
  [v2 prepAndRunQuery:@"SELECT appAction onPrep:predictionsCount onRow:feedbackCount onError:{uiType FROM predictionFeedbackInfo ORDER BY predictionsCount DESC LIMIT :num_app_actions", v6, v4, v3}];
}

uint64_t __49___ATXDataStore_loadTopNAppActionsByPredictions___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 getNSStringForColumn:0];
  if (v4)
  {
    v5 = [v3 getIntegerForColumn:1];
    v6 = [v3 getIntegerForColumn:2];
    v7 = [v3 getNSStringForColumn:3];
    v8 = objc_alloc(MEMORY[0x277D42648]);
    v9 = [MEMORY[0x277CCABB0] numberWithInteger:v5];
    v10 = [MEMORY[0x277CCABB0] numberWithInteger:v6];
    v11 = [v8 initWithFirst:v9 second:v10];

    v12 = [objc_alloc(MEMORY[0x277D42648]) initWithFirst:v4 second:v7];
    [*(a1 + 32) setObject:v11 forKeyedSubscript:v12];
    v13 = *MEMORY[0x277D42690];
  }

  else
  {
    if ([MEMORY[0x277D42590] isInternalBuild])
    {
      [MEMORY[0x277D42578] simulateCrashWithDescription:@"rdar://28434856 Caught predictionFeedbackInfo entry with nil appAction"];
    }

    v13 = *MEMORY[0x277D42698];
  }

  return v13;
}

uint64_t __49___ATXDataStore_loadTopNAppActionsByPredictions___block_invoke_4(uint64_t a1, uint64_t a2)
{
  [_ATXDataStore _simulateCrashForMigrationFailure:a2];
  [*(a1 + 32) integrityCheckOrAbort];
  return *MEMORY[0x277D42698];
}

void __45___ATXDataStore_loadLaunchesFollowingBundle___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 48);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __45___ATXDataStore_loadLaunchesFollowingBundle___block_invoke_2;
  v8[3] = &unk_278598768;
  v9 = *(a1 + 40);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __45___ATXDataStore_loadLaunchesFollowingBundle___block_invoke_3;
  v6[3] = &unk_27859A268;
  v4 = *(a1 + 40);
  v3 = v4;
  v7 = v4;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __45___ATXDataStore_loadLaunchesFollowingBundle___block_invoke_344;
  v5[3] = &unk_2785987B8;
  v5[4] = *(a1 + 32);
  [v2 prepAndRunQuery:@"SELECT subsequentLaunchCounts FROM appInfo WHERE bundleId = ?" onPrep:v8 onRow:v6 onError:v5];
}

uint64_t __45___ATXDataStore_loadLaunchesFollowingBundle___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 getNSDataForColumn:0];
  if (v4)
  {
    v5 = MEMORY[0x277CBEB98];
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    v8 = [v5 setWithObjects:{v6, v7, objc_opt_class(), 0}];
    v9 = objc_autoreleasePoolPush();
    v17 = 0;
    v10 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClasses:v8 fromData:v4 error:&v17];
    v11 = v17;
    v12 = *(*(a1 + 40) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v10;

    objc_autoreleasePoolPop(v9);
    if (!*(*(*(a1 + 40) + 8) + 40))
    {
      v14 = __atxlog_handle_default();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        __45___ATXDataStore_loadLaunchesFollowingBundle___block_invoke_3_cold_1(a1);
      }
    }
  }

  v15 = MEMORY[0x277D42690];

  return *v15;
}

uint64_t __45___ATXDataStore_loadLaunchesFollowingBundle___block_invoke_344(uint64_t a1, uint64_t a2)
{
  [_ATXDataStore _simulateCrashForMigrationFailure:a2];
  [*(a1 + 32) integrityCheckOrAbort];
  return *MEMORY[0x277D42698];
}

void __48___ATXDataStore_loadAppActionLaunchesFollowing___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) hasSuffix:@"#AppLaunched"];
  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = [v3 substringWithRange:{0, objc_msgSend(*(a1 + 32), "length") - objc_msgSend(@":#AppLaunched", "length")}];
    v5 = @"SELECT subsequentAppActionLaunchCounts FROM appInfo WHERE bundleId = ?";
  }

  else
  {
    v4 = v3;
    v5 = @"SELECT subsequentAppActionLaunchCounts FROM appActionInfo WHERE appAction = ?";
  }

  v6 = *(*(a1 + 40) + 48);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __48___ATXDataStore_loadAppActionLaunchesFollowing___block_invoke_2;
  v13[3] = &unk_278598768;
  v14 = v4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __48___ATXDataStore_loadAppActionLaunchesFollowing___block_invoke_3;
  v10[3] = &unk_27859A268;
  v7 = *(a1 + 48);
  v11 = v14;
  v12 = v7;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __48___ATXDataStore_loadAppActionLaunchesFollowing___block_invoke_357;
  v9[3] = &unk_2785987B8;
  v9[4] = *(a1 + 40);
  v8 = v14;
  [v6 prepAndRunQuery:v5 onPrep:v13 onRow:v10 onError:v9];
}

uint64_t __48___ATXDataStore_loadAppActionLaunchesFollowing___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 getNSDataForColumn:0];
  if (v4)
  {
    v5 = MEMORY[0x277CBEB98];
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    v8 = [v5 setWithObjects:{v6, v7, objc_opt_class(), 0}];
    v9 = objc_autoreleasePoolPush();
    v17 = 0;
    v10 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClasses:v8 fromData:v4 error:&v17];
    v11 = v17;
    v12 = *(*(a1 + 40) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v10;

    objc_autoreleasePoolPop(v9);
    if (!*(*(*(a1 + 40) + 8) + 40))
    {
      v14 = __atxlog_handle_default();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        __45___ATXDataStore_loadLaunchesFollowingBundle___block_invoke_3_cold_1(a1);
      }
    }
  }

  v15 = MEMORY[0x277D42698];

  return *v15;
}

uint64_t __48___ATXDataStore_loadAppActionLaunchesFollowing___block_invoke_357(uint64_t a1, uint64_t a2)
{
  [_ATXDataStore _simulateCrashForMigrationFailure:a2];
  [*(a1 + 32) integrityCheckOrAbort];
  return *MEMORY[0x277D42698];
}

void __47___ATXDataStore_deleteLaunchesFollowingBundle___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 48);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __47___ATXDataStore_deleteLaunchesFollowingBundle___block_invoke_2;
  v5[3] = &unk_278598768;
  v6 = *(a1 + 40);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __47___ATXDataStore_deleteLaunchesFollowingBundle___block_invoke_3;
  v3[3] = &unk_2785987B8;
  v4 = *(a1 + 40);
  [v2 prepAndRunQuery:@"UPDATE appInfo SET subsequentLaunchCounts = NULL WHERE bundleId = ?" onPrep:v5 onRow:0 onError:v3];
}

uint64_t __47___ATXDataStore_deleteLaunchesFollowingBundle___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __atxlog_handle_default();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __47___ATXDataStore_deleteLaunchesFollowingBundle___block_invoke_3_cold_1(a1);
  }

  v5 = MEMORY[0x277D42698];
  return *v5;
}

void __50___ATXDataStore_deleteLaunchesFollowingAppAction___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) hasSuffix:@"#AppLaunched"];
  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = [v3 substringWithRange:{0, objc_msgSend(*(a1 + 32), "length") - objc_msgSend(@":#AppLaunched", "length")}];
    v5 = @"UPDATE appInfo SET subsequentAppActionLaunchCounts = NULL WHERE bundleId = ?";
  }

  else
  {
    v4 = v3;
    v5 = @"UPDATE appActionInfo SET subsequentAppActionLaunchCounts = NULL WHERE appAction = ?";
  }

  v6 = *(*(a1 + 40) + 48);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __50___ATXDataStore_deleteLaunchesFollowingAppAction___block_invoke_2;
  v10[3] = &unk_278598768;
  v11 = v4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __50___ATXDataStore_deleteLaunchesFollowingAppAction___block_invoke_3;
  v8[3] = &unk_2785987B8;
  v9 = *(a1 + 32);
  v7 = v4;
  [v6 prepAndRunQuery:v5 onPrep:v10 onRow:0 onError:v8];
}

uint64_t __50___ATXDataStore_deleteLaunchesFollowingAppAction___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __atxlog_handle_default();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __50___ATXDataStore_deleteLaunchesFollowingAppAction___block_invoke_3_cold_1(a1);
  }

  v5 = MEMORY[0x277D42698];
  return *v5;
}

uint64_t __56___ATXDataStore__enumerateAppInfoBundlesExecutingBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = [v3 getNSStringForColumn:0];
  if (v5)
  {
    (*(*(a1 + 32) + 16))();
  }

  else if ([MEMORY[0x277D42590] isInternalBuild])
  {
    [MEMORY[0x277D42578] simulateCrashWithDescription:@"rdar://28434856 Caught appInfo entry with nil bundleId"];
  }

  objc_autoreleasePoolPop(v4);
  v6 = MEMORY[0x277D42690];

  return *v6;
}

uint64_t __56___ATXDataStore__enumerateAppInfoBundlesExecutingBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __atxlog_handle_default();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __56___ATXDataStore__enumerateAppInfoBundlesExecutingBlock___block_invoke_2_cold_1();
  }

  v4 = MEMORY[0x277D42698];
  return *v4;
}

uint64_t __59___ATXDataStore__enumerateAppInfoAppActionsExecutingBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = [v3 getNSStringForColumn:0];
  if (v5)
  {
    (*(*(a1 + 32) + 16))();
  }

  else if ([MEMORY[0x277D42590] isInternalBuild])
  {
    [MEMORY[0x277D42578] simulateCrashWithDescription:@"rdar://28434856 Caught appInfo entry with nil appAction"];
  }

  objc_autoreleasePoolPop(v4);
  v6 = MEMORY[0x277D42690];

  return *v6;
}

uint64_t __59___ATXDataStore__enumerateAppInfoAppActionsExecutingBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __atxlog_handle_default();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __59___ATXDataStore__enumerateAppInfoAppActionsExecutingBlock___block_invoke_2_cold_1();
  }

  v4 = MEMORY[0x277D42698];
  return *v4;
}

void __48___ATXDataStore_loadAppActionsFromAppActionInfo__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 48);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __48___ATXDataStore_loadAppActionsFromAppActionInfo__block_invoke_2;
  v4[3] = &unk_278599FC8;
  v5 = *(a1 + 40);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __48___ATXDataStore_loadAppActionsFromAppActionInfo__block_invoke_3;
  v3[3] = &unk_2785987B8;
  v3[4] = *(a1 + 32);
  [v2 prepAndRunQuery:@"SELECT appAction FROM appActionInfo" onPrep:0 onRow:v4 onError:v3];
}

uint64_t __48___ATXDataStore_loadAppActionsFromAppActionInfo__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 getNSStringForColumn:0];
  if (v3)
  {
    [*(a1 + 32) addObject:v3];
  }

  v4 = MEMORY[0x277D42690];

  return *v4;
}

uint64_t __48___ATXDataStore_loadAppActionsFromAppActionInfo__block_invoke_3(uint64_t a1, uint64_t a2)
{
  [_ATXDataStore _simulateCrashForMigrationFailure:a2];
  [*(a1 + 32) integrityCheckOrAbort];
  return *MEMORY[0x277D42698];
}

uint64_t __38___ATXDataStore_totalSlotsInDatastore__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 48);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __38___ATXDataStore_totalSlotsInDatastore__block_invoke_2;
  v5[3] = &unk_278598790;
  v5[4] = *(a1 + 40);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __38___ATXDataStore_totalSlotsInDatastore__block_invoke_3;
  v4[3] = &unk_2785987B8;
  v4[4] = v1;
  return [v2 prepAndRunQuery:@"select count(*) from (select distinct l.bundleId onPrep:l.actionType onRow:s.paramHash from slotSetKey as s onError:{alog as l, alogBundleId as b, alogAction as a where l.id=s.alogId and b.id=l.bundleId and a.id=l.actionType)", 0, v5, v4}];
}

uint64_t __38___ATXDataStore_totalSlotsInDatastore__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(a2, "getInt64ForColumn:", 0)}];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return *MEMORY[0x277D42698];
}

uint64_t __38___ATXDataStore_totalSlotsInDatastore__block_invoke_3(uint64_t a1, uint64_t a2)
{
  [_ATXDataStore _simulateCrashForMigrationFailure:a2];
  [*(a1 + 32) integrityCheckOrAbort];
  return *MEMORY[0x277D42698];
}

void __53___ATXDataStore_totalNumberOfActionTypesForBundleId___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 48);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __53___ATXDataStore_totalNumberOfActionTypesForBundleId___block_invoke_2;
  v5[3] = &unk_278598768;
  v6 = *(a1 + 40);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __53___ATXDataStore_totalNumberOfActionTypesForBundleId___block_invoke_3;
  v4[3] = &unk_278598790;
  v4[4] = *(a1 + 48);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __53___ATXDataStore_totalNumberOfActionTypesForBundleId___block_invoke_4;
  v3[3] = &unk_2785987B8;
  v3[4] = *(a1 + 32);
  [v2 prepAndRunQuery:@"SELECT COUNT(DISTINCT l.actionType) FROM alog as l onPrep:alogBundleId as b WHERE b.bundleId = ? AND b.id = l.bundleId" onRow:v5 onError:{v4, v3}];
}

uint64_t __53___ATXDataStore_totalNumberOfActionTypesForBundleId___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(a2, "getInt64ForColumn:", 0)}];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return *MEMORY[0x277D42698];
}

uint64_t __53___ATXDataStore_totalNumberOfActionTypesForBundleId___block_invoke_4(uint64_t a1, uint64_t a2)
{
  [_ATXDataStore _simulateCrashForMigrationFailure:a2];
  [*(a1 + 32) integrityCheckOrAbort];
  return *MEMORY[0x277D42698];
}

void __52___ATXDataStore_actionExistsForBundleId_actionType___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 48);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __52___ATXDataStore_actionExistsForBundleId_actionType___block_invoke_2;
  v5[3] = &unk_278598718;
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __52___ATXDataStore_actionExistsForBundleId_actionType___block_invoke_3;
  v4[3] = &unk_278598790;
  v4[4] = *(a1 + 56);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __52___ATXDataStore_actionExistsForBundleId_actionType___block_invoke_4;
  v3[3] = &unk_2785987B8;
  v3[4] = *(a1 + 32);
  [v2 prepAndRunQuery:@"SELECT 1 FROM alog onPrep:alogBundleId onRow:alogAction WHERE alogBundleId.bundleId = ? AND alogBundleId.id = alog.bundleId AND alogAction.actionType = ? AND alogAction.id = alog.actionType LIMIT 1" onError:{v5, v4, v3}];
}

void __52___ATXDataStore_actionExistsForBundleId_actionType___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 bindParam:1 toNSString:v3];
  [v4 bindParam:2 toNSString:*(a1 + 40)];
}

uint64_t __52___ATXDataStore_actionExistsForBundleId_actionType___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(a2, "getInt64ForColumn:", 0)}];
  *(*(*(a1 + 32) + 8) + 24) = [v3 BOOLValue];

  return *MEMORY[0x277D42698];
}

uint64_t __52___ATXDataStore_actionExistsForBundleId_actionType___block_invoke_4(uint64_t a1, uint64_t a2)
{
  [_ATXDataStore _simulateCrashForMigrationFailure:a2];
  [*(a1 + 32) integrityCheckOrAbort];
  return *MEMORY[0x277D42698];
}

void __36___ATXDataStore_containsActionType___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 48);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __36___ATXDataStore_containsActionType___block_invoke_2;
  v5[3] = &unk_278598768;
  v6 = *(a1 + 40);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __36___ATXDataStore_containsActionType___block_invoke_3;
  v4[3] = &unk_278598790;
  v4[4] = *(a1 + 48);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __36___ATXDataStore_containsActionType___block_invoke_4;
  v3[3] = &unk_2785987B8;
  v3[4] = *(a1 + 32);
  [v2 prepAndRunQuery:@"SELECT id FROM alogAction WHERE actionType = ?" onPrep:v5 onRow:v4 onError:v3];
}

uint64_t __36___ATXDataStore_containsActionType___block_invoke_4(uint64_t a1, uint64_t a2)
{
  [_ATXDataStore _simulateCrashForMigrationFailure:a2];
  [*(a1 + 32) integrityCheckOrAbort];
  return *MEMORY[0x277D42698];
}

void __53___ATXDataStore_lastAppActionLaunchDateForAppAction___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 48);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __53___ATXDataStore_lastAppActionLaunchDateForAppAction___block_invoke_2;
  v5[3] = &unk_278598768;
  v6 = *(a1 + 40);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __53___ATXDataStore_lastAppActionLaunchDateForAppAction___block_invoke_3;
  v4[3] = &unk_278598790;
  v4[4] = *(a1 + 48);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __53___ATXDataStore_lastAppActionLaunchDateForAppAction___block_invoke_4;
  v3[3] = &unk_2785987B8;
  v3[4] = *(a1 + 32);
  [v2 prepAndRunQuery:@"SELECT lastAppActionLaunchDate FROM appActionInfo WHERE appAction = ?" onPrep:v5 onRow:v4 onError:v3];
}

uint64_t __53___ATXDataStore_lastAppActionLaunchDateForAppAction___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([v3 isColumnNull:0] & 1) == 0)
  {
    v4 = [v3 getInt64ForColumn:0];
    v5 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:v4];
    v6 = *(*(a1 + 32) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
  }

  v8 = MEMORY[0x277D42698];

  return *v8;
}

uint64_t __53___ATXDataStore_lastAppActionLaunchDateForAppAction___block_invoke_4(uint64_t a1, uint64_t a2)
{
  [_ATXDataStore _simulateCrashForMigrationFailure:a2];
  [*(a1 + 32) integrityCheckOrAbort];
  return *MEMORY[0x277D42698];
}

void __61___ATXDataStore_averageSecondsBetweenAppActionsForAppAction___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 48);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __61___ATXDataStore_averageSecondsBetweenAppActionsForAppAction___block_invoke_2;
  v5[3] = &unk_278598768;
  v6 = *(a1 + 40);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __61___ATXDataStore_averageSecondsBetweenAppActionsForAppAction___block_invoke_3;
  v4[3] = &unk_278598790;
  v4[4] = *(a1 + 48);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __61___ATXDataStore_averageSecondsBetweenAppActionsForAppAction___block_invoke_4;
  v3[3] = &unk_2785987B8;
  v3[4] = *(a1 + 32);
  [v2 prepAndRunQuery:@"SELECT averageSecondsBetweenAppActions FROM appActionInfo WHERE appAction = ?" onPrep:v5 onRow:v4 onError:v3];
}

uint64_t __61___ATXDataStore_averageSecondsBetweenAppActionsForAppAction___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([v3 isColumnNull:0] & 1) == 0)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v3, "getInt64ForColumn:", 0)}];
    v5 = *(*(a1 + 32) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }

  v7 = MEMORY[0x277D42698];

  return *v7;
}

uint64_t __61___ATXDataStore_averageSecondsBetweenAppActionsForAppAction___block_invoke_4(uint64_t a1, uint64_t a2)
{
  [_ATXDataStore _simulateCrashForMigrationFailure:a2];
  [*(a1 + 32) integrityCheckOrAbort];
  return *MEMORY[0x277D42698];
}

void __60___ATXDataStore_medianSecondsBetweenAppActionsForAppAction___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 48);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __60___ATXDataStore_medianSecondsBetweenAppActionsForAppAction___block_invoke_2;
  v5[3] = &unk_278598768;
  v6 = *(a1 + 40);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __60___ATXDataStore_medianSecondsBetweenAppActionsForAppAction___block_invoke_3;
  v4[3] = &unk_278598790;
  v4[4] = *(a1 + 48);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __60___ATXDataStore_medianSecondsBetweenAppActionsForAppAction___block_invoke_4;
  v3[3] = &unk_2785987B8;
  v3[4] = *(a1 + 32);
  [v2 prepAndRunQuery:@"SELECT medianSecondsBetweenAppActions FROM appActionInfo WHERE appAction = ?" onPrep:v5 onRow:v4 onError:v3];
}

uint64_t __60___ATXDataStore_medianSecondsBetweenAppActionsForAppAction___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([v3 isColumnNull:0] & 1) == 0)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v3, "getInt64ForColumn:", 0)}];
    v5 = *(*(a1 + 32) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }

  v7 = MEMORY[0x277D42698];

  return *v7;
}

uint64_t __60___ATXDataStore_medianSecondsBetweenAppActionsForAppAction___block_invoke_4(uint64_t a1, uint64_t a2)
{
  [_ATXDataStore _simulateCrashForMigrationFailure:a2];
  [*(a1 + 32) integrityCheckOrAbort];
  return *MEMORY[0x277D42698];
}

void __67___ATXDataStore_filenamesAndDataForBackupShouldPareDown_transport___block_invoke(uint64_t a1)
{
  if (([MEMORY[0x277D42630] isInMemoryPath:*(*(a1 + 32) + 16)] & 1) == 0)
  {
    v2 = [*(*(a1 + 32) + 16) lastPathComponent];
    v3 = [@"dataStore_" stringByAppendingString:v2];
    v4 = *(*(a1 + 40) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    v6 = [MEMORY[0x277CEBCB0] appPredictionDirectoryFile:@"tempdb-backup.db"];
    nukeDbFiles(v6);
    v7 = *(*(a1 + 32) + 48);
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __67___ATXDataStore_filenamesAndDataForBackupShouldPareDown_transport___block_invoke_2;
    v25[3] = &unk_278598768;
    v8 = v6;
    v26 = v8;
    [v7 prepAndRunQuery:@"VACUUM INTO :tmp_db_path" onPrep:v25 onRow:0 onError:0];
    v21 = 0;
    v22 = &v21;
    v23 = 0x2020000000;
    v24 = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __67___ATXDataStore_filenamesAndDataForBackupShouldPareDown_transport___block_invoke_3;
    aBlock[3] = &unk_278596C38;
    v9 = v8;
    v19 = v9;
    v20 = &v21;
    v10 = _Block_copy(aBlock);
    v11 = [v9 UTF8String];
    if (sqlite3_open_v2(v11, v22 + 3, 2, 0) || sqlite3_exec(v22[3], "PRAGMA journal_mode=memory", 0, 0, 0) || *(a1 + 56) == 1 && ![_ATXDataStore pareDownForBackup:v22[3]])
    {
      v10[2](v10);
      v12 = 0;
    }

    else
    {
      sqlite3_exec(v22[3], "VACUUM", 0, 0, 0);
      sqlite3_close(v22[3]);
      v22[3] = 0;
      v17 = 0;
      v13 = [objc_alloc(MEMORY[0x277CBEA90]) initWithContentsOfFile:v9 options:1 error:&v17];
      v12 = v17;
      v14 = *(*(a1 + 48) + 8);
      v15 = *(v14 + 40);
      *(v14 + 40) = v13;

      if (*(*(*(a1 + 48) + 8) + 40))
      {
        nukeDbFiles(v9);
      }

      else
      {
        v16 = __atxlog_handle_default();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          __67___ATXDataStore_filenamesAndDataForBackupShouldPareDown_transport___block_invoke_cold_1();
        }

        v10[2](v10);
      }
    }

    _Block_object_dispose(&v21, 8);
  }
}

sqlite3 *__67___ATXDataStore_filenamesAndDataForBackupShouldPareDown_transport___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    nukeDbFiles(v2);
  }

  result = *(*(*(a1 + 40) + 8) + 24);
  if (result)
  {

    return sqlite3_close(result);
  }

  return result;
}

void __89___ATXDataStore_removeSensitiveInformationFromModeEntityScoresFile_shouldBackupContacts___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  v6 = [v5 stableContactIdentifier];
  if (v6)
  {
    v7 = v6;
    v8 = [v5 stableContactIdentifier];
    v9 = [v10 isEqualToString:v8];

    if (v9)
    {
      [v5 setDisplayName:0];
      [v5 setRawIdentifier:0];
      [v5 setCnContactId:0];
      [*(*(*(a1 + 32) + 8) + 40) setObject:v5 forKeyedSubscript:v10];
    }
  }
}

void __35___ATXDataStore_restoreFromBackup___block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v26;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v26 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v25 + 1) + 8 * i);
        if ([v8 hasPrefix:@"dataStore_"])
        {
          if (v5)
          {
            v9 = __atxlog_handle_backup();
            if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
            {
              __35___ATXDataStore_restoreFromBackup___block_invoke_cold_1(&buf, v24, v9);
            }
          }

          else
          {
            v5 = v8;
          }
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v4);

    if (v5)
    {
      v10 = [*(a1 + 32) objectForKeyedSubscript:v5];
      v11 = -[NSObject substringFromIndex:](v5, "substringFromIndex:", [@"dataStore_" length]);
      v12 = [MEMORY[0x277CEBCB0] appPredictionDirectoryFile:v11];
      if (v10 && [_ATXDataStore isSqliteData:v10])
      {
        [*(a1 + 40) _disconnectFromDb];
        v13 = [MEMORY[0x277CCAA00] defaultManager];
        [v13 removeItemAtPath:v12 error:0];

        v14 = [MEMORY[0x277CCAA00] defaultManager];
        v15 = [v12 stringByAppendingString:@"-shm"];
        [v14 removeItemAtPath:v15 error:0];

        v16 = [MEMORY[0x277CCAA00] defaultManager];
        v17 = [v12 stringByAppendingString:@"-wal"];
        [v16 removeItemAtPath:v17 error:0];

        v22 = 0;
        LOBYTE(v17) = [v10 writeToFile:v12 options:1073741825 error:&v22];
        v18 = v22;
        if (v17)
        {
          v19 = 1;
        }

        else
        {
          v20 = __atxlog_handle_backup();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            __35___ATXDataStore_restoreFromBackup___block_invoke_cold_2();
          }

          v19 = 0;
        }

        *(*(*(a1 + 48) + 8) + 24) = v19;
      }

      else
      {
        *(*(*(a1 + 48) + 8) + 24) = 0;
        v18 = __atxlog_handle_backup();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          __35___ATXDataStore_restoreFromBackup___block_invoke_cold_3();
        }
      }

      goto LABEL_29;
    }
  }

  else
  {
  }

  v5 = __atxlog_handle_backup();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __35___ATXDataStore_restoreFromBackup___block_invoke_cold_4();
  }

LABEL_29:

  v21 = *MEMORY[0x277D85DE8];
}

void __55___ATXDataStore_addAppLaunchForAppLaunchSequence_date___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(v3 + 48);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __55___ATXDataStore_addAppLaunchForAppLaunchSequence_date___block_invoke_2;
  v5[3] = &unk_278597828;
  v5[4] = v3;
  v6 = v2;
  v7 = *(a1 + 48);
  [v4 writeTransaction:v5];
}

void __55___ATXDataStore_addAppLaunchForAppLaunchSequence_date___block_invoke_2(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 48);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __55___ATXDataStore_addAppLaunchForAppLaunchSequence_date___block_invoke_3;
  v14[3] = &unk_278598718;
  v15 = *(a1 + 40);
  v16 = *(a1 + 48);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __55___ATXDataStore_addAppLaunchForAppLaunchSequence_date___block_invoke_4;
  v13[3] = &unk_2785987B8;
  v13[4] = *(a1 + 32);
  [v2 prepAndRunQuery:@"INSERT OR REPLACE INTO appLaunchSequence (launchDate onPrep:bundleId) VALUES (:launch_date onRow::bundle_id)" onError:{v14, 0, v13}];
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v3 = *(*(a1 + 32) + 48);
  v7[4] = *(a1 + 32);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __55___ATXDataStore_addAppLaunchForAppLaunchSequence_date___block_invoke_5;
  v8[3] = &unk_278598790;
  v8[4] = &v9;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55___ATXDataStore_addAppLaunchForAppLaunchSequence_date___block_invoke_6;
  v7[3] = &unk_2785987B8;
  [v3 prepAndRunQuery:@"SELECT COUNT(*) FROM appLaunchSequence" onPrep:0 onRow:v8 onError:v7];
  if (v10[3] >= 5)
  {
    v4 = *(*(a1 + 32) + 48);
    v5[4] = *(a1 + 32);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __55___ATXDataStore_addAppLaunchForAppLaunchSequence_date___block_invoke_7;
    v6[3] = &unk_27859C5F0;
    v6[4] = &v9;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __55___ATXDataStore_addAppLaunchForAppLaunchSequence_date___block_invoke_8;
    v5[3] = &unk_2785987B8;
    [v4 prepAndRunQuery:@"DELETE FROM appLaunchSequence WHERE rowid IN (SELECT rowid FROM appLaunchSequence ORDER BY launchDate LIMIT :count - :max_count)" onPrep:v6 onRow:0 onError:v5];
  }

  _Block_object_dispose(&v9, 8);
}

void __55___ATXDataStore_addAppLaunchForAppLaunchSequence_date___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v5 = a2;
  [v3 timeIntervalSinceReferenceDate];
  [v5 bindNamedParam:":launch_date" toInteger:v4];
  [v5 bindNamedParam:":bundle_id" toNSString:*(a1 + 40)];
}

uint64_t __55___ATXDataStore_addAppLaunchForAppLaunchSequence_date___block_invoke_4(uint64_t a1, uint64_t a2)
{
  [_ATXDataStore _simulateCrashForMigrationFailure:a2];
  [*(a1 + 32) integrityCheckOrAbort];
  return *MEMORY[0x277D42698];
}

uint64_t __55___ATXDataStore_addAppLaunchForAppLaunchSequence_date___block_invoke_6(uint64_t a1, uint64_t a2)
{
  [_ATXDataStore _simulateCrashForMigrationFailure:a2];
  [*(a1 + 32) integrityCheckOrAbort];
  return *MEMORY[0x277D42698];
}

void __55___ATXDataStore_addAppLaunchForAppLaunchSequence_date___block_invoke_7(uint64_t a1, void *a2)
{
  v2 = *(*(*(a1 + 32) + 8) + 24);
  v3 = a2;
  [v3 bindNamedParam:":count" toInteger:v2];
  [v3 bindNamedParam:":max_count" toInteger:4];
}

uint64_t __55___ATXDataStore_addAppLaunchForAppLaunchSequence_date___block_invoke_8(uint64_t a1, uint64_t a2)
{
  [_ATXDataStore _simulateCrashForMigrationFailure:a2];
  [*(a1 + 32) integrityCheckOrAbort];
  return *MEMORY[0x277D42698];
}

void __34___ATXDataStore_appLaunchSequence__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 48);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __34___ATXDataStore_appLaunchSequence__block_invoke_2;
  v4[3] = &unk_278596C10;
  v4[4] = v2;
  v5 = v1;
  [v3 writeTransaction:v4];
}

void __34___ATXDataStore_appLaunchSequence__block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEAA8] date];
  [v2 timeIntervalSinceReferenceDate];
  v4 = *(a1 + 32);
  v5 = *(v4 + 48);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __34___ATXDataStore_appLaunchSequence__block_invoke_3;
  v11[3] = &__block_descriptor_40_e29_v16__0___PASSqliteStatement_8l;
  v11[4] = (v3 + -3600.0);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __34___ATXDataStore_appLaunchSequence__block_invoke_4;
  v10[3] = &unk_2785987B8;
  v10[4] = v4;
  [v5 prepAndRunQuery:@"DELETE FROM appLaunchSequence WHERE launchDate <= :cut_off" onPrep:v11 onRow:0 onError:v10];
  v6 = *(*(a1 + 32) + 48);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __34___ATXDataStore_appLaunchSequence__block_invoke_5;
  v8[3] = &unk_278599FC8;
  v9 = *(a1 + 40);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __34___ATXDataStore_appLaunchSequence__block_invoke_6;
  v7[3] = &unk_2785987B8;
  v7[4] = *(a1 + 32);
  [v6 prepAndRunQuery:@"SELECT bundleId FROM appLaunchSequence" onPrep:0 onRow:v8 onError:v7];
}

uint64_t __34___ATXDataStore_appLaunchSequence__block_invoke_4(uint64_t a1, uint64_t a2)
{
  [_ATXDataStore _simulateCrashForMigrationFailure:a2];
  [*(a1 + 32) integrityCheckOrAbort];
  return *MEMORY[0x277D42698];
}

uint64_t __34___ATXDataStore_appLaunchSequence__block_invoke_5(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 getNSStringForColumn:0];
  [v2 addObject:v3];

  return *MEMORY[0x277D42690];
}

uint64_t __34___ATXDataStore_appLaunchSequence__block_invoke_6(uint64_t a1, uint64_t a2)
{
  [_ATXDataStore _simulateCrashForMigrationFailure:a2];
  [*(a1 + 32) integrityCheckOrAbort];
  return *MEMORY[0x277D42698];
}

uint64_t __47___ATXDataStore_histogramDataForHistogramType___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 48);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __47___ATXDataStore_histogramDataForHistogramType___block_invoke_2;
  v9[3] = &__block_descriptor_40_e29_v16__0___PASSqliteStatement_8l;
  v5 = a1 + 40;
  v4 = *(a1 + 40);
  v9[4] = *(v5 + 8);
  v7[4] = v2;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __47___ATXDataStore_histogramDataForHistogramType___block_invoke_3;
  v8[3] = &unk_278598790;
  v8[4] = v4;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47___ATXDataStore_histogramDataForHistogramType___block_invoke_4;
  v7[3] = &unk_2785987B8;
  return [v3 prepAndRunQuery:@"SELECT histogramData FROM histograms WHERE histogramType = ?" onPrep:v9 onRow:v8 onError:v7];
}

uint64_t __47___ATXDataStore_histogramDataForHistogramType___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 getNSDataForColumn:0];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return *MEMORY[0x277D42698];
}

uint64_t __47___ATXDataStore_histogramDataForHistogramType___block_invoke_4(uint64_t a1, uint64_t a2)
{
  [_ATXDataStore _simulateCrashForMigrationFailure:a2];
  [*(a1 + 32) integrityCheckOrAbort];
  return *MEMORY[0x277D42698];
}

uint64_t __58___ATXDataStore_categoricalHistogramDataForHistogramType___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 48);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __58___ATXDataStore_categoricalHistogramDataForHistogramType___block_invoke_2;
  v9[3] = &__block_descriptor_40_e29_v16__0___PASSqliteStatement_8l;
  v5 = a1 + 40;
  v4 = *(a1 + 40);
  v9[4] = *(v5 + 8);
  v7[4] = v2;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __58___ATXDataStore_categoricalHistogramDataForHistogramType___block_invoke_3;
  v8[3] = &unk_278598790;
  v8[4] = v4;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58___ATXDataStore_categoricalHistogramDataForHistogramType___block_invoke_4;
  v7[3] = &unk_2785987B8;
  return [v3 prepAndRunQuery:@"SELECT histogramData FROM categoricalHistograms WHERE histogramType = ?" onPrep:v9 onRow:v8 onError:v7];
}

uint64_t __58___ATXDataStore_categoricalHistogramDataForHistogramType___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 getNSDataForColumn:0];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return *MEMORY[0x277D42698];
}

uint64_t __58___ATXDataStore_categoricalHistogramDataForHistogramType___block_invoke_4(uint64_t a1, uint64_t a2)
{
  [_ATXDataStore _simulateCrashForMigrationFailure:a2];
  [*(a1 + 32) integrityCheckOrAbort];
  return *MEMORY[0x277D42698];
}

uint64_t __28___ATXDataStore_blobOfType___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 48);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __28___ATXDataStore_blobOfType___block_invoke_2;
  v9[3] = &__block_descriptor_40_e29_v16__0___PASSqliteStatement_8l;
  v5 = a1 + 40;
  v4 = *(a1 + 40);
  v9[4] = *(v5 + 8);
  v7[4] = v2;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __28___ATXDataStore_blobOfType___block_invoke_3;
  v8[3] = &unk_278598790;
  v8[4] = v4;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __28___ATXDataStore_blobOfType___block_invoke_4;
  v7[3] = &unk_2785987B8;
  return [v3 prepAndRunQuery:@"SELECT data FROM blobs WHERE blobType = ? AND (expirationDate IS NULL OR expirationDate > ?)" onPrep:v9 onRow:v8 onError:v7];
}

void __28___ATXDataStore_blobOfType___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4 = a2;
  [v4 bindParam:1 toInteger:v2];
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  [v4 bindParam:2 toInt64:v3];
}

uint64_t __28___ATXDataStore_blobOfType___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 getNSDataForColumn:0];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return *MEMORY[0x277D42698];
}

uint64_t __28___ATXDataStore_blobOfType___block_invoke_4(uint64_t a1, uint64_t a2)
{
  [_ATXDataStore _simulateCrashForMigrationFailure:a2];
  [*(a1 + 32) integrityCheckOrAbort];
  return *MEMORY[0x277D42698];
}

void __47___ATXDataStore_writeBlob_type_expirationDate___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 48);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __47___ATXDataStore_writeBlob_type_expirationDate___block_invoke_2;
  v4[3] = &unk_27859A0D8;
  v7 = *(a1 + 56);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __47___ATXDataStore_writeBlob_type_expirationDate___block_invoke_3;
  v3[3] = &unk_2785987B8;
  v3[4] = *(a1 + 32);
  [v2 prepAndRunQuery:@"INSERT OR REPLACE INTO blobs (blobType onPrep:data onRow:expirationDate) VALUES (? onError:{?, ?)", v4, 0, v3}];
}

void __47___ATXDataStore_writeBlob_type_expirationDate___block_invoke_2(void *a1, void *a2)
{
  v5 = a2;
  [v5 bindParam:1 toInteger:a1[6]];
  if (a1[4])
  {
    [v5 bindParam:2 toNSData:?];
  }

  else
  {
    [v5 bindParamToNull:2];
  }

  v3 = a1[5];
  if (v3)
  {
    [v3 timeIntervalSinceReferenceDate];
    [v5 bindParam:3 toInt64:v4];
  }

  else
  {
    [v5 bindParamToNull:3];
  }
}

uint64_t __47___ATXDataStore_writeBlob_type_expirationDate___block_invoke_3(uint64_t a1, uint64_t a2)
{
  [_ATXDataStore _simulateCrashForMigrationFailure:a2];
  [*(a1 + 32) integrityCheckOrAbort];
  return *MEMORY[0x277D42698];
}

void __40___ATXDataStore_alogContainsActionUUID___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 48);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __40___ATXDataStore_alogContainsActionUUID___block_invoke_2;
  v4[3] = &unk_278598768;
  v5 = *(a1 + 40);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __40___ATXDataStore_alogContainsActionUUID___block_invoke_3;
  v3[3] = &unk_278598790;
  v3[4] = *(a1 + 48);
  [v2 prepAndRunQuery:@"SELECT id FROM alog WHERE actionUUID=? LIMIT 1" onPrep:v4 onRow:v3 onError:&__block_literal_global_474_0];
}

uint64_t __40___ATXDataStore_alogContainsActionUUID___block_invoke_2(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = a2;
  [v2 getUUIDBytes:v7];
  v4 = [v3 stmt];

  result = sqlite3_bind_blob(v4, 1, v7, 16, 0xFFFFFFFFFFFFFFFFLL);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __40___ATXDataStore_alogContainsActionUUID___block_invoke_4(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x277D42578];
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error while trying to retrieve action from alog: %@", a2];
  [v2 simulateCrashWithDescription:v3];

  return *MEMORY[0x277D42698];
}

void __191___ATXDataStore_writeActionType_bundleId_date_action_slotSets_timeZone_prevLocationUUID_locationUUID_weight_actionUUID_motionType_appSessionStartDate_appSessionEndDate_geohash_coarseGeohash___block_invoke(uint64_t a1)
{
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __191___ATXDataStore_writeActionType_bundleId_date_action_slotSets_timeZone_prevLocationUUID_locationUUID_weight_actionUUID_motionType_appSessionStartDate_appSessionEndDate_geohash_coarseGeohash___block_invoke_2;
  v14[3] = &unk_27859C690;
  v13 = *(a1 + 32);
  v2 = *(v13 + 48);
  v3 = *(&v13 + 1);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  *&v6 = v4;
  *(&v6 + 1) = v5;
  v15 = v13;
  v16 = v6;
  v7 = *(a1 + 64);
  v22 = *(a1 + 120);
  v8 = *(a1 + 72);
  v9 = *(a1 + 80);
  v23 = *(a1 + 136);
  v10 = *(a1 + 88);
  *&v11 = v9;
  *(&v11 + 1) = v10;
  *&v12 = v7;
  *(&v12 + 1) = v8;
  v17 = v12;
  v18 = v11;
  v24 = *(a1 + 144);
  v19 = *(a1 + 96);
  v20 = *(a1 + 104);
  v25 = *(a1 + 152);
  v21 = *(a1 + 112);
  [v2 writeTransaction:v14];
}

void __191___ATXDataStore_writeActionType_bundleId_date_action_slotSets_timeZone_prevLocationUUID_locationUUID_weight_actionUUID_motionType_appSessionStartDate_appSessionEndDate_geohash_coarseGeohash___block_invoke_2(uint64_t a1)
{
  v49[0] = 0;
  v49[1] = v49;
  v49[2] = 0x2020000000;
  v49[3] = 0;
  v48[0] = 0;
  v48[1] = v48;
  v48[2] = 0x2020000000;
  v48[3] = 0;
  v2 = *(*(a1 + 32) + 48);
  v46[0] = MEMORY[0x277D85DD0];
  v46[1] = 3221225472;
  v46[2] = __191___ATXDataStore_writeActionType_bundleId_date_action_slotSets_timeZone_prevLocationUUID_locationUUID_weight_actionUUID_motionType_appSessionStartDate_appSessionEndDate_geohash_coarseGeohash___block_invoke_3;
  v46[3] = &unk_278598768;
  v47 = *(a1 + 40);
  [v2 prepAndRunQuery:@"INSERT OR IGNORE INTO alogBundleId (bundleId) VALUES (?)" onPrep:v46 onRow:0 onError:0];
  v3 = *(*(a1 + 32) + 48);
  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = __191___ATXDataStore_writeActionType_bundleId_date_action_slotSets_timeZone_prevLocationUUID_locationUUID_weight_actionUUID_motionType_appSessionStartDate_appSessionEndDate_geohash_coarseGeohash___block_invoke_4;
  v44[3] = &unk_278598768;
  v45 = *(a1 + 48);
  [v3 prepAndRunQuery:@"INSERT OR IGNORE INTO alogAction (actionType) VALUES (?)" onPrep:v44 onRow:0 onError:0];
  v4 = *(*(a1 + 32) + 48);
  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = __191___ATXDataStore_writeActionType_bundleId_date_action_slotSets_timeZone_prevLocationUUID_locationUUID_weight_actionUUID_motionType_appSessionStartDate_appSessionEndDate_geohash_coarseGeohash___block_invoke_5;
  v42[3] = &unk_278598768;
  v43 = *(a1 + 40);
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = __191___ATXDataStore_writeActionType_bundleId_date_action_slotSets_timeZone_prevLocationUUID_locationUUID_weight_actionUUID_motionType_appSessionStartDate_appSessionEndDate_geohash_coarseGeohash___block_invoke_6;
  v41[3] = &unk_278598790;
  v41[4] = v49;
  [v4 prepAndRunQuery:@"SELECT id FROM alogBundleId WHERE bundleId=?" onPrep:v42 onRow:v41 onError:0];
  v5 = *(*(a1 + 32) + 48);
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __191___ATXDataStore_writeActionType_bundleId_date_action_slotSets_timeZone_prevLocationUUID_locationUUID_weight_actionUUID_motionType_appSessionStartDate_appSessionEndDate_geohash_coarseGeohash___block_invoke_7;
  v39[3] = &unk_278598768;
  v40 = *(a1 + 48);
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __191___ATXDataStore_writeActionType_bundleId_date_action_slotSets_timeZone_prevLocationUUID_locationUUID_weight_actionUUID_motionType_appSessionStartDate_appSessionEndDate_geohash_coarseGeohash___block_invoke_8;
  v38[3] = &unk_278598790;
  v38[4] = v48;
  [v5 prepAndRunQuery:@"SELECT id FROM alogAction WHERE actionType=?" onPrep:v39 onRow:v38 onError:0];
  v6 = *(*(a1 + 32) + 48);
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __191___ATXDataStore_writeActionType_bundleId_date_action_slotSets_timeZone_prevLocationUUID_locationUUID_weight_actionUUID_motionType_appSessionStartDate_appSessionEndDate_geohash_coarseGeohash___block_invoke_9;
  v26[3] = &unk_27859C618;
  v32 = v49;
  v33 = v48;
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  v34 = *(a1 + 120);
  v9 = *(a1 + 72);
  v10 = *(a1 + 80);
  *&v11 = v9;
  *(&v11 + 1) = v10;
  *&v12 = v7;
  *(&v12 + 1) = v8;
  v27 = v12;
  v28 = v11;
  v35 = *(a1 + 136);
  v13 = *(a1 + 88);
  v14 = *(a1 + 144);
  v29 = v13;
  v36 = v14;
  v30 = *(a1 + 96);
  v31 = *(a1 + 104);
  v37 = *(a1 + 152);
  [v6 prepAndRunQuery:@"INSERT OR IGNORE INTO alog (bundleId onPrep:actionType onRow:slots onError:{date, timeOfDay, dayOfWeek, prevLocation, location, weight, actionUUID, motionType, appSessionStartDate, appSessionEndDate, creationDateInMilliseconds, geoHash, coarseGeohash) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)", v26, 0, 0}];
  v25[0] = 0;
  v25[1] = v25;
  v25[2] = 0x2020000000;
  v25[3] = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v15 = *(*(a1 + 32) + 48);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __191___ATXDataStore_writeActionType_bundleId_date_action_slotSets_timeZone_prevLocationUUID_locationUUID_weight_actionUUID_motionType_appSessionStartDate_appSessionEndDate_geohash_coarseGeohash___block_invoke_10;
  v19[3] = &unk_278598768;
  v20 = *(a1 + 88);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __191___ATXDataStore_writeActionType_bundleId_date_action_slotSets_timeZone_prevLocationUUID_locationUUID_weight_actionUUID_motionType_appSessionStartDate_appSessionEndDate_geohash_coarseGeohash___block_invoke_11;
  v18[3] = &unk_27859A368;
  v18[4] = &v21;
  v18[5] = v25;
  [v15 prepAndRunQuery:@"SELECT id onPrep:MAX(creationDateInMilliseconds) FROM alog WHERE actionUUID=?" onRow:v19 onError:{v18, &__block_literal_global_519}];
  if (*(v22 + 24) == 1)
  {
    v16 = *(a1 + 112);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __191___ATXDataStore_writeActionType_bundleId_date_action_slotSets_timeZone_prevLocationUUID_locationUUID_weight_actionUUID_motionType_appSessionStartDate_appSessionEndDate_geohash_coarseGeohash___block_invoke_520;
    v17[3] = &unk_27859C668;
    v17[4] = *(a1 + 32);
    v17[5] = v25;
    [v16 enumerateKeysAndObjectsUsingBlock:v17];
  }

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(v25, 8);

  _Block_object_dispose(v48, 8);
  _Block_object_dispose(v49, 8);
}

void __191___ATXDataStore_writeActionType_bundleId_date_action_slotSets_timeZone_prevLocationUUID_locationUUID_weight_actionUUID_motionType_appSessionStartDate_appSessionEndDate_geohash_coarseGeohash___block_invoke_9(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  [v3 bindParam:1 toInt64:*(*(*(a1 + 88) + 8) + 24)];
  [v3 bindParam:2 toInt64:*(*(*(a1 + 96) + 8) + 24)];
  [v3 bindParam:3 toNSData:*(a1 + 32)];
  [*(a1 + 40) timeIntervalSinceReferenceDate];
  [v3 bindParam:4 toInt64:v4];
  [v3 bindParam:5 toInteger:*(a1 + 104)];
  [v3 bindParam:6 toInteger:*(a1 + 112)];
  v5 = *(a1 + 48);
  if (v5)
  {
    [v5 getUUIDBytes:v13];
    sqlite3_bind_blob([v3 stmt], 7, v13, 16, 0xFFFFFFFFFFFFFFFFLL);
  }

  else
  {
    [v3 bindParamToNull:7];
  }

  v6 = *(a1 + 56);
  if (v6)
  {
    [v6 getUUIDBytes:v13];
    sqlite3_bind_blob([v3 stmt], 8, v13, 16, 0xFFFFFFFFFFFFFFFFLL);
  }

  else
  {
    [v3 bindParamToNull:8];
  }

  [v3 bindParam:9 toDouble:*(a1 + 120)];
  [*(a1 + 64) getUUIDBytes:v13];
  sqlite3_bind_blob([v3 stmt], 10, v13, 16, 0xFFFFFFFFFFFFFFFFLL);
  [v3 bindParam:11 toInteger:*(a1 + 128)];
  v7 = *(a1 + 72);
  if (v7)
  {
    [v7 timeIntervalSinceReferenceDate];
    [v3 bindParam:12 toInt64:v8];
  }

  else
  {
    [v3 bindParamToNull:12];
  }

  v9 = *(a1 + 80);
  if (v9)
  {
    [v9 timeIntervalSinceReferenceDate];
    [v3 bindParam:13 toInt64:v10];
  }

  else
  {
    [v3 bindParamToNull:13];
  }

  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  [v3 bindParam:14 toInt64:(v11 * 1000.0)];
  [v3 bindParam:15 toInt64:*(a1 + 136)];
  [v3 bindParam:16 toInt64:*(a1 + 144)];

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t __191___ATXDataStore_writeActionType_bundleId_date_action_slotSets_timeZone_prevLocationUUID_locationUUID_weight_actionUUID_motionType_appSessionStartDate_appSessionEndDate_geohash_coarseGeohash___block_invoke_10(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = a2;
  [v2 getUUIDBytes:v7];
  v4 = [v3 stmt];

  result = sqlite3_bind_blob(v4, 1, v7, 16, 0xFFFFFFFFFFFFFFFFLL);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __191___ATXDataStore_writeActionType_bundleId_date_action_slotSets_timeZone_prevLocationUUID_locationUUID_weight_actionUUID_motionType_appSessionStartDate_appSessionEndDate_geohash_coarseGeohash___block_invoke_11(uint64_t a1, void *a2)
{
  *(*(*(a1 + 32) + 8) + 24) = 1;
  *(*(*(a1 + 40) + 8) + 24) = [a2 getInt64ForColumn:0];
  return *MEMORY[0x277D42698];
}

uint64_t __191___ATXDataStore_writeActionType_bundleId_date_action_slotSets_timeZone_prevLocationUUID_locationUUID_weight_actionUUID_motionType_appSessionStartDate_appSessionEndDate_geohash_coarseGeohash___block_invoke_12(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __atxlog_handle_default();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __191___ATXDataStore_writeActionType_bundleId_date_action_slotSets_timeZone_prevLocationUUID_locationUUID_weight_actionUUID_motionType_appSessionStartDate_appSessionEndDate_geohash_coarseGeohash___block_invoke_12_cold_1();
  }

  v4 = MEMORY[0x277D42578];
  v5 = [v2 description];
  [v4 simulateCrashWithDescription:v5];

  v6 = MEMORY[0x277D42698];
  return *v6;
}

void __191___ATXDataStore_writeActionType_bundleId_date_action_slotSets_timeZone_prevLocationUUID_locationUUID_weight_actionUUID_motionType_appSessionStartDate_appSessionEndDate_geohash_coarseGeohash___block_invoke_520(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 48);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __191___ATXDataStore_writeActionType_bundleId_date_action_slotSets_timeZone_prevLocationUUID_locationUUID_weight_actionUUID_motionType_appSessionStartDate_appSessionEndDate_geohash_coarseGeohash___block_invoke_2_524;
  v11[3] = &unk_27859C640;
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  [v7 prepAndRunQuery:@"INSERT OR IGNORE INTO slotSetKey (alogId onPrep:uuid onRow:paramHash onError:{slotHash, paramCount) VALUES (?, ?, ?, ?, ?)", v11, 0, 0}];
}

void __191___ATXDataStore_writeActionType_bundleId_date_action_slotSets_timeZone_prevLocationUUID_locationUUID_weight_actionUUID_motionType_appSessionStartDate_appSessionEndDate_geohash_coarseGeohash___block_invoke_2_524(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a2;
  [v3 bindParam:1 toInt64:*(*(*(a1 + 48) + 8) + 24)];
  [*(a1 + 32) getUUIDBytes:v7];
  sqlite3_bind_blob([v3 stmt], 2, v7, 16, 0xFFFFFFFFFFFFFFFFLL);
  [v3 bindParam:3 toInt64:{objc_msgSend(*(a1 + 40), "hash")}];
  [v3 bindParam:4 toInt64:{objc_msgSend(*(a1 + 40), "slotHash")}];
  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = [v4 paramCount];
  }

  else
  {
    v5 = 0;
  }

  [v3 bindParam:5 toInt64:v5];

  v6 = *MEMORY[0x277D85DE8];
}

uint64_t __64___ATXDataStore__deserializeActionLogRowWithStmt_invokingBlock___block_invoke(uint64_t a1)
{
  v2 = __atxlog_handle_deletions();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __64___ATXDataStore__deserializeActionLogRowWithStmt_invokingBlock___block_invoke_cold_1(a1);
  }

  v3 = MEMORY[0x277D42578];
  v4 = [*(a1 + 40) description];
  [v3 simulateCrashWithDescription:v4];

  v5 = *(*(a1 + 48) + 48);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __64___ATXDataStore__deserializeActionLogRowWithStmt_invokingBlock___block_invoke_529;
  v9[3] = &__block_descriptor_40_e29_v16__0___PASSqliteStatement_8l;
  v9[4] = *(a1 + 56);
  [v5 prepAndRunQuery:@"DELETE FROM alog WHERE id=?" onPrep:v9 onRow:0 onError:0];
  v6 = *(*(a1 + 48) + 48);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __64___ATXDataStore__deserializeActionLogRowWithStmt_invokingBlock___block_invoke_2;
  v8[3] = &__block_descriptor_40_e29_v16__0___PASSqliteStatement_8l;
  v8[4] = *(a1 + 56);
  [v6 prepAndRunQuery:@"DELETE FROM slotSetKey WHERE alogId=?" onPrep:v8 onRow:0 onError:0];
  return xpc_transaction_exit_clean();
}

void __54___ATXDataStore_enumerateActionOfType_bundleId_block___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 48);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54___ATXDataStore_enumerateActionOfType_bundleId_block___block_invoke_2;
  v7[3] = &unk_278599DB8;
  v8 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 32);
  v9 = v3;
  v10 = v4;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __54___ATXDataStore_enumerateActionOfType_bundleId_block___block_invoke_3;
  v5[3] = &unk_27859C6E0;
  v5[4] = v4;
  v6 = *(a1 + 56);
  [v2 prepAndRunQuery:@"SELECT i.actionType onPrep:l.slots onRow:l.date onError:{l.timeOfDay, l.dayOfWeek, l.prevLocation, l.location, l.motionType, l.appSessionStartDate, l.appSessionEndDate, l.geohash, l.coarseGeohash, l.weight, l.id FROM alog AS l, alogBundleId AS b, alogAction AS i WHERE b.id = l.bundleId AND i.id = l.actionType AND b.bundleId = ? AND i.actionType = ? ORDER BY l.rowid DESC LIMIT ?", v7, v5, 0}];
}

void __54___ATXDataStore_enumerateActionOfType_bundleId_block___block_invoke_2(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  [v4 bindParam:1 toNSString:v3];
  [v4 bindParam:2 toNSString:a1[5]];
  [v4 bindParam:3 toInteger:*(a1[6] + 56)];
}

uint64_t __54___ATXDataStore_enumerateActionOfType_bundleId_block___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __54___ATXDataStore_enumerateActionOfType_bundleId_block___block_invoke_4;
  v6[3] = &unk_27859C6B8;
  v3 = *(a1 + 32);
  v7 = *(a1 + 40);
  v4 = [v3 _deserializeActionLogRowWithStmt:a2 invokingBlock:v6];

  return v4;
}

void __57___ATXDataStore_enumerateSlotUuidsOfType_bundleId_block___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 48);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __57___ATXDataStore_enumerateSlotUuidsOfType_bundleId_block___block_invoke_2;
  v16[3] = &unk_278599DB8;
  v17 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 32);
  v18 = v3;
  v19 = v4;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __57___ATXDataStore_enumerateSlotUuidsOfType_bundleId_block___block_invoke_3;
  v7[3] = &unk_27859C708;
  v10 = *(a1 + 72);
  v11 = *(a1 + 88);
  v12 = *(a1 + 104);
  v13 = *(a1 + 120);
  v14 = *(a1 + 136);
  v15 = *(a1 + 152);
  v6 = *(a1 + 56);
  v5 = v6;
  v9 = v6;
  v8 = *(a1 + 48);
  [v2 prepAndRunQuery:@"SELECT s.uuid onPrep:l.id onRow:i.actionType onError:{l.date, l.timeOfDay, l.dayOfWeek, l.prevLocation, l.location, l.motionType, l.weight, s.paramHash, s.slotHash, s.paramCount, l.appSessionStartDate, l.appSessionEndDate, l.geohash, l.coarseGeohash FROM alog AS l, slotSetKey AS s, alogBundleId AS b, alogAction AS i WHERE b.id = l.bundleId AND i.id = l.actionType AND b.bundleId = ? AND l.id = s.alogId AND i.actionType = ? ORDER BY l.rowid DESC LIMIT ?", v16, v7, 0}];
}

void __57___ATXDataStore_enumerateSlotUuidsOfType_bundleId_block___block_invoke_2(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  [v4 bindParam:1 toNSString:v3];
  [v4 bindParam:2 toNSString:a1[5]];
  [v4 bindParam:3 toInteger:*(a1[6] + 56)];
}

uint64_t __57___ATXDataStore_enumerateSlotUuidsOfType_bundleId_block___block_invoke_3(void *a1, void *a2)
{
  v3 = a2;
  v4 = [v3 getNSDataForColumn:0];
  v5 = [v3 getInt64ForColumn:1];
  [v3 getInt64ForColumn:10];
  [v3 getInt64ForColumn:11];
  [v3 getInt64ForColumn:12];
  v6 = *(a1[6] + 8);
  if (*(v6 + 24) != v5)
  {
    v7 = [v3 getNSStringForColumn:2];
    v8 = *(a1[7] + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    v10 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceReferenceDate:{objc_msgSend(v3, "getInt64ForColumn:", 3)}];
    v11 = *(a1[8] + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;

    *(*(a1[9] + 8) + 24) = [v3 getIntegerForColumn:4];
    *(*(a1[10] + 8) + 24) = [v3 getIntegerForColumn:5];
    v13 = [v3 getNSDataForColumn:6];
    if ([v13 length] == 16)
    {
      v14 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:{objc_msgSend(v13, "bytes")}];
    }

    else
    {
      v14 = 0;
    }

    v15 = *(a1[11] + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;

    v17 = [v3 getNSDataForColumn:7];
    if ([v17 length] == 16)
    {
      v18 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:{objc_msgSend(v17, "bytes")}];
    }

    else
    {
      v18 = 0;
    }

    v19 = *(a1[12] + 8);
    v20 = *(v19 + 40);
    *(v19 + 40) = v18;

    *(*(a1[13] + 8) + 24) = [v3 getIntegerForColumn:8];
    [v3 getDoubleForColumn:9];
    *(*(a1[14] + 8) + 24) = v21;
    if (([v3 isColumnNull:13] & 1) == 0)
    {
      v22 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceReferenceDate:{objc_msgSend(v3, "getInt64ForColumn:", 13)}];
      v23 = *(a1[15] + 8);
      v24 = *(v23 + 40);
      *(v23 + 40) = v22;
    }

    if (([v3 isColumnNull:14] & 1) == 0)
    {
      v25 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceReferenceDate:{objc_msgSend(v3, "getInt64ForColumn:", 14)}];
      v26 = *(a1[16] + 8);
      v27 = *(v26 + 40);
      *(v26 + 40) = v25;
    }

    *(*(a1[17] + 8) + 24) = [v3 getInt64ForColumn:15];
    *(*(a1[18] + 8) + 24) = [v3 getInt64ForColumn:16];

    v6 = *(a1[6] + 8);
  }

  *(v6 + 24) = v5;
  if ([v4 length] == 16)
  {
    v28 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:{objc_msgSend(v4, "bytes")}];
    v29 = objc_autoreleasePoolPush();
    v30 = a1[4];
    v31 = *(*(a1[8] + 8) + 40);
    v42 = *(*(a1[17] + 8) + 24);
    v43 = *(*(a1[18] + 8) + 24);
    v40 = *(*(a1[15] + 8) + 40);
    v41 = *(*(a1[16] + 8) + 40);
    v38 = *(*(a1[12] + 8) + 40);
    v39 = *(*(a1[13] + 8) + 24);
    v36 = *(*(a1[10] + 8) + 24);
    v37 = *(*(a1[11] + 8) + 40);
    v35 = *(*(a1[9] + 8) + 24);
    v32 = (*(a1[5] + 16))(*(*(a1[14] + 8) + 24));
    objc_autoreleasePoolPop(v29);
    if (v32)
    {
      v33 = MEMORY[0x277D42690];
    }

    else
    {
      v33 = MEMORY[0x277D42698];
    }
  }

  else
  {
    v28 = __atxlog_handle_default();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      __57___ATXDataStore_enumerateSlotUuidsOfType_bundleId_block___block_invoke_3_cold_1();
    }

    v33 = MEMORY[0x277D42690];
  }

  return *v33;
}

void __49___ATXDataStore_enumerateActionsInUUIDSet_block___block_invoke(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x277CCACA8]);
  [*(a1 + 32) count];
  v3 = _PASQMarksSeparatedByCommas();
  v4 = [v2 initWithFormat:@"SELECT i.actionType, l.slots, l.date, l.timeOfDay, l.dayOfWeek, l.prevLocation, l.location, l.motionType, l.appSessionStartDate, l.appSessionEndDate, l.geohash, l.coarseGeohash, l.weight, l.id FROM alog AS l, alogAction AS i WHERE actionUUID IN (%@) AND i.id = l.actionType", v3];

  v5 = *(*(a1 + 40) + 48);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __49___ATXDataStore_enumerateActionsInUUIDSet_block___block_invoke_2;
  v9[3] = &unk_278598768;
  v10 = *(a1 + 32);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __49___ATXDataStore_enumerateActionsInUUIDSet_block___block_invoke_3;
  v7[3] = &unk_27859C6E0;
  v6 = *(a1 + 48);
  v7[4] = *(a1 + 40);
  v8 = v6;
  [v5 prepAndRunQuery:v4 onPrep:v9 onRow:v7 onError:0];
}

void __49___ATXDataStore_enumerateActionsInUUIDSet_block___block_invoke_2(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([*(a1 + 32) count])
  {
    v4 = 0;
    do
    {
      v5 = [*(a1 + 32) objectAtIndexedSubscript:v4];
      [v5 getUUIDBytes:v7];

      sqlite3_bind_blob([v3 stmt], ++v4, v7, 16, 0xFFFFFFFFFFFFFFFFLL);
    }

    while (v4 < [*(a1 + 32) count]);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __71___ATXDataStore_appIntentDuetEventsForActionsBetweenStartDate_endDate___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 48);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __71___ATXDataStore_appIntentDuetEventsForActionsBetweenStartDate_endDate___block_invoke_2;
  v5[3] = &unk_278598718;
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __71___ATXDataStore_appIntentDuetEventsForActionsBetweenStartDate_endDate___block_invoke_3;
  v3[3] = &unk_278599FC8;
  v4 = *(a1 + 56);
  [v2 prepAndRunQuery:@"SELECT alog.id onPrep:alogBundleId.bundleId onRow:alogAction.actionType onError:{alog.date, slotSetKey.uuid, slotSetKey.paramHash, slotSetKey.slotHash, slotSetKey.paramCount FROM alog INNER JOIN alogBundleId ON alog.bundleId = alogBundleId.id INNER JOIN alogAction ON alog.actionType = alogAction.id INNER JOIN slotSetKey on alog.id = slotSetKey.alogId WHERE alog.date > ? AND alog.date < ?", v5, v3, 0}];
}

void __71___ATXDataStore_appIntentDuetEventsForActionsBetweenStartDate_endDate___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v6 = a2;
  [v3 timeIntervalSinceReferenceDate];
  [v6 bindParam:1 toInt64:v4];
  [*(a1 + 40) timeIntervalSinceReferenceDate];
  [v6 bindParam:2 toInt64:v5];
}

uint64_t __71___ATXDataStore_appIntentDuetEventsForActionsBetweenStartDate_endDate___block_invoke_3(uint64_t a1, void *a2)
{
  v23[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (([v3 isColumnNull:0] & 1) != 0 || (objc_msgSend(v3, "isColumnNull:", 1) & 1) != 0 || (objc_msgSend(v3, "isColumnNull:", 2) & 1) != 0 || (objc_msgSend(v3, "isColumnNull:", 4) & 1) != 0 || (objc_msgSend(v3, "isColumnNull:", 5) & 1) != 0 || (objc_msgSend(v3, "isColumnNull:", 6) & 1) != 0 || objc_msgSend(v3, "isColumnNull:", 7))
  {
    v4 = *MEMORY[0x277D42690];
  }

  else
  {
    v19 = [v3 getInt64ForColumn:0];
    v21 = [v3 getNSStringForColumn:1];
    v20 = [v3 getNSStringForColumn:2];
    v7 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:{objc_msgSend(v3, "getInt64ForColumn:", 3)}];
    v8 = [v3 getInt64ForColumn:5];
    v9 = [v3 getInt64ForColumn:6];
    v10 = [v3 getInt64ForColumn:7];
    v11 = [ATXAppIntentDuetEvent alloc];
    v12 = [MEMORY[0x277CCABB0] numberWithLongLong:v8];
    v23[0] = v12;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:1];
    v14 = [MEMORY[0x277CCABB0] numberWithLongLong:v9];
    v22 = v14;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v22 count:1];
    v16 = [MEMORY[0x277CCABB0] numberWithLongLong:v10];
    v17 = [MEMORY[0x277CCABB0] numberWithLongLong:v19];
    v18 = [(ATXAppIntentDuetEvent *)v11 initWithBundleId:v21 actionType:v20 parameterHashes:v13 slotSetHashes:v15 paramCount:v16 startDate:v7 endDate:v7 alogId:v17];

    if (v18)
    {
      [*(a1 + 32) addObject:v18];
    }

    v4 = *MEMORY[0x277D42690];
  }

  v5 = *MEMORY[0x277D85DE8];
  return v4;
}

void __81___ATXDataStore_minimalActionParametersforActionsBetweenStartDate_endDate_limit___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 48);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __81___ATXDataStore_minimalActionParametersforActionsBetweenStartDate_endDate_limit___block_invoke_2;
  v7[3] = &unk_27859A0D8;
  v8 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 64);
  v9 = v3;
  v10 = v4;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __81___ATXDataStore_minimalActionParametersforActionsBetweenStartDate_endDate_limit___block_invoke_3;
  v5[3] = &unk_278599FC8;
  v6 = *(a1 + 56);
  [v2 prepAndRunQuery:@"SELECT alogBundleId.bundleId onPrep:alogAction.actionType onRow:alog.date onError:{slotSetKey.uuid, slotSetKey.paramHash, slotSetKey.slotHash, slotSetKey.paramCount FROM alog INNER JOIN alogBundleId ON alog.bundleId = alogBundleId.id INNER JOIN alogAction ON alog.actionType = alogAction.id INNER JOIN slotSetKey on alog.id = slotSetKey.alogId WHERE alog.date > ? AND alog.date < ? ORDER BY alog.date DESC LIMIT ?", v7, v5, 0}];
}

void __81___ATXDataStore_minimalActionParametersforActionsBetweenStartDate_endDate_limit___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v6 = a2;
  [v3 timeIntervalSinceReferenceDate];
  [v6 bindParam:1 toInt64:v4];
  [*(a1 + 40) timeIntervalSinceReferenceDate];
  [v6 bindParam:2 toInt64:v5];
  [v6 bindParam:3 toInteger:*(a1 + 48)];
}

uint64_t __81___ATXDataStore_minimalActionParametersforActionsBetweenStartDate_endDate_limit___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([v3 isColumnNull:0] & 1) != 0 || (objc_msgSend(v3, "isColumnNull:", 1) & 1) != 0 || (objc_msgSend(v3, "isColumnNull:", 2) & 1) != 0 || (objc_msgSend(v3, "isColumnNull:", 4) & 1) != 0 || (objc_msgSend(v3, "isColumnNull:", 5) & 1) != 0 || objc_msgSend(v3, "isColumnNull:", 6))
  {
    v4 = *MEMORY[0x277D42690];
  }

  else
  {
    v6 = [v3 getNSStringForColumn:0];
    v7 = [v3 getNSStringForColumn:1];
    v8 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:{objc_msgSend(v3, "getInt64ForColumn:", 2)}];
    v9 = [v3 getNSDataForColumn:3];
    v10 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:{objc_msgSend(v9, "bytes")}];
    v11 = -[ATXMinimalSlotResolutionParameters initWithParameterHash:slotHash:uuid:paramCount:]([ATXMinimalSlotResolutionParameters alloc], "initWithParameterHash:slotHash:uuid:paramCount:", [v3 getIntegerForColumn:4], objc_msgSend(v3, "getIntegerForColumn:", 5), v10, objc_msgSend(v3, "getIntegerForColumn:", 6));
    v12 = [[ATXMinimalActionParameters alloc] initWithMinimalSlotResolutionParameters:v11 actionTime:v8 bundleId:v6 actionType:v7];
    [*(a1 + 32) addMinimalActionParameter:v12];
    v4 = *MEMORY[0x277D42690];
  }

  return v4;
}

void __65___ATXDataStore_numActionKeyOccurrencesBetweenStartDate_endDate___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 48);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __65___ATXDataStore_numActionKeyOccurrencesBetweenStartDate_endDate___block_invoke_2;
  v5[3] = &unk_278598718;
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __65___ATXDataStore_numActionKeyOccurrencesBetweenStartDate_endDate___block_invoke_3;
  v3[3] = &unk_278599FC8;
  v4 = *(a1 + 56);
  [v2 prepAndRunQuery:@"SELECT alogBundleId.bundleId onPrep:alogAction.actionType onRow:COUNT(*) FROM alog INNER JOIN alogBundleId ON alog.bundleId = alogBundleId.id INNER JOIN alogAction ON alog.actionType = alogAction.id WHERE alog.date > ? AND alog.date < ? GROUP BY alogBundleId.bundleId onError:{alogAction.actionType", v5, v3, 0}];
}

void __65___ATXDataStore_numActionKeyOccurrencesBetweenStartDate_endDate___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v6 = a2;
  [v3 timeIntervalSinceReferenceDate];
  [v6 bindParam:1 toInt64:v4];
  [*(a1 + 40) timeIntervalSinceReferenceDate];
  [v6 bindParam:2 toInt64:v5];
}

uint64_t __65___ATXDataStore_numActionKeyOccurrencesBetweenStartDate_endDate___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 getNSStringForColumn:0];
  v5 = [v3 getNSStringForColumn:1];
  v6 = [v3 getInt64AsNSNumberForColumn:2];

  v7 = [MEMORY[0x277CEB2C8] getActionKeyForBundleId:v4 actionType:v5];
  [*(a1 + 32) setObject:v6 forKeyedSubscript:v7];
  v8 = MEMORY[0x277D42690];

  return *v8;
}

void __71___ATXDataStore_numActionKeyOccurrencesForActionKey_startDate_endDate___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 48);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __71___ATXDataStore_numActionKeyOccurrencesForActionKey_startDate_endDate___block_invoke_2;
  v10[3] = &unk_27859C758;
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  *&v7 = v5;
  *(&v7 + 1) = v6;
  *&v8 = v3;
  *(&v8 + 1) = v4;
  v11 = v8;
  v12 = v7;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __71___ATXDataStore_numActionKeyOccurrencesForActionKey_startDate_endDate___block_invoke_3;
  v9[3] = &unk_278598790;
  v9[4] = *(a1 + 72);
  [v2 prepAndRunQuery:@"SELECT COUNT(*) FROM alog INNER JOIN alogBundleId ON alog.bundleId = alogBundleId.id INNER JOIN alogAction ON alog.actionType = alogAction.id WHERE alog.date > ? AND alog.date < ? AND alogBundleId.bundleId = ? AND alogAction.actionType = ?" onPrep:v10 onRow:v9 onError:0];
}

void __71___ATXDataStore_numActionKeyOccurrencesForActionKey_startDate_endDate___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v6 = a2;
  [v3 timeIntervalSinceReferenceDate];
  [v6 bindParam:1 toInt64:v4];
  [*(a1 + 40) timeIntervalSinceReferenceDate];
  [v6 bindParam:2 toInt64:v5];
  [v6 bindParam:3 toNSString:*(a1 + 48)];
  [v6 bindParam:4 toNSString:*(a1 + 56)];
}

void __69___ATXDataStore_numBundleIdOccurrencesForBundleId_startDate_endDate___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 48);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __69___ATXDataStore_numBundleIdOccurrencesForBundleId_startDate_endDate___block_invoke_2;
  v4[3] = &unk_278599DB8;
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __69___ATXDataStore_numBundleIdOccurrencesForBundleId_startDate_endDate___block_invoke_3;
  v3[3] = &unk_278598790;
  v3[4] = *(a1 + 64);
  [v2 prepAndRunQuery:@"SELECT COUNT(*) FROM alog INNER JOIN alogBundleId ON alog.bundleId = alogBundleId.id INNER JOIN alogAction ON alog.actionType = alogAction.id WHERE alog.date > ? AND alog.date < ? AND alogBundleId.bundleId = ?" onPrep:v4 onRow:v3 onError:0];
}

void __69___ATXDataStore_numBundleIdOccurrencesForBundleId_startDate_endDate___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v6 = a2;
  [v3 timeIntervalSinceReferenceDate];
  [v6 bindParam:1 toInt64:v4];
  [*(a1 + 40) timeIntervalSinceReferenceDate];
  [v6 bindParam:2 toInt64:v5];
  [v6 bindParam:3 toNSString:*(a1 + 48)];
}

void __95___ATXDataStore_numActionParameterHashOccurrencesForActionKey_parameterHash_startDate_endDate___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 48);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __95___ATXDataStore_numActionParameterHashOccurrencesForActionKey_parameterHash_startDate_endDate___block_invoke_2;
  v10[3] = &unk_27859C7D0;
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  *&v7 = v5;
  *(&v7 + 1) = v6;
  *&v8 = v3;
  *(&v8 + 1) = v4;
  v11 = v8;
  v12 = v7;
  v13 = *(a1 + 80);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __95___ATXDataStore_numActionParameterHashOccurrencesForActionKey_parameterHash_startDate_endDate___block_invoke_3;
  v9[3] = &unk_278598790;
  v9[4] = *(a1 + 72);
  [v2 prepAndRunQuery:@"SELECT COUNT(*) as numOccurrences FROM alog INNER JOIN alogBundleId ON alog.bundleId = alogBundleId.id INNER JOIN alogAction ON alog.actionType = alogAction.id INNER JOIN slotSetKey on alog.id = slotSetKey.alogId WHERE alog.date > ? AND alog.date < ? AND alogBundleId.bundleId = ? AND alogAction.actionType = ? AND slotSetKey.paramHash = ?" onPrep:v10 onRow:v9 onError:0];
}

void __95___ATXDataStore_numActionParameterHashOccurrencesForActionKey_parameterHash_startDate_endDate___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v6 = a2;
  [v3 timeIntervalSinceReferenceDate];
  [v6 bindParam:1 toInt64:v4];
  [*(a1 + 40) timeIntervalSinceReferenceDate];
  [v6 bindParam:2 toInt64:v5];
  [v6 bindParam:3 toNSString:*(a1 + 48)];
  [v6 bindParam:4 toNSString:*(a1 + 56)];
  [v6 bindParam:5 toInt64:*(a1 + 64)];
}

uint64_t __35___ATXDataStore_actionForSlotUUID___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = a2;
  [v2 getUUIDBytes:v7];
  v4 = [v3 stmt];

  result = sqlite3_bind_blob(v4, 1, v7, 16, 0xFFFFFFFFFFFFFFFFLL);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __35___ATXDataStore_actionForSlotUUID___block_invoke_2(void *a1, void *a2)
{
  v3 = [a2 getNSDataForColumn:0];
  v4 = *(a1[4] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  if (*(*(a1[4] + 8) + 40))
  {
    v6 = *(a1[6] + 8);
    v7 = ATXSlotSetsDeserialize();
    v8 = *(a1[5] + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;
  }

  return *MEMORY[0x277D42698];
}

uint64_t __35___ATXDataStore_actionForSlotUUID___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __atxlog_handle_default();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __35___ATXDataStore_actionForSlotUUID___block_invoke_3_cold_1(a1);
  }

  v5 = MEMORY[0x277D42698];
  return *v5;
}

void __48___ATXDataStore_removeActionDataForActionUUIDs___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v15 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    do
    {
      v7 = 0;
      do
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v15 + 1) + 8 * v7) getUUIDBytes:v19];
        v8 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:v19 length:16];
        [v2 addObject:v8];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v15 objects:v20 count:16];
    }

    while (v5);
  }

  v9 = *(a1 + 40);
  v10 = *(v9 + 48);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __48___ATXDataStore_removeActionDataForActionUUIDs___block_invoke_2;
  v13[3] = &unk_278596C10;
  v13[4] = v9;
  v14 = v2;
  v11 = v2;
  [v10 writeTransaction:v13];

  v12 = *MEMORY[0x277D85DE8];
}

void __48___ATXDataStore_removeActionDataForActionUUIDs___block_invoke_2(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 48);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __48___ATXDataStore_removeActionDataForActionUUIDs___block_invoke_3;
  v9[3] = &unk_278598768;
  v10 = *(a1 + 40);
  [v2 prepAndRunQuery:@"DELETE FROM slotSetKey WHERE alogId IN (SELECT rowid FROM alog WHERE actionUUID IN _pas_nsset(:actionUUIDSet))" onPrep:v9 onRow:0 onError:0];
  v3 = *(*(a1 + 32) + 48);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48___ATXDataStore_removeActionDataForActionUUIDs___block_invoke_4;
  v7[3] = &unk_278598768;
  v8 = *(a1 + 40);
  [v3 prepAndRunQuery:@"DELETE FROM alog WHERE actionUUID IN _pas_nsset(:actionUUIDSet)" onPrep:v7 onRow:0 onError:0];
  v4 = *(*(a1 + 32) + 48);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __48___ATXDataStore_removeActionDataForActionUUIDs___block_invoke_5;
  v5[3] = &unk_278598768;
  v6 = *(a1 + 40);
  [v4 prepAndRunQuery:@"DELETE FROM afeedback WHERE actionUUID IN _pas_nsset(:actionUUIDSet)" onPrep:v5 onRow:0 onError:0];
}

void __47___ATXDataStore_removeActionDataForActionUUID___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 48);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __47___ATXDataStore_removeActionDataForActionUUID___block_invoke_2;
  v4[3] = &unk_278596C10;
  v4[4] = v2;
  v5 = v1;
  [v3 writeTransaction:v4];
}

void __47___ATXDataStore_removeActionDataForActionUUID___block_invoke_2(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 48);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __47___ATXDataStore_removeActionDataForActionUUID___block_invoke_3;
  v9[3] = &unk_278598768;
  v10 = *(a1 + 40);
  [v2 prepAndRunQuery:@"DELETE FROM slotSetKey WHERE alogId IN (SELECT rowid FROM alog WHERE actionUUID=?)" onPrep:v9 onRow:0 onError:0];
  v3 = *(*(a1 + 32) + 48);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47___ATXDataStore_removeActionDataForActionUUID___block_invoke_4;
  v7[3] = &unk_278598768;
  v8 = *(a1 + 40);
  [v3 prepAndRunQuery:@"DELETE FROM alog WHERE actionUUID=?" onPrep:v7 onRow:0 onError:0];
  v4 = *(*(a1 + 32) + 48);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __47___ATXDataStore_removeActionDataForActionUUID___block_invoke_5;
  v5[3] = &unk_278598768;
  v6 = *(a1 + 40);
  [v4 prepAndRunQuery:@"DELETE FROM afeedback WHERE actionUUID=?" onPrep:v5 onRow:0 onError:0];
}

uint64_t __47___ATXDataStore_removeActionDataForActionUUID___block_invoke_3(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = a2;
  [v2 getUUIDBytes:v7];
  v4 = [v3 stmt];

  result = sqlite3_bind_blob(v4, 1, v7, 16, 0xFFFFFFFFFFFFFFFFLL);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __47___ATXDataStore_removeActionDataForActionUUID___block_invoke_4(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = a2;
  [v2 getUUIDBytes:v7];
  v4 = [v3 stmt];

  result = sqlite3_bind_blob(v4, 1, v7, 16, 0xFFFFFFFFFFFFFFFFLL);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __47___ATXDataStore_removeActionDataForActionUUID___block_invoke_5(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = a2;
  [v2 getUUIDBytes:v7];
  v4 = [v3 stmt];

  result = sqlite3_bind_blob(v4, 1, v7, 16, 0xFFFFFFFFFFFFFFFFLL);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __37___ATXDataStore_hasOrphanSlotSetKeys__block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 48);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __37___ATXDataStore_hasOrphanSlotSetKeys__block_invoke_2;
  v3[3] = &unk_278598790;
  v3[4] = *(a1 + 40);
  return [v1 prepAndRunQuery:@"SELECT uuid FROM slotSetKey WHERE alogId NOT IN (SELECT id FROM alog)" onPrep:0 onRow:v3 onError:0];
}

void __45___ATXDataStore_removeActionDataForBundleId___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 48);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __45___ATXDataStore_removeActionDataForBundleId___block_invoke_2;
  v4[3] = &unk_278596C10;
  v4[4] = v2;
  v5 = v1;
  [v3 writeTransaction:v4];
}

void __45___ATXDataStore_removeActionDataForBundleId___block_invoke_2(uint64_t a1)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = -1;
  v2 = *(*(a1 + 32) + 48);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __45___ATXDataStore_removeActionDataForBundleId___block_invoke_3;
  v5[3] = &unk_278598768;
  v6 = *(a1 + 40);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __45___ATXDataStore_removeActionDataForBundleId___block_invoke_4;
  v4[3] = &unk_278598790;
  v4[4] = &v7;
  [v2 prepAndRunQuery:@"SELECT id FROM alogBundleId WHERE bundleId=?" onPrep:v5 onRow:v4 onError:0];
  v3 = v8[3];
  if (v3 != -1)
  {
    removeActionDataByBundleIdId(*(*(a1 + 32) + 48), v3);
  }

  _Block_object_dispose(&v7, 8);
}

void __40___ATXDataStore_actionAndSlotsForRowId___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 bindParam:1 toInt64:{objc_msgSend(v2, "integerValue")}];
}

uint64_t __40___ATXDataStore_actionAndSlotsForRowId___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 getNSDataForColumn:0];
  if (v4 && (ATXSlotSetsDeserialize(), v5 = objc_claimAutoreleasedReturnValue(), v6 = *(*(a1 + 32) + 8), v7 = *(v6 + 40), *(v6 + 40) = v5, v7, *(*(*(a1 + 32) + 8) + 40)))
  {
    v8 = MEMORY[0x277D42698];
  }

  else
  {
    v8 = MEMORY[0x277D42690];
  }

  return *v8;
}

uint64_t __40___ATXDataStore_actionAndSlotsForRowId___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __atxlog_handle_default();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __40___ATXDataStore_actionAndSlotsForRowId___block_invoke_3_cold_1();
  }

  [_ATXDataStore _simulateCrashForMigrationFailure:v2];
  v4 = MEMORY[0x277D42698];

  return *v4;
}

uint64_t __50___ATXDataStore__regenerateSlotSetKeyForBundleId___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __atxlog_handle_default();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __50___ATXDataStore__regenerateSlotSetKeyForBundleId___block_invoke_4_cold_1(a1);
  }

  [_ATXDataStore _simulateCrashForMigrationFailure:v3];
  v5 = MEMORY[0x277D42698];

  return *v5;
}

uint64_t __50___ATXDataStore__regenerateSlotSetKeyForBundleId___block_invoke_2_627(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(a2, "getInt64ForColumn:", 0)}];
  [v2 addObject:v3];

  return *MEMORY[0x277D42690];
}

void __50___ATXDataStore__regenerateSlotSetKeyForBundleId___block_invoke_628(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 bindParam:1 toInt64:{objc_msgSend(v2, "longLongValue")}];
}

void __49___ATXDataStore_regenerateSlotSetKeyForBundleId___block_invoke(uint64_t a1)
{
  v2 = __atxlog_handle_default();
  v3 = os_signpost_id_generate(v2);

  v4 = __atxlog_handle_default();
  v5 = v4;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_2263AA000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v3, "regenerateSlotSetKeyForBundleId", " enableTelemetry=YES ", buf, 2u);
  }

  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = *(v7 + 48);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __49___ATXDataStore_regenerateSlotSetKeyForBundleId___block_invoke_632;
  v11[3] = &unk_278596C10;
  v11[4] = v7;
  v12 = v6;
  [v8 writeTransaction:v11];
  v9 = __atxlog_handle_default();
  v10 = v9;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_2263AA000, v10, OS_SIGNPOST_INTERVAL_END, v3, "regenerateSlotSetKeyForBundleId", "", buf, 2u);
  }
}

void __51___ATXDataStore_trimActionHistoryWithAppWhitelist___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 48);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __51___ATXDataStore_trimActionHistoryWithAppWhitelist___block_invoke_2;
  v5[3] = &unk_278596C10;
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v6 = v3;
  v7 = v4;
  [v2 writeTransaction:v5];
}

void __51___ATXDataStore_trimActionHistoryWithAppWhitelist___block_invoke_2(uint64_t a1)
{
  v106 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v2 = objc_opt_new();
    v3 = *(*(a1 + 40) + 48);
    v101[0] = MEMORY[0x277D85DD0];
    v101[1] = 3221225472;
    v101[2] = __51___ATXDataStore_trimActionHistoryWithAppWhitelist___block_invoke_3;
    v101[3] = &unk_27859C820;
    v102 = *(a1 + 32);
    v4 = v2;
    v103 = v4;
    [v3 prepAndRunQuery:@"SELECT id onPrep:bundleId FROM alogBundleId" onRow:0 onError:{v101, 0}];
    v99 = 0u;
    v100 = 0u;
    v97 = 0u;
    v98 = 0u;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v97 objects:v105 count:16];
    if (v6)
    {
      v7 = *v98;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v98 != v7)
          {
            objc_enumerationMutation(v5);
          }

          removeActionDataByBundleIdId(*(*(a1 + 40) + 48), [*(*(&v97 + 1) + 8 * i) unsignedLongLongValue]);
        }

        v6 = [v5 countByEnumeratingWithState:&v97 objects:v105 count:16];
      }

      while (v6);
    }
  }

  v9 = objc_opt_new();
  v93 = 0;
  v94 = &v93;
  v95 = 0x2020000000;
  v96 = -1;
  v89 = 0;
  v90 = &v89;
  v91 = 0x2020000000;
  v92 = -1;
  v85 = 0;
  v86 = &v85;
  v87 = 0x2020000000;
  v88 = -1;
  v81 = 0;
  v82 = &v81;
  v83 = 0x2020000000;
  v84 = 0;
  v10 = +[_ATXGlobals sharedInstance];
  v11 = MEMORY[0x277CBEAA8];
  v49 = v10;
  [v10 maximumSlotResolutionDatabaseEntryAge];
  v13 = [v11 dateWithTimeIntervalSinceNow:v12 * 24.0 * 60.0 * -60.0];
  v75 = 0;
  v76 = &v75;
  v77 = 0x3032000000;
  v78 = __Block_byref_object_copy__50;
  v79 = __Block_byref_object_dispose__50;
  v80 = 0;
  v14 = *(a1 + 40);
  v15 = *(v14 + 48);
  v67[0] = MEMORY[0x277D85DD0];
  v67[1] = 3221225472;
  v67[2] = __51___ATXDataStore_trimActionHistoryWithAppWhitelist___block_invoke_4;
  v67[3] = &unk_27859C848;
  v71 = &v93;
  v72 = &v89;
  v73 = &v81;
  v70 = &v75;
  v67[4] = v14;
  v16 = v13;
  v68 = v16;
  v17 = v9;
  v69 = v17;
  v74 = &v85;
  [v15 prepAndRunQuery:@"SELECT bundleId onPrep:actionType onRow:id onError:{date FROM alog ORDER BY bundleId, actionType ASC, rowid DESC", 0, v67, 0}];
  if (v94[3] != -1 && v90[3] != -1)
  {
    if (*(*(a1 + 40) + 56) < *(v82 + 6) || ([v76[5] timeIntervalSinceDate:v16], v18 < 0.0))
    {
      v19 = objc_alloc(MEMORY[0x277D42648]);
      v20 = [MEMORY[0x277CCABB0] numberWithLongLong:v94[3]];
      v21 = [MEMORY[0x277CCABB0] numberWithLongLong:v90[3]];
      v22 = [v19 initWithFirst:v20 second:v21];

      v23 = [MEMORY[0x277CCABB0] numberWithLongLong:v86[3]];
      [v17 setObject:v23 forKeyedSubscript:v22];
    }
  }

  v66[0] = MEMORY[0x277D85DD0];
  v66[1] = 3221225472;
  v66[2] = __51___ATXDataStore_trimActionHistoryWithAppWhitelist___block_invoke_5;
  v66[3] = &unk_27859C870;
  v66[4] = *(a1 + 40);
  [v17 enumerateKeysAndObjectsUsingBlock:v66];
  v24 = objc_opt_new();

  v94[3] = -1;
  v90[3] = -1;
  v86[3] = -1;
  *(v82 + 6) = 0;
  v25 = MEMORY[0x277CBEAA8];
  [v49 maximumSlotFeedbackDatabaseEntryAge];
  v27 = [v25 dateWithTimeIntervalSinceNow:v26 * 24.0 * 60.0 * -60.0];

  v28 = objc_opt_new();
  v29 = *(*(a1 + 40) + 48);
  v56[0] = MEMORY[0x277D85DD0];
  v56[1] = 3221225472;
  v56[2] = __51___ATXDataStore_trimActionHistoryWithAppWhitelist___block_invoke_3_652;
  v56[3] = &unk_27859C898;
  v61 = &v75;
  v30 = v28;
  v62 = &v93;
  v63 = &v89;
  v64 = &v81;
  v31 = *(a1 + 40);
  v57 = v30;
  v58 = v31;
  v32 = v27;
  v59 = v32;
  v33 = v24;
  v60 = v33;
  v65 = &v85;
  [v29 prepAndRunQuery:@"SELECT bundleId onPrep:actionType onRow:id onError:{date FROM afeedback ORDER BY bundleId, actionType ASC, id DESC", 0, v56, 0}];
  if (v94[3] != -1 && v90[3] != -1)
  {
    if (*(*(a1 + 40) + 56) < *(v82 + 6) || ([v76[5] timeIntervalSinceDate:v32], v34 < 0.0))
    {
      v35 = objc_alloc(MEMORY[0x277D42648]);
      v36 = [MEMORY[0x277CCABB0] numberWithLongLong:v94[3]];
      v37 = [MEMORY[0x277CCABB0] numberWithLongLong:v90[3]];
      v38 = [v35 initWithFirst:v36 second:v37];

      v39 = [MEMORY[0x277CCABB0] numberWithLongLong:v86[3]];
      [v33 setObject:v39 forKeyedSubscript:v38];
    }
  }

  v55[0] = MEMORY[0x277D85DD0];
  v55[1] = 3221225472;
  v55[2] = __51___ATXDataStore_trimActionHistoryWithAppWhitelist___block_invoke_4_653;
  v55[3] = &unk_27859C870;
  v55[4] = *(a1 + 40);
  [v33 enumerateKeysAndObjectsUsingBlock:v55];
  v48 = v33;
  v40 = v32;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v41 = v30;
  v42 = [v41 countByEnumeratingWithState:&v51 objects:v104 count:16];
  if (v42)
  {
    v43 = *v52;
    do
    {
      for (j = 0; j != v42; ++j)
      {
        if (*v52 != v43)
        {
          objc_enumerationMutation(v41);
        }

        v45 = *(*(&v51 + 1) + 8 * j);
        v46 = *(*(a1 + 40) + 48);
        v50[0] = MEMORY[0x277D85DD0];
        v50[1] = 3221225472;
        v50[2] = __51___ATXDataStore_trimActionHistoryWithAppWhitelist___block_invoke_6;
        v50[3] = &unk_278598768;
        v50[4] = v45;
        [v46 prepAndRunQuery:@"DELETE FROM afeedback WHERE id=?" onPrep:v50 onRow:0 onError:0];
      }

      v42 = [v41 countByEnumeratingWithState:&v51 objects:v104 count:16];
    }

    while (v42);
  }

  [*(*(a1 + 40) + 48) prepAndRunQuery:@"DELETE FROM alogAction WHERE id NOT IN (SELECT actionType FROM alog UNION SELECT actionType FROM afeedback)" onPrep:0 onRow:0 onError:0];
  [*(*(a1 + 40) + 48) prepAndRunQuery:@"DELETE FROM alogBundleId WHERE id NOT IN (SELECT bundleId FROM alog UNION SELECT bundleId FROM afeedback)" onPrep:0 onRow:0 onError:0];
  [*(*(a1 + 40) + 48) prepAndRunQuery:@"DELETE FROM slotSetKey WHERE alogId NOT IN (SELECT id FROM alog)" onPrep:0 onRow:0 onError:0];

  _Block_object_dispose(&v75, 8);
  _Block_object_dispose(&v81, 8);
  _Block_object_dispose(&v85, 8);
  _Block_object_dispose(&v89, 8);
  _Block_object_dispose(&v93, 8);

  v47 = *MEMORY[0x277D85DE8];
}

uint64_t __51___ATXDataStore_trimActionHistoryWithAppWhitelist___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 getNSStringForColumn:1];
  LOBYTE(v4) = [v4 containsObject:v5];

  if ((v4 & 1) == 0)
  {
    v6 = *(a1 + 40);
    v7 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v3, "getInt64ForColumn:", 0)}];
    [v6 addObject:v7];
  }

  v8 = MEMORY[0x277D42690];

  return *v8;
}

uint64_t __51___ATXDataStore_trimActionHistoryWithAppWhitelist___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 getInt64ForColumn:0];
  v5 = [v3 getInt64ForColumn:1];
  v6 = [v3 getInt64ForColumn:3];
  if (v6)
  {
    v7 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:v6];
  }

  else
  {
    v7 = 0;
  }

  objc_storeStrong((*(*(a1 + 56) + 8) + 40), v7);
  if (v6)
  {
  }

  v8 = *(*(a1 + 64) + 8);
  v9 = *(v8 + 24);
  if (v4 == v9)
  {
    if (v4 == -1)
    {
      goto LABEL_17;
    }

    v10 = *(*(*(a1 + 72) + 8) + 24);
    if (v5 == v10)
    {
      goto LABEL_17;
    }
  }

  else
  {
    if (v9 == -1)
    {
      goto LABEL_17;
    }

    v10 = *(*(*(a1 + 72) + 8) + 24);
  }

  if (v10 != -1)
  {
    if (*(*(a1 + 32) + 56) < *(*(*(a1 + 80) + 8) + 24) || ([*(*(*(a1 + 56) + 8) + 40) timeIntervalSinceDate:*(a1 + 40)], v11 < 0.0))
    {
      v12 = objc_alloc(MEMORY[0x277D42648]);
      v13 = [MEMORY[0x277CCABB0] numberWithLongLong:*(*(*(a1 + 64) + 8) + 24)];
      v14 = [MEMORY[0x277CCABB0] numberWithLongLong:*(*(*(a1 + 72) + 8) + 24)];
      v15 = [v12 initWithFirst:v13 second:v14];

      v16 = [MEMORY[0x277CCABB0] numberWithLongLong:*(*(*(a1 + 88) + 8) + 24)];
      [*(a1 + 48) setObject:v16 forKeyedSubscript:v15];
    }

    *(*(*(a1 + 80) + 8) + 24) = 0;
    v8 = *(*(a1 + 64) + 8);
  }

LABEL_17:
  *(v8 + 24) = v4;
  *(*(*(a1 + 72) + 8) + 24) = v5;
  v17 = *(*(a1 + 80) + 8);
  v18 = *(v17 + 24);
  *(v17 + 24) = v18 + 1;
  if (*(*(a1 + 32) + 56) > v18)
  {
    [*(*(*(a1 + 56) + 8) + 40) timeIntervalSinceDate:*(a1 + 40)];
    if (v19 > 0.0)
    {
      *(*(*(a1 + 88) + 8) + 24) = [v3 getInt64ForColumn:2];
    }
  }

  v20 = MEMORY[0x277D42690];

  return *v20;
}

void __51___ATXDataStore_trimActionHistoryWithAppWhitelist___block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = __atxlog_handle_deletions();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v22 = [v6 longLongValue];
    _os_log_impl(&dword_2263AA000, v7, OS_LOG_TYPE_DEFAULT, "_ATXDataStore: Deleting rows older than id: %lld", buf, 0xCu);
  }

  v8 = *(*(a1 + 32) + 48);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __51___ATXDataStore_trimActionHistoryWithAppWhitelist___block_invoke_643;
  v18[3] = &unk_278598718;
  v9 = v5;
  v19 = v9;
  v10 = v6;
  v20 = v10;
  [v8 prepAndRunQuery:@"DELETE FROM slotSetKey WHERE alogId IN (SELECT id FROM alog WHERE alog.bundleId=? AND alog.actionType=? AND alog.id<?)" onPrep:v18 onRow:0 onError:0];
  v11 = *(*(a1 + 32) + 48);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __51___ATXDataStore_trimActionHistoryWithAppWhitelist___block_invoke_2_647;
  v15[3] = &unk_278598718;
  v16 = v9;
  v17 = v10;
  v12 = v10;
  v13 = v9;
  [v11 prepAndRunQuery:@"DELETE FROM alog WHERE bundleId=? AND actionType=? AND id<?" onPrep:v15 onRow:0 onError:0];

  v14 = *MEMORY[0x277D85DE8];
}

void __51___ATXDataStore_trimActionHistoryWithAppWhitelist___block_invoke_643(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v6 = a2;
  v4 = [v3 first];
  [v6 bindParam:1 toInt64:{objc_msgSend(v4, "longLongValue")}];

  v5 = [*(a1 + 32) second];
  [v6 bindParam:2 toInt64:{objc_msgSend(v5, "longLongValue")}];

  [v6 bindParam:3 toInt64:{objc_msgSend(*(a1 + 40), "longLongValue")}];
}

void __51___ATXDataStore_trimActionHistoryWithAppWhitelist___block_invoke_2_647(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v6 = a2;
  v4 = [v3 first];
  [v6 bindParam:1 toInt64:{objc_msgSend(v4, "longLongValue")}];

  v5 = [*(a1 + 32) second];
  [v6 bindParam:2 toInt64:{objc_msgSend(v5, "longLongValue")}];

  [v6 bindParam:3 toInt64:{objc_msgSend(*(a1 + 40), "longLongValue")}];
}

uint64_t __51___ATXDataStore_trimActionHistoryWithAppWhitelist___block_invoke_3_652(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 getInt64ForColumn:0];
  v5 = [v3 getInt64ForColumn:1];
  v6 = [v3 getInt64ForColumn:3];
  if (v6)
  {
    v7 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:v6];
    v8 = *(*(a1 + 64) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;
  }

  else
  {
    v10 = *(*(a1 + 64) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = 0;

    v12 = *(a1 + 32);
    v9 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v3, "getInt64ForColumn:", 2)}];
    [v12 addObject:v9];
  }

  v13 = *(*(a1 + 72) + 8);
  v14 = *(v13 + 24);
  if (v4 == v14)
  {
    if (v4 == -1)
    {
      goto LABEL_15;
    }

    v15 = *(*(*(a1 + 80) + 8) + 24);
    if (v5 == v15)
    {
      goto LABEL_15;
    }
  }

  else
  {
    if (v14 == -1)
    {
      goto LABEL_15;
    }

    v15 = *(*(*(a1 + 80) + 8) + 24);
  }

  if (v15 != -1)
  {
    if (*(*(a1 + 40) + 56) < *(*(*(a1 + 88) + 8) + 24) || ([*(*(*(a1 + 64) + 8) + 40) timeIntervalSinceDate:*(a1 + 48)], v16 < 0.0))
    {
      v17 = objc_alloc(MEMORY[0x277D42648]);
      v18 = [MEMORY[0x277CCABB0] numberWithLongLong:*(*(*(a1 + 72) + 8) + 24)];
      v19 = [MEMORY[0x277CCABB0] numberWithLongLong:*(*(*(a1 + 80) + 8) + 24)];
      v20 = [v17 initWithFirst:v18 second:v19];

      v21 = [MEMORY[0x277CCABB0] numberWithLongLong:*(*(*(a1 + 96) + 8) + 24)];
      [*(a1 + 56) setObject:v21 forKeyedSubscript:v20];
    }

    *(*(*(a1 + 88) + 8) + 24) = 0;
    v13 = *(*(a1 + 72) + 8);
  }

LABEL_15:
  *(v13 + 24) = v4;
  *(*(*(a1 + 80) + 8) + 24) = v5;
  v22 = *(*(a1 + 88) + 8);
  v23 = *(v22 + 24);
  *(v22 + 24) = v23 + 1;
  if (*(*(a1 + 40) + 56) > v23)
  {
    [*(*(*(a1 + 64) + 8) + 40) timeIntervalSinceDate:*(a1 + 48)];
    if (v24 > 0.0)
    {
      *(*(*(a1 + 96) + 8) + 24) = [v3 getInt64ForColumn:2];
    }
  }

  v25 = MEMORY[0x277D42690];

  return *v25;
}

void __51___ATXDataStore_trimActionHistoryWithAppWhitelist___block_invoke_4_653(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 48);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __51___ATXDataStore_trimActionHistoryWithAppWhitelist___block_invoke_5_657;
  v10[3] = &unk_278598718;
  v11 = v5;
  v12 = v6;
  v8 = v6;
  v9 = v5;
  [v7 prepAndRunQuery:@"DELETE FROM afeedback WHERE bundleId=? AND actionType=? AND id<?" onPrep:v10 onRow:0 onError:0];
}

void __51___ATXDataStore_trimActionHistoryWithAppWhitelist___block_invoke_5_657(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v6 = a2;
  v4 = [v3 first];
  [v6 bindParam:1 toInt64:{objc_msgSend(v4, "longLongValue")}];

  v5 = [*(a1 + 32) second];
  [v6 bindParam:2 toInt64:{objc_msgSend(v5, "longLongValue")}];

  [v6 bindParam:3 toInt64:{objc_msgSend(*(a1 + 40), "longLongValue")}];
}

void __51___ATXDataStore_trimActionHistoryWithAppWhitelist___block_invoke_6(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 bindParam:1 toInt64:{objc_msgSend(v2, "longLongValue")}];
}

uint64_t __30___ATXDataStore_actionLogKeys__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = MEMORY[0x277D42648];
  v4 = a2;
  v5 = [v3 alloc];
  v6 = [v4 getNSStringForColumn:0];
  v7 = [v4 getNSStringForColumn:1];

  v8 = [v5 initWithFirst:v6 second:v7];
  [v2 addObject:v8];

  return *MEMORY[0x277D42690];
}

uint64_t __32___ATXDataStore_bundleIdMapping__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 getInt64AsNSNumberForColumn:1];
  v5 = *(a1 + 32);
  v6 = [v3 getNSStringForColumn:0];

  [v5 setObject:v4 forKeyedSubscript:v6];
  return *MEMORY[0x277D42690];
}

void __148___ATXDataStore_recordConfirms_rejects_forFeedbackType_forActionType_bundleId_action_slotSet_actionUUID_date_consumerSubType_geohash_coarseGeohash___block_invoke(uint64_t a1)
{
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __148___ATXDataStore_recordConfirms_rejects_forFeedbackType_forActionType_bundleId_action_slotSet_actionUUID_date_consumerSubType_geohash_coarseGeohash___block_invoke_2;
  v8[3] = &unk_27859C8E8;
  v7 = *(a1 + 32);
  v2 = *(v7 + 48);
  v3 = *(&v7 + 1);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  *&v6 = v4;
  *(&v6 + 1) = v5;
  v9 = v7;
  v10 = v6;
  v13 = *(a1 + 80);
  v11 = *(a1 + 64);
  v12 = *(a1 + 72);
  v16 = *(a1 + 120);
  v14 = *(a1 + 96);
  v15 = *(a1 + 112);
  [v2 writeTransaction:v8];
}

void __148___ATXDataStore_recordConfirms_rejects_forFeedbackType_forActionType_bundleId_action_slotSet_actionUUID_date_consumerSubType_geohash_coarseGeohash___block_invoke_2(uint64_t a1)
{
  v28[0] = 0;
  v28[1] = v28;
  v28[2] = 0x2020000000;
  v28[3] = 0;
  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x2020000000;
  v27[3] = 0;
  v2 = *(*(a1 + 32) + 48);
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __148___ATXDataStore_recordConfirms_rejects_forFeedbackType_forActionType_bundleId_action_slotSet_actionUUID_date_consumerSubType_geohash_coarseGeohash___block_invoke_3;
  v25[3] = &unk_278598768;
  v26 = *(a1 + 40);
  [v2 prepAndRunQuery:@"INSERT OR IGNORE INTO alogBundleId (bundleId) VALUES (?)" onPrep:v25 onRow:0 onError:0];
  v3 = *(*(a1 + 32) + 48);
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __148___ATXDataStore_recordConfirms_rejects_forFeedbackType_forActionType_bundleId_action_slotSet_actionUUID_date_consumerSubType_geohash_coarseGeohash___block_invoke_4;
  v23[3] = &unk_278598768;
  v24 = *(a1 + 48);
  [v3 prepAndRunQuery:@"INSERT OR IGNORE INTO alogAction (actionType) VALUES (?)" onPrep:v23 onRow:0 onError:0];
  v4 = *(*(a1 + 32) + 48);
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __148___ATXDataStore_recordConfirms_rejects_forFeedbackType_forActionType_bundleId_action_slotSet_actionUUID_date_consumerSubType_geohash_coarseGeohash___block_invoke_5;
  v21[3] = &unk_278598768;
  v22 = *(a1 + 40);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __148___ATXDataStore_recordConfirms_rejects_forFeedbackType_forActionType_bundleId_action_slotSet_actionUUID_date_consumerSubType_geohash_coarseGeohash___block_invoke_6;
  v20[3] = &unk_278598790;
  v20[4] = v28;
  [v4 prepAndRunQuery:@"SELECT id FROM alogBundleId WHERE bundleId=?" onPrep:v21 onRow:v20 onError:0];
  v5 = *(*(a1 + 32) + 48);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __148___ATXDataStore_recordConfirms_rejects_forFeedbackType_forActionType_bundleId_action_slotSet_actionUUID_date_consumerSubType_geohash_coarseGeohash___block_invoke_7;
  v18[3] = &unk_278598768;
  v19 = *(a1 + 48);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __148___ATXDataStore_recordConfirms_rejects_forFeedbackType_forActionType_bundleId_action_slotSet_actionUUID_date_consumerSubType_geohash_coarseGeohash___block_invoke_8;
  v17[3] = &unk_278598790;
  v17[4] = v27;
  [v5 prepAndRunQuery:@"SELECT id FROM alogAction WHERE actionType=?" onPrep:v18 onRow:v17 onError:0];
  v6 = *(*(a1 + 32) + 48);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __148___ATXDataStore_recordConfirms_rejects_forFeedbackType_forActionType_bundleId_action_slotSet_actionUUID_date_consumerSubType_geohash_coarseGeohash___block_invoke_9;
  v7[3] = &unk_27859C8C0;
  v11 = v28;
  v12 = v27;
  v8 = *(a1 + 56);
  v13 = *(a1 + 80);
  v9 = *(a1 + 64);
  v10 = *(a1 + 72);
  v16 = *(a1 + 120);
  v14 = *(a1 + 96);
  v15 = *(a1 + 112);
  [v6 prepAndRunQuery:@"INSERT OR IGNORE INTO afeedback (bundleId onPrep:actionType onRow:slots onError:{confirms, rejects, actionUUID, date, consumerSubType, feedbackType, geoHash, coarseGeohash) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)", v7, 0, 0}];

  _Block_object_dispose(v27, 8);
  _Block_object_dispose(v28, 8);
}

void __148___ATXDataStore_recordConfirms_rejects_forFeedbackType_forActionType_bundleId_action_slotSet_actionUUID_date_consumerSubType_geohash_coarseGeohash___block_invoke_9(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = *(*(*(a1 + 56) + 8) + 24);
  v4 = a2;
  [v4 bindParam:1 toInt64:v3];
  [v4 bindParam:2 toInt64:*(*(*(a1 + 64) + 8) + 24)];
  [v4 bindParam:3 toNSData:*(a1 + 32)];
  [v4 bindParam:4 toDouble:*(a1 + 72)];
  [v4 bindParam:5 toDouble:*(a1 + 80)];
  [*(a1 + 40) getUUIDBytes:v9];
  sqlite3_bind_blob([v4 stmt], 6, v9, 16, 0xFFFFFFFFFFFFFFFFLL);
  [*(a1 + 48) timeIntervalSinceReferenceDate];
  [v4 bindParam:7 toInt64:v5];
  v6 = [MEMORY[0x277CEBCF0] stringForConsumerSubtype:*(a1 + 112)];
  [v4 bindParam:8 toNSString:v6];

  v7 = [MEMORY[0x277CEB2E8] actionFeedbackTypeToString:*(a1 + 88)];
  [v4 bindParam:9 toNSString:v7];

  [v4 bindParam:10 toInt64:*(a1 + 96)];
  [v4 bindParam:11 toInt64:*(a1 + 104)];

  v8 = *MEMORY[0x277D85DE8];
}

void __65___ATXDataStore_enumerateFeedbackForActionOfType_bundleId_block___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CEBCF0] inverseConsumerSubtypeMapping];
  v3 = [MEMORY[0x277CEB2E8] inverseActionFeedbackTypeMapping];
  v4 = *(*(a1 + 32) + 48);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __65___ATXDataStore_enumerateFeedbackForActionOfType_bundleId_block___block_invoke_2;
  v14[3] = &unk_278599DB8;
  v15 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 32);
  v16 = v5;
  v17 = v6;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __65___ATXDataStore_enumerateFeedbackForActionOfType_bundleId_block___block_invoke_3;
  v9[3] = &unk_27859C910;
  v10 = v2;
  v11 = v3;
  v12 = v6;
  v13 = *(a1 + 56);
  v7 = v3;
  v8 = v2;
  [v4 prepAndRunQuery:@"SELECT l.slots onPrep:l.confirms onRow:l.rejects onError:{l.id, l.date, l.consumerSubType, l.feedbackType, l.geohash, l.coarseGeohash FROM afeedback AS l, alogBundleId AS b, alogAction AS i WHERE b.id = l.bundleId AND i.id = l.actionType AND b.bundleId = ? AND i.actionType = ? ORDER BY l.rowid DESC LIMIT ?", v14, v9, 0}];
}

void __65___ATXDataStore_enumerateFeedbackForActionOfType_bundleId_block___block_invoke_2(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  [v4 bindParam:1 toNSString:v3];
  [v4 bindParam:2 toNSString:a1[5]];
  [v4 bindParam:3 toInteger:*(a1[6] + 56)];
}

uint64_t __65___ATXDataStore_enumerateFeedbackForActionOfType_bundleId_block___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = [v3 getNSDataForColumn:0];
  [v3 getDoubleForColumn:1];
  v7 = v6;
  [v3 getDoubleForColumn:2];
  v9 = v8;
  [v3 getInt64ForColumn:3];
  v10 = [v3 getInt64ForColumn:4];
  v11 = [v3 getNSStringForColumn:5];
  v12 = [v3 getNSStringForColumn:6];
  v29 = [v3 getInt64ForColumn:7];
  v28 = [v3 getInt64ForColumn:8];
  v13 = [*(a1 + 32) objectForKeyedSubscript:v11];
  v14 = [*(a1 + 40) objectForKeyedSubscript:v12];
  v15 = v14;
  if (v13 && v14 && v10)
  {
    v27 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:v10];
    if (v5)
    {
      v16 = ATXSlotSetsDeserialize();
    }

    else
    {
      v16 = 0;
    }

    v26 = v16;
    v19 = [v16 second];
    v20 = [v19 count];

    v21 = MEMORY[0x277D42690];
    if (v20 == 1)
    {
      v23 = *(a1 + 56);
      v24 = [v26 first];
      v25 = [v26 second];
      v22 = [v25 anyObject];
      v30 = (*(v23 + 16))(v23, v24, v22, v27, [v13 unsignedIntValue], objc_msgSend(v15, "unsignedIntegerValue"), v29, v28, v7, v9);

      if (!v30)
      {
        v21 = MEMORY[0x277D42698];
      }
    }

    v17 = *v21;
  }

  else
  {
    v17 = *MEMORY[0x277D42690];
  }

  objc_autoreleasePoolPop(v4);
  return v17;
}

uint64_t __65___ATXDataStore_enumerateFeedbackForActionOfType_bundleId_block___block_invoke_4(uint64_t a1)
{
  v2 = __atxlog_handle_default();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __65___ATXDataStore_enumerateFeedbackForActionOfType_bundleId_block___block_invoke_4_cold_1(a1);
  }

  v3 = MEMORY[0x277D42578];
  v4 = [*(a1 + 32) description];
  [v3 simulateCrashWithDescription:v4];

  v5 = *(*(a1 + 40) + 48);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __65___ATXDataStore_enumerateFeedbackForActionOfType_bundleId_block___block_invoke_685;
  v7[3] = &__block_descriptor_40_e29_v16__0___PASSqliteStatement_8l;
  v7[4] = *(a1 + 48);
  [v5 prepAndRunQuery:@"DELETE FROM afeedback WHERE id=?" onPrep:v7 onRow:0 onError:0];
  return xpc_transaction_exit_clean();
}

uint64_t __44___ATXDataStore_removeAllSlotsFromActionLog__block_invoke(uint64_t a1)
{
  v2 = __atxlog_handle_deletions();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_2263AA000, v2, OS_LOG_TYPE_DEFAULT, "_ATXDataStore: Deleting all actions", v4, 2u);
  }

  return [*(*(a1 + 32) + 48) prepAndRunQuery:@"DELETE FROM alog" onPrep:0 onRow:0 onError:&__block_literal_global_691];
}

uint64_t __44___ATXDataStore_removeAllSlotsFromActionLog__block_invoke_689(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __atxlog_handle_default();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __44___ATXDataStore_removeAllSlotsFromActionLog__block_invoke_689_cold_1();
  }

  [_ATXDataStore _simulateCrashForMigrationFailure:v2];
  v4 = MEMORY[0x277D42698];

  return *v4;
}

uint64_t __49___ATXDataStore_removeAllSlotsFromActionFeedback__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __atxlog_handle_default();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __49___ATXDataStore_removeAllSlotsFromActionFeedback__block_invoke_2_cold_1();
  }

  [_ATXDataStore _simulateCrashForMigrationFailure:v2];
  v4 = MEMORY[0x277D42698];

  return *v4;
}

uint64_t __45___ATXDataStore_removeAllSlotsFromSlotSetKey__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __atxlog_handle_default();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __45___ATXDataStore_removeAllSlotsFromSlotSetKey__block_invoke_2_cold_1();
  }

  [_ATXDataStore _simulateCrashForMigrationFailure:v2];
  v4 = MEMORY[0x277D42698];

  return *v4;
}

uint64_t __38___ATXDataStore_actionFeedbackLogKeys__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = MEMORY[0x277D42648];
  v4 = a2;
  v5 = [v3 alloc];
  v6 = [v4 getNSStringForColumn:0];
  v7 = [v4 getNSStringForColumn:1];

  v8 = [v5 initWithFirst:v6 second:v7];
  [v2 addObject:v8];

  return *MEMORY[0x277D42690];
}

uint64_t __43___ATXDataStore__removeActionsWithoutTitle__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __atxlog_handle_default();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __43___ATXDataStore__removeActionsWithoutTitle__block_invoke_3_cold_1();
  }

  [_ATXDataStore _simulateCrashForMigrationFailure:v3];
  *(*(*(a1 + 32) + 8) + 24) = 0;
  v5 = MEMORY[0x277D42698];

  return *v5;
}

void __43___ATXDataStore__removeActionsWithoutTitle__block_invoke_711(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 bindNamedParam:":id" toInt64:{objc_msgSend(v2, "longLongValue")}];
}

uint64_t __43___ATXDataStore__removeActionsWithoutTitle__block_invoke_2_713(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __atxlog_handle_default();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __43___ATXDataStore__removeActionsWithoutTitle__block_invoke_2_713_cold_1();
  }

  [_ATXDataStore _simulateCrashForMigrationFailure:v3];
  *(*(*(a1 + 32) + 8) + 24) = 0;
  v5 = MEMORY[0x277D42698];

  return *v5;
}

uint64_t __42___ATXDataStore_migrateWithMigrationPlan___block_invoke(uint64_t a1, uint64_t a2)
{
  [_ATXDataStore _simulateCrashForMigrationFailure:a2];
  [*(a1 + 32) integrityCheckOrAbort];
  return *MEMORY[0x277D42698];
}

uint64_t __34___ATXDataStore_configureDatabase__block_invoke(uint64_t a1, uint64_t a2)
{
  [_ATXDataStore _simulateCrashForMigrationFailure:a2];
  *(*(*(a1 + 32) + 8) + 24) = 1;
  return *MEMORY[0x277D42698];
}

uint64_t __34___ATXDataStore_runMigrationPlan___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 1;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v21 count:16];
  if (v3)
  {
    v4 = *v14;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v14 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v13 + 1) + 8 * i);
        if ([(NSString *)v6 hasPrefix:@"migration_"])
        {
          v7 = NSSelectorFromString(v6);
          if (!v7 || ([*(a1 + 40) methodForSelector:v7])(*(a1 + 40), v7) != 3)
          {
            *(v18 + 24) = 0;
            goto LABEL_15;
          }
        }

        else
        {
          v8 = *(*(a1 + 40) + 48);
          v12[0] = MEMORY[0x277D85DD0];
          v12[1] = 3221225472;
          v12[2] = __34___ATXDataStore_runMigrationPlan___block_invoke_2;
          v12[3] = &unk_27859A1A0;
          v12[4] = &v17;
          [v8 prepAndRunQuery:v6 onPrep:0 onRow:0 onError:v12];
          if (*(v18 + 24) != 1)
          {
            goto LABEL_15;
          }
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v13 objects:v21 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_15:

  if (*(v18 + 24) == 1)
  {
    [*(a1 + 40) updateSchemaVersionNumberTo:*(*(a1 + 40) + 24)];
    *(*(*(a1 + 48) + 8) + 24) = 3;
    v9 = *(v18 + 24);
  }

  else
  {
    v9 = 0;
  }

  _Block_object_dispose(&v17, 8);
  v10 = *MEMORY[0x277D85DE8];
  return v9 & 1;
}

uint64_t __34___ATXDataStore_runMigrationPlan___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __atxlog_handle_default();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __34___ATXDataStore_runMigrationPlan___block_invoke_2_cold_1();
  }

  [_ATXDataStore _simulateCrashForMigrationFailure:v3];
  *(*(*(a1 + 32) + 8) + 24) = 0;
  v5 = MEMORY[0x277D42698];

  return *v5;
}

uint64_t __45___ATXDataStore_updateSchemaVersionNumberTo___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __atxlog_handle_default();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __45___ATXDataStore_updateSchemaVersionNumberTo___block_invoke_2_cold_1();
  }

  [_ATXDataStore _simulateCrashForMigrationFailure:v2];
  v4 = MEMORY[0x277D42698];

  return *v4;
}

uint64_t __30___ATXDataStore_clearDatabase__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 getNSStringForColumn:0];
  [v2 addObject:v3];

  return *MEMORY[0x277D42690];
}

uint64_t __30___ATXDataStore_clearDatabase__block_invoke_2(uint64_t a1, uint64_t a2)
{
  [_ATXDataStore _simulateCrashForMigrationFailure:a2];
  [*(a1 + 32) integrityCheckOrAbort];
  return *MEMORY[0x277D42698];
}

uint64_t __30___ATXDataStore_clearDatabase__block_invoke_3(uint64_t a1, uint64_t a2)
{
  [_ATXDataStore _simulateCrashForMigrationFailure:a2];
  [*(a1 + 32) integrityCheckOrAbort];
  return *MEMORY[0x277D42698];
}

uint64_t __52___ATXDataStore_migration_LaunchHistoriesToAppTable__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 48);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __52___ATXDataStore_migration_LaunchHistoriesToAppTable__block_invoke_2;
  v12[3] = &unk_27859C488;
  v4 = *(a1 + 40);
  v12[4] = v2;
  v12[5] = v4;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __52___ATXDataStore_migration_LaunchHistoriesToAppTable__block_invoke_3;
  v11[3] = &unk_27859A1A0;
  v11[4] = v4;
  result = [v3 prepAndRunQuery:@"SELECT bundleId onPrep:date FROM launchHistory" onRow:0 onError:{v12, v11}];
  v6 = *(a1 + 40);
  if (*(*(v6 + 8) + 24))
  {
    v7 = *(a1 + 32);
    v8 = *(v7 + 48);
    v9[4] = *(a1 + 40);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __52___ATXDataStore_migration_LaunchHistoriesToAppTable__block_invoke_4;
    v10[3] = &unk_27859C488;
    v10[4] = v7;
    v10[5] = v6;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __52___ATXDataStore_migration_LaunchHistoriesToAppTable__block_invoke_5;
    v9[3] = &unk_27859A1A0;
    return [v8 prepAndRunQuery:@"SELECT bundleId onPrep:date FROM spotlightLaunchHistory" onRow:0 onError:{v10, v9}];
  }

  return result;
}

uint64_t __52___ATXDataStore_migration_LaunchHistoriesToAppTable__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 getNSStringForColumn:0];
  v5 = [v3 getInt64ForColumn:1];

  if ([*(a1 + 32) migrationUpdateOrInsertTimestamp:v5 intoColumn:@"lastLaunchDate" forBundleId:v4])
  {
    v6 = MEMORY[0x277D42690];
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    v6 = MEMORY[0x277D42698];
  }

  return *v6;
}

uint64_t __52___ATXDataStore_migration_LaunchHistoriesToAppTable__block_invoke_3(uint64_t a1, uint64_t a2)
{
  [_ATXDataStore _simulateCrashForMigrationFailure:a2];
  *(*(*(a1 + 32) + 8) + 24) = 0;
  return *MEMORY[0x277D42698];
}

uint64_t __52___ATXDataStore_migration_LaunchHistoriesToAppTable__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 getNSStringForColumn:0];
  v5 = [v3 getInt64ForColumn:1];

  if ([*(a1 + 32) migrationUpdateOrInsertTimestamp:v5 intoColumn:@"lastSpotlightLaunchDate" forBundleId:v4])
  {
    v6 = MEMORY[0x277D42690];
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    v6 = MEMORY[0x277D42698];
  }

  return *v6;
}

uint64_t __52___ATXDataStore_migration_LaunchHistoriesToAppTable__block_invoke_5(uint64_t a1, uint64_t a2)
{
  *(*(*(a1 + 32) + 8) + 24) = 0;
  [_ATXDataStore _simulateCrashForMigrationFailure:a2];
  return *MEMORY[0x277D42698];
}

uint64_t __52___ATXDataStore_migration_AppLaunchHistogramToTable__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 bundleID];
  v6 = [v3 appSessionStartTime];
  v7 = [MEMORY[0x277CBEBB0] defaultTimeZone];
  [v4 addLaunchWithBundleId:v5 date:v6 timeZone:v7];

  v8 = [v3 launchReason];
  if ([v8 isEqualToString:*MEMORY[0x277D66E18]])
  {

LABEL_4:
    v11 = *(a1 + 40);
    v12 = [v3 bundleID];
    v13 = [v3 appSessionStartTime];
    v14 = [MEMORY[0x277CBEBB0] defaultTimeZone];
    [v11 addLaunchWithBundleId:v12 date:v13 timeZone:v14];

    goto LABEL_5;
  }

  v9 = [v3 launchReason];
  v10 = [v9 isEqualToString:*MEMORY[0x277D66E28]];

  if (v10)
  {
    goto LABEL_4;
  }

LABEL_5:

  return 1;
}

uint64_t __59___ATXDataStore_migration_RemoveFeedbackForUninstalledApps__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 getNSStringForColumn:0];
  if (([*(a1 + 32) containsObject:v3] & 1) == 0)
  {
    [*(a1 + 40) _removeFeedbackForBundleId:v3];
  }

  v4 = MEMORY[0x277D42690];

  return *v4;
}

uint64_t __59___ATXDataStore_migration_RemoveFeedbackForUninstalledApps__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __atxlog_handle_default();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __59___ATXDataStore_migration_RemoveFeedbackForUninstalledApps__block_invoke_2_cold_1();
  }

  [_ATXDataStore _simulateCrashForMigrationFailure:v2];
  v4 = MEMORY[0x277D42698];

  return *v4;
}

uint64_t __54___ATXDataStore_migration_RemoveAllSubsequentLaunches__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __atxlog_handle_default();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __54___ATXDataStore_migration_RemoveAllSubsequentLaunches__block_invoke_cold_1();
  }

  [_ATXDataStore _simulateCrashForMigrationFailure:v2];
  v4 = MEMORY[0x277D42698];

  return *v4;
}

void __64___ATXDataStore_migration_DelinkFromCoreLocationVisitMonitoring__block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = objc_opt_new();
  v4 = [objc_alloc(MEMORY[0x277CBFC10]) initWithEffectiveBundlePath:@"/System/Library/PrivateFrameworks/CoreParsec.framework" delegate:v3 onQueue:*(a1 + 32)];
  v5 = [objc_alloc(MEMORY[0x277CBFC10]) initWithEffectiveBundlePath:@"/System/Library/LocationBundles/Routine.bundle" delegate:v3 onQueue:*(a1 + 32)];
  [v4 stopMonitoringVisits];
  [v5 stopMonitoringVisits];

  objc_autoreleasePoolPop(v2);
}

void __43___ATXDataStore_migration_AddExtensionInfo__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([ATXLaunchServicesHelper bundleIsExtension:?])
  {
    [*(a1 + 32) addObject:v3];
  }
}

void __47___ATXDataStore_migration_AddEnterpriseAppInfo__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = MEMORY[0x277CEB3B8];
  v4 = a2;
  [v2 _markBundleId:v4 asEnterpriseApp:{objc_msgSend(v3, "isEnterpriseAppForBundle:", v4)}];
}

void __58___ATXDataStore_updateOrInsertHistogramData_forHistogram___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = a2;
  [v4 bindNamedParam:":histogram_type" toInt64:v3];
  [v4 bindNamedParam:":histogram_data" toNSData:*(a1 + 32)];
}

void __69___ATXDataStore_updateOrInsertCategoricalHistogramData_forHistogram___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = a2;
  [v4 bindNamedParam:":histogram_type" toInt64:v3];
  [v4 bindNamedParam:":histogram_data" toNSData:*(a1 + 32)];
}

uint64_t __58___ATXDataStore_migration_DeprecateGenericAppIntentModels__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __atxlog_handle_default();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __58___ATXDataStore_migration_DeprecateGenericAppIntentModels__block_invoke_2_cold_1();
  }

  [_ATXDataStore _simulateCrashForMigrationFailure:v2];
  v4 = MEMORY[0x277D42698];

  return *v4;
}

void __62___ATXDataStore_migration_DeprecateIntentForAllAppsHistograms__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 bindNamedParam:":h1" toInt64:15];
  [v2 bindNamedParam:":h2" toInt64:18];
  [v2 bindNamedParam:":h3" toInt64:21];
  [v2 bindNamedParam:":h4" toInt64:24];
  [v2 bindNamedParam:":h5" toInt64:27];
}

uint64_t __62___ATXDataStore_migration_DeprecateIntentForAllAppsHistograms__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __atxlog_handle_default();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __62___ATXDataStore_migration_DeprecateIntentForAllAppsHistograms__block_invoke_2_cold_1();
  }

  [_ATXDataStore _simulateCrashForMigrationFailure:v2];
  v4 = MEMORY[0x277D42698];

  return *v4;
}

uint64_t __62___ATXDataStore_migration_DeprecateIntentForAllAppsHistograms__block_invoke_2_855(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __atxlog_handle_default();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __62___ATXDataStore_migration_DeprecateIntentForAllAppsHistograms__block_invoke_2_cold_1();
  }

  [_ATXDataStore _simulateCrashForMigrationFailure:v2];
  v4 = MEMORY[0x277D42698];

  return *v4;
}

uint64_t __35___ATXDataStore_allActionsAndSlots__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 getNSDataForColumn:0];
  v5 = [v3 getInt64ForColumn:1];
  if (!v4)
  {
    v6 = 0;
    goto LABEL_5;
  }

  v6 = ATXSlotSetsDeserialize();
  if (v6)
  {
LABEL_5:
    v8 = *(*(*(a1 + 32) + 8) + 40);
    v9 = [MEMORY[0x277CCABB0] numberWithLongLong:v5];
    [v8 setObject:v6 forKeyedSubscript:v9];

    v7 = *MEMORY[0x277D42690];
    goto LABEL_6;
  }

  v7 = *MEMORY[0x277D42690];
LABEL_6:

  return v7;
}

uint64_t __35___ATXDataStore_allActionsAndSlots__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __atxlog_handle_default();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __35___ATXDataStore_allActionsAndSlots__block_invoke_2_cold_1();
  }

  [_ATXDataStore _simulateCrashForMigrationFailure:v3];
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = 0;

  v7 = MEMORY[0x277D42698];
  return *v7;
}

void __65___ATXDataStore_writeSlotSetKeyParameters_rowId_slotSet_success___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 bindParam:1 toInteger:{objc_msgSend(v3, "integerValue")}];
  v5 = [*(a1 + 40) uuid];
  [v5 getUUIDBytes:v7];

  sqlite3_bind_blob([v4 stmt], 2, v7, 16, 0xFFFFFFFFFFFFFFFFLL);
  [v4 bindParam:3 toInt64:{objc_msgSend(*(a1 + 48), "hash")}];
  [v4 bindParam:4 toInt64:{objc_msgSend(*(a1 + 40), "hash")}];
  [v4 bindParam:5 toInt64:{objc_msgSend(*(a1 + 48), "paramCount")}];

  v6 = *MEMORY[0x277D85DE8];
}

uint64_t __65___ATXDataStore_writeSlotSetKeyParameters_rowId_slotSet_success___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __atxlog_handle_default();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __65___ATXDataStore_writeSlotSetKeyParameters_rowId_slotSet_success___block_invoke_2_cold_1();
  }

  **(a1 + 48) = 0;
  v5 = MEMORY[0x277D42698];

  return *v5;
}

void __43___ATXDataStore_updateAlog_slotsToMigrate___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 bindParam:1 toNSData:v3];
  [v4 bindParam:2 toInteger:{objc_msgSend(*(a1 + 40), "integerValue")}];
}

uint64_t __43___ATXDataStore_updateAlog_slotsToMigrate___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __atxlog_handle_default();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __43___ATXDataStore_updateAlog_slotsToMigrate___block_invoke_2_cold_1(a1);
  }

  v5 = MEMORY[0x277D42698];
  return *v5;
}

uint64_t __45___ATXDataStore_migration_AddFeedbackColumns__block_invoke_2(uint64_t a1, uint64_t a2)
{
  *(*(*(a1 + 32) + 8) + 24) = -1;
  [_ATXDataStore _simulateCrashForMigrationFailure:a2];
  return *MEMORY[0x277D42698];
}

uint64_t __45___ATXDataStore_migration_AddFeedbackColumns__block_invoke_3(uint64_t a1, uint64_t a2)
{
  *(*(*(a1 + 32) + 8) + 24) = 0;
  [_ATXDataStore _simulateCrashForMigrationFailure:a2];
  return *MEMORY[0x277D42698];
}

uint64_t __57___ATXDataStore_migration_RecreatePredictionFeedbackInfo__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 getNSStringForColumn:0];
  v5 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v3, "getInt64ForColumn:", 1)}];
  v6 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v3, "getInt64ForColumn:", 2)}];
  v7 = [v3 getNSStringForColumn:3];

  v8 = [MEMORY[0x277D42648] tupleWithFirst:v4 second:v7];
  v9 = [MEMORY[0x277D42648] tupleWithFirst:v5 second:v6];
  [*(*(*(a1 + 32) + 8) + 40) setObject:v9 forKeyedSubscript:v8];
  v10 = MEMORY[0x277D42690];

  return *v10;
}

uint64_t __57___ATXDataStore_migration_RecreatePredictionFeedbackInfo__block_invoke_3(uint64_t a1, uint64_t a2)
{
  *(*(*(a1 + 32) + 8) + 24) = 0;
  [_ATXDataStore _simulateCrashForMigrationFailure:a2];
  return *MEMORY[0x277D42698];
}

void __57___ATXDataStore_migration_RecreatePredictionFeedbackInfo__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 bindNamedParam:":appAction" toNSString:v3];
  [v4 bindNamedParam:":predictionsCount" toInt64:{objc_msgSend(*(a1 + 40), "integerValue")}];
  [v4 bindNamedParam:":feedbackCount" toInt64:{objc_msgSend(*(a1 + 48), "integerValue")}];
  [v4 bindNamedParam:":uiType" toNSString:*(a1 + 56)];
}

uint64_t __57___ATXDataStore_migration_RecreatePredictionFeedbackInfo__block_invoke_5(uint64_t a1, uint64_t a2)
{
  *(*(*(a1 + 32) + 8) + 24) = 0;
  [_ATXDataStore _simulateCrashForMigrationFailure:a2];
  return *MEMORY[0x277D42698];
}

void __69___ATXDataStore_updateOrInsertSubsequentLaunchCountData_forBundleId___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 bindNamedParam:":bundle_id" toNSString:v3];
  [v4 bindNamedParam:":launch_count" toNSData:*(a1 + 40)];
}

void __66___ATXDataStore_migration_forceUpdateNewAzulSystemAppsInstallDate__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CBEAA8];
  v4 = a2;
  [v2 timeIntervalSinceReferenceDate];
  [v4 bindNamedParam:":new_timestamp" toInt64:v3];
  [v4 bindNamedParam:":translate_app" toNSString:@"com.apple.Translate"];
  [v4 bindNamedParam:":magnifier_app" toNSString:@"com.apple.Magnifier"];
}

void __69___ATXDataStore_migration_forceUpdateNewCrystalSystemAppsInstallDate__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CBEAA8];
  v4 = a2;
  [v2 timeIntervalSinceReferenceDate];
  [v4 bindNamedParam:":new_timestamp" toInt64:v3];
  [v4 bindNamedParam:":generativePlayground_app" toNSString:@"com.apple.GenerativePlaygroundApp"];
  [v4 bindNamedParam:":printCenter_app" toNSString:@"com.apple.printcenter"];
  [v4 bindNamedParam:":tvRemote_app" toNSString:@"com.apple.TVRemoteUIService"];
  [v4 bindNamedParam:":passwords_app" toNSString:@"com.apple.Passwords"];
}

uint64_t __69___ATXDataStore_migration_forceUpdateNewCrystalSystemAppsInstallDate__block_invoke_2(uint64_t a1)
{
  *(*(*(a1 + 32) + 8) + 24) = 0;
  v1 = __atxlog_handle_app_install();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __69___ATXDataStore_migration_forceUpdateNewCrystalSystemAppsInstallDate__block_invoke_2_cold_1();
  }

  return *MEMORY[0x277D42698];
}

void __69___ATXDataStore_migration_forceUpdateNewCrystalSystemAppsInstallDate__block_invoke_960(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CBEAA8];
  v4 = a2;
  [v2 timeIntervalSinceReferenceDate];
  [v4 bindNamedParam:":new_timestamp" toInt64:v3];
  [v4 bindNamedParam:":calculator_app" toNSString:@"com.apple.calculator"];
}

uint64_t __69___ATXDataStore_migration_forceUpdateNewCrystalSystemAppsInstallDate__block_invoke_2_967(uint64_t a1)
{
  *(*(*(a1 + 32) + 8) + 24) = 0;
  v1 = __atxlog_handle_app_install();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __69___ATXDataStore_migration_forceUpdateNewCrystalSystemAppsInstallDate__block_invoke_2_967_cold_1();
  }

  return *MEMORY[0x277D42698];
}

uint64_t __44___ATXDataStore_migration_RemoveLinkActions__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __atxlog_handle_default();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __44___ATXDataStore_migration_RemoveLinkActions__block_invoke_2_cold_1();
  }

  v4 = MEMORY[0x277D42698];
  return *v4;
}

void __61___ATXDataStore_updateOrInsertDataForRemoteAppsWithMappings___block_invoke(void *a1, void *a2, void *a3)
{
  v5 = a1[4];
  v6 = a3;
  v7 = a2;
  [v5 addObject:v7];
  v8 = a1[5];
  v9 = MEMORY[0x277CCABB0];
  v10 = [v6 registrationDate];
  [v10 timeIntervalSinceReferenceDate];
  v11 = [v9 numberWithDouble:?];
  [v8 addObject:v11];

  v12 = a1[6];
  v13 = +[ATXApp2VecClustering sharedInstance];
  v14 = [v13 getClosestClusterCentroidForBundleId:v7];
  v15 = v14;
  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = &unk_283A56060;
  }

  [v12 addObject:v16];

  v17 = a1[7];
  v18 = [v6 genreID];
  v19 = v18;
  if (v18)
  {
    v20 = v18;
  }

  else
  {
    v20 = &unk_283A56060;
  }

  [v17 addObject:v20];

  v21 = a1[8];
  v22 = [v6 uuid];

  if (v22)
  {
    v23 = v22;
  }

  else
  {
    v23 = &stru_2839A6058;
  }

  [v21 addObject:v23];

  v24 = a1[9];
  v25 = MEMORY[0x277CCABB0];
  v26 = [MEMORY[0x277CEB3B8] isEnterpriseAppForBundle:v7];

  v27 = [v25 numberWithBool:v26];
  [v24 addObject:v27];
}

void __61___ATXDataStore_updateOrInsertDataForRemoteAppsWithMappings___block_invoke_2(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 48);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __61___ATXDataStore_updateOrInsertDataForRemoteAppsWithMappings___block_invoke_3;
  v9[3] = &unk_27859CA20;
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  *&v7 = v5;
  *(&v7 + 1) = v6;
  *&v8 = v3;
  *(&v8 + 1) = v4;
  v10 = v8;
  v11 = v7;
  v12 = *(a1 + 72);
  v13 = *(a1 + 80);
  [v2 prepAndRunQuery:@"INSERT INTO appInfo (bundleId onPrep:installDate onRow:genreId onError:{app2VecCluster, remoteAppUUID, isEnterpriseApp) SELECT     bundle_ids.value AS bundleId, timestamps.value AS installDate, genre_ids.value AS genreId, app2vec_clusters.value AS app2VecCluster, uuids.value AS remoteAppUUID, enterprise_apps.value AS isEnterpriseApp FROM _pas_nsarray(:bundle_ids) bundle_ids JOIN _pas_nsarray(:timestamps) timestamps ON bundle_ids.rowid = timestamps.rowid JOIN _pas_nsarray(:genre_ids) genre_ids ON bundle_ids.rowid = genre_ids.rowid JOIN _pas_nsarray(:app2vec_clusters) app2vec_clusters ON bundle_ids.rowid = app2vec_clusters.rowid JOIN _pas_nsarray(:uuids) uuids ON bundle_ids.rowid = uuids.rowid JOIN _pas_nsarray(:enterprise_apps) enterprise_apps ON bundle_ids.rowid = enterprise_apps.rowid ON CONFLICT(bundleId) DO UPDATE SET installDate = CASE     WHEN installDate IS NULL THEN excluded.installDate     ELSE installDate END, genreId = excluded.genreId, app2VecCluster = excluded.app2VecCluster, remoteAppUUID = excluded.remoteAppUUID, isEnterpriseApp = excluded.isEnterpriseApp", v9, 0, &__block_literal_global_987}];
}

void __61___ATXDataStore_updateOrInsertDataForRemoteAppsWithMappings___block_invoke_3(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  [v4 bindNamedParam:":bundle_ids" toNSArray:v3];
  [v4 bindNamedParam:":timestamps" toNSArray:a1[5]];
  [v4 bindNamedParam:":app2vec_clusters" toNSArray:a1[6]];
  [v4 bindNamedParam:":genre_ids" toNSArray:a1[7]];
  [v4 bindNamedParam:":uuids" toNSArray:a1[8]];
  [v4 bindNamedParam:":enterprise_apps" toNSArray:a1[9]];
}

uint64_t __61___ATXDataStore_updateOrInsertDataForRemoteAppsWithMappings___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __atxlog_handle_default();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __61___ATXDataStore_updateOrInsertDataForRemoteAppsWithMappings___block_invoke_4_cold_1();
  }

  v4 = MEMORY[0x277D42698];
  return *v4;
}

void __61___ATXDataStore_setInstallDateToDistantOldTimeForRemoteApps___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 48);
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __61___ATXDataStore_setInstallDateToDistantOldTimeForRemoteApps___block_invoke_2;
  v2[3] = &unk_278598768;
  v3 = *(a1 + 40);
  [v1 prepAndRunQuery:@"INSERT OR REPLACE INTO appInfo (bundleId onPrep:installDate) SELECT bundle_ids.value onRow:1 FROM _pas_nsarray(:bundle_ids) AS bundle_ids;" onError:{v2, 0, &__block_literal_global_989}];
}

void __61___ATXDataStore_setInstallDateToDistantOldTimeForRemoteApps___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 allObjects];
  [v3 bindNamedParam:":bundle_ids" toNSArray:v4];
}

uint64_t __61___ATXDataStore_setInstallDateToDistantOldTimeForRemoteApps___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __atxlog_handle_default();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __61___ATXDataStore_setInstallDateToDistantOldTimeForRemoteApps___block_invoke_3_cold_1();
  }

  v4 = MEMORY[0x277D42698];
  return *v4;
}

void __46___ATXDataStore_bundleIDForRemoteAppWithUUID___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 48);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __46___ATXDataStore_bundleIDForRemoteAppWithUUID___block_invoke_2;
  v5[3] = &unk_278598768;
  v6 = *(a1 + 40);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __46___ATXDataStore_bundleIDForRemoteAppWithUUID___block_invoke_3;
  v4[3] = &unk_278598790;
  v4[4] = *(a1 + 48);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __46___ATXDataStore_bundleIDForRemoteAppWithUUID___block_invoke_4;
  v3[3] = &unk_2785987B8;
  v3[4] = *(a1 + 32);
  [v2 prepAndRunQuery:@"SELECT bundleId FROM appInfo WHERE remoteAppUUID = ?" onPrep:v5 onRow:v4 onError:v3];
}

uint64_t __46___ATXDataStore_bundleIDForRemoteAppWithUUID___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 getNSStringForColumn:0];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return *MEMORY[0x277D42698];
}

uint64_t __46___ATXDataStore_bundleIDForRemoteAppWithUUID___block_invoke_4(uint64_t a1, uint64_t a2)
{
  [_ATXDataStore _simulateCrashForMigrationFailure:a2];
  [*(a1 + 32) integrityCheckOrAbort];
  return *MEMORY[0x277D42698];
}

uint64_t __30___ATXDataStore_hasRemoteApps__block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 48);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __30___ATXDataStore_hasRemoteApps__block_invoke_2;
  v3[3] = &unk_278598790;
  v3[4] = *(a1 + 40);
  return [v1 prepAndRunQuery:@"SELECT 1 FROM appInfo WHERE bundleId LIKE 'remote:%' LIMIT 1" onPrep:0 onRow:v3 onError:0];
}

uint64_t __36___ATXDataStore_deleteAllRemoteApps__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 48);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __36___ATXDataStore_deleteAllRemoteApps__block_invoke_2;
  v4[3] = &unk_2785987B8;
  v4[4] = v1;
  return [v2 prepAndRunQuery:@"DELETE FROM appInfo WHERE bundleId LIKE 'remote:%'" onPrep:0 onRow:0 onError:v4];
}

uint64_t __36___ATXDataStore_deleteAllRemoteApps__block_invoke_2(uint64_t a1, uint64_t a2)
{
  [_ATXDataStore _simulateCrashForMigrationFailure:a2];
  [*(a1 + 32) integrityCheckOrAbort];
  return *MEMORY[0x277D42698];
}

void __45___ATXDataStore_migration_populateModeCaches__block_invoke()
{
  v0 = __atxlog_handle_default();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2263AA000, v0, OS_LOG_TYPE_DEFAULT, "Populating mode caches in migration", buf, 2u);
  }

  v1 = __atxlog_handle_default();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_2263AA000, v1, OS_LOG_TYPE_DEFAULT, "Training mode entity models...", v5, 2u);
  }

  v2 = objc_opt_new();
  [v2 train];
  v3 = __atxlog_handle_default();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_2263AA000, v3, OS_LOG_TYPE_DEFAULT, "Done training mode entity models.", v4, 2u);
  }
}

void __79___ATXDataStore_updateOrInsertSubsequentAppActionLaunchCountData_forAppAction___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 bindNamedParam:":key" toNSString:v3];
  [v4 bindNamedParam:":launch_count" toNSData:*(a1 + 40)];
}

void __93___ATXDataStore_updateOrInsertPredictionsAndFeedbackForAppAction_feedbackReceived_forUIType___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 bindNamedParam:":app_action" toNSString:v3];
  [v4 bindNamedParam:":ui_type" toNSString:*(a1 + 40)];
  [v4 bindNamedParam:":feedback_count" toInt64:*(a1 + 48)];
}

void __56___ATXDataStore_updateInstallDateForBundleID_timestamp___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = a2;
  [v4 bindNamedParam:":new_timestamp" toInt64:v3];
  [v4 bindNamedParam:":bundle_id" toNSString:*(a1 + 32)];
}

void __61___ATXDataStore_updateOrInsertMessageRecipient_dateMessaged___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v5 = a2;
  [v5 bindNamedParam:":recipient" toNSString:v3];
  [*(a1 + 40) timeIntervalSinceReferenceDate];
  [v5 bindNamedParam:":date_messaged" toInt64:v4];
}

void __73___ATXDataStore_updateOrInsertAverageSecondsBetweenLaunches_forBundleId___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  [v4 bindNamedParam:":bundle_id" toNSString:*(a1 + 32)];
  v3 = *(a1 + 40);
  if (v3)
  {
    [v4 bindNamedParam:":average_seconds_between_launches" toInt64:{objc_msgSend(v3, "integerValue")}];
  }

  else
  {
    [v4 bindNamedParamToNull:":average_seconds_between_launches"];
  }
}

void __72___ATXDataStore_updateOrInsertMedianSecondsBetweenLaunches_forBundleId___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  [v4 bindNamedParam:":bundle_id" toNSString:*(a1 + 32)];
  v3 = *(a1 + 40);
  if (v3)
  {
    [v4 bindNamedParam:":median_seconds_between_launches" toInt64:{objc_msgSend(v3, "integerValue")}];
  }

  else
  {
    [v4 bindNamedParamToNull:":median_seconds_between_launches"];
  }
}

void __76___ATXDataStore_updateOrInsertAverageSecondsBetweenAppActions_forAppAction___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  [v4 bindNamedParam:":app_action" toNSString:*(a1 + 32)];
  v3 = *(a1 + 40);
  if (v3)
  {
    [v4 bindNamedParam:":average_seconds_between_app_actions" toInt64:{objc_msgSend(v3, "integerValue")}];
  }

  else
  {
    [v4 bindNamedParamToNull:":average_seconds_between_app_actions"];
  }
}

void __75___ATXDataStore_updateOrInsertMedianSecondsBetweenAppActions_forAppAction___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  [v4 bindNamedParam:":app_action" toNSString:*(a1 + 32)];
  v3 = *(a1 + 40);
  if (v3)
  {
    [v4 bindNamedParam:":median_seconds_between_app_actions" toInt64:{objc_msgSend(v3, "integerValue")}];
  }

  else
  {
    [v4 bindNamedParamToNull:":median_seconds_between_app_actions"];
  }
}

void __63___ATXDataStore_updateOrInsertGenreId_subGenreIds_forBundleId___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 bindNamedParam:":bundle_id" toNSString:v3];
  [v4 bindNamedParam:":genreId_data" toInt64:{objc_msgSend(*(a1 + 40), "integerValue")}];
  if (*(a1 + 48))
  {
    [v4 bindNamedParam:":subGenreIdsData" toNSData:?];
  }

  else
  {
    [v4 bindNamedParamToNull:":subGenreIdsData"];
  }
}

void __58___ATXDataStore_updateOrInsertApp2VecCluster_forBundleId___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 bindNamedParam:":bundle_id" toNSString:v3];
  [v4 bindNamedParam:":app2vec_cluster" toInt64:{objc_msgSend(*(a1 + 40), "integerValue")}];
}

void __76___ATXDataStore_updateOrInsertTimestamp_intoColumn_forBundleId_isExtension___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 bindNamedParam:":bundle_id" toNSString:v3];
  [v4 bindNamedParam:":new_timestamp" toInt64:*(a1 + 40)];
  [v4 bindNamedParam:":is_extension" toInt64:*(a1 + 48)];
}

void __54___ATXDataStore_updateOrInsertTimestamp_forAppAction___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 bindNamedParam:":app_action" toNSString:v3];
  [v4 bindNamedParam:":new_timestamp" toInt64:*(a1 + 40)];
}

void __123___ATXDataStore_updateOrInsertInstallTimestamp_genreId_subGenreIds_app2VecCluster_forBundleId_isExtension_isEnterpriseApp___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 bindNamedParam:":bundle_id" toNSString:*(a1 + 32)];
  [v3 bindNamedParam:":new_timestamp" toInt64:*(a1 + 64)];
  [v3 bindNamedParam:":genreId_data" toInt64:{objc_msgSend(*(a1 + 40), "integerValue")}];
  if (*(a1 + 48))
  {
    [v3 bindNamedParam:":subGenreIds_data" toNSData:?];
  }

  else
  {
    [v3 bindNamedParamToNull:":subGenreIds_data"];
  }

  [v3 bindNamedParam:":is_extension" toInt64:*(a1 + 72)];
  [v3 bindNamedParam:":is_enterprise_app" toInt64:*(a1 + 73)];
  [v3 bindNamedParam:":app2vec_cluster" toInt64:{objc_msgSend(*(a1 + 56), "integerValue")}];
}

uint64_t __123___ATXDataStore_updateOrInsertInstallTimestamp_genreId_subGenreIds_app2VecCluster_forBundleId_isExtension_isEnterpriseApp___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __atxlog_handle_app_install();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    __123___ATXDataStore_updateOrInsertInstallTimestamp_genreId_subGenreIds_app2VecCluster_forBundleId_isExtension_isEnterpriseApp___block_invoke_2_cold_1(a1);
  }

  v5 = MEMORY[0x277D42698];
  return *v5;
}

void __47___ATXDataStore__markBundleId_asEnterpriseApp___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 bindNamedParam:":bundle_id" toNSString:v3];
  [v4 bindNamedParam:":is_enterprise_app" toInt64:*(a1 + 40)];
}

void __73___ATXDataStore_migrationUpdateOrInsertTimestamp_intoColumn_forBundleId___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 bindNamedParam:":bundle_id" toNSString:v3];
  [v4 bindNamedParam:":new_timestamp" toInt64:*(a1 + 40)];
}

uint64_t __73___ATXDataStore_migrationUpdateOrInsertTimestamp_intoColumn_forBundleId___block_invoke_2(uint64_t a1, uint64_t a2)
{
  [_ATXDataStore _simulateCrashForMigrationFailure:a2];
  *(*(*(a1 + 32) + 8) + 24) = 0;
  return *MEMORY[0x277D42698];
}

void __145___ATXDataStore_migrationPre44WriteActionType_bundleId_date_action_slotSets_timeZone_prevLocationUUID_locationUUID_weight_actionUUID_motionType___block_invoke(uint64_t a1)
{
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __145___ATXDataStore_migrationPre44WriteActionType_bundleId_date_action_slotSets_timeZone_prevLocationUUID_locationUUID_weight_actionUUID_motionType___block_invoke_2;
  v14[3] = &unk_27859CB10;
  v13 = *(a1 + 32);
  v2 = *(v13 + 48);
  v3 = *(&v13 + 1);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  *&v6 = v4;
  *(&v6 + 1) = v5;
  v15 = v13;
  v16 = v6;
  v7 = *(a1 + 64);
  v19 = *(a1 + 96);
  v8 = *(a1 + 72);
  v9 = *(a1 + 80);
  v20 = *(a1 + 112);
  v10 = *(a1 + 88);
  *&v11 = v9;
  *(&v11 + 1) = v10;
  *&v12 = v7;
  *(&v12 + 1) = v8;
  v17 = v12;
  v18 = v11;
  v21 = *(a1 + 120);
  [v2 writeTransaction:v14];
}

void __145___ATXDataStore_migrationPre44WriteActionType_bundleId_date_action_slotSets_timeZone_prevLocationUUID_locationUUID_weight_actionUUID_motionType___block_invoke_2(uint64_t a1)
{
  v35[0] = 0;
  v35[1] = v35;
  v35[2] = 0x2020000000;
  v35[3] = 0;
  v34[0] = 0;
  v34[1] = v34;
  v34[2] = 0x2020000000;
  v34[3] = 0;
  v2 = *(*(a1 + 32) + 48);
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __145___ATXDataStore_migrationPre44WriteActionType_bundleId_date_action_slotSets_timeZone_prevLocationUUID_locationUUID_weight_actionUUID_motionType___block_invoke_3;
  v32[3] = &unk_278598768;
  v33 = *(a1 + 40);
  [v2 prepAndRunQuery:@"INSERT OR IGNORE INTO alogBundleId (bundleId) VALUES (?)" onPrep:v32 onRow:0 onError:0];
  v3 = *(*(a1 + 32) + 48);
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __145___ATXDataStore_migrationPre44WriteActionType_bundleId_date_action_slotSets_timeZone_prevLocationUUID_locationUUID_weight_actionUUID_motionType___block_invoke_4;
  v30[3] = &unk_278598768;
  v31 = *(a1 + 48);
  [v3 prepAndRunQuery:@"INSERT OR IGNORE INTO alogAction (actionType) VALUES (?)" onPrep:v30 onRow:0 onError:0];
  v4 = *(*(a1 + 32) + 48);
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __145___ATXDataStore_migrationPre44WriteActionType_bundleId_date_action_slotSets_timeZone_prevLocationUUID_locationUUID_weight_actionUUID_motionType___block_invoke_5;
  v28[3] = &unk_278598768;
  v29 = *(a1 + 40);
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __145___ATXDataStore_migrationPre44WriteActionType_bundleId_date_action_slotSets_timeZone_prevLocationUUID_locationUUID_weight_actionUUID_motionType___block_invoke_6;
  v27[3] = &unk_278598790;
  v27[4] = v35;
  [v4 prepAndRunQuery:@"SELECT id FROM alogBundleId WHERE bundleId=?" onPrep:v28 onRow:v27 onError:0];
  v5 = *(*(a1 + 32) + 48);
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __145___ATXDataStore_migrationPre44WriteActionType_bundleId_date_action_slotSets_timeZone_prevLocationUUID_locationUUID_weight_actionUUID_motionType___block_invoke_7;
  v25[3] = &unk_278598768;
  v26 = *(a1 + 48);
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __145___ATXDataStore_migrationPre44WriteActionType_bundleId_date_action_slotSets_timeZone_prevLocationUUID_locationUUID_weight_actionUUID_motionType___block_invoke_8;
  v24[3] = &unk_278598790;
  v24[4] = v34;
  [v5 prepAndRunQuery:@"SELECT id FROM alogAction WHERE actionType=?" onPrep:v25 onRow:v24 onError:0];
  v6 = *(*(a1 + 32) + 48);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __145___ATXDataStore_migrationPre44WriteActionType_bundleId_date_action_slotSets_timeZone_prevLocationUUID_locationUUID_weight_actionUUID_motionType___block_invoke_9;
  v15[3] = &unk_27859CAE8;
  v19 = v35;
  v20 = v34;
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  v21 = *(a1 + 96);
  v9 = *(a1 + 72);
  v10 = *(a1 + 80);
  *&v11 = v9;
  *(&v11 + 1) = v10;
  *&v12 = v7;
  *(&v12 + 1) = v8;
  v16 = v12;
  v17 = v11;
  v22 = *(a1 + 112);
  v13 = *(a1 + 88);
  v14 = *(a1 + 120);
  v18 = v13;
  v23 = v14;
  [v6 prepAndRunQuery:@"INSERT OR IGNORE INTO alog (bundleId onPrep:actionType onRow:slots onError:{date, timeOfDay, dayOfWeek, prevLocation, location, weight, actionUUID, motionType) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)", v15, 0, 0}];

  _Block_object_dispose(v34, 8);
  _Block_object_dispose(v35, 8);
}

void __145___ATXDataStore_migrationPre44WriteActionType_bundleId_date_action_slotSets_timeZone_prevLocationUUID_locationUUID_weight_actionUUID_motionType___block_invoke_9(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  [v3 bindParam:1 toInt64:*(*(*(a1 + 72) + 8) + 24)];
  [v3 bindParam:2 toInt64:*(*(*(a1 + 80) + 8) + 24)];
  [v3 bindParam:3 toNSData:*(a1 + 32)];
  [*(a1 + 40) timeIntervalSinceReferenceDate];
  [v3 bindParam:4 toInt64:v4];
  [v3 bindParam:5 toInteger:*(a1 + 88)];
  [v3 bindParam:6 toInteger:*(a1 + 96)];
  v5 = *(a1 + 48);
  if (v5)
  {
    [v5 getUUIDBytes:v8];
    sqlite3_bind_blob([v3 stmt], 7, v8, 16, 0xFFFFFFFFFFFFFFFFLL);
  }

  else
  {
    [v3 bindParamToNull:7];
  }

  v6 = *(a1 + 56);
  if (v6)
  {
    [v6 getUUIDBytes:v8];
    sqlite3_bind_blob([v3 stmt], 8, v8, 16, 0xFFFFFFFFFFFFFFFFLL);
  }

  else
  {
    [v3 bindParamToNull:8];
  }

  [v3 bindParam:9 toDouble:*(a1 + 104)];
  [*(a1 + 64) getUUIDBytes:v8];
  sqlite3_bind_blob([v3 stmt], 10, v8, 16, 0xFFFFFFFFFFFFFFFFLL);
  [v3 bindParam:11 toInteger:*(a1 + 112)];

  v7 = *MEMORY[0x277D85DE8];
}

void __73___ATXDataStore_deleteSamplesThatAreMoreThan28DaysOldFromActionDatabases__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 48);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __73___ATXDataStore_deleteSamplesThatAreMoreThan28DaysOldFromActionDatabases__block_invoke_2;
  v4[3] = &unk_278596C10;
  v4[4] = v2;
  v5 = v1;
  [v3 writeTransaction:v4];
}

void __73___ATXDataStore_deleteSamplesThatAreMoreThan28DaysOldFromActionDatabases__block_invoke_2(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 48);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __73___ATXDataStore_deleteSamplesThatAreMoreThan28DaysOldFromActionDatabases__block_invoke_3;
  v9[3] = &unk_278598768;
  v10 = *(a1 + 40);
  [v2 prepAndRunQuery:@"DELETE FROM afeedback WHERE date < :dateCutoff" onPrep:v9 onRow:0 onError:&__block_literal_global_1142];
  v3 = *(*(a1 + 32) + 48);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __73___ATXDataStore_deleteSamplesThatAreMoreThan28DaysOldFromActionDatabases__block_invoke_1146;
  v7[3] = &unk_278598768;
  v8 = *(a1 + 40);
  [v3 prepAndRunQuery:@"DELETE FROM slotSetKey WHERE alogId IN (SELECT id FROM alog WHERE date < :dateCutoff)" onPrep:v7 onRow:0 onError:&__block_literal_global_1149];
  v4 = *(*(a1 + 32) + 48);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __73___ATXDataStore_deleteSamplesThatAreMoreThan28DaysOldFromActionDatabases__block_invoke_1153;
  v5[3] = &unk_278598768;
  v6 = *(a1 + 40);
  [v4 prepAndRunQuery:@"DELETE FROM alog WHERE date < :dateCutoff" onPrep:v5 onRow:0 onError:&__block_literal_global_1156];
}

void __73___ATXDataStore_deleteSamplesThatAreMoreThan28DaysOldFromActionDatabases__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4 = a2;
  [v2 timeIntervalSinceReferenceDate];
  [v4 bindNamedParam:":dateCutoff" toInt64:v3];
}

uint64_t __73___ATXDataStore_deleteSamplesThatAreMoreThan28DaysOldFromActionDatabases__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __atxlog_handle_default();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __73___ATXDataStore_deleteSamplesThatAreMoreThan28DaysOldFromActionDatabases__block_invoke_4_cold_1();
  }

  v4 = MEMORY[0x277D42698];
  return *v4;
}

void __73___ATXDataStore_deleteSamplesThatAreMoreThan28DaysOldFromActionDatabases__block_invoke_1146(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4 = a2;
  [v2 timeIntervalSinceReferenceDate];
  [v4 bindNamedParam:":dateCutoff" toInt64:v3];
}

uint64_t __73___ATXDataStore_deleteSamplesThatAreMoreThan28DaysOldFromActionDatabases__block_invoke_2_1147(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __atxlog_handle_default();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __73___ATXDataStore_deleteSamplesThatAreMoreThan28DaysOldFromActionDatabases__block_invoke_2_1147_cold_1();
  }

  v4 = MEMORY[0x277D42698];
  return *v4;
}

void __73___ATXDataStore_deleteSamplesThatAreMoreThan28DaysOldFromActionDatabases__block_invoke_1153(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4 = a2;
  [v2 timeIntervalSinceReferenceDate];
  [v4 bindNamedParam:":dateCutoff" toInt64:v3];
}

uint64_t __73___ATXDataStore_deleteSamplesThatAreMoreThan28DaysOldFromActionDatabases__block_invoke_2_1154(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __atxlog_handle_default();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __73___ATXDataStore_deleteSamplesThatAreMoreThan28DaysOldFromActionDatabases__block_invoke_2_1147_cold_1();
  }

  v4 = MEMORY[0x277D42698];
  return *v4;
}

void __94___ATXDataStore_recordParamererizedSuggestionWithUniqueIdentifier_encodedTool_encodedSummary___block_invoke(uint64_t a1)
{
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __94___ATXDataStore_recordParamererizedSuggestionWithUniqueIdentifier_encodedTool_encodedSummary___block_invoke_2;
  v8[3] = &unk_2785978C0;
  v7 = *(a1 + 32);
  v2 = *(v7 + 48);
  v3 = *(&v7 + 1);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  *&v6 = v4;
  *(&v6 + 1) = v5;
  v9 = v7;
  v10 = v6;
  [v2 writeTransaction:v8];
}

void __94___ATXDataStore_recordParamererizedSuggestionWithUniqueIdentifier_encodedTool_encodedSummary___block_invoke_2(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 48);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __94___ATXDataStore_recordParamererizedSuggestionWithUniqueIdentifier_encodedTool_encodedSummary___block_invoke_3;
  v3[3] = &unk_278599DB8;
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  [v2 prepAndRunQuery:@"INSERT OR REPLACE INTO parameterizedSuggestions (uniqueID onPrep:encodedTool onRow:encodedSummary) VALUES (:uniqueID onError:{:encodedTool, :encodedSummary)", v3, 0, 0}];
}

void __94___ATXDataStore_recordParamererizedSuggestionWithUniqueIdentifier_encodedTool_encodedSummary___block_invoke_3(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  [v4 bindNamedParam:":uniqueID" toNSString:v3];
  [v4 bindNamedParam:":encodedTool" toNSData:a1[5]];
  [v4 bindNamedParam:":encodedSummary" toNSData:a1[6]];
}

void __67___ATXDataStore_deleteParameterizedSuggestionWithUniqueIdentifier___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 48);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __67___ATXDataStore_deleteParameterizedSuggestionWithUniqueIdentifier___block_invoke_2;
  v4[3] = &unk_278596C10;
  v4[4] = v2;
  v5 = v1;
  [v3 writeTransaction:v4];
}

void __67___ATXDataStore_deleteParameterizedSuggestionWithUniqueIdentifier___block_invoke_2(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 48);
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __67___ATXDataStore_deleteParameterizedSuggestionWithUniqueIdentifier___block_invoke_3;
  v2[3] = &unk_278598768;
  v3 = *(a1 + 40);
  [v1 prepAndRunQuery:@"DELETE FROM parameterizedSuggestions WHERE uniqueID = :uniqueID" onPrep:v2 onRow:0 onError:0];
}

uint64_t __57___ATXDataStore_resetAllRecordedParameterizedSuggestions__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 48);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __57___ATXDataStore_resetAllRecordedParameterizedSuggestions__block_invoke_2;
  v4[3] = &unk_278596BB8;
  v4[4] = v1;
  return [v2 writeTransaction:v4];
}

uint64_t __57___ATXDataStore_resetAllRecordedParameterizedSuggestions__block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 48);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __57___ATXDataStore_resetAllRecordedParameterizedSuggestions__block_invoke_3;
  v4[3] = &unk_2785987B8;
  v4[4] = v1;
  return [v2 prepAndRunQuery:@"DELETE FROM parameterizedSuggestions" onPrep:0 onRow:0 onError:v4];
}

uint64_t __57___ATXDataStore_resetAllRecordedParameterizedSuggestions__block_invoke_3(uint64_t a1, uint64_t a2)
{
  [_ATXDataStore _simulateCrashForMigrationFailure:a2];
  [*(a1 + 32) integrityCheckOrAbort];
  return *MEMORY[0x277D42698];
}

void __66___ATXDataStore_fetchParameterizedSuggestionWithUniqueIdentifier___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 48);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __66___ATXDataStore_fetchParameterizedSuggestionWithUniqueIdentifier___block_invoke_2;
  v7[3] = &unk_278598768;
  v8 = *(a1 + 40);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __66___ATXDataStore_fetchParameterizedSuggestionWithUniqueIdentifier___block_invoke_3;
  v5[3] = &unk_27859A368;
  v6 = *(a1 + 48);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __66___ATXDataStore_fetchParameterizedSuggestionWithUniqueIdentifier___block_invoke_4;
  v3[3] = &unk_2785987B8;
  v4 = *(a1 + 40);
  [v2 prepAndRunQuery:@"SELECT encodedTool onPrep:encodedSummary FROM parameterizedSuggestions WHERE uniqueID = :uniqueID" onRow:v7 onError:{v5, v3}];
}

uint64_t __66___ATXDataStore_fetchParameterizedSuggestionWithUniqueIdentifier___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 getNSDataForColumn:0];
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = [v3 getNSDataForColumn:1];

  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  return *MEMORY[0x277D42698];
}

uint64_t __66___ATXDataStore_fetchParameterizedSuggestionWithUniqueIdentifier___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __atxlog_handle_default();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __66___ATXDataStore_fetchParameterizedSuggestionWithUniqueIdentifier___block_invoke_4_cold_1(a1);
  }

  v5 = MEMORY[0x277D42698];
  return *v5;
}

void __38___ATXDataStore__testMigrateToSchema___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = +[_ATXDataStoreMigrations migrations];
  v4 = [v2 _trimMigrationPlan:v3 toSchema:*(a1 + 40)];

  [*(a1 + 32) migrateWithMigrationPlan:v4];
}

void __32___ATXDataStore__databaseSchema__block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 48);
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __32___ATXDataStore__databaseSchema__block_invoke_2;
  v21[3] = &unk_278599FC8;
  v22 = *(a1 + 40);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __32___ATXDataStore__databaseSchema__block_invoke_3;
  v20[3] = &unk_2785987B8;
  v20[4] = *(a1 + 32);
  [v2 prepAndRunQuery:@"SELECT name FROM sqlite_master WHERE type='table' AND NOT name LIKE 'sqlite_%'" onPrep:0 onRow:v21 onError:v20];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = *(a1 + 40);
  v3 = [obj countByEnumeratingWithState:&v16 objects:v23 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v17;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v17 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v16 + 1) + 8 * i);
        v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"PRAGMA table_info(%@)", v7];;
        v9 = *(*(a1 + 32) + 48);
        v13[0] = MEMORY[0x277D85DD0];
        v13[1] = 3221225472;
        v13[2] = __32___ATXDataStore__databaseSchema__block_invoke_4;
        v13[3] = &unk_27859C820;
        v14 = *(a1 + 40);
        v15 = v7;
        v12[0] = MEMORY[0x277D85DD0];
        v12[1] = 3221225472;
        v12[2] = __32___ATXDataStore__databaseSchema__block_invoke_5;
        v12[3] = &unk_2785987B8;
        v12[4] = *(a1 + 32);
        [v9 prepAndRunQuery:v8 onPrep:0 onRow:v13 onError:v12];
      }

      v4 = [obj countByEnumeratingWithState:&v16 objects:v23 count:16];
    }

    while (v4);
  }

  v10 = *MEMORY[0x277D85DE8];
}

uint64_t __32___ATXDataStore__databaseSchema__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 getNSStringForColumn:0];
  v4 = objc_opt_new();
  [*(a1 + 32) setObject:v4 forKeyedSubscript:v3];

  v5 = MEMORY[0x277D42690];
  return *v5;
}

uint64_t __32___ATXDataStore__databaseSchema__block_invoke_3(uint64_t a1, uint64_t a2)
{
  [_ATXDataStore _simulateCrashForMigrationFailure:a2];
  [*(a1 + 32) integrityCheckOrAbort];
  return *MEMORY[0x277D42698];
}

uint64_t __32___ATXDataStore__databaseSchema__block_invoke_4(uint64_t a1, void *a2)
{
  v11[2] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 getNSStringForColumn:1];
  v5 = [v3 getNSStringForColumn:2];

  v6 = [*(a1 + 32) objectForKeyedSubscript:*(a1 + 40)];
  v10[0] = @"column";
  v10[1] = @"dataType";
  v11[0] = v4;
  v11[1] = v5;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];
  [v6 addObject:v7];

  v8 = *MEMORY[0x277D85DE8];
  return *MEMORY[0x277D42690];
}

uint64_t __32___ATXDataStore__databaseSchema__block_invoke_5(uint64_t a1, uint64_t a2)
{
  [_ATXDataStore _simulateCrashForMigrationFailure:a2];
  [*(a1 + 32) integrityCheckOrAbort];
  return *MEMORY[0x277D42698];
}

uint64_t __38___ATXDataStore_integrityCheckOrAbort__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 getNSStringForColumn:0];
  v4 = [@"ok" isEqualToString:v3];

  if ((v4 & 1) == 0)
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
  }

  return *MEMORY[0x277D42698];
}

void __66___ATXDataStore_ActionTypes__enumerateActionTypesOlderThan_block___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) db];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __66___ATXDataStore_ActionTypes__enumerateActionTypesOlderThan_block___block_invoke_2;
  v8[3] = &unk_278598768;
  v9 = *(a1 + 40);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v4 = *(a1 + 48);
  v7 = *(a1 + 64);
  v5[2] = __66___ATXDataStore_ActionTypes__enumerateActionTypesOlderThan_block___block_invoke_3;
  v5[3] = &unk_27859F208;
  v3 = v4;
  v6 = v4;
  [v2 prepAndRunQuery:@"SELECT log.id onPrep:logAction.actionType onRow:log.date FROM alog AS log onError:{alogAction AS logAction WHERE logAction.id = log.actionType AND log.date > ? ORDER BY log.date", v8, v5, &__block_literal_global_165}];
}

void __66___ATXDataStore_ActionTypes__enumerateActionTypesOlderThan_block___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4 = a2;
  [v2 timeIntervalSinceReferenceDate];
  [v4 bindParam:1 toInt64:v3];
}

uint64_t __66___ATXDataStore_ActionTypes__enumerateActionTypesOlderThan_block___block_invoke_3(void *a1, void *a2)
{
  v3 = a2;
  *(*(a1[5] + 8) + 24) = [v3 getInt64ForColumn:0];
  v4 = [v3 getNSStringForColumn:1];
  v5 = *(a1[6] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceReferenceDate:{objc_msgSend(v3, "getInt64ForColumn:", 3)}];
  v8 = *(a1[7] + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  v10 = objc_autoreleasePoolPush();
  v11 = *(*(a1[5] + 8) + 24);
  v12 = *(*(a1[6] + 8) + 40);
  v13 = *(*(a1[7] + 8) + 40);
  LODWORD(a1) = (*(a1[4] + 16))();
  objc_autoreleasePoolPop(v10);
  v14 = MEMORY[0x277D42690];
  v15 = MEMORY[0x277D42698];

  if (a1)
  {
    v16 = v14;
  }

  else
  {
    v16 = v15;
  }

  return *v16;
}

uint64_t __66___ATXDataStore_ActionTypes__enumerateActionTypesOlderThan_block___block_invoke_4()
{
  v0 = __atxlog_handle_default();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_FAULT))
  {
    __66___ATXDataStore_ActionTypes__enumerateActionTypesOlderThan_block___block_invoke_4_cold_1(v0);
  }

  return *MEMORY[0x277D42698];
}

void __46___ATXDataStore_removeAppLaunchesForBundleId___block_invoke_3_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_12_1(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_0(&dword_2263AA000, v1, v2, "Unable to delete launch timestamps for %@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

void __28___ATXDataStore_loadAppInfo__block_invoke_2_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(&dword_2263AA000, v0, OS_LOG_TYPE_DEBUG, "Unexpected NULL isEnterpriseApp for bundleId: %@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

void __45___ATXDataStore_loadLaunchesFollowingBundle___block_invoke_3_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_12_1(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_21();
  OUTLINED_FUNCTION_2_6(&dword_2263AA000, v1, v2, "Error unarchving subsequent launches for %@: %@");
  v3 = *MEMORY[0x277D85DE8];
}

void __47___ATXDataStore_deleteLaunchesFollowingBundle___block_invoke_3_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_12_1(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_21();
  OUTLINED_FUNCTION_2_6(&dword_2263AA000, v1, v2, "Unable to delete subsequentLaunchCounts for bundle %@ (%@)");
  v3 = *MEMORY[0x277D85DE8];
}

void __50___ATXDataStore_deleteLaunchesFollowingAppAction___block_invoke_3_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_12_1(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_21();
  OUTLINED_FUNCTION_2_6(&dword_2263AA000, v1, v2, "Unable to delete subsequentAppActionLaunchCounts for appAction %@ (%@)");
  v3 = *MEMORY[0x277D85DE8];
}

void __56___ATXDataStore__enumerateAppInfoBundlesExecutingBlock___block_invoke_2_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_2263AA000, v0, v1, "Error enumerating AppInfo bundleIds: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __59___ATXDataStore__enumerateAppInfoAppActionsExecutingBlock___block_invoke_2_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_2263AA000, v0, v1, "Error enumerating AppInfo appActions: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __67___ATXDataStore_filenamesAndDataForBackupShouldPareDown_transport___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_2263AA000, v0, v1, "Could not read sqlite database: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __35___ATXDataStore_restoreFromBackup___block_invoke_cold_1(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_2263AA000, log, OS_LOG_TYPE_ERROR, "More than one ATXDataStore found in backup", buf, 2u);
}

void __35___ATXDataStore_restoreFromBackup___block_invoke_cold_2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_9();
  OUTLINED_FUNCTION_2_6(&dword_2263AA000, v0, v1, "Error restoring to file %@: %@");
  v2 = *MEMORY[0x277D85DE8];
}

void __35___ATXDataStore_restoreFromBackup___block_invoke_cold_3()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __35___ATXDataStore_restoreFromBackup___block_invoke_cold_4()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __191___ATXDataStore_writeActionType_bundleId_date_action_slotSets_timeZone_prevLocationUUID_locationUUID_weight_actionUUID_motionType_appSessionStartDate_appSessionEndDate_geohash_coarseGeohash___block_invoke_12_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_2263AA000, v0, v1, "Error retrieving action just added: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __64___ATXDataStore__deserializeActionLogRowWithStmt_invokingBlock___block_invoke_cold_1(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
  v8 = *MEMORY[0x277D85DE8];
}

void __57___ATXDataStore_enumerateSlotUuidsOfType_bundleId_block___block_invoke_3_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_2263AA000, v0, v1, "Error obtaining slotset UUID for action row: %lld", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __35___ATXDataStore_actionForSlotUUID___block_invoke_3_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_12_1(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_21();
  OUTLINED_FUNCTION_2_6(&dword_2263AA000, v1, v2, "Error retrieving action for slot UUID:%@ error:%@");
  v3 = *MEMORY[0x277D85DE8];
}

void __40___ATXDataStore_actionAndSlotsForRowId___block_invoke_3_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_2263AA000, v0, v1, "Error fetching action and slots from db for row identifier: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __50___ATXDataStore__regenerateSlotSetKeyForBundleId___block_invoke_4_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_12_1(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_21();
  OUTLINED_FUNCTION_2_6(&dword_2263AA000, v1, v2, "Error deleting slotSetKey data for bundleId: %@ error:%@");
  v3 = *MEMORY[0x277D85DE8];
}

void __65___ATXDataStore_enumerateFeedbackForActionOfType_bundleId_block___block_invoke_4_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_12_1(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_0(&dword_2263AA000, v1, v2, "Exception deserializing slots: %@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

void __44___ATXDataStore_removeAllSlotsFromActionLog__block_invoke_689_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_2263AA000, v0, v1, "Error deleting data associated with alog: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __49___ATXDataStore_removeAllSlotsFromActionFeedback__block_invoke_2_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_2263AA000, v0, v1, "Error deleting data associated with afeedback: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __45___ATXDataStore_removeAllSlotsFromSlotSetKey__block_invoke_2_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_2263AA000, v0, v1, "Error deleting data associated with slotSetKey: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __43___ATXDataStore__removeActionsWithoutTitle__block_invoke_3_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_2263AA000, v0, v1, "Error collating data while clearing actions without title: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __43___ATXDataStore__removeActionsWithoutTitle__block_invoke_2_713_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_2263AA000, v0, v1, "Error deleting data while clearing actions without title: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __34___ATXDataStore_runMigrationPlan___block_invoke_2_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_2263AA000, v0, v1, "Error creating table: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __45___ATXDataStore_updateSchemaVersionNumberTo___block_invoke_2_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_2263AA000, v0, v1, "Error updating schema: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __59___ATXDataStore_migration_RemoveFeedbackForUninstalledApps__block_invoke_2_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_2263AA000, v0, v1, "Error iterating through bundles in app table: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __54___ATXDataStore_migration_RemoveAllSubsequentLaunches__block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_2263AA000, v0, v1, "Error wiping subsequent launch counts (migration_RemoveAllSubsequentLaunches: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __58___ATXDataStore_migration_DeprecateGenericAppIntentModels__block_invoke_2_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_2263AA000, v0, v1, "Error deleting data associated with deprecated histogram _APRHistogramTypeAppIntentDonation: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __62___ATXDataStore_migration_DeprecateIntentForAllAppsHistograms__block_invoke_2_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_2263AA000, v0, v1, "Error deleting data associated with deprecated histograms: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __35___ATXDataStore_allActionsAndSlots__block_invoke_2_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_2263AA000, v0, v1, "Error all actions and slots from db: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __65___ATXDataStore_writeSlotSetKeyParameters_rowId_slotSet_success___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_1();
  v13 = *MEMORY[0x277D85DE8];
  v4 = [*(v3 + 32) uuid];
  v5 = *(v2 + 40);
  OUTLINED_FUNCTION_2();
  v9 = 2112;
  v10 = v6;
  v11 = 2112;
  v12 = v1;
  _os_log_error_impl(&dword_2263AA000, v0, OS_LOG_TYPE_ERROR, "Failed to insert slotSetKey UUID: %@ alogId: %@ with error: %@", v8, 0x20u);

  v7 = *MEMORY[0x277D85DE8];
}

void __43___ATXDataStore_updateAlog_slotsToMigrate___block_invoke_2_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_12_1(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_21();
  OUTLINED_FUNCTION_2_6(&dword_2263AA000, v1, v2, "Failed to update action id: %@ with error: %@");
  v3 = *MEMORY[0x277D85DE8];
}

void __69___ATXDataStore_migration_forceUpdateNewCrystalSystemAppsInstallDate__block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __69___ATXDataStore_migration_forceUpdateNewCrystalSystemAppsInstallDate__block_invoke_2_967_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __44___ATXDataStore_migration_RemoveLinkActions__block_invoke_2_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_2263AA000, v0, v1, "error deleting samples from the anchorModelTrainingData table: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __61___ATXDataStore_updateOrInsertDataForRemoteAppsWithMappings___block_invoke_4_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_2263AA000, v0, v1, "ATXDataStore: Updating data failed for remote apps error: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __61___ATXDataStore_setInstallDateToDistantOldTimeForRemoteApps___block_invoke_3_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_2263AA000, v0, v1, "ATXDataStore: Backdating of install date for remote apps failed with error: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __123___ATXDataStore_updateOrInsertInstallTimestamp_genreId_subGenreIds_app2VecCluster_forBundleId_isExtension_isEnterpriseApp___block_invoke_2_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_12_1(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_2();
  v5 = 2114;
  v6 = v1;
  _os_log_fault_impl(&dword_2263AA000, v2, OS_LOG_TYPE_FAULT, "ATXDataStore: Updating install date failed for bundle id: %@ error: %{public}@", v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

void __73___ATXDataStore_deleteSamplesThatAreMoreThan28DaysOldFromActionDatabases__block_invoke_4_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_2263AA000, v0, v1, "error deleting samples from the afeedback table: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __73___ATXDataStore_deleteSamplesThatAreMoreThan28DaysOldFromActionDatabases__block_invoke_2_1147_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_2263AA000, v0, v1, "error deleting samples from the alog table: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __66___ATXDataStore_fetchParameterizedSuggestionWithUniqueIdentifier___block_invoke_4_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_12_1(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_21();
  OUTLINED_FUNCTION_2_6(&dword_2263AA000, v1, v2, "Error fetching parameterized suggestion with uniqueID %@: %@");
  v3 = *MEMORY[0x277D85DE8];
}

@end