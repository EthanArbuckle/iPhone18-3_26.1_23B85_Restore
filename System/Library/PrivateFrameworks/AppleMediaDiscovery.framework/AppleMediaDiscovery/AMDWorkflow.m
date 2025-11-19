@interface AMDWorkflow
+ (id)deleteWithPredicate:(id)a3 error:(id *)a4;
+ (id)deleteWorkflowForDomain:(int64_t)a3 withModelId:(id)a4 withSecondaryModelId:(id)a5 andUsecaseId:(id)a6 andTreatmentId:(id)a7 error:(id *)a8;
+ (id)deleteWorkflowsForDomain:(int64_t)a3 andTreatmentId:(id)a4 andUseCaseId:(id)a5 error:(id *)a6;
+ (id)deleteWorkflowsForDomain:(int64_t)a3 error:(id *)a4;
+ (id)deleteWorkflowsForModelId:(id)a3 error:(id *)a4;
+ (id)fetchAllWorkflows:(id *)a3;
+ (id)fetchWithPredicates:(id)a3 error:(id *)a4;
+ (id)getAllActiveWorkflowsForDomain:(int64_t)a3 andUseCaseId:(id)a4 error:(id *)a5;
+ (id)getAllWorkflowsForDomain:(int64_t)a3 withUseCaseId:(id)a4 error:(id *)a5;
+ (id)getCurrentWorkflowForDomain:(int64_t)a3 andTreatmentId:(id)a4 andUseCaseId:(id)a5 error:(id *)a6;
+ (id)getWorkflowsForDomain:(int64_t)a3 andTreatmentId:(id)a4 andUseCaseId:(id)a5 error:(id *)a6;
+ (id)getWorkflowsForDomain:(int64_t)a3 error:(id *)a4;
+ (id)getWorkflowsForModelId:(id)a3 error:(id *)a4;
+ (id)performWorkflowCleanupForDomain:(int64_t)a3 error:(id *)a4;
+ (void)addWorkflowsFromInflightTable:(id)a3 error:(id *)a4;
+ (void)saveWorkflow:(id)a3 forDomain:(int64_t)a4 withCallUUID:(id)a5 error:(id *)a6;
@end

@implementation AMDWorkflow

