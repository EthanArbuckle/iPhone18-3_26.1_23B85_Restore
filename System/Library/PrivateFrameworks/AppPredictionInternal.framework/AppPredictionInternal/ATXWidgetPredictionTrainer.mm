@interface ATXWidgetPredictionTrainer
+ (BOOL)shouldTrainModelOnDeviceWithTimeOfLatestTraining:(id)a3;
+ (id)compiledModelURLForModelName:(id)a3;
+ (void)moveOriginalModelToWriteablePath:(id)a3;
- (ATXWidgetPredictionTrainer)initWithInformationStore:(id)a3 distinctScoreCounts:(id)a4;
- (id)_timeOfLatestTraining;
- (void)modelPredictionWithSampleDictionaryFeatureProvider:(id)a3 withMLModel:(id)a4;
- (void)trainWidgetPredictionModelWithActivity:(id)a3;
- (void)trainWidgetPredictionModelWithMLArrayBatchProvider:(id)a3 modelURL:(id)a4 andSaveToURL:(id)a5 withActivity:(id)a6;
@end

@implementation ATXWidgetPredictionTrainer

- (ATXWidgetPredictionTrainer)initWithInformationStore:(id)a3 distinctScoreCounts:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = ATXWidgetPredictionTrainer;
  v9 = [(ATXWidgetPredictionTrainer *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_informationStore, a3);
    v11 = [[ATXWidgetPredictionTrainingDatasetBuilder alloc] initWithDistinctScoreCounts:v8];
    datasetBuilder = v10->_datasetBuilder;
    v10->_datasetBuilder = v11;
  }

  return v10;
}

- (void)trainWidgetPredictionModelWithActivity:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [(ATXWidgetPredictionTrainer *)self _timeOfLatestTraining];
  LODWORD(v5) = [v5 shouldTrainModelOnDeviceWithTimeOfLatestTraining:v6];

  if (v5)
  {
    v7 = __atxlog_handle_timeline();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      LOWORD(v20) = 0;
      _os_log_impl(&dword_2263AA000, v7, OS_LOG_TYPE_INFO, "ATXWidgetPredictionTrainer: Preparing to train; it has been sufficiently long since the widget prediction model was trained on-device.", &v20, 2u);
    }

    v8 = [(ATXInformationStore *)self->_informationStore fetchWidgetEngagementRecords];
    v9 = [(ATXWidgetPredictionTrainingDatasetBuilder *)self->_datasetBuilder createMLArrayBatchProviderFromTrainingArray:v8];
    v10 = [objc_opt_class() compiledModelURLForModelName:@"ATXWidgetPredictionMLModel"];
    v11 = [objc_opt_class() compiledModelURLForModelName:@"ATXPersonalizedWidgetPredictionMLModel"];
    [objc_opt_class() moveOriginalModelToWriteablePath:v10];
    v12 = [MEMORY[0x277CCAA00] defaultManager];
    v13 = [v11 path];
    v14 = [v12 isReadableFileAtPath:v13];

    if (v14)
    {
      v15 = __atxlog_handle_timeline();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = [v11 path];
        v20 = 138412290;
        v21 = v16;
        _os_log_impl(&dword_2263AA000, v15, OS_LOG_TYPE_INFO, "Using model from the previous round of on-device training at path: %@", &v20, 0xCu);
      }

      v17 = v11;
      v10 = v17;
    }

    if ([v4 didDefer])
    {
      v18 = __atxlog_handle_timeline();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v20) = 0;
        _os_log_impl(&dword_2263AA000, v18, OS_LOG_TYPE_DEFAULT, "ATXWidgetPredictionTrainer: Deferring model training", &v20, 2u);
      }
    }

    else
    {
      [(ATXWidgetPredictionTrainer *)self trainWidgetPredictionModelWithMLArrayBatchProvider:v9 modelURL:v10 andSaveToURL:v11 withActivity:v4];
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

+ (BOOL)shouldTrainModelOnDeviceWithTimeOfLatestTraining:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = [a3 dateByAddingTimeInterval:604800.0];
  if (a3 && ([MEMORY[0x277CBEAA8] now], v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "laterDate:", v5), v6 = objc_claimAutoreleasedReturnValue(), v6, v5, v6 == v4))
  {
    v8 = __atxlog_handle_timeline();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = MEMORY[0x277CCABB0];
      v10 = [MEMORY[0x277CBEAA8] now];
      [v4 timeIntervalSinceDate:v10];
      v12 = [v9 numberWithDouble:v11 / 3600.0];
      v15 = 138412290;
      v16 = v12;
      _os_log_impl(&dword_2263AA000, v8, OS_LOG_TYPE_INFO, "ATXWidgetPredictionTrainer: Next training date is in the future. Model will be retrained on-device in %@ hours", &v15, 0xCu);
    }

    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v7;
}

