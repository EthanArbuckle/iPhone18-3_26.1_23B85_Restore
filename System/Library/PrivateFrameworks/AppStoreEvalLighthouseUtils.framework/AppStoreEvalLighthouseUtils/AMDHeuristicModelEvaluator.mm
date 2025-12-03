@interface AMDHeuristicModelEvaluator
- (id)computeAndGetMetrics:(int64_t)metrics model:(id)model error:(id *)error errorDomain:(id)domain dataProvider:(id)provider metricNames:(id)names;
- (id)runTask:(id)task error:(id *)error errorDomain:(id)domain dataProvider:(id)provider;
- (id)taskResultFromDict:(id)dict;
@end

@implementation AMDHeuristicModelEvaluator

- (id)runTask:(id)task error:(id *)error errorDomain:(id)domain dataProvider:(id)provider
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, task);
  errorCopy = error;
  v47 = 0;
  objc_storeStrong(&v47, domain);
  v46 = 0;
  objc_storeStrong(&v46, provider);
  parameters = [location[0] parameters];
  v45 = [parameters stringValueForKey:ModelFileNameKey defaultValue:0];
  MEMORY[0x277D82BD8](parameters);
  attachments = [location[0] attachments];
  v44 = [attachments attachmentURLsForBasename:v45];
  MEMORY[0x277D82BD8](attachments);
  v30 = MEMORY[0x277CBEBC0];
  v32 = [v44 objectAtIndexedSubscript:?];
  path = [v32 path];
  v43 = [v30 fileURLWithPath:?];
  MEMORY[0x277D82BD8](path);
  MEMORY[0x277D82BD8](v32);
  v42 = objc_alloc_init(MEMORY[0x277CBFF38]);
  [v42 setComputeUnits:0];
  v41 = [MEMORY[0x277CBFF20] modelWithContentsOfURL:v43 configuration:v42 error:errorCopy];
  if (v41)
  {
    parameters2 = [location[0] parameters];
    v24 = [parameters2 unsignedIntegerValueForKey:BatchSizeKey defaultValue:1];
    MEMORY[0x277D82BD8](parameters2);
    v39 = v24;
    if (v24 < 1)
    {
      v6 = objc_alloc(MEMORY[0x277CCA9B8]);
      v22 = [v6 initWithDomain:v47 code:7 userInfo:0];
      v7 = v22;
      *errorCopy = v22;
      v51 = 0;
      v40 = 1;
    }

    else
    {
      parameters3 = [location[0] parameters];
      v38 = [parameters3 objectForKeyedSubscript:OutputNamesKey];
      MEMORY[0x277D82BD8](parameters3);
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if ((isKindOfClass & 1) != 0 && [v38 count])
      {
        parameters4 = [location[0] parameters];
        v37 = [parameters4 objectForKeyedSubscript:MetricsNamesKey];
        MEMORY[0x277D82BD8](parameters4);
        if (!v37 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v36 = [MEMORY[0x277CBEB98] setWithArray:v37];
          v35 = [MEMORY[0x277CBEB98] setWithArray:v38];
          if ([v36 isSubsetOfSet:v35])
          {
            v34 = [(AMDHeuristicModelEvaluator *)selfCopy computeAndGetMetrics:v39 model:v41 error:errorCopy errorDomain:v47 dataProvider:v46 metricNames:v37];
            if (v34)
            {
              dictionary = [MEMORY[0x277CBEB38] dictionary];
              [dictionary setObject:v34 forKey:ModelMetrics];
              v51 = [(AMDHeuristicModelEvaluator *)selfCopy taskResultFromDict:dictionary];
              v40 = 1;
              objc_storeStrong(&dictionary, 0);
            }

            else
            {
              v51 = 0;
              v40 = 1;
            }

            objc_storeStrong(&v34, 0);
          }

          else
          {
            v13 = objc_alloc(MEMORY[0x277CCA9B8]);
            v17 = [v13 initWithDomain:v47 code:61 userInfo:0];
            v14 = v17;
            *errorCopy = v17;
            v51 = 0;
            v40 = 1;
          }

          objc_storeStrong(&v35, 0);
          objc_storeStrong(&v36, 0);
        }

        else
        {
          v11 = objc_alloc(MEMORY[0x277CCA9B8]);
          v18 = [v11 initWithDomain:v47 code:60 userInfo:0];
          v12 = v18;
          *errorCopy = v18;
          v51 = 0;
          v40 = 1;
        }

        objc_storeStrong(&v37, 0);
      }

      else
      {
        v9 = objc_alloc(MEMORY[0x277CCA9B8]);
        v20 = [v9 initWithDomain:v47 code:5 userInfo:0];
        v10 = v20;
        *errorCopy = v20;
        v51 = 0;
        v40 = 1;
      }

      objc_storeStrong(&v38, 0);
    }
  }

  else
  {
    v51 = 0;
    v40 = 1;
  }

  objc_storeStrong(&v41, 0);
  objc_storeStrong(&v42, 0);
  objc_storeStrong(&v43, 0);
  objc_storeStrong(&v44, 0);
  objc_storeStrong(&v45, 0);
  objc_storeStrong(&v46, 0);
  objc_storeStrong(&v47, 0);
  objc_storeStrong(location, 0);
  v15 = v51;

  return v15;
}

