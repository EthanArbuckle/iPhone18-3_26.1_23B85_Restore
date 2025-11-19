@interface ATXMLInferenceFeatureProvider
- (ATXMLInferenceFeatureProvider)initWithPredictionItem:(ATXPredictionItem *)a3;
- (NSSet)featureNames;
- (id).cxx_construct;
- (id)featureValueForName:(id)a3;
- (void)setPredictionItem:(ATXPredictionItem *)a3;
@end

@implementation ATXMLInferenceFeatureProvider

- (ATXMLInferenceFeatureProvider)initWithPredictionItem:(ATXPredictionItem *)a3
{
  v7.receiver = self;
  v7.super_class = ATXMLInferenceFeatureProvider;
  v4 = [(ATXMLInferenceFeatureProvider *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(ATXMLInferenceFeatureProvider *)v4 setPredictionItem:a3];
  }

  return v5;
}

- (NSSet)featureNames
{
  featureNames = self->_featureNames;
  if (!featureNames)
  {
    v4 = objc_opt_new();
    for (i = 4; i != 832; ++i)
    {
      if ([(ATXMLInferenceFeatureProvider *)self predictionItem][4 * i] != -31337.0)
      {
        v6 = [_ATXScoreTypes aggdStringForScoreInput:i - 4];
        [v4 addObject:v6];
      }
    }

    v7 = [v4 copy];
    v8 = self->_featureNames;
    self->_featureNames = v7;

    featureNames = self->_featureNames;
  }

  return featureNames;
}

- (id)featureValueForName:(id)a3
{
  v4 = a3;
  v5 = [_ATXScoreTypes scoreInputForAggdString:v4];
  if (v5 == 0xFFFFFFFF || v5 == 828)
  {
    v6 = __atxlog_handle_ml_inference();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(ATXMLInferenceFeatureProvider *)v4 featureValueForName:v6];
    }

    v7 = 0;
  }

  else
  {
    v8 = ([(ATXMLInferenceFeatureProvider *)self predictionItem]+ 4 * v5)[16];
    v9 = -31337.0;
    if (v8 == -31337.0)
    {
      v10 = __atxlog_handle_ml_inference();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        [(ATXMLInferenceFeatureProvider *)v4 featureValueForName:v10];
      }

      v8 = 0.0;
    }

    v7 = [MEMORY[0x277CBFEF8] featureValueWithDouble:{v8, v9}];
  }

  return v7;
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
  *(self + 2) = 0;
  *(self + 836) = -31337.0;
  *(self + 1674) = 0;
  v3 = vdupq_lane_s32(v2, 0);
  for (i = 32; i != 3344; i += 16)
  {
    *(self + i) = v3;
  }

  return self;
}

- (void)featureValueForName:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_2263AA000, a2, OS_LOG_TYPE_ERROR, "Score input for %@ do not exists", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)featureValueForName:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_2263AA000, a2, OS_LOG_TYPE_DEBUG, "No input present for feature %@; returning default;", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end