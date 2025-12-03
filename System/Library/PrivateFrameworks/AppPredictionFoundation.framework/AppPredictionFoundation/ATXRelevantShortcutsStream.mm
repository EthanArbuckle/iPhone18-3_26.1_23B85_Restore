@interface ATXRelevantShortcutsStream
- (id)_relevantShortcutsPublisherWithStartDate:(id)date endDate:(id)endDate limit:(unint64_t)limit;
- (id)atx_efficientRelevantShortcut:(id)shortcut;
- (void)enumerateEventsFromStartDate:(id)date endDate:(id)endDate limit:(unint64_t)limit block:(id)block;
@end

@implementation ATXRelevantShortcutsStream

- (void)enumerateEventsFromStartDate:(id)date endDate:(id)endDate limit:(unint64_t)limit block:(id)block
{
  dateCopy = date;
  endDateCopy = endDate;
  blockCopy = block;
  if ([dateCopy compare:endDateCopy] != -1)
  {
    [ATXRelevantShortcutsStream enumerateEventsFromStartDate:a2 endDate:self limit:? block:?];
  }

  v14 = objc_autoreleasePoolPush();
  v15 = [(ATXRelevantShortcutsStream *)self _relevantShortcutsPublisherWithStartDate:dateCopy endDate:endDateCopy limit:limit];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __79__ATXRelevantShortcutsStream_enumerateEventsFromStartDate_endDate_limit_block___block_invoke_5;
  v18[3] = &unk_2785907B8;
  v18[4] = self;
  v16 = blockCopy;
  v19 = v16;
  v17 = [v15 sinkWithCompletion:&__block_literal_global_16 shouldContinue:v18];

  objc_autoreleasePoolPop(v14);
}

void __79__ATXRelevantShortcutsStream_enumerateEventsFromStartDate_endDate_limit_block___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 error];

  if (v3)
  {
    v4 = __atxlog_handle_default();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __79__ATXRelevantShortcutsStream_enumerateEventsFromStartDate_endDate_limit_block___block_invoke_cold_1(v2, v4);
    }
  }
}

uint64_t __79__ATXRelevantShortcutsStream_enumerateEventsFromStartDate_endDate_limit_block___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 eventBody];
  v5 = [v4 bundleID];
  if (v5)
  {
    v6 = v5;
    v7 = [v3 eventBody];
    v8 = [v7 serializedRelevantShortcut];

    if (v8)
    {
      v9 = *(a1 + 32);
      v10 = [v3 eventBody];
      v11 = [v10 serializedRelevantShortcut];
      v12 = [v9 atx_efficientRelevantShortcut:v11];

      if (v12)
      {
        v13 = [ATXRelevantShortcutsEvent alloc];
        v14 = [v3 eventBody];
        v15 = [v14 bundleID];
        v16 = [(ATXRelevantShortcutsEvent *)v13 initWithBundleID:v15 relevantShortcut:v12];

        if (v16)
        {
          v17 = (*(*(a1 + 40) + 16))();
        }

        else
        {
          v17 = 1;
        }
      }

      else
      {
        v17 = 1;
      }

      goto LABEL_14;
    }
  }

  else
  {
  }

  v18 = __atxlog_handle_default();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    __79__ATXRelevantShortcutsStream_enumerateEventsFromStartDate_endDate_limit_block___block_invoke_5_cold_1(v3, v18);
  }

  v17 = 1;
LABEL_14:

  return v17;
}

- (id)atx_efficientRelevantShortcut:(id)shortcut
{
  shortcutCopy = shortcut;
  v4 = objc_autoreleasePoolPush();
  v10 = 0;
  v5 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:shortcutCopy error:&v10];
  v6 = v10;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v8 = __atxlog_handle_default();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(ATXRelevantShortcutsStream *)v6 atx_efficientRelevantShortcut:v8];
    }
  }

  objc_autoreleasePoolPop(v4);

  return v5;
}

- (id)_relevantShortcutsPublisherWithStartDate:(id)date endDate:(id)endDate limit:(unint64_t)limit
{
  endDateCopy = endDate;
  dateCopy = date;
  v9 = BiomeLibrary();
  v10 = [v9 App];
  relevantShortcuts = [v10 RelevantShortcuts];
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:limit];
  v13 = [relevantShortcuts atx_publisherWithStartDate:dateCopy endDate:endDateCopy maxEvents:v12 lastN:0 reversed:0];

  return v13;
}

- (void)enumerateEventsFromStartDate:(uint64_t)a1 endDate:(uint64_t)a2 limit:block:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ATXRelevantShortcutsStream.m" lineNumber:50 description:@"Start date must be earlier than the end date."];
}

void __79__ATXRelevantShortcutsStream_enumerateEventsFromStartDate_endDate_limit_block___block_invoke_cold_1(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [a1 error];
  v5 = 138412290;
  v6 = v3;
  _os_log_error_impl(&dword_226368000, a2, OS_LOG_TYPE_ERROR, "ATXRelevantShortcutsStream: Error querying App.RelevantShortcuts stream: %@", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

void __79__ATXRelevantShortcutsStream_enumerateEventsFromStartDate_endDate_limit_block___block_invoke_5_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_226368000, a2, OS_LOG_TYPE_ERROR, "ATXRelevantShortcutsStream: Invalid event App.RelevantShortcuts stream: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)atx_efficientRelevantShortcut:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_226368000, a2, OS_LOG_TYPE_ERROR, "ATXRelevantShortcutsStream: Error unarchiving relevant shortcut: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end