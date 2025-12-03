@interface AMDDODMLTask
- (AMDDODMLTask)initWithErrorDomain:(id)domain;
- (id)performTask:(id)task error:(id *)error;
@end

@implementation AMDDODMLTask

- (AMDDODMLTask)initWithErrorDomain:(id)domain
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, domain);
  v3 = selfCopy;
  selfCopy = 0;
  v6.receiver = v3;
  v6.super_class = AMDDODMLTask;
  v5 = [(AMDDODMLTask *)&v6 init];
  selfCopy = v5;
  objc_storeStrong(&selfCopy, v5);
  if (v5)
  {
    [selfCopy setErrorDomain:location[0]];
    v9 = MEMORY[0x277D82BE0](selfCopy);
  }

  else
  {
    v9 = 0;
  }

  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v9;
}

- (id)performTask:(id)task error:(id *)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, task);
  errorCopy = error;
  parameters = [location[0] parameters];
  v54 = [parameters objectForKeyedSubscript:AttachmentInstructions];
  MEMORY[0x277D82BD8](parameters);
  v40 = [AMDDODMLAttachmentProcessor alloc];
  attachments = [location[0] attachments];
  errorDomain = [(AMDDODMLTask *)selfCopy errorDomain];
  v53 = [(AMDDODMLAttachmentProcessor *)v40 initWithAttachmentURLs:attachments withInstructions:v54 error:error errorDomain:?];
  MEMORY[0x277D82BD8](errorDomain);
  MEMORY[0x277D82BD8](attachments);
  if (v53)
  {
    parameters2 = [location[0] parameters];
    v51 = [parameters2 objectForKeyedSubscript:DataProcessing];
    MEMORY[0x277D82BD8](parameters2);
    if (v51)
    {
      v50 = [[AMDDODMLDataProcessor alloc] initWithActionArray:v51 withAttachmentProcessor:v53];
      if (v50)
      {
        errorDomain2 = [(AMDDODMLTask *)selfCopy errorDomain];
        v49 = [v50 processRecipe:errorCopy errorDomain:?];
        MEMORY[0x277D82BD8](errorDomain2);
        if (v49)
        {
          v29 = [AMDDODMLModelMetadata alloc];
          v28 = location[0];
          errorDomain3 = [(AMDDODMLTask *)selfCopy errorDomain];
          v48 = [(AMDDODMLModelMetadata *)v29 initModelMetadata:v28 error:errorCopy errorDomain:?];
          MEMORY[0x277D82BD8](errorDomain3);
          v47 = 0;
          useCoreMLTrainer = [v48 useCoreMLTrainer];
          longValue = [useCoreMLTrainer longValue];
          MEMORY[0x277D82BD8](useCoreMLTrainer);
          if (longValue)
          {
            v18 = [AMDCoreMLDataProvider alloc];
            getInputSize = [v50 getInputSize];
            getElementsInSampleDictionary = [v50 getElementsInSampleDictionary];
            getInputDictionary = [v50 getInputDictionary];
            v44 = [(AMDCoreMLDataProvider *)v18 initWithInputs:getInputSize featureSizeMap:getElementsInSampleDictionary inputDictionary:?];
            MEMORY[0x277D82BD8](getInputDictionary);
            MEMORY[0x277D82BD8](getElementsInSampleDictionary);
            v43 = objc_alloc_init(AMDCoreMLTrainer);
            v14 = location[0];
            errorDomain4 = [(AMDDODMLTask *)selfCopy errorDomain];
            v8 = [v43 runTask:v14 error:errorCopy errorDomain:? dataProvider:?];
            v9 = v47;
            v47 = v8;
            MEMORY[0x277D82BD8](v9);
            MEMORY[0x277D82BD8](errorDomain4);
            objc_storeStrong(&v43, 0);
            objc_storeStrong(&v44, 0);
          }

          else
          {
            v24 = [AMDDODMLEspressoDataProvider alloc];
            getInputSize2 = [v50 getInputSize];
            getElementsInSampleDictionary2 = [v50 getElementsInSampleDictionary];
            getInputDictionary2 = [v50 getInputDictionary];
            v46 = [(AMDDODMLEspressoDataProvider *)v24 initWithInputs:getInputSize2 featureSizeMap:getElementsInSampleDictionary2 inputDictionary:?];
            MEMORY[0x277D82BD8](getInputDictionary2);
            MEMORY[0x277D82BD8](getElementsInSampleDictionary2);
            v45 = objc_alloc_init(AMDDODMLTrainer);
            v20 = location[0];
            errorDomain5 = [(AMDDODMLTask *)selfCopy errorDomain];
            v6 = [v45 runTask:v20 error:errorCopy errorDomain:? dataProvider:? attachmentProcessor:?];
            v7 = v47;
            v47 = v6;
            MEMORY[0x277D82BD8](v7);
            MEMORY[0x277D82BD8](errorDomain5);
            objc_storeStrong(&v45, 0);
            objc_storeStrong(&v46, 0);
          }

          if (v47)
          {
            jSONResult = [v47 JSONResult];
            NSLog(&stru_28520FB88.isa, jSONResult);
            MEMORY[0x277D82BD8](jSONResult);
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
        errorDomain6 = [(AMDDODMLTask *)selfCopy errorDomain];
        v32 = [v33 initWithDomain:? code:? userInfo:?];
        v5 = v32;
        *errorCopy = v32;
        MEMORY[0x277D82BD8](errorDomain6);
        v58 = 0;
        v52 = 1;
      }

      objc_storeStrong(&v50, 0);
    }

    else
    {
      v36 = objc_alloc(MEMORY[0x277CCA9B8]);
      errorDomain7 = [(AMDDODMLTask *)selfCopy errorDomain];
      v35 = [v36 initWithDomain:? code:? userInfo:?];
      v4 = v35;
      *errorCopy = v35;
      MEMORY[0x277D82BD8](errorDomain7);
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