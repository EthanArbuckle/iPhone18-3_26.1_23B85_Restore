@interface ATXActionFeedbackWeights
+ (ATXActionFeedbackWeights)sharedInstance;
- (ATXActionFeedbackWeights)initWithAssetClass:(Class)class;
- (float)confirmWeightForFeedbackStage:(unint64_t)stage consumerSubType:(unsigned __int8)type;
- (float)rejectWeightForFeedbackStage:(unint64_t)stage consumerSubType:(unsigned __int8)type;
@end

@implementation ATXActionFeedbackWeights

- (float)confirmWeightForFeedbackStage:(unint64_t)stage consumerSubType:(unsigned __int8)type
{
  typeCopy = type;
  if (stage >= 8)
  {
    [ATXActionFeedbackWeights confirmWeightForFeedbackStage:consumerSubType:];
  }

  if (typeCopy >= 0x32)
  {
    [ATXActionFeedbackWeights confirmWeightForFeedbackStage:consumerSubType:];
  }

  _H0 = *&self->_confirmWeights[100 * stage + 2 * typeCopy];
  __asm { FCVT            S0, H0 }

  return result;
}

- (float)rejectWeightForFeedbackStage:(unint64_t)stage consumerSubType:(unsigned __int8)type
{
  typeCopy = type;
  if (stage >= 8)
  {
    [ATXActionFeedbackWeights rejectWeightForFeedbackStage:consumerSubType:];
  }

  if (typeCopy >= 0x32)
  {
    [ATXActionFeedbackWeights rejectWeightForFeedbackStage:consumerSubType:];
  }

  _H0 = *&self->_rejectWeights[100 * stage + 2 * typeCopy];
  __asm { FCVT            S0, H0 }

  return result;
}

- (ATXActionFeedbackWeights)initWithAssetClass:(Class)class
{
  v14.receiver = self;
  v14.super_class = ATXActionFeedbackWeights;
  v4 = [(ATXActionFeedbackWeights *)&v14 init];
  if (v4)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = MEMORY[0x277CEB3C0];
    if (!class)
    {
      class = objc_opt_class();
    }

    v7 = [v6 dictionaryWithLegacyPathForClass:class];
    v8 = [v7 objectForKeyedSubscript:@"Confirms"];
    v9 = [v7 objectForKeyedSubscript:@"Rejects"];
    v10 = v9;
    if (v8)
    {
      v11 = v9 == 0;
    }

    else
    {
      v11 = 1;
    }

    if (v11)
    {
      v12 = __atxlog_handle_default();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [(ATXActionFeedbackWeights *)v7 initWithAssetClass:v12];
      }
    }

    else
    {
      loadArray(v4->_confirmWeights, v8);
      loadArray(v4->_rejectWeights, v10);
    }

    objc_autoreleasePoolPop(v5);
  }

  return v4;
}

+ (ATXActionFeedbackWeights)sharedInstance
{
  if (sharedInstance__pasOnceToken11 != -1)
  {
    +[ATXActionFeedbackWeights sharedInstance];
  }

  v3 = sharedInstance__pasExprOnceResult_50;

  return v3;
}

void __42__ATXActionFeedbackWeights_sharedInstance__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_opt_new();
  v2 = sharedInstance__pasExprOnceResult_50;
  sharedInstance__pasExprOnceResult_50 = v1;

  objc_autoreleasePoolPop(v0);
}

- (void)confirmWeightForFeedbackStage:consumerSubType:.cold.1()
{
  OUTLINED_FUNCTION_1_4();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_18();
  [v0 handleFailureInMethod:@"feedbackStage < ATXActionFeedbackStageMax" object:? file:? lineNumber:? description:?];
}

- (void)confirmWeightForFeedbackStage:consumerSubType:.cold.2()
{
  OUTLINED_FUNCTION_1_4();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_18();
  [v0 handleFailureInMethod:@"consumerSubType < ATXConsumerSubTypeMax" object:? file:? lineNumber:? description:?];
}

- (void)rejectWeightForFeedbackStage:consumerSubType:.cold.1()
{
  OUTLINED_FUNCTION_1_4();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_18();
  [v0 handleFailureInMethod:@"feedbackStage < ATXActionFeedbackStageMax" object:? file:? lineNumber:? description:?];
}

- (void)rejectWeightForFeedbackStage:consumerSubType:.cold.2()
{
  OUTLINED_FUNCTION_1_4();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_18();
  [v0 handleFailureInMethod:@"consumerSubType < ATXConsumerSubTypeMax" object:? file:? lineNumber:? description:?];
}

- (void)initWithAssetClass:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_2263AA000, a2, OS_LOG_TYPE_ERROR, "Malformed weights asset %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end