@interface AMDJSInference
+ (BOOL)areValidInputs:(id)inputs domainOut:(int64_t *)out useCaseIdsArray:(id)array useCaseIdsSetOut:(id *)setOut storeFrontIdString:(id)string storeFrontIdOut:(id *)idOut dsId:(id)id error:(id *)self0;
+ (id)getDataForBizLogicForWorkflow:(id)workflow useCaseId:(id)id domainName:(id)name;
+ (id)getIdAndScoresFrom:(id)from useCaseId:(id)id summary:(id)summary bigGummary:(id)gummary errorKey:(id)key;
+ (id)getPredictionForUseCase:(id)case treatmentId:(id)id UsingWorkflow:(id)workflow domainName:(id)name summary:(id)summary bigSummary:(id)bigSummary errorKey:(id)key;
+ (id)getWorkflowForUseCase:(id)case treatmentId:(id)id domain:(int64_t)domain summary:(id)summary bigSummary:(id)bigSummary errorKey:(id)key;
+ (id)persist:(id)persist withUsecase:(id)usecase withConfig:(id)config domainName:(id)name;
+ (id)runInference:(id)inference error:(id *)error;
+ (void)appendInAppEventDataTo:(id)to forDsId:(id)id withInferencePayload:(id)payload;
@end

@implementation AMDJSInference

