@interface AMDColdstartURL
+ (id)deleteAllColdstartUrls:(id *)urls;
+ (id)deleteWithPredicate:(id)predicate error:(id *)error;
+ (id)fetchAll:(id *)all;
+ (id)getColdstartURLForModel:(id)model error:(id *)error;
+ (id)getCurrentURLInfoByModelId;
+ (void)deleteColdstartURLs:(id)ls error:(id *)error;
+ (void)saveColdstartURL:(id)l error:(id *)error;
@end

@implementation AMDColdstartURL

+ (id)getColdstartURLForModel:(id)model error:(id *)error
{
  v42 = *MEMORY[0x277D85DE8];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, model);
  errorCopy = error;
  v31 = 0;
  v32 = &v31;
  v33 = 838860800;
  v34 = 48;
  v35 = __Block_byref_object_copy__3;
  v36 = __Block_byref_object_dispose__3;
  v37 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 838860800;
  v27 = 48;
  v28 = __Block_byref_object_copy__3;
  v29 = __Block_byref_object_dispose__3;
  v30 = 0;
  v11 = +[AMDCoreDataPersistentContainer sharedContainer];
  getManagedObjectContext = [v11 getManagedObjectContext];
  MEMORY[0x277D82BD8](v11);
  v10 = getManagedObjectContext;
  v16 = MEMORY[0x277D85DD0];
  v17 = -1073741824;
  v18 = 0;
  v19 = __49__AMDColdstartURL_getColdstartURLForModel_error___block_invoke;
  v20 = &unk_278CB5A80;
  v21 = MEMORY[0x277D82BE0](location[0]);
  v22[0] = MEMORY[0x277D82BE0](getManagedObjectContext);
  v22[1] = &v31;
  v22[2] = &v24;
  [v10 performBlockAndWait:&v16];
  if (v32[5])
  {
    v9 = v32[5];
    v4 = v9;
    *errorCopy = v9;
    oslog = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      v8 = location[0];
      localizedDescription = [*errorCopy localizedDescription];
      v13 = MEMORY[0x277D82BE0](localizedDescription);
      __os_log_helper_16_2_2_8_64_8_64(v41, v8, v13);
      _os_log_error_impl(&dword_240CB9000, oslog, type, "Error fetching coldstart urls for model: %@ %@", v41, 0x16u);
      MEMORY[0x277D82BD8](localizedDescription);
      objc_storeStrong(&v13, 0);
    }

    objc_storeStrong(&oslog, 0);
    v40 = 0;
  }

  else
  {
    v40 = MEMORY[0x277D82BE0](v25[5]);
  }

  objc_storeStrong(v22, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&getManagedObjectContext, 0);
  _Block_object_dispose(&v24, 8);
  objc_storeStrong(&v30, 0);
  _Block_object_dispose(&v31, 8);
  objc_storeStrong(&v37, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  v5 = v40;

  return v5;
}

void __49__AMDColdstartURL_getColdstartURLForModel_error___block_invoke(void *a1)
{
  v16[2] = a1;
  v16[1] = a1;
  v5 = MEMORY[0x277CBE428];
  v7 = +[AMDColdstartURL entity];
  v6 = [v7 name];
  v16[0] = [v5 fetchRequestWithEntityName:?];
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v7);
  v15 = [MEMORY[0x277CCAC30] predicateWithFormat:@"modelId == %@", a1[4]];
  [v16[0] setPredicate:v15];
  v1 = a1[5];
  location = (*(a1[6] + 8) + 40);
  v13 = *location;
  v9 = [v1 executeFetchRequest:v16[0] error:&v13];
  objc_storeStrong(location, v13);
  v14 = v9;
  if (!*(*(a1[6] + 8) + 40) && v14)
  {
    v11 = [v14 firstObject];
    if (v11)
    {
      v2 = [v11 url];
      v3 = *(a1[7] + 8);
      v4 = *(v3 + 40);
      *(v3 + 40) = v2;
      MEMORY[0x277D82BD8](v4);
    }

    objc_storeStrong(&v11, 0);
    v12 = 0;
  }

  else
  {
    v12 = 1;
  }

  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(v16, 0);
}

