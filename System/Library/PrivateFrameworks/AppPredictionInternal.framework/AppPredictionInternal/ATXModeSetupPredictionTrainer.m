@interface ATXModeSetupPredictionTrainer
- (ATXModeSetupPredictionTrainer)init;
- (ATXModeSetupPredictionTrainer)initWithCacheBasePath:(id)a3;
- (BOOL)modeIsCurrentlyCreated:(unint64_t)a3;
- (BOOL)modeIsEligibleForSetupPrediction:(unint64_t)a3;
- (BOOL)trainSetupPredictionIfModeAffinityWasTrainedRecentlyForMode:(unint64_t)a3;
- (id)pathForModeEntityTypeIdentifier:(id)a3 modeIdentifier:(id)a4;
- (void)persistPredictionScores:(id)a3;
- (void)trainWithXPCActivity:(id)a3 shouldSkipRetrainingIfTrainedRecently:(BOOL)a4 shouldSkipEligiblilityCheckForSetupPrediction:(BOOL)a5;
@end

@implementation ATXModeSetupPredictionTrainer

- (ATXModeSetupPredictionTrainer)init
{
  v3 = [MEMORY[0x277CEBCB0] modeCachesRootDirectory];
  v4 = [(ATXModeSetupPredictionTrainer *)self initWithCacheBasePath:v3];

  return v4;
}

- (ATXModeSetupPredictionTrainer)initWithCacheBasePath:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = ATXModeSetupPredictionTrainer;
  v5 = [(ATXModeSetupPredictionTrainer *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    cacheBasePath = v5->_cacheBasePath;
    v5->_cacheBasePath = v6;
  }

  return v5;
}

- (void)trainWithXPCActivity:(id)a3 shouldSkipRetrainingIfTrainedRecently:(BOOL)a4 shouldSkipEligiblilityCheckForSetupPrediction:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v43 = *MEMORY[0x277D85DE8];
  v35 = a3;
  if (v6)
  {
    v8 = [(ATXModeSetupPredictionTrainer *)self pathForModeSetupPredictionCacheWithDirectory:@"modeSetupPredictions"];
    v9 = [MEMORY[0x277CEBCB0] modificationDateOfFileAtPath:v8];
    [v9 timeIntervalSinceNow];
    v11 = v10;

    if (v11 < 0.0 && v11 > -21600.0)
    {
      v12 = __atxlog_handle_modes();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v42 = -v11;
        _os_log_impl(&dword_2263AA000, v12, OS_LOG_TYPE_DEFAULT, "ATXModeSetupPredictionTrainer: Skipping inference because this was done recently. Cache age: %.2f", buf, 0xCu);
      }

      goto LABEL_30;
    }
  }

  v13 = __atxlog_handle_modes();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2263AA000, v13, OS_LOG_TYPE_DEFAULT, "ATXModeSetupPredictionTrainer: Started running Mode Setup Prediction inference...", buf, 2u);
  }

  v34 = objc_opt_new();
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = allModesForModeSetupPrediction();
  v14 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (!v14)
  {
    goto LABEL_24;
  }

  v16 = v14;
  v17 = *v37;
  *&v15 = 138412290;
  v32 = v15;
  while (2)
  {
    v18 = 0;
    do
    {
      if (*v37 != v17)
      {
        objc_enumerationMutation(obj);
      }

      v19 = *(*(&v36 + 1) + 8 * v18);
      v20 = objc_autoreleasePoolPush();
      v21 = [v19 unsignedIntegerValue];
      if (v5)
      {
        self->_modeIsEligibleForSetupPrediction = 1;
      }

      else
      {
        v22 = [(ATXModeSetupPredictionTrainer *)self modeIsEligibleForSetupPrediction:v21];
        self->_modeIsEligibleForSetupPrediction = v22;
        if (!v22)
        {
          goto LABEL_21;
        }
      }

      v23 = __atxlog_handle_modes();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        ATXModeToString();
        v24 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
        *buf = v32;
        v42 = v24;
        _os_log_impl(&dword_2263AA000, v23, OS_LOG_TYPE_DEFAULT, "ATXModeSetupPredictionTrainer: Running Mode Prediction inference for Mode %@...", buf, 0xCu);
      }

      v25 = [[ATXModeSetupPredictionModel alloc] initWithMode:v21];
      [(ATXModeSetupPredictionModel *)v25 probabilityScore];
      v26 = [MEMORY[0x277CCABB0] numberWithDouble:?];
      v27 = ATXModeToString();
      [v34 setObject:v26 forKey:v27];

LABEL_21:
      if ([v35 didDefer])
      {
        v29 = __atxlog_handle_modes();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          ATXModeToString();
          v30 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
          *buf = v32;
          v42 = v30;
          _os_log_impl(&dword_2263AA000, v29, OS_LOG_TYPE_DEFAULT, "ATXModeSetupPredictionTrainer: Finished making inference for mode %@, but deferring further inference for remaining modes because XPC activity asked for deferral.", buf, 0xCu);
        }

        v8 = v34;
        [(ATXModeSetupPredictionTrainer *)self persistPredictionScores:v34];
        objc_autoreleasePoolPop(v20);

        goto LABEL_30;
      }

      objc_autoreleasePoolPop(v20);
      ++v18;
    }

    while (v16 != v18);
    v16 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
    if (v16)
    {
      continue;
    }

    break;
  }

