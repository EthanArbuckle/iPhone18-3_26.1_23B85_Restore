@interface AMDWorkflowInFlight
+ (id)deleteWithPredicates:(id)a3 error:(id *)a4;
+ (id)deleteWorkflowForDomain:(int64_t)a3 withModelId:(id)a4 withSecondaryModelId:(id)a5 andUsecaseId:(id)a6 andTreatmentId:(id)a7 error:(id *)a8;
+ (id)fetchAllModelIds:(id *)a3;
+ (id)fetchAllWorkflowEntries:(id *)a3;
+ (id)fetchAllWorkflows:(id *)a3;
+ (id)getAllWorkflowsForDomain:(int64_t)a3 withModelId:(id)a4 error:(id *)a5;
+ (id)getAllWorkflowsWithModelId:(id)a3 error:(id *)a4;
+ (id)moveInflightWorkflowsToWorkflows:(id)a3 withDomain:(int64_t)a4 error:(id *)a5;
+ (void)saveWorkflow:(id)a3 forDomain:(int64_t)a4 withCallUUID:(id)a5 error:(id *)a6;
@end

@implementation AMDWorkflowInFlight

+ (id)getAllWorkflowsForDomain:(int64_t)a3 withModelId:(id)a4 error:(id *)a5
{
  v38 = a1;
  v37 = a2;
  v36 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  v34 = a5;
  v27 = 0;
  v28 = &v27;
  v29 = 838860800;
  v30 = 48;
  v31 = __Block_byref_object_copy__10;
  v32 = __Block_byref_object_dispose__10;
  v33 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 838860800;
  v23 = 48;
  v24 = __Block_byref_object_copy__10;
  v25 = __Block_byref_object_dispose__10;
  v26 = 0;
  v10 = +[AMDCoreDataPersistentContainer sharedContainer];
  v19 = [v10 getManagedObjectContext];
  MEMORY[0x277D82BD8](v10);
  v9 = v19;
  v12 = MEMORY[0x277D85DD0];
  v13 = -1073741824;
  v14 = 0;
  v15 = __66__AMDWorkflowInFlight_getAllWorkflowsForDomain_withModelId_error___block_invoke;
  v16 = &unk_278CB62E0;
  v18[3] = v36;
  v17 = MEMORY[0x277D82BE0](location);
  v18[1] = &v20;
  v18[0] = MEMORY[0x277D82BE0](v19);
  v18[2] = &v27;
  [v9 performBlockAndWait:&v12];
  if (v28[5])
  {
    v8 = v28[5];
    v5 = v8;
    *v34 = v8;
    v39 = 0;
  }

  else
  {
    v39 = MEMORY[0x277D82BE0](v21[5]);
  }

  objc_storeStrong(v18, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v19, 0);
  _Block_object_dispose(&v20, 8);
  objc_storeStrong(&v26, 0);
  _Block_object_dispose(&v27, 8);
  objc_storeStrong(&v33, 0);
  objc_storeStrong(&location, 0);
  v6 = v39;

  return v6;
}

void __66__AMDWorkflowInFlight_getAllWorkflowsForDomain_withModelId_error___block_invoke(void *a1)
{
  v18[2] = a1;
  v18[1] = a1;
  v18[0] = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = v18[0];
  v5 = [MEMORY[0x277CCAC30] predicateWithFormat:@"domain == %d", a1[8]];
  [v4 addObject:?];
  MEMORY[0x277D82BD8](v5);
  v6 = v18[0];
  v7 = [MEMORY[0x277CCAC30] predicateWithFormat:@"modelId == %@ || secondaryModelId == %@", a1[4], a1[4]];
  [v6 addObject:?];
  MEMORY[0x277D82BD8](v7);
  v8 = MEMORY[0x277CBE428];
  v10 = +[AMDWorkflowInFlight entity];
  v9 = [v10 name];
  v17 = [v8 fetchRequestWithEntityName:?];
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](v10);
  v11 = v17;
  v12 = [MEMORY[0x277CCA920] andPredicateWithSubpredicates:v18[0]];
  [v11 setPredicate:?];
  MEMORY[0x277D82BD8](v12);
  [v17 setResultType:2];
  v1 = a1[5];
  v13 = (*(a1[7] + 8) + 40);
  v16 = *v13;
  v15 = [v1 executeFetchRequest:v17 error:&v16];
  objc_storeStrong(v13, v16);
  v2 = *(a1[6] + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = v15;
  MEMORY[0x277D82BD8](v3);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(v18, 0);
}

