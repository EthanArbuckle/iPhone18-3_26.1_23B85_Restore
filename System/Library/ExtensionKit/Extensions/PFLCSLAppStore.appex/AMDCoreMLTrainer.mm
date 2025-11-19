@interface AMDCoreMLTrainer
- (id)computeAndGetMetrics:(id)a3 programTrainer:(id)a4 numIterationsToTrain:(int64_t)a5 error:(id *)a6 errorDomain:(id)a7 dataProvider:(id)a8 localTrainingStage:(unint64_t)a9;
- (id)runTask:(id)a3 error:(id *)a4 errorDomain:(id)a5 dataProvider:(id)a6;
- (id)taskResultFromDict:(id)a3;
@end

@implementation AMDCoreMLTrainer

- (id)runTask:(id)a3 error:(id *)a4 errorDomain:(id)a5 dataProvider:(id)a6
{
  v46 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v44 = a4;
  v43 = 0;
  objc_storeStrong(&v43, a5);
  v42 = 0;
  objc_storeStrong(&v42, a6);
  v6 = [AMDDODMLModelMetadata alloc];
  v41 = [(AMDDODMLModelMetadata *)v6 initModelMetadata:location[0] error:v44 errorDomain:v43];
  if (v41)
  {
    v20 = [v41 modelPath];
    v19 = [NSURL fileURLWithPath:?];
    v39 = [(NSURL *)v19 URLByDeletingLastPathComponent];

    v38 = objc_alloc_init(MLModelConfiguration);
    [v38 setComputeUnits:0];
    v37 = [MLModel modelWithContentsOfURL:v39 configuration:v38 error:v44];
    if (v37)
    {
      v16 = [MLProgramTrainer alloc];
      v18 = [v37 program];
      v17 = [v41 learningRate];
      [v17 doubleValue];
      v36 = [v16 initWithProgram:v18 learningRate:v44 error:?];

      if (v36)
      {
        v35 = [v42 numberOfIterationsPerEpoch:{objc_msgSend(v41, "batchSize")}];
        if (v35)
        {
          v34 = [v41 numLocalIterations];
          v13 = [v41 learningRateSchedule];
          v14 = 0;
          if (!v13)
          {
            v14 = [v41 numEpochs] > 0;
          }

          if (v14)
          {
            v34 = ([v41 numEpochs] * v35);
          }

          v33 = [(AMDCoreMLTrainer *)v46 computeAndGetMetrics:v41 programTrainer:v36 numIterationsToTrain:v34 error:v44 errorDomain:v43 dataProvider:v42 localTrainingStage:0];
          if (v33)
          {
            v32 = [(AMDCoreMLTrainer *)v46 computeAndGetMetrics:v41 programTrainer:v36 numIterationsToTrain:v34 error:v44 errorDomain:v43 dataProvider:v42 localTrainingStage:1];
            if (v32)
            {
              v31 = [v36 copyCurrentTrainingDelta];
              v30 = [v31 flattenedModelUpdate];
              v29 = [(AMDCoreMLTrainer *)v46 computeAndGetMetrics:v41 programTrainer:v36 numIterationsToTrain:v34 error:v44 errorDomain:v43 dataProvider:v42 localTrainingStage:2];
              if (v29)
              {
                v28 = [v33 objectForKey:LossBeforeEachLocalIteration];
                v27 = [v29 objectForKey:LossAfterEachLocalIteration];
                v26 = [v32 objectForKey:LossDuringEachLocalIteration];
                v25 = +[NSMutableDictionary dictionary];
                [v25 addEntriesFromDictionary:v33];
                [v25 addEntriesFromDictionary:v32];
                [v25 addEntriesFromDictionary:v29];
                [v25 removeObjectForKey:LossBeforeEachLocalIteration];
                [v25 removeObjectForKey:LossDuringEachLocalIteration];
                [v25 removeObjectForKey:LossAfterEachLocalIteration];
                v24 = +[NSMutableDictionary dictionary];
                [v24 setObject:v30 forKey:ModelDeltas];
                v11 = v24;
                v12 = [v41 weightNames];
                [v11 setObject:? forKey:?];

                [v24 setObject:v28 forKey:LossBeforeEachLocalIteration];
                [v24 setObject:v26 forKey:LossDuringEachLocalIteration];
                [v24 setObject:v27 forKey:LossAfterEachLocalIteration];
                [v24 setObject:v25 forKey:ModelMetrics];
                v47 = [(AMDCoreMLTrainer *)v46 taskResultFromDict:v24];
                v40 = 1;
                objc_storeStrong(&v24, 0);
                objc_storeStrong(&v25, 0);
                objc_storeStrong(&v26, 0);
                objc_storeStrong(&v27, 0);
                objc_storeStrong(&v28, 0);
              }

              else
              {
                v47 = 0;
                v40 = 1;
              }

              objc_storeStrong(&v29, 0);
              objc_storeStrong(&v30, 0);
              objc_storeStrong(&v31, 0);
            }

            else
            {
              v47 = 0;
              v40 = 1;
            }

            objc_storeStrong(&v32, 0);
          }

          else
          {
            v47 = 0;
            v40 = 1;
          }

          objc_storeStrong(&v33, 0);
        }

        else
        {
          v7 = [NSError alloc];
          v15 = [v7 initWithDomain:v43 code:127 userInfo:0];
          v8 = v15;
          *v44 = v15;
          v47 = 0;
          v40 = 1;
        }
      }

      else
      {
        v47 = 0;
        v40 = 1;
      }

      objc_storeStrong(&v36, 0);
    }

    else
    {
      v47 = 0;
      v40 = 1;
    }

    objc_storeStrong(&v37, 0);
    objc_storeStrong(&v38, 0);
    objc_storeStrong(&v39, 0);
  }

  else
  {
    v47 = 0;
    v40 = 1;
  }

  objc_storeStrong(&v41, 0);
  objc_storeStrong(&v42, 0);
  objc_storeStrong(&v43, 0);
  objc_storeStrong(location, 0);
  v9 = v47;

  return v9;
}