+ (id)runInference:(id)inference error:(id *)error
{
  v80 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, inference);
  errorCopy = error;
  v70 = [location[0] objectForKey:0x2852A86A8];
  v69 = [location[0] objectForKey:0x2852B1B68];
  v68 = [location[0] objectForKey:0x2852AB2C8];
  v67 = [location[0] objectForKey:0x2852AB2A8];
  v66 = 0;
  v65 = 0;
  v64 = 0;
  obj = 0;
  v62 = 0;
  v35 = [selfCopy areValidInputs:v70 domainOut:&v66 useCaseIdsArray:v69 useCaseIdsSetOut:&obj storeFrontIdString:v68 storeFrontIdOut:&v62 dsId:v67 error:error];
  objc_storeStrong(&v65, obj);
  objc_storeStrong(&v64, v62);
  if (v35)
  {
    v60 = [location[0] objectForKey:@"inferenceInputData"];
    if (!v60 || ((v59 = +[AMDFeatureProvider getProviderForSource:WithDomain:](AMDFeatureProvider, "getProviderForSource:WithDomain:", 0x2852AB488, 0), [v59 storeFeatureData:v60 error:errorCopy], !*errorCopy) ? (v61 = 0) : (v74 = 0, v61 = 1), objc_storeStrong(&v59, 0), !v61))
    {
      v58 = [location[0] objectForKey:@"auxillaryData"];
      if (!v58 || ((v57 = +[AMDFeatureProvider getProviderForSource:WithDomain:](AMDFeatureProvider, "getProviderForSource:WithDomain:", 0x2852AB488, 0), [v57 storeOutputRemapData:v58 error:errorCopy], !*errorCopy) ? (v61 = 0) : (v74 = 0, v61 = 1), objc_storeStrong(&v57, 0), !v61))
      {
        v56 = [location[0] objectForKey:0x2852B19C8];
        if (v56)
        {
          objc_storeStrong(&v56, v56);
        }

        else
        {
          objc_storeStrong(&v56, MEMORY[0x277CBEC10]);
        }

        v55 = [location[0] objectForKey:@"returnInferenceResult"];
        if (v55)
        {
          objc_storeStrong(&v55, v55);
        }

        else
        {
          objc_storeStrong(&v55, MEMORY[0x277CBEC10]);
        }

        v54 = [location[0] objectForKey:0x2852AAB08];
        v30 = objc_alloc(MEMORY[0x277CBEB38]);
        v53 = [v30 initWithCapacity:{objc_msgSend(v65, "count")}];
        v31 = objc_alloc(MEMORY[0x277CBEB38]);
        v52 = [v31 initWithCapacity:{objc_msgSend(v65, "count")}];
        v51 = 0;
        memset(__b, 0, sizeof(__b));
        v32 = MEMORY[0x277D82BE0](v65);
        v33 = [v32 countByEnumeratingWithState:__b objects:v79 count:16];
        if (v33)
        {
          v27 = *__b[2];
          v28 = 0;
          v29 = v33;
          while (1)
          {
            v26 = v28;
            if (*__b[2] != v27)
            {
              objc_enumerationMutation(v32);
            }

            v50 = *(__b[1] + 8 * v28);
            objc_storeStrong(&v51, 0);
            v48 = objc_alloc_init(MEMORY[0x277CBEB38]);
            v47 = [@"inferenceUseCase:" stringByAppendingString:v50];
            v46 = [@"inferenceError" stringByAppendingString:v47];
            [AMDPerf startMonitoringEvent:v47];
            v45 = [selfCopy getWorkflowForUseCase:v50 treatmentId:v54 domain:v66 summary:v48 bigSummary:v52 errorKey:v46];
            if (v45)
            {
              v24 = selfCopy;
              v22 = v50;
              v23 = v54;
              first = [v45 first];
              v44 = [v24 getPredictionForUseCase:v22 treatmentId:v23 UsingWorkflow:v46 domainName:? summary:? bigSummary:? errorKey:?];
              MEMORY[0x277D82BD8](first);
              if (v44)
              {
                v43 = [v56 objectForKey:v50];
                if (v43)
                {
                  v42 = [selfCopy persist:v44 withUsecase:v50 withConfig:v43 domainName:v70];
                  [v48 setObject:v42 forKey:@"resultPersistanceSummary"];
                  objc_storeStrong(&v42, 0);
                }

                v41 = [selfCopy getIdAndScoresFrom:v44 useCaseId:v50 summary:v48 bigGummary:v52 errorKey:v46];
                v40 = MEMORY[0x277D82BE0](MEMORY[0x277CBEC10]);
                v21 = [v44 objectForKey:@"results"];
                MEMORY[0x277D82BD8](v21);
                if (v21)
                {
                  v77[0] = @"reco_id";
                  v20 = objc_alloc_init(MEMORY[0x277CCAD78]);
                  uUIDString = [v20 UUIDString];
                  v78[0] = uUIDString;
                  v77[1] = @"reco_eligible";
                  v78[1] = &unk_2852BA650;
                  v77[2] = @"reco_useCase";
                  v78[2] = v50;
                  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v78 forKeys:v77 count:3];
                  v5 = v40;
                  v40 = v4;
                  MEMORY[0x277D82BD8](v5);
                  MEMORY[0x277D82BD8](uUIDString);
                  MEMORY[0x277D82BD8](v20);
                }

                bOOLValue = 1;
                v38 = [v55 objectForKey:v50];
                if (v38)
                {
                  bOOLValue = [v38 BOOLValue];
                }

                if ((bOOLValue & 1) == 0)
                {
                  objc_storeStrong(&v44, MEMORY[0x277CBEC10]);
                }

                v37 = [AMDFrameworkMetrics getValueForKey:?];
                v75[0] = @"outputs";
                v76[0] = v44;
                v75[1] = @"contentIdsProvided";
                v9 = MEMORY[0x277CBEC38];
                v76[1] = MEMORY[0x277CBEC38];
                v75[2] = @"contentIds";
                first2 = [v41 first];
                v76[2] = first2;
                v75[3] = @"scoresProvided";
                v76[3] = v9;
                v75[4] = @"scores";
                second = [v41 second];
                v76[4] = second;
                v75[5] = @"maxItemsToDisplay";
                first3 = [v45 first];
                getMaxItemsToDisplay = [first3 getMaxItemsToDisplay];
                v76[5] = getMaxItemsToDisplay;
                v75[6] = @"workflowUsed";
                second2 = [v45 second];
                v76[6] = second2;
                v75[7] = @"outputFeatures";
                v16 = selfCopy;
                first4 = [v45 first];
                getOutputFeatureIds = [first4 getOutputFeatureIds];
                v18 = [v16 getDataForBizLogicForWorkflow:? useCaseId:? domainName:?];
                v76[7] = v18;
                v75[8] = @"metrics";
                v76[8] = v40;
                v75[9] = @"inferenceModelInfo";
                if (v37)
                {
                  v8 = v37;
                }

                else
                {
                  v8 = MEMORY[0x277CBEC10];
                }

                v76[9] = v8;
                v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v76 forKeys:v75 count:10];
                MEMORY[0x277D82BD8](v18);
                MEMORY[0x277D82BD8](getOutputFeatureIds);
                MEMORY[0x277D82BD8](first4);
                MEMORY[0x277D82BD8](second2);
                MEMORY[0x277D82BD8](getMaxItemsToDisplay);
                MEMORY[0x277D82BD8](first3);
                MEMORY[0x277D82BD8](second);
                MEMORY[0x277D82BD8](first2);
                [v53 setValue:v36 forKey:v50];
                [v52 setObject:v48 forKey:v50];
                [AMDPerf endMonitoringEvent:v47];
                objc_storeStrong(&v36, 0);
                objc_storeStrong(&v37, 0);
                objc_storeStrong(&v38, 0);
                objc_storeStrong(&v40, 0);
                objc_storeStrong(&v41, 0);
                objc_storeStrong(&v43, 0);
                v61 = 0;
              }

              else
              {
                v61 = 3;
              }

              objc_storeStrong(&v44, 0);
            }

            else
            {
              v61 = 3;
            }

            objc_storeStrong(&v45, 0);
            objc_storeStrong(&v46, 0);
            objc_storeStrong(&v47, 0);
            objc_storeStrong(&v48, 0);
            ++v28;
            if (v26 + 1 >= v29)
            {
              v28 = 0;
              v29 = [v32 countByEnumeratingWithState:__b objects:v79 count:16];
              if (!v29)
              {
                break;
              }
            }
          }
        }

        MEMORY[0x277D82BD8](v32);
        [AMDFrameworkMetrics log:v52 withKey:@"recommendationSummary" atVerbosity:0];
        [selfCopy appendInAppEventDataTo:v53 forDsId:v67 withInferencePayload:location[0]];
        v74 = MEMORY[0x277D82BE0](v53);
        v61 = 1;
        objc_storeStrong(&v51, 0);
        objc_storeStrong(&v52, 0);
        objc_storeStrong(&v53, 0);
        objc_storeStrong(&v54, 0);
        objc_storeStrong(&v55, 0);
        objc_storeStrong(&v56, 0);
      }

      objc_storeStrong(&v58, 0);
    }

    objc_storeStrong(&v60, 0);
  }

  else
  {
    v74 = 0;
    v61 = 1;
  }

  objc_storeStrong(&v64, 0);
  objc_storeStrong(&v65, 0);
  objc_storeStrong(&v67, 0);
  objc_storeStrong(&v68, 0);
  objc_storeStrong(&v69, 0);
  objc_storeStrong(&v70, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  v6 = v74;

  return v6;
}

