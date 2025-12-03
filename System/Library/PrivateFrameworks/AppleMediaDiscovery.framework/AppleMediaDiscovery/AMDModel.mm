@interface AMDModel
+ (id)deleteAllModelUrls:(id *)urls;
+ (id)deleteWithPredicate:(id)predicate error:(id *)error;
+ (id)fetchAll:(id *)all;
+ (id)getCurrentModelInfoByModelId;
+ (id)getModelInfo:(id)info error:(id *)error;
+ (id)getModelPath:(id)path error:(id *)error;
+ (id)getModelPathForUsecase:(id)usecase inDomain:(id)domain forModelId:(id)id withTreatmentId:(id)treatmentId error:(id *)error;
+ (void)deleteModels:(id)models error:(id *)error;
+ (void)saveModels:(id)models error:(id *)error;
@end

@implementation AMDModel

+ (id)fetchAll:(id *)all
{
  selfCopy = self;
  v31 = a2;
  allCopy = all;
  v23 = 0;
  v24 = &v23;
  v25 = 838860800;
  v26 = 48;
  v27 = __Block_byref_object_copy__9;
  v28 = __Block_byref_object_dispose__9;
  v29 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 838860800;
  v19 = 48;
  v20 = __Block_byref_object_copy__9;
  v21 = __Block_byref_object_dispose__9;
  v22 = 0;
  v8 = +[AMDCoreDataPersistentContainer sharedContainer];
  getManagedObjectContext = [v8 getManagedObjectContext];
  MEMORY[0x277D82BD8](v8);
  v7 = getManagedObjectContext;
  v9 = MEMORY[0x277D85DD0];
  v10 = -1073741824;
  v11 = 0;
  v12 = __21__AMDModel_fetchAll___block_invoke;
  v13 = &unk_278CB5AD0;
  v14[1] = &v16;
  v14[0] = MEMORY[0x277D82BE0](getManagedObjectContext);
  v14[2] = &v23;
  [v7 performBlockAndWait:&v9];
  if (v24[5])
  {
    v6 = v24[5];
    v3 = v6;
    *allCopy = v6;
    v33 = 0;
  }

  else
  {
    v33 = MEMORY[0x277D82BE0](v17[5]);
  }

  objc_storeStrong(v14, 0);
  objc_storeStrong(&getManagedObjectContext, 0);
  _Block_object_dispose(&v16, 8);
  objc_storeStrong(&v22, 0);
  _Block_object_dispose(&v23, 8);
  objc_storeStrong(&v29, 0);
  v4 = v33;

  return v4;
}

void __21__AMDModel_fetchAll___block_invoke(void *a1)
{
  v11[2] = a1;
  v11[1] = a1;
  v4 = MEMORY[0x277CBE428];
  v6 = +[AMDModel entity];
  v5 = [v6 name];
  v11[0] = [v4 fetchRequestWithEntityName:?];
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v6);
  [v11[0] setResultType:2];
  v1 = a1[4];
  location = (*(a1[6] + 8) + 40);
  v10 = *location;
  v9 = [v1 executeFetchRequest:v11[0] error:&v10];
  objc_storeStrong(location, v10);
  v2 = *(a1[5] + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = v9;
  MEMORY[0x277D82BD8](v3);
  objc_storeStrong(v11, 0);
}

+ (void)deleteModels:(id)models error:(id *)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, models);
  errorCopy = error;
  v17 = 0;
  v18 = &v17;
  v19 = 838860800;
  v20 = 48;
  v21 = __Block_byref_object_copy__9;
  v22 = __Block_byref_object_dispose__9;
  v23 = 0;
  v16 = +[AMDCoreDataPersistentContainer sharedContainer];
  getManagedObjectContext = [v16 getManagedObjectContext];
  v6 = getManagedObjectContext;
  v8 = MEMORY[0x277D85DD0];
  v9 = -1073741824;
  v10 = 0;
  v11 = __31__AMDModel_deleteModels_error___block_invoke;
  v12 = &unk_278CB5DB0;
  v13 = MEMORY[0x277D82BE0](location[0]);
  v14[2] = selfCopy;
  v14[1] = &v17;
  v14[0] = MEMORY[0x277D82BE0](v16);
  [v6 performBlockAndWait:&v8];
  if (v18[5])
  {
    v5 = v18[5];
    v4 = v5;
    *errorCopy = v5;
  }

  objc_storeStrong(v14, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&getManagedObjectContext, 0);
  objc_storeStrong(&v16, 0);
  _Block_object_dispose(&v17, 8);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(location, 0);
}

