@interface ATXMLInferenceRunner
- (BOOL)runInferenceOnItem:(ATXPredictionItem *)item resultBlock:(id)block error:(id *)error;
- (BOOL)runInferenceOnItems:(void *)items resultBlock:(id)block error:(id *)error;
- (double)_getScoreFromInferenceResult:(id)result;
- (id)_inferenceResultWithOutputFeatureProvider:(id)provider inputFeatureProvider:(id)featureProvider;
- (id)initModelWithName:(id)name error:(id *)error;
@end

@implementation ATXMLInferenceRunner

- (id)initModelWithName:(id)name error:(id *)error
{
  v46 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v7 = MEMORY[0x277CEBCF8];
  nameCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Start ATXMLInferenceRunner loading: %@", nameCopy];
  [v7 logCurrentMemoryFootprint:nameCopy];

  v43.receiver = self;
  v43.super_class = ATXMLInferenceRunner;
  v9 = [(ATXMLInferenceRunner *)&v43 init];
  if (v9)
  {
    v10 = __atxlog_handle_ml_inference();
    v11 = os_signpost_id_generate(v10);

    v12 = __atxlog_handle_ml_inference();
    v13 = v12;
    v14 = v11 - 1;
    if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
    {
      v15 = nameCopy;
      uTF8String = [nameCopy UTF8String];
      *buf = 136446210;
      v45 = uTF8String;
      _os_signpost_emit_with_name_impl(&dword_2263AA000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v11, "ModelLoading", "model=%{public,signpost.telemetry:string1}s enableTelemetry=YES ", buf, 0xCu);
    }

    v40 = objc_opt_new();
    [v40 setComputeUnits:0];
    v42 = 0;
    v17 = [ATXCoreMLUtilities loadCoreMLModelWithName:nameCopy withConfiguration:v40 error:&v42];
    v41 = v42;
    if (v17)
    {
      modelDescription = [v17 modelDescription];
      metadata = [modelDescription metadata];
      v20 = [metadata objectForKeyedSubscript:*MEMORY[0x277CBFE90]];

      v21 = [v20 objectForKey:@"feature_names"];
      v22 = v21;
      if (v21)
      {
        v23 = [v21 componentsSeparatedByString:{@", "}];
        [(ATXMLInferenceRunner *)v9 setFeaturesToConcatenate:v23];
      }

      v24 = [v20 objectForKey:@"intermediate_values"];
      v25 = v24;
      if (v24)
      {
        v26 = [v24 componentsSeparatedByString:{@", "}];
        [(ATXMLInferenceRunner *)v9 setIntermediateValuesForInspection:v26];
      }

      v27 = __atxlog_handle_ml_inference();
      v28 = v27;
      if (v14 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v27))
      {
        v29 = nameCopy;
        uTF8String2 = [nameCopy UTF8String];
        *buf = 136446210;
        v45 = uTF8String2;
        _os_signpost_emit_with_name_impl(&dword_2263AA000, v28, OS_SIGNPOST_INTERVAL_END, v11, "ModelLoading", "model=%{public,signpost.telemetry:string1}s-passed enableTelemetry=YES ", buf, 0xCu);
      }

      [(ATXMLInferenceRunner *)v9 setMlModel:v17];
      [(ATXMLInferenceRunner *)v9 setModelName:nameCopy];
      v31 = MEMORY[0x277CEBCF8];
      nameCopy2 = [MEMORY[0x277CCACA8] stringWithFormat:@"End ATXMLInferenceRunner loading: %@", nameCopy];
      [v31 logCurrentMemoryFootprint:nameCopy2];

      v33 = v9;
    }

    else
    {
      if (error)
      {
        v34 = v41;
        *error = v41;
      }

      v35 = __atxlog_handle_ml_inference();
      v20 = v35;
      if (v14 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v35))
      {
        v36 = nameCopy;
        uTF8String3 = [nameCopy UTF8String];
        *buf = 136446210;
        v45 = uTF8String3;
        _os_signpost_emit_with_name_impl(&dword_2263AA000, v20, OS_SIGNPOST_INTERVAL_END, v11, "ModelLoading", "model=%{public,signpost.telemetry:string1}s-failed enableTelemetry=YES ", buf, 0xCu);
      }

      v33 = 0;
    }
  }

  else if (error)
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CEB260] code:6 userInfo:0];
    *error = v33 = 0;
  }

  else
  {
    v33 = 0;
  }

  v38 = *MEMORY[0x277D85DE8];
  return v33;
}