+ (id)getCurrentURLInfoByModelId
{
  v24 = *MEMORY[0x277D85DE8];
  v21[2] = self;
  v21[1] = a2;
  v21[0] = 0;
  v19 = 0;
  v14 = [AMDColdstartURL fetchAll:&v19];
  objc_storeStrong(v21, v19);
  v20 = v14;
  if (v21[0])
  {
    v22 = MEMORY[0x277D82BE0](MEMORY[0x277CBEC10]);
    v18 = 1;
  }

  else
  {
    v11 = objc_alloc(MEMORY[0x277CBEB38]);
    v17 = [v11 initWithCapacity:{objc_msgSend(v20, "count")}];
    memset(__b, 0, sizeof(__b));
    obj = MEMORY[0x277D82BE0](v20);
    v13 = [obj countByEnumeratingWithState:__b objects:v23 count:16];
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

        v16 = *(__b[1] + 8 * v9);
        v5 = v17;
        v4 = v16;
        v6 = [v16 objectForKey:@"modelId"];
        [v5 setObject:v4 forKey:?];
        MEMORY[0x277D82BD8](v6);
        ++v9;
        if (v7 + 1 >= v10)
        {
          v9 = 0;
          v10 = [obj countByEnumeratingWithState:__b objects:v23 count:16];
          if (!v10)
          {
            break;
          }
        }
      }
    }

    MEMORY[0x277D82BD8](obj);
    v22 = MEMORY[0x277D82BE0](v17);
    v18 = 1;
    objc_storeStrong(&v17, 0);
  }

  objc_storeStrong(&v20, 0);
  objc_storeStrong(v21, 0);
  *MEMORY[0x277D85DE8];
  v2 = v22;

  return v2;
}

+ (id)fetchAll:(id *)all
{
  v39 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v35 = a2;
  allCopy = all;
  v27 = 0;
  v28 = &v27;
  v29 = 838860800;
  v30 = 48;
  v31 = __Block_byref_object_copy__3;
  v32 = __Block_byref_object_dispose__3;
  v33 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 838860800;
  v23 = 48;
  v24 = __Block_byref_object_copy__3;
  v25 = __Block_byref_object_dispose__3;
  v26 = 0;
  v9 = +[AMDCoreDataPersistentContainer sharedContainer];
  getManagedObjectContext = [v9 getManagedObjectContext];
  MEMORY[0x277D82BD8](v9);
  v8 = getManagedObjectContext;
  v13 = MEMORY[0x277D85DD0];
  v14 = -1073741824;
  v15 = 0;
  v16 = __28__AMDColdstartURL_fetchAll___block_invoke;
  v17 = &unk_278CB5AD0;
  v18[1] = &v20;
  v18[0] = MEMORY[0x277D82BE0](getManagedObjectContext);
  v18[2] = &v27;
  [v8 performBlockAndWait:&v13];
  if (v28[5])
  {
    v7 = v28[5];
    v3 = v7;
    *allCopy = v7;
    oslog = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      localizedDescription = [*allCopy localizedDescription];
      location = MEMORY[0x277D82BE0](localizedDescription);
      __os_log_helper_16_2_1_8_64(v38, location);
      _os_log_error_impl(&dword_240CB9000, oslog, type, "Error fetching all the coldstart urls. %@", v38, 0xCu);
      MEMORY[0x277D82BD8](localizedDescription);
      objc_storeStrong(&location, 0);
    }

    objc_storeStrong(&oslog, 0);
    v37 = 0;
  }

  else
  {
    v37 = MEMORY[0x277D82BE0](v21[5]);
  }

  objc_storeStrong(v18, 0);
  objc_storeStrong(&getManagedObjectContext, 0);
  _Block_object_dispose(&v20, 8);
  objc_storeStrong(&v26, 0);
  _Block_object_dispose(&v27, 8);
  objc_storeStrong(&v33, 0);
  *MEMORY[0x277D85DE8];
  v4 = v37;

  return v4;
}

void __28__AMDColdstartURL_fetchAll___block_invoke(void *a1)
{
  v11[2] = a1;
  v11[1] = a1;
  v4 = MEMORY[0x277CBE428];
  v6 = +[AMDColdstartURL entity];
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

+ (void)deleteColdstartURLs:(id)ls error:(id *)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, ls);
  errorCopy = error;
  v17 = 0;
  v18 = &v17;
  v19 = 838860800;
  v20 = 48;
  v21 = __Block_byref_object_copy__3;
  v22 = __Block_byref_object_dispose__3;
  v23 = 0;
  v16 = +[AMDCoreDataPersistentContainer sharedContainer];
  getManagedObjectContext = [v16 getManagedObjectContext];
  v6 = getManagedObjectContext;
  v8 = MEMORY[0x277D85DD0];
  v9 = -1073741824;
  v10 = 0;
  v11 = __45__AMDColdstartURL_deleteColdstartURLs_error___block_invoke;
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

void __45__AMDColdstartURL_deleteColdstartURLs_error___block_invoke(void *a1)
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