+ (BOOL)areValidInputs:(id)inputs domainOut:(int64_t *)out useCaseIdsArray:(id)array useCaseIdsSetOut:(id *)setOut storeFrontIdString:(id)string storeFrontIdOut:(id *)idOut dsId:(id)id error:(id *)self0
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, inputs);
  outCopy = out;
  v36 = 0;
  objc_storeStrong(&v36, array);
  setOutCopy = setOut;
  v34 = 0;
  objc_storeStrong(&v34, string);
  idOutCopy = idOut;
  v32 = 0;
  objc_storeStrong(&v32, id);
  errorCopy = error;
  v30 = 0;
  v29 = 0;
  if (location[0])
  {
    v27 = [AMDDomains getCodeForDomain:location[0]];
    if (v27)
    {
      *outCopy = v27;
      if (v36 && [v36 count])
      {
        v19 = [MEMORY[0x277CBEB98] setWithArray:v36];
        v11 = v19;
        *setOutCopy = v19;
        if (v34)
        {
          v18 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v34, "intValue")}];
          v12 = v18;
          *idOutCopy = v18;
          if (v32)
          {
            if ([AMDMiscHelpers isValidDSID:v32])
            {
              v26 = [AMDTasteProfile getStorefrontIdForDomain:location[0]];
              v25 = [AMDTasteProfile getUserIdForDomain:location[0]];
              if (*idOutCopy && v25)
              {
                if ([v32 isEqualToString:v25])
                {
                  if ([*idOutCopy isEqualToNumber:v26])
                  {
                    v28 = 0;
                  }

                  else
                  {
                    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"SfId mismatch: payload:%@ TP:%@", *idOutCopy, v26];
                    v14 = v30;
                    v30 = v13;
                    MEMORY[0x277D82BD8](v14);
                    v39 = 0;
                    v28 = 1;
                  }
                }

                else
                {
                  objc_storeStrong(&v30, @"DsId mismatch");
                  v39 = 0;
                  v28 = 1;
                }
              }

              else
              {
                objc_storeStrong(&v30, @"No dsId or sfId in TP");
                v39 = 0;
                v28 = 1;
              }

              objc_storeStrong(&v25, 0);
              objc_storeStrong(&v26, 0);
              if (!v28)
              {
                v28 = 0;
              }
            }

            else
            {
              objc_storeStrong(&v30, @"Invalid dsId");
              v39 = 0;
              v28 = 1;
            }
          }

          else
          {
            objc_storeStrong(&v30, @"Missing dsId");
            v39 = 0;
            v28 = 1;
          }
        }

        else
        {
          objc_storeStrong(&v30, @"Missing storeFrontId");
          v39 = 0;
          v28 = 1;
        }
      }

      else
      {
        objc_storeStrong(&v30, @"No use cases");
        v39 = 0;
        v28 = 1;
      }
    }

    else
    {
      objc_storeStrong(&v30, @"Unknown domain");
      v39 = 0;
      v28 = 1;
    }
  }

  else
  {
    objc_storeStrong(&v30, @"Missing domain");
    v39 = 0;
    v28 = 1;
  }

  v17 = v28;
  if (v30)
  {
    v16 = [AMDError allocError:15 withMessage:v30];
    v15 = v16;
    *errorCopy = v16;
    result = [AMDFrameworkMetrics log:v30 withKey:@"inferenceError" atVerbosity:0];
  }

  if (v29)
  {
    objc_exception_rethrow();
  }

  v28 = v17;
  if (!v17)
  {
    v39 = 1;
    v28 = 1;
LABEL_32:
    objc_storeStrong(&v30, 0);
    objc_storeStrong(&v32, 0);
    objc_storeStrong(&v34, 0);
    objc_storeStrong(&v36, 0);
    objc_storeStrong(location, 0);
    return v39 & 1;
  }

  if (v17 != 2)
  {
    goto LABEL_32;
  }

  __break(1u);
  return result;
}