- (double)_getScoreFromInferenceResult:(id)result
{
  resultCopy = result;
  mlModel = [(ATXMLInferenceRunner *)self mlModel];
  modelDescription = [mlModel modelDescription];
  predictedProbabilitiesName = [modelDescription predictedProbabilitiesName];

  if (predictedProbabilitiesName)
  {
    mlModel2 = [(ATXMLInferenceRunner *)self mlModel];
    modelDescription2 = [mlModel2 modelDescription];
    predictedProbabilitiesName2 = [modelDescription2 predictedProbabilitiesName];
    v11 = [resultCopy featureValueForName:predictedProbabilitiesName2];

    [ATXCoreMLUtilities scoreForModelOutputValue:v11 outputIndexedSubscript:1];
LABEL_5:
    v19 = v12;
    goto LABEL_6;
  }

  mlModel3 = [(ATXMLInferenceRunner *)self mlModel];
  modelDescription3 = [mlModel3 modelDescription];
  predictedFeatureName = [modelDescription3 predictedFeatureName];

  if (predictedFeatureName)
  {
    mlModel4 = [(ATXMLInferenceRunner *)self mlModel];
    modelDescription4 = [mlModel4 modelDescription];
    predictedFeatureName2 = [modelDescription4 predictedFeatureName];
    v11 = [resultCopy featureValueForName:predictedFeatureName2];

    [ATXCoreMLUtilities scoreForModelOutputValue:v11];
    goto LABEL_5;
  }

  mlModel5 = [(ATXMLInferenceRunner *)self mlModel];
  modelDescription5 = [mlModel5 modelDescription];
  outputDescriptionsByName = [modelDescription5 outputDescriptionsByName];
  v24 = [outputDescriptionsByName objectForKeyedSubscript:@"score"];

  if (v24)
  {
    v25 = [resultCopy featureValueForName:@"score"];
    [ATXCoreMLUtilities scoreForModelOutputValue:v25];
    v19 = v26;
    v11 = v25;
  }

  else
  {
    mlModel6 = [(ATXMLInferenceRunner *)self mlModel];
    modelDescription6 = [mlModel6 modelDescription];
    outputDescriptionsByName2 = [modelDescription6 outputDescriptionsByName];
    v30 = [outputDescriptionsByName2 count];

    if (v30)
    {
      mlModel7 = [(ATXMLInferenceRunner *)self mlModel];
      modelDescription7 = [mlModel7 modelDescription];
      outputDescriptionsByName3 = [modelDescription7 outputDescriptionsByName];
      allKeys = [outputDescriptionsByName3 allKeys];
      firstObject = [allKeys firstObject];

      v11 = [resultCopy featureValueForName:firstObject];
      [ATXCoreMLUtilities scoreForModelOutputValue:v11];
      v19 = v36;
    }

    else
    {
      v37 = __atxlog_handle_ml_inference();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        [ATXMLInferenceRunner _getScoreFromInferenceResult:v37];
      }

      v11 = 0;
      v19 = -31337.0;
    }
  }

LABEL_6:

  return v19;
}

