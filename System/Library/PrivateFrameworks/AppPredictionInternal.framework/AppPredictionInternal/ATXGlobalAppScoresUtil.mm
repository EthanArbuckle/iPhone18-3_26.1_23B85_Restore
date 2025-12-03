@interface ATXGlobalAppScoresUtil
+ (id)initializeTrieAtPath:(id)path;
+ (id)normalizeValues:(id)values;
+ (int)dayOfWeekIndexFromDate:(id)date;
+ (int)locationTypeIndexFromRTLocationOfInterestType:(int64_t)type;
+ (int)timeOfDayIndexFromDate:(id)date;
@end

@implementation ATXGlobalAppScoresUtil

+ (int)locationTypeIndexFromRTLocationOfInterestType:(int64_t)type
{
  if (type == 1)
  {
    v3 = 3;
  }

  else
  {
    v3 = 1;
  }

  if (type)
  {
    return v3;
  }

  else
  {
    return 2;
  }
}

+ (int)dayOfWeekIndexFromDate:(id)date
{
  v3 = MEMORY[0x277CBEA80];
  dateCopy = date;
  currentCalendar = [v3 currentCalendar];
  v6 = [currentCalendar components:544 fromDate:dateCopy];

  LODWORD(dateCopy) = [v6 weekday];
  return dateCopy;
}

+ (int)timeOfDayIndexFromDate:(id)date
{
  v3 = MEMORY[0x277CBEA80];
  dateCopy = date;
  currentCalendar = [v3 currentCalendar];
  v6 = [currentCalendar components:544 fromDate:dateCopy];

  LODWORD(dateCopy) = [v6 hour] / 4;
  return dateCopy + 1;
}

+ (id)initializeTrieAtPath:(id)path
{
  v3 = [MEMORY[0x277CEB3C0] pathForResource:path ofType:@"trie" isDirectory:0];
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x277D42558]) initWithPath:v3];
  }

  else
  {
    v5 = __atxlog_handle_app_prediction();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [ATXGlobalAppScoresUtil initializeTrieAtPath:v5];
    }

    v4 = 0;
  }

  return v4;
}

+ (id)normalizeValues:(id)values
{
  valuesCopy = values;
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x2020000000;
  v11[3] = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __42__ATXGlobalAppScoresUtil_normalizeValues___block_invoke;
  v10[3] = &unk_27859DAB8;
  v10[4] = v11;
  [valuesCopy enumerateKeysAndObjectsUsingBlock:v10];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42__ATXGlobalAppScoresUtil_normalizeValues___block_invoke_2;
  v7[3] = &unk_27859DAE0;
  v4 = valuesCopy;
  v8 = v4;
  v9 = v11;
  [v4 enumerateKeysAndObjectsUsingBlock:v7];
  v5 = [v4 copy];

  _Block_object_dispose(v11, 8);

  return v5;
}

double __42__ATXGlobalAppScoresUtil_normalizeValues___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  [a3 doubleValue];
  v4 = *(*(a1 + 32) + 8);
  result = v5 + *(v4 + 24);
  *(v4 + 24) = result;
  return result;
}

void __42__ATXGlobalAppScoresUtil_normalizeValues___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = MEMORY[0x277CCABB0];
  v6 = a2;
  [a3 doubleValue];
  v8 = v7 / *(*(*(a1 + 40) + 8) + 24);
  if ((*&v8 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    v9 = __atxlog_handle_app_prediction();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __42__ATXGlobalAppScoresUtil_normalizeValues___block_invoke_2_cold_1(v9);
    }

    v8 = 0.0;
  }

  v10 = [v5 numberWithDouble:v8];
  [*(a1 + 32) setObject:v10 forKeyedSubscript:v6];
}

+ (void)initializeTrieAtPath:(os_log_t)log .cold.1(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = 0;
  _os_log_error_impl(&dword_2263AA000, log, OS_LOG_TYPE_ERROR, "ATXGlobalAppSignalsUtil: Could not locate the trie located at %@", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

@end