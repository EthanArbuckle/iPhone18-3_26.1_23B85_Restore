@interface NLModelImplNX
- (NLModelImplNX)initWithModelContainer:(void *)a3 configuration:(id)a4 labelMap:(id)a5 vocabularyMap:(id)a6 documentFrequencyMap:(id)a7 customEmbeddingData:(id)a8 trainingInfo:(id)a9;
- (NLModelImplNX)initWithModelData:(id)a3 configuration:(id)a4 labelMap:(id)a5 vocabularyMap:(id)a6 documentFrequencyMap:(id)a7 customEmbeddingData:(id)a8 trainingInfo:(id)a9 error:(id *)a10;
- (NLModelImplNX)initWithModelTrainer:(id)a3 error:(id *)a4;
- (id)modelData;
- (id)predictedLabelForString:(id)a3;
- (id)predictedLabelHypothesesDictionaryForString:(id)a3 maximumCount:(unint64_t)a4;
- (id)predictedLabelHypothesesForString:(id)a3 maximumCount:(unint64_t)a4;
- (id)predictedLabelHypothesesForTokens:(id)a3 maximumCount:(unint64_t)a4;
- (id)predictedLabelsDictionaryForString:(id)a3;
- (id)predictedLabelsForTokens:(id)a3;
- (id)trainingInfo;
- (unint64_t)systemVersion;
- (void)dealloc;
@end

@implementation NLModelImplNX

- (NLModelImplNX)initWithModelContainer:(void *)a3 configuration:(id)a4 labelMap:(id)a5 vocabularyMap:(id)a6 documentFrequencyMap:(id)a7 customEmbeddingData:(id)a8 trainingInfo:(id)a9
{
  v12 = a4;
  v13 = a5;
  v14 = a9;
  v15 = NLModelCreateWithContainer();
  v16 = stringForKey(v14, 0x1F10C6780, 0);
  v17 = stringForKeyWithDefault(v14, @"TrainingEmbeddingType", 0);
  v18 = stringForKeyWithDefault(v14, @"EmbeddingModelIdentifier", 0);
  v19 = unsignedIntegerForKey(v14, 0x1F10C67C0, 0);

  if (v15)
  {
    v26.receiver = self;
    v26.super_class = NLModelImplNX;
    v20 = [(NLModelImplNX *)&v26 init];
    self = v20;
    if (v20)
    {
      v20->_nlModel = v15;
      v20->_modelContainer = CFRetain(a3);
      v21 = [v12 copy];
      configuration = self->_configuration;
      self->_configuration = v21;

      v23 = [v13 copy];
      labelMap = self->_labelMap;
      self->_labelMap = v23;

      self->_numberOfTrainingInstances = v19;
      objc_storeStrong(&self->_trainingLanguage, v16);
      objc_storeStrong(&self->_trainingEmbeddingType, v17);
      objc_storeStrong(&self->_embeddingModelIdentifier, v18);
    }
  }

  return self;
}

