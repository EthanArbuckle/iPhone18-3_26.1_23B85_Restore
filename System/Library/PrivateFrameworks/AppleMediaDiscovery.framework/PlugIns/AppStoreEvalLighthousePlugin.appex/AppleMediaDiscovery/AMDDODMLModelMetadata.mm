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
  v131 = 0;
  objc_storeStrong(&v131, domain);
  v5 = selfCopy;
  selfCopy = 0;
  v130.receiver = v5;
  v130.super_class = AMDDODMLModelMetadata;
  v105 = [(AMDDODMLModelMetadata *)&v130 init];
  selfCopy = v105;
  objc_storeStrong(&selfCopy, v105);
  if (!v105)
  {
    goto LABEL_84;
  }

  parameters = [location[0] parameters];
  v129 = [parameters stringValueForKey:ModelFileNameKey defaultValue:0];

  if (!v129)
  {
    v6 = [NSError alloc];
    v101 = [v6 initWithDomain:v131 code:1 userInfo:0];
    v7 = v101;
    *errorCopy = v101;
    v135 = 0;
    v128 = 1;
    goto LABEL_83;
  }

  attachments = [location[0] attachments];
  v127 = [attachments attachmentURLsForBasename:v129];

  if ([v127 count])
  {
    if ([v127 count] > 1)
    {
      v10 = [NSError alloc];
      v98 = [v10 initWithDomain:v131 code:3 userInfo:0];
      v11 = v98;
      *errorCopy = v98;
      v135 = 0;
      v128 = 1;
      goto LABEL_82;
    }

    v96 = [v127 objectAtIndexedSubscript:0];
    path = [v96 path];
    [selfCopy setModelPath:?];

    parameters2 = [location[0] parameters];
    v126 = [parameters2 objectForKeyedSubscript:InputNamesKey];

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || ![v126 count])
    {
      v12 = [NSError alloc];
      v94 = [v12 initWithDomain:v131 code:4 userInfo:0];
      v13 = v94;
      *errorCopy = v94;
      v135 = 0;
      v128 = 1;
LABEL_81:
      objc_storeStrong(&v126, 0);
      goto LABEL_82;
    }

    [selfCopy setInputNames:v126];
    parameters3 = [location[0] parameters];
    v125 = [parameters3 objectForKeyedSubscript:OutputNamesKey];

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || ![v125 count])
    {
      v14 = [NSError alloc];
      v92 = [v14 initWithDomain:v131 code:5 userInfo:0];
      v15 = v92;
      *errorCopy = v92;
      v135 = 0;
      v128 = 1;
LABEL_80:
      objc_storeStrong(&v125, 0);
      goto LABEL_81;
    }

    [selfCopy setOutputNames:v125];
    parameters4 = [location[0] parameters];
    v124 = [parameters4 objectForKeyedSubscript:WeightNamesKey];

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || ![v124 count])
    {
      v16 = [NSError alloc];
      v90 = [v16 initWithDomain:v131 code:6 userInfo:0];
      v17 = v90;
      *errorCopy = v90;
      v135 = 0;
      v128 = 1;
LABEL_79:
      objc_storeStrong(&v124, 0);
      goto LABEL_80;
    }

    [selfCopy setWeightNames:v124];
    parameters5 = [location[0] parameters];
    v89 = [parameters5 unsignedIntegerValueForKey:BatchSizeKey defaultValue:1];

    v123 = v89;
    if (v89 < 1)
    {
      v18 = [NSError alloc];
      v87 = [v18 initWithDomain:v131 code:7 userInfo:0];
      v19 = v87;
      *errorCopy = v87;
      v135 = 0;
      v128 = 1;
      goto LABEL_79;
    }

    [selfCopy setBatchSize:v123];
    parameters6 = [location[0] parameters];
    v86 = [parameters6 unsignedIntegerValueForKey:NumLocalIterationsKey defaultValue:1];

    v122 = v86;
    if (v86 < 1)
    {
      v20 = [NSError alloc];
      v84 = [v20 initWithDomain:v131 code:8 userInfo:0];
      v21 = v84;
      *errorCopy = v84;
      v135 = 0;
      v128 = 1;
      goto LABEL_79;
    }

    [selfCopy setNumLocalIterations:v122];
    parameters7 = [location[0] parameters];
    v82 = [parameters7 unsignedIntegerValueForKey:NumEpochsKey defaultValue:0];

    v121[1] = v82;
    [selfCopy setNumEpochs:v82];
    parameters8 = [location[0] parameters];
    [parameters8 floatValueForKey:LearningRateKey defaultValue:0.0];
    v121[0] = [NSNumber numberWithFloat:?];

    [v121[0] floatValue];
    if (v22 < 0.0)
    {
      v23 = [NSError alloc];
      v80 = [v23 initWithDomain:v131 code:9 userInfo:0];
      v24 = v80;
      *errorCopy = v80;
      v135 = 0;
      v128 = 1;
LABEL_78:
      objc_storeStrong(v121, 0);
      goto LABEL_79;
    }

    [selfCopy setLearningRate:v121[0]];
    parameters9 = [location[0] parameters];
    v120 = [parameters9 stringValueForKey:InitFunctionNameKey defaultValue:InitFunctionDefaultName];

    if (![v120 length])
    {
      v25 = [NSError alloc];
      v78 = [v25 initWithDomain:v131 code:10 userInfo:0];
      v26 = v78;
      *errorCopy = v78;
      v135 = 0;
      v128 = 1;
LABEL_77:
      objc_storeStrong(&v120, 0);
      goto LABEL_78;
    }

    [selfCopy setInitializationFunctionName:v120];
    parameters10 = [location[0] parameters];
    v119 = [parameters10 stringValueForKey:TrainingModeBufferNameKey defaultValue:TrainingModeBufferDefaultName];

    if (![v119 length])
    {
      v27 = [NSError alloc];
      v76 = [v27 initWithDomain:v131 code:11 userInfo:0];
      v28 = v76;
      *errorCopy = v76;
      v135 = 0;
      v128 = 1;
LABEL_76:
      objc_storeStrong(&v119, 0);
      goto LABEL_77;
    }

    [selfCopy setTrainingModeBufferName:v119];
    parameters11 = [location[0] parameters];
    v118 = [parameters11 stringValueForKey:LearningRateBufferNameKey defaultValue:LearningRateBufferDefaultName];

    if (![v118 length])
    {
      v29 = [NSError alloc];
      v74 = [v29 initWithDomain:v131 code:12 userInfo:0];
      v30 = v74;
      *errorCopy = v74;
      v135 = 0;
      v128 = 1;
LABEL_75:
      objc_storeStrong(&v118, 0);
      goto LABEL_76;
    }

    [selfCopy setLearningRateBufferName:v118];
    parameters12 = [location[0] parameters];
    v117 = [parameters12 stringValueForKey:LossNameKey defaultValue:0];

    if (!v117)
    {
      v31 = [NSError alloc];
      v72 = [v31 initWithDomain:v131 code:18 userInfo:0];
      v32 = v72;
      *errorCopy = v72;
      v135 = 0;
      v128 = 1;
LABEL_74:
      objc_storeStrong(&v117, 0);
      goto LABEL_75;
    }

    outputNames = [selfCopy outputNames];
    v71 = [outputNames containsObject:v117];

    if ((v71 & 1) == 0)
    {
      v33 = [NSError alloc];
      v69 = [v33 initWithDomain:v131 code:19 userInfo:0];
      v34 = v69;
      *errorCopy = v69;
      v135 = 0;
      v128 = 1;
      goto LABEL_74;
    }

    [selfCopy setLossName:v117];
    parameters13 = [location[0] parameters];
    v116 = [parameters13 objectForKeyedSubscript:InitializeManually];

    if (!v116)
    {
      v116 = [NSNumber numberWithLong:0];
    }

    [selfCopy setInitializeManually:v116];
    parameters14 = [location[0] parameters];
    v115 = [parameters14 objectForKeyedSubscript:UseCoreMLTrainer];

    if (!v115)
    {
      v115 = [NSNumber numberWithLong:0];
    }

    [selfCopy setUseCoreMLTrainer:v115];
    parameters15 = [location[0] parameters];
    v114 = [parameters15 objectForKeyedSubscript:LearningRateScheduleKey];

    if (v114)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v35 = [NSError alloc];
        v65 = [v35 initWithDomain:v131 code:131 userInfo:0];
        v36 = v65;
        *errorCopy = v65;
        v135 = 0;
        v128 = 1;
