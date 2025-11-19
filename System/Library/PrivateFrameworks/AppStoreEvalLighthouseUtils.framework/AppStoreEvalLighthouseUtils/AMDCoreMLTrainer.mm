@interface AMDCoreMLTrainer
- (id)computeAndGetMetrics:(id)a3 programTrainer:(id)a4 numIterationsToTrain:(int64_t)a5 error:(id *)a6 errorDomain:(id)a7 dataProvider:(id)a8 localTrainingStage:(unint64_t)a9;
- (id)runTask:(id)a3 error:(id *)a4 errorDomain:(id)a5 dataProvider:(id)a6;
- (id)taskResultFromDict:(id)a3;
@end

@implementation AMDCoreMLTrainer

- (id)runTask:(id)a3 error:(id *)a4 errorDomain:(id)a5 dataProvider:(id)a6
{
  v47 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v45 = a4;
  v44 = 0;
  objc_storeStrong(&v44, a5);
  v43 = 0;
  objc_storeStrong(&v43, a6);
  v6 = [AMDDODMLModelMetadata alloc];
  v42 = [(AMDDODMLModelMetadata *)v6 initModelMetadata:location[0] error:v45 errorDomain:v44];
  if (v42)
  {
    v19 = MEMORY[0x277CBEBC0];
    v21 = [v42 modelPath];
    v20 = [v19 fileURLWithPath:?];
    v40 = [v20 URLByDeletingLastPathComponent];
    MEMORY[0x277D82BD8](v20);
    MEMORY[0x277D82BD8](v21);
    v39 = objc_alloc_init(MEMORY[0x277CBFF38]);
    [v39 setComputeUnits:0];
    v38 = [MEMORY[0x277CBFF20] modelWithContentsOfURL:v40 configuration:v39 error:v45];
    if (v38)
    {
      v16 = objc_alloc(MEMORY[0x277CBFF70]);
      v18 = [v38 program];
      v17 = [v42 learningRate];
      [v17 doubleValue];
      v37 = [v16 initWithProgram:v18 learningRate:v45 error:?];
      MEMORY[0x277D82BD8](v17);
      MEMORY[0x277D82BD8](v18);
      if (v37)
      {
        v36 = [v43 numberOfIterationsPerEpoch:{objc_msgSend(v42, "batchSize")}];
        if (v36)
        {
          v35 = [v42 numLocalIterations];
          v13 = [v42 learningRateSchedule];
          v14 = 0;
          if (!v13)
          {
            v14 = [v42 numEpochs] > 0;
          }

          MEMORY[0x277D82BD8](v13);
          if (v14)
          {
            v35 = [v42 numEpochs] * v36;
          }

          v34 = [(AMDCoreMLTrainer *)v47 computeAndGetMetrics:v42 programTrainer:v37 numIterationsToTrain:v35 error:v45 errorDomain:v44 dataProvider:v43 localTrainingStage:0];
          if (v34)
          {
            v33 = [(AMDCoreMLTrainer *)v47 computeAndGetMetrics:v42 programTrainer:v37 numIterationsToTrain:v35 error:v45 errorDomain:v44 dataProvider:v43 localTrainingStage:1];
            if (v33)
            {
              v32 = [v37 copyCurrentTrainingDelta];
              v31 = [v32 flattenedModelUpdate];
              v30 = [(AMDCoreMLTrainer *)v47 computeAndGetMetrics:v42 programTrainer:v37 numIterationsToTrain:v35 error:v45 errorDomain:v44 dataProvider:v43 localTrainingStage:2];
              if (v30)
              {
                v29 = [v34 objectForKey:LossBeforeEachLocalIteration];
                v28 = [v30 objectForKey:LossAfterEachLocalIteration];
                v27 = [v33 objectForKey:LossDuringEachLocalIteration];
                v26 = [MEMORY[0x277CBEB38] dictionary];
                [v26 addEntriesFromDictionary:v34];
                [v26 addEntriesFromDictionary:v33];
                [v26 addEntriesFromDictionary:v30];
                [v26 removeObjectForKey:LossBeforeEachLocalIteration];
                [v26 removeObjectForKey:LossDuringEachLocalIteration];
                [v26 removeObjectForKey:LossAfterEachLocalIteration];
                v25 = [MEMORY[0x277CBEB38] dictionary];
                [v25 setObject:v31 forKey:ModelDeltas];
                v11 = v25;
                v12 = [v42 weightNames];
                [v11 setObject:? forKey:?];
                MEMORY[0x277D82BD8](v12);
                [v25 setObject:v29 forKey:LossBeforeEachLocalIteration];
                [v25 setObject:v27 forKey:LossDuringEachLocalIteration];
                [v25 setObject:v28 forKey:LossAfterEachLocalIteration];
                [v25 setObject:v26 forKey:ModelMetrics];
                v48 = [(AMDCoreMLTrainer *)v47 taskResultFromDict:v25];
                v41 = 1;
                objc_storeStrong(&v25, 0);
                objc_storeStrong(&v26, 0);
                objc_storeStrong(&v27, 0);
                objc_storeStrong(&v28, 0);
                objc_storeStrong(&v29, 0);
              }

              else
              {
                v48 = 0;
                v41 = 1;
              }

              objc_storeStrong(&v30, 0);
              objc_storeStrong(&v31, 0);
              objc_storeStrong(&v32, 0);
            }

            else
            {
              v48 = 0;
              v41 = 1;
            }

            objc_storeStrong(&v33, 0);
          }

          else
          {
            v48 = 0;
            v41 = 1;
          }

          objc_storeStrong(&v34, 0);
        }

        else
        {
          v7 = objc_alloc(MEMORY[0x277CCA9B8]);
          v15 = [v7 initWithDomain:v44 code:127 userInfo:0];
          v8 = v15;
          *v45 = v15;
          v48 = 0;
          v41 = 1;
        }
      }

      else
      {
        v48 = 0;
        v41 = 1;
      }

      objc_storeStrong(&v37, 0);
    }

    else
    {
      v48 = 0;
      v41 = 1;
    }

    objc_storeStrong(&v38, 0);
    objc_storeStrong(&v39, 0);
    objc_storeStrong(&v40, 0);
  }

  else
  {
    v48 = 0;
    v41 = 1;
  }

  objc_storeStrong(&v42, 0);
  objc_storeStrong(&v43, 0);
  objc_storeStrong(&v44, 0);
  objc_storeStrong(location, 0);
  v9 = v48;

  return v9;
}