- (void)trainWidgetPredictionModelWithMLArrayBatchProvider:(id)a3 modelURL:(id)a4 andSaveToURL:(id)a5 withActivity:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [v10 array];
  v15 = [v14 count];

  if (!v15)
  {
    v23 = __atxlog_handle_timeline();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [ATXWidgetPredictionTrainer trainWidgetPredictionModelWithMLArrayBatchProvider:modelURL:andSaveToURL:withActivity:];
    }

    goto LABEL_14;
  }

  if (!v12)
  {
    v23 = __atxlog_handle_timeline();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
    {
      [ATXWidgetPredictionTrainer trainWidgetPredictionModelWithMLArrayBatchProvider:v23 modelURL:? andSaveToURL:? withActivity:?];
    }

LABEL_14:

    goto LABEL_15;
  }

  v39[0] = 0;
  v39[1] = v39;
  v39[2] = 0x3032000000;
  v39[3] = __Block_byref_object_copy__71;
  v39[4] = __Block_byref_object_dispose__71;
  v40 = 0;
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__71;
  v37 = __Block_byref_object_dispose__71;
  v38 = dispatch_semaphore_create(0);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __116__ATXWidgetPredictionTrainer_trainWidgetPredictionModelWithMLArrayBatchProvider_modelURL_andSaveToURL_withActivity___block_invoke;
  aBlock[3] = &unk_27859F258;
  v32 = v13;
  v16 = _Block_copy(aBlock);
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __116__ATXWidgetPredictionTrainer_trainWidgetPredictionModelWithMLArrayBatchProvider_modelURL_andSaveToURL_withActivity___block_invoke_29;
  v26[3] = &unk_27859F280;
  v29 = &v33;
  v30 = v39;
  v27 = v12;
  v28 = self;
  v17 = _Block_copy(v26);
  v18 = [objc_alloc(MEMORY[0x277CBFF80]) initForEvents:3 progressHandler:v16 completionHandler:v17];
  v19 = __atxlog_handle_timeline();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_2263AA000, v19, OS_LOG_TYPE_INFO, "ATXWidgetPredictionTrainer: Starting MLUpdateTask", buf, 2u);
  }

  v24 = 0;
  v20 = [MEMORY[0x277CBFF88] updateTaskForModelAtURL:v11 trainingData:v10 progressHandlers:v18 error:&v24];
  v21 = v24;
  if (v21)
  {
    v22 = __atxlog_handle_timeline();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [ATXWidgetPredictionTrainer trainWidgetPredictionModelWithMLArrayBatchProvider:modelURL:andSaveToURL:withActivity:];
    }
  }

  [v20 resume];
  dispatch_semaphore_wait(v34[5], 0x384uLL);

  _Block_object_dispose(&v33, 8);
  _Block_object_dispose(v39, 8);

LABEL_15:
}

void __116__ATXWidgetPredictionTrainer_trainWidgetPredictionModelWithMLArrayBatchProvider_modelURL_andSaveToURL_withActivity___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 task];
  v5 = [v4 error];

  if (v5)
  {
    v6 = __atxlog_handle_timeline();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __116__ATXWidgetPredictionTrainer_trainWidgetPredictionModelWithMLArrayBatchProvider_modelURL_andSaveToURL_withActivity___block_invoke_cold_1(v3);
    }
  }

  if ([*(a1 + 32) didDefer])
  {
    v7 = __atxlog_handle_timeline();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_2263AA000, v7, OS_LOG_TYPE_DEFAULT, "ATXWidgetPredictionTrainer: Deferring model training", v8, 2u);
    }
  }
}