LABEL_73:
        objc_storeStrong(&v114, 0);
        objc_storeStrong(&v115, 0);
        objc_storeStrong(&v116, 0);
        goto LABEL_74;
      }
    }

    if (v114)
    {
      v64 = [v114 count];
      if (v64 != [selfCopy numLocalIterations])
      {
        v37 = [NSError alloc];
        v63 = [v37 initWithDomain:v131 code:132 userInfo:0];
        v38 = v63;
        *errorCopy = v63;
        v135 = 0;
        v128 = 1;
        goto LABEL_73;
      }
    }

    [selfCopy setLearningRateSchedule:v114];
    parameters16 = [location[0] parameters];
    v113 = [parameters16 objectForKeyedSubscript:ShortenedEmbeddingNames];

    parameters17 = [location[0] parameters];
    v112 = [parameters17 objectForKeyedSubscript:ShortenedEmbeddingMappingKeys];

    parameters18 = [location[0] parameters];
    v111 = [parameters18 objectForKeyedSubscript:ShortenedEmbeddingSize];

    parameters19 = [location[0] parameters];
    v110 = [parameters19 objectForKeyedSubscript:ShortenedEmbeddingNumberVectorsBefore];

    parameters20 = [location[0] parameters];
    v109 = [parameters20 objectForKeyedSubscript:ShortenedEmbeddingNumberVectorsAfter];

    if (!v113 && !v112 && !v111 && !v110 && !v109)
    {
      v53 = objc_alloc_init(NSDictionary);
      [selfCopy setShortenedEmbeddingNames:?];

      v54 = objc_alloc_init(NSDictionary);
      [selfCopy setShortenedEmbeddingMappingKeys:?];

      v55 = objc_alloc_init(NSDictionary);
      [selfCopy setShortenedEmbeddingSize:?];

      v56 = objc_alloc_init(NSDictionary);
      [selfCopy setShortenedEmbeddingNumberVectorsBefore:?];

      v57 = objc_alloc_init(NSDictionary);
      [selfCopy setShortenedEmbeddingNumberVectorsAfter:?];

      goto LABEL_64;
    }

    if (v113 && v112 && v111 && v110 && v109)
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
                [selfCopy setShortenedEmbeddingNames:v113];
                [selfCopy setShortenedEmbeddingMappingKeys:v112];
                [selfCopy setShortenedEmbeddingSize:v111];
                [selfCopy setShortenedEmbeddingNumberVectorsBefore:v110];
                [selfCopy setShortenedEmbeddingNumberVectorsAfter:v109];