+ (id)getWorkflowForUseCase:(id)case treatmentId:(id)id domain:(int64_t)domain summary:(id)summary bigSummary:(id)bigSummary errorKey:(id)key
{
  v52 = *MEMORY[0x277D85DE8];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, case);
  v45 = 0;
  objc_storeStrong(&v45, id);
  domainCopy = domain;
  v43 = 0;
  objc_storeStrong(&v43, summary);
  v42 = 0;
  objc_storeStrong(&v42, bigSummary);
  v41 = 0;
  objc_storeStrong(&v41, key);
  v40 = 0;
  v38 = 0;
  v25 = [AMDWorkflow getCurrentWorkflowForDomain:domainCopy andTreatmentId:v45 andUseCaseId:location[0] error:&v38];
  objc_storeStrong(&v40, v38);
  v39 = v25;
  if (v40)
  {
    oslog = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
    type = OS_LOG_TYPE_INFO;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_INFO))
    {
      v17 = location[0];
      v18 = v45;
      localizedDescription = [v40 localizedDescription];
      __os_log_helper_16_2_3_8_64_8_64_8_64(v51, v17, v18, localizedDescription);
      _os_log_impl(&dword_240CB9000, oslog, type, "error fetching workflow for use case %@, treatment %@: %@", v51, 0x20u);
      MEMORY[0x277D82BD8](localizedDescription);
    }

    objc_storeStrong(&oslog, 0);
    [v43 setObject:@"Error getting workflow" forKey:@"error"];
    v15 = v43;
    localizedDescription2 = [v40 localizedDescription];
    [v15 setObject:? forKey:?];
    MEMORY[0x277D82BD8](localizedDescription2);
    [v42 setObject:v43 forKey:location[0]];
    [AMDFrameworkMetrics log:@"Error fetching workflow" withKey:v41 atVerbosity:0];
    v47 = 0;
    v35 = 1;
  }

  else if (v39)
  {
    second = [v39 second];
    if (!v45)
    {
      first = [v39 first];
      v9 = v45;
      v45 = first;
      MEMORY[0x277D82BD8](v9);
    }

    if (second && [second count])
    {
      if (v45)
      {
        [v43 setObject:v45 forKey:0x2852AAB08];
      }

      v27 = [[AMDUseCaseWorkflow alloc] initWithDictionary:second];
      if ([v27 isValid])
      {
        v47 = [[AMDPair alloc] initWith:v27 and:second];
        v35 = 1;
      }

      else
      {
        v26 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          __os_log_helper_16_2_2_8_64_8_64(v48, location[0], v45);
          _os_log_error_impl(&dword_240CB9000, v26, OS_LOG_TYPE_ERROR, "invalid workflow for use case %@, treatment %@", v48, 0x16u);
        }

        objc_storeStrong(&v26, 0);
        [v43 setObject:? forKey:?];
        [v42 setObject:v43 forKey:location[0]];
        [AMDFrameworkMetrics log:@"Invalid workflow" withKey:v41 atVerbosity:0];
        v47 = 0;
        v35 = 1;
      }

      objc_storeStrong(&v27, 0);
    }

    else
    {
      v31 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
      v30 = OS_LOG_TYPE_INFO;
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        __os_log_helper_16_2_2_8_64_8_64(v49, location[0], v45);
        _os_log_impl(&dword_240CB9000, v31, v30, "no workflow for use case %@, treatment %@", v49, 0x16u);
      }

      objc_storeStrong(&v31, 0);
      [v43 setObject:? forKey:?];
      [v42 setObject:v43 forKey:location[0]];
      [AMDFrameworkMetrics log:@"No workflow" withKey:v41 atVerbosity:0];
      v28 = v40;
      v14 = [AMDWorkflowInFlight fetchAllModelIds:&v28];
      objc_storeStrong(&v40, v28);
      v29 = v14;
      if (!v40)
      {
        v12 = v29;
        v13 = [@"inflight_" stringByAppendingString:location[0]];
        [AMDFrameworkMetrics log:"log:withKey:atVerbosity:" withKey:v12 atVerbosity:?];
        MEMORY[0x277D82BD8](v13);
      }

      v47 = 0;
      v35 = 1;
      objc_storeStrong(&v29, 0);
    }

    objc_storeStrong(&second, 0);
  }

  else
  {
    v34 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
    v33 = OS_LOG_TYPE_INFO;
    if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
    {
      __os_log_helper_16_2_2_8_64_8_64(v50, location[0], v45);
      _os_log_impl(&dword_240CB9000, v34, v33, "no workflow for use case %@, treatment %@", v50, 0x16u);
    }

    objc_storeStrong(&v34, 0);
    [v43 setObject:@"No workflow" forKey:@"error"];
    [v42 setObject:v43 forKey:location[0]];
    v47 = 0;
    v35 = 1;
  }

  objc_storeStrong(&v39, 0);
  objc_storeStrong(&v40, 0);
  objc_storeStrong(&v41, 0);
  objc_storeStrong(&v42, 0);
  objc_storeStrong(&v43, 0);
  objc_storeStrong(&v45, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  v10 = v47;

  return v10;
}