void __31__AMDModel_deleteModels_error___block_invoke(void *a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v21 = a1;
  v20 = a1;
  memset(__b, 0, sizeof(__b));
  obj = MEMORY[0x277D82BE0](a1[4]);
  v12 = [obj countByEnumeratingWithState:__b objects:v22 count:16];
  if (v12)
  {
    v7 = *__b[2];
    v8 = 0;
    v9 = v12;
    while (1)
    {
      v6 = v8;
      if (*__b[2] != v7)
      {
        objc_enumerationMutation(obj);
      }

      v19 = *(__b[1] + 8 * v8);
      v17 = [v19 objectForKey:@"modelId"];
      v16 = [MEMORY[0x277CCAC30] predicateWithFormat:@"modelId == %@", v17];
      v1 = a1[7];
      location = (*(a1[6] + 8) + 40);
      v15 = *location;
      v2 = [v1 deleteWithPredicate:v16 error:&v15];
      objc_storeStrong(location, v15);
      v14 = *(*(a1[6] + 8) + 40) != 0;
      objc_storeStrong(&v16, 0);
      objc_storeStrong(&v17, 0);
      if (v14)
      {
        break;
      }

      ++v8;
      if (v6 + 1 >= v9)
      {
        v8 = 0;
        v9 = [obj countByEnumeratingWithState:__b objects:v22 count:16];
        if (!v9)
        {
          goto LABEL_8;
        }
      }
    }
  }

  else
  {
LABEL_8:
    v14 = 0;
  }

  MEMORY[0x277D82BD8](obj);
  if (!v14)
  {
    v3 = a1[5];
    v4 = (*(a1[6] + 8) + 40);
    v13 = *v4;
    [v3 save:&v13];
    objc_storeStrong(v4, v13);
  }

  *MEMORY[0x277D85DE8];
}

+ (id)deleteAllModelUrls:(id *)urls
{
  selfCopy = self;
  v32 = a2;
  urlsCopy = urls;
  v24 = 0;
  v25 = &v24;
  v26 = 838860800;
  v27 = 48;
  v28 = __Block_byref_object_copy__9;
  v29 = __Block_byref_object_dispose__9;
  v30 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 838860800;
  v20 = 48;
  v21 = __Block_byref_object_copy__9;
  v22 = __Block_byref_object_dispose__9;
  v23 = 0;
  v16 = +[AMDCoreDataPersistentContainer sharedContainer];
  getManagedObjectContext = [v16 getManagedObjectContext];
  v7 = getManagedObjectContext;
  v8 = MEMORY[0x277D85DD0];
  v9 = -1073741824;
  v10 = 0;
  v11 = __31__AMDModel_deleteAllModelUrls___block_invoke;
  v12 = &unk_278CB5AA8;
  v13 = MEMORY[0x277D82BE0](getManagedObjectContext);
  v14[1] = &v24;
  v14[0] = MEMORY[0x277D82BE0](v16);
  v14[2] = &v17;
  [v7 performBlockAndWait:&v8];
  if (v25[5])
  {
    v6 = v25[5];
    v3 = v6;
    *urlsCopy = v6;
    v34 = 0;
  }

  else
  {
    v34 = MEMORY[0x277D82BE0](v18[5]);
  }

  objc_storeStrong(v14, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&getManagedObjectContext, 0);
  objc_storeStrong(&v16, 0);
  _Block_object_dispose(&v17, 8);
  objc_storeStrong(&v23, 0);
  _Block_object_dispose(&v24, 8);
  objc_storeStrong(&v30, 0);
  v4 = v34;

  return v4;
}