- (id)computeAndGetMetrics:(int64_t)metrics model:(id)model error:(id *)error errorDomain:(id)domain dataProvider:(id)provider metricNames:(id)names
{
  v52 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v48 = a2;
  metricsCopy = metrics;
  location = 0;
  objc_storeStrong(&location, model);
  errorCopy = error;
  v44 = 0;
  objc_storeStrong(&v44, domain);
  v43 = 0;
  objc_storeStrong(&v43, provider);
  v42 = 0;
  objc_storeStrong(&v42, names);
  v41 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:0];
  v40 = [v43 fetchData:metricsCopy error:errorCopy errorDomain:v44];
  if (v40)
  {
    v38 = [location predictionsFromBatch:v40 error:errorCopy];
    if (v38)
    {
      v37 = [v38 featuresAtIndex:0];
      memset(__b, 0, sizeof(__b));
      v26 = MEMORY[0x277D82BE0](v42);
      v27 = [v26 countByEnumeratingWithState:__b objects:v51 count:16];
      if (v27)
      {
        v23 = *__b[2];
        v24 = 0;
        v25 = v27;
        while (1)
        {
          v22 = v24;
          if (*__b[2] != v23)
          {
            objc_enumerationMutation(v26);
          }

          v36 = *(__b[1] + 8 * v24);
          v34 = [v37 featureValueForName:v36];
          if (v34)
          {
            multiArrayValue = [v34 multiArrayValue];
            v18 = [multiArrayValue objectAtIndexedSubscript:0];
            [v18 floatValue];
            v20 = v10;
            MEMORY[0x277D82BD8](v18);
            MEMORY[0x277D82BD8](multiArrayValue);
            v33 = v20;
            v32 = [v41 valueForKey:v36];
            if (!v32)
            {
              v12 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:0];
              v13 = v32;
              v32 = v12;
              MEMORY[0x277D82BD8](v13);
              [v41 setValue:v32 forKey:v36];
            }

            v16 = v32;
            LODWORD(v11) = v33;
            v17 = [MEMORY[0x277CCABB0] numberWithFloat:v11];
            [v16 addObject:?];
            MEMORY[0x277D82BD8](v17);
            objc_storeStrong(&v32, 0);
            v39 = 0;
          }

          else
          {
            v8 = objc_alloc(MEMORY[0x277CCA9B8]);
            v21 = [v8 initWithDomain:v44 code:61 userInfo:0];
            v9 = v21;
            *errorCopy = v21;
            v50 = 0;
            v39 = 1;
          }

          objc_storeStrong(&v34, 0);
          if (v39)
          {
            break;
          }

          ++v24;
          if (v22 + 1 >= v25)
          {
            v24 = 0;
            v25 = [v26 countByEnumeratingWithState:__b objects:v51 count:16];
            if (!v25)
            {
              goto LABEL_17;
            }
          }
        }
      }

      else
      {
LABEL_17:
        v39 = 0;
      }

      MEMORY[0x277D82BD8](v26);
      if (!v39)
      {
        v50 = MEMORY[0x277D82BE0](v41);
        v39 = 1;
      }

      objc_storeStrong(&v37, 0);
    }

    else
    {
      v50 = 0;
      v39 = 1;
    }

    objc_storeStrong(&v38, 0);
  }

  else
  {
    v50 = 0;
    v39 = 1;
  }

  objc_storeStrong(&v40, 0);
  objc_storeStrong(&v41, 0);
  objc_storeStrong(&v42, 0);
  objc_storeStrong(&v43, 0);
  objc_storeStrong(&v44, 0);
  objc_storeStrong(&location, 0);
  *MEMORY[0x277D85DE8];
  v14 = v50;

  return v14;
}

- (id)taskResultFromDict:(id)dict
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, dict);
  v7 = [location[0] mutableCopy];
  v6 = [v7 objectForKeyedSubscript:ModelDeltas];
  [v7 removeObjectForKey:ModelDeltas];
  v3 = objc_alloc(MEMORY[0x277D25408]);
  v5 = [v3 initWithJSONResult:v7 unprivatizedVector:v6];
  objc_storeStrong(&v6, 0);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);

  return v5;
}

@end