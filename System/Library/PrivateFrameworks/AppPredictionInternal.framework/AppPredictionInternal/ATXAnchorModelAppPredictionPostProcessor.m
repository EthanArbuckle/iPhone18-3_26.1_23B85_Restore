@interface ATXAnchorModelAppPredictionPostProcessor
- (ATXAnchorModelAppPredictionPostProcessor)initWithAnchorModelPrediction:(id)a3;
- (ATXAnchorModelAppPredictionPostProcessor)initWithAnchorModelPrediction:(id)a3 blacklist:(id)a4;
- (BOOL)shouldPredictAnchorModelAppPrediction;
@end

@implementation ATXAnchorModelAppPredictionPostProcessor

- (ATXAnchorModelAppPredictionPostProcessor)initWithAnchorModelPrediction:(id)a3
{
  v4 = a3;
  v5 = +[ATXAppPredictionBlacklist sharedInstance];
  v6 = [(ATXAnchorModelAppPredictionPostProcessor *)self initWithAnchorModelPrediction:v4 blacklist:v5];

  return v6;
}

- (ATXAnchorModelAppPredictionPostProcessor)initWithAnchorModelPrediction:(id)a3 blacklist:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = ATXAnchorModelAppPredictionPostProcessor;
  v9 = [(ATXAnchorModelAppPredictionPostProcessor *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_anchorModelPrediction, a3);
    v11 = objc_opt_new();
    storeWrapper = v10->_storeWrapper;
    v10->_storeWrapper = v11;

    objc_storeStrong(&v10->_blacklist, a4);
  }

  return v10;
}

- (BOOL)shouldPredictAnchorModelAppPrediction
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = [(ATXAnchorModelPrediction *)self->_anchorModelPrediction candidateType];
  v4 = [v3 isEqualToString:@"app"];

  if (!v4)
  {
    goto LABEL_13;
  }

  v5 = MEMORY[0x277CEB3B8];
  v6 = [(ATXAnchorModelPrediction *)self->_anchorModelPrediction candidateId];
  LOBYTE(v5) = [v5 isInstalledForBundle:v6];

  if (v5)
  {
    v7 = MEMORY[0x277CEB3B8];
    v8 = [(ATXAnchorModelPrediction *)self->_anchorModelPrediction candidateId];
    LOBYTE(v7) = [v7 isDeviceManagementPolicyOkForBundleId:v8];

    if (v7)
    {
      v9 = [(ATXAppPredictionBlacklist *)self->_blacklist disabledBundleIds];
      v10 = [(ATXAnchorModelPrediction *)self->_anchorModelPrediction candidateId];
      v11 = [v9 containsObject:v10];

      if (!v11)
      {
        result = 1;
        goto LABEL_14;
      }

      v12 = __atxlog_handle_anchor();
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_12;
      }

      v13 = [(ATXAnchorModelPrediction *)self->_anchorModelPrediction candidateId];
      v17 = 138412290;
      v18 = v13;
      v14 = "Skipping prediction for %@ because app is blacklisted.";
      goto LABEL_11;
    }

    v12 = __atxlog_handle_anchor();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [(ATXAnchorModelPrediction *)self->_anchorModelPrediction candidateId];
      v17 = 138412290;
      v18 = v13;
      v14 = "Skipping prediction for %@ because app is disabled from Screen Time.";
      goto LABEL_11;
    }
  }

  else
  {
    v12 = __atxlog_handle_anchor();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [(ATXAnchorModelPrediction *)self->_anchorModelPrediction candidateId];
      v17 = 138412290;
      v18 = v13;
      v14 = "Skipping prediction for %@ because app is not installed.";
LABEL_11:
      _os_log_impl(&dword_2263AA000, v12, OS_LOG_TYPE_DEFAULT, v14, &v17, 0xCu);
    }
  }

LABEL_12:

LABEL_13:
  result = 0;
LABEL_14:
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

@end