- (id)_inferenceResultWithOutputFeatureProvider:(id)provider inputFeatureProvider:(id)featureProvider
{
  v54 = *MEMORY[0x277D85DE8];
  providerCopy = provider;
  featureProviderCopy = featureProvider;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  selfCopy = self;
  featuresToConcatenate = [(ATXMLInferenceRunner *)self featuresToConcatenate];

  if (featuresToConcatenate)
  {
    featuresToConcatenate2 = [(ATXMLInferenceRunner *)self featuresToConcatenate];
    v47[0] = MEMORY[0x277D85DD0];
    v47[1] = 3221225472;
    v47[2] = __87__ATXMLInferenceRunner__inferenceResultWithOutputFeatureProvider_inputFeatureProvider___block_invoke;
    v47[3] = &unk_278598990;
    v48 = featureProviderCopy;
    v49 = dictionary;
    [featuresToConcatenate2 enumerateObjectsUsingBlock:v47];

    v8 = v48;
  }

  else
  {
    mlModel = [(ATXMLInferenceRunner *)self mlModel];
    modelDescription = [mlModel modelDescription];
    inputDescriptionsByName = [modelDescription inputDescriptionsByName];

    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v8 = inputDescriptionsByName;
    v12 = [v8 countByEnumeratingWithState:&v43 objects:v53 count:16];
    if (v12)
    {
      v13 = *v44;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v44 != v13)
          {
            objc_enumerationMutation(v8);
          }

          v15 = *(*(&v43 + 1) + 8 * i);
          v16 = [featureProviderCopy featureValueForName:v15];
          v17 = v16;
          if (v16 && [v16 type] == 2)
          {
            v18 = MEMORY[0x277CCABB0];
            [v17 doubleValue];
            v19 = [v18 numberWithDouble:?];
            [dictionary setObject:v19 forKeyedSubscript:v15];
          }

          else
          {
            v19 = __atxlog_handle_ml_inference();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              [(ATXMLInferenceRunner *)&v41 _inferenceResultWithOutputFeatureProvider:v42 inputFeatureProvider:v19];
            }
          }
        }

        v12 = [v8 countByEnumeratingWithState:&v43 objects:v53 count:16];
      }

      while (v12);
    }
  }

  dictionary2 = [MEMORY[0x277CBEB38] dictionary];
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  intermediateValuesForInspection = [(ATXMLInferenceRunner *)self intermediateValuesForInspection];
  v22 = [intermediateValuesForInspection countByEnumeratingWithState:&v37 objects:v52 count:16];
  if (v22)
  {
    v23 = *v38;
    do
    {
      for (j = 0; j != v22; ++j)
      {
        if (*v38 != v23)
        {
          objc_enumerationMutation(intermediateValuesForInspection);
        }

        v25 = *(*(&v37 + 1) + 8 * j);
        v26 = [providerCopy featureValueForName:v25];
        if (v26)
        {
          v27 = MEMORY[0x277CCABB0];
          [ATXCoreMLUtilities scoreForModelOutputValue:v26];
          v28 = [v27 numberWithDouble:?];
          [dictionary2 setObject:v28 forKeyedSubscript:v25];
        }

        else
        {
          v28 = __atxlog_handle_ml_inference();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v51 = v25;
            _os_log_error_impl(&dword_2263AA000, v28, OS_LOG_TYPE_ERROR, "Could not retrieve intermediate feature value %@", buf, 0xCu);
          }
        }
      }

      v22 = [intermediateValuesForInspection countByEnumeratingWithState:&v37 objects:v52 count:16];
    }

    while (v22);
  }

  [(ATXMLInferenceRunner *)selfCopy _getScoreFromInferenceResult:providerCopy];
  v30 = [[ATXMLInferenceResult alloc] initWithScore:dictionary inputs:dictionary2 intermediateValues:v29];

  v31 = *MEMORY[0x277D85DE8];

  return v30;
}

void __87__ATXMLInferenceRunner__inferenceResultWithOutputFeatureProvider_inputFeatureProvider___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v11 = a2;
  v5 = *(a1 + 32);
  v6 = [v5 featureNames];
  v7 = [v6 anyObject];
  v8 = [v5 featureValueForName:v7];

  v9 = [v8 multiArrayValue];
  v10 = [v9 objectAtIndexedSubscript:a3];
  [*(a1 + 40) setObject:v10 forKeyedSubscript:v11];
}