void __31__AMDModel_deleteAllModelUrls___block_invoke(void *a1)
{
  v18[2] = a1;
  v18[1] = a1;
  v7 = MEMORY[0x277CBE428];
  v9 = +[AMDModel entity];
  v8 = [v9 name];
  v18[0] = [v7 fetchRequestWithEntityName:?];
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v9);
  v17 = [objc_alloc(MEMORY[0x277CBE360]) initWithFetchRequest:v18[0]];
  [v17 setResultType:2];
  v1 = a1[4];
  location = (*(a1[6] + 8) + 40);
  v15 = *location;
  v11 = [v1 executeRequest:v17 error:&v15];
  objc_storeStrong(location, v15);
  v16 = v11;
  if (*(*(a1[6] + 8) + 40))
  {
    v14 = 1;
  }

  else
  {
    v2 = a1[5];
    v6 = (*(a1[6] + 8) + 40);
    v13 = *v6;
    [v2 save:&v13];
    objc_storeStrong(v6, v13);
    v3 = [v16 result];
    v4 = *(a1[7] + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;
    MEMORY[0x277D82BD8](v5);
    v14 = 0;
  }

  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(v18, 0);
}

+ (void)saveModels:(id)models error:(id *)error
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, models);
  errorCopy = error;
  v18 = 0;
  v19 = &v18;
  v20 = 838860800;
  v21 = 48;
  v22 = __Block_byref_object_copy__9;
  v23 = __Block_byref_object_dispose__9;
  v24 = 0;
  v17 = +[AMDCoreDataPersistentContainer sharedContainer];
  getManagedObjectContext = [v17 getManagedObjectContext];
  v6 = getManagedObjectContext;
  v8 = MEMORY[0x277D85DD0];
  v9 = -1073741824;
  v10 = 0;
  v11 = __29__AMDModel_saveModels_error___block_invoke;
  v12 = &unk_278CB5A08;
  v13 = MEMORY[0x277D82BE0](location[0]);
  v14 = MEMORY[0x277D82BE0](getManagedObjectContext);
  v15[0] = MEMORY[0x277D82BE0](v17);
  v15[1] = &v18;
  [v6 performBlockAndWait:&v8];
  if (v19[5])
  {
    v5 = v19[5];
    v4 = v5;
    *errorCopy = v5;
  }

  objc_storeStrong(v15, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&getManagedObjectContext, 0);
  objc_storeStrong(&v17, 0);
  _Block_object_dispose(&v18, 8);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(location, 0);
}