void __116__ATXWidgetPredictionTrainer_trainWidgetPredictionModelWithMLArrayBatchProvider_modelURL_andSaveToURL_withActivity___block_invoke_29(void *a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 task];
  v5 = [v4 state];

  if (v5 == 5)
  {
    v6 = __atxlog_handle_timeline();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __116__ATXWidgetPredictionTrainer_trainWidgetPredictionModelWithMLArrayBatchProvider_modelURL_andSaveToURL_withActivity___block_invoke_29_cold_2(v3);
    }
  }

  else
  {
    v7 = [v3 task];
    v8 = [v7 state];

    if (v8 == 4)
    {
      v9 = __atxlog_handle_timeline();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = a1[4];
        *buf = 138543362;
        v22 = v10;
        _os_log_impl(&dword_2263AA000, v9, OS_LOG_TYPE_INFO, "Success! Completed on-device training of widget prediction model; Saving the personalized model to path: %{public}@", buf, 0xCu);
      }
    }

    v11 = [v3 model];
    v12 = a1[4];
    v13 = *(a1[7] + 8);
    obj = *(v13 + 40);
    v14 = [v11 writeToURL:v12 error:&obj];
    objc_storeStrong((v13 + 40), obj);

    v15 = *(*(a1[7] + 8) + 40);
    v16 = __atxlog_handle_timeline();
    v6 = v16;
    if (v15 || (v14 & 1) == 0)
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        __116__ATXWidgetPredictionTrainer_trainWidgetPredictionModelWithMLArrayBatchProvider_modelURL_andSaveToURL_withActivity___block_invoke_29_cold_1((a1 + 7));
      }
    }

    else
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = a1[4];
        *buf = 138543362;
        v22 = v17;
        _os_log_impl(&dword_2263AA000, v6, OS_LOG_TYPE_INFO, "Successfully saved the personalized model at path: %{public}@", buf, 0xCu);
      }

      v18 = a1[5];
      v6 = [MEMORY[0x277CBEAA8] now];
      [v18 _updateTimeOfLatestTrainingTo:v6];
    }
  }

  dispatch_semaphore_signal(*(*(a1[6] + 8) + 40));
  v19 = *MEMORY[0x277D85DE8];
}

+ (id)compiledModelURLForModelName:(id)a3
{
  if (a3)
  {
    v3 = MEMORY[0x277CEBCB0];
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.mlmodelc", a3];
    v5 = [v3 widgetPredictionModelFileWithFilename:v4];

    v6 = [MEMORY[0x277CBEBC0] fileURLWithPath:v5];
  }

  else
  {
    v7 = __atxlog_handle_timeline();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      +[ATXWidgetPredictionTrainer compiledModelURLForModelName:];
    }

    v6 = 0;
  }

  return v6;
}

+ (void)moveOriginalModelToWriteablePath:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [@"ATXWidgetPredictionMLModel" stringByAppendingPathExtension:@"mlmodelc"];
  v5 = MEMORY[0x277CBEBC0];
  v6 = [MEMORY[0x277CEB3C0] asset];
  v7 = [v6 filesystemPathForAssetDataRelativePath:v4];
  v8 = [v5 fileURLWithPath:v7];

  v9 = __atxlog_handle_timeline();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = [v8 path];
    v11 = [v3 path];
    *buf = 138543618;
    v24 = v10;
    v25 = 2114;
    v26 = v11;
    _os_log_impl(&dword_2263AA000, v9, OS_LOG_TYPE_INFO, "Moving original model from %{public}@ to %{public}@", buf, 0x16u);
  }

  v12 = [MEMORY[0x277CCAA00] defaultManager];
  v13 = [v8 path];
  if (![v12 isReadableFileAtPath:v13])
  {
    goto LABEL_8;
  }

  v14 = [MEMORY[0x277CCAA00] defaultManager];
  v15 = [v3 path];
  v16 = [v14 isReadableFileAtPath:v15];

  if ((v16 & 1) == 0)
  {
    v17 = [MEMORY[0x277CCAA00] defaultManager];
    v22 = 0;
    v18 = [v17 copyItemAtURL:v8 toURL:v3 error:&v22];
    v12 = v22;

    if (v18)
    {
LABEL_9:

      goto LABEL_10;
    }

    v13 = __atxlog_handle_timeline();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v20 = [v8 path];
      v21 = [v3 path];
      *buf = 138543874;
      v24 = v20;
      v25 = 2114;
      v26 = v21;
      v27 = 2114;
      v28 = v12;
      _os_log_error_impl(&dword_2263AA000, v13, OS_LOG_TYPE_ERROR, "Failed to move file from %{public}@ to %{public}@ with error %{public}@", buf, 0x20u);
    }