+ (id)getAllWorkflowsWithModelId:(id)a3 error:(id *)a4
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
  v30 = __Block_byref_object_copy__10;
  v31 = __Block_byref_object_dispose__10;
  v32 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 838860800;
  v22 = 48;
  v23 = __Block_byref_object_copy__10;
  v24 = __Block_byref_object_dispose__10;
  v25 = 0;
  v9 = +[AMDCoreDataPersistentContainer sharedContainer];
  v18 = [v9 getManagedObjectContext];
  MEMORY[0x277D82BD8](v9);
  v8 = v18;
  v11 = MEMORY[0x277D85DD0];
  v12 = -1073741824;
  v13 = 0;
  v14 = __56__AMDWorkflowInFlight_getAllWorkflowsWithModelId_error___block_invoke;
  v15 = &unk_278CB5AA8;
  v16 = MEMORY[0x277D82BE0](location[0]);
  v17[1] = &v19;
  v17[0] = MEMORY[0x277D82BE0](v18);
  v17[2] = &v26;
  [v8 performBlockAndWait:&v11];
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

  objc_storeStrong(v17, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v18, 0);
  _Block_object_dispose(&v19, 8);
  objc_storeStrong(&v25, 0);
  _Block_object_dispose(&v26, 8);
  objc_storeStrong(&v32, 0);
  objc_storeStrong(location, 0);
  v5 = v35;

  return v5;
}

void __56__AMDWorkflowInFlight_getAllWorkflowsWithModelId_error___block_invoke(void *a1)
{
  v16[2] = a1;
  v16[1] = a1;
  v16[0] = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = v16[0];
  v5 = [MEMORY[0x277CCAC30] predicateWithFormat:@"modelId == %@ || secondaryModelId == %@", a1[4], a1[4]];
  [v4 addObject:?];
  MEMORY[0x277D82BD8](v5);
  v6 = MEMORY[0x277CBE428];
  v8 = +[AMDWorkflowInFlight entity];
  v7 = [v8 name];
  v15 = [v6 fetchRequestWithEntityName:?];
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v8);
  v9 = v15;
  v10 = [MEMORY[0x277CCA920] andPredicateWithSubpredicates:v16[0]];
  [v9 setPredicate:?];
  MEMORY[0x277D82BD8](v10);
  [v15 setResultType:2];
  v1 = a1[5];
  location = (*(a1[7] + 8) + 40);
  v14 = *location;
  v13 = [v1 executeFetchRequest:v15 error:&v14];
  objc_storeStrong(location, v14);
  v2 = *(a1[6] + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = v13;
  MEMORY[0x277D82BD8](v3);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(v16, 0);
}

+ (id)deleteWithPredicates:(id)a3 error:(id *)a4
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
  v31 = __Block_byref_object_copy__10;
  v32 = __Block_byref_object_dispose__10;
  v33 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 838860800;
  v23 = 48;
  v24 = __Block_byref_object_copy__10;
  v25 = __Block_byref_object_dispose__10;
  v26 = 0;
  v19 = +[AMDCoreDataPersistentContainer sharedContainer];
  v18 = [v19 getManagedObjectContext];
  v8 = v18;
  v10 = MEMORY[0x277D85DD0];
  v11 = -1073741824;
  v12 = 0;
  v13 = __50__AMDWorkflowInFlight_deleteWithPredicates_error___block_invoke;
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

void __50__AMDWorkflowInFlight_deleteWithPredicates_error___block_invoke(void *a1)
{
  v19[2] = a1;
  v19[1] = a1;
  v7 = MEMORY[0x277CBE428];
  v9 = +[AMDWorkflowInFlight entity];
  v8 = [v9 name];
  v19[0] = [v7 fetchRequestWithEntityName:?];
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v9);
  v10 = [MEMORY[0x277CCA920] andPredicateWithSubpredicates:a1[4]];
  [v19[0] setPredicate:?];
  MEMORY[0x277D82BD8](v10);
  v18 = [objc_alloc(MEMORY[0x277CBE360]) initWithFetchRequest:v19[0]];
  [v18 setResultType:2];
  v1 = a1[5];
  location = (*(a1[7] + 8) + 40);
  v16 = *location;
  v12 = [v1 executeRequest:v18 error:&v16];
  objc_storeStrong(location, v16);
  v17 = v12;
  if (*(*(a1[7] + 8) + 40))
  {
    v15 = 1;
  }

  else
  {
    v2 = a1[6];
    v6 = (*(a1[7] + 8) + 40);
    v14 = *v6;
    [v2 save:&v14];
    objc_storeStrong(v6, v14);
    v3 = [v17 result];
    v4 = *(a1[8] + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;
    MEMORY[0x277D82BD8](v5);
    v15 = 0;
  }

  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(v19, 0);
}

