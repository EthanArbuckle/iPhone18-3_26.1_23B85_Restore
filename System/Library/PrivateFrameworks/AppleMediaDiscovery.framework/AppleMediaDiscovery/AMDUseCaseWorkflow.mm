@interface AMDUseCaseWorkflow
- (AMDUseCaseWorkflow)initWithDictionary:(id)dictionary;
- (BOOL)isValid;
- (id)getOutputFeatureIds;
- (id)getPredictions:(unint64_t)predictions forDomain:(id)domain error:(id *)error;
@end

@implementation AMDUseCaseWorkflow

- (AMDUseCaseWorkflow)initWithDictionary:(id)dictionary
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, dictionary);
  v3 = selfCopy;
  selfCopy = 0;
  v52.receiver = v3;
  v52.super_class = AMDUseCaseWorkflow;
  selfCopy = [(AMDUseCaseWorkflow *)&v52 init];
  objc_storeStrong(&selfCopy, selfCopy);
  v24 = [location[0] objectForKey:@"model_id"];
  [(AMDUseCaseWorkflow *)selfCopy setModelId:?];
  MEMORY[0x277D82BD8](v24);
  v25 = [location[0] objectForKey:@"secondary_model_id"];
  [(AMDUseCaseWorkflow *)selfCopy setSecondaryModelId:?];
  MEMORY[0x277D82BD8](v25);
  v26 = [location[0] objectForKey:@"end_timestamp"];
  [(AMDUseCaseWorkflow *)selfCopy setEndTimestamp:?];
  MEMORY[0x277D82BD8](v26);
  v27 = [location[0] objectForKey:@"use_case_id"];
  [(AMDUseCaseWorkflow *)selfCopy setUseCaseId:?];
  MEMORY[0x277D82BD8](v27);
  v51 = [location[0] objectForKey:@"input_definitions"];
  v49 = 0;
  v47 = 0;
  if (v51)
  {
    v22 = [AMDInputBuilder alloc];
    modelId = [(AMDUseCaseWorkflow *)selfCopy modelId];
    v49 = 1;
    v48 = [(AMDInputBuilder *)v22 initWithDictionary:v51 andModelId:?];
    v47 = 1;
    v23 = v48;
  }

  else
  {
    v23 = 0;
  }

  [(AMDUseCaseWorkflow *)selfCopy setInputBuilder:v23];
  if (v47)
  {
    MEMORY[0x277D82BD8](v48);
  }

  if (v49)
  {
    MEMORY[0x277D82BD8](modelId);
  }

  v20 = [location[0] objectForKey:@"max_items_to_display"];
  [(AMDUseCaseWorkflow *)selfCopy setMaxItemsToDisplay:?];
  MEMORY[0x277D82BD8](v20);
  v21 = [location[0] objectForKey:@"model_format"];
  [(AMDUseCaseWorkflow *)selfCopy setModelFormat:?];
  MEMORY[0x277D82BD8](v21);
  [(AMDUseCaseWorkflow *)selfCopy setColdstartModelId:?];
  [(AMDUseCaseWorkflow *)selfCopy setUseMinimalMap:0];
  v46 = [location[0] objectForKey:@"resources"];
  if (v46 && [v46 count])
  {
    firstObject = [v46 firstObject];
    v44 = 0;
    isKindOfClass = 0;
    if (firstObject)
    {
      firstObject2 = [v46 firstObject];
      v44 = 1;
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
    }

    if (v44)
    {
      MEMORY[0x277D82BD8](firstObject2);
    }

    MEMORY[0x277D82BD8](firstObject);
    if (isKindOfClass)
    {
      firstObject3 = [v46 firstObject];
      v16 = [firstObject3 objectForKey:@"coldstart_model_id"];
      [(AMDUseCaseWorkflow *)selfCopy setColdstartModelId:?];
      MEMORY[0x277D82BD8](v16);
      v17 = [firstObject3 objectForKey:@"use_minimal_map"];
      [(AMDUseCaseWorkflow *)selfCopy setUseMinimalMap:?];
      MEMORY[0x277D82BD8](v17);
      objc_storeStrong(&firstObject3, 0);
    }
  }

  v13 = [location[0] objectForKey:@"rule_params"];
  [(AMDUseCaseWorkflow *)selfCopy setRuleParams:?];
  MEMORY[0x277D82BD8](v13);
  v14 = [location[0] objectForKey:@"start_timestamp"];
  [(AMDUseCaseWorkflow *)selfCopy setStartTimestamp:?];
  MEMORY[0x277D82BD8](v14);
  v15 = [location[0] objectForKey:@"treatment_id"];
  [(AMDUseCaseWorkflow *)selfCopy setTreatmentId:?];
  MEMORY[0x277D82BD8](v15);
  v42 = [location[0] objectForKey:@"output_definitions"];
  v40 = 0;
  v38 = 0;
  if (v42)
  {
    v11 = [AMDOutputBuilder alloc];
    useCaseId = [(AMDUseCaseWorkflow *)selfCopy useCaseId];
    v40 = 1;
    v39 = [(AMDOutputBuilder *)v11 initWithDictionary:v42 forUseCase:?];
    v38 = 1;
    v12 = v39;
  }

  else
  {
    v12 = 0;
  }

  [(AMDUseCaseWorkflow *)selfCopy setOutputBuilder:v12];
  if (v38)
  {
    MEMORY[0x277D82BD8](v39);
  }

  if (v40)
  {
    MEMORY[0x277D82BD8](useCaseId);
  }

  secondaryModelId = [(AMDUseCaseWorkflow *)selfCopy secondaryModelId];
  MEMORY[0x277D82BD8](secondaryModelId);
  if (secondaryModelId)
  {
    v37 = [location[0] objectForKey:@"secondary_model_input_definitions"];
    v35 = 0;
    v33 = 0;
    if (v37)
    {
      v8 = [AMDInputBuilder alloc];
      secondaryModelId2 = [(AMDUseCaseWorkflow *)selfCopy secondaryModelId];
      v35 = 1;
      v34 = [(AMDInputBuilder *)v8 initWithDictionary:v37 andModelId:?];
      v33 = 1;
      v9 = v34;
    }

    else
    {
      v9 = 0;
    }

    [(AMDUseCaseWorkflow *)selfCopy setSecondaryModelInputBuilder:v9];
    if (v33)
    {
      MEMORY[0x277D82BD8](v34);
    }

    if (v35)
    {
      MEMORY[0x277D82BD8](secondaryModelId2);
    }

    v32 = [location[0] objectForKey:@"secondary_model_output_definitions"];
    v30 = 0;
    v28 = 0;
    if (v32)
    {
      v6 = [AMDOutputBuilder alloc];
      useCaseId2 = [(AMDUseCaseWorkflow *)selfCopy useCaseId];
      v30 = 1;
      v29 = [(AMDOutputBuilder *)v6 initWithDictionary:v32 forUseCase:?];
      v28 = 1;
      v7 = v29;
    }

    else
    {
      v7 = 0;
    }

    [(AMDUseCaseWorkflow *)selfCopy setSecondaryModelOutputBuilder:v7];
    if (v28)
    {
      MEMORY[0x277D82BD8](v29);
    }

    if (v30)
    {
      MEMORY[0x277D82BD8](useCaseId2);
    }

    objc_storeStrong(&v32, 0);
    objc_storeStrong(&v37, 0);
  }

  v5 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(&v42, 0);
  objc_storeStrong(&v46, 0);
  objc_storeStrong(&v51, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v5;
}