+ (void)saveWorkflow:(id)a3 forDomain:(int64_t)a4 withCallUUID:(id)a5 error:(id *)a6
{
  v55 = *MEMORY[0x277D85DE8];
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v51 = a4;
  v50 = 0;
  objc_storeStrong(&v50, a5);
  v49 = a6;
  v16 = [AMDUseCaseWorkflow alloc];
  v48 = [(AMDUseCaseWorkflow *)v16 initWithDictionary:location[0]];
  if ([v48 isValid])
  {
    v43 = [MEMORY[0x277CCAAA0] dataWithJSONObject:location[0] options:6 error:v49];
    if (*v49)
    {
      v11 = MEMORY[0x277CCACA8];
      v10 = [*v49 localizedDescription];
      v42 = [v11 stringWithFormat:@"Error serializing segment workflow: '%@'", v10];
      MEMORY[0x277D82BD8](v10);
      v41 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
      v40 = OS_LOG_TYPE_INFO;
      if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
      {
        __os_log_helper_16_2_1_8_64(v53, v42);
        _os_log_impl(&dword_240CB9000, v41, v40, "%@", v53, 0xCu);
      }

      objc_storeStrong(&v41, 0);
      [AMDFrameworkMetrics log:v42 withKey:@"SaveSegmentWorkflowFailure" atVerbosity:0];
      v44 = 1;
      objc_storeStrong(&v42, 0);
    }

    else
    {
      v33 = 0;
      v34 = &v33;
      v35 = 838860800;
      v36 = 48;
      v37 = __Block_byref_object_copy__1;
      v38 = __Block_byref_object_dispose__1;
      v39 = 0;
      v32 = +[AMDCoreDataPersistentContainer sharedContainer];
      v31 = [v32 getManagedObjectContext];
      v9 = v31;
      v20 = MEMORY[0x277D85DD0];
      v21 = -1073741824;
      v22 = 0;
      v23 = __57__AMDWorkflow_saveWorkflow_forDomain_withCallUUID_error___block_invoke;
      v24 = &unk_278CB5CF8;
      v25 = MEMORY[0x277D82BE0](v31);
      v30[2] = v51;
      v26 = MEMORY[0x277D82BE0](v48);
      v27 = MEMORY[0x277D82BE0](v50);
      v28 = MEMORY[0x277D82BE0](v43);
      v29 = MEMORY[0x277D82BE0](location[0]);
      v30[0] = MEMORY[0x277D82BE0](v32);
      v30[1] = &v33;
      [v9 performBlockAndWait:&v20];
      if (v34[5])
      {
        v8 = v34[5];
        v7 = v8;
        *v49 = v8;
      }

      objc_storeStrong(v30, 0);
      objc_storeStrong(&v29, 0);
      objc_storeStrong(&v28, 0);
      objc_storeStrong(&v27, 0);
      objc_storeStrong(&v26, 0);
      objc_storeStrong(&v25, 0);
      objc_storeStrong(&v31, 0);
      objc_storeStrong(&v32, 0);
      _Block_object_dispose(&v33, 8);
      objc_storeStrong(&v39, 0);
      v44 = 0;
    }

    objc_storeStrong(&v43, 0);
  }

  else
  {
    v15 = MEMORY[0x277CCACA8];
    v14 = [location[0] objectForKey:@"use_case_id"];
    v13 = [location[0] objectForKey:@"model_id"];
    v47 = [v15 stringWithFormat:@"Invalid segment workflow, useCaseId: '%@' modelId: '%@'", v14, v13];
    MEMORY[0x277D82BD8](v13);
    MEMORY[0x277D82BD8](v14);
    v46 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
    v45 = OS_LOG_TYPE_INFO;
    if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
    {
      __os_log_helper_16_2_1_8_64(v54, v47);
      _os_log_impl(&dword_240CB9000, v46, v45, "%@", v54, 0xCu);
    }

    objc_storeStrong(&v46, 0);
    [AMDFrameworkMetrics log:v47 withKey:@"SaveSegmentWorkflowFailure" atVerbosity:0];
    v12 = [AMDError allocError:19 withMessage:v47];
    v6 = v12;
    *v49 = v12;
    v44 = 1;
    objc_storeStrong(&v47, 0);
  }

  objc_storeStrong(&v48, 0);
  objc_storeStrong(&v50, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

void __57__AMDWorkflow_saveWorkflow_forDomain_withCallUUID_error___block_invoke(uint64_t a1)
{
  v17[2] = a1;
  v17[1] = a1;
  v7 = MEMORY[0x277CBE408];
  v9 = +[AMDWorkflow entity];
  v8 = [v9 name];
  v1 = *(a1 + 32);
  v17[0] = [v7 insertNewObjectForEntityForName:? inManagedObjectContext:?];
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v9);
  [v17[0] setDomain:*(a1 + 88)];
  v10 = [*(a1 + 40) getUseCaseId];
  [v17[0] setUseCaseId:?];
  MEMORY[0x277D82BD8](v10);
  [v17[0] setCallUUID:*(a1 + 48)];
  location = [*(a1 + 40) getTreatmentId];
  if (location)
  {
    objc_storeStrong(&location, location);
  }

  else
  {
    objc_storeStrong(&location, @"__defaultTreatment");
  }

  [v17[0] setTreatmentId:location];
  [v17[0] setWorkflow:*(a1 + 56)];
  v5 = v17[0];
  v6 = [*(a1 + 64) objectForKey:@"model_id"];
  [v5 setModelId:?];
  MEMORY[0x277D82BD8](v6);
  v15 = [*(a1 + 64) objectForKey:@"secondary_model_id"];
  if (v15)
  {
    [v17[0] setSecondaryModelId:v15];
  }

  v14 = [*(a1 + 64) objectForKey:@"startTime"];
  v13 = [*(a1 + 64) objectForKey:@"endTime"];
  if (v14 && v13)
  {
    [v17[0] setStartTime:{objc_msgSend(v14, "unsignedLongLongValue")}];
    [v17[0] setEndTime:{objc_msgSend(v13, "unsignedLongLongValue")}];
  }

  v2 = *(a1 + 72);
  v3 = (*(*(a1 + 80) + 8) + 40);
  v12 = *v3;
  [v2 save:{&v12, v3}];
  objc_storeStrong(v4, v12);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&location, 0);
  objc_storeStrong(v17, 0);
}

+ (void)addWorkflowsFromInflightTable:(id)a3 error:(id *)a4
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v25 = a4;
  v18 = 0;
  v19 = &v18;
  v20 = 838860800;
  v21 = 48;
  v22 = __Block_byref_object_copy__1;
  v23 = __Block_byref_object_dispose__1;
  v24 = 0;
  v17 = +[AMDCoreDataPersistentContainer sharedContainer];
  v16 = [v17 getManagedObjectContext];
  v6 = v16;
  v8 = MEMORY[0x277D85DD0];
  v9 = -1073741824;
  v10 = 0;
  v11 = __51__AMDWorkflow_addWorkflowsFromInflightTable_error___block_invoke;
  v12 = &unk_278CB5A08;
  v13 = MEMORY[0x277D82BE0](location[0]);
  v14 = MEMORY[0x277D82BE0](v16);
  v15[0] = MEMORY[0x277D82BE0](v17);
  v15[1] = &v18;
  [v6 performBlockAndWait:&v8];
  if (v19[5])
  {
    v5 = v19[5];
    v4 = v5;
    *v25 = v5;
  }

  objc_storeStrong(v15, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v17, 0);
  _Block_object_dispose(&v18, 8);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(location, 0);
}