+ (id)getPredictionForUseCase:(id)case treatmentId:(id)id UsingWorkflow:(id)workflow domainName:(id)name summary:(id)summary bigSummary:(id)bigSummary errorKey:(id)key
{
  v47 = *MEMORY[0x277D85DE8];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, case);
  v42 = 0;
  objc_storeStrong(&v42, id);
  v41 = 0;
  objc_storeStrong(&v41, workflow);
  v40 = 0;
  objc_storeStrong(&v40, name);
  v39 = 0;
  objc_storeStrong(&v39, summary);
  v38 = 0;
  objc_storeStrong(&v38, bigSummary);
  v37 = 0;
  objc_storeStrong(&v37, key);
  v36 = 0;
  v35 = 0;
  v25 = v41;
  getMaxItemsToDisplay = [v41 getMaxItemsToDisplay];
  unsignedIntValue = [getMaxItemsToDisplay unsignedIntValue];
  v34 = v36;
  v26 = [v25 getPredictions:(unsignedIntValue * 1.5) forDomain:v40 error:&v34];
  objc_storeStrong(&v36, v34);
  v10 = v35;
  v35 = v26;
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](getMaxItemsToDisplay);
  if (v36)
  {
    v33 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
    v32 = 1;
    if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
    {
      log = v33;
      type = v32;
      v15 = location[0];
      v16 = v42;
      localizedDescription = [v36 localizedDescription];
      v31 = MEMORY[0x277D82BE0](localizedDescription);
      __os_log_helper_16_2_3_8_64_8_64_8_64(v46, v15, v16, v31);
      _os_log_impl(&dword_240CB9000, log, type, "error running inference for use case %@, treatment %@: %@", v46, 0x20u);
      MEMORY[0x277D82BD8](localizedDescription);
      objc_storeStrong(&v31, 0);
    }

    objc_storeStrong(&v33, 0);
    [v39 setObject:? forKey:?];
    v13 = v39;
    localizedDescription2 = [v36 localizedDescription];
    [v13 setObject:? forKey:?];
    MEMORY[0x277D82BD8](localizedDescription2);
    [v38 setObject:v39 forKey:location[0]];
    [AMDFrameworkMetrics log:@"Error running inference" withKey:v37 atVerbosity:0];
    v44 = 0;
    v30 = 1;
  }

  else if (v35 && [v35 count])
  {
    v44 = MEMORY[0x277D82BE0](v35);
    v30 = 1;
  }

  else
  {
    v29 = MEMORY[0x277D82BE0](@"No inference output");
    v28 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v45, v29);
      _os_log_error_impl(&dword_240CB9000, v28, OS_LOG_TYPE_ERROR, "%@", v45, 0xCu);
    }

    objc_storeStrong(&v28, 0);
    [v39 setObject:v29 forKey:@"error"];
    [v38 setObject:v39 forKey:location[0]];
    [AMDFrameworkMetrics log:v29 withKey:v37 atVerbosity:0];
    v44 = 0;
    v30 = 1;
    objc_storeStrong(&v29, 0);
  }

  objc_storeStrong(&v35, 0);
  objc_storeStrong(&v36, 0);
  objc_storeStrong(&v37, 0);
  objc_storeStrong(&v38, 0);
  objc_storeStrong(&v39, 0);
  objc_storeStrong(&v40, 0);
  objc_storeStrong(&v41, 0);
  objc_storeStrong(&v42, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  v11 = v44;

  return v11;
}