- (BOOL)runInferenceOnItems:(void *)items resultBlock:(id)block error:(id *)error
{
  v64 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v9 = MEMORY[0x277CEBCF8];
  v10 = MEMORY[0x277CCACA8];
  modelName = [(ATXMLInferenceRunner *)self modelName];
  v12 = [v10 stringWithFormat:@"Start runInferenceOnItems loading: %@", modelName];
  [v9 logCurrentMemoryFootprint:v12];

  mlModel = [(ATXMLInferenceRunner *)self mlModel];

  if (!mlModel)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"ATXMLInferenceRunner.mm" lineNumber:180 description:@"Valid ML model should exist for inference"];
  }

  v14 = __atxlog_handle_ml_inference();
  v15 = os_signpost_id_generate(v14);

  v16 = __atxlog_handle_ml_inference();
  v17 = v16;
  spid = v15;
  v51 = v15 - 1;
  if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
  {
    modelName2 = [(ATXMLInferenceRunner *)self modelName];
    *buf = 136446210;
    uTF8String = [modelName2 UTF8String];
    _os_signpost_emit_with_name_impl(&dword_2263AA000, v17, OS_SIGNPOST_INTERVAL_BEGIN, v15, "BatchedInference", "model=%{public,signpost.telemetry:string1}s enableTelemetry=YES ", buf, 0xCu);
  }

  featuresToConcatenate = [(ATXMLInferenceRunner *)self featuresToConcatenate];
  v20 = featuresToConcatenate == 0;

  if (v20)
  {
    v54 = [[ATXMLBatchInferenceFeatureProvider alloc] initWithFeatureVectors:items];
  }

  else
  {
    v21 = [ATXMLBatchInferenceMultiArrayFeatureProvider alloc];
    featuresToConcatenate2 = [(ATXMLInferenceRunner *)self featuresToConcatenate];
    v54 = [(ATXMLBatchInferenceMultiArrayFeatureProvider *)v21 initWithFeatureVectors:items featuresToConcatenate:featuresToConcatenate2];
  }

  mlModel2 = [(ATXMLInferenceRunner *)self mlModel];
  v55 = 0;
  v24 = [mlModel2 predictionsFromBatch:v54 error:&v55];
  v53 = v55;

  if (!v24)
  {
    v30 = __atxlog_handle_ml_inference();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      mlModel3 = [(ATXMLInferenceRunner *)self mlModel];
      [ATXMLInferenceRunner runInferenceOnItems:mlModel3 resultBlock:v53 error:buf];
    }

    goto LABEL_19;
  }

  if ([v24 count] != 0x13A524387AC82261 * ((*(items + 1) - *items) >> 3))
  {
    v32 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CEB260] code:6 userInfo:0];

    v30 = __atxlog_handle_ml_inference();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v47 = [v24 count];
      v48 = 0x13A524387AC82261 * ((*(items + 1) - *items) >> 3);
      *buf = 134218240;
      uTF8String = v47;
      v62 = 2048;
      v63 = v48;
      _os_log_error_impl(&dword_2263AA000, v30, OS_LOG_TYPE_ERROR, "Results size (%ld) != number of prediction items (%ld)", buf, 0x16u);
    }

    v53 = v32;
LABEL_19:

    v33 = 0;
    goto LABEL_21;
  }

  v25 = 0;
  for (i = 0; i < [v24 count]; ++i)
  {
    v27 = [v24 featuresAtIndex:i];
    v28 = [(ATXMLBatchInferenceFeatureProvider *)v54 featuresAtIndex:i];
    v29 = [(ATXMLInferenceRunner *)self _inferenceResultWithOutputFeatureProvider:v27 inputFeatureProvider:v28];
    blockCopy[2](blockCopy, *items + v25, v29);

    v25 += 3336;
  }

  v33 = 1;
LABEL_21:
  v34 = MEMORY[0x277CEBCF8];
  v35 = MEMORY[0x277CCACA8];
  modelName3 = [(ATXMLInferenceRunner *)self modelName];
  v37 = [v35 stringWithFormat:@"End runInferenceOnItems loading: %@", modelName3];
  [v34 logCurrentMemoryFootprint:v37];

  v38 = __atxlog_handle_ml_inference();
  v39 = v38;
  if (v51 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v38))
  {
    modelName4 = [(ATXMLInferenceRunner *)self modelName];
    v41 = modelName4;
    uTF8String2 = [modelName4 UTF8String];
    *v56 = 136446466;
    v57 = uTF8String2;
    v58 = 1026;
    v59 = v33;
    _os_signpost_emit_with_name_impl(&dword_2263AA000, v39, OS_SIGNPOST_INTERVAL_END, spid, "BatchedInference", "model=%{public,signpost.telemetry:string1}s-%{public,signpost.telemetry:number1}d enableTelemetry=YES ", v56, 0x12u);
  }

  if (error)
  {
    v43 = v33;
  }

  else
  {
    v43 = 1;
  }

  if ((v43 & 1) == 0)
  {
    v44 = v53;
    *error = v53;
  }

  v45 = *MEMORY[0x277D85DE8];
  return v33;
}