void __51__AMDWorkflow_addWorkflowsFromInflightTable_error___block_invoke(void *a1)
{
  v39 = *MEMORY[0x277D85DE8];
  v37 = a1;
  v36 = a1;
  memset(__b, 0, sizeof(__b));
  obj = MEMORY[0x277D82BE0](a1[4]);
  v31 = [obj countByEnumeratingWithState:__b objects:v38 count:16];
  if (v31)
  {
    v26 = *__b[2];
    v27 = 0;
    v28 = v31;
    while (1)
    {
      v25 = v27;
      if (*__b[2] != v26)
      {
        objc_enumerationMutation(obj);
      }

      v35 = *(__b[1] + 8 * v27);
      v4 = MEMORY[0x277CBE408];
      v6 = +[AMDWorkflow entity];
      v5 = [v6 name];
      v1 = a1[5];
      v33 = [v4 insertNewObjectForEntityForName:? inManagedObjectContext:?];
      MEMORY[0x277D82BD8](v5);
      MEMORY[0x277D82BD8](v6);
      v7 = v33;
      v8 = [v35 objectForKey:@"domain"];
      [v7 setDomain:{objc_msgSend(v8, "shortValue")}];
      MEMORY[0x277D82BD8](v8);
      v9 = v33;
      v10 = [v35 objectForKey:@"useCaseId"];
      [v9 setUseCaseId:?];
      MEMORY[0x277D82BD8](v10);
      v11 = v33;
      v12 = [v35 objectForKey:@"treatmentId"];
      [v11 setTreatmentId:?];
      MEMORY[0x277D82BD8](v12);
      v13 = v33;
      v14 = [v35 objectForKey:@"workflow"];
      [v13 setWorkflow:?];
      MEMORY[0x277D82BD8](v14);
      v15 = v33;
      v16 = [v35 objectForKey:@"startTime"];
      [v15 setStartTime:{objc_msgSend(v16, "longLongValue")}];
      MEMORY[0x277D82BD8](v16);
      v17 = v33;
      v18 = [v35 objectForKey:@"endTime"];
      [v17 setEndTime:{objc_msgSend(v18, "longLongValue")}];
      MEMORY[0x277D82BD8](v18);
      v19 = v33;
      v20 = [v35 objectForKey:@"modelId"];
      [v19 setModelId:?];
      MEMORY[0x277D82BD8](v20);
      v21 = v33;
      v22 = [v35 objectForKey:@"callUUID"];
      [v21 setCallUUID:?];
      MEMORY[0x277D82BD8](v22);
      v23 = v33;
      v24 = [v35 objectForKey:@"secondaryModelId"];
      [v23 setSecondaryModelId:?];
      MEMORY[0x277D82BD8](v24);
      objc_storeStrong(&v33, 0);
      ++v27;
      if (v25 + 1 >= v28)
      {
        v27 = 0;
        v28 = [obj countByEnumeratingWithState:__b objects:v38 count:16];
        if (!v28)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x277D82BD8](obj);
  v2 = a1[6];
  v3 = (*(a1[7] + 8) + 40);
  v32 = *v3;
  [v2 save:&v32];
  objc_storeStrong(v3, v32);
  *MEMORY[0x277D85DE8];
}

+ (id)deleteWorkflowsForModelId:(id)a3 error:(id *)a4
{
  v9 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = v9;
  v6 = [MEMORY[0x277CCAC30] predicateWithFormat:@"modelId == %d", location[0]];
  v7 = [v5 deleteWithPredicate:? error:?];
  MEMORY[0x277D82BD8](v6);
  objc_storeStrong(location, 0);

  return v7;
}

+ (id)deleteWorkflowsForDomain:(int64_t)a3 error:(id *)a4
{
  v6 = [MEMORY[0x277CCAC30] predicateWithFormat:@"domain == %d", a3];
  v7 = [a1 deleteWithPredicate:? error:?];
  MEMORY[0x277D82BD8](v6);

  return v7;
}

+ (id)deleteWorkflowForDomain:(int64_t)a3 withModelId:(id)a4 withSecondaryModelId:(id)a5 andUsecaseId:(id)a6 andTreatmentId:(id)a7 error:(id *)a8
{
  v24 = a1;
  v23 = a2;
  v22 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  v20 = 0;
  objc_storeStrong(&v20, a5);
  v19 = 0;
  objc_storeStrong(&v19, a6);
  v18 = 0;
  objc_storeStrong(&v18, a7);
  v17 = a8;
  v16 = 0;
  if (v20)
  {
    v8 = [MEMORY[0x277CCAC30] predicateWithFormat:@"domain == %d && modelId == %@ && secondaryModelId == %@ && useCaseId == %@ && treatmentId == %@", v22, location, v20, v19, v18];
  }

  else
  {
    v8 = [MEMORY[0x277CCAC30] predicateWithFormat:@"domain == %d && modelId == %@ && useCaseId == %@ && treatmentId == %@", v22, location, v19, v18];
  }

  v9 = v16;
  v16 = v8;
  MEMORY[0x277D82BD8](v9);
  v11 = [v24 deleteWithPredicate:v16 error:v17];
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&location, 0);

  return v11;
}

+ (id)deleteWorkflowsForDomain:(int64_t)a3 andTreatmentId:(id)a4 andUseCaseId:(id)a5 error:(id *)a6
{
  v15 = a1;
  v14 = a2;
  v13 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  v11 = 0;
  objc_storeStrong(&v11, a5);
  v10[1] = a6;
  v10[0] = [MEMORY[0x277CCAC30] predicateWithFormat:@"domain == %d && treatmentId == %@ && useCaseId == %@", v13, location, v11];
  v9 = [v15 deleteWithPredicate:v10[0] error:a6];
  objc_storeStrong(v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&location, 0);

  return v9;
}

+ (id)deleteWithPredicate:(id)a3 error:(id *)a4
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v34 = a4;
  v27 = 0;
  v28 = &v27;
  v29 = 838860800;
  v30 = 48;
  v31 = __Block_byref_object_copy__1;
  v32 = __Block_byref_object_dispose__1;
  v33 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 838860800;
  v23 = 48;
  v24 = __Block_byref_object_copy__1;
  v25 = __Block_byref_object_dispose__1;
  v26 = 0;
  v19 = +[AMDCoreDataPersistentContainer sharedContainer];
  v18 = [v19 getManagedObjectContext];
  v8 = v18;
  v10 = MEMORY[0x277D85DD0];
  v11 = -1073741824;
  v12 = 0;
  v13 = __41__AMDWorkflow_deleteWithPredicate_error___block_invoke;
  v14 = &unk_278CB5A58;
  v15 = MEMORY[0x277D82BE0](location[0]);
  v16 = MEMORY[0x277D82BE0](v18);
  v17[1] = &v27;
  v17[0] = MEMORY[0x277D82BE0](v19);
  v17[2] = &v20;
  [v8 performBlockAndWait:&v10];
  if (v28[5])
  {
    v7 = v28[5];
    v4 = v7;
    *v34 = v7;
    v36 = 0;
  }

  else
  {
    v36 = MEMORY[0x277D82BE0](v21[5]);
  }

  objc_storeStrong(v17, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v19, 0);
  _Block_object_dispose(&v20, 8);
  objc_storeStrong(&v26, 0);
  _Block_object_dispose(&v27, 8);
  objc_storeStrong(&v33, 0);
  objc_storeStrong(location, 0);
  v5 = v36;

  return v5;
}