- (NLModelImplNX)initWithModelData:(id)a3 configuration:(id)a4 labelMap:(id)a5 vocabularyMap:(id)a6 documentFrequencyMap:(id)a7 customEmbeddingData:(id)a8 trainingInfo:(id)a9 error:(id *)a10
{
  v47[1] = *MEMORY[0x1E69E9840];
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v41 = a6;
  v43 = a7;
  v42 = a8;
  v19 = a9;
  v20 = stringForKeyWithDefault(v19, @"TrainingEmbeddingType", 0);
  v21 = stringForKeyWithDefault(v19, @"EmbeddingModelIdentifier", 0);
  v22 = stringForKey(v19, 0x1F10C6780, 0);
  if ([v20 isEqualToString:@"Contextual"])
  {
    if (v21)
    {
      v23 = [NLContextualEmbedding contextualEmbeddingWithIdentifier:v21];
      if (!v23)
      {
        NSLog(&cfstr_FailedToLoadCo_0.isa, v21);
LABEL_17:
        if (a10)
        {
          v40 = MEMORY[0x1E696ABC0];
          v46 = *MEMORY[0x1E696A578];
          v47[0] = @"Failed to load model file, could not find contextual embedding";
          v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v47 forKeys:&v46 count:1];
          *a10 = [v40 errorWithDomain:@"NLNaturalLanguageErrorDomain" code:8 userInfo:v36];
        }

        v32 = 0;
        v35 = v16;
        v30 = v41;
        goto LABEL_20;
      }
    }

    else
    {
      if (!v22)
      {
        goto LABEL_17;
      }

      v23 = [NLContextualEmbedding contextualEmbeddingWithLanguage:v22];
      if (!v23)
      {
        NSLog(&cfstr_FailedToLoadCo_1.isa, v22);
        goto LABEL_17;
      }
    }

    v24 = v23;
    if (([v23 hasAvailableAssets] & 1) == 0)
    {
      NSLog(&cfstr_AssetsNotAvail.isa, v24);
      requestContextualEmbeddingAssetsForEmbedding(v24);
    }
  }

  v39 = v21;
  v25 = v20;
  v26 = v22;
  v27 = v16;
  v28 = NLModelContainerCreateWithContainerData();
  if (v28)
  {
    v29 = v28;
    v30 = v41;
    v31 = [(NLModelImplNX *)self initWithModelContainer:v28 configuration:v17 labelMap:v18 vocabularyMap:v41 documentFrequencyMap:v43 customEmbeddingData:v42 trainingInfo:v19];
    CFRelease(v29);
    self = v31;
    v32 = self;
  }

  else
  {
    v30 = v41;
    if (a10)
    {
      v33 = MEMORY[0x1E696ABC0];
      v44 = *MEMORY[0x1E696A578];
      v45 = @"Failed to load model file, invalid Transfer model data";
      v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v45 forKeys:&v44 count:1];
      *a10 = [v33 errorWithDomain:@"NLNaturalLanguageErrorDomain" code:1 userInfo:v34];
    }

    v32 = 0;
  }

  v35 = v27;
  v22 = v26;
  v20 = v25;
  v21 = v39;
LABEL_20:

  v37 = *MEMORY[0x1E69E9840];
  return v32;
}

- (NLModelImplNX)initWithModelTrainer:(id)a3 error:(id *)a4
{
  v94 = *MEMORY[0x1E69E9840];
  v70 = a3;
  v67 = [v70 configuration];
  v66 = [v67 language];
  v4 = [v67 options];
  v65 = stringForKeyWithDefault(v4, @"EmbeddingType", @"Dynamic");

  v68 = [v70 dataSet];
  v91 = xmmword_19D4E9090;
  v92 = vdupq_n_s64(0x400uLL);
  v93 = xmmword_19D4E9510;
  v69 = [NLDataSet dataSetWithDataSet:v68 constraintParameters:&v91 modelTrainer:v70];
  v61 = [v69 inverseLabelMap];
  v55 = [v68 numberOfTrainingInstances];
  v5 = [v70 options];
  v60 = unsignedIntegerForKey(v5, @"MaximumIterations", 25);

  if (initWithModelTrainer_error__onceToken_0 != -1)
  {
    [NLModelImplNX initWithModelTrainer:error:];
  }

  if (!v66)
  {
    v6 = [v68 dataProviderOfType:0];
    v66 = [v6 recognizedLanguage];
  }

  if ([v69 numberOfTrainingInstances])
  {
    v59 = v70;
    v64 = v66;
    v63 = v65;
    v7 = MEMORY[0x1E695DF90];
    v8 = [MEMORY[0x1E696AD98] numberWithInteger:9];
    v9 = [v7 dictionaryWithObject:v8 forKey:*MEMORY[0x1E69981B8]];

    v10 = [MEMORY[0x1E696AD98] numberWithInteger:v60];
    [v9 setObject:v10 forKey:*MEMORY[0x1E69981B0]];

    if (v64)
    {
      [v9 setObject:v64 forKey:*MEMORY[0x1E69981A8]];
      if ([v63 isEqualToString:@"Contextual"])
      {
        v11 = [NLContextualEmbedding contextualEmbeddingWithLanguage:v64];
        if ([v11 hasAvailableAssets])
        {
          v12 = [v11 assetLocaleIdentifier];
        }

        else
        {
          v12 = 0;
        }

        v15 = [v11 identifier];
        if (v11 && ([v11 hasAvailableAssets] & 1) == 0)
        {
          requestContextualEmbeddingAssetsForEmbedding(v11);
        }

        if (v12)
        {
          [v9 setObject:*MEMORY[0x1E69981A0] forKey:*MEMORY[0x1E6998198]];
          [v9 setObject:v12 forKey:*MEMORY[0x1E69981C0]];
          v18 = v15;

          goto LABEL_23;
        }

        goto LABEL_24;
      }
    }

    else if ([v63 isEqualToString:@"Contextual"])
    {
      v15 = 0;
LABEL_24:
      v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to load contextual embedding for language %@", v64];
      NSLog(&stru_1F10C8E20.isa, v19);
      [v59 logMessage:v19];
      if (a4)
      {
        v20 = MEMORY[0x1E696ABC0];
        v90[0] = *MEMORY[0x1E696A578];
        *&v91 = v19;
        v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v91 forKeys:v90 count:1];
        *a4 = [v20 errorWithDomain:@"NLNaturalLanguageErrorDomain" code:8 userInfo:v21];
      }

      goto LABEL_27;
    }

    if ([v63 isEqualToString:@"Dynamic"])
    {
      [v9 setObject:*MEMORY[0x1E6998190] forKey:*MEMORY[0x1E6998198]];
      v15 = 0;
LABEL_23:
      v57 = v9;
      goto LABEL_28;
    }

    NSLog(&stru_1F10C8E20.isa, @"Unsupported embedding type");
    [v59 logMessage:@"Unsupported embedding type"];
    if (a4)
    {
      v16 = MEMORY[0x1E696ABC0];
      v90[0] = *MEMORY[0x1E696A578];
      *&v91 = @"Unsupported embedding type";
      v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v91 forKeys:v90 count:1];
      *a4 = [v16 errorWithDomain:@"NLNaturalLanguageErrorDomain" code:4 userInfo:v17];
    }