LABEL_64:
                parameters21 = [location[0] parameters];
                v108 = [parameters21 objectForKeyedSubscript:MetricsNamesKey];

                if (!v108 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                {
                  v107 = [NSSet setWithArray:v108];
                  v106 = [NSSet setWithArray:v125];
                  if ([v107 isSubsetOfSet:v106])
                  {
                    [selfCopy setMetricsNames:v108];
                    v128 = 0;
                  }

                  else
                  {
                    v45 = [NSError alloc];
                    v48 = [v45 initWithDomain:v131 code:61 userInfo:0];
                    v46 = v48;
                    *errorCopy = v48;
                    v135 = 0;
                    v128 = 1;
                  }

                  objc_storeStrong(&v106, 0);
                  objc_storeStrong(&v107, 0);
                }

                else
                {
                  v43 = [NSError alloc];
                  v49 = [v43 initWithDomain:v131 code:60 userInfo:0];
                  v44 = v49;
                  *errorCopy = v49;
                  v135 = 0;
                  v128 = 1;
                }

                objc_storeStrong(&v108, 0);
                goto LABEL_72;
              }
            }
          }
        }
      }

      v41 = [NSError alloc];
      v51 = [v41 initWithDomain:v131 code:109 userInfo:0];
      v42 = v51;
      *errorCopy = v51;
      v135 = 0;
      v128 = 1;
    }

    else
    {
      v39 = [NSError alloc];
      v52 = [v39 initWithDomain:v131 code:109 userInfo:0];
      v40 = v52;
      *errorCopy = v52;
      v135 = 0;
      v128 = 1;
    }

LABEL_72:
    objc_storeStrong(&v109, 0);
    objc_storeStrong(&v110, 0);
    objc_storeStrong(&v111, 0);
    objc_storeStrong(&v112, 0);
    objc_storeStrong(&v113, 0);
    goto LABEL_73;
  }

  v8 = [NSError alloc];
  v99 = [v8 initWithDomain:v131 code:2 userInfo:0];
  v9 = v99;
  *errorCopy = v99;
  v135 = 0;
  v128 = 1;
LABEL_82:
  objc_storeStrong(&v127, 0);
LABEL_83:
  objc_storeStrong(&v129, 0);
  if (!v128)
  {
LABEL_84:
    v135 = selfCopy;
    v128 = 1;
  }

  objc_storeStrong(&v131, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v135;
}

@end