@interface AMDHeuristicModelEvaluator
- (id)computeAndGetMetrics:(int64_t)a3 model:(id)a4 error:(id *)a5 errorDomain:(id)a6 dataProvider:(id)a7 metricNames:(id)a8;
- (id)runTask:(id)a3 error:(id *)a4 errorDomain:(id)a5 dataProvider:(id)a6;
- (id)taskResultFromDict:(id)a3;
@end

@implementation AMDHeuristicModelEvaluator

- (id)runTask:(id)a3 error:(id *)a4 errorDomain:(id)a5 dataProvider:(id)a6
{
  v50 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v48 = a4;
  v47 = 0;
  objc_storeStrong(&v47, a5);
  v46 = 0;
  objc_storeStrong(&v46, a6);
  v28 = [location[0] parameters];
  v45 = [v28 stringValueForKey:ModelFileNameKey defaultValue:0];
  MEMORY[0x277D82BD8](v28);
  v29 = [location[0] attachments];
  v44 = [v29 attachmentURLsForBasename:v45];
  MEMORY[0x277D82BD8](v29);
  v30 = MEMORY[0x277CBEBC0];
  v32 = [v44 objectAtIndexedSubscript:?];
  v31 = [v32 path];
  v43 = [v30 fileURLWithPath:?];
  MEMORY[0x277D82BD8](v31);
  MEMORY[0x277D82BD8](v32);
  v42 = objc_alloc_init(MEMORY[0x277CBFF38]);
  [v42 setComputeUnits:0];
  v41 = [MEMORY[0x277CBFF20] modelWithContentsOfURL:v43 configuration:v42 error:v48];
  if (v41)
  {
    v23 = [location[0] parameters];
    v24 = [v23 unsignedIntegerValueForKey:BatchSizeKey defaultValue:1];
    MEMORY[0x277D82BD8](v23);
    v39 = v24;
    if (v24 < 1)
    {
      v6 = objc_alloc(MEMORY[0x277CCA9B8]);
      v22 = [v6 initWithDomain:v47 code:7 userInfo:0];
      v7 = v22;
      *v48 = v22;
      v51 = 0;
      v40 = 1;
    }

    else
    {
      v21 = [location[0] parameters];
      v38 = [v21 objectForKeyedSubscript:OutputNamesKey];
      MEMORY[0x277D82BD8](v21);
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if ((isKindOfClass & 1) != 0 && [v38 count])
      {
        v19 = [location[0] parameters];
        v37 = [v19 objectForKeyedSubscript:MetricsNamesKey];
        MEMORY[0x277D82BD8](v19);
        if (!v37 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v36 = [MEMORY[0x277CBEB98] setWithArray:v37];
          v35 = [MEMORY[0x277CBEB98] setWithArray:v38];
          if ([v36 isSubsetOfSet:v35])
          {
            v34 = [(AMDHeuristicModelEvaluator *)v50 computeAndGetMetrics:v39 model:v41 error:v48 errorDomain:v47 dataProvider:v46 metricNames:v37];
            if (v34)
            {
              v33 = [MEMORY[0x277CBEB38] dictionary];
              [v33 setObject:v34 forKey:ModelMetrics];
              v51 = [(AMDHeuristicModelEvaluator *)v50 taskResultFromDict:v33];
              v40 = 1;
              objc_storeStrong(&v33, 0);
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
            *v48 = v17;
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
          *v48 = v18;
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
        *v48 = v20;
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

- (id)computeAndGetMetrics:(int64_t)a3 model:(id)a4 error:(id *)a5 errorDomain:(id)a6 dataProvider:(id)a7 metricNames:(id)a8
{
  v52 = *MEMORY[0x277D85DE8];
  v49 = self;
  v48 = a2;
  v47 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  v45 = a5;
  v44 = 0;
  objc_storeStrong(&v44, a6);
  v43 = 0;
  objc_storeStrong(&v43, a7);
  v42 = 0;
  objc_storeStrong(&v42, a8);
  v41 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:0];
  v40 = [v43 fetchData:v47 error:v45 errorDomain:v44];
  if (v40)
  {
    v38 = [location predictionsFromBatch:v40 error:v45];
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
            v19 = [v34 multiArrayValue];
            v18 = [v19 objectAtIndexedSubscript:0];
            [v18 floatValue];
            v20 = v10;
            MEMORY[0x277D82BD8](v18);
            MEMORY[0x277D82BD8](v19);
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
            *v45 = v21;
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

- (id)taskResultFromDict:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
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