+ (id)persist:(id)persist withUsecase:(id)usecase withConfig:(id)config domainName:(id)name
{
  v57 = *MEMORY[0x277D85DE8];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, persist);
  v48 = 0;
  objc_storeStrong(&v48, usecase);
  v47 = 0;
  objc_storeStrong(&v47, config);
  v46 = 0;
  objc_storeStrong(&v46, name);
  v45 = objc_alloc_init(MEMORY[0x277CBEB38]);
  oslog = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
  type = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_1_8_64(v56, v48);
    _os_log_debug_impl(&dword_240CB9000, oslog, type, "Persisting inference result with usecase %@", v56, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  memset(__b, 0, sizeof(__b));
  v19 = MEMORY[0x277D82BE0](location[0]);
  v20 = [v19 countByEnumeratingWithState:__b objects:v55 count:16];
  if (v20)
  {
    v16 = *__b[2];
    v17 = 0;
    v18 = v20;
    while (1)
    {
      v15 = v17;
      if (*__b[2] != v16)
      {
        objc_enumerationMutation(v19);
      }

      v42 = *(__b[1] + 8 * v17);
      v40 = [v47 objectForKey:v42];
      if (!v40)
      {
        v39 = 3;
        goto LABEL_30;
      }

      v38 = [v40 objectForKey:@"datastore"];
      if (v38 && ([v38 isEqualToString:@"AMDDatabase"] & 1) == 0)
      {
        if ([v38 isEqualToString:@"vectorDB"])
        {
          v30 = [v40 objectForKey:@"vectorDBConfig"];
          if (v30)
          {
            v29 = [location[0] objectForKey:v42];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v28 = MEMORY[0x277D82BE0](v29);
              v27 = 0;
              v50[0] = @"vectorDBConfig";
              v51[0] = v30;
              v50[1] = @"vectorDict";
              v51[1] = v28;
              v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v51 forKeys:v50 count:2];
              v24 = v27;
              v8 = [_TtC19AppleMediaDiscovery18AMDVectorDBManager insertVectorsHandlerWithInsertVectorsPayload:v26 error:&v24];
              objc_storeStrong(&v27, v24);
              v25 = v8;
              [v45 setObject:v8 forKey:v42];
              objc_storeStrong(&v25, 0);
              objc_storeStrong(&v26, 0);
              objc_storeStrong(&v27, 0);
              objc_storeStrong(&v28, 0);
              v39 = 0;
            }

            else
            {
              [v45 setObject:@"Inference output has to be a dictionary to be persisted in vectorDB" forKey:v42];
              v39 = 3;
            }

            objc_storeStrong(&v29, 0);
          }

          else
          {
            [v45 setObject:@"VectorDB Config missing" forKey:v42];
            v39 = 3;
          }

          objc_storeStrong(&v30, 0);
          if (v39)
          {
            goto LABEL_29;
          }
        }

        else
        {
          [v45 setObject:@"Unsupported datastore passed for persistance" forKey:v42];
        }
      }

      else
      {
        v37 = [v48 stringByAppendingString:v42];
        v53 = v37;
        v54 = location[0];
        v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v54 forKeys:&v53 count:1];
        v35 = 0;
        v33 = 0;
        v14 = [AMDTasteProfile saveTasteProfileEntriesFromDict:v36 inDomain:v46 forSource:0x2852B1228 error:&v33];
        objc_storeStrong(&v35, v33);
        v34 = v14;
        if (v35)
        {
          v32 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
          v31 = OS_LOG_TYPE_INFO;
          if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
          {
            v11 = v32;
            v12 = v31;
            localizedDescription = [v35 localizedDescription];
            __os_log_helper_16_2_1_8_64(v52, localizedDescription);
            _os_log_impl(&dword_240CB9000, v11, v12, "Error persisting inference result: %@", v52, 0xCu);
            MEMORY[0x277D82BD8](localizedDescription);
          }

          objc_storeStrong(&v32, 0);
          v9 = v45;
          localizedDescription2 = [v35 localizedDescription];
          [v9 setObject:? forKey:?];
          MEMORY[0x277D82BD8](localizedDescription2);
          v39 = 3;
        }

        else
        {
          [v45 setObject:v34 forKey:@"saveSummary"];
          v39 = 0;
        }

        objc_storeStrong(&v34, 0);
        objc_storeStrong(&v35, 0);
        objc_storeStrong(&v36, 0);
        objc_storeStrong(&v37, 0);
        if (v39)
        {
          goto LABEL_29;
        }
      }

      v39 = 0;