+ (id)deleteWorkflowForDomain:(int64_t)a3 withModelId:(id)a4 withSecondaryModelId:(id)a5 andUsecaseId:(id)a6 andTreatmentId:(id)a7 error:(id *)a8
{
  v26[1] = *MEMORY[0x277D85DE8];
  v25 = a1;
  v24 = a2;
  v23 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  v21 = 0;
  objc_storeStrong(&v21, a5);
  v20 = 0;
  objc_storeStrong(&v20, a6);
  v19 = 0;
  objc_storeStrong(&v19, a7);
  v18[1] = a8;
  v18[0] = 0;
  if (v21)
  {
    v8 = [MEMORY[0x277CCAC30] predicateWithFormat:@"domain == %d && modelId == %@ && secondaryModelId == %@ && useCaseId == %@ && treatmentId == %@", v23, location, v21, v20, v19];
  }

  else
  {
    v8 = [MEMORY[0x277CCAC30] predicateWithFormat:@"domain == %d && modelId == %@ && useCaseId == %@ && treatmentId == %@", v23, location, v20, v19];
  }

  v9 = v18[0];
  v18[0] = v8;
  MEMORY[0x277D82BD8](v9);
  v11 = v25;
  v26[0] = v18[0];
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:1];
  v13 = [v11 deleteWithPredicates:? error:?];
  MEMORY[0x277D82BD8](v12);
  objc_storeStrong(v18, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&location, 0);
  *MEMORY[0x277D85DE8];

  return v13;
}

