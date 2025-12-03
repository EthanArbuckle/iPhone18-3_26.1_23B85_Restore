@interface ATXAppBlendingUpdater
+ (id)clientModelForAppPredictionsForClientModelId:(id)id;
+ (id)clientModelIdForConsumerSubType:(unsigned __int8)type;
+ (id)clientModelSpecForAppPredictionsForClientModelId:(id)id;
@end

@implementation ATXAppBlendingUpdater

+ (id)clientModelIdForConsumerSubType:(unsigned __int8)type
{
  v5 = 0;
  if (type <= 0x25u)
  {
    if (((1 << type) & 0x39E) != 0)
    {
      v6 = 15;
LABEL_4:
      v5 = [MEMORY[0x277D42070] clientModelIdFromClientModelType:{v6, v3}];
      goto LABEL_5;
    }

    if (type == 35)
    {
      v6 = 17;
      goto LABEL_4;
    }

    if (type == 37)
    {
      v6 = 16;
      goto LABEL_4;
    }
  }

LABEL_5:

  return v5;
}

+ (id)clientModelSpecForAppPredictionsForClientModelId:(id)id
{
  idCopy = id;
  v4 = +[_ATXGlobals sharedInstance];
  appPredictionBlendingModelVersion = [v4 appPredictionBlendingModelVersion];

  v6 = [objc_alloc(MEMORY[0x277D42078]) initWithClientModelId:idCopy clientModelVersion:appPredictionBlendingModelVersion engagementResetPolicy:0];

  return v6;
}

+ (id)clientModelForAppPredictionsForClientModelId:(id)id
{
  idCopy = id;
  v4 = objc_alloc(MEMORY[0x277D42070]);
  v5 = +[ATXClientModelSuggestionReceiver sharedInstance];
  blendingLayerServer = [v5 blendingLayerServer];
  v7 = [v4 initWithClientModelId:idCopy blendingLayerServer:blendingLayerServer];

  return v7;
}

void __63__ATXAppBlendingUpdater_updateBlendingLayerForConsumerSubType___block_invoke(uint64_t a1, int a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (a2)
  {
    v6 = __atxlog_handle_default();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [MEMORY[0x277CEBCF0] stringForConsumerSubtype:*(a1 + 32)];
      v10 = 138412290;
      v11 = v7;
      _os_log_impl(&dword_2263AA000, v6, OS_LOG_TYPE_DEFAULT, "Successfully updated blending for %@", &v10, 0xCu);
    }
  }

  else
  {
    v6 = __atxlog_handle_default();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = [MEMORY[0x277CEBCF0] stringForConsumerSubtype:*(a1 + 32)];
      __63__ATXAppBlendingUpdater_updateBlendingLayerForConsumerSubType___block_invoke_cold_1(v8, v5, &v10);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

+ (void)updateBlendingLayerForConsumerSubType:(os_log_t)log .cold.1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_2263AA000, log, OS_LOG_TYPE_ERROR, "Nil clientModelId found when trying to update blending for %@.", buf, 0xCu);
}

+ (void)updateBlendingLayerForConsumerSubType:(uint64_t)a3 .cold.2(void *a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_0_6(a1, a2, a3, 5.778e-34);
  _os_log_error_impl(&dword_2263AA000, v5, OS_LOG_TYPE_ERROR, "Nil cacheFileData found when trying to update blending for %@. Error: %@", v4, 0x16u);
}

void __63__ATXAppBlendingUpdater_updateBlendingLayerForConsumerSubType___block_invoke_cold_1(void *a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_0_6(a1, a2, a3, 5.778e-34);
  _os_log_error_impl(&dword_2263AA000, v5, OS_LOG_TYPE_ERROR, "Error updating blending for %@ with error: %@", v4, 0x16u);
}

@end