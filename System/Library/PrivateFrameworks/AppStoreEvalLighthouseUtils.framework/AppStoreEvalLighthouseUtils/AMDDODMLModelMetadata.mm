@interface AMDDODMLModelMetadata
- (id)initModelMetadata:(id)metadata error:(id *)error errorDomain:(id)domain;
@end

@implementation AMDDODMLModelMetadata

- (id)initModelMetadata:(id)metadata error:(id *)error errorDomain:(id)domain
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, metadata);
  errorCopy = error;
  v132 = 0;
  objc_storeStrong(&v132, domain);
  v5 = selfCopy;
  selfCopy = 0;
  v131.receiver = v5;
  v131.super_class = AMDDODMLModelMetadata;
  v106 = [(AMDDODMLModelMetadata *)&v131 init];
  selfCopy = v106;
  objc_storeStrong(&selfCopy, v106);
  if (!v106)
  {
    goto LABEL_84;
  }

  parameters = [location[0] parameters];
  v130 = [parameters stringValueForKey:ModelFileNameKey defaultValue:0];
  MEMORY[0x277D82BD8](parameters);
  if (!v130)
  {
    v6 = objc_alloc(MEMORY[0x277CCA9B8]);
    v102 = [v6 initWithDomain:v132 code:1 userInfo:0];
    v7 = v102;
    *errorCopy = v102;
    v136 = 0;
    v129 = 1;
    goto LABEL_83;
  }

  attachments = [location[0] attachments];
  v128 = [attachments attachmentURLsForBasename:v130];
  MEMORY[0x277D82BD8](attachments);
  if ([v128 count])
  {
    if ([v128 count] > 1)
    {
      v10 = objc_alloc(MEMORY[0x277CCA9B8]);
      v99 = [v10 initWithDomain:v132 code:3 userInfo:0];
      v11 = v99;
      *errorCopy = v99;
      v136 = 0;
      v129 = 1;
      goto LABEL_82;
    }

    v97 = [v128 objectAtIndexedSubscript:0];
    path = [v97 path];
    [selfCopy setModelPath:?];
    MEMORY[0x277D82BD8](path);
    MEMORY[0x277D82BD8](v97);
    parameters2 = [location[0] parameters];
    v127 = [parameters2 objectForKeyedSubscript:InputNamesKey];
    MEMORY[0x277D82BD8](parameters2);
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || ![v127 count])
    {
      v12 = objc_alloc(MEMORY[0x277CCA9B8]);
      v95 = [v12 initWithDomain:v132 code:4 userInfo:0];
      v13 = v95;
      *errorCopy = v95;
      v136 = 0;
      v129 = 1;
LABEL_81:
      objc_storeStrong(&v127, 0);
      goto LABEL_82;
    }

    [selfCopy setInputNames:v127];
    parameters3 = [location[0] parameters];
    v126 = [parameters3 objectForKeyedSubscript:OutputNamesKey];
    MEMORY[0x277D82BD8](parameters3);
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || ![v126 count])
    {
      v14 = objc_alloc(MEMORY[0x277CCA9B8]);
      v93 = [v14 initWithDomain:v132 code:5 userInfo:0];
      v15 = v93;
      *errorCopy = v93;
      v136 = 0;
      v129 = 1;
LABEL_80:
      objc_storeStrong(&v126, 0);
      goto LABEL_81;
    }

    [selfCopy setOutputNames:v126];
    parameters4 = [location[0] parameters];
    v125 = [parameters4 objectForKeyedSubscript:WeightNamesKey];
    MEMORY[0x277D82BD8](parameters4);
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || ![v125 count])
    {
      v16 = objc_alloc(MEMORY[0x277CCA9B8]);
      v91 = [v16 initWithDomain:v132 code:6 userInfo:0];
      v17 = v91;
      *errorCopy = v91;
      v136 = 0;
      v129 = 1;
LABEL_79:
      objc_storeStrong(&v125, 0);
      goto LABEL_80;
    }

    [selfCopy setWeightNames:v125];
    parameters5 = [location[0] parameters];
    v90 = [parameters5 unsignedIntegerValueForKey:BatchSizeKey defaultValue:1];
    MEMORY[0x277D82BD8](parameters5);
    v124 = v90;
    if (v90 < 1)
    {
      v18 = objc_alloc(MEMORY[0x277CCA9B8]);
      v88 = [v18 initWithDomain:v132 code:7 userInfo:0];
      v19 = v88;
      *errorCopy = v88;
      v136 = 0;
      v129 = 1;
      goto LABEL_79;
    }

    [selfCopy setBatchSize:v124];
    parameters6 = [location[0] parameters];
    v87 = [parameters6 unsignedIntegerValueForKey:NumLocalIterationsKey defaultValue:1];
    MEMORY[0x277D82BD8](parameters6);
    v123 = v87;
    if (v87 < 1)
    {
      v20 = objc_alloc(MEMORY[0x277CCA9B8]);
      v85 = [v20 initWithDomain:v132 code:8 userInfo:0];
      v21 = v85;
      *errorCopy = v85;
      v136 = 0;
      v129 = 1;
      goto LABEL_79;
    }

    [selfCopy setNumLocalIterations:v123];
    parameters7 = [location[0] parameters];
    v82 = [parameters7 unsignedIntegerValueForKey:NumEpochsKey defaultValue:0];
    MEMORY[0x277D82BD8](parameters7);
    v122[1] = v82;
    [selfCopy setNumEpochs:v82];
    v83 = MEMORY[0x277CCABB0];
    parameters8 = [location[0] parameters];
    [parameters8 floatValueForKey:LearningRateKey defaultValue:0.0];
    v122[0] = [v83 numberWithFloat:?];
    MEMORY[0x277D82BD8](parameters8);
    [v122[0] floatValue];
    if (v22 < 0.0)
    {
      v23 = objc_alloc(MEMORY[0x277CCA9B8]);
      v80 = [v23 initWithDomain:v132 code:9 userInfo:0];
      v24 = v80;
      *errorCopy = v80;
      v136 = 0;
      v129 = 1;
LABEL_78:
      objc_storeStrong(v122, 0);
      goto LABEL_79;
    }

    [selfCopy setLearningRate:v122[0]];
    parameters9 = [location[0] parameters];
    v121 = [parameters9 stringValueForKey:InitFunctionNameKey defaultValue:InitFunctionDefaultName];
    MEMORY[0x277D82BD8](parameters9);
    if (![v121 length])
    {
      v25 = objc_alloc(MEMORY[0x277CCA9B8]);
      v78 = [v25 initWithDomain:v132 code:10 userInfo:0];
      v26 = v78;
      *errorCopy = v78;
      v136 = 0;
      v129 = 1;
LABEL_77:
      objc_storeStrong(&v121, 0);
      goto LABEL_78;
    }

    [selfCopy setInitializationFunctionName:v121];
    parameters10 = [location[0] parameters];
    v120 = [parameters10 stringValueForKey:TrainingModeBufferNameKey defaultValue:TrainingModeBufferDefaultName];
    MEMORY[0x277D82BD8](parameters10);
    if (![v120 length])
    {
      v27 = objc_alloc(MEMORY[0x277CCA9B8]);
      v76 = [v27 initWithDomain:v132 code:11 userInfo:0];
      v28 = v76;
      *errorCopy = v76;
      v136 = 0;
      v129 = 1;
LABEL_76:
      objc_storeStrong(&v120, 0);
      goto LABEL_77;
    }

    [selfCopy setTrainingModeBufferName:v120];
    parameters11 = [location[0] parameters];
    v119 = [parameters11 stringValueForKey:LearningRateBufferNameKey defaultValue:LearningRateBufferDefaultName];
    MEMORY[0x277D82BD8](parameters11);
    if (![v119 length])
    {
      v29 = objc_alloc(MEMORY[0x277CCA9B8]);
      v74 = [v29 initWithDomain:v132 code:12 userInfo:0];
      v30 = v74;
      *errorCopy = v74;
      v136 = 0;
      v129 = 1;
LABEL_75:
      objc_storeStrong(&v119, 0);
      goto LABEL_76;
    }

    [selfCopy setLearningRateBufferName:v119];
    parameters12 = [location[0] parameters];
    v118 = [parameters12 stringValueForKey:LossNameKey defaultValue:0];
    MEMORY[0x277D82BD8](parameters12);
    if (!v118)
    {
      v31 = objc_alloc(MEMORY[0x277CCA9B8]);
      v72 = [v31 initWithDomain:v132 code:18 userInfo:0];
      v32 = v72;
      *errorCopy = v72;
      v136 = 0;
      v129 = 1;
LABEL_74:
      objc_storeStrong(&v118, 0);
      goto LABEL_75;
    }

    outputNames = [selfCopy outputNames];
    v71 = [outputNames containsObject:v118];
    MEMORY[0x277D82BD8](outputNames);
    if ((v71 & 1) == 0)
    {
      v33 = objc_alloc(MEMORY[0x277CCA9B8]);
      v69 = [v33 initWithDomain:v132 code:19 userInfo:0];
      v34 = v69;
      *errorCopy = v69;
      v136 = 0;
      v129 = 1;
      goto LABEL_74;
    }

    [selfCopy setLossName:v118];
    parameters13 = [location[0] parameters];
    v117 = [parameters13 objectForKeyedSubscript:InitializeManually];
    MEMORY[0x277D82BD8](parameters13);
    if (!v117)
    {
      v117 = [MEMORY[0x277CCABB0] numberWithLong:0];
      MEMORY[0x277D82BD8](0);
    }

    [selfCopy setInitializeManually:v117];
    parameters14 = [location[0] parameters];
    v116 = [parameters14 objectForKeyedSubscript:UseCoreMLTrainer];
    MEMORY[0x277D82BD8](parameters14);
    if (!v116)
    {
      v116 = [MEMORY[0x277CCABB0] numberWithLong:0];
      MEMORY[0x277D82BD8](0);
    }

    [selfCopy setUseCoreMLTrainer:v116];
    parameters15 = [location[0] parameters];
    v115 = [parameters15 objectForKeyedSubscript:LearningRateScheduleKey];
    MEMORY[0x277D82BD8](parameters15);
    if (v115)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v35 = objc_alloc(MEMORY[0x277CCA9B8]);
        v65 = [v35 initWithDomain:v132 code:131 userInfo:0];
        v36 = v65;
        *errorCopy = v65;
        v136 = 0;
        v129 = 1;