+ (void)saveWorkflow:(id)a3 forDomain:(int64_t)a4 withCallUUID:(id)a5 error:(id *)a6
{
  v52 = *MEMORY[0x277D85DE8];
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v49 = a4;
  v48 = 0;
  objc_storeStrong(&v48, a5);
  v47 = a6;
  v14 = [AMDUseCaseWorkflow alloc];
  v46 = [(AMDUseCaseWorkflow *)v14 initWithDictionary:location[0]];
  if ([v46 isValid])
  {
    v41 = [MEMORY[0x277CCAAA0] dataWithJSONObject:location[0] options:6 error:v47];
    if (*v47)
    {
      v40 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
      v39 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        v10 = [*v47 localizedDescription];
        v38 = MEMORY[0x277D82BE0](v10);
        __os_log_helper_16_2_1_8_64(v51, v38);
        _os_log_error_impl(&dword_240CB9000, v40, v39, "Error serializing in-flight workflow: %@", v51, 0xCu);
        MEMORY[0x277D82BD8](v10);
        objc_storeStrong(&v38, 0);
      }

      objc_storeStrong(&v40, 0);
      v42 = 1;
    }

    else
    {
      v31 = 0;
      v32 = &v31;
      v33 = 838860800;
      v34 = 48;
      v35 = __Block_byref_object_copy__10;
      v36 = __Block_byref_object_dispose__10;
      v37 = 0;
      v30 = +[AMDCoreDataPersistentContainer sharedContainer];
      v29 = [v30 getManagedObjectContext];
      v9 = v29;
      v18 = MEMORY[0x277D85DD0];
      v19 = -1073741824;
      v20 = 0;
      v21 = __65__AMDWorkflowInFlight_saveWorkflow_forDomain_withCallUUID_error___block_invoke;
      v22 = &unk_278CB5CF8;
      v23 = MEMORY[0x277D82BE0](v29);
      v24 = MEMORY[0x277D82BE0](v48);
      v28[2] = v49;
      v25 = MEMORY[0x277D82BE0](location[0]);
      v26 = MEMORY[0x277D82BE0](v46);
      v27 = MEMORY[0x277D82BE0](v41);
      v28[0] = MEMORY[0x277D82BE0](v30);
      v28[1] = &v31;
      [v9 performBlockAndWait:&v18];
      if (v32[5])
      {
        v8 = v32[5];
        v7 = v8;
        *v47 = v8;
      }

      objc_storeStrong(v28, 0);
      objc_storeStrong(&v27, 0);
      objc_storeStrong(&v26, 0);
      objc_storeStrong(&v25, 0);
      objc_storeStrong(&v24, 0);
      objc_storeStrong(&v23, 0);
      objc_storeStrong(&v29, 0);
      objc_storeStrong(&v30, 0);
      _Block_object_dispose(&v31, 8);
      objc_storeStrong(&v37, 0);
      v42 = 0;
    }

    objc_storeStrong(&v41, 0);
  }

  else
  {
    v45 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
    v44 = 16;
    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      log = v45;
      type = v44;
      __os_log_helper_16_0_0(v43);
      _os_log_error_impl(&dword_240CB9000, log, type, "Ignoring invalid in-flight workflow", v43, 2u);
    }

    objc_storeStrong(&v45, 0);
    v11 = [AMDError allocError:19 withMessage:@"Invalid in-flight workflow"];
    v6 = v11;
    *v47 = v11;
    v42 = 1;
  }

  objc_storeStrong(&v46, 0);
  objc_storeStrong(&v48, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

void __65__AMDWorkflowInFlight_saveWorkflow_forDomain_withCallUUID_error___block_invoke(uint64_t a1)
{
  v18[2] = a1;
  v18[1] = a1;
  v7 = MEMORY[0x277CBE408];
  v9 = +[AMDWorkflowInFlight entity];
  v8 = [v9 name];
  v1 = *(a1 + 32);
  v18[0] = [v7 insertNewObjectForEntityForName:? inManagedObjectContext:?];
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v9);
  v10 = [MEMORY[0x277CBEAA8] date];
  [v10 timeIntervalSince1970];
  [v18[0] setCreationTime:v2];
  MEMORY[0x277D82BD8](v10);
  [v18[0] setCallUUID:*(a1 + 40)];
  [v18[0] setDomain:*(a1 + 88)];
  v11 = [*(a1 + 48) objectForKey:@"model_id"];
  [v18[0] setModelId:?];
  MEMORY[0x277D82BD8](v11);
  v12 = [*(a1 + 56) getUseCaseId];
  [v18[0] setUseCaseId:?];
  MEMORY[0x277D82BD8](v12);
  location = [*(a1 + 56) getTreatmentId];
  if (location)
  {
    objc_storeStrong(&location, location);
  }

  else
  {
    objc_storeStrong(&location, @"__defaultTreatment");
  }

  [v18[0] setTreatmentId:location];
  [v18[0] setWorkflow:*(a1 + 64)];
  v16 = [*(a1 + 48) objectForKey:@"start_timestamp"];
  v15 = [*(a1 + 48) objectForKey:@"end_timestamp"];
  if (v16 && v15)
  {
    [v18[0] setStartTime:{objc_msgSend(v16, "unsignedLongLongValue")}];
    [v18[0] setEndTime:{objc_msgSend(v15, "unsignedLongLongValue")}];
  }

  v5 = [*(a1 + 48) objectForKey:{@"secondary_model_id", v18[0]}];
  [v4 setSecondaryModelId:?];
  MEMORY[0x277D82BD8](v5);
  v3 = *(a1 + 72);
  v6 = (*(*(a1 + 80) + 8) + 40);
  v14 = *v6;
  [v3 save:&v14];
  objc_storeStrong(v6, v14);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&location, 0);
  objc_storeStrong(v18, 0);
}