void __29__AMDModel_saveModels_error___block_invoke(uint64_t a1)
{
  v33 = *MEMORY[0x277D85DE8];
  v31 = a1;
  v30 = a1;
  memset(__b, 0, sizeof(__b));
  obj = MEMORY[0x277D82BE0](*(a1 + 32));
  v24 = [obj countByEnumeratingWithState:__b objects:v32 count:16];
  if (v24)
  {
    v19 = *__b[2];
    v20 = 0;
    v21 = v24;
    while (1)
    {
      v18 = v20;
      if (*__b[2] != v19)
      {
        objc_enumerationMutation(obj);
      }

      v29 = *(__b[1] + 8 * v20);
      v27 = [*(a1 + 32) objectForKey:v29];
      v5 = MEMORY[0x277CBE408];
      v7 = +[AMDModel entity];
      v6 = [v7 name];
      v1 = *(a1 + 40);
      v26 = [v5 insertNewObjectForEntityForName:? inManagedObjectContext:?];
      MEMORY[0x277D82BD8](v6);
      MEMORY[0x277D82BD8](v7);
      v8 = v26;
      v9 = [v27 objectForKey:@"modelId"];
      [v8 setModelId:?];
      MEMORY[0x277D82BD8](v9);
      v10 = v26;
      v11 = [v27 objectForKey:@"url"];
      [v10 setUrl:?];
      MEMORY[0x277D82BD8](v11);
      v12 = v26;
      v13 = [v27 objectForKey:@"compiledModelDir"];
      [v12 setCompiledModelDir:?];
      MEMORY[0x277D82BD8](v13);
      v14 = v26;
      v15 = [v27 objectForKey:@"version"];
      [v14 setVersion:?];
      MEMORY[0x277D82BD8](v15);
      v16 = v26;
      v17 = [MEMORY[0x277CBEAA8] date];
      [v17 timeIntervalSince1970];
      [v16 setCreationTimeSeconds:v2];
      MEMORY[0x277D82BD8](v17);
      objc_storeStrong(&v26, 0);
      objc_storeStrong(&v27, 0);
      ++v20;
      if (v18 + 1 >= v21)
      {
        v20 = 0;
        v21 = [obj countByEnumeratingWithState:__b objects:v32 count:16];
        if (!v21)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x277D82BD8](obj);
  v3 = *(a1 + 48);
  v4 = (*(*(a1 + 56) + 8) + 40);
  v25 = *v4;
  [v3 save:&v25];
  objc_storeStrong(v4, v25);
  *MEMORY[0x277D85DE8];
}

+ (id)getModelInfo:(id)info error:(id *)error
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, info);
  errorCopy = error;
  v26 = 0;
  v27 = &v26;
  v28 = 838860800;
  v29 = 48;
  v30 = __Block_byref_object_copy__9;
  v31 = __Block_byref_object_dispose__9;
  v32 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 838860800;
  v22 = 48;
  v23 = __Block_byref_object_copy__9;
  v24 = __Block_byref_object_dispose__9;
  v25 = 0;
  v9 = +[AMDCoreDataPersistentContainer sharedContainer];
  getManagedObjectContext = [v9 getManagedObjectContext];
  MEMORY[0x277D82BD8](v9);
  v8 = getManagedObjectContext;
  v11 = MEMORY[0x277D85DD0];
  v12 = -1073741824;
  v13 = 0;
  v14 = __31__AMDModel_getModelInfo_error___block_invoke;
  v15 = &unk_278CB5A80;
  v16 = MEMORY[0x277D82BE0](location[0]);
  v17[0] = MEMORY[0x277D82BE0](getManagedObjectContext);
  v17[1] = &v26;
  v17[2] = &v19;
  [v8 performBlockAndWait:&v11];
  if (v27[5])
  {
    v7 = v27[5];
    v4 = v7;
    *errorCopy = v7;
    v35 = 0;
  }

  else
  {
    v35 = MEMORY[0x277D82BE0](v20[5]);
  }

  objc_storeStrong(v17, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&getManagedObjectContext, 0);
  _Block_object_dispose(&v19, 8);
  objc_storeStrong(&v25, 0);
  _Block_object_dispose(&v26, 8);
  objc_storeStrong(&v32, 0);
  objc_storeStrong(location, 0);
  v5 = v35;

  return v5;
}

void __31__AMDModel_getModelInfo_error___block_invoke(void *a1)
{
  v14[2] = a1;
  v14[1] = a1;
  v5 = MEMORY[0x277CBE428];
  v7 = +[AMDModel entity];
  v6 = [v7 name];
  v14[0] = [v5 fetchRequestWithEntityName:?];
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v7);
  v13 = [MEMORY[0x277CCAC30] predicateWithFormat:@"modelId == %@", a1[4]];
  [v14[0] setPredicate:v13];
  [v14[0] setResultType:2];
  v1 = a1[5];
  location = (*(a1[6] + 8) + 40);
  v11 = *location;
  v9 = [v1 executeFetchRequest:v14[0] error:&v11];
  objc_storeStrong(location, v11);
  v12 = v9;
  if (!*(*(a1[6] + 8) + 40) && v12)
  {
    v2 = [v12 firstObject];
    v3 = *(a1[7] + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;
    MEMORY[0x277D82BD8](v4);
  }

  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(v14, 0);
}