- (id)computeAndGetMetrics:(id)a3 programTrainer:(id)a4 numIterationsToTrain:(int64_t)a5 error:(id *)a6 errorDomain:(id)a7 dataProvider:(id)a8 localTrainingStage:(unint64_t)a9
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v77 = 0;
  objc_storeStrong(&v77, a4);
  v76 = a5;
  v75 = a6;
  v74 = 0;
  objc_storeStrong(&v74, a7);
  v73 = 0;
  objc_storeStrong(&v73, a8);
  v72 = a9;
  v71 = 0;
  v70 = 0;
  if (a9 == 1)
  {
    objc_storeStrong(&v71, LossDuringEachLocalIteration);
    objc_storeStrong(&v70, DuringIterationMetricsSuffix);
  }

  else if (v72)
  {
    if (v72 == 2)
    {
      objc_storeStrong(&v71, LossAfterEachLocalIteration);
      objc_storeStrong(&v70, AfterIterationMetricsSuffix);
    }
  }

  else
  {
    objc_storeStrong(&v71, LossBeforeEachLocalIteration);
    objc_storeStrong(&v70, BeforeIterationMetricsSuffix);
  }

  v69 = [[NSMutableDictionary alloc] initWithCapacity:0];
  for (i = 0; i < v76; ++i)
  {
    v51 = v73;
    v9 = [location[0] batchSize];
    v67 = [v51 fetchData:v9 error:v75 errorDomain:v74];
    if (v67)
    {
      v50 = [location[0] learningRateSchedule];

      if (v50)
      {
        v49 = [location[0] learningRateSchedule];
        v48 = [v49 objectAtIndexedSubscript:i];
        [v48 doubleValue];
        [v77 setLearningRate:?];
      }

      v65 = 0;
      if (v72 == 1)
      {
        v45 = v77;
        v44 = v67;
        v47 = [location[0] metricsNames];
        v46 = [NSSet setWithArray:?];
        v10 = [v45 trainUsingTrainingData:v44 evaluationMetricNames:? error:?];
        v11 = v65;
        v65 = v10;
      }

      else
      {
        v41 = v77;
        v40 = v67;
        v43 = [location[0] metricsNames];
        v42 = [NSSet setWithArray:?];
        v12 = [v41 evaluateUsingTestData:v40 evaluationMetricNames:? error:?];
        v13 = v65;
        v65 = v12;
      }

      if (v65)
      {
        [v65 loss];
        NSLog(@"Loss: %f", v14);
        v64 = [v69 valueForKey:v71];
        if (!v64)
        {
          v15 = [[NSMutableArray alloc] initWithCapacity:0];
          v16 = v64;
          v64 = v15;

          [v69 setValue:v64 forKey:v71];
        }

        v35 = v64;
        [v65 loss];
        v36 = [NSNumber numberWithDouble:?];
        [v35 addObject:?];

        v37 = [v65 evaluationMetrics];
        v63 = [v37 featuresAtIndex:0];

        memset(__b, 0, sizeof(__b));
        v38 = [location[0] metricsNames];
        v39 = [v38 countByEnumeratingWithState:__b objects:v80 count:16];
        if (v39)
        {
          v32 = *__b[2];
          v33 = 0;
          v34 = v39;
          while (1)
          {
            v31 = v33;
            if (*__b[2] != v32)
            {
              objc_enumerationMutation(v38);
            }

            v62 = *(__b[1] + 8 * v33);
            v60 = [v63 featureValueForName:v62];
            if (v60)
            {
              v28 = [v60 multiArrayValue];
              v27 = [v28 objectAtIndexedSubscript:0];
              [v27 floatValue];
              v29 = v19;

              v59 = v29;
              v58 = [v62 stringByAppendingString:v70];
              v57 = [v69 valueForKey:v58];
              if (!v57)
              {
                v21 = [[NSMutableArray alloc] initWithCapacity:0];
                v22 = v57;
                v57 = v21;

                [v69 setValue:v57 forKey:v58];
              }

              v25 = v57;
              LODWORD(v20) = v59;
              v26 = [NSNumber numberWithFloat:v20];
              [v25 addObject:?];

              objc_storeStrong(&v57, 0);
              objc_storeStrong(&v58, 0);
              v66 = 0;
            }

            else
            {
              v17 = [NSError alloc];
              v30 = [v17 initWithDomain:v74 code:61 userInfo:0];
              v18 = v30;
              *v75 = v30;
              v79 = 0;
              v66 = 1;
            }

            objc_storeStrong(&v60, 0);
            if (v66)
            {
              break;
            }

            ++v33;
            if (v31 + 1 >= v34)
            {
              v33 = 0;
              v34 = [v38 countByEnumeratingWithState:__b objects:v80 count:16];
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
          v66 = 0;
        }

        if (!v66)
        {
          v66 = 0;
        }

        objc_storeStrong(&v63, 0);
        objc_storeStrong(&v64, 0);
      }

      else
      {
        v79 = 0;
        v66 = 1;
      }

      objc_storeStrong(&v65, 0);
    }

    else
    {
      v79 = 0;
      v66 = 1;
    }

    objc_storeStrong(&v67, 0);
    if (v66)
    {
      goto LABEL_40;
    }
  }

  v79 = v69;
  v66 = 1;
LABEL_40:
  objc_storeStrong(&v69, 0);
  objc_storeStrong(&v70, 0);
  objc_storeStrong(&v71, 0);
  objc_storeStrong(&v73, 0);
  objc_storeStrong(&v74, 0);
  objc_storeStrong(&v77, 0);
  objc_storeStrong(location, 0);
  v23 = v79;

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
  v3 = [MLRTaskResult alloc];
  v5 = [v3 initWithJSONResult:v7 unprivatizedVector:v6];
  objc_storeStrong(&v6, 0);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);

  return v5;
}

@end