void __41__AMDWorkflow_deleteWithPredicate_error___block_invoke(void *a1)
{
  v18[2] = a1;
  v18[1] = a1;
  v9 = MEMORY[0x277CBE428];
  v11 = +[AMDWorkflow entity];
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

+ (id)fetchWithPredicates:(id)a3 error:(id *)a4
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v33 = a4;
  v26 = 0;
  v27 = &v26;
  v28 = 838860800;
  v29 = 48;
  v30 = __Block_byref_object_copy__1;
  v31 = __Block_byref_object_dispose__1;
  v32 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 838860800;
  v22 = 48;
  v23 = __Block_byref_object_copy__1;
  v24 = __Block_byref_object_dispose__1;
  v25 = 0;
  v18 = +[AMDCoreDataPersistentContainer sharedContainer];
  v17 = [v18 getManagedObjectContext];
  v8 = v17;
  v10 = MEMORY[0x277D85DD0];
  v11 = -1073741824;
  v12 = 0;
  v13 = __41__AMDWorkflow_fetchWithPredicates_error___block_invoke;
  v14 = &unk_278CB5AA8;
  v15 = MEMORY[0x277D82BE0](location[0]);
  v16[1] = &v19;
  v16[0] = MEMORY[0x277D82BE0](v17);
  v16[2] = &v26;
  [v8 performBlockAndWait:&v10];
  if (v27[5])
  {
    v7 = v27[5];
    v4 = v7;
    *v33 = v7;
    v35 = 0;
  }

  else
  {
    v35 = MEMORY[0x277D82BE0](v20[5]);
  }

  objc_storeStrong(v16, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  _Block_object_dispose(&v19, 8);
  objc_storeStrong(&v25, 0);
  _Block_object_dispose(&v26, 8);
  objc_storeStrong(&v32, 0);
  objc_storeStrong(location, 0);
  v5 = v35;

  return v5;
}

void __41__AMDWorkflow_fetchWithPredicates_error___block_invoke(void *a1)
{
  v12[2] = a1;
  v12[1] = a1;
  v7 = MEMORY[0x277CBE428];
  v9 = +[AMDWorkflow entity];
  v8 = [v9 name];
  v12[0] = [v7 fetchRequestWithEntityName:?];
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v9);
  if (a1[4])
  {
    v6 = [MEMORY[0x277CCA920] andPredicateWithSubpredicates:a1[4]];
    [v12[0] setPredicate:?];
    MEMORY[0x277D82BD8](v6);
  }

  [v12[0] setResultType:2];
  v1 = a1[5];
  location = (*(a1[7] + 8) + 40);
  v11 = *location;
  v5 = [v1 executeFetchRequest:v12[0] error:&v11];
  objc_storeStrong(location, v11);
  v2 = *(a1[6] + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = v5;
  MEMORY[0x277D82BD8](v3);
  objc_storeStrong(v12, 0);
}

+ (id)getWorkflowsForDomain:(int64_t)a3 andTreatmentId:(id)a4 andUseCaseId:(id)a5 error:(id *)a6
{
  v19 = a1;
  v18 = a2;
  v17 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  v15 = 0;
  objc_storeStrong(&v15, a5);
  v14 = a6;
  v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v11 = [MEMORY[0x277CCAC30] predicateWithFormat:@"domain == %d", v17];
  [v13 addObject:?];
  MEMORY[0x277D82BD8](v11);
  v12 = [MEMORY[0x277CCAC30] predicateWithFormat:@"useCaseId == %@", v15];
  [v13 addObject:?];
  MEMORY[0x277D82BD8](v12);
  if (location)
  {
    v8 = [MEMORY[0x277CCAC30] predicateWithFormat:@"treatmentId == %@ || treatmentId == %@", @"__defaultTreatment", location];
    [v13 addObject:?];
    MEMORY[0x277D82BD8](v8);
  }

  v7 = [v19 fetchWithPredicates:v13 error:v14];
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&location, 0);

  return v7;
}