- (id)getOutputFeatureIds
{
  outputBuilder = [(AMDUseCaseWorkflow *)self outputBuilder];
  getAllFeatureIds = [(AMDOutputBuilder *)outputBuilder getAllFeatureIds];
  MEMORY[0x277D82BD8](outputBuilder);

  return getAllFeatureIds;
}

- (id)getPredictions:(unint64_t)predictions forDomain:(id)domain error:(id *)error
{
  v80 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v71 = a2;
  predictionsCopy = predictions;
  location = 0;
  objc_storeStrong(&location, domain);
  errorCopy = error;
  if ([(AMDUseCaseWorkflow *)selfCopy isValid])
  {
    modelId = [(AMDUseCaseWorkflow *)selfCopy modelId];
    useMinimalMap = [(AMDUseCaseWorkflow *)selfCopy useMinimalMap];
    v63 = [AMDBaseRecoModel getModelforId:"getModelforId:useMinimalMap:error:" useMinimalMap:modelId error:?];
    MEMORY[0x277D82BD8](useMinimalMap);
    MEMORY[0x277D82BD8](modelId);
    if (*errorCopy)
    {
      v73 = 0;
      v64 = 1;
    }

    else
    {
      getColdstartModelId = [(AMDUseCaseWorkflow *)selfCopy getColdstartModelId];
      v34 = predictionsCopy;
      inputBuilder = [(AMDUseCaseWorkflow *)selfCopy inputBuilder];
      outputBuilder = [(AMDUseCaseWorkflow *)selfCopy outputBuilder];
      secondaryModelId = [(AMDUseCaseWorkflow *)selfCopy secondaryModelId];
      if (secondaryModelId)
      {
        v33 = 0;
      }

      else
      {
        v33 = getColdstartModelId;
      }

      v61 = [v63 getPredictions:v34 andInputBuilder:inputBuilder andOutputBuilder:outputBuilder withColdstartModelId:v33 error:errorCopy];
      MEMORY[0x277D82BD8](secondaryModelId);
      MEMORY[0x277D82BD8](outputBuilder);
      MEMORY[0x277D82BD8](inputBuilder);
      if (*errorCopy)
      {
        v30 = MEMORY[0x277CCACA8];
        modelId2 = [(AMDUseCaseWorkflow *)selfCopy modelId];
        localizedDescription = [*errorCopy localizedDescription];
        v60 = [v30 stringWithFormat:@"Inference failed for model: %@ error: %@", modelId2, localizedDescription];
        MEMORY[0x277D82BD8](localizedDescription);
        MEMORY[0x277D82BD8](modelId2);
        v59 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
        v58 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
        {
          __os_log_helper_16_2_1_8_64(v78, v60);
          _os_log_error_impl(&dword_240CB9000, v59, v58, "%@", v78, 0xCu);
        }

        objc_storeStrong(&v59, 0);
        [AMDFrameworkMetrics log:v60 withKey:@"inferenceFailure" atVerbosity:0];
        v73 = 0;
        v64 = 1;
        objc_storeStrong(&v60, 0);
      }

      else if (v61)
      {
        modelMetadata = [v63 modelMetadata];
        getModelUid = [modelMetadata getModelUid];
        modelId3 = [(AMDUseCaseWorkflow *)selfCopy modelId];
        [AMDFrameworkMetrics log:"log:withKey:atVerbosity:" withKey:getModelUid atVerbosity:?];
        MEMORY[0x277D82BD8](modelId3);
        MEMORY[0x277D82BD8](getModelUid);
        MEMORY[0x277D82BD8](modelMetadata);
        secondaryModelId2 = [(AMDUseCaseWorkflow *)selfCopy secondaryModelId];
        MEMORY[0x277D82BD8](secondaryModelId2);
        if (secondaryModelId2)
        {
          v54 = [AMDFeatureProvider getProviderForSource:0x2852AB468 WithDomain:0];
          [v54 storeFeatureData:v61 error:errorCopy];
          if (*errorCopy)
          {
            v53 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
            v52 = OS_LOG_TYPE_ERROR;
            if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
            {
              v21 = v53;
              v22 = v52;
              localizedDescription2 = [*errorCopy localizedDescription];
              v51 = MEMORY[0x277D82BE0](localizedDescription2);
              __os_log_helper_16_2_1_8_64(v76, v51);
              _os_log_error_impl(&dword_240CB9000, v21, v22, "Intermediate output store failed. Error: %@", v76, 0xCu);
              MEMORY[0x277D82BD8](localizedDescription2);
              objc_storeStrong(&v51, 0);
            }

            objc_storeStrong(&v53, 0);
            v73 = 0;
            v64 = 1;
          }

          else
          {
            secondaryModelId3 = [(AMDUseCaseWorkflow *)selfCopy secondaryModelId];
            useMinimalMap2 = [(AMDUseCaseWorkflow *)selfCopy useMinimalMap];
            v50 = [AMDBaseRecoModel getModelforId:"getModelforId:useMinimalMap:error:" useMinimalMap:secondaryModelId3 error:?];
            MEMORY[0x277D82BD8](useMinimalMap2);
            MEMORY[0x277D82BD8](secondaryModelId3);
            v18 = predictionsCopy;
            secondaryModelInputBuilder = [(AMDUseCaseWorkflow *)selfCopy secondaryModelInputBuilder];
            secondaryModelOutputBuilder = [(AMDUseCaseWorkflow *)selfCopy secondaryModelOutputBuilder];
            v49 = [v50 getPredictions:v18 andInputBuilder:secondaryModelInputBuilder andOutputBuilder:? withColdstartModelId:? error:?];
            MEMORY[0x277D82BD8](secondaryModelOutputBuilder);
            MEMORY[0x277D82BD8](secondaryModelInputBuilder);
            if (*errorCopy)
            {
              v13 = MEMORY[0x277CCACA8];
              secondaryModelId4 = [(AMDUseCaseWorkflow *)selfCopy secondaryModelId];
              localizedDescription3 = [*errorCopy localizedDescription];
              v48 = [v13 stringWithFormat:@"Inference failed for model: %@ error: %@", secondaryModelId4, localizedDescription3];
              MEMORY[0x277D82BD8](localizedDescription3);
              MEMORY[0x277D82BD8](secondaryModelId4);
              v47 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
              v46 = OS_LOG_TYPE_ERROR;
              if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
              {
                __os_log_helper_16_2_1_8_64(v75, v48);
                _os_log_error_impl(&dword_240CB9000, v47, v46, "%@", v75, 0xCu);
              }

              objc_storeStrong(&v47, 0);
              [AMDFrameworkMetrics log:v48 withKey:@"inferenceFailure" atVerbosity:0];
              v73 = 0;
              v64 = 1;
              objc_storeStrong(&v48, 0);
            }

            else if (v49)
            {
              modelMetadata2 = [v50 modelMetadata];
              getModelUid2 = [modelMetadata2 getModelUid];
              secondaryModelId5 = [(AMDUseCaseWorkflow *)selfCopy secondaryModelId];
              [AMDFrameworkMetrics log:"log:withKey:atVerbosity:" withKey:getModelUid2 atVerbosity:?];
              MEMORY[0x277D82BD8](secondaryModelId5);
              MEMORY[0x277D82BD8](getModelUid2);
              MEMORY[0x277D82BD8](modelMetadata2);
              v73 = MEMORY[0x277D82BE0](v49);
              v64 = 1;
            }

            else
            {
              v11 = MEMORY[0x277CCACA8];
              modelId4 = [(AMDUseCaseWorkflow *)selfCopy modelId];
              v45 = [v11 stringWithFormat:@"Inference failed for model: %@. Nil output", modelId4];
              MEMORY[0x277D82BD8](modelId4);
              v44 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
              if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
              {
                __os_log_helper_16_2_1_8_64(v74, v45);
                _os_log_error_impl(&dword_240CB9000, v44, OS_LOG_TYPE_ERROR, "%@", v74, 0xCu);
              }

              objc_storeStrong(&v44, 0);
              [AMDFrameworkMetrics log:v45 withKey:@"inferenceFailure" atVerbosity:0];
              v73 = 0;
              v64 = 1;
              objc_storeStrong(&v45, 0);
            }

            objc_storeStrong(&v49, 0);
            objc_storeStrong(&v50, 0);
          }

          objc_storeStrong(&v54, 0);
        }

        else
        {
          v73 = MEMORY[0x277D82BE0](v61);
          v64 = 1;
        }
      }

      else
      {
        v28 = MEMORY[0x277CCACA8];
        modelId5 = [(AMDUseCaseWorkflow *)selfCopy modelId];
        v57 = [v28 stringWithFormat:@"Inference failed for model: %@. Nil output", modelId5];
        MEMORY[0x277D82BD8](modelId5);
        oslog = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
        v55 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
        {
          __os_log_helper_16_2_1_8_64(v77, v57);
          _os_log_error_impl(&dword_240CB9000, oslog, v55, "%@", v77, 0xCu);
        }

        objc_storeStrong(&oslog, 0);
        [AMDFrameworkMetrics log:v57 withKey:@"inferenceFailure" atVerbosity:0];
        v73 = 0;
        v64 = 1;
        objc_storeStrong(&v57, 0);
      }

      objc_storeStrong(&v61, 0);
      objc_storeStrong(&getColdstartModelId, 0);
    }

    objc_storeStrong(&v63, 0);
  }

  else
  {
    v41 = MEMORY[0x277CCACA8];
    useCaseId = [(AMDUseCaseWorkflow *)selfCopy useCaseId];
    v67 = [v41 stringWithFormat:@"Using unusable workflow for use case '%@'", useCaseId];
    MEMORY[0x277D82BD8](useCaseId);
    v66 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
    v65 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v79, v67);
      _os_log_error_impl(&dword_240CB9000, v66, v65, "%@", v79, 0xCu);
    }

    objc_storeStrong(&v66, 0);
    v40 = [AMDError allocError:24 withMessage:v67];
    v5 = v40;
    *errorCopy = v40;
    v73 = 0;
    v64 = 1;
    objc_storeStrong(&v67, 0);
  }

  objc_storeStrong(&location, 0);
  *MEMORY[0x277D85DE8];
  v6 = v73;

  return v6;
}

