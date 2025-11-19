@interface ATXPredictionJSONScoreLogger
+ (id)sharedInstance;
- (ATXPredictionJSONScoreLogger)init;
- (void)flushWithCompletion:(id)a3;
- (void)flushWithCompletion:(id)a3 filenameSuffix:(id)a4;
- (void)logInputDict:(id)a3 subscores:(id)a4 forBundleId:(id)a5;
- (void)logInputs:(id)a3 subscores:(id)a4 forBundleId:(id)a5;
- (void)setAssetVersion:(unint64_t)a3;
- (void)setCacheAge:(double)a3;
- (void)setConsumerSubType:(unsigned __int8)a3;
- (void)setPredictionClass:(id)a3;
@end

@implementation ATXPredictionJSONScoreLogger

+ (id)sharedInstance
{
  if (sharedInstance__pasOnceToken7_8 != -1)
  {
    +[ATXPredictionJSONScoreLogger sharedInstance];
  }

  v3 = sharedInstance__pasExprOnceResult_10;

  return v3;
}

void __46__ATXPredictionJSONScoreLogger_sharedInstance__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_opt_new();
  v2 = sharedInstance__pasExprOnceResult_10;
  sharedInstance__pasExprOnceResult_10 = v1;

  objc_autoreleasePoolPop(v0);
}

- (ATXPredictionJSONScoreLogger)init
{
  v25.receiver = self;
  v25.super_class = ATXPredictionJSONScoreLogger;
  v2 = [(ATXPredictionJSONScoreLogger *)&v25 init];
  if (v2)
  {
    v3 = objc_opt_new();
    history = v2->_history;
    v2->_history = v3;

    v5 = objc_opt_new();
    [(NSMutableDictionary *)v2->_history setObject:v5 forKeyedSubscript:@"predictionSubScores"];

    v6 = objc_opt_new();
    subscoreHistories = v2->_subscoreHistories;
    v2->_subscoreHistories = v6;

    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = [v9 stringByAppendingString:@"-fast"];
    v11 = [v10 UTF8String];
    v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v13 = dispatch_queue_attr_make_with_qos_class(v12, QOS_CLASS_UTILITY, 0);
    v14 = dispatch_queue_create(v11, v13);
    fastQueue = v2->_fastQueue;
    v2->_fastQueue = v14;

    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    v18 = [v17 stringByAppendingString:@"-slow"];
    v19 = [v18 UTF8String];
    v20 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v21 = dispatch_queue_attr_make_with_qos_class(v20, QOS_CLASS_BACKGROUND, 0);
    v22 = dispatch_queue_create(v19, v21);
    slowQueue = v2->_slowQueue;
    v2->_slowQueue = v22;
  }

  return v2;
}

- (void)logInputs:(id)a3 subscores:(id)a4 forBundleId:(id)a5
{
  v12 = a3;
  v8 = a4;
  v9 = a5;
  if ([MEMORY[0x277D42590] shouldIncludePredictionLogs])
  {
    v10 = [ATXScoreDict scoreDictFromDictionary:v12];
    v11 = [ATXScoreDict scoreDictFromDictionary:v8];
    [(ATXPredictionJSONScoreLogger *)self logInputDict:v10 subscores:v11 forBundleId:v9];
  }
}

- (void)logInputDict:(id)a3 subscores:(id)a4 forBundleId:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([MEMORY[0x277D42590] shouldIncludePredictionLogs])
  {
    if (v8)
    {
      if (v9)
      {
        if (v10)
        {
          fastQueue = self->_fastQueue;
          v34[0] = MEMORY[0x277D85DD0];
          v34[1] = 3221225472;
          v34[2] = __67__ATXPredictionJSONScoreLogger_logInputDict_subscores_forBundleId___block_invoke;
          v34[3] = &unk_2785978C0;
          v34[4] = self;
          v35 = v10;
          v36 = v8;
          v37 = v9;
          dispatch_async(fastQueue, v34);

          goto LABEL_13;
        }

        v12 = __atxlog_handle_default();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          [(ATXPredictionJSONScoreLogger *)v12 logInputDict:v27 subscores:v28 forBundleId:v29, v30, v31, v32, v33];
        }
      }

      else
      {
        v12 = __atxlog_handle_default();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          [(ATXPredictionJSONScoreLogger *)v12 logInputDict:v20 subscores:v21 forBundleId:v22, v23, v24, v25, v26];
        }
      }
    }

    else
    {
      v12 = __atxlog_handle_default();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [(ATXPredictionJSONScoreLogger *)v12 logInputDict:v13 subscores:v14 forBundleId:v15, v16, v17, v18, v19];
      }
    }
  }

LABEL_13:
}