+ (id)getWorkflowsForDomain:(int64_t)a3 error:(id *)a4
{
  v12 = a1;
  v11 = a2;
  v10 = a3;
  v9 = a4;
  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v5 = v8;
  v6 = [MEMORY[0x277CCAC30] predicateWithFormat:@"domain == %d", v10];
  [v5 addObject:?];
  MEMORY[0x277D82BD8](v6);
  v7 = [v12 fetchWithPredicates:v8 error:v9];
  objc_storeStrong(&v8, 0);

  return v7;
}

+ (id)getAllWorkflowsForDomain:(int64_t)a3 withUseCaseId:(id)a4 error:(id *)a5
{
  v17 = a1;
  v16 = a2;
  v15 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  v13 = a5;
  v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v7 = v12;
  v8 = [MEMORY[0x277CCAC30] predicateWithFormat:@"domain == %d", v15];
  [v7 addObject:?];
  MEMORY[0x277D82BD8](v8);
  v9 = v12;
  v10 = [MEMORY[0x277CCAC30] predicateWithFormat:@"useCaseId == %@", location];
  [v9 addObject:?];
  MEMORY[0x277D82BD8](v10);
  v11 = [v17 fetchWithPredicates:v12 error:v13];
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&location, 0);

  return v11;
}

+ (id)getWorkflowsForModelId:(id)a3 error:(id *)a4
{
  v12 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v10 = a4;
  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = v9;
  v7 = [MEMORY[0x277CCAC30] predicateWithFormat:@"modelId == %@ || secondaryModelId == %@", location[0], location[0]];
  [v6 addObject:?];
  MEMORY[0x277D82BD8](v7);
  v8 = [v12 fetchWithPredicates:v9 error:v10];
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);

  return v8;
}

