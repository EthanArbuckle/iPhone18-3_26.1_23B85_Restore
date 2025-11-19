@interface AMDUseCaseWorkflow
- (AMDUseCaseWorkflow)initWithDictionary:(id)a3;
- (BOOL)isValid;
- (id)getOutputFeatureIds;
- (id)getPredictions:(unint64_t)a3 forDomain:(id)a4 error:(id *)a5;
@end

@implementation AMDUseCaseWorkflow

- (AMDUseCaseWorkflow)initWithDictionary:(id)a3
{
  v54 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v54;
  v54 = 0;
  v52.receiver = v3;
  v52.super_class = AMDUseCaseWorkflow;
  v54 = [(AMDUseCaseWorkflow *)&v52 init];
  objc_storeStrong(&v54, v54);
  v24 = [location[0] objectForKey:@"model_id"];
  [(AMDUseCaseWorkflow *)v54 setModelId:?];
  MEMORY[0x277D82BD8](v24);
  v25 = [location[0] objectForKey:@"secondary_model_id"];
  [(AMDUseCaseWorkflow *)v54 setSecondaryModelId:?];
  MEMORY[0x277D82BD8](v25);
  v26 = [location[0] objectForKey:@"end_timestamp"];
  [(AMDUseCaseWorkflow *)v54 setEndTimestamp:?];
  MEMORY[0x277D82BD8](v26);
  v27 = [location[0] objectForKey:@"use_case_id"];
  [(AMDUseCaseWorkflow *)v54 setUseCaseId:?];
  MEMORY[0x277D82BD8](v27);
  v51 = [location[0] objectForKey:@"input_definitions"];
  v49 = 0;
  v47 = 0;
  if (v51)
  {
    v22 = [AMDInputBuilder alloc];
    v50 = [(AMDUseCaseWorkflow *)v54 modelId];
    v49 = 1;
    v48 = [(AMDInputBuilder *)v22 initWithDictionary:v51 andModelId:?];
    v47 = 1;
    v23 = v48;
  }

  else
  {
    v23 = 0;
  }

  [(AMDUseCaseWorkflow *)v54 setInputBuilder:v23];
  if (v47)
  {
    MEMORY[0x277D82BD8](v48);
  }

  if (v49)
  {
    MEMORY[0x277D82BD8](v50);
  }

  v20 = [location[0] objectForKey:@"max_items_to_display"];
  [(AMDUseCaseWorkflow *)v54 setMaxItemsToDisplay:?];
  MEMORY[0x277D82BD8](v20);
  v21 = [location[0] objectForKey:@"model_format"];
  [(AMDUseCaseWorkflow *)v54 setModelFormat:?];
  MEMORY[0x277D82BD8](v21);
  [(AMDUseCaseWorkflow *)v54 setColdstartModelId:?];
  [(AMDUseCaseWorkflow *)v54 setUseMinimalMap:0];
  v46 = [location[0] objectForKey:@"resources"];
  if (v46 && [v46 count])
  {
    v18 = [v46 firstObject];
    v44 = 0;
    isKindOfClass = 0;
    if (v18)
    {
      v45 = [v46 firstObject];
      v44 = 1;
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
    }

    if (v44)
    {
      MEMORY[0x277D82BD8](v45);
    }

    MEMORY[0x277D82BD8](v18);
    if (isKindOfClass)
    {
      v43 = [v46 firstObject];
      v16 = [v43 objectForKey:@"coldstart_model_id"];
      [(AMDUseCaseWorkflow *)v54 setColdstartModelId:?];
      MEMORY[0x277D82BD8](v16);
      v17 = [v43 objectForKey:@"use_minimal_map"];
      [(AMDUseCaseWorkflow *)v54 setUseMinimalMap:?];
      MEMORY[0x277D82BD8](v17);
      objc_storeStrong(&v43, 0);
    }
  }

  v13 = [location[0] objectForKey:@"rule_params"];
  [(AMDUseCaseWorkflow *)v54 setRuleParams:?];
  MEMORY[0x277D82BD8](v13);
  v14 = [location[0] objectForKey:@"start_timestamp"];
  [(AMDUseCaseWorkflow *)v54 setStartTimestamp:?];
  MEMORY[0x277D82BD8](v14);
  v15 = [location[0] objectForKey:@"treatment_id"];
  [(AMDUseCaseWorkflow *)v54 setTreatmentId:?];
  MEMORY[0x277D82BD8](v15);
  v42 = [location[0] objectForKey:@"output_definitions"];
  v40 = 0;
  v38 = 0;
  if (v42)
  {
    v11 = [AMDOutputBuilder alloc];
    v41 = [(AMDUseCaseWorkflow *)v54 useCaseId];
    v40 = 1;
    v39 = [(AMDOutputBuilder *)v11 initWithDictionary:v42 forUseCase:?];
    v38 = 1;
    v12 = v39;
  }

  else
  {
    v12 = 0;
  }

  [(AMDUseCaseWorkflow *)v54 setOutputBuilder:v12];
  if (v38)
  {
    MEMORY[0x277D82BD8](v39);
  }

  if (v40)
  {
    MEMORY[0x277D82BD8](v41);
  }

  v10 = [(AMDUseCaseWorkflow *)v54 secondaryModelId];
  MEMORY[0x277D82BD8](v10);
  if (v10)
  {
    v37 = [location[0] objectForKey:@"secondary_model_input_definitions"];
    v35 = 0;
    v33 = 0;
    if (v37)
    {
      v8 = [AMDInputBuilder alloc];
      v36 = [(AMDUseCaseWorkflow *)v54 secondaryModelId];
      v35 = 1;
      v34 = [(AMDInputBuilder *)v8 initWithDictionary:v37 andModelId:?];
      v33 = 1;
      v9 = v34;
    }

    else
    {
      v9 = 0;
    }

    [(AMDUseCaseWorkflow *)v54 setSecondaryModelInputBuilder:v9];
    if (v33)
    {
      MEMORY[0x277D82BD8](v34);
    }

    if (v35)
    {
      MEMORY[0x277D82BD8](v36);
    }

    v32 = [location[0] objectForKey:@"secondary_model_output_definitions"];
    v30 = 0;
    v28 = 0;
    if (v32)
    {
      v6 = [AMDOutputBuilder alloc];
      v31 = [(AMDUseCaseWorkflow *)v54 useCaseId];
      v30 = 1;
      v29 = [(AMDOutputBuilder *)v6 initWithDictionary:v32 forUseCase:?];
      v28 = 1;
      v7 = v29;
    }

    else
    {
      v7 = 0;
    }

    [(AMDUseCaseWorkflow *)v54 setSecondaryModelOutputBuilder:v7];
    if (v28)
    {
      MEMORY[0x277D82BD8](v29);
    }

    if (v30)
    {
      MEMORY[0x277D82BD8](v31);
    }

    objc_storeStrong(&v32, 0);
    objc_storeStrong(&v37, 0);
  }

  v5 = MEMORY[0x277D82BE0](v54);
  objc_storeStrong(&v42, 0);
  objc_storeStrong(&v46, 0);
  objc_storeStrong(&v51, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v54, 0);
  return v5;
}

