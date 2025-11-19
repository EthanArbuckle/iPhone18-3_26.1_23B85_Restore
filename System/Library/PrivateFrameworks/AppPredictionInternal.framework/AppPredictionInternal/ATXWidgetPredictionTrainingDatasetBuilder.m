@interface ATXWidgetPredictionTrainingDatasetBuilder
- (ATXWidgetPredictionTrainingDatasetBuilder)initWithDistinctScoreCounts:(id)a3;
- (id)createMLArrayBatchProviderFromTrainingArray:(id)a3;
- (id)featureDictionaryWithWidgetEngagementRecord:(id)a3;
- (id)mlFeatureKeyMapping;
- (id)mlFeatureValueForFeatureName:(id)a3 withWidgetEngagementRecord:(id)a4 withFeatureMapping:(id)a5;
- (id)propertyNameForInputFeatureName:(id)a3;
- (void)populateAdditionalFeaturesWithMultiArray:(id)a3 forWidgetEngagementRecord:(id)a4;
@end

@implementation ATXWidgetPredictionTrainingDatasetBuilder

- (ATXWidgetPredictionTrainingDatasetBuilder)initWithDistinctScoreCounts:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ATXWidgetPredictionTrainingDatasetBuilder;
  v6 = [(ATXWidgetPredictionTrainingDatasetBuilder *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_distinctScoreCounts, a3);
  }

  return v7;
}

- (void)populateAdditionalFeaturesWithMultiArray:(id)a3 forWidgetEngagementRecord:(id)a4
{
  v6 = MEMORY[0x277D42648];
  v7 = a4;
  v8 = a3;
  v9 = [v7 widgetBundleId];
  v10 = [v7 widgetKind];

  v12 = [v6 tupleWithFirst:v9 second:v10];

  v11 = [(NSDictionary *)self->_distinctScoreCounts objectForKeyedSubscript:v12];
  [v8 setObject:v11 atIndexedSubscript:0];
}

- (id)createMLArrayBatchProviderFromTrainingArray:(id)a3
{
  v41 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] array];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v37;
    v10 = @"Engaged";
    while (2)
    {
      v11 = 0;
      v31 = v8;
      do
      {
        if (*v37 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v36 + 1) + 8 * v11);
        context = objc_autoreleasePoolPush();
        v13 = [(ATXWidgetPredictionTrainingDatasetBuilder *)self featureDictionaryWithWidgetEngagementRecord:v12];
        v14 = [v12 type];
        v15 = v10;
        if (v14 != 1)
        {
          if ([v12 type] == 2)
          {
            v15 = v10;
          }

          else
          {
            v15 = @"Not Engaged";
          }
        }

        v16 = [MEMORY[0x277CBFEF8] featureValueWithString:{v15, v31}];
        [v13 setObject:v16 forKeyedSubscript:@"classLabel"];

        v17 = objc_alloc(MEMORY[0x277CBFED0]);
        v35 = 0;
        v18 = [v17 initWithDictionary:v13 error:&v35];
        v19 = v18;
        if (v35)
        {
          v20 = 1;
        }

        else
        {
          v20 = v18 == 0;
        }

        v21 = !v20;
        if (v20)
        {
          v22 = v10;
          v23 = v9;
          v24 = self;
          v25 = v6;
          v26 = v5;
          v27 = __atxlog_handle_timeline();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            [(ATXWidgetPredictionTrainingDatasetBuilder *)&buf createMLArrayBatchProviderFromTrainingArray:v34, v27];
          }

          v5 = v26;
          v6 = v25;
          self = v24;
          v9 = v23;
          v10 = v22;
          v8 = v31;
        }

        else
        {
          [v5 addObject:v18];
        }

        objc_autoreleasePoolPop(context);
        if (!v21)
        {

          v28 = 0;
          goto LABEL_26;
        }

        ++v11;
      }

      while (v8 != v11);
      v8 = [v6 countByEnumeratingWithState:&v36 objects:v40 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v28 = [objc_alloc(MEMORY[0x277CBFEB0]) initWithFeatureProviderArray:v5];
LABEL_26:

  v29 = *MEMORY[0x277D85DE8];

  return v28;
}

- (id)featureDictionaryWithWidgetEngagementRecord:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [(ATXWidgetPredictionTrainingDatasetBuilder *)self mlFeatureKeyMapping];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = [v6 allKeys];
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        v13 = [(ATXWidgetPredictionTrainingDatasetBuilder *)self mlFeatureValueForFeatureName:v12 withWidgetEngagementRecord:v4 withFeatureMapping:v6];
        [v5 setObject:v13 forKeyedSubscript:v12];
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  v14 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)mlFeatureValueForFeatureName:(id)a3 withWidgetEngagementRecord:(id)a4 withFeatureMapping:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v20 = 0;
  v11 = [objc_alloc(MEMORY[0x277CBFF48]) initWithShape:&unk_283A57D10 dataType:65568 error:&v20];
  v12 = v20;
  if (v12)
  {
    v13 = __atxlog_handle_timeline();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [ATXWidgetPredictionTrainingDatasetBuilder mlFeatureValueForFeatureName:v8 withWidgetEngagementRecord:v13 withFeatureMapping:?];
    }

    v14 = 0;
  }

  else
  {
    v15 = [v10 objectForKeyedSubscript:v8];
    v16 = [v15 BOOLValue];

    if (v16)
    {
      v17 = [(ATXWidgetPredictionTrainingDatasetBuilder *)self propertyNameForInputFeatureName:v8];
      v18 = [v9 valueForKey:v17];
      [v11 setObject:v18 atIndexedSubscript:0];
    }

    else
    {
      [(ATXWidgetPredictionTrainingDatasetBuilder *)self populateAdditionalFeaturesWithMultiArray:v11 forWidgetEngagementRecord:v9];
    }

    v14 = [MEMORY[0x277CBFEF8] featureValueWithMultiArray:v11];
  }

  return v14;
}

- (id)mlFeatureKeyMapping
{
  v8[2] = *MEMORY[0x277D85DE8];
  v7[0] = @"input_widget_family";
  v2 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v7[1] = @"input_unique_score_count";
  v8[0] = v2;
  v3 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v8[1] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)propertyNameForInputFeatureName:(id)a3
{
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v10 = @"input_widget_family";
  v11[0] = @"widgetFamily";
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v5 = [v4 objectForKeyedSubscript:v3];

  if (!v5)
  {
    v6 = __atxlog_handle_timeline();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      [(ATXWidgetPredictionTrainingDatasetBuilder *)v3 propertyNameForInputFeatureName:v6];
    }
  }

  v7 = [v4 objectForKeyedSubscript:v3];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (void)createMLArrayBatchProviderFromTrainingArray:(os_log_t)log .cold.1(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_2263AA000, log, OS_LOG_TYPE_ERROR, "ATXWidgetPredictionTrainingDatasetBuilder: Error initializing MLDictionaryFeatureProvider", buf, 2u);
}

- (void)mlFeatureValueForFeatureName:(uint64_t)a1 withWidgetEngagementRecord:(NSObject *)a2 withFeatureMapping:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_2263AA000, a2, OS_LOG_TYPE_ERROR, "ATXWidgetPredictionTrainingDatasetBuilder: Error initializing MLMultiArray for input feature: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)propertyNameForInputFeatureName:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_fault_impl(&dword_2263AA000, a2, OS_LOG_TYPE_FAULT, "ATXWidgetPredictionTrainingDatasetBuilder: unexpected input feature: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end