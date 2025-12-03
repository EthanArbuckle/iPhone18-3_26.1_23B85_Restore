@interface NLModelImplX
- (NLModelImplX)initWithModelData:(id)data configuration:(id)configuration labelMap:(id)map vocabularyMap:(id)vocabularyMap documentFrequencyMap:(id)frequencyMap customEmbeddingData:(id)embeddingData trainingInfo:(id)info error:(id *)self0;
- (NLModelImplX)initWithModelTrainer:(id)trainer error:(id *)error;
- (float)outputForString:(id)string;
- (id)predictedLabelForString:(id)string;
- (id)predictedLabelHypothesesForString:(id)string maximumCount:(unint64_t)count;
- (id)predictedLabelHypothesesForTokens:(id)tokens maximumCount:(unint64_t)count;
- (id)predictedLabelsForTokens:(id)tokens;
- (id)trainingInfo;
- (unint64_t)systemVersion;
- (void)dealloc;
@end

@implementation NLModelImplX

- (NLModelImplX)initWithModelData:(id)data configuration:(id)configuration labelMap:(id)map vocabularyMap:(id)vocabularyMap documentFrequencyMap:(id)frequencyMap customEmbeddingData:(id)embeddingData trainingInfo:(id)info error:(id *)self0
{
  v105[1] = *MEMORY[0x1E69E9840];
  dataCopy = data;
  configurationCopy = configuration;
  mapCopy = map;
  embeddingDataCopy = embeddingData;
  v89 = 0;
  v17 = dataCopy;
  infoCopy = info;
  revision = [configurationCopy revision];
  v104 = *MEMORY[0x1E69B2808];
  v105[0] = dataCopy;
  v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v105 forKeys:&v104 count:1];
  cf = MRLNeuralNetworkCreate();
  v72 = stringForKey(infoCopy, 0x1F10C6780, 0);
  v20 = v72;
  v71 = stringForKeyWithDefault(infoCopy, @"TrainingEmbeddingType", 0);
  v21 = v71;
  v83 = stringForKeyWithDefault(infoCopy, @"EmbeddingModelIdentifier", 0);
  v70 = unsignedIntegerForKey(infoCopy, 0x1F10C67C0, 0);

  language = v20;
  if (!v20)
  {
    language = [configurationCopy language];
  }

  v23 = v21;
  if (!v21)
  {
    options = [configurationCopy options];
    v23 = stringForKeyWithDefault(options, @"EmbeddingType", 0);
  }

  v80 = embeddingDataCopy;
  v78 = v21;
  if ([v23 isEqualToString:@"Static"])
  {
    if (!language || ([NLEmbedding wordEmbeddingForLanguage:language revision:revision], (v25 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      NSLog(&cfstr_FailedToLoadSt.isa, language, revision);
LABEL_22:
      requestWordEmbeddingAssetsForLanguage(language);
LABEL_23:
      v26 = 0;
      goto LABEL_24;
    }

    goto LABEL_16;
  }

  if (![v23 isEqualToString:@"Dynamic"])
  {
    if ([v23 isEqualToString:@"Transformer"])
    {
      if (!language || ([NLEmbedding transformerContextualTokenEmbeddingForLanguage:language], (v25 = objc_claimAutoreleasedReturnValue()) == 0))
      {
        NSLog(&cfstr_FailedToLoadTr.isa, language);
        goto LABEL_22;
      }

      goto LABEL_16;
    }

    if (![v23 isEqualToString:@"Contextual"])
    {
      if ([v23 isEqualToString:@"Custom"])
      {
        if (embeddingDataCopy)
        {
          v88 = 0;
          v26 = [NLEmbedding embeddingWithData:embeddingDataCopy error:&v88];
          v30 = v88;
          if (v26)
          {
            v29 = 0;
            goto LABEL_25;
          }

          v82 = v30;
        }

        else
        {
          v82 = 0;
        }

        NSLog(&cfstr_FailedToLoadEm_3.isa);
        v26 = 0;
        v29 = 0;
        v28 = cf;
        v30 = v82;
        goto LABEL_26;
      }

      goto LABEL_23;
    }

    if (v83)
    {
      v27 = [NLContextualEmbedding contextualEmbeddingWithModelIdentifier:?];
      if (!v27)
      {
        NSLog(&cfstr_FailedToLoadCo_0.isa, v83);
        goto LABEL_23;
      }

      v28 = cf;
    }

    else
    {
      if (!language)
      {
        NSLog(&cfstr_FailedToLoadCo_2.isa);
        goto LABEL_23;
      }

      v27 = [NLContextualEmbedding contextualEmbeddingWithLanguage:language];
      v28 = cf;
      if (!v27)
      {
        NSLog(&cfstr_FailedToLoadCo_1.isa, language);
        v26 = 0;
        v29 = 0;
LABEL_54:
        v30 = 0;
        goto LABEL_26;
      }
    }

    v54 = v27;
    if (([v27 hasAvailableAssets] & 1) == 0)
    {
      NSLog(&cfstr_AssetsNotAvail.isa, v54);
      requestContextualEmbeddingAssetsForEmbedding_0(v54);
    }

    v29 = v54;
    v26 = 0;
    goto LABEL_54;
  }

  if (!language || ([NLEmbedding contextualWordEmbeddingForLanguage:language revision:revision], (v25 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    NSLog(&cfstr_FailedToLoadDy_0.isa, language, revision);
    goto LABEL_22;
  }

LABEL_16:
  v26 = v25;
LABEL_24:
  v29 = 0;
  v30 = 0;
LABEL_25:
  v28 = cf;
LABEL_26:
  v81 = v30;
  obj = v29;
  if (v28 && v26 | v29)
  {
    v31 = v19;
    v32 = v17;
    v87.receiver = self;
    v87.super_class = NLModelImplX;
    v33 = [(NLModelImplX *)&v87 init];
    if (v33)
    {
      v34 = v33;
      v33->_montrealModel = cf;
      v35 = [configurationCopy copy];
      configuration = v34->_configuration;
      v34->_configuration = v35;

      objc_storeStrong(&v34->_embedding, v26);
      objc_storeStrong(&v34->_contextualEmbedding, obj);
      v37 = [v80 copy];
      customEmbeddingData = v34->_customEmbeddingData;
      v34->_customEmbeddingData = v37;

      v39 = [mapCopy copy];
      labelMap = v34->_labelMap;
      v34->_labelMap = v39;

      v34->_numberOfTrainingInstances = v70;
      objc_storeStrong(&v34->_trainingLanguage, v72);
      objc_storeStrong(&v34->_trainingEmbeddingType, v71);
      objc_storeStrong(&v34->_embeddingModelIdentifier, v83);
      objc_storeStrong(&v34->_modelData, data);
      v41 = v34;
      self = v41;
      v17 = v32;
      v19 = v31;
      goto LABEL_40;
    }

    self = 0;
    v19 = v31;
    v28 = cf;
  }

  if (error)
  {
    if (v89)
    {
      v42 = v89;
LABEL_36:
      *error = v42;
      goto LABEL_37;
    }

    if (v81)
    {
      v42 = v81;
      goto LABEL_36;
    }

    if (v26)
    {
      v75 = MEMORY[0x1E696ABC0];
      v102 = *MEMORY[0x1E696A578];
      v103 = @"Failed to load model file, invalid Transfer model data";
      [MEMORY[0x1E695DF20] dictionaryWithObjects:&v103 forKeys:&v102 count:1];
      v45 = v19;
      v47 = v46 = v17;
      v28 = cf;
      *error = [v75 errorWithDomain:@"NLNaturalLanguageErrorDomain" code:1 userInfo:v47];

      v17 = v46;
      v19 = v45;
    }

    else
    {
      v69 = mapCopy;
      if ([v23 isEqualToString:@"Static"])
      {
        v48 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to load model file, could not find static embedding for language %@ revision %llu", language, revision];
        v76 = MEMORY[0x1E696ABC0];
        v49 = configurationCopy;
        v50 = v17;
        v100 = *MEMORY[0x1E696A578];
        v101 = v48;
        v51 = MEMORY[0x1E695DF20];
        v52 = &v101;
        v53 = &v100;
      }

      else if ([v23 isEqualToString:@"Dynamic"])
      {
        v48 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to load model file, could not find dynamic embedding for language %@ revision %llu", language, revision];
        v76 = MEMORY[0x1E696ABC0];
        v49 = configurationCopy;
        v50 = v17;
        v98 = *MEMORY[0x1E696A578];
        v99 = v48;
        v51 = MEMORY[0x1E695DF20];
        v52 = &v99;
        v53 = &v98;
      }

      else
      {
        if (![v23 isEqualToString:@"Transformer"])
        {
          v77 = v20;
          cfa = v19;
          if ([v23 isEqualToString:@"Contextual"])
          {
            v58 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to load model file, could not find contextual embedding for language %@", language];
            v59 = MEMORY[0x1E696ABC0];
            v94 = *MEMORY[0x1E696A578];
            v95 = v58;
            v60 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v95 forKeys:&v94 count:1];
            *error = [v59 errorWithDomain:@"NLNaturalLanguageErrorDomain" code:8 userInfo:v60];
          }

          else
          {
            v61 = v17;
            v62 = [v23 isEqualToString:@"Custom"];
            v63 = MEMORY[0x1E696ABC0];
            v64 = *MEMORY[0x1E696A578];
            if (v62)
            {
              v92 = *MEMORY[0x1E696A578];
              v93 = @"Failed to load model file, invalid custom embedding";
              v65 = MEMORY[0x1E695DF20];
              v66 = &v93;
              v67 = &v92;
            }

            else
            {
              v90 = *MEMORY[0x1E696A578];
              v91 = @"Failed to load model file, invalid embedding type";
              v65 = MEMORY[0x1E695DF20];
              v66 = &v91;
              v67 = &v90;
            }

            v68 = [v65 dictionaryWithObjects:v66 forKeys:v67 count:1];
            *error = [v63 errorWithDomain:@"NLNaturalLanguageErrorDomain" code:1 userInfo:v68];

            v17 = v61;
          }

          v19 = cfa;
          v20 = v77;
          goto LABEL_37;
        }

        v48 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to load model file, could not find transformer embedding for language %@", language];
        v76 = MEMORY[0x1E696ABC0];
        v49 = configurationCopy;
        v50 = v17;
        v96 = *MEMORY[0x1E696A578];
        v97 = v48;
        v51 = MEMORY[0x1E695DF20];
        v52 = &v97;
        v53 = &v96;
      }

      [v51 dictionaryWithObjects:v52 forKeys:v53 count:1];
      v55 = v20;
      v57 = v56 = v19;
      v17 = v50;
      configurationCopy = v49;
      mapCopy = v69;
      *error = [v76 errorWithDomain:@"NLNaturalLanguageErrorDomain" code:8 userInfo:v57];

      v19 = v56;
      v20 = v55;
      v28 = cf;
    }
  }

LABEL_37:
  if (v28)
  {
    CFRelease(v28);
  }

  v41 = 0;
LABEL_40:

  v43 = *MEMORY[0x1E69E9840];
  return v41;
}

- (NLModelImplX)initWithModelTrainer:(id)trainer error:(id *)error
{
  v163 = *MEMORY[0x1E69E9840];
  v142 = 0;
  trainerCopy = trainer;
  configuration = [trainerCopy configuration];
  language = [configuration language];
  embeddingURL = [configuration embeddingURL];
  embeddingModel = [configuration embeddingModel];
  embeddingData = [configuration embeddingData];
  dataSet = [trainerCopy dataSet];
  *buf = xmmword_19D4E9090;
  *&buf[16] = vdupq_n_s64(0x400uLL);
  v162 = xmmword_19D4E9510;
  v125 = [NLDataSet dataSetWithDataSet:dataSet constraintParameters:buf modelTrainer:trainerCopy];
  labelMap = [dataSet labelMap];
  inverseLabelMap = [dataSet inverseLabelMap];
  revision = [configuration revision];
  numberOfTrainingInstances = [dataSet numberOfTrainingInstances];
  numberOfLabels = [dataSet numberOfLabels];
  numberOfValidationInstances = [dataSet numberOfValidationInstances];
  options = [trainerCopy options];
  v112 = unsignedIntegerForKey(options, @"MaximumIterations", 75);

  options2 = [configuration options];
  v127 = stringForKeyWithDefault(options2, @"EmbeddingType", 0);

  v11 = language;
  if (!language)
  {
    v12 = [dataSet dataProviderOfType:?];
    recognizedLanguage = [v12 recognizedLanguage];

    v11 = recognizedLanguage;
  }

  v126 = v11;
  if (v127 || !v11)
  {
    if ([(__CFString *)v127 isEqualToString:@"Static"])
    {
      v16 = v126;
      if (v126)
      {
        v14 = [NLEmbedding wordEmbeddingForLanguage:v126 revision:revision];
        v16 = v126;
        if (v14)
        {
          goto LABEL_22;
        }
      }

      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to load static embedding for language %@ revision %llu", v16, revision];
      v119 = v17;
      if (error)
      {
        v19 = MEMORY[0x1E696ABC0];
        v157 = *MEMORY[0x1E696A578];
        v158 = v17;
        v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v158 forKeys:&v157 count:1];
        *error = [v19 errorWithDomain:@"NLNaturalLanguageErrorDomain" code:8 userInfo:v20];
      }

      requestWordEmbeddingAssetsForLanguage(v126);
      goto LABEL_49;
    }

    if ([(__CFString *)v127 isEqualToString:@"Dynamic"])
    {
      v16 = v126;
      if (v126)
      {
        v14 = [NLEmbedding contextualWordEmbeddingForLanguage:v126 revision:revision];
        v16 = v126;
        if (v14)
        {
          goto LABEL_22;
        }
      }

      v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to load dynamic embedding for language %@ revision %llu", v16, revision];
      v119 = v21;
      if (error)
      {
        v22 = MEMORY[0x1E696ABC0];
        v155 = *MEMORY[0x1E696A578];
        v156 = v21;
        v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v156 forKeys:&v155 count:1];
        *error = [v22 errorWithDomain:@"NLNaturalLanguageErrorDomain" code:8 userInfo:v23];
      }

      requestWordEmbeddingAssetsForLanguage(v126);
      goto LABEL_49;
    }

    if ([(__CFString *)v127 isEqualToString:@"Transformer"])
    {
      v16 = v126;
      if (v126)
      {
        v14 = [NLEmbedding transformerContextualTokenEmbeddingForLanguage:?];
        v16 = v126;
        if (v14)
        {
          goto LABEL_22;
        }
      }

      v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to load transformer embedding for language %@", v16];
      v119 = v26;
      if (error)
      {
        v27 = MEMORY[0x1E696ABC0];
        v153 = *MEMORY[0x1E696A578];
        v154 = v26;
        v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v154 forKeys:&v153 count:1];
        *error = [v27 errorWithDomain:@"NLNaturalLanguageErrorDomain" code:8 userInfo:v28];
      }

      requestWordEmbeddingAssetsForLanguage(v126);
      goto LABEL_49;
    }

    if ([(__CFString *)v127 isEqualToString:@"Contextual"])
    {
      v34 = v126;
      if (v126)
      {
        v35 = [NLContextualEmbedding contextualEmbeddingWithLanguage:?];
        v14 = v35;
        v34 = v126;
        if (v35)
        {
          if ([v35 hasAvailableAssets])
          {
            v118 = 0;
            embeddingData2 = 0;
            v116 = 0;
            v119 = 0;
LABEL_55:
            v124 = 0;
            if (![v14 dimension] || numberOfTrainingInstances < 2 || (v124 = 0, numberOfLabels < 2) || (v109 = v14, numberOfValidationInstances <= 1))
            {
              v24 = v14;
              v25 = 0;
              goto LABEL_117;
            }

            goto LABEL_59;
          }

          v95 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Assets not available for contextual embedding %@", v14];
          v119 = v95;
          if (error)
          {
            v96 = MEMORY[0x1E696ABC0];
            v151 = *MEMORY[0x1E696A578];
            v152 = v95;
            v97 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v152 forKeys:&v151 count:1];
            *error = [v96 errorWithDomain:@"NLNaturalLanguageErrorDomain" code:8 userInfo:v97];
          }

          requestContextualEmbeddingAssetsForEmbedding_0(v14);
          v32 = 0;
          embeddingData2 = 0;
          goto LABEL_50;
        }
      }

      v37 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to load contextual embedding for language %@", v34];
      v119 = v37;
      if (error)
      {
        v38 = MEMORY[0x1E696ABC0];
        v149 = *MEMORY[0x1E696A578];
        v150 = v37;
        v39 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v150 forKeys:&v149 count:1];
        *error = [v38 errorWithDomain:@"NLNaturalLanguageErrorDomain" code:8 userInfo:v39];
      }