LABEL_27:
    v15 = 0;
    v57 = 0;
LABEL_28:

    v56 = v15;
    v22 = v57;
    if (!v57)
    {
      v14 = 0;
      goto LABEL_53;
    }

    cf = NLModelTrainerCreate();
    if (!cf)
    {
      v14 = 0;
      v22 = v57;
      goto LABEL_53;
    }

    v23 = [NLDataEnumerator alloc];
    v24 = [v69 dataProviderOfType:0];
    v53 = [(NLDataEnumerator *)v23 initWithDataProvider:v24];

    *&v91 = 0;
    *(&v91 + 1) = &v91;
    v92.i64[0] = 0x2020000000;
    v92.i64[1] = CFAbsoluteTimeGetCurrent();
    v90[0] = 0;
    v90[1] = v90;
    v90[2] = 0x2020000000;
    v90[3] = 0;
    v79[0] = 0;
    v79[1] = v79;
    v79[2] = 0x2020000000;
    v79[3] = 0;
    v78[0] = 0;
    v78[1] = v78;
    v78[2] = 0x2020000000;
    v78[3] = 0;
    v77[0] = 0;
    v77[1] = v77;
    v77[2] = 0x2020000000;
    v77[3] = 0;
    v75[0] = 0;
    v75[1] = v75;
    v75[2] = 0x2020000000;
    v76 = 0;
    v71 = 0;
    v72 = &v71;
    v73 = 0x2020000000;
    v74 = 0;
    if ([v69 numberOfValidationInstances])
    {
      v25 = [NLDataEnumerator alloc];
      v26 = [v69 dataProviderOfType:1];
      v52 = [(NLDataEnumerator *)v25 initWithDataProvider:v26];
    }

    else
    {
      v52 = 0;
    }

    v27 = objc_autoreleasePoolPush();
    v28 = NLGetLogCategory(0);
    v29 = [v28 internal];

    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v85 = 0;
      _os_log_impl(&dword_19D48F000, v29, OS_LOG_TYPE_INFO, "event: %lu", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v27);
    for (i = 0; i < [&unk_1F10D1448 count]; ++i)
    {
      v31 = objc_autoreleasePoolPush();
      v32 = NLGetLogCategory(0);
      v33 = [v32 internal];

      if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
      {
        v34 = [&unk_1F10D1448 objectAtIndexedSubscript:i];
        v35 = v34;
        v36 = [v34 UTF8String];
        *buf = 134218498;
        v85 = 1;
        v86 = 2048;
        v87 = i;
        v88 = 2082;
        v89 = v36;
        _os_log_impl(&dword_19D48F000, v33, OS_LOG_TYPE_INFO, "event: %lu, column: %lu, value: %{public}s", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v31);
    }

    v37 = v59;
    v38 = NLModelTrainerTrainAndCopyContainer();
    v39 = objc_autoreleasePoolPush();
    v40 = NLGetLogCategory(0);
    v41 = [v40 internal];

    if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v85 = 3;
      _os_log_impl(&dword_19D48F000, v41, OS_LOG_TYPE_INFO, "event: %lu", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v39);
    if (v38)
    {
      v42 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Finished transfer training in %.2f seconds", CFAbsoluteTimeGetCurrent() - *(*(&v91 + 1) + 24)];
      [v37 logMessage:v42];
    }

    else if (*(v72 + 24) == 1)
    {
      v42 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to load dynamic embedding for language %@", v64];
      NSLog(&stru_1F10C8E20.isa, v42);
      [v37 logMessage:v42];
      if (a4)
      {
        v49 = MEMORY[0x1E696ABC0];
        v82 = *MEMORY[0x1E696A578];
        v83 = v42;
        v50 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v83 forKeys:&v82 count:1];
        *a4 = [v49 errorWithDomain:@"NLNaturalLanguageErrorDomain" code:8 userInfo:v50];
      }
    }

    else
    {
      NSLog(&stru_1F10C8E20.isa, @"Transfer training failed");
      [v37 logMessage:@"Transfer training failed"];
      if (!a4)
      {
        goto LABEL_47;
      }

      v51 = MEMORY[0x1E696ABC0];
      v80 = *MEMORY[0x1E696A578];
      v81 = @"Transfer training failed";
      v42 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v81 forKeys:&v80 count:1];
      *a4 = [v51 errorWithDomain:@"NLNaturalLanguageErrorDomain" code:9 userInfo:v42];
    }