+ (id)getModelPath:(id)path error:(id *)error
{
  v34 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, path);
  errorCopy = error;
  v25 = [selfCopy getModelInfo:location[0] error:error];
  if (*error)
  {
    v24 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
    v23 = 16;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      log = v24;
      type = v23;
      v13 = location[0];
      localizedDescription = [*errorCopy localizedDescription];
      v22 = MEMORY[0x277D82BE0](localizedDescription);
      __os_log_helper_16_2_2_8_64_8_64(v33, v13, v22);
      _os_log_error_impl(&dword_240CB9000, log, type, "Model: %@ could not be fetched. Error: %@", v33, 0x16u);
      MEMORY[0x277D82BD8](localizedDescription);
      objc_storeStrong(&v22, 0);
    }

    objc_storeStrong(&v24, 0);
    v29 = 0;
    v21 = 1;
  }

  else if (v25)
  {
    v8 = MEMORY[0x277CCACA8];
    v10 = [v25 objectForKey:@"url"];
    v9 = [v25 objectForKey:@"compiledModelDir"];
    v18 = [v8 stringWithFormat:@"%@/%@", v10, v9];
    MEMORY[0x277D82BD8](v9);
    MEMORY[0x277D82BD8](v10);
    v11 = v18;
    uRLQueryAllowedCharacterSet = [MEMORY[0x277CCA900] URLQueryAllowedCharacterSet];
    v4 = [v11 stringByAddingPercentEncodingWithAllowedCharacters:?];
    v5 = v18;
    v18 = v4;
    MEMORY[0x277D82BD8](v5);
    MEMORY[0x277D82BD8](uRLQueryAllowedCharacterSet);
    v30 = @"path";
    v31 = v18;
    v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
    v21 = 1;
    objc_storeStrong(&v18, 0);
  }

  else
  {
    v20 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
    v19 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v32, location[0]);
      _os_log_error_impl(&dword_240CB9000, v20, v19, "Model: %@ not available", v32, 0xCu);
    }

    objc_storeStrong(&v20, 0);
    v29 = 0;
    v21 = 1;
  }

  objc_storeStrong(&v25, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  v6 = v29;

  return v6;
}