+ (id)getAllActiveWorkflowsForDomain:(int64_t)a3 andUseCaseId:(id)a4 error:(id *)a5
{
  v32 = *MEMORY[0x277D85DE8];
  v28 = a1;
  v27 = a2;
  v26 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  v24 = a5;
  v23 = [AMDWorkflow getAllWorkflowsForDomain:v26 withUseCaseId:location error:a5];
  if (*a5)
  {
    v29 = 0;
    v22 = 1;
  }

  else if (v23 && [v23 count])
  {
    v18 = objc_alloc_init(MEMORY[0x277CBEB18]);
    memset(__b, 0, sizeof(__b));
    v11 = MEMORY[0x277D82BE0](v23);
    v12 = [v11 countByEnumeratingWithState:__b objects:v30 count:16];
    if (v12)
    {
      v8 = *__b[2];
      v9 = 0;
      v10 = v12;
      while (1)
      {
        v7 = v9;
        if (*__b[2] != v8)
        {
          objc_enumerationMutation(v11);
        }

        v17 = *(__b[1] + 8 * v9);
        v15 = [v17 objectForKey:@"workflow"];
        v14 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v15 options:4 error:v24];
        if (*v24)
        {
          v29 = 0;
          v22 = 1;
        }

        else
        {
          [v18 addObject:v14];
          v22 = 0;
        }

        objc_storeStrong(&v14, 0);
        objc_storeStrong(&v15, 0);
        if (v22)
        {
          break;
        }

        ++v9;
        if (v7 + 1 >= v10)
        {
          v9 = 0;
          v10 = [v11 countByEnumeratingWithState:__b objects:v30 count:16];
          if (!v10)
          {
            goto LABEL_18;
          }
        }
      }
    }

    else
    {
LABEL_18:
      v22 = 0;
    }

    MEMORY[0x277D82BD8](v11);
    if (!v22)
    {
      v29 = MEMORY[0x277D82BE0](v18);
      v22 = 1;
    }

    objc_storeStrong(&v18, 0);
  }

  else
  {
    v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"No workflows for useCase '%@'", location];
    oslog = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v31, v21);
      _os_log_error_impl(&dword_240CB9000, oslog, type, "%@", v31, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    [AMDFrameworkMetrics log:v21 withKey:@"getWorkflowFailure" atVerbosity:0];
    v29 = 0;
    v22 = 1;
    objc_storeStrong(&v21, 0);
  }

  objc_storeStrong(&v23, 0);
  objc_storeStrong(&location, 0);
  *MEMORY[0x277D85DE8];
  v5 = v29;

  return v5;
}

+ (id)fetchAllWorkflows:(id *)a3
{
  v32 = a1;
  v31 = a2;
  v30 = a3;
  v23 = 0;
  v24 = &v23;
  v25 = 838860800;
  v26 = 48;
  v27 = __Block_byref_object_copy__1;
  v28 = __Block_byref_object_dispose__1;
  v29 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 838860800;
  v19 = 48;
  v20 = __Block_byref_object_copy__1;
  v21 = __Block_byref_object_dispose__1;
  v22 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v8 = +[AMDCoreDataPersistentContainer sharedContainer];
  v15 = [v8 getManagedObjectContext];
  MEMORY[0x277D82BD8](v8);
  v7 = v15;
  v9 = MEMORY[0x277D85DD0];
  v10 = -1073741824;
  v11 = 0;
  v12 = __33__AMDWorkflow_fetchAllWorkflows___block_invoke;
  v13 = &unk_278CB5D20;
  v14[0] = MEMORY[0x277D82BE0](v15);
  v14[1] = &v23;
  v14[2] = &v16;
  [v7 performBlockAndWait:&v9];
  if (v24[5])
  {
    v6 = v24[5];
    v3 = v6;
    *v30 = v6;
    v33 = 0;
  }

  else
  {
    v33 = MEMORY[0x277D82BE0](v17[5]);
  }

  objc_storeStrong(v14, 0);
  objc_storeStrong(&v15, 0);
  _Block_object_dispose(&v16, 8);
  objc_storeStrong(&v22, 0);
  _Block_object_dispose(&v23, 8);
  objc_storeStrong(&v29, 0);
  v4 = v33;

  return v4;
}

