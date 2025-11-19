@interface AMDDODMLModelMetadata
- (id)initModelMetadata:(id)a3 error:(id *)a4 errorDomain:(id)a5;
@end

@implementation AMDDODMLModelMetadata

- (id)initModelMetadata:(id)a3 error:(id *)a4 errorDomain:(id)a5
{
  v135 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v133 = a4;
  v132 = 0;
  objc_storeStrong(&v132, a5);
  v5 = v135;
  v135 = 0;
  v131.receiver = v5;
  v131.super_class = AMDDODMLModelMetadata;
  v106 = [(AMDDODMLModelMetadata *)&v131 init];
  v135 = v106;
  objc_storeStrong(&v135, v106);
  if (!v106)
  {
    goto LABEL_84;
  }

  v103 = [location[0] parameters];
  v130 = [v103 stringValueForKey:ModelFileNameKey defaultValue:0];
  MEMORY[0x277D82BD8](v103);
  if (!v130)
  {
    v6 = objc_alloc(MEMORY[0x277CCA9B8]);
    v102 = [v6 initWithDomain:v132 code:1 userInfo:0];
    v7 = v102;
    *v133 = v102;
    v136 = 0;
    v129 = 1;
    goto LABEL_83;
  }

  v101 = [location[0] attachments];
  v128 = [v101 attachmentURLsForBasename:v130];
  MEMORY[0x277D82BD8](v101);
  if ([v128 count])
  {
    if ([v128 count] > 1)
    {
      v10 = objc_alloc(MEMORY[0x277CCA9B8]);
      v99 = [v10 initWithDomain:v132 code:3 userInfo:0];
      v11 = v99;
      *v133 = v99;
      v136 = 0;
      v129 = 1;
      goto LABEL_82;
    }

    v97 = [v128 objectAtIndexedSubscript:0];
    v96 = [v97 path];
    [v135 setModelPath:?];
    MEMORY[0x277D82BD8](v96);
    MEMORY[0x277D82BD8](v97);
    v98 = [location[0] parameters];
    v127 = [v98 objectForKeyedSubscript:InputNamesKey];
    MEMORY[0x277D82BD8](v98);
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || ![v127 count])
    {
      v12 = objc_alloc(MEMORY[0x277CCA9B8]);
      v95 = [v12 initWithDomain:v132 code:4 userInfo:0];
      v13 = v95;
      *v133 = v95;
      v136 = 0;
      v129 = 1;
LABEL_81:
      objc_storeStrong(&v127, 0);
      goto LABEL_82;
    }

    [v135 setInputNames:v127];
    v94 = [location[0] parameters];
    v126 = [v94 objectForKeyedSubscript:OutputNamesKey];
    MEMORY[0x277D82BD8](v94);
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || ![v126 count])
    {
      v14 = objc_alloc(MEMORY[0x277CCA9B8]);
      v93 = [v14 initWithDomain:v132 code:5 userInfo:0];
      v15 = v93;
      *v133 = v93;
      v136 = 0;
      v129 = 1;
LABEL_80:
      objc_storeStrong(&v126, 0);
      goto LABEL_81;
    }

    [v135 setOutputNames:v126];
    v92 = [location[0] parameters];
    v125 = [v92 objectForKeyedSubscript:WeightNamesKey];
    MEMORY[0x277D82BD8](v92);
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || ![v125 count])
    {
      v16 = objc_alloc(MEMORY[0x277CCA9B8]);
      v91 = [v16 initWithDomain:v132 code:6 userInfo:0];
      v17 = v91;
      *v133 = v91;
      v136 = 0;
      v129 = 1;
LABEL_79:
      objc_storeStrong(&v125, 0);
      goto LABEL_80;
    }

    [v135 setWeightNames:v125];
    v89 = [location[0] parameters];
    v90 = [v89 unsignedIntegerValueForKey:BatchSizeKey defaultValue:1];
    MEMORY[0x277D82BD8](v89);
    v124 = v90;
    if (v90 < 1)
    {
      v18 = objc_alloc(MEMORY[0x277CCA9B8]);
      v88 = [v18 initWithDomain:v132 code:7 userInfo:0];
      v19 = v88;
      *v133 = v88;
      v136 = 0;
      v129 = 1;
      goto LABEL_79;
    }

    [v135 setBatchSize:v124];
    v86 = [location[0] parameters];
    v87 = [v86 unsignedIntegerValueForKey:NumLocalIterationsKey defaultValue:1];
    MEMORY[0x277D82BD8](v86);
    v123 = v87;
    if (v87 < 1)
    {
      v20 = objc_alloc(MEMORY[0x277CCA9B8]);
      v85 = [v20 initWithDomain:v132 code:8 userInfo:0];
      v21 = v85;
      *v133 = v85;
      v136 = 0;
      v129 = 1;
      goto LABEL_79;
    }

    [v135 setNumLocalIterations:v123];
    v81 = [location[0] parameters];
    v82 = [v81 unsignedIntegerValueForKey:NumEpochsKey defaultValue:0];
    MEMORY[0x277D82BD8](v81);
    v122[1] = v82;
    [v135 setNumEpochs:v82];
    v83 = MEMORY[0x277CCABB0];
    v84 = [location[0] parameters];
    [v84 floatValueForKey:LearningRateKey defaultValue:0.0];
    v122[0] = [v83 numberWithFloat:?];
    MEMORY[0x277D82BD8](v84);
    [v122[0] floatValue];
    if (v22 < 0.0)
    {
      v23 = objc_alloc(MEMORY[0x277CCA9B8]);
      v80 = [v23 initWithDomain:v132 code:9 userInfo:0];
      v24 = v80;
      *v133 = v80;
      v136 = 0;
      v129 = 1;
LABEL_78:
      objc_storeStrong(v122, 0);
      goto LABEL_79;
    }

    [v135 setLearningRate:v122[0]];
    v79 = [location[0] parameters];
    v121 = [v79 stringValueForKey:InitFunctionNameKey defaultValue:InitFunctionDefaultName];
    MEMORY[0x277D82BD8](v79);
    if (![v121 length])
    {
      v25 = objc_alloc(MEMORY[0x277CCA9B8]);
      v78 = [v25 initWithDomain:v132 code:10 userInfo:0];
      v26 = v78;
      *v133 = v78;
      v136 = 0;
      v129 = 1;
LABEL_77:
      objc_storeStrong(&v121, 0);
      goto LABEL_78;
    }

    [v135 setInitializationFunctionName:v121];
    v77 = [location[0] parameters];
    v120 = [v77 stringValueForKey:TrainingModeBufferNameKey defaultValue:TrainingModeBufferDefaultName];
    MEMORY[0x277D82BD8](v77);
    if (![v120 length])
    {
      v27 = objc_alloc(MEMORY[0x277CCA9B8]);
      v76 = [v27 initWithDomain:v132 code:11 userInfo:0];
      v28 = v76;
      *v133 = v76;
      v136 = 0;
      v129 = 1;
LABEL_76:
      objc_storeStrong(&v120, 0);
      goto LABEL_77;
    }

    [v135 setTrainingModeBufferName:v120];
    v75 = [location[0] parameters];
    v119 = [v75 stringValueForKey:LearningRateBufferNameKey defaultValue:LearningRateBufferDefaultName];
    MEMORY[0x277D82BD8](v75);
    if (![v119 length])
    {
      v29 = objc_alloc(MEMORY[0x277CCA9B8]);
      v74 = [v29 initWithDomain:v132 code:12 userInfo:0];
      v30 = v74;
      *v133 = v74;
      v136 = 0;
      v129 = 1;
LABEL_75:
      objc_storeStrong(&v119, 0);
      goto LABEL_76;
    }

    [v135 setLearningRateBufferName:v119];
    v73 = [location[0] parameters];
    v118 = [v73 stringValueForKey:LossNameKey defaultValue:0];
    MEMORY[0x277D82BD8](v73);
    if (!v118)
    {
      v31 = objc_alloc(MEMORY[0x277CCA9B8]);
      v72 = [v31 initWithDomain:v132 code:18 userInfo:0];
      v32 = v72;
      *v133 = v72;
      v136 = 0;
      v129 = 1;
LABEL_74:
      objc_storeStrong(&v118, 0);
      goto LABEL_75;
    }

    v70 = [v135 outputNames];
    v71 = [v70 containsObject:v118];
    MEMORY[0x277D82BD8](v70);
    if ((v71 & 1) == 0)
    {
      v33 = objc_alloc(MEMORY[0x277CCA9B8]);
      v69 = [v33 initWithDomain:v132 code:19 userInfo:0];
      v34 = v69;
      *v133 = v69;
      v136 = 0;
      v129 = 1;
      goto LABEL_74;
    }

    [v135 setLossName:v118];
    v68 = [location[0] parameters];
    v117 = [v68 objectForKeyedSubscript:InitializeManually];
    MEMORY[0x277D82BD8](v68);
    if (!v117)
    {
      v117 = [MEMORY[0x277CCABB0] numberWithLong:0];
      MEMORY[0x277D82BD8](0);
    }

    [v135 setInitializeManually:v117];
    v67 = [location[0] parameters];
    v116 = [v67 objectForKeyedSubscript:UseCoreMLTrainer];
    MEMORY[0x277D82BD8](v67);
    if (!v116)
    {
      v116 = [MEMORY[0x277CCABB0] numberWithLong:0];
      MEMORY[0x277D82BD8](0);
    }

    [v135 setUseCoreMLTrainer:v116];
    v66 = [location[0] parameters];
    v115 = [v66 objectForKeyedSubscript:LearningRateScheduleKey];
    MEMORY[0x277D82BD8](v66);
    if (v115)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v35 = objc_alloc(MEMORY[0x277CCA9B8]);
        v65 = [v35 initWithDomain:v132 code:131 userInfo:0];
        v36 = v65;
        *v133 = v65;
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
      if (v64 != [v135 numLocalIterations])
      {
        v37 = objc_alloc(MEMORY[0x277CCA9B8]);
        v63 = [v37 initWithDomain:v132 code:132 userInfo:0];
        v38 = v63;
        *v133 = v63;
        v136 = 0;
        v129 = 1;
        goto LABEL_73;
      }
    }

    [v135 setLearningRateSchedule:v115];
    v58 = [location[0] parameters];
    v114 = [v58 objectForKeyedSubscript:ShortenedEmbeddingNames];
    MEMORY[0x277D82BD8](v58);
    v59 = [location[0] parameters];
    v113 = [v59 objectForKeyedSubscript:ShortenedEmbeddingMappingKeys];
    MEMORY[0x277D82BD8](v59);
    v60 = [location[0] parameters];
    v112 = [v60 objectForKeyedSubscript:ShortenedEmbeddingSize];
    MEMORY[0x277D82BD8](v60);
    v61 = [location[0] parameters];
    v111 = [v61 objectForKeyedSubscript:ShortenedEmbeddingNumberVectorsBefore];
    MEMORY[0x277D82BD8](v61);
    v62 = [location[0] parameters];
    v110 = [v62 objectForKeyedSubscript:ShortenedEmbeddingNumberVectorsAfter];
    MEMORY[0x277D82BD8](v62);
    if (!v114 && !v113 && !v112 && !v111 && !v110)
    {
      v53 = objc_alloc_init(MEMORY[0x277CBEAC0]);
      [v135 setShortenedEmbeddingNames:?];
      MEMORY[0x277D82BD8](v53);
      v54 = objc_alloc_init(MEMORY[0x277CBEAC0]);
      [v135 setShortenedEmbeddingMappingKeys:?];
      MEMORY[0x277D82BD8](v54);
      v55 = objc_alloc_init(MEMORY[0x277CBEAC0]);
      [v135 setShortenedEmbeddingSize:?];
      MEMORY[0x277D82BD8](v55);
      v56 = objc_alloc_init(MEMORY[0x277CBEAC0]);
      [v135 setShortenedEmbeddingNumberVectorsBefore:?];
      MEMORY[0x277D82BD8](v56);
      v57 = objc_alloc_init(MEMORY[0x277CBEAC0]);
      [v135 setShortenedEmbeddingNumberVectorsAfter:?];
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
                [v135 setShortenedEmbeddingNames:v114];
                [v135 setShortenedEmbeddingMappingKeys:v113];
                [v135 setShortenedEmbeddingSize:v112];
                [v135 setShortenedEmbeddingNumberVectorsBefore:v111];
                [v135 setShortenedEmbeddingNumberVectorsAfter:v110];
LABEL_64:
                v50 = [location[0] parameters];
                v109 = [v50 objectForKeyedSubscript:MetricsNamesKey];
                MEMORY[0x277D82BD8](v50);
                if (!v109 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                {
                  v108 = [MEMORY[0x277CBEB98] setWithArray:v109];
                  v107 = [MEMORY[0x277CBEB98] setWithArray:v126];
                  if ([v108 isSubsetOfSet:v107])
                  {
                    [v135 setMetricsNames:v109];
                    v129 = 0;
                  }

                  else
                  {
                    v45 = objc_alloc(MEMORY[0x277CCA9B8]);
                    v48 = [v45 initWithDomain:v132 code:61 userInfo:0];
                    v46 = v48;
                    *v133 = v48;
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
                  *v133 = v49;
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
      *v133 = v51;
      v136 = 0;
      v129 = 1;
    }

    else
    {
      v39 = objc_alloc(MEMORY[0x277CCA9B8]);
      v52 = [v39 initWithDomain:v132 code:109 userInfo:0];
      v40 = v52;
      *v133 = v52;
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
  *v133 = v100;
  v136 = 0;
  v129 = 1;
LABEL_82:
  objc_storeStrong(&v128, 0);
LABEL_83:
  objc_storeStrong(&v130, 0);
  if (!v129)
  {
LABEL_84:
    v136 = MEMORY[0x277D82BE0](v135);
    v129 = 1;
  }

  objc_storeStrong(&v132, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v135, 0);
  return v136;
}

@end