void __67__ATXPredictionJSONScoreLogger_logInputDict_subscores_forBundleId___block_invoke(uint64_t a1)
{
  v36 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CCABB0];
  v3 = [MEMORY[0x277CBEAA8] date];
  [v3 timeIntervalSince1970];
  v4 = [v2 numberWithDouble:?];
  [*(*(a1 + 32) + 8) setObject:v4 forKeyedSubscript:@"secondsSince1970"];

  v5 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:@"predictionSubScores"];
  v6 = [v5 count];

  if ([MEMORY[0x277CEBCF0] consumerTypeForSubType:*(*(a1 + 32) + 16)] != 8 || v6 > 0x63)
  {
    if ([MEMORY[0x277CEBCF0] consumerTypeForSubType:*(*(a1 + 32) + 16)] == 9)
    {
      if (v6 >= 0xFA)
      {
        [*(a1 + 56) scoreForKey:@"TotalScore" found:0];
        goto LABEL_11;
      }
    }

    else if ([MEMORY[0x277CEBCF0] consumerTypeForSubType:*(*(a1 + 32) + 16)] != 10 || v6 >= 0xFA)
    {
      [*(a1 + 56) scoreForKey:@"TotalScore" found:0];
      if (!v6)
      {
LABEL_15:
        v7 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:@"predictionSubScores"];
        v25 = *(a1 + 40);
        v24[0] = @"bundleId";
        v24[1] = @"inputs";
        v24[2] = @"subscores";
        v26 = *(a1 + 56);
        v8 = MEMORY[0x277CBEAC0];
        v9 = &v25;
        v10 = v24;
        goto LABEL_16;
      }

LABEL_11:
      v12 = v11;
      for (i = 0; i != v6; ++i)
      {
        v14 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:@"predictionSubScores"];
        v15 = [v14 objectAtIndexedSubscript:i];
        v16 = [v15 objectForKeyedSubscript:@"subscores"];
        [v16 scoreForKey:@"TotalScore" found:0];
        v18 = v17;

        if (v18 < v12)
        {
          v21 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:@"predictionSubScores"];
          v22 = [v21 count];

          if (v22 == 100)
          {
            v23 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:@"predictionSubScores"];
            [v23 removeLastObject];
          }

          v7 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:@"predictionSubScores"];
          v28 = *(a1 + 40);
          v27[0] = @"bundleId";
          v27[1] = @"inputs";
          v27[2] = @"subscores";
          v29 = *(a1 + 56);
          v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v28 forKeys:v27 count:3];
          [v7 insertObject:v19 atIndex:i];
          goto LABEL_17;
        }
      }

      if (v6 > 0x63)
      {
        goto LABEL_18;
      }

      goto LABEL_15;
    }

    v7 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:@"predictionSubScores"];
    v31 = *(a1 + 40);
    v30[0] = @"action";
    v30[1] = @"inputs";
    v30[2] = @"subscores";
    v32 = *(a1 + 56);
    v8 = MEMORY[0x277CBEAC0];
    v9 = &v31;
    v10 = v30;
    goto LABEL_16;
  }

  v7 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:@"predictionSubScores"];
  v34 = *(a1 + 40);
  v33[0] = @"actionKey";
  v33[1] = @"inputs";
  v33[2] = @"subscores";
  v35 = *(a1 + 56);
  v8 = MEMORY[0x277CBEAC0];
  v9 = &v34;
  v10 = v33;
LABEL_16:
  v19 = [v8 dictionaryWithObjects:v9 forKeys:v10 count:3];
  [v7 addObject:v19];
LABEL_17:

LABEL_18:
  v20 = *MEMORY[0x277D85DE8];
}

- (void)setConsumerSubType:(unsigned __int8)a3
{
  fastQueue = self->_fastQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __51__ATXPredictionJSONScoreLogger_setConsumerSubType___block_invoke;
  v4[3] = &unk_27859AB70;
  v4[4] = self;
  v5 = a3;
  dispatch_async(fastQueue, v4);
}

- (void)setPredictionClass:(id)a3
{
  v4 = a3;
  fastQueue = self->_fastQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__ATXPredictionJSONScoreLogger_setPredictionClass___block_invoke;
  v7[3] = &unk_278596C10;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(fastQueue, v7);
}

- (void)setAssetVersion:(unint64_t)a3
{
  fastQueue = self->_fastQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __48__ATXPredictionJSONScoreLogger_setAssetVersion___block_invoke;
  v4[3] = &unk_278598278;
  v4[4] = self;
  v4[5] = a3;
  dispatch_async(fastQueue, v4);
}

void __48__ATXPredictionJSONScoreLogger_setAssetVersion___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 40)];
  [*(*(a1 + 32) + 8) setObject:v2 forKeyedSubscript:@"assetVersion"];
}

- (void)setCacheAge:(double)a3
{
  fastQueue = self->_fastQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __44__ATXPredictionJSONScoreLogger_setCacheAge___block_invoke;
  v4[3] = &unk_278598278;
  v4[4] = self;
  *&v4[5] = a3;
  dispatch_async(fastQueue, v4);
}