LABEL_49:
      v32 = 0;
      embeddingData2 = 0;
      v14 = 0;
LABEL_50:
      v33 = 0;
LABEL_51:
      v118 = v33;
      v116 = v32;
      if (!v119)
      {
LABEL_54:
        if (v14)
        {
          goto LABEL_55;
        }

        v24 = 0;
        v124 = 0;
LABEL_73:
        v25 = 0;
        goto LABEL_117;
      }

      v40 = v119;
LABEL_53:
      v119 = v40;
      NSLog(&stru_1F10C8E20.isa, v40);
      [trainerCopy logMessage:v119];
      goto LABEL_54;
    }

    if (![(__CFString *)v127 isEqualToString:@"Custom"])
    {
      v24 = 0;
      v124 = 0;
      v118 = 0;
      embeddingData2 = 0;
      v116 = 0;
      v119 = 0;
      goto LABEL_73;
    }

    if (embeddingURL)
    {
      v118 = [NLEmbedding _embeddingWithContentsOfURL:embeddingURL error:0];
      if (v118)
      {
        embeddingData2 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:embeddingURL];
        v36 = 0;
      }

      else
      {
        v99 = [NLModel modelWithContentsOfURL:embeddingURL error:error];
        v36 = v99;
        if (!v99)
        {
          v116 = 0;
          goto LABEL_141;
        }

        embeddingData2 = [v99 embeddingData];
      }

      v116 = v36;
      if (embeddingData2)
      {
        v14 = [NLEmbedding _embeddingWithData:embeddingData2 error:error];
        if (v14)
        {
          goto LABEL_23;
        }

        goto LABEL_142;
      }