- (id)getOutputFeatureIds
{
  v3 = [(AMDUseCaseWorkflow *)self outputBuilder];
  v4 = [(AMDOutputBuilder *)v3 getAllFeatureIds];
  MEMORY[0x277D82BD8](v3);

  return v4;
}

- (id)getPredictions:(unint64_t)a3 forDomain:(id)a4 error:(id *)a5
{
  v80 = *MEMORY[0x277D85DE8];
  v72 = self;
  v71 = a2;
  v70 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  v68 = a5;
  if ([(AMDUseCaseWorkflow *)v72 isValid])
  {
    v39 = [(AMDUseCaseWorkflow *)v72 modelId];
    v38 = [(AMDUseCaseWorkflow *)v72 useMinimalMap];
    v63 = [AMDBaseRecoModel getModelforId:"getModelforId:useMinimalMap:error:" useMinimalMap:v39 error:?];
    MEMORY[0x277D82BD8](v38);
    MEMORY[0x277D82BD8](v39);
    if (*v68)
    {
      v73 = 0;
      v64 = 1;
    }

    else
    {
      v62 = [(AMDUseCaseWorkflow *)v72 getColdstartModelId];
      v34 = v70;
      v35 = [(AMDUseCaseWorkflow *)v72 inputBuilder];
      v36 = [(AMDUseCaseWorkflow *)v72 outputBuilder];
      v37 = [(AMDUseCaseWorkflow *)v72 secondaryModelId];
      if (v37)
      {
        v33 = 0;
      }

      else
      {
        v33 = v62;
      }

      v61 = [v63 getPredictions:v34 andInputBuilder:v35 andOutputBuilder:v36 withColdstartModelId:v33 error:v68];
      MEMORY[0x277D82BD8](v37);
      MEMORY[0x277D82BD8](v36);
      MEMORY[0x277D82BD8](v35);
      if (*v68)
      {
        v30 = MEMORY[0x277CCACA8];
        v32 = [(AMDUseCaseWorkflow *)v72 modelId];
        v31 = [*v68 localizedDescription];
        v60 = [v30 stringWithFormat:@"Inference failed for model: %@ error: %@", v32, v31];
        MEMORY[0x277D82BD8](v31);
        MEMORY[0x277D82BD8](v32);
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
        v26 = [v63 modelMetadata];
        v25 = [v26 getModelUid];
        v24 = [(AMDUseCaseWorkflow *)v72 modelId];
        [AMDFrameworkMetrics log:"log:withKey:atVerbosity:" withKey:v25 atVerbosity:?];
        MEMORY[0x277D82BD8](v24);
        MEMORY[0x277D82BD8](v25);
        MEMORY[0x277D82BD8](v26);
        v27 = [(AMDUseCaseWorkflow *)v72 secondaryModelId];
        MEMORY[0x277D82BD8](v27);
        if (v27)
        {
          v54 = [AMDFeatureProvider getProviderForSource:0x2852AB468 WithDomain:0];
          [v54 storeFeatureData:v61 error:v68];
          if (*v68)
          {
            v53 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
            v52 = OS_LOG_TYPE_ERROR;
            if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
            {
              v21 = v53;
              v22 = v52;
              v23 = [*v68 localizedDescription];
              v51 = MEMORY[0x277D82BE0](v23);
              __os_log_helper_16_2_1_8_64(v76, v51);
              _os_log_error_impl(&dword_240CB9000, v21, v22, "Intermediate output store failed. Error: %@", v76, 0xCu);
              MEMORY[0x277D82BD8](v23);
              objc_storeStrong(&v51, 0);
            }

            objc_storeStrong(&v53, 0);
            v73 = 0;
            v64 = 1;
          }

          else
          {
            v17 = [(AMDUseCaseWorkflow *)v72 secondaryModelId];
            v16 = [(AMDUseCaseWorkflow *)v72 useMinimalMap];
            v50 = [AMDBaseRecoModel getModelforId:"getModelforId:useMinimalMap:error:" useMinimalMap:v17 error:?];
            MEMORY[0x277D82BD8](v16);
            MEMORY[0x277D82BD8](v17);
            v18 = v70;
            v20 = [(AMDUseCaseWorkflow *)v72 secondaryModelInputBuilder];
            v19 = [(AMDUseCaseWorkflow *)v72 secondaryModelOutputBuilder];
            v49 = [v50 getPredictions:v18 andInputBuilder:v20 andOutputBuilder:? withColdstartModelId:? error:?];
            MEMORY[0x277D82BD8](v19);
            MEMORY[0x277D82BD8](v20);
            if (*v68)
            {
              v13 = MEMORY[0x277CCACA8];
              v15 = [(AMDUseCaseWorkflow *)v72 secondaryModelId];
              v14 = [*v68 localizedDescription];
              v48 = [v13 stringWithFormat:@"Inference failed for model: %@ error: %@", v15, v14];
              MEMORY[0x277D82BD8](v14);
              MEMORY[0x277D82BD8](v15);
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
              v10 = [v50 modelMetadata];
              v9 = [v10 getModelUid];
              v8 = [(AMDUseCaseWorkflow *)v72 secondaryModelId];
              [AMDFrameworkMetrics log:"log:withKey:atVerbosity:" withKey:v9 atVerbosity:?];
              MEMORY[0x277D82BD8](v8);
              MEMORY[0x277D82BD8](v9);
              MEMORY[0x277D82BD8](v10);
              v73 = MEMORY[0x277D82BE0](v49);
              v64 = 1;
            }

            else
            {
              v11 = MEMORY[0x277CCACA8];
              v12 = [(AMDUseCaseWorkflow *)v72 modelId];
              v45 = [v11 stringWithFormat:@"Inference failed for model: %@. Nil output", v12];
              MEMORY[0x277D82BD8](v12);
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
        v29 = [(AMDUseCaseWorkflow *)v72 modelId];
        v57 = [v28 stringWithFormat:@"Inference failed for model: %@. Nil output", v29];
        MEMORY[0x277D82BD8](v29);
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
      objc_storeStrong(&v62, 0);
    }

    objc_storeStrong(&v63, 0);
  }

  else
  {
    v41 = MEMORY[0x277CCACA8];
    v42 = [(AMDUseCaseWorkflow *)v72 useCaseId];
    v67 = [v41 stringWithFormat:@"Using unusable workflow for use case '%@'", v42];
    MEMORY[0x277D82BD8](v42);
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
    *v68 = v40;
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
  v18 = [(AMDUseCaseWorkflow *)self useCaseId];
  v26 = 0;
  v19 = 1;
  if (v18)
  {
    v27 = [(AMDUseCaseWorkflow *)self modelId];
    v26 = 1;
    v19 = v27 == 0;
  }

  if (v26)
  {
    MEMORY[0x277D82BD8](v27);
  }

  MEMORY[0x277D82BD8](v18);
  if (v19)
  {
    return 0;
  }

  v16 = [(AMDUseCaseWorkflow *)self useCaseId];
  v17 = [(NSString *)v16 isEqualToString:0x2852AAC08];
  MEMORY[0x277D82BD8](v16);
  if (v17)
  {
    v14 = [(AMDUseCaseWorkflow *)self ruleParams];
    v24 = 0;
    v15 = 0;
    if (v14)
    {
      v25 = [(AMDUseCaseWorkflow *)self ruleParams];
      v24 = 1;
      v15 = [(NSDictionary *)v25 count]!= 0;
    }

    v29 = v15;
    if (v24)
    {
      MEMORY[0x277D82BD8](v25);
    }

    MEMORY[0x277D82BD8](v14);
  }

  else
  {
    v12 = [(AMDUseCaseWorkflow *)self modelFormat];
    v13 = [(NSString *)v12 isEqualToString:0x2852ADBC8];
    MEMORY[0x277D82BD8](v12);
    if (v13)
    {
      return 1;
    }

    else
    {
      v2 = [(AMDUseCaseWorkflow *)self modelId];
      v8 = v2 != 0;
      MEMORY[0x277D82BD8](v2);
      v3 = [(AMDUseCaseWorkflow *)self maxItemsToDisplay];
      v9 = v3 != 0;
      MEMORY[0x277D82BD8](v3);
      v10 = [(AMDUseCaseWorkflow *)self inputBuilder];
      v22 = 0;
      v11 = 0;
      if (v10)
      {
        v23 = [(AMDUseCaseWorkflow *)self inputBuilder];
        v22 = 1;
        v11 = [(AMDInputBuilder *)v23 isValid];
      }

      if (v22)
      {
        MEMORY[0x277D82BD8](v23);
      }

      MEMORY[0x277D82BD8](v10);
      v6 = [(AMDUseCaseWorkflow *)self outputBuilder];
      v20 = 0;
      v7 = 0;
      if (v6)
      {
        v21 = [(AMDUseCaseWorkflow *)self outputBuilder];
        v20 = 1;
        v7 = [(AMDOutputBuilder *)v21 isValid];
      }

      if (v20)
      {
        MEMORY[0x277D82BD8](v21);
      }

      MEMORY[0x277D82BD8](v6);
      v5 = 0;
      if (v8)
      {
        v5 = 0;
        if (v9)
        {
          v5 = 0;
          if (v11)
          {
            return v7;
          }
        }
      }

      return v5;
    }
  }

  return v29;
}

@end