LABEL_24:

  v28 = __atxlog_handle_modes();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2263AA000, v28, OS_LOG_TYPE_DEFAULT, "ATXModeSetupPredictionTrainer: Finished running Mode Setup Prediction inference.", buf, 2u);
  }

  v8 = v34;
  [(ATXModeSetupPredictionTrainer *)self persistPredictionScores:v34];
LABEL_30:

  v31 = *MEMORY[0x277D85DE8];
}

- (BOOL)trainSetupPredictionIfModeAffinityWasTrainedRecentlyForMode:(unint64_t)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = ATXModeToString();
  v5 = [(ATXModeSetupPredictionTrainer *)self pathForModeEntityTypeIdentifier:@"apps" modeIdentifier:v4];

  v6 = [MEMORY[0x277CEBCB0] modificationDateOfFileAtPath:v5];
  [v6 timeIntervalSinceNow];
  v8 = v7;

  v9 = v8 > -604800.0 && v8 < 0.0;
  if (!v9)
  {
    v10 = __atxlog_handle_modes();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = ATXModeToString();
      v14 = 138412290;
      v15 = v11;
      _os_log_impl(&dword_2263AA000, v10, OS_LOG_TYPE_DEFAULT, "ATXModeSetupPredictionTrainer: Skipping Mode Setup Prediction inference because the Mode Affinity model for this mode: %@ has not been trained within the last 7 days", &v14, 0xCu);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
  return v9;
}

- (BOOL)modeIsCurrentlyCreated:(unint64_t)a3
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v4 = [MEMORY[0x277CEB440] sharedInstance];
  v5 = [v4 getAllModeConfigurationsWithoutCache];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __56__ATXModeSetupPredictionTrainer_modeIsCurrentlyCreated___block_invoke;
  v8[3] = &unk_27859F510;
  v6 = v4;
  v9 = v6;
  v10 = &v12;
  v11 = a3;
  [v5 enumerateKeysAndObjectsUsingBlock:v8];
  LOBYTE(a3) = *(v13 + 24);

  _Block_object_dispose(&v12, 8);
  return a3;
}

void __56__ATXModeSetupPredictionTrainer_modeIsCurrentlyCreated___block_invoke(void *a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a1[4];
  v8 = [v6 mode];
  v9 = [v7 atxModeForDNDSemanticType:{objc_msgSend(v8, "semanticType")}];

  if (a1[6] == v9)
  {
    v10 = [v6 created];

    if (v10)
    {
      *(*(a1[5] + 8) + 24) = 1;
      v11 = __atxlog_handle_modes();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = a1[6];
        v13 = ATXModeToString();
        v15 = 138412290;
        v16 = v13;
        _os_log_impl(&dword_2263AA000, v11, OS_LOG_TYPE_DEFAULT, "ATXModeSetupPredictionTrainer: Skipping Mode Setup Prediction inference because this Mode: %@ is currently created.", &v15, 0xCu);
      }

      *a4 = 1;
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (BOOL)modeIsEligibleForSetupPrediction:(unint64_t)a3
{
  if ([(ATXModeSetupPredictionTrainer *)self modeIsCurrentlyCreated:?])
  {
    return 0;
  }

  return [(ATXModeSetupPredictionTrainer *)self trainSetupPredictionIfModeAffinityWasTrainedRecentlyForMode:a3];
}

- (id)pathForModeEntityTypeIdentifier:(id)a3 modeIdentifier:(id)a4
{
  cacheBasePath = self->_cacheBasePath;
  v6 = MEMORY[0x277CCACA8];
  v7 = a4;
  v8 = a3;
  v9 = [[v6 alloc] initWithFormat:@"%@_%@", v8, v7];

  v10 = [(NSString *)cacheBasePath stringByAppendingPathComponent:v9];

  return v10;
}

- (void)persistPredictionScores:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v18 = 0;
  v6 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v4 requiringSecureCoding:1 error:&v18];
  v7 = v18;
  v8 = v7;
  if (v6)
  {
    v9 = 1;
  }

  else
  {
    v9 = v7 == 0;
  }

  if (v9)
  {
    v14 = [(ATXModeSetupPredictionTrainer *)self pathForModeSetupPredictionCacheWithDirectory:@"modeSetupPredictions"];
    v17 = 0;
    v10 = [v6 writeToFile:v14 options:1073741825 error:&v17];
    v11 = v17;
    v12 = __atxlog_handle_modes();
    v13 = v12;
    if (v10)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *v16 = 0;
        _os_log_impl(&dword_2263AA000, v13, OS_LOG_TYPE_DEFAULT, "ATXModeSetupPredictionTrainer: SUCCESS - Finished writing mode setup probability scores.", v16, 2u);
      }
    }

    else if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      [(ATXModeSetupPredictionTrainer *)v11 persistPredictionScores:v13];
    }
  }

  else
  {
    v14 = __atxlog_handle_modes();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      [(ATXModeSetupPredictionTrainer *)v8 persistPredictionScores:v14];
    }
  }

  objc_autoreleasePoolPop(v5);
}

- (void)persistPredictionScores:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_fault_impl(&dword_2263AA000, a2, OS_LOG_TYPE_FAULT, "ATXModeSetupPredictionTrainer: FAILURE - Unable to write mode setup probability scores with error: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)persistPredictionScores:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_fault_impl(&dword_2263AA000, a2, OS_LOG_TYPE_FAULT, "ATXModeSetupPredictionTrainer: FAILURE - Unable to archive mode setup probability scores with error: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end