+ (id)moveInflightWorkflowsToWorkflows:(id)a3 withDomain:(int64_t)a4 error:(id *)a5
{
  v92 = *MEMORY[0x277D85DE8];
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v85 = a4;
  v84[1] = a5;
  v84[0] = objc_alloc_init(MEMORY[0x277CBEB38]);
  v83 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v82 = objc_alloc_init(MEMORY[0x277CBEB18]);
  memset(__b, 0, sizeof(__b));
  obj = MEMORY[0x277D82BE0](location[0]);
  v49 = [obj countByEnumeratingWithState:__b objects:v91 count:16];
  if (v49)
  {
    v43 = *__b[2];
    v44 = 0;
    v45 = v49;
    while (1)
    {
      v42 = v44;
      if (*__b[2] != v43)
      {
        objc_enumerationMutation(obj);
      }

      v81 = *(__b[1] + 8 * v44);
      v79 = 0;
      v78 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v77 = [v81 objectForKey:0x2852A8FC8];
      v76 = [v81 objectForKey:0x2852A8E08];
      v75 = [v81 objectForKey:0x2852AAAC8];
      v74 = [v81 objectForKey:0x2852AAB08];
      if (!v74)
      {
        objc_storeStrong(&v74, @"__defaultTreatment");
      }

      v72 = v79;
      v41 = [AMDModel getModelInfo:v76 error:&v72];
      objc_storeStrong(&v79, v72);
      v73 = v41;
      if (v79)
      {
        v39 = v83;
        v40 = [v79 localizedDescription];
        [v39 setObject:? forKey:?];
        MEMORY[0x277D82BD8](v40);
        v71 = 3;
        goto LABEL_39;
      }

      if (!v73)
      {
        v70 = [MEMORY[0x277CCACA8] stringWithFormat:@"Primary model unavailable: %@", v76];
        [v83 setObject:v70 forKey:v77];
        v71 = 3;
        objc_storeStrong(&v70, 0);
        goto LABEL_39;
      }

      if (v75)
      {
        v68 = v79;
        v38 = [AMDModel getModelInfo:v75 error:&v68];
        objc_storeStrong(&v79, v68);
        v69 = v38;
        if (v79)
        {
          v36 = v83;
          v37 = [v79 localizedDescription];
          [v36 setObject:? forKey:?];
          MEMORY[0x277D82BD8](v37);
          v71 = 3;
        }

        else if (v69)
        {
          v71 = 0;
        }

        else
        {
          v67 = [MEMORY[0x277CCACA8] stringWithFormat:@"Secondary model unavailable: %@", v75];
          [v83 setObject:v67 forKey:v77];
          v71 = 3;
          objc_storeStrong(&v67, 0);
        }

        objc_storeStrong(&v69, 0);
        if (v71)
        {
          goto LABEL_39;
        }
      }

      v65 = v79;
      v35 = [AMDWorkflow deleteWorkflowForDomain:v85 withModelId:v76 withSecondaryModelId:v75 andUsecaseId:v77 andTreatmentId:v74 error:&v65];
      objc_storeStrong(&v79, v65);
      v66 = v35;
      if (v79)
      {
        oslog = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
        type = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
        {
          log = oslog;
          v33 = type;
          v29 = v76;
          v30 = v75;
          v31 = v77;
          v34 = [v79 localizedDescription];
          v62 = MEMORY[0x277D82BE0](v34);
          __os_log_helper_16_2_4_8_64_8_64_8_64_8_64(v90, v29, v30, v31, v62);
          _os_log_error_impl(&dword_240CB9000, log, v33, "Entry deletion from workflow table failed for modelId: %@ and secondaryModelId: %@ and usecaseId: %@ with error: %@", v90, 0x2Au);
          MEMORY[0x277D82BD8](v34);
          objc_storeStrong(&v62, 0);
        }

        objc_storeStrong(&oslog, 0);
        v27 = v84[0];
        v28 = [v79 localizedDescription];
        [v27 setObject:? forKey:?];
        MEMORY[0x277D82BD8](v28);
        v71 = 3;
      }

      else
      {
        v89 = v81;
        v26 = [MEMORY[0x277CBEA60] arrayWithObjects:&v89 count:1];
        v61 = v79;
        [AMDWorkflow addWorkflowsFromInflightTable:"addWorkflowsFromInflightTable:error:" error:?];
        objc_storeStrong(&v79, v61);
        MEMORY[0x277D82BD8](v26);
        if (v79)
        {
          v60 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
          v59 = OS_LOG_TYPE_ERROR;
          if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
          {
            v23 = v60;
            v24 = v59;
            v21 = v76;
            v22 = v75;
            v25 = [v79 localizedDescription];
            v58 = MEMORY[0x277D82BE0](v25);
            __os_log_helper_16_2_3_8_64_8_64_8_64(v88, v21, v22, v58);
            _os_log_error_impl(&dword_240CB9000, v23, v24, "Entry addition to workflow table from inflight table failed for modelId: %@ and secondaryModelId: %@ with error: %@", v88, 0x20u);
            MEMORY[0x277D82BD8](v25);
            objc_storeStrong(&v58, 0);
          }

          objc_storeStrong(&v60, 0);
          v19 = v83;
          v20 = [v79 localizedDescription];
          [v19 setObject:? forKey:?];
          MEMORY[0x277D82BD8](v20);
          v71 = 3;
        }

        else
        {
          if (v76 && v75)
          {
            v57 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
            v56 = OS_LOG_TYPE_INFO;
            if (os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
            {
              v17 = v57;
              v18 = v56;
              __os_log_helper_16_0_0(v55);
              _os_log_impl(&dword_240CB9000, v17, v18, "Both primary and secondary model are defined. Skipping inflight cleanup", v55, 2u);
            }

            objc_storeStrong(&v57, 0);
          }

          else
          {
            v53 = v79;
            v16 = [AMDWorkflowInFlight deleteWorkflowForDomain:v85 withModelId:v76 withSecondaryModelId:v75 andUsecaseId:v77 andTreatmentId:v74 error:&v53];
            objc_storeStrong(&v79, v53);
            v54 = v16;
            if (v79)
            {
              v52 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
              v51 = OS_LOG_TYPE_ERROR;
              if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
              {
                v13 = v52;
                v14 = v51;
                v11 = v76;
                v12 = v75;
                v15 = [v79 localizedDescription];
                v50 = MEMORY[0x277D82BE0](v15);
                __os_log_helper_16_2_3_8_64_8_64_8_64(v87, v11, v12, v50);
                _os_log_error_impl(&dword_240CB9000, v13, v14, "Entry deletion from inflight table failed for modelId: %@ and secondaryModelId: %@ with error: %@", v87, 0x20u);
                MEMORY[0x277D82BD8](v15);
                objc_storeStrong(&v50, 0);
              }

              objc_storeStrong(&v52, 0);
              v9 = v83;
              v10 = [v79 localizedDescription];
              [v9 setObject:? forKey:?];
              MEMORY[0x277D82BD8](v10);
              v71 = 3;
            }

            else
            {
              [v78 setObject:v54 forKey:@"oldRemovedInflightTable"];
              v71 = 0;
            }

            objc_storeStrong(&v54, 0);
            if (v71)
            {
              goto LABEL_38;
            }
          }

          [v78 setObject:v66 forKey:@"oldRemovedFromWorkflowTable"];
          [v82 addObject:v81];
          [v83 setObject:v78 forKey:v77];
          v71 = 0;
        }
      }

LABEL_38:
      objc_storeStrong(&v66, 0);
LABEL_39:
      objc_storeStrong(&v73, 0);
      objc_storeStrong(&v74, 0);
      objc_storeStrong(&v75, 0);
      objc_storeStrong(&v76, 0);
      objc_storeStrong(&v77, 0);
      objc_storeStrong(&v78, 0);
      objc_storeStrong(&v79, 0);
      ++v44;
      if (v42 + 1 >= v45)
      {
        v44 = 0;
        v45 = [obj countByEnumeratingWithState:__b objects:v91 count:16];
        if (!v45)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x277D82BD8](obj);
  v6 = v83;
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v82, "count")}];
  [v6 setObject:? forKey:?];
  MEMORY[0x277D82BD8](v7);
  [v84[0] setObject:v82 forKey:@"savedWorkflows"];
  [v84[0] setObject:v83 forKey:@"deletionSummary"];
  v8 = MEMORY[0x277D82BE0](v84[0]);
  v71 = 1;
  objc_storeStrong(&v82, 0);
  objc_storeStrong(&v83, 0);
  objc_storeStrong(v84, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];

  return v8;
}

