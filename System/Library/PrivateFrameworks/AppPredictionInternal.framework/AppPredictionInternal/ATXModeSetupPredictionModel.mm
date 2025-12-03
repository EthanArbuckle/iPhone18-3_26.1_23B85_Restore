@interface ATXModeSetupPredictionModel
- (ATXModeSetupPredictionModel)initWithMode:(unint64_t)mode;
- (double)probabilityScore;
- (id)featuresToModel;
- (id)modeSetupPredictionModel;
- (id)modelName;
- (void)modelName;
- (void)probabilityScore;
@end

@implementation ATXModeSetupPredictionModel

- (ATXModeSetupPredictionModel)initWithMode:(unint64_t)mode
{
  v5.receiver = self;
  v5.super_class = ATXModeSetupPredictionModel;
  result = [(ATXModeSetupPredictionModel *)&v5 init];
  if (result)
  {
    result->_mode = mode;
  }

  return result;
}

- (id)featuresToModel
{
  v3 = objc_opt_new();
  v4 = [[ATXModeSetupPredictionFeaturesCorrelator alloc] initWithMode:self->_mode features:v3];
  featureVector = [(ATXModeSetupPredictionFeaturesCorrelator *)v4 featureVector];

  return featureVector;
}

- (id)modelName
{
  p_mode = &self->_mode;
  v3 = [ATXFocusModeModelsUtil setupPredictionModelNameForMode:self->_mode];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = __atxlog_handle_modes();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(ATXModeSetupPredictionModel *)p_mode modelName];
    }
  }

  return v4;
}

- (id)modeSetupPredictionModel
{
  modelName = [(ATXModeSetupPredictionModel *)self modelName];
  v3 = [ATXCoreMLUtilities loadCoreMLModelWithName:modelName];

  return v3;
}

- (double)probabilityScore
{
  modeSetupPredictionModel = [(ATXModeSetupPredictionModel *)self modeSetupPredictionModel];
  if (modeSetupPredictionModel)
  {
    v4 = objc_alloc(MEMORY[0x277CBFED0]);
    featuresToModel = [(ATXModeSetupPredictionModel *)self featuresToModel];
    v17 = 0;
    v6 = [v4 initWithDictionary:featuresToModel error:&v17];
    v7 = v17;

    if (v7)
    {
      v8 = __atxlog_handle_modes();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [(ATXModeSetupPredictionModel *)v7 probabilityScore];
      }
    }

    v16 = v7;
    v9 = [modeSetupPredictionModel predictionFromFeatures:v6 error:&v16];
    v10 = v16;

    if (v10)
    {
      v11 = __atxlog_handle_modes();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [(ATXModeSetupPredictionModel *)v10 probabilityScore];
      }
    }

    v12 = [v9 featureValueForName:@"classProbability"];
    [ATXCoreMLUtilities scoreForModelOutputValue:v12 outputIndexedSubscript:1];
    v14 = v13;
  }

  else
  {
    v14 = 0.0;
  }

  return v14;
}

- (void)modelName
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *self;
  v4 = ATXModeToString();
  v6 = 138412290;
  v7 = v4;
  _os_log_error_impl(&dword_2263AA000, a2, OS_LOG_TYPE_ERROR, "ATXModeSetupPredictionModel: nil returned for CoreML model file name for this mode: %@", &v6, 0xCu);

  v5 = *MEMORY[0x277D85DE8];
}

- (void)probabilityScore
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  selfCopy = self;
  _os_log_error_impl(&dword_2263AA000, a2, OS_LOG_TYPE_ERROR, "ATXModeSetupPredictionModel - Error during inference on the CoreMLModel: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end