LABEL_47:
    CFRelease(cf);

    _Block_object_dispose(&v71, 8);
    _Block_object_dispose(v75, 8);
    _Block_object_dispose(v77, 8);
    _Block_object_dispose(v78, 8);
    _Block_object_dispose(v79, 8);
    _Block_object_dispose(v90, 8);
    _Block_object_dispose(&v91, 8);

    if (!v38)
    {
      v14 = 0;
      goto LABEL_54;
    }

    v43 = MEMORY[0x1E695DF90];
    v44 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v55];
    v45 = [v43 dictionaryWithObjectsAndKeys:{v44, 0x1F10C67C0, v63, 0x1F10C6800, 0}];

    if (v64)
    {
      [v45 setObject:v64 forKey:0x1F10C6780];
    }

    if (v56)
    {
      [v45 setObject:v56 forKey:0x1F10C6820];
    }

    v46 = [(NLModelImplNX *)self initWithModelContainer:v38 configuration:v67 labelMap:v61 vocabularyMap:0 documentFrequencyMap:0 customEmbeddingData:0 trainingInfo:v45];
    CFRelease(v38);
    v14 = v46;
    self = v14;
    v22 = v45;
LABEL_53:

LABEL_54:
    v13 = v56;
    goto LABEL_55;
  }

  v13 = 0;
  v14 = 0;
LABEL_55:

  v47 = *MEMORY[0x1E69E9840];
  return v14;
}

uint64_t __44__NLModelImplNX_initWithModelTrainer_error___block_invoke()
{
  initWithModelTrainer_error__whitespaceAndNewlineCharacterSet_0 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];

  return MEMORY[0x1EEE66BB8]();
}