+ (id)fetchAllWorkflowEntries:(id *)a3
{
  v32 = a1;
  v31 = a2;
  v30 = a3;
  v23 = 0;
  v24 = &v23;
  v25 = 838860800;
  v26 = 48;
  v27 = __Block_byref_object_copy__10;
  v28 = __Block_byref_object_dispose__10;
  v29 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 838860800;
  v19 = 48;
  v20 = __Block_byref_object_copy__10;
  v21 = __Block_byref_object_dispose__10;
  v22 = 0;
  v8 = +[AMDCoreDataPersistentContainer sharedContainer];
  v15 = [v8 getManagedObjectContext];
  MEMORY[0x277D82BD8](v8);
  v7 = v15;
  v9 = MEMORY[0x277D85DD0];
  v10 = -1073741824;
  v11 = 0;
  v12 = __47__AMDWorkflowInFlight_fetchAllWorkflowEntries___block_invoke;
  v13 = &unk_278CB5AD0;
  v14[1] = &v16;
  v14[0] = MEMORY[0x277D82BE0](v15);
  v14[2] = &v23;
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

void __47__AMDWorkflowInFlight_fetchAllWorkflowEntries___block_invoke(void *a1)
{
  v11[2] = a1;
  v11[1] = a1;
  v4 = MEMORY[0x277CBE428];
  v6 = +[AMDWorkflowInFlight entity];
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

+ (id)fetchAllWorkflows:(id *)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v25 = a1;
  v24 = a2;
  v23 = a3;
  v22 = [a1 fetchAllWorkflowEntries:a3];
  v21 = objc_alloc_init(MEMORY[0x277CBEB18]);
  memset(__b, 0, sizeof(__b));
  obj = MEMORY[0x277D82BE0](v22);
  v12 = [obj countByEnumeratingWithState:__b objects:v27 count:16];
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
        objc_enumerationMutation(obj);
      }

      v20 = *(__b[1] + 8 * v9);
      v18 = [v20 objectForKey:0x2852AAB28];
      location = [MEMORY[0x277CCAAA0] JSONObjectWithData:v18 options:4 error:v23];
      if (*v23)
      {
        oslog = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
        type = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
        {
          log = oslog;
          v6 = type;
          __os_log_helper_16_0_0(v14);
          _os_log_error_impl(&dword_240CB9000, log, v6, "Workflow could not be deserialized", v14, 2u);
        }

        objc_storeStrong(&oslog, 0);
        v26 = 0;
        v13 = 1;
      }

      else
      {
        [v21 addObject:location];
        v13 = 0;
      }

      objc_storeStrong(&location, 0);
      objc_storeStrong(&v18, 0);
      if (v13)
      {
        break;
      }

      ++v9;
      if (v7 + 1 >= v10)
      {
        v9 = 0;
        v10 = [obj countByEnumeratingWithState:__b objects:v27 count:16];
        if (!v10)
        {
          goto LABEL_13;
        }
      }
    }
  }

  else
  {
LABEL_13:
    v13 = 0;
  }

  MEMORY[0x277D82BD8](obj);
  if (!v13)
  {
    v26 = MEMORY[0x277D82BE0](v21);
  }

  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v22, 0);
  *MEMORY[0x277D85DE8];
  v3 = v26;

  return v3;
}

