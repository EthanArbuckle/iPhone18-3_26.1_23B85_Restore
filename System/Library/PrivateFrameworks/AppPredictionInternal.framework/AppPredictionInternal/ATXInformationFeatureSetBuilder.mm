@interface ATXInformationFeatureSetBuilder
+ (id)stringForInfoSuggestionFeature:(unint64_t)a3;
- (id)build;
- (void)appendFeature:(unint64_t)a3 value:(double)a4;
- (void)setFeatureWithName:(id)a3 toValue:(id)a4;
@end

@implementation ATXInformationFeatureSetBuilder

- (void)appendFeature:(unint64_t)a3 value:(double)a4
{
  if (a3 - 10 > 0xFFFFFFFFFFFFFFF6)
  {
    v9 = [ATXInformationFeatureSetBuilder stringForInfoSuggestionFeature:a3];
    v8 = [MEMORY[0x277CCABB0] numberWithDouble:a4];
    [(ATXInformationFeatureSetBuilder *)self setFeatureWithName:v9 toValue:v8];
  }

  else
  {
    v5 = __atxlog_handle_gi();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [ATXInformationFeatureSetBuilder appendFeature:a3 value:v5];
    }
  }
}

- (void)setFeatureWithName:(id)a3 toValue:(id)a4
{
  v10 = a3;
  v6 = a4;
  features = self->_features;
  if (!features)
  {
    v8 = objc_opt_new();
    v9 = self->_features;
    self->_features = v8;

    features = self->_features;
  }

  [(NSMutableDictionary *)features setObject:v6 forKeyedSubscript:v10];
}

- (id)build
{
  v2 = [[ATXInformationFeatureSet alloc] initWithFeatureDictionary:self->_features];

  return v2;
}

+ (id)stringForInfoSuggestionFeature:(unint64_t)a3
{
  if (a3 < 0xB)
  {
    return off_27859CF10[a3];
  }

  v6 = [MEMORY[0x277CCA890] currentHandler];
  [v6 handleFailureInMethod:a2 object:a1 file:@"ATXInformationFeatureSetBuilder.m" lineNumber:67 description:@"Unknown value for ATXInfoSuggestionFeatureName"];

  return result;
}

- (void)appendFeature:(uint64_t)a1 value:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 134217984;
  v4 = a1;
  _os_log_error_impl(&dword_2263AA000, a2, OS_LOG_TYPE_ERROR, "ATXInformationFeatureSetBuilder: Unknown value for ATXInfoSuggestionFeature %lu", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end