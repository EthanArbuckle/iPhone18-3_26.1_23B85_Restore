@interface ATXModeCorrelatedAppsDataSource
- (ATXModeCorrelatedAppsDataSource)initWithDevice:(id)a3;
- (void)modeCorrelatedAppsInCurrentModeWithCallback:(id)a3;
@end

@implementation ATXModeCorrelatedAppsDataSource

- (ATXModeCorrelatedAppsDataSource)initWithDevice:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ATXModeCorrelatedAppsDataSource;
  v6 = [(ATXModeCorrelatedAppsDataSource *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_device, a3);
  }

  return v7;
}

- (void)modeCorrelatedAppsInCurrentModeWithCallback:(id)a3
{
  v41 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277D41C60] currentModeEvent];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 eventBody];
    [v6 atx_dndModeSemanticType];

    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:DNDModeSemanticTypeToATXActivityType()];
    v8 = objc_alloc(MEMORY[0x277CBEAA8]);
    [v5 timestamp];
    v9 = [v8 initWithTimeIntervalSinceReferenceDate:?];
  }

  else
  {
    v9 = 0;
    v7 = 0;
  }

  v10 = [MEMORY[0x277D41C68] currentModeEvent];
  if (v10)
  {
    v11 = objc_alloc(MEMORY[0x277CBEAA8]);
    [v10 timestamp];
    v12 = [v11 initWithTimeIntervalSinceReferenceDate:?];
    v13 = v12;
    if (v9)
    {
      [v12 timeIntervalSinceDate:v9];
      if (v14 <= 0.0)
      {
LABEL_13:

        goto LABEL_14;
      }

      v15 = MEMORY[0x277CCABB0];
      v16 = [v10 eventBody];
      [v16 modeType];
      v17 = [v15 numberWithUnsignedInteger:BMUserFocusInferredModeTypeToActivity()];

      v18 = v13;
      v19 = __atxlog_handle_heuristic();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v20 = "ATXModeCorrelatedAppsDataSource: using more recent mode event from inferred stream instead";
LABEL_11:
        _os_log_impl(&dword_23E3EA000, v19, OS_LOG_TYPE_DEFAULT, v20, buf, 2u);
      }
    }

    else
    {
      v21 = MEMORY[0x277CCABB0];
      v22 = [v10 eventBody];
      [v22 modeType];
      v17 = [v21 numberWithUnsignedInteger:BMUserFocusInferredModeTypeToActivity()];

      v23 = v13;
      v19 = __atxlog_handle_heuristic();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v20 = "ATXModeCorrelatedAppsDataSource: using latest mode event from inferred stream";
        goto LABEL_11;
      }
    }

    v9 = v13;
    v7 = v17;
    goto LABEL_13;
  }

LABEL_14:
  if (!v7)
  {
    v27 = __atxlog_handle_heuristic();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v40 = 0;
      _os_log_impl(&dword_23E3EA000, v27, OS_LOG_TYPE_DEFAULT, "ATXModeCorrelatedAppsDataSource: user not currently in a mode: %@", buf, 0xCu);
    }

    goto LABEL_22;
  }

  [v7 integerValue];
  v24 = ATXModeFromActivityType();
  v25 = __atxlog_handle_heuristic();
  v26 = os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);
  if (v24 == 12)
  {
    if (v26)
    {
      *buf = 0;
      _os_log_impl(&dword_23E3EA000, v25, OS_LOG_TYPE_DEFAULT, "ATXModeCorrelatedAppsDataSource: user currently in custom mode, returning no apps", buf, 2u);
    }

LABEL_22:
    (*(v3 + 2))(v3, 0, 0, 0);
    goto LABEL_29;
  }

  if (v26)
  {
    v28 = ATXModeToString();
    *buf = 138412290;
    v40 = v28;
    _os_log_impl(&dword_23E3EA000, v25, OS_LOG_TYPE_DEFAULT, "ATXModeCorrelatedAppsDataSource: user currently in %@ mode", buf, 0xCu);
  }

  v29 = objc_alloc(MEMORY[0x277CBEBD0]);
  v30 = [v29 initWithSuiteName:*MEMORY[0x277CEBD00]];
  v31 = [v30 objectForKey:@"ATXModeRelevanceScoreThresholdOverride"];

  if (v31)
  {
    [v30 doubleForKey:@"ATXModeRelevanceScoreThresholdOverride"];
    v33 = v32;
  }

  else
  {
    v33 = 0x3FE4CCCCCCCCCCCDLL;
  }

  v34 = objc_opt_new();
  v35 = [v34 rankedAppsForMode:v24];
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __79__ATXModeCorrelatedAppsDataSource_modeCorrelatedAppsInCurrentModeWithCallback___block_invoke;
  v38[3] = &__block_descriptor_40_e36___NSString_16__0__ATXAppModeEntity_8l;
  v38[4] = v33;
  v36 = [v35 _pas_mappedArrayWithTransform:v38];

  (*(v3 + 2))(v3, v36, v9, 0);
LABEL_29:

  v37 = *MEMORY[0x277D85DE8];
}

id __79__ATXModeCorrelatedAppsDataSource_modeCorrelatedAppsInCurrentModeWithCallback___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 scoreMetadata];
  [v4 score];
  v6 = v5;
  v7 = *(a1 + 32);

  if (v6 <= v7)
  {
    v12 = 0;
  }

  else
  {
    v8 = __atxlog_handle_heuristic();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [v3 bundleId];
      v10 = [v3 scoreMetadata];
      [v10 score];
      v15 = 138412546;
      v16 = v9;
      v17 = 2048;
      v18 = v11;
      _os_log_impl(&dword_23E3EA000, v8, OS_LOG_TYPE_DEFAULT, "ATXModeCorrelatedAppsDataSource: %@ passes threshold with score: %f", &v15, 0x16u);
    }

    v12 = [v3 bundleId];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

@end