+ (id)getModelPathForUsecase:(id)usecase inDomain:(id)domain forModelId:(id)id withTreatmentId:(id)treatmentId error:(id *)error
{
  v57 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, usecase);
  v51 = 0;
  objc_storeStrong(&v51, domain);
  v50 = 0;
  objc_storeStrong(&v50, id);
  v49 = 0;
  objc_storeStrong(&v49, treatmentId);
  errorCopy = error;
  if (location[0] || v50)
  {
    if (v51)
    {
      v40 = [AMDDomains getCodeForDomain:v51];
      if (v40)
      {
        if (v50)
        {
          v54 = [selfCopy getModelPath:v50 error:errorCopy];
          v44 = 1;
        }

        else if (location[0])
        {
          v33 = [AMDWorkflow getCurrentWorkflowForDomain:v40 andTreatmentId:v49 andUseCaseId:location[0] error:errorCopy];
          if (*errorCopy)
          {
            v32 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
            v31 = OS_LOG_TYPE_ERROR;
            if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
            {
              v13 = v32;
              v14 = v31;
              v11 = v51;
              v12 = location[0];
              localizedDescription = [*errorCopy localizedDescription];
              v30 = MEMORY[0x277D82BE0](localizedDescription);
              __os_log_helper_16_2_3_8_64_8_64_8_64(v56, v11, v12, v30);
              _os_log_error_impl(&dword_240CB9000, v13, v14, "Workflow fetch failed for domain: %@, usecase: %@ error: %@", v56, 0x20u);
              MEMORY[0x277D82BD8](localizedDescription);
              objc_storeStrong(&v30, 0);
            }

            objc_storeStrong(&v32, 0);
            v54 = 0;
            v44 = 1;
          }

          else
          {
            second = [v33 second];
            v7 = [second objectForKey:@"model_id"];
            v8 = v50;
            v50 = v7;
            MEMORY[0x277D82BD8](v8);
            if (!v50)
            {
              oslog = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
              if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
              {
                __os_log_helper_16_2_1_8_64(v55, location[0]);
                _os_log_error_impl(&dword_240CB9000, oslog, OS_LOG_TYPE_ERROR, "ModelId not present in workflow for usecase: %@", v55, 0xCu);
              }

              objc_storeStrong(&oslog, 0);
            }

            v54 = [selfCopy getModelPath:v50 error:errorCopy];
            v44 = 1;
            objc_storeStrong(&second, 0);
          }

          objc_storeStrong(&v33, 0);
        }

        else
        {
          v36 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
          v35 = 16;
          if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
          {
            v16 = v36;
            v17 = v35;
            __os_log_helper_16_0_0(v34);
            _os_log_error_impl(&dword_240CB9000, v16, v17, "UsecaseId missing while querying for model path", v34, 2u);
          }

          objc_storeStrong(&v36, 0);
          v54 = 0;
          v44 = 1;
        }
      }

      else
      {
        v39 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
        v38 = 16;
        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          v18 = v39;
          v19 = v38;
          __os_log_helper_16_0_0(v37);
          _os_log_error_impl(&dword_240CB9000, v18, v19, "Unsupported domain passed while querying for model path", v37, 2u);
        }

        objc_storeStrong(&v39, 0);
        v54 = 0;
        v44 = 1;
      }
    }

    else
    {
      v43 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
      v42 = 16;
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        v20 = v43;
        v21 = v42;
        __os_log_helper_16_0_0(v41);
        _os_log_error_impl(&dword_240CB9000, v20, v21, "Domain missing while querying for model path. Defaulting to apps", v41, 2u);
      }

      objc_storeStrong(&v43, 0);
      v54 = 0;
      v44 = 1;
    }
  }

  else
  {
    v47 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
    v46 = 16;
    if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      log = v47;
      type = v46;
      __os_log_helper_16_0_0(v45);
      _os_log_error_impl(&dword_240CB9000, log, type, "UsecaseId and modelId missing while querying for model path", v45, 2u);
    }

    objc_storeStrong(&v47, 0);
    v54 = 0;
    v44 = 1;
  }

  objc_storeStrong(&v49, 0);
  objc_storeStrong(&v50, 0);
  objc_storeStrong(&v51, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  v9 = v54;

  return v9;
}

+ (id)deleteWithPredicate:(id)predicate error:(id *)error
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, predicate);
  errorCopy = error;
  v27 = 0;
  v28 = &v27;
  v29 = 838860800;
  v30 = 48;
  v31 = __Block_byref_object_copy__9;
  v32 = __Block_byref_object_dispose__9;
  v33 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 838860800;
  v23 = 48;
  v24 = __Block_byref_object_copy__9;
  v25 = __Block_byref_object_dispose__9;
  v26 = 0;
  v19 = +[AMDCoreDataPersistentContainer sharedContainer];
  getManagedObjectContext = [v19 getManagedObjectContext];
  v8 = getManagedObjectContext;
  v10 = MEMORY[0x277D85DD0];
  v11 = -1073741824;
  v12 = 0;
  v13 = __38__AMDModel_deleteWithPredicate_error___block_invoke;
  v14 = &unk_278CB5A58;
  v15 = MEMORY[0x277D82BE0](location[0]);
  v16 = MEMORY[0x277D82BE0](getManagedObjectContext);
  v17[1] = &v27;
  v17[0] = MEMORY[0x277D82BE0](v19);
  v17[2] = &v20;
  [v8 performBlockAndWait:&v10];
  if (v28[5])
  {
    v7 = v28[5];
    v4 = v7;
    *errorCopy = v7;
    v36 = 0;
  }

  else
  {
    v36 = MEMORY[0x277D82BE0](v21[5]);
  }

  objc_storeStrong(v17, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&getManagedObjectContext, 0);
  objc_storeStrong(&v19, 0);
  _Block_object_dispose(&v20, 8);
  objc_storeStrong(&v26, 0);
  _Block_object_dispose(&v27, 8);
  objc_storeStrong(&v33, 0);
  objc_storeStrong(location, 0);
  v5 = v36;

  return v5;
}

