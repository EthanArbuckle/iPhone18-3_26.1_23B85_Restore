@interface ATXInfoToBlendingConfidenceMapper
- (ATXInfoToBlendingConfidenceMapper)init;
- (int64_t)blendingConfidenceCategoryForInfoConfidenceLevel:(int64_t)level;
- (int64_t)minInfoConfidenceLevelForBlendingConfidenceCategory:(int64_t)category;
@end

@implementation ATXInfoToBlendingConfidenceMapper

- (ATXInfoToBlendingConfidenceMapper)init
{
  v6.receiver = self;
  v6.super_class = ATXInfoToBlendingConfidenceMapper;
  v2 = [(ATXInfoToBlendingConfidenceMapper *)&v6 init];
  if (v2)
  {
    v3 = [ATXAssets2 dictionaryWithLegacyPathForClass:objc_opt_class()];
    map = v2->_map;
    v2->_map = v3;
  }

  return v2;
}

- (int64_t)blendingConfidenceCategoryForInfoConfidenceLevel:(int64_t)level
{
  levelCopy = level;
  map = self->_map;
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:?];
  stringValue = [v5 stringValue];
  v7 = [(NSDictionary *)map objectForKeyedSubscript:stringValue];

  if (v7)
  {
    integerValue = [v7 integerValue];
  }

  else
  {
    v9 = __atxlog_handle_gi();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      [(ATXInfoToBlendingConfidenceMapper *)levelCopy blendingConfidenceCategoryForInfoConfidenceLevel:v9];
    }

    integerValue = 0;
  }

  return integerValue;
}

- (int64_t)minInfoConfidenceLevelForBlendingConfidenceCategory:(int64_t)category
{
  v5 = 1;
  while ([(ATXInfoToBlendingConfidenceMapper *)self blendingConfidenceCategoryForInfoConfidenceLevel:v5]!= category)
  {
    if (++v5 == 16)
    {
      return 0;
    }
  }

  return v5;
}

- (void)blendingConfidenceCategoryForInfoConfidenceLevel:(int)a1 .cold.1(int a1, NSObject *a2)
{
  v3 = *MEMORY[0x1E69E9840];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_fault_impl(&dword_1BF549000, a2, OS_LOG_TYPE_FAULT, "ATXInfoToBlendingConfidenceMapper: mapping does not exist for info confidence level: %d. Should never happen.", v2, 8u);
}

@end