LABEL_29:
      objc_storeStrong(&v38, 0);
LABEL_30:
      objc_storeStrong(&v40, 0);
      ++v17;
      if (v15 + 1 >= v18)
      {
        v17 = 0;
        v18 = [v19 countByEnumeratingWithState:__b objects:v55 count:16];
        if (!v18)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x277D82BD8](v19);
  v7 = MEMORY[0x277D82BE0](v45);
  v39 = 1;
  objc_storeStrong(&v45, 0);
  objc_storeStrong(&v46, 0);
  objc_storeStrong(&v47, 0);
  objc_storeStrong(&v48, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)getIdAndScoresFrom:(id)from useCaseId:(id)id summary:(id)summary bigGummary:(id)gummary errorKey:(id)key
{
  v39 = *MEMORY[0x277D85DE8];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, from);
  v34 = 0;
  objc_storeStrong(&v34, id);
  v33 = 0;
  objc_storeStrong(&v33, summary);
  v32 = 0;
  objc_storeStrong(&v32, gummary);
  v31 = 0;
  objc_storeStrong(&v31, key);
  v30 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
  v29 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_1_8_64(v38, v34);
    _os_log_debug_impl(&dword_240CB9000, v30, v29, "Retrieving contentId and scores for use case %@", v38, 0xCu);
  }

  objc_storeStrong(&v30, 0);
  allValues = [location[0] allValues];
  firstObject = [allValues firstObject];
  MEMORY[0x277D82BD8](allValues);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v23 = MEMORY[0x277D82BE0](firstObject);
    v22 = [v23 objectForKey:@"ids"];
    v21 = [v23 objectForKey:@"scores"];
    if (!v22 || ![v22 count] || !v21 || !objc_msgSend(v21, "count"))
    {
      v20 = MEMORY[0x277D82BE0](@"No content ids or scores available");
      oslog = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_1_8_64(v37, v20);
        _os_log_error_impl(&dword_240CB9000, oslog, OS_LOG_TYPE_ERROR, "%@", v37, 0xCu);
      }

      objc_storeStrong(&oslog, 0);
      [v33 setObject:v20 forKey:@"error"];
      [v32 setObject:v33 forKey:v34];
      [AMDFrameworkMetrics log:@"Empty inference" withKey:v31 atVerbosity:0];
      v11 = MEMORY[0x277CBEBF8];
      objc_storeStrong(&v22, MEMORY[0x277CBEBF8]);
      objc_storeStrong(&v21, v11);
      objc_storeStrong(&v20, 0);
    }

    v8 = [AMDPair alloc];
    v36 = [(AMDPair *)v8 initWith:v22 and:v21];
    v24 = 1;
    objc_storeStrong(&v21, 0);
    objc_storeStrong(&v22, 0);
    objc_storeStrong(&v23, 0);
  }

  else
  {
    v27 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
    v26 = 1;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      v12 = v27;
      v13 = v26;
      __os_log_helper_16_0_0(v25);
      _os_log_impl(&dword_240CB9000, v12, v13, "Recommendation results are not a dict", v25, 2u);
    }

    objc_storeStrong(&v27, 0);
    v7 = [AMDPair alloc];
    v36 = [(AMDPair *)v7 initWith:MEMORY[0x277CBEBF8] and:?];
    v24 = 1;
  }

  objc_storeStrong(&firstObject, 0);
  objc_storeStrong(&v31, 0);
  objc_storeStrong(&v32, 0);
  objc_storeStrong(&v33, 0);
  objc_storeStrong(&v34, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  v9 = v36;

  return v9;
}