void __33__AMDWorkflow_fetchAllWorkflows___block_invoke(void *a1)
{
  v32 = *MEMORY[0x277D85DE8];
  v30[2] = a1;
  v30[1] = a1;
  v12 = MEMORY[0x277CBE428];
  v14 = +[AMDWorkflow entity];
  v13 = [v14 name];
  v30[0] = [v12 fetchRequestWithEntityName:?];
  MEMORY[0x277D82BD8](v13);
  MEMORY[0x277D82BD8](v14);
  v1 = a1[4];
  location = (*(a1[5] + 8) + 40);
  v28 = *location;
  v17 = [v1 executeFetchRequest:v30[0] error:&v28];
  objc_storeStrong(location, v28);
  v29 = v17;
  memset(__b, 0, sizeof(__b));
  obj = MEMORY[0x277D82BE0](v17);
  v19 = [obj countByEnumeratingWithState:__b objects:v31 count:16];
  if (v19)
  {
    v9 = *__b[2];
    v10 = 0;
    v11 = v19;
    while (1)
    {
      v8 = v10;
      if (*__b[2] != v9)
      {
        objc_enumerationMutation(obj);
      }

      v27 = *(__b[1] + 8 * v10);
      v4 = MEMORY[0x277CCAAA0];
      v7 = [v27 workflow];
      v5 = (*(a1[5] + 8) + 40);
      v24 = *v5;
      v6 = [v4 JSONObjectWithData:? options:? error:?];
      objc_storeStrong(v5, v24);
      v25 = v6;
      MEMORY[0x277D82BD8](v7);
      if (*(*(a1[5] + 8) + 40))
      {
        oslog = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
        type = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
        {
          log = oslog;
          v3 = type;
          __os_log_helper_16_0_0(v21);
          _os_log_error_impl(&dword_240CB9000, log, v3, "Workflow could not be deserialized", v21, 2u);
        }

        objc_storeStrong(&oslog, 0);
        v20 = 1;
      }

      else
      {
        [*(*(a1[6] + 8) + 40) addObject:v25];
        v20 = 0;
      }

      objc_storeStrong(&v25, 0);
      if (v20)
      {
        break;
      }

      ++v10;
      if (v8 + 1 >= v11)
      {
        v10 = 0;
        v11 = [obj countByEnumeratingWithState:__b objects:v31 count:16];
        if (!v11)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x277D82BD8](obj);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(v30, 0);
  *MEMORY[0x277D85DE8];
}

+ (id)getCurrentWorkflowForDomain:(int64_t)a3 andTreatmentId:(id)a4 andUseCaseId:(id)a5 error:(id *)a6
{
  v56 = *MEMORY[0x277D85DE8];
  v51 = a1;
  v50 = a2;
  v49 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  v47 = 0;
  objc_storeStrong(&v47, a5);
  v46 = a6;
  v45 = [v51 getWorkflowsForDomain:v49 andTreatmentId:location andUseCaseId:v47 error:a6];
  if (!*a6 && v45 && [v45 count])
  {
    v43 = 0;
    memset(__b, 0, sizeof(__b));
    v24 = MEMORY[0x277D82BE0](v45);
    v25 = [v24 countByEnumeratingWithState:__b objects:v55 count:16];
    if (v25)
    {
      v21 = *__b[2];
      v22 = 0;
      v23 = v25;
      while (1)
      {
        v20 = v22;
        if (*__b[2] != v21)
        {
          objc_enumerationMutation(v24);
        }

        v42 = *(__b[1] + 8 * v22);
        v40 = [v42 objectForKey:@"treatmentId"];
        v16 = [v42 objectForKey:@"startTime"];
        v17 = [v16 longLongValue];
        MEMORY[0x277D82BD8](v16);
        v39 = v17;
        v18 = [v42 objectForKey:@"endTime"];
        v19 = [v18 longLongValue];
        MEMORY[0x277D82BD8](v18);
        v38 = v19;
        if ([v40 isEqual:@"__defaultTreatment"])
        {
          if (!v43)
          {
            objc_storeStrong(&v43, v42);
          }
        }

        else
        {
          v14 = [MEMORY[0x277CBEAA8] date];
          [v14 timeIntervalSince1970];
          v15 = v6;
          MEMORY[0x277D82BD8](v14);
          v37 = v15;
          if (v15 >= v39 && v37 <= v38)
          {
            objc_storeStrong(&v43, v42);
          }
        }

        objc_storeStrong(&v40, 0);
        ++v22;
        if (v20 + 1 >= v23)
        {
          v22 = 0;
          v23 = [v24 countByEnumeratingWithState:__b objects:v55 count:16];
          if (!v23)
          {
            break;
          }
        }
      }
    }

    MEMORY[0x277D82BD8](v24);
    if (v43)
    {
      v33 = [v43 objectForKey:@"treatmentId"];
      v32 = [v43 objectForKey:@"callUUID"];
      v31 = [v43 objectForKey:@"workflow"];
      v30 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
      v29 = OS_LOG_TYPE_INFO;
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        __os_log_helper_16_2_1_8_64(v53, v33);
        _os_log_impl(&dword_240CB9000, v30, v29, "Treatment chosen: %@", v53, 0xCu);
      }

      objc_storeStrong(&v30, 0);
      v28 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v31 options:4 error:v46];
      v11 = v32;
      v12 = [v47 stringByAppendingString:@"UUID"];
      [AMDFrameworkMetrics log:"log:withKey:atVerbosity:" withKey:v11 atVerbosity:?];
      MEMORY[0x277D82BD8](v12);
      if (*v46)
      {
        v52 = 0;
      }

      else
      {
        v8 = [AMDPair alloc];
        v52 = [(AMDPair *)v8 initWith:v33 and:v28];
      }

      v44 = 1;
      objc_storeStrong(&v28, 0);
      objc_storeStrong(&v31, 0);
      objc_storeStrong(&v32, 0);
      objc_storeStrong(&v33, 0);
    }

    else
    {
      v36 = [MEMORY[0x277CCACA8] stringWithFormat:@"No workflow could be found for the provided usecase: %@", v47];
      oslog = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
      type = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_1_8_64(v54, v36);
        _os_log_error_impl(&dword_240CB9000, oslog, type, "%@", v54, 0xCu);
      }

      objc_storeStrong(&oslog, 0);
      v13 = [AMDError allocError:15 withMessage:v36];
      v7 = v13;
      *v46 = v13;
      v52 = 0;
      v44 = 1;
      objc_storeStrong(&v36, 0);
    }

    objc_storeStrong(&v43, 0);
  }

  else
  {
    v52 = 0;
    v44 = 1;
  }

  objc_storeStrong(&v45, 0);
  objc_storeStrong(&v47, 0);
  objc_storeStrong(&location, 0);
  *MEMORY[0x277D85DE8];
  v9 = v52;

  return v9;
}

