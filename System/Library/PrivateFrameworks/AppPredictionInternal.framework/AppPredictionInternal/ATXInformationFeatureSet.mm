@interface ATXInformationFeatureSet
- (ATXInformationFeatureSet)initWithFeatureDictionary:(id)a3;
- (double)valueForFeature:(unint64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation ATXInformationFeatureSet

- (ATXInformationFeatureSet)initWithFeatureDictionary:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = ATXInformationFeatureSet;
  v5 = [(ATXInformationFeatureSet *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    features = v5->_features;
    v5->_features = v6;
  }

  return v5;
}

- (double)valueForFeature:(unint64_t)a3
{
  if (a3 - 10 <= 0xFFFFFFFFFFFFFFF6)
  {
    v5 = __atxlog_handle_gi();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(ATXInformationFeatureSet *)a3 valueForFeature:v5];
    }
  }

  v6 = [ATXInformationFeatureSetBuilder stringForInfoSuggestionFeature:a3];
  v7 = [(NSDictionary *)self->_features objectForKeyedSubscript:v6];
  [v7 doubleValue];
  v9 = v8;

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  features = self->_features;

  return [v4 initWithFeatureDictionary:features];
}

- (void)valueForFeature:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 134217984;
  v4 = a1;
  _os_log_error_impl(&dword_2263AA000, a2, OS_LOG_TYPE_ERROR, "ATXInformationFeatureSet: Unknown value passed into selector valueForFeature for ATXInfoSuggestionFeatureName %lu", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end