@interface ATXMLInferenceMultiArrayFeatureProvider
- (ATXMLInferenceMultiArrayFeatureProvider)initWithPredictionItem:(ATXPredictionItem *)a3 featuresToConcatenate:(id)a4;
- (NSSet)featureNames;
- (id).cxx_construct;
- (id)featureValueForName:(id)a3;
- (void)setPredictionItem:(ATXPredictionItem *)a3;
@end

@implementation ATXMLInferenceMultiArrayFeatureProvider

- (ATXMLInferenceMultiArrayFeatureProvider)initWithPredictionItem:(ATXPredictionItem *)a3 featuresToConcatenate:(id)a4
{
  v6 = a4;
  v10.receiver = self;
  v10.super_class = ATXMLInferenceMultiArrayFeatureProvider;
  v7 = [(ATXMLInferenceMultiArrayFeatureProvider *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(ATXMLInferenceMultiArrayFeatureProvider *)v7 setPredictionItem:a3];
    [(ATXMLInferenceMultiArrayFeatureProvider *)v8 setFeaturesToConcatenate:v6];
  }

  return v8;
}

- (NSSet)featureNames
{
  featureNames = self->_featureNames;
  if (!featureNames)
  {
    v4 = [MEMORY[0x277CBEB98] setWithObject:@"input_feature_vector"];
    v5 = [v4 copy];
    v6 = self->_featureNames;
    self->_featureNames = v5;

    featureNames = self->_featureNames;
  }

  return featureNames;
}

- (id)featureValueForName:(id)a3
{
  v25[2] = *MEMORY[0x277D85DE8];
  if ([a3 isEqualToString:@"input_feature_vector"])
  {
    v4 = objc_alloc(MEMORY[0x277CBFF48]);
    v25[0] = &unk_283A56D08;
    v5 = MEMORY[0x277CCABB0];
    v6 = [(ATXMLInferenceMultiArrayFeatureProvider *)self featuresToConcatenate];
    v7 = [v5 numberWithUnsignedInteger:{objc_msgSend(v6, "count")}];
    v25[1] = v7;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:2];
    v24 = 0;
    v9 = [v4 initWithShape:v8 dataType:65568 error:&v24];
    v10 = v24;

    if (v10)
    {
      v11 = __atxlog_handle_ml_inference();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [(ATXMLInferenceMultiArrayFeatureProvider *)v10 featureValueForName:v11];
      }

      v12 = 0;
    }

    else
    {
      v13 = [[ATXMLInferenceFeatureProvider alloc] initWithPredictionItem:[(ATXMLInferenceMultiArrayFeatureProvider *)self predictionItem]];
      v14 = [(ATXMLInferenceMultiArrayFeatureProvider *)self featuresToConcatenate];
      v18 = MEMORY[0x277D85DD0];
      v19 = 3221225472;
      v20 = __63__ATXMLInferenceMultiArrayFeatureProvider_featureValueForName___block_invoke;
      v21 = &unk_278598990;
      v15 = v9;
      v22 = v15;
      v11 = v13;
      v23 = v11;
      [v14 enumerateObjectsUsingBlock:&v18];

      v12 = [MEMORY[0x277CBFEF8] featureValueWithMultiArray:{v15, v18, v19, v20, v21}];
    }
  }

  else
  {
    v10 = __atxlog_handle_ml_inference();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      [ATXMLInferenceMultiArrayFeatureProvider featureValueForName:v10];
    }

    v12 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];

  return v12;
}

void __63__ATXMLInferenceMultiArrayFeatureProvider_featureValueForName___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = MEMORY[0x277CCABB0];
  v7 = [*(a1 + 40) featureValueForName:a2];
  [v7 doubleValue];
  v6 = [v5 numberWithDouble:?];
  [*(a1 + 32) setObject:v6 atIndexedSubscript:a3];
}

- (void)setPredictionItem:(ATXPredictionItem *)a3
{
  p_actionHash = &a3->actionHash;
  objc_storeStrong(&self->_predictionItem.key, a3->key);

  memcpy(&self->_predictionItem.actionHash, p_actionHash, 0xCFEuLL);
}

- (id).cxx_construct
{
  v2.i32[1] = -1059153344;
  *v2.i32 = -31337.0;
  *(self + 3) = 0;
  *(self + 838) = -31337.0;
  *(self + 1678) = 0;
  v3 = vdupq_lane_s32(v2, 0);
  for (i = 40; i != 3352; i += 16)
  {
    *(self + i) = v3;
  }

  return self;
}

- (void)featureValueForName:(os_log_t)log .cold.1(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = @"input_feature_vector";
  _os_log_fault_impl(&dword_2263AA000, log, OS_LOG_TYPE_FAULT, "ATXMLInferenceMultiArrayFeatureProvider can only provide the %@ feature.", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)featureValueForName:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_2263AA000, a2, OS_LOG_TYPE_ERROR, "Error in initializing MLMultiArray: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end