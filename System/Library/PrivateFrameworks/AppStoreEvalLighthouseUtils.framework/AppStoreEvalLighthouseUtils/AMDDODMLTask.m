@interface AMDDODMLTask
- (AMDDODMLTask)initWithErrorDomain:(id)a3;
- (id)performTask:(id)a3 error:(id *)a4;
@end

@implementation AMDDODMLTask

- (AMDDODMLTask)initWithErrorDomain:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v8;
  v8 = 0;
  v6.receiver = v3;
  v6.super_class = AMDDODMLTask;
  v5 = [(AMDDODMLTask *)&v6 init];
  v8 = v5;
  objc_storeStrong(&v8, v5);
  if (v5)
  {
    [v8 setErrorDomain:location[0]];
    v9 = MEMORY[0x277D82BE0](v8);
  }

  else
  {
    v9 = 0;
  }

  objc_storeStrong(location, 0);
  objc_storeStrong(&v8, 0);
  return v9;
}

- (id)performTask:(id)a3 error:(id *)a4
{
  v57 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v55 = a4;
  v41 = [location[0] parameters];
  v54 = [v41 objectForKeyedSubscript:AttachmentInstructions];
  MEMORY[0x277D82BD8](v41);
  v40 = [AMDDODMLAttachmentProcessor alloc];
  v39 = [location[0] attachments];
  v38 = [(AMDDODMLTask *)v57 errorDomain];
  v53 = [(AMDDODMLAttachmentProcessor *)v40 initWithAttachmentURLs:v39 withInstructions:v54 error:a4 errorDomain:?];
  MEMORY[0x277D82BD8](v38);
  MEMORY[0x277D82BD8](v39);
  if (v53)
  {
    v37 = [location[0] parameters];
    v51 = [v37 objectForKeyedSubscript:DataProcessing];
    MEMORY[0x277D82BD8](v37);
    if (v51)
    {
      v50 = [[AMDDODMLDataProcessor alloc] initWithActionArray:v51 withAttachmentProcessor:v53];
      if (v50)
      {
        v30 = [(AMDDODMLTask *)v57 errorDomain];
        v49 = [v50 processRecipe:v55 errorDomain:?];
        MEMORY[0x277D82BD8](v30);
        if (v49)
        {
          v29 = [AMDDODMLModelMetadata alloc];
          v28 = location[0];
          v27 = [(AMDDODMLTask *)v57 errorDomain];
          v48 = [(AMDDODMLModelMetadata *)v29 initModelMetadata:v28 error:v55 errorDomain:?];
          MEMORY[0x277D82BD8](v27);
          v47 = 0;
          v25 = [v48 useCoreMLTrainer];
          v26 = [v25 longValue];
          MEMORY[0x277D82BD8](v25);
          if (v26)
          {
            v18 = [AMDCoreMLDataProvider alloc];
            v17 = [v50 getInputSize];
            v16 = [v50 getElementsInSampleDictionary];
            v15 = [v50 getInputDictionary];
            v44 = [(AMDCoreMLDataProvider *)v18 initWithInputs:v17 featureSizeMap:v16 inputDictionary:?];
            MEMORY[0x277D82BD8](v15);
            MEMORY[0x277D82BD8](v16);
            v43 = objc_alloc_init(AMDCoreMLTrainer);
            v14 = location[0];
            v13 = [(AMDDODMLTask *)v57 errorDomain];
            v8 = [v43 runTask:v14 error:v55 errorDomain:? dataProvider:?];
            v9 = v47;
            v47 = v8;
            MEMORY[0x277D82BD8](v9);
            MEMORY[0x277D82BD8](v13);
            objc_storeStrong(&v43, 0);
            objc_storeStrong(&v44, 0);
          }

          else
          {
            v24 = [AMDDODMLEspressoDataProvider alloc];
            v23 = [v50 getInputSize];
            v22 = [v50 getElementsInSampleDictionary];
            v21 = [v50 getInputDictionary];
            v46 = [(AMDDODMLEspressoDataProvider *)v24 initWithInputs:v23 featureSizeMap:v22 inputDictionary:?];
            MEMORY[0x277D82BD8](v21);
            MEMORY[0x277D82BD8](v22);
            v45 = objc_alloc_init(AMDDODMLTrainer);
            v20 = location[0];
            v19 = [(AMDDODMLTask *)v57 errorDomain];
            v6 = [v45 runTask:v20 error:v55 errorDomain:? dataProvider:? attachmentProcessor:?];
            v7 = v47;
            v47 = v6;
            MEMORY[0x277D82BD8](v7);
            MEMORY[0x277D82BD8](v19);
            objc_storeStrong(&v45, 0);
            objc_storeStrong(&v46, 0);
          }

          if (v47)
          {
            v12 = [v47 JSONResult];
            NSLog(&stru_28520FB88.isa, v12);
            MEMORY[0x277D82BD8](v12);
          }

          else
          {
            NSLog(&cfstr_ResultIsNil.isa);
          }

          v58 = MEMORY[0x277D82BE0](v47);
          v52 = 1;
          objc_storeStrong(&v47, 0);
          objc_storeStrong(&v48, 0);
        }

        else
        {
          v58 = 0;
          v52 = 1;
        }

        objc_storeStrong(&v49, 0);
      }

      else
      {
        v33 = objc_alloc(MEMORY[0x277CCA9B8]);
        v31 = [(AMDDODMLTask *)v57 errorDomain];
        v32 = [v33 initWithDomain:? code:? userInfo:?];
        v5 = v32;
        *v55 = v32;
        MEMORY[0x277D82BD8](v31);
        v58 = 0;
        v52 = 1;
      }

      objc_storeStrong(&v50, 0);
    }

    else
    {
      v36 = objc_alloc(MEMORY[0x277CCA9B8]);
      v34 = [(AMDDODMLTask *)v57 errorDomain];
      v35 = [v36 initWithDomain:? code:? userInfo:?];
      v4 = v35;
      *v55 = v35;
      MEMORY[0x277D82BD8](v34);
      v58 = 0;
      v52 = 1;
    }

    objc_storeStrong(&v51, 0);
  }

  else
  {
    v58 = 0;
    v52 = 1;
  }

  objc_storeStrong(&v53, 0);
  objc_storeStrong(&v54, 0);
  objc_storeStrong(location, 0);
  v10 = v58;

  return v10;
}

@end