LABEL_141:
      embeddingData2 = 0;
LABEL_142:
      v119 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to load custom embedding from %@", embeddingURL];
      v14 = 0;
      v33 = v118;
      v32 = v116;
      goto LABEL_51;
    }

    if (embeddingModel)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v98 = embeddingModel;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0 || ([NLModel modelWithMLModel:embeddingModel error:error], (v98 = objc_claimAutoreleasedReturnValue()) == 0))
        {
          v118 = 0;
          v14 = 0;
          embeddingData2 = 0;
          v116 = 0;
LABEL_145:
          v40 = @"Failed to load custom embedding from model";
          goto LABEL_53;
        }
      }

      v116 = v98;
      embeddingData2 = [v98 embeddingData];
      if (embeddingData2)
      {
        v14 = [NLEmbedding _embeddingWithData:embeddingData2 error:error];
        v118 = 0;
        if (v14)
        {
          goto LABEL_23;
        }

        v40 = @"Failed to load custom embedding from model";
        v14 = 0;
        goto LABEL_53;
      }

      v118 = 0;
      v14 = 0;
      embeddingData2 = 0;
      goto LABEL_145;
    }

    if (!embeddingData)
    {
      v40 = @"Failed to load custom embedding, no embedding specified";
      if (error)
      {
        v101 = MEMORY[0x1E696ABC0];
        v147 = *MEMORY[0x1E696A578];
        v148 = @"Failed to load custom embedding, no embedding specified";
        v102 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v148 forKeys:&v147 count:1];
        *error = [v101 errorWithDomain:@"NLNaturalLanguageErrorDomain" code:4 userInfo:v102];

        v118 = 0;
        v14 = 0;
        embeddingData2 = 0;
        v116 = 0;
        v40 = @"Failed to load custom embedding, no embedding specified";
      }

      else
      {
        v118 = 0;
        v14 = 0;
        embeddingData2 = 0;
        v116 = 0;
      }

      goto LABEL_53;
    }

    v118 = [NLEmbedding _embeddingWithData:embeddingData error:0];
    if (v118)
    {
      v100 = embeddingData;
      v116 = 0;
      goto LABEL_133;
    }

    v103 = [NLModel modelWithData:embeddingData error:error];
    v116 = v103;
    if (v103)
    {
      embeddingData3 = [v103 embeddingData];
      if (embeddingData3)
      {
        v100 = embeddingData3;
LABEL_133:
        embeddingData2 = v100;
        v14 = [NLEmbedding _embeddingWithData:"_embeddingWithData:error:" error:?];
        if (v14)
        {
          goto LABEL_23;
        }

        goto LABEL_154;
      }

      v14 = 0;
      embeddingData2 = 0;
    }

    else
    {
      v14 = 0;
      embeddingData2 = 0;
      v116 = 0;
    }