LABEL_8:

    goto LABEL_9;
  }

LABEL_10:

  v19 = *MEMORY[0x277D85DE8];
}

- (id)_timeOfLatestTraining
{
  v3 = objc_alloc(MEMORY[0x277CBEBD0]);
  v4 = [v3 initWithSuiteName:*MEMORY[0x277CEBD08]];
  defaults = self->_defaults;
  self->_defaults = v4;

  v6 = self->_defaults;

  return [(NSUserDefaults *)v6 objectForKey:@"timestampOfLastTraining"];
}

- (void)modelPredictionWithSampleDictionaryFeatureProvider:(id)a3 withMLModel:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if (!v6)
  {
    v7 = objc_opt_new();
    [v7 setComputeUnits:0];
    v8 = [ATXWidgetPredictionTrainer compiledModelURLForModelName:@"ATXPersonalizedWidgetPredictionMLModel"];
    v20 = 0;
    v6 = [MEMORY[0x277CBFF20] modelWithContentsOfURL:v8 configuration:v7 error:&v20];
    v9 = v20;
    if (v9)
    {
      v10 = __atxlog_handle_timeline();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [ATXWidgetPredictionTrainer modelPredictionWithSampleDictionaryFeatureProvider:withMLModel:];
      }
    }
  }

  v19 = 0;
  v11 = [v6 predictionFromFeatures:v5 error:&v19];
  v12 = v19;
  v13 = __atxlog_handle_timeline();
  v14 = v13;
  if (v12)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [ATXWidgetPredictionTrainer modelPredictionWithSampleDictionaryFeatureProvider:withMLModel:];
    }
  }

  else if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v15 = [v11 featureValueForName:@"engaged"];
    v16 = [v5 featureValueForName:@"input_widget_family"];
    v17 = [v5 featureValueForName:@"input_widget_family"];
    *buf = 138543874;
    v22 = v15;
    v23 = 2114;
    v24 = v16;
    v25 = 2114;
    v26 = v17;
    _os_log_impl(&dword_2263AA000, v14, OS_LOG_TYPE_INFO, "ATXWidgetPredictionTrainer: Output from model: %{public}@ for unique score count: %{public}@ widget family: %{public}@", buf, 0x20u);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)trainWidgetPredictionModelWithMLArrayBatchProvider:modelURL:andSaveToURL:withActivity:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __116__ATXWidgetPredictionTrainer_trainWidgetPredictionModelWithMLArrayBatchProvider_modelURL_andSaveToURL_withActivity___block_invoke_cold_1(void *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = [a1 task];
  v2 = [v1 error];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0(&dword_2263AA000, v3, v4, "ATXWidgetPredictionTrainer: Error encountered before MLUpdate task could complete; context.task.error: %{public}@", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x277D85DE8];
}

void __116__ATXWidgetPredictionTrainer_trainWidgetPredictionModelWithMLArrayBatchProvider_modelURL_andSaveToURL_withActivity___block_invoke_29_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *(*(*a1 + 8) + 40);
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

void __116__ATXWidgetPredictionTrainer_trainWidgetPredictionModelWithMLArrayBatchProvider_modelURL_andSaveToURL_withActivity___block_invoke_29_cold_2(void *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = [a1 task];
  v2 = [v1 error];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0(&dword_2263AA000, v3, v4, "ML Update task failed with error%@", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)modelPredictionWithSampleDictionaryFeatureProvider:withMLModel:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)modelPredictionWithSampleDictionaryFeatureProvider:withMLModel:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end