@interface AMDDODMLTrainer
- (id)runTask:(id)a3 error:(id *)a4 errorDomain:(id)a5 dataProvider:(id)a6 attachmentProcessor:(id)a7;
- (id)taskResultFromDict:(id)a3;
@end

@implementation AMDDODMLTrainer

- (id)runTask:(id)a3 error:(id *)a4 errorDomain:(id)a5 dataProvider:(id)a6 attachmentProcessor:(id)a7
{
  v29 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v27 = a4;
  v26 = 0;
  objc_storeStrong(&v26, a5);
  v25 = 0;
  objc_storeStrong(&v25, a6);
  v24 = 0;
  objc_storeStrong(&v24, a7);
  v7 = [AMDDODMLModelMetadata alloc];
  v23 = [(AMDDODMLModelMetadata *)v7 initModelMetadata:location[0] error:v27 errorDomain:v26];
  if (v23)
  {
    v8 = [AMDDODMLEspressoModel alloc];
    v21 = [(AMDDODMLEspressoModel *)v8 initWithModelMetadata:v23 withAttachmentProcessor:v24 error:v27 errorDomain:v26];
    if (v21)
    {
      v20 = [v25 numberOfIterationsPerEpoch:{objc_msgSend(v23, "batchSize")}];
      if (v20)
      {
        v19 = [v23 numLocalIterations];
        if ([v23 numEpochs] > 0)
        {
          v19 = [v23 numEpochs] * v20;
        }

        v18 = [v21 trainOnData:v25 numLocalIterations:v19 error:v27 errorDomain:v26];
        if (v18)
        {
          v30 = [(AMDDODMLTrainer *)v29 taskResultFromDict:v18];
        }

        else
        {
          v30 = 0;
        }

        v22 = 1;
        objc_storeStrong(&v18, 0);
      }

      else
      {
        v9 = objc_alloc(MEMORY[0x277CCA9B8]);
        v13 = [v9 initWithDomain:v26 code:127 userInfo:0];
        v10 = v13;
        *v27 = v13;
        v30 = 0;
        v22 = 1;
      }
    }

    else
    {
      v30 = 0;
      v22 = 1;
    }

    objc_storeStrong(&v21, 0);
  }

  else
  {
    v30 = 0;
    v22 = 1;
  }

  objc_storeStrong(&v23, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(location, 0);
  v11 = v30;

  return v11;
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