LABEL_154:
    v40 = @"Failed to load custom embedding from data";
    goto LABEL_53;
  }

  v14 = [NLEmbedding contextualWordEmbeddingForLanguage:v11 revision:revision];
  if (!v14)
  {
    v14 = [NLEmbedding wordEmbeddingForLanguage:v126 revision:revision];
    if (v14)
    {
      v15 = NLModelEmbeddingTypeStatic;
      goto LABEL_21;
    }

    v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to load embedding for language %@ revision %llu", v126, revision];
    v119 = v29;
    if (error)
    {
      v30 = MEMORY[0x1E696ABC0];
      v159 = *MEMORY[0x1E696A578];
      v160 = v29;
      v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v160 forKeys:&v159 count:1];
      *error = [v30 errorWithDomain:@"NLNaturalLanguageErrorDomain" code:8 userInfo:v31];
    }

    requestWordEmbeddingAssetsForLanguage(v126);
    v32 = 0;
    embeddingData2 = 0;
    v14 = 0;
    v33 = 0;
    v127 = 0;
    goto LABEL_51;
  }

  v15 = NLModelEmbeddingTypeDynamic;
LABEL_21:
  v127 = *v15;
LABEL_22:
  v116 = 0;
  embeddingData2 = 0;
  v118 = 0;