LABEL_73:
        objc_storeStrong(&v115, 0);
        objc_storeStrong(&v116, 0);
        objc_storeStrong(&v117, 0);
        goto LABEL_74;
      }
    }

    if (v115)
    {
      v64 = [v115 count];
      if (v64 != [selfCopy numLocalIterations])
      {
        v37 = objc_alloc(MEMORY[0x277CCA9B8]);
        v63 = [v37 initWithDomain:v132 code:132 userInfo:0];
        v38 = v63;
        *errorCopy = v63;
        v136 = 0;
        v129 = 1;
        goto LABEL_73;
      }
    }

    [selfCopy setLearningRateSchedule:v115];
    parameters16 = [location[0] parameters];
    v114 = [parameters16 objectForKeyedSubscript:ShortenedEmbeddingNames];
    MEMORY[0x277D82BD8](parameters16);
    parameters17 = [location[0] parameters];
    v113 = [parameters17 objectForKeyedSubscript:ShortenedEmbeddingMappingKeys];
    MEMORY[0x277D82BD8](parameters17);
    parameters18 = [location[0] parameters];
    v112 = [parameters18 objectForKeyedSubscript:ShortenedEmbeddingSize];
    MEMORY[0x277D82BD8](parameters18);
    parameters19 = [location[0] parameters];
    v111 = [parameters19 objectForKeyedSubscript:ShortenedEmbeddingNumberVectorsBefore];
    MEMORY[0x277D82BD8](parameters19);
    parameters20 = [location[0] parameters];
    v110 = [parameters20 objectForKeyedSubscript:ShortenedEmbeddingNumberVectorsAfter];
    MEMORY[0x277D82BD8](parameters20);
    if (!v114 && !v113 && !v112 && !v111 && !v110)
    {
      v53 = objc_alloc_init(MEMORY[0x277CBEAC0]);
      [selfCopy setShortenedEmbeddingNames:?];
      MEMORY[0x277D82BD8](v53);
      v54 = objc_alloc_init(MEMORY[0x277CBEAC0]);
      [selfCopy setShortenedEmbeddingMappingKeys:?];
      MEMORY[0x277D82BD8](v54);
      v55 = objc_alloc_init(MEMORY[0x277CBEAC0]);
      [selfCopy setShortenedEmbeddingSize:?];
      MEMORY[0x277D82BD8](v55);
      v56 = objc_alloc_init(MEMORY[0x277CBEAC0]);
      [selfCopy setShortenedEmbeddingNumberVectorsBefore:?];
      MEMORY[0x277D82BD8](v56);
      v57 = objc_alloc_init(MEMORY[0x277CBEAC0]);
      [selfCopy setShortenedEmbeddingNumberVectorsAfter:?];
      MEMORY[0x277D82BD8](v57);
      goto LABEL_64;
    }

    if (v114 && v113 && v112 && v111 && v110)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                [selfCopy setShortenedEmbeddingNames:v114];
                [selfCopy setShortenedEmbeddingMappingKeys:v113];
                [selfCopy setShortenedEmbeddingSize:v112];
                [selfCopy setShortenedEmbeddingNumberVectorsBefore:v111];
                [selfCopy setShortenedEmbeddingNumberVectorsAfter:v110];
