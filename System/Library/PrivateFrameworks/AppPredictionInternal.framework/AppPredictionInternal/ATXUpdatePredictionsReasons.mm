@interface ATXUpdatePredictionsReasons
+ (id)stringForUpdatePredictionsReason:(unint64_t)reason;
@end

@implementation ATXUpdatePredictionsReasons

+ (id)stringForUpdatePredictionsReason:(unint64_t)reason
{
  if (reason < 0x18)
  {
    return off_27859A6D0[reason];
  }

  v5 = __atxlog_handle_default();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [(ATXUpdatePredictionsReasons *)reason stringForUpdatePredictionsReason:v5];
  }

  [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:{@"stringForUpdatePredictionsReason called with invalid ATXUpdatePredictionsReason value of %lu", reason}];
  return @"Error";
}

+ (void)stringForUpdatePredictionsReason:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 134217984;
  v4 = a1;
  _os_log_error_impl(&dword_2263AA000, a2, OS_LOG_TYPE_ERROR, "stringForUpdatePredictionsReason called with invalid ATXUpdatePredictionsReason value of %lu", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end