void __44__NLModelImplNX_initWithModelTrainer_error___block_invoke_25(uint64_t a1, void *a2, _BYTE *a3)
{
  v39 = *MEMORY[0x1E69E9840];
  v5 = a2;
  if ([v5 hasPrefix:@"Average Tag Accuracy"])
  {
    v6 = [v5 rangeOfString:@"="];
    v8 = v7;
    v9 = [v5 rangeOfString:{@", "}];
    if (v8 && v10 && v9 > v6 + v8)
    {
      v11 = [v5 substringWithRange:{v6 + v8, v9 - (v6 + v8)}];
      [v11 doubleValue];
      *(*(*(a1 + 40) + 8) + 24) = v12;
    }

    v13 = objc_autoreleasePoolPush();
    v14 = NLGetLogCategory(0);
    v15 = [v14 internal];

    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = *(a1 + 96) - *(*(*(a1 + 48) + 8) + 24);
      *buf = 134218496;
      v34 = 2;
      v35 = 2048;
      v36 = 0;
      v37 = 2048;
      v38 = v16;
      _os_log_impl(&dword_19D48F000, v15, OS_LOG_TYPE_INFO, "event: %lu, column: %lu, value: %lu", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v13);
    v17 = objc_autoreleasePoolPush();
    v18 = NLGetLogCategory(0);
    v19 = [v18 internal];

    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = *(*(*(a1 + 40) + 8) + 24);
      *buf = 134218496;
      v34 = 2;
      v35 = 2048;
      v36 = 1;
      v37 = 2048;
      v38 = v20;
      _os_log_impl(&dword_19D48F000, v19, OS_LOG_TYPE_INFO, "event: %lu, column: %lu, value: %f", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v17);
    ++*(*(*(a1 + 48) + 8) + 24);
    v21 = *(a1 + 32);
    v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Iteration %llu validation accuracy %.6f", *(*(*(a1 + 48) + 8) + 24), *(*(*(a1 + 40) + 8) + 24)];
    [v21 logMessage:v22];

    goto LABEL_23;
  }

  if ([v5 hasPrefix:@"Embedding Creation Failed"])
  {
    v23 = *(a1 + 56);
LABEL_13:
    *(*(v23 + 8) + 24) = 1;
    goto LABEL_23;
  }

  [v5 rangeOfString:@"failed" options:1];
  if (v24)
  {
    NSLog(&stru_1F10C8E20.isa, v5);
    goto LABEL_23;
  }

  if ((*(*(*(a1 + 64) + 8) + 24) & 1) == 0)
  {
    v25 = *(*(a1 + 72) + 8);
    v26 = *(v25 + 24);
    if (v26 <= 1)
    {
      v27 = *(*(*(a1 + 80) + 8) + 24);
      v28 = *(a1 + 104);
      while (1)
      {
        v29 = v26 + 1;
        if (v29 * v28 <= 2 * v27)
        {
          break;
        }

        reportInstanceCompletionToTrainer(*(a1 + 32), v27, v28, 2);
        v27 = ++*(*(*(a1 + 80) + 8) + 24);
        v28 = *(a1 + 104);
        v25 = *(*(a1 + 72) + 8);
        v26 = *(v25 + 24);
      }

      *(v25 + 24) = v29;
      if (*(*(*(a1 + 72) + 8) + 24) == 2)
      {
        v30 = *(a1 + 32);
        v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Starting transfer training with %llu samples", *(a1 + 104)];
        [v30 logMessage:v31];

        *(*(*(a1 + 88) + 8) + 24) = CFAbsoluteTimeGetCurrent();
        v23 = *(a1 + 64);
        goto LABEL_13;
      }
    }
  }

LABEL_23:
  if ([*(a1 + 32) shouldStop])
  {
    *a3 = 1;
  }

  v32 = *MEMORY[0x1E69E9840];
}

- (void)dealloc
{
  modelContainer = self->_modelContainer;
  if (modelContainer)
  {
    CFRelease(modelContainer);
  }

  nlModel = self->_nlModel;
  if (nlModel)
  {
    CFRelease(nlModel);
  }

  v5.receiver = self;
  v5.super_class = NLModelImplNX;
  [(NLModelImplNX *)&v5 dealloc];
}