- (id)computeAndGetMetrics:(id)a3 programTrainer:(id)a4 numIterationsToTrain:(int64_t)a5 error:(id *)a6 errorDomain:(id)a7 dataProvider:(id)a8 localTrainingStage:(unint64_t)a9
{
  v84 = *MEMORY[0x277D85DE8];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v80 = 0;
  objc_storeStrong(&v80, a4);
  v79 = a5;
  v78 = a6;
  v77 = 0;
  objc_storeStrong(&v77, a7);
  v76 = 0;
  objc_storeStrong(&v76, a8);
  v75 = a9;
  v74 = 0;
  v73 = 0;
  if (a9 == 1)
  {
    objc_storeStrong(&v74, LossDuringEachLocalIteration);
    objc_storeStrong(&v73, DuringIterationMetricsSuffix);
  }

  else if (v75)
  {
    if (v75 == 2)
    {
      objc_storeStrong(&v74, LossAfterEachLocalIteration);
      objc_storeStrong(&v73, AfterIterationMetricsSuffix);
    }
  }

  else
  {
    objc_storeStrong(&v74, LossBeforeEachLocalIteration);
    objc_storeStrong(&v73, BeforeIterationMetricsSuffix);
  }

  v72 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:0];
  for (i = 0; i < v79; ++i)
  {
    v54 = v76;
    v9 = [location[0] batchSize];
    v70 = [v54 fetchData:v9 error:v78 errorDomain:v77];
    if (v70)
    {
      v53 = [location[0] learningRateSchedule];
      MEMORY[0x277D82BD8](v53);
      if (v53)
      {
        v52 = [location[0] learningRateSchedule];
        v51 = [v52 objectAtIndexedSubscript:i];
        [v51 doubleValue];
        [v80 setLearningRate:?];
        MEMORY[0x277D82BD8](v51);
        MEMORY[0x277D82BD8](v52);
      }

      v68 = 0;
      if (v75 == 1)
      {
        v48 = v80;
        v47 = v70;
        v46 = MEMORY[0x277CBEB98];
        v50 = [location[0] metricsNames];
        v49 = [v46 setWithArray:?];
        v10 = [v48 trainUsingTrainingData:v47 evaluationMetricNames:? error:?];
        v11 = v68;
        v68 = v10;
        MEMORY[0x277D82BD8](v11);
        MEMORY[0x277D82BD8](v49);
        MEMORY[0x277D82BD8](v50);
      }

      else
      {
        v43 = v80;
        v42 = v70;
        v41 = MEMORY[0x277CBEB98];
        v45 = [location[0] metricsNames];
        v44 = [v41 setWithArray:?];
        v12 = [v43 evaluateUsingTestData:v42 evaluationMetricNames:? error:?];
        v13 = v68;
        v68 = v12;
        MEMORY[0x277D82BD8](v13);
        MEMORY[0x277D82BD8](v44);
        MEMORY[0x277D82BD8](v45);
      }

      if (v68)
      {
        [v68 loss];
        NSLog(&cfstr_LossF.isa, v14);
        v67 = [v72 valueForKey:v74];
        if (!v67)
        {
          v15 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:0];
          v16 = v67;
          v67 = v15;
          MEMORY[0x277D82BD8](v16);
          [v72 setValue:v67 forKey:v74];
        }

        v36 = v67;
        v35 = MEMORY[0x277CCABB0];
        [v68 loss];
        v37 = [v35 numberWithDouble:?];
        [v36 addObject:?];
        MEMORY[0x277D82BD8](v37);
        v38 = [v68 evaluationMetrics];
        v66 = [v38 featuresAtIndex:0];
        MEMORY[0x277D82BD8](v38);
        memset(__b, 0, sizeof(__b));
        v39 = [location[0] metricsNames];
        v40 = [v39 countByEnumeratingWithState:__b objects:v83 count:16];
        if (v40)
        {
          v32 = *__b[2];
          v33 = 0;
          v34 = v40;
          while (1)
          {
            v31 = v33;
            if (*__b[2] != v32)
            {
              objc_enumerationMutation(v39);
            }

            v65 = *(__b[1] + 8 * v33);
            v63 = [v66 featureValueForName:v65];
            if (v63)
            {
              v28 = [v63 multiArrayValue];
              v27 = [v28 objectAtIndexedSubscript:0];
              [v27 floatValue];
              v29 = v19;
              MEMORY[0x277D82BD8](v27);
              MEMORY[0x277D82BD8](v28);
              v62 = v29;
              v61 = [v65 stringByAppendingString:v73];
              v60 = [v72 valueForKey:v61];
              if (!v60)
              {
                v21 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:0];
                v22 = v60;
                v60 = v21;
                MEMORY[0x277D82BD8](v22);
                [v72 setValue:v60 forKey:v61];
              }

              v25 = v60;
              LODWORD(v20) = v62;
              v26 = [MEMORY[0x277CCABB0] numberWithFloat:v20];
              [v25 addObject:?];
              MEMORY[0x277D82BD8](v26);
              objc_storeStrong(&v60, 0);
              objc_storeStrong(&v61, 0);
              v69 = 0;
            }

            else
            {
              v17 = objc_alloc(MEMORY[0x277CCA9B8]);
              v30 = [v17 initWithDomain:v77 code:61 userInfo:0];
              v18 = v30;
              *v78 = v30;
              v82 = 0;
              v69 = 1;
            }

            objc_storeStrong(&v63, 0);
            if (v69)
            {
              break;
            }

            ++v33;
            if (v31 + 1 >= v34)
            {
              v33 = 0;
              v34 = [v39 countByEnumeratingWithState:__b objects:v83 count:16];
              if (!v34)
              {
                goto LABEL_32;
              }
            }
          }
        }

        else
        {
LABEL_32:
          v69 = 0;
        }

        MEMORY[0x277D82BD8](v39);
        if (!v69)
        {
          v69 = 0;
        }

        objc_storeStrong(&v66, 0);
        objc_storeStrong(&v67, 0);
      }

      else
      {
        v82 = 0;
        v69 = 1;
      }

      objc_storeStrong(&v68, 0);
    }

    else
    {
      v82 = 0;
      v69 = 1;
    }

    objc_storeStrong(&v70, 0);
    if (v69)
    {
      goto LABEL_40;
    }
  }

  v82 = MEMORY[0x277D82BE0](v72);
  v69 = 1;
LABEL_40:
  objc_storeStrong(&v72, 0);
  objc_storeStrong(&v73, 0);
  objc_storeStrong(&v74, 0);
  objc_storeStrong(&v76, 0);
  objc_storeStrong(&v77, 0);
  objc_storeStrong(&v80, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  v23 = v82;

  return v23;
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