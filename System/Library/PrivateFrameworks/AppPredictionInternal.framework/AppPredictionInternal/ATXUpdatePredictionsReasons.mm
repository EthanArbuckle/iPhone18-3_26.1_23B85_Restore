@interface ATXUpdatePredictionsReasons
+ (id)stringForUpdatePredictionsReason:(unint64_t)a3;
@end

@implementation ATXUpdatePredictionsReasons

+ (id)stringForUpdatePredictionsReason:(unint64_t)a3
{
  if (a3 < 0x18)
  {
    return off_27859A6D0[a3];
  }

  v5 = __atxlog_handle_default();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [(ATXUpdatePredictionsReasons *)a3 stringForUpdatePredictionsReason:v5];
  }

  [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:{@"stringForUpdatePredictionsReason called with invalid ATXUpdatePredictionsReason value of %lu", a3}];
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