LABEL_23:
  v24 = 0;
  if (![v14 dimension] || numberOfTrainingInstances <= 1)
  {
    v124 = v14;
    v119 = 0;
    v25 = 0;
    goto LABEL_117;
  }

  v119 = 0;
  if (numberOfLabels < 2 || (v109 = 0, v124 = v14, numberOfValidationInstances < 2))
  {
    v24 = 0;
    v124 = v14;
    v25 = 0;
    goto LABEL_117;
  }

LABEL_59:
  dimension = [v14 dimension];
  numberOfTrainingInstances2 = [v125 numberOfTrainingInstances];
  if (numberOfTrainingInstances2 < 0x21)
  {
    v46 = 1;
  }

  else
  {
    v43 = 16;
    if (numberOfTrainingInstances2 < 0x100)
    {
      v43 = numberOfTrainingInstances2 >> 4;
    }

    if (3 * v43 >= numberOfTrainingInstances2)
    {
      v44 = numberOfTrainingInstances2;
    }

    else
    {
      v44 = 3 * v43;
    }

    if (3 * v43 <= v43)
    {
      v46 = v43;
    }

    else
    {
      v45 = numberOfTrainingInstances2;
      v46 = v43;
      do
      {
        v47 = v43 + 1;
        if (numberOfTrainingInstances2 % (v43 + 1) < v45)
        {
          v46 = v43 + 1;
          v45 = numberOfTrainingInstances2 % (v43 + 1);
        }

        ++v43;
      }

      while (v47 < v44);
    }
  }

  numberOfValidationInstances2 = [v125 numberOfValidationInstances];
  if (numberOfValidationInstances2 < 0x21)
  {
    v52 = 1;
  }

  else
  {
    v49 = 16;
    if (numberOfValidationInstances2 < 0x100)
    {
      v49 = numberOfValidationInstances2 >> 4;
    }

    if (3 * v49 >= numberOfValidationInstances2)
    {
      v50 = numberOfValidationInstances2;
    }

    else
    {
      v50 = 3 * v49;
    }

    if (3 * v49 <= v49)
    {
      v52 = v49;
    }

    else
    {
      v51 = numberOfValidationInstances2;
      v52 = v49;
      do
      {
        v53 = v49 + 1;
        if (numberOfValidationInstances2 % (v49 + 1) < v51)
        {
          v52 = v49 + 1;
          v51 = numberOfValidationInstances2 % (v49 + 1);
        }

        ++v49;
      }

      while (v53 < v50);
    }
  }

  v54 = *MEMORY[0x1E69B2720];
  v145[0] = *MEMORY[0x1E69B2728];
  v145[1] = v54;
  v146[0] = &unk_1F10D1370;
  v146[1] = &unk_1F10D1388;
  v145[2] = *MEMORY[0x1E69B2718];
  v55 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:dimension];
  v146[2] = v55;
  v145[3] = *MEMORY[0x1E69B2740];
  v56 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:numberOfLabels - 1];
  v146[3] = v56;
  v145[4] = *MEMORY[0x1E69B2708];
  v57 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v46];
  v146[4] = v57;
  v145[5] = *MEMORY[0x1E69B2710];
  v58 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v52];
  v146[5] = v58;
  v145[6] = *MEMORY[0x1E69B2738];
  v59 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v112];
  v146[6] = v59;
  v145[7] = *MEMORY[0x1E69B2730];
  LODWORD(v60) = 973279855;
  v61 = [MEMORY[0x1E696AD98] numberWithFloat:v60];
  v146[7] = v61;
  v111 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v146 forKeys:v145 count:8];

  cf = MLPModelTrainerCreate();
  if (cf)
  {
    v62 = [NLDataEnumerator alloc];
    v63 = [v125 dataProviderOfType:0];
    v107 = [(NLDataEnumerator *)v62 initWithDataProvider:v63];

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    Current = CFAbsoluteTimeGetCurrent();
    if ([v125 numberOfValidationInstances])
    {
      v65 = [NLDataEnumerator alloc];
      v66 = [v125 dataProviderOfType:1];
      v108 = [(NLDataEnumerator *)v65 initWithDataProvider:v66];
    }

    else
    {
      v108 = 0;
    }

    reportInstanceCompletionToTrainer(trainerCopy, numberOfTrainingInstances - 1, numberOfTrainingInstances, 2);
    v67 = MEMORY[0x1E696AEC0];
    lowercaseString = [(__CFString *)v127 lowercaseString];
    v69 = [v67 stringWithFormat:@"Starting %@ transfer training with %llu training samples and %llu validation samples", lowercaseString, numberOfTrainingInstances, numberOfValidationInstances];
    [trainerCopy logMessage:v69];

    v70 = objc_autoreleasePoolPush();
    v71 = NLGetLogCategory(0);
    internal = [v71 internal];

    if (os_log_type_enabled(internal, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      *&buf[4] = 0;
      _os_log_impl(&dword_19D48F000, internal, OS_LOG_TYPE_INFO, "event: %lu", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v70);
    if ([&unk_1F10D1478 count])
    {
      v73 = 0;
      do
      {
        v74 = objc_autoreleasePoolPush();
        v75 = NLGetLogCategory(0);
        internal2 = [v75 internal];

        if (os_log_type_enabled(internal2, OS_LOG_TYPE_INFO))
        {
          v77 = [&unk_1F10D1478 objectAtIndexedSubscript:v73];
          v78 = v77;
          uTF8String = [v77 UTF8String];
          *buf = 134218498;
          *&buf[4] = 1;
          *&buf[12] = 2048;
          *&buf[14] = v73;
          *&buf[22] = 2082;
          *&buf[24] = uTF8String;
          _os_log_impl(&dword_19D48F000, internal2, OS_LOG_TYPE_INFO, "event: %lu, column: %lu, value: %{public}s", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v74);
        ++v73;
      }

      while (v73 < [&unk_1F10D1478 count]);
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    *&buf[24] = __Block_byref_object_copy__4;
    *&v162 = __Block_byref_object_dispose__4;
    *(&v162 + 1) = &unk_1F10D14A0;
    v140[0] = 0;
    v140[1] = v140;
    v140[2] = 0x3032000000;
    v140[3] = __Block_byref_object_copy__4;
    v140[4] = __Block_byref_object_dispose__4;
    v141 = 0;
    v135 = v124;
    v136 = v109;
    v137 = labelMap;
    v138 = v107;
    v139 = dictionary;
    v80 = dictionary2;
    v132 = trainerCopy;
    v133 = v138;
    v81 = v135;
    v24 = v136;
    v134 = v137;
    v113 = v139;
    v82 = v132;
    v131 = v82;
    v83 = MLPModelTrainerTrainModel();
    v84 = objc_autoreleasePoolPush();
    v85 = NLGetLogCategory(0);
    internal3 = [v85 internal];

    if (os_log_type_enabled(internal3, OS_LOG_TYPE_INFO))
    {
      *v143 = 134217984;
      v144 = 3;
      _os_log_impl(&dword_19D48F000, internal3, OS_LOG_TYPE_INFO, "event: %lu", v143, 0xCu);
    }

    objc_autoreleasePoolPop(v84);
    current = [MEMORY[0x1E696AEC0] stringWithFormat:@"Finished transfer training in %.2f seconds", CFAbsoluteTimeGetCurrent() - Current];
    [v82 logMessage:current];

    if (v83)
    {
      v88 = NLModelContainerCopyContainerData();
      CFRelease(v83);
    }

    else
    {
      v88 = 0;
    }

    CFRelease(cf);

    _Block_object_dispose(v140, 8);
    _Block_object_dispose(buf, 8);

    if (!v88)
    {
      v25 = 0;
      v124 = v81;
      goto LABEL_117;
    }

    v89 = MEMORY[0x1E695DF90];
    v90 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:numberOfTrainingInstances];
    v111 = [v89 dictionaryWithObjectsAndKeys:{v90, 0x1F10C67C0, v127, 0x1F10C6800, 0}];

    if (v126)
    {
      [v111 setObject:v126 forKey:0x1F10C6780];
    }

    if (v24)
    {
      identifier = [v24 identifier];
      [v111 setObject:identifier forKey:0x1F10C6820];
    }

    v92 = [(NLModelImplX *)self initWithModelData:v88 configuration:configuration labelMap:inverseLabelMap vocabularyMap:0 documentFrequencyMap:0 customEmbeddingData:embeddingData2 trainingInfo:v111 error:0];
    CFRelease(v88);
    v25 = v92;
    self = v25;
  }

  else
  {
    v25 = 0;
    if (error && v142)
    {
      v25 = 0;
      *error = v142;
    }
  }

  v24 = v109;
LABEL_117:

  v93 = *MEMORY[0x1E69E9840];
  return v25;
}

CFMutableDictionaryRef __43__NLModelImplX_initWithModelTrainer_error___block_invoke(void **a1, void *a2, unsigned int a3, int a4, _BYTE *a5)
{
  v5 = 9;
  if (a1[7] == a2)
  {
    v5 = 8;
  }

  return copySampleDataEnumerator_1(a2, a3, a4, a1[4], a1[5], a1[6], a1[v5], a1[7] == a2, a5);
}

void __43__NLModelImplX_initWithModelTrainer_error___block_invoke_2(uint64_t a1, unsigned int a2, void *a3, _BYTE *a4)
{
  v47 = *MEMORY[0x1E69E9840];
  v7 = MEMORY[0x1E69B2748];
  v8 = [a3 objectForKey:*MEMORY[0x1E69B2748]];
  v9 = *(*(*(a1 + 80) + 8) + 40);
  v10 = [*(a1 + 32) options];
  v11 = [v10 objectForKeyedSubscript:@"SkipTrainingAccuracyEvaluation"];
  if (v11)
  {

    goto LABEL_8;
  }

  if (!*(*(*(a1 + 88) + 8) + 40))
  {

    goto LABEL_7;
  }

  v12 = [v8 compare:?];

  if (v12 == 1)
  {
LABEL_7:
    v13 = *(a1 + 96);
    v14 = *(a1 + 40);
    v15 = *(a1 + 48);
    v16 = *(a1 + 56);
    v17 = *(a1 + 64);
    *&v18 = v16;
    *(&v18 + 1) = v17;
    *&v19 = v14;
    *(&v19 + 1) = v15;
    v38 = v19;
    v39 = v18;
    v40 = *(a1 + 72);
    v20 = [MLPModelTrainerEvaluateModel() objectForKey:*v7];

    v9 = v20;
  }

LABEL_8:
  objc_storeStrong((*(*(a1 + 80) + 8) + 40), v9);
  objc_storeStrong((*(*(a1 + 88) + 8) + 40), v8);
  v21 = *(a1 + 32);
  v22 = MEMORY[0x1E696AEC0];
  [v8 floatValue];
  v24 = [v22 stringWithFormat:@"Iteration %llu validation accuracy %.6f", a2 + 1, v23 / 100.0];
  [v21 logMessage:v24];

  v25 = objc_autoreleasePoolPush();
  v26 = NLGetLogCategory(0);
  v27 = [v26 internal];

  if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
  {
    *&v28 = *(a1 + 104) - a2;
    *buf = 134218496;
    v42 = 2;
    v43 = 2048;
    v44 = 0;
    v45 = 2048;
    v46 = v28;
    _os_log_impl(&dword_19D48F000, v27, OS_LOG_TYPE_INFO, "event: %lu, column: %lu, value: %llu", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v25);
  v29 = objc_autoreleasePoolPush();
  v30 = NLGetLogCategory(0);
  v31 = [v30 internal];

  if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
  {
    [v9 floatValue];
    *buf = 134218496;
    v42 = 2;
    v43 = 2048;
    v44 = 1;
    v45 = 2048;
    v46 = v32 / 100.0;
    _os_log_impl(&dword_19D48F000, v31, OS_LOG_TYPE_INFO, "event: %lu, column: %lu, value: %f", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v29);
  v33 = objc_autoreleasePoolPush();
  v34 = NLGetLogCategory(0);
  v35 = [v34 internal];

  if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
  {
    [v8 floatValue];
    *buf = 134218496;
    v42 = 2;
    v43 = 2048;
    v44 = 2;
    v45 = 2048;
    v46 = v36 / 100.0;
    _os_log_impl(&dword_19D48F000, v35, OS_LOG_TYPE_INFO, "event: %lu, column: %lu, value: %f", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v33);
  if ([*(a1 + 32) shouldStop])
  {
    *a4 = 1;
  }

  v37 = *MEMORY[0x1E69E9840];
}

uint64_t __43__NLModelImplX_initWithModelTrainer_error___block_invoke_92(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = [*(a1 + 32) shouldStop];
  if (result)
  {
    *a3 = 1;
  }

  return result;
}

- (void)dealloc
{
  montrealModel = self->_montrealModel;
  if (montrealModel)
  {
    CFRelease(montrealModel);
  }

  v4.receiver = self;
  v4.super_class = NLModelImplX;
  [(NLModelImplX *)&v4 dealloc];
}

- (unint64_t)systemVersion
{
  configuration = [(NLModelImplX *)self configuration];
  options = [configuration options];

  v5 = stringForKeyWithDefault(options, @"EmbeddingType", 0);
  if ([v5 isEqualToString:@"Contextual"])
  {
    configuration2 = [(NLModelImplX *)self configuration];
    language = [configuration2 language];

    v8 = [NLContextualEmbedding systemVersionForLanguage:language];
  }

  else
  {
    v8 = 2;
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

- (float)outputForString:(id)string
{
  v23[1] = *MEMORY[0x1E69E9840];
  stringCopy = string;
  contextualEmbedding = self->_contextualEmbedding;
  v6 = inputSequenceFromSentence(stringCopy, 0);
  v7 = v6;
  if (contextualEmbedding)
  {
    normalizedQuoteTokens(v6);
  }

  else
  {
    formattedTokens(v6);
  }
  v8 = ;

  embedding = self->_contextualEmbedding;
  if (embedding)
  {
    v23[0] = v8;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
    v22 = stringCopy;
    v11 = MEMORY[0x1E695DEC8];
    v12 = &v22;
  }

  else
  {
    embedding = self->_embedding;
    if (!embedding)
    {
LABEL_13:
      Output = 0;
      goto LABEL_14;
    }

    v21 = v8;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v21 count:1];
    v20 = stringCopy;
    v11 = MEMORY[0x1E695DEC8];
    v12 = &v20;
  }

  v13 = [v11 arrayWithObjects:v12 count:1];
  embedding = [embedding vectorsForTokenizedSentences:v10 untokenizedSentences:v13 maxTokens:50];

  if (self->_montrealModel)
  {
    v14 = embedding == 0;
  }

  else
  {
    v14 = 1;
  }

  if (v14)
  {
    goto LABEL_13;
  }

  [embedding bytes];
  MRLNeuralNetworkSetInput();
  montrealModel = self->_montrealModel;
  MRLNeuralNetworkPredict();
  v16 = self->_montrealModel;
  Output = MRLNeuralNetworkGetOutput();
LABEL_14:

  v18 = *MEMORY[0x1E69E9840];
  return Output;
}

- (id)predictedLabelForString:(id)string
{
  stringCopy = string;
  v5 = [(NSDictionary *)self->_labelMap count];
  v6 = [(NLModelImplX *)self outputForString:stringCopy];
  if (v6)
  {
    if (v5)
    {
      v8 = 0;
      v9 = 0;
      v7 = 0.0;
      do
      {
        if (v6[v9] > *&v7)
        {
          v8 = v9;
          *&v7 = v6[v9];
        }

        ++v9;
      }

      while (v5 != v9);
      v10 = v8 + 1;
    }

    else
    {
      v10 = 1;
    }

    labelMap = self->_labelMap;
    v13 = [MEMORY[0x1E696AD98] numberWithInteger:{v10, v7}];
    v11 = [(NSDictionary *)labelMap objectForKey:v13];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)predictedLabelsForTokens:(id)tokens
{
  tokensCopy = tokens;
  v5 = [tokensCopy componentsJoinedByString:@" "];
  v6 = [(NLModelImplX *)self predictedLabelForString:v5];

  array = [MEMORY[0x1E695DF70] array];
  if ([tokensCopy count])
  {
    v8 = 0;
    if (v6)
    {
      v9 = v6;
    }

    else
    {
      v9 = &stru_1F10C6540;
    }

    do
    {
      [array addObject:v9];
      ++v8;
    }

    while (v8 < [tokensCopy count]);
  }

  return array;
}

- (id)predictedLabelHypothesesForString:(id)string maximumCount:(unint64_t)count
{
  stringCopy = string;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v7 = [(NSDictionary *)self->_labelMap count];
  v8 = [(NLModelImplX *)self outputForString:stringCopy];
  if (v8 && v7)
  {
    v9 = v8;
    v10 = 1;
    do
    {
      labelMap = self->_labelMap;
      v12 = [MEMORY[0x1E696AD98] numberWithInteger:v10];
      v13 = [(NSDictionary *)labelMap objectForKey:v12];

      if (v13)
      {
        v14 = [MEMORY[0x1E696AD98] numberWithDouble:*v9];
        [dictionary setObject:v14 forKey:v13];
      }

      ++v9;
      ++v10;
      --v7;
    }

    while (v7);
  }

  v15 = topHypotheses(dictionary, count);

  return v15;
}

- (id)predictedLabelHypothesesForTokens:(id)tokens maximumCount:(unint64_t)count
{
  tokensCopy = tokens;
  v7 = [tokensCopy componentsJoinedByString:@" "];
  v8 = [(NLModelImplX *)self predictedLabelHypothesesForString:v7 maximumCount:count];

  array = [MEMORY[0x1E695DF70] array];
  if ([tokensCopy count])
  {
    v10 = 0;
    if (v8)
    {
      v11 = v8;
    }

    else
    {
      v11 = MEMORY[0x1E695E0F8];
    }

    do
    {
      [array addObject:v11];
      ++v10;
    }

    while (v10 < [tokensCopy count]);
  }

  return array;
}

@end