- (BOOL)runInferenceOnItem:(ATXPredictionItem *)item resultBlock:(id)block error:(id *)error
{
  v51 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v9 = MEMORY[0x277CEBCF8];
  v10 = MEMORY[0x277CCACA8];
  modelName = [(ATXMLInferenceRunner *)self modelName];
  v12 = [v10 stringWithFormat:@"Start single runInferenceOnItem loading: %@", modelName];
  [v9 logCurrentMemoryFootprint:v12];

  mlModel = [(ATXMLInferenceRunner *)self mlModel];

  if (!mlModel)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"ATXMLInferenceRunner.mm" lineNumber:229 description:@"Valid ML model should exist for inference"];
  }

  v14 = __atxlog_handle_ml_inference();
  v15 = os_signpost_id_generate(v14);

  v16 = __atxlog_handle_ml_inference();
  v17 = v16;
  if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
  {
    modelName2 = [(ATXMLInferenceRunner *)self modelName];
    *buf = 136446210;
    uTF8String = [modelName2 UTF8String];
    _os_signpost_emit_with_name_impl(&dword_2263AA000, v17, OS_SIGNPOST_INTERVAL_BEGIN, v15, "SingleInference", "model=%{public,signpost.telemetry:string1}s enableTelemetry=YES ", buf, 0xCu);
  }

  featuresToConcatenate = [(ATXMLInferenceRunner *)self featuresToConcatenate];
  v20 = featuresToConcatenate == 0;

  if (v20)
  {
    v23 = [[ATXMLInferenceFeatureProvider alloc] initWithPredictionItem:item];
  }

  else
  {
    v21 = [ATXMLInferenceMultiArrayFeatureProvider alloc];
    featuresToConcatenate2 = [(ATXMLInferenceRunner *)self featuresToConcatenate];
    v23 = [(ATXMLInferenceMultiArrayFeatureProvider *)v21 initWithPredictionItem:item featuresToConcatenate:featuresToConcatenate2];
  }

  mlModel2 = [(ATXMLInferenceRunner *)self mlModel];
  v44 = 0;
  v25 = [mlModel2 predictionFromFeatures:v23 error:&v44];
  v26 = v44;

  if (v25)
  {
    v27 = [(ATXMLInferenceRunner *)self _inferenceResultWithOutputFeatureProvider:v25 inputFeatureProvider:v23];
    blockCopy[2](blockCopy, item, v27);
  }

  else
  {
    v27 = __atxlog_handle_ml_inference();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      mlModel3 = [(ATXMLInferenceRunner *)self mlModel];
      [ATXMLInferenceRunner runInferenceOnItems:mlModel3 resultBlock:v26 error:buf];
    }
  }

  v29 = MEMORY[0x277CEBCF8];
  v30 = MEMORY[0x277CCACA8];
  modelName3 = [(ATXMLInferenceRunner *)self modelName];
  v32 = [v30 stringWithFormat:@"End single runInferenceOnItem loading: %@", modelName3];
  [v29 logCurrentMemoryFootprint:v32];

  v33 = __atxlog_handle_ml_inference();
  v34 = v33;
  if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v33))
  {
    modelName4 = [(ATXMLInferenceRunner *)self modelName];
    v36 = modelName4;
    uTF8String2 = [modelName4 UTF8String];
    *v45 = 136446466;
    v46 = uTF8String2;
    v47 = 1026;
    v48 = v25 != 0;
    _os_signpost_emit_with_name_impl(&dword_2263AA000, v34, OS_SIGNPOST_INTERVAL_END, v15, "SingleInference", "model=%{public,signpost.telemetry:string1}s-%{public,signpost.telemetry:number1}d enableTelemetry=YES ", v45, 0x12u);
  }

  if (error)
  {
    v38 = v25 != 0;
  }

  else
  {
    v38 = 1;
  }

  if (!v38)
  {
    v39 = v26;
    *error = v26;
  }

  v40 = *MEMORY[0x277D85DE8];
  return v25 != 0;
}

- (void)_inferenceResultWithOutputFeatureProvider:(os_log_t)log inputFeatureProvider:.cold.1(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_2263AA000, log, OS_LOG_TYPE_ERROR, "Encountered non-double feature value in the non MultArray inference path; not supported.", buf, 2u);
}

- (void)runInferenceOnItems:(void *)a1 resultBlock:(uint64_t)a2 error:(uint64_t)a3 .cold.1(void *a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_0_6(a1, a2, a3, 5.778e-34);
  _os_log_error_impl(&dword_2263AA000, v5, OS_LOG_TYPE_ERROR, "Failed to run inference for %@ : %@", v4, 0x16u);
}

@end