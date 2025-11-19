@interface AMDDODMLModelMetadata
- (id)initModelMetadata:(id)a3 error:(id *)a4 errorDomain:(id)a5;
@end

@implementation AMDDODMLModelMetadata

- (id)initModelMetadata:(id)a3 error:(id *)a4 errorDomain:(id)a5
{
  v134 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v132 = a4;
  v131 = 0;
  objc_storeStrong(&v131, a5);
  v5 = v134;
  v134 = 0;
  v130.receiver = v5;
  v130.super_class = AMDDODMLModelMetadata;
  v105 = [(AMDDODMLModelMetadata *)&v130 init];
  v134 = v105;
  objc_storeStrong(&v134, v105);
  if (!v105)
  {
    goto LABEL_84;
  }

  v102 = [location[0] parameters];
  v129 = [v102 stringValueForKey:ModelFileNameKey defaultValue:0];

  if (!v129)
  {
    v6 = [NSError alloc];
    v101 = [v6 initWithDomain:v131 code:1 userInfo:0];
    v7 = v101;
    *v132 = v101;
    v135 = 0;
    v128 = 1;
    goto LABEL_83;
  }

  v100 = [location[0] attachments];
  v127 = [v100 attachmentURLsForBasename:v129];

  if ([v127 count])
  {
    if ([v127 count] > 1)
    {
      v10 = [NSError alloc];
      v98 = [v10 initWithDomain:v131 code:3 userInfo:0];
      v11 = v98;
      *v132 = v98;
      v135 = 0;
      v128 = 1;
      goto LABEL_82;
    }

    v96 = [v127 objectAtIndexedSubscript:0];
    v95 = [v96 path];
    [v134 setModelPath:?];

    v97 = [location[0] parameters];
    v126 = [v97 objectForKeyedSubscript:InputNamesKey];

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || ![v126 count])
    {
      v12 = [NSError alloc];
      v94 = [v12 initWithDomain:v131 code:4 userInfo:0];
      v13 = v94;
      *v132 = v94;
      v135 = 0;
      v128 = 1;
LABEL_81:
      objc_storeStrong(&v126, 0);
      goto LABEL_82;
    }

    [v134 setInputNames:v126];
    v93 = [location[0] parameters];
    v125 = [v93 objectForKeyedSubscript:OutputNamesKey];

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || ![v125 count])
    {
      v14 = [NSError alloc];
      v92 = [v14 initWithDomain:v131 code:5 userInfo:0];
      v15 = v92;
      *v132 = v92;
      v135 = 0;
      v128 = 1;
LABEL_80:
      objc_storeStrong(&v125, 0);
      goto LABEL_81;
    }

    [v134 setOutputNames:v125];
    v91 = [location[0] parameters];
    v124 = [v91 objectForKeyedSubscript:WeightNamesKey];

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || ![v124 count])
    {
      v16 = [NSError alloc];
      v90 = [v16 initWithDomain:v131 code:6 userInfo:0];
      v17 = v90;
      *v132 = v90;
      v135 = 0;
      v128 = 1;
LABEL_79:
      objc_storeStrong(&v124, 0);
      goto LABEL_80;
    }

    [v134 setWeightNames:v124];
    v88 = [location[0] parameters];
    v89 = [v88 unsignedIntegerValueForKey:BatchSizeKey defaultValue:1];

    v123 = v89;
    if (v89 < 1)
    {
      v18 = [NSError alloc];
      v87 = [v18 initWithDomain:v131 code:7 userInfo:0];
      v19 = v87;
      *v132 = v87;
      v135 = 0;
      v128 = 1;
      goto LABEL_79;
    }

    [v134 setBatchSize:v123];
    v85 = [location[0] parameters];
    v86 = [v85 unsignedIntegerValueForKey:NumLocalIterationsKey defaultValue:1];

    v122 = v86;
    if (v86 < 1)
    {
      v20 = [NSError alloc];
      v84 = [v20 initWithDomain:v131 code:8 userInfo:0];
      v21 = v84;
      *v132 = v84;
      v135 = 0;
      v128 = 1;
      goto LABEL_79;
    }

    [v134 setNumLocalIterations:v122];
    v81 = [location[0] parameters];
    v82 = [v81 unsignedIntegerValueForKey:NumEpochsKey defaultValue:0];

    v121[1] = v82;
    [v134 setNumEpochs:v82];
    v83 = [location[0] parameters];
    [v83 floatValueForKey:LearningRateKey defaultValue:0.0];
    v121[0] = [NSNumber numberWithFloat:?];

    [v121[0] floatValue];
    if (v22 < 0.0)
    {
      v23 = [NSError alloc];
      v80 = [v23 initWithDomain:v131 code:9 userInfo:0];
      v24 = v80;
      *v132 = v80;
      v135 = 0;
      v128 = 1;
LABEL_78:
      objc_storeStrong(v121, 0);
      goto LABEL_79;
    }

    [v134 setLearningRate:v121[0]];
    v79 = [location[0] parameters];
    v120 = [v79 stringValueForKey:InitFunctionNameKey defaultValue:InitFunctionDefaultName];

    if (![v120 length])
    {
      v25 = [NSError alloc];
      v78 = [v25 initWithDomain:v131 code:10 userInfo:0];
      v26 = v78;
      *v132 = v78;
      v135 = 0;
      v128 = 1;
LABEL_77:
      objc_storeStrong(&v120, 0);
      goto LABEL_78;
    }

    [v134 setInitializationFunctionName:v120];
    v77 = [location[0] parameters];
    v119 = [v77 stringValueForKey:TrainingModeBufferNameKey defaultValue:TrainingModeBufferDefaultName];

    if (![v119 length])
    {
      v27 = [NSError alloc];
      v76 = [v27 initWithDomain:v131 code:11 userInfo:0];
      v28 = v76;
      *v132 = v76;
      v135 = 0;
      v128 = 1;
LABEL_76:
      objc_storeStrong(&v119, 0);
      goto LABEL_77;
    }

    [v134 setTrainingModeBufferName:v119];
    v75 = [location[0] parameters];
    v118 = [v75 stringValueForKey:LearningRateBufferNameKey defaultValue:LearningRateBufferDefaultName];

    if (![v118 length])
    {
      v29 = [NSError alloc];
      v74 = [v29 initWithDomain:v131 code:12 userInfo:0];
      v30 = v74;
      *v132 = v74;
      v135 = 0;
      v128 = 1;
LABEL_75:
      objc_storeStrong(&v118, 0);
      goto LABEL_76;
    }

    [v134 setLearningRateBufferName:v118];
    v73 = [location[0] parameters];
    v117 = [v73 stringValueForKey:LossNameKey defaultValue:0];

    if (!v117)
    {
      v31 = [NSError alloc];
      v72 = [v31 initWithDomain:v131 code:18 userInfo:0];
      v32 = v72;
      *v132 = v72;
      v135 = 0;
      v128 = 1;
LABEL_74:
      objc_storeStrong(&v117, 0);
      goto LABEL_75;
    }

    v70 = [v134 outputNames];
    v71 = [v70 containsObject:v117];

    if ((v71 & 1) == 0)
    {
      v33 = [NSError alloc];
      v69 = [v33 initWithDomain:v131 code:19 userInfo:0];
      v34 = v69;
      *v132 = v69;
      v135 = 0;
      v128 = 1;
      goto LABEL_74;
    }

    [v134 setLossName:v117];
    v68 = [location[0] parameters];
    v116 = [v68 objectForKeyedSubscript:InitializeManually];

    if (!v116)
    {
      v116 = [NSNumber numberWithLong:0];
    }

    [v134 setInitializeManually:v116];
    v67 = [location[0] parameters];
    v115 = [v67 objectForKeyedSubscript:UseCoreMLTrainer];

    if (!v115)
    {
      v115 = [NSNumber numberWithLong:0];
    }

    [v134 setUseCoreMLTrainer:v115];
    v66 = [location[0] parameters];
    v114 = [v66 objectForKeyedSubscript:LearningRateScheduleKey];

    if (v114)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v35 = [NSError alloc];
        v65 = [v35 initWithDomain:v131 code:131 userInfo:0];
        v36 = v65;
        *v132 = v65;
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
      if (v64 != [v134 numLocalIterations])
      {
        v37 = [NSError alloc];
        v63 = [v37 initWithDomain:v131 code:132 userInfo:0];
        v38 = v63;
        *v132 = v63;
        v135 = 0;
        v128 = 1;
        goto LABEL_73;
      }
    }

    [v134 setLearningRateSchedule:v114];
    v58 = [location[0] parameters];
    v113 = [v58 objectForKeyedSubscript:ShortenedEmbeddingNames];

    v59 = [location[0] parameters];
    v112 = [v59 objectForKeyedSubscript:ShortenedEmbeddingMappingKeys];

    v60 = [location[0] parameters];
    v111 = [v60 objectForKeyedSubscript:ShortenedEmbeddingSize];

    v61 = [location[0] parameters];
    v110 = [v61 objectForKeyedSubscript:ShortenedEmbeddingNumberVectorsBefore];

    v62 = [location[0] parameters];
    v109 = [v62 objectForKeyedSubscript:ShortenedEmbeddingNumberVectorsAfter];

    if (!v113 && !v112 && !v111 && !v110 && !v109)
    {
      v53 = objc_alloc_init(NSDictionary);
      [v134 setShortenedEmbeddingNames:?];

      v54 = objc_alloc_init(NSDictionary);
      [v134 setShortenedEmbeddingMappingKeys:?];

      v55 = objc_alloc_init(NSDictionary);
      [v134 setShortenedEmbeddingSize:?];

      v56 = objc_alloc_init(NSDictionary);
      [v134 setShortenedEmbeddingNumberVectorsBefore:?];

      v57 = objc_alloc_init(NSDictionary);
      [v134 setShortenedEmbeddingNumberVectorsAfter:?];

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
                [v134 setShortenedEmbeddingNames:v113];
                [v134 setShortenedEmbeddingMappingKeys:v112];
                [v134 setShortenedEmbeddingSize:v111];
                [v134 setShortenedEmbeddingNumberVectorsBefore:v110];
                [v134 setShortenedEmbeddingNumberVectorsAfter:v109];
LABEL_64:
                v50 = [location[0] parameters];
                v108 = [v50 objectForKeyedSubscript:MetricsNamesKey];

                if (!v108 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                {
                  v107 = [NSSet setWithArray:v108];
                  v106 = [NSSet setWithArray:v125];
                  if ([v107 isSubsetOfSet:v106])
                  {
                    [v134 setMetricsNames:v108];
                    v128 = 0;
                  }

                  else
                  {
                    v45 = [NSError alloc];
                    v48 = [v45 initWithDomain:v131 code:61 userInfo:0];
                    v46 = v48;
                    *v132 = v48;
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
                  *v132 = v49;
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
      *v132 = v51;
      v135 = 0;
      v128 = 1;
    }

    else
    {
      v39 = [NSError alloc];
      v52 = [v39 initWithDomain:v131 code:109 userInfo:0];
      v40 = v52;
      *v132 = v52;
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
  *v132 = v99;
  v135 = 0;
  v128 = 1;
LABEL_82:
  objc_storeStrong(&v127, 0);
LABEL_83:
  objc_storeStrong(&v129, 0);
  if (!v128)
  {
LABEL_84:
    v135 = v134;
    v128 = 1;
  }

  objc_storeStrong(&v131, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v134, 0);
  return v135;
}

@end