LABEL_64:
                parameters21 = [location[0] parameters];
                v109 = [parameters21 objectForKeyedSubscript:MetricsNamesKey];
                MEMORY[0x277D82BD8](parameters21);
                if (!v109 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                {
                  v108 = [MEMORY[0x277CBEB98] setWithArray:v109];
                  v107 = [MEMORY[0x277CBEB98] setWithArray:v126];
                  if ([v108 isSubsetOfSet:v107])
                  {
                    [selfCopy setMetricsNames:v109];
                    v129 = 0;
                  }

                  else
                  {
                    v45 = objc_alloc(MEMORY[0x277CCA9B8]);
                    v48 = [v45 initWithDomain:v132 code:61 userInfo:0];
                    v46 = v48;
                    *errorCopy = v48;
                    v136 = 0;
                    v129 = 1;
                  }

                  objc_storeStrong(&v107, 0);
                  objc_storeStrong(&v108, 0);
                }

                else
                {
                  v43 = objc_alloc(MEMORY[0x277CCA9B8]);
                  v49 = [v43 initWithDomain:v132 code:60 userInfo:0];
                  v44 = v49;
                  *errorCopy = v49;
                  v136 = 0;
                  v129 = 1;
                }

                objc_storeStrong(&v109, 0);
                goto LABEL_72;
              }
            }
          }
        }
      }

      v41 = objc_alloc(MEMORY[0x277CCA9B8]);
      v51 = [v41 initWithDomain:v132 code:109 userInfo:0];
      v42 = v51;
      *errorCopy = v51;
      v136 = 0;
      v129 = 1;
    }

    else
    {
      v39 = objc_alloc(MEMORY[0x277CCA9B8]);
      v52 = [v39 initWithDomain:v132 code:109 userInfo:0];
      v40 = v52;
      *errorCopy = v52;
      v136 = 0;
      v129 = 1;
    }

LABEL_72:
    objc_storeStrong(&v110, 0);
    objc_storeStrong(&v111, 0);
    objc_storeStrong(&v112, 0);
    objc_storeStrong(&v113, 0);
    objc_storeStrong(&v114, 0);
    goto LABEL_73;
  }

  v8 = objc_alloc(MEMORY[0x277CCA9B8]);
  v100 = [v8 initWithDomain:v132 code:2 userInfo:0];
  v9 = v100;
  *errorCopy = v100;
  v136 = 0;
  v129 = 1;
LABEL_82:
  objc_storeStrong(&v128, 0);
LABEL_83:
  objc_storeStrong(&v130, 0);
  if (!v129)
  {
LABEL_84:
    v136 = MEMORY[0x277D82BE0](selfCopy);
    v129 = 1;
  }

  objc_storeStrong(&v132, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v136;
}

@end