void __38__AMDModel_deleteWithPredicate_error___block_invoke(void *a1)
{
  v18[2] = a1;
  v18[1] = a1;
  v9 = MEMORY[0x277CBE428];
  v11 = +[AMDModel entity];
  v10 = [v11 name];
  v18[0] = [v9 fetchRequestWithEntityName:?];
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](v11);
  if (a1[4])
  {
    [v18[0] setPredicate:a1[4]];
  }

  v17 = [objc_alloc(MEMORY[0x277CBE360]) initWithFetchRequest:v18[0]];
  [v17 setResultType:2];
  v1 = a1[5];
  location = (*(a1[7] + 8) + 40);
  v15 = *location;
  v8 = [v1 executeRequest:v17 error:&v15];
  objc_storeStrong(location, v15);
  v16 = v8;
  if (*(*(a1[7] + 8) + 40))
  {
    v14 = 1;
  }

  else
  {
    v2 = a1[6];
    v6 = (*(a1[7] + 8) + 40);
    v13 = *v6;
    [v2 save:&v13];
    objc_storeStrong(v6, v13);
    v3 = [v16 result];
    v4 = *(a1[8] + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;
    MEMORY[0x277D82BD8](v5);
    v14 = 0;
  }

  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(v18, 0);
}

+ (id)getCurrentModelInfoByModelId
{
  v31 = *MEMORY[0x277D85DE8];
  v27[2] = self;
  v27[1] = a2;
  v27[0] = 0;
  v25 = 0;
  v17 = [self fetchAll:&v25];
  objc_storeStrong(v27, v25);
  v26 = v17;
  if (v27[0])
  {
    v24 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
    v23 = 16;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      log = v24;
      type = v23;
      localizedDescription = [v27[0] localizedDescription];
      v22 = MEMORY[0x277D82BE0](localizedDescription);
      __os_log_helper_16_2_1_8_64(v30, v22);
      _os_log_error_impl(&dword_240CB9000, log, type, "Error fetching all model urls: '%@'", v30, 0xCu);
      MEMORY[0x277D82BD8](localizedDescription);
      objc_storeStrong(&v22, 0);
    }

    objc_storeStrong(&v24, 0);
    v28 = MEMORY[0x277D82BE0](MEMORY[0x277CBEC10]);
    v21 = 1;
  }

  else
  {
    v11 = objc_alloc(MEMORY[0x277CBEB38]);
    v20 = [v11 initWithCapacity:{objc_msgSend(v26, "count")}];
    memset(__b, 0, sizeof(__b));
    obj = MEMORY[0x277D82BE0](v26);
    v13 = [obj countByEnumeratingWithState:__b objects:v29 count:16];
    if (v13)
    {
      v8 = *__b[2];
      v9 = 0;
      v10 = v13;
      while (1)
      {
        v7 = v9;
        if (*__b[2] != v8)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(__b[1] + 8 * v9);
        v5 = v20;
        v4 = v19;
        v6 = [v19 objectForKey:@"modelId"];
        [v5 setObject:v4 forKey:?];
        MEMORY[0x277D82BD8](v6);
        ++v9;
        if (v7 + 1 >= v10)
        {
          v9 = 0;
          v10 = [obj countByEnumeratingWithState:__b objects:v29 count:16];
          if (!v10)
          {
            break;
          }
        }
      }
    }

    MEMORY[0x277D82BD8](obj);
    v28 = MEMORY[0x277D82BE0](v20);
    v21 = 1;
    objc_storeStrong(&v20, 0);
  }

  objc_storeStrong(&v26, 0);
  objc_storeStrong(v27, 0);
  *MEMORY[0x277D85DE8];
  v2 = v28;

  return v2;
}

@end