- (id)modelData
{
  if (self->_nlModel && (v2 = NLModelCopyContainer()) != 0)
  {
    v3 = v2;
    v4 = NLModelContainerCopyContainerData();
    CFRelease(v3);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (unint64_t)systemVersion
{
  v3 = [(NLModelImplNX *)self configuration];
  v4 = [v3 options];

  v5 = stringForKeyWithDefault(v4, @"EmbeddingType", 0);
  if ([v5 isEqualToString:@"Contextual"])
  {
    v6 = [(NLModelImplNX *)self configuration];
    v7 = [v6 language];

    v8 = [NLContextualEmbedding systemVersionForLanguage:v7];
  }

  else
  {
    v8 = 3;
  }

  return v8;
}

- (id)trainingInfo
{
  v3 = MEMORY[0x1E695DF90];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_numberOfTrainingInstances];
  v5 = [v3 dictionaryWithObjectsAndKeys:{v4, 0x1F10C67C0, self->_trainingEmbeddingType, 0x1F10C6800, 0}];

  trainingLanguage = self->_trainingLanguage;
  if (trainingLanguage)
  {
    [v5 setObject:trainingLanguage forKey:0x1F10C6780];
  }

  embeddingModelIdentifier = self->_embeddingModelIdentifier;
  if (embeddingModelIdentifier)
  {
    [v5 setObject:embeddingModelIdentifier forKey:0x1F10C6820];
  }

  return v5;
}

- (id)predictedLabelsDictionaryForString:(id)a3
{
  nlModel = self->_nlModel;
  v4 = NLModelCopyPredictedLabels();

  return v4;
}

- (id)predictedLabelHypothesesDictionaryForString:(id)a3 maximumCount:(unint64_t)a4
{
  nlModel = self->_nlModel;
  v5 = NLModelCopyPredictedLabelsAndProbabilities();

  return v5;
}

- (id)predictedLabelsForTokens:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E695DF70] array];
  v5 = [v3 count];
  v6 = [MEMORY[0x1E695DF70] array];
  v7 = [MEMORY[0x1E695DF70] array];
  [MEMORY[0x1E696AD60] string];
  v40 = v39 = v5;
  if (v5)
  {
    v8 = 0;
    do
    {
      v9 = [v3 objectAtIndex:v8];
      v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v40, "length")}];
      [v6 addObject:v10];

      v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v9, "length")}];
      [v7 addObject:v11];

      v5 = v39;
      [v40 appendString:v9];
      if (++v8 < v39)
      {
        [v40 appendString:@" "];
      }
    }

    while (v39 != v8);
  }

  v12 = [(NLModelImplNX *)self predictedLabelsDictionaryForString:v40];
  v13 = v12;
  v34 = v3;
  v36 = v7;
  v37 = v6;
  if (v12)
  {
    v14 = [v12 objectForKey:*MEMORY[0x1E6998160]];
    v15 = [v13 objectForKey:*MEMORY[0x1E6998180]];
    v16 = [v13 objectForKey:*MEMORY[0x1E6998178]];
    v17 = [v14 count];
    if (v5)
    {
      v18 = v17;
      v42 = v14;
      v33 = v13;
      v19 = 0;
      v35 = v4;
      do
      {
        v20 = [v37 objectAtIndex:v19];
        v21 = [v20 unsignedIntegerValue];
        v22 = [v36 objectAtIndex:v19];
        v23 = [v22 unsignedIntegerValue];

        if (v18)
        {
          v38 = v19;
          v24 = 0;
          v25 = v23 + v21;
          do
          {
            v26 = [v15 objectAtIndex:v24];
            v27 = [v26 unsignedIntegerValue];
            v28 = [v16 objectAtIndex:v24];
            v29 = [v28 unsignedIntegerValue];

            v30 = 0;
            if (v27 < v25 && v21 < v29 + v27)
            {
              v30 = [v42 objectAtIndex:v24];
            }

            if (v30)
            {
              break;
            }

            ++v24;
          }

          while (v24 < v18);
          if (v30)
          {
            v31 = v30;
          }

          else
          {
            v31 = &stru_1F10C6540;
          }

          v4 = v35;
          v19 = v38;
          v5 = v39;
        }

        else
        {
          v30 = 0;
          v31 = &stru_1F10C6540;
        }

        [v4 addObject:v31];

        ++v19;
      }

      while (v19 != v5);
      v13 = v33;
      v14 = v42;
    }
  }

  else
  {
    for (; v5; --v5)
    {
      [v4 addObject:&stru_1F10C6540];
    }

    v14 = 0;
    v15 = 0;
    v16 = 0;
  }

  return v4;
}