+ (void)saveColdstartURL:(id)l error:(id *)error
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, l);
  errorCopy = error;
  v18 = 0;
  v19 = &v18;
  v20 = 838860800;
  v21 = 48;
  v22 = __Block_byref_object_copy__3;
  v23 = __Block_byref_object_dispose__3;
  v24 = 0;
  v17 = +[AMDCoreDataPersistentContainer sharedContainer];
  getManagedObjectContext = [v17 getManagedObjectContext];
  v6 = getManagedObjectContext;
  v8 = MEMORY[0x277D85DD0];
  v9 = -1073741824;
  v10 = 0;
  v11 = __42__AMDColdstartURL_saveColdstartURL_error___block_invoke;
  v12 = &unk_278CB5DD8;
  v13 = MEMORY[0x277D82BE0](getManagedObjectContext);
  v14 = MEMORY[0x277D82BE0](location[0]);
  v15[1] = &v18;
  v15[0] = MEMORY[0x277D82BE0](v17);
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

void __42__AMDColdstartURL_saveColdstartURL_error___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v19[2] = a1;
  v19[1] = a1;
  v7 = MEMORY[0x277CBE408];
  v9 = +[AMDColdstartURL entity];
  v8 = [v9 name];
  v1 = *(a1 + 32);
  v19[0] = [v7 insertNewObjectForEntityForName:? inManagedObjectContext:?];
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v9);
  v18 = [*(a1 + 40) objectForKey:@"modelId"];
  v17 = [*(a1 + 40) objectForKey:@"url"];
  v16 = [*(a1 + 40) objectForKey:@"version"];
  if (v18 && v17 && v16)
  {
    [v19[0] setModelId:v18];
    [v19[0] setUrl:v17];
    [v19[0] setVersion:v16];
    v5 = *(a1 + 48);
    v6 = (*(*(a1 + 56) + 8) + 40);
    v11 = *v6;
    [v5 save:&v11];
    objc_storeStrong(v6, v11);
    v12 = 0;
  }

  else
  {
    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"Incomplete coldstart info"];
    location = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
    v13 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(location, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v20, v15);
      _os_log_error_impl(&dword_240CB9000, location, v13, "%@", v20, 0xCu);
    }

    objc_storeStrong(&location, 0);
    v2 = [AMDError allocError:15 withMessage:v15];
    v3 = *(*(a1 + 56) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;
    MEMORY[0x277D82BD8](v4);
    v12 = 1;
    objc_storeStrong(&v15, 0);
  }

  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(v19, 0);
  *MEMORY[0x277D85DE8];
}

+ (id)deleteAllColdstartUrls:(id *)urls
{
  selfCopy = self;
  v32 = a2;
  urlsCopy = urls;
  v24 = 0;
  v25 = &v24;
  v26 = 838860800;
  v27 = 48;
  v28 = __Block_byref_object_copy__3;
  v29 = __Block_byref_object_dispose__3;
  v30 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 838860800;
  v20 = 48;
  v21 = __Block_byref_object_copy__3;
  v22 = __Block_byref_object_dispose__3;
  v23 = 0;
  v16 = +[AMDCoreDataPersistentContainer sharedContainer];
  getManagedObjectContext = [v16 getManagedObjectContext];
  v7 = getManagedObjectContext;
  v8 = MEMORY[0x277D85DD0];
  v9 = -1073741824;
  v10 = 0;
  v11 = __42__AMDColdstartURL_deleteAllColdstartUrls___block_invoke;
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

void __42__AMDColdstartURL_deleteAllColdstartUrls___block_invoke(void *a1)
{
  v18[2] = a1;
  v18[1] = a1;
  v7 = MEMORY[0x277CBE428];
  v9 = +[AMDColdstartURL entity];
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
  v31 = __Block_byref_object_copy__3;
  v32 = __Block_byref_object_dispose__3;
  v33 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 838860800;
  v23 = 48;
  v24 = __Block_byref_object_copy__3;
  v25 = __Block_byref_object_dispose__3;
  v26 = 0;
  v19 = +[AMDCoreDataPersistentContainer sharedContainer];
  getManagedObjectContext = [v19 getManagedObjectContext];
  v8 = getManagedObjectContext;
  v10 = MEMORY[0x277D85DD0];
  v11 = -1073741824;
  v12 = 0;
  v13 = __45__AMDColdstartURL_deleteWithPredicate_error___block_invoke;
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

void __45__AMDColdstartURL_deleteWithPredicate_error___block_invoke(void *a1)
{
  v18[2] = a1;
  v18[1] = a1;
  v9 = MEMORY[0x277CBE428];
  v11 = +[AMDColdstartURL entity];
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

@end