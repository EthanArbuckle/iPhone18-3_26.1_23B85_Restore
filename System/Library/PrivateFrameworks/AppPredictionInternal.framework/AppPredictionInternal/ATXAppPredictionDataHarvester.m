@interface ATXAppPredictionDataHarvester
+ (id)_generateLoggingDictionaryFromPredictionItem:(id)a3 itemIndex:(unint64_t)a4 sessionUUID:(id)a5 numItemsInSession:(unint64_t)a6;
+ (void)harvestDataFromDocumentPredictionItem:(const ATXPredictionItem *)a3 itemIndex:(unint64_t)a4 itemOutcome:(unint64_t)a5 sessionOutcome:(unint64_t)a6 sessionUUID:(id)a7 numItemsInSession:(unint64_t)a8;
+ (void)harvestDataFromPredictionItem:(id)a3 itemIndex:(unint64_t)a4 itemOutcome:(unint64_t)a5 sessionOutcome:(unint64_t)a6 sessionUUID:(id)a7 numItemsInSession:(unint64_t)a8;
@end

@implementation ATXAppPredictionDataHarvester

+ (void)harvestDataFromPredictionItem:(id)a3 itemIndex:(unint64_t)a4 itemOutcome:(unint64_t)a5 sessionOutcome:(unint64_t)a6 sessionUUID:(id)a7 numItemsInSession:(unint64_t)a8
{
  v13 = a3;
  v14 = a7;
  v15 = __atxlog_handle_default();
  v16 = os_signpost_id_generate(v15);

  v17 = __atxlog_handle_default();
  v18 = v17;
  if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_2263AA000, v18, OS_SIGNPOST_INTERVAL_BEGIN, v16, "ATXAppPredictionDataHarvester.dataCollection", " enableTelemetry=YES ", buf, 2u);
  }

  v19 = [ATXAppPredictionDataHarvester _generateLoggingDictionaryFromPredictionItem:v13 itemIndex:a4 sessionUUID:v14 numItemsInSession:a8];
  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a5];
  [v19 setObject:v20 forKeyedSubscript:@"itemOutcome"];

  v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a6];
  [v19 setObject:v21 forKeyedSubscript:@"sessionOutcome"];

  AnalyticsSendEvent();
  v22 = __atxlog_handle_default();
  v23 = v22;
  if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
  {
    *v24 = 0;
    _os_signpost_emit_with_name_impl(&dword_2263AA000, v23, OS_SIGNPOST_INTERVAL_END, v16, "ATXAppPredictionDataHarvester.dataCollection", " enableTelemetry=YES ", v24, 2u);
  }
}

+ (id)_generateLoggingDictionaryFromPredictionItem:(id)a3 itemIndex:(unint64_t)a4 sessionUUID:(id)a5 numItemsInSession:(unint64_t)a6
{
  v8 = a3;
  v9 = a5;
  v10 = objc_opt_new();
  for (i = 0; i != 828; ++i)
  {
    v12 = objc_autoreleasePoolPush();
    v13 = MEMORY[0x277CCABB0];
    LODWORD(v14) = *([v8 scoreInputs] + 4 * i);
    v15 = [v13 numberWithFloat:v14];
    v16 = [_ATXScoreTypes aggdStringForScoreInput:i];
    [v10 setObject:v15 forKeyedSubscript:v16];

    objc_autoreleasePoolPop(v12);
  }

  v17 = MEMORY[0x277CCABB0];
  [v8 totalScore];
  v18 = [v17 numberWithFloat:?];
  [v10 setObject:v18 forKeyedSubscript:@"score"];

  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a4];
  [v10 setObject:v19 forKeyedSubscript:@"itemIndex"];

  [v10 setObject:v9 forKeyedSubscript:@"sessionUUID"];
  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a6];
  [v10 setObject:v20 forKeyedSubscript:@"numItemsInSession"];

  return v10;
}

+ (void)harvestDataFromDocumentPredictionItem:(const ATXPredictionItem *)a3 itemIndex:(unint64_t)a4 itemOutcome:(unint64_t)a5 sessionOutcome:(unint64_t)a6 sessionUUID:(id)a7 numItemsInSession:(unint64_t)a8
{
  v34 = a7;
  v13 = __atxlog_handle_default();
  v14 = os_signpost_id_generate(v13);

  v15 = __atxlog_handle_default();
  v16 = v15;
  v32 = v14 - 1;
  v33 = a8;
  if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_2263AA000, v16, OS_SIGNPOST_INTERVAL_BEGIN, v14, "ATXAppPredictionDataHarvester.document.dataCollection", " enableTelemetry=YES ", buf, 2u);
  }

  v17 = objc_opt_new();
  spid = v14;
  for (i = 0; i != 828; ++i)
  {
    v19 = objc_autoreleasePoolPush();
    *&v20 = a3->inputSignals[i];
    v21 = [MEMORY[0x277CCABB0] numberWithFloat:v20];
    v22 = [_ATXScoreTypes aggdStringForScoreInput:i];
    [v17 setObject:v21 forKeyedSubscript:v22];

    objc_autoreleasePoolPop(v19);
  }

  *&v23 = a3->score;
  v24 = [MEMORY[0x277CCABB0] numberWithFloat:v23];
  [v17 setObject:v24 forKeyedSubscript:@"score"];

  v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a4];
  [v17 setObject:v25 forKeyedSubscript:@"itemIndex"];

  [v17 setObject:v34 forKeyedSubscript:@"sessionUUID"];
  v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a5];
  [v17 setObject:v26 forKeyedSubscript:@"documentItemOutcome"];

  v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a6];
  [v17 setObject:v27 forKeyedSubscript:@"documentSessionOutcome"];

  v28 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v33];
  [v17 setObject:v28 forKeyedSubscript:@"numItemsInSession"];

  AnalyticsSendEvent();
  v29 = __atxlog_handle_default();
  v30 = v29;
  if (v32 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v29))
  {
    *v35 = 0;
    _os_signpost_emit_with_name_impl(&dword_2263AA000, v30, OS_SIGNPOST_INTERVAL_END, spid, "ATXAppPredictionDataHarvester.document.dataCollection", " enableTelemetry=YES ", v35, 2u);
  }
}

@end