- (id)predictedLabelHypothesesForTokens:(id)a3 maximumCount:(unint64_t)a4
{
  v5 = a3;
  v6 = [MEMORY[0x1E695DF70] array];
  v7 = [v5 count];
  v8 = [MEMORY[0x1E695DF70] array];
  v50 = [MEMORY[0x1E695DF70] array];
  v48 = [MEMORY[0x1E696AD60] string];
  v49 = v7;
  if (v7)
  {
    v9 = 0;
    do
    {
      v10 = [v5 objectAtIndex:v9];
      v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v48, "length")}];
      [v8 addObject:v11];

      v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v10, "length")}];
      [v50 addObject:v12];

      v7 = v49;
      [v48 appendString:v10];
      if (++v9 < v49)
      {
        [v48 appendString:@" "];
      }
    }

    while (v49 != v9);
  }

  v13 = [(NLModelImplNX *)self predictedLabelHypothesesDictionaryForString:v48 maximumCount:a4];
  v14 = v13;
  if (v13)
  {
    v15 = [v13 objectForKey:*MEMORY[0x1E6998168]];
    v16 = [v14 objectForKey:*MEMORY[0x1E6998170]];
    v17 = [v14 objectForKey:*MEMORY[0x1E6998180]];
    v18 = [v14 objectForKey:*MEMORY[0x1E6998178]];
    v19 = [v15 count];
    if (v7)
    {
      v20 = v19;
      v41 = v16;
      v42 = v15;
      v39 = v14;
      v40 = v5;
      v21 = 0;
      v43 = v8;
      v44 = v6;
      do
      {
        v47 = [MEMORY[0x1E695DF90] dictionary];
        v22 = [v8 objectAtIndex:v21];
        v23 = [v22 unsignedIntegerValue];
        v45 = v21;
        v24 = [v50 objectAtIndex:v21];
        v25 = [v24 unsignedIntegerValue];

        if (v20)
        {
          v26 = 0;
          v27 = v25 + v23;
          while (1)
          {
            v28 = [v17 objectAtIndex:v26];
            v29 = [v28 unsignedIntegerValue];
            v30 = [v18 objectAtIndex:v26];
            v31 = [v30 unsignedIntegerValue];

            if (v29 < v27 && v23 < v31 + v29)
            {
              break;
            }

            if (v20 == ++v26)
            {
              goto LABEL_20;
            }
          }

          v32 = [v42 objectAtIndex:v26];
          v33 = [v41 objectAtIndex:v26];
          if ([v32 count])
          {
            v34 = 0;
            do
            {
              if (v34 >= [v33 count])
              {
                break;
              }

              v35 = [v33 objectAtIndex:v34];
              v36 = [v32 objectAtIndex:v34];
              [v47 setObject:v35 forKey:v36];

              ++v34;
            }

            while (v34 < [v32 count]);
          }
        }

LABEL_20:
        v6 = v44;
        [v44 addObject:v47];

        v21 = v45 + 1;
        v8 = v43;
      }

      while (v45 + 1 != v49);
      v14 = v39;
      v5 = v40;
      v16 = v41;
      v15 = v42;
    }
  }

  else
  {
    if (v7)
    {
      v37 = MEMORY[0x1E695E0F8];
      do
      {
        [v6 addObject:v37];
        --v7;
      }

      while (v7);
    }

    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
  }

  return v6;
}