+ (id)fetchAllModelIds:(id *)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v20 = a1;
  v19 = a2;
  v18 = a3;
  v17 = [a1 fetchAllWorkflowEntries:a3];
  if (!*v18 && v17)
  {
    v15 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v17, "count")}];
    memset(__b, 0, sizeof(__b));
    obj = MEMORY[0x277D82BE0](v17);
    v10 = [obj countByEnumeratingWithState:__b objects:v22 count:16];
    if (v10)
    {
      v6 = *__b[2];
      v7 = 0;
      v8 = v10;
      while (1)
      {
        v5 = v7;
        if (*__b[2] != v6)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(__b[1] + 8 * v7);
        v12 = [v14 objectForKey:0x2852A9168];
        v11 = [v14 objectForKey:0x2852A8E08];
        [v15 setObject:v12 forKey:v11];
        objc_storeStrong(&v11, 0);
        objc_storeStrong(&v12, 0);
        ++v7;
        if (v5 + 1 >= v8)
        {
          v7 = 0;
          v8 = [obj countByEnumeratingWithState:__b objects:v22 count:16];
          if (!v8)
          {
            break;
          }
        }
      }
    }

    MEMORY[0x277D82BD8](obj);
    v21 = MEMORY[0x277D82BE0](v15);
    v16 = 1;
    objc_storeStrong(&v15, 0);
  }

  else
  {
    v21 = 0;
    v16 = 1;
  }

  objc_storeStrong(&v17, 0);
  *MEMORY[0x277D85DE8];
  v3 = v21;

  return v3;
}

@end