+ (id)performWorkflowCleanupForDomain:(int64_t)a3 error:(id *)a4
{
  v56 = *MEMORY[0x277D85DE8];
  v49 = a1;
  v48 = a2;
  v47 = a3;
  v46 = a4;
  v45 = [a1 getWorkflowsForDomain:a3 error:a4];
  if (*v46)
  {
    oslog = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      log = oslog;
      v23 = type;
      v24 = [*v46 localizedDescription];
      v42 = MEMORY[0x277D82BE0](v24);
      __os_log_helper_16_2_1_8_64(v55, v42);
      _os_log_error_impl(&dword_240CB9000, log, v23, "Workflow fetch error: %@", v55, 0xCu);
      MEMORY[0x277D82BD8](v24);
      objc_storeStrong(&v42, 0);
    }

    objc_storeStrong(&oslog, 0);
    v50 = 0;
    v41 = 1;
  }

  else if (v45)
  {
    v16 = [MEMORY[0x277CBEAA8] date];
    [v16 timeIntervalSince1970];
    v17 = v4;
    MEMORY[0x277D82BD8](v16);
    v37 = v17;
    v36 = objc_alloc_init(MEMORY[0x277CBEB18]);
    memset(__b, 0, sizeof(__b));
    obj = MEMORY[0x277D82BE0](v45);
    v19 = [obj countByEnumeratingWithState:__b objects:v54 count:16];
    if (v19)
    {
      v13 = *__b[2];
      v14 = 0;
      v15 = v19;
      while (1)
      {
        v12 = v14;
        if (*__b[2] != v13)
        {
          objc_enumerationMutation(obj);
        }

        v35 = *(__b[1] + 8 * v14);
        v33 = [v35 objectForKey:@"treatmentId"];
        v32 = [v35 objectForKey:@"endTime"];
        if ([v33 isEqualToString:@"__defaultTreatment"])
        {
          v41 = 3;
        }

        else
        {
          v11 = v37;
          if (v11 <= [v32 longLongValue])
          {
            goto LABEL_22;
          }

          v31 = [v35 objectForKey:@"useCaseId"];
          v30 = 0;
          v29 = 0;
          v5 = [v49 deleteWorkflowsForDomain:v47 andTreatmentId:v33 andUseCaseId:v31 error:&v29];
          objc_storeStrong(&v30, v29);
          if (v30)
          {
            v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error deleting workflow with domain: %ld, usecase: %@, treatmentId: %@", v47, v31, v33];
            v27 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
            v26 = OS_LOG_TYPE_ERROR;
            if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
            {
              v9 = v27;
              v10 = v26;
              __os_log_helper_16_2_1_8_64(v53, v28);
              _os_log_error_impl(&dword_240CB9000, v9, v10, "%@", v53, 0xCu);
            }

            objc_storeStrong(&v27, 0);
            [AMDFrameworkMetrics log:v28 withKey:@"treatmentWorkflowDeletionError" atVerbosity:0];
            v41 = 3;
            objc_storeStrong(&v28, 0);
          }

          else
          {
            v51[0] = @"usecase";
            v52[0] = v31;
            v51[1] = @"treatmentId";
            v52[1] = v33;
            v51[2] = @"domain";
            v8 = [MEMORY[0x277CCABB0] numberWithInteger:v47];
            v52[2] = v8;
            v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v52 forKeys:v51 count:3];
            MEMORY[0x277D82BD8](v8);
            [v36 addObject:v25];
            objc_storeStrong(&v25, 0);
            v41 = 0;
          }

          objc_storeStrong(&v30, 0);
          objc_storeStrong(&v31, 0);
          if (!v41)
          {
LABEL_22:
            v41 = 0;
          }
        }

        objc_storeStrong(&v32, 0);
        objc_storeStrong(&v33, 0);
        ++v14;
        if (v12 + 1 >= v15)
        {
          v14 = 0;
          v15 = [obj countByEnumeratingWithState:__b objects:v54 count:16];
          if (!v15)
          {
            break;
          }
        }
      }
    }

    MEMORY[0x277D82BD8](obj);
    v50 = MEMORY[0x277D82BE0](v36);
    v41 = 1;
    objc_storeStrong(&v36, 0);
  }

  else
  {
    v40 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
    v39 = OS_LOG_TYPE_INFO;
    if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
    {
      v20 = v40;
      v21 = v39;
      __os_log_helper_16_0_0(v38);
      _os_log_impl(&dword_240CB9000, v20, v21, "No workflows to cleanup", v38, 2u);
    }

    objc_storeStrong(&v40, 0);
    v50 = 0;
    v41 = 1;
  }

  objc_storeStrong(&v45, 0);
  *MEMORY[0x277D85DE8];
  v6 = v50;

  return v6;
}

@end