+ (id)getDataForBizLogicForWorkflow:(id)workflow useCaseId:(id)id domainName:(id)name
{
  v37 = *MEMORY[0x277D85DE8];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, workflow);
  v33 = 0;
  objc_storeStrong(&v33, id);
  v32 = 0;
  objc_storeStrong(&v32, name);
  v31 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(location[0], "count")}];
  memset(__b, 0, sizeof(__b));
  v20 = MEMORY[0x277D82BE0](location[0]);
  v21 = [v20 countByEnumeratingWithState:__b objects:v36 count:16];
  if (v21)
  {
    v15 = *__b[2];
    v16 = 0;
    v17 = v21;
    while (1)
    {
      v14 = v16;
      if (*__b[2] != v15)
      {
        objc_enumerationMutation(v20);
      }

      v30 = *(__b[1] + 8 * v16);
      v28 = 0;
      v26 = 0;
      v13 = [AMDTasteProfile getFeatureWithName:v30 inDomain:v32 withColumnName:0 error:&v26];
      objc_storeStrong(&v28, v26);
      v27 = v13;
      if (!v28 && v27)
      {
        getValue = [v27 getValue];
        if (getValue)
        {
          [v31 setObject:getValue forKey:v30];
        }

        objc_storeStrong(&getValue, 0);
        v23 = 0;
      }

      else
      {
        oslog = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
        type = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
        {
          log = oslog;
          v11 = type;
          v7 = v30;
          v8 = v32;
          v9 = v33;
          localizedDescription = [v28 localizedDescription];
          __os_log_helper_16_2_4_8_64_8_64_8_64_8_64(v35, v7, v8, v9, localizedDescription);
          _os_log_impl(&dword_240CB9000, log, v11, "Error fetching feature '%@' for domain: %@, useCaseId: %@: %@", v35, 0x2Au);
          MEMORY[0x277D82BD8](localizedDescription);
        }

        objc_storeStrong(&oslog, 0);
        v23 = 3;
      }

      objc_storeStrong(&v27, 0);
      objc_storeStrong(&v28, 0);
      ++v16;
      if (v14 + 1 >= v17)
      {
        v16 = 0;
        v17 = [v20 countByEnumeratingWithState:__b objects:v36 count:16];
        if (!v17)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x277D82BD8](v20);
  v6 = MEMORY[0x277D82BE0](v31);
  v23 = 1;
  objc_storeStrong(&v31, 0);
  objc_storeStrong(&v32, 0);
  objc_storeStrong(&v33, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];

  return v6;
}

+ (void)appendInAppEventDataTo:(id)to forDsId:(id)id withInferencePayload:(id)payload
{
  v26 = *MEMORY[0x277D85DE8];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, to);
  v23 = 0;
  objc_storeStrong(&v23, id);
  v22 = 0;
  objc_storeStrong(&v22, payload);
  v21 = [v22 objectForKey:0x2852B1C68];
  if (v21 && [v21 intValue])
  {
    v16 = [v22 objectForKey:0x2852B1C08];
    v15 = [v22 objectForKey:0x2852B1C28];
    if (v15)
    {
      objc_storeStrong(&v15, v15);
    }

    else
    {
      objc_storeStrong(&v15, &unk_2852BA668);
    }

    v14 = 0;
    v12 = 0;
    v6 = [AMDAppStoreEvent retrieveEventsOfType:v16 inPeriod:v15 forUser:v23 error:&v12];
    objc_storeStrong(&v14, v12);
    v13 = v6;
    if (v14)
    {
      oslog = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        localizedDescription = [v14 localizedDescription];
        __os_log_helper_16_2_1_8_64(v25, localizedDescription);
        _os_log_error_impl(&dword_240CB9000, oslog, OS_LOG_TYPE_ERROR, "Error while retrieving AppStore Events: %@", v25, 0xCu);
        MEMORY[0x277D82BD8](localizedDescription);
      }

      objc_storeStrong(&oslog, 0);
      v17 = 1;
    }

    else
    {
      if (v13)
      {
        [location[0] setObject:v13 forKey:@"appStoreEvents"];
      }

      v17 = 0;
    }

    objc_storeStrong(&v13, 0);
    objc_storeStrong(&v14, 0);
    objc_storeStrong(&v15, 0);
    objc_storeStrong(&v16, 0);
  }

  else
  {
    v20 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
    v19 = 2;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      log = v20;
      type = v19;
      __os_log_helper_16_0_0(v18);
      _os_log_debug_impl(&dword_240CB9000, log, type, "App store impressions/clicks skipped", v18, 2u);
    }

    objc_storeStrong(&v20, 0);
    v17 = 1;
  }

  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

@end