void __44__ATXPredictionJSONScoreLogger_setCacheAge___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 40)];
  [*(*(a1 + 32) + 8) setObject:v2 forKeyedSubscript:@"PredictionCacheAge"];
}

- (void)flushWithCompletion:(id)a3
{
  v4 = MEMORY[0x277CEBCF0];
  consumerSubType = self->_consumerSubType;
  v6 = a3;
  v7 = [v4 safeStringForConsumerSubtype:consumerSubType];
  [(ATXPredictionJSONScoreLogger *)self flushWithCompletion:v6 filenameSuffix:v7];
}

- (void)flushWithCompletion:(id)a3 filenameSuffix:(id)a4
{
  v7 = a3;
  v8 = a4;
  if ([MEMORY[0x277D42590] shouldIncludePredictionLogs])
  {
    sel_getName(a2);
    v9 = os_transaction_create();
    fastQueue = self->_fastQueue;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __67__ATXPredictionJSONScoreLogger_flushWithCompletion_filenameSuffix___block_invoke;
    v12[3] = &unk_27859AB98;
    v12[4] = self;
    v15 = v7;
    v13 = v9;
    v14 = v8;
    v11 = v9;
    dispatch_async(fastQueue, v12);
  }

  else
  {
    v7[2](v7);
  }
}

void __67__ATXPredictionJSONScoreLogger_flushWithCompletion_filenameSuffix___block_invoke(uint64_t a1)
{
  if ([*(*(a1 + 32) + 8) count])
  {
    v2 = *(*(a1 + 32) + 8);
    v3 = objc_opt_new();
    v4 = *(a1 + 32);
    v5 = *(v4 + 8);
    *(v4 + 8) = v3;

    v6 = objc_opt_new();
    [*(*(a1 + 32) + 8) setObject:v6 forKeyedSubscript:@"predictionSubScores"];

    v8 = *(a1 + 32);
    v7 = *(a1 + 40);
    v9 = *(v8 + 40);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __67__ATXPredictionJSONScoreLogger_flushWithCompletion_filenameSuffix___block_invoke_2;
    block[3] = &unk_278597828;
    block[4] = v8;
    v24 = v2;
    v25 = v7;
    v10 = v2;
    dispatch_async(v9, block);
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"appPredictionScoreLog_%@.json", *(a1 + 48)];
    v12 = [MEMORY[0x277CEBCB0] appPredictionDirectoryFile:v11];
    v14 = *(a1 + 32);
    v13 = *(a1 + 40);
    v15 = *(v14 + 40);
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __67__ATXPredictionJSONScoreLogger_flushWithCompletion_filenameSuffix___block_invoke_3;
    v18[3] = &unk_27859A860;
    v19 = v12;
    v20 = v14;
    v21 = v13;
    v22 = *(a1 + 56);
    v16 = v12;
    dispatch_async(v15, v18);
  }

  else
  {
    v17 = *(*(a1 + 56) + 16);

    v17();
  }
}

id __67__ATXPredictionJSONScoreLogger_flushWithCompletion_filenameSuffix___block_invoke_2(void *a1)
{
  [*(a1[4] + 24) addObject:a1[5]];
  if ([*(a1[4] + 24) count] >= 2)
  {
    [*(a1[4] + 24) removeObjectAtIndex:0];
  }

  v2 = a1[6];
  return objc_opt_self();
}

uint64_t __67__ATXPredictionJSONScoreLogger_flushWithCompletion_filenameSuffix___block_invoke_3(uint64_t a1)
{
  v2 = __atxlog_handle_default();
  v3 = os_signpost_id_generate(v2);

  v4 = __atxlog_handle_default();
  v5 = v4;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_2263AA000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v3, "JSONScoreLogWrite", " enableTelemetry=YES ", buf, 2u);
  }

  v6 = objc_autoreleasePoolPush();
  v7 = open_dprotected_np([*(a1 + 32) UTF8String], 1537, 3, 0, 384);
  if ((v7 & 0x80000000) == 0)
  {
    v8 = v7;
    v9 = fdopen(v7, "w");
    if (v9)
    {
      v10 = v9;
      [ATXScoreLogSerialization writeObject:*(*(a1 + 40) + 24) toFile:v9];
      fclose(v10);
    }

    else
    {
      close(v8);
    }
  }

  objc_autoreleasePoolPop(v6);
  v11 = __atxlog_handle_default();
  v12 = v11;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *v16 = 0;
    _os_signpost_emit_with_name_impl(&dword_2263AA000, v12, OS_SIGNPOST_INTERVAL_END, v3, "JSONScoreLogWrite", " enableTelemetry=YES ", v16, 2u);
  }

  v13 = *(a1 + 48);
  v14 = objc_opt_self();
  return (*(*(a1 + 56) + 16))();
}

@end