- (BOOL)isValid
{
  useCaseId = [(AMDUseCaseWorkflow *)self useCaseId];
  v26 = 0;
  v19 = 1;
  if (useCaseId)
  {
    modelId = [(AMDUseCaseWorkflow *)self modelId];
    v26 = 1;
    v19 = modelId == 0;
  }

  if (v26)
  {
    MEMORY[0x277D82BD8](modelId);
  }

  MEMORY[0x277D82BD8](useCaseId);
  if (v19)
  {
    return 0;
  }

  useCaseId2 = [(AMDUseCaseWorkflow *)self useCaseId];
  v17 = [(NSString *)useCaseId2 isEqualToString:0x2852AAC08];
  MEMORY[0x277D82BD8](useCaseId2);
  if (v17)
  {
    ruleParams = [(AMDUseCaseWorkflow *)self ruleParams];
    v24 = 0;
    v15 = 0;
    if (ruleParams)
    {
      ruleParams2 = [(AMDUseCaseWorkflow *)self ruleParams];
      v24 = 1;
      v15 = [(NSDictionary *)ruleParams2 count]!= 0;
    }

    v29 = v15;
    if (v24)
    {
      MEMORY[0x277D82BD8](ruleParams2);
    }

    MEMORY[0x277D82BD8](ruleParams);
  }

  else
  {
    modelFormat = [(AMDUseCaseWorkflow *)self modelFormat];
    v13 = [(NSString *)modelFormat isEqualToString:0x2852ADBC8];
    MEMORY[0x277D82BD8](modelFormat);
    if (v13)
    {
      return 1;
    }

    else
    {
      modelId2 = [(AMDUseCaseWorkflow *)self modelId];
      v8 = modelId2 != 0;
      MEMORY[0x277D82BD8](modelId2);
      maxItemsToDisplay = [(AMDUseCaseWorkflow *)self maxItemsToDisplay];
      v9 = maxItemsToDisplay != 0;
      MEMORY[0x277D82BD8](maxItemsToDisplay);
      inputBuilder = [(AMDUseCaseWorkflow *)self inputBuilder];
      v22 = 0;
      isValid = 0;
      if (inputBuilder)
      {
        inputBuilder2 = [(AMDUseCaseWorkflow *)self inputBuilder];
        v22 = 1;
        isValid = [(AMDInputBuilder *)inputBuilder2 isValid];
      }

      if (v22)
      {
        MEMORY[0x277D82BD8](inputBuilder2);
      }

      MEMORY[0x277D82BD8](inputBuilder);
      outputBuilder = [(AMDUseCaseWorkflow *)self outputBuilder];
      v20 = 0;
      isValid2 = 0;
      if (outputBuilder)
      {
        outputBuilder2 = [(AMDUseCaseWorkflow *)self outputBuilder];
        v20 = 1;
        isValid2 = [(AMDOutputBuilder *)outputBuilder2 isValid];
      }

      if (v20)
      {
        MEMORY[0x277D82BD8](outputBuilder2);
      }

      MEMORY[0x277D82BD8](outputBuilder);
      v5 = 0;
      if (v8)
      {
        v5 = 0;
        if (v9)
        {
          v5 = 0;
          if (isValid)
          {
            return isValid2;
          }
        }
      }

      return v5;
    }
  }

  return v29;
}

@end