- (id)predictedLabelForString:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v21 = a3;
  v20 = [(NLModelImplNX *)self predictedLabelsDictionaryForString:?];
  v4 = [v20 objectForKey:*MEMORY[0x1E6998160]];
  v5 = [MEMORY[0x1E695DF90] dictionary];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = v4;
  v6 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = 0;
    v10 = *v24;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v24 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v23 + 1) + 8 * i);
        v13 = [v5 objectForKey:v12];
        v14 = [v13 unsignedIntegerValue];

        v15 = v14 + 1;
        v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v14 + 1];
        [v5 setObject:v16 forKey:v12];

        if (v15 > v8)
        {
          v17 = v12;

          v8 = v15;
          v9 = v17;
        }
      }

      v7 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v7);
  }

  else
  {
    v9 = 0;
  }

  v18 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)predictedLabelHypothesesForString:(id)a3 maximumCount:(unint64_t)a4
{
  v52 = *MEMORY[0x1E69E9840];
  v4 = [(NLModelImplNX *)self predictedLabelHypothesesDictionaryForString:a3 maximumCount:?];
  v5 = [v4 objectForKey:*MEMORY[0x1E6998168]];
  v41 = v4;
  v6 = [v4 objectForKey:*MEMORY[0x1E6998170]];
  v7 = [MEMORY[0x1E695DF90] dictionary];
  v42 = [MEMORY[0x1E695DF90] dictionary];
  v44 = v6;
  if ([v5 count])
  {
    v8 = 0;
    v43 = v5;
    do
    {
      if (v8 >= [v6 count])
      {
        break;
      }

      v9 = [v5 objectAtIndex:v8];
      v10 = [v6 objectAtIndex:v8];
      if ([v9 count])
      {
        v11 = 0;
        do
        {
          if (v11 >= [v10 count])
          {
            break;
          }

          v12 = [v9 objectAtIndex:v11];
          v13 = [v7 objectForKey:v12];
          v14 = [v10 objectAtIndex:v11];
          v15 = MEMORY[0x1E696AD98];
          [v13 doubleValue];
          v17 = v16;
          [v14 doubleValue];
          v19 = [v15 numberWithDouble:v17 + v18];
          [v7 setObject:v19 forKey:v12];

          ++v11;
        }

        while (v11 < [v9 count]);
      }

      ++v8;
      v5 = v43;
      v6 = v44;
    }

    while (v8 < [v43 count]);
  }

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v20 = v7;
  v21 = [v20 countByEnumeratingWithState:&v47 objects:v51 count:16];
  v22 = v20;
  if (!v21)
  {
    goto LABEL_22;
  }

  v23 = v21;
  v24 = *v48;
  v25 = 0.0;
  do
  {
    for (i = 0; i != v23; ++i)
    {
      if (*v48 != v24)
      {
        objc_enumerationMutation(v20);
      }

      v27 = [v20 objectForKey:*(*(&v47 + 1) + 8 * i)];
      [v27 doubleValue];
      v25 = v25 + v28;
    }

    v23 = [v20 countByEnumeratingWithState:&v47 objects:v51 count:16];
  }

  while (v23);

  if (a4 && v25 > 0.0)
  {
    v29 = [v20 allKeys];
    v45[0] = MEMORY[0x1E69E9820];
    v45[1] = 3221225472;
    v45[2] = __64__NLModelImplNX_predictedLabelHypothesesForString_maximumCount___block_invoke;
    v45[3] = &unk_1E7628EA8;
    v30 = v20;
    v46 = v30;
    v31 = [v29 sortedArrayUsingComparator:v45];

    v32 = 0;
    do
    {
      if (v32 >= [v31 count])
      {
        break;
      }

      v33 = [v31 objectAtIndex:v32];
      v34 = [v30 objectForKey:v33];
      v35 = MEMORY[0x1E696AD98];
      [v34 doubleValue];
      v37 = [v35 numberWithDouble:v36 / v25];
      [v42 setObject:v37 forKey:v33];

      ++v32;
    }

    while (a4 != v32);

    v22 = v46;
    v6 = v44;
LABEL_22:
  }

  v38 = *MEMORY[0x1E69E9840];

  return v42;
}

uint64_t __64__NLModelImplNX_predictedLabelHypothesesForString_maximumCount___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 objectForKey:a2];
  [v7 doubleValue];
  v9 = v8;

  v10 = [*(a1 + 32) objectForKey:v6];

  [v10 doubleValue];
  v12 = v11;

  if (v9 > v12)
  {
    return -1;
  }

